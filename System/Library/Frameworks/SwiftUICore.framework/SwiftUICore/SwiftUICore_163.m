void *initializeWithCopy for BreadthFirstSearchEvaluation(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 24) - 8) + 64) <= 0x28uLL)
  {
    v3 = 40;
  }

  else
  {
    v3 = *(*(*(a3 + 24) - 8) + 64);
  }

  v4 = a2[v3];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        goto LABEL_18;
      }

      v7 = *a2;
    }

    else if (v6 == 2)
    {
      v7 = *a2;
    }

    else if (v6 == 3)
    {
      v7 = *a2 | (a2[2] << 16);
    }

    else
    {
      v7 = *a2;
    }

    v8 = (v7 | (v5 << (8 * v3))) + 2;
    v4 = v7 + 2;
    if (v3 < 4)
    {
      v4 = v8;
    }
  }

LABEL_18:
  if (v4 == 1)
  {
    v10 = *(a2 + 24);
    *(a1 + 24) = v10;
    v9 = a1;
    (**(v10 - 8))();
    *(v9 + v3) = 1;
    return v9;
  }

  if (!v4)
  {
    v9 = a1;
    (*(*(*(a3 + 24) - 8) + 16))();
    *(v9 + v3) = 0;
    return v9;
  }

  return memcpy(a1, a2, v3 + 1);
}

unsigned __int8 *assignWithCopy for BreadthFirstSearchEvaluation(unsigned __int8 *__dst, unsigned __int8 *a2, uint64_t a3)
{
  if (__dst == a2)
  {
    return __dst;
  }

  v4 = *(*(a3 + 24) - 8);
  if (*(v4 + 64) <= 0x28uLL)
  {
    v5 = 40;
  }

  else
  {
    v5 = *(v4 + 64);
  }

  v6 = __dst[v5];
  v7 = v6 - 2;
  if (v6 >= 2)
  {
    if (v5 <= 3)
    {
      v8 = v5;
    }

    else
    {
      v8 = 4;
    }

    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_19;
      }

      v9 = *__dst;
    }

    else if (v8 == 2)
    {
      v9 = *__dst;
    }

    else if (v8 == 3)
    {
      v9 = *__dst | (__dst[2] << 16);
    }

    else
    {
      v9 = *__dst;
    }

    v10 = (v9 | (v7 << (8 * v5))) + 2;
    v6 = v9 + 2;
    if (v5 < 4)
    {
      v6 = v10;
    }
  }

LABEL_19:
  if (v6 == 1)
  {
    v11 = a2;
    __swift_destroy_boxed_opaque_existential_1(__dst);
  }

  else
  {
    if (v6)
    {
      goto LABEL_24;
    }

    v11 = a2;
    (*(v4 + 8))(__dst, *(a3 + 24));
  }

  a2 = v11;
LABEL_24:
  v12 = a2[v5];
  v13 = v12 - 2;
  if (v12 < 2)
  {
    goto LABEL_38;
  }

  if (v5 <= 3)
  {
    v14 = v5;
  }

  else
  {
    v14 = 4;
  }

  if (v14 <= 1)
  {
    if (!v14)
    {
      goto LABEL_38;
    }

    v15 = *a2;
  }

  else if (v14 == 2)
  {
    v15 = *a2;
  }

  else if (v14 == 3)
  {
    v15 = *a2 | (a2[2] << 16);
  }

  else
  {
    v15 = *a2;
  }

  v16 = (v15 | (v13 << (8 * v5))) + 2;
  v12 = v15 + 2;
  if (v5 < 4)
  {
    v12 = v16;
  }

LABEL_38:
  if (v12 == 1)
  {
    v17 = *(a2 + 3);
    *(__dst + 3) = v17;
    *(__dst + 4) = *(a2 + 4);
    (**(v17 - 8))(__dst);
    __dst[v5] = 1;
    return __dst;
  }

  if (!v12)
  {
    (*(v4 + 16))(__dst);
    __dst[v5] = 0;
    return __dst;
  }

  return memcpy(__dst, a2, v5 + 1);
}

_OWORD *initializeWithTake for BreadthFirstSearchEvaluation(_OWORD *result, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 24) - 8) + 64) <= 0x28uLL)
  {
    v3 = 40;
  }

  else
  {
    v3 = *(*(*(a3 + 24) - 8) + 64);
  }

  v4 = a2[v3];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        goto LABEL_18;
      }

      v7 = *a2;
    }

    else if (v6 == 2)
    {
      v7 = *a2;
    }

    else if (v6 == 3)
    {
      v7 = *a2 | (a2[2] << 16);
    }

    else
    {
      v7 = *a2;
    }

    v8 = (v7 | (v5 << (8 * v3))) + 2;
    v4 = v7 + 2;
    if (v3 < 4)
    {
      v4 = v8;
    }
  }

LABEL_18:
  if (v4 == 1)
  {
    v10 = *(a2 + 1);
    *result = *a2;
    result[1] = v10;
    *(result + 4) = *(a2 + 4);
    *(result + v3) = 1;
  }

  else if (v4)
  {

    return memcpy(result, a2, v3 + 1);
  }

  else
  {
    v9 = result;
    (*(*(*(a3 + 24) - 8) + 32))();
    result = v9;
    *(v9 + v3) = 0;
  }

  return result;
}

unsigned __int8 *assignWithTake for BreadthFirstSearchEvaluation(unsigned __int8 *result, unsigned __int16 *a2, uint64_t a3)
{
  if (result == a2)
  {
    return result;
  }

  v3 = *(*(a3 + 24) - 8);
  if (*(v3 + 64) <= 0x28uLL)
  {
    v4 = 40;
  }

  else
  {
    v4 = *(v3 + 64);
  }

  v5 = result[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    if (v7 <= 1)
    {
      if (!v7)
      {
        goto LABEL_19;
      }

      v8 = *result;
    }

    else if (v7 == 2)
    {
      v8 = *result;
    }

    else if (v7 == 3)
    {
      v8 = *result | (result[2] << 16);
    }

    else
    {
      v8 = *result;
    }

    v9 = (v8 | (v6 << (8 * v4))) + 2;
    v5 = v8 + 2;
    if (v4 < 4)
    {
      v5 = v9;
    }
  }

LABEL_19:
  if (v5 == 1)
  {
    v10 = result;
    v11 = a2;
    __swift_destroy_boxed_opaque_existential_1(result);
  }

  else
  {
    if (v5)
    {
      goto LABEL_24;
    }

    v10 = result;
    v11 = a2;
    (*(v3 + 8))();
  }

  a2 = v11;
  result = v10;
LABEL_24:
  v12 = *(a2 + v4);
  v13 = v12 - 2;
  if (v12 >= 2)
  {
    if (v4 <= 3)
    {
      v14 = v4;
    }

    else
    {
      v14 = 4;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v15 = *a2;
      }

      else if (v14 == 3)
      {
        v15 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v15 = *a2;
      }

LABEL_36:
      v16 = (v15 | (v13 << (8 * v4))) + 2;
      v12 = v15 + 2;
      if (v4 < 4)
      {
        v12 = v16;
      }

      goto LABEL_38;
    }

    if (v14)
    {
      v15 = *a2;
      goto LABEL_36;
    }
  }

LABEL_38:
  if (v12 == 1)
  {
    v18 = *(a2 + 1);
    *result = *a2;
    *(result + 1) = v18;
    *(result + 4) = *(a2 + 4);
    result[v4] = 1;
  }

  else if (v12)
  {

    return memcpy(result, a2, v4 + 1);
  }

  else
  {
    v17 = result;
    (*(v3 + 32))();
    result = v17;
    v17[v4] = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BreadthFirstSearchEvaluation(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = 40;
  if (*(v3 + 64) > 0x28uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void storeEnumTagSinglePayload for BreadthFirstSearchEvaluation(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 24) - 8) + 64);
  if (v5 <= 0x28)
  {
    v5 = 40;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t getEnumTag for BreadthFirstSearchEvaluation(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 24) - 8);
  v3 = 40;
  if (*(v2 + 64) > 0x28uLL)
  {
    v3 = *(v2 + 64);
  }

  v4 = a1[v3];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        return v4;
      }

      v7 = *a1;
    }

    else if (v6 == 2)
    {
      v7 = *a1;
    }

    else if (v6 == 3)
    {
      v7 = *a1 | (a1[2] << 16);
    }

    else
    {
      v7 = *a1;
    }

    v8 = (v7 | (v5 << (8 * v3))) + 2;
    LODWORD(v4) = v7 + 2;
    if (v3 >= 4)
    {
      return v4;
    }

    else
    {
      return v8;
    }
  }

  return v4;
}

void destructiveInjectEnumTag for BreadthFirstSearchEvaluation(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (*(*(*(a3 + 24) - 8) + 64) <= 0x28uLL)
  {
    v3 = 40;
  }

  else
  {
    v3 = *(*(*(a3 + 24) - 8) + 64);
  }

  if (a2 > 1)
  {
    v4 = a2 - 2;
    if (v3 < 4)
    {
      a1[v3] = (v4 >> (8 * v3)) + 2;
      if (v3)
      {
        v6 = v4 & ~(-1 << (8 * v3));
        bzero(a1, v3);
        if (v3 == 3)
        {
          *a1 = v6;
          a1[2] = BYTE2(v6);
        }

        else if (v3 == 2)
        {
          *a1 = v6;
        }

        else
        {
          *a1 = v4;
        }
      }
    }

    else
    {
      a1[v3] = 2;
      bzero(a1, v3);
      *a1 = v4;
    }
  }

  else
  {
    a1[v3] = a2;
  }
}

uint64_t partial apply for closure #1 in Deque._Storage.update<A>(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  result = (*(v3 + 24))();
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t partial apply for closure #1 in UnsafeMutableBufferPointer.initialize<A>(fromContentsOf:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v5 = a2;
  if (!a2)
  {
LABEL_6:
    *a3 = v5;
    return result;
  }

  if (*(v3 + 48) >= a2)
  {
    result = UnsafeMutablePointer.initialize(from:count:)();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t key path getter for Duration.UnitsFormatStyle.allowedUnits : Duration.UnitsFormatStyle@<X0>(uint64_t *a1@<X8>)
{
  result = Duration.UnitsFormatStyle.allowedUnits.getter();
  *a1 = result;
  return result;
}

uint64_t static Date.FormatStyle.representation<A>(of:for:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v28 = a1;
  v9 = type metadata accessor for Date.FormatStyle.Attributed();
  v27 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed, MEMORY[0x1E6969178]);
  v29 = a3;
  v30 = v9;
  v31 = a4;
  v32 = v12;
  v33 = &protocol witness table for AttributedString;
  v26 = type metadata accessor for TimeDataFormatting.Resolvable();
  v13 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v15 = (&v24 - v14);
  v16 = *a2;
  v17 = type metadata accessor for Date.FormatStyle();
  v18 = lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle, MEMORY[0x1E6969328]);
  v29 = a3;
  v30 = v17;
  v31 = a4;
  v32 = v18;
  v33 = &protocol witness table for String;
  if (v16 > 1)
  {
    v22 = type metadata accessor for TimeDataFormatting.Resolvable();
    a5[3] = v22;
    a5[4] = &protocol witness table for TimeDataFormatting.Resolvable<A, B>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
    return (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, v28, v22);
  }

  else
  {
    v19 = type metadata accessor for TimeDataFormatting.Resolvable();
    v24 = a4;
    v25 = a5;
    v20 = v19;
    Date.FormatStyle.attributedStyle.getter();
    TimeDataFormatting.Resolvable.replacingFormat<A>(with:)(v11, v20, v9, v12, &protocol witness table for AttributedString, v15);
    (*(v27 + 8))(v11, v9);
    LOBYTE(v29) = v16;
    static Date.FormatStyle.Attributed.representation<A>(of:for:)(v15, &v29, a3, v24, v25);
    return (*(v13 + 8))(v15, v26);
  }
}

uint64_t static Date.FormatStyle.Attributed.representation<A>(of:for:)@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v99 = a4;
  v102 = a1;
  v100 = type metadata accessor for ResolvableCurrentDate();
  MEMORY[0x1EEE9AC00](v100);
  v95 = v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation8TimeZoneVSgMaTm_2(0, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v96 = v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v97 = v84 - v12;
  v94 = type metadata accessor for TimeZone();
  v101 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v93 = v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v91 = v84 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v92 = v84 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v98 = v84 - v19;
  v20 = type metadata accessor for Calendar();
  v90 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v87 = v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v89 = v84 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v88 = v84 - v25;
  v26 = type metadata accessor for Locale();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = v84 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = v84 - v34;
  v36 = *a2;
  v37 = type metadata accessor for Date.FormatStyle.Attributed();
  v38 = lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed, MEMORY[0x1E6969178]);
  if (v36 > 1)
  {
    v103 = a3;
    v104 = v37;
    v105 = v99;
    v106 = v38;
    v107 = &protocol witness table for AttributedString;
    v72 = type metadata accessor for TimeDataFormatting.Resolvable();
    a5[3] = v72;
    a5[4] = &protocol witness table for TimeDataFormatting.Resolvable<A, B>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
    return (*(*(v72 - 8) + 16))(boxed_opaque_existential_1, v102, v72);
  }

  else
  {
    v86 = a5;
    v103 = a3;
    v104 = v37;
    v105 = v99;
    v106 = v38;
    v107 = &protocol witness table for AttributedString;
    v39 = *(type metadata accessor for TimeDataFormatting.Resolvable() + 60);
    EnvironmentValues.init()(&v103);
    swift_getKeyPath();
    v99 = v39;
    MEMORY[0x193ABCF80]();

    v40 = *(v27 + 16);
    v40(v32, v35, v26);
    v41 = v103;
    v84[1] = v27 + 16;
    v84[0] = v40;
    v40(v29, v32, v26);
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA06LocaleF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(&v103, v29);

    v42 = *(v27 + 8);
    v42(v29, v26);
    v43 = v104;
    if (v104)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA06LocaleK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v41, v103);
    }

    v42(v32, v26);
    v85 = v26;
    v42(v35, v26);
    swift_getKeyPath();
    v44 = v88;
    MEMORY[0x193ABCF80]();

    v45 = v90;
    v46 = *(v90 + 16);
    v47 = v89;
    v46(v89, v44, v20);
    v48 = v103;
    v49 = v87;
    v46(v87, v47, v20);
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(&v103, v49);

    v50 = *(v45 + 8);
    v50(v49, v20);
    if (v43)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA08CalendarK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v48, v103);
    }

    v50(v47, v20);
    v50(v44, v20);
    swift_getKeyPath();
    v51 = v98;
    MEMORY[0x193ABCF80]();

    v52 = v101;
    v53 = *(v101 + 16);
    v54 = v92;
    v55 = v94;
    v53(v92, v51, v94);
    v56 = v103;
    v57 = v91;
    v53(v91, v54, v55);
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(&v103, v57);

    v58 = *(v52 + 8);
    v58(v57, v55);
    v59 = v95;
    if (v43)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA08TimeZoneK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v56, v103);
    }

    v58(v54, v55);
    v58(v98, v55);
    v60 = Date.FormatStyle.Attributed.template()();
    v62 = v61;
    swift_getKeyPath();
    v63 = v97;
    MEMORY[0x193ABCF80]();
    v64 = v63;

    (*(v101 + 56))(v63, 0, 1, v55);
    v65 = v103;
    v66 = v100;
    v67 = v86;
    v86[3] = v100;
    v67[4] = &protocol witness table for ResolvableCurrentDate;
    v102 = __swift_allocate_boxed_opaque_existential_1(v67);
    *v59 = v60;
    *(v59 + 8) = v62;
    v68 = v66;
    *(v59 + 16) = 1;
    v69 = *(v66 + 20);
    v70 = v43;
    if (v43)
    {
      swift_retain_n();
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08CalendarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v65, v59 + v69);
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v65, v59 + *(v68 + 24));

      v71 = v96;
    }

    else
    {
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v65, v59 + v69);
      v75 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v65);
      if (v75)
      {
        (v84[0])(v59 + *(v68 + 24), v75 + *(*v75 + 248), v85);
        v71 = v96;
      }

      else
      {
        v71 = v96;
        v76 = v85;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v77 = __swift_project_value_buffer(v76, static LocaleKey.defaultValue);
        (v84[0])(v59 + *(v68 + 24), v77, v76);
      }
    }

    _s10Foundation8TimeZoneVSgWOcTm_0(v64, v71, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0]);
    v78 = v64;
    v79 = v101;
    v80 = *(v101 + 48);
    if (v80(v71, 1, v55) == 1)
    {
      if (v70)
      {
        v81 = v93;
        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TimeZoneI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v65, v93);
        v71 = v96;
      }

      else
      {
        v82 = v93;
        _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v65, v93);
        v81 = v82;
      }

      _s10Foundation8TimeZoneVSgWOhTm_0(v97, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0]);
      v83 = v80(v71, 1, v55);
      v79 = v101;
      if (v83 != 1)
      {
        _s10Foundation8TimeZoneVSgWOhTm_0(v71, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0]);
      }
    }

    else
    {

      _s10Foundation8TimeZoneVSgWOhTm_0(v78, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0]);
      v81 = v93;
      (*(v79 + 32))(v93, v71, v55);
    }

    (*(v79 + 32))(v59 + *(v100 + 28), v81, v55);
    outlined init with take of ResolvableCurrentDate(v59, v102);
  }
}

uint64_t Date.FormatStyle.Attributed.template()()
{
  v164 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v176 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v162 = &v121 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v175 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v160 = &v121 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  v174 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v158 = &v121 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for Date.FormatStyle.Symbol.Hour();
  v173 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v156 = &v121 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for Date.FormatStyle.Symbol.Minute();
  v172 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v154 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for Date.FormatStyle.Symbol.Second();
  v171 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v152 = &v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for Date.FormatStyle.Symbol.TimeZone();
  v170 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v149 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for Date.FormatStyle.Symbol.Weekday();
  v169 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v147 = &v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for Date.FormatStyle.Symbol.SecondFraction();
  v168 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v145 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for Date.FormatStyle.Symbol.DayOfYear();
  v167 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v143 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for Date.FormatStyle.Symbol.Week();
  v166 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v141 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for Date.FormatStyle.Symbol.Quarter();
  v165 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v12 = &v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for Date.FormatStyle.Symbol.Era();
  v13 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v15 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Date.FormatStyle.Attributed();
  v161 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v121 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v121 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v129 = &v121 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v130 = &v121 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v131 = &v121 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v132 = &v121 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v133 = &v121 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v134 = &v121 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v136 = &v121 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v139 = &v121 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v121 - v42;
  v45 = MEMORY[0x1EEE9AC00](v44);
  v47 = &v121 - v46;
  MEMORY[0x193ABD190](v45);
  v135 = v15;
  Date.FormatStyle.Attributed.era(_:)();
  v48 = *(v13 + 8);
  v138 = v13 + 8;
  v137 = v48;
  v48(v15, v163);
  v49 = v161;
  static Date.FormatStyle.Symbol.Month.omitted.getter();
  Date.FormatStyle.Attributed.quarter(_:)();
  v50 = *(v165 + 8);
  v128 = v12;
  v165 += 8;
  v122 = v50;
  v50(v12, v140);
  v53 = *(v49 + 8);
  v51 = v49 + 8;
  v52 = v53;
  v54 = (v53)(v18, v16);
  v55 = v141;
  MEMORY[0x193ABD240](v54);
  Date.FormatStyle.Attributed.week(_:)();
  v56 = *(v166 + 8);
  v166 += 8;
  v123 = v56;
  v56(v55, v142);
  v57 = (v53)(v21, v16);
  v58 = v143;
  MEMORY[0x193ABD400](v57);
  v59 = v129;
  Date.FormatStyle.Attributed.dayOfYear(_:)();
  v60 = *(v167 + 8);
  v167 += 8;
  v124 = v60;
  v60(v58, v144);
  v61 = v24;
  v62 = v47;
  v53(v61, v16);
  v63 = v145;
  static Date.FormatStyle.Symbol.SecondFraction.omitted.getter();
  v64 = v130;
  Date.FormatStyle.Attributed.secondFraction(_:)();
  v65 = *(v168 + 8);
  v168 += 8;
  v125 = v65;
  v65(v63, v146);
  v66 = (v53)(v59, v16);
  v67 = v147;
  MEMORY[0x193ABD3C0](v66);
  v68 = v131;
  Date.FormatStyle.Attributed.weekday(_:)();
  v69 = *(v169 + 8);
  v169 += 8;
  v127 = v69;
  v69(v67, v148);
  v53(v64, v16);
  v70 = v149;
  static Date.FormatStyle.Symbol.TimeZone.omitted.getter();
  v71 = v132;
  Date.FormatStyle.Attributed.timeZone(_:)();
  v72 = *(v170 + 8);
  v170 += 8;
  v129 = v72;
  (v72)(v70, v150);
  v73 = (v53)(v68, v16);
  v74 = v152;
  MEMORY[0x193ABD340](v73);
  v75 = v133;
  Date.FormatStyle.Attributed.second(_:)();
  v76 = *(v171 + 8);
  v171 += 8;
  v130 = v76;
  (v76)(v74, v153);
  v77 = (v53)(v71, v16);
  v78 = v154;
  MEMORY[0x193ABD310](v77);
  v79 = v134;
  Date.FormatStyle.Attributed.minute(_:)();
  v80 = *(v172 + 8);
  v172 += 8;
  v131 = v80;
  (v80)(v78, v155);
  v53(v75, v16);
  v81 = v156;
  static Date.FormatStyle.Symbol.Hour.omitted.getter();
  v82 = v136;
  Date.FormatStyle.Attributed.hour(_:)();
  v83 = *(v173 + 8);
  v173 += 8;
  v132 = v83;
  (v83)(v81, v157);
  v84 = (v53)(v79, v16);
  v85 = v158;
  MEMORY[0x193ABD160](v84);
  v86 = v139;
  Date.FormatStyle.Attributed.day(_:)();
  v87 = *(v174 + 8);
  v174 += 8;
  v133 = v87;
  (v87)(v85, v159);
  v53(v82, v16);
  v88 = v160;
  static Date.FormatStyle.Symbol.Month.omitted.getter();
  Date.FormatStyle.Attributed.month(_:)();
  v89 = *(v175 + 8);
  v175 += 8;
  v134 = v89;
  (v89)(v88, v151);
  v53(v86, v16);
  v90 = v162;
  static Date.FormatStyle.Symbol.SecondFraction.omitted.getter();
  Date.FormatStyle.Attributed.year(_:)();
  v91 = *(v176 + 8);
  v176 += 8;
  v136 = v91;
  (v91)(v90, v164);
  v53(v43, v16);
  v126 = lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed, MEMORY[0x1E6969178]);
  v92 = dispatch thunk of static Equatable.== infix(_:_:)();
  v93 = v135;
  if (v92 & 1) == 0 && (MEMORY[0x193ABD180](), v94 = v139, Date.FormatStyle.Attributed.era(_:)(), v95 = v163, v161 = v51, v121 = v62, v96 = v137, v97 = (v137)(v93, v163), MEMORY[0x193ABD190](v97), Date.FormatStyle.Attributed.era(_:)(), v96(v93, v95), v62 = v121, v52(v94, v16), LOBYTE(v95) = static Date.FormatStyle.Attributed.== infix(_:_:)(), v52(v43, v16), (v95) && (v98 = v162, static Date.FormatStyle.Symbol.Year.defaultDigits.getter(), v99 = v139, Date.FormatStyle.Attributed.year(_:)(), v100 = v136, (v136)(v98, v164), static Date.FormatStyle.Symbol.SecondFraction.omitted.getter(), Date.FormatStyle.Attributed.year(_:)(), v100(v98, v164), v62 = v121, v52(v99, v16), LOBYTE(v99) = static Date.FormatStyle.Attributed.== infix(_:_:)(), v52(v43, v16), (v99))
  {
    v52(v62, v16);
    return 0x594D646D6D6ALL;
  }

  else
  {
    v177 = 0;
    v178 = 0xE000000000000000;
    MEMORY[0x193ABD190]();
    Date.FormatStyle.Attributed.era(_:)();
    v137(v93, v163);
    v102 = dispatch thunk of static Equatable.== infix(_:_:)();
    v52(v43, v16);
    if ((v102 & 1) == 0)
    {
      MEMORY[0x193ABEDD0](71, 0xE100000000000000);
    }

    v103 = v128;
    static Date.FormatStyle.Symbol.Month.omitted.getter();
    Date.FormatStyle.Attributed.quarter(_:)();
    v122(v103, v140);
    LOBYTE(v103) = dispatch thunk of static Equatable.== infix(_:_:)();
    v104 = (v52)(v43, v16);
    if ((v103 & 1) == 0)
    {
      v104 = MEMORY[0x193ABEDD0](5329233, 0xE300000000000000);
    }

    v105 = v141;
    MEMORY[0x193ABD240](v104);
    Date.FormatStyle.Attributed.week(_:)();
    v123(v105, v142);
    LOBYTE(v105) = dispatch thunk of static Equatable.== infix(_:_:)();
    v106 = (v52)(v43, v16);
    if ((v105 & 1) == 0)
    {
      v106 = MEMORY[0x193ABEDD0](119, 0xE100000000000000);
    }

    v107 = v143;
    MEMORY[0x193ABD400](v106);
    Date.FormatStyle.Attributed.dayOfYear(_:)();
    v124(v107, v144);
    LOBYTE(v107) = dispatch thunk of static Equatable.== infix(_:_:)();
    v52(v43, v16);
    if ((v107 & 1) == 0)
    {
      MEMORY[0x193ABEDD0](68, 0xE100000000000000);
    }

    v108 = v145;
    static Date.FormatStyle.Symbol.SecondFraction.omitted.getter();
    Date.FormatStyle.Attributed.secondFraction(_:)();
    v125(v108, v146);
    LOBYTE(v108) = dispatch thunk of static Equatable.== infix(_:_:)();
    v109 = (v52)(v43, v16);
    if ((v108 & 1) == 0)
    {
      v109 = MEMORY[0x193ABEDD0](83, 0xE100000000000000);
    }

    v110 = v147;
    MEMORY[0x193ABD3C0](v109);
    Date.FormatStyle.Attributed.weekday(_:)();
    v127(v110, v148);
    LOBYTE(v110) = dispatch thunk of static Equatable.== infix(_:_:)();
    v52(v43, v16);
    if ((v110 & 1) == 0)
    {
      MEMORY[0x193ABEDD0](4539717, 0xE300000000000000);
    }

    v111 = v149;
    static Date.FormatStyle.Symbol.TimeZone.omitted.getter();
    Date.FormatStyle.Attributed.timeZone(_:)();
    (v129)(v111, v150);
    LOBYTE(v111) = dispatch thunk of static Equatable.== infix(_:_:)();
    v112 = (v52)(v43, v16);
    if ((v111 & 1) == 0)
    {
      v112 = MEMORY[0x193ABEDD0](118, 0xE100000000000000);
    }

    v113 = v152;
    MEMORY[0x193ABD340](v112);
    Date.FormatStyle.Attributed.second(_:)();
    (v130)(v113, v153);
    LOBYTE(v113) = dispatch thunk of static Equatable.== infix(_:_:)();
    v114 = (v52)(v43, v16);
    if ((v113 & 1) == 0)
    {
      v114 = MEMORY[0x193ABEDD0](29555, 0xE200000000000000);
    }

    v115 = v154;
    MEMORY[0x193ABD310](v114);
    Date.FormatStyle.Attributed.minute(_:)();
    (v131)(v115, v155);
    LOBYTE(v115) = dispatch thunk of static Equatable.== infix(_:_:)();
    v52(v43, v16);
    if ((v115 & 1) == 0)
    {
      MEMORY[0x193ABEDD0](28013, 0xE200000000000000);
    }

    v116 = v156;
    static Date.FormatStyle.Symbol.Hour.omitted.getter();
    Date.FormatStyle.Attributed.hour(_:)();
    (v132)(v116, v157);
    LOBYTE(v116) = dispatch thunk of static Equatable.== infix(_:_:)();
    v117 = (v52)(v43, v16);
    if ((v116 & 1) == 0)
    {
      v117 = MEMORY[0x193ABEDD0](106, 0xE100000000000000);
    }

    v118 = v158;
    MEMORY[0x193ABD160](v117);
    Date.FormatStyle.Attributed.day(_:)();
    (v133)(v118, v159);
    LOBYTE(v118) = dispatch thunk of static Equatable.== infix(_:_:)();
    v52(v43, v16);
    if ((v118 & 1) == 0)
    {
      MEMORY[0x193ABEDD0](100, 0xE100000000000000);
    }

    v119 = v160;
    static Date.FormatStyle.Symbol.Month.omitted.getter();
    Date.FormatStyle.Attributed.month(_:)();
    (v134)(v119, v151);
    LOBYTE(v119) = dispatch thunk of static Equatable.== infix(_:_:)();
    v52(v43, v16);
    if ((v119 & 1) == 0)
    {
      MEMORY[0x193ABEDD0](77, 0xE100000000000000);
    }

    v120 = v162;
    static Date.FormatStyle.Symbol.SecondFraction.omitted.getter();
    Date.FormatStyle.Attributed.year(_:)();
    (v136)(v120, v164);
    LOBYTE(v120) = dispatch thunk of static Equatable.== infix(_:_:)();
    v52(v43, v16);
    if ((v120 & 1) == 0)
    {
      MEMORY[0x193ABEDD0](1499027801, 0xE400000000000000);
    }

    v52(v62, v16);
    return v177;
  }
}

uint64_t static Date.VerbatimFormatStyle.representation<A>(of:for:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v28 = a1;
  v9 = type metadata accessor for Date.VerbatimFormatStyle.Attributed();
  v27 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.Attributed and conformance Date.VerbatimFormatStyle.Attributed, MEMORY[0x1E6969408]);
  v29 = a3;
  v30 = v9;
  v31 = a4;
  v32 = v12;
  v33 = &protocol witness table for AttributedString;
  v26 = type metadata accessor for TimeDataFormatting.Resolvable();
  v13 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v15 = &v24 - v14;
  v16 = *a2;
  v17 = type metadata accessor for Date.VerbatimFormatStyle();
  v18 = lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Date.VerbatimFormatStyle and conformance Date.VerbatimFormatStyle, MEMORY[0x1E6969450]);
  v29 = a3;
  v30 = v17;
  v31 = a4;
  v32 = v18;
  v33 = &protocol witness table for String;
  if (v16 > 1)
  {
    v22 = type metadata accessor for TimeDataFormatting.Resolvable();
    a5[3] = v22;
    a5[4] = &protocol witness table for TimeDataFormatting.Resolvable<A, B>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
    return (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, v28, v22);
  }

  else
  {
    v19 = type metadata accessor for TimeDataFormatting.Resolvable();
    v24 = a4;
    v25 = a5;
    v20 = v19;
    Date.VerbatimFormatStyle.attributedStyle.getter();
    TimeDataFormatting.Resolvable.replacingFormat<A>(with:)(v11, v20, v9, v12, &protocol witness table for AttributedString, v15);
    (*(v27 + 8))(v11, v9);
    LOBYTE(v29) = v16;
    static Date.VerbatimFormatStyle.Attributed.representation<A>(of:for:)(v15, &v29, a3, v24, v25);
    return (*(v13 + 8))(v15, v26);
  }
}

uint64_t static Date.VerbatimFormatStyle.Attributed.representation<A>(of:for:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v110 = a3;
  v111 = a4;
  v112 = a1;
  v115 = a5;
  v116 = type metadata accessor for ResolvableCurrentDate();
  MEMORY[0x1EEE9AC00](v116);
  v107 = (&v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x1E69E6720];
  _s10Foundation8TimeZoneVSgMaTm_2(0, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v108 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v109 = &v96 - v11;
  v106 = type metadata accessor for TimeZone();
  v117 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v13 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v105 = &v96 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v114 = &v96 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v113 = &v96 - v19;
  v104 = type metadata accessor for Calendar();
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v100 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v102 = &v96 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v101 = &v96 - v24;
  _s10Foundation8TimeZoneVSgMaTm_2(0, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770], v7);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v96 - v26;
  v28 = type metadata accessor for Locale();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v96 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v99 = &v96 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v98 = &v96 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v96 - v37;
  v39 = type metadata accessor for Date.VerbatimFormatStyle.Attributed();
  v40 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v96 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a2) = *a2;
  v43 = lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.Attributed and conformance Date.VerbatimFormatStyle.Attributed, MEMORY[0x1E6969408]);
  if (a2 > 1)
  {
    v118 = v110;
    v119 = v39;
    v120 = v111;
    v121 = v43;
    v122 = &protocol witness table for AttributedString;
    v48 = type metadata accessor for TimeDataFormatting.Resolvable();
    v49 = v115;
    v115[3] = v48;
    v49[4] = &protocol witness table for TimeDataFormatting.Resolvable<A, B>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
    return (*(*(v48 - 8) + 16))(boxed_opaque_existential_1, v112, v48);
  }

  else
  {
    v97 = v13;
    v118 = v110;
    v119 = v39;
    v120 = v111;
    v121 = v43;
    v122 = &protocol witness table for AttributedString;
    v44 = *(type metadata accessor for TimeDataFormatting.Resolvable() + 60);
    v110 = v40;
    v111 = v39;
    (*(v40 + 16))(v42, &v112[v44], v39);
    EnvironmentValues.init()(&v118);
    swift_getKeyPath();
    v112 = v42;
    MEMORY[0x193ABD5D0]();

    v45 = (*(v29 + 48))(v27, 1, v28);
    v96 = v29;
    if (v45 == 1)
    {
      _s10Foundation8TimeZoneVSgWOhTm_0(v27, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770]);
      v46 = v102;
      v47 = v101;
    }

    else
    {
      (*(v29 + 32))(v38, v27, v28);
      v52 = *(v29 + 16);
      v53 = v98;
      v52(v98, v38, v28);
      v54 = v99;
      v52(v99, v53, v28);
      v55 = v118;
      v52(v31, v54, v28);
      swift_retain_n();
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA06LocaleF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(&v118, v31);

      v56 = *(v29 + 8);
      v56(v31, v28);
      v47 = v101;
      if (v119)
      {
        _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA06LocaleK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v55, v118);
      }

      v56(v99, v28);
      v56(v98, v28);
      v56(v38, v28);
      v46 = v102;
    }

    v102 = v28;
    swift_getKeyPath();
    MEMORY[0x193ABD5D0]();

    v57 = v103;
    v58 = *(v103 + 16);
    v59 = v104;
    v58(v46, v47, v104);
    v60 = v118;
    v61 = v100;
    v58(v100, v46, v59);
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(&v118, v61);

    v62 = *(v57 + 8);
    v62(v61, v59);
    v63 = v119;
    if (v119)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA08CalendarK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v60, v118);
    }

    v62(v46, v59);
    v62(v47, v59);
    swift_getKeyPath();
    v64 = v113;
    MEMORY[0x193ABD5D0]();

    v65 = v117;
    v66 = *(v117 + 16);
    v67 = v114;
    v68 = v64;
    v69 = v106;
    v66(v114, v68, v106);
    v70 = v118;
    v71 = v105;
    v66(v105, v67, v69);
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(&v118, v71);

    v72 = *(v65 + 8);
    v72(v71, v69);
    if (v63)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA08TimeZoneK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v70, v118);
    }

    v72(v114, v69);
    v72(v113, v69);
    v73 = Date.VerbatimFormatStyle.Attributed.formatPattern.getter();
    v75 = v74;
    swift_getKeyPath();
    v76 = v109;
    MEMORY[0x193ABD5D0]();
    v77 = v76;

    (*(v117 + 56))(v76, 0, 1, v69);
    v78 = v118;
    v79 = v115;
    v80 = v116;
    v115[3] = v116;
    v79[4] = &protocol witness table for ResolvableCurrentDate;
    v115 = __swift_allocate_boxed_opaque_existential_1(v79);
    v81 = v107;
    *v107 = v73;
    *(v81 + 8) = v75;
    *(v81 + 16) = 0;
    v82 = *(v80 + 20);
    if (v63)
    {
      swift_retain_n();
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08CalendarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v78, v81 + v82);
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v78, v81 + *(v80 + 24));

      v83 = v108;
    }

    else
    {
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v78, v81 + v82);
      v84 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v78);
      if (v84)
      {
        (*(v96 + 16))(v81 + *(v80 + 24), &v84[*(*v84 + 248)], v102);
        v83 = v108;
      }

      else
      {
        v83 = v108;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v85 = v102;
        v86 = __swift_project_value_buffer(v102, static LocaleKey.defaultValue);
        (*(v96 + 16))(v81 + *(v80 + 24), v86, v85);
      }
    }

    _s10Foundation8TimeZoneVSgWOcTm_0(v77, v83, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0]);
    v87 = v77;
    v88 = v117;
    v89 = *(v117 + 48);
    if (v89(v83, 1, v69) == 1)
    {
      if (v63)
      {
        v90 = v97;
        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TimeZoneI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v78, v97);
        v83 = v108;
        v91 = v90;
      }

      else
      {
        v91 = v97;
        _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v78, v97);
      }

      v94 = v116;
      v88 = v117;
      v92 = v111;
      _s10Foundation8TimeZoneVSgWOhTm_0(v109, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0]);
      v95 = v89(v83, 1, v69);
      v93 = v110;
      if (v95 != 1)
      {
        _s10Foundation8TimeZoneVSgWOhTm_0(v83, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0]);
      }
    }

    else
    {

      _s10Foundation8TimeZoneVSgWOhTm_0(v87, &lazy cache variable for type metadata for TimeZone?, MEMORY[0x1E6969BC0]);
      v91 = v97;
      (*(v88 + 32))(v97, v83, v69);
      v93 = v110;
      v92 = v111;
      v94 = v116;
    }

    (*(v88 + 32))(v81 + *(v94 + 28), v91, v69);
    outlined init with take of ResolvableCurrentDate(v81, v115);
    (*(v93 + 8))(v112, v92);
  }
}

uint64_t key path setter for Date.VerbatimFormatStyle.locale : Date.VerbatimFormatStyle(uint64_t a1)
{
  v2 = MEMORY[0x1E6969770];
  _s10Foundation8TimeZoneVSgMaTm_2(0, &lazy cache variable for type metadata for Locale?, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  _s10Foundation8TimeZoneVSgWOcTm_0(a1, &v6 - v4, &lazy cache variable for type metadata for Locale?, v2);
  return Date.VerbatimFormatStyle.locale.setter();
}

uint64_t Date.VerbatimFormatStyle.Attributed.formatPattern.getter()
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for Date.VerbatimFormatStyle.Attributed();
  lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Date.VerbatimFormatStyle.Attributed and conformance Date.VerbatimFormatStyle.Attributed, MEMORY[0x1E6969408]);
  v0 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v2 = v1;

  lazy protocol witness table accessor for type CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  outlined consume of Data._Representation(v0, v2);

  return v4;
}

uint64_t static Date.ComponentsFormatStyle.representation<A>(of:for:)@<X0>(char *a1@<X0>, char *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v172 = a3;
  v173 = a4;
  v174 = a1;
  v170 = a5;
  v149 = type metadata accessor for Date.ComponentsFormatStyle.Style();
  v148 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v146 = &v140 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v147 = &v140 - v8;
  type metadata accessor for Range<Date>();
  v161 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v162 = (&v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v171 = type metadata accessor for Date();
  v167 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v166 = &v140 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v165 = &v140 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v158 = &v140 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v140 - v17;
  v157 = type metadata accessor for Calendar();
  v160 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v159 = &v140 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v150 = &v140 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v152 = &v140 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v151 = &v140 - v25;
  v26 = type metadata accessor for Locale();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v156 = &v140 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v140 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v140 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v140 - v36;
  v38 = type metadata accessor for Date.ComponentsFormatStyle();
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v153 = &v140 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v154 = &v140 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v155 = &v140 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v140 - v46;
  LODWORD(a2) = *a2;
  v48 = lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle and conformance Date.ComponentsFormatStyle, MEMORY[0x1E69694D0]);
  if (a2 > 1)
  {
    v175 = v172;
    v176 = v38;
    v177 = v173;
    v178 = v48;
    v179 = &protocol witness table for String;
    v96 = type metadata accessor for TimeDataFormatting.Resolvable();
    v97 = v170;
    v170[3] = v96;
    v97[4] = &protocol witness table for TimeDataFormatting.Resolvable<A, B>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v97);
    return (*(*(v96 - 8) + 16))(boxed_opaque_existential_1, v174, v96);
  }

  v169 = v18;
  v175 = v172;
  v176 = v38;
  v177 = v173;
  v178 = v48;
  v179 = &protocol witness table for String;
  v49 = *(type metadata accessor for TimeDataFormatting.Resolvable() + 60);
  v163 = v39;
  v50 = *(v39 + 16);
  v164 = v38;
  v50(v47, &v174[v49], v38);
  EnvironmentValues.init()(&v175);
  v168 = v47;
  Date.ComponentsFormatStyle.locale.getter();
  v51 = *(v27 + 16);
  v51(v34, v37, v26);
  v52 = v175;
  v141 = v51;
  v142 = v27 + 16;
  v51(v31, v34, v26);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA06LocaleF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(&v175, v31);

  v55 = *(v27 + 8);
  v54 = v27 + 8;
  v53 = v55;
  v55(v31, v26);
  v56 = v176;
  if (v176)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA06LocaleK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v52, v175);
  }

  v53(v34, v26);
  v145 = v26;
  v144 = v54;
  v143 = v53;
  v53(v37, v26);
  v57 = v151;
  Date.ComponentsFormatStyle.calendar.getter();
  v58 = v160;
  v59 = *(v160 + 16);
  v60 = v152;
  v61 = v157;
  v59(v152, v57, v157);
  v62 = v175;
  v63 = v150;
  v59(v150, v60, v61);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(&v175, v63);
  v140 = 0;

  v64 = *(v58 + 8);
  v64(v63, v61);
  if (v56)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA08CalendarK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v62, v175);
  }

  v64(v60, v61);
  v64(v57, v61);
  v65 = v158;
  Date.init(timeIntervalSinceReferenceDate:)();
  v66 = v162;
  (*(v173 + 40))(v65, v172);
  v67 = v167;
  v68 = v65;
  v69 = v171;
  v172 = *(v167 + 8);
  v173 = v167 + 8;
  (v172)(v68, v171);
  v71 = *(v67 + 16);
  v70 = v67 + 16;
  v72 = v66 + *(v161 + 36);
  v174 = v71;
  (v71)(v169, v72, v69);
  outlined destroy of Range<Date>(v66);
  v73 = v153;
  static FormatStyle<>.timeDuration.getter();
  v74 = v159;
  Date.ComponentsFormatStyle.calendar.getter();
  v75 = v154;
  Date.ComponentsFormatStyle.calendar(_:)();
  v64(v74, v61);
  v77 = v163 + 8;
  v76 = *(v163 + 8);
  v78 = v164;
  v76(v73, v164);
  v79 = v156;
  Date.ComponentsFormatStyle.locale.getter();
  v80 = v155;
  Date.ComponentsFormatStyle.locale(_:)();
  v143(v79, v145);
  v76(v75, v78);
  lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle and conformance Date.ComponentsFormatStyle, MEMORY[0x1E69694D0]);
  LOBYTE(v75) = dispatch thunk of static Equatable.== infix(_:_:)();
  v162 = v76;
  v76(v80, v78);
  v81 = v170;
  if ((v75 & 1) == 0)
  {
    v100 = v169;
    v167 = v70;
    v101 = v147;
    Date.ComponentsFormatStyle.style.getter();
    v102 = v146;
    static Date.ComponentsFormatStyle.Style.narrow.getter();
    lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Style and conformance Date.ComponentsFormatStyle.Style, MEMORY[0x1E6969488]);
    v103 = v149;
    v104 = dispatch thunk of static Equatable.== infix(_:_:)();
    v105 = *(v148 + 8);
    v105(v102, v103);
    if (v104)
    {
      v105(v101, v103);
      v106 = 0;
    }

    else
    {
      static Date.ComponentsFormatStyle.Style.abbreviated.getter();
      v107 = dispatch thunk of static Equatable.== infix(_:_:)();
      v105(v102, v103);
      if (v107)
      {
        v105(v101, v103);
        v106 = 1;
      }

      else
      {
        static Date.ComponentsFormatStyle.Style.condensedAbbreviated.getter();
        v113 = dispatch thunk of static Equatable.== infix(_:_:)();
        v105(v102, v103);
        v105(v101, v103);
        if (v113)
        {
          v106 = 1;
        }

        else
        {
          v106 = 2;
        }
      }
    }

    v114 = v171;
    (v174)(v165, v100, v171);
    v115 = Date.ComponentsFormatStyle.fields.getter();
    if (!v115)
    {
      _s10Foundation8TimeZoneVSgMaTm_2(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Date.ComponentsFormatStyle.Field>, MEMORY[0x1E6969498], MEMORY[0x1E69E6F90]);
      type metadata accessor for Date.ComponentsFormatStyle.Field();
      v116 = swift_allocObject();
      *(v116 + 16) = xmmword_18DDAC2E0;
      static Date.ComponentsFormatStyle.Style.wide.getter();
      static Date.ComponentsFormatStyle.Style.narrow.getter();
      static Date.ComponentsFormatStyle.Style.condensedAbbreviated.getter();
      static Date.ComponentsFormatStyle.Style.spellOut.getter();
      static Date.ComponentsFormatStyle.Field.minute.getter();
      static Date.ComponentsFormatStyle.Field.second.getter();
      v117 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation4DateV21ComponentsFormatStyleV5FieldV_Tt0gq5Tf4g_n(v116);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v115 = v117;
    }

    v118 = specialized NSCalendarUnit.init(_:)(v115);
    v119 = v175;
    v120 = v176;
    v121 = type metadata accessor for ResolvableAbsoluteDate();
    v122 = v170;
    v170[3] = v121;
    v122[4] = &protocol witness table for ResolvableAbsoluteDate;
    v123 = __swift_allocate_boxed_opaque_existential_1(v122);
    v124 = v165;
    (v174)(v123, v165, v114);
    v125 = v123 + v121[5];
    *v125 = 2;
    *(v125 + 1) = v118;
    v125[16] = v106;
    v126 = v121[6];
    if (v120)
    {

      swift_retain_n();
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08CalendarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v119, v123 + v126);

      v127 = v121[7];

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v119, v123 + v127);

      v128 = v121[8];

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TimeZoneI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v119, v123 + v128);

      v129 = v172;
      (v172)(v124, v114);
      v129(v169, v114);
      v162(v168, v164);
      goto LABEL_36;
    }

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v130, v123 + v126);
    v131 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v119);
    if (v131)
    {
      v141(v123 + v121[7], &v131[*(*v131 + 248)], v145);
      v132 = v168;
      v133 = v165;
    }

    else
    {
      v132 = v168;
      v133 = v165;
      v137 = v145;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v138 = __swift_project_value_buffer(v137, static LocaleKey.defaultValue);
      v141(v123 + v121[7], v138, v137);
    }

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v119, v123 + v121[8]);
    v139 = v172;
    (v172)(v133, v114);
    v139(v169, v114);
    v162(v132, v164);
LABEL_35:

    goto LABEL_36;
  }

  v163 = v77;
  v82 = v174;
  (v174)(v166, v169, v69);
  if (one-time initialization token for timer != -1)
  {
    swift_once();
  }

  v83 = static Text.DateStyle.timer;
  v84 = qword_1EAB1F268;
  v85 = byte_1EAB1F270;
  v86 = v175;
  v87 = v176;
  v88 = type metadata accessor for ResolvableAbsoluteDate();
  v81[3] = v88;
  v81[4] = &protocol witness table for ResolvableAbsoluteDate;
  v89 = __swift_allocate_boxed_opaque_existential_1(v81);
  (v82)(v89, v166, v171);
  v90 = v89 + v88[5];
  *v90 = v83;
  *(v90 + 1) = v84;
  v90[16] = v85;
  v91 = v88[6];
  if (!v87)
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v108, v89 + v91);
    v109 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v86);
    v110 = v171;
    v111 = v166;
    if (v109)
    {
      v141(v89 + v88[7], &v109[*(*v109 + 248)], v145);
      v112 = v168;
    }

    else
    {
      v112 = v168;
      v134 = v145;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v135 = __swift_project_value_buffer(v134, static LocaleKey.defaultValue);
      v141(v89 + v88[7], v135, v134);
    }

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v86, v89 + v88[8]);
    v136 = v172;
    (v172)(v111, v110);
    v136(v169, v110);
    v162(v112, v164);
    goto LABEL_35;
  }

  swift_retain_n();
  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08CalendarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v86, v89 + v91);

  v92 = v88[7];

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v86, v89 + v92);

  v93 = v88[8];

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TimeZoneI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v86, v89 + v93);

  v95 = v171;
  v94 = v172;
  (v172)(v166, v171);
  v94(v169, v95);
  v162(v168, v164);
LABEL_36:
}

uint64_t static Date.AnchoredRelativeFormatStyle.representation<A>(of:for:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v94 = a3;
  v95 = a4;
  v96 = a1;
  v97 = a5;
  v98 = type metadata accessor for Date();
  v93 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v7 = v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date.RelativeFormatStyle.UnitsStyle();
  v91 = *(v8 - 8);
  v92 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v89 = v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v90 = v79 - v11;
  v88 = type metadata accessor for Calendar();
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v84 = v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v86 = v79 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v85 = v79 - v16;
  v17 = type metadata accessor for Locale();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v79 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v79 - v25;
  v27 = type metadata accessor for Date.AnchoredRelativeFormatStyle();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = v79 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a2) = *a2;
  v31 = lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Date.AnchoredRelativeFormatStyle and conformance Date.AnchoredRelativeFormatStyle, MEMORY[0x1E6969510]);
  if (a2 > 1)
  {
    v99 = v94;
    v100 = v27;
    v101 = v95;
    v102 = v31;
    v103 = &protocol witness table for String;
    v52 = type metadata accessor for TimeDataFormatting.Resolvable();
    v53 = v97;
    v97[3] = v52;
    v53[4] = &protocol witness table for TimeDataFormatting.Resolvable<A, B>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v53);
    return (*(*(v52 - 8) + 16))(boxed_opaque_existential_1, v96, v52);
  }

  else
  {
    v83 = v7;
    v99 = v94;
    v100 = v27;
    v101 = v95;
    v102 = v31;
    v103 = &protocol witness table for String;
    v32 = *(type metadata accessor for TimeDataFormatting.Resolvable() + 60);
    v94 = v28;
    v95 = v27;
    (*(v28 + 16))(v30, &v96[v32], v27);
    EnvironmentValues.init()(&v99);
    Date.AnchoredRelativeFormatStyle.locale.getter();
    v33 = *(v18 + 16);
    v33(v23, v26, v17);
    v34 = v99;
    v81 = v18 + 16;
    v80 = v33;
    v33(v20, v23, v17);
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA06LocaleF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(&v99, v20);

    v35 = *(v18 + 8);
    v35(v20, v17);
    v36 = v100;
    v96 = v30;
    if (v100)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA06LocaleK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v34, v99);
    }

    v35(v23, v17);
    v82 = v17;
    v35(v26, v17);
    v37 = v85;
    Date.AnchoredRelativeFormatStyle.calendar.getter();
    v38 = v87;
    v39 = *(v87 + 16);
    v40 = v86;
    v41 = v88;
    v39(v86, v37, v88);
    v42 = v99;
    v43 = v84;
    v39(v84, v40, v41);
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(&v99, v43);
    v79[1] = 0;

    v44 = *(v38 + 8);
    v44(v43, v41);
    if (v36)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA08CalendarK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v42, v99);
    }

    v44(v40, v41);
    v44(v37, v41);
    v45 = v90;
    Date.AnchoredRelativeFormatStyle.unitsStyle.getter();
    v46 = v89;
    static Date.RelativeFormatStyle.UnitsStyle.narrow.getter();
    lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Date.RelativeFormatStyle.UnitsStyle and conformance Date.RelativeFormatStyle.UnitsStyle, MEMORY[0x1E69693C0]);
    v47 = v92;
    v48 = dispatch thunk of static Equatable.== infix(_:_:)();
    v49 = *(v91 + 8);
    v49(v46, v47);
    v50 = v97;
    if (v48)
    {
      v49(v45, v47);
      v51 = 0;
    }

    else
    {
      static Date.RelativeFormatStyle.UnitsStyle.abbreviated.getter();
      v56 = dispatch thunk of static Equatable.== infix(_:_:)();
      v49(v46, v47);
      v49(v45, v47);
      if (v56)
      {
        v51 = 1;
      }

      else
      {
        v51 = 2;
      }
    }

    if (one-time initialization token for offset != -1)
    {
      swift_once();
    }

    v57 = static Text.DateStyle.offset;
    v58 = v96;
    v59 = Date.AnchoredRelativeFormatStyle.allowedFields.getter();
    v60 = specialized NSCalendarUnit.init(_:)(v59);
    v61 = v83;
    Date.AnchoredRelativeFormatStyle.anchor.getter();
    v62 = v99;
    v63 = v100;
    v64 = type metadata accessor for ResolvableAbsoluteDate();
    v50[3] = v64;
    v50[4] = &protocol witness table for ResolvableAbsoluteDate;
    v65 = __swift_allocate_boxed_opaque_existential_1(v50);
    v66 = v93;
    (*(v93 + 16))(v65, v61, v98);
    v67 = v65 + v64[5];
    *v67 = v57;
    *(v67 + 1) = v60;
    v67[16] = v51;
    v68 = v64[6];
    if (v63)
    {

      swift_retain_n();
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08CalendarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v62, v65 + v68);

      v69 = v64[7];

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v62, v65 + v69);

      v70 = v64[8];

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TimeZoneI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v62, v65 + v70);

      (*(v66 + 8))(v61, v98);
      (*(v94 + 8))(v58, v95);
    }

    else
    {
      v71 = v58;

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v72, v65 + v68);
      v73 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v62);
      if (v73)
      {
        v80(v65 + v64[7], &v73[*(*v73 + 248)], v82);
        v75 = v94;
        v74 = v95;
        v76 = v98;
      }

      else
      {
        v75 = v94;
        v74 = v95;
        v76 = v98;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v77 = v82;
        v78 = __swift_project_value_buffer(v82, static LocaleKey.defaultValue);
        v80(v65 + v64[7], v78, v77);
      }

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v62, v65 + v64[8]);
      (*(v93 + 8))(v83, v76);
      (*(v75 + 8))(v71, v74);
    }
  }
}

uint64_t static Duration.TimeFormatStyle.representation<A>(of:for:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v28 = a1;
  v9 = type metadata accessor for Duration.TimeFormatStyle.Attributed();
  v27 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Attributed and conformance Duration.TimeFormatStyle.Attributed, MEMORY[0x1E696A160]);
  v29 = a3;
  v30 = v9;
  v31 = a4;
  v32 = v12;
  v33 = &protocol witness table for AttributedString;
  v26 = type metadata accessor for TimeDataFormatting.Resolvable();
  v13 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v15 = &v24 - v14;
  v16 = *a2;
  v17 = type metadata accessor for Duration.TimeFormatStyle();
  v18 = lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Duration.TimeFormatStyle and conformance Duration.TimeFormatStyle, MEMORY[0x1E696A188]);
  v29 = a3;
  v30 = v17;
  v31 = a4;
  v32 = v18;
  v33 = &protocol witness table for String;
  if (v16 > 1)
  {
    v22 = type metadata accessor for TimeDataFormatting.Resolvable();
    a5[3] = v22;
    a5[4] = &protocol witness table for TimeDataFormatting.Resolvable<A, B>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
    return (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, v28, v22);
  }

  else
  {
    v19 = type metadata accessor for TimeDataFormatting.Resolvable();
    v24 = a4;
    v25 = a5;
    v20 = v19;
    Duration.TimeFormatStyle.attributed.getter();
    TimeDataFormatting.Resolvable.replacingFormat<A>(with:)(v11, v20, v9, v12, &protocol witness table for AttributedString, v15);
    (*(v27 + 8))(v11, v9);
    LOBYTE(v29) = v16;
    static Duration.TimeFormatStyle.Attributed.representation<A>(of:for:)(v15, &v29, a3, v24, v25);
    return (*(v13 + 8))(v15, v26);
  }
}

uint64_t static Duration.TimeFormatStyle.Attributed.representation<A>(of:for:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v119 = a4;
  v120 = a1;
  v112 = type metadata accessor for Date();
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v110 = v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for Duration.TimeFormatStyle.Pattern();
  v117 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v114 = v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for Duration.TimeFormatStyle();
  v118 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v109 = v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v99 = v94 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v107 = v94 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v108 = v94 - v16;
  v105 = type metadata accessor for AttributedString.CharacterView();
  MEMORY[0x1EEE9AC00](v105);
  v103 = v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for AttributedString();
  v102 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v19 = v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Locale();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v98 = v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v106 = v94 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v94 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = v94 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v94 - v32;
  v34 = *a2;
  v35 = type metadata accessor for Duration.TimeFormatStyle.Attributed();
  v36 = lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Attributed and conformance Duration.TimeFormatStyle.Attributed, MEMORY[0x1E696A160]);
  if (v34 > 1)
  {
    v127 = a3;
    v128 = v35;
    v129 = v119;
    v130 = v36;
    v131 = &protocol witness table for AttributedString;
    v54 = type metadata accessor for TimeDataFormatting.Resolvable();
    a5[3] = v54;
    a5[4] = &protocol witness table for TimeDataFormatting.Resolvable<A, B>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
    return (*(*(v54 - 8) + 16))(boxed_opaque_existential_1, v120, v54);
  }

  else
  {
    v97 = a5;
    v100 = a3;
    v127 = a3;
    v128 = v35;
    v129 = v119;
    v130 = v36;
    v131 = &protocol witness table for AttributedString;
    type metadata accessor for TimeDataFormatting.Resolvable();
    EnvironmentValues.init()(&v127);
    swift_getKeyPath();
    Duration.TimeFormatStyle.Attributed.subscript.getter();

    v37 = *(v21 + 16);
    v37(v30, v33, v20);
    v38 = v127;
    v96 = v21 + 16;
    v95 = v37;
    v37(v27, v30, v20);
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA06LocaleF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(&v127, v27);
    v94[1] = 0;

    v39 = *(v21 + 8);
    v101 = v20;
    v113 = v39;
    v39(v27, v20);
    v40 = v128;
    v41 = v21 + 8;
    if (v128)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA06LocaleK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v38, v127);
    }

    v42 = v30;
    v43 = v101;
    v44 = v113;
    v113(v42, v101);
    v44(v33, v43);
    Duration.TimeFormatStyle.Attributed.format(_:)();
    AttributedString.characters.getter();
    lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, MEMORY[0x1E6968678]);
    v45 = String.init<A>(_:)();
    v47 = v46;
    (*(v102 + 8))(v19, v104);
    v104 = v45;
    v125 = v45;
    v126 = v47;
    v105 = v47;
    v48 = v114;
    static Duration.TimeFormatStyle.Pattern.hourMinuteSecond.getter();
    v49 = v107;
    static FormatStyle<>.time(pattern:)();
    v50 = *(v117 + 8);
    v117 += 8;
    v50(v48, v115);
    v51 = v127;
    if (v40)
    {

      v52 = v106;
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v51, v106);

      v53 = v100;
    }

    else
    {
      v57 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v127);
      v53 = v100;
      v52 = v106;
      if (v57)
      {
        v58 = v57 + *(*v57 + 248);
      }

      else
      {
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v58 = __swift_project_value_buffer(v43, static LocaleKey.defaultValue);
      }

      v95(v52, v58, v43);
    }

    v59 = v108;
    Duration.TimeFormatStyle.locale(_:)();
    v106 = v41;
    v113(v52, v43);
    v60 = v118 + 8;
    v61 = *(v118 + 8);
    v62 = v116;
    v61(v49, v116);
    lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Duration.TimeFormatStyle and conformance Duration.TimeFormatStyle, MEMORY[0x1E696A188]);
    Duration.formatted<A>(_:)();
    v118 = v60;
    v61(v59, v62);
    v121 = v123;
    v122 = v124;
    lazy protocol witness table accessor for type String and conformance String();
    LOBYTE(v60) = StringProtocol.contains<A>(_:)();

    if (v60)
    {

      v63 = 224;
      v64 = v110;
      v65 = v119;
    }

    else
    {
      v125 = v104;
      v126 = v105;
      v66 = v114;
      static Duration.TimeFormatStyle.Pattern.minuteSecond.getter();
      static FormatStyle<>.time(pattern:)();
      v50(v66, v115);
      v103 = v51;
      if (v40)
      {

        v67 = v51;
        v68 = v98;
        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v67, v98);

        v64 = v110;
        v65 = v119;
        v69 = v101;
      }

      else
      {
        v70 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v51);
        v64 = v110;
        v65 = v119;
        v71 = v98;
        if (v70)
        {
          v72 = v70 + *(*v70 + 248);
          v73 = v98;
          v69 = v101;
        }

        else
        {
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
          }

          v69 = v101;
          v72 = __swift_project_value_buffer(v101, static LocaleKey.defaultValue);
          v73 = v71;
        }

        v95(v73, v72, v69);
        v68 = v71;
      }

      v74 = v99;
      v75 = v109;
      Duration.TimeFormatStyle.locale(_:)();
      v113(v68, v69);
      v76 = v75;
      v77 = v116;
      v61(v76, v116);
      Duration.formatted<A>(_:)();
      v61(v74, v77);
      v121 = v123;
      v122 = v124;
      v78 = StringProtocol.contains<A>(_:)();

      if (v78)
      {
        v63 = 192;
      }

      else
      {
        v63 = 96;
      }

      v53 = v100;
      v51 = v103;
    }

    v125 = static Duration.zero.getter();
    v126 = v79;
    (*(v65 + 48))(&v125, v53, v65);
    v80 = type metadata accessor for ResolvableAbsoluteDate();
    v81 = v97;
    v97[3] = v80;
    v81[4] = &protocol witness table for ResolvableAbsoluteDate;
    v82 = __swift_allocate_boxed_opaque_existential_1(v81);
    v83 = v111;
    v84 = v112;
    (*(v111 + 16))(v82, v64, v112);
    v85 = v82 + v80[5];
    *v85 = 4;
    *(v85 + 1) = v63;
    v85[16] = 2;
    v86 = v80[6];
    if (v40)
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08CalendarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v51, v82 + v86);
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v51, v82 + v80[7]);
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TimeZoneI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v51, v82 + v80[8]);
    }

    else
    {
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v51, v82 + v86);
      v87 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v51);
      if (v87)
      {
        v88 = *(*v87 + 248);
        v89 = v87;
        v90 = v82 + v80[7];
        v91 = v89 + v88;
        v92 = v101;
      }

      else
      {
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v93 = v101;
        v91 = __swift_project_value_buffer(v101, static LocaleKey.defaultValue);
        v90 = v82 + v80[7];
        v92 = v93;
      }

      v95(v90, v91, v92);
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v51, v82 + v80[8]);
    }

    (*(v83 + 8))(v64, v84);
  }
}

uint64_t static Duration.UnitsFormatStyle.representation<A>(of:for:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v28 = a1;
  v9 = type metadata accessor for Duration.UnitsFormatStyle.Attributed();
  v27 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Attributed and conformance Duration.UnitsFormatStyle.Attributed, MEMORY[0x1E696A1A8]);
  v29 = a3;
  v30 = v9;
  v31 = a4;
  v32 = v12;
  v33 = &protocol witness table for AttributedString;
  v26 = type metadata accessor for TimeDataFormatting.Resolvable();
  v13 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v15 = &v24 - v14;
  v16 = *a2;
  v17 = type metadata accessor for Duration.UnitsFormatStyle();
  v18 = lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle and conformance Duration.UnitsFormatStyle, MEMORY[0x1E696A218]);
  v29 = a3;
  v30 = v17;
  v31 = a4;
  v32 = v18;
  v33 = &protocol witness table for String;
  if (v16 > 1)
  {
    v22 = type metadata accessor for TimeDataFormatting.Resolvable();
    a5[3] = v22;
    a5[4] = &protocol witness table for TimeDataFormatting.Resolvable<A, B>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
    return (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, v28, v22);
  }

  else
  {
    v19 = type metadata accessor for TimeDataFormatting.Resolvable();
    v24 = a4;
    v25 = a5;
    v20 = v19;
    Duration.UnitsFormatStyle.attributed.getter();
    TimeDataFormatting.Resolvable.replacingFormat<A>(with:)(v11, v20, v9, v12, &protocol witness table for AttributedString, v15);
    (*(v27 + 8))(v11, v9);
    LOBYTE(v29) = v16;
    static Duration.UnitsFormatStyle.Attributed.representation<A>(of:for:)(v15, &v29, a3, v24, v25);
    return (*(v13 + 8))(v15, v26);
  }
}

uint64_t static Duration.UnitsFormatStyle.Attributed.representation<A>(of:for:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v83 = a4;
  v84 = a3;
  v85 = a1;
  v7 = type metadata accessor for Date();
  v80 = *(v7 - 8);
  v81 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v79 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  v77 = *(v9 - 8);
  v78 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v76 = &v68 - v12;
  v13 = type metadata accessor for Locale();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v68 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v68 - v21;
  v23 = type metadata accessor for Duration.UnitsFormatStyle.Attributed();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a2) = *a2;
  v27 = lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Attributed and conformance Duration.UnitsFormatStyle.Attributed, MEMORY[0x1E696A1A8]);
  if (a2 > 1)
  {
    v87 = v84;
    v88 = v23;
    v89 = v83;
    v90 = v27;
    v91 = &protocol witness table for AttributedString;
    v43 = type metadata accessor for TimeDataFormatting.Resolvable();
    a5[3] = v43;
    a5[4] = &protocol witness table for TimeDataFormatting.Resolvable<A, B>;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
    return (*(*(v43 - 8) + 16))(boxed_opaque_existential_1, v85, v43);
  }

  else
  {
    v72 = a5;
    v87 = v84;
    v88 = v23;
    v28 = v83;
    v89 = v83;
    v90 = v27;
    v91 = &protocol witness table for AttributedString;
    v29 = *(type metadata accessor for TimeDataFormatting.Resolvable() + 60);
    v73 = v24;
    v30 = *(v24 + 16);
    v74 = v23;
    v30(v26, v85 + v29, v23);
    EnvironmentValues.init()(&v87);
    swift_getKeyPath();
    v82 = v26;
    Duration.UnitsFormatStyle.Attributed.subscript.getter();

    v31 = *(v14 + 16);
    v31(v19, v22, v13);
    v32 = v87;
    v70 = v14 + 16;
    v69 = v31;
    v31(v16, v19, v13);
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA06LocaleF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(&v87, v16);
    v68 = 0;

    v33 = *(v14 + 8);
    v33(v16, v13);
    if (v88)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA06LocaleK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v32, v87);
    }

    v33(v19, v13);
    v33(v22, v13);
    swift_getKeyPath();
    v34 = v76;
    Duration.UnitsFormatStyle.Attributed.subscript.getter();

    v35 = v75;
    static Duration.UnitsFormatStyle.UnitWidth.narrow.getter();
    lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.UnitWidth and conformance Duration.UnitsFormatStyle.UnitWidth, MEMORY[0x1E696A1E8]);
    v36 = v78;
    v37 = dispatch thunk of static Equatable.== infix(_:_:)();
    v38 = *(v77 + 8);
    v38(v35, v36);
    v39 = v28;
    v71 = v13;
    if (v37)
    {
      v38(v34, v36);
      v40 = 0;
      v41 = v79;
      v42 = v84;
    }

    else
    {
      static Duration.UnitsFormatStyle.UnitWidth.abbreviated.getter();
      v46 = dispatch thunk of static Equatable.== infix(_:_:)();
      v38(v35, v36);
      v42 = v84;
      if (v46)
      {
        v38(v34, v36);
        v40 = 1;
      }

      else
      {
        static Duration.UnitsFormatStyle.UnitWidth.condensedAbbreviated.getter();
        v47 = dispatch thunk of static Equatable.== infix(_:_:)();
        v38(v35, v36);
        v38(v34, v36);
        if (v47)
        {
          v40 = 1;
        }

        else
        {
          v40 = 2;
        }
      }

      v41 = v79;
    }

    v86[0] = static Duration.zero.getter();
    v86[1] = v48;
    (*(v39 + 48))(v86, v42, v39);
    swift_getKeyPath();
    v49 = v82;
    Duration.UnitsFormatStyle.Attributed.subscript.getter();

    v50 = specialized NSCalendarUnit.init(_:)(v86[0]);
    v51 = v87;
    v52 = v88;
    v53 = type metadata accessor for ResolvableAbsoluteDate();
    v54 = v72;
    v72[3] = v53;
    v54[4] = &protocol witness table for ResolvableAbsoluteDate;
    v55 = __swift_allocate_boxed_opaque_existential_1(v54);
    v56 = v80;
    v57 = v81;
    (*(v80 + 16))(v55, v41, v81);
    v58 = v55 + v53[5];
    *v58 = 2;
    *(v58 + 1) = v50;
    v58[16] = v40;
    v59 = v53[6];
    v60 = v41;
    if (v52)
    {

      swift_retain_n();
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08CalendarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v51, v55 + v59);

      v61 = v53[7];

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v51, v55 + v61);

      v62 = v53[8];

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TimeZoneI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v51, v55 + v62);

      (*(v56 + 8))(v60, v57);
      (*(v73 + 8))(v49, v74);
    }

    else
    {

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v63, v55 + v59);
      v64 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v51);
      if (v64)
      {
        v69(v55 + v53[7], &v64[*(*v64 + 248)], v71);
        v65 = v82;
      }

      else
      {
        v65 = v82;
        v66 = v71;
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v67 = __swift_project_value_buffer(v66, static LocaleKey.defaultValue);
        v69(v55 + v53[7], v67, v66);
      }

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v51, v55 + v53[8]);
      (*(v56 + 8))(v41, v57);
      (*(v73 + 8))(v65, v74);
    }
  }
}

uint64_t key path setter for Duration.UnitsFormatStyle.unitWidth : Duration.UnitsFormatStyle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x615074616D726F66 && a2 == 0xED00006E72657474)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance Base in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v15 = a2;
  type metadata accessor for KeyedDecodingContainer<CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter>, lazy protocol witness table accessor for type Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v15;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v9 = v10;
  v9[1] = v12;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *protocol witness for Decodable.init(from:) in conformance CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = specialized init(from:) in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t outlined init with take of ResolvableCurrentDate(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvableCurrentDate();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s10Foundation8TimeZoneVSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  _s10Foundation8TimeZoneVSgMaTm_2(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined destroy of Range<Date>(uint64_t a1)
{
  type metadata accessor for Range<Date>();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for Duration.TimeFormatStyle(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Duration.TimeFormatStyle and conformance Duration.TimeFormatStyle, MEMORY[0x1E696A188]);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Duration.TimeFormatStyle.Attributed(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(&lazy protocol witness table cache variable for type Duration.TimeFormatStyle.Attributed and conformance Duration.TimeFormatStyle.Attributed, MEMORY[0x1E696A160]);
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter()
{
  result = lazy protocol witness table cache variable for type CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter;
  if (!lazy protocol witness table cache variable for type CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Date.FormatStyle.Attributed and conformance Date.FormatStyle.Attributed(unint64_t *a1, void (*a2)(uint64_t))
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

void *specialized init(from:) in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter(void *a1)
{
  type metadata accessor for KeyedDecodingContainer<CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter>, lazy protocol witness table accessor for type CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter();
  v9 = v8;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    lazy protocol witness table accessor for type Base in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance Base in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v7, v4);
    v9 = v11;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t lazy protocol witness table accessor for type CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter()
{
  result = lazy protocol witness table cache variable for type CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter;
  if (!lazy protocol witness table cache variable for type CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter;
  if (!lazy protocol witness table cache variable for type CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter;
  if (!lazy protocol witness table cache variable for type CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter;
  if (!lazy protocol witness table cache variable for type CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Base in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance Base in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter()
{
  result = lazy protocol witness table cache variable for type Base in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance Base in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter;
  if (!lazy protocol witness table cache variable for type Base in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance Base in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Base in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance Base in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter);
  }

  return result;
}

void type metadata accessor for KeyedDecodingContainer<CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for KeyedDecodingContainer();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter()
{
  result = lazy protocol witness table cache variable for type Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter;
  if (!lazy protocol witness table cache variable for type Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter;
  if (!lazy protocol witness table cache variable for type Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter;
  if (!lazy protocol witness table cache variable for type Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter;
  if (!lazy protocol witness table cache variable for type Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter and conformance Base.CodingKeys in CodableRepresentation #1 in Date.VerbatimFormatStyle.Attributed.formatPattern.getter);
  }

  return result;
}

uint64_t View.testID<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16, a2, v12);
  (*(v8 + 16))(v10, a1, a3);
  return TestIDView.init(content:id:)(v14, v10, a2, a3, a4);
}

uint64_t TestIDView.init(content:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for TestIDView();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t static TestIDView._makeView(view:inputs:)@<X0>(_DWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v38 = a6;
  v39 = a7;
  v35 = a5;
  v40 = a3;
  v65 = *MEMORY[0x1E69E9840];
  v13 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v34 - v14;
  *&v59 = a3;
  *(&v59 + 1) = a4;
  *&v60 = a5;
  *(&v60 + 1) = a6;
  v16 = type metadata accessor for TestIDView.IdentifiedView();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v34 - v21;
  LODWORD(a1) = *a1;
  v23 = a2[3];
  v61 = a2[2];
  v62 = v23;
  v63 = a2[4];
  v64 = *(a2 + 20);
  v24 = a2[1];
  v59 = *a2;
  v60 = v24;
  (*(*(a4 - 8) + 56))(v15, 1, 1, a4);
  v25 = a1;
  v26 = v40;
  v27 = v35;
  TestIDView.IdentifiedView.init(view:id:)(v25, v15, v22);
  v37 = v22;
  v38 = v17;
  (*(v17 + 16))(v19, v22, v16);
  WitnessTable = swift_getWitnessTable();
  _GraphValue.init<A>(_:)(v19, v26, v16, WitnessTable, &v42);
  v29 = v42;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v51 = v61;
  v52 = v62;
  v53 = v63;
  v54 = v64;
  v49 = v59;
  v50 = v60;
  v36 = v61;
  LODWORD(v51) = 0;
  v41 = v29;
  v55[0] = v59;
  v55[1] = v60;
  v56 = v64;
  v55[3] = v62;
  v55[4] = v63;
  v55[2] = v51;
  v45 = v51;
  v46 = v62;
  v47 = v63;
  v48 = v64;
  v43 = v59;
  v44 = v60;
  v31 = *(v27 + 24);
  outlined init with copy of _ViewInputs(&v59, v57);
  outlined init with copy of _ViewInputs(v55, v57);
  v32 = v39;
  v31(&v41, &v43);
  v57[2] = v45;
  v57[3] = v46;
  v57[4] = v47;
  v58 = v48;
  v57[0] = v43;
  v57[1] = v44;
  outlined destroy of _ViewInputs(v57);
  LODWORD(v51) = v36;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(v32, &v49);
    AGSubgraphEndTreeElement();
  }

  (*(v38 + 8))(v37, v16);
  v45 = v51;
  v46 = v52;
  v47 = v53;
  v48 = v54;
  v43 = v49;
  v44 = v50;
  return outlined destroy of _ViewInputs(&v43);
}

uint64_t TestIDView.IdentifiedView.init(view:id:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for TestIDView.IdentifiedView() + 52);
  v6 = type metadata accessor for Optional();
  return (*(*(v6 - 8) + 32))(&a3[v5], a2, v6);
}

uint64_t TestIDView.IdentifiedView.view.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TestIDView();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t TestIDView.IdentifiedView.updateValue()(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v23 = *(a1 + 16);
  v25 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v24 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v4 + 40);
  v29 = v6;
  v22 = *(v4 + 24);
  v30 = v22;
  v31 = v5;
  v7 = type metadata accessor for TestIDView();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - v9;
  v11 = v22;
  *&v22 = type metadata accessor for Optional();
  v12 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v14 = &v22 - v13;
  TestIDView.IdentifiedView.view.getter(v10);
  v15 = *(v11 - 8);
  (*(v15 + 16))(v14, &v10[*(v7 + 52)], v11);
  v16 = *(v8 + 8);
  v16(v10, v7);
  (*(v15 + 56))(v14, 0, 1, v11);
  (*(v12 + 40))(v1 + *(a1 + 52), v14, v22);
  TestIDView.IdentifiedView.view.getter(v10);
  v18 = v24;
  v17 = v25;
  v19 = v23;
  (*(v25 + 16))(v24, v10, v23);
  v16(v10, v7);
  v27 = a1;
  WitnessTable = swift_getWitnessTable();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v18, partial apply for closure #1 in StatefulRule.value.setter, v26, v19, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v20);
  return (*(v17 + 8))(v18, v19);
}

uint64_t TestIDView.IdentifiedView.matchesIdentifier<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  v12 = *(a2 + 24);
  v13 = type metadata accessor for Optional();
  v14 = MEMORY[0x1EEE9AC00](v13);
  (*(v15 + 16))(&v20 - v16, v4 + *(a2 + 52), v13, v14);
  v17 = swift_dynamicCast();
  (*(*(a3 - 8) + 56))(v11, v17 ^ 1u, 1, a3);
  v23 = *(a2 + 16);
  v24 = v12;
  v25 = a3;
  v26 = *(a2 + 32);
  v27 = v21;
  v28 = a1;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in TestIDView.IdentifiedView.matchesIdentifier<A>(_:), v22, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], v18, &v29);
  (*(v9 + 8))(v11, v8);
  return v29 & 1;
}

uint64_t TestIDView.IdentifiedView.description.getter(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - v6;
  v8 = *(v3 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v1 + *(a1 + 52), v4, v10);
  if ((*(v8 + 48))(v7, 1, v3) == 1)
  {
    (*(v5 + 8))(v7, v4);
    return 17481;
  }

  else
  {
    (*(v8 + 32))(v12, v7, v3);
    v15[0] = 0;
    v15[1] = 0xE000000000000000;
    MEMORY[0x193ABEDD0](540689481, 0xE400000000000000);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v13 = v15[0];
    (*(v8 + 8))(v12, v3);
  }

  return v13;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance TestIDView<A, B>.IdentifiedView()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t type metadata completion function for TestIDView.IdentifiedView()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for TestIDView.IdentifiedView(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = v7;
  if (*(v5 + 84))
  {
    v9 = *(v5 + 64);
  }

  else
  {
    v9 = *(v5 + 64) + 1;
  }

  v10 = v7 & 0x100000;
  if (v8 <= 7 && v10 == 0 && ((-5 - v8) | v8) - v9 >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    v14 = a1 + v8 + 4;
    v15 = a2 + v8 + 4;
    if ((*(v5 + 48))(v15 & ~v8, 1, v4))
    {
      memcpy((v14 & ~v8), (v15 & ~v8), v9);
    }

    else
    {
      (*(v6 + 16))(v14 & ~v8, v15 & ~v8, v4);
      (*(v6 + 56))(v14 & ~v8, 0, 1, v4);
    }
  }

  else
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v8 & 0xFC ^ 0x1FC) & (v8 + 16)));
  }

  return v3;
}

uint64_t destroy for TestIDView.IdentifiedView(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v7 = *(v2 - 8);
  v3 = *(v7 + 80);
  v4 = a1 + v3 + 4;
  result = (*(v7 + 48))(v4 & ~v3, 1, v2);
  if (!result)
  {
    v6 = *(v7 + 8);

    return v6(v4 & ~v3, v2);
  }

  return result;
}

_DWORD *initializeWithCopy for TestIDView.IdentifiedView(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = a1 + v6 + 4;
  v8 = a2 + v6 + 4;
  if ((*(v5 + 48))(v8 & ~v6, 1, v4))
  {
    if (*(v5 + 84))
    {
      v9 = *(v5 + 64);
    }

    else
    {
      v9 = *(v5 + 64) + 1;
    }

    memcpy((v7 & ~v6), (v8 & ~v6), v9);
  }

  else
  {
    (*(v5 + 16))(v7 & ~v6, v8 & ~v6, v4);
    (*(v5 + 56))(v7 & ~v6, 0, 1, v4);
  }

  return a1;
}

_DWORD *assignWithCopy for TestIDView.IdentifiedView(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = a1 + v6 + 4;
  v8 = a2 + v6 + 4;
  v9 = *(v5 + 48);
  v10 = v9(v7 & ~v6, 1, v4);
  v11 = v9(v8 & ~v6, 1, v4);
  if (v10)
  {
    if (!v11)
    {
      (*(v5 + 16))(v7 & ~v6, v8 & ~v6, v4);
      (*(v5 + 56))(v7 & ~v6, 0, 1, v4);
      return a1;
    }

    v12 = *(v5 + 84);
    v13 = *(v5 + 64);
  }

  else
  {
    if (!v11)
    {
      (*(v5 + 24))(v7 & ~v6, v8 & ~v6, v4);
      return a1;
    }

    v15 = *(v5 + 8);
    v14 = v5 + 8;
    v15(v7 & ~v6, v4);
    v12 = *(v14 + 76);
    v13 = *(v14 + 56);
  }

  if (v12)
  {
    v16 = v13;
  }

  else
  {
    v16 = v13 + 1;
  }

  memcpy((v7 & ~v6), (v8 & ~v6), v16);
  return a1;
}

_DWORD *initializeWithTake for TestIDView.IdentifiedView(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = a1 + v6 + 4;
  v8 = a2 + v6 + 4;
  if ((*(v5 + 48))(v8 & ~v6, 1, v4))
  {
    if (*(v5 + 84))
    {
      v9 = *(v5 + 64);
    }

    else
    {
      v9 = *(v5 + 64) + 1;
    }

    memcpy((v7 & ~v6), (v8 & ~v6), v9);
  }

  else
  {
    (*(v5 + 32))(v7 & ~v6, v8 & ~v6, v4);
    (*(v5 + 56))(v7 & ~v6, 0, 1, v4);
  }

  return a1;
}

_DWORD *assignWithTake for TestIDView.IdentifiedView(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = a1 + v6 + 4;
  v8 = a2 + v6 + 4;
  v9 = *(v5 + 48);
  v10 = v9(v7 & ~v6, 1, v4);
  v11 = v9(v8 & ~v6, 1, v4);
  if (v10)
  {
    if (!v11)
    {
      (*(v5 + 32))(v7 & ~v6, v8 & ~v6, v4);
      (*(v5 + 56))(v7 & ~v6, 0, 1, v4);
      return a1;
    }

    v12 = *(v5 + 84);
    v13 = *(v5 + 64);
  }

  else
  {
    if (!v11)
    {
      (*(v5 + 40))(v7 & ~v6, v8 & ~v6, v4);
      return a1;
    }

    v15 = *(v5 + 8);
    v14 = v5 + 8;
    v15(v7 & ~v6, v4);
    v12 = *(v14 + 76);
    v13 = *(v14 + 56);
  }

  if (v12)
  {
    v16 = v13;
  }

  else
  {
    v16 = v13 + 1;
  }

  memcpy((v7 & ~v6), (v8 & ~v6), v16);
  return a1;
}

uint64_t getEnumTagSinglePayload for TestIDView.IdentifiedView(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(v4 + 80);
  v8 = *(*(*(a3 + 24) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v6;
  if (a2 > v6)
  {
    v10 = v8 + ((v7 + 4) & ~v7);
    v11 = 8 * v10;
    if (v10 > 3)
    {
      goto LABEL_8;
    }

    v13 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v13 <= 0xFF)
      {
        if (v13 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v12 = *(a1 + v10);
        if (!*(a1 + v10))
        {
          goto LABEL_26;
        }

LABEL_15:
        v14 = (v12 - 1) << v11;
        if (v10 > 3)
        {
          v14 = 0;
        }

        if (v10)
        {
          if (v10 > 3)
          {
            LODWORD(v10) = 4;
          }

          if (v10 > 2)
          {
            if (v10 == 3)
            {
              LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v10) = *a1;
            }
          }

          else if (v10 == 1)
          {
            LODWORD(v10) = *a1;
          }

          else
          {
            LODWORD(v10) = *a1;
          }
        }

        return v6 + (v10 | v14) + 1;
      }

      v12 = *(a1 + v10);
      if (*(a1 + v10))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))((a1 + v7 + 4) & ~v7);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

void storeEnumTagSinglePayload for TestIDView.IdentifiedView(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v7 + 80);
  v11 = *(*(*(a4 + 24) - 8) + 64);
  if (!v8)
  {
    ++v11;
  }

  v12 = v11 + ((v10 + 4) & ~v10);
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 == 0 || !v13)
  {
LABEL_18:
    if (v9 < a2)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  if (v12 > 3)
  {
    v6 = 1;
    if (v9 < a2)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  v15 = ((v14 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
  if (!HIWORD(v15))
  {
    if (v15 < 0x100)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    if (v15 >= 2)
    {
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_18;
  }

  v6 = 4;
  if (v9 < a2)
  {
LABEL_19:
    v17 = ~v9 + a2;
    if (v12 < 4)
    {
      v18 = (v17 >> (8 * v12)) + 1;
      if (v12)
      {
        v19 = v17 & ~(-1 << (8 * v12));
        bzero(a1, v12);
        if (v12 != 3)
        {
          if (v12 == 2)
          {
            *a1 = v19;
            if (v6 > 1)
            {
LABEL_46:
              if (v6 == 2)
              {
                *&a1[v12] = v18;
              }

              else
              {
                *&a1[v12] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v6 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v6 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v17;
      v18 = 1;
      if (v6 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v6)
    {
      a1[v12] = v18;
    }

    return;
  }

LABEL_28:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v12] = 0;
  }

  else if (v6)
  {
    a1[v12] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v8 >= 2)
  {
    v20 = *(v7 + 56);
    v21 = &a1[v10 + 4] & ~v10;
    v22 = a2 + 1;

    v20(v21, v22);
  }
}

uint64_t instantiation function for generic protocol witness table for TestIDView<A, B>.IdentifiedView(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t partial apply for closure #1 in TestIDView.IdentifiedView.matchesIdentifier<A>(_:)@<X0>(_BYTE *a1@<X8>)
{
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  *a1 = result & 1;
  return result;
}

uint64_t (*enableProfiler.modify())()
{
  if (one-time initialization token for enableProfiler != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static UserDefaultKeyedFeature.cachedValue.modify in conformance EnableScrollPrefetchFeature;
}

const char *one-time initialization function for enableProfiler(int a1, char *a2, BOOL *a3)
{
  result = getenv(a2);
  if (result)
  {
    result = atoi(result);
    v5 = result != 0;
  }

  else
  {
    v5 = 0;
  }

  *a3 = v5;
  return result;
}

uint64_t enableProfiler.getter(void *a1, unsigned __int8 *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return *a2;
}

uint64_t enableProfiler.setter(char a1, void *a2, _BYTE *a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a3 = a1 & 1;
  return result;
}

uint64_t (*enableTracer.modify())()
{
  if (one-time initialization token for enableTracer != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return DisplayList.GraphicsRenderer.platformViewMode.modify;
}

double _BenchmarkHost.measureAction(action:)(void (*a1)(uint64_t))
{
  v3 = CACurrentMediaTime();
  if (one-time initialization token for enableTracer != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (enableTracer)
  {
    if (one-time initialization token for tracingOptions != -1)
    {
      swift_once();
    }

    started = AGGraphStartTracing();
  }

  else
  {
    if (one-time initialization token for enableProfiler != -1)
    {
      swift_once();
    }

    started = swift_beginAccess();
    if (enableProfiler)
    {
      swift_getObjectType();
      started = swift_conformsToProtocol2();
      if (started)
      {
        if (v1)
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          ViewRendererHost.startProfiling()();
          started = swift_unknownObjectRelease();
        }
      }
    }
  }

  a1(started);
  v5 = CACurrentMediaTime();
  if (enableTracer)
  {
    AGGraphStopTracing();
  }

  else
  {
    if (one-time initialization token for enableProfiler != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (enableProfiler)
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        if (v1)
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          ViewRendererHost.stopProfiling()();
          swift_unknownObjectRelease();
        }
      }
    }
  }

  return v5 - v3;
}

char *_BenchmarkHost.measureRenders(duration:)(double a1)
{
  v5 = a1 / 60.0;
  v6 = *&v5 & 0x7FFFFFFFFFFFFFFFLL;
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = 0xC3E0000000000001;
  if (v5 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v6 = 0x43E0000000000000;
  if (v5 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v3 = v5;
  if (v5 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!__OFADD__(v3, 1))
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 + 1, 0, MEMORY[0x1E69E7CC0]);
    v5 = _BenchmarkHost.measureAction(action:)(partial apply for closure #1 in _BenchmarkHost.measureRender(interval:));
    v4 = *(v1 + 2);
    v6 = *(v1 + 3);
    v2 = v4 + 1;
    if (v4 < v6 >> 1)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  v13 = v5;
  v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v2, 1, v1);
  v5 = v13;
  v1 = v14;
LABEL_7:
  *(v1 + 2) = v2;
  for (*&v1[8 * v4 + 32] = v5; v3; --v3)
  {
    v7 = _BenchmarkHost.measureAction(action:)(partial apply for closure #1 in _BenchmarkHost.measureRender(interval:));
    v9 = *(v1 + 2);
    v8 = *(v1 + 3);
    if (v9 >= v8 >> 1)
    {
      v10 = v7;
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v1);
      v7 = v10;
      v1 = v11;
    }

    *(v1 + 2) = v9 + 1;
    *&v1[8 * v9 + 32] = v7;
  }

  return v1;
}

Swift::String __swiftcall summarize(_:)(Swift::OpaquePointer a1)
{
  v1 = *(a1._rawValue + 2);
  if (v1)
  {
    rawValue = a1._rawValue;
    v54 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = 0;
    v4 = v54;
    v5 = rawValue + 32;
    while (1)
    {
      outlined init with copy of (_Benchmark, [Double])(&v5[48 * v3], &v50);
      v6 = v53;
      __swift_project_boxed_opaque_existential_1(&v50, v52);
      swift_getDynamicType();
      type metadata accessor for _Benchmark.Type();
      v7 = String.init<A>(describing:)();
      v9 = v8;
      v10 = *(v6 + 16);
      if (v10)
      {
        if (v10 >= 4)
        {
          v11 = v10 & 0x7FFFFFFFFFFFFFFCLL;
          v13 = (v6 + 48);
          v12 = 0.0;
          v14 = v10 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v12 = v12 + *(v13 - 2) + *(v13 - 1) + *v13 + v13[1];
            v13 += 4;
            v14 -= 4;
          }

          while (v14);
          if (v10 == v11)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v11 = 0;
          v12 = 0.0;
        }

        v15 = v10 - v11;
        v16 = (v6 + 8 * v11 + 32);
        do
        {
          v17 = *v16++;
          v12 = v12 + v17;
          --v15;
        }

        while (v15);
      }

      else
      {
        v12 = 0.0;
      }

LABEL_12:
      a1._rawValue = outlined destroy of (_Benchmark, [Double])(&v50, type metadata accessor for (_Benchmark, [Double]));
      v54 = v4;
      v20 = *(v4 + 16);
      v19 = *(v4 + 24);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        a1._rawValue = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v4 = v54;
      }

      ++v3;
      *(v4 + 16) = v21;
      v22 = v4 + 24 * v20;
      *(v22 + 32) = v7;
      *(v22 + 40) = v9;
      *(v22 + 48) = v12;
      if (v3 == v1)
      {
        goto LABEL_17;
      }
    }
  }

  v4 = MEMORY[0x1E69E7CC0];
  v21 = *(MEMORY[0x1E69E7CC0] + 16);
  v23 = MEMORY[0x1E69E7CC0];
  if (v21)
  {
LABEL_17:
    v24 = 0;
    v25 = 0;
    v26 = v4 + 40;
    do
    {
      if (v25 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_32;
      }

      ++v25;

      v27 = String.count.getter();

      if (v27 > v24)
      {
        v24 = v27;
      }

      v26 += 24;
    }

    while (v21 != v25);
    v28 = (v4 + 48);
    v23 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v29 = *(v28 - 2);
      v30 = *(v28 - 1);
      v31 = *v28;

      a1._rawValue = String.count.getter();
      v32 = v24 - a1._rawValue;
      if (__OFSUB__(v24, a1._rawValue))
      {
        break;
      }

      if (__OFADD__(v32, 1))
      {
        goto LABEL_33;
      }

      v33._countAndFlagsBits = 32;
      v33._object = 0xE100000000000000;
      v34 = String.init(repeating:count:)(v33, v32 + 1);
      v50 = v29;
      v51 = v30;

      MEMORY[0x193ABEDD0](58, 0xE100000000000000);

      MEMORY[0x193ABEDD0](v34._countAndFlagsBits, v34._object);

      v35 = v50;
      v36 = v51;
      type metadata accessor for _ContiguousArrayStorage<CVarArg>();
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_18DDA6EB0;
      *(v37 + 56) = MEMORY[0x1E69E63B0];
      *(v37 + 64) = MEMORY[0x1E69E6438];
      *(v37 + 32) = v31 * 1000.0;
      v38 = String.init(format:_:)();
      v40 = v39;
      v50 = v35;
      v51 = v36;

      MEMORY[0x193ABEDD0](v38, v40);

      v41 = v50;
      v42 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 2) + 1, 1, v23);
      }

      v44 = *(v23 + 2);
      v43 = *(v23 + 3);
      if (v44 >= v43 >> 1)
      {
        v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v23);
      }

      *(v23 + 2) = v44 + 1;
      v45 = &v23[16 * v44];
      *(v45 + 4) = v41;
      *(v45 + 5) = v42;
      v28 += 3;
      if (!--v21)
      {
        goto LABEL_30;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
LABEL_30:

    v50 = v23;
    type metadata accessor for [Double](0, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v46 = BidirectionalCollection<>.joined(separator:)();
    v48 = v47;

    a1._rawValue = v46;
    v18 = v48;
  }

  result._object = v18;
  result._countAndFlagsBits = a1._rawValue;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> write(_:to:)(Swift::OpaquePointer _, Swift::String to)
{
  countAndFlagsBits = to._countAndFlagsBits;
  object = to._object;
  v48[6] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(_._rawValue + 2);
  if (v7)
  {
    v39 = object;
    v40 = v5;
    v41 = v4;
    v46 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v8 = _._rawValue + 32;
    v9 = v46;
    type metadata accessor for _DictionaryStorage<String, [Double]>(0, &lazy cache variable for type metadata for _DictionaryStorage<String, [Double]>, MEMORY[0x1E69E6EC8]);
    do
    {
      outlined init with copy of (_Benchmark, [Double])(v8, v48);
      v10 = v48[5];
      __swift_project_boxed_opaque_existential_1(v48, v48[3]);
      DynamicType = swift_getDynamicType();
      v45 = v48[4];
      type metadata accessor for _Benchmark.Type();
      v11 = String.init<A>(describing:)();
      v13 = v12;
      v47[0] = v11;
      v47[1] = v12;
      v47[2] = v10;
      v14 = static _DictionaryStorage.allocate(capacity:)();
      swift_bridgeObjectRetain_n();

      v15 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v13);
      if (v16)
      {
        __break(1u);
LABEL_18:
        __break(1u);
      }

      v14[(v15 >> 6) + 8] |= 1 << v15;
      v17 = (v14[6] + 16 * v15);
      *v17 = v11;
      v17[1] = v13;
      *(v14[7] + 8 * v15) = v10;
      v18 = v14[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_18;
      }

      v14[2] = v20;

      outlined destroy of (_Benchmark, [Double])(v47, type metadata accessor for (String, [Double]));
      outlined destroy of (_Benchmark, [Double])(v48, type metadata accessor for (_Benchmark, [Double]));
      v46 = v9;
      v22 = *(v9 + 16);
      v21 = *(v9 + 24);
      if (v22 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
        v9 = v46;
      }

      *(v9 + 16) = v22 + 1;
      *(v9 + 8 * v22 + 32) = v14;
      v8 += 48;
      --v7;
    }

    while (v7);
    v4 = v41;
    v5 = v40;
    object = v39;
  }

  v23 = objc_opt_self();
  type metadata accessor for _DictionaryStorage<String, [Double]>(0, &lazy cache variable for type metadata for [String : [Double]], MEMORY[0x1E69E5E28]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v48[0] = 0;
  v25 = [v23 dataWithJSONObject:isa options:1 error:v48];

  v26 = v48[0];
  if (v25)
  {
    v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = [objc_opt_self() defaultManager];
    v31 = MEMORY[0x193ABEC20](countAndFlagsBits, object);
    v32 = [v31 stringByDeletingLastPathComponent];

    if (!v32)
    {
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = MEMORY[0x193ABEC20](v33);
    }

    v48[0] = 0;
    v34 = [v30 createDirectoryAtPath:v32 withIntermediateDirectories:1 attributes:0 error:v48];

    if (v34)
    {
      v35 = v48[0];
      v36 = v42;
      URL.init(fileURLWithPath:)();
      Data.write(to:options:)();
      (*(v5 + 8))(v36, v4);
    }

    else
    {
      v38 = v48[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    outlined consume of Data._Representation(v27, v29);
  }

  else
  {
    v37 = v26;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

Swift::Void __swiftcall log(_:)(Swift::OpaquePointer a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = summarize(_:)(a1);
  type metadata accessor for [Double](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  v41 = xmmword_18DDA6EB0;
  *(v7 + 16) = xmmword_18DDA6EB0;
  v8 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 32) = v6;
  print(_:separator:terminator:)();

  v9 = *(static CommandLine.arguments.getter() + 16);

  if (v9 < 2)
  {
    v13 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v14 = MEMORY[0x193ABEC20](0xD000000000000011, 0x800000018DD82A20);
    [v13 setDateFormat_];

    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v3 + 8))(v5, v2);
    v16 = [v13 stringFromDate_];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v45 = 0xD000000000000022;
    v46 = 0x800000018DD82A40;
    MEMORY[0x193ABEDD0](v17, v19);

    MEMORY[0x193ABEDD0](0x6E6F736A2ELL, 0xE500000000000000);

    v12 = v45;
    v11 = v46;
  }

  else
  {
    v10 = static CommandLine.arguments.getter();
    if (v10[2] < 2uLL)
    {
      __break(1u);
      return;
    }

    v12 = v10[6];
    v11 = v10[7];
    swift_bridgeObjectRetain_n();
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v41;
  *(v20 + 56) = v8;
  *(v20 + 32) = v12;
  *(v20 + 40) = v11;
  print(_:separator:terminator:)();

  v21._countAndFlagsBits = v12;
  v21._object = v11;
  write(_:to:)(a1, v21);
  if (v22)
  {

    static os_log_type_t.fault.getter();
    if (one-time initialization token for internalErrorsLog != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v23 = static Log.internalErrorsLog;
    type metadata accessor for _ContiguousArrayStorage<CVarArg>();
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_18DDAF080;
    swift_getErrorValue();
    v25 = v23;
    v26 = Error.localizedDescription.getter();
    v28 = v27;
    *(v24 + 56) = v8;
    v29 = v8;
    v30 = lazy protocol witness table accessor for type String and conformance String();
    *(v24 + 64) = v30;
    *(v24 + 32) = v26;
    *(v24 + 40) = v28;
    v31 = StaticString.description.getter();
    *(v24 + 96) = v29;
    *(v24 + 104) = v30;
    *(v24 + 72) = v31;
    *(v24 + 80) = v32;
    v43 = 107;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v24 + 136) = v29;
    *(v24 + 144) = v30;
    *(v24 + 112) = v33;
    *(v24 + 120) = v34;
    os_log(_:dso:log:_:_:)();

    v35 = swift_allocObject();
    *(v35 + 16) = v41;
    v43 = 0;
    v44 = 0xE000000000000000;
    _StringGuts.grow(_:)(38);

    swift_getErrorValue();
    v43 = Error.localizedDescription.getter();
    v44 = v36;
    MEMORY[0x193ABEDD0](2108704, 0xE300000000000000);
    v37 = StaticString.description.getter();
    MEMORY[0x193ABEDD0](v37);

    MEMORY[0x193ABEDD0](58, 0xE100000000000000);
    v42 = 107;
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x193ABEDD0](v38);

    MEMORY[0x193ABEDD0](0xD00000000000001CLL, 0x800000018DD77470);
    v39 = v43;
    v40 = v44;
    *(v35 + 56) = v29;
    *(v35 + 32) = v39;
    *(v35 + 40) = v40;
    print(_:separator:terminator:)();
  }

  else
  {
  }
}

uint64_t outlined init with copy of (_Benchmark, [Double])(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (_Benchmark, [Double])();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for (_Benchmark, [Double])()
{
  if (!lazy cache variable for type metadata for (_Benchmark, [Double]))
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for _Benchmark);
    type metadata accessor for [Double](255, &lazy cache variable for type metadata for [Double], MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (_Benchmark, [Double]));
    }
  }
}

unint64_t type metadata accessor for _Benchmark.Type()
{
  result = lazy cache variable for type metadata for _Benchmark.Type;
  if (!lazy cache variable for type metadata for _Benchmark.Type)
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for _Benchmark);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for _Benchmark.Type);
  }

  return result;
}

uint64_t outlined destroy of (_Benchmark, [Double])(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for (String, [Double])()
{
  if (!lazy cache variable for type metadata for (String, [Double]))
  {
    type metadata accessor for [Double](255, &lazy cache variable for type metadata for [Double], MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (String, [Double]));
    }
  }
}

void type metadata accessor for _DictionaryStorage<String, [Double]>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    type metadata accessor for [Double](255, &lazy cache variable for type metadata for [Double], MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
    v7 = a3(a1, MEMORY[0x1E69E6158], v6, MEMORY[0x1E69E6168]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void type metadata accessor for [Double](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t Transition._makeContentTransition(transition:)(uint64_t result)
{
  if (*result == 3)
  {
    v1 = result;
    result = outlined consume of _Transition_ContentTransition.Result(*(result + 24), *(result + 32));
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
  }

  return result;
}

uint64_t Transition.hasContentTransition.getter(uint64_t a1, uint64_t a2)
{
  v3[0] = 3;
  v3[1] = 0;
  v3[2] = 0;
  v4 = 0;
  v5 = 2;
  (*(a2 + 40))(v3, a1);
  if (v5)
  {
    outlined consume of _Transition_ContentTransition.Result(v4, v5);
  }

  else if (v4)
  {
    return 1;
  }

  return 0;
}

uint64_t Transition.contentTransitionEffects(style:size:)(unsigned __int8 *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v6[0] = *a1;
  *&v6[1] = a2;
  *&v6[2] = a3;
  v7 = 0;
  v8 = 2;
  (*(a5 + 40))(v6);
  result = v7;
  if (v8 != 1)
  {
    outlined consume of _Transition_ContentTransition.Result(v7, v8);
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t protocol witness for Transition._makeContentTransition(transition:) in conformance ModifierTransition<A>(uint64_t result)
{
  if (*result == 3)
  {
    v1 = result;
    result = outlined consume of _Transition_ContentTransition.Result(*(result + 24), *(result + 32));
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
  }

  return result;
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance ApplyTransitionModifier<A>.Child@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 56);

  return v3(a1, 1, 1, AssociatedTypeWitness);
}

__n128 _Transition_ContentTransition.operation.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  return result;
}

__n128 _Transition_ContentTransition.operation.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v2;
  return result;
}

uint64_t _Transition_ContentTransition.result.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  v3 = *(v1 + 32);
  *(a1 + 8) = v3;
  return outlined copy of _Transition_ContentTransition.Result(v2, v3);
}

uint64_t _Transition_ContentTransition.result.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = outlined consume of _Transition_ContentTransition.Result(*(v1 + 24), *(v1 + 32));
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

Swift::Int TransitionPhase.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](a1);
  return Hasher._finalize()();
}

uint64_t IdentityTransition._makeContentTransition(transition:)(uint64_t result)
{
  if (*result == 3)
  {
    v1 = result;
    result = outlined consume of _Transition_ContentTransition.Result(*(result + 24), *(result + 32));
    *(v1 + 24) = 1;
    *(v1 + 32) = 0;
  }

  return result;
}

uint64_t protocol witness for Transition._makeContentTransition(transition:) in conformance SlideTransition(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*result == 3)
  {
    v5 = result;
    result = outlined consume of _Transition_ContentTransition.Result(*(result + 24), *(result + 32));
    *(v5 + 24) = a4;
    *(v5 + 32) = 0;
  }

  return result;
}

uint64_t outlined copy of _Transition_ContentTransition.Result(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TransitionPhase and conformance TransitionPhase()
{
  result = lazy protocol witness table cache variable for type TransitionPhase and conformance TransitionPhase;
  if (!lazy protocol witness table cache variable for type TransitionPhase and conformance TransitionPhase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransitionPhase and conformance TransitionPhase);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ApplyTransitionModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 >= 0xFD)
      {
        return (*(v4 + 48))();
      }

      v15 = *(a1 + v6);
      if (v15 >= 3)
      {
        return v15 - 2;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

uint64_t initializeWithCopy for _Transition_ContentTransition(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 32);
  outlined copy of _Transition_ContentTransition.Result(v3, v4);
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  return a1;
}

uint64_t assignWithCopy for _Transition_ContentTransition(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v3;
  v4 = *(a2 + 3);
  v5 = *(a2 + 32);
  outlined copy of _Transition_ContentTransition.Result(v4, v5);
  v6 = *(a1 + 24);
  *(a1 + 24) = v4;
  v7 = *(a1 + 32);
  *(a1 + 32) = v5;
  outlined consume of _Transition_ContentTransition.Result(v6, v7);
  return a1;
}

uint64_t assignWithTake for _Transition_ContentTransition(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  v4 = *(a2 + 32);
  v5 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  v6 = *(a1 + 32);
  *(a1 + 32) = v4;
  outlined consume of _Transition_ContentTransition.Result(v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for _Transition_ContentTransition.Operation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[24])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _Transition_ContentTransition.Operation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for _Transition_ContentTransition.Operation(void *result, unsigned int a2)
{
  if (a2 > 0xFD)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 254;
  }

  else if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t assignWithCopy for _Transition_ContentTransition.Result(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of _Transition_ContentTransition.Result(*a2, v4);
  v5 = *a1;
  *a1 = v3;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  outlined consume of _Transition_ContentTransition.Result(v5, v6);
  return a1;
}

uint64_t assignWithTake for _Transition_ContentTransition.Result(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  outlined consume of _Transition_ContentTransition.Result(v4, v5);
  return a1;
}

uint64_t key path getter for EnvironmentValues.isVisionEnabled : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    IsVisionEnabledI0VG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015IsVisionEnabledI0VG_Tt1g5(v3);
  }

  else
  {
    result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA015IsVisionEnabledF0VG_Tt2g5(*a1);
    IsVisionEnabledI0VG_Tt1g5 = result;
  }

  *a2 = IsVisionEnabledI0VG_Tt1g5 & 1;
  return result;
}

uint64_t key path setter for EnvironmentValues.isVisionEnabled : EnvironmentValues(char *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA015IsVisionEnabledF0VG_Tt2g5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA015IsVisionEnabledK0VG_Ttg5(v4, *a2);
  }
}

uint64_t EnvironmentValues.isVisionEnabled.setter(char a1)
{
  v2 = v1;
  v4 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA015IsVisionEnabledF0VG_Tt2g5(v2, a1);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA015IsVisionEnabledK0VG_Ttg5(v4, *v2);
  }
}

void (*EnvironmentValues.isVisionEnabled.modify(void *a1))(uint64_t *a1)
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
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    IsVisionEnabledI0VG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015IsVisionEnabledI0VG_Tt1g5(v5);
  }

  else
  {
    IsVisionEnabledI0VG_Tt1g5 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA015IsVisionEnabledF0VG_Tt2g5(v5);
  }

  v4[5] = 0;
  *(v4 + 48) = IsVisionEnabledI0VG_Tt1g5 & 1;
  return EnvironmentValues.isVisionEnabled.modify;
}

void EnvironmentValues.isVisionEnabled.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA015IsVisionEnabledF0VG_Tt2g5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA015IsVisionEnabledK0VG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

uint64_t static EmptyVisualEffect._makeVisualEffect(effect:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, _OWORD *))
{
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return a3(a1, v6);
}

uint64_t static ModifiedContent<>._makeVisualEffect(effect:inputs:body:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *a1;
  v15 = *(a2 + 48);
  v21[2] = *(a2 + 32);
  v21[3] = v15;
  v21[4] = *(a2 + 64);
  v22 = *(a2 + 80);
  v16 = *(a2 + 16);
  v21[0] = *a2;
  v21[1] = v16;
  v20[1] = v14;
  type metadata accessor for ModifiedContent();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #1 in static ModifiedContent<>._makeVisualEffect(effect:inputs:body:), a6, v20);
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  *(v17 + 32) = a7;
  *(v17 + 40) = a8;
  *(v17 + 48) = v14;
  *(v17 + 56) = a3;
  *(v17 + 64) = a4;
  v18 = *(a8 + 16);

  v18(v20, v21, partial apply for closure #2 in static ModifiedContent<>._makeVisualEffect(effect:inputs:body:), v17, a6, a8);
}

uint64_t closure #2 in static ModifiedContent<>._makeVisualEffect(effect:inputs:body:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a2 + 48);
  v16[2] = *(a2 + 32);
  v16[3] = v12;
  v16[4] = *(a2 + 64);
  v17 = *(a2 + 80);
  v13 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v13;
  v15[1] = a3;
  type metadata accessor for ModifiedContent();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #1 in closure #2 in static ModifiedContent<>._makeVisualEffect(effect:inputs:body:), a6, v15);
  return (*(a8 + 16))(v15, v16, a4, a5, a6, a8);
}

uint64_t closure #1 in closure #2 in static ModifiedContent<>._makeVisualEffect(effect:inputs:body:)(uint64_t a1, uint64_t a2)
{
  v7[2] = type metadata accessor for ModifiedContent();
  v7[3] = a2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v7, a2, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t VisualEffect.combining<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16, a2, v12);
  (*(v8 + 16))(v10, a1, a3);
  return ModifiedContent.init(content:modifier:)(v14, v10, a2, a3, a4);
}

SwiftUI::CoordinateSpace::ID __swiftcall CoordinateSpace.ID.init()()
{
  v1 = v0;
  result.value.value = AGMakeUniqueID();
  v1->value.value = result.value.value;
  return result;
}

void *static CoordinateSpaceProtocol<>.id(_:)@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 40) = 1;
  return result;
}

BOOL CoordinateSpace.isGlobal.getter()
{
  outlined init with copy of CoordinateSpace(v0, &v3);
  if (v6)
  {
    if (v6 != 1)
    {
      v1 = vorrq_s8(v4, v5);
      return (*&vorr_s8(*v1.i8, *&vextq_s8(v1, v1, 8uLL)) | v3) == 0;
    }
  }

  else
  {
    outlined destroy of CoordinateSpace(&v3);
  }

  return 0;
}

uint64_t static CoordinateSpace.root.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (one-time initialization token for root != -1)
  {
    swift_once();
    v2 = a1;
  }

  return outlined init with copy of CoordinateSpace(&static CoordinateSpace.root, v2);
}

BOOL CoordinateSpace.isLocal.getter()
{
  outlined init with copy of CoordinateSpace(v0, &v3);
  if (v6)
  {
    if (v6 != 1)
    {
      v1 = vorrq_s8(v4, v5);
      return (*&vorr_s8(*v1.i8, *&vextq_s8(v1, v1, 8uLL)) | v3) != 0;
    }
  }

  else
  {
    outlined destroy of CoordinateSpace(&v3);
  }

  return 0;
}

uint64_t CoordinateSpace.hash(into:)()
{
  outlined init with copy of CoordinateSpace(v0, &v6);
  if (v9)
  {
    v1 = v6;
    if (v9 == 1)
    {
      MEMORY[0x193AC11A0](3);
      v2 = v1;
    }

    else
    {
      v2 = (*(&v7 + 1) | v8 | v6 | v7 | *(&v6 + 1)) != 0;
    }

    return MEMORY[0x193AC11A0](v2);
  }

  else
  {
    v4[0] = v6;
    v4[1] = v7;
    v5 = v8;
    MEMORY[0x193AC11A0](2);
    AnyHashable.hash(into:)();
    return outlined destroy of AnyHashable(v4);
  }
}

Swift::Int CoordinateSpace.hashValue.getter()
{
  Hasher.init(_seed:)();
  CoordinateSpace.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CoordinateSpace()
{
  Hasher.init(_seed:)();
  CoordinateSpace.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CoordinateSpace()
{
  Hasher.init(_seed:)();
  CoordinateSpace.hash(into:)();
  return Hasher._finalize()();
}

__n128 NamedCoordinateSpace.init(name:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 25);
  *(a2 + 25) = result;
  return result;
}

double LocalCoordinateSpace.coordinateSpace.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 2;
  return result;
}

double GlobalCoordinateSpace.coordinateSpace.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 2;
  return result;
}

double protocol witness for CoordinateSpaceProtocol.coordinateSpace.getter in conformance GlobalCoordinateSpace@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 2;
  return result;
}

unint64_t lazy protocol witness table accessor for type CoordinateSpace and conformance CoordinateSpace()
{
  result = lazy protocol witness table cache variable for type CoordinateSpace and conformance CoordinateSpace;
  if (!lazy protocol witness table cache variable for type CoordinateSpace and conformance CoordinateSpace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CoordinateSpace and conformance CoordinateSpace);
  }

  return result;
}

__n128 assignWithCopy for CoordinateSpace(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = *(a1 + 40);
    if (v2 >= 2)
    {
      v2 = *a1 + 2;
    }

    if (!v2)
    {
      v3 = a1;
      v4 = a2;
      __swift_destroy_boxed_opaque_existential_1(a1);
      a2 = v4;
      a1 = v3;
    }

    v6 = *(a2 + 40);
    if (v6 >= 2)
    {
      v6 = *a2 + 2;
    }

    if (v6 == 1)
    {
      *a1 = *a2;
      *(a1 + 40) = 1;
    }

    else if (v6)
    {
      result = *a2;
      v9 = *(a2 + 16);
      *(a1 + 25) = *(a2 + 25);
      *a1 = result;
      *(a1 + 16) = v9;
    }

    else
    {
      v7 = *(a2 + 24);
      *(a1 + 24) = v7;
      *(a1 + 32) = *(a2 + 32);
      v8 = a1;
      (**(v7 - 8))();
      *(v8 + 40) = 0;
    }
  }

  return result;
}

__n128 assignWithTake for CoordinateSpace(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = *(a1 + 40);
    if (v2 >= 2)
    {
      v2 = *a1 + 2;
    }

    if (!v2)
    {
      v3 = a1;
      v4 = a2;
      __swift_destroy_boxed_opaque_existential_1(a1);
      a2 = v4;
      a1 = v3;
    }

    v6 = *(a2 + 40);
    if (v6 >= 2)
    {
      v6 = *a2 + 2;
    }

    if (v6 == 1)
    {
      *a1 = *a2;
      *(a1 + 40) = 1;
    }

    else if (v6)
    {
      v8 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v8;
      result = *(a2 + 25);
      *(a1 + 25) = result;
    }

    else
    {
      result = *a2;
      v7 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v7;
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = 0;
    }
  }

  return result;
}

uint64_t assignWithCopy for CoordinateSpace.Name(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = *(result + 40);
    if (v2 >= 2)
    {
      v2 = *result + 2;
    }

    if (v2 != 1)
    {
      v3 = result;
      v4 = a2;
      __swift_destroy_boxed_opaque_existential_1(result);
      a2 = v4;
      result = v3;
    }

    v5 = *(a2 + 40);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      *result = *a2;
      v6 = 1;
    }

    else
    {
      v7 = *(a2 + 24);
      *(result + 24) = v7;
      *(result + 32) = *(a2 + 32);
      v8 = result;
      (**(v7 - 8))();
      result = v8;
      v6 = 0;
    }

    *(result + 40) = v6;
  }

  return result;
}

uint64_t assignWithTake for CoordinateSpace.Name(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = *(result + 40);
    if (v2 >= 2)
    {
      v2 = *result + 2;
    }

    if (v2 != 1)
    {
      v3 = result;
      v4 = a2;
      __swift_destroy_boxed_opaque_existential_1(result);
      a2 = v4;
      result = v3;
    }

    v5 = *(a2 + 40);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      *result = *a2;
      v6 = 1;
    }

    else
    {
      v6 = 0;
      v7 = *(a2 + 16);
      *result = *a2;
      *(result + 16) = v7;
      *(result + 32) = *(a2 + 32);
    }

    *(result + 40) = v6;
  }

  return result;
}

uint64_t assignWithCopy for NamedCoordinateSpace(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    outlined destroy of CoordinateSpace.Name(a1);
    if (*(a2 + 40))
    {
      v4 = *a2;
      v5 = a2[1];
      *(a1 + 25) = *(a2 + 25);
      *a1 = v4;
      *(a1 + 16) = v5;
    }

    else
    {
      v6 = *(a2 + 3);
      *(a1 + 24) = v6;
      *(a1 + 32) = *(a2 + 4);
      (**(v6 - 8))(a1, a2);
      *(a1 + 40) = 0;
    }
  }

  return a1;
}

uint64_t assignWithTake for NamedCoordinateSpace(uint64_t result, _OWORD *a2)
{
  if (result != a2)
  {
    v3 = result;
    outlined destroy of CoordinateSpace.Name(result);
    v4 = a2[1];
    *v3 = *a2;
    v3[1] = v4;
    *(v3 + 25) = *(a2 + 25);
    return v3;
  }

  return result;
}

uint64_t ClosedRange<>.minimumValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  type metadata accessor for AccessibilityNumeric();
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(v9, v11);
    v6 = v12;
    v7 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    if ((*(v7 + 8))(v6, v7))
    {
      outlined init with copy of AnyTrackedValue(v11, a2);
    }

    else
    {
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }

    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    result = outlined destroy of AccessibilityNumeric?(v9);
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

unint64_t type metadata accessor for AccessibilityNumeric()
{
  result = lazy cache variable for type metadata for AccessibilityNumeric;
  if (!lazy cache variable for type metadata for AccessibilityNumeric)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AccessibilityNumeric);
  }

  return result;
}

uint64_t outlined destroy of AccessibilityNumeric?(uint64_t a1)
{
  type metadata accessor for AccessibilityNumeric?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ClosedRange<>.maximumValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v8 + 16))(v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2 + *(v7 + 36), v4, v5);
  type metadata accessor for AccessibilityNumeric();
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(v12, v14);
    v9 = v15;
    v10 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    if ((*(v10 + 16))(v9, v10))
    {
      outlined init with copy of AnyTrackedValue(v14, a2);
    }

    else
    {
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }

    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    result = outlined destroy of AccessibilityNumeric?(v12);
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t AccessibilityNumeric<>.isValidMinValue.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (Numeric.isNaN.getter() || (Numeric.isFinite.getter(a1) & 1) == 0)
  {
    v5 = 0;
  }

  else if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of static FixedWidthInteger.bitWidth.getter() != 8)
  {
    dispatch thunk of static FixedWidthInteger.min.getter();
    v5 = dispatch thunk of static Comparable.> infix(_:_:)();
    (*(v2 + 8))(v4, a1);
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

{
  v2 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  if ((dispatch thunk of FloatingPoint.isNaN.getter() & 1) != 0 || (dispatch thunk of FloatingPoint.isSignalingNaN.getter() & 1) != 0 || (dispatch thunk of FloatingPoint.isFinite.getter() & 1) == 0)
  {
    v9 = 0;
  }

  else
  {
    dispatch thunk of static FloatingPoint.greatestFiniteMagnitude.getter();
    dispatch thunk of static SignedNumeric.- prefix(_:)();
    v8 = *(v2 + 8);
    v8(v4, a1);
    v9 = dispatch thunk of static Comparable.> infix(_:_:)();
    v8(v7, a1);
  }

  return v9 & 1;
}

uint64_t AccessibilityNumeric<>.isValidMaxValue.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (Numeric.isNaN.getter() || (Numeric.isFinite.getter(a1) & 1) == 0)
  {
    v5 = 0;
  }

  else
  {
    dispatch thunk of static FixedWidthInteger.max.getter();
    v5 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v2 + 8))(v4, a1);
  }

  return v5 & 1;
}

{
  v2 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((dispatch thunk of FloatingPoint.isNaN.getter() & 1) != 0 || (dispatch thunk of FloatingPoint.isSignalingNaN.getter() & 1) != 0 || (dispatch thunk of FloatingPoint.isFinite.getter() & 1) == 0)
  {
    v5 = 0;
  }

  else
  {
    dispatch thunk of static FloatingPoint.greatestFiniteMagnitude.getter();
    v5 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v2 + 8))(v4, a1);
  }

  return v5 & 1;
}

SwiftUI::AccessibilityNumber_optional __swiftcall Int8.asNumber()()
{
  v2 = v1;
  result.value.base.super.super.isa = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithChar_];
  v2->value.base.super.super.isa = result.value.base.super.super.isa;
  return result;
}

id protocol witness for AccessibilityNumeric.asNumber() in conformance Int8@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithChar_];
  *a1 = result;
  return result;
}

SwiftUI::AccessibilityNumber_optional __swiftcall Int16.asNumber()()
{
  v2 = v1;
  result.value.base.super.super.isa = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  v2->value.base.super.super.isa = result.value.base.super.super.isa;
  return result;
}

id protocol witness for AccessibilityNumeric.asNumber() in conformance Int16@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  *a1 = result;
  return result;
}

SwiftUI::AccessibilityNumber_optional __swiftcall UInt8.asNumber()()
{
  v2 = v1;
  result.value.base.super.super.isa = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedChar_];
  v2->value.base.super.super.isa = result.value.base.super.super.isa;
  return result;
}

id protocol witness for AccessibilityNumeric.asNumber() in conformance UInt8@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedChar_];
  *a1 = result;
  return result;
}

SwiftUI::AccessibilityNumber_optional __swiftcall UInt16.asNumber()()
{
  v2 = v1;
  result.value.base.super.super.isa = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedShort_];
  v2->value.base.super.super.isa = result.value.base.super.super.isa;
  return result;
}

id protocol witness for AccessibilityNumeric.asNumber() in conformance UInt16@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedShort_];
  *a1 = result;
  return result;
}

id Int32.asNumber()@<X0>(uint64_t a1@<X0>, SEL *a2@<X1>, void *a3@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x1E696AD98]) *a2];
  *a3 = result;
  return result;
}

id protocol witness for AccessibilityNumeric.asNumber() in conformance Int32@<X0>(SEL *a1@<X2>, void *a2@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x1E696AD98]) *a1];
  *a2 = result;
  return result;
}

id protocol witness for AccessibilityNumeric.asNumber() in conformance Int@<X0>(SEL *a1@<X2>, void *a2@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x1E696AD98]) *a1];
  *a2 = result;
  return result;
}

SwiftUI::AccessibilityNumber_optional __swiftcall Double.asNumber()()
{
  v2 = v0;
  result.value.base.super.super.isa = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v2->value.base.super.super.isa = result.value.base.super.super.isa;
  return result;
}

id protocol witness for AccessibilityNumeric.asNumber() in conformance Double@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  *a1 = result;
  return result;
}

SwiftUI::AccessibilityNumber_optional __swiftcall Float.asNumber()()
{
  v2 = v1;
  v3 = v0;
  v4 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  LODWORD(v5) = v2;
  result.value.base.super.super.isa = [v4 initWithFloat_];
  v3->value.base.super.super.isa = result.value.base.super.super.isa;
  return result;
}

id protocol witness for AccessibilityNumeric.asNumber() in conformance Float@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  LODWORD(v5) = v3;
  result = [v4 initWithFloat_];
  *a1 = result;
  return result;
}

uint64_t AccessibilityValueStorage.init<A>(_:from:to:description:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v88 = a7;
  v86 = a6;
  v85 = a5;
  v84 = a4;
  v91 = a2;
  v92 = type metadata accessor for Optional();
  v13 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v79 - v17;
  MEMORY[0x1EEE9AC00](v19);
  *&v104 = 0;
  v102 = 0u;
  v103 = 0u;
  v90 = v21;
  v22 = *(v21 + 16);
  v89 = a1;
  v22(&v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a8);
  type metadata accessor for AccessibilityNumeric();
  if ((swift_dynamicCast() & 1) == 0)
  {
    *&v101 = 0;
    v99 = 0u;
    v100 = 0u;
    outlined destroy of AccessibilityNumeric?(&v99);
    goto LABEL_8;
  }

  v23 = v92;
  v87 = v13;
  v25 = *(&v100 + 1);
  v24 = v101;
  __swift_project_boxed_opaque_existential_1(&v99, *(&v100 + 1));
  v26 = *(v24 + 24);
  v27 = v24;
  v13 = v87;
  v26(&v93, v25, v27);
  v28 = v93;
  __swift_destroy_boxed_opaque_existential_1(&v99);
  if (!v28)
  {
LABEL_8:
    *&v99 = 0;
    *(&v99 + 1) = 0xE000000000000000;
    v37 = v89;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v38 = v99;
    type metadata accessor for AnyAccessibilityValue.ConcreteBase<String>();
    v97 = v39;
    v98 = lazy protocol witness table accessor for type AnyAccessibilityValue.ConcreteBase<String> and conformance AnyAccessibilityValue.ConcreteBase<A>(&lazy protocol witness table cache variable for type AnyAccessibilityValue.ConcreteBase<String> and conformance AnyAccessibilityValue.ConcreteBase<A>, type metadata accessor for AnyAccessibilityValue.ConcreteBase<String>);
    v96 = v38;
    *&v95 = 0;
    v94 = 0u;
    v93 = 0u;
    outlined assign with copy of AnyAccessibilityValue?(&v96, &v93);
    v40 = v88;
    if (v88)
    {
      _s7SwiftUI21AnyAccessibilityValueVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, &type metadata for Text, MEMORY[0x1E69E6F90]);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_18DDA6EB0;
      v42 = a9;
      v43 = a3;
      v44 = v84;
      v45 = v85;
      *(v41 + 32) = v84;
      *(v41 + 40) = v45;
      v46 = v86;
      v47 = v86 & 1;
      *(v41 + 48) = v86 & 1;
      *(v41 + 56) = v40;
      outlined copy of Text.Storage(v44, v45, v47);

      v48 = v44;
      a3 = v43;
      a9 = v42;
      outlined consume of Text?(v48, v45, v46, v40);
    }

    else
    {
      v41 = MEMORY[0x1E69E7CC0];
    }

    outlined destroy of AnyAccessibilityValue?(&v96);
    *(&v95 + 1) = v41;
    v99 = v93;
    v100 = v94;
    v101 = v95;
    goto LABEL_30;
  }

  v82 = a9;
  v29 = *(v90 + 48);
  if (v29(v91, 1, a8) != 1 || v29(a3, 1, a8) != 1)
  {
    v83 = a3;
    v49 = v87;
    v81 = *(v87 + 16);
    v81(v18, v91, v92);
    if (v29(v18, 1, a8) == 1)
    {
      v80 = *(v49 + 8);
      v50 = v28;
      v80(v18, v23);
    }

    else
    {
      v51 = v28;
      if (swift_dynamicCast())
      {
        v52 = *(&v100 + 1);
        v53 = v88;
        if (*(&v100 + 1))
        {
          v54 = v101;
          __swift_project_boxed_opaque_existential_1(&v99, *(&v100 + 1));
          (*(v54 + 24))(&v93, v52, v54);
          v55 = v93;
          __swift_destroy_boxed_opaque_existential_1(&v99);
          goto LABEL_19;
        }

LABEL_18:
        outlined destroy of AccessibilityNumeric?(&v99);
        v55 = 0;
LABEL_19:
        v81(v15, v83, v92);
        if (v29(v15, 1, a8) == 1)
        {
          v13 = v87;
          (*(v87 + 8))(v15, v92);
          a9 = v82;
          v37 = v89;
        }

        else
        {
          v56 = swift_dynamicCast();
          a9 = v82;
          v13 = v87;
          v37 = v89;
          if (v56)
          {
            v57 = *(&v100 + 1);
            a3 = v83;
            if (*(&v100 + 1))
            {
              v58 = v101;
              __swift_project_boxed_opaque_existential_1(&v99, *(&v100 + 1));
              v59 = *(v58 + 24);
              v60 = v58;
              v13 = v87;
              v59(&v93, v57, v60);
              v61 = v93;
              __swift_destroy_boxed_opaque_existential_1(&v99);
LABEL_26:
              type metadata accessor for AnyAccessibilityValue.ConcreteBase<AccessibilityBoundedNumber>();
              v97 = v62;
              v98 = lazy protocol witness table accessor for type AnyAccessibilityValue.ConcreteBase<String> and conformance AnyAccessibilityValue.ConcreteBase<A>(&lazy protocol witness table cache variable for type AnyAccessibilityValue.ConcreteBase<AccessibilityBoundedNumber> and conformance AnyAccessibilityValue.ConcreteBase<A>, type metadata accessor for AnyAccessibilityValue.ConcreteBase<AccessibilityBoundedNumber>);
              v63 = swift_allocObject();
              *&v96 = v63;
              v63[2] = v28;
              v63[3] = v55;
              v63[4] = v61;
              v63[5] = 0;
              *&v95 = 0;
              v94 = 0u;
              v93 = 0u;
              outlined assign with copy of AnyAccessibilityValue?(&v96, &v93);
              if (v53)
              {
                _s7SwiftUI21AnyAccessibilityValueVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, &type metadata for Text, MEMORY[0x1E69E6F90]);
                v64 = swift_allocObject();
                *(v64 + 16) = xmmword_18DDA6EB0;
                v65 = v53;
                v66 = v37;
                v67 = v28;
                v68 = a9;
                v69 = a3;
                v70 = v84;
                v71 = v85;
                *(v64 + 32) = v84;
                *(v64 + 40) = v71;
                v72 = v86;
                v73 = v86 & 1;
                *(v64 + 48) = v86 & 1;
                *(v64 + 56) = v65;
                outlined copy of Text.Storage(v70, v71, v73);

                v74 = v70;
                a3 = v69;
                a9 = v68;
                v28 = v67;
                v37 = v66;
                v75 = v65;
                v13 = v87;
                outlined consume of Text?(v74, v71, v72, v75);
              }

              else
              {
                v64 = MEMORY[0x1E69E7CC0];
              }

              outlined destroy of AnyAccessibilityValue?(&v96);
              *(&v95 + 1) = v64;
              v99 = v93;
              v100 = v94;
              v101 = v95;

LABEL_30:
              (*(v90 + 8))(v37, a8);
              goto LABEL_31;
            }

LABEL_25:
            outlined destroy of AccessibilityNumeric?(&v99);
            v61 = 0;
            goto LABEL_26;
          }
        }

        *&v101 = 0;
        v99 = 0u;
        v100 = 0u;
        a3 = v83;
        goto LABEL_25;
      }
    }

    *&v101 = 0;
    v99 = 0u;
    v100 = 0u;
    v53 = v88;
    goto LABEL_18;
  }

  type metadata accessor for AnyAccessibilityValue.ConcreteBase<AccessibilityNumber>();
  v97 = v30;
  v98 = lazy protocol witness table accessor for type AnyAccessibilityValue.ConcreteBase<String> and conformance AnyAccessibilityValue.ConcreteBase<A>(&lazy protocol witness table cache variable for type AnyAccessibilityValue.ConcreteBase<AccessibilityNumber> and conformance AnyAccessibilityValue.ConcreteBase<A>, type metadata accessor for AnyAccessibilityValue.ConcreteBase<AccessibilityNumber>);
  *&v96 = v28;
  *&v95 = 0;
  v94 = 0u;
  v93 = 0u;
  outlined assign with copy of AnyAccessibilityValue?(&v96, &v93);
  v31 = v88;
  if (v88)
  {
    _s7SwiftUI21AnyAccessibilityValueVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, &type metadata for Text, MEMORY[0x1E69E6F90]);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_18DDA6EB0;
    v33 = v84;
    v34 = v85;
    *(v32 + 32) = v84;
    *(v32 + 40) = v34;
    v35 = v86;
    v36 = v86 & 1;
    *(v32 + 48) = v86 & 1;
    *(v32 + 56) = v31;
    outlined copy of Text.Storage(v33, v34, v36);

    outlined consume of Text?(v33, v34, v35, v31);
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC0];
  }

  a9 = v82;
  v13 = v87;
  v78 = v89;
  outlined destroy of AnyAccessibilityValue?(&v96);
  *(&v95 + 1) = v32;
  v99 = v93;
  v100 = v94;
  v101 = v95;
  (*(v90 + 8))(v78, a8);
LABEL_31:
  v76 = *(v13 + 8);
  v76(v91, v92);
  outlined destroy of AnyAccessibilityValue?(&v102);
  v102 = v99;
  v103 = v100;
  v104 = v101;
  outlined init with copy of AccessibilityValueStorage(&v102, a9);
  v76(a3, v92);
  return outlined destroy of AccessibilityValueStorage(&v102);
}

uint64_t outlined destroy of AnyAccessibilityValue?(uint64_t a1)
{
  _s7SwiftUI21AnyAccessibilityValueVSgMaTm_0(0, &lazy cache variable for type metadata for AnyAccessibilityValue?, &type metadata for AnyAccessibilityValue, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type AnyAccessibilityValue.ConcreteBase<String> and conformance AnyAccessibilityValue.ConcreteBase<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s7SwiftUI7ForEachVAA7Element_2IDQZRs_AA4ViewR0_s12IdentifiableADRpzrlE_7contentACyxq_q0_Gx_q0_AIctcfCs5SliceVyAA18SubviewsCollectionVG_AA7SubviewVAEVARTt2g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  outlined init with copy of Slice<SubviewsCollection>(a1, v12);
  type metadata accessor for Slice<SubviewsCollection>(0, &lazy cache variable for type metadata for Slice<SubviewsCollection>, lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection, &type metadata for SubviewsCollection, MEMORY[0x1E69E74D0]);
  lazy protocol witness table accessor for type Slice<SubviewsCollection> and conformance <> Slice<A>();
  lazy protocol witness table accessor for type Subview and conformance Subview();
  KeyPath = swift_getKeyPath();
  a4[13] = 0;
  outlined init with copy of Slice<SubviewsCollection>(v12, a4);
  a4[11] = a3;
  a4[12] = KeyPath;
  a4[10] = a2;
  if (one-time initialization token for v6 != -1)
  {
    swift_once();
  }

  v9 = static Semantics.v6;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced < v9)
    {
      goto LABEL_7;
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  if (dyld_program_sdk_at_least())
  {
    goto LABEL_9;
  }

LABEL_7:
  v10 = AGMakeUniqueID();
LABEL_10:
  outlined destroy of Slice<SubviewsCollection>(a1);
  result = outlined destroy of Slice<SubviewsCollection>(v12);
  a4[14] = v10;
  return result;
}

uint64_t _s7SwiftUI7ForEachVAA7Element_2IDQZRs_AA4ViewR0_s12IdentifiableADRpzrlE_7contentACyxq_q0_Gx_q0_AIctcfCAA09_VariadicG9_ChildrenV_s11AnyHashableVAmDVTt2g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  outlined init with copy of _VariadicView_Children(a1, v12);
  lazy protocol witness table accessor for type _VariadicView_Children and conformance _VariadicView_Children();
  lazy protocol witness table accessor for type _VariadicView_Children.Element and conformance _VariadicView_Children.Element();
  KeyPath = swift_getKeyPath();
  a4[11] = 0;
  outlined init with copy of _VariadicView_Children(v12, a4);
  a4[9] = a3;
  a4[10] = KeyPath;
  a4[8] = a2;
  if (one-time initialization token for v6 != -1)
  {
    swift_once();
  }

  v9 = static Semantics.v6;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced < v9)
    {
      goto LABEL_7;
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  if (dyld_program_sdk_at_least())
  {
    goto LABEL_9;
  }

LABEL_7:
  v10 = AGMakeUniqueID();
LABEL_10:
  outlined destroy of _VariadicView_Children(a1);
  result = outlined destroy of _VariadicView_Children(v12);
  a4[12] = v10;
  return result;
}

__n128 SubviewsCollection.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

uint64_t SubviewsCollection.init(list:contentSubgraph:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v6 = *a3;
  v7 = a3[1];
  result = outlined init with take of _ViewList_Elements(a1, a4);
  a4[5] = a2;
  a4[6] = v6;
  a4[7] = v7;
  return result;
}

Swift::Int __swiftcall SubviewsCollection.index(before:)(Swift::Int before)
{
  v2 = before - 1;
  if (__OFSUB__(before, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (one-time initialization token for _lock != -1)
  {
LABEL_7:
    swift_once();
  }

  v3 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  v6 = ViewList.count.getter(v4, v5);
  static Update.end()();
  result = _MovableLockUnlock(v3);
  if ((v2 & 0x8000000000000000) == 0 && v2 < v6)
  {
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t SubviewsCollection.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = outlined init with copy of SubviewsCollection(v3, (a3 + 2));
  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t protocol witness for Collection.subscript.getter in conformance SubviewsCollection@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  result = outlined init with copy of SubviewsCollection(v2, (a2 + 2));
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance SubviewsCollection()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(v0);
  outlined destroy of SubviewsCollection(v0);
  return v1;
}

uint64_t static SubviewsCollection._makeViewList(view:inputs:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  AGGraphCreateOffsetAttribute2();
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for ForEach<_VariadicView_Children, AnyHashable, _VariadicView_Children.Element>();
  lazy protocol witness table accessor for type _VariadicView_Children.Child and conformance _VariadicView_Children.Child();
  v5 = Attribute.init<A>(body:value:flags:update:)();
  if (!ShouldRecordTree)
  {
    return _s7SwiftUI7ForEachVA2A4ViewR0_rlE05_makeE4List4view6inputsAA01_eG7OutputsVAA11_GraphValueVyACyxq_q0_GG_AA01_eG6InputsVtFZAA09_VariadicE9_ChildrenV_s11AnyHashableVAQ7ElementVTt2B5(v5, a1, a2);
  }

  v6 = v5;
  AGSubgraphBeginTreeElement();
  _s7SwiftUI7ForEachVA2A4ViewR0_rlE05_makeE4List4view6inputsAA01_eG7OutputsVAA11_GraphValueVyACyxq_q0_GG_AA01_eG6InputsVtFZAA09_VariadicE9_ChildrenV_s11AnyHashableVAQ7ElementVTt2B5(v6, a1, a2);
  AGSubgraphEndTreeElement();
  return AGSubgraphEndTreeElement();
}

uint64_t SubviewsCollectionSlice.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*v2 <= result && v2[1] > result)
  {
    return _VariadicView_Children.subscript.getter(result, a2);
  }

  __break(1u);
  return result;
}

uint64_t SubviewsCollectionSlice.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = outlined init with copy of SubviewsCollection(v3 + 16, (a3 + 2));
  *a3 = a1;
  a3[1] = a2;
  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance SubviewsCollectionSlice@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v3 >= *v2 && v3 < v2[1])
  {
    *a2 = v3;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance SubviewsCollectionSlice(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v2 >= *v1 && v2 < v1[1])
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance SubviewsCollectionSlice(uint64_t *a1, uint64_t (**a2)()))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  result = *a2;
  if (*a2 >= *v2 && result < v2[1])
  {
    _VariadicView_Children.subscript.getter(result, v6);
    return protocol witness for Collection.subscript.read in conformance SubviewsCollectionSlice;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Collection.subscript.getter in conformance SubviewsCollectionSlice@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  result = outlined init with copy of SubviewsCollection(v2 + 16, (a2 + 2));
  *a2 = v4;
  a2[1] = v5;
  return result;
}

void protocol witness for Collection.indices.getter in conformance SubviewsCollectionSlice(void *a1@<X8>)
{
  v2 = v1[1];
  if (v2 < *v1)
  {
    __break(1u);
  }

  else
  {
    *a1 = *v1;
    a1[1] = v2;
  }
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance SubviewsCollectionSlice@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if (v4 >= *v3 && v3[1] >= v4)
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for RandomAccessCollection.distance(from:to:) in conformance SubviewsCollectionSlice(uint64_t *result, uint64_t *a2)
{
  v3 = *result;
  v4 = *a2;
  v5 = *v2;
  v6 = v2[1];
  if (v6 < *a2 || v4 < v5 || v3 < v5 || v6 < v3)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = (v4 - v3);
  if (__OFSUB__(v4, v3))
  {
LABEL_14:
    __break(1u);
  }

  return result;
}

uint64_t *protocol witness for Collection.index(after:) in conformance SubviewsCollectionSlice@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  v4 = v2[1];
  if (*result >= *v2)
  {
    v6 = __OFSUB__(v3, v4);
    v5 = v3 - v4 < 0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  if (v5 != v6)
  {
    *a2 = v3 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *protocol witness for Collection.formIndex(after:) in conformance SubviewsCollectionSlice(uint64_t *result)
{
  v2 = *result;
  v3 = v1[1];
  if (*result >= *v1)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 != v5)
  {
    *result = v2 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance SubviewsCollectionSlice@<X0>(uint64_t a1@<X8>)
{
  outlined init with copy of SubviewsCollectionSlice(v1, a1);
  v3 = *v1;
  result = outlined destroy of SubviewsCollectionSlice(v1);
  *(a1 + 80) = v3;
  return result;
}

uint64_t protocol witness for Collection.count.getter in conformance SubviewsCollectionSlice()
{
  v1 = v0[1];
  result = v1 - *v0;
  if (v1 < *v0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (__OFSUB__(v1, *v0))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance SubviewsCollectionSlice()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(v0);
  outlined destroy of SubviewsCollectionSlice(v0);
  return v1;
}

uint64_t static SubviewsCollection._viewListCount(inputs:)(_OWORD *a1, uint64_t (*a2)(_OWORD *))
{
  v2 = a1[3];
  v5[2] = a1[2];
  v5[3] = v2;
  v5[4] = a1[4];
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  return a2(v5);
}

double protocol witness for static Rule.initialValue.getter in conformance SubviewsCollectionSlice.Child@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance SubviewsCollectionSlice.Child@<X0>(void *a1@<X8>)
{
  type metadata accessor for Slice<SubviewsCollection>(0, &lazy cache variable for type metadata for Slice<SubviewsCollection>, lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection, &type metadata for SubviewsCollection, MEMORY[0x1E69E74D0]);
  Value = AGGraphGetValue();
  outlined init with copy of Slice<SubviewsCollection>(Value, v4);
  return _s7SwiftUI7ForEachVAA7Element_2IDQZRs_AA4ViewR0_s12IdentifiableADRpzrlE_7contentACyxq_q0_Gx_q0_AIctcfCs5SliceVyAA18SubviewsCollectionVG_AA7SubviewVAEVARTt2g5(v4, closure #1 in SubviewsCollectionSlice.Child.value.getter, 0, a1);
}

uint64_t protocol witness for static View._viewListCount(inputs:) in conformance SubviewsCollection(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
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

uint64_t lazy protocol witness table accessor for type IndexingIterator<SubviewsCollection> and conformance IndexingIterator<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Slice<SubviewsCollection>(255, a2, a3, a4, MEMORY[0x1E69E6CF0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for Slice<SubviewsCollection>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void *initializeBufferWithCopyOfBuffer for GroupElementsOfContent(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 + 16) - 8);
  if (*(v5 + 64) <= 0x40uLL)
  {
    v6 = 64;
  }

  else
  {
    v6 = *(*(*(a3 + 16) - 8) + 64);
  }

  v7 = *(v5 + 80);
  if ((v7 & 0x1000F8) != 0 || (v6 & 0xFFFFFFFFFFFFFFF8) != 0 && (v6 & 0xFFFFFFFFFFFFFFF8) < 0xFFFFFFFFFFFFFFE8)
  {
    v9 = *a2;
    *v4 = *a2;
    v4 = (v9 + (((v7 & 0xF8) + 23) & ~(v7 & 0xF8) & 0x1F8));
    goto LABEL_28;
  }

  v10 = *(a2 + v6);
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v6 <= 3)
    {
      v12 = v6;
    }

    else
    {
      v12 = 4;
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v13 = *a2;
      }

      else if (v12 == 3)
      {
        v13 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v13 = *a2;
      }

LABEL_22:
      v14 = (v13 | (v11 << (8 * v6))) + 2;
      v10 = v13 + 2;
      if (v6 < 4)
      {
        v10 = v14;
      }

      goto LABEL_24;
    }

    if (v12)
    {
      v13 = *a2;
      goto LABEL_22;
    }
  }

LABEL_24:
  v15 = v6 + 1;
  if (v10 == 1)
  {
    (*(v5 + 16))(a1, a2);
    v16 = 1;
  }

  else
  {
    v17 = *(a2 + 12);
    *(a1 + 24) = v17;
    (**(v17 - 8))(a1, a2);
    v18 = *(a2 + 5);
    v19 = *(a2 + 6);
    v4[5] = v18;
    v4[6] = v19;
    v4[7] = *(a2 + 7);
    v20 = v18;

    v16 = 0;
  }

  *(v4 + v6) = v16;
  v21 = ((a2 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  v22 = v21[1];
  v23 = ((v4 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v23 = *v21;
  v23[1] = v22;
LABEL_28:

  return v4;
}

__n128 initializeWithTake for GroupElementsOfContent(_OWORD *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 0x40uLL)
  {
    v4 = 64;
  }

  else
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  v5 = a2[v4];
  v6 = v5 - 2;
  if (v5 < 2)
  {
    goto LABEL_18;
  }

  if (v4 <= 3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 4;
  }

  if (v7 <= 1)
  {
    if (!v7)
    {
      goto LABEL_18;
    }

    v8 = *a2;
  }

  else if (v7 == 2)
  {
    v8 = *a2;
  }

  else if (v7 == 3)
  {
    v8 = *a2 | (a2[2] << 16);
  }

  else
  {
    v8 = *a2;
  }

  v9 = (v8 | (v6 << (8 * v4))) + 2;
  v5 = v8 + 2;
  if (v4 < 4)
  {
    v5 = v9;
  }

LABEL_18:
  if (v5 == 1)
  {
    v10 = a1;
    (*(*(*(a3 + 16) - 8) + 32))(a1, a2);
    a1 = v10;
    v11 = 1;
  }

  else
  {
    v11 = 0;
    v12 = *(a2 + 1);
    *a1 = *a2;
    a1[1] = v12;
    v13 = *(a2 + 3);
    a1[2] = *(a2 + 2);
    a1[3] = v13;
  }

  *(a1 + v4) = v11;
  v14 = (&a2[v4 + 8] & 0xFFFFFFFFFFFFFFF8);
  result = *v14;
  *((a1 + v4 + 8) & 0xFFFFFFFFFFFFFFF8) = *v14;
  return result;
}

id *assignWithTake for GroupElementsOfContent(id *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (a1 != a2)
  {
    if (*(v6 + 64) <= 0x40uLL)
    {
      v7 = 64;
    }

    else
    {
      v7 = *(v6 + 64);
    }

    v8 = *(a1 + v7);
    v9 = v8 - 2;
    if (v8 >= 2)
    {
      if (v7 <= 3)
      {
        v10 = v7;
      }

      else
      {
        v10 = 4;
      }

      if (v10 <= 1)
      {
        if (!v10)
        {
          goto LABEL_19;
        }

        v11 = *a1;
      }

      else if (v10 == 2)
      {
        v11 = *a1;
      }

      else if (v10 == 3)
      {
        v11 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v11 = *a1;
      }

      v12 = (v11 | (v9 << (8 * v7))) + 2;
      v8 = v11 + 2;
      if (v7 < 4)
      {
        v8 = v12;
      }
    }

LABEL_19:
    if (v8 == 1)
    {
      (*(v6 + 8))(a1, v5);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v13 = a2[v7];
    v14 = v13 - 2;
    if (v13 >= 2)
    {
      if (v7 <= 3)
      {
        v15 = v7;
      }

      else
      {
        v15 = 4;
      }

      if (v15 <= 1)
      {
        if (!v15)
        {
          goto LABEL_36;
        }

        v16 = *a2;
        if (v7 < 4)
        {
LABEL_39:
          if ((v16 | (v14 << (8 * v7))) != 0xFFFFFFFF)
          {
            goto LABEL_40;
          }

          goto LABEL_37;
        }
      }

      else if (v15 == 2)
      {
        v16 = *a2;
        if (v7 < 4)
        {
          goto LABEL_39;
        }
      }

      else if (v15 == 3)
      {
        v16 = *a2 | (a2[2] << 16);
        if (v7 < 4)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v16 = *a2;
        if (v7 < 4)
        {
          goto LABEL_39;
        }
      }

      v13 = v16 + 2;
    }

LABEL_36:
    if (v13 != 1)
    {
LABEL_40:
      v17 = 0;
      v18 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v18;
      v19 = *(a2 + 3);
      *(a1 + 2) = *(a2 + 2);
      *(a1 + 3) = v19;
      goto LABEL_41;
    }

LABEL_37:
    (*(v6 + 32))(a1, a2, v5);
    v17 = 1;
LABEL_41:
    *(a1 + v7) = v17;
  }

  v20 = *(v6 + 64);
  if (v20 <= 0x40)
  {
    v20 = 64;
  }

  *((a1 + v20 + 8) & 0xFFFFFFFFFFFFFFF8) = *(&a2[v20 + 8] & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

int *storeEnumTagSinglePayload for GroupElementsOfContent(int *result, int a2, int a3, uint64_t a4)
{
  v4 = *(*(*(a4 + 16) - 8) + 64);
  if (v4 <= 0x40)
  {
    v4 = 64;
  }

  v5 = (v4 & 0xFFFFFFFFFFFFFFF8) + 24;
  if (a3 < 0)
  {
    v7 = a3 - 2147483646;
    if ((v4 & 0xFFFFFFF8) != 0xFFFFFFE8)
    {
      v7 = 2;
    }

    if (v7 >= 0x10000)
    {
      v8 = 4;
    }

    else
    {
      v8 = 2;
    }

    if (v7 < 0x100)
    {
      v6 = 1;
    }

    else
    {
      v6 = v8;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_18:
    v9 = a2 & 0x7FFFFFFF;
    if ((v4 & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 1;
    }

    if ((v4 & 0xFFFFFFF8) != 0xFFFFFFE8)
    {
      v11 = result;
      bzero(result, v5);
      result = v11;
      *v11 = v9;
    }

    if (v6 > 1)
    {
      if (v6 == 2)
      {
        *(result + v5) = v10;
      }

      else
      {
        *(result + v5) = v10;
      }
    }

    else if (v6)
    {
      *(result + v5) = v10;
    }

    return result;
  }

  v6 = 0;
  if (a2 < 0)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (v6 <= 1)
  {
    if (v6)
    {
      *(result + v5) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_29;
    }

LABEL_28:
    if (!a2)
    {
      return result;
    }

    goto LABEL_29;
  }

  if (v6 == 2)
  {
    *(result + v5) = 0;
    goto LABEL_28;
  }

  *(result + v5) = 0;
  if (a2)
  {
LABEL_29:
    *((result + v4 + 8) & 0xFFFFFFFFFFFFFFF8) = (a2 - 1);
  }

  return result;
}

uint64_t assignWithTake for SubviewsCollectionSlice(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  __swift_destroy_boxed_opaque_existential_1(a1 + 16);
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  v5 = *(a2 + 56);
  v6 = *(a1 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t storeEnumTagSinglePayload for SubviewsCollectionSlice(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

void *initializeBufferWithCopyOfBuffer for GroupElementsOfContent.Storage(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  if (*(v4 + 64) <= 0x40uLL)
  {
    v5 = 64;
  }

  else
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || (v5 + 1) > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    v9 = *(a2 + v5);
    if (v9 >= 2)
    {
      v9 = *a2 + 2;
    }

    if (v9 == 1)
    {
      (*(v4 + 16))(a1);
      *(v3 + v5) = 1;
    }

    else
    {
      v10 = *(a2 + 3);
      *(a1 + 24) = v10;
      (**(v10 - 8))(a1);
      v12 = a2[5];
      v13 = a2[6];
      v3[5] = v12;
      v3[6] = v13;
      v3[7] = a2[7];
      *(v3 + v5) = 0;
      v14 = v12;
    }
  }

  return v3;
}

uint64_t destroy for GroupElementsOfContent.Storage(id *a1, uint64_t a2)
{
  v3 = *(*(*(a2 + 16) - 8) + 64);
  if (v3 <= 0x40)
  {
    v3 = 64;
  }

  v4 = *(a1 + v3);
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        goto LABEL_17;
      }

      v7 = *a1;
    }

    else if (v6 == 2)
    {
      v7 = *a1;
    }

    else if (v6 == 3)
    {
      v7 = *a1 | (*(a1 + 2) << 16);
    }

    else
    {
      v7 = *a1;
    }

    v8 = (v7 | (v5 << (8 * v3))) + 2;
    v4 = v7 + 2;
    if (v3 < 4)
    {
      v4 = v8;
    }
  }

LABEL_17:
  if (v4 == 1)
  {
    v9 = *(*(*(a2 + 16) - 8) + 8);

    return v9();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

id *assignWithCopy for GroupElementsOfContent.Storage(id *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 16);
    v6 = *(v5 - 8);
    if (*(v6 + 64) <= 0x40uLL)
    {
      v7 = 64;
    }

    else
    {
      v7 = *(v6 + 64);
    }

    v8 = *(a1 + v7);
    v9 = v8 - 2;
    if (v8 >= 2)
    {
      if (v7 <= 3)
      {
        v10 = v7;
      }

      else
      {
        v10 = 4;
      }

      if (v10 <= 1)
      {
        if (!v10)
        {
          goto LABEL_19;
        }

        v11 = *a1;
      }

      else if (v10 == 2)
      {
        v11 = *a1;
      }

      else if (v10 == 3)
      {
        v11 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v11 = *a1;
      }

      v12 = (v11 | (v9 << (8 * v7))) + 2;
      v8 = v11 + 2;
      if (v7 < 4)
      {
        v8 = v12;
      }
    }

LABEL_19:
    if (v8 == 1)
    {
      (*(v6 + 8))(a1, v5);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v13 = a2[v7];
    v14 = v13 - 2;
    if (v13 < 2)
    {
      goto LABEL_36;
    }

    if (v7 <= 3)
    {
      v15 = v7;
    }

    else
    {
      v15 = 4;
    }

    if (v15 <= 1)
    {
      if (!v15)
      {
LABEL_36:
        if (v13 == 1)
        {
          (*(v6 + 16))(a1, a2, v5);
          *(a1 + v7) = 1;
        }

        else
        {
          v18 = *(a2 + 3);
          a1[3] = v18;
          a1[4] = *(a2 + 4);
          (**(v18 - 1))(a1, a2);
          v19 = *(a2 + 5);
          a1[5] = v19;
          a1[6] = *(a2 + 6);
          a1[7] = *(a2 + 7);
          *(a1 + v7) = 0;
          v20 = v19;
        }

        return a1;
      }

      v16 = *a2;
    }

    else if (v15 == 2)
    {
      v16 = *a2;
    }

    else if (v15 == 3)
    {
      v16 = *a2 | (a2[2] << 16);
    }

    else
    {
      v16 = *a2;
    }

    v17 = (v16 | (v14 << (8 * v7))) + 2;
    v13 = v16 + 2;
    if (v7 < 4)
    {
      v13 = v17;
    }

    goto LABEL_36;
  }

  return a1;
}

_OWORD *initializeWithTake for GroupElementsOfContent.Storage(_OWORD *result, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 0x40uLL)
  {
    v3 = 64;
  }

  else
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  v4 = a2[v3];
  v5 = v4 - 2;
  if (v4 < 2)
  {
    goto LABEL_18;
  }

  if (v3 <= 3)
  {
    v6 = v3;
  }

  else
  {
    v6 = 4;
  }

  if (v6 <= 1)
  {
    if (!v6)
    {
      goto LABEL_18;
    }

    v7 = *a2;
  }

  else if (v6 == 2)
  {
    v7 = *a2;
  }

  else if (v6 == 3)
  {
    v7 = *a2 | (a2[2] << 16);
  }

  else
  {
    v7 = *a2;
  }

  v8 = (v7 | (v5 << (8 * v3))) + 2;
  v4 = v7 + 2;
  if (v3 < 4)
  {
    v4 = v8;
  }

LABEL_18:
  if (v4 == 1)
  {
    v9 = result;
    (*(*(*(a3 + 16) - 8) + 32))();
    result = v9;
    v10 = 1;
  }

  else
  {
    v10 = 0;
    v11 = *(a2 + 1);
    *result = *a2;
    result[1] = v11;
    v12 = *(a2 + 3);
    result[2] = *(a2 + 2);
    result[3] = v12;
  }

  *(result + v3) = v10;
  return result;
}

id *assignWithTake for GroupElementsOfContent.Storage(id *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 64) <= 0x40uLL)
  {
    v7 = 64;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = *(a1 + v7);
  v9 = v8 - 2;
  if (v8 >= 2)
  {
    if (v7 <= 3)
    {
      v10 = v7;
    }

    else
    {
      v10 = 4;
    }

    if (v10 <= 1)
    {
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = *a1;
    }

    else if (v10 == 2)
    {
      v11 = *a1;
    }

    else if (v10 == 3)
    {
      v11 = *a1 | (*(a1 + 2) << 16);
    }

    else
    {
      v11 = *a1;
    }

    v12 = (v11 | (v9 << (8 * v7))) + 2;
    v8 = v11 + 2;
    if (v7 < 4)
    {
      v8 = v12;
    }
  }

LABEL_19:
  if (v8 == 1)
  {
    (*(v6 + 8))(a1, v5);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = *(a2 + v7);
  v14 = v13 - 2;
  if (v13 >= 2)
  {
    if (v7 <= 3)
    {
      v15 = v7;
    }

    else
    {
      v15 = 4;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v16 = *a2;
      }

      else if (v15 == 3)
      {
        v16 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v16 = *a2;
      }

LABEL_34:
      v17 = (v16 | (v14 << (8 * v7))) + 2;
      v13 = v16 + 2;
      if (v7 < 4)
      {
        v13 = v17;
      }

      goto LABEL_36;
    }

    if (v15)
    {
      v16 = *a2;
      goto LABEL_34;
    }
  }

LABEL_36:
  if (v13 == 1)
  {
    (*(v6 + 32))(a1, a2, v5);
    v18 = 1;
  }

  else
  {
    v18 = 0;
    v19 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v19;
    v20 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v20;
  }

  *(a1 + v7) = v18;
  return a1;
}

uint64_t getEnumTagSinglePayload for GroupElementsOfContent.Storage(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 64;
  if (*(v3 + 64) > 0x40uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void storeEnumTagSinglePayload for GroupElementsOfContent.Storage(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x40)
  {
    v5 = 64;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t instantiation function for generic protocol witness table for SubviewsRoot<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for SubviewsCollectionSlice.Child(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SubviewsCollectionSlice.Child and conformance SubviewsCollectionSlice.Child();
  *(a1 + 8) = result;
  return result;
}

uint64_t outlined init with copy of Slice<SubviewsCollection>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Slice<SubviewsCollection>(0, &lazy cache variable for type metadata for Slice<SubviewsCollection>, lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection, &type metadata for SubviewsCollection, MEMORY[0x1E69E74D0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ImageRenderer.objectWillChange.getter()
{
  specialized ImageRenderer.objectWillChange.getter();
}

uint64_t ImageRenderer._content.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[3];
  v5 = *(*v4 + 232);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v4 + v5);
}

void (*ImageRenderer.content.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  ImageRenderer._content.getter(v9);
  return ImageRenderer.content.modify;
}

void ImageRenderer.content.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    specialized ImageRendererHost.content.setter(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    specialized ImageRendererHost.content.setter(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void (*ImageRenderer.proposedSize.modify(void *a1))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  *v3 = ImageRenderer.proposedSize.getter();
  *(v4 + 8) = v5;
  v4[2] = v6;
  *(v4 + 24) = v7;
  return ImageRenderer.proposedSize.modify;
}

void ImageRenderer.proposedSize.modify(uint64_t **a1)
{
  v1 = *a1;
  ImageRendererHost.proposedSize.setter(**a1, *(v1 + 8), v1[2], *(v1 + 24));

  free(v1);
}

void *(*ImageRenderer.scale.modify(void *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 32);
  return ImageRenderer.scale.modify;
}

void *ImageRenderer.scale.modify(void *a1)
{
  v1 = a1[1];
  v2 = *(v1 + 32);
  *(v1 + 32) = *a1;
  return ImageRenderer.currentScale.didset(v2);
}

uint64_t ImageRenderer.isOpaque.setter(uint64_t result)
{
  if (result)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *(*(v1 + 24) + 24) = *(*(v1 + 24) + 24) & 0xFFFFFFFD | v2;
  return result;
}

_BYTE *(*ImageRenderer.isOpaque.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = (*(*(v1 + 24) + 24) & 2) != 0;
  return ImageRenderer.isOpaque.modify;
}

_BYTE *ImageRenderer.isOpaque.modify(_BYTE *result)
{
  if (result[8])
  {
    v1 = 2;
  }

  else
  {
    v1 = 0;
  }

  *(*(*result + 24) + 24) = *(*(*result + 24) + 24) & 0xFFFFFFFD | v1;
  return result;
}

_BYTE *(*ImageRenderer.colorMode.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(*(v1 + 24) + 20);
  return ImageRenderer.colorMode.modify;
}

_BYTE *(*ImageRenderer.allowedDynamicRange.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(*(v1 + 24) + 21);
  return ImageRenderer.allowedDynamicRange.modify;
}

void *ImageRenderer.__allocating_init(content:)(uint64_t a1)
{
  v2 = v1;
  swift_allocObject();
  v4 = specialized ImageRenderer.init(content:)(a1);
  (*(*(*(v2 + 80) - 8) + 8))(a1);
  return v4;
}

uint64_t closure #2 in closure #1 in ImageRenderer.initializeRenderer()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    ImageRenderer.accessSeed()();
    ImageRenderer.seed.setter();
  }

  return result;
}

uint64_t ImageRenderer.seed.setter()
{
  swift_getKeyPath();
  swift_getWitnessTable();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void *ImageRenderer.cgImage.getter()
{
  ImageRenderer.accessSeed()();
  v0 = specialized ImageRendererHost.cgImage.getter();
  v1 = v0;
  return v0;
}

void *ImageRenderer._cgImage.getter()
{
  v0 = specialized ImageRenderer._cgImage.getter();
  v1 = v0;
  return v0;
}

Swift::Void __swiftcall ImageRenderer.accessSeed()()
{
  v1 = direct field offset for ImageRenderer.observationEnabled;
  v2 = swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    MEMORY[0x1EEE9AC00](v2);
    swift_getKeyPath();
    swift_getWitnessTable();
    ObservationRegistrar.access<A, B>(_:keyPath:)();
  }
}

uint64_t ImageRenderer.observationEnabled.getter()
{
  v1 = direct field offset for ImageRenderer.observationEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ImageRenderer.observationEnabled.setter(char a1)
{
  v3 = direct field offset for ImageRenderer.observationEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ImageRenderer.isObservationEnabled.getter()
{
  v1 = direct field offset for ImageRenderer.observationEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ImageRenderer.isObservationEnabled.setter(char a1)
{
  v3 = direct field offset for ImageRenderer.observationEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance ImageRenderer<A>@<X0>(uint64_t *a1@<X8>)
{
  *a1 = specialized ImageRenderer.objectWillChange.getter();
}

void (*ImageRenderer._content.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  ImageRenderer._content.getter(v9);
  return ImageRenderer.content.modify;
}

void (*ImageRenderer._proposedSize.modify(uint64_t *a1))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *(v1 + 24) + *(**(v1 + 24) + 248);
  v5 = *(v4 + 16);
  v8 = *(v4 + 8);
  v7 = *(v4 + 24);
  *v3 = *v4;
  *(v3 + 8) = v8;
  *(v3 + 16) = v5;
  *(v3 + 24) = v7;
  return ImageRenderer._proposedSize.modify;
}

void ImageRenderer._proposedSize.modify(uint64_t **a1)
{
  v1 = *a1;
  ImageRendererHost.proposedSize.setter(**a1, *(v1 + 8), v1[2], *(v1 + 24));

  free(v1);
}

uint64_t (*ImageRenderer._scale.modify(void *a1))()
{
  a1[1] = v1;
  *a1 = *(v1 + 32);
  return ImageRenderer._scale.modify;
}

uint64_t (*ImageRenderer._isOpaque.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = (*(*(v1 + 24) + 24) & 2) != 0;
  return ImageRenderer._isOpaque.modify;
}

uint64_t (*ImageRenderer._colorMode.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(*(v1 + 24) + 20);
  return ImageRenderer._colorMode.modify;
}

uint64_t (*ImageRenderer._allowedDynamicRange.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(*(v1 + 24) + 21);
  return ImageRenderer._allowedDynamicRange.modify;
}

uint64_t closure #1 in closure #1 in closure #1 in ImageRenderer._render(rasterizationScale:renderer:)(CGContext *a1, uint64_t a2, void (*a3)(uint64_t *), double a4, double a5, double a6)
{
  v11 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
  [v11 setProfile_];
  [v11 setDefaultColorSpace_];
  ClipBoundingBox = CGContextGetClipBoundingBox(a1);
  [v11 setContentRect_];
  [v11 setDeviceScale_];
  [v11 translateByX:0.0 Y:a5];
  [v11 scaleByX:1.0 Y:-1.0];
  v12 = v11;
  EnvironmentValues.init()(v23);
  v13 = v23[0];
  v14 = v23[1];
  type metadata accessor for GraphicsContext.Storage();
  v15 = swift_allocObject();
  *(v15 + 32) = xmmword_18DD85500;
  *(v15 + 48) = 1065353216;
  *(v15 + 56) = 0x7FF8000000000000;
  v22[0] = v13;
  v22[1] = v14;
  type metadata accessor for GraphicsContext.Storage.Shared();
  swift_allocObject();
  v16 = v12;
  *(v15 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v16, v22);
  *(v15 + 24) = RBDisplayListGetState();
  *(v15 + 64) = 0;

  v23[0] = v15;
  a3(v23);
  type metadata accessor for _ContiguousArrayStorage<(RBImageRendererProperty, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(RBDisplayListRenderKey, Any)>, &lazy cache variable for type metadata for (RBDisplayListRenderKey, Any), type metadata accessor for RBDisplayListRenderKey);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18DDA6EB0;
  v18 = *MEMORY[0x1E69C7160];
  *(inited + 32) = *MEMORY[0x1E69C7160];
  *(inited + 64) = MEMORY[0x1E69E7DE0];
  *(inited + 40) = a6;
  v19 = v18;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo22RBDisplayListRenderKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (RBDisplayListRenderKey, Any)(inited + 32);
  type metadata accessor for RBDisplayListRenderKey(0);
  lazy protocol witness table accessor for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type RBDisplayListRenderKey and conformance RBDisplayListRenderKey, type metadata accessor for RBDisplayListRenderKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v16 renderInContext:a1 options:isa];
}

uint64_t ImageRendererHost.viewGraph.getter()
{
  specialized ImageRendererHost.viewGraph.getter();
}

uint64_t ImageRendererHost.currentTimestamp.setter(uint64_t *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 64) = v2;
  return result;
}

uint64_t ImageRendererHost.externalUpdateCount.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 72) = a1;
  return result;
}

uint64_t ImageRendererHost.cgImageSize.setter(double a1, double a2)
{
  result = swift_beginAccess();
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

uint64_t ImageRendererHost.cgImageScale.setter(double a1)
{
  result = swift_beginAccess();
  *(v1 + 120) = a1;
  return result;
}

uint64_t ImageRendererHost._platformImage.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 144) = a1;
  return swift_unknownObjectRelease();
}

uint64_t (*protocol witness for ViewGraphOwner.renderingPhase.modify in conformance ImageRendererHost<A>(uint64_t *a1))()
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
  *(v2 + 32) = ImageRendererHost.renderingPhase.modify();
  return protocol witness for Animatable.animatableData.modify in conformance LinearGradient.AbsolutePaint;
}

uint64_t (*protocol witness for ViewGraphOwner.externalUpdateCount.modify in conformance ImageRendererHost<A>(uint64_t *a1))()
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
  *(v2 + 32) = ImageRendererHost.externalUpdateCount.modify();
  return protocol witness for MutableCollection.subscript.modify in conformance ArrayWith2Inline<A>;
}

uint64_t keypath_get_12Tm@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6 & 1;
  return result;
}

double (*_SaturationEffect.animatableData.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return ViewSize.width.modify;
}

double _SaturationEffect.effectValue(size:)@<D0>(uint64_t a1@<X8>, double a2@<D2>)
{
  v4 = swift_allocObject();
  *v9 = a2;
  _s7SwiftUI14GraphicsFilterOWOi9_(v9);
  v5 = v13;
  v4[5] = v12;
  v4[6] = v5;
  v4[7] = v14[0];
  *(v4 + 124) = *(v14 + 12);
  v6 = v9[1];
  v4[1] = v9[0];
  v4[2] = v6;
  result = *&v10;
  v8 = v11;
  v4[3] = v10;
  v4[4] = v8;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return result;
}

double protocol witness for _RendererEffect.effectValue(size:) in conformance _SaturationEffect@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *&v9[0] = v3;
  _s7SwiftUI14GraphicsFilterOWOi9_(v9);
  v5 = v13;
  v4[5] = v12;
  v4[6] = v5;
  v4[7] = v14[0];
  *(v4 + 124) = *(v14 + 12);
  v6 = v9[1];
  v4[1] = v9[0];
  v4[2] = v6;
  result = *&v10;
  v8 = v11;
  v4[3] = v10;
  v4[4] = v8;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return result;
}

void type metadata accessor for RendererVisualEffect<_SaturationEffect>()
{
  if (!lazy cache variable for type metadata for RendererVisualEffect<_SaturationEffect>)
  {
    v0 = type metadata accessor for RendererVisualEffect();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for RendererVisualEffect<_SaturationEffect>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type RendererVisualEffect<_SaturationEffect> and conformance RendererVisualEffect<A>()
{
  result = lazy protocol witness table cache variable for type RendererVisualEffect<_SaturationEffect> and conformance RendererVisualEffect<A>;
  if (!lazy protocol witness table cache variable for type RendererVisualEffect<_SaturationEffect> and conformance RendererVisualEffect<A>)
  {
    type metadata accessor for RendererVisualEffect<_SaturationEffect>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RendererVisualEffect<_SaturationEffect> and conformance RendererVisualEffect<A>);
  }

  return result;
}

float Color.Resolved.quantizedLuma.getter(float a1, float a2, float a3)
{
  v6 = -a1;
  if (a1 > 0.0)
  {
    v6 = a1;
  }

  if (v6 <= 0.0031308)
  {
    v7 = v6 * 12.92;
  }

  else
  {
    v7 = 1.0;
    if (v6 != 1.0)
    {
      v7 = (powf(v6, 0.41667) * 1.055) + -0.055;
    }
  }

  v8 = -a2;
  if (a2 > 0.0)
  {
    v8 = a2;
  }

  if (v8 <= 0.0031308)
  {
    v9 = v8 * 12.92;
  }

  else
  {
    v9 = 1.0;
    if (v8 != 1.0)
    {
      v9 = (powf(v8, 0.41667) * 1.055) + -0.055;
    }
  }

  v10 = -a3;
  if (a3 > 0.0)
  {
    v10 = a3;
  }

  if (v10 <= 0.0031308)
  {
    v11 = v10 * 12.92;
  }

  else
  {
    v11 = 1.0;
    if (v10 != 1.0)
    {
      v11 = (powf(v10, 0.41667) * 1.055) + -0.055;
    }
  }

  v12 = -v9;
  if (a2 > 0.0)
  {
    v12 = v9;
  }

  v13 = -v7;
  if (a1 > 0.0)
  {
    v13 = v7;
  }

  if (a3 <= 0.0)
  {
    v11 = -v11;
  }

  return roundf((((v13 * 0.2126) + (v12 * 0.7152)) + (v11 * 0.0722)) * 32.0) * 0.03125;
}

uint64_t Color.mix(with:by:in:)(uint64_t a1, char *a2, uint64_t a3, double a4)
{
  v6 = *a2;
  v7 = a4;
  type metadata accessor for ColorBox<Color.MixProvider>(0, &lazy cache variable for type metadata for ColorBox<Color.MixProvider>, lazy protocol witness table accessor for type Color.MixProvider and conformance Color.MixProvider);
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a1;
  *(v8 + 32) = v6;
  *(v8 + 36) = v7;

  return v8;
}

uint64_t Color.over(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ColorBox<Color.MixProvider>(0, &lazy cache variable for type metadata for ColorBox<Color.DestinationOverProvider>, lazy protocol witness table accessor for type Color.DestinationOverProvider and conformance Color.DestinationOverProvider);
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  return v4;
}

uint64_t Color.multiplyingHierarchicalOpacity(at:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ColorBox<Color.MixProvider>(0, &lazy cache variable for type metadata for ColorBox<Color.HierarchicalOpacityColor>, lazy protocol witness table accessor for type Color.HierarchicalOpacityColor and conformance Color.HierarchicalOpacityColor);
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  return v4;
}

CGColorRef protocol witness for ColorProvider.staticColor.getter in conformance Color.OpacityColor()
{
  v1 = v0[1];
  v2 = (*(**v0 + 136))();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  Alpha = CGColorGetAlpha(v2);
  result = CGColorCreateCopyWithAlpha(v3, v1 * Alpha);
  if (result)
  {
    v6 = result;

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for ColorProvider.resolve(in:) in conformance Color.HierarchicalOpacityColor(uint64_t *a1)
{
  v3 = *v1;
  v2 = v1[1];
  v5 = a1[1];
  v7 = *a1;
  v4 = v7;
  v8 = v5;
  (*(*v3 + 168))(v2, &v7);
  v7 = v4;
  v8 = v5;
  return (*(*v3 + 112))(&v7);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.HierarchicalOpacityColor()
{
  v1 = *v0;
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v2);

  v3 = MEMORY[0x193ABEDD0](32, 0xE100000000000000);
  v4 = (*(*v1 + 160))(v3);
  MEMORY[0x193ABEDD0](v4);

  return 0x206C6576654CLL;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Color.HierarchicalOpacityColor()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  (*(*v1 + 152))(v4);
  MEMORY[0x193AC11A0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Color.HierarchicalOpacityColor()
{
  v1 = v0[1];
  (*(**v0 + 152))();
  return MEMORY[0x193AC11A0](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Color.HierarchicalOpacityColor()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  (*(*v1 + 152))(v4);
  MEMORY[0x193AC11A0](v2);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Color.HierarchicalOpacityColor(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return (*a1 == *a2 || ((*(**a1 + 88))() & 1) != 0) && v2 == v3;
}

void protocol witness for ColorProvider.resolve(in:) in conformance Color.DestinationOverProvider(uint64_t *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = a1[1];
  v17 = *a1;
  v4 = v17;
  v18 = v5;
  v6 = (*(*v2 + 112))(&v17);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v17 = v4;
  v18 = v5;
  (*(*v3 + 112))(&v17);

  Color.Resolved.over(_:)(v13, v14, v15, v16, v6, v8, v10, v12);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Color.DestinationOverProvider()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  (*(*v1 + 152))(v4);
  (*(*v2 + 152))(v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Color.DestinationOverProvider(uint64_t a1)
{
  v3 = v1[1];
  (*(**v1 + 152))();
  return (*(*v3 + 152))(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Color.DestinationOverProvider()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  (*(*v1 + 152))(v4);
  (*(*v2 + 152))(v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Color.DestinationOverProvider(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (*a1 != *a2 && ((*(**a1 + 88))() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  return (*(*v2 + 88))(v3) & 1;
}

uint64_t Color.blend(with:in:by:)(uint64_t a1, char *a2, uint64_t a3, double a4)
{
  v6 = *a2;
  v7 = a4;
  type metadata accessor for ColorBox<Color.MixProvider>(0, &lazy cache variable for type metadata for ColorBox<Color.MixProvider>, lazy protocol witness table accessor for type Color.MixProvider and conformance Color.MixProvider);
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a1;
  *(v8 + 32) = v6;
  *(v8 + 36) = v7;

  return v8;
}

void Color.MixProvider.resolve(in:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *v1;
  v5 = *(v1 + 1);
  v6 = v1[5];
  v20 = *(v1 + 16);
  v18 = v2;
  v19 = v3;
  v7 = (*(*v4 + 112))(&v18);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v18 = v2;
  v19 = v3;
  v14 = (*(*v5 + 112))(&v18);
  ResolvedGradient.ColorSpace.mix(_:_:by:)(v7, v9, v11, v13, v14, v15, v16, v17, v6);
}

void Color.MixProvider.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 20);
  v5 = *(v1 + 16);
  (*(**v1 + 152))();
  (*(*v3 + 152))(a1);
  Hasher._combine(_:)(v5);
  v6 = 0.0;
  if (v4 != 0.0)
  {
    v6 = v4;
  }

  Hasher._combine(_:)(LODWORD(v6));
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Color.MixProvider()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 5);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  Hasher.init(_seed:)();
  Color.MixProvider.hash(into:)(v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Color.MixProvider()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 5);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  Hasher.init(_seed:)();
  Color.MixProvider.hash(into:)(v4);
  return Hasher._finalize()();
}

uint64_t Color._settingOpacity(_:)(uint64_t a1, double a2)
{
  v3 = a2;
  type metadata accessor for ColorBox<Color.MixProvider>(0, &lazy cache variable for type metadata for ColorBox<Color.SettingOpacityProvider>, lazy protocol witness table accessor for type Color.SettingOpacityProvider and conformance Color.SettingOpacityProvider);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;

  return v4;
}

void type metadata accessor for ColorBox<Color.MixProvider>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for ColorBox();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

Swift::Int Color.SettingOpacityProvider.hashValue.getter(uint64_t a1, float a2)
{
  Hasher.init(_seed:)();
  (*(*a1 + 152))(v6);
  v4 = 0.0;
  if (a2 != 0.0)
  {
    v4 = a2;
  }

  Hasher._combine(_:)(LODWORD(v4));
  return Hasher._finalize()();
}

uint64_t protocol witness for ColorProvider.resolve(in:) in conformance Color.SettingOpacityProvider(__int128 *a1)
{
  v2 = *v1;
  v4 = *a1;
  return (*(*v2 + 112))(&v4);
}

CGColorRef protocol witness for ColorProvider.staticColor.getter in conformance Color.SettingOpacityProvider()
{
  v1 = v0[2];
  v2 = (*(**v0 + 136))();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  CopyWithAlpha = CGColorCreateCopyWithAlpha(v2, v1);

  return CopyWithAlpha;
}

unint64_t instantiation function for generic protocol witness table for Color.SettingOpacityProvider(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Color.SettingOpacityProvider and conformance Color.SettingOpacityProvider();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for Color.HierarchicalOpacityColor(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Color.HierarchicalOpacityColor and conformance Color.HierarchicalOpacityColor();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for Color.DestinationOverProvider(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Color.DestinationOverProvider and conformance Color.DestinationOverProvider();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for Color.MixProvider(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Color.MixProvider and conformance Color.MixProvider();
  *(a1 + 8) = result;
  return result;
}

BOOL specialized static Color.MixProvider.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 20);
  if (*a1 != *a2 && ((*(**a1 + 88))() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v5)
  {
    if (v3 == v6)
    {
      return v4 == v7;
    }

    return 0;
  }

  v8 = (*(*v2 + 88))(v5);
  result = 0;
  if ((v8 & 1) != 0 && v3 == v6)
  {
    return v4 == v7;
  }

  return result;
}

uint64_t static StyleWriterOverrideModifier.injectStyleOverride<A>(in:requiring:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a1[1];
  v20[0] = *a1;
  v20[1] = v11;
  v13 = *a1;
  v12 = a1[1];
  v20[2] = a1[2];
  v17 = v13;
  v18 = v12;
  v19 = a1[2];
  v14 = *(a6 + 8);
  outlined init with copy of _GraphInputs(v20, v21);
  v15 = v14(&v17, a4, a6);
  v21[0] = v17;
  v21[1] = v18;
  v21[2] = v19;
  result = outlined destroy of _GraphInputs(v21);
  if (v15)
  {
    return (*(a5 + 32))(a1, a3, a5);
  }

  return result;
}

uint64_t AttributedString.TextAlignment.init(_:layoutDirection:writingMode:)@<X0>(char a1@<W0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a3)
  {
    v6 = type metadata accessor for AttributedString.TextAlignment();
    v7 = *(*(v6 - 8) + 104);
    if (a1)
    {
      if (a1 == 1)
      {
        v8 = MEMORY[0x1E6965578];
      }

      else
      {
        v8 = MEMORY[0x1E6965570];
      }
    }

    else
    {
      v8 = MEMORY[0x1E6965568];
    }

    v10 = *v8;
    v11 = a4;
    goto LABEL_16;
  }

  if (!a1)
  {
    if ((*a2 & 1) == 0)
    {
LABEL_14:
      v9 = MEMORY[0x1E6965568];
      goto LABEL_15;
    }

LABEL_10:
    v9 = MEMORY[0x1E6965570];
    goto LABEL_15;
  }

  if (a1 != 1)
  {
    if (*a2)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v9 = MEMORY[0x1E6965578];
LABEL_15:
  v12 = *v9;
  v13 = type metadata accessor for AttributedString.TextAlignment();
  v7 = *(*(v13 - 8) + 104);
  v6 = v13;
  v11 = a4;
  v10 = v12;
LABEL_16:

  return v7(v11, v10, v6);
}

SwiftUI::TextAlignment_optional __swiftcall NSParagraphStyle.textAlignment(for:)(SwiftUI::LayoutDirection a1)
{
  v1 = a1;
  type metadata accessor for (AttributedString.TextAlignment, LayoutDirection)();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedString.TextAlignment?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttributedString.TextAlignment();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v1;
  NSParagraphStyle.textAlignment.getter(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of AttributedString.TextAlignment?(v8, type metadata accessor for AttributedString.TextAlignment?);
    return 3;
  }

  (*(v10 + 32))(v12, v8, v9);
  v15 = *(v3 + 48);
  (*(v10 + 16))(v5, v12, v9);
  v5[v15] = v13;
  v16 = (*(v10 + 88))(v5, v9);
  if (v16 == *MEMORY[0x1E6965568])
  {
    if (v13)
    {
LABEL_6:
      v17 = *(v10 + 8);
      v17(v5, v9);
      v17(v12, v9);
      return 2;
    }
  }

  else
  {
    if (v16 == *MEMORY[0x1E6965578])
    {
      v18 = *(v10 + 8);
      v18(v5, v9);
      v18(v12, v9);
      return 1;
    }

    if (v16 != *MEMORY[0x1E6965570])
    {
      outlined destroy of AttributedString.TextAlignment?(v5, type metadata accessor for (AttributedString.TextAlignment, LayoutDirection));
      (*(v10 + 8))(v12, v9);
      return 3;
    }

    if (!v13)
    {
      goto LABEL_6;
    }
  }

  v19 = *(v10 + 8);
  v19(v5, v9);
  v19(v12, v9);
  return 0;
}

Swift::Int TextAlignment.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](a1);
  return Hasher._finalize()();
}

uint64_t static TextAlignment.unwrap(codingProxy:)(char a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

unsigned __int8 *protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance TextAlignment@<X0>(unsigned __int8 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = v2 == 1;
  }

  *a2 = v3;
  return result;
}

SwiftUI::TextAlignment_optional __swiftcall TextAlignment.init(protobufValue:)(Swift::UInt protobufValue)
{
  if (protobufValue >= 4)
  {
    return 3;
  }

  else
  {
    return (0x2010003u >> (8 * protobufValue));
  }
}

unint64_t protocol witness for ProtobufEnum.init(protobufValue:) in conformance TextAlignment@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x2010003u >> (8 * result);
  if (result >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Text.AlignmentStrategy.Storage.CodingKeys()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x614274756F79616CLL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Text.AlignmentStrategy.Storage.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x614274756F79616CLL && a2 == 0xEB00000000646573;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000018DD82C20 == a2)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Text.AlignmentStrategy.Storage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Text.AlignmentStrategy.Storage.CodingKeys and conformance Text.AlignmentStrategy.Storage.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}