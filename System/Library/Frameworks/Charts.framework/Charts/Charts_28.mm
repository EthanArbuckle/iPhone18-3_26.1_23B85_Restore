uint64_t sub_1AAEC848C@<X0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  sub_1AAD58818();
  sub_1AAF8E144();
  swift_beginAccess();
  v5 = sub_1AAEC115C(v3, v4);
  swift_endAccess();

  *a2 = v5;
  return result;
}

double sub_1AAEC8538@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *(a1 + 27) = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t type metadata accessor for AxisMarksResult()
{
  result = qword_1ED9B01C8;
  if (!qword_1ED9B01C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AAEC8598()
{
  if (!qword_1ED9AD898)
  {
    type metadata accessor for AxisMarksConfiguration();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED9AD898);
    }
  }
}

BOOL sub_1AAEC8604(uint64_t a1, double a2)
{
  v4 = (*&a2 >> 52) & 0x7FFLL;
  v5 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v6 = v4 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v6)
  {
    v14 = 0;
    result = 1;
    goto LABEL_35;
  }

  if (v4 == 2047)
  {
    goto LABEL_38;
  }

  v7 = sub_1AAF8FA34();
  if (v7 > 63)
  {
    goto LABEL_38;
  }

  v8 = v7;
  v9 = sub_1AAF8FA14();
  result = v8 >= v9;
  v11 = v9 + __clz(__rbit64(v5));
  v12 = v8 - v11;
  if (__OFSUB__(v8, v11))
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v11 <= 63)
  {
    if (v12 < -64 || v12 > 64)
    {
LABEL_8:
      if (v8 != 63)
      {
        if (v8 < -64)
        {
          do
          {
            v13 = 0;
            v14 = 0;
LABEL_29:
            v14 |= v13;
LABEL_30:
            if (a2 >= 0.0)
            {
              if ((v14 & 0x8000000000000000) == 0)
              {
                goto LABEL_34;
              }
            }

            else
            {
              if ((v14 & 0x8000000000000000) == 0)
              {
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
LABEL_42:
            ;
          }

          while (v8 != -64);
          goto LABEL_15;
        }

        goto LABEL_17;
      }

LABEL_37:
      if (a2 >= 0.0)
      {
LABEL_38:
        v14 = 0;
        result = 0;
        LOBYTE(v6) = 1;
        goto LABEL_35;
      }

LABEL_50:
      LOBYTE(v6) = 0;
      v14 = 0x8000000000000000;
      goto LABEL_35;
    }

    if ((v12 & 0x8000000000000000) == 0)
    {
      if (v12 == 64)
      {
        goto LABEL_8;
      }

LABEL_24:
      v14 = v5 << v12;
      if (v8 != 63)
      {
        goto LABEL_25;
      }

      goto LABEL_48;
    }

    if (v12 == -64)
    {
      goto LABEL_8;
    }

LABEL_47:
    v14 = v5 >> (v11 - v8);
    if (v8 != 63)
    {
LABEL_25:
      if (v8 >= -64)
      {
        if ((v8 & 0x8000000000000000) == 0)
        {
LABEL_28:
          v13 = 1 << v8;
          goto LABEL_29;
        }

        if (v8 == -64)
        {
          goto LABEL_30;
        }
      }

      v13 = 0;
      goto LABEL_29;
    }

LABEL_48:
    if (a2 >= 0.0 || v14)
    {
      goto LABEL_38;
    }

    goto LABEL_50;
  }

  if (v12 >= -64 && v12 <= 64)
  {
    if (v12 < 0)
    {
      if (v12 != -64)
      {
        goto LABEL_47;
      }
    }

    else if (v12 != 64)
    {
      goto LABEL_24;
    }
  }

  if (v8 == 63)
  {
    goto LABEL_37;
  }

  if (v8 >= -64)
  {
LABEL_17:
    if (v8 < 0)
    {
      goto LABEL_42;
    }

    v14 = 0;
    goto LABEL_28;
  }

LABEL_15:
  v14 = 0;
  if (a2 < 0.0)
  {
LABEL_32:
    LOBYTE(v6) = 0;
    v14 = -v14;
  }

  else
  {
LABEL_34:
    LOBYTE(v6) = 0;
  }

LABEL_35:
  *a1 = v14;
  *(a1 + 8) = v6;
  return result;
}

unint64_t sub_1AAEC87F4(uint64_t a1, double a2)
{
  v3 = (*&a2 >> 52) & 0x7FFLL;
  v4 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v5 = v3 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v5)
  {
    LOBYTE(v4) = 0;
    v3 = 1;
    goto LABEL_30;
  }

  if (v3 == 2047)
  {
    goto LABEL_42;
  }

  if (v3)
  {
    if (v3 > 0x43E)
    {
      goto LABEL_42;
    }

    v5 = v3 - 1023;
    v6 = __clz(__rbit64(v4));
    if (v4)
    {
      v7 = 52 - v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_36;
    }

    v8 = __clz(v4);
    v5 = -1011 - v8;
    v6 = __clz(__rbit64(v4));
    v7 = (v8 ^ 0x3F) - v6;
  }

  v3 = v5 >= v7;
  v9 = v7 + v6;
  v2 = v5 - v9;
  if (v9 > 63)
  {
    if (v2 < -64 || v2 > 64)
    {
      goto LABEL_16;
    }
  }

  else if (v2 < -64 || v2 > 64)
  {
    goto LABEL_16;
  }

  if (v2 < 0)
  {
    goto LABEL_37;
  }

  if (v2 != 64)
  {
    v4 <<= v2;
    if (v5 != 63)
    {
      goto LABEL_22;
    }

LABEL_39:
    if (a2 < 0.0 && !v4)
    {
      v5 = 0x8000000000000000;
      goto LABEL_30;
    }

    goto LABEL_42;
  }

LABEL_16:
  if (v5 == 63)
  {
    if (a2 < 0.0)
    {
      LOBYTE(v4) = 0;
      v5 = 0x8000000000000000;
      goto LABEL_30;
    }

LABEL_42:
    v5 = 0;
    v3 = 0;
    LOBYTE(v4) = 1;
    goto LABEL_30;
  }

  v2 = 0;
  v4 = 0;
  if (v5 < 0)
  {
    goto LABEL_25;
  }

LABEL_24:
  v2 = 1 << v5;
LABEL_25:
  while (1)
  {
    v5 = v4 | v2;
    if (a2 >= 0.0)
    {
      break;
    }

    if ((v4 & 0x8000000000000000) == 0)
    {
      LOBYTE(v4) = 0;
      v5 = -v5;
      goto LABEL_30;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    if (v2 == -64)
    {
      goto LABEL_16;
    }

    v4 >>= -v2;
    if (v5 == 63)
    {
      goto LABEL_39;
    }

LABEL_22:
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }

    v2 = 0;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_35;
  }

  LOBYTE(v4) = 0;
LABEL_30:
  *a1 = v5;
  *(a1 + 8) = v4;
  return v3;
}

uint64_t sub_1AAEC8978(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AAEC89D8(uint64_t a1, uint64_t a2)
{
  sub_1AACAF24C(0, &qword_1ED9AD890, sub_1AAEC8598, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAEC8A6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAEC8AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1AAEC8B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1AAEC8C3C(uint64_t a1)
{
  sub_1AAEC9160(0, qword_1ED9B4290, MEMORY[0x1E69E63D8], MEMORY[0x1E69E63F0], type metadata accessor for NumberBins);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AAEC8CE4(uint64_t a1, uint64_t a2)
{
  sub_1AAEC9160(0, qword_1ED9B4290, MEMORY[0x1E69E63D8], MEMORY[0x1E69E63F0], type metadata accessor for NumberBins);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1AAEC8D74()
{
  if (!qword_1EB426B10)
  {
    sub_1AAEC9160(255, qword_1ED9B4290, MEMORY[0x1E69E63D8], MEMORY[0x1E69E63F0], type metadata accessor for NumberBins);
    sub_1AAEC8E04();
    v0 = sub_1AAF8F4D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB426B10);
    }
  }
}

unint64_t sub_1AAEC8E04()
{
  result = qword_1EB426B18;
  if (!qword_1EB426B18)
  {
    sub_1AAEC9160(255, qword_1ED9B4290, MEMORY[0x1E69E63D8], MEMORY[0x1E69E63F0], type metadata accessor for NumberBins);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB426B18);
  }

  return result;
}

uint64_t sub_1AAEC8E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8 == 1)
  {
  }

  else if (!a8)
  {
  }

  return result;
}

uint64_t sub_1AAEC8EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8 == 1)
  {
  }

  else if (!a8)
  {
  }

  return result;
}

double sub_1AAEC8F48@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(v2 + 16) * a1 + *(v2 + 24);
  *a2 = result;
  return result;
}

void sub_1AAEC8F94()
{
  type metadata accessor for AxisMarkValues(319);
  if (v0 <= 0x3F)
  {
    sub_1AAEC9110(319, &qword_1ED9AD948, &type metadata for PrimitiveAxisTick, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1AAEC9110(319, &qword_1ED9AD940, &type metadata for PrimitiveAxisLabel, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1AAEC9110(319, &qword_1ED9AD968, &type metadata for MeasurableView, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          sub_1AAEC9160(319, &qword_1ED9AD980, &type metadata for ChartContentID, MEMORY[0x1E69E63D0], MEMORY[0x1E69E5E28]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1AAEC9110(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1AAEC9160(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (!*a2)
  {
    v6 = a5(0, MEMORY[0x1E69E63B0]);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1AAEC91B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1AAEC91FC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t initializeBufferWithCopyOfBuffer for MakeAxisConfiguration(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MakeAxisConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 5))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 9;
  v5 = v3 - 9;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MakeAxisConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 4) = 0;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 8;
    }
  }

  return result;
}

uint64_t sub_1AAEC9310(uint64_t a1)
{
  v1 = BYTE4(a1);
  v2 = sub_1AAF8E134();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  (*(v3 + 16))(v5, Value, v2);
  sub_1AACB6BD8();
  sub_1AAF8E144();
  (*(v3 + 8))(v5, v2);
  v7 = v13;
  if (*(v13 + 16) && (v8 = sub_1AACB6398(v1), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 24 * v8);
  }

  else
  {
    v10 = 3;
  }

  return v10;
}

uint64_t sub_1AAEC9480@<X0>(uint64_t a1@<X8>)
{
  result = sub_1AAEC9310(*v1 | (*(v1 + 4) << 32));
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return result;
}

uint64_t sub_1AAEC94DC()
{
  v79 = *MEMORY[0x1E69E9840];
  v1 = sub_1AAF8E134();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v54[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Value = AGGraphGetValue();
  v7 = v6;
  sub_1AADFA56C(Value, v74);
  v8 = AGGraphGetValue();
  v10 = v9;
  (*(v2 + 16))(v4, v8, v1);
  if ((v7 & 1) == 0 || (v10 & 1) == 0 || v76 == 1 || (LODWORD(v11) = v78, v78 == 3))
  {
    v69 = 0uLL;
    LOBYTE(v70) = -1;
LABEL_6:
    sub_1AAEC9BC0();
    AGGraphSetOutputValue();
LABEL_7:
    sub_1AAD58120(v74);
    return (*(v2 + 8))(v4, v1);
  }

  v13 = *&v74[36];
  v14 = *&v74[37];
  isUniquelyReferenced_nonNull_native = v77;
  v16 = v75;
  sub_1AACBE71C();
  sub_1AAF8E144();
  v17 = *&v69;
  if (!*(v69 + 16) || (v18 = sub_1AACB6398(5u), (v19 & 1) == 0))
  {

    if (v11 == 2)
    {
      goto LABEL_14;
    }

LABEL_32:
    v41 = 0.0;
    if (v16 & 1 | (v13 > v14))
    {
      v42 = 0.0;
    }

    else
    {
      v42 = v13;
    }

    if (!(v16 & 1 | (v13 > v14)))
    {
      v41 = v14;
    }

    *&v69 = v42;
    *(&v69 + 1) = v41;
    LOBYTE(v70) = 0;
    goto LABEL_6;
  }

  v20 = *(*&v17 + 56) + 72 * v18;
  v69 = *v20;
  v22 = *(v20 + 32);
  v21 = *(v20 + 48);
  v23 = *(v20 + 64);
  v70 = *(v20 + 16);
  v71 = v22;
  v73 = v23;
  v72 = v21;
  sub_1AACB1E30(&v69, &v66);

  LOWORD(v17) = WORD4(v71);
  v25 = HIBYTE(WORD4(v71));
  if (v25 > 0xFE)
  {
    sub_1AACB24B4(&v69);
    if (v11 != 2)
    {
      goto LABEL_32;
    }

LABEL_14:
    if (isUniquelyReferenced_nonNull_native)
    {
      v26 = isUniquelyReferenced_nonNull_native;
    }

    else
    {
      v26 = MEMORY[0x1E69E7CD0];
    }

    v27 = sub_1AAEC9DD0(v26);
    v29 = v28;
    v31 = v30;
    *&v69 = v27;
    *(&v69 + 1) = v28;
    LOBYTE(v70) = v30;
    sub_1AAEC9BC0();
    AGGraphSetOutputValue();
    sub_1AADF9B38(v27, v29, v31);
    goto LABEL_7;
  }

  v32 = v70;
  if (v25 < 2)
  {
    v33 = COERCE_DOUBLE(sub_1AADE69D4(v70));
    v14 = 0.0;
    if (v34)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = v33;
    }

    v35 = COERCE_DOUBLE(sub_1AADC5CE8(v32));
    if (v36)
    {
      v35 = 0.0;
    }

    if (v13 <= v35)
    {
      v66 = v13;
      v67 = v35;
      v68 = 0;
      sub_1AAEC9BC0();
      AGGraphSetOutputValue();
      sub_1AACB24B4(&v69);
      goto LABEL_7;
    }

LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v0 = v71;
  v65 = *(&v70 + 1);
  if (v25 != 2)
  {
    sub_1AACAF2E4(v70, *(&v70 + 1), v71, BYTE8(v71), 3u);
    if (qword_1ED9B59F0 == -1)
    {
LABEL_31:
      sub_1AACB24B4(&v69);
      sub_1AACAF33C(v32, v65, v0, SLOWORD(v17));
      if (v11 == 2)
      {
        goto LABEL_14;
      }

      goto LABEL_32;
    }

LABEL_66:
    swift_once();
    goto LABEL_31;
  }

  v56 = v71;
  v58 = WORD4(v71);
  MEMORY[0x1EEE9AC00](v24);
  *&v54[-16] = v4;

  v57 = v32;
  v37 = sub_1AADE5AC4(sub_1AAEC8CC4, &v54[-32], v32);
  v38 = v73;
  if (v73 > 0xFBu)
  {

    v39 = v58;
    v40 = v57;
LABEL_58:
    v66 = 0.0;
    v67 = 0.0;
    v68 = -1;
    sub_1AAEC9BC0();
    AGGraphSetOutputValue();
    sub_1AACB24B4(&v69);
    sub_1AACAF33C(v40, v65, v56, v39);
    goto LABEL_7;
  }

  v39 = v58;
  v40 = v57;
  if ((v73 & 0xE0) != 0x60 || (v43 = *(v37 + 16), v64 = v72, v43 != *(v72 + 16)))
  {

    goto LABEL_58;
  }

  v11 = *(&v72 + 1);
  isUniquelyReferenced_nonNull_native = v37;
  v17 = COERCE_DOUBLE(sub_1AADF932C(MEMORY[0x1E69E7CC0]));
  v63 = *(isUniquelyReferenced_nonNull_native + 16);
  v55 = v38;
  if (!v63)
  {
    sub_1AACAF328(v64, v11, v38);
LABEL_60:

    sub_1AACC0710(v64, v11, v55);
    v66 = v17;
    v67 = 0.0;
    v68 = 2;
    sub_1AAEC9BC0();
    AGGraphSetOutputValue();
    sub_1AACB24B4(&v69);

    sub_1AACAF33C(v57, v65, v56, v58);
    goto LABEL_7;
  }

  v61 = v64 + 32;
  v62 = isUniquelyReferenced_nonNull_native + 32;
  sub_1AACAF328(v64, v11, v38);
  v44 = isUniquelyReferenced_nonNull_native;
  v32 = 0;
  v59 = v11;
  v60 = isUniquelyReferenced_nonNull_native;
  while (1)
  {
    if (v32 >= *(v44 + 16))
    {
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    if (v32 >= *(v64 + 16))
    {
      goto LABEL_62;
    }

    v13 = *(v62 + 8 * v32);
    v11 = *(v61 + 8 * v32);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = v17;
    v0 = sub_1AADB0548(v13);
    v46 = *(*&v17 + 16);
    v47 = (v45 & 1) == 0;
    v48 = v46 + v47;
    if (__OFADD__(v46, v47))
    {
      goto LABEL_63;
    }

    v16 = v45;
    if (*(*&v17 + 24) < v48)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v17 = v66;
      if (v45)
      {
        goto LABEL_42;
      }
    }

    else
    {
      sub_1AAD98524();
      v17 = v66;
      if (v16)
      {
LABEL_42:
        *(*(*&v17 + 56) + 8 * v0) = v11;

        goto LABEL_43;
      }
    }

LABEL_53:
    *(*&v17 + 8 * (v0 >> 6) + 64) |= 1 << v0;
    *(*(*&v17 + 48) + 8 * v0) = v13;
    *(*(*&v17 + 56) + 8 * v0) = v11;
    v51 = *(*&v17 + 16);
    v52 = __OFADD__(v51, 1);
    v53 = v51 + 1;
    if (v52)
    {
      goto LABEL_65;
    }

    *(*&v17 + 16) = v53;
LABEL_43:
    v11 = v59;
    v44 = v60;
    if (v63 == ++v32)
    {
      goto LABEL_60;
    }
  }

  sub_1AAD8EF38(v48, isUniquelyReferenced_nonNull_native);
  v49 = sub_1AADB0548(v13);
  if ((v16 & 1) == (v50 & 1))
  {
    v0 = v49;
    v17 = v66;
    if (v16)
    {
      goto LABEL_42;
    }

    goto LABEL_53;
  }

  result = sub_1AAF905B4();
  __break(1u);
  return result;
}

void sub_1AAEC9BAC(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -2;
}

void sub_1AAEC9BC0()
{
  if (!qword_1ED9AE370)
  {
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9AE370);
    }
  }
}

uint64_t sub_1AAEC9C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W3>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 40);
  if (!a3)
  {
    if (qword_1EB422C18 != -1)
    {
      swift_once();
    }

    result = sub_1AAF8D8A4();
    goto LABEL_16;
  }

  if (a3 != 1)
  {
    if (*(a2 + 16) && (sub_1AADB0548(v5), (v8 & 1) != 0))
    {
      v9 = MEMORY[0x1E697E0A8];
      *(a4 + 24) = MEMORY[0x1E697E0B8];
      *(a4 + 32) = v9;

      if (result)
      {
LABEL_21:
        v10 = 1;
        goto LABEL_22;
      }
    }

    else
    {
      v11 = MEMORY[0x1E697E0A8];
      *(a4 + 24) = MEMORY[0x1E697E0B8];
      *(a4 + 32) = v11;
    }

    if (qword_1ED9B6620 != -1)
    {
      swift_once();
    }

    result = sub_1AAF8DA44();
    goto LABEL_21;
  }

  if (!*(a2 + 16) || (sub_1AADB0548(v5), (v6 & 1) == 0))
  {
    if (qword_1ED9B6620 != -1)
    {
      swift_once();
    }
  }

LABEL_16:
  v10 = 0;
LABEL_22:
  *a4 = result;
  *(a4 + 40) = v10;
  return result;
}

uint64_t sub_1AAEC9DD0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = sub_1AAD6C0D4(*(a1 + 16), 0);
    v4 = sub_1AADA9404(&v29, v3 + 4, v2, a1);

    sub_1AACC9C00();
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v29 = v3;
  sub_1AADA000C(&v29);

  v5 = v29;
  v28 = *(v29 + 2);
  if (v28)
  {
    if (qword_1EB422C10 != -1)
    {
LABEL_31:
      swift_once();
    }

    v6 = 0;
    v7 = 0;
    v8 = qword_1EB432210;
    v9 = qword_1EB432210 + 32;
    v10 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v7 >= *(v5 + 2))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v11 = *(v8 + 16);
      if (v6 >= v11)
      {
        v12 = 0;
      }

      else
      {
        v12 = v6;
      }

      if (v12 >= v11)
      {
        goto LABEL_28;
      }

      v13 = *&v5[8 * v7 + 32];
      v14 = *(v9 + 8 * v12);
      swift_retain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v10;
      v16 = sub_1AADB0548(v13);
      v18 = *(v10 + 2);
      v19 = (v17 & 1) == 0;
      v20 = __OFADD__(v18, v19);
      v21 = v18 + v19;
      if (v20)
      {
        goto LABEL_29;
      }

      v22 = v17;
      if (*(v10 + 3) < v21)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_20;
      }

      v26 = v16;
      sub_1AAD983D4();
      v16 = v26;
      v10 = v29;
      if (v22)
      {
LABEL_8:
        *(*(v10 + 7) + 8 * v16) = v14;

        goto LABEL_9;
      }

LABEL_21:
      *&v10[8 * (v16 >> 6) + 64] |= 1 << v16;
      *(*(v10 + 6) + 8 * v16) = v13;
      *(*(v10 + 7) + 8 * v16) = v14;

      v24 = *(v10 + 2);
      v20 = __OFADD__(v24, 1);
      v25 = v24 + 1;
      if (v20)
      {
        goto LABEL_30;
      }

      *(v10 + 2) = v25;
LABEL_9:
      ++v7;
      v6 = v12 + 1;
      if (v28 == v7)
      {
        goto LABEL_26;
      }
    }

    sub_1AAD8ECC8(v21, isUniquelyReferenced_nonNull_native);
    v16 = sub_1AADB0548(v13);
    if ((v22 & 1) != (v23 & 1))
    {
      sub_1AAF905B4();
      __break(1u);

      __break(1u);
      return result;
    }

LABEL_20:
    v10 = v29;
    if (v22)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

  v10 = MEMORY[0x1E69E7CC8];
LABEL_26:

  return v10;
}

uint64_t sub_1AAECA0CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1AAECA128(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1AAECA190()
{
  v14 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = v1;
  sub_1AADFA56C(Value, v10);
  if ((v2 & 1) != 0 && v11 != 1 && v13 == 2)
  {
    if (v12)
    {
      v4 = v12;
    }

    else
    {
      v4 = MEMORY[0x1E69E7CD0];
    }

    v5 = sub_1AAECA470(v4);
    v7 = v6;
    v9 = v8 & 1;
    sub_1AAECA304();
    AGGraphSetOutputValue();
    sub_1AADFB60C(v5, v7, v9);
  }

  else
  {
    sub_1AAECA304();
    AGGraphSetOutputValue();
  }

  return sub_1AAD58120(v10);
}

void sub_1AAECA2F0(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 2;
}

void sub_1AAECA304()
{
  if (!qword_1ED9AEBB0)
  {
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9AEBB0);
    }
  }
}

uint64_t sub_1AAECA354@<X0>(uint64_t result@<X0>, double a2@<X1>, double a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *(result + 40);
  if (a4)
  {
    v9 = 0.0;
    if (!*(*&a2 + 16) || (v10 = sub_1AADB0548(v8), (v11 & 1) == 0))
    {
      v23 = 0;
      v22 = 0;
      result = 0;
      v21 = 0;
      goto LABEL_13;
    }

    v12 = (*(*&a2 + 56) + 40 * v10);
    v13 = v12 + 1;
    v14 = v12 + 2;
    v16 = *v12;
    v15 = v12 + 4;
    v9 = v16;
LABEL_9:
    v21 = *v15;
    v22 = *v14;
    v23 = *v13;

LABEL_13:
    *a6 = v9;
    *(a6 + 8) = v23;
    *(a6 + 16) = v22;
    *(a6 + 24) = result;
    *(a6 + 32) = v21;
    return result;
  }

  v17 = 0.5;
  if (a2 == a3)
  {
    if (a5)
    {
      goto LABEL_7;
    }

LABEL_12:
    v23 = 0;
    v22 = 0;
    result = 0;
    v21 = 0;
    v9 = 0.0;
    goto LABEL_13;
  }

  v17 = (v8 - a2) / (a3 - a2);
  if (!a5)
  {
    goto LABEL_12;
  }

LABEL_7:
  v18 = *(a5 + 16);
  if (v18)
  {
    v20 = *(a5 + 32);
    v19 = (a5 + 32);
    v13 = v19 + 1;
    v14 = v19 + 2;
    v15 = v19 + 4;
    v9 = v20 + v17 * (*&v19[5 * v18 - 5] - v20);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAECA470(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = sub_1AAD6C0D4(*(a1 + 16), 0);
    v4 = sub_1AADA9404(&v35, v3 + 4, v2, a1);

    sub_1AACC9C00();
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v35 = v3;
  sub_1AADA000C(&v35);

  v34 = v35;
  v33 = *(v35 + 2);
  if (v33)
  {
    if (qword_1EB422C38 != -1)
    {
LABEL_28:
      swift_once();
    }

    v5 = 0;
    v6 = qword_1EB432230;
    v7 = qword_1EB432230 + 32;
    v8 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v5 >= *(v34 + 2))
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v10 = *(v6 + 16);
      if (!v10)
      {
        goto LABEL_25;
      }

      v11 = *&v34[8 * v5 + 32];
      v12 = v7 + 40 * (v5 % v10);
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 12);
      v16 = *(v12 + 16);
      v17 = *(v12 + 24);
      v18 = *(v12 + 32);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v8;
      v20 = sub_1AADB0548(v11);
      v22 = *(v8 + 2);
      v23 = (v21 & 1) == 0;
      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
        goto LABEL_26;
      }

      v26 = v21;
      if (*(v8 + 3) < v25)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_17;
      }

      v31 = v20;
      sub_1AAD98674();
      v20 = v31;
      v8 = v35;
      if (v26)
      {
LABEL_8:
        v9 = *(v8 + 7) + 40 * v20;
        *v9 = v13;
        *(v9 + 8) = v14;
        *(v9 + 12) = v15;
        *(v9 + 16) = v16;
        *(v9 + 24) = v17;
        *(v9 + 32) = v18;

        goto LABEL_9;
      }

LABEL_18:
      *&v8[8 * (v20 >> 6) + 64] |= 1 << v20;
      *(*(v8 + 6) + 8 * v20) = v11;
      v28 = *(v8 + 7) + 40 * v20;
      *v28 = v13;
      *(v28 + 8) = v14;
      *(v28 + 12) = v15;
      *(v28 + 16) = v16;
      *(v28 + 24) = v17;
      *(v28 + 32) = v18;
      v29 = *(v8 + 2);
      v24 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v24)
      {
        goto LABEL_27;
      }

      *(v8 + 2) = v30;
LABEL_9:
      if (v33 == ++v5)
      {
        goto LABEL_23;
      }
    }

    sub_1AAD8F1A8(v25, isUniquelyReferenced_nonNull_native);
    v20 = sub_1AADB0548(v11);
    if ((v26 & 1) != (v27 & 1))
    {
      sub_1AAF905B4();
      __break(1u);

      __break(1u);
      return result;
    }

LABEL_17:
    v8 = v35;
    if (v26)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

  v8 = MEMORY[0x1E69E7CC8];
LABEL_23:

  return v8;
}

uint64_t sub_1AAECA7A0()
{
  v131 = *MEMORY[0x1E69E9840];
  if (*v0 == *MEMORY[0x1E698D3F8])
  {
    v1 = 0;
    v2 = 0;
    v3 = 0uLL;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
    v4 = 0uLL;
    v5 = 0uLL;
    v6 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
  }

  else
  {
    Value = AGGraphGetValue();
    v1 = v35;
    sub_1AADF9ADC(Value, &v79);
    v74 = v80;
    v75 = v79;
    v72 = v82;
    v73 = v81;
    v70 = v84;
    v71 = v83;
    v68 = v86;
    v69 = v85;
    v66 = v88;
    v67 = v87;
    v64 = v90;
    v65 = v89;
    v62 = v92;
    v63 = v91;
    v60 = v94;
    v61 = v93;
    v58 = v96;
    v59 = v95;
    v57 = v97;
    v4 = v98;
    v5 = v99;
    v6 = v100;
    v7 = v101;
    v8 = v102;
    v9 = v103;
    v10 = v104;
    v11 = v105;
    v12 = v106;
    v13 = v107;
    v14 = v108;
    v15 = v109;
    v16 = v110;
    v2 = v129 | (v130 << 16);
    v3 = v111;
    v17 = v112;
    v18 = v113;
    v19 = v114;
    v20 = v115;
    v21 = v116;
    v22 = v117;
    v23 = v118;
    v24 = v119;
    v25 = v120;
    v26 = v121;
    v27 = v122;
    v28 = v123;
    v29 = v124;
    v30 = v125;
    v31 = v126;
    v32 = v127;
    v33 = v128;
  }

  v79 = v75;
  v80 = v74;
  v81 = v73;
  v82 = v72;
  v83 = v71;
  v84 = v70;
  v85 = v69;
  v86 = v68;
  v87 = v67;
  v88 = v66;
  v89 = v65;
  v90 = v64;
  v91 = v63;
  v92 = v62;
  v93 = v61;
  v94 = v60;
  v95 = v59;
  v96 = v58;
  v97 = v57;
  v98 = v4;
  v99 = v5;
  v100 = v6;
  v101 = v7;
  v102 = v8;
  v103 = v9;
  v104 = v10;
  v105 = v11;
  v106 = v12;
  v107 = v13;
  v108 = v14;
  v109 = v15;
  v110 = v16;
  v111 = v3;
  v112 = v17;
  v113 = v18;
  v114 = v19;
  v115 = v20;
  v116 = v21;
  v117 = v22;
  v118 = v23;
  v119 = v24;
  v120 = v25;
  v121 = v26;
  v122 = v27;
  v123 = v28;
  v124 = v29;
  v125 = v30;
  v126 = v31;
  v127 = v32;
  v128 = v33;
  v129 = v2;
  v130 = BYTE2(v2);
  sub_1AAECAF1C(&v79, __src);
  if (!*__src)
  {
    v1 = __dst;
    sub_1AAECAFD0(__src);
    if (qword_1ED9B59F0 != -1)
    {
      goto LABEL_61;
    }

    goto LABEL_56;
  }

  memcpy(__dst, __src, 0x323uLL);
  if ((v1 & 1) == 0)
  {
    sub_1AAD58308(__dst);
    return sub_1AAECAFD0(&v79);
  }

  sub_1AADFA56C(&__dst[1], __src);
  if (!*&__src[480])
  {
LABEL_59:
    sub_1AADFA56C(__src, v76);
    AGGraphSetOutputValue();
    sub_1AAD58120(v76);
    sub_1AAD58308(__dst);
    sub_1AAECAFD0(&v79);
    return sub_1AAD58120(__src);
  }

  v36 = 0;
  v37 = 1 << *(*&__src[480] + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & *(*&__src[480] + 64);
  v40 = __src[40];
  v41 = __src[16];
  v42 = *__src;
  v43 = *&__src[8];
  v44 = vdupq_n_s64(0x4059000000000000uLL);
  while (v39)
  {
LABEL_15:
    v46 = __clz(__rbit64(v39));
    v39 &= v39 - 1;
    v47 = v46 | (v36 << 6);
    v48 = (*(*&__src[480] + 48) + 72 * v47);
    v49 = *v48;
    v50 = v48[1];
    v51 = *(*(*&__src[480] + 56) + 16 * v47);
    if (v49 <= 1)
    {
      if (v49)
      {
        v52 = -v51.f64[1];
        if (v51.f64[0] > -v51.f64[1])
        {
          v52 = *(*(*&__src[480] + 56) + 16 * v47);
        }

        v51 = vmulq_f64(vdivq_f64(v51, vdupq_lane_s64(*&v52, 0)), v44);
      }

      if (v50)
      {
        goto LABEL_21;
      }

      goto LABEL_29;
    }

    if (v49 == 2)
    {
      v51 = vmulq_n_f64(xmmword_1AAFA2D60, vsubq_f64(v51, vdupq_laneq_s64(v51, 1)).f64[0]);
      if (v50)
      {
LABEL_21:
        if (*&__src[72] != 1)
        {
          if (!__src[88])
          {
            goto LABEL_25;
          }

          if (__src[88] == 3)
          {
            __src[88] = 0;
LABEL_25:
            if (__src[64])
            {
              *&__src[48] = vdupq_laneq_s64(v51, 1);
              __src[64] = 0;
              goto LABEL_41;
            }

            v53 = v51.f64[1];
            v54 = *&__src[48];
            if (*&__src[48] >= v51.f64[1])
            {
              v54 = v51.f64[1];
            }

            if (v51.f64[1] <= *&__src[56])
            {
              v53 = *&__src[56];
            }

            *&__src[48] = v54;
            *&__src[56] = v53;
            if (__src[64])
            {
              *&__src[48] = vdupq_lane_s64(*&v51.f64[0], 0);
              __src[64] = 0;
            }

            else
            {
LABEL_41:
              v55 = *&__src[48];
              if (*&__src[48] >= v51.f64[0])
              {
                v55 = v51.f64[0];
              }

              if (v51.f64[0] <= *&__src[56])
              {
                v51.f64[0] = *&__src[56];
              }

              *&__src[48] = v55;
              *&__src[56] = v51.f64[0];
            }
          }
        }
      }

      else
      {
LABEL_29:
        if (*&__src[24] != 1)
        {
          if (!v40)
          {
            goto LABEL_33;
          }

          if (v40 == 3)
          {
            __src[40] = 0;
LABEL_33:
            if (v41)
            {
              __src[16] = 0;
              v43 = v51.f64[1];
              v42 = v51.f64[1];
            }

            else
            {
              if (v42 >= v51.f64[1])
              {
                v42 = v51.f64[1];
              }

              if (v51.f64[1] > v43)
              {
                v43 = v51.f64[1];
              }
            }

            v41 = 0;
            v40 = 0;
            if (v42 >= v51.f64[0])
            {
              v42 = v51.f64[0];
            }

            if (v51.f64[0] > v43)
            {
              v43 = v51.f64[0];
            }

            *__src = v42;
            *&__src[8] = v43;
          }
        }
      }
    }
  }

  while (1)
  {
    v45 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v45 >= ((v37 + 63) >> 6))
    {
      goto LABEL_59;
    }

    v39 = *(*&__src[480] + 64 + 8 * v45);
    ++v36;
    if (v39)
    {
      v36 = v45;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_61:
  swift_once();
LABEL_56:
  memset(__dst, 0, 24);
  *(v1 + 24) = xmmword_1AAF92AC0;
  LOBYTE(__dst[5]) = 0;
  memset(&__dst[6], 0, 24);
  *(v1 + 72) = xmmword_1AAF92AC0;
  LOBYTE(__dst[11]) = 0;
  memset(&__dst[12], 0, 24);
  *(v1 + 120) = xmmword_1AAF92AC0;
  LOBYTE(__dst[17]) = 0;
  memset(&__dst[18], 0, 24);
  *(v1 + 168) = xmmword_1AAF92AC0;
  LOBYTE(__dst[23]) = 0;
  memset(&__dst[24], 0, 24);
  *(v1 + 216) = xmmword_1AAF92AC0;
  LOBYTE(__dst[29]) = 0;
  memset(&__dst[30], 0, 24);
  __dst[33] = 1;
  __dst[34] = 0;
  LOBYTE(__dst[35]) = 0;
  memset(&__dst[36], 0, 24);
  __dst[39] = 1;
  __dst[40] = 0;
  LOBYTE(__dst[41]) = 0;
  memset(&__dst[42], 0, 24);
  __dst[45] = 1;
  __dst[46] = 0;
  LOBYTE(__dst[47]) = 0;
  memset(&__dst[48], 0, 24);
  __dst[51] = 1;
  __dst[52] = 0;
  LOBYTE(__dst[53]) = 0;
  memset(&__dst[54], 0, 24);
  __dst[57] = 1;
  __dst[58] = 0;
  LOBYTE(__dst[59]) = 0;
  v1[30] = 0u;
  v1[31] = 0u;
  __dst[64] = 1;
  memset(&__dst[65], 0, 275);
  AGGraphSetOutputValue();
  sub_1AAD58120(__dst);
  return sub_1AAECAFD0(&v79);
}

uint64_t sub_1AAECAF1C(uint64_t a1, uint64_t a2)
{
  sub_1AAECAF80();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1AAECAF80()
{
  if (!qword_1ED9ADF48)
  {
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9ADF48);
    }
  }
}

uint64_t sub_1AAECAFD0(uint64_t a1)
{
  sub_1AAECAF80();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AAECB050()
{
  v10 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = v1;
  sub_1AADFA56C(Value, v6);
  if ((v2 & 1) == 0 || (v7 != 1 ? (v3 = v9 == 3) : (v3 = 1), v3))
  {
    sub_1AAECB194();
    AGGraphSetOutputValue();
  }

  else if (v9 == 2)
  {
    if (v8)
    {
      v5 = v8;
    }

    else
    {
      v5 = MEMORY[0x1E69E7CD0];
    }

    sub_1AAECB1E4(v5);
    sub_1AAECB194();
    AGGraphSetOutputValue();
  }

  else
  {
    sub_1AAECB194();
    AGGraphSetOutputValue();
    sub_1AAF885A0(1);
  }

  return sub_1AAD58120(v6);
}

double sub_1AAECB180@<D0>(_OWORD *a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_1AAF92AC0;
  return result;
}

void sub_1AAECB194()
{
  if (!qword_1ED9AED88[0])
  {
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, qword_1ED9AED88);
    }
  }
}

uint64_t sub_1AAECB1E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = sub_1AAD6C0D4(*(a1 + 16), 0);
    v4 = sub_1AADA9404(&v49, v3 + 4, v2, a1);

    sub_1AACC9C00();
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_5:
  *&v49 = v3;
  sub_1AADA000C(&v49);

  v5 = v49;
  v46 = *(v49 + 16);
  if (v46)
  {
    if (qword_1ED9AEC20 != -1)
    {
LABEL_47:
      swift_once();
    }

    v6 = 0;
    v7 = qword_1ED9C33B0;
    v8 = (qword_1ED9C33B0 + 32);
    v9 = MEMORY[0x1E69E7CC8];
    v10 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      v11 = *(v7 + 16);
      if (!v11)
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v12 = v6 % v11;
      if (v12 < 0)
      {
        goto LABEL_40;
      }

      v13 = *(v5 + 8 * v6 + 32);
      sub_1AAD9B194(v8 + 40 * v12, &v49);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = v9;
      v15 = sub_1AADB0548(v13);
      v17 = v9[2];
      v18 = (v16 & 1) == 0;
      v19 = __OFADD__(v17, v18);
      v20 = v17 + v18;
      if (v19)
      {
        goto LABEL_41;
      }

      v21 = v16;
      if (v9[3] < v20)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_17;
      }

      v23 = v15;
      sub_1AAD987EC();
      v15 = v23;
      v9 = v47;
      if (v21)
      {
LABEL_18:
        sub_1AAEB90B8(&v49, v9[7] + 40 * v15);
        goto LABEL_22;
      }

LABEL_20:
      v9[(v15 >> 6) + 8] |= 1 << v15;
      *(v9[6] + 8 * v15) = v13;
      v24 = v9[7] + 40 * v15;
      v25 = v49;
      v26 = v50;
      *(v24 + 32) = v51;
      *v24 = v25;
      *(v24 + 16) = v26;
      v27 = v9[2];
      v19 = __OFADD__(v27, 1);
      v28 = v27 + 1;
      if (v19)
      {
        goto LABEL_45;
      }

      v9[2] = v28;
LABEL_22:
      if (qword_1EB422C30 != -1)
      {
        swift_once();
      }

      v29 = *(qword_1EB432228 + 16);
      if (!v29)
      {
        goto LABEL_42;
      }

      v30 = v6 % v29;
      if (v30 < 0)
      {
        goto LABEL_43;
      }

      sub_1AAD9B194(qword_1EB432228 + 40 * v30 + 32, &v49);
      v31 = swift_isUniquelyReferenced_nonNull_native();
      v48 = v10;
      v32 = sub_1AADB0548(v13);
      v34 = v10[2];
      v35 = (v33 & 1) == 0;
      v19 = __OFADD__(v34, v35);
      v36 = v34 + v35;
      if (v19)
      {
        goto LABEL_44;
      }

      v37 = v33;
      if (v10[3] < v36)
      {
        sub_1AAD8F450(v36, v31);
        v32 = sub_1AADB0548(v13);
        if ((v37 & 1) != (v38 & 1))
        {
LABEL_48:
          sub_1AAF905B4();
          __break(1u);

          __break(1u);
          return result;
        }

LABEL_31:
        if (v37)
        {
          goto LABEL_8;
        }

        goto LABEL_32;
      }

      if (v31)
      {
        goto LABEL_31;
      }

      v44 = v32;
      sub_1AAD987EC();
      v32 = v44;
      v10 = v48;
      if (v37)
      {
LABEL_8:
        sub_1AAEB90B8(&v49, v10[7] + 40 * v32);
        goto LABEL_9;
      }

LABEL_32:
      v10[(v32 >> 6) + 8] |= 1 << v32;
      *(v10[6] + 8 * v32) = v13;
      v39 = v10[7] + 40 * v32;
      v40 = v49;
      v41 = v50;
      *(v39 + 32) = v51;
      *v39 = v40;
      *(v39 + 16) = v41;
      v42 = v10[2];
      v19 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v19)
      {
        goto LABEL_46;
      }

      v10[2] = v43;
LABEL_9:
      if (v46 == ++v6)
      {

        return v9;
      }
    }

    sub_1AAD8F450(v20, isUniquelyReferenced_nonNull_native);
    v15 = sub_1AADB0548(v13);
    if ((v21 & 1) != (v22 & 1))
    {
      goto LABEL_48;
    }

LABEL_17:
    if (v21)
    {
      goto LABEL_18;
    }

    goto LABEL_20;
  }

  return MEMORY[0x1E69E7CC8];
}

uint64_t sub_1AAECB63C()
{
  v17 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = v1;
  sub_1AADFA56C(Value, v10);
  if ((v2 & 1) == 0 || v14 == 1)
  {
    goto LABEL_3;
  }

  if (v16 < 2u)
  {
    v4 = 0;
    if (v13 & 1 | (v11 > v12))
    {
      v5 = 0;
    }

    else
    {
      v5 = *&v11;
    }

    if (v13 & 1 | (v11 > v12))
    {
      v6 = 0;
    }

    else
    {
      v6 = *&v12;
    }

LABEL_17:
    sub_1AAECB78C();
    AGGraphSetOutputValue();
    sub_1AAECB7DC(v5, v6, v4);
    return sub_1AAD58120(v10);
  }

  if (v16 == 2)
  {
    if (v15)
    {
      v7 = v15;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CD0];
    }

    v5 = sub_1AAECBCE0(v7);
    v6 = v8;
    v4 = v9 & 1;
    goto LABEL_17;
  }

LABEL_3:
  sub_1AAECB78C();
  AGGraphSetOutputValue();
  return sub_1AAD58120(v10);
}

void sub_1AAECB78C()
{
  if (!qword_1ED9AEB50)
  {
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9AEB50);
    }
  }
}

uint64_t sub_1AAECB7DC(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1AADFB60C(result, a2, a3 & 1);
  }

  return result;
}

double sub_1AAECB7F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = *(a1 + 40);
  if (a4)
  {
    if (*(a2 + 16))
    {
      sub_1AADB0548(result);
    }
  }

  else if (*&a2 != *&a3)
  {
    return (result - *&a2) / (*&a3 - *&a2) * 1200.0;
  }

  return result;
}

void sub_1AAECB888(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  LOBYTE(v5) = a3;
  v8 = *(a1 + 16);

  if (!v8 || !*(a2 + 16))
  {
    goto LABEL_24;
  }

  v9 = *(a1 + 32);
  v10 = *(a2 + 32);
  v11 = *a4;
  v12 = sub_1AADB0548(v9);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v18 = v13;
  if (v11[3] < v17)
  {
    sub_1AAD8AA18(v17, v5 & 1);
    v12 = sub_1AADB0548(v9);
    if ((v18 & 1) == (v19 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v12 = sub_1AAF905B4();
    __break(1u);
  }

  if (v5)
  {
LABEL_8:
    if (v18)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v22 = v12;
  sub_1AAD955A4();
  v12 = v22;
  if (v18)
  {
LABEL_9:
    v20 = swift_allocError();
    swift_willThrow();
    v21 = v20;
    sub_1AAE28ACC();
    if ((swift_dynamicCast() & 1) == 0)
    {
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      return;
    }

    goto LABEL_29;
  }

LABEL_12:
  v23 = *a4;
  *(*a4 + 8 * (v12 >> 6) + 64) |= 1 << v12;
  *(v23[6] + 8 * v12) = v9;
  *(v23[7] + 8 * v12) = v10;
  v24 = v23[2];
  v16 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v16)
  {
    v23[2] = v25;
    v5 = v8 - 1;
    if (v8 != 1)
    {
      v8 = 0;
      do
      {
        v26 = v8 + 1;
        if ((v8 + 1) >= *(a1 + 16))
        {
          goto LABEL_27;
        }

        v27 = *(a2 + 16);
        if (v26 == v27)
        {
          break;
        }

        if (v26 >= v27)
        {
          goto LABEL_28;
        }

        v9 = *(a1 + 40 + 8 * v8);
        v10 = *(a2 + 40 + 8 * v8);
        v28 = *a4;
        v29 = sub_1AADB0548(v9);
        v31 = v28[2];
        v32 = (v30 & 1) == 0;
        v16 = __OFADD__(v31, v32);
        v33 = v31 + v32;
        if (v16)
        {
          goto LABEL_25;
        }

        v18 = v30;
        if (v28[3] < v33)
        {
          sub_1AAD8AA18(v33, 1);
          v29 = sub_1AADB0548(v9);
          if ((v18 & 1) != (v34 & 1))
          {
            goto LABEL_6;
          }
        }

        if (v18)
        {
          goto LABEL_9;
        }

        v35 = *a4;
        *(*a4 + 8 * (v29 >> 6) + 64) |= 1 << v29;
        *(v35[6] + 8 * v29) = v9;
        *(v35[7] + 8 * v29) = v10;
        v36 = v35[2];
        v16 = __OFADD__(v36, 1);
        v37 = v36 + 1;
        if (v16)
        {
          goto LABEL_26;
        }

        v35[2] = v37;
      }

      while (v5 != ++v8);
    }

LABEL_24:

    swift_bridgeObjectRelease_n();
    return;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  sub_1AAF900D4();
  MEMORY[0x1AC5982F0](0xD00000000000001BLL, 0x80000001AAFCDCD0);
  sub_1AAF90284();
  MEMORY[0x1AC5982F0](39, 0xE100000000000000);
  sub_1AAF902C4();
  __break(1u);
}

uint64_t sub_1AAECBC20(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) >= *(a1 + 16))
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v4 = *(a2 + 16);
  }

  if (v4)
  {
    sub_1AAD9AC64();
    v5 = sub_1AAF903A4();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC8];
  }

  v7 = v5;

  sub_1AAECB888(a1, a2, 1, &v7);
  return v7;
}

unint64_t sub_1AAECBCE0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {

    return sub_1AADF8158(MEMORY[0x1E69E7CC0]);
  }

  v3 = sub_1AAD6C0D4(*(a1 + 16), 0);
  v4 = sub_1AADA9404(&v15, (v3 + 32), v2, a1);

  sub_1AACC9C00();
  if (v4 != v2)
  {
    __break(1u);
    goto LABEL_15;
  }

  v15 = v3;
  sub_1AADA000C(&v15);

  v5 = v15;
  v3 = *(v15 + 2);
  if (!v3)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = *(v15 + 4);
  v7 = *&v15[8 * v3 + 24];
  if (v6 > v7)
  {
LABEL_16:
    __break(1u);

    __break(1u);
    return result;
  }

  v15 = MEMORY[0x1E69E7CC0];
  sub_1AAD1FAF4(0, v3, 0);
  v8 = v15;
  v9 = 32;
  do
  {
    if (v6 == v7)
    {
      v10 = 600.0;
    }

    else
    {
      v10 = (*&v5[v9] - v6) / (v7 - v6) * 1200.0;
    }

    v15 = v8;
    v12 = *(v8 + 2);
    v11 = *(v8 + 3);
    if (v12 >= v11 >> 1)
    {
      sub_1AAD1FAF4((v11 > 1), v12 + 1, 1);
      v8 = v15;
    }

    *(v8 + 2) = v12 + 1;
    *&v8[8 * v12 + 32] = v10;
    v9 += 8;
    --v3;
  }

  while (v3);
  v13 = sub_1AAECBC20(v5, v8);

  return v13;
}

uint64_t *sub_1AAECBF08(int a1)
{
  v3 = type metadata accessor for DisplayListProxyViewContainer(0);
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v26 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*MEMORY[0x1E698D3F8] == a1)
  {
    __break(1u);
LABEL_19:
    result = sub_1AAF8FFB4();
    v6 = result;
    if (result)
    {
      goto LABEL_4;
    }

    return MEMORY[0x1E69E7CC0];
  }

  result = AGGraphGetValue();
  v1 = *result;
  if (*result >> 62)
  {
    goto LABEL_19;
  }

  v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_4:
  if (v6 >= 1)
  {
    v7 = v1 & 0xC000000000000001;

    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    v22 = v6;
    v23 = v1;
    v21 = v1 & 0xC000000000000001;
    while (1)
    {
      if (v7)
      {
        v10 = MEMORY[0x1AC598D40](v8, v1);
        if ((*(v10 + 68) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v10 = *(v1 + 8 * v8 + 32);

        if ((*(v10 + 68) & 1) == 0)
        {
LABEL_12:
          v12 = *(v10 + 16);
          v11 = *(v10 + 24);
          v13 = *(v10 + 32);
          v14 = *(v10 + 40);
          v15 = *(v10 + 48);
          v16 = sub_1AAF8E3E4();

          Value = AGGraphGetValue();
          v18 = v26;
          (*(*(v16 - 8) + 16))(v26 + *(v25 + 24), Value, v16);
          *v18 = v12;
          *(v18 + 8) = v11;
          *(v18 + 16) = v13;
          *(v18 + 24) = v14;
          *(v18 + 32) = v15;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1AAD6AB40(0, v9[2] + 1, 1, v9);
          }

          v20 = v9[2];
          v19 = v9[3];
          v7 = v21;
          v6 = v22;
          if (v20 >= v19 >> 1)
          {
            v9 = sub_1AAD6AB40(v19 > 1, v20 + 1, 1, v9);
          }

          v9[2] = v20 + 1;
          sub_1AAECDCCC(v26, v9 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v20, type metadata accessor for DisplayListProxyViewContainer);
          v1 = v23;
          goto LABEL_7;
        }
      }

LABEL_7:
      if (v6 == ++v8)
      {

        return v9;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_1AAECC1E8@<X0>(uint64_t **a1@<X8>)
{
  result = sub_1AAECBF08(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1AAECC214(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1AAECC5F8(a1, a2, a3, sub_1AADF9AA8);
}

uint64_t *sub_1AAECC280(int a1)
{
  v3 = type metadata accessor for LayoutComputerContainer(0);
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v26 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*MEMORY[0x1E698D3F8] == a1)
  {
    __break(1u);
LABEL_19:
    result = sub_1AAF8FFB4();
    v6 = result;
    if (result)
    {
      goto LABEL_4;
    }

    return MEMORY[0x1E69E7CC0];
  }

  result = AGGraphGetValue();
  v1 = *result;
  if (*result >> 62)
  {
    goto LABEL_19;
  }

  v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_4:
  if (v6 >= 1)
  {
    v7 = v1 & 0xC000000000000001;

    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    v22 = v6;
    v23 = v1;
    v21 = v1 & 0xC000000000000001;
    while (1)
    {
      if (v7)
      {
        v10 = MEMORY[0x1AC598D40](v8, v1);
        if ((*(v10 + 76) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v10 = *(v1 + 8 * v8 + 32);

        if ((*(v10 + 76) & 1) == 0)
        {
LABEL_12:
          v12 = *(v10 + 16);
          v11 = *(v10 + 24);
          v13 = *(v10 + 32);
          v14 = *(v10 + 40);
          v15 = *(v10 + 48);
          v16 = sub_1AAF8E404();

          Value = AGGraphGetValue();
          v18 = v26;
          (*(*(v16 - 8) + 16))(v26 + *(v25 + 24), Value, v16);
          *v18 = v12;
          *(v18 + 8) = v11;
          *(v18 + 16) = v13;
          *(v18 + 24) = v14;
          *(v18 + 32) = v15;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1AAD6AB74(0, v9[2] + 1, 1, v9);
          }

          v20 = v9[2];
          v19 = v9[3];
          v7 = v21;
          v6 = v22;
          if (v20 >= v19 >> 1)
          {
            v9 = sub_1AAD6AB74(v19 > 1, v20 + 1, 1, v9);
          }

          v9[2] = v20 + 1;
          sub_1AAECDCCC(v26, v9 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v20, type metadata accessor for LayoutComputerContainer);
          v1 = v23;
          goto LABEL_7;
        }
      }

LABEL_7:
      if (v6 == ++v8)
      {

        return v9;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_1AAECC560@<X0>(uint64_t **a1@<X8>)
{
  result = sub_1AAECC280(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1AAECC58C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1AAECC5F8(a1, a2, a3, sub_1AADFACA8);
}

uint64_t sub_1AAECC5F8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(0);
  AGGraphSetOutputValue();
}

uint64_t sub_1AAECC66C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AAECC6D0(uint64_t a1)
{
  v2 = v1;
  result = AGSubgraphIsValid();
  if (result)
  {
    v26 = result;
    v5 = v2 + *(type metadata accessor for MakeState(0) + 28);
    ++*(v5 + 16);
    v6 = MEMORY[0x1E69E7CC0];
    v28 = MEMORY[0x1E69E7CC0];

    result = sub_1AAD78AC0(v7);
    v27 = result;
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = 0;
      do
      {
        sub_1AAECC948(v9);

        MEMORY[0x1AC598430](v10);
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1AAF8F874();
        }

        ++v9;
        sub_1AAF8F8C4();
        v6 = v28;

        sub_1AADA9AF0(v11);
      }

      while (v8 != v9);
      v12 = v27;
    }

    else
    {
      v12 = result;
    }

    v13 = 0;
    v14 = 1 << *(v12 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v12 + 56);
    v17 = (v14 + 63) >> 6;
    while (v16)
    {
LABEL_17:
      v16 &= v16 - 1;

      v20 = sub_1AADB0938(v19);
      v22 = v21;

      if (v22)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = *(v5 + 8);
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1AAD98974();
        }

        v25 = *(*(v24 + 56) + 8 * v20);
        sub_1AAD92370(v20, v24);
        *(v5 + 8) = v24;
        AGSubgraphRemoveChild();
        *(v25 + 92) = 1;
      }
    }

    while (1)
    {
      v18 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v18 >= v17)
      {

        *v5 = v6;
        return v26;
      }

      v16 = *(v12 + 56 + 8 * v18);
      ++v13;
      if (v16)
      {
        v13 = v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1AAECC948(unint64_t a1)
{
  v93 = *MEMORY[0x1E69E9840];
  v3 = sub_1AAF8D974();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAECE148(0, &qword_1ED9ADB70, MEMORY[0x1E6981910], MEMORY[0x1E697DDB8]);
  v8 = v7;
  v68 = *(v7 - 8);
  v70 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v67 = &v57 - v9;
  v10 = sub_1AAF8E434();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v1;
  v13 = *v1;
  sub_1AAECE148(0, &qword_1ED9AD968, &type metadata for MeasurableView, MEMORY[0x1E69E62F8]);
  Value = AGGraphGetValue();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v65 = v6;
  v66 = v8;
  v15 = *Value;
  if (*(*Value + 16) <= a1)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v63 = v10;
  v64 = v3;
  v62 = v11;
  v77 = a1;
  v16 = (v15 + 80 * a1);
  v88 = v16[2];
  v17 = v16[5];
  v18 = v16[6];
  v19 = v16[4];
  v89 = v16[3];
  v90 = v19;
  v91 = v17;
  v92 = v18;
  v72 = v89;
  v73 = *(&v89 + 1);
  v74 = v19;
  v71 = *(&v88 + 1);
  v20 = v88;
  State = type metadata accessor for MakeState(0);
  v75 = v78 + *(State + 28);
  v22 = *(v75 + 1);
  v23 = *(v22 + 16);

  if (v23)
  {
    sub_1AAEC8C04(&v88, &v83);

    v25 = sub_1AADB0938(v24);
    if (v26)
    {
      v27 = v25;

      v28 = *(*(v22 + 56) + 8 * v27);
      if (*(v28 + 92) == 1)
      {
        *(v28 + 92) = 0;

        AGSubgraphAddChild();
      }

      else
      {
      }

      v55 = v75;
      sub_1AAECDC58(&v88);
      v56 = *(v55 + 4);
      if (*(v28 + 88) == v56)
      {
      }

      else
      {
        *(v28 + 80) = v77;
        *(v28 + 16) = v20;

        *(v28 + 24) = v71;
        *(v28 + 32) = v72;
        *(v28 + 40) = v73;
        *(v28 + 48) = v74;
        *(v28 + 88) = v56;
      }

      return v28;
    }
  }

  else
  {
    sub_1AAEC8C04(&v88, &v83);
  }

  v29 = AGSubgraphGetGraph();
  v30 = AGSubgraphCreate();

  AGSubgraphAddChild();
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    goto LABEL_20;
  }

  v32 = CurrentAttribute;
  v33 = AGGraphClearUpdate();
  v61 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  if (*(v15 + 16) <= v77)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  v60 = v33;
  v83 = v16[2];
  v34 = v16[3];
  v35 = v16[4];
  v36 = v16[6];
  v86 = v16[5];
  v87 = v36;
  v84 = v34;
  v85 = v35;
  v79 = v32;
  v80 = v13;
  v81 = v20;
  sub_1AACBC63C();
  sub_1AAEC8C04(&v83, v82);
  sub_1AAECDB5C();
  sub_1AAF8D194();
  v82[2] = v85;
  v82[3] = v86;
  v82[4] = v87;
  v82[0] = v83;
  v82[1] = v84;
  AGGraphSetValue();
  v82[0] = vdupq_n_s64(0x4049000000000000uLL);
  type metadata accessor for CGSize(0);
  v38 = v37;
  sub_1AAF8D194();
  IndirectAttribute2 = AGGraphCreateIndirectAttribute2();
  LODWORD(v82[0]) = IndirectAttribute2;
  sub_1AACBC63C();
  sub_1AAECDBB0();
  sub_1AAF8D194();
  LODWORD(v82[0]) = AGGraphCreateOffsetAttribute2();
  if (v70 != 4)
  {
    goto LABEL_22;
  }

  v57 = v38;
  v58 = v30;
  v59 = v15;
  v70 = v20;
  v40 = v67;
  v39 = v68;
  v41 = v66;
  (*(v68 + 16))(v67, v82, v66);
  v42 = v78 + *(State + 24);
  v43 = v64;
  v44 = v65;
  (*(v4 + 16))(v65, v42, v64);
  v45 = v69;
  sub_1AAF8EA94();
  (*(v4 + 8))(v44, v43);
  (*(v39 + 8))(v40, v41);
  result = sub_1AAF8E424();
  if ((result & 0x100000000) == 0)
  {
    v47 = result;
    LODWORD(v82[0]) = result;
    sub_1AACBC63C();
    sub_1AAECDC04();
    sub_1AAF8D194();
    AGGraphSetIndirectAttribute();
    v48 = sub_1AAF8E414();
    sub_1AAECDC58(&v83);
    (*(v62 + 8))(v45, v63);
    v49 = v61;
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();

    v50 = v75;
    v51 = *(v75 + 4);
    type metadata accessor for Item();
    v28 = swift_allocObject();
    v53 = v70;
    v52 = v71;
    *(v28 + 16) = v70;
    *(v28 + 24) = v52;
    *(v28 + 32) = v72;
    *(v28 + 40) = v73;
    *(v28 + 48) = v74;
    *(v28 + 56) = v58;
    *(v28 + 80) = v77;
    *(v28 + 88) = v51;
    *(v28 + 64) = v48;
    *(v28 + 68) = BYTE4(v48) & 1;
    *(v28 + 72) = v47;
    *(v28 + 76) = 0;
    *(v28 + 92) = 0;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v82[0] = *(v50 + 1);
    sub_1AADD3B44(v28, v53, isUniquelyReferenced_nonNull_native);

    sub_1AAECDC58(&v88);
    *(v50 + 1) = *&v82[0];
    return v28;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAECD134()
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 8);
  result = AGGraphGetValue();
  v3 = *(result + 8);
  if (*(v3 + 16))
  {

    v4 = sub_1AADB0938(v1);
    if (v5)
    {
      v6 = *(*(v3 + 56) + 8 * v4);

      v7 = *(v6 + 88);
      if (v7 == *(AGGraphGetValue() + 16))
      {
        v8 = *(v6 + 80);
        sub_1AAECE148(0, &qword_1ED9AD968, &type metadata for MeasurableView, MEMORY[0x1E69E62F8]);
        Value = AGGraphGetValue();
        if ((v8 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v8 < *(*Value + 16))
        {
          v10 = (*Value + 80 * v8);
          v15[0] = v10[2];
          v11 = v10[3];
          v12 = v10[4];
          v13 = v10[6];
          v16 = v10[5];
          v17 = v13;
          v15[1] = v11;
          v15[2] = v12;
          v14[7] = v12;
          v14[8] = v16;
          v14[9] = v13;
          v14[5] = v15[0];
          v14[6] = v11;
          sub_1AAEC8C04(v15, v14);
          AGGraphSetOutputValue();

          return sub_1AAECDC58(v15);
        }

        __break(1u);
      }
    }

    else
    {
    }
  }

  return result;
}

double sub_1AAECD350@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1AAECD368()
{
  sub_1AAECE148(0, &qword_1ED9AD968, &type metadata for MeasurableView, MEMORY[0x1E69E62F8]);
  AGGraphGetValue();

  v1 = sub_1AAECC6D0(v0);

  if (v1)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

void sub_1AAECD44C(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 256;
}

uint64_t sub_1AAECD460@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for CGSize(0);
  v2 = *AGGraphGetValue();
  result = AGGraphGetValue();
  v4 = *(result + 8);
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_1AAECD4D0@<X0>(void *a1@<X8>)
{
  v2 = sub_1AAF8E404();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Value = AGGraphGetValue();
  (*(v3 + 16))(v5, Value, v2);
  sub_1AAF8DFB4();
  v14[8] = v7 & 1;
  v14[0] = v8 & 1;
  sub_1AAF8E3F4();
  v10 = v9;
  v12 = v11;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v10;
  a1[1] = v12;
  return result;
}

uint64_t sub_1AAECD5FC()
{
  v0 = type metadata accessor for LayoutComputerContainer(0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AADFACA8(0);
  Value = AGGraphGetValue();
  v5 = *Value;
  v36 = *(*Value + 16);
  if (!v36)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v6 = *(v0 + 24);
  v35 = v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC8];
  while (v7 < *(v5 + 16))
  {
    v11 = v1;
    sub_1AAECDAD8(v35 + *(v1 + 72) * v7, v3);
    v12 = *v3;
    sub_1AAF8DFB4();
    v39 = v13 & 1;
    v38 = v14 & 1;
    sub_1AAF8E3F4();
    v16 = v15;
    v18 = v17;
    v19 = sub_1AAF8E404();
    (*(*(v19 - 8) + 8))(v3 + v6, v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v8;
    v21 = sub_1AADB0938(v12);
    v23 = v8[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      goto LABEL_20;
    }

    v27 = v22;
    if (v8[3] < v26)
    {
      sub_1AAD8FA58(v26, isUniquelyReferenced_nonNull_native);
      v21 = sub_1AADB0938(v12);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_22;
      }

LABEL_11:
      if (v27)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v32 = v21;
    sub_1AAD98B04();
    v21 = v32;
    if (v27)
    {
LABEL_3:
      v9 = v21;

      v8 = v37;
      v10 = (v37[7] + 16 * v9);
      *v10 = v16;
      v10[1] = v18;
      goto LABEL_4;
    }

LABEL_12:
    v8 = v37;
    v37[(v21 >> 6) + 8] |= 1 << v21;
    *(v8[6] + 8 * v21) = v12;
    v29 = (v8[7] + 16 * v21);
    *v29 = v16;
    v29[1] = v18;
    v30 = v8[2];
    v25 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v25)
    {
      goto LABEL_21;
    }

    v8[2] = v31;
LABEL_4:
    ++v7;
    v1 = v11;
    if (v36 == v7)
    {

      return v8;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1AAF905B4();
  __break(1u);
  return result;
}

uint64_t sub_1AAECD8E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AAECD5FC();
  *a1 = result;
  return result;
}

uint64_t sub_1AAECD90C(uint64_t result)
{
  v1 = 0;
  v2 = 1 << *(result + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(result + 64);
  v5 = (v2 + 63) >> 6;
  v6 = 0.0;
  while (v4)
  {
    v7 = v1;
LABEL_9:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v9 = *(result + 56) + ((v7 << 10) | (16 * v8));
    if (v6 <= *(v9 + 8))
    {
      v6 = *(v9 + 8);
    }
  }

  while (1)
  {
    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v7 >= v5)
    {
      return result;
    }

    v4 = *(result + 64 + 8 * v7);
    ++v1;
    if (v4)
    {
      v1 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAECD9AC(uint64_t result)
{
  v1 = 0;
  v2 = 1 << *(result + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(result + 64);
  v5 = (v2 + 63) >> 6;
  v6 = 0.0;
  while (v4)
  {
    v7 = v1;
LABEL_9:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v9 = *(result + 56);
    v10 = (v7 << 10) | (16 * v8);
    if (v6 <= *(v9 + v10))
    {
      v6 = *(v9 + v10);
    }
  }

  while (1)
  {
    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v7 >= v5)
    {
      return result;
    }

    v4 = *(result + 64 + 8 * v7);
    ++v1;
    if (v4)
    {
      v1 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAECDA68@<X0>(char **a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 27);
  v4 = Value[1];
  v8 = *Value;
  v9[0] = v4;
  *(v9 + 11) = v3;
  sub_1AADF9958(&v8, &v7);
  v5 = sub_1AAEC56D0();
  result = sub_1AADF9BF4(&v8);
  *a1 = v5;
  return result;
}

uint64_t sub_1AAECDAD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LayoutComputerContainer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AAECDB5C()
{
  result = qword_1ED9ADC00[0];
  if (!qword_1ED9ADC00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9ADC00);
  }

  return result;
}

unint64_t sub_1AAECDBB0()
{
  result = qword_1ED9AEE10;
  if (!qword_1ED9AEE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AEE10);
  }

  return result;
}

unint64_t sub_1AAECDC04()
{
  result = qword_1ED9AEC28;
  if (!qword_1ED9AEC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AEC28);
  }

  return result;
}

uint64_t sub_1AAECDCCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1AAECDDB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1AAECDE50()
{
  sub_1AAECDDB8(319, &qword_1ED9AF540, sub_1AADFACDC, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1AAECDDB8(319, qword_1ED9AF548, sub_1AADFAC74, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1AAECDF5C()
{
  sub_1AAECE000();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Subgraph(319);
    if (v1 <= 0x3F)
    {
      sub_1AAF8D974();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1AAECE000()
{
  if (!qword_1ED9AEE18)
  {
    sub_1AAECE148(255, &qword_1ED9AD968, &type metadata for MeasurableView, MEMORY[0x1E69E62F8]);
    v0 = sub_1AAF8D1A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9AEE18);
    }
  }
}

void sub_1AAECE0BC()
{
  if (!qword_1ED9AD8D0)
  {
    sub_1AAECE148(255, &qword_1ED9B29E0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED9AD8D0);
    }
  }
}

void sub_1AAECE148(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AAECE1CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = a4(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_1AAECE290(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = a5(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

void sub_1AAECE350(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_1AAECE0BC();
  if (v5 <= 0x3F)
  {
    a4(319);
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1AAECE3F4()
{
  result = qword_1ED9AF648;
  if (!qword_1ED9AF648)
  {
    type metadata accessor for MakeState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AF648);
  }

  return result;
}

uint64_t sub_1AAECE4AC(char **a1)
{
  v1 = a1;
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AADAB4A8(v2);
  }

  v3 = *(v2 + 2);
  v16[0] = (v2 + 32);
  v16[1] = v3;
  result = sub_1AAF90464();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v14 = v1;
      v8 = -1;
      v9 = 1;
      v10 = v2;
      do
      {
        v11 = v8;
        v12 = v10;
        do
        {
          if (*(v12 + 43) >= *(v12 + 4))
          {
            break;
          }

          memcpy(__dst, v12 + 344, sizeof(__dst));
          memcpy(v12 + 344, v12 + 32, 0x138uLL);
          result = memcpy(v12 + 32, __dst, 0x138uLL);
          v12 -= 312;
        }

        while (!__CFADD__(v11++, 1));
        ++v9;
        v10 += 312;
        --v8;
      }

      while (v9 != v3);
      v1 = v14;
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1AAF8F8A4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    __dst[0] = v7 + 32;
    __dst[1] = v6;
    sub_1AAECF5D8(__dst, v17, v16, v5);
    *(v7 + 16) = 0;
  }

  *v1 = v2;
  return result;
}

void *sub_1AAECE630()
{
  AGGraphGetValue();
  sub_1AADF7BD0();

  AGGraphGetValue();

  sub_1AADF9430(MEMORY[0x1E69E7CC0]);
  return sub_1AAECE6D0();
}

void *sub_1AAECE6D0()
{
  v1 = v0[1];
  v45 = *v0;
  v41 = v45;
  v42 = v1;
  v43 = v0[2];
  v44 = *(v0 + 6);
  v2 = *(*(&v45 + 1) + 16);
  if (v2)
  {
    v3 = (*(&v45 + 1) + 32);

    do
    {
      memcpy(__dst, v3, 0x259uLL);
      sub_1AAECFE48(__dst, v38);
      sub_1AAECEB34(__dst);
      sub_1AAECFEA4(__dst);
      v3 += 608;
      --v2;
    }

    while (v2);
    sub_1AAECFEF8(&v45);
  }

  v4 = v43;
  v5 = *(v43 + 16);
  if (v5)
  {
    v6 = sub_1AAD6C428(*(v43 + 16), 0);
    v7 = sub_1AADA96BC(v38, v6 + 32, v5, v4);
    swift_bridgeObjectRetain_n();
    sub_1AACC9C00();
    if (v7 == v5)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_9:
  v38[0] = v6;
  sub_1AAECE4AC(v38);

  v8 = *(v38[0] + 2);
  if (v8)
  {
    v9 = v42;
    v10 = v44;
    v11 = v8 - 1;
    for (i = v38[0] + 40; ; i += 312)
    {
      memcpy(v36, i - 8, sizeof(v36));
      v13 = v36[38];
      memcpy(__src, i, 0x121uLL);
      nullsub_1(__src, v14);
      memcpy(v38, __src, 0x121uLL);
      v38[37] = v13;
      v39 = 1;
      v40 = v9;
      sub_1AAD9BFEC(v36, v35);

      sub_1AAECFF4C(&v36[1], v35);

      v16 = sub_1AAF17C04(v15);
      v17 = *(v16 + 16);
      v18 = v10[2];
      v19 = v18 + v17;
      if (__OFADD__(v18, v17))
      {
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v20 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && (v22 = v10[3] >> 1, v22 >= v19))
      {
        if (*(v20 + 16))
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (v18 <= v19)
        {
          v27 = v18 + v17;
        }

        else
        {
          v27 = v18;
        }

        v10 = sub_1AAD6A1F4(isUniquelyReferenced_nonNull_native, v27, 1, v10);
        v22 = v10[3] >> 1;
        if (*(v20 + 16))
        {
LABEL_15:
          v23 = v22 - v10[2];
          sub_1AACFDAA8();
          if (v23 < v17)
          {
            goto LABEL_38;
          }

          swift_arrayInitWithCopy();

          if (v17)
          {
            v24 = v10[2];
            v25 = __OFADD__(v24, v17);
            v26 = v24 + v17;
            if (v25)
            {
              goto LABEL_39;
            }

            v10[2] = v26;
          }

          goto LABEL_24;
        }
      }

      if (v17)
      {
        goto LABEL_37;
      }

LABEL_24:
      sub_1AAECFFA8(v36);
      if (!v11)
      {

        v44 = v10;
        v17 = v10[2];
        if (v17)
        {
          goto LABEL_29;
        }

        goto LABEL_34;
      }

      --v11;
    }
  }

  v10 = v44;
  v17 = v44[2];
  if (v17)
  {
LABEL_29:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_40:
      v10 = sub_1AADB820C(v10);
    }

    v28 = 0;
    do
    {
      v29 = v10[2];
      v25 = __OFSUB__(v29, v28);
      v30 = v29 - v28;
      if (v25)
      {
        __break(1u);
        goto LABEL_36;
      }

      v31 = v30;
      sub_1AACFDAA8();
      v33 = v10 + ((*(*(v32 - 8) + 80) + 32) & ~*(*(v32 - 8) + 80)) + *(*(v32 - 8) + 72) * v28;
      *(v33 + 40) = v31;
      *v33 = v28++;
    }

    while (v17 != v28);
    v44 = v10;
  }

LABEL_34:

  return v10;
}

void *sub_1AAECEB08@<X0>(void *a1@<X8>)
{
  result = sub_1AAECE630();
  *a1 = result;
  return result;
}

uint64_t sub_1AAECEB34(uint64_t a1)
{
  v2 = v1;
  memcpy(__dst, (a1 + 8), 0x251uLL);
  result = sub_1AAECFFD8(__dst);
  if (!result)
  {
    v13 = sub_1AACBB6B8(__dst);
    memcpy(v21, v13, 0x251uLL);
    sub_1AAECFE48(a1, v27);
    sub_1AAECED34(v21);
    return sub_1AAECFEA4(a1);
  }

  if (result == 1)
  {
    v5 = sub_1AACBB6B8(__dst);
    v7 = *v5;
    v6 = v5[1];
    result = memcpy(__src, v5 + 2, sizeof(__src));
    v8 = v1[3];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      __break(1u);
    }

    else
    {
      v1[3] = v10;
      v11 = *(v6 + 16);
      if (v11)
      {
        sub_1AAECFE48(a1, v27);

        v12 = 32;
        do
        {
          memcpy(v27, (v6 + v12), 0x259uLL);
          sub_1AAECFE48(v27, v21);
          sub_1AAECEB34(v27);
          sub_1AAECFEA4(v27);
          v12 += 608;
          --v11;
        }

        while (v11);
      }

      else
      {
        sub_1AAECFE48(a1, v27);
      }

      v14 = v1[3];
      if (v14 == 1)
      {
        v20[0] = v7;
        v20[1] = v6;
        memcpy(&v20[2], __src, 0x111uLL);
        nullsub_1(v20, v15);
        v16 = v1[5];
        v17 = v1[2];
        memcpy(v23, v20, sizeof(v23));
        v24 = v16;
        v25 = 0;
        v26 = v17;
        sub_1AAECFE48(a1, v21);

        v19 = sub_1AAF17C04(v18);
        sub_1AADC939C(v19);
        sub_1AAECFEA4(a1);

        v2[5] = MEMORY[0x1E69E7CC0];
      }

      else
      {
        result = sub_1AAECFEA4(a1);
      }

      if (!__OFSUB__(v14, 1))
      {
        v2[3] = v14 - 1;
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1AAECED34(_OWORD *a1)
{
  if (v1[3] < 1)
  {
    v8 = *(a1 + 312);
    v9 = *(a1 + 280);
    v68 = *(a1 + 296);
    v69 = v8;
    v10 = *(a1 + 312);
    v70 = *(a1 + 328);
    v11 = *(a1 + 248);
    v64 = *(a1 + 232);
    v65 = v11;
    v12 = *(a1 + 280);
    v66 = *(a1 + 264);
    v67 = v12;
    v13 = *(a1 + 216);
    v62 = *(a1 + 200);
    v63 = v13;
    v78 = v68;
    v79 = v10;
    v80 = *(a1 + 328);
    v14 = *(a1 + 248);
    v74 = *(a1 + 232);
    v75 = v14;
    v71 = *(a1 + 43);
    v81 = *(a1 + 43);
    v76 = v66;
    v77 = v9;
    v15 = *(a1 + 216);
    v72 = *(a1 + 200);
    v73 = v15;
    if (sub_1AAED0054(&v72) == 1)
    {
      sub_1AAED006C(__src);
      sub_1AACB61E4(0, &qword_1EB423B58, &type metadata for ChartAccessibilityContent.LeafItem, MEMORY[0x1E69E6F90]);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1AAF92AB0;
      memcpy((v16 + 32), a1, 0x251uLL);
      v17 = v1[2];
      memcpy(__dst, __src, 0x121uLL);
      __dst[37] = v16;
      LOBYTE(__dst[38]) = 0;
      __dst[39] = v17;
      sub_1AAECFFF8(a1, v82);

      v19 = sub_1AAF17C04(v18);
      return sub_1AADC939C(v19);
    }

    v85[6] = v78;
    v85[7] = v79;
    v85[8] = v80;
    v86 = v81;
    v85[2] = v74;
    v85[3] = v75;
    v85[4] = v76;
    v85[5] = v77;
    v85[0] = v72;
    v85[1] = v73;
    v20 = v1[4];
    if (*(v20 + 16))
    {
      v21 = v1;
      v58 = v68;
      v59 = v69;
      v60 = v70;
      v61 = v71;
      v54 = v64;
      v55 = v65;
      v56 = v66;
      v57 = v67;
      v52 = v62;
      v53 = v63;
      sub_1AAD81BF4(&v52, v82);
      sub_1AADB0D50(v85);
      if (v22)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v84 = v1[4];
        v24 = v84;
        v26 = sub_1AADB0D50(v85);
        v27 = *(v24 + 16);
        v28 = (v25 & 1) == 0;
        v29 = v27 + v28;
        if (__OFADD__(v27, v28))
        {
          __break(1u);
        }

        else
        {
          v2 = v25;
          if (*(v24 + 24) < v29)
          {
            sub_1AAD8FDBC(v29, isUniquelyReferenced_nonNull_native);
            v30 = sub_1AADB0D50(v85);
            if ((v2 & 1) != (v31 & 1))
            {
              goto LABEL_39;
            }

            v26 = v30;
            v32 = v21;
            if ((v2 & 1) == 0)
            {
              goto LABEL_23;
            }

LABEL_20:
            memmove(v82, (*(v84 + 56) + 312 * v26), 0x138uLL);
            nullsub_1(v82, v41);
LABEL_24:
            memcpy(v51, v82, sizeof(v51));
            v42 = v83;
            memcpy(__src, v51, sizeof(__src));
            v50 = v83;
            if (sub_1AAED01A4(__src) != 1)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v42 = sub_1AAD6AD20(0, *(v42 + 2) + 1, 1, v42);
              }

              v44 = *(v42 + 2);
              v43 = *(v42 + 3);
              if (v44 >= v43 >> 1)
              {
                v42 = sub_1AAD6AD20((v43 > 1), v44 + 1, 1, v42);
              }

              *(v42 + 2) = v44 + 1;
              memcpy(&v42[600 * v44 + 32], a1, 0x251uLL);
              memcpy(v47, v51, 0x130uLL);
              *&v47[19] = v42;
              memcpy(v48, v47, sizeof(v48));
              if (sub_1AAED01A4(v48) == 1)
              {
                if ((v2 & 1) == 0)
                {
                  sub_1AAECFFF8(a1, v82);
                  sub_1AAED01BC(&v62, qword_1ED9B2098, &type metadata for AccessibilityDataField);
                  v45 = v84;
                  goto LABEL_37;
                }

                v45 = v84;
                v46 = *(v84 + 48) + 152 * v26;
                sub_1AAECFFF8(a1, v82);
                sub_1AAD81C50(v46);
                sub_1AAD935F0(v26, v45);
              }

              else
              {
                v45 = v84;
                if ((v2 & 1) == 0)
                {
                  memcpy(__dst, v47, 0x138uLL);
                  sub_1AADD4660(v26, v85, __dst, v84);
                  sub_1AAECFFF8(a1, v82);
                  sub_1AAED009C(v47, v82, &qword_1EB426B20, &type metadata for ChartAccessibilityElements.GroupEntry);
                  goto LABEL_37;
                }

                memmove((*(v84 + 56) + 312 * v26), v47, 0x138uLL);
                sub_1AAECFFF8(a1, v82);
                sub_1AAED009C(v47, v82, &qword_1EB426B20, &type metadata for ChartAccessibilityElements.GroupEntry);
              }

              sub_1AAED01BC(&v62, qword_1ED9B2098, &type metadata for AccessibilityDataField);
LABEL_37:
              memcpy(v82, v51, sizeof(v82));
              v83 = v42;
              result = sub_1AAED01BC(v82, &qword_1EB426B20, &type metadata for ChartAccessibilityElements.GroupEntry);
              v32[4] = v45;
              return result;
            }

            __break(1u);
LABEL_39:
            result = sub_1AAF905B4();
            __break(1u);
            return result;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            v32 = v21;
            if (v25)
            {
              goto LABEL_20;
            }

LABEL_23:
            sub_1AAED0170(v82);
            goto LABEL_24;
          }
        }

        sub_1AAD98C90();
        v32 = v21;
        if (v2)
        {
          goto LABEL_20;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v82[6] = v68;
      v82[7] = v69;
      v82[8] = v70;
      *&v82[9] = v71;
      v82[2] = v64;
      v82[3] = v65;
      v82[4] = v66;
      v82[5] = v67;
      v82[0] = v62;
      v82[1] = v63;
      sub_1AAD81BF4(v82, __dst);
    }

    v33 = sub_1AAED9CA4(MEMORY[0x1E69E7CC0]);
    v35 = v34;
    v84 = a1[36];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = v84;
    LOBYTE(v57) = 0;
    memset(v47, 0, 64);
    v47[4] = v84;
    LOBYTE(v47[5]) = 0;
    sub_1AAED009C(&v84, v82, &qword_1ED9B2A98, MEMORY[0x1E69E6158]);
    sub_1AAE0F994(&v52, v82);
    sub_1AAE0F9F0(v47);
    *&v48[96] = v78;
    *&v48[112] = v79;
    *&v48[128] = v80;
    *&v48[144] = v81;
    *&v48[32] = v74;
    *&v48[48] = v75;
    *&v48[64] = v76;
    *&v48[80] = v77;
    *v48 = v72;
    *&v48[16] = v73;
    nullsub_1(v48, v36);
    LODWORD(__src[0]) = v33;
    *(&__src[0] + 1) = v35;
    __src[3] = v54;
    __src[4] = v55;
    __src[5] = v56;
    LOBYTE(__src[6]) = v57;
    __src[1] = v52;
    __src[2] = v53;
    *(&__src[6] + 8) = *v48;
    *(&__src[7] + 8) = *&v48[16];
    *(&__src[11] + 8) = *&v48[80];
    *(&__src[10] + 8) = *&v48[64];
    *(&__src[9] + 8) = *&v48[48];
    *(&__src[8] + 8) = *&v48[32];
    *(&__src[15] + 1) = *&v48[144];
    *(&__src[14] + 8) = *&v48[128];
    *(&__src[13] + 8) = *&v48[112];
    *(&__src[12] + 8) = *&v48[96];
    v37 = a1[1];
    __src[16] = *a1;
    __src[17] = v37;
    LOBYTE(__src[18]) = 0;
    v38 = *(v20 + 16);
    sub_1AACB61E4(0, &qword_1EB423B58, &type metadata for ChartAccessibilityContent.LeafItem, MEMORY[0x1E69E6F90]);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1AAF92AB0;
    memcpy((v39 + 32), a1, 0x251uLL);
    memcpy(&__dst[1], __src, 0x121uLL);
    __dst[0] = v38;
    __dst[38] = v39;
    sub_1AAECFFF8(a1, v82);
    sub_1AAED009C(&v62, v82, qword_1ED9B2098, &type metadata for AccessibilityDataField);
    sub_1AAECFF4C(__src, v82);
    v40 = swift_isUniquelyReferenced_nonNull_native();
    *&v82[0] = v1[4];
    sub_1AADD3CA4(__dst, v85, v40);
    sub_1AAED01BC(&v62, qword_1ED9B2098, &type metadata for AccessibilityDataField);
    result = sub_1AAED011C(__src);
    v1[4] = *&v82[0];
    return result;
  }

  v4 = v1[5];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1AAD6AD20(0, *(v4 + 2) + 1, 1, v4);
  }

  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_1AAD6AD20((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  memcpy(&v4[600 * v6 + 32], a1, 0x251uLL);
  v1[5] = v4;
  return sub_1AAECFFF8(a1, v82);
}

uint64_t sub_1AAECF5D8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v85 = result;
  v88 = a3;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_90:
    v86 = *v85;
    if (!*v85)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_124:
      result = sub_1AADAA0A4(v7);
      v7 = result;
    }

    v76 = (v7 + 16);
    v77 = *(v7 + 16);
    if (v77 >= 2)
    {
      while (*v88)
      {
        v78 = (v7 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_1AAECFBC0((*v88 + 312 * *v78), (*v88 + 312 * *v80), (*v88 + 312 * v81), v86);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_116;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_117;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_118;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_128;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*v88 + 312 * v6);
      v10 = 312 * v8;
      v11 = (*v88 + 312 * v8);
      v12 = *v11;
      v13 = v8 + 2;
      v14 = v11 + 78;
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v17 = (v9 < v12) ^ (*v14 >= v15);
        ++v13;
        v14 += 39;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_121;
      }

      if (v8 < v6)
      {
        v18 = 312 * v6 - 312;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v21 = *v88;
            if (!*v88)
            {
              goto LABEL_127;
            }

            memcpy(__dst, (v21 + v10), sizeof(__dst));
            memmove((v21 + v10), (v21 + v18), 0x138uLL);
            result = memcpy((v21 + v18), __dst, 0x138uLL);
          }

          ++v20;
          v18 -= 312;
          v10 += 312;
        }

        while (v20 < v19);
        v5 = v88[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_120;
      }

      if (v6 - v8 < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v6 < v8)
    {
      goto LABEL_119;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1AAD68568(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v29 = *(v7 + 16);
    v28 = *(v7 + 24);
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      result = sub_1AAD68568((v28 > 1), v29 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v30;
    v31 = v7 + 32;
    v32 = (v7 + 32 + 16 * v29);
    *v32 = v8;
    v32[1] = v6;
    v86 = *v85;
    if (!*v85)
    {
      goto LABEL_129;
    }

    if (v29)
    {
      while (1)
      {
        v33 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v34 = *(v7 + 32);
          v35 = *(v7 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_59:
          if (v37)
          {
            goto LABEL_106;
          }

          v50 = (v7 + 16 * v30);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_108;
          }

          v56 = (v31 + 16 * v33);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_113;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v33 = v30 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v30 < 2)
        {
          goto LABEL_114;
        }

        v60 = (v7 + 16 * v30);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_74:
        if (v55)
        {
          goto LABEL_110;
        }

        v63 = (v31 + 16 * v33);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_112;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_81:
        if (v33 - 1 >= v30)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (!*v88)
        {
          goto LABEL_126;
        }

        v71 = (v31 + 16 * (v33 - 1));
        v72 = *v71;
        v73 = (v31 + 16 * v33);
        v74 = v73[1];
        sub_1AAECFBC0((*v88 + 312 * *v71), (*v88 + 312 * *v73), (*v88 + 312 * v74), v86);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_101;
        }

        if (v33 > *(v7 + 16))
        {
          goto LABEL_102;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v7 + 16);
        if (v33 >= v75)
        {
          goto LABEL_103;
        }

        v30 = v75 - 1;
        result = memmove((v31 + 16 * v33), v73 + 2, 16 * (v75 - 1 - v33));
        *(v7 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v31 + 16 * v30;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_104;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_105;
      }

      v45 = (v7 + 16 * v30);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_107;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_109;
      }

      if (v49 >= v41)
      {
        v67 = (v31 + 16 * v33);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_115;
        }

        if (v36 < v70)
        {
          v33 = v30 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_3:
    v5 = v88[1];
    if (v6 >= v5)
    {
      goto LABEL_90;
    }
  }

  if (__OFADD__(v8, a4))
  {
    goto LABEL_122;
  }

  v86 = v7;
  if (v8 + a4 >= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v8 + a4;
  }

  if (v7 < v8)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  if (v6 == v7)
  {
LABEL_38:
    v7 = v86;
    goto LABEL_39;
  }

  v22 = *v88;
  v23 = *v88 + 312 * v6;
  v83 = v8;
  v24 = v8 - v6;
LABEL_31:
  v25 = v24;
  v26 = v23;
  while (1)
  {
    if (*v26 >= *(v26 - 39))
    {
LABEL_30:
      ++v6;
      v23 += 312;
      --v24;
      if (v6 != v7)
      {
        goto LABEL_31;
      }

      v6 = v7;
      v8 = v83;
      goto LABEL_38;
    }

    if (!v22)
    {
      break;
    }

    memcpy(__dst, v26, sizeof(__dst));
    memcpy(v26, v26 - 39, 0x138uLL);
    result = memcpy(v26 - 39, __dst, 0x138uLL);
    v26 -= 39;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
  return result;
}

uint64_t sub_1AAECFBC0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 312;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 312;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[312 * v11] <= a4)
    {
      memmove(a4, __src, 312 * v11);
    }

    v12 = &v4[312 * v11];
    if (v10 >= 312 && v6 > v7)
    {
LABEL_21:
      v15 = v6 - 312;
      v5 -= 312;
      do
      {
        v16 = v5 + 312;
        v17 = (v12 - 312);
        if (*(v12 - 39) < *v15)
        {
          if (v16 != v6)
          {
            memmove(v5, v6 - 312, 0x138uLL);
          }

          if (v12 <= v4 || (v6 -= 312, v15 <= v7))
          {
            v6 = v15;
            goto LABEL_33;
          }

          goto LABEL_21;
        }

        if (v16 != v12)
        {
          memmove(v5, v12 - 312, 0x138uLL);
        }

        v5 -= 312;
        v12 -= 312;
      }

      while (v17 > v4);
      v12 = v17;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[312 * v9] <= a4)
    {
      memmove(a4, __dst, 312 * v9);
    }

    v12 = &v4[312 * v9];
    if (v8 < 312)
    {
      v6 = v7;
    }

    else
    {
      if (v6 < v5)
      {
        while (*v6 < *v4)
        {
          v13 = v6;
          v14 = v7 == v6;
          v6 += 312;
          if (!v14)
          {
            goto LABEL_12;
          }

LABEL_13:
          v7 += 312;
          if (v4 >= v12 || v6 >= v5)
          {
            goto LABEL_15;
          }
        }

        v13 = v4;
        v14 = v7 == v4;
        v4 += 312;
        if (v14)
        {
          goto LABEL_13;
        }

LABEL_12:
        memmove(v7, v13, 0x138uLL);
        goto LABEL_13;
      }

LABEL_15:
      v6 = v7;
    }
  }

LABEL_33:
  v18 = (v12 - v4) / 312;
  if (v6 != v4 || v6 >= &v4[312 * v18])
  {
    memmove(v6, v4, 312 * v18);
  }

  return 1;
}

uint64_t sub_1AAECFFD8(uint64_t a1)
{
  v1 = *(a1 + 592);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1AAED0054(void *a1)
{
  if ((*a1 >> 4) > 0x80000000)
  {
    return -(*a1 >> 4);
  }

  else
  {
    return 0;
  }
}

double sub_1AAED006C(uint64_t a1)
{
  *(a1 + 288) = 0;
  result = 0.0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1AAED009C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AACB61E4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

double sub_1AAED0170(uint64_t a1)
{
  *(a1 + 304) = 0;
  result = 0.0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1AAED01A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AAED01BC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AACB61E4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AAED0244(void *a1)
{
  if ((*a1 >> 4) > 0x80000000)
  {
    return -(*a1 >> 4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AAED0264(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 312))
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

uint64_t sub_1AAED02AC(uint64_t result, int a2, int a3)
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 312) = 1;
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

    *(result + 312) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AAED0360()
{
  result = qword_1ED9AF810;
  if (!qword_1ED9AF810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AF810);
  }

  return result;
}

uint64_t sub_1AAED03B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1AAED0410(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1AAED04A0(uint64_t a1, uint64_t a2)
{
  v12[1] = a2;
  v17 = *MEMORY[0x1E69E9840];
  sub_1AAED98DC();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1AACAE190(0, &qword_1ED9ADB90, type metadata accessor for AGAccessibilityRenderer, MEMORY[0x1E697DDB8]);
  sub_1AAF8D944();
  if (*(*(type metadata accessor for AGChartRendererContent(0) - 8) + 64))
  {
    type metadata accessor for AGAccessibilityRenderer(0);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  sub_1AAF8D944();
  v13 = AGGraphCreateOffsetAttribute2();
  v14 = OffsetAttribute2;
  v15 = 0;
  v16 = 1;
  sub_1AACBC63C();
  sub_1AAED9950();
  v7 = sub_1AAF8D194();
  sub_1AAF8D944();
  type metadata accessor for AGAccessibilityRenderer(0);
  v8 = AGGraphCreateOffsetAttribute2();
  v13 = v7;
  v14 = v8;
  sub_1AACBC63C();
  sub_1AAED0360();
  v9 = sub_1AAF8D194();
  v13 = v7;
  v14 = OffsetAttribute2;
  LODWORD(v15) = v8;
  sub_1AACBC63C();
  sub_1AACAE190(0, &qword_1ED9B29A8, sub_1AACFD9B4, MEMORY[0x1E69E6720]);
  sub_1AAED99A4();
  v10 = sub_1AAF8D194();
  v13 = v9;
  v14 = v10;
  sub_1AACBC63C();
  sub_1AAED9BCC(0, &qword_1ED9B2C80, MEMORY[0x1E697F960]);
  sub_1AAED99F8();
  v13 = sub_1AAF8D194();
  if (v5 != 4)
  {
    __break(1u);
  }

  (*(v4 + 16))(&v12[-2], &v13, v3);
  sub_1AAED9A4C();
  sub_1AAF8EAA4();
  return (*(v4 + 8))(&v12[-2], v3);
}

uint64_t sub_1AAED0870@<X0>(uint64_t a1@<X8>)
{
  sub_1AAED9BCC(0, &qword_1ED9B2CF0, MEMORY[0x1E697F948]);
  v47 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v50 = &v38 - v3;
  v4 = sub_1AAF8E644();
  v45 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD597A8();
  v49 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AAD596F4();
  v46 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD595C0();
  v48 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACAE190(0, &qword_1ED9B29A8, sub_1AACFD9B4, MEMORY[0x1E69E6720]);
  v18 = *AGGraphGetValue();
  if (v18)
  {
    v40 = v18;
    *v9 = sub_1AAF8F124();
    v9[1] = v19;
    sub_1AAED9C3C();
    v39 = v4;
    v52 = *AGGraphGetValue();
    swift_getKeyPath();
    v41 = v17;
    sub_1AACFE60C(0);
    v43 = v15;
    sub_1AAD598D4();
    v42 = v11;
    v20 = v13;
    sub_1AACECBA4(&qword_1ED9B2A38, sub_1AACFE60C);
    v44 = a1;
    sub_1AAD59ABC();

    sub_1AAF8EFC4();
    sub_1AAF8E634();
    v21 = sub_1AACECBA4(&qword_1ED9B2B38, sub_1AAD597A8);
    v22 = v49;
    sub_1AAF8EB94();
    v45[1](v6, v39);
    sub_1AACFDFAC(v9, sub_1AAD597A8);
    v23 = type metadata accessor for ChartAXAudiograph();
    v24 = swift_allocObject();
    v25 = v40;
    *(v24 + 16) = v40;
    v51 = v24;
    v45 = v25;
    v52 = v22;
    v53 = v21;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v27 = sub_1AACECBA4(qword_1ED9B6110, type metadata accessor for ChartAXAudiograph);
    v28 = v41;
    v29 = v46;
    sub_1AAF8EBD4();

    (*(v42 + 8))(v20, v29);
    v30 = v43;
    v31 = v48;
    (*(v43 + 16))(v50, v28, v48);
    swift_storeEnumTagMultiPayload();
    v52 = v29;
    v53 = v23;
    v54 = OpaqueTypeConformance2;
    v55 = v27;
    swift_getOpaqueTypeConformance2();
    sub_1AAF8E374();

    return (*(v30 + 8))(v28, v31);
  }

  else
  {
    *v9 = sub_1AAF8F124();
    v9[1] = v33;
    sub_1AAED9C3C();
    v52 = *AGGraphGetValue();
    swift_getKeyPath();
    sub_1AACFE60C(0);
    sub_1AAD598D4();
    sub_1AACECBA4(&qword_1ED9B2A38, sub_1AACFE60C);
    sub_1AAD59ABC();

    sub_1AAF8EFC4();
    sub_1AAEDA3C0(v9, v50, sub_1AAD597A8);
    swift_storeEnumTagMultiPayload();
    v34 = type metadata accessor for ChartAXAudiograph();
    v35 = sub_1AACECBA4(&qword_1ED9B2B38, sub_1AAD597A8);
    v52 = v49;
    v53 = v35;
    v36 = swift_getOpaqueTypeConformance2();
    v37 = sub_1AACECBA4(qword_1ED9B6110, type metadata accessor for ChartAXAudiograph);
    v52 = v46;
    v53 = v34;
    v54 = v36;
    v55 = v37;
    swift_getOpaqueTypeConformance2();
    sub_1AAF8E374();
    return sub_1AACFDFAC(v9, sub_1AAD597A8);
  }
}

uint64_t sub_1AAED1064(double *a1)
{
  sub_1AAD598D4();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[1];
  v6 = a1[2];
  v9 = a1[3];
  v8 = a1[4];
  v23.origin.x = v7;
  v23.origin.y = v6;
  v23.size.width = v9;
  v23.size.height = v8;
  if (CGRectGetWidth(v23) <= 0.0)
  {
    v24.origin.x = v7;
    v24.origin.y = v6;
    v24.size.width = v9;
    v24.size.height = v8;
    v7 = CGRectGetMidX(v24) + -0.5;
    v9 = 1.0;
  }

  v25.origin.x = v7;
  v25.origin.y = v6;
  v25.size.width = v9;
  v25.size.height = v8;
  if (CGRectGetHeight(v25) <= 0.0)
  {
    v26.origin.x = v7;
    v26.origin.y = v6;
    v26.size.width = v9;
    v26.size.height = v8;
    CGRectGetMidY(v26);
  }

  sub_1AAF8E944();
  v10 = v22;
  sub_1AACFDAA8();
  v12 = *(v11 + 36);
  v13 = *(v3 + 36);
  v14 = sub_1AAF8E734();
  v15 = *(*(v14 - 8) + 16);
  v18 = v21;
  v19 = v20;
  v15(&v5[v13], a1 + v12, v14);
  v16 = v18;
  *v5 = v19;
  *(v5 + 1) = v16;
  v5[32] = v10;
  v5[33] = 1;
  sub_1AAF8DF64();
  return sub_1AACFDFAC(v5, sub_1AAD598D4);
}

uint64_t sub_1AAED123C@<X0>(uint64_t a1@<X8>)
{
  sub_1AAED9BCC(0, &qword_1ED9B2C80, MEMORY[0x1E697F960]);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void sub_1AAED1330()
{
  if (*(v0 + 288))
  {
    v1 = *(v0 + 8);
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    v6 = *(v1 + 16);
    if (v6)
    {
      v7 = 0;
      v8 = v1 + 40;
      do
      {
        v9 = (v8 + 608 * v7);
        for (i = v7; ; ++i)
        {
          if (i >= v6)
          {
            __break(1u);
LABEL_17:
            __break(1u);
            return;
          }

          memcpy(__dst, v9 - 8, 0x259uLL);
          v7 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_17;
          }

          memcpy(v19, v9, 0x251uLL);
          v11 = sub_1AAECFFD8(v19);
          if (v11 != 2)
          {
            break;
          }

          v9 += 608;
          if (v7 == v6)
          {
            return;
          }
        }

        if (v11)
        {
          v12 = sub_1AACBB6B8(v19);
          memcpy(v20, v12, sizeof(v20));
          v13 = sub_1AAECFE48(__dst, &v17);
          v26.origin.x = sub_1AAED1330(v13);
          v26.origin.y = v14;
          v26.size.width = v15;
          v26.size.height = v16;
          v23.origin.x = x;
          v23.origin.y = y;
          v23.size.width = width;
          v23.size.height = height;
          v24 = CGRectUnion(v23, v26);
          x = v24.origin.x;
          y = v24.origin.y;
          width = v24.size.width;
          height = v24.size.height;
          sub_1AAECFEA4(__dst);
        }

        else
        {
          v25 = *sub_1AACBB6B8(v19);
          v21.origin.x = x;
          v21.origin.y = y;
          v21.size.width = width;
          v21.size.height = height;
          v22 = CGRectUnion(v21, v25);
          x = v22.origin.x;
          y = v22.origin.y;
          width = v22.size.width;
          height = v22.size.height;
        }
      }

      while (v7 != v6);
    }
  }
}

uint64_t sub_1AAED14D8()
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for CollectedChartContent(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ChartAccessibilityContent.Builder(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  v9 = v8;
  v10 = *Value;
  result = AGGraphGetOutputValue();
  if (!result || (v9 & 1) != 0 && ((*(v0 + 16) & 1) != 0 || *(v0 + 8) != v10))
  {
    type metadata accessor for AGChartRendererContent(0);
    v12 = AGGraphGetValue();
    sub_1AAEDA3C0(v12, v6, type metadata accessor for AGChartRendererContent);
    v13 = v4[5];
    v14 = MEMORY[0x1E69E7CC0];
    *&v6[v13] = sub_1AADF95EC(MEMORY[0x1E69E7CC0]);
    v15 = v4[6];
    *&v6[v15] = sub_1AADF89F0(v14);
    v6[v4[7]] = 0;
    sub_1AAEDA3C0(v6, v3, type metadata accessor for CollectedChartContent);
    v16 = v0;
    v17 = sub_1AAED1728(v3);
    v19 = v18;
    sub_1AACFDFAC(v3, type metadata accessor for CollectedChartContent);
    sub_1AACFDFAC(v6, type metadata accessor for AGChartRendererContent);

    v20[2] = v17;
    v21 = v19;
    AGGraphSetOutputValue();

    *(v16 + 8) = v10;
    *(v16 + 16) = 0;
  }

  return result;
}

uint64_t sub_1AAED1728(uint64_t a1)
{
  v3 = type metadata accessor for CollectedChartContent.Primitive(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CollectedChartContent(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v50 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v50 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v50 - v17;
  sub_1AAEDA3C0(a1, v50 - v17, type metadata accessor for CollectedChartContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1AAED9F30();
      v23 = v22;
      v24 = swift_projectBox();
      sub_1AAEDA3C0(v24 + *(v23 + 48), v15, type metadata accessor for CollectedChartContent);
      v20 = sub_1AAED1728(v15);
      sub_1AACFDFAC(v15, type metadata accessor for CollectedChartContent);
    }

    else
    {
      sub_1AAE0FA44();
      v43 = v42;
      v44 = swift_projectBox();
      v45 = *(v43 + 48);
      sub_1AAEDA3C0(v44, v12, type metadata accessor for CollectedChartContent);
      sub_1AAED9E28(v44 + v45, v65);
      sub_1AAED9E28(v65, v62);
      if (v64 == 1)
      {
        v61 = v63;
        v58 = v62[2];
        v59 = v62[3];
        v60 = v62[4];
        v56 = v62[0];
        v57 = v62[1];
        if (v63 == 1)
        {
          sub_1AAE0F9F0(&v56);
        }

        else
        {
          *(v1 + *(type metadata accessor for ChartAccessibilityContent.Builder(0) + 28)) = 1;
          v46 = sub_1AAED1728(v12);
          v48 = v47;
          sub_1AAE2D7EC(v51);
          *&v55[48] = v58;
          *&v55[64] = v59;
          *&v55[80] = v60;
          v55[96] = v61;
          *&v55[16] = v56;
          *&v55[32] = v57;
          *(&v54[7] + 7) = v51[7];
          *(&v54[6] + 7) = v51[6];
          *(&v54[8] + 7) = v51[8];
          *(&v54[9] + 7) = v52;
          *(&v54[2] + 7) = v51[2];
          *(&v54[3] + 7) = v51[3];
          *(&v54[4] + 7) = v51[4];
          *(&v54[5] + 7) = v51[5];
          *(v54 + 7) = v51[0];
          *(&v54[1] + 7) = v51[1];
          v53 = 1;
          *v55 = v46;
          *&v55[8] = v48;
          *&v55[193] = v54[6];
          *&v55[209] = v54[7];
          *&v55[225] = v54[8];
          *&v55[129] = v54[2];
          *&v55[145] = v54[3];
          *&v55[161] = v54[4];
          *&v55[177] = v54[5];
          *&v55[97] = v54[0];
          *&v55[113] = v54[1];
          *&v55[240] = *(&v54[8] + 15);
          memset(&v55[256], 0, 32);
          v55[288] = 1;
          sub_1AAED9F0C(v55);
          memcpy(&v66[1], v55, 0x251uLL);
          sub_1AAEDB63C(0, &qword_1ED9AD6E8, &type metadata for ChartAccessibilityContent.Item, MEMORY[0x1E69E6F90]);
          v49 = swift_allocObject();
          *(v49 + 16) = xmmword_1AAF92AB0;
          *(v49 + 32) = 0;
          memcpy((v49 + 36), v66, 0x255uLL);
        }

        sub_1AAED9E84(v65);
        sub_1AACFDFAC(v12, type metadata accessor for CollectedChartContent);

        return 0;
      }

      v20 = sub_1AAED1728(v12);
      sub_1AAED9E84(v65);
      sub_1AACFDFAC(v12, type metadata accessor for CollectedChartContent);
      sub_1AACFDFAC(v62 + 8, sub_1AAED9ED8);
    }

    goto LABEL_29;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1AACD5964(v18, v5, type metadata accessor for CollectedChartContent.Primitive);
    sub_1AAED1EBC(v5);
    v20 = v66[0];
    sub_1AAEDB63C(0, &qword_1ED9AD6E8, &type metadata for ChartAccessibilityContent.Item, MEMORY[0x1E69E6F90]);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1AAF92AB0;
    memcpy((v21 + 32), v66, 0x259uLL);
    sub_1AACFDFAC(v5, type metadata accessor for CollectedChartContent.Primitive);
    return v20;
  }

  v25 = *v18;
  v26 = *(*v18 + 16);
  v27 = *(v26 + 16);

  v28 = sub_1AAD6AFB8(0, v27, 0, MEMORY[0x1E69E7CC0]);
  v29 = *(v26 + 16);
  if (!v29)
  {
LABEL_28:

    v20 = sub_1AAED9CA4(v28);
LABEL_29:

    return v20;
  }

  v50[1] = v26;
  v50[2] = v25;
  v30 = v26 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v31 = *(v7 + 72);
  while (1)
  {
    sub_1AAEDA3C0(v30, v9, type metadata accessor for CollectedChartContent);
    sub_1AAED1728(v9);
    v34 = v33;
    result = sub_1AACFDFAC(v9, type metadata accessor for CollectedChartContent);
    v35 = *(v34 + 16);
    v36 = *(v28 + 2);
    v37 = v36 + v35;
    if (__OFADD__(v36, v35))
    {
      break;
    }

    if (v37 > *(v28 + 3) >> 1)
    {
      if (v36 <= v37)
      {
        v41 = v36 + v35;
      }

      else
      {
        v41 = *(v28 + 2);
      }

      result = sub_1AAD6AFB8(1, v41, 1, v28);
      v28 = result;
      v36 = *(result + 16);
      if (*(v34 + 16))
      {
LABEL_13:
        if (((*(v28 + 3) >> 1) - v36) < v35)
        {
          goto LABEL_34;
        }

        swift_arrayInitWithCopy();

        if (v35)
        {
          v38 = *(v28 + 2);
          v39 = __OFADD__(v38, v35);
          v40 = v38 + v35;
          if (v39)
          {
            goto LABEL_35;
          }

          *(v28 + 2) = v40;
        }

        goto LABEL_9;
      }
    }

    else if (v35)
    {
      goto LABEL_13;
    }

    if (v35)
    {
      goto LABEL_33;
    }

LABEL_9:
    v30 += v31;
    if (!--v29)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

void *sub_1AAED1EBC(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v936 = *MEMORY[0x1E69E9840];
  if (*(v2 + 640) <= 0.0)
  {
    goto LABEL_107;
  }

  v5 = v2;
  v6 = v1 + *(type metadata accessor for AGChartRendererContent(0) + 28);
  v7 = *(v6 + 16);
  v8 = *(v6 + 40);
  v9 = *(v5 + 8);
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      v760 = v4;
      v98 = *(v5 + 128);
      v923 = *(v5 + 112);
      v924[0] = v98;
      *(v924 + 9) = *(v5 + 137);
      v99 = *(v5 + 64);
      v919 = *(v5 + 48);
      v920 = v99;
      v100 = *(v5 + 96);
      v921 = *(v5 + 80);
      v922 = v100;
      v101 = *(v5 + 32);
      v917 = *(v5 + 16);
      v918 = v101;
      v102 = (v5 + 160);
      v103 = *(v5 + 272);
      v932 = *(v5 + 256);
      v933[0] = v103;
      *(v933 + 9) = *(v5 + 281);
      v104 = *(v5 + 208);
      v928 = *(v5 + 192);
      v929 = v104;
      v105 = *(v5 + 240);
      v930 = *(v5 + 224);
      v931 = v105;
      v106 = *(v5 + 176);
      v926 = *(v5 + 160);
      v927 = v106;
      v107 = sub_1AAE63A88(&v917, &v926);
      if (v107)
      {
        v108 = *(v5 + 96);
        v109 = *(v5 + 128);
        v888 = *(v5 + 112);
        v889[0] = v109;
        *(v889 + 9) = *(v5 + 137);
        v110 = *(v5 + 32);
        v111 = *(v5 + 64);
        *&v886[32] = *(v5 + 48);
        *&v886[48] = v111;
        v112 = *(v5 + 64);
        v113 = *(v5 + 96);
        *&v886[64] = *(v5 + 80);
        v887 = v113;
        v114 = *(v5 + 32);
        *v886 = *(v5 + 16);
        *&v886[16] = v114;
        v115 = *(v5 + 128);
        v836 = v888;
        v837[0] = v115;
        *(v837 + 9) = *(v5 + 137);
        *&v834[32] = *&v886[32];
        *&v834[48] = v112;
        *&v834[64] = *&v886[64];
        v835 = v108;
        *v834 = *v886;
        *&v834[16] = v110;
        v116 = *(v5 + 240);
        v117 = *(v5 + 272);
        *&__src[96] = *(v5 + 256);
        *&__src[112] = v117;
        *&__src[121] = *(v5 + 281);
        v118 = *(v5 + 176);
        v120 = *(v5 + 192);
        v119 = *(v5 + 208);
        *&__src[32] = v120;
        *&__src[48] = v119;
        v121 = *(v5 + 208);
        v123 = *(v5 + 224);
        v122 = *(v5 + 240);
        *&__src[64] = v123;
        *&__src[80] = v122;
        v124 = *(v5 + 176);
        v125 = *v102;
        *__src = *v102;
        *&__src[16] = v124;
        v126 = *(v5 + 272);
        v844 = *&__src[96];
        v845[0] = v126;
        v127 = *(v5 + 281);
      }

      else
      {
        v198 = *(v5 + 240);
        v199 = *(v5 + 272);
        v888 = *(v5 + 256);
        v889[0] = v199;
        *(v889 + 9) = *(v5 + 281);
        v200 = *(v5 + 176);
        v201 = *(v5 + 208);
        *&v886[32] = *(v5 + 192);
        *&v886[48] = v201;
        v202 = *(v5 + 208);
        v203 = *(v5 + 240);
        *&v886[64] = *(v5 + 224);
        v887 = v203;
        v204 = *(v5 + 176);
        *v886 = *v102;
        *&v886[16] = v204;
        v205 = *(v5 + 272);
        v836 = v888;
        v837[0] = v205;
        *(v837 + 9) = *(v5 + 281);
        *&v834[32] = *&v886[32];
        *&v834[48] = v202;
        *&v834[64] = *&v886[64];
        v835 = v198;
        *v834 = *v886;
        *&v834[16] = v200;
        v116 = *(v5 + 96);
        v206 = *(v5 + 128);
        *&__src[96] = *(v5 + 112);
        *&__src[112] = v206;
        *&__src[121] = *(v5 + 137);
        v118 = *(v5 + 32);
        v120 = *(v5 + 48);
        v207 = *(v5 + 64);
        *&__src[32] = v120;
        *&__src[48] = v207;
        v121 = *(v5 + 64);
        v123 = *(v5 + 80);
        v208 = *(v5 + 96);
        *&__src[64] = v123;
        *&__src[80] = v208;
        v209 = *(v5 + 32);
        v125 = *(v5 + 16);
        *__src = v125;
        *&__src[16] = v209;
        v210 = *(v5 + 128);
        v844 = *&__src[96];
        v845[0] = v210;
        v127 = *(v5 + 137);
      }

      *(v845 + 9) = v127;
      v840 = v120;
      v841 = v121;
      v842 = v123;
      v843 = v116;
      v838 = v125;
      v839 = v118;
      sub_1AAE680CC(v886, &v855);
      sub_1AAE680CC(__src, &v855);
      *&v893[96] = v836;
      v894[0] = v837[0];
      *(v894 + 9) = *(v837 + 9);
      *&v893[32] = *&v834[32];
      *&v893[48] = *&v834[48];
      *&v893[64] = *&v834[64];
      *&v893[80] = v835;
      *v893 = *v834;
      *&v893[16] = *&v834[16];
      v915 = v844;
      v916[0] = v845[0];
      *(v916 + 9) = *(v845 + 9);
      *&v913[32] = v840;
      *&v913[48] = v841;
      *&v913[64] = v842;
      v914 = v843;
      *v913 = v838;
      *&v913[16] = v839;
      v934[6] = v836;
      v935[0] = v837[0];
      *(v935 + 9) = *(v837 + 9);
      v934[2] = *&v834[32];
      v934[3] = *&v834[48];
      v934[4] = *&v834[64];
      v934[5] = v835;
      v934[0] = *v834;
      v934[1] = *&v834[16];
      if (!sub_1AAE63EF0(v934))
      {
        v211 = sub_1AAD357A8(v934);
        v901 = *(v211 + 16);
        v902 = *(v211 + 32);
        v903 = *(v211 + 48);
        v904 = *(v211 + 64);
        v900 = *v211;
        *&v774[32] = *&v834[32];
        *&v774[48] = *&v834[48];
        *v774 = *v834;
        *&v774[16] = *&v834[16];
        *&v775[9] = *(v837 + 9);
        *&v774[96] = v836;
        *v775 = v837[0];
        *&v774[64] = *&v834[64];
        *&v774[80] = v835;
        v212 = sub_1AAD357A8(v774);
        sub_1AAE63EFC(v212, __src);
        v213 = v1;
        sub_1AAED741C(!v107, &v900, &v855);
        v889[1] = v863;
        v890 = v864;
        v891 = v865;
        *&v886[64] = v859;
        v887 = v860;
        v888 = v861;
        v889[0] = v862;
        *v886 = v855;
        *&v886[16] = v856;
        *&v886[32] = v857;
        *&v886[48] = v858;
        if (sub_1AAE492A8(v886) != 1)
        {
          v214 = *v886;
          v215 = *&v886[8];
          v825 = v889[0];
          v826[0] = v889[1];
          v826[1] = v890;
          *&v827 = v891;
          v821 = *&v886[48];
          v822 = *&v886[64];
          v823 = v887;
          v824 = v888;
          v819 = *&v886[16];
          v820 = *&v886[32];
          v216 = *(v6 + 256);
          v850 = *(v6 + 240);
          v851 = v216;
          v852 = *(v6 + 272);
          v217 = *(v6 + 192);
          v846 = *(v6 + 176);
          v847 = v217;
          v218 = *(v6 + 224);
          v848 = *(v6 + 208);
          v849 = v218;
          if (v846)
          {
            *v925 = v846;
            *&v925[40] = *(v6 + 216);
            *&v925[56] = *(v6 + 232);
            *&v925[72] = *(v6 + 248);
            *&v925[8] = *(v6 + 184);
            *&v925[24] = *(v6 + 200);
            *&v925[88] = *(v6 + 264);
            v219 = *(v6 + 296);
            v767 = *(v6 + 280);
            v768 = v219;
            v220 = *(v6 + 312);
            v221 = *(v6 + 328);
            v222 = *(v6 + 344);
            v223 = *(v6 + 360);
            v773 = *(v6 + 376);
            v771 = v222;
            v772 = v223;
            v769 = v220;
            v770 = v221;
            if (v767)
            {
              *v892 = v767;
              v224 = *(v6 + 336);
              *&v892[40] = *(v6 + 320);
              *&v892[56] = v224;
              v225 = *(v6 + 368);
              *&v892[72] = *(v6 + 352);
              *&v892[88] = v225;
              v226 = *(v6 + 304);
              *&v892[8] = *(v6 + 288);
              *&v892[24] = v226;
              sub_1AAEDA3C0(&v846, __src, sub_1AACFAA34);
              sub_1AAEDA3C0(&v767, __src, sub_1AACFAA34);
              sub_1AAE680CC(v913, __src);
              sub_1AAF754B8(v107, v913, &v809);
              v227 = sub_1AAD6AE5C(0, 1, 1, MEMORY[0x1E69E7CC0]);
              v229 = v227[2];
              v228 = v227[3];
              v230 = v229 + 1;
              if (v229 >= v228 >> 1)
              {
                v227 = sub_1AAD6AE5C((v228 > 1), v229 + 1, 1, v227);
              }

              v231 = v213;
              v227[2] = v230;
              v232 = &v227[19 * v229];
              *(v232 + 8) = v815;
              *(v232 + 9) = v816[0];
              *(v232 + 10) = v816[1];
              v232[22] = v817;
              *(v232 + 4) = v811;
              *(v232 + 5) = v812;
              *(v232 + 6) = v813;
              *(v232 + 7) = v814;
              *(v232 + 2) = v809;
              *(v232 + 3) = v810;
              sub_1AAEDA024(v5 + 336, v788, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle);
              if (HIBYTE(*&v788[64]) < 0xFFu)
              {
                if ((*&v788[64] & 0xFF00) == 0x200)
                {
                  v907 = *&v788[32];
                  v908 = *&v788[48];
                  LOBYTE(v909) = v788[64];
                  v905 = *v788;
                  v906 = *&v788[16];
                  *&v829[7] = *v788;
                  *&v829[23] = *&v788[16];
                  *&v829[39] = *&v788[32];
                  *&v829[55] = *&v788[48];
                  v829[71] = v788[64];
                  __src[0] = 5;
                  *&__src[1] = *v829;
                  *&__src[65] = *&v829[64];
                  *&__src[49] = *&v829[48];
                  *&__src[33] = *&v829[32];
                  *&__src[17] = *&v829[16];
                  __src[73] = 3;
                  sub_1AAEDA174(__src);
                  sub_1AAE63EFC(&v905, v871);
                  v447 = v227[3];
                  v448 = v229 + 2;
                  if (v448 > (v447 >> 1))
                  {
                    v227 = sub_1AAD6AE5C((v447 > 1), v448, 1, v227);
                  }

                  sub_1AAE63F58(&v905);
                  v873 = *&__src[96];
                  v874[0] = *&__src[112];
                  v874[1] = *&__src[128];
                  v875 = *&__src[144];
                  v871[2] = *&__src[32];
                  v871[3] = *&__src[48];
                  v871[4] = *&__src[64];
                  v872 = *&__src[80];
                  v871[0] = *__src;
                  v871[1] = *&__src[16];
                  nullsub_1(v871, v449);
                  v227[2] = v448;
                  v450 = &v227[19 * v230];
                  v451 = v871[1];
                  *(v450 + 2) = v871[0];
                  *(v450 + 3) = v451;
                  v452 = v871[2];
                  v453 = v871[3];
                  v454 = v872;
                  *(v450 + 6) = v871[4];
                  *(v450 + 7) = v454;
                  *(v450 + 4) = v452;
                  *(v450 + 5) = v453;
                  v455 = v873;
                  v456 = v874[0];
                  v457 = v874[1];
                  v450[22] = v875;
                  *(v450 + 9) = v456;
                  *(v450 + 10) = v457;
                  *(v450 + 8) = v455;
                }

                else
                {
                  sub_1AAEDA120(v788);
                }
              }

              else
              {
                sub_1AAEDA0A4(v788, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle, MEMORY[0x1E69E6720]);
              }

              sub_1AAEDA024(v5 + 424, v788, qword_1ED9B2508, &type metadata for ResolvedSymbol);
              if (HIBYTE(*&v788[64]) < 0xFFu)
              {
                if ((*&v788[64] & 0xFF00) == 0x200)
                {
                  v907 = *&v788[32];
                  v908 = *&v788[48];
                  LOBYTE(v909) = v788[64];
                  v905 = *v788;
                  v906 = *&v788[16];
                  *&v829[7] = *v788;
                  *&v829[23] = *&v788[16];
                  *&v829[39] = *&v788[32];
                  *&v829[55] = *&v788[48];
                  v829[71] = v788[64];
                  __src[0] = 6;
                  *&__src[1] = *v829;
                  *&__src[65] = *&v829[64];
                  *&__src[49] = *&v829[48];
                  *&__src[33] = *&v829[32];
                  *&__src[17] = *&v829[16];
                  __src[73] = 3;
                  sub_1AAEDA174(__src);
                  sub_1AAE63EFC(&v905, v871);
                  v515 = v227[2];
                  v514 = v227[3];
                  if (v515 >= v514 >> 1)
                  {
                    v227 = sub_1AAD6AE5C((v514 > 1), v515 + 1, 1, v227);
                  }

                  sub_1AAE63F58(&v905);
                  v873 = *&__src[96];
                  v874[0] = *&__src[112];
                  v874[1] = *&__src[128];
                  v875 = *&__src[144];
                  v871[2] = *&__src[32];
                  v871[3] = *&__src[48];
                  v871[4] = *&__src[64];
                  v872 = *&__src[80];
                  v871[0] = *__src;
                  v871[1] = *&__src[16];
                  nullsub_1(v871, v516);
                  v227[2] = v515 + 1;
                  v517 = &v227[19 * v515];
                  v518 = v871[1];
                  *(v517 + 2) = v871[0];
                  *(v517 + 3) = v518;
                  v519 = v871[2];
                  v520 = v871[3];
                  v521 = v872;
                  *(v517 + 6) = v871[4];
                  *(v517 + 7) = v521;
                  *(v517 + 4) = v519;
                  *(v517 + 5) = v520;
                  v522 = v873;
                  v523 = v874[0];
                  v524 = v874[1];
                  v517[22] = v875;
                  *(v517 + 9) = v523;
                  *(v517 + 10) = v524;
                  *(v517 + 8) = v522;
                }

                else
                {
                  sub_1AAEDA1A8(v788);
                }
              }

              else
              {
                sub_1AAEDA0A4(v788, qword_1ED9B2508, &type metadata for ResolvedSymbol, MEMORY[0x1E69E6720]);
              }

              v525 = sub_1AAF70438(v227);
              v757 = v526;
              v527 = *(v5 + 128);
              v911 = *(v5 + 112);
              v912[0] = v527;
              *(v912 + 9) = *(v5 + 137);
              v528 = *(v5 + 64);
              v907 = *(v5 + 48);
              v908 = v528;
              v529 = *(v5 + 96);
              v909 = *(v5 + 80);
              v910 = v529;
              v530 = *(v5 + 32);
              v905 = *(v5 + 16);
              v906 = v530;
              v531 = *(v6 + 480);
              v532 = type metadata accessor for ChartAccessibilityContent.Builder(0);
              v533 = *(v532 + 24);
              sub_1AAF27F58(&v905, v925, v531, (v231 + v533), &v868);
              v534 = *(v5 + 272);
              v895[6] = *(v5 + 256);
              v896[0] = v534;
              *(v896 + 9) = *(v5 + 281);
              v535 = *(v5 + 208);
              v895[2] = *(v5 + 192);
              v895[3] = v535;
              v536 = *(v5 + 240);
              v895[4] = *(v5 + 224);
              v895[5] = v536;
              v537 = *(v5 + 176);
              v895[0] = *v102;
              v895[1] = v537;
              sub_1AAF27F58(v895, v892, v531, (v231 + v533), v897);
              if (v870 & 1) != 0 || (v899)
              {
                sub_1AAE68190(v893);

                sub_1AAE68190(v893);
                sub_1AACFDFAC(&v846, sub_1AACFAA34);
                sub_1AAE68190(v913);
                sub_1AACFDFAC(&v767, sub_1AACFAA34);
                sub_1AAEDA0A4(&v855, &qword_1EB426B38, &type metadata for ChartAccessibilityContent.Builder.Group, MEMORY[0x1E69E6720]);
                goto LABEL_57;
              }

              v748 = v868;
              v538 = v869;
              v539 = v897[0];
              if (!*(v6 + 280) || (v540 = *(v6 + 344), v540 == 255) || (v540 & 1) != 0 || (v541 = *(v6 + 336), (v542 = *(v541 + 16)) == 0))
              {
                v942.size.width = *(v6 + 48);
                v942.size.height = *(v6 + 56);
                v942.origin.x = v7 + 40.0;
                v942.origin.y = v8 + 40.0;
                Height = CGRectGetHeight(v942);
              }

              else
              {
                Height = vabdd_f64(*(v541 + 32 + 8 * v542 - 8), *(v541 + 32));
              }

              if (!*(v6 + 176) || (v555 = *(v6 + 240), v555 == 255) || (v555 & 1) != 0 || (v556 = *(v6 + 232), (v557 = *(v556 + 16)) == 0))
              {
                v943.size.width = *(v6 + 48);
                v943.size.height = *(v6 + 56);
                v943.origin.x = v7 + 40.0;
                v943.origin.y = v8 + 40.0;
                Width = CGRectGetWidth(v943);
              }

              else
              {
                Width = vabdd_f64(*(v556 + 32 + 8 * v557 - 8), *(v556 + 32));
              }

              if (v107)
              {
                if (*(v231 + *(v532 + 28)))
                {
                  v559 = v748;
                  if (v538 < v748)
                  {
                    v559 = v538;
                  }

                  v560 = 0.0;
                  Width = 0.0;
                }

                else
                {
                  if (v215 >= v214)
                  {
                    v559 = v214;
                  }

                  else
                  {
                    v559 = v215;
                  }

                  Width = vabdd_f64(v215, v214);
                  v560 = 0.0;
                }
              }

              else if (*(v231 + *(v532 + 28)))
              {
                if (*(&v539 + 1) >= *&v539)
                {
                  v560 = *&v539;
                }

                else
                {
                  v560 = *(&v539 + 1);
                }

                v559 = 0.0;
                Height = 0.0;
              }

              else
              {
                if (v215 >= v214)
                {
                  v560 = v214;
                }

                else
                {
                  v560 = v215;
                }

                Height = vabdd_f64(v215, v214);
                v559 = 0.0;
              }

              v668 = Height;
              v949 = CGRectOffset(*(&Width - 2), v7, v8);
              x = v949.origin.x;
              y = v949.origin.y;
              v671 = v949.size.width;
              v672 = v949.size.height;

              sub_1AAF754B8(!v107, v893, v765);
              sub_1AAE68190(v893);
              sub_1AACFDFAC(&v846, sub_1AACFAA34);
              sub_1AACFDFAC(&v767, sub_1AACFAA34);
              sub_1AAE68190(v913);

              v673 = (v5 + *(type metadata accessor for CollectedChartContent.Primitive(0) + 84));
              v674 = v673[3];
              v793 = v673[2];
              v794 = v674;
              v795 = v673[4];
              v796 = *(v673 + 80);
              v675 = v673[1];
              v791 = *v673;
              v792 = v675;
              if (*(&v675 + 1) == 1)
              {
                LOBYTE(v872) = 0;
                memset(v871, 0, sizeof(v871));
                memset(__src, 0, 81);
                sub_1AAE0F994(v871, v829);
                sub_1AAE0F9F0(__src);
                v676 = v872;
                v678 = *(&v871[4] + 1);
                v677 = *&v871[4];
                v743 = v871[2];
                v750 = v871[3];
                v731 = v871[1];
                v736 = v871[0];
              }

              else
              {
                v750 = v794;
                v736 = v791;
                v743 = v793;
                v678 = *(&v795 + 1);
                v677 = v795;
                v676 = v796;
                v731 = v792;
              }

              *&v788[96] = v825;
              v789[0] = v826[0];
              v789[1] = v826[1];
              v790 = v827;
              *&v788[32] = v821;
              *&v788[48] = v822;
              *&v788[64] = v823;
              *&v788[80] = v824;
              *v788 = v819;
              *&v788[16] = v820;
              sub_1AAE2D7EC(v829);
              sub_1AAEDA024(&v791, __src, &qword_1ED9ADF40, &type metadata for ChartAccessibilityProperties);

              v664 = v676 & 1;
              v873 = *&v788[96];
              v874[0] = v789[0];
              v874[1] = v789[1];
              v875 = v790;
              v871[2] = *&v788[32];
              v871[3] = *&v788[48];
              v871[4] = *&v788[64];
              v872 = *&v788[80];
              v871[0] = *v788;
              v871[1] = *&v788[16];
              nullsub_1(v871, v679);
              *&__src[296] = v873;
              *&__src[312] = v874[0];
              *&__src[328] = v874[1];
              *&__src[264] = v871[4];
              *&__src[280] = v872;
              *&__src[232] = v871[2];
              *&__src[248] = v871[3];
              *&__src[200] = v871[0];
              *&__src[216] = v871[1];
              *&__src[448] = v831;
              *&__src[464] = v832[0];
              *&__src[480] = v832[1];
              *&__src[496] = v833;
              *&__src[384] = *&v829[32];
              *&__src[400] = *&v829[48];
              *&__src[416] = *&v829[64];
              *&__src[432] = v830;
              *&__src[352] = *v829;
              *&__src[368] = *&v829[16];
              *__src = x;
              *&__src[8] = y;
              *&__src[16] = v671;
              *&__src[24] = v672;
              *&__src[136] = v765[6];
              *&__src[152] = v765[7];
              *&__src[168] = v765[8];
              *&__src[32] = v525;
              *&__src[184] = v766;
              *&__src[72] = v765[2];
              *&__src[88] = v765[3];
              *&__src[104] = v765[4];
              *&__src[120] = v765[5];
              *&__src[40] = v765[0];
              *&__src[56] = v765[1];
              *&__src[344] = v875;
              *&__src[192] = v757;
              *&__src[504] = 257;
              *&__src[506] = v866[0];
              *&__src[510] = WORD2(v866[0]);
              *&__src[512] = v736;
              *&__src[528] = v731;
              *&__src[544] = v743;
              *&__src[560] = v750;
              *&__src[576] = v677;
              *&__src[584] = v678;
              goto LABEL_298;
            }
          }

          sub_1AAEDA0A4(&v855, &qword_1EB426B38, &type metadata for ChartAccessibilityContent.Builder.Group, MEMORY[0x1E69E6720]);
        }

        sub_1AAE68190(v893);
      }

      v197 = v913;
LABEL_56:
      sub_1AAE68190(v197);
      sub_1AAE68190(v893);
      goto LABEL_57;
    }

    if (v9 == 4)
    {
      v35 = *(v6 + 256);
      *&v774[64] = *(v6 + 240);
      *&v774[80] = v35;
      *&v774[96] = *(v6 + 272);
      v36 = *(v6 + 192);
      *v774 = *(v6 + 176);
      *&v774[16] = v36;
      v37 = *(v6 + 224);
      *&v774[32] = *(v6 + 208);
      *&v774[48] = v37;
      if (!*v774)
      {
        goto LABEL_107;
      }

      *&v895[0] = *v774;
      *(&v895[2] + 8) = *(v6 + 216);
      *(&v895[3] + 8) = *(v6 + 232);
      *(&v895[4] + 8) = *(v6 + 248);
      *(v895 + 8) = *(v6 + 184);
      *(&v895[1] + 8) = *(v6 + 200);
      *(&v895[5] + 8) = *(v6 + 264);
      v38 = *(v6 + 296);
      *v925 = *(v6 + 280);
      *&v925[16] = v38;
      v39 = *(v6 + 312);
      v40 = *(v6 + 328);
      v41 = *(v6 + 344);
      v42 = *(v6 + 360);
      *&v925[96] = *(v6 + 376);
      *&v925[64] = v41;
      *&v925[80] = v42;
      *&v925[32] = v39;
      *&v925[48] = v40;
      if (!*v925)
      {
        goto LABEL_107;
      }

      *v893 = *v925;
      v43 = *(v6 + 336);
      *&v893[40] = *(v6 + 320);
      *&v893[56] = v43;
      v44 = *(v6 + 368);
      *&v893[72] = *(v6 + 352);
      *&v893[88] = v44;
      v45 = *(v6 + 304);
      *&v893[8] = *(v6 + 288);
      *&v893[24] = v45;
      v46 = *(v5 + 16);
      v47 = *(v5 + 32);
      v48 = *(v5 + 64);
      v907 = *(v5 + 48);
      v908 = v48;
      v905 = v46;
      v906 = v47;
      v49 = *(v5 + 80);
      v50 = *(v5 + 96);
      *(v912 + 9) = *(v5 + 137);
      v51 = *(v5 + 128);
      v911 = *(v5 + 112);
      v912[0] = v51;
      v909 = v49;
      v910 = v50;
      v52 = sub_1AAE63EF0(&v905);
      v760 = v4;
      if (v52 == 5 || v52 == 3)
      {
        sub_1AAD357A8(&v905);
        v53 = *(v5 + 240);
        v54 = *(v5 + 272);
        v888 = *(v5 + 256);
        v889[0] = v54;
        *(v889 + 9) = *(v5 + 281);
        v55 = *(v5 + 176);
        v56 = *(v5 + 208);
        *&v886[32] = *(v5 + 192);
        *&v886[48] = v56;
        v57 = *(v5 + 208);
        v58 = *(v5 + 240);
        *&v886[64] = *(v5 + 224);
        v887 = v58;
        v59 = *(v5 + 176);
        *v886 = *(v5 + 160);
        *&v886[16] = v59;
        v60 = *(v5 + 272);
        *&__src[96] = v888;
        *&__src[112] = v60;
        *&__src[121] = *(v5 + 281);
        *&__src[32] = *&v886[32];
        *&__src[48] = v57;
        *&__src[64] = *&v886[64];
        *&__src[80] = v53;
        *__src = *v886;
        *&__src[16] = v55;
        v61 = *(v5 + 96);
        v62 = *(v5 + 128);
        v836 = *(v5 + 112);
        v837[0] = v62;
        *(v837 + 9) = *(v5 + 137);
        v63 = *(v5 + 32);
        v64 = *(v5 + 64);
        *&v834[32] = *(v5 + 48);
        *&v834[48] = v64;
        v65 = *(v5 + 64);
        v66 = *(v5 + 96);
        *&v834[64] = *(v5 + 80);
        v835 = v66;
        v67 = *(v5 + 32);
        *v834 = *(v5 + 16);
        *&v834[16] = v67;
        *&__src[265] = *(v5 + 137);
        v68 = *(v5 + 128);
        *&__src[240] = v836;
        *&__src[256] = v68;
        *&__src[176] = *&v834[32];
        *&__src[192] = v65;
        *&__src[208] = *&v834[64];
        *&__src[224] = v61;
        *&__src[144] = *v834;
        *&__src[160] = v63;
        sub_1AAE680CC(v886, &v855);
        sub_1AAE680CC(v834, &v855);
        v69 = 0;
        v738 = 1;
      }

      else
      {
        v236 = *(v5 + 96);
        v237 = *(v5 + 128);
        v888 = *(v5 + 112);
        v889[0] = v237;
        *(v889 + 9) = *(v5 + 137);
        v238 = *(v5 + 32);
        v239 = *(v5 + 64);
        *&v886[32] = *(v5 + 48);
        *&v886[48] = v239;
        v240 = *(v5 + 64);
        v241 = *(v5 + 96);
        *&v886[64] = *(v5 + 80);
        v887 = v241;
        v242 = *(v5 + 32);
        *v886 = *(v5 + 16);
        *&v886[16] = v242;
        v243 = *(v5 + 128);
        *&__src[96] = v888;
        *&__src[112] = v243;
        *&__src[121] = *(v5 + 137);
        *&__src[32] = *&v886[32];
        *&__src[48] = v240;
        *&__src[64] = *&v886[64];
        *&__src[80] = v236;
        *__src = *v886;
        *&__src[16] = v238;
        v244 = *(v5 + 240);
        v245 = *(v5 + 272);
        v836 = *(v5 + 256);
        v837[0] = v245;
        *(v837 + 9) = *(v5 + 281);
        v246 = *(v5 + 176);
        v247 = *(v5 + 208);
        *&v834[32] = *(v5 + 192);
        *&v834[48] = v247;
        v248 = *(v5 + 208);
        v249 = *(v5 + 240);
        *&v834[64] = *(v5 + 224);
        v835 = v249;
        v250 = *(v5 + 176);
        *v834 = *(v5 + 160);
        *&v834[16] = v250;
        *&__src[265] = *(v5 + 281);
        v251 = *(v5 + 272);
        *&__src[240] = v836;
        *&__src[256] = v251;
        *&__src[176] = *&v834[32];
        *&__src[192] = v248;
        *&__src[208] = *&v834[64];
        *&__src[224] = v244;
        *&__src[144] = *v834;
        *&__src[160] = v246;
        sub_1AAE680CC(v886, &v855);
        sub_1AAE680CC(v834, &v855);
        v738 = 0;
        v69 = 1;
      }

      v915 = *&__src[96];
      v916[0] = *&__src[112];
      *(v916 + 9) = *&__src[121];
      *&v913[32] = *&__src[32];
      *&v913[48] = *&__src[48];
      *&v913[64] = *&__src[64];
      v914 = *&__src[80];
      *v913 = *__src;
      *&v913[16] = *&__src[16];
      v831 = *&__src[240];
      v832[0] = *&__src[256];
      *(v832 + 9) = *&__src[265];
      *&v829[32] = *&__src[176];
      *&v829[48] = *&__src[192];
      *&v829[64] = *&__src[208];
      v830 = *&__src[224];
      *v829 = *&__src[144];
      *&v829[16] = *&__src[160];
      sub_1AAD6D0FC();
      v252 = swift_allocObject();
      *(v252 + 16) = xmmword_1AAF92AB0;
      sub_1AAEDA3C0(v774, __src, sub_1AACFAA34);
      sub_1AAEDA3C0(v925, __src, sub_1AACFAA34);
      sub_1AAE680CC(v829, __src);
      sub_1AAF754B8(v69, v829, &v819);
      v253 = v826[0];
      *(v252 + 128) = v825;
      *(v252 + 144) = v253;
      *(v252 + 160) = v826[1];
      *(v252 + 176) = v827;
      v254 = v822;
      *(v252 + 64) = v821;
      *(v252 + 80) = v254;
      v255 = v824;
      *(v252 + 96) = v823;
      *(v252 + 112) = v255;
      v256 = v820;
      *(v252 + 32) = v819;
      *(v252 + 48) = v256;
      sub_1AAEDA024(v5 + 336, &v855, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle);
      if (BYTE1(v859) < 0xFFu)
      {
        if ((v859 & 0xFF00) == 0x200)
        {
          v811 = v857;
          v812 = v858;
          LOBYTE(v813) = v859;
          v809 = v855;
          v810 = v856;
          *&v886[23] = v856;
          *&v886[7] = v855;
          *&v886[39] = v857;
          *&v886[55] = v858;
          v886[71] = v859;
          v834[0] = 5;
          *&v834[65] = *&v886[64];
          *&v834[49] = *&v886[48];
          *&v834[33] = *&v886[32];
          *&v834[17] = *&v886[16];
          *&v834[1] = *v886;
          v834[73] = 3;
          sub_1AAEDA174(v834);
          *&__src[96] = v836;
          *&__src[112] = v837[0];
          *&__src[128] = v837[1];
          *&__src[144] = v838;
          *&__src[32] = *&v834[32];
          *&__src[48] = *&v834[48];
          *&__src[64] = *&v834[64];
          *&__src[80] = v835;
          *__src = *v834;
          *&__src[16] = *&v834[16];
          nullsub_1(__src, v257);
          sub_1AAE63EFC(&v809, v871);
          v252 = sub_1AAD6AE5C(1, 2, 1, v252);
          sub_1AAE63F58(&v809);
          *(v252 + 16) = 2;
          v258 = *&__src[16];
          *(v252 + 184) = *__src;
          v259 = *&__src[96];
          v260 = *&__src[128];
          *(v252 + 296) = *&__src[112];
          *(v252 + 312) = v260;
          v261 = *&__src[48];
          *(v252 + 216) = *&__src[32];
          *(v252 + 232) = v261;
          v262 = *&__src[80];
          *(v252 + 248) = *&__src[64];
          *(v252 + 264) = v262;
          *(v252 + 280) = v259;
          *(v252 + 328) = *&__src[144];
          *(v252 + 200) = v258;
        }

        else
        {
          sub_1AAEDA120(&v855);
        }
      }

      else
      {
        sub_1AAEDA0A4(&v855, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle, MEMORY[0x1E69E6720]);
      }

      v745 = sub_1AAF70438(v252);
      v354 = v353;
      v873 = v915;
      v874[0] = v916[0];
      *(v874 + 9) = *(v916 + 9);
      v871[2] = *&v913[32];
      v871[3] = *&v913[48];
      v871[4] = *&v913[64];
      v872 = v914;
      v871[0] = *v913;
      v871[1] = *&v913[16];
      v355 = sub_1AAE63EF0(v871);
      v754 = v354;
      if (v355 != 2 && v355)
      {
        sub_1AAE49270(v834);
      }

      else
      {
        v356 = sub_1AAD357A8(v871);
        v768 = *(v356 + 16);
        v769 = *(v356 + 32);
        v770 = *(v356 + 48);
        LOBYTE(v771) = *(v356 + 64);
        v767 = *v356;
        sub_1AAED741C(v738, &v767, v834);
      }

      v357 = *(v5 + 128);
      *&v788[96] = *(v5 + 112);
      v789[0] = v357;
      *(v789 + 9) = *(v5 + 137);
      v358 = *(v5 + 64);
      *&v788[32] = *(v5 + 48);
      *&v788[48] = v358;
      v359 = *(v5 + 96);
      *&v788[64] = *(v5 + 80);
      *&v788[80] = v359;
      v360 = *(v5 + 32);
      *v788 = *(v5 + 16);
      *&v788[16] = v360;
      v361 = *(v6 + 480);
      v362 = *(type metadata accessor for ChartAccessibilityContent.Builder(0) + 24);
      sub_1AAF27F58(v788, v895, v361, (v1 + v362), &v900);
      v363 = *(v5 + 272);
      v934[6] = *(v5 + 256);
      v935[0] = v363;
      *(v935 + 9) = *(v5 + 281);
      v364 = *(v5 + 208);
      v934[2] = *(v5 + 192);
      v934[3] = v364;
      v365 = *(v5 + 240);
      v934[4] = *(v5 + 224);
      v934[5] = v365;
      v366 = *(v5 + 176);
      v934[0] = *(v5 + 160);
      v934[1] = v366;
      sub_1AAF27F58(v934, v893, v361, (v1 + v362), &v791);
      if ((v903 & 1) == 0 && (v794 & 1) == 0)
      {
        v367 = v900;
        v368 = v791;
        v889[1] = v837[1];
        v890 = v838;
        v891 = v839;
        *&v886[64] = *&v834[64];
        v887 = v835;
        v888 = v836;
        v889[0] = v837[0];
        *v886 = *v834;
        *&v886[16] = *&v834[16];
        *&v886[32] = *&v834[32];
        *&v886[48] = *&v834[48];
        v4 = v760;
        if (sub_1AAE492A8(v886) == 1)
        {
          if (*(&v367 + 1) >= *&v367)
          {
            v369 = *&v367;
          }

          else
          {
            v369 = *(&v367 + 1);
          }

          if (*(&v368 + 1) >= *&v368)
          {
            v370 = *&v368;
          }

          else
          {
            v370 = *(&v368 + 1);
          }

          v371 = vabdd_f64(*(&v367 + 1), *&v367);
          v372 = vabdd_f64(*(&v368 + 1), *&v368);
        }

        else
        {
          if (!*(v6 + 280) || (v416 = *(v6 + 344), v416 == 255) || (v416 & 1) != 0 || (v417 = *(v6 + 336), (v418 = *(v417 + 16)) == 0))
          {
            v420 = *(v6 + 48);
            v421 = *(v6 + 56);
            sub_1AAEDA024(v834, __src, &qword_1EB426B38, &type metadata for ChartAccessibilityContent.Builder.Group);
            v938.origin.x = v7 + 40.0;
            v938.origin.y = v8 + 40.0;
            v938.size.width = v420;
            v938.size.height = v421;
            v419 = CGRectGetHeight(v938);
          }

          else
          {
            v419 = vabdd_f64(*(v417 + 32 + 8 * v418 - 8), *(v417 + 32));
            sub_1AAEDA024(v834, __src, &qword_1EB426B38, &type metadata for ChartAccessibilityContent.Builder.Group);
          }

          if (!*(v6 + 176) || (v422 = *(v6 + 240), v422 == 255) || (v422 & 1) != 0 || (v423 = *(v6 + 232), (v424 = *(v423 + 16)) == 0))
          {
            v939.size.width = *(v6 + 48);
            v939.size.height = *(v6 + 56);
            v939.origin.x = v7 + 40.0;
            v939.origin.y = v8 + 40.0;
            v425 = CGRectGetWidth(v939);
          }

          else
          {
            v425 = vabdd_f64(*(v423 + 32 + 8 * v424 - 8), *(v423 + 32));
          }

          v426 = *(v5 + 128);
          v923 = *(v5 + 112);
          v924[0] = v426;
          *(v924 + 9) = *(v5 + 137);
          v427 = *(v5 + 64);
          v919 = *(v5 + 48);
          v920 = v427;
          v428 = *(v5 + 96);
          v921 = *(v5 + 80);
          v922 = v428;
          v429 = *(v5 + 32);
          v917 = *(v5 + 16);
          v918 = v429;
          v430 = *(v5 + 272);
          v932 = *(v5 + 256);
          v933[0] = v430;
          *(v933 + 9) = *(v5 + 281);
          v431 = *(v5 + 208);
          v928 = *(v5 + 192);
          v929 = v431;
          v432 = *(v5 + 240);
          v930 = *(v5 + 224);
          v931 = v432;
          v433 = *(v5 + 176);
          v926 = *(v5 + 160);
          v927 = v433;
          v434 = sub_1AAE63A88(&v917, &v926);
          sub_1AAEDA0A4(v834, &qword_1EB426B38, &type metadata for ChartAccessibilityContent.Builder.Group, MEMORY[0x1E69E6720]);
          if (*&v886[8] >= *v886)
          {
            v435 = *v886;
          }

          else
          {
            v435 = *&v886[8];
          }

          v372 = vabdd_f64(*&v886[8], *v886);
          v370 = 0.0;
          if (v434)
          {
            v369 = v435;
          }

          else
          {
            v369 = 0.0;
          }

          if (v434)
          {
            v371 = v372;
          }

          else
          {
            v370 = v435;
            v371 = v425;
          }

          if (v434)
          {
            v372 = v419;
          }
        }

        v940 = CGRectOffset(*&v369, v7, v8);
        v436 = v940.origin.x;
        v437 = v940.origin.y;
        v438 = v940.size.width;
        v439 = v940.size.height;

        sub_1AAF754B8(v738, v913, v786);
        sub_1AACFDFAC(v774, sub_1AACFAA34);
        sub_1AACFDFAC(v925, sub_1AACFAA34);
        sub_1AAE68190(v829);

        v862 = v837[0];
        v863 = v837[1];
        v864 = v838;
        v858 = *&v834[48];
        v859 = *&v834[64];
        v860 = v835;
        v861 = v836;
        v855 = *v834;
        v856 = *&v834[16];
        v865 = v839;
        v857 = *&v834[32];
        if (sub_1AAE492A8(&v855) == 1)
        {
          sub_1AAE2D7EC(&v776);
        }

        else
        {
          *&__src[96] = v862;
          *&__src[112] = v863;
          *&__src[128] = v864;
          *&__src[144] = v865;
          *&__src[32] = v858;
          *&__src[48] = v859;
          *&__src[64] = v860;
          *&__src[80] = v861;
          *__src = v856;
          *&__src[16] = v857;
          nullsub_1(__src, v440);
          v782 = *&__src[96];
          v783 = *&__src[112];
          v784 = *&__src[128];
          v785 = *&__src[144];
          v778 = *&__src[32];
          v779 = *&__src[48];
          v780 = *&__src[64];
          v781 = *&__src[80];
          v776 = *__src;
          v777 = *&__src[16];
        }

        v441 = v5 + *(type metadata accessor for CollectedChartContent.Primitive(0) + 84);
        v442 = *(v441 + 48);
        *&v892[32] = *(v441 + 32);
        *&v892[48] = v442;
        *&v892[64] = *(v441 + 64);
        v892[80] = *(v441 + 80);
        v443 = *(v441 + 16);
        *v892 = *v441;
        *&v892[16] = v443;
        if (*(&v443 + 1) == 1)
        {
          LOBYTE(v814) = 0;
          v812 = 0u;
          v813 = 0u;
          v810 = 0u;
          v811 = 0u;
          v809 = 0u;
          memset(__src, 0, 81);
          sub_1AAE0F994(&v809, &v846);
          sub_1AAE0F9F0(__src);
          v444 = v814;
          v446 = *(&v813 + 1);
          v445 = v813;
          v732 = v811;
          v739 = v812;
          v729 = v810;
          v730 = v809;
        }

        else
        {
          v739 = *&v892[48];
          v730 = *v892;
          v732 = *&v892[32];
          v445 = *&v892[64];
          v446 = *&v892[72];
          v444 = v892[80];
          v729 = *&v892[16];
        }

        sub_1AAE2D7EC(&v809);
        sub_1AAEDA024(v892, __src, &qword_1ED9ADF40, &type metadata for ChartAccessibilityProperties);

        *&__src[448] = v815;
        *&__src[464] = v816[0];
        *&__src[480] = v816[1];
        *&__src[496] = v817;
        *&__src[384] = v811;
        *&__src[400] = v812;
        *&__src[416] = v813;
        *&__src[432] = v814;
        *&__src[352] = v809;
        *&__src[368] = v810;
        *__src = v436;
        *&__src[8] = v437;
        *&__src[16] = v438;
        *&__src[24] = v439;
        *&__src[136] = v786[6];
        *&__src[152] = v786[7];
        *&__src[168] = v786[8];
        *&__src[32] = v745;
        *&__src[184] = v787;
        *&__src[72] = v786[2];
        *&__src[88] = v786[3];
        *&__src[104] = v786[4];
        *&__src[120] = v786[5];
        *&__src[40] = v786[0];
        *&__src[56] = v786[1];
        *&__src[296] = v782;
        *&__src[312] = v783;
        *&__src[328] = v784;
        *&__src[264] = v780;
        *&__src[280] = v781;
        *&__src[192] = v754;
        *&__src[344] = v785;
        *&__src[232] = v778;
        *&__src[248] = v779;
        *&__src[200] = v776;
        *&__src[216] = v777;
        *&__src[504] = 1;
        *&__src[512] = v730;
        *&__src[528] = v729;
        *&__src[544] = v732;
        *&__src[560] = v739;
        *&__src[576] = v445;
        *&__src[584] = v446;
        __src[592] = v444 & 1;
        sub_1AAEDA100(__src);
        goto LABEL_108;
      }

      sub_1AACFDFAC(v774, sub_1AACFAA34);
      sub_1AAE68190(v829);
      sub_1AACFDFAC(v925, sub_1AACFAA34);
      sub_1AAE68190(v913);
      sub_1AAEDA0A4(v834, &qword_1EB426B38, &type metadata for ChartAccessibilityContent.Builder.Group, MEMORY[0x1E69E6720]);
      goto LABEL_57;
    }

    v156 = *(v6 + 256);
    *&v892[64] = *(v6 + 240);
    *&v892[80] = v156;
    *&v892[96] = *(v6 + 272);
    v157 = *(v6 + 192);
    *v892 = *(v6 + 176);
    *&v892[16] = v157;
    v158 = *(v6 + 224);
    *&v892[32] = *(v6 + 208);
    *&v892[48] = v158;
    if (!*v892)
    {
      goto LABEL_107;
    }

    *v774 = *v892;
    *&v774[40] = *(v6 + 216);
    *&v774[56] = *(v6 + 232);
    *&v774[72] = *(v6 + 248);
    *&v774[8] = *(v6 + 184);
    *&v774[24] = *(v6 + 200);
    *&v774[88] = *(v6 + 264);
    v159 = *(v6 + 296);
    v846 = *(v6 + 280);
    v847 = v159;
    v160 = *(v6 + 312);
    v161 = *(v6 + 328);
    v162 = *(v6 + 344);
    v163 = *(v6 + 360);
    v852 = *(v6 + 376);
    v850 = v162;
    v851 = v163;
    v848 = v160;
    v849 = v161;
    if (!v846)
    {
      goto LABEL_107;
    }

    v760 = v4;
    *v925 = v846;
    v164 = *(v6 + 336);
    *&v925[40] = *(v6 + 320);
    *&v925[56] = v164;
    v165 = *(v6 + 368);
    *&v925[72] = *(v6 + 352);
    *&v925[88] = v165;
    v166 = *(v6 + 304);
    *&v925[8] = *(v6 + 288);
    *&v925[24] = v166;
    v167 = *(v5 + 16);
    v168 = *(v5 + 32);
    v169 = *(v5 + 64);
    v928 = *(v5 + 48);
    v929 = v169;
    v926 = v167;
    v927 = v168;
    v170 = *(v5 + 80);
    v171 = *(v5 + 96);
    *(v933 + 9) = *(v5 + 137);
    v172 = *(v5 + 128);
    v932 = *(v5 + 112);
    v933[0] = v172;
    v930 = v170;
    v931 = v171;
    v173 = *(type metadata accessor for ChartAccessibilityContent.Builder(0) + 24);
    sub_1AAEDA3C0(v892, __src, sub_1AACFAA34);
    sub_1AAEDA3C0(&v846, __src, sub_1AACFAA34);
    sub_1AAF27F58(&v926, v774, 0, (v1 + v173), v866);
    v174 = (v5 + 160);
    v175 = *(v5 + 272);
    v923 = *(v5 + 256);
    v924[0] = v175;
    *(v924 + 9) = *(v5 + 281);
    v176 = *(v5 + 208);
    v919 = *(v5 + 192);
    v920 = v176;
    v177 = *(v5 + 240);
    v921 = *(v5 + 224);
    v922 = v177;
    v178 = *(v5 + 176);
    v917 = *(v5 + 160);
    v918 = v178;
    sub_1AAF27F58(&v917, v925, 0, (v1 + v173), &v868);
    if (v867 & 1) != 0 || (v870)
    {
      sub_1AACFDFAC(&v846, sub_1AACFAA34);
      v155 = v892;
      goto LABEL_31;
    }

    v320 = *v866;
    v321 = *&v866[1];
    v322 = v868;
    v323 = v869;
    v324 = *(v5 + 128);
    v911 = *(v5 + 112);
    v912[0] = v324;
    *(v912 + 9) = *(v5 + 137);
    v325 = *(v5 + 64);
    v907 = *(v5 + 48);
    v908 = v325;
    v326 = *(v5 + 96);
    v909 = *(v5 + 80);
    v910 = v326;
    v327 = *(v5 + 32);
    v905 = *(v5 + 16);
    v906 = v327;
    v328 = *(v5 + 272);
    v915 = *(v5 + 256);
    v916[0] = v328;
    *(v916 + 9) = *(v5 + 281);
    v329 = *(v5 + 208);
    *&v913[32] = *(v5 + 192);
    *&v913[48] = v329;
    v330 = *(v5 + 240);
    *&v913[64] = *(v5 + 224);
    v914 = v330;
    v331 = *(v5 + 176);
    *v913 = *v174;
    *&v913[16] = v331;
    v332 = sub_1AAE63A88(&v905, v913);
    if (v332)
    {
      v333 = *(v5 + 96);
      v334 = *(v5 + 128);
      v888 = *(v5 + 112);
      v889[0] = v334;
      *(v889 + 9) = *(v5 + 137);
      v335 = *(v5 + 32);
      v336 = *(v5 + 64);
      *&v886[32] = *(v5 + 48);
      *&v886[48] = v336;
      v337 = *(v5 + 64);
      v338 = *(v5 + 96);
      *&v886[64] = *(v5 + 80);
      v887 = v338;
      v339 = *(v5 + 32);
      *v886 = *(v5 + 16);
      *&v886[16] = v339;
      v340 = *(v5 + 128);
      v836 = v888;
      v837[0] = v340;
      *(v837 + 9) = *(v5 + 137);
      *&v834[32] = *&v886[32];
      *&v834[48] = v337;
      *&v834[64] = *&v886[64];
      v835 = v333;
      *v834 = *v886;
      *&v834[16] = v335;
      v341 = *(v5 + 240);
      v342 = *(v5 + 272);
      *&__src[96] = *(v5 + 256);
      *&__src[112] = v342;
      *&__src[121] = *(v5 + 281);
      v343 = *(v5 + 176);
      v345 = *(v5 + 192);
      v344 = *(v5 + 208);
      *&__src[32] = v345;
      *&__src[48] = v344;
      v346 = *(v5 + 208);
      v348 = *(v5 + 224);
      v347 = *(v5 + 240);
      *&__src[64] = v348;
      *&__src[80] = v347;
      v349 = *(v5 + 176);
      v350 = *v174;
      *__src = *v174;
      *&__src[16] = v349;
      v351 = *(v5 + 272);
      v844 = *&__src[96];
      v845[0] = v351;
      v352 = *(v5 + 281);
    }

    else
    {
      v401 = *(v5 + 240);
      v402 = *(v5 + 272);
      v888 = *(v5 + 256);
      v889[0] = v402;
      *(v889 + 9) = *(v5 + 281);
      v403 = *(v5 + 176);
      v404 = *(v5 + 208);
      *&v886[32] = *(v5 + 192);
      *&v886[48] = v404;
      v405 = *(v5 + 208);
      v406 = *(v5 + 240);
      *&v886[64] = *(v5 + 224);
      v887 = v406;
      v407 = *(v5 + 176);
      *v886 = *v174;
      *&v886[16] = v407;
      v408 = *(v5 + 272);
      v836 = v888;
      v837[0] = v408;
      *(v837 + 9) = *(v5 + 281);
      *&v834[32] = *&v886[32];
      *&v834[48] = v405;
      *&v834[64] = *&v886[64];
      v835 = v401;
      *v834 = *v886;
      *&v834[16] = v403;
      v341 = *(v5 + 96);
      v409 = *(v5 + 128);
      *&__src[96] = *(v5 + 112);
      *&__src[112] = v409;
      *&__src[121] = *(v5 + 137);
      v343 = *(v5 + 32);
      v345 = *(v5 + 48);
      v410 = *(v5 + 64);
      *&__src[32] = v345;
      *&__src[48] = v410;
      v346 = *(v5 + 64);
      v348 = *(v5 + 80);
      v411 = *(v5 + 96);
      *&__src[64] = v348;
      *&__src[80] = v411;
      v412 = *(v5 + 32);
      v350 = *(v5 + 16);
      *__src = v350;
      *&__src[16] = v412;
      v413 = *(v5 + 128);
      v844 = *&__src[96];
      v845[0] = v413;
      v352 = *(v5 + 137);
    }

    *(v845 + 9) = v352;
    v840 = v345;
    v841 = v346;
    v842 = v348;
    v843 = v341;
    v838 = v350;
    v839 = v343;
    sub_1AAE680CC(v886, &v855);
    sub_1AAE680CC(__src, &v855);
    *&v893[96] = v836;
    v894[0] = v837[0];
    *(v894 + 9) = *(v837 + 9);
    *&v893[32] = *&v834[32];
    *&v893[48] = *&v834[48];
    *&v893[64] = *&v834[64];
    *&v893[80] = v835;
    *v893 = *v834;
    *&v893[16] = *&v834[16];
    v895[6] = v844;
    v896[0] = v845[0];
    *(v896 + 9) = *(v845 + 9);
    v895[2] = v840;
    v895[3] = v841;
    v895[4] = v842;
    v895[5] = v843;
    v895[0] = v838;
    v895[1] = v839;
    v934[6] = v836;
    v935[0] = v837[0];
    *(v935 + 9) = *(v837 + 9);
    v934[2] = *&v834[32];
    v934[3] = *&v834[48];
    v934[4] = *&v834[64];
    v934[5] = v835;
    v934[0] = *v834;
    v934[1] = *&v834[16];
    v414 = sub_1AAE63EF0(v934);
    if (v414)
    {
      if (v414 != 2)
      {
        sub_1AAE49270(&v855);
        sub_1AAD6D0FC();
        v459 = swift_allocObject();
        *(v459 + 16) = xmmword_1AAF9E2B0;
        v460 = v459 + 32;
        goto LABEL_154;
      }

      v415 = &v900;
    }

    else
    {
      v415 = v897;
    }

    v458 = sub_1AAD357A8(v934);
    v415[1] = *(v458 + 16);
    v415[2] = *(v458 + 32);
    v415[3] = *(v458 + 48);
    *(v415 + 64) = *(v458 + 64);
    *v415 = *v458;
    sub_1AAED741C(!v332, v415, &v819);
    sub_1AAD6D0FC();
    v459 = swift_allocObject();
    *(v459 + 16) = xmmword_1AAF9E2B0;
    v460 = v459 + 32;
    *&__src[128] = v826[1];
    *&__src[144] = v827;
    *&__src[160] = v828;
    *&__src[64] = v823;
    *&__src[80] = v824;
    *&__src[96] = v825;
    *&__src[112] = v826[0];
    *__src = v819;
    *&__src[16] = v820;
    *&__src[32] = v821;
    *&__src[48] = v822;
    if (sub_1AAE492A8(__src) != 1)
    {
      sub_1AAE2D7EC(v829);
      v889[1] = v826[1];
      v890 = v827;
      v891 = v828;
      *&v886[64] = v823;
      v887 = v824;
      v888 = v825;
      v889[0] = v826[0];
      *v886 = v819;
      *&v886[16] = v820;
      *&v886[32] = v821;
      *&v886[48] = v822;
LABEL_155:
      v461 = *&v829[16];
      *v460 = *v829;
      *(v460 + 16) = v461;
      v462 = *&v829[32];
      v463 = *&v829[48];
      v464 = v830;
      *(v460 + 64) = *&v829[64];
      *(v460 + 80) = v464;
      *(v460 + 32) = v462;
      *(v460 + 48) = v463;
      v465 = v831;
      v466 = v832[0];
      v467 = v832[1];
      *(v460 + 144) = v833;
      *(v460 + 112) = v466;
      *(v460 + 128) = v467;
      *(v460 + 96) = v465;
      sub_1AAE680CC(v895, __src);
      sub_1AAF754B8(v332, v895, v871);
      v468 = v874[0];
      *(v460 + 248) = v873;
      v469 = v874[1];
      *(v460 + 264) = v468;
      *(v460 + 280) = v469;
      v470 = v871[3];
      *(v460 + 184) = v871[2];
      *(v460 + 200) = v470;
      v471 = v872;
      *(v460 + 216) = v871[4];
      *(v460 + 232) = v471;
      v472 = v871[1];
      *(v460 + 152) = v871[0];
      *(v460 + 296) = v875;
      *(v460 + 168) = v472;
      sub_1AAEDA024(v5 + 336, &v767, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle);
      if (BYTE1(v771) < 0xFFu)
      {
        if ((v771 & 0xFF00) == 0x200)
        {
          v793 = v769;
          v794 = v770;
          LOBYTE(v795) = v771;
          v791 = v767;
          v792 = v768;
          *&v788[7] = v767;
          *&v788[23] = v768;
          *&v788[39] = v769;
          *&v788[55] = v770;
          v788[71] = v771;
          __src[0] = 5;
          *&__src[1] = *v788;
          *&__src[65] = *&v788[64];
          *&__src[49] = *&v788[48];
          *&__src[33] = *&v788[32];
          *&__src[17] = *&v788[16];
          __src[73] = 3;
          sub_1AAEDA174(__src);
          sub_1AAE63EFC(&v791, &v809);
          v474 = *(v459 + 16);
          v473 = *(v459 + 24);
          if (v474 >= v473 >> 1)
          {
            v459 = sub_1AAD6AE5C((v473 > 1), v474 + 1, 1, v459);
          }

          sub_1AAE63F58(&v791);
          v815 = *&__src[96];
          v816[0] = *&__src[112];
          v816[1] = *&__src[128];
          *&v817 = *&__src[144];
          v811 = *&__src[32];
          v812 = *&__src[48];
          v813 = *&__src[64];
          v814 = *&__src[80];
          v809 = *__src;
          v810 = *&__src[16];
          nullsub_1(&v809, v475);
          *(v459 + 16) = v474 + 1;
          v476 = v459 + 152 * v474;
          v477 = v810;
          *(v476 + 32) = v809;
          *(v476 + 48) = v477;
          v478 = v811;
          v479 = v812;
          v480 = v814;
          *(v476 + 96) = v813;
          *(v476 + 112) = v480;
          *(v476 + 64) = v478;
          *(v476 + 80) = v479;
          v481 = v815;
          v482 = v816[0];
          v483 = v816[1];
          *(v476 + 176) = v817;
          *(v476 + 144) = v482;
          *(v476 + 160) = v483;
          *(v476 + 128) = v481;
        }

        else
        {
          sub_1AAEDA120(&v767);
        }
      }

      else
      {
        sub_1AAEDA0A4(&v767, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle, MEMORY[0x1E69E6720]);
      }

      v494 = sub_1AAF70438(v459);
      v496 = v495;
      if (v321 >= v320)
      {
        v497 = v320;
      }

      else
      {
        v497 = v321;
      }

      if (v323 >= v322)
      {
        v498 = v322;
      }

      else
      {
        v498 = v323;
      }

      v499 = vabdd_f64(v321, v320);
      v500 = vabdd_f64(v323, v322);
      v941 = CGRectOffset(*&v497, v7, v8);
      v501 = v941.origin.x;
      v502 = v941.origin.y;
      v503 = v941.size.width;
      v504 = v941.size.height;

      sub_1AAF754B8(!v332, v893, v807);
      sub_1AACFDFAC(v892, sub_1AACFAA34);
      sub_1AACFDFAC(&v846, sub_1AACFAA34);
      sub_1AAE68190(v895);

      v816[1] = v889[1];
      v817 = v890;
      v818 = v891;
      v813 = *&v886[64];
      v814 = v887;
      v815 = v888;
      v816[0] = v889[0];
      v809 = *v886;
      v810 = *&v886[16];
      v811 = *&v886[32];
      v812 = *&v886[48];
      if (sub_1AAE492A8(&v809) == 1)
      {
        sub_1AAE2D7EC(&v797);
      }

      else
      {
        *&__src[96] = v816[0];
        *&__src[112] = v816[1];
        *&__src[128] = v817;
        *&__src[144] = v818;
        *&__src[32] = v812;
        *&__src[48] = v813;
        *&__src[64] = v814;
        *&__src[80] = v815;
        *__src = v810;
        *&__src[16] = v811;
        nullsub_1(__src, v505);
        v803 = *&__src[96];
        v804 = *&__src[112];
        v805 = *&__src[128];
        v806 = *&__src[144];
        v799 = *&__src[32];
        v800 = *&__src[48];
        v801 = *&__src[64];
        v802 = *&__src[80];
        v797 = *__src;
        v798 = *&__src[16];
      }

      v506 = (v5 + *(type metadata accessor for CollectedChartContent.Primitive(0) + 84));
      v507 = v506[3];
      v769 = v506[2];
      v770 = v507;
      v771 = v506[4];
      LOBYTE(v772) = *(v506 + 80);
      v508 = v506[1];
      v767 = *v506;
      v768 = v508;
      if (*(&v508 + 1) == 1)
      {
        memset(v788, 0, 81);
        memset(__src, 0, 81);
        sub_1AAE0F994(v788, &v791);
        sub_1AAE0F9F0(__src);
        v509 = v788[80];
        v510 = *&v788[64];
        v511 = *&v788[72];
        v747 = *&v788[32];
        v756 = *&v788[48];
        v734 = *&v788[16];
        v741 = *v788;
      }

      else
      {
        v756 = v770;
        v741 = v767;
        v747 = v769;
        v511 = *(&v771 + 1);
        v510 = v771;
        v509 = v772;
        v734 = v768;
      }

      sub_1AAE2D7EC(v788);
      sub_1AAEDA024(&v767, __src, &qword_1ED9ADF40, &type metadata for ChartAccessibilityProperties);

      *&__src[448] = *&v788[96];
      *&__src[464] = v789[0];
      *&__src[480] = v789[1];
      *&__src[496] = v790;
      *&__src[384] = *&v788[32];
      *&__src[400] = *&v788[48];
      *&__src[416] = *&v788[64];
      *&__src[432] = *&v788[80];
      *&__src[352] = *v788;
      *&__src[368] = *&v788[16];
      *__src = v501;
      *&__src[8] = v502;
      *&__src[16] = v503;
      *&__src[24] = v504;
      *&__src[136] = v807[6];
      *&__src[152] = v807[7];
      *&__src[168] = v807[8];
      *&__src[32] = v494;
      *&__src[184] = v808;
      *&__src[72] = v807[2];
      *&__src[88] = v807[3];
      *&__src[104] = v807[4];
      *&__src[120] = v807[5];
      *&__src[40] = v807[0];
      *&__src[56] = v807[1];
      *&__src[296] = v803;
      *&__src[312] = v804;
      *&__src[328] = v805;
      *&__src[264] = v801;
      *&__src[280] = v802;
      *&__src[192] = v496;
      *&__src[344] = v806;
      *&__src[232] = v799;
      *&__src[248] = v800;
      *&__src[200] = v797;
      *&__src[216] = v798;
      *&__src[504] = 0;
      *&__src[506] = v791;
      *&__src[510] = WORD2(v791);
      *&__src[512] = v741;
      *&__src[528] = v734;
      *&__src[544] = v747;
      *&__src[560] = v756;
      *&__src[576] = v510;
      *&__src[584] = v511;
      __src[592] = v509 & 1;
      goto LABEL_299;
    }

    v862 = v826[0];
    v863 = v826[1];
    v864 = v827;
    v858 = v822;
    v859 = v823;
    v860 = v824;
    v861 = v825;
    v855 = v819;
    v856 = v820;
    v865 = v828;
    v857 = v821;
LABEL_154:
    sub_1AAE680CC(v893, __src);
    sub_1AAF754B8(!v332, v893, v829);
    v889[1] = v863;
    v890 = v864;
    v891 = v865;
    *&v886[64] = v859;
    v887 = v860;
    v888 = v861;
    v889[0] = v862;
    *v886 = v855;
    *&v886[16] = v856;
    *&v886[32] = v857;
    *&v886[48] = v858;
    goto LABEL_155;
  }

  if (!*(v5 + 8))
  {
    v760 = v4;
    v70 = *(v5 + 112);
    v71 = *(v5 + 128);
    v72 = *(v5 + 80);
    v922 = *(v5 + 96);
    v923 = v70;
    v924[0] = v71;
    *(v924 + 9) = *(v5 + 137);
    v73 = *(v5 + 64);
    v919 = *(v5 + 48);
    v920 = v73;
    v921 = v72;
    v74 = *(v5 + 32);
    v917 = *(v5 + 16);
    v918 = v74;
    v75 = (v5 + 160);
    v76 = *(v5 + 256);
    v77 = *(v5 + 272);
    v78 = *(v5 + 224);
    v931 = *(v5 + 240);
    v932 = v76;
    v933[0] = v77;
    *(v933 + 9) = *(v5 + 281);
    v79 = *(v5 + 208);
    v928 = *(v5 + 192);
    v929 = v79;
    v930 = v78;
    v80 = *(v5 + 176);
    v926 = *(v5 + 160);
    v927 = v80;
    v752 = sub_1AAE63A88(&v917, &v926);
    if (v752)
    {
      v81 = *(v5 + 96);
      v82 = *(v5 + 128);
      v888 = *(v5 + 112);
      v889[0] = v82;
      *(v889 + 9) = *(v5 + 137);
      v83 = *(v5 + 32);
      v84 = *(v5 + 64);
      *&v886[32] = *(v5 + 48);
      *&v886[48] = v84;
      v85 = *(v5 + 64);
      v86 = *(v5 + 96);
      *&v886[64] = *(v5 + 80);
      v887 = v86;
      v87 = *(v5 + 32);
      *v886 = *(v5 + 16);
      *&v886[16] = v87;
      v88 = *(v5 + 128);
      v836 = v888;
      v837[0] = v88;
      *(v837 + 9) = *(v5 + 137);
      *&v834[32] = *&v886[32];
      *&v834[48] = v85;
      *&v834[64] = *&v886[64];
      v835 = v81;
      *v834 = *v886;
      *&v834[16] = v83;
      v89 = *(v5 + 240);
      v90 = *(v5 + 272);
      *&__src[96] = *(v5 + 256);
      *&__src[112] = v90;
      *&__src[121] = *(v5 + 281);
      v91 = *(v5 + 176);
      v92 = *(v5 + 208);
      *&__src[32] = *(v5 + 192);
      *&__src[48] = v92;
      v93 = *(v5 + 208);
      v94 = *(v5 + 240);
      *&__src[64] = *(v5 + 224);
      *&__src[80] = v94;
      v95 = *(v5 + 176);
      v96 = *v75;
      *__src = *v75;
      *&__src[16] = v95;
      v97 = *(v5 + 272);
      v844 = *&__src[96];
      v845[0] = v97;
      *(v845 + 9) = *(v5 + 281);
      v840 = *&__src[32];
      v841 = v93;
      v842 = *&__src[64];
      v843 = v89;
      v839 = v91;
    }

    else
    {
      v179 = *(v5 + 256);
      v180 = *(v5 + 224);
      v887 = *(v5 + 240);
      v888 = v179;
      v181 = *(v5 + 256);
      v889[0] = *(v5 + 272);
      *(v889 + 9) = *(v5 + 281);
      v182 = *(v5 + 176);
      v183 = *(v5 + 208);
      *&v886[32] = *(v5 + 192);
      *&v886[48] = v183;
      v184 = *(v5 + 208);
      *&v886[64] = *(v5 + 224);
      v185 = *(v5 + 176);
      *v886 = *v75;
      *&v886[16] = v185;
      v835 = v887;
      v836 = v181;
      v837[0] = *(v5 + 272);
      *(v837 + 9) = *(v5 + 281);
      *&v834[32] = *&v886[32];
      *&v834[48] = v184;
      *&v834[64] = v180;
      *v834 = *v886;
      *&v834[16] = v182;
      v186 = *(v5 + 112);
      v187 = *(v5 + 80);
      *&__src[80] = *(v5 + 96);
      *&__src[96] = v186;
      v188 = *(v5 + 112);
      *&__src[112] = *(v5 + 128);
      *&__src[121] = *(v5 + 137);
      v189 = *(v5 + 32);
      v190 = *(v5 + 64);
      *&__src[32] = *(v5 + 48);
      *&__src[48] = v190;
      v191 = *(v5 + 64);
      *&__src[64] = *(v5 + 80);
      v192 = *(v5 + 32);
      v96 = *(v5 + 16);
      *__src = v96;
      *&__src[16] = v192;
      v193 = *(v5 + 128);
      v844 = v188;
      v845[0] = v193;
      *(v845 + 9) = *(v5 + 137);
      v840 = *&__src[32];
      v841 = v191;
      v842 = v187;
      v843 = *&__src[80];
      v839 = v189;
    }

    v838 = v96;
    sub_1AAE680CC(v886, &v855);
    sub_1AAE680CC(__src, &v855);
    *&v893[96] = v836;
    v894[0] = v837[0];
    *(v894 + 9) = *(v837 + 9);
    *&v893[32] = *&v834[32];
    *&v893[48] = *&v834[48];
    *&v893[64] = *&v834[64];
    *&v893[80] = v835;
    *v893 = *v834;
    *&v893[16] = *&v834[16];
    v895[5] = v843;
    v895[6] = v844;
    v896[0] = v845[0];
    *(v896 + 9) = *(v845 + 9);
    v895[2] = v840;
    v895[3] = v841;
    v895[4] = v842;
    v895[0] = v838;
    v895[1] = v839;
    v934[5] = v835;
    v934[6] = v836;
    v935[0] = v837[0];
    *(v935 + 9) = *(v837 + 9);
    v934[2] = *&v834[32];
    v934[3] = *&v834[48];
    v934[4] = *&v834[64];
    v934[0] = *v834;
    v934[1] = *&v834[16];
    if (sub_1AAE63EF0(v934))
    {
      goto LABEL_36;
    }

    v194 = sub_1AAD357A8(v934);
    v768 = *(v194 + 16);
    v769 = *(v194 + 32);
    v770 = *(v194 + 48);
    LOBYTE(v771) = *(v194 + 64);
    v767 = *v194;
    *&v774[48] = *&v834[48];
    *&v774[64] = *&v834[64];
    *v774 = *v834;
    *&v774[16] = *&v834[16];
    *&v774[32] = *&v834[32];
    *&v775[9] = *(v837 + 9);
    *&v774[96] = v836;
    *v775 = v837[0];
    *&v774[80] = v835;
    v195 = sub_1AAD357A8(v774);
    sub_1AAE63EFC(v195, __src);
    v196 = v1;
    sub_1AAED741C(!v752, &v767, &v855);
    v889[1] = v863;
    v890 = v864;
    v891 = v865;
    *&v886[64] = v859;
    v887 = v860;
    v888 = v861;
    v889[0] = v862;
    *v886 = v855;
    *&v886[16] = v856;
    *&v886[32] = v857;
    *&v886[48] = v858;
    if (sub_1AAE492A8(v886) == 1)
    {
      sub_1AAE68190(v893);
LABEL_36:
      v197 = v895;
      goto LABEL_56;
    }

    v233 = *v886;
    v234 = *&v886[8];
    v825 = v889[0];
    v826[0] = v889[1];
    v826[1] = v890;
    *&v827 = v891;
    v821 = *&v886[48];
    v822 = *&v886[64];
    v823 = v887;
    v824 = v888;
    v819 = *&v886[16];
    v820 = *&v886[32];
    sub_1AAEDA024(v5 + 424, &v809, qword_1ED9B2508, &type metadata for ResolvedSymbol);
    if (BYTE1(v813) == 255)
    {
      sub_1AAEDA0A4(&v809, qword_1ED9B2508, &type metadata for ResolvedSymbol, MEMORY[0x1E69E6720]);
      v235 = v1;
    }

    else
    {
      *&__src[32] = v811;
      *&__src[48] = v812;
      *&__src[64] = v813;
      *__src = v809;
      *&__src[16] = v810;
      v373 = *(v6 + 408);
      v235 = v196;
      if (v373)
      {
        sub_1AAEDA2B4(__src, &v809);
        if (BYTE1(v813))
        {
          if (BYTE1(v813) == 1)
          {
            sub_1AAEDA1A8(&v809);
            if (qword_1ED9B59F0 != -1)
            {
              swift_once();
            }

            sub_1AAEDA1A8(__src);
            memset(v829, 0, 40);
          }

          else
          {
            LOBYTE(v871[4]) = v813;
            v871[3] = v812;
            v871[2] = v811;
            v871[1] = v810;
            v871[0] = v809;
            if (*(v373 + 16))
            {
              v512 = sub_1AADB0548(*(&v871[2] + 1));
              if (v513)
              {
                sub_1AAD9B194(*(v373 + 56) + 40 * v512, v829);
                sub_1AAE63F58(v871);
                sub_1AAEDA1A8(__src);
              }

              else
              {
                sub_1AAE63F58(v871);
                sub_1AAEDA1A8(__src);
                memset(v829, 0, 40);
              }

              v235 = v196;
            }

            else
            {
              sub_1AAE63F58(v871);
              sub_1AAEDA1A8(__src);
              memset(v829, 0, 40);
            }
          }
        }

        else
        {
          sub_1AAEDA1A8(__src);
          *v829 = v809;
          *&v829[16] = v810;
          *&v829[32] = v811;
        }

        if (*&v829[24])
        {
          v897[0] = *v829;
          v897[1] = *&v829[16];
          v898 = *&v829[32];
          goto LABEL_234;
        }

        sub_1AAEDA0A4(v829, &qword_1ED9AE4C0, &type metadata for AnyChartSymbolShape, MEMORY[0x1E69E6720]);
      }

      else
      {
        sub_1AAEDA1A8(__src);
      }
    }

    if (qword_1ED9B0450 != -1)
    {
      swift_once();
    }

    sub_1AAD9B194(&unk_1ED9C33F0, v897);
LABEL_234:
    if (*(v235 + *(type metadata accessor for ChartAccessibilityContent.Builder(0) + 28)) == 1)
    {
      v571 = *(v6 + 256);
      v813 = *(v6 + 240);
      v814 = v571;
      *&v815 = *(v6 + 272);
      v572 = *(v6 + 192);
      v809 = *(v6 + 176);
      v810 = v572;
      v573 = *(v6 + 224);
      v811 = *(v6 + 208);
      v812 = v573;
      if (!v809 || (*v925 = v809, *&v925[40] = *(v6 + 216), *&v925[56] = *(v6 + 232), *&v925[72] = *(v6 + 248), *&v925[8] = *(v6 + 184), *&v925[24] = *(v6 + 200), *&v925[88] = *(v6 + 264), v574 = *(v6 + 296), v871[0] = *(v6 + 280), v871[1] = v574, v575 = *(v6 + 328), v871[2] = *(v6 + 312), v576 = *(v6 + 344), v577 = *(v6 + 360), *&v873 = *(v6 + 376), v872 = v577, v871[4] = v576, v871[3] = v575, !*&v871[0]))
      {
        sub_1AAE68190(v893);
        sub_1AAE68190(v893);
        goto LABEL_269;
      }

      *v892 = *&v871[0];
      v578 = *(v6 + 336);
      *&v892[40] = *(v6 + 320);
      *&v892[56] = v578;
      v579 = *(v6 + 368);
      *&v892[72] = *(v6 + 352);
      *&v892[88] = v579;
      v580 = *(v6 + 304);
      *&v892[8] = *(v6 + 288);
      *&v892[24] = v580;
      v581 = *(v5 + 16);
      v582 = *(v5 + 32);
      v584 = *(v5 + 80);
      v583 = *(v5 + 96);
      v585 = *(v5 + 48);
      *&v913[48] = *(v5 + 64);
      *&v913[64] = v584;
      *&v913[16] = v582;
      *&v913[32] = v585;
      *v913 = v581;
      v586 = *(v5 + 112);
      v587 = *(v5 + 128);
      *(v916 + 9) = *(v5 + 137);
      v915 = v586;
      v916[0] = v587;
      v914 = v583;
      sub_1AAEDA3C0(&v809, __src, sub_1AACFAA34);
      sub_1AAEDA3C0(v871, __src, sub_1AACFAA34);
      sub_1AAF27C94(v913, v925);
      v589 = v588;
      v590 = *(v5 + 256);
      v591 = *(v5 + 272);
      v592 = *(v5 + 224);
      v910 = *(v5 + 240);
      v911 = v590;
      v912[0] = v591;
      *(v912 + 9) = *(v5 + 281);
      v593 = *(v5 + 208);
      v907 = *(v5 + 192);
      v908 = v593;
      v909 = v592;
      v594 = *(v5 + 176);
      v905 = *v75;
      v906 = v594;
      sub_1AAF27C94(&v905, v892);
      if (v589 & 1) != 0 || (v595)
      {
        sub_1AAE68190(v893);
        sub_1AAE68190(v893);
        sub_1AACFDFAC(&v809, sub_1AACFAA34);
        sub_1AACFDFAC(v871, sub_1AACFAA34);
LABEL_269:
        sub_1AAEDA0A4(&v855, &qword_1EB426B38, &type metadata for ChartAccessibilityContent.Builder.Group, MEMORY[0x1E69E6720]);
        sub_1AAE68190(v895);
        sub_1AAED9FA0(__src);
        memcpy(&v854[4], __src, 0x251uLL);
        sub_1AAE45A14(v897);
        v4 = v760;
        goto LABEL_109;
      }

      v666 = *(v5 + 544);
      v793 = *(v5 + 528);
      v794 = v666;
      LOBYTE(v795) = *(v5 + 560);
      v667 = *(v5 + 512);
      v791 = *(v5 + 496);
      v792 = v667;
      sub_1AAF27DBC(&v791, *(v6 + 424), *(v6 + 432), *(v6 + 440), v897);
      v948 = CGRectOffset(v947, v7, v8);
      v610 = v948.origin.x;
      v611 = v948.origin.y;
      v612 = v948.size.width;
      v613 = v948.size.height;
      sub_1AACFDFAC(&v809, sub_1AACFAA34);
      sub_1AACFDFAC(v871, sub_1AACFAA34);
      v600 = v752;
    }

    else
    {
      if (!*(v6 + 280) || (v596 = *(v6 + 344), v596 == 255) || (v596 & 1) != 0 || (v597 = *(v6 + 336), (v598 = *(v597 + 16)) == 0))
      {
        v944.size.width = *(v6 + 48);
        v944.size.height = *(v6 + 56);
        v944.origin.x = v7 + 40.0;
        v944.origin.y = v8 + 40.0;
        v599 = CGRectGetHeight(v944);
      }

      else
      {
        v599 = vabdd_f64(*(v597 + 32 + 8 * v598 - 8), *(v597 + 32));
      }

      v600 = v752;
      if (!*(v6 + 176) || (v601 = *(v6 + 240), v601 == 255) || (v601 & 1) != 0 || (v602 = *(v6 + 232), (v603 = *(v602 + 16)) == 0))
      {
        v945.size.width = *(v6 + 48);
        v945.size.height = *(v6 + 56);
        v945.origin.x = v7 + 40.0;
        v945.origin.y = v8 + 40.0;
        v604 = CGRectGetWidth(v945);
      }

      else
      {
        v604 = vabdd_f64(*(v602 + 32 + 8 * v603 - 8), *(v602 + 32));
      }

      if (v234 >= v233)
      {
        v605 = v233;
      }

      else
      {
        v605 = v234;
      }

      v606 = vabdd_f64(v234, v233);
      if (v752)
      {
        v607 = v605;
      }

      else
      {
        v607 = 0.0;
      }

      if (v752)
      {
        v605 = 0.0;
        v608 = v606;
      }

      else
      {
        v608 = v604;
      }

      if (v752)
      {
        v606 = v599;
      }

      v609 = v607;
      v946 = CGRectOffset(*(&v605 - 1), v7, v8);
      v610 = v946.origin.x;
      v611 = v946.origin.y;
      v612 = v946.size.width;
      v613 = v946.size.height;
    }

    sub_1AAE680CC(v895, __src);
    sub_1AAF754B8(v600, v895, &v809);
    v614 = sub_1AAD6AE5C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v616 = v614[2];
    v615 = v614[3];
    v617 = v616 + 1;
    if (v616 >= v615 >> 1)
    {
      v614 = sub_1AAD6AE5C((v615 > 1), v616 + 1, 1, v614);
    }

    v614[2] = v617;
    v618 = &v614[19 * v616];
    *(v618 + 8) = v815;
    *(v618 + 9) = v816[0];
    *(v618 + 10) = v816[1];
    v618[22] = v817;
    *(v618 + 4) = v811;
    *(v618 + 5) = v812;
    *(v618 + 6) = v813;
    *(v618 + 7) = v814;
    *(v618 + 2) = v809;
    *(v618 + 3) = v810;
    sub_1AAEDA024(v5 + 336, v788, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle);
    if (HIBYTE(*&v788[64]) < 0xFFu)
    {
      if ((*&v788[64] & 0xFF00) == 0x200)
      {
        v848 = *&v788[32];
        v849 = *&v788[48];
        LOBYTE(v850) = v788[64];
        v846 = *v788;
        v847 = *&v788[16];
        *&v829[7] = *v788;
        *&v829[23] = *&v788[16];
        *&v829[39] = *&v788[32];
        *&v829[55] = *&v788[48];
        v829[71] = v788[64];
        __src[0] = 5;
        *&__src[1] = *v829;
        *&__src[65] = *&v829[64];
        *&__src[49] = *&v829[48];
        *&__src[33] = *&v829[32];
        *&__src[17] = *&v829[16];
        __src[73] = 3;
        sub_1AAEDA174(__src);
        sub_1AAE63EFC(&v846, v871);
        v619 = v614[3];
        if ((v616 + 2) > (v619 >> 1))
        {
          v614 = sub_1AAD6AE5C((v619 > 1), v616 + 2, 1, v614);
        }

        sub_1AAE63F58(&v846);
        v873 = *&__src[96];
        v874[0] = *&__src[112];
        v874[1] = *&__src[128];
        v871[2] = *&__src[32];
        v871[3] = *&__src[48];
        v871[4] = *&__src[64];
        v872 = *&__src[80];
        v871[0] = *__src;
        v875 = *&__src[144];
        v871[1] = *&__src[16];
        nullsub_1(v871, v620);
        v614[2] = v616 + 2;
        v621 = &v614[19 * v617];
        v622 = v871[1];
        *(v621 + 2) = v871[0];
        *(v621 + 3) = v622;
        v623 = v871[2];
        v624 = v871[3];
        v625 = v872;
        *(v621 + 6) = v871[4];
        *(v621 + 7) = v625;
        *(v621 + 4) = v623;
        *(v621 + 5) = v624;
        v626 = v873;
        v627 = v874[0];
        v628 = v874[1];
        v621[22] = v875;
        *(v621 + 9) = v627;
        *(v621 + 10) = v628;
        *(v621 + 8) = v626;
      }

      else
      {
        sub_1AAEDA120(v788);
      }
    }

    else
    {
      sub_1AAEDA0A4(v788, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle, MEMORY[0x1E69E6720]);
    }

    sub_1AAEDA024(v5 + 424, v788, qword_1ED9B2508, &type metadata for ResolvedSymbol);
    if (HIBYTE(*&v788[64]) < 0xFFu)
    {
      if ((*&v788[64] & 0xFF00) == 0x200)
      {
        v848 = *&v788[32];
        v849 = *&v788[48];
        LOBYTE(v850) = v788[64];
        v846 = *v788;
        v847 = *&v788[16];
        *&v829[7] = *v788;
        *&v829[23] = *&v788[16];
        *&v829[39] = *&v788[32];
        *&v829[55] = *&v788[48];
        v829[71] = v788[64];
        __src[0] = 6;
        *&__src[1] = *v829;
        *&__src[65] = *&v829[64];
        *&__src[49] = *&v829[48];
        *&__src[33] = *&v829[32];
        *&__src[17] = *&v829[16];
        __src[73] = 3;
        sub_1AAEDA174(__src);
        sub_1AAE63EFC(&v846, v871);
        v630 = v614[2];
        v629 = v614[3];
        if (v630 >= v629 >> 1)
        {
          v614 = sub_1AAD6AE5C((v629 > 1), v630 + 1, 1, v614);
        }

        sub_1AAE63F58(&v846);
        v873 = *&__src[96];
        v874[0] = *&__src[112];
        v874[1] = *&__src[128];
        v871[2] = *&__src[32];
        v871[3] = *&__src[48];
        v871[4] = *&__src[64];
        v872 = *&__src[80];
        v871[0] = *__src;
        v875 = *&__src[144];
        v871[1] = *&__src[16];
        nullsub_1(v871, v631);
        v614[2] = v630 + 1;
        v632 = &v614[19 * v630];
        v633 = v871[1];
        *(v632 + 2) = v871[0];
        *(v632 + 3) = v633;
        v634 = v871[2];
        v635 = v871[3];
        v636 = v872;
        *(v632 + 6) = v871[4];
        *(v632 + 7) = v636;
        *(v632 + 4) = v634;
        *(v632 + 5) = v635;
        v637 = v873;
        v638 = v874[0];
        v639 = v874[1];
        v632[22] = v875;
        *(v632 + 9) = v638;
        *(v632 + 10) = v639;
        *(v632 + 8) = v637;
      }

      else
      {
        sub_1AAEDA1A8(v788);
      }
    }

    else
    {
      sub_1AAEDA0A4(v788, qword_1ED9B2508, &type metadata for ResolvedSymbol, MEMORY[0x1E69E6720]);
    }

    v640 = *(v5 + 544);
    v902 = *(v5 + 528);
    v903 = v640;
    v904 = *(v5 + 560);
    v641 = *(v5 + 512);
    v900 = *(v5 + 496);
    v901 = v641;
    v643 = (v904 & 0x7C) != 0 || *(&v641 + 1) >> 1 != 0xFFFFFFFFLL;
    if ((v904 & 0x60) == 0x40 && v643)
    {
      *&__src[8] = v900;
      *&__src[40] = v902;
      __src[0] = 7;
      *&__src[24] = v901;
      *&__src[56] = v903;
      __src[72] = v904 & 0x9F;
      __src[73] = 3;
      sub_1AAEDA174(__src);
      *&v829[32] = v902;
      *&v829[48] = v903;
      v829[64] = v904;
      *v829 = v900;
      *&v829[16] = v901;
      sub_1AAEDA024(&v900, v871, qword_1ED9B22C0, &type metadata for ResolvedSymbolSize);
      sub_1AAEDA258(v829, v871);
      v645 = v614[2];
      v644 = v614[3];
      if (v645 >= v644 >> 1)
      {
        v614 = sub_1AAD6AE5C((v644 > 1), v645 + 1, 1, v614);
      }

      sub_1AAEDA0A4(&v900, qword_1ED9B22C0, &type metadata for ResolvedSymbolSize, MEMORY[0x1E69E6720]);
      v873 = *&__src[96];
      v874[0] = *&__src[112];
      v874[1] = *&__src[128];
      v871[2] = *&__src[32];
      v871[3] = *&__src[48];
      v871[4] = *&__src[64];
      v872 = *&__src[80];
      v871[0] = *__src;
      v875 = *&__src[144];
      v871[1] = *&__src[16];
      nullsub_1(v871, v646);
      v614[2] = v645 + 1;
      v647 = &v614[19 * v645];
      v648 = v871[1];
      *(v647 + 2) = v871[0];
      *(v647 + 3) = v648;
      v649 = v871[2];
      v650 = v871[3];
      v651 = v872;
      *(v647 + 6) = v871[4];
      *(v647 + 7) = v651;
      *(v647 + 4) = v649;
      *(v647 + 5) = v650;
      v652 = v873;
      v653 = v874[0];
      v654 = v874[1];
      v647[22] = v875;
      *(v647 + 9) = v653;
      *(v647 + 10) = v654;
      *(v647 + 8) = v652;
    }

    v655 = sub_1AAF70438(v614);
    v657 = v656;

    sub_1AAF754B8(!v752, v893, v761);
    sub_1AAE68190(v893);
    sub_1AAE68190(v895);
    sub_1AAE45A14(v897);

    v658 = (v5 + *(type metadata accessor for CollectedChartContent.Primitive(0) + 84));
    v659 = v658[3];
    v848 = v658[2];
    v849 = v659;
    v850 = v658[4];
    LOBYTE(v851) = *(v658 + 80);
    v660 = v658[1];
    v846 = *v658;
    v847 = v660;
    if (*(&v660 + 1) == 1)
    {
      LOBYTE(v872) = 0;
      memset(v871, 0, sizeof(v871));
      memset(__src, 0, 81);
      sub_1AAE0F994(v871, v829);
      sub_1AAE0F9F0(__src);
      v661 = v872;
      v663 = *(&v871[4] + 1);
      v662 = *&v871[4];
      v749 = v871[2];
      v758 = v871[3];
      v735 = v871[1];
      v742 = v871[0];
    }

    else
    {
      v758 = v849;
      v742 = v846;
      v749 = v848;
      v663 = *(&v850 + 1);
      v662 = v850;
      v661 = v851;
      v735 = v847;
    }

    *&v788[96] = v825;
    v789[0] = v826[0];
    v789[1] = v826[1];
    v790 = v827;
    *&v788[32] = v821;
    *&v788[48] = v822;
    *&v788[64] = v823;
    *&v788[80] = v824;
    *v788 = v819;
    *&v788[16] = v820;
    sub_1AAE2D7EC(v829);
    sub_1AAEDA024(&v846, __src, &qword_1ED9ADF40, &type metadata for ChartAccessibilityProperties);

    v873 = *&v788[96];
    v874[0] = v789[0];
    v874[1] = v789[1];
    v871[2] = *&v788[32];
    v871[3] = *&v788[48];
    v871[4] = *&v788[64];
    v872 = *&v788[80];
    v871[0] = *v788;
    v664 = v661 & 1;
    v875 = v790;
    v871[1] = *&v788[16];
    nullsub_1(v871, v665);
    *&__src[296] = v873;
    *&__src[312] = v874[0];
    *&__src[328] = v874[1];
    *&__src[264] = v871[4];
    *&__src[280] = v872;
    *&__src[496] = v833;
    *&__src[232] = v871[2];
    *&__src[248] = v871[3];
    *&__src[200] = v871[0];
    *&__src[216] = v871[1];
    *&__src[448] = v831;
    *&__src[464] = v832[0];
    *&__src[480] = v832[1];
    *&__src[384] = *&v829[32];
    *&__src[400] = *&v829[48];
    *&__src[416] = *&v829[64];
    *&__src[432] = v830;
    *&__src[352] = *v829;
    *&__src[368] = *&v829[16];
    *__src = v610;
    *&__src[8] = v611;
    *&__src[16] = v612;
    *&__src[24] = v613;
    *&__src[136] = v761[6];
    *&__src[152] = v761[7];
    *&__src[168] = v761[8];
    *&__src[32] = v655;
    *&__src[184] = v762;
    *&__src[72] = v761[2];
    *&__src[88] = v761[3];
    *&__src[104] = v761[4];
    *&__src[120] = v761[5];
    *&__src[40] = v761[0];
    *&__src[56] = v761[1];
    *&__src[344] = v875;
    *&__src[192] = v657;
    *&__src[504] = 0;
    *&__src[506] = LODWORD(v868);
    *&__src[510] = WORD2(v868);
    *&__src[512] = v742;
    *&__src[528] = v735;
    *&__src[544] = v749;
    *&__src[560] = v758;
LABEL_297:
    *&__src[576] = v662;
    *&__src[584] = v663;
LABEL_298:
    __src[592] = v664;
LABEL_299:
    sub_1AAEDA100(__src);
    goto LABEL_58;
  }

  if (v9 != 1)
  {
    v128 = *(v6 + 256);
    *&v925[64] = *(v6 + 240);
    *&v925[80] = v128;
    *&v925[96] = *(v6 + 272);
    v129 = *(v6 + 192);
    *v925 = *(v6 + 176);
    *&v925[16] = v129;
    v130 = *(v6 + 224);
    *&v925[32] = *(v6 + 208);
    *&v925[48] = v130;
    if (!*v925)
    {
      goto LABEL_107;
    }

    *v893 = *v925;
    *&v893[40] = *(v6 + 216);
    *&v893[56] = *(v6 + 232);
    *&v893[72] = *(v6 + 248);
    *&v893[8] = *(v6 + 184);
    *&v893[24] = *(v6 + 200);
    *&v893[88] = *(v6 + 264);
    v131 = *(v6 + 296);
    *v892 = *(v6 + 280);
    *&v892[16] = v131;
    v132 = *(v6 + 312);
    v133 = *(v6 + 328);
    v134 = *(v6 + 344);
    v135 = *(v6 + 360);
    *&v892[96] = *(v6 + 376);
    *&v892[64] = v134;
    *&v892[80] = v135;
    *&v892[32] = v132;
    *&v892[48] = v133;
    if (!*v892)
    {
      goto LABEL_107;
    }

    v760 = v4;
    *v774 = *v892;
    v136 = *(v6 + 336);
    *&v774[40] = *(v6 + 320);
    *&v774[56] = v136;
    v137 = *(v6 + 368);
    *&v774[72] = *(v6 + 352);
    *&v774[88] = v137;
    v138 = *(v6 + 304);
    *&v774[8] = *(v6 + 288);
    *&v774[24] = v138;
    v139 = *(v5 + 16);
    v140 = *(v5 + 32);
    v141 = *(v5 + 64);
    *&v788[32] = *(v5 + 48);
    *&v788[48] = v141;
    *v788 = v139;
    *&v788[16] = v140;
    v142 = *(v5 + 80);
    v143 = *(v5 + 96);
    *(v789 + 9) = *(v5 + 137);
    v144 = *(v5 + 128);
    *&v788[96] = *(v5 + 112);
    v789[0] = v144;
    *&v788[64] = v142;
    *&v788[80] = v143;
    sub_1AAEDA3C0(v925, __src, sub_1AACFAA34);
    sub_1AAEDA3C0(v892, __src, sub_1AACFAA34);
    *&v145 = COERCE_DOUBLE(sub_1AAF27C94(v788, v893));
    v147 = v146;
    v148 = (v5 + 160);
    v149 = *(v5 + 272);
    v934[6] = *(v5 + 256);
    v935[0] = v149;
    *(v935 + 9) = *(v5 + 281);
    v150 = *(v5 + 208);
    v934[2] = *(v5 + 192);
    v934[3] = v150;
    v151 = *(v5 + 240);
    v934[4] = *(v5 + 224);
    v934[5] = v151;
    v152 = *(v5 + 176);
    v934[0] = *(v5 + 160);
    v934[1] = v152;
    *&v153 = COERCE_DOUBLE(sub_1AAF27C94(v934, v774));
    if (v147 & 1) != 0 || (v154)
    {
      sub_1AACFDFAC(v892, sub_1AACFAA34);
      v155 = v925;
LABEL_31:
      sub_1AACFDFAC(v155, sub_1AACFAA34);
LABEL_57:
      sub_1AAED9FA0(__src);
LABEL_58:
      memcpy(&v854[4], __src, 0x251uLL);
      v4 = v760;
      goto LABEL_109;
    }

    v753 = *&v153;
    v291 = *(v5 + 128);
    v923 = *(v5 + 112);
    v924[0] = v291;
    *(v924 + 9) = *(v5 + 137);
    v292 = *(v5 + 64);
    v919 = *(v5 + 48);
    v920 = v292;
    v293 = *(v5 + 96);
    v921 = *(v5 + 80);
    v922 = v293;
    v294 = *(v5 + 32);
    v917 = *(v5 + 16);
    v918 = v294;
    v295 = *(v5 + 272);
    v932 = *(v5 + 256);
    v933[0] = v295;
    *(v933 + 9) = *(v5 + 281);
    v296 = *(v5 + 208);
    v928 = *(v5 + 192);
    v929 = v296;
    v297 = *(v5 + 240);
    v930 = *(v5 + 224);
    v931 = v297;
    v298 = *(v5 + 176);
    v926 = *v148;
    v927 = v298;
    v299 = sub_1AAE63A88(&v917, &v926);
    if (v299)
    {
      v300 = *(v5 + 96);
      v301 = *(v5 + 128);
      v888 = *(v5 + 112);
      v889[0] = v301;
      *(v889 + 9) = *(v5 + 137);
      v302 = *(v5 + 32);
      v303 = *(v5 + 64);
      *&v886[32] = *(v5 + 48);
      *&v886[48] = v303;
      v304 = *(v5 + 64);
      v305 = *(v5 + 96);
      *&v886[64] = *(v5 + 80);
      v887 = v305;
      v306 = *(v5 + 32);
      *v886 = *(v5 + 16);
      *&v886[16] = v306;
      v307 = *(v5 + 128);
      v836 = v888;
      v837[0] = v307;
      *(v837 + 9) = *(v5 + 137);
      *&v834[32] = *&v886[32];
      *&v834[48] = v304;
      *&v834[64] = *&v886[64];
      v835 = v300;
      *v834 = *v886;
      *&v834[16] = v302;
      v308 = *(v5 + 240);
      v309 = *(v5 + 272);
      *&__src[96] = *(v5 + 256);
      *&__src[112] = v309;
      *&__src[121] = *(v5 + 281);
      v310 = *(v5 + 176);
      v312 = *(v5 + 192);
      v311 = *(v5 + 208);
      *&__src[32] = v312;
      *&__src[48] = v311;
      v313 = *(v5 + 208);
      v315 = *(v5 + 224);
      v314 = *(v5 + 240);
      *&__src[64] = v315;
      *&__src[80] = v314;
      v316 = *(v5 + 176);
      v317 = *v148;
      *__src = *v148;
      *&__src[16] = v316;
      v318 = *(v5 + 272);
      v844 = *&__src[96];
      v845[0] = v318;
      v319 = *(v5 + 281);
    }

    else
    {
      v384 = *(v5 + 240);
      v385 = *(v5 + 272);
      v888 = *(v5 + 256);
      v889[0] = v385;
      *(v889 + 9) = *(v5 + 281);
      v386 = *(v5 + 176);
      v387 = *(v5 + 208);
      *&v886[32] = *(v5 + 192);
      *&v886[48] = v387;
      v388 = *(v5 + 208);
      v389 = *(v5 + 240);
      *&v886[64] = *(v5 + 224);
      v887 = v389;
      v390 = *(v5 + 176);
      *v886 = *v148;
      *&v886[16] = v390;
      v391 = *(v5 + 272);
      v836 = v888;
      v837[0] = v391;
      *(v837 + 9) = *(v5 + 281);
      *&v834[32] = *&v886[32];
      *&v834[48] = v388;
      *&v834[64] = *&v886[64];
      v835 = v384;
      *v834 = *v886;
      *&v834[16] = v386;
      v308 = *(v5 + 96);
      v392 = *(v5 + 128);
      *&__src[96] = *(v5 + 112);
      *&__src[112] = v392;
      *&__src[121] = *(v5 + 137);
      v310 = *(v5 + 32);
      v312 = *(v5 + 48);
      v393 = *(v5 + 64);
      *&__src[32] = v312;
      *&__src[48] = v393;
      v313 = *(v5 + 64);
      v315 = *(v5 + 80);
      v394 = *(v5 + 96);
      *&__src[64] = v315;
      *&__src[80] = v394;
      v395 = *(v5 + 32);
      v317 = *(v5 + 16);
      *__src = v317;
      *&__src[16] = v395;
      v396 = *(v5 + 128);
      v844 = *&__src[96];
      v845[0] = v396;
      v319 = *(v5 + 137);
    }

    *(v845 + 9) = v319;
    v840 = v312;
    v841 = v313;
    v842 = v315;
    v843 = v308;
    v838 = v317;
    v839 = v310;
    sub_1AAE680CC(v886, &v855);
    sub_1AAE680CC(__src, &v855);
    v911 = v836;
    v912[0] = v837[0];
    *(v912 + 9) = *(v837 + 9);
    v907 = *&v834[32];
    v908 = *&v834[48];
    v909 = *&v834[64];
    v910 = v835;
    v905 = *v834;
    v906 = *&v834[16];
    v915 = v844;
    v916[0] = v845[0];
    *(v916 + 9) = *(v845 + 9);
    *&v913[32] = v840;
    *&v913[48] = v841;
    *&v913[64] = v842;
    v914 = v843;
    *v913 = v838;
    *&v913[16] = v839;
    v831 = v836;
    v832[0] = v837[0];
    *(v832 + 9) = *(v837 + 9);
    *&v829[32] = *&v834[32];
    *&v829[48] = *&v834[48];
    *&v829[64] = *&v834[64];
    v830 = v835;
    *v829 = *v834;
    *&v829[16] = *&v834[16];
    v4 = v760;
    if (sub_1AAE63EF0(v829))
    {
LABEL_105:
      sub_1AAE68190(v913);
      sub_1AAE68190(&v905);
      sub_1AACFDFAC(v892, sub_1AACFAA34);
      v34 = v925;
      goto LABEL_106;
    }

    v397 = sub_1AAD357A8(v829);
    v768 = *(v397 + 16);
    v769 = *(v397 + 32);
    v770 = *(v397 + 48);
    LOBYTE(v771) = *(v397 + 64);
    v767 = *v397;
    v895[2] = *&v834[32];
    v895[3] = *&v834[48];
    v895[0] = *v834;
    v895[1] = *&v834[16];
    *(v896 + 9) = *(v837 + 9);
    v895[6] = v836;
    v896[0] = v837[0];
    v895[4] = *&v834[64];
    v895[5] = v835;
    v398 = sub_1AAD357A8(v895);
    sub_1AAE63EFC(v398, __src);
    v399 = v1;
    sub_1AAED741C(!v299, &v767, &v855);
    v889[1] = v863;
    v890 = v864;
    v891 = v865;
    *&v886[64] = v859;
    v887 = v860;
    v888 = v861;
    v889[0] = v862;
    *v886 = v855;
    *&v886[16] = v856;
    *&v886[32] = v857;
    *&v886[48] = v858;
    if (sub_1AAE492A8(v886) == 1)
    {
      sub_1AAE68190(&v905);
      goto LABEL_105;
    }

    v544 = *v886;
    v545 = *&v886[8];
    v882 = v889[0];
    v883 = v889[1];
    v884 = v890;
    v885 = v891;
    v878 = *&v886[48];
    v879 = *&v886[64];
    v880 = v887;
    v881 = v888;
    v876 = *&v886[16];
    v877 = *&v886[32];
    sub_1AAE680CC(v913, __src);
    sub_1AAF754B8(v299, v913, &v819);
    v546 = sub_1AAD6AE5C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v548 = v546[2];
    v547 = v546[3];
    v549 = v548 + 1;
    if (v548 >= v547 >> 1)
    {
      v546 = sub_1AAD6AE5C((v547 > 1), v548 + 1, 1, v546);
    }

    v546[2] = v549;
    v550 = &v546[19 * v548];
    v551 = v826[0];
    *(v550 + 8) = v825;
    *(v550 + 9) = v551;
    *(v550 + 10) = v826[1];
    v550[22] = v827;
    v552 = v822;
    *(v550 + 4) = v821;
    *(v550 + 5) = v552;
    v553 = v824;
    *(v550 + 6) = v823;
    *(v550 + 7) = v553;
    v554 = v820;
    *(v550 + 2) = v819;
    *(v550 + 3) = v554;
    sub_1AAEDA024(v5 + 336, &v846, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle);
    if (BYTE1(v850) < 0xFFu)
    {
      if ((v850 & 0xFF00) == 0x200)
      {
        v793 = v848;
        v794 = v849;
        LOBYTE(v795) = v850;
        v791 = v846;
        v792 = v847;
        *(v871 + 7) = v846;
        *(&v871[1] + 7) = v847;
        *(&v871[2] + 7) = v848;
        *(&v871[3] + 7) = v849;
        BYTE7(v871[4]) = v850;
        __src[0] = 5;
        *&__src[1] = v871[0];
        *&__src[65] = *&v871[4];
        *&__src[49] = v871[3];
        *&__src[33] = v871[2];
        *&__src[17] = v871[1];
        __src[73] = 3;
        sub_1AAEDA174(__src);
        sub_1AAE63EFC(&v791, &v809);
        v561 = v546[3];
        if ((v548 + 2) > (v561 >> 1))
        {
          v546 = sub_1AAD6AE5C((v561 > 1), v548 + 2, 1, v546);
        }

        sub_1AAE63F58(&v791);
        v815 = *&__src[96];
        v816[0] = *&__src[112];
        v816[1] = *&__src[128];
        *&v817 = *&__src[144];
        v811 = *&__src[32];
        v812 = *&__src[48];
        v813 = *&__src[64];
        v814 = *&__src[80];
        v809 = *__src;
        v810 = *&__src[16];
        nullsub_1(&v809, v562);
        v546[2] = v548 + 2;
        v563 = &v546[19 * v549];
        v564 = v810;
        *(v563 + 2) = v809;
        *(v563 + 3) = v564;
        v565 = v811;
        v566 = v812;
        v567 = v814;
        *(v563 + 6) = v813;
        *(v563 + 7) = v567;
        *(v563 + 4) = v565;
        *(v563 + 5) = v566;
        v568 = v815;
        v569 = v816[0];
        v570 = v816[1];
        v563[22] = v817;
        *(v563 + 9) = v569;
        *(v563 + 10) = v570;
        *(v563 + 8) = v568;
      }

      else
      {
        sub_1AAEDA120(&v846);
      }
    }

    else
    {
      sub_1AAEDA0A4(&v846, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle, MEMORY[0x1E69E6720]);
    }

    sub_1AAEDA024(v5 + 424, &v846, qword_1ED9B2508, &type metadata for ResolvedSymbol);
    if (BYTE1(v850) < 0xFFu)
    {
      if ((v850 & 0xFF00) == 0x200)
      {
        v793 = v848;
        v794 = v849;
        LOBYTE(v795) = v850;
        v791 = v846;
        v792 = v847;
        *(v871 + 7) = v846;
        *(&v871[1] + 7) = v847;
        *(&v871[2] + 7) = v848;
        *(&v871[3] + 7) = v849;
        BYTE7(v871[4]) = v850;
        __src[0] = 6;
        *&__src[1] = v871[0];
        *&__src[65] = *&v871[4];
        *&__src[49] = v871[3];
        *&__src[33] = v871[2];
        *&__src[17] = v871[1];
        __src[73] = 3;
        sub_1AAEDA174(__src);
        sub_1AAE63EFC(&v791, &v809);
        v681 = v546[2];
        v680 = v546[3];
        if (v681 >= v680 >> 1)
        {
          v546 = sub_1AAD6AE5C((v680 > 1), v681 + 1, 1, v546);
        }

        sub_1AAE63F58(&v791);
        v815 = *&__src[96];
        v816[0] = *&__src[112];
        v816[1] = *&__src[128];
        *&v817 = *&__src[144];
        v811 = *&__src[32];
        v812 = *&__src[48];
        v813 = *&__src[64];
        v814 = *&__src[80];
        v809 = *__src;
        v810 = *&__src[16];
        nullsub_1(&v809, v682);
        v546[2] = v681 + 1;
        v683 = &v546[19 * v681];
        v684 = v810;
        *(v683 + 2) = v809;
        *(v683 + 3) = v684;
        v685 = v811;
        v686 = v812;
        v687 = v814;
        *(v683 + 6) = v813;
        *(v683 + 7) = v687;
        *(v683 + 4) = v685;
        *(v683 + 5) = v686;
        v688 = v815;
        v689 = v816[0];
        v690 = v816[1];
        v683[22] = v817;
        *(v683 + 9) = v689;
        *(v683 + 10) = v690;
        *(v683 + 8) = v688;
      }

      else
      {
        sub_1AAEDA1A8(&v846);
      }
    }

    else
    {
      sub_1AAEDA0A4(&v846, qword_1ED9B2508, &type metadata for ResolvedSymbol, MEMORY[0x1E69E6720]);
    }

    LOBYTE(v795) = *(v5 + 632);
    v691 = *(v5 + 616);
    v793 = *(v5 + 600);
    v794 = v691;
    v692 = *(v5 + 584);
    v791 = *(v5 + 568);
    v792 = v692;
    if ((~v795 & 0x7C) != 0 && (v795 & 0x40) != 0)
    {
      __src[0] = 8;
      *&__src[8] = v791;
      *&__src[24] = v792;
      *&__src[40] = v793;
      *&__src[56] = v794;
      __src[72] = v795 & 0xBF;
      __src[73] = 3;
      sub_1AAEDA174(__src);
      v871[2] = v793;
      v871[3] = v794;
      LOBYTE(v871[4]) = v795;
      v871[0] = v791;
      v871[1] = v792;
      sub_1AAEDA024(&v791, &v809, &qword_1ED9B23C8, &type metadata for ResolvedLineStyle);
      sub_1AAEDA1FC(v871, &v809);
      v694 = v546[2];
      v693 = v546[3];
      if (v694 >= v693 >> 1)
      {
        v546 = sub_1AAD6AE5C((v693 > 1), v694 + 1, 1, v546);
      }

      sub_1AAEDA0A4(&v791, &qword_1ED9B23C8, &type metadata for ResolvedLineStyle, MEMORY[0x1E69E6720]);
      v815 = *&__src[96];
      v816[0] = *&__src[112];
      v816[1] = *&__src[128];
      *&v817 = *&__src[144];
      v811 = *&__src[32];
      v812 = *&__src[48];
      v813 = *&__src[64];
      v814 = *&__src[80];
      v809 = *__src;
      v810 = *&__src[16];
      nullsub_1(&v809, v695);
      v546[2] = v694 + 1;
      v696 = &v546[19 * v694];
      v697 = v810;
      *(v696 + 2) = v809;
      *(v696 + 3) = v697;
      v698 = v811;
      v699 = v812;
      v700 = v814;
      *(v696 + 6) = v813;
      *(v696 + 7) = v700;
      *(v696 + 4) = v698;
      *(v696 + 5) = v699;
      v701 = v815;
      v702 = v816[0];
      v703 = v816[1];
      v696[22] = v817;
      *(v696 + 9) = v702;
      *(v696 + 10) = v703;
      *(v696 + 8) = v701;
    }

    v704 = sub_1AAF70438(v546);
    v706 = v705;
    if (!*(v6 + 280) || (v707 = *(v6 + 344), v707 == 255) || (v707 & 1) != 0 || (v708 = *(v6 + 336), (v709 = *(v708 + 16)) == 0))
    {
      v950.size.width = *(v6 + 48);
      v950.size.height = *(v6 + 56);
      v950.origin.x = v7 + 40.0;
      v950.origin.y = v8 + 40.0;
      v710 = CGRectGetHeight(v950);
    }

    else
    {
      v710 = vabdd_f64(*(v708 + 32 + 8 * v709 - 8), *(v708 + 32));
    }

    if (!*(v6 + 176) || (v711 = *(v6 + 240), v711 == 255) || (v711 & 1) != 0 || (v712 = *(v6 + 232), (v713 = *(v712 + 16)) == 0))
    {
      v951.size.width = *(v6 + 48);
      v951.size.height = *(v6 + 56);
      v951.origin.x = v7 + 40.0;
      v951.origin.y = v8 + 40.0;
      v714 = CGRectGetWidth(v951);
    }

    else
    {
      v714 = vabdd_f64(*(v712 + 32 + 8 * v713 - 8), *(v712 + 32));
    }

    v715 = *(v399 + *(type metadata accessor for ChartAccessibilityContent.Builder(0) + 28));
    if (v299)
    {
      v716 = 0.0;
      if (v715)
      {
        v717 = *&v145;
        v714 = 0.0;
      }

      else
      {
        if (v545 >= v544)
        {
          v717 = v544;
        }

        else
        {
          v717 = v545;
        }

        v714 = vabdd_f64(v545, v544);
      }
    }

    else
    {
      v717 = 0.0;
      if (v715)
      {
        v716 = v753;
        v710 = 0.0;
      }

      else
      {
        if (v545 >= v544)
        {
          v716 = v544;
        }

        else
        {
          v716 = v545;
        }

        v710 = vabdd_f64(v545, v544);
      }
    }

    v718 = v714;
    v719 = v710;
    v952 = CGRectOffset(*(&v716 - 1), v7, v8);
    v720 = v952.origin.x;
    v721 = v952.origin.y;
    v722 = v952.size.width;
    v723 = v952.size.height;

    sub_1AAF754B8(!v299, &v905, v763);
    sub_1AACFDFAC(v925, sub_1AACFAA34);
    sub_1AAE68190(&v905);
    sub_1AACFDFAC(v892, sub_1AACFAA34);
    sub_1AAE68190(v913);

    v724 = (v5 + *(type metadata accessor for CollectedChartContent.Primitive(0) + 84));
    v725 = v724[3];
    v848 = v724[2];
    v849 = v725;
    v850 = v724[4];
    LOBYTE(v851) = *(v724 + 80);
    v726 = v724[1];
    v846 = *v724;
    v847 = v726;
    if (*(&v726 + 1) == 1)
    {
      LOBYTE(v814) = 0;
      v812 = 0u;
      v813 = 0u;
      v810 = 0u;
      v811 = 0u;
      v809 = 0u;
      memset(__src, 0, 81);
      sub_1AAE0F994(&v809, v871);
      sub_1AAE0F9F0(__src);
      v727 = v814;
      v663 = *(&v813 + 1);
      v662 = v813;
      v751 = v811;
      v759 = v812;
      v737 = v810;
      v744 = v809;
    }

    else
    {
      v759 = v849;
      v744 = v846;
      v751 = v848;
      v663 = *(&v850 + 1);
      v662 = v850;
      v727 = v851;
      v737 = v847;
    }

    sub_1AAE2D7EC(v871);
    sub_1AAEDA024(&v846, __src, &qword_1ED9ADF40, &type metadata for ChartAccessibilityProperties);

    v664 = v727 & 1;
    v815 = v882;
    v816[0] = v883;
    v816[1] = v884;
    *&v817 = v885;
    v811 = v878;
    v812 = v879;
    v813 = v880;
    v814 = v881;
    v809 = v876;
    v810 = v877;
    nullsub_1(&v809, v728);
    *&__src[296] = v815;
    *&__src[312] = v816[0];
    *&__src[328] = v816[1];
    *&__src[264] = v813;
    *&__src[280] = v814;
    *&__src[232] = v811;
    *&__src[248] = v812;
    *&__src[200] = v809;
    *&__src[216] = v810;
    *&__src[448] = v873;
    *&__src[464] = v874[0];
    *&__src[480] = v874[1];
    *&__src[496] = v875;
    *&__src[384] = v871[2];
    *&__src[400] = v871[3];
    *&__src[416] = v871[4];
    *&__src[432] = v872;
    *&__src[352] = v871[0];
    *&__src[368] = v871[1];
    *__src = v720;
    *&__src[8] = v721;
    *&__src[16] = v722;
    *&__src[24] = v723;
    *&__src[136] = v763[6];
    *&__src[152] = v763[7];
    *&__src[168] = v763[8];
    *&__src[32] = v704;
    *&__src[184] = v764;
    *&__src[72] = v763[2];
    *&__src[88] = v763[3];
    *&__src[104] = v763[4];
    *&__src[120] = v763[5];
    *&__src[40] = v763[0];
    *&__src[56] = v763[1];
    *&__src[344] = v817;
    *&__src[192] = v706;
    *&__src[504] = 257;
    *&__src[506] = v900;
    *&__src[510] = WORD2(v900);
    *&__src[512] = v744;
    *&__src[528] = v737;
    *&__src[544] = v751;
    *&__src[560] = v759;
    goto LABEL_297;
  }

  v10 = *(v6 + 256);
  v930 = *(v6 + 240);
  v931 = v10;
  *&v932 = *(v6 + 272);
  v11 = *(v6 + 192);
  v926 = *(v6 + 176);
  v927 = v11;
  v12 = *(v6 + 224);
  v928 = *(v6 + 208);
  v929 = v12;
  if (!v926)
  {
    goto LABEL_107;
  }

  *v788 = v926;
  *&v788[40] = *(v6 + 216);
  *&v788[56] = *(v6 + 232);
  *&v788[72] = *(v6 + 248);
  *&v788[8] = *(v6 + 184);
  *&v788[24] = *(v6 + 200);
  *&v788[88] = *(v6 + 264);
  v13 = *(v6 + 296);
  v917 = *(v6 + 280);
  v918 = v13;
  v14 = *(v6 + 312);
  v15 = *(v6 + 328);
  v16 = *(v6 + 344);
  v17 = *(v6 + 360);
  *&v923 = *(v6 + 376);
  v921 = v16;
  v922 = v17;
  v919 = v14;
  v920 = v15;
  if (!v917)
  {
    goto LABEL_107;
  }

  *&v934[0] = v917;
  v18 = *(v6 + 336);
  *(&v934[2] + 8) = *(v6 + 320);
  *(&v934[3] + 8) = v18;
  v19 = *(v6 + 368);
  *(&v934[4] + 8) = *(v6 + 352);
  *(&v934[5] + 8) = v19;
  v20 = *(v6 + 304);
  *(v934 + 8) = *(v6 + 288);
  *(&v934[1] + 8) = v20;
  v21 = *(v5 + 16);
  v22 = *(v5 + 32);
  v24 = *(v5 + 80);
  v23 = *(v5 + 96);
  v25 = *(v5 + 48);
  v822 = *(v5 + 64);
  v823 = v24;
  v820 = v22;
  v821 = v25;
  v819 = v21;
  v26 = *(v5 + 112);
  v27 = *(v5 + 128);
  *(v826 + 9) = *(v5 + 137);
  v825 = v26;
  v826[0] = v27;
  v824 = v23;
  v28 = *(type metadata accessor for ChartAccessibilityContent.Builder(0) + 24);
  sub_1AAEDA3C0(&v926, __src, sub_1AACFAA34);
  sub_1AAEDA3C0(&v917, __src, sub_1AACFAA34);
  sub_1AAF27F58(&v819, v788, 0, (v1 + v28), v774);
  v29 = *(v5 + 256);
  v30 = *(v5 + 272);
  v31 = *(v5 + 224);
  v814 = *(v5 + 240);
  v815 = v29;
  v816[0] = v30;
  *(v816 + 9) = *(v5 + 281);
  v32 = *(v5 + 208);
  v811 = *(v5 + 192);
  v812 = v32;
  v813 = v31;
  v33 = *(v5 + 176);
  v809 = *(v5 + 160);
  v810 = v33;
  sub_1AAF27F58(&v809, v934, 0, (v1 + v28), v893);
  if (v774[48] & 1) != 0 || (v893[48])
  {
    sub_1AACFDFAC(&v917, sub_1AACFAA34);
    v34 = &v926;
LABEL_106:
    sub_1AACFDFAC(v34, sub_1AACFAA34);
LABEL_107:
    sub_1AAED9FA0(__src);
LABEL_108:
    memcpy(&v854[4], __src, 0x251uLL);
    goto LABEL_109;
  }

  if (*&v774[8] >= *v774)
  {
    v263 = *v774;
  }

  else
  {
    v263 = *&v774[8];
  }

  if (*&v893[8] >= *v893)
  {
    v264 = *v893;
  }

  else
  {
    v264 = *&v893[8];
  }

  v265 = vabdd_f64(*&v774[8], *v774);
  v266 = vabdd_f64(*&v893[8], *v893);
  v937 = CGRectOffset(*&v263, v7, v8);
  v267 = v937.origin.x;
  v268 = v937.origin.y;
  v269 = v937.size.width;
  v270 = v937.size.height;
  *&v937.origin.y = *(v5 + 80);
  v872 = *(v5 + 96);
  v937.size = *(v5 + 128);
  v873 = *(v5 + 112);
  v874[0] = v937.size;
  *(v874 + 9) = *(v5 + 137);
  v937.size = *(v5 + 64);
  v871[2] = *(v5 + 48);
  v871[3] = v937.size;
  v871[4] = *&v937.origin.y;
  v937.origin = *(v5 + 32);
  v871[0] = *(v5 + 16);
  v871[1] = v937.origin;
  sub_1AAE680CC(v871, __src);
  sub_1AAF754B8(0, v871, v886);
  v271 = sub_1AAD6AE5C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v273 = v271[2];
  v272 = v271[3];
  if (v273 >= v272 >> 1)
  {
    v271 = sub_1AAD6AE5C((v272 > 1), v273 + 1, 1, v271);
  }

  v271[2] = v273 + 1;
  v274 = &v271[19 * v273];
  *(v274 + 3) = *&v886[16];
  *(v274 + 2) = *v886;
  *(v274 + 7) = v887;
  *(v274 + 6) = *&v886[64];
  *(v274 + 5) = *&v886[48];
  *(v274 + 4) = *&v886[32];
  v274[22] = v890;
  *(v274 + 10) = v889[1];
  *(v274 + 9) = v889[0];
  *(v274 + 8) = v888;
  v275 = *(v5 + 256);
  v276 = *(v5 + 272);
  v277 = *(v5 + 224);
  v830 = *(v5 + 240);
  v831 = v275;
  v832[0] = v276;
  *(v832 + 9) = *(v5 + 281);
  v278 = *(v5 + 208);
  *&v829[32] = *(v5 + 192);
  *&v829[48] = v278;
  *&v829[64] = v277;
  v279 = *(v5 + 176);
  *v829 = *(v5 + 160);
  *&v829[16] = v279;
  sub_1AAE680CC(v829, __src);
  sub_1AAF754B8(1, v829, v834);
  v281 = v271[2];
  v280 = v271[3];
  v282 = v281 + 1;
  if (v281 >= v280 >> 1)
  {
    v271 = sub_1AAD6AE5C((v280 > 1), v281 + 1, 1, v271);
  }

  v271[2] = v282;
  v283 = &v271[19 * v281];
  v284 = *&v834[16];
  *(v283 + 2) = *v834;
  *(v283 + 3) = v284;
  v285 = *&v834[32];
  v286 = *&v834[48];
  v287 = v835;
  *(v283 + 6) = *&v834[64];
  *(v283 + 7) = v287;
  *(v283 + 4) = v285;
  *(v283 + 5) = v286;
  v288 = v836;
  v289 = v837[0];
  v290 = v837[1];
  v283[22] = v838;
  *(v283 + 9) = v289;
  *(v283 + 10) = v290;
  *(v283 + 8) = v288;
  sub_1AAEDA024(v5 + 336, &v905, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle);
  if (BYTE1(v909) < 0xFFu)
  {
    if ((v909 & 0xFF00) == 0x200)
    {
      v895[2] = v907;
      v895[3] = v908;
      LOBYTE(v895[4]) = v909;
      v895[0] = v905;
      v895[1] = v906;
      *&v913[7] = v905;
      *&v913[23] = v906;
      *&v913[39] = v907;
      *&v913[55] = v908;
      v913[71] = v909;
      __src[0] = 5;
      *&__src[1] = *v913;
      *&__src[65] = *&v913[64];
      *&__src[49] = *&v913[48];
      *&__src[33] = *&v913[32];
      *&__src[17] = *&v913[16];
      __src[73] = 3;
      sub_1AAEDA174(__src);
      sub_1AAE63EFC(v895, &v855);
      v374 = v271[3];
      if ((v281 + 2) > (v374 >> 1))
      {
        v271 = sub_1AAD6AE5C((v374 > 1), v281 + 2, 1, v271);
      }

      sub_1AAE63F58(v895);
      v861 = *&__src[96];
      v862 = *&__src[112];
      v863 = *&__src[128];
      v857 = *&__src[32];
      v858 = *&__src[48];
      v859 = *&__src[64];
      v860 = *&__src[80];
      v855 = *__src;
      *&v864 = *&__src[144];
      v856 = *&__src[16];
      nullsub_1(&v855, v375);
      v271[2] = v281 + 2;
      v376 = &v271[19 * v282];
      v377 = v856;
      *(v376 + 2) = v855;
      *(v376 + 3) = v377;
      v378 = v857;
      v379 = v858;
      v380 = v860;
      *(v376 + 6) = v859;
      *(v376 + 7) = v380;
      *(v376 + 4) = v378;
      *(v376 + 5) = v379;
      v381 = v861;
      v382 = v862;
      v383 = v863;
      v376[22] = v864;
      *(v376 + 9) = v382;
      *(v376 + 10) = v383;
      *(v376 + 8) = v381;
    }

    else
    {
      sub_1AAEDA120(&v905);
    }
  }

  else
  {
    sub_1AAEDA0A4(&v905, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle, MEMORY[0x1E69E6720]);
  }

  v484 = v4;
  v485 = sub_1AAF70438(v271);
  v487 = v486;
  sub_1AACFDFAC(&v926, sub_1AACFAA34);
  sub_1AACFDFAC(&v917, sub_1AACFAA34);
  v488 = v5 + *(type metadata accessor for CollectedChartContent.Primitive(0) + 84);
  v489 = *(v488 + 48);
  *&v913[32] = *(v488 + 32);
  *&v913[48] = v489;
  *&v913[64] = *(v488 + 64);
  LOBYTE(v914) = *(v488 + 80);
  v490 = *(v488 + 16);
  *v913 = *v488;
  *&v913[16] = v490;
  if (*(&v490 + 1) == 1)
  {
    LOBYTE(v860) = 0;
    v859 = 0u;
    v858 = 0u;
    v857 = 0u;
    v856 = 0u;
    v855 = 0u;
    memset(__src, 0, 81);
    sub_1AAE0F994(&v855, &v905);
    sub_1AAE0F9F0(__src);
    v491 = v860;
    v493 = *(&v859 + 1);
    v492 = v859;
    v746 = v857;
    v755 = v858;
    v733 = v856;
    v740 = v855;
  }

  else
  {
    v755 = *&v913[48];
    v740 = *v913;
    v746 = *&v913[32];
    v492 = *&v913[64];
    v493 = *&v913[72];
    v491 = v914;
    v733 = *&v913[16];
  }

  sub_1AAE2D7EC(&v855);
  sub_1AAEDA024(v913, __src, &qword_1ED9ADF40, &type metadata for ChartAccessibilityProperties);

  *&__src[136] = v861;
  *&__src[152] = v862;
  *&__src[168] = v863;
  *&__src[72] = v857;
  *&__src[88] = v858;
  *&__src[104] = v859;
  *&__src[120] = v860;
  *&__src[40] = v855;
  *&__src[56] = v856;
  *&__src[296] = v861;
  *&__src[312] = v862;
  *&__src[328] = v863;
  *&__src[264] = v859;
  *&__src[280] = v860;
  *&__src[496] = v864;
  *&__src[232] = v857;
  *&__src[248] = v858;
  *&__src[200] = v855;
  *&__src[216] = v856;
  *&__src[448] = v861;
  *&__src[464] = v862;
  *&__src[480] = v863;
  *&__src[384] = v857;
  *&__src[400] = v858;
  *&__src[416] = v859;
  *&__src[432] = v860;
  *&__src[352] = v855;
  *&__src[368] = v856;
  *__src = v267;
  *&__src[8] = v268;
  *&__src[16] = v269;
  *&__src[24] = v270;
  *&__src[184] = v864;
  *&__src[32] = v485;
  *&__src[344] = v864;
  *&__src[192] = v487;
  *&__src[504] = 0;
  *&__src[506] = v905;
  *&__src[510] = WORD2(v905);
  *&__src[512] = v740;
  *&__src[528] = v733;
  *&__src[544] = v746;
  *&__src[560] = v755;
  *&__src[576] = v492;
  *&__src[584] = v493;
  __src[592] = v491 & 1;
  sub_1AAEDA100(__src);
  memcpy(&v854[4], __src, 0x251uLL);
  v4 = v484;
LABEL_109:
  *v4 = 0;
  return memcpy(v4 + 1, v854, 0x255uLL);
}