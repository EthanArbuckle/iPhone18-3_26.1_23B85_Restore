uint64_t sub_1AAF50D68(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 96;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 96;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[96 * v9] <= a4)
    {
      memmove(a4, __dst, 96 * v9);
    }

    v12 = &v4[96 * v9];
    if (v8 < 96)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v15 = *(v6 + 1) < *(v4 + 1);
      if (*v6 != *v4)
      {
        v15 = *v4 < *v6;
      }

      if (v15)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 96;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 96;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 96;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v13, 0x60uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[96 * v11] <= a4)
  {
    memmove(a4, __src, 96 * v11);
  }

  v12 = &v4[96 * v11];
  if (v10 >= 96 && v6 > v7)
  {
LABEL_22:
    v16 = v6 - 96;
    v5 -= 96;
    v17 = v12;
    do
    {
      v18 = *(v17 - 12);
      v17 -= 12;
      v19 = v5 + 96;
      v20 = *(v6 - 12);
      v21 = v20 < v18;
      v22 = *(v17 + 1) < *(v6 - 11);
      if (v18 != v20)
      {
        v22 = v21;
      }

      if (v22)
      {
        if (v19 != v6)
        {
          memmove(v5, v6 - 96, 0x60uLL);
        }

        if (v12 <= v4 || (v6 -= 96, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_35;
        }

        goto LABEL_22;
      }

      if (v19 != v12)
      {
        memmove(v5, v17, 0x60uLL);
      }

      v5 -= 96;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_35:
  v23 = (v12 - v4) / 96;
  if (v6 != v4 || v6 >= &v4[96 * v23])
  {
    memmove(v6, v4, 96 * v23);
  }

  return 1;
}

uint64_t sub_1AAF50FF8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AAF51030()
{
  sub_1AAF51104(v0 + OBJC_IVAR____TtC6Charts14SgMeasurements__measurements);
  v1 = OBJC_IVAR____TtC6Charts14SgMeasurements__dynamicTypeSize;
  v2 = sub_1AAF8DCD4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1AAF51104(uint64_t a1)
{
  sub_1AACC6DA0(0, &qword_1ED9B5518, MEMORY[0x1E6980F98], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AAF51190(uint64_t a1, uint64_t a2)
{
  sub_1AACC6DA0(0, &qword_1ED9B5518, MEMORY[0x1E6980F98], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAF51224(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v2, 0);
    result = v8;
    v4 = (a1 + 40);
    do
    {
      v5 = *v4;
      v9 = result;
      v7 = *(result + 16);
      v6 = *(result + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1AAD1FAF4((v6 > 1), v7 + 1, 1);
        result = v9;
      }

      *(result + 16) = v7 + 1;
      *(result + 8 * v7 + 32) = v5;
      v4 += 12;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1AAF512E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v2, 0);
    result = v8;
    v4 = (a1 + 48);
    do
    {
      v5 = *v4;
      v9 = result;
      v7 = *(result + 16);
      v6 = *(result + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1AAD1FAF4((v6 > 1), v7 + 1, 1);
        result = v9;
      }

      *(result + 16) = v7 + 1;
      *(result + 8 * v7 + 32) = v5;
      v4 += 12;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1AAF513AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v36[1] = a2;
  v38 = a6;
  sub_1AAF67D3C(255, &qword_1ED9B1708, &qword_1ED9B1700, MEMORY[0x1E6980F50]);
  v10 = sub_1AAF8DF74();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v36 - v12;
  sub_1AAF686A4(255, &qword_1ED9AF4E8, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E6980480]);
  v36[0] = sub_1AAF8DF74();
  v14 = MEMORY[0x1EEE9AC00](v36[0]);
  v15 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = *(v15 + 16);
  v39 = a1;
  v17(v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a4);
  v18 = swift_dynamicCast();
  v37 = a3;
  if (v18)
  {
    v19 = v44;
    v20 = v45;
    v21 = v46;

    v22 = sub_1AAF8EA24();
    v24 = v23;
    LODWORD(v36[0]) = v25;
    v27 = v26;

    v28 = v19;
    v29 = v37;
    sub_1AAD04750(v28, v20, v21);

    result = (*(v15 + 8))(v39, a4);
    v31 = v36[0] & 1;
  }

  else
  {

    sub_1AAF8EBE4();

    v44 = a3;
    v32 = sub_1AAF67DA8(&qword_1ED9B11E8, &qword_1ED9B1708, &qword_1ED9B1700, MEMORY[0x1E6980F50]);
    v42 = a5;
    v43 = v32;
    WitnessTable = swift_getWitnessTable();
    sub_1AAF8EB24();
    (*(v11 + 8))(v13, v10);
    v34 = sub_1AAF67E34();
    v40 = WitnessTable;
    v41 = v34;
    swift_getWitnessTable();
    v22 = sub_1AAF8EF44();

    result = (*(v15 + 8))(v39, a4);
    v24 = 0;
    v27 = 0;
    v29 = 0;
    v31 = 0x8000000000000000;
  }

  v35 = v38;
  *v38 = v22;
  v35[1] = v24;
  v35[2] = v31;
  v35[3] = v27;
  v35[4] = v29;
  return result;
}

double sub_1AAF517A0(unint64_t a1)
{
  v2 = type metadata accessor for SgPath(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SgArea(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SgLine(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SgRule(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for SgSector(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SgRectangle(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = (v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for SgPoint(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SgGroup(0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = 0.0;
  switch(a1 >> 60)
  {
    case 1uLL:
      v33 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);

      sub_1AAF5EA88(v34, v33);
      v26 = v35;

      return v26;
    case 2uLL:
      sub_1AAD117A0((a1 & 0xFFFFFFFFFFFFFFFLL) + 16, v49);
      sub_1AAF5D3F8();
      v26 = v36;
      sub_1AAF14C40(v49);
      return v26;
    case 3uLL:
      v27 = swift_projectBox();
      sub_1AACAAD4C(v27, v22, type metadata accessor for SgPoint);
      sub_1AAF54C08();
      v26 = v28;
      v29 = type metadata accessor for SgPoint;
      v30 = v22;
      goto LABEL_20;
    case 4uLL:
      v40 = swift_projectBox();
      sub_1AACAAD4C(v40, v19, type metadata accessor for SgRectangle);
      v26 = v19[1];
      v29 = type metadata accessor for SgRectangle;
      v30 = v19;
      goto LABEL_20;
    case 5uLL:
      v41 = swift_projectBox();
      sub_1AACAAD4C(v41, v16, type metadata accessor for SgSector);
      v42 = vaddvq_f64(vmulq_f64(*(v16 + 24), xmmword_1AAFC7450));
      v26 = v42 * __sincos_stret(((*(v16 + 8) + *(v16 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0).__cosval;
      sub_1AACAADB4(v16, type metadata accessor for SgSector);
      return v26;
    case 6uLL:
      v37 = swift_projectBox();
      sub_1AACAAD4C(v37, v13, type metadata accessor for SgRule);
      if (v13[3] >= v13[1])
      {
        v26 = v13[1];
      }

      else
      {
        v26 = v13[3];
      }

      v29 = type metadata accessor for SgRule;
      v30 = v13;
      goto LABEL_20;
    case 7uLL:
      v45 = swift_projectBox();
      sub_1AACAAD4C(v45, v10, type metadata accessor for SgLine);
      sub_1AAF56CF0();
      v26 = v46;
      v29 = type metadata accessor for SgLine;
      v30 = v10;
      goto LABEL_20;
    case 8uLL:
      v31 = swift_projectBox();
      sub_1AACAAD4C(v31, v7, type metadata accessor for SgArea);
      sub_1AAF58424();
      v26 = v32;
      v29 = type metadata accessor for SgArea;
      v30 = v7;
      goto LABEL_20;
    case 9uLL:
      v43 = swift_projectBox();
      sub_1AACAAD4C(v43, v4, type metadata accessor for SgPath);
      v44 = *(v4 + 24);
      v49[0] = *(v4 + 8);
      v49[1] = v44;
      v50 = v4[40];
      if (sub_1AAF8E8E4())
      {
        v26 = *MEMORY[0x1E695F050];
      }

      else
      {
        sub_1AAF8E874();
        v26 = v47;
      }

      v29 = type metadata accessor for SgPath;
      v30 = v4;
      goto LABEL_20;
    case 0xAuLL:
    case 0xEuLL:
      return *MEMORY[0x1E695F050];
    case 0xBuLL:
    case 0xCuLL:
      return *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    case 0xDuLL:
      return v26;
    default:
      v38 = swift_projectBox();
      sub_1AACAAD4C(v38, v25, type metadata accessor for SgGroup);
      sub_1AAF58748();
      v26 = v39;
      v29 = type metadata accessor for SgGroup;
      v30 = v25;
LABEL_20:
      sub_1AACAADB4(v30, v29);
      return v26;
  }
}

uint64_t sub_1AAF51E48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1AAF67D3C(255, &qword_1ED9B1E80, &qword_1ED9B1E58, MEMORY[0x1E69815C0]);
  v8 = sub_1AAF8DF74();
  MEMORY[0x1EEE9AC00](v8);
  v9 = *(a2 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  (*(v9 + 16))(&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v11);
  if (swift_dynamicCast())
  {
    v13 = v33;
    v14 = v34;
    v30 = a1;
    v15 = v35;
    sub_1AAF8ED44();
    v16 = a4;
    v17 = sub_1AAF8E9E4();
    v28 = v18;
    v29 = v19;
    v21 = v20;

    v22 = v13;
    v23 = v17;
    a4 = v16;
    sub_1AAD04750(v22, v14, v15);

    result = (*(v9 + 8))(v30, a2);
    v25 = v28;
    v26 = v29 & 1;
  }

  else
  {
    sub_1AAF8ED44();
    sub_1AAF8EB14();

    v27 = sub_1AAF67DA8(&qword_1ED9B1E88, &qword_1ED9B1E80, &qword_1ED9B1E58, MEMORY[0x1E69815C0]);
    v31 = a3;
    v32 = v27;
    swift_getWitnessTable();
    v23 = sub_1AAF8EF44();
    result = (*(v9 + 8))(a1, a2);
    v25 = 0;
    v21 = 0;
    v26 = 0x8000000000000000;
  }

  *a4 = v23;
  a4[1] = v25;
  a4[2] = v26;
  a4[3] = v21;
  a4[4] = 0;
  return result;
}

uint64_t sub_1AAF520F4(void (*a1)(uint64_t *__return_ptr, __int128 *))
{
  sub_1AACDBA18(v1, &v7, &qword_1ED9B0F38, &type metadata for ChartScrollPosition, MEMORY[0x1E69E6720]);
  if (v8[25] == 255)
  {
    return 0;
  }

  v5 = v7;
  v6[0] = *v8;
  *(v6 + 10) = *&v8[10];
  a1(&v9, &v5);
  if (v2)
  {
    result = sub_1AAE04AA8(&v5);
    __break(1u);
  }

  else
  {
    sub_1AAE04AA8(&v5);
    return v9;
  }

  return result;
}

uint64_t sub_1AAF521C4(void (*a1)(uint64_t *__return_ptr, __int128 *))
{
  if (!*v1)
  {
    return 0;
  }

  v4 = v1[5];
  v14 = v1[4];
  v15 = v4;
  v16 = *(v1 + 12);
  v5 = v1[1];
  v10 = *v1;
  v11 = v5;
  v6 = v1[3];
  v12 = v1[2];
  v13 = v6;
  v17[0] = v10;
  v17[1] = v5;
  v17[2] = v12;
  v17[3] = v6;
  v17[4] = v14;
  v17[5] = v4;
  v18 = v16;
  sub_1AAEDA330(v17, v8);
  a1(&v19, &v10);
  v8[4] = v14;
  v8[5] = v15;
  v9 = v16;
  v8[0] = v10;
  v8[1] = v11;
  v8[2] = v12;
  v8[3] = v13;
  if (v2)
  {
    result = sub_1AAE45040(v8);
    __break(1u);
  }

  else
  {
    sub_1AAE45040(v8);
    return v19;
  }

  return result;
}

uint64_t sub_1AAF522D8(void (*a1)(uint64_t *__return_ptr, _OWORD *))
{
  sub_1AACAAD4C(v1, v7, sub_1AACC9CF4);
  if (v8 == 255)
  {
    return 0;
  }

  v5[6] = v7[6];
  v5[7] = v7[7];
  v6 = v8;
  v5[2] = v7[2];
  v5[3] = v7[3];
  v5[4] = v7[4];
  v5[5] = v7[5];
  v5[0] = v7[0];
  v5[1] = v7[1];
  a1(&v9, v5);
  if (v2)
  {
    result = sub_1AAF67B3C(v5, &qword_1ED9B3E08, &type metadata for AnyChartSymbolShape, type metadata accessor for AnyConcreteScale);
    __break(1u);
  }

  else
  {
    sub_1AAF67B3C(v5, &qword_1ED9B3E08, &type metadata for AnyChartSymbolShape, type metadata accessor for AnyConcreteScale);
    return v9;
  }

  return result;
}

uint64_t sub_1AAF523F8(void (*a1)(uint64_t *__return_ptr, __int128 *))
{
  if (*(v1 + 104) == 255)
  {
    return 0;
  }

  v4 = v1[5];
  v14 = v1[4];
  v15[0] = v4;
  *(v15 + 9) = *(v1 + 89);
  v5 = v1[1];
  v10 = *v1;
  v11 = v5;
  v6 = v1[3];
  v12 = v1[2];
  v13 = v6;
  v16[0] = v10;
  v16[1] = v5;
  v16[2] = v12;
  v16[3] = v6;
  v16[4] = v14;
  v17[0] = v4;
  *(v17 + 9) = *(v15 + 9);
  sub_1AACDBA18(v16, v8, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
  a1(&v18, &v10);
  v8[4] = v14;
  v9[0] = v15[0];
  *(v9 + 9) = *(v15 + 9);
  v8[0] = v10;
  v8[1] = v11;
  v8[2] = v12;
  v8[3] = v13;
  if (v2)
  {
    result = sub_1AAF67B3C(v8, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
    __break(1u);
  }

  else
  {
    sub_1AAF67B3C(v8, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
    return v18;
  }

  return result;
}

uint64_t sub_1AAF52578(void (*a1)(uint64_t *__return_ptr, __int128 *))
{
  v4 = v1[7];
  v31[6] = v1[6];
  v31[7] = v4;
  v32 = *(v1 + 128);
  v5 = v1[3];
  v31[2] = v1[2];
  v31[3] = v5;
  v6 = v1[5];
  v31[4] = v1[4];
  v31[5] = v6;
  v7 = v1[1];
  v31[0] = *v1;
  v31[1] = v7;
  if (sub_1AAD05174(v31) == 1)
  {
    return 0;
  }

  v9 = v1[5];
  v10 = v1[7];
  v25 = v1[6];
  v26 = v10;
  v11 = v1[1];
  v12 = v1[3];
  v21 = v1[2];
  v22 = v12;
  v13 = v1[3];
  v14 = v1[5];
  v23 = v1[4];
  v24 = v14;
  v15 = v1[1];
  v19 = *v1;
  v20 = v15;
  v16 = v1[7];
  v28[6] = v25;
  v28[7] = v16;
  v28[2] = v21;
  v28[3] = v13;
  v28[4] = v23;
  v28[5] = v9;
  v27 = *(v1 + 128);
  v29 = *(v1 + 128);
  v28[0] = v19;
  v28[1] = v11;
  sub_1AACDBA18(v28, v17, &qword_1ED9B3E18, MEMORY[0x1E697DD48], type metadata accessor for AnyConcreteScale);
  a1(&v30, &v19);
  v17[6] = v25;
  v17[7] = v26;
  v18 = v27;
  v17[2] = v21;
  v17[3] = v22;
  v17[4] = v23;
  v17[5] = v24;
  v17[0] = v19;
  v17[1] = v20;
  if (v2)
  {
    result = sub_1AAF67B3C(v17, &qword_1ED9B3E18, MEMORY[0x1E697DD48], type metadata accessor for AnyConcreteScale);
    __break(1u);
  }

  else
  {
    sub_1AAF67B3C(v17, &qword_1ED9B3E18, MEMORY[0x1E697DD48], type metadata accessor for AnyConcreteScale);
    return v30;
  }

  return result;
}

uint64_t sub_1AAF52754(void (*a1)(uint64_t *__return_ptr, __int128 *))
{
  if (*(v1 + 96) == 255)
  {
    return 0;
  }

  v4 = v1[5];
  v14 = v1[4];
  v15 = v4;
  v16 = *(v1 + 96);
  v5 = v1[1];
  v10 = *v1;
  v11 = v5;
  v6 = v1[3];
  v12 = v1[2];
  v13 = v6;
  v17[0] = v10;
  v17[1] = v5;
  v17[2] = v12;
  v17[3] = v6;
  v17[4] = v14;
  v17[5] = v4;
  v18 = v16;
  sub_1AACDBA18(v17, v8, &qword_1ED9B3E28, MEMORY[0x1E697E0B8], type metadata accessor for AnyConcreteScale);
  a1(&v19, &v10);
  v8[4] = v14;
  v8[5] = v15;
  v9 = v16;
  v8[0] = v10;
  v8[1] = v11;
  v8[2] = v12;
  v8[3] = v13;
  if (v2)
  {
    result = sub_1AAF67B3C(v8, &qword_1ED9B3E28, MEMORY[0x1E697E0B8], type metadata accessor for AnyConcreteScale);
    __break(1u);
  }

  else
  {
    sub_1AAF67B3C(v8, &qword_1ED9B3E28, MEMORY[0x1E697E0B8], type metadata accessor for AnyConcreteScale);
    return v19;
  }

  return result;
}

uint64_t sub_1AAF528D0(uint64_t result, uint64_t (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = result;
  if (a4 != a5)
  {
    v7 = a4;
    if (a5 >= a4)
    {
      v9 = 0;
      while (a5 != v7)
      {
        if (__OFADD__(v9, 1))
        {
          goto LABEL_12;
        }

        v10[0] = v9;
        v10[1] = v7;
        result = a2(&v11, v10);
        if (v5)
        {
        }

        ++v7;
        ++v9;
        if (a5 == v7)
        {
          return v11;
        }
      }

      __break(1u);
LABEL_12:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1AAF52984(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v10 = a1;
  v6 = a4 + 32;
  v7 = *(a4 + 16) + 1;
  while (--v7)
  {
    v8 = v6 + 96;
    a2(&v10);
    v6 = v8;
    if (v4)
    {
    }
  }

  return v10;
}

uint64_t sub_1AAF52A00(unsigned __int8 *a1)
{
  v3 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v7 = *a1;
  v8 = *(a1 + 1);
  v9 = OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  sub_1AACAAD4C(v8 + v9, v6, type metadata accessor for ChartContentRenderContext.Environment);
  v10 = type metadata accessor for PointsRenderer(0);
  v11 = v10[8];
  sub_1AACAC4BC(v1 + v11, qword_1ED9B4960, type metadata accessor for ChartContentRenderContext.Environment);
  sub_1AACAAD4C(v6, v1 + v11, type metadata accessor for ChartContentRenderContext.Environment);
  (*(v4 + 56))(v1 + v11, 0, 1, v3);

  *(v1 + 40) = v7;
  *(v1 + 48) = v8;
  v12 = v1 + v10[9];
  v13 = MEMORY[0x1E69E6720];
  sub_1AACDBA18(v12, &v24, qword_1ED9B3000, &type metadata for SgSymbol, MEMORY[0x1E69E6720]);
  LODWORD(v7) = v25[24];
  sub_1AAF67B3C(&v24, qword_1ED9B3000, &type metadata for SgSymbol, v13);
  if (v7 == 255)
  {
    sub_1AACDBA18((v6 + 88), &v22, qword_1ED9B3000, &type metadata for SgSymbol, MEMORY[0x1E69E6720]);
    if (v23[24] == 255)
    {
      sub_1AAF67B3C(&v22, qword_1ED9B3000, &type metadata for SgSymbol, MEMORY[0x1E69E6720]);
    }

    else
    {
      v24 = v22;
      *v25 = *v23;
      *&v25[9] = *&v23[9];
      sub_1AAD9ADE4(&v24, &v22);
      if (v23[24])
      {
        result = sub_1AAF902C4();
        __break(1u);
        return result;
      }

      sub_1AAF50004(&v24);
      sub_1AAF67B3C(v12, qword_1ED9B3000, &type metadata for SgSymbol, MEMORY[0x1E69E6720]);
      v14 = *v23;
      *v12 = v22;
      *(v12 + 16) = v14;
      *(v12 + 32) = *&v23[16];
      *(v12 + 40) = 0;
    }
  }

  v15 = *(v6 + 17);
  v16 = *(v6 + 18);
  v17 = v6[152];
  result = sub_1AACAADB4(v6, type metadata accessor for ChartContentRenderContext.Environment);
  v19 = 0x404921FB54442D18;
  if (v17 == 255)
  {
    v20 = 0;
  }

  else
  {
    v19 = v15;
    v20 = v16;
  }

  v21 = v1 + v10[10];
  *v21 = v19;
  *(v21 + 8) = v20;
  *(v21 + 16) = (v17 != 255) & v17;
  return result;
}

double sub_1AAF52D70(unsigned __int8 *a1)
{
  *&v32 = MEMORY[0x1E697F488];
  sub_1AAD0DA28(0, &qword_1ED9B5558, MEMORY[0x1E697F488], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v30 - v4;
  v6 = sub_1AAF8E244();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  *&v33 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *a1;
  v13 = *(a1 + 1);
  v14 = OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  sub_1AACAAD4C(v13 + v14, v12, type metadata accessor for ChartContentRenderContext.Environment);
  v34 = type metadata accessor for RectanglesRenderer(0);
  v15 = *(v34 + 32);
  sub_1AACAC4BC(v1 + v15, qword_1ED9B4960, type metadata accessor for ChartContentRenderContext.Environment);
  sub_1AACAAD4C(v12, v1 + v15, type metadata accessor for ChartContentRenderContext.Environment);
  (*(v10 + 56))(v1 + v15, 0, 1, v9);

  v16 = v32;
  *(v1 + 40) = v31;
  *(v1 + 48) = v13;
  sub_1AACAC30C(&v12[*(v9 + 44)], v5, &qword_1ED9B5558, v16);
  v17 = *(v7 + 48);
  if (v17(v5, 1, v6) == 1)
  {
    v18 = v33;
    (*(v7 + 104))(v33, *MEMORY[0x1E697F468], v6);
    v19 = v17(v5, 1, v6);
    v20 = v18;
    if (v19 == 1)
    {
      goto LABEL_6;
    }

    sub_1AACAC4BC(v5, &qword_1ED9B5558, MEMORY[0x1E697F488]);
  }

  else
  {
    v18 = v33;
    (*(v7 + 32))(v33, v5, v6);
  }

  v20 = v18;
LABEL_6:
  v21 = v34;
  (*(v7 + 40))(v1 + *(v34 + 40), v20, v6);
  if ((v12[208] & 1) == 0)
  {
    v22 = 0;
    v23 = *(v12 + 11);
    v32 = *(v12 + 12);
LABEL_11:
    v33 = v23;
    goto LABEL_12;
  }

  if ((v12[168] & 1) == 0)
  {
    sub_1AAF8E444();
    v22 = 0;
    *(&v25 + 1) = v24;
    v32 = v25;
    *(&v23 + 1) = v26;
    goto LABEL_11;
  }

  v32 = 0u;
  v33 = 0u;
  v22 = 1;
LABEL_12:
  sub_1AACAADB4(v12, type metadata accessor for ChartContentRenderContext.Environment);
  v27 = v1 + *(v21 + 36);
  v29 = v32;
  result = *&v33;
  *v27 = v33;
  *(v27 + 16) = v29;
  *(v27 + 32) = v22;
  return result;
}

uint64_t sub_1AAF5317C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v41 = a1;
  v42 = a2;
  sub_1AAD0DA28(0, qword_1ED9B4960, type metadata accessor for ChartContentRenderContext.Environment, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v38 - v9;
  v11 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for PointsRenderer(0);
  sub_1AACAC30C(v5 + v39[8], v10, qword_1ED9B4960, type metadata accessor for ChartContentRenderContext.Environment);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1AACAC4BC(v10, qword_1ED9B4960, type metadata accessor for ChartContentRenderContext.Environment);
    goto LABEL_21;
  }

  v43 = a3;
  sub_1AAF67C60(v10, v14, type metadata accessor for ChartContentRenderContext.Environment);
  v15 = v5[6];
  if (!v15)
  {
    while (1)
    {
LABEL_21:
      sub_1AAF902C4();
      __break(1u);
    }
  }

  sub_1AAD0DA28(0, &qword_1EB422FD8, type metadata accessor for AnyVectorizedRenderer, MEMORY[0x1E69E6F90]);
  v16 = *(type metadata accessor for AnyVectorizedRenderer(0) - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v38 = xmmword_1AAF92AB0;
  *(v18 + 16) = xmmword_1AAF92AB0;
  sub_1AACAAD4C(v5, v18 + v17, type metadata accessor for PointsRenderer);
  type metadata accessor for AnyVectorizedRenderer.MarkRenderer(0);
  swift_storeEnumTagMultiPayload();
  *&v49 = a4;

  sub_1AADC94EC(v18);
  v40 = v49;
  v19 = OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolScale;
  swift_beginAccess();
  v20 = sub_1AACAAD4C(v15 + v19, &v49, sub_1AACC9CF4);
  MEMORY[0x1EEE9AC00](v20);
  v21 = sub_1AAF522D8(sub_1AAF67AFC);
  v23 = v22;
  v24 = sub_1AACAADB4(&v49, sub_1AACC9CF4);
  if (v21)
  {
    goto LABEL_14;
  }

  sub_1AACDBA18(v5 + v39[9], &v47, qword_1ED9B3000, &type metadata for SgSymbol, MEMORY[0x1E69E6720]);
  if (BYTE8(v48[1]) == 255)
  {
    sub_1AACDBA18((v14 + 88), &v45, qword_1ED9B3000, &type metadata for SgSymbol, MEMORY[0x1E69E6720]);
    if (BYTE8(v48[1]) != 255)
    {
      sub_1AAF67B3C(&v47, qword_1ED9B3000, &type metadata for SgSymbol, MEMORY[0x1E69E6720]);
    }
  }

  else
  {
    v45 = v47;
    v46[0] = v48[0];
    *(v46 + 9) = *(v48 + 9);
  }

  if (BYTE8(v46[1]) != 255)
  {
    v49 = v45;
    v50[0] = v46[0];
    *(v50 + 9) = *(v46 + 9);
    sub_1AAD9ADE4(&v49, &v45);
    if ((BYTE8(v46[1]) & 1) == 0)
    {
      v47 = v45;
      v48[0] = v46[0];
      *&v48[1] = *&v46[1];
      sub_1AAD9B194(&v47, v44);
      sub_1AACC7228(0, &qword_1EB423040, &type metadata for AnyChartSymbolShape, MEMORY[0x1E69E6F90]);
      v21 = swift_allocObject();
      *(v21 + 16) = v38;
      sub_1AAD9B194(v44, v21 + 32);
      v23 = sub_1AAF8F8A4();
      *(v23 + 16) = 1;
      *(v23 + 32) = 0;
      sub_1AAE45A14(v44);
      sub_1AAE45A14(&v47);
      v24 = sub_1AAF50004(&v49);
      goto LABEL_14;
    }

    goto LABEL_21;
  }

  sub_1AAF67B3C(&v45, qword_1ED9B3000, &type metadata for SgSymbol, MEMORY[0x1E69E6720]);
  if (qword_1ED9B0450 != -1)
  {
    swift_once();
  }

  sub_1AAD9B194(&unk_1ED9C33F0, &v49);
  sub_1AACC7228(0, &qword_1EB423040, &type metadata for AnyChartSymbolShape, MEMORY[0x1E69E6F90]);
  v21 = swift_allocObject();
  *(v21 + 16) = v38;
  sub_1AAD9B194(&v49, v21 + 32);
  v23 = sub_1AAF8F8A4();
  *(v23 + 16) = 1;
  *(v23 + 32) = 0;
  v24 = sub_1AAE45A14(&v49);
LABEL_14:
  v26 = *(v15 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 16);
  v25 = *(v15 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 32);
  v49 = *(v15 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale);
  v50[0] = v26;
  v50[1] = v25;
  v28 = *(v15 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 64);
  v27 = *(v15 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 80);
  v29 = *(v15 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 48);
  *(v51 + 9) = *(v15 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 89);
  v50[3] = v28;
  v51[0] = v27;
  v50[2] = v29;
  MEMORY[0x1EEE9AC00](v24);
  sub_1AACAAD4C(&v49, &v45, sub_1AACCF364);
  v30 = sub_1AAF523F8(sub_1AAF67B1C);
  v32 = v31;
  sub_1AACAADB4(&v49, sub_1AACCF364);
  if (!v30)
  {
    v33 = (v5 + v39[10]);
    if (v33[2])
    {
      v34 = 50.2654825;
    }

    else
    {
      v34 = *v33;
    }

    sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);
    v30 = swift_allocObject();
    *(v30 + 16) = v38;
    *(v30 + 32) = v34;
    v32 = sub_1AAF8F8A4();
    *(v32 + 16) = 1;
    *(v32 + 32) = 0;
  }

  v35 = v5[3];
  v36 = v5[4];
  sub_1AACBB42C(v5, v35);
  *&v45 = v21;
  *(&v45 + 1) = v23;
  *&v46[0] = v30;
  *(&v46[0] + 1) = v32;
  (*(v36 + 24))(v41, v42, v14, v43, v40, &v45, &type metadata for PointElementDrawer, &off_1F1FE70A8, v35, v36);

  return sub_1AACAADB4(v14, type metadata accessor for ChartContentRenderContext.Environment);
}

uint64_t sub_1AAF53A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v43 = a4;
  v44 = a1;
  sub_1AAD0DA28(0, qword_1ED9B4960, type metadata accessor for ChartContentRenderContext.Environment, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v42 - v9;
  v11 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for RulesRenderer(0);
  sub_1AACAC30C(v5 + *(v15 + 32), v10, qword_1ED9B4960, type metadata accessor for ChartContentRenderContext.Environment);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1AACAC4BC(v10, qword_1ED9B4960, type metadata accessor for ChartContentRenderContext.Environment);
    goto LABEL_10;
  }

  v47 = v14;
  sub_1AAF67C60(v10, v14, type metadata accessor for ChartContentRenderContext.Environment);
  v16 = v5[6];
  if (!v16)
  {
LABEL_10:
    result = sub_1AAF902C4();
    __break(1u);
    return result;
  }

  v53[0] = *(v16 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale);
  v17 = *(v16 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 64);
  v19 = *(v16 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 16);
  v18 = *(v16 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 32);
  v53[3] = *(v16 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 48);
  v53[4] = v17;
  v53[1] = v19;
  v53[2] = v18;
  v21 = *(v16 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 96);
  v20 = *(v16 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 112);
  v22 = *(v16 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 80);
  v54 = *(v16 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 128);
  v53[6] = v21;
  v53[7] = v20;
  v53[5] = v22;
  MEMORY[0x1EEE9AC00](v16);
  v42[2] = v23;

  sub_1AACAAD4C(v53, v49, sub_1AACC9D70);
  v24 = sub_1AAF52578(sub_1AAF67C40);
  v26 = v25;
  sub_1AACAADB4(v53, sub_1AACC9D70);
  v45 = a2;
  v46 = a3;
  if (!v24)
  {
    if (*(v47 + 9))
    {
      v27 = *(v47 + 10);
      v28 = (v47 + 48);
      v29 = *(v47 + 8);
      v30 = *(v47 + 9);
      v31 = *(v47 + 14);
      v32 = *(v47 + 15);
    }

    else
    {
      v28 = v49;
      sub_1AAF8D914();
      v31 = v49[2];
      v32 = v49[3];
      v29 = v50;
      v30 = v51;
      v27 = v52;
    }

    v33 = *v28;
    sub_1AACC7228(0, &qword_1ED9AD6C0, MEMORY[0x1E697DD48], MEMORY[0x1E69E6F90]);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1AAF92AB0;
    *(v24 + 32) = v33;
    *(v24 + 40) = v31;
    *(v24 + 44) = v32;
    *(v24 + 48) = v29;
    *(v24 + 56) = v30;
    *(v24 + 64) = v27;

    v26 = sub_1AAF8F8A4();
    *(v26 + 16) = 1;
    *(v26 + 32) = 0;
  }

  v34 = v5[3];
  v35 = v5[4];
  v42[1] = sub_1AACBB42C(v5, v34);
  sub_1AAD0DA28(0, &qword_1EB422FD8, type metadata accessor for AnyVectorizedRenderer, MEMORY[0x1E69E6F90]);
  v36 = *(type metadata accessor for AnyVectorizedRenderer(0) - 8);
  v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1AAF92AB0;
  sub_1AACAAD4C(v5, v38 + v37, type metadata accessor for RulesRenderer);
  type metadata accessor for AnyVectorizedRenderer.MarkRenderer(0);
  swift_storeEnumTagMultiPayload();
  v48[0] = v43;

  sub_1AADC94EC(v38);
  v39 = v48[0];
  v48[0] = v24;
  v48[1] = v26;
  v40 = v47;
  (*(v35 + 24))(v44, v45, v47, v46, v39, v48, &type metadata for RuleElementDrawer, &off_1F1FE7088, v34, v35);

  return sub_1AACAADB4(v40, type metadata accessor for ChartContentRenderContext.Environment);
}

uint64_t sub_1AAF54078(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = a1;
  v38 = a2;
  v36 = type metadata accessor for RectangleElementDrawer(0);
  MEMORY[0x1EEE9AC00](v36);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD0DA28(0, qword_1ED9B4960, type metadata accessor for ChartContentRenderContext.Environment, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32 - v7;
  v9 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD0DA28(0, &qword_1EB422FD8, type metadata accessor for AnyVectorizedRenderer, MEMORY[0x1E69E6F90]);
  v13 = *(type metadata accessor for AnyVectorizedRenderer(0) - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1AAF92AB0;
  sub_1AACAAD4C(v2, v15 + v14, type metadata accessor for RectanglesRenderer);
  type metadata accessor for AnyVectorizedRenderer.MarkRenderer(0);
  swift_storeEnumTagMultiPayload();
  v39 = MEMORY[0x1E69E7CC0];
  sub_1AADC94EC(v15);
  v35 = v39;
  v16 = type metadata accessor for RectanglesRenderer(0);
  sub_1AACAC30C(v3 + v16[8], v8, qword_1ED9B4960, type metadata accessor for ChartContentRenderContext.Environment);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1AACAC4BC(v8, qword_1ED9B4960, type metadata accessor for ChartContentRenderContext.Environment);
    result = sub_1AAF902C4();
    __break(1u);
  }

  else
  {
    v17 = v8;
    v18 = v12;
    sub_1AAF67C60(v17, v12, type metadata accessor for ChartContentRenderContext.Environment);
    v19 = v3[3];
    v20 = v3[4];
    v34 = sub_1AACBB42C(v3, v19);
    v21 = v16[9];
    v22 = v16[10];
    v23 = (v3 + v21);
    v24 = *(v3 + v21 + 32);
    v25 = v36;
    v26 = *(v36 + 20);
    v27 = sub_1AAF8E244();
    v28 = *(*(v27 - 8) + 16);
    v29 = *v23;
    v32 = v23[1];
    v33 = v29;
    v28(&v5[v26], v3 + v22, v27);
    v30 = v32;
    *v5 = v33;
    *(v5 + 1) = v30;
    v5[32] = v24;
    (*(v20 + 24))(v37, v38, v18, &unk_1F1FCF5D0, v35, v5, v25, &off_1F1FE7098, v19, v20);

    sub_1AACAADB4(v5, type metadata accessor for RectangleElementDrawer);
    return sub_1AACAADB4(v18, type metadata accessor for ChartContentRenderContext.Environment);
  }

  return result;
}

uint64_t sub_1AAF544F4(uint64_t a1, uint64_t a2)
{
  v50 = a1;
  v51 = a2;
  v48 = type metadata accessor for RectangleElementDrawer(0);
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for RulesRenderer(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PointsRenderer(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD0DA28(0, qword_1ED9B4960, type metadata accessor for ChartContentRenderContext.Environment, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v43 - v11;
  *&v46 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v13 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for RectanglesRenderer(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AnyVectorizedRenderer.MarkRenderer(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(type metadata accessor for SgVectorized(0) + 32);
  v22 = *(v2 + 8);
  v49 = *(v2 + 16);
  sub_1AACAAD4C(v2 + v21, v20, type metadata accessor for AnyVectorizedRenderer.MarkRenderer);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1AAF67C60(v20, v6, type metadata accessor for RulesRenderer);
      sub_1AAF53A8C(v50, v51, v49, v22);
      v40 = type metadata accessor for RulesRenderer;
      v41 = v6;
      return sub_1AACAADB4(v41, v40);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_1AAF67C60(v20, v9, type metadata accessor for PointsRenderer);
      sub_1AAF5317C(v50, v51, v49, v22);
      v40 = type metadata accessor for PointsRenderer;
      v41 = v9;
      return sub_1AACAADB4(v41, v40);
    }

    sub_1AAF67C60(v20, v17, type metadata accessor for RectanglesRenderer);
    sub_1AAD0DA28(0, &qword_1EB422FD8, type metadata accessor for AnyVectorizedRenderer, MEMORY[0x1E69E6F90]);
    v24 = *(type metadata accessor for AnyVectorizedRenderer(0) - 8);
    v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1AAF92AB0;
    sub_1AACAAD4C(v17, v26 + v25, type metadata accessor for RectanglesRenderer);
    swift_storeEnumTagMultiPayload();
    v52 = v22;

    sub_1AADC94EC(v26);
    v44 = v52;
    sub_1AACAC30C(&v17[v15[8]], v12, qword_1ED9B4960, type metadata accessor for ChartContentRenderContext.Environment);
    if ((*(v13 + 48))(v12, 1, v46) != 1)
    {
      v27 = v45;
      sub_1AAF67C60(v12, v45, type metadata accessor for ChartContentRenderContext.Environment);
      v28 = *(v17 + 3);
      v29 = *(v17 + 4);
      sub_1AACBB42C(v17, v28);
      v30 = v15[10];
      v31 = &v17[v15[9]];
      v32 = v31[32];
      v33 = v48;
      v34 = *(v48 + 20);
      v35 = sub_1AAF8E244();
      v36 = *(*(v35 - 8) + 16);
      v37 = *(v31 + 1);
      v46 = *v31;
      v43 = v37;
      v38 = v47;
      v36(&v47[v34], &v17[v30], v35);
      v39 = v43;
      *v38 = v46;
      *(v38 + 16) = v39;
      *(v38 + 32) = v32;
      (*(v29 + 24))(v50, v51, v27, v49, v44, v38, v33, &off_1F1FE7098, v28, v29);

      sub_1AACAADB4(v38, type metadata accessor for RectangleElementDrawer);
      sub_1AACAADB4(v27, type metadata accessor for ChartContentRenderContext.Environment);
      v40 = type metadata accessor for RectanglesRenderer;
      v41 = v17;
      return sub_1AACAADB4(v41, v40);
    }

    sub_1AACAC4BC(v12, qword_1ED9B4960, type metadata accessor for ChartContentRenderContext.Environment);
  }

  result = sub_1AAF902C4();
  __break(1u);
  return result;
}

uint64_t sub_1AAF54C08()
{
  sub_1AAD9ADE4(v0 + 48, v7);
  if (v9 == 1)
  {
  }

  v4 = v7[0];
  v5 = v7[1];
  v6 = v8;
  if (*(v0 + 40) != 1)
  {
    v2 = *(&v5 + 1);
    v3 = v6;
    sub_1AACBB42C(&v4, *(&v5 + 1));
    (*(v3 + 16))(v2, v3);
  }

  return sub_1AAE45A14(&v4);
}

uint64_t sub_1AAF54D38(uint64_t a1, void *a2, uint64_t a3)
{
  v64 = a3;
  v5 = MEMORY[0x1E69E6720];
  sub_1AAD0DA28(0, &qword_1ED9B2E80, MEMORY[0x1E697E798], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v58 - v7;
  v9 = sub_1AAF8DD44();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1AAF8DE34();
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v60 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v61 = &v58 - v15;
  sub_1AAD0DA28(0, &qword_1ED9B54F8, MEMORY[0x1E6981E38], v5);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v59 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v58 - v19;
  v21 = sub_1AAF8DF14();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a1;
  sub_1AAF8DED4();
  sub_1AAD9ADE4((a2 + 6), v69);
  if ((v71 & 1) == 0)
  {
    v66 = v69[0];
    v67 = v69[1];
    v68 = v70;
    sub_1AAF54C08();
    sub_1AACBB42C(&v66, *(&v67 + 1));
    sub_1AAF8EDA4();
    type metadata accessor for RenderParams(0);
    (*(v22 + 104))(v24, *MEMORY[0x1E697E7D8], v21);
    v25 = sub_1AAF8DF04();
    (*(v22 + 8))(v24, v21);
    if (v25)
    {
      sub_1AAF8DE84();
      sub_1AAF8E874();
      CGRectGetMidX(v75);
      sub_1AAF8DD04();
    }

    v26 = a2 + *(type metadata accessor for SgPoint(0) + 36);
    memset(v73, 0, sizeof(v73));
    v74 = 1;
    if (*(v26 + 88) == 1.0)
    {
      v27 = type metadata accessor for SgShapeStyle();
      sub_1AACAC30C(v26 + *(v27 + 32), v20, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
      v28 = sub_1AAF8F154();
      v29 = *(v28 - 8);
      if ((*(v29 + 48))(v20, 1, v28) == 1)
      {
        sub_1AACAC4BC(v20, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
      }

      else
      {
        v35 = sub_1AAF2E844();
        (*(v29 + 8))(v20, v28);
        if ((v35 & 0x100000000) == 0)
        {
          sub_1AAF8DEA4();
          sub_1AAF8DEB4();
          v36 = v61;
          sub_1AACACEAC(v26, v73, v61);
          v37 = v60;
          sub_1AAF8DE74();
          sub_1AAF8DDA4();
          v38 = *(v62 + 8);
          v39 = v37;
          v40 = v63;
          v38(v39, v63);
          v38(v36, v40);
          sub_1AAF8DEB4();
LABEL_21:
          sub_1AAD12C10(v72);
          sub_1AAE45A14(&v66);
          return sub_1AAF8DEE4();
        }
      }

      v41 = v61;
      sub_1AACACEAC(v26, v73, v61);
      v42 = v60;
      sub_1AAF8DE74();
      sub_1AAF8DDA4();
      v43 = *(v62 + 8);
      v44 = v42;
      v45 = v63;
      v43(v44, v63);
      v43(v41, v45);
      goto LABEL_21;
    }

    sub_1AAF8DE44();
    sub_1AAF8DE54();
    v31 = type metadata accessor for SgShapeStyle();
    v32 = v59;
    sub_1AACAC30C(v26 + *(v31 + 32), v59, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
    v33 = sub_1AAF8F154();
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v32, 1, v33) == 1)
    {
      sub_1AACAC4BC(v32, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
    }

    else
    {
      v46 = sub_1AAF2E844();
      (*(v34 + 8))(v32, v33);
      if ((v46 & 0x100000000) == 0)
      {
        sub_1AAF8DEA4();
        sub_1AAF8DEB4();
        v47 = v61;
        sub_1AACACEAC(v26, v73, v61);
        v48 = v60;
        sub_1AAF8DE74();
        sub_1AAF8DDA4();
        v49 = *(v62 + 8);
        v50 = v48;
        v51 = v63;
        v49(v50, v63);
        v49(v47, v51);
        sub_1AAF8DEB4();
LABEL_20:
        sub_1AAF8DE54();
        goto LABEL_21;
      }
    }

    v52 = v61;
    sub_1AACACEAC(v26, v73, v61);
    v53 = v60;
    sub_1AAF8DE74();
    sub_1AAF8DDA4();
    v54 = *(v62 + 8);
    v55 = v53;
    v56 = v63;
    v54(v55, v63);
    v54(v52, v56);
    goto LABEL_20;
  }

  sub_1AAF50004(v69);
  *&v66 = *a2;
  sub_1AAF8DD34();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1AACAC4BC(v8, &qword_1ED9B2E80, MEMORY[0x1E697E798]);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    type metadata accessor for RenderParams(0);
    (*(v22 + 104))(v24, *MEMORY[0x1E697E7D8], v21);
    v30 = sub_1AAF8DF04();
    (*(v22 + 8))(v24, v21);
    if (v30)
    {
      sub_1AAF8DE84();
      sub_1AAF8DD04();
    }

    sub_1AAF8F264();
    sub_1AAF8DD74();
    (*(v10 + 8))(v12, v9);
  }

  return sub_1AAF8DEE4();
}

uint64_t sub_1AAF5587C(void *a1)
{
  v34 = sub_1AAF8DE34();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - v7;
  sub_1AAD0DA28(0, &qword_1ED9B54F8, MEMORY[0x1E6981E38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - v13;
  v15 = type metadata accessor for SgShapeStyle();
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(type metadata accessor for SgArea(0) + 32);
  v35 = v1;
  sub_1AACAAD4C(v1 + v18, v17, type metadata accessor for SgShapeStyle);
  memset(v36, 0, sizeof(v36));
  v37 = 1;
  if (v17[11] != 1.0)
  {
    sub_1AAF8DE44();
    sub_1AAF8DE54();
    sub_1AACAC30C(v17 + *(v15 + 32), v11, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
    v21 = sub_1AAF8F154();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v11, 1, v21) == 1)
    {
      sub_1AACAC4BC(v11, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
    }

    else
    {
      v28 = sub_1AAF2E844();
      (*(v22 + 8))(v11, v21);
      if ((v28 & 0x100000000) == 0)
      {
        sub_1AAF8DEA4();
        sub_1AAF8DEB4();
        sub_1AACACEAC(v17, v36, v8);
        sub_1AAF8DE74();
        sub_1AAF66F70(a1, v5, v35);
        v29 = *(v3 + 8);
        v30 = v34;
        v29(v5, v34);
        v29(v8, v30);
        sub_1AAF8DEB4();
LABEL_12:
        sub_1AAF8DE54();
        return sub_1AACAADB4(v17, type metadata accessor for SgShapeStyle);
      }
    }

    sub_1AACACEAC(v17, v36, v8);
    sub_1AAF8DE74();
    sub_1AAF66F70(a1, v5, v35);
    v31 = *(v3 + 8);
    v32 = v34;
    v31(v5, v34);
    v31(v8, v32);
    goto LABEL_12;
  }

  sub_1AACAC30C(v17 + *(v15 + 32), v14, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
  v19 = sub_1AAF8F154();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v14, 1, v19) == 1)
  {
    sub_1AACAC4BC(v14, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
LABEL_8:
    sub_1AACACEAC(v17, v36, v8);
    sub_1AAF8DE74();
    sub_1AAF66F70(a1, v5, v35);
    v26 = *(v3 + 8);
    v27 = v34;
    v26(v5, v34);
    v26(v8, v27);
    return sub_1AACAADB4(v17, type metadata accessor for SgShapeStyle);
  }

  v23 = sub_1AAF2E844();
  (*(v20 + 8))(v14, v19);
  if ((v23 & 0x100000000) != 0)
  {
    goto LABEL_8;
  }

  sub_1AAF8DEA4();
  sub_1AAF8DEB4();
  sub_1AACACEAC(v17, v36, v8);
  sub_1AAF8DE74();
  sub_1AAF66F70(a1, v5, v35);
  v24 = *(v3 + 8);
  v25 = v34;
  v24(v5, v34);
  v24(v8, v25);
  sub_1AAF8DEB4();
  return sub_1AACAADB4(v17, type metadata accessor for SgShapeStyle);
}

uint64_t sub_1AAF55E88(uint64_t *a1)
{
  v34 = sub_1AAF8DE34();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - v7;
  sub_1AAD0DA28(0, &qword_1ED9B54F8, MEMORY[0x1E6981E38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - v13;
  v15 = type metadata accessor for SgShapeStyle();
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(type metadata accessor for SgPath(0) + 24);
  v35 = v1;
  sub_1AACAAD4C(v1 + v18, v17, type metadata accessor for SgShapeStyle);
  memset(v36, 0, sizeof(v36));
  v37 = 1;
  if (v17[11] != 1.0)
  {
    sub_1AAF8DE44();
    sub_1AAF8DE54();
    sub_1AACAC30C(v17 + *(v15 + 32), v11, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
    v21 = sub_1AAF8F154();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v11, 1, v21) == 1)
    {
      sub_1AACAC4BC(v11, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
    }

    else
    {
      v28 = sub_1AAF2E844();
      (*(v22 + 8))(v11, v21);
      if ((v28 & 0x100000000) == 0)
      {
        sub_1AAF8DEA4();
        sub_1AAF8DEB4();
        sub_1AACACEAC(v17, v36, v8);
        sub_1AAF8DE74();
        sub_1AAF66D84(a1, v5, v35);
        v29 = *(v3 + 8);
        v30 = v34;
        v29(v5, v34);
        v29(v8, v30);
        sub_1AAF8DEB4();
LABEL_12:
        sub_1AAF8DE54();
        return sub_1AACAADB4(v17, type metadata accessor for SgShapeStyle);
      }
    }

    sub_1AACACEAC(v17, v36, v8);
    sub_1AAF8DE74();
    sub_1AAF66D84(a1, v5, v35);
    v31 = *(v3 + 8);
    v32 = v34;
    v31(v5, v34);
    v31(v8, v32);
    goto LABEL_12;
  }

  sub_1AACAC30C(v17 + *(v15 + 32), v14, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
  v19 = sub_1AAF8F154();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v14, 1, v19) == 1)
  {
    sub_1AACAC4BC(v14, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
LABEL_8:
    sub_1AACACEAC(v17, v36, v8);
    sub_1AAF8DE74();
    sub_1AAF66D84(a1, v5, v35);
    v26 = *(v3 + 8);
    v27 = v34;
    v26(v5, v34);
    v26(v8, v27);
    return sub_1AACAADB4(v17, type metadata accessor for SgShapeStyle);
  }

  v23 = sub_1AAF2E844();
  (*(v20 + 8))(v14, v19);
  if ((v23 & 0x100000000) != 0)
  {
    goto LABEL_8;
  }

  sub_1AAF8DEA4();
  sub_1AAF8DEB4();
  sub_1AACACEAC(v17, v36, v8);
  sub_1AAF8DE74();
  sub_1AAF66D84(a1, v5, v35);
  v24 = *(v3 + 8);
  v25 = v34;
  v24(v5, v34);
  v24(v8, v25);
  sub_1AAF8DEB4();
  return sub_1AACAADB4(v17, type metadata accessor for SgShapeStyle);
}

uint64_t sub_1AAF56494(uint64_t *a1)
{
  v34 = sub_1AAF8DE34();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - v7;
  sub_1AAD0DA28(0, &qword_1ED9B54F8, MEMORY[0x1E6981E38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - v13;
  v15 = type metadata accessor for SgShapeStyle();
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(type metadata accessor for SgSector(0) + 48);
  v35 = v1;
  sub_1AACAAD4C(v1 + v18, v17, type metadata accessor for SgShapeStyle);
  memset(v36, 0, sizeof(v36));
  v37 = 1;
  if (v17[11] != 1.0)
  {
    sub_1AAF8DE44();
    sub_1AAF8DE54();
    sub_1AACAC30C(v17 + *(v15 + 32), v11, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
    v21 = sub_1AAF8F154();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v11, 1, v21) == 1)
    {
      sub_1AACAC4BC(v11, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
    }

    else
    {
      v28 = sub_1AAF2E844();
      (*(v22 + 8))(v11, v21);
      if ((v28 & 0x100000000) == 0)
      {
        sub_1AAF8DEA4();
        sub_1AAF8DEB4();
        sub_1AACACEAC(v17, v36, v8);
        sub_1AAF8DE74();
        sub_1AAF66A14(a1, v5, v35);
        v29 = *(v3 + 8);
        v30 = v34;
        v29(v5, v34);
        v29(v8, v30);
        sub_1AAF8DEB4();
LABEL_12:
        sub_1AAF8DE54();
        return sub_1AACAADB4(v17, type metadata accessor for SgShapeStyle);
      }
    }

    sub_1AACACEAC(v17, v36, v8);
    sub_1AAF8DE74();
    sub_1AAF66A14(a1, v5, v35);
    v31 = *(v3 + 8);
    v32 = v34;
    v31(v5, v34);
    v31(v8, v32);
    goto LABEL_12;
  }

  sub_1AACAC30C(v17 + *(v15 + 32), v14, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
  v19 = sub_1AAF8F154();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v14, 1, v19) == 1)
  {
    sub_1AACAC4BC(v14, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
LABEL_8:
    sub_1AACACEAC(v17, v36, v8);
    sub_1AAF8DE74();
    sub_1AAF66A14(a1, v5, v35);
    v26 = *(v3 + 8);
    v27 = v34;
    v26(v5, v34);
    v26(v8, v27);
    return sub_1AACAADB4(v17, type metadata accessor for SgShapeStyle);
  }

  v23 = sub_1AAF2E844();
  (*(v20 + 8))(v14, v19);
  if ((v23 & 0x100000000) != 0)
  {
    goto LABEL_8;
  }

  sub_1AAF8DEA4();
  sub_1AAF8DEB4();
  sub_1AACACEAC(v17, v36, v8);
  sub_1AAF8DE74();
  sub_1AAF66A14(a1, v5, v35);
  v24 = *(v3 + 8);
  v25 = v34;
  v24(v5, v34);
  v24(v8, v25);
  sub_1AAF8DEB4();
  return sub_1AACAADB4(v17, type metadata accessor for SgShapeStyle);
}

double sub_1AAF56AA0@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1AAF210C8(*(v1 + 24), *(v1 + 32), *(v1 + 16), v34);
  v4 = *(v1 + 8);
  swift_beginAccess();
  v5 = *(v4 + 16);
  v6 = *(v5 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v28 = a1;
    v38 = MEMORY[0x1E69E7CC0];

    sub_1AAD415C4(0, v6, 0);
    v7 = v38;
    v8 = v5 + 32;
    do
    {
      sub_1AAE5EDF4(v8, &v29);
      v9 = v30;
      v10 = v31;
      v12 = (v30 & 0x7FFFFFFFFFFFFFFFLL) < 0x7FF0000000000000 && (v31 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
      sub_1AAE5EE50(&v29);
      v38 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1AAD415C4((v13 > 1), v14 + 1, 1);
        v7 = v38;
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 24 * v14;
      *(v15 + 32) = v9;
      *(v15 + 40) = v10;
      *(v15 + 48) = v12;
      v8 += 96;
      --v6;
    }

    while (v6);

    a1 = v28;
  }

  v16 = v35;
  v17 = v36;
  sub_1AACB8B34(v34, v35);
  sub_1AAF212E4(v7, v16, v17, v37);

  v18 = *(type metadata accessor for SgLine(0) + 32);
  v19 = v2 + v18;
  if (*(v2 + v18 + 72))
  {
    v20 = *(v19 + 80);
    v21 = (v19 + 48);
    v22 = *(v19 + 64);
    v23 = *(v2 + v18 + 72);
    v24 = *(v19 + 56);
    v25 = *(v19 + 60);
  }

  else
  {
    v21 = &v38;
    sub_1AAF8D914();
    v24 = v39;
    v25 = v40;
    v22 = v41;
    v23 = v42;
    v20 = v43;
  }

  v29 = *v21;
  v30 = __PAIR64__(v25, v24);
  v31 = v22;
  v32 = v23;
  v33 = v20;

  sub_1AAF8E854();
  sub_1AAD12C10(v37);

  sub_1AACB634C(v34);
  result = *&v44;
  v27 = v45;
  *a1 = v44;
  *(a1 + 16) = v27;
  *(a1 + 32) = v46;
  return result;
}

uint64_t sub_1AAF56CF0()
{
  v1 = *(v0 + 8);
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v20 = MEMORY[0x1E69E7CC0];

    sub_1AAD1FAF4(0, v3, 0);
    v4 = v20;
    v5 = v2 + 32;
    do
    {
      sub_1AAE5EDF4(v5, v19);
      v6 = v19[1];
      sub_1AAE5EE50(v19);
      v20 = v4;
      v8 = *(v4 + 16);
      v7 = *(v4 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1AAD1FAF4((v7 > 1), v8 + 1, 1);
        v4 = v20;
      }

      *(v4 + 16) = v8 + 1;
      *(v4 + 8 * v8 + 32) = v6;
      v5 += 96;
      --v3;
    }

    while (v3);
  }

  sub_1AACEC978(v4);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
    v12 = *(v1 + 16);
    v13 = *(v12 + 16);
    v14 = MEMORY[0x1E69E7CC0];
    if (v13)
    {
      v20 = MEMORY[0x1E69E7CC0];

      sub_1AAD1FAF4(0, v13, 0);
      v14 = v20;
      v15 = v12 + 32;
      do
      {
        sub_1AAE5EDF4(v15, v19);
        v16 = v19[2];
        sub_1AAE5EE50(v19);
        v20 = v14;
        v18 = *(v14 + 16);
        v17 = *(v14 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_1AAD1FAF4((v17 > 1), v18 + 1, 1);
          v14 = v20;
        }

        *(v14 + 16) = v18 + 1;
        *(v14 + 8 * v18 + 32) = v16;
        v15 += 96;
        --v13;
      }

      while (v13);
    }

    sub_1AACEC978(v14);
  }

  return result;
}

uint64_t sub_1AAF56F10(uint64_t *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = MEMORY[0x1E69E6720];
  sub_1AAD0DA28(0, &qword_1ED9B2E80, MEMORY[0x1E697E798], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v68 = &v59 - v14;
  v15 = sub_1AAF8DD44();
  v60 = *(v15 - 8);
  v61 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v66 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1AAF8DE34();
  v65 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v63 = (&v59 - v20);
  sub_1AAD0DA28(0, &qword_1ED9B54F8, MEMORY[0x1E6981E38], v12);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v59 - v25;
  v27 = *(a2 + 8);
  swift_beginAccess();
  v64 = v27;
  v28 = *(v27 + 16);
  v69[2] = a2;

  v62 = sub_1AAF52984(MEMORY[0x1E69E7CC0], sub_1AAF67A70, v69, v28);

  sub_1AAF56AA0(v74);
  v29 = a2 + *(type metadata accessor for SgLine(0) + 32);
  *v75 = a3;
  *&v75[1] = a4;
  *&v75[2] = a5;
  *&v75[3] = a6;
  v76 = 0;
  if (*(v29 + 88) != 1.0)
  {
    sub_1AAF8DE44();
    sub_1AAF8DE54();
    v35 = type metadata accessor for SgShapeStyle();
    sub_1AACAC30C(v29 + *(v35 + 32), v23, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
    v36 = sub_1AAF8F154();
    v37 = *(v36 - 8);
    if ((*(v37 + 48))(v23, 1, v36) == 1)
    {
      sub_1AACAC4BC(v23, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
      v33 = v64;
    }

    else
    {
      v45 = sub_1AAF2E844();
      (*(v37 + 8))(v23, v36);
      v33 = v64;
      if ((v45 & 0x100000000) == 0)
      {
        sub_1AAF8DEA4();
        sub_1AAF8DEB4();
        v46 = v63;
        sub_1AACACEAC(v29, v75, v63);
        sub_1AAF8DE74();
        sub_1AAF57AF0(a1, v18, v62);
        v47 = *(v65 + 8);
        v48 = v67;
        v47(v18, v67);
        v47(v46, v48);
        sub_1AAF8DEB4();
LABEL_12:
        sub_1AAF8DE54();
        goto LABEL_13;
      }
    }

    v49 = v63;
    sub_1AACACEAC(v29, v75, v63);
    sub_1AAF8DE74();
    sub_1AAF57AF0(a1, v18, v62);
    v50 = *(v65 + 8);
    v51 = v67;
    v50(v18, v67);
    v50(v49, v51);
    goto LABEL_12;
  }

  v30 = type metadata accessor for SgShapeStyle();
  sub_1AACAC30C(v29 + *(v30 + 32), v26, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
  v31 = sub_1AAF8F154();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v26, 1, v31) == 1)
  {
    sub_1AACAC4BC(v26, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
    v33 = v64;
    v34 = v62;
  }

  else
  {
    v38 = sub_1AAF2E844();
    (*(v32 + 8))(v26, v31);
    v33 = v64;
    v34 = v62;
    if ((v38 & 0x100000000) == 0)
    {
      sub_1AAF8DEA4();
      sub_1AAF8DEB4();
      v39 = v63;
      sub_1AACACEAC(v29, v75, v63);
      sub_1AAF8DE74();
      sub_1AAF57AF0(a1, v18, v34);
      v40 = *(v65 + 8);
      v41 = v67;
      v40(v18, v67);
      v40(v39, v41);
      sub_1AAF8DEB4();
      goto LABEL_13;
    }
  }

  v42 = v63;
  sub_1AACACEAC(v29, v75, v63);
  sub_1AAF8DE74();
  sub_1AAF57AF0(a1, v18, v34);
  v43 = *(v65 + 8);
  v44 = v67;
  v43(v18, v67);
  v43(v42, v44);
LABEL_13:

  v63 = v33[2];
  v52 = *(v63 + 2);
  if (v52)
  {
    v67 = a1;
    v53 = v63 + 32;
    v54 = (v60 + 48);
    v64 = (v60 + 8);
    v65 = v60 + 32;

    v55 = v61;
    do
    {
      sub_1AAE5EDF4(v53, v72);
      sub_1AACDBA18(&v73, v70, qword_1ED9B3000, &type metadata for SgSymbol, MEMORY[0x1E69E6720]);
      if (v71 == 255)
      {
        sub_1AAE5EE50(v72);
        sub_1AAF67B3C(v70, qword_1ED9B3000, &type metadata for SgSymbol, MEMORY[0x1E69E6720]);
      }

      else if (v71)
      {
        sub_1AAF50004(v70);
        v56 = v68;
        v70[0] = v72[0];
        sub_1AAF8DD34();
        if ((*v54)(v56, 1, v55) == 1)
        {
          sub_1AAE5EE50(v72);
          sub_1AACAC4BC(v56, &qword_1ED9B2E80, MEMORY[0x1E697E798]);
        }

        else
        {
          v57 = v66;
          (*v65)(v66, v56, v55);
          sub_1AAF8F264();
          sub_1AAF8DD74();
          (*v64)(v57, v55);
          sub_1AAE5EE50(v72);
        }
      }

      else
      {
        sub_1AAE5EE50(v72);
        sub_1AAF50004(v70);
      }

      v53 += 96;
      --v52;
    }

    while (v52);
  }

  return sub_1AAD12C10(v74);
}

uint64_t sub_1AAF5784C(char **a1, uint64_t a2, uint64_t a3)
{
  sub_1AACDBA18(a2 + 24, &v22, qword_1ED9B3000, &type metadata for SgSymbol, MEMORY[0x1E69E6720]);
  if (v25 == 255)
  {
    return sub_1AAF67B3C(&v22, qword_1ED9B3000, &type metadata for SgSymbol, MEMORY[0x1E69E6720]);
  }

  if (v25)
  {
    return sub_1AAF50004(&v22);
  }

  v26[0] = v22;
  v26[1] = v23;
  v27 = v24;
  v7 = *(a2 + 88);
  if (v7 != 255)
  {
    v8 = a3 + *(type metadata accessor for SgLine(0) + 32);
    v9 = *(v8 + 48);
    if (!*(v8 + 72))
    {
      v9 = 1.0;
    }

    sub_1AAE3CDD0(&v19, v9);
    if (*(&v20 + 1))
    {
      v22 = v19;
      v23 = v20;
      v24 = v21;
      if (v7)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1AAD9B194(v26, &v22);
      if (v7)
      {
        goto LABEL_14;
      }
    }

    v11 = *(&v23 + 1);
    v12 = v24;
    sub_1AACBB42C(&v22, *(&v23 + 1));
    (*(v12 + 16))(v11, v12);
LABEL_14:
    sub_1AACBB42C(&v22, *(&v23 + 1));
    sub_1AAF8EDA4();
    v13 = *a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1AAD6B71C(0, *(v13 + 2) + 1, 1, v13);
    }

    v15 = *(v13 + 2);
    v14 = *(v13 + 3);
    if (v15 >= v14 >> 1)
    {
      v13 = sub_1AAD6B71C((v14 > 1), v15 + 1, 1, v13);
    }

    sub_1AAE45A14(v26);
    *(v13 + 2) = v15 + 1;
    v16 = &v13[40 * v15];
    v17 = v21;
    v18 = v20;
    *(v16 + 2) = v19;
    *(v16 + 3) = v18;
    v16[64] = v17;
    *a1 = v13;
    v10 = &v22;
    return sub_1AAE45A14(v10);
  }

  v10 = v26;
  return sub_1AAE45A14(v10);
}

uint64_t sub_1AAF57AF0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v10 = *a1;
    MEMORY[0x1EEE9AC00](a1);
    v5 = v4;

    sub_1AAF8DCF4();
    sub_1AAF8DDA4();
    v6 = v5 + 32;
    do
    {
      v7 = *(v6 + 16);
      v11[0] = *v6;
      v11[1] = v7;
      v12 = *(v6 + 32);
      v13[0] = v11[0];
      v13[1] = v7;
      v14 = v12;
      sub_1AAE63550(v13, v9);
      sub_1AAF8DDA4();
      sub_1AAD12C10(v11);
      v6 += 40;
      --v3;
    }

    while (v3);
  }

  else
  {

    return sub_1AAF8DDA4();
  }
}

void sub_1AAF57C54(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AAF8DE34();
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = a2 + 32;
    v9 = (v4 + 8);
    do
    {
      v10 = *(v8 + 16);
      v13[0] = *v8;
      v13[1] = v10;
      v14 = *(v8 + 32);
      v15[0] = v13[0];
      v15[1] = v10;
      v16 = v14;
      sub_1AAE63550(v15, v11);
      sub_1AAE3C43C(v12);
      sub_1AAF8ECD4();
      sub_1AAF8DE14();

      sub_1AAF8DDA4();
      sub_1AAD12C10(v12);
      sub_1AAD12C10(v13);
      (*v9)(v6, v3);
      v8 += 40;
      --v7;
    }

    while (v7);
  }
}

uint64_t sub_1AAF57E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1AAD0DA28(0, qword_1ED9B4960, type metadata accessor for ChartContentRenderContext.Environment, MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1AAF57F4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    sub_1AAD0DA28(0, qword_1ED9B4960, type metadata accessor for ChartContentRenderContext.Environment, MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1AAF58054(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AAF58068(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 89))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 64);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_1AAF580B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 64) = ~a2;
    }
  }

  return result;
}

void *sub_1AAF58204(void *result, uint64_t a2)
{
  if (a2 < 0xE)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 60);
  }

  else
  {
    *result = (8 * (a2 - 14)) | 0xE000000000000000;
  }

  return result;
}

double sub_1AAF58258@<D0>(uint64_t a1@<X8>)
{
  sub_1AAF210C8(*(v1 + 24), *(v1 + 32), *(v1 + 16), v22);
  v3 = *(*(v1 + 8) + 16);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v21 = a1;
    *&v25[0] = MEMORY[0x1E69E7CC0];

    sub_1AAD415F4(0, v4, 0);
    v5 = *&v25[0];
    v6 = (v3 + 64);
    do
    {
      v7 = *(v6 - 3);
      v8 = *(v6 - 2);
      v9 = *(v6 - 1);
      v10 = *v6;
      v11 = (v9 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*v6 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
      v12 = (*(v6 - 2) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v11;
      v13 = (*(v6 - 3) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v12;
      *&v25[0] = v5;
      v15 = *(v5 + 16);
      v14 = *(v5 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1AAD415F4((v14 > 1), v15 + 1, 1);
        v5 = *&v25[0];
      }

      *(v5 + 16) = v15 + 1;
      v16 = v5 + 40 * v15;
      *(v16 + 32) = v7;
      *(v16 + 40) = v8;
      *(v16 + 48) = v9;
      *(v16 + 56) = v10;
      *(v16 + 64) = v13;
      v6 += 5;
      --v4;
    }

    while (v4);

    a1 = v21;
  }

  v17 = v23;
  v18 = v24;
  sub_1AACB8B34(v22, v23);
  sub_1AAF214A8(v5, v17, v18, v25);

  sub_1AACB634C(v22);
  result = *v25;
  v20 = v25[1];
  *a1 = v25[0];
  *(a1 + 16) = v20;
  *(a1 + 32) = v26;
  return result;
}

uint64_t sub_1AAF58424()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

    v4 = (v2 + 56);
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v6 = *(v4 - 2);
      v7 = *v4;
      result = swift_initStackObject();
      *(result + 16) = xmmword_1AAF9E2B0;
      *(result + 32) = v6;
      v9 = (result + 32);
      *(result + 40) = v7;
      v10 = *(v5 + 16);
      v11 = v10 + 2;
      if (__OFADD__(v10, 2))
      {
        break;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v12 = *(v5 + 24) >> 1, v12 < v11))
      {
        if (v10 <= v11)
        {
          v13 = v10 + 2;
        }

        else
        {
          v13 = v10;
        }

        result = sub_1AAD69810(result, v13, 1, v5);
        v5 = result;
        v12 = *(result + 24) >> 1;
      }

      v14 = *(v5 + 16);
      if (v12 - v14 < 2)
      {
        goto LABEL_33;
      }

      *(v5 + 8 * v14 + 32) = *v9;

      v15 = *(v5 + 16);
      v16 = __OFADD__(v15, 2);
      v17 = v15 + 2;
      if (v16)
      {
        goto LABEL_34;
      }

      *(v5 + 16) = v17;
      v4 += 5;
      if (!--v3)
      {

        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_15:
  sub_1AACEC978(v5);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
    v20 = *(v1 + 16);
    v21 = *(v20 + 16);
    if (v21)
    {
      sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

      v22 = (v20 + 64);
      v23 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v24 = *(v22 - 2);
        v25 = *v22;
        result = swift_initStackObject();
        *(result + 16) = xmmword_1AAF9E2B0;
        *(result + 32) = v24;
        v26 = (result + 32);
        *(result + 40) = v25;
        v27 = *(v23 + 16);
        v28 = v27 + 2;
        if (__OFADD__(v27, 2))
        {
          break;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (!result || (v29 = *(v23 + 24) >> 1, v29 < v28))
        {
          if (v27 <= v28)
          {
            v30 = v27 + 2;
          }

          else
          {
            v30 = v27;
          }

          result = sub_1AAD69810(result, v30, 1, v23);
          v23 = result;
          v29 = *(result + 24) >> 1;
        }

        v31 = *(v23 + 16);
        if (v29 - v31 < 2)
        {
          goto LABEL_36;
        }

        *(v23 + 8 * v31 + 32) = *v26;

        v32 = *(v23 + 16);
        v16 = __OFADD__(v32, 2);
        v33 = v32 + 2;
        if (v16)
        {
          goto LABEL_37;
        }

        *(v23 + 16) = v33;
        v22 += 5;
        if (!--v21)
        {

          goto LABEL_30;
        }
      }

LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      return result;
    }

    v23 = MEMORY[0x1E69E7CC0];
LABEL_30:
    sub_1AACEC978(v23);
  }

  return result;
}

void sub_1AAF58748()
{
  v1 = type metadata accessor for SgPath(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v835 = v814 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v841 = v814 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v847 = v814 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v846 = v814 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v838 = v814 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v845 = v814 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v844 = v814 - v14;
  v15 = type metadata accessor for SgArea(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v834 = v814 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v839 = v814 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v836 = v814 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v848 = (v814 - v22);
  MEMORY[0x1EEE9AC00](v23);
  v843 = v814 - v24;
  v25 = type metadata accessor for SgLine(0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v840 = v814 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v837 = v814 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v850 = (v814 - v30);
  MEMORY[0x1EEE9AC00](v31);
  v842 = v814 - v32;
  v33 = type metadata accessor for SgRule(0);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v816 = v814 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v823 = (v814 - v36);
  MEMORY[0x1EEE9AC00](v37);
  v833 = (v814 - v38);
  MEMORY[0x1EEE9AC00](v39);
  v832 = (v814 - v40);
  MEMORY[0x1EEE9AC00](v41);
  v821 = (v814 - v42);
  MEMORY[0x1EEE9AC00](v43);
  v829 = (v814 - v44);
  MEMORY[0x1EEE9AC00](v45);
  v827 = (v814 - v46);
  v856 = type metadata accessor for SgSector(0);
  MEMORY[0x1EEE9AC00](v856);
  v855 = v814 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for SgRectangle(0);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v854 = (v814 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = type metadata accessor for SgPoint(0);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v815 = v814 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v822 = v814 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v831 = v814 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v830 = v814 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v820 = v814 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v828 = v814 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v826 = v814 - v63;
  v64 = type metadata accessor for SgGroup(0);
  MEMORY[0x1EEE9AC00](v64 - 8);
  v853 = (v814 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = *(v0 + 8);
  v68 = *MEMORY[0x1E695F050];
  v67 = *(MEMORY[0x1E695F050] + 8);
  v70 = *(MEMORY[0x1E695F050] + 16);
  v69 = *(MEMORY[0x1E695F050] + 24);
  v859 = *(v66 + 16);
  if (!v859)
  {
    v866.origin.x = v68;
    v866.origin.y = v67;
    v866.size.width = v70;
    v866.size.height = v69;
    return;
  }

  v71 = 0;
  v860 = 0;
  v857 = v66;
  v858 = v66 + 32;
  v72 = &unk_1AAF9E000;
  v866.size.width = v70;
  v866.size.height = v69;
  v866.origin.x = v68;
  v866.origin.y = v67;
  v873 = v68;
  v874 = v67;
  v875 = v70;
  v876 = v69;
  while (2)
  {
    if (v71 >= *(v66 + 16))
    {
      goto LABEL_470;
    }

    v80 = *(v858 + 8 * v71);
    v864 = v71 + 1;
    v865 = v80;
    v73 = v68;
    v74 = v67;
    v75 = v70;
    v76 = v69;
    switch(v80 >> 60)
    {
      case 1uLL:
        v104 = *((v80 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        *&v884 = *((v80 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v814[2] = v884;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();

        v814[1] = v104;
        sub_1AADC9018(v104);
        v105 = v884;
        v867 = *(v884 + 16);
        if (v867)
        {
          v106 = 0;
          v862 = v884;
          v863 = v884 + 32;
          v76 = v69;
          v75 = v70;
          v872 = v67;
          v73 = v68;
          while (1)
          {
            if (v106 >= *(v105 + 16))
            {
              goto LABEL_469;
            }

            v869 = v76;
            v870 = v73;
            v871 = v75;
            v110 = *(v863 + 8 * v106);
            v868 = v106 + 1;
            v107 = v68;
            v108 = v67;
            v109 = v70;
            switch(v110 >> 60)
            {
              case 1uLL:
                v132 = *((v110 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                *&v884 = *((v110 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v825 = *&v884;
                swift_bridgeObjectRetain_n();
                swift_bridgeObjectRetain_n();

                v824 = v132;
                sub_1AADC9018(*&v132);
                v133 = *&v884;
                v134 = *(v884 + 16);
                if (v134 != 0.0)
                {
                  v135 = 0;
                  *&v136 = v884 + 32;
                  v69 = v876;
                  v109 = v70;
                  v108 = v67;
                  v107 = v68;
                  v849 = *&v884;
                  *&v851 = v884 + 32;
                  v852 = v134;
                  v861 = v110;
                  while (1)
                  {
                    if (v135 >= *(*&v133 + 16))
                    {
                      goto LABEL_461;
                    }

                    v305 = *(*&v136 + 8 * v135++);
                    x = v68;
                    y = v67;
                    width = v70;
                    height = v876;
                    switch(v305 >> 60)
                    {
                      case 1uLL:
                        v322 = *((v305 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                        *&v884 = *((v305 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                        swift_bridgeObjectRetain_n();
                        swift_bridgeObjectRetain_n();

                        sub_1AADC9018(v322);
                        v323 = v884;
                        v324 = *(v884 + 16);
                        if (!v324)
                        {
                          x = v873;
                          y = v874;
                          width = v875;
                          height = v876;
LABEL_208:

                          v72 = &unk_1AAF9E000;
                          v110 = v861;
                          goto LABEL_150;
                        }

                        v325 = 0;
                        height = v876;
                        width = v875;
                        y = v874;
                        x = v873;
                        while (v325 < *(v323 + 16))
                        {
                          v326 = v325 + 1;
                          v327 = *(v323 + 32 + 8 * v325);

                          v946.origin.x = sub_1AAF517A0(v327);
                          v946.origin.y = v328;
                          v946.size.width = v329;
                          v946.size.height = v330;
                          v923.origin.x = x;
                          v923.origin.y = y;
                          v923.size.width = width;
                          v923.size.height = height;
                          v924 = CGRectUnion(v923, v946);
                          x = v924.origin.x;
                          y = v924.origin.y;
                          width = v924.size.width;
                          height = v924.size.height;

                          v325 = v326;
                          if (v324 == v326)
                          {
                            goto LABEL_208;
                          }
                        }

                        __break(1u);
                        goto LABEL_455;
                      case 2uLL:
                        v331 = v110;
                        sub_1AAD117A0((v305 & 0xFFFFFFFFFFFFFFFLL) + 16, &v884);
                        v332 = *(&v884 + 1);
                        v333 = *(*(&v884 + 1) + 16);

                        if (v333)
                        {
                          v334 = (v332 + 32);
                          height = v876;
                          width = v875;
                          y = v874;
                          x = v873;
                          do
                          {
                            v335 = *v334++;
                            v947.origin.x = sub_1AAF517A0(v335);
                            v947.origin.y = v336;
                            v947.size.width = v337;
                            v947.size.height = v338;
                            v925.origin.x = x;
                            v925.origin.y = y;
                            v925.size.width = width;
                            v925.size.height = height;
                            v926 = CGRectUnion(v925, v947);
                            x = v926.origin.x;
                            y = v926.origin.y;
                            width = v926.size.width;
                            height = v926.size.height;
                            --v333;
                          }

                          while (v333);
                        }

                        else
                        {
                          x = v873;
                          y = v874;
                          width = v875;
                          height = v876;
                        }

                        sub_1AAF14C40(&v884);
                        v110 = v331;
                        goto LABEL_151;
                      case 3uLL:
                        v306 = v110;
                        v307 = swift_projectBox();
                        v308 = v826;
                        sub_1AACAAD4C(v307, v826, type metadata accessor for SgPoint);
                        sub_1AAD9ADE4(v308 + 48, &v884);
                        if (v887)
                        {
                          width = *(&v884 + 1);
                          height = *&v885;

                          v309 = *(v308 + 16);
                          x = *(v308 + 8) - width * 0.5;
                          v310 = v308;
LABEL_192:
                          sub_1AACAADB4(v310, type metadata accessor for SgPoint);
                          y = v309 - height * 0.5;
                          goto LABEL_212;
                        }

                        v888 = v884;
                        v889 = v885;
                        v890 = v886;
                        v379 = *(v308 + 24);
                        v380 = v308;
                        if (*(v308 + 40) == 1)
                        {
                          height = *(v308 + 32);
                          width = *(v308 + 24);

                          sub_1AAE45A14(&v888);
                          v309 = *(v308 + 16);
                          x = *(v308 + 8) - width * 0.5;
                          v310 = v308;
                          goto LABEL_192;
                        }

                        v417 = *(v308 + 16);
                        v818 = *(v308 + 8);
                        v819 = v417;
                        v418 = *(&v889 + 1);
                        v419 = v890;
                        v420 = sqrt(v379);

                        sub_1AACBB42C(&v888, v418);
                        v421 = (*(v419 + 16))(v418, v419);
                        v817 = v422;
                        v424 = v423;
                        v426 = v425;
                        v136 = v851;
                        v134 = v852;
                        sub_1AACAADB4(v380, type metadata accessor for SgPoint);
                        width = v420 * v424;
                        height = v420 * v426;
                        x = v818 + v420 * (v421 + -0.5);
                        y = v819 + v420 * (v817 + -0.5);
                        sub_1AAE45A14(&v888);
LABEL_212:
                        v110 = v306;
                        v133 = v849;
LABEL_152:
                        v921.origin.x = v107;
                        v921.origin.y = v108;
                        v921.size.width = v109;
                        v921.size.height = v69;
                        v945.origin.x = x;
                        v945.origin.y = y;
                        v945.size.width = width;
                        v945.size.height = height;
                        v922 = CGRectUnion(v921, v945);
                        v107 = v922.origin.x;
                        v108 = v922.origin.y;
                        v109 = v922.size.width;
                        v69 = v922.size.height;

                        v68 = v873;
                        v67 = v874;
                        v70 = v875;
                        if (v135 == *&v134)
                        {
                          goto LABEL_134;
                        }

                        break;
                      case 4uLL:
                        v351 = swift_projectBox();
                        v340 = v854;
                        sub_1AACAAD4C(v351, v854, type metadata accessor for SgRectangle);
                        x = v340[1];
                        y = v340[2];
                        width = v340[3];
                        height = v340[4];

                        v345 = type metadata accessor for SgRectangle;
                        goto LABEL_182;
                      case 5uLL:
                        v354 = swift_projectBox();
                        v355 = v855;
                        sub_1AACAAD4C(v354, v855, type metadata accessor for SgSector);
                        v356 = vaddvq_f64(vmulq_f64(*(v355 + 24), xmmword_1AAFC7450));
                        v357 = __sincos_stret(((*(v355 + 8) + *(v355 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
                        x = v356 * v357.__cosval;
                        y = v356 * v357.__sinval;
                        v358 = (v355 + *(v856 + 52));
                        v359 = v358[1];
                        width = *v358 + *v358;

                        sub_1AACAADB4(v355, type metadata accessor for SgSector);
                        height = v359 + v359;
                        goto LABEL_152;
                      case 6uLL:
                        v339 = swift_projectBox();
                        v340 = v827;
                        sub_1AACAAD4C(v339, v827, type metadata accessor for SgRule);
                        v341 = v340[1];
                        v342 = v340[2];
                        v343 = v340[3];
                        v344 = v340[4];
                        if (v343 >= v341)
                        {
                          x = v340[1];
                        }

                        else
                        {
                          x = v340[3];
                        }

                        if (v344 >= v342)
                        {
                          y = v340[2];
                        }

                        else
                        {
                          y = v340[4];
                        }

                        width = vabdd_f64(v343, v341);
                        height = vabdd_f64(v344, v342);

                        v345 = type metadata accessor for SgRule;
                        goto LABEL_182;
                      case 7uLL:
                        v368 = swift_projectBox();
                        sub_1AACAAD4C(v368, v842, type metadata accessor for SgLine);
                        swift_beginAccess();

                        v370 = v860;
                        v371 = sub_1AAF51224(v369);

                        MEMORY[0x1EEE9AC00](v372);
                        sub_1AACC7228(0, &qword_1ED9B2A88, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
                        v819 = v373;
                        *&v814[-4] = v373;
                        v818 = COERCE_DOUBLE(sub_1AAE840B8());
                        *&v814[-3] = v818;
                        v817 = COERCE_DOUBLE(sub_1AAE971D0());
                        *&v814[-2] = v817;
                        swift_getKeyPath();
                        v374 = COERCE_DOUBLE(sub_1AAF894FC(v371, sub_1AAF68E40));
                        v376 = v375;
                        v378 = v377;
                        v860 = v370;

                        if (v378)
                        {
                          x = v873;
LABEL_196:
                          y = v874;
                          width = v875;
                          height = v876;
                          v110 = v861;
                          v133 = v849;
                          goto LABEL_215;
                        }

                        x = v374;
                        v381 = v376;
                        v382 = v873;
                        if (v374 > v376)
                        {
                          goto LABEL_477;
                        }

                        v384 = v860;
                        v385 = sub_1AAF512E8(v383);

                        MEMORY[0x1EEE9AC00](v386);
                        v387 = v818;
                        *&v814[-4] = v819;
                        *&v814[-3] = v387;
                        *&v814[-2] = v817;
                        swift_getKeyPath();
                        v388 = COERCE_DOUBLE(sub_1AAF894FC(v385, sub_1AAF68E40));
                        v390 = v389;
                        v392 = v391;
                        v860 = v384;

                        if (v392)
                        {
                          x = v382;
                          goto LABEL_196;
                        }

                        y = v388;
                        v110 = v861;
                        v133 = v849;
                        if (v388 > v390)
                        {
                          goto LABEL_482;
                        }

                        width = v381 - x;
                        height = v390 - v388;
LABEL_215:
                        sub_1AACAADB4(v842, type metadata accessor for SgLine);
                        v72 = &unk_1AAF9E000;
LABEL_151:
                        v136 = v851;
                        v134 = v852;
                        goto LABEL_152;
                      case 8uLL:
                        v311 = swift_projectBox();
                        v312 = v843;
                        sub_1AACAAD4C(v311, v843, type metadata accessor for SgArea);
                        v819 = *(v312 + 8);
                        v313 = *(*&v819 + 16);
                        v314 = MEMORY[0x1E69E7CC0];
                        *&v884 = MEMORY[0x1E69E7CC0];
                        v315 = *(v313 + 16);
                        if (v315)
                        {
                          sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

                          v316 = (v313 + 56);
                          v317 = v873;
                          do
                          {
                            v318 = *(v316 - 2);
                            v319 = *v316;
                            v316 += 5;
                            v320 = swift_allocObject();
                            *(v320 + 16) = v72[43];
                            *(v320 + 32) = v318;
                            *(v320 + 40) = v319;
                            sub_1AADC8F2C(v320);
                            --v315;
                          }

                          while (v315);

                          v314 = v884;
                        }

                        else
                        {

                          v317 = v873;
                        }

                        MEMORY[0x1EEE9AC00](v321);
                        sub_1AACC7228(0, &qword_1ED9B2A88, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
                        v818 = v393;
                        *&v814[-4] = v393;
                        v817 = COERCE_DOUBLE(sub_1AAE840B8());
                        *&v814[-3] = v817;
                        v394 = sub_1AAE971D0();
                        v814[-2] = v394;
                        swift_getKeyPath();
                        v395 = v860;
                        v396 = COERCE_DOUBLE(sub_1AAF894FC(v314, sub_1AAF68E40));
                        v398 = v397;
                        v400 = v399;
                        v860 = v395;

                        x = v317;
                        y = v874;
                        width = v875;
                        height = v876;
                        v110 = v861;
                        if (v400)
                        {
                          goto LABEL_149;
                        }

                        x = v396;
                        v402 = v398;
                        if (v396 > v398)
                        {
                          goto LABEL_478;
                        }

                        v403 = *(*&v819 + 16);
                        v404 = MEMORY[0x1E69E7CC0];
                        *&v884 = MEMORY[0x1E69E7CC0];
                        v405 = *(v403 + 16);
                        if (v405)
                        {
                          sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

                          v406 = (v403 + 64);
                          do
                          {
                            v407 = *(v406 - 2);
                            v408 = *v406;
                            v406 += 5;
                            v409 = swift_allocObject();
                            *(v409 + 16) = xmmword_1AAF9E2B0;
                            *(v409 + 32) = v407;
                            *(v409 + 40) = v408;
                            sub_1AADC8F2C(v409);
                            --v405;
                          }

                          while (v405);

                          v404 = v884;
                        }

                        MEMORY[0x1EEE9AC00](v401);
                        v410 = v817;
                        *&v814[-4] = v818;
                        *&v814[-3] = v410;
                        v814[-2] = v394;
                        swift_getKeyPath();
                        v411 = v860;
                        v412 = COERCE_DOUBLE(sub_1AAF894FC(v404, sub_1AAF68E40));
                        v414 = v413;
                        v416 = v415;
                        v860 = v411;

                        if (v416)
                        {
                          x = v873;
                          y = v874;
                          width = v875;
                          height = v876;
                          v110 = v861;
                        }

                        else
                        {
                          y = v412;
                          v110 = v861;
                          if (v412 > v414)
                          {
                            goto LABEL_481;
                          }

                          width = v402 - x;
                          height = v414 - v412;
                        }

LABEL_149:
                        sub_1AACAADB4(v843, type metadata accessor for SgArea);
                        v72 = &unk_1AAF9E000;
LABEL_150:
                        v133 = v849;
                        goto LABEL_151;
                      case 9uLL:
                        v360 = swift_projectBox();
                        v361 = v844;
                        sub_1AACAAD4C(v360, v844, type metadata accessor for SgPath);
                        v362 = *(v361 + 24);
                        v892 = *(v361 + 8);
                        v893 = v362;
                        v894 = *(v361 + 40);

                        v363 = sub_1AAF8E8E4();
                        x = v873;
                        y = v874;
                        width = v875;
                        height = v876;
                        if ((v363 & 1) == 0)
                        {
                          sub_1AAF8E874();
                          x = v364;
                          y = v365;
                          width = v366;
                          height = v367;
                        }

                        v352 = type metadata accessor for SgPath;
                        v353 = v844;
                        goto LABEL_187;
                      case 0xAuLL:

                        x = v873;
                        y = v874;
                        width = v875;
                        height = v876;
                        goto LABEL_152;
                      case 0xBuLL:
                      case 0xCuLL:
                        x = *((v305 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                        y = *((v305 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                        width = *((v305 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                        height = *((v305 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

                        goto LABEL_152;
                      case 0xDuLL:

                        x = 0.0;
                        y = 0.0;
                        width = 0.0;
                        height = 0.0;
                        goto LABEL_152;
                      case 0xEuLL:
                        goto LABEL_152;
                      default:
                        v346 = swift_projectBox();
                        v340 = v853;
                        sub_1AACAAD4C(v346, v853, type metadata accessor for SgGroup);

                        x = sub_1AAF58748(v347);
                        y = v348;
                        width = v349;
                        height = v350;
                        v345 = type metadata accessor for SgGroup;
LABEL_182:
                        v352 = v345;
                        v353 = v340;
LABEL_187:
                        sub_1AACAADB4(v353, v352);
                        goto LABEL_152;
                    }
                  }
                }

                v107 = v68;
                v108 = v67;
                v109 = v70;
                v69 = v876;
LABEL_134:

                v66 = v857;
                goto LABEL_27;
              case 2uLL:
                sub_1AAD117A0((v110 & 0xFFFFFFFFFFFFFFFLL) + 16, &v884);
                v137 = *(&v884 + 1);
                v138 = *(*(&v884 + 1) + 16);

                if (v138)
                {
                  v139 = 0;
                  *&v140 = v137 + 32;
                  v69 = v876;
                  v109 = v70;
                  v108 = v67;
                  v107 = v68;
                  *&v852 = v137 + 32;
                  v861 = v110;
                  while (1)
                  {
                    if (v139 >= *(v137 + 16))
                    {
                      goto LABEL_457;
                    }

                    v145 = *(*&v140 + 8 * v139++);
                    v141 = v68;
                    v142 = v67;
                    v143 = v70;
                    v144 = v876;
                    switch(v145 >> 60)
                    {
                      case 1uLL:
                        v158 = *((v145 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                        *&v888 = *((v145 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                        swift_bridgeObjectRetain_n();
                        swift_bridgeObjectRetain_n();

                        sub_1AADC9018(v158);
                        v159 = *(v888 + 16);
                        if (v159)
                        {
                          v160 = (v888 + 32);
                          v144 = v876;
                          v143 = v875;
                          v142 = v874;
                          v141 = v873;
                          do
                          {
                            v161 = *v160++;
                            v943.origin.x = sub_1AAF517A0(v161);
                            v943.origin.y = v162;
                            v943.size.width = v163;
                            v943.size.height = v164;
                            v917.origin.x = v141;
                            v917.origin.y = v142;
                            v917.size.width = v143;
                            v917.size.height = v144;
                            v918 = CGRectUnion(v917, v943);
                            v141 = v918.origin.x;
                            v142 = v918.origin.y;
                            v143 = v918.size.width;
                            v144 = v918.size.height;
                            --v159;
                          }

                          while (v159);
                        }

                        else
                        {
                          v141 = v873;
                          v142 = v874;
                          v143 = v875;
                          v144 = v876;
                        }

                        v110 = v861;
                        v140 = v852;
                        goto LABEL_52;
                      case 2uLL:
                        v165 = v110;
                        sub_1AAD117A0((v145 & 0xFFFFFFFFFFFFFFFLL) + 16, &v888);
                        v166 = *(&v888 + 1);
                        v167 = *(*(&v888 + 1) + 16);

                        if (v167)
                        {
                          v168 = (v166 + 32);
                          v144 = v876;
                          v143 = v875;
                          v142 = v874;
                          v141 = v873;
                          do
                          {
                            v169 = *v168++;
                            v944.origin.x = sub_1AAF517A0(v169);
                            v944.origin.y = v170;
                            v944.size.width = v171;
                            v944.size.height = v172;
                            v919.origin.x = v141;
                            v919.origin.y = v142;
                            v919.size.width = v143;
                            v919.size.height = v144;
                            v920 = CGRectUnion(v919, v944);
                            v141 = v920.origin.x;
                            v142 = v920.origin.y;
                            v143 = v920.size.width;
                            v144 = v920.size.height;
                            --v167;
                          }

                          while (v167);
                        }

                        else
                        {
                          v141 = v873;
                          v142 = v874;
                          v143 = v875;
                          v144 = v876;
                        }

                        sub_1AAF14C40(&v888);
                        v110 = v165;
                        v140 = v852;
                        goto LABEL_52;
                      case 3uLL:
                        v146 = v110;
                        v147 = swift_projectBox();
                        v148 = v828;
                        sub_1AACAAD4C(v147, v828, type metadata accessor for SgPoint);
                        sub_1AAD9ADE4(v148 + 48, &v888);
                        if (v891)
                        {
                          v143 = *(&v888 + 1);
                          v144 = *&v889;

                          v149 = *(v148 + 16);
                          v141 = *(v148 + 8) - v143 * 0.5;
                          v150 = v148;
LABEL_86:
                          sub_1AACAADB4(v150, type metadata accessor for SgPoint);
                          v142 = v149 - v144 * 0.5;
                          v110 = v146;
                          goto LABEL_52;
                        }

                        v877 = v888;
                        v878 = v889;
                        v879 = v890;
                        v205 = *(v148 + 24);
                        v206 = v148;
                        if (*(v148 + 40) == 1)
                        {
                          v144 = *(v148 + 32);
                          v143 = *(v148 + 24);

                          sub_1AAE45A14(&v877);
                          v149 = *(v148 + 16);
                          v141 = *(v148 + 8) - v143 * 0.5;
                          v150 = v148;
                          goto LABEL_86;
                        }

                        v207 = *(v148 + 16);
                        v849 = *(v148 + 8);
                        v851 = v207;
                        v208 = *(&v878 + 1);
                        v209 = v879;
                        v210 = sqrt(v205);

                        sub_1AACBB42C(&v877, v208);
                        v211 = *(v209 + 16);
                        v212 = v209;
                        v140 = v852;
                        v213 = v211(v208, v212);
                        v825 = v214;
                        v216 = v215;
                        v218 = v217;
                        sub_1AACAADB4(v206, type metadata accessor for SgPoint);
                        v143 = v210 * v216;
                        v144 = v210 * v218;
                        v141 = v849 + v210 * (v213 + -0.5);
                        v142 = v851 + v210 * (v825 + -0.5);
                        sub_1AAE45A14(&v877);
                        v110 = v146;
LABEL_52:
                        v915.origin.x = v107;
                        v915.origin.y = v108;
                        v915.size.width = v109;
                        v915.size.height = v69;
                        v942.origin.x = v141;
                        v942.origin.y = v142;
                        v942.size.width = v143;
                        v942.size.height = v144;
                        v916 = CGRectUnion(v915, v942);
                        v107 = v916.origin.x;
                        v108 = v916.origin.y;
                        v109 = v916.size.width;
                        v69 = v916.size.height;

                        v68 = v873;
                        v67 = v874;
                        v70 = v875;
                        if (v139 == v138)
                        {
                          goto LABEL_136;
                        }

                        break;
                      case 4uLL:
                        v183 = swift_projectBox();
                        v152 = v854;
                        sub_1AACAAD4C(v183, v854, type metadata accessor for SgRectangle);
                        v141 = v152[1];
                        v142 = v152[2];
                        v143 = v152[3];
                        v144 = v152[4];

                        v157 = type metadata accessor for SgRectangle;
                        goto LABEL_82;
                      case 5uLL:
                        v184 = swift_projectBox();
                        v185 = v855;
                        sub_1AACAAD4C(v184, v855, type metadata accessor for SgSector);
                        v186 = vaddvq_f64(vmulq_f64(*(v185 + 24), xmmword_1AAFC7450));
                        v187 = __sincos_stret(((*(v185 + 8) + *(v185 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
                        v141 = v186 * v187.__cosval;
                        v142 = v186 * v187.__sinval;
                        v188 = (v185 + *(v856 + 52));
                        v189 = v188[1];
                        v143 = *v188 + *v188;

                        sub_1AACAADB4(v185, type metadata accessor for SgSector);
                        v144 = v189 + v189;
                        goto LABEL_52;
                      case 6uLL:
                        v173 = swift_projectBox();
                        v152 = v829;
                        sub_1AACAAD4C(v173, v829, type metadata accessor for SgRule);
                        v174 = v152[1];
                        v175 = v152[2];
                        v176 = v152[3];
                        v177 = v152[4];
                        if (v176 >= v174)
                        {
                          v141 = v152[1];
                        }

                        else
                        {
                          v141 = v152[3];
                        }

                        if (v177 >= v175)
                        {
                          v142 = v152[2];
                        }

                        else
                        {
                          v142 = v152[4];
                        }

                        v143 = vabdd_f64(v176, v174);
                        v144 = vabdd_f64(v177, v175);

                        v157 = type metadata accessor for SgRule;
                        goto LABEL_82;
                      case 7uLL:
                        v200 = swift_projectBox();
                        v152 = v850;
                        sub_1AACAAD4C(v200, v850, type metadata accessor for SgLine);

                        sub_1AAF56CF0();
                        v141 = v201;
                        v142 = v202;
                        v143 = v203;
                        v144 = v204;
                        v157 = type metadata accessor for SgLine;
                        goto LABEL_82;
                      case 8uLL:
                        v151 = swift_projectBox();
                        v152 = v848;
                        sub_1AACAAD4C(v151, v848, type metadata accessor for SgArea);

                        sub_1AAF58424();
                        v141 = v153;
                        v142 = v154;
                        v143 = v155;
                        v144 = v156;
                        v157 = type metadata accessor for SgArea;
                        goto LABEL_82;
                      case 9uLL:
                        v190 = swift_projectBox();
                        v191 = v845;
                        sub_1AACAAD4C(v190, v845, type metadata accessor for SgPath);
                        v192 = *(v191 + 24);
                        v895 = *(v191 + 8);
                        v896 = v192;
                        v897 = *(v191 + 40);

                        v193 = sub_1AAF8E8E4();
                        v141 = v873;
                        v142 = v874;
                        v143 = v875;
                        v144 = v876;
                        if ((v193 & 1) == 0)
                        {
                          sub_1AAF8E874();
                          v141 = v194;
                          v142 = v195;
                          v143 = v196;
                          v144 = v197;
                        }

                        v198 = type metadata accessor for SgPath;
                        v199 = v845;
                        goto LABEL_83;
                      case 0xAuLL:

                        v141 = v873;
                        v142 = v874;
                        v143 = v875;
                        v144 = v876;
                        goto LABEL_52;
                      case 0xBuLL:
                      case 0xCuLL:
                        v141 = *((v145 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                        v142 = *((v145 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                        v143 = *((v145 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                        v144 = *((v145 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

                        goto LABEL_52;
                      case 0xDuLL:

                        v141 = 0.0;
                        v142 = 0.0;
                        v143 = 0.0;
                        v144 = 0.0;
                        goto LABEL_52;
                      case 0xEuLL:
                        goto LABEL_52;
                      default:
                        v178 = swift_projectBox();
                        v152 = v853;
                        sub_1AACAAD4C(v178, v853, type metadata accessor for SgGroup);

                        v141 = sub_1AAF58748(v179);
                        v142 = v180;
                        v143 = v181;
                        v144 = v182;
                        v157 = type metadata accessor for SgGroup;
LABEL_82:
                        v198 = v157;
                        v199 = v152;
LABEL_83:
                        sub_1AACAADB4(v199, v198);
                        goto LABEL_52;
                    }
                  }
                }

                v107 = v68;
                v108 = v67;
                v109 = v70;
                v69 = v876;
LABEL_136:
                sub_1AAF14C40(&v884);
                v66 = v857;
                v72 = &unk_1AAF9E000;
                goto LABEL_27;
              case 3uLL:
                v111 = swift_projectBox();
                v112 = v820;
                sub_1AACAAD4C(v111, v820, type metadata accessor for SgPoint);
                sub_1AAD9ADE4(v112 + 48, &v884);
                if (v887)
                {
                  v109 = *(&v884 + 1);
                  v69 = *&v885;

LABEL_117:
                  v260 = *(v112 + 16);
                  v107 = *(v112 + 8) - v109 * 0.5;
                  sub_1AACAADB4(v112, type metadata accessor for SgPoint);
                  v108 = v260 - v69 * 0.5;
                  goto LABEL_27;
                }

                v888 = v884;
                v889 = v885;
                v890 = v886;
                if (*(v112 + 40) == 1)
                {
                  v69 = *(v112 + 32);
                  v109 = *(v112 + 24);

                  sub_1AAE45A14(&v888);
                  goto LABEL_117;
                }

                v427 = *(v112 + 8);
                v428 = *(v112 + 16);
                v429 = *(&v889 + 1);
                v430 = v890;
                v431 = sqrt(*(v112 + 24));

                sub_1AACBB42C(&v888, v429);
                v432 = (*(v430 + 16))(v429, v430);
                v434 = v433;
                v436 = v435;
                v438 = v437;
                sub_1AACAADB4(v112, type metadata accessor for SgPoint);
                v109 = v431 * v436;
                v69 = v431 * v438;
                v107 = v427 + v431 * (v432 + -0.5);
                v67 = v874;
                v439 = v431 * (v434 + -0.5);
                v70 = v875;
                v108 = v428 + v439;
                sub_1AAE45A14(&v888);
LABEL_27:
                v913.origin.x = v870;
                v913.size.width = v871;
                v913.origin.y = v872;
                v913.size.height = v869;
                v941.origin.x = v107;
                v941.origin.y = v108;
                v941.size.width = v109;
                v941.size.height = v69;
                v914 = CGRectUnion(v913, v941);
                v73 = v914.origin.x;
                v872 = v914.origin.y;
                v75 = v914.size.width;
                v76 = v914.size.height;

                v106 = v868;
                v69 = v876;
                v105 = v862;
                if (v868 == v867)
                {
                  goto LABEL_448;
                }

                break;
              case 4uLL:
                v231 = swift_projectBox();
                v220 = v854;
                sub_1AACAAD4C(v231, v854, type metadata accessor for SgRectangle);
                v107 = v220[1];
                v108 = v220[2];
                v109 = v220[3];
                v69 = v220[4];

                v225 = type metadata accessor for SgRectangle;
                goto LABEL_101;
              case 5uLL:
                v234 = swift_projectBox();
                v235 = v855;
                sub_1AACAAD4C(v234, v855, type metadata accessor for SgSector);
                v236 = vaddvq_f64(vmulq_f64(*(v235 + 24), xmmword_1AAFC7450));
                v237 = __sincos_stret(((*(v235 + 8) + *(v235 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
                v107 = v236 * v237.__cosval;
                v108 = v236 * v237.__sinval;
                v238 = (v235 + *(v856 + 52));
                v239 = v238[1];
                v109 = *v238 + *v238;

                sub_1AACAADB4(v235, type metadata accessor for SgSector);
                v69 = v239 + v239;
                goto LABEL_27;
              case 6uLL:
                v219 = swift_projectBox();
                v220 = v821;
                sub_1AACAAD4C(v219, v821, type metadata accessor for SgRule);
                v221 = v220[1];
                v222 = v220[2];
                v223 = v220[3];
                v224 = v220[4];
                if (v223 >= v221)
                {
                  v107 = v220[1];
                }

                else
                {
                  v107 = v220[3];
                }

                if (v224 >= v222)
                {
                  v108 = v220[2];
                }

                else
                {
                  v108 = v220[4];
                }

                v109 = vabdd_f64(v223, v221);
                v69 = vabdd_f64(v224, v222);

                v225 = type metadata accessor for SgRule;
                goto LABEL_101;
              case 7uLL:
                v248 = swift_projectBox();
                v249 = v837;
                sub_1AACAAD4C(v248, v837, type metadata accessor for SgLine);
                v250 = *(v249 + 8);
                swift_beginAccess();
                v251 = v110;
                v252 = *(v250 + 16);
                v253 = *(v252 + 16);
                v861 = v251;
                if (v253)
                {
                  *&v888 = MEMORY[0x1E69E7CC0];

                  sub_1AAF67208(v253);
                  v254 = v252 + 32;
                  v255 = v888;
                  v69 = v876;
                  do
                  {
                    sub_1AAE5EDF4(v254, &v884);
                    v256 = *(&v884 + 1);
                    sub_1AAE5EE50(&v884);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      sub_1AAD1FAF4(0, *(v255 + 16) + 1, 1);
                      v255 = v888;
                    }

                    v258 = *(v255 + 16);
                    v257 = *(v255 + 24);
                    if (v258 >= v257 >> 1)
                    {
                      sub_1AAD1FAF4((v257 > 1), v258 + 1, 1);
                      v255 = v888;
                    }

                    *(v255 + 16) = v258 + 1;
                    *(v255 + 8 * v258 + 32) = v256;
                    v254 += 96;
                    --v253;
                  }

                  while (v253);
                }

                else
                {

                  v255 = MEMORY[0x1E69E7CC0];
                  v69 = v876;
                }

                MEMORY[0x1EEE9AC00](v259);
                sub_1AACC7228(0, &qword_1ED9B2A88, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
                v852 = v282;
                *&v814[-4] = v282;
                v283 = sub_1AAE840B8();
                v814[-3] = v283;
                v284 = sub_1AAE971D0();
                v814[-2] = v284;
                swift_getKeyPath();
                v285 = v860;
                v286 = COERCE_DOUBLE(sub_1AAF894FC(v255, sub_1AAF68E40));
                v288 = v287;
                v290 = v289;
                v860 = v285;

                v107 = v68;
                v108 = v67;
                v109 = v70;
                if (v290)
                {
                  goto LABEL_222;
                }

                v107 = v286;
                v292 = v288;
                if (v286 > v288)
                {
                  goto LABEL_480;
                }

                v293 = *(v250 + 16);
                v294 = *(v293 + 16);
                if (v294)
                {
                  *&v888 = MEMORY[0x1E69E7CC0];

                  sub_1AAF67208(v294);
                  v295 = v293 + 32;
                  v296 = v888;
                  v69 = v876;
                  v297 = v860;
                  do
                  {
                    sub_1AAE5EDF4(v295, &v884);
                    v298 = v885;
                    sub_1AAE5EE50(&v884);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      sub_1AAD1FAF4(0, *(v296 + 16) + 1, 1);
                      v296 = v888;
                    }

                    v300 = *(v296 + 16);
                    v299 = *(v296 + 24);
                    if (v300 >= v299 >> 1)
                    {
                      sub_1AAD1FAF4((v299 > 1), v300 + 1, 1);
                      v296 = v888;
                    }

                    *(v296 + 16) = v300 + 1;
                    *(v296 + 8 * v300 + 32) = v298;
                    v295 += 96;
                    --v294;
                  }

                  while (v294);
                }

                else
                {
                  v296 = MEMORY[0x1E69E7CC0];
                  v69 = v876;
                  v297 = v860;
                }

                MEMORY[0x1EEE9AC00](v291);
                *&v814[-4] = v852;
                v814[-3] = v283;
                v814[-2] = v284;
                swift_getKeyPath();
                v440 = COERCE_DOUBLE(sub_1AAF894FC(v296, sub_1AAF68E40));
                v442 = v441;
                v444 = v443;

                v860 = v297;
                if (v444)
                {
                  v107 = v68;
                  v108 = v67;
                  v109 = v70;
                }

                else
                {
                  v108 = v440;
                  if (v440 > v442)
                  {
                    goto LABEL_484;
                  }

                  v109 = v292 - v107;
                  v69 = v442 - v440;
                }

LABEL_222:
                sub_1AACAADB4(v837, type metadata accessor for SgLine);
                v66 = v857;
                v72 = &unk_1AAF9E000;
                goto LABEL_27;
              case 8uLL:
                v113 = swift_projectBox();
                v114 = v836;
                sub_1AACAAD4C(v113, v836, type metadata accessor for SgArea);
                v115 = *(v114 + 8);
                v116 = *(*&v115 + 16);
                v117 = *(v116 + 16);
                v861 = v110;
                if (v117)
                {
                  v852 = v115;
                  sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

                  v118 = (v116 + 56);
                  v119 = MEMORY[0x1E69E7CC0];
                  v69 = v876;
                  do
                  {
                    v120 = *(v118 - 2);
                    v121 = *v118;
                    v122 = swift_allocObject();
                    *(v122 + 32) = v120;
                    v123 = (v122 + 32);
                    *(v122 + 40) = v121;
                    v124 = *(v119 + 2);
                    v125 = v124 + 2;
                    if (__OFADD__(v124, 2))
                    {
                      goto LABEL_462;
                    }

                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    if (!isUniquelyReferenced_nonNull_native || (v127 = *(v119 + 3) >> 1, v127 < v125))
                    {
                      if (v124 <= v125)
                      {
                        v128 = v124 + 2;
                      }

                      else
                      {
                        v128 = v124;
                      }

                      v119 = sub_1AAD69810(isUniquelyReferenced_nonNull_native, v128, 1, v119);
                      v127 = *(v119 + 3) >> 1;
                    }

                    v129 = *(v119 + 2);
                    if (v127 - v129 < 2)
                    {
                      goto LABEL_463;
                    }

                    *&v119[8 * v129 + 32] = *v123;
                    swift_setDeallocating();
                    swift_deallocClassInstance();
                    v130 = *(v119 + 2);
                    v102 = __OFADD__(v130, 2);
                    v131 = v130 + 2;
                    if (v102)
                    {
                      goto LABEL_464;
                    }

                    *(v119 + 2) = v131;
                    v118 += 5;
                    --v117;
                  }

                  while (v117);

                  v66 = v857;
                  v72 = &unk_1AAF9E000;
                  v115 = v852;
                }

                else
                {

                  v119 = MEMORY[0x1E69E7CC0];
                  v69 = v876;
                }

                v261 = COERCE_DOUBLE(sub_1AACEC978(v119));
                v263 = v262;
                v265 = v264;

                if (v265)
                {
                  goto LABEL_225;
                }

                v266 = *(*&v115 + 16);
                v267 = *(v266 + 16);
                if (v267)
                {
                  v851 = v261;
                  v852 = v263;
                  sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

                  v268 = (v266 + 64);
                  v269 = MEMORY[0x1E69E7CC0];
                  do
                  {
                    v270 = *(v268 - 2);
                    v271 = *v268;
                    v272 = swift_allocObject();
                    *(v272 + 32) = v270;
                    v273 = (v272 + 32);
                    *(v272 + 40) = v271;
                    v274 = *(v269 + 2);
                    v275 = v274 + 2;
                    if (__OFADD__(v274, 2))
                    {
                      goto LABEL_474;
                    }

                    v276 = swift_isUniquelyReferenced_nonNull_native();
                    if (!v276 || (v277 = *(v269 + 3) >> 1, v277 < v275))
                    {
                      if (v274 <= v275)
                      {
                        v278 = v274 + 2;
                      }

                      else
                      {
                        v278 = v274;
                      }

                      v269 = sub_1AAD69810(v276, v278, 1, v269);
                      v277 = *(v269 + 3) >> 1;
                    }

                    v279 = *(v269 + 2);
                    if (v277 - v279 < 2)
                    {
                      goto LABEL_475;
                    }

                    *&v269[8 * v279 + 32] = *v273;
                    swift_setDeallocating();
                    swift_deallocClassInstance();
                    v280 = *(v269 + 2);
                    v102 = __OFADD__(v280, 2);
                    v281 = v280 + 2;
                    if (v102)
                    {
                      goto LABEL_476;
                    }

                    *(v269 + 2) = v281;
                    v268 += 5;
                    --v267;
                  }

                  while (v267);

                  v66 = v857;
                  v72 = &unk_1AAF9E000;
                  v261 = v851;
                  v263 = v852;
                }

                else
                {
                  v269 = MEMORY[0x1E69E7CC0];
                }

                v445 = COERCE_DOUBLE(sub_1AACEC978(v269));
                v447 = v446;
                v449 = v448;

                if (v449)
                {
LABEL_225:
                  v107 = v68;
                  v108 = v67;
                  v109 = v70;
                }

                else
                {
                  v107 = v261;
                  v108 = v445;
                  v109 = v263 - v261;
                  v69 = v447 - v445;
                }

                sub_1AACAADB4(v836, type metadata accessor for SgArea);
                goto LABEL_27;
              case 9uLL:
                v240 = swift_projectBox();
                v241 = v838;
                sub_1AACAAD4C(v240, v838, type metadata accessor for SgPath);
                v242 = *(v241 + 24);
                v898 = *(v241 + 8);
                v899 = v242;
                v900 = *(v241 + 40);

                v243 = sub_1AAF8E8E4();
                v107 = v68;
                v108 = v67;
                v109 = v70;
                v69 = v876;
                if ((v243 & 1) == 0)
                {
                  sub_1AAF8E874();
                  v107 = v244;
                  v108 = v245;
                  v109 = v246;
                  v69 = v247;
                }

                v232 = type metadata accessor for SgPath;
                v233 = v838;
                goto LABEL_106;
              case 0xAuLL:

                v107 = v68;
                v108 = v67;
                v109 = v70;
                v69 = v876;
                goto LABEL_27;
              case 0xBuLL:
              case 0xCuLL:
                v107 = *((v110 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v108 = *((v110 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                v109 = *((v110 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                v69 = *((v110 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

                goto LABEL_27;
              case 0xDuLL:

                v107 = 0.0;
                v108 = 0.0;
                v109 = 0.0;
                v69 = 0.0;
                goto LABEL_27;
              case 0xEuLL:
                goto LABEL_27;
              default:
                v226 = swift_projectBox();
                v220 = v853;
                sub_1AACAAD4C(v226, v853, type metadata accessor for SgGroup);

                v107 = sub_1AAF58748(v227);
                v108 = v228;
                v109 = v229;
                v69 = v230;
                v225 = type metadata accessor for SgGroup;
LABEL_101:
                v232 = v225;
                v233 = v220;
LABEL_106:
                sub_1AACAADB4(v233, v232);
                goto LABEL_27;
            }
          }
        }

        v73 = v68;
        v872 = v67;
        v75 = v70;
        v76 = v69;
LABEL_448:

        v74 = v872;
        goto LABEL_4;
      case 2uLL:
        sub_1AAD117A0((v80 & 0xFFFFFFFFFFFFFFFLL) + 16, &v888);
        v450 = *(&v888 + 1);
        v451 = *(*(&v888 + 1) + 16);

        v863 = v451;
        if (v451)
        {
          v452 = 0;
          v861 = v450;
          v862 = v450 + 32;
          v76 = v69;
          v75 = v70;
          v872 = v67;
          v73 = v68;
          while (1)
          {
            if (v452 >= *(v450 + 16))
            {
              goto LABEL_468;
            }

            v869 = v76;
            v870 = v73;
            v871 = v75;
            v456 = *(v862 + 8 * v452);
            v867 = v452 + 1;
            v868 = v456;
            v453 = v68;
            v454 = v67;
            v455 = v70;
            switch(v456 >> 60)
            {
              case 1uLL:
                v478 = *((v456 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                *&v884 = *((v456 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v851 = *&v884;
                swift_bridgeObjectRetain_n();
                swift_bridgeObjectRetain_n();

                v849 = v478;
                sub_1AADC9018(*&v478);
                v479 = v884;
                v480 = *(v884 + 16);
                if (v480)
                {
                  v481 = 0;
                  *&v482 = v884 + 32;
                  v69 = v876;
                  v455 = v70;
                  v454 = v67;
                  v453 = v68;
                  *&v852 = v884 + 32;
                  while (v481 < *(v479 + 16))
                  {
                    v487 = *(*&v482 + 8 * v481++);
                    v483 = v68;
                    v484 = v67;
                    v485 = v70;
                    v486 = v876;
                    switch(v487 >> 60)
                    {
                      case 1uLL:
                        v497 = *((v487 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                        *&v884 = *((v487 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                        swift_bridgeObjectRetain_n();
                        swift_bridgeObjectRetain_n();

                        sub_1AADC9018(v497);
                        v498 = *(v884 + 16);
                        if (v498)
                        {
                          v499 = (v884 + 32);
                          v486 = v876;
                          v485 = v875;
                          v484 = v874;
                          v483 = v873;
                          do
                          {
                            v500 = *v499++;
                            v950.origin.x = sub_1AAF517A0(v500);
                            v950.origin.y = v501;
                            v950.size.width = v502;
                            v950.size.height = v503;
                            v931.origin.x = v483;
                            v931.origin.y = v484;
                            v931.size.width = v485;
                            v931.size.height = v486;
                            v932 = CGRectUnion(v931, v950);
                            v483 = v932.origin.x;
                            v484 = v932.origin.y;
                            v485 = v932.size.width;
                            v486 = v932.size.height;
                            --v498;
                          }

                          while (v498);
                        }

                        else
                        {
                          v483 = v873;
                          v484 = v874;
                          v485 = v875;
                          v486 = v876;
                        }

                        v66 = v857;
                        v482 = v852;
                        goto LABEL_254;
                      case 2uLL:
                        sub_1AAD117A0((v487 & 0xFFFFFFFFFFFFFFFLL) + 16, &v884);
                        v504 = *(&v884 + 1);
                        v505 = *(*(&v884 + 1) + 16);

                        if (v505)
                        {
                          v506 = (v504 + 32);
                          v486 = v876;
                          v485 = v875;
                          v484 = v874;
                          v483 = v873;
                          do
                          {
                            v507 = *v506++;
                            v951.origin.x = sub_1AAF517A0(v507);
                            v951.origin.y = v508;
                            v951.size.width = v509;
                            v951.size.height = v510;
                            v933.origin.x = v483;
                            v933.origin.y = v484;
                            v933.size.width = v485;
                            v933.size.height = v486;
                            v934 = CGRectUnion(v933, v951);
                            v483 = v934.origin.x;
                            v484 = v934.origin.y;
                            v485 = v934.size.width;
                            v486 = v934.size.height;
                            --v505;
                          }

                          while (v505);
                        }

                        else
                        {
                          v483 = v873;
                          v484 = v874;
                          v485 = v875;
                          v486 = v876;
                        }

                        sub_1AAF14C40(&v884);
                        v482 = v852;
                        goto LABEL_254;
                      case 3uLL:
                        v488 = swift_projectBox();
                        v489 = v830;
                        sub_1AACAAD4C(v488, v830, type metadata accessor for SgPoint);
                        sub_1AAD9ADE4(v489 + 48, &v884);
                        if (v887)
                        {
                          v485 = *(&v884 + 1);
                          v486 = *&v885;

LABEL_288:
                          v544 = *(v489 + 16);
                          v483 = *(v489 + 8) - v485 * 0.5;
                          sub_1AACAADB4(v489, type metadata accessor for SgPoint);
                          v484 = v544 - v486 * 0.5;
                          goto LABEL_254;
                        }

                        v877 = v884;
                        v878 = v885;
                        v879 = v886;
                        v543 = *(v489 + 24);
                        if (*(v489 + 40) == 1)
                        {
                          v486 = *(v489 + 32);
                          v485 = *(v489 + 24);

                          sub_1AAE45A14(&v877);
                          goto LABEL_288;
                        }

                        v545 = *(v489 + 16);
                        v824 = *(v489 + 8);
                        v825 = v545;
                        v546 = *(&v878 + 1);
                        v547 = v879;
                        v548 = sqrt(v543);

                        sub_1AACBB42C(&v877, v546);
                        v549 = v546;
                        v482 = v852;
                        v550 = (*(v547 + 16))(v549, v547);
                        v819 = v551;
                        v553 = v552;
                        v555 = v554;
                        sub_1AACAADB4(v489, type metadata accessor for SgPoint);
                        v485 = v548 * v553;
                        v486 = v548 * v555;
                        v483 = v824 + v548 * (v550 + -0.5);
                        v484 = v825 + v548 * (v819 + -0.5);
                        sub_1AAE45A14(&v877);
LABEL_254:
                        v929.origin.x = v453;
                        v929.origin.y = v454;
                        v929.size.width = v455;
                        v929.size.height = v69;
                        v949.origin.x = v483;
                        v949.origin.y = v484;
                        v949.size.width = v485;
                        v949.size.height = v486;
                        v930 = CGRectUnion(v929, v949);
                        v453 = v930.origin.x;
                        v454 = v930.origin.y;
                        v455 = v930.size.width;
                        v69 = v930.size.height;

                        v68 = v873;
                        v67 = v874;
                        v70 = v875;
                        if (v481 == v480)
                        {
                          goto LABEL_380;
                        }

                        break;
                      case 4uLL:
                        v521 = swift_projectBox();
                        v491 = v854;
                        sub_1AACAAD4C(v521, v854, type metadata accessor for SgRectangle);
                        v483 = v491[1];
                        v484 = v491[2];
                        v485 = v491[3];
                        v486 = v491[4];

                        v496 = type metadata accessor for SgRectangle;
                        goto LABEL_284;
                      case 5uLL:
                        v522 = swift_projectBox();
                        v523 = v855;
                        sub_1AACAAD4C(v522, v855, type metadata accessor for SgSector);
                        v524 = vaddvq_f64(vmulq_f64(*(v523 + 24), xmmword_1AAFC7450));
                        v525 = __sincos_stret(((*(v523 + 8) + *(v523 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
                        v483 = v524 * v525.__cosval;
                        v484 = v524 * v525.__sinval;
                        v526 = (v523 + *(v856 + 52));
                        v527 = v526[1];
                        v485 = *v526 + *v526;

                        sub_1AACAADB4(v523, type metadata accessor for SgSector);
                        v486 = v527 + v527;
                        goto LABEL_254;
                      case 6uLL:
                        v511 = swift_projectBox();
                        v491 = v832;
                        sub_1AACAAD4C(v511, v832, type metadata accessor for SgRule);
                        v512 = v491[1];
                        v513 = v491[2];
                        v514 = v491[3];
                        v515 = v491[4];
                        if (v514 >= v512)
                        {
                          v483 = v491[1];
                        }

                        else
                        {
                          v483 = v491[3];
                        }

                        if (v515 >= v513)
                        {
                          v484 = v491[2];
                        }

                        else
                        {
                          v484 = v491[4];
                        }

                        v485 = vabdd_f64(v514, v512);
                        v486 = vabdd_f64(v515, v513);

                        v496 = type metadata accessor for SgRule;
                        goto LABEL_284;
                      case 7uLL:
                        v538 = swift_projectBox();
                        v491 = v850;
                        sub_1AACAAD4C(v538, v850, type metadata accessor for SgLine);

                        sub_1AAF56CF0();
                        v483 = v539;
                        v484 = v540;
                        v485 = v541;
                        v486 = v542;
                        v496 = type metadata accessor for SgLine;
                        goto LABEL_284;
                      case 8uLL:
                        v490 = swift_projectBox();
                        v491 = v848;
                        sub_1AACAAD4C(v490, v848, type metadata accessor for SgArea);

                        sub_1AAF58424();
                        v483 = v492;
                        v484 = v493;
                        v485 = v494;
                        v486 = v495;
                        v496 = type metadata accessor for SgArea;
                        goto LABEL_284;
                      case 9uLL:
                        v528 = swift_projectBox();
                        v529 = v846;
                        sub_1AACAAD4C(v528, v846, type metadata accessor for SgPath);
                        v530 = *(v529 + 24);
                        v901 = *(v529 + 8);
                        v902 = v530;
                        v903 = *(v529 + 40);

                        v531 = sub_1AAF8E8E4();
                        v483 = v873;
                        v484 = v874;
                        v485 = v875;
                        v486 = v876;
                        if ((v531 & 1) == 0)
                        {
                          sub_1AAF8E874();
                          v483 = v532;
                          v484 = v533;
                          v485 = v534;
                          v486 = v535;
                        }

                        v536 = type metadata accessor for SgPath;
                        v537 = v846;
                        goto LABEL_285;
                      case 0xAuLL:

                        v483 = v873;
                        v484 = v874;
                        v485 = v875;
                        v486 = v876;
                        goto LABEL_254;
                      case 0xBuLL:
                      case 0xCuLL:
                        v483 = *((v487 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                        v484 = *((v487 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                        v485 = *((v487 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                        v486 = *((v487 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

                        goto LABEL_254;
                      case 0xDuLL:

                        v483 = 0.0;
                        v484 = 0.0;
                        v485 = 0.0;
                        v486 = 0.0;
                        goto LABEL_254;
                      case 0xEuLL:
                        goto LABEL_254;
                      default:
                        v516 = swift_projectBox();
                        v491 = v853;
                        sub_1AACAAD4C(v516, v853, type metadata accessor for SgGroup);

                        v483 = sub_1AAF58748(v517);
                        v484 = v518;
                        v485 = v519;
                        v486 = v520;
                        v496 = type metadata accessor for SgGroup;
LABEL_284:
                        v536 = v496;
                        v537 = v491;
LABEL_285:
                        sub_1AACAADB4(v537, v536);
                        goto LABEL_254;
                    }
                  }

LABEL_455:
                  __break(1u);
LABEL_456:
                  __break(1u);
LABEL_457:
                  __break(1u);
LABEL_458:
                  __break(1u);
LABEL_459:
                  __break(1u);
LABEL_460:
                  __break(1u);
LABEL_461:
                  __break(1u);
LABEL_462:
                  __break(1u);
LABEL_463:
                  __break(1u);
LABEL_464:
                  __break(1u);
LABEL_465:
                  __break(1u);
                  goto LABEL_466;
                }

                v453 = v68;
                v454 = v67;
                v455 = v70;
                v69 = v876;
LABEL_380:

LABEL_383:
                v72 = &unk_1AAF9E000;
LABEL_231:
                v927.origin.x = v870;
                v927.size.width = v871;
                v927.origin.y = v872;
                v927.size.height = v869;
                v948.origin.x = v453;
                v948.origin.y = v454;
                v948.size.width = v455;
                v948.size.height = v69;
                v928 = CGRectUnion(v927, v948);
                v73 = v928.origin.x;
                v872 = v928.origin.y;
                v75 = v928.size.width;
                v76 = v928.size.height;

                v452 = v867;
                v69 = v876;
                v450 = v861;
                if (v867 == v863)
                {
                  goto LABEL_450;
                }

                break;
              case 2uLL:
                sub_1AAD117A0((v456 & 0xFFFFFFFFFFFFFFFLL) + 16, &v884);
                v556 = *(&v884 + 1);
                v557 = *(*(&v884 + 1) + 16);

                if (v557)
                {
                  v558 = 0;
                  *&v559 = v556 + 32;
                  v69 = v876;
                  v455 = v70;
                  v454 = v67;
                  v453 = v68;
                  *&v852 = v556 + 32;
                  while (1)
                  {
                    if (v558 >= *(v556 + 16))
                    {
                      goto LABEL_456;
                    }

                    v564 = *(*&v559 + 8 * v558++);
                    v560 = v68;
                    v561 = v67;
                    v562 = v70;
                    v563 = v876;
                    switch(v564 >> 60)
                    {
                      case 1uLL:
                        v574 = *((v564 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                        *&v877 = *((v564 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                        swift_bridgeObjectRetain_n();
                        swift_bridgeObjectRetain_n();

                        sub_1AADC9018(v574);
                        v575 = *(v877 + 16);
                        if (v575)
                        {
                          v576 = (v877 + 32);
                          v563 = v876;
                          v562 = v875;
                          v561 = v874;
                          v560 = v873;
                          do
                          {
                            v577 = *v576++;
                            v953.origin.x = sub_1AAF517A0(v577);
                            v953.origin.y = v578;
                            v953.size.width = v579;
                            v953.size.height = v580;
                            v937.origin.x = v560;
                            v937.origin.y = v561;
                            v937.size.width = v562;
                            v937.size.height = v563;
                            v938 = CGRectUnion(v937, v953);
                            v560 = v938.origin.x;
                            v561 = v938.origin.y;
                            v562 = v938.size.width;
                            v563 = v938.size.height;
                            --v575;
                          }

                          while (v575);
                        }

                        else
                        {
                          v560 = v873;
                          v561 = v874;
                          v562 = v875;
                          v563 = v876;
                        }

                        v559 = v852;
                        goto LABEL_297;
                      case 2uLL:
                        sub_1AAD117A0((v564 & 0xFFFFFFFFFFFFFFFLL) + 16, &v877);
                        v581 = *(&v877 + 1);
                        v582 = *(*(&v877 + 1) + 16);

                        if (v582)
                        {
                          v583 = (v581 + 32);
                          v563 = v876;
                          v562 = v875;
                          v561 = v874;
                          v560 = v873;
                          do
                          {
                            v584 = *v583++;
                            v954.origin.x = sub_1AAF517A0(v584);
                            v954.origin.y = v585;
                            v954.size.width = v586;
                            v954.size.height = v587;
                            v939.origin.x = v560;
                            v939.origin.y = v561;
                            v939.size.width = v562;
                            v939.size.height = v563;
                            v940 = CGRectUnion(v939, v954);
                            v560 = v940.origin.x;
                            v561 = v940.origin.y;
                            v562 = v940.size.width;
                            v563 = v940.size.height;
                            --v582;
                          }

                          while (v582);
                        }

                        else
                        {
                          v560 = v873;
                          v561 = v874;
                          v562 = v875;
                          v563 = v876;
                        }

                        sub_1AAF14C40(&v877);
                        goto LABEL_297;
                      case 3uLL:
                        v565 = swift_projectBox();
                        v566 = v831;
                        sub_1AACAAD4C(v565, v831, type metadata accessor for SgPoint);
                        sub_1AAD9ADE4(v566 + 48, &v877);
                        if (v880)
                        {
                          v562 = *(&v877 + 1);
                          v563 = *&v878;

LABEL_331:
                          v621 = *(v566 + 16);
                          v560 = *(v566 + 8) - v562 * 0.5;
                          sub_1AACAADB4(v566, type metadata accessor for SgPoint);
                          v561 = v621 - v563 * 0.5;
                          goto LABEL_297;
                        }

                        v881 = v877;
                        v882 = v878;
                        v883 = v879;
                        v620 = *(v566 + 24);
                        if (*(v566 + 40) == 1)
                        {
                          v563 = *(v566 + 32);
                          v562 = *(v566 + 24);

                          sub_1AAE45A14(&v881);
                          goto LABEL_331;
                        }

                        v622 = *(v566 + 16);
                        v849 = *(v566 + 8);
                        v851 = v622;
                        v623 = *(&v882 + 1);
                        v624 = v883;
                        v625 = sqrt(v620);

                        sub_1AACBB42C(&v881, v623);
                        v626 = (*(v624 + 16))(v623, v624);
                        v825 = v627;
                        v629 = v628;
                        v631 = v630;
                        sub_1AACAADB4(v566, type metadata accessor for SgPoint);
                        v562 = v625 * v629;
                        v563 = v625 * v631;
                        v560 = v849 + v625 * (v626 + -0.5);
                        v561 = v851 + v625 * (v825 + -0.5);
                        sub_1AAE45A14(&v881);
LABEL_297:
                        v935.origin.x = v453;
                        v935.origin.y = v454;
                        v935.size.width = v455;
                        v935.size.height = v69;
                        v952.origin.x = v560;
                        v952.origin.y = v561;
                        v952.size.width = v562;
                        v952.size.height = v563;
                        v936 = CGRectUnion(v935, v952);
                        v453 = v936.origin.x;
                        v454 = v936.origin.y;
                        v455 = v936.size.width;
                        v69 = v936.size.height;

                        v68 = v873;
                        v67 = v874;
                        v70 = v875;
                        if (v558 == v557)
                        {
                          goto LABEL_382;
                        }

                        break;
                      case 4uLL:
                        v598 = swift_projectBox();
                        v568 = v854;
                        sub_1AACAAD4C(v598, v854, type metadata accessor for SgRectangle);
                        v560 = v568[1];
                        v561 = v568[2];
                        v562 = v568[3];
                        v563 = v568[4];

                        v573 = type metadata accessor for SgRectangle;
                        goto LABEL_327;
                      case 5uLL:
                        v599 = swift_projectBox();
                        v600 = v855;
                        sub_1AACAAD4C(v599, v855, type metadata accessor for SgSector);
                        v601 = vaddvq_f64(vmulq_f64(*(v600 + 24), xmmword_1AAFC7450));
                        v602 = __sincos_stret(((*(v600 + 8) + *(v600 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
                        v560 = v601 * v602.__cosval;
                        v561 = v601 * v602.__sinval;
                        v603 = (v600 + *(v856 + 52));
                        v604 = v603[1];
                        v562 = *v603 + *v603;

                        sub_1AACAADB4(v600, type metadata accessor for SgSector);
                        v563 = v604 + v604;
                        goto LABEL_297;
                      case 6uLL:
                        v588 = swift_projectBox();
                        v568 = v833;
                        sub_1AACAAD4C(v588, v833, type metadata accessor for SgRule);
                        v589 = v568[1];
                        v590 = v568[2];
                        v591 = v568[3];
                        v592 = v568[4];
                        if (v591 >= v589)
                        {
                          v560 = v568[1];
                        }

                        else
                        {
                          v560 = v568[3];
                        }

                        if (v592 >= v590)
                        {
                          v561 = v568[2];
                        }

                        else
                        {
                          v561 = v568[4];
                        }

                        v562 = vabdd_f64(v591, v589);
                        v563 = vabdd_f64(v592, v590);

                        v573 = type metadata accessor for SgRule;
                        goto LABEL_327;
                      case 7uLL:
                        v615 = swift_projectBox();
                        v568 = v850;
                        sub_1AACAAD4C(v615, v850, type metadata accessor for SgLine);

                        sub_1AAF56CF0();
                        v560 = v616;
                        v561 = v617;
                        v562 = v618;
                        v563 = v619;
                        v573 = type metadata accessor for SgLine;
                        goto LABEL_327;
                      case 8uLL:
                        v567 = swift_projectBox();
                        v568 = v848;
                        sub_1AACAAD4C(v567, v848, type metadata accessor for SgArea);

                        sub_1AAF58424();
                        v560 = v569;
                        v561 = v570;
                        v562 = v571;
                        v563 = v572;
                        v573 = type metadata accessor for SgArea;
                        goto LABEL_327;
                      case 9uLL:
                        v605 = swift_projectBox();
                        v606 = v847;
                        sub_1AACAAD4C(v605, v847, type metadata accessor for SgPath);
                        v607 = *(v606 + 24);
                        v904 = *(v606 + 8);
                        v905 = v607;
                        v906 = *(v606 + 40);

                        v608 = sub_1AAF8E8E4();
                        v560 = v873;
                        v561 = v874;
                        v562 = v875;
                        v563 = v876;
                        if ((v608 & 1) == 0)
                        {
                          sub_1AAF8E874();
                          v560 = v609;
                          v561 = v610;
                          v562 = v611;
                          v563 = v612;
                        }

                        v613 = type metadata accessor for SgPath;
                        v614 = v847;
                        goto LABEL_328;
                      case 0xAuLL:

                        v560 = v873;
                        v561 = v874;
                        v562 = v875;
                        v563 = v876;
                        goto LABEL_297;
                      case 0xBuLL:
                      case 0xCuLL:
                        v560 = *((v564 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                        v561 = *((v564 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                        v562 = *((v564 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                        v563 = *((v564 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

                        goto LABEL_297;
                      case 0xDuLL:

                        v560 = 0.0;
                        v561 = 0.0;
                        v562 = 0.0;
                        v563 = 0.0;
                        goto LABEL_297;
                      case 0xEuLL:
                        goto LABEL_297;
                      default:
                        v593 = swift_projectBox();
                        v568 = v853;
                        sub_1AACAAD4C(v593, v853, type metadata accessor for SgGroup);

                        v560 = sub_1AAF58748(v594);
                        v561 = v595;
                        v562 = v596;
                        v563 = v597;
                        v573 = type metadata accessor for SgGroup;
LABEL_327:
                        v613 = v573;
                        v614 = v568;
LABEL_328:
                        sub_1AACAADB4(v614, v613);
                        goto LABEL_297;
                    }
                  }
                }

                v453 = v68;
                v454 = v67;
                v455 = v70;
                v69 = v876;
LABEL_382:
                sub_1AAF14C40(&v884);
                v66 = v857;
                goto LABEL_383;
              case 3uLL:
                v457 = swift_projectBox();
                v458 = v822;
                sub_1AACAAD4C(v457, v822, type metadata accessor for SgPoint);
                sub_1AAD9ADE4(v458 + 48, &v884);
                if (v887)
                {
                  v455 = *(&v884 + 1);
                  v69 = *&v885;

LABEL_362:
                  v672 = *(v458 + 16);
                  v453 = *(v458 + 8) - v455 * 0.5;
                  sub_1AACAADB4(v458, type metadata accessor for SgPoint);
                  v454 = v672 - v69 * 0.5;
                  goto LABEL_231;
                }

                v877 = v884;
                v878 = v885;
                v879 = v886;
                if (*(v458 + 40) == 1)
                {
                  v69 = *(v458 + 32);
                  v455 = *(v458 + 24);

                  sub_1AAE45A14(&v877);
                  goto LABEL_362;
                }

                v712 = *(v458 + 8);
                v713 = *(v458 + 16);
                v714 = *(&v878 + 1);
                v715 = v879;
                v716 = sqrt(*(v458 + 24));

                sub_1AACBB42C(&v877, v714);
                v717 = (*(v715 + 16))(v714, v715);
                v719 = v718;
                v721 = v720;
                v723 = v722;
                sub_1AACAADB4(v458, type metadata accessor for SgPoint);
                v455 = v716 * v721;
                v69 = v716 * v723;
                v453 = v712 + v716 * (v717 + -0.5);
                v67 = v874;
                v724 = v716 * (v719 + -0.5);
                v70 = v875;
                v454 = v713 + v724;
                sub_1AAE45A14(&v877);
                goto LABEL_231;
              case 4uLL:
                v644 = swift_projectBox();
                v633 = v854;
                sub_1AACAAD4C(v644, v854, type metadata accessor for SgRectangle);
                v453 = v633[1];
                v454 = v633[2];
                v455 = v633[3];
                v69 = v633[4];

                v638 = type metadata accessor for SgRectangle;
                goto LABEL_346;
              case 5uLL:
                v647 = swift_projectBox();
                v648 = v855;
                sub_1AACAAD4C(v647, v855, type metadata accessor for SgSector);
                v649 = vaddvq_f64(vmulq_f64(*(v648 + 24), xmmword_1AAFC7450));
                v650 = __sincos_stret(((*(v648 + 8) + *(v648 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
                v453 = v649 * v650.__cosval;
                v454 = v649 * v650.__sinval;
                v651 = (v648 + *(v856 + 52));
                v652 = v651[1];
                v455 = *v651 + *v651;

                sub_1AACAADB4(v648, type metadata accessor for SgSector);
                v69 = v652 + v652;
                goto LABEL_231;
              case 6uLL:
                v632 = swift_projectBox();
                v633 = v823;
                sub_1AACAAD4C(v632, v823, type metadata accessor for SgRule);
                v634 = v633[1];
                v635 = v633[2];
                v636 = v633[3];
                v637 = v633[4];
                if (v636 >= v634)
                {
                  v453 = v633[1];
                }

                else
                {
                  v453 = v633[3];
                }

                if (v637 >= v635)
                {
                  v454 = v633[2];
                }

                else
                {
                  v454 = v633[4];
                }

                v455 = vabdd_f64(v636, v634);
                v69 = vabdd_f64(v637, v635);

                v638 = type metadata accessor for SgRule;
                goto LABEL_346;
              case 7uLL:
                v661 = swift_projectBox();
                v662 = v840;
                sub_1AACAAD4C(v661, v840, type metadata accessor for SgLine);
                v663 = *(v662 + 8);
                swift_beginAccess();
                v664 = *(v663 + 16);
                v665 = *(v664 + 16);
                if (v665)
                {
                  *&v877 = MEMORY[0x1E69E7CC0];

                  sub_1AAF67208(v665);
                  v666 = v664 + 32;
                  v667 = v877;
                  v69 = v876;
                  do
                  {
                    sub_1AAE5EDF4(v666, &v884);
                    v668 = *(&v884 + 1);
                    sub_1AAE5EE50(&v884);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      sub_1AAD1FAF4(0, *(v667 + 16) + 1, 1);
                      v667 = v877;
                    }

                    v670 = *(v667 + 16);
                    v669 = *(v667 + 24);
                    if (v670 >= v669 >> 1)
                    {
                      sub_1AAD1FAF4((v669 > 1), v670 + 1, 1);
                      v667 = v877;
                    }

                    *(v667 + 16) = v670 + 1;
                    *(v667 + 8 * v670 + 32) = v668;
                    v666 += 96;
                    --v665;
                  }

                  while (v665);
                }

                else
                {

                  v667 = MEMORY[0x1E69E7CC0];
                  v69 = v876;
                }

                MEMORY[0x1EEE9AC00](v671);
                sub_1AACC7228(0, &qword_1ED9B2A88, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
                v852 = v694;
                *&v814[-4] = v694;
                v851 = COERCE_DOUBLE(sub_1AAE840B8());
                *&v814[-3] = v851;
                v695 = sub_1AAE971D0();
                v814[-2] = v695;
                swift_getKeyPath();
                v696 = v860;
                v697 = COERCE_DOUBLE(sub_1AAF894FC(v667, sub_1AAF68E40));
                v699 = v698;
                v701 = v700;
                v860 = v696;

                v453 = v68;
                v454 = v67;
                v455 = v70;
                v66 = v857;
                if (v701)
                {
                  goto LABEL_401;
                }

                v453 = v697;
                v703 = v699;
                if (v697 > v699)
                {
                  goto LABEL_479;
                }

                v704 = *(v663 + 16);
                v705 = *(v704 + 16);
                if (v705)
                {
                  *&v877 = MEMORY[0x1E69E7CC0];

                  sub_1AAF67208(v705);
                  v706 = v704 + 32;
                  v707 = v877;
                  v69 = v876;
                  v708 = v860;
                  do
                  {
                    sub_1AAE5EDF4(v706, &v884);
                    v709 = v885;
                    sub_1AAE5EE50(&v884);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      sub_1AAD1FAF4(0, *(v707 + 16) + 1, 1);
                      v707 = v877;
                    }

                    v711 = *(v707 + 16);
                    v710 = *(v707 + 24);
                    if (v711 >= v710 >> 1)
                    {
                      sub_1AAD1FAF4((v710 > 1), v711 + 1, 1);
                      v707 = v877;
                    }

                    *(v707 + 16) = v711 + 1;
                    *(v707 + 8 * v711 + 32) = v709;
                    v706 += 96;
                    --v705;
                  }

                  while (v705);

                  v66 = v857;
                }

                else
                {
                  v707 = MEMORY[0x1E69E7CC0];
                  v69 = v876;
                  v708 = v860;
                }

                MEMORY[0x1EEE9AC00](v702);
                v725 = v851;
                *&v814[-4] = v852;
                *&v814[-3] = v725;
                v814[-2] = v695;
                swift_getKeyPath();
                v726 = COERCE_DOUBLE(sub_1AAF894FC(v707, sub_1AAF68E40));
                v728 = v727;
                v730 = v729;
                v860 = v708;

                if (v730)
                {
                  v453 = v68;
                  v454 = v67;
                  v455 = v70;
                }

                else
                {
                  v454 = v726;
                  if (v726 > v728)
                  {
                    goto LABEL_483;
                  }

                  v455 = v703 - v453;
                  v69 = v728 - v726;
                }

LABEL_401:
                sub_1AACAADB4(v840, type metadata accessor for SgLine);
                v72 = &unk_1AAF9E000;
                goto LABEL_231;
              case 8uLL:
                v459 = swift_projectBox();
                v460 = v839;
                sub_1AACAAD4C(v459, v839, type metadata accessor for SgArea);
                v461 = *(v460 + 8);
                v462 = *(*&v461 + 16);
                v463 = *(v462 + 16);
                if (v463)
                {
                  v852 = v461;
                  sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

                  v464 = (v462 + 56);
                  v465 = MEMORY[0x1E69E7CC0];
                  v69 = v876;
                  do
                  {
                    v466 = *(v464 - 2);
                    v467 = *v464;
                    v468 = swift_allocObject();
                    *(v468 + 32) = v466;
                    v469 = (v468 + 32);
                    *(v468 + 40) = v467;
                    v470 = *(v465 + 2);
                    v471 = v470 + 2;
                    if (__OFADD__(v470, 2))
                    {
                      goto LABEL_458;
                    }

                    v472 = swift_isUniquelyReferenced_nonNull_native();
                    if (!v472 || (v473 = *(v465 + 3) >> 1, v473 < v471))
                    {
                      if (v470 <= v471)
                      {
                        v474 = v470 + 2;
                      }

                      else
                      {
                        v474 = v470;
                      }

                      v465 = sub_1AAD69810(v472, v474, 1, v465);
                      v473 = *(v465 + 3) >> 1;
                    }

                    v72 = &unk_1AAF9E000;
                    v475 = *(v465 + 2);
                    if (v473 - v475 < 2)
                    {
                      goto LABEL_459;
                    }

                    *&v465[8 * v475 + 32] = *v469;
                    swift_setDeallocating();
                    swift_deallocClassInstance();
                    v476 = *(v465 + 2);
                    v102 = __OFADD__(v476, 2);
                    v477 = v476 + 2;
                    if (v102)
                    {
                      goto LABEL_460;
                    }

                    *(v465 + 2) = v477;
                    v464 += 5;
                    --v463;
                  }

                  while (v463);

                  v66 = v857;
                  v461 = v852;
                }

                else
                {

                  v465 = MEMORY[0x1E69E7CC0];
                  v69 = v876;
                }

                v673 = COERCE_DOUBLE(sub_1AACEC978(v465));
                v675 = v674;
                v677 = v676;

                if (v677)
                {
                  v453 = v68;
                  v454 = v67;
                  v455 = v70;
                }

                else
                {
                  v678 = *(*&v461 + 16);
                  v679 = *(v678 + 16);
                  if (v679)
                  {
                    v851 = v673;
                    v852 = v675;
                    sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

                    v680 = (v678 + 64);
                    v681 = MEMORY[0x1E69E7CC0];
                    do
                    {
                      v682 = *(v680 - 2);
                      v683 = *v680;
                      v684 = swift_allocObject();
                      *(v684 + 32) = v682;
                      v685 = (v684 + 32);
                      *(v684 + 40) = v683;
                      v686 = *(v681 + 2);
                      v687 = v686 + 2;
                      if (__OFADD__(v686, 2))
                      {
                        goto LABEL_471;
                      }

                      v688 = swift_isUniquelyReferenced_nonNull_native();
                      if (!v688 || (v689 = *(v681 + 3) >> 1, v689 < v687))
                      {
                        if (v686 <= v687)
                        {
                          v690 = v686 + 2;
                        }

                        else
                        {
                          v690 = v686;
                        }

                        v681 = sub_1AAD69810(v688, v690, 1, v681);
                        v689 = *(v681 + 3) >> 1;
                      }

                      v691 = *(v681 + 2);
                      if (v689 - v691 < 2)
                      {
                        goto LABEL_472;
                      }

                      *&v681[8 * v691 + 32] = *v685;
                      swift_setDeallocating();
                      swift_deallocClassInstance();
                      v692 = *(v681 + 2);
                      v102 = __OFADD__(v692, 2);
                      v693 = v692 + 2;
                      if (v102)
                      {
                        goto LABEL_473;
                      }

                      *(v681 + 2) = v693;
                      v680 += 5;
                      --v679;
                    }

                    while (v679);

                    v66 = v857;
                    v673 = v851;
                    v675 = v852;
                  }

                  else
                  {
                    v681 = MEMORY[0x1E69E7CC0];
                  }

                  v731 = COERCE_DOUBLE(sub_1AACEC978(v681));
                  v733 = v732;
                  v735 = v734;

                  if (v735)
                  {
                    v453 = v68;
                    v454 = v67;
                    v455 = v70;
                  }

                  else
                  {
                    v453 = v673;
                    v454 = v731;
                    v455 = v675 - v673;
                    v69 = v733 - v731;
                  }

                  v72 = &unk_1AAF9E000;
                }

                sub_1AACAADB4(v839, type metadata accessor for SgArea);
                goto LABEL_231;
              case 9uLL:
                v653 = swift_projectBox();
                v654 = v841;
                sub_1AACAAD4C(v653, v841, type metadata accessor for SgPath);
                v655 = *(v654 + 24);
                v907 = *(v654 + 8);
                v908 = v655;
                v909 = *(v654 + 40);

                v656 = sub_1AAF8E8E4();
                v453 = v68;
                v454 = v67;
                v455 = v70;
                v69 = v876;
                if ((v656 & 1) == 0)
                {
                  sub_1AAF8E874();
                  v453 = v657;
                  v454 = v658;
                  v455 = v659;
                  v69 = v660;
                }

                v645 = type metadata accessor for SgPath;
                v646 = v841;
                goto LABEL_351;
              case 0xAuLL:

                v453 = v68;
                v454 = v67;
                v455 = v70;
                v69 = v876;
                goto LABEL_231;
              case 0xBuLL:
              case 0xCuLL:
                v453 = *((v456 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v454 = *((v456 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                v455 = *((v456 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                v69 = *((v456 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

                goto LABEL_231;
              case 0xDuLL:

                v453 = 0.0;
                v454 = 0.0;
                v455 = 0.0;
                v69 = 0.0;
                goto LABEL_231;
              case 0xEuLL:
                goto LABEL_231;
              default:
                v639 = swift_projectBox();
                v633 = v853;
                sub_1AACAAD4C(v639, v853, type metadata accessor for SgGroup);

                v453 = sub_1AAF58748(v640);
                v454 = v641;
                v455 = v642;
                v69 = v643;
                v638 = type metadata accessor for SgGroup;
LABEL_346:
                v645 = v638;
                v646 = v633;
LABEL_351:
                sub_1AACAADB4(v646, v645);
                goto LABEL_231;
            }
          }
        }

        v73 = v68;
        v872 = v67;
        v75 = v70;
        v76 = v69;
LABEL_450:
        sub_1AAF14C40(&v888);
        v74 = v872;
        goto LABEL_4;
      case 3uLL:
        v82 = swift_projectBox();
        v83 = v815;
        sub_1AACAAD4C(v82, v815, type metadata accessor for SgPoint);
        sub_1AAD9ADE4(v83 + 48, &v884);
        if (v887)
        {
          v75 = *(&v884 + 1);
          v84 = *&v885;

LABEL_426:
          v772 = *(v83 + 16);
          v773 = *(v83 + 8) - v75 * 0.5;
          sub_1AACAADB4(v83, type metadata accessor for SgPoint);
          v774 = v84;
          v775 = v84 * 0.5;
          v73 = v773;
          v74 = v772 - v775;
          v76 = v774;
          goto LABEL_4;
        }

        v888 = v884;
        v889 = v885;
        v890 = v886;
        if (*(v83 + 40) == 1)
        {
          v84 = *(v83 + 32);
          v75 = *(v83 + 24);

          sub_1AAE45A14(&v888);
          goto LABEL_426;
        }

        v796 = *(v83 + 8);
        v797 = *(v83 + 16);
        v798 = *(&v889 + 1);
        v799 = v890;
        v800 = sqrt(*(v83 + 24));

        sub_1AACBB42C(&v888, v798);
        v801 = (*(v799 + 16))(v798, v799);
        v803 = v802;
        v805 = v804;
        v807 = v806;
        sub_1AACAADB4(v83, type metadata accessor for SgPoint);
        v75 = v800 * v805;
        v808 = v800 * v807;
        v69 = v876;
        v809 = v801 + -0.5;
        v76 = v808;
        v810 = v796 + v800 * v809;
        v67 = v874;
        v811 = v803 + -0.5;
        v73 = v810;
        v812 = v800 * v811;
        v70 = v875;
        v813 = v797 + v812;
        sub_1AAE45A14(&v888);
        v74 = v813;
        goto LABEL_4;
      case 4uLL:
        v749 = swift_projectBox();
        v737 = v854;
        sub_1AACAAD4C(v749, v854, type metadata accessor for SgRectangle);
        v73 = *(v737 + 8);
        v742 = *(v737 + 16);
        v75 = *(v737 + 24);
        v76 = *(v737 + 32);

        v743 = type metadata accessor for SgRectangle;
        goto LABEL_422;
      case 5uLL:
        v750 = swift_projectBox();
        v751 = v855;
        sub_1AACAAD4C(v750, v855, type metadata accessor for SgSector);
        v752 = vaddvq_f64(vmulq_f64(*(v751 + 24), xmmword_1AAFC7450));
        v753 = __sincos_stret(((*(v751 + 8) + *(v751 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
        v73 = v752 * v753.__cosval;
        v754 = v752 * v753.__sinval;
        v755 = (v751 + *(v856 + 52));
        v756 = v755[1];
        v75 = *v755 + *v755;

        sub_1AACAADB4(v751, type metadata accessor for SgSector);
        v74 = v754;
        v76 = v756 + v756;
        goto LABEL_4;
      case 6uLL:
        v736 = swift_projectBox();
        v737 = v816;
        sub_1AACAAD4C(v736, v816, type metadata accessor for SgRule);
        v738 = *(v737 + 8);
        v739 = *(v737 + 16);
        v740 = *(v737 + 24);
        v741 = *(v737 + 32);
        if (v740 >= v738)
        {
          v73 = *(v737 + 8);
        }

        else
        {
          v73 = *(v737 + 24);
        }

        if (v741 >= v739)
        {
          v742 = *(v737 + 16);
        }

        else
        {
          v742 = *(v737 + 32);
        }

        v75 = vabdd_f64(v740, v738);
        v76 = vabdd_f64(v741, v739);

        v743 = type metadata accessor for SgRule;
        goto LABEL_422;
      case 7uLL:
        v767 = swift_projectBox();
        v737 = v850;
        sub_1AACAAD4C(v767, v850, type metadata accessor for SgLine);

        sub_1AAF56CF0();
        v73 = v768;
        v742 = v769;
        v75 = v770;
        v76 = v771;
        v743 = type metadata accessor for SgLine;
        goto LABEL_422;
      case 8uLL:
        v85 = swift_projectBox();
        v86 = v834;
        sub_1AACAAD4C(v85, v834, type metadata accessor for SgArea);
        v872 = *(v86 + 8);
        v87 = *(*&v872 + 16);
        v88 = *(v87 + 16);
        if (!v88)
        {

          v90 = MEMORY[0x1E69E7CC0];
LABEL_428:
          *&v776 = COERCE_DOUBLE(sub_1AACEC978(v90));
          v778 = v777;
          v780 = v779;

          if (v780)
          {
            v73 = v68;
            v781 = v67;
            v75 = v70;
            v76 = v69;
          }

          else
          {
            v782 = *(*&v872 + 16);
            v783 = MEMORY[0x1E69E7CC0];
            *&v884 = MEMORY[0x1E69E7CC0];
            v784 = *(v782 + 16);
            if (v784)
            {
              sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

              v785 = v72;
              v786 = (v782 + 64);
              do
              {
                v787 = *(v786 - 2);
                v788 = *v786;
                v786 += 5;
                v789 = swift_allocObject();
                *(v789 + 16) = v785[43];
                *(v789 + 32) = v787;
                *(v789 + 40) = v788;
                sub_1AADC8F2C(v789);
                --v784;
              }

              while (v784);

              v783 = v884;
              v72 = v785;
            }

            v790 = *&v776;
            v791 = COERCE_DOUBLE(sub_1AACEC978(v783));
            v793 = v792;
            v795 = v794;

            if (v795)
            {
              v73 = v68;
            }

            else
            {
              v73 = v790;
            }

            if (v795)
            {
              v781 = v67;
            }

            else
            {
              v781 = v791;
            }

            if (v795)
            {
              v75 = v70;
            }

            else
            {
              v75 = v778 - v790;
            }

            if (v795)
            {
              v76 = v69;
            }

            else
            {
              v76 = v793 - v791;
            }
          }

          sub_1AACAADB4(v834, type metadata accessor for SgArea);
          v74 = v781;
LABEL_4:
          v77 = v73;
          v78 = v75;
          v79 = v76;
          v866 = CGRectUnion(v866, *(&v74 - 1));

          v71 = v864;
          if (v864 == v859)
          {
            return;
          }

          continue;
        }

        sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

        v89 = (v87 + 56);
        v90 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v91 = *(v89 - 2);
          v92 = *v89;
          v93 = swift_allocObject();
          *(v93 + 32) = v91;
          v94 = (v93 + 32);
          *(v93 + 40) = v92;
          v95 = *(v90 + 2);
          v96 = v95 + 2;
          if (__OFADD__(v95, 2))
          {
            goto LABEL_465;
          }

          v97 = swift_isUniquelyReferenced_nonNull_native();
          if (!v97 || (v98 = *(v90 + 3) >> 1, v98 < v96))
          {
            if (v95 <= v96)
            {
              v99 = v95 + 2;
            }

            else
            {
              v99 = v95;
            }

            v90 = sub_1AAD69810(v97, v99, 1, v90);
            v98 = *(v90 + 3) >> 1;
          }

          v100 = *(v90 + 2);
          if (v98 - v100 < 2)
          {
            break;
          }

          *&v90[8 * v100 + 32] = *v94;
          swift_setDeallocating();
          swift_deallocClassInstance();
          v101 = *(v90 + 2);
          v102 = __OFADD__(v101, 2);
          v103 = v101 + 2;
          if (v102)
          {
            goto LABEL_467;
          }

          *(v90 + 2) = v103;
          v89 += 5;
          if (!--v88)
          {

            v66 = v857;
            v72 = &unk_1AAF9E000;
            goto LABEL_428;
          }
        }

LABEL_466:
        __break(1u);
LABEL_467:
        __break(1u);
LABEL_468:
        __break(1u);
LABEL_469:
        __break(1u);
LABEL_470:
        __break(1u);
LABEL_471:
        __break(1u);
LABEL_472:
        __break(1u);
LABEL_473:
        __break(1u);
LABEL_474:
        __break(1u);
LABEL_475:
        __break(1u);
LABEL_476:
        __break(1u);
LABEL_477:
        __break(1u);
LABEL_478:
        __break(1u);
LABEL_479:
        __break(1u);
LABEL_480:
        __break(1u);
LABEL_481:
        __break(1u);
LABEL_482:
        __break(1u);
LABEL_483:
        __break(1u);
LABEL_484:
        __break(1u);
        return;
      case 9uLL:
        v757 = swift_projectBox();
        v758 = v835;
        sub_1AACAAD4C(v757, v835, type metadata accessor for SgPath);
        v759 = *(v758 + 24);
        v910 = *(v758 + 8);
        v911 = v759;
        v912 = *(v758 + 40);

        v760 = sub_1AAF8E8E4();
        v73 = v68;
        v761 = v67;
        v75 = v70;
        v76 = v69;
        if ((v760 & 1) == 0)
        {
          sub_1AAF8E874();
          v73 = v762;
          v75 = v763;
          v76 = v764;
        }

        v765 = type metadata accessor for SgPath;
        v766 = v835;
        v742 = v761;
        goto LABEL_423;
      case 0xAuLL:

        v73 = v68;
        v74 = v67;
        v75 = v70;
        v76 = v69;
        goto LABEL_4;
      case 0xBuLL:
      case 0xCuLL:
        v73 = *((v80 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v81 = *((v80 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v75 = *((v80 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        v76 = *((v80 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

        v74 = v81;
        goto LABEL_4;
      case 0xDuLL:

        v73 = 0.0;
        v74 = 0.0;
        v75 = 0.0;
        v76 = 0.0;
        goto LABEL_4;
      case 0xEuLL:
        goto LABEL_4;
      default:
        v744 = swift_projectBox();
        v737 = v853;
        sub_1AACAAD4C(v744, v853, type metadata accessor for SgGroup);

        v73 = sub_1AAF58748(v745);
        v742 = v746;
        v75 = v747;
        v76 = v748;
        v743 = type metadata accessor for SgGroup;
LABEL_422:
        v765 = v743;
        v766 = v737;
LABEL_423:
        sub_1AACAADB4(v766, v765);
        v74 = v742;
        goto LABEL_4;
    }
  }
}

uint64_t sub_1AAF5D32C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AAD12A5C(*(a2 + 8), &v11);
  v5 = *(v11 + 2);
  if (v5)
  {
    v6 = v12;
    v7 = v11 + 40;
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v7 += 16;
      v11 = v8;
      v12 = v9;
      v6(&v13, &v11);
      sub_1AACAAE1C(a1, a3, v13);

      --v5;
    }

    while (v5);
  }
}

void sub_1AAF5D3F8()
{
  v1 = type metadata accessor for SgPath(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v138 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SgArea(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v138 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for SgLine(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v150 = (&v138 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for SgRule(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v149 = (&v138 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v148 = type metadata accessor for SgSector(0);
  MEMORY[0x1EEE9AC00](v148);
  v147 = &v138 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SgRectangle(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v146 = (&v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for SgPoint(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (&v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for SgGroup(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v145 = (&v138 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v0 + 8);
  v20 = *MEMORY[0x1E695F050];
  v21 = *(MEMORY[0x1E695F050] + 8);
  v22 = *(MEMORY[0x1E695F050] + 16);
  v23 = *(MEMORY[0x1E695F050] + 24);
  v24 = *(v19 + 16);
  if (!v24)
  {
    return;
  }

  v25 = 0;
  v26 = v19 + 32;
  height = *(MEMORY[0x1E695F050] + 24);
  width = *(MEMORY[0x1E695F050] + 16);
  y = *(MEMORY[0x1E695F050] + 8);
  x = *MEMORY[0x1E695F050];
  v151 = *(v19 + 16);
  v152 = v19 + 32;
  v143 = v16;
  v144 = v3;
  v141 = v6;
  v142 = v19;
  v156 = v21;
  v157 = v20;
  v154 = v23;
  v155 = v22;
  while (2)
  {
    if (v25 >= *(v19 + 16))
    {
      goto LABEL_69;
    }

    v31 = *(v26 + 8 * v25++);
    switch(*&v31 >> 60)
    {
      case 1:
        v52 = *((*&v31 & 0xFFFFFFFFFFFFFFFLL) + 0x18);

        sub_1AAF5EA88(v53, v52);
        v20 = v54;
        v21 = v55;
        v22 = v56;
        v23 = v57;
        v26 = v152;

        goto LABEL_4;
      case 2:
        sub_1AAD117A0((*&v31 & 0xFFFFFFFFFFFFFFFLL) + 16, &v158);

        v20 = sub_1AAF5D3F8(v58);
        v21 = v59;
        v22 = v60;
        v23 = v61;
        sub_1AAF14C40(&v158);
        goto LABEL_4;
      case 3:
        v32 = swift_projectBox();
        sub_1AACAAD4C(v32, v16, type metadata accessor for SgPoint);
        sub_1AAD9ADE4((v16 + 6), &v158);
        if (v161)
        {
          v22 = *(&v158 + 1);
          v23 = *&v159;

LABEL_44:
          v96 = v16[2];
          v20 = v16[1] - v22 * 0.5;
          sub_1AACAADB4(v16, type metadata accessor for SgPoint);
          v21 = v96 - v23 * 0.5;
          goto LABEL_4;
        }

        v162 = v158;
        v163 = v159;
        v164 = v160;
        v95 = v16[3];
        if (*(v16 + 40) == 1)
        {
          v23 = v16[4];
          v22 = v16[3];

          sub_1AAE45A14(&v162);
          goto LABEL_44;
        }

        v119 = v16[2];
        v140 = v16[1];
        v153 = v119;
        v120 = v19;
        v121 = *(&v163 + 1);
        v122 = v164;
        v123 = sqrt(v95);

        sub_1AACBB42C(&v162, v121);
        v124 = *(v122 + 16);
        v125 = v121;
        v26 = v152;
        v126 = v122;
        v19 = v120;
        v3 = v144;
        v127 = v124(v125, v126);
        v139 = v128;
        v130 = v129;
        v132 = v131;
        sub_1AACAADB4(v16, type metadata accessor for SgPoint);
        v22 = v123 * v130;
        v23 = v123 * v132;
        v20 = v140 + v123 * (v127 + -0.5);
        v21 = v153 + v123 * (v139 + -0.5);
        sub_1AAE45A14(&v162);
        goto LABEL_4;
      case 4:
        v74 = swift_projectBox();
        v63 = v146;
        sub_1AACAAD4C(v74, v146, type metadata accessor for SgRectangle);
        v20 = v63[1];
        v21 = v63[2];
        v22 = v63[3];
        v23 = v63[4];

        v68 = type metadata accessor for SgRectangle;
        goto LABEL_40;
      case 5:
        v75 = swift_projectBox();
        v76 = v147;
        sub_1AACAAD4C(v75, v147, type metadata accessor for SgSector);
        v77 = vaddvq_f64(vmulq_f64(*(v76 + 24), xmmword_1AAFC7450));
        v78 = __sincos_stret(((*(v76 + 8) + *(v76 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
        v20 = v77 * v78.__cosval;
        v21 = v77 * v78.__sinval;
        v79 = (v76 + *(v148 + 52));
        v80 = v79[1];
        v22 = *v79 + *v79;

        sub_1AACAADB4(v76, type metadata accessor for SgSector);
        v23 = v80 + v80;
        goto LABEL_4;
      case 6:
        v62 = swift_projectBox();
        v63 = v149;
        sub_1AACAAD4C(v62, v149, type metadata accessor for SgRule);
        v64 = v63[1];
        v65 = v63[2];
        v66 = v63[3];
        v67 = v63[4];
        if (v66 >= v64)
        {
          v20 = v63[1];
        }

        else
        {
          v20 = v63[3];
        }

        if (v67 >= v65)
        {
          v21 = v63[2];
        }

        else
        {
          v21 = v63[4];
        }

        v22 = vabdd_f64(v66, v64);
        v23 = vabdd_f64(v67, v65);

        v68 = type metadata accessor for SgRule;
        goto LABEL_40;
      case 7:
        v90 = swift_projectBox();
        v63 = v150;
        sub_1AACAAD4C(v90, v150, type metadata accessor for SgLine);

        sub_1AAF56CF0();
        v20 = v91;
        v21 = v92;
        v22 = v93;
        v23 = v94;
        v68 = type metadata accessor for SgLine;
        goto LABEL_40;
      case 8:
        v33 = swift_projectBox();
        sub_1AACAAD4C(v33, v6, type metadata accessor for SgArea);
        v34 = v6[1];
        v35 = *(*&v34 + 16);
        v36 = *(*&v35 + 16);
        if (!v36)
        {

          v38 = MEMORY[0x1E69E7CC0];
LABEL_46:
          v139 = COERCE_DOUBLE(sub_1AACEC978(v38));
          v140 = v97;
          v99 = v98;

          v21 = v156;
          v20 = v157;
          v23 = v154;
          v22 = v155;
          v24 = v151;
          if ((v99 & 1) == 0)
          {
            v100 = *(*&v34 + 16);
            v101 = *(v100 + 16);
            if (v101)
            {
              sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);
              v153 = v102;

              v138 = v100;
              v103 = (v100 + 64);
              v104 = MEMORY[0x1E69E7CC0];
              do
              {
                v105 = v25;
                v106 = v31;
                v107 = *(v103 - 2);
                v108 = *v103;
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_1AAF9E2B0;
                *(inited + 32) = v107;
                v110 = (inited + 32);
                *(inited + 40) = v108;
                v111 = *(v104 + 2);
                v112 = v111 + 2;
                if (__OFADD__(v111, 2))
                {
                  goto LABEL_70;
                }

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                if (!isUniquelyReferenced_nonNull_native || (v114 = *(v104 + 3) >> 1, v114 < v112))
                {
                  if (v111 <= v112)
                  {
                    v115 = v111 + 2;
                  }

                  else
                  {
                    v115 = v111;
                  }

                  v104 = sub_1AAD69810(isUniquelyReferenced_nonNull_native, v115, 1, v104);
                  v114 = *(v104 + 3) >> 1;
                }

                v31 = v106;
                v116 = *(v104 + 2);
                if (v114 - v116 < 2)
                {
                  goto LABEL_71;
                }

                v25 = v105;
                *&v104[8 * v116 + 32] = *v110;

                v117 = *(v104 + 2);
                v50 = __OFADD__(v117, 2);
                v118 = v117 + 2;
                if (v50)
                {
                  goto LABEL_72;
                }

                *(v104 + 2) = v118;
                v103 += 5;
                --v101;
              }

              while (v101);

              v3 = v144;
              v6 = v141;
            }

            else
            {
              v104 = MEMORY[0x1E69E7CC0];
            }

            v133 = COERCE_DOUBLE(sub_1AACEC978(v104));
            v135 = v134;
            v137 = v136;

            v21 = v156;
            v20 = v157;
            v23 = v154;
            v22 = v155;
            v24 = v151;
            v26 = v152;
            if ((v137 & 1) == 0)
            {
              v20 = v139;
              v21 = v133;
              v22 = v140 - v139;
              v23 = v135 - v133;
            }
          }

          sub_1AACAADB4(v6, type metadata accessor for SgArea);
          v19 = v142;
          v16 = v143;
LABEL_4:
          v168.origin.x = x;
          v168.origin.y = y;
          v168.size.width = width;
          v168.size.height = height;
          v170.origin.x = v20;
          v170.origin.y = v21;
          v170.size.width = v22;
          v170.size.height = v23;
          v169 = CGRectUnion(v168, v170);
          x = v169.origin.x;
          y = v169.origin.y;
          width = v169.size.width;
          height = v169.size.height;

          v21 = v156;
          v20 = v157;
          v23 = v154;
          v22 = v155;
          if (v25 == v24)
          {
            return;
          }

          continue;
        }

        v140 = v6[1];
        sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);
        v153 = v31;

        v139 = v35;
        v37 = (*&v35 + 56);
        v38 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v39 = *(v37 - 2);
          v40 = *v37;
          v41 = swift_initStackObject();
          *(v41 + 32) = v39;
          v42 = (v41 + 32);
          *(v41 + 40) = v40;
          v43 = *(v38 + 2);
          v44 = v43 + 2;
          if (__OFADD__(v43, 2))
          {
            break;
          }

          v45 = swift_isUniquelyReferenced_nonNull_native();
          if (!v45 || (v46 = *(v38 + 3) >> 1, v46 < v44))
          {
            if (v43 <= v44)
            {
              v47 = v43 + 2;
            }

            else
            {
              v47 = v43;
            }

            v38 = sub_1AAD69810(v45, v47, 1, v38);
            v46 = *(v38 + 3) >> 1;
          }

          v48 = *(v38 + 2);
          if (v46 - v48 < 2)
          {
            goto LABEL_67;
          }

          *&v38[8 * v48 + 32] = *v42;
          swift_setDeallocating();
          v49 = *(v38 + 2);
          v50 = __OFADD__(v49, 2);
          v51 = v49 + 2;
          if (v50)
          {
            goto LABEL_68;
          }

          *(v38 + 2) = v51;
          v37 += 5;
          if (!--v36)
          {

            v3 = v144;
            v34 = v140;
            v6 = v141;
            v26 = v152;
            v31 = v153;
            goto LABEL_46;
          }
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
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
        return;
      case 9:
        v81 = swift_projectBox();
        sub_1AACAAD4C(v81, v3, type metadata accessor for SgPath);
        v82 = *(v3 + 24);
        v165 = *(v3 + 8);
        v166 = v82;
        v167 = v3[40];

        v83 = sub_1AAF8E8E4();
        v21 = v156;
        v20 = v157;
        v23 = v154;
        v22 = v155;
        if ((v83 & 1) == 0)
        {
          sub_1AAF8E874();
          v20 = v84;
          v21 = v85;
          v22 = v86;
          v23 = v87;
        }

        v88 = type metadata accessor for SgPath;
        v89 = v3;
        goto LABEL_41;
      case 0xALL:

        v21 = v156;
        v20 = v157;
        v23 = v154;
        v22 = v155;
        goto LABEL_4;
      case 0xBLL:
      case 0xCLL:
        v20 = *((*&v31 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v21 = *((*&v31 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v22 = *((*&v31 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        v23 = *((*&v31 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

        goto LABEL_4;
      case 0xDLL:

        v20 = 0.0;
        v21 = 0.0;
        v22 = 0.0;
        v23 = 0.0;
        goto LABEL_4;
      case 0xELL:
        goto LABEL_4;
      default:
        v69 = swift_projectBox();
        v63 = v145;
        sub_1AACAAD4C(v69, v145, type metadata accessor for SgGroup);

        sub_1AAF58748();
        v20 = v70;
        v21 = v71;
        v22 = v72;
        v23 = v73;
        v68 = type metadata accessor for SgGroup;
LABEL_40:
        v88 = v68;
        v89 = v63;
LABEL_41:
        sub_1AACAADB4(v89, v88);
        goto LABEL_4;
    }
  }
}

void sub_1AAF5DFF0()
{
  v1 = type metadata accessor for SgPath(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v97 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SgArea(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SgLine(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SgRule(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v106 = (&v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v105 = type metadata accessor for SgSector(0);
  MEMORY[0x1EEE9AC00](v105);
  v104 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SgRectangle(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v103 = (&v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for SgPoint(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = (&v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for SgGroup(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v102 = (&v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v0 + 8);
  v21 = *MEMORY[0x1E695F050];
  v22 = *(MEMORY[0x1E695F050] + 8);
  v23 = *(MEMORY[0x1E695F050] + 16);
  v24 = *(MEMORY[0x1E695F050] + 24);
  v25 = *(v20 + 16);
  if (v25)
  {
    v26 = 0;
    height = *(MEMORY[0x1E695F050] + 24);
    width = *(MEMORY[0x1E695F050] + 16);
    y = *(MEMORY[0x1E695F050] + 8);
    x = *MEMORY[0x1E695F050];
    v101 = v17;
    v110 = v21;
    v109 = v22;
    v108 = v23;
    v107 = v24;
    while (v26 < *(v20 + 16))
    {
      v40 = *(v20 + 32 + 8 * v26++);
      switch(v40 >> 60)
      {
        case 1uLL:
          v47 = *((v40 & 0xFFFFFFFFFFFFFFFLL) + 0x18);

          sub_1AAF62ADC(v48, v47);
          v21 = v49;
          v22 = v50;
          v23 = v51;
          v24 = v52;
          v17 = v101;

          goto LABEL_12;
        case 2uLL:
          sub_1AAD117A0((v40 & 0xFFFFFFFFFFFFFFFLL) + 16, &v111);

          v21 = sub_1AAF5DFF0(v53);
          v22 = v54;
          v23 = v55;
          v24 = v56;
          sub_1AAF14C40(&v111);
          goto LABEL_12;
        case 3uLL:
          v41 = swift_projectBox();
          sub_1AACAAD4C(v41, v17, type metadata accessor for SgPoint);
          sub_1AAD9ADE4((v17 + 6), &v111);
          if (v114)
          {
            v23 = *(&v111 + 1);
            v24 = *&v112;

LABEL_32:
            v80 = v17[2];
            v21 = v17[1] - v23 * 0.5;
            sub_1AACAADB4(v17, type metadata accessor for SgPoint);
            v22 = v80 - v24 * 0.5;
            goto LABEL_12;
          }

          v115 = v111;
          v116 = v112;
          v117 = v113;
          if (*(v17 + 40) == 1)
          {
            v24 = v17[4];
            v23 = v17[3];

            sub_1AAE45A14(&v115);
            goto LABEL_32;
          }

          v81 = v17[3];
          v82 = v17[2];
          v98 = v17[1];
          v99 = v82;
          v100 = v9;
          v83 = v6;
          v84 = v3;
          v85 = *(&v116 + 1);
          v86 = v117;
          v87 = sqrt(v81);

          sub_1AACBB42C(&v115, v85);
          v88 = *(v86 + 16);
          v89 = v85;
          v17 = v101;
          v90 = v86;
          v3 = v84;
          v6 = v83;
          v9 = v100;
          v91 = v88(v89, v90);
          v97 = v92;
          v94 = v93;
          v96 = v95;
          sub_1AACAADB4(v17, type metadata accessor for SgPoint);
          v23 = v87 * v94;
          v24 = v87 * v96;
          v21 = v98 + v87 * (v91 + -0.5);
          v22 = v99 + v87 * (v97 + -0.5);
          sub_1AAE45A14(&v115);
LABEL_12:
          v121.origin.x = x;
          v121.origin.y = y;
          v121.size.width = width;
          v121.size.height = height;
          v123.origin.x = v21;
          v123.origin.y = v22;
          v123.size.width = v23;
          v123.size.height = v24;
          v122 = CGRectUnion(v121, v123);
          x = v122.origin.x;
          y = v122.origin.y;
          width = v122.size.width;
          height = v122.size.height;

          v21 = v110;
          v22 = v109;
          v23 = v108;
          v24 = v107;
          if (v25 == v26)
          {
            return;
          }

          break;
        case 4uLL:
          v61 = swift_projectBox();
          v32 = v103;
          sub_1AACAAD4C(v61, v103, type metadata accessor for SgRectangle);
          v21 = v32[1];
          v22 = v32[2];
          v23 = v32[3];
          v24 = v32[4];

          v37 = type metadata accessor for SgRectangle;
          goto LABEL_10;
        case 5uLL:
          v62 = swift_projectBox();
          v63 = v104;
          sub_1AACAAD4C(v62, v104, type metadata accessor for SgSector);
          v64 = vaddvq_f64(vmulq_f64(*(v63 + 24), xmmword_1AAFC7450));
          v65 = __sincos_stret(((*(v63 + 8) + *(v63 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
          v21 = v64 * v65.__cosval;
          v22 = v64 * v65.__sinval;
          v66 = (v63 + *(v105 + 52));
          v67 = v66[1];
          v23 = *v66 + *v66;

          sub_1AACAADB4(v63, type metadata accessor for SgSector);
          v24 = v67 + v67;
          goto LABEL_12;
        case 6uLL:
          v31 = swift_projectBox();
          v32 = v106;
          sub_1AACAAD4C(v31, v106, type metadata accessor for SgRule);
          v33 = v32[1];
          v34 = v32[2];
          v35 = v32[3];
          v36 = v32[4];
          if (v35 >= v33)
          {
            v21 = v32[1];
          }

          else
          {
            v21 = v32[3];
          }

          if (v36 >= v34)
          {
            v22 = v32[2];
          }

          else
          {
            v22 = v32[4];
          }

          v23 = vabdd_f64(v35, v33);
          v24 = vabdd_f64(v36, v34);

          v37 = type metadata accessor for SgRule;
          goto LABEL_10;
        case 7uLL:
          v75 = swift_projectBox();
          sub_1AACAAD4C(v75, v9, type metadata accessor for SgLine);

          sub_1AAF56CF0();
          v21 = v76;
          v22 = v77;
          v23 = v78;
          v24 = v79;
          v38 = type metadata accessor for SgLine;
          v39 = v9;
          goto LABEL_11;
        case 8uLL:
          v42 = swift_projectBox();
          sub_1AACAAD4C(v42, v6, type metadata accessor for SgArea);

          sub_1AAF58424();
          v21 = v43;
          v22 = v44;
          v23 = v45;
          v24 = v46;
          v38 = type metadata accessor for SgArea;
          v39 = v6;
          goto LABEL_11;
        case 9uLL:
          v68 = swift_projectBox();
          sub_1AACAAD4C(v68, v3, type metadata accessor for SgPath);
          v69 = *(v3 + 24);
          v118 = *(v3 + 8);
          v119 = v69;
          v120 = v3[40];

          v70 = sub_1AAF8E8E4();
          v21 = v110;
          v22 = v109;
          v23 = v108;
          v24 = v107;
          if ((v70 & 1) == 0)
          {
            sub_1AAF8E874();
            v21 = v71;
            v22 = v72;
            v23 = v73;
            v24 = v74;
          }

          v38 = type metadata accessor for SgPath;
          v39 = v3;
          goto LABEL_11;
        case 0xAuLL:
          v23 = *((v40 & 0xFFFFFFFFFFFFFFFLL) + 0x68);
          v24 = *((v40 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
          v21 = *((v40 & 0xFFFFFFFFFFFFFFFLL) + 0x18) - *((v40 & 0xFFFFFFFFFFFFFFFLL) + 0x28) * v23;
          v22 = *((v40 & 0xFFFFFFFFFFFFFFFLL) + 0x20) - *((v40 & 0xFFFFFFFFFFFFFFFLL) + 0x30) * v24;

          goto LABEL_12;
        case 0xBuLL:
        case 0xCuLL:
          v21 = *((v40 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v22 = *((v40 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v23 = *((v40 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
          v24 = *((v40 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

          goto LABEL_12;
        case 0xDuLL:

          v21 = 0.0;
          v22 = 0.0;
          v23 = 0.0;
          v24 = 0.0;
          goto LABEL_12;
        case 0xEuLL:
          goto LABEL_12;
        default:
          v57 = swift_projectBox();
          v32 = v102;
          sub_1AACAAD4C(v57, v102, type metadata accessor for SgGroup);

          v21 = sub_1AAD05240();
          v22 = v58;
          v23 = v59;
          v24 = v60;
          v37 = type metadata accessor for SgGroup;
LABEL_10:
          v38 = v37;
          v39 = v32;
LABEL_11:
          sub_1AACAADB4(v39, v38);
          goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1AAF5E9CC(uint64_t a1, uint64_t a2)
{
  sub_1AAD12A5C(*(v2 + 8), &v12);
  v5 = *(v12 + 2);
  if (v5)
  {
    v6 = v13;
    v7 = v12 + 40;
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v7 += 16;
      v12 = v8;
      v13 = v9;
      v6(&v11, &v12);
      sub_1AACAAE1C(a1, a2, v11);

      --v5;
    }

    while (v5);
  }
}

uint64_t sub_1AAF5EA88(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SgPath(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v732 = &v721 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v735 = &v721 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v738 = &v721 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v743 = &v721 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v745 = &v721 - v12;
  v13 = type metadata accessor for SgArea(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v731 = &v721 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v733 = &v721 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v737 = &v721 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v742 = &v721 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v744 = &v721 - v22;
  v23 = type metadata accessor for SgLine(0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v734 = &v721 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v736 = &v721 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v741 = &v721 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v740 = (&v721 - v30);
  v31 = type metadata accessor for SgRule(0);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v723 = &v721 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v725 = (&v721 - v34);
  MEMORY[0x1EEE9AC00](v35);
  v727 = (&v721 - v36);
  MEMORY[0x1EEE9AC00](v37);
  v729 = (&v721 - v38);
  MEMORY[0x1EEE9AC00](v39);
  v730 = (&v721 - v40);
  v750 = type metadata accessor for SgSector(0);
  MEMORY[0x1EEE9AC00](v750);
  v749 = &v721 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for SgRectangle(0);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v748 = (&v721 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = type metadata accessor for SgPoint(0);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v722 = &v721 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v724 = &v721 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v726 = &v721 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v728 = &v721 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v739 = &v721 - v53;
  v54 = type metadata accessor for SgGroup(0);
  MEMORY[0x1EEE9AC00](v54 - 8);
  v747 = (&v721 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v803 = a2;

  result = sub_1AADC9018(v56);
  v58 = v803;
  v59 = *(MEMORY[0x1E695F050] + 8);
  v789 = *MEMORY[0x1E695F050];
  v788 = v59;
  v60 = *(MEMORY[0x1E695F050] + 24);
  v787 = *(MEMORY[0x1E695F050] + 16);
  v754 = *(v803 + 16);
  if (!v754)
  {
    v770.origin.x = v789;
    v770.origin.y = v788;
    v770.size.width = v787;
    v770.size.height = v60;
  }

  v61 = 0;
  v761 = 0;
  v753 = v803 + 32;
  v62 = &unk_1AAF9E000;
  v770.size.width = v787;
  v770.size.height = v60;
  v770.origin.x = v789;
  v770.origin.y = v788;
  v746 = v803;
  v786 = v60;
  while (2)
  {
    if (v61 >= *(v58 + 16))
    {
      goto LABEL_388;
    }

    v79 = *(v753 + 8 * v61);
    v768 = v61 + 1;
    v69 = v789;
    v75 = v788;
    v77 = v787;
    v76 = v60;
    v774 = v79;
    switch(v79 >> 60)
    {
      case 1uLL:
        v103 = *((v79 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v104 = *((v79 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

        v69 = sub_1AAF5EA88(v105, v103, v104);
        v70 = v60;
        v71 = v106;
        v72 = v107;
        v73 = v108;

        goto LABEL_11;
      case 2uLL:
        sub_1AAD117A0((v79 & 0xFFFFFFFFFFFFFFFLL) + 16, &v807);
        v109 = *(&v807 + 1);
        v110 = *(*(&v807 + 1) + 16);

        v757 = v110;
        if (v110)
        {
          v111 = 0;
          v755 = v109;
          v756 = v109 + 32;
          v772 = v60;
          v773 = v787;
          v771 = v788;
          v69 = v789;
          while (1)
          {
            if (v111 >= *(v109 + 16))
            {
              goto LABEL_387;
            }

            v119 = *(v756 + 8 * v111);
            v769 = v111 + 1;
            v112 = v789;
            v113 = v788;
            v114 = v787;
            v115 = v60;
            v777 = v69;
            switch(v119 >> 60)
            {
              case 1uLL:
                v141 = *((v119 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v142 = *((v119 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

                v112 = sub_1AAF5EA88(v143, v141, v142);
                v144 = v60;
                v146 = v145;
                v114 = v147;
                v115 = v148;

                goto LABEL_281;
              case 2uLL:
                sub_1AAD117A0((v119 & 0xFFFFFFFFFFFFFFFLL) + 16, &v800);
                v149 = *(&v800 + 1);
                v150 = *(*(&v800 + 1) + 16);

                v760 = v150;
                if (v150)
                {
                  v151 = 0;
                  v759 = v149 + 32;
                  v115 = v60;
                  v114 = v787;
                  v776 = v788;
                  v112 = v789;
                  v751 = v149;
                  v752 = v119;
                  while (2)
                  {
                    if (v151 < *(v149 + 16))
                    {
                      v169 = *(v759 + 8 * v151);
                      v775 = v151 + 1;
                      v158 = v789;
                      v166 = v788;
                      v160 = v787;
                      v165 = v60;
                      v779 = v112;
                      v780 = v114;
                      v778 = v115;
                      v784 = v169;
                      switch(*&v169 >> 60)
                      {
                        case 1:
                          v187 = *((*&v169 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                          v188 = *((*&v169 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

                          v158 = sub_1AAF5EA88(v189, v187, v188);
                          v785 = v190;
                          v160 = v191;
                          v161 = v60;
                          v162 = v69;
                          v163 = v192;

                          goto LABEL_68;
                        case 2:
                          sub_1AAD117A0((*&v169 & 0xFFFFFFFFFFFFFFFLL) + 16, &v797);
                          v193 = *(&v797 + 1);
                          v194 = *(*(&v797 + 1) + 16);

                          v764 = v194;
                          if (v194)
                          {
                            v195 = 0;
                            v762 = v193;
                            v763 = v193 + 32;
                            v781 = v60;
                            v160 = v787;
                            v785 = v788;
                            v158 = v789;
                            while (1)
                            {
                              if (v195 >= *(v193 + 16))
                              {
                                goto LABEL_378;
                              }

                              v200 = *(v763 + 8 * v195++);
                              v196 = v789;
                              v197 = v788;
                              v198 = v787;
                              v199 = v60;
                              *&v783 = v158;
                              *&v782 = v160;
                              v766 = v200;
                              switch(v200 >> 60)
                              {
                                case 1uLL:
                                  v214 = *((v200 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                                  v215 = *((v200 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

                                  v196 = sub_1AAF5EA88(v216, v214, v215);
                                  v197 = v217;
                                  v198 = v218;
                                  v199 = v219;

                                  goto LABEL_85;
                                case 2uLL:
                                  sub_1AAD117A0((v200 & 0xFFFFFFFFFFFFFFFLL) + 16, &v803);
                                  v220 = *(&v803 + 1);
                                  v221 = *(*(&v803 + 1) + 16);

                                  v767 = v221;
                                  if (v221)
                                  {
                                    v222 = 0;
                                    v765 = v220 + 32;
                                    v199 = v786;
                                    v198 = v787;
                                    v197 = v788;
                                    v196 = v789;
                                    v223 = v220;
                                    v758 = v220;
                                    while (1)
                                    {
                                      if (v222 >= *(v223 + 16))
                                      {
                                        goto LABEL_377;
                                      }

                                      v228 = *(v765 + 8 * v222++);
                                      x = v789;
                                      y = v788;
                                      width = v787;
                                      height = v786;
                                      switch(v228 >> 60)
                                      {
                                        case 1uLL:
                                          v244 = *((v228 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                                          v245 = *((v228 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

                                          x = sub_1AAF5EA88(v246, v244, v245);
                                          y = v247;
                                          width = v248;
                                          height = v249;

                                          v223 = v758;

                                          goto LABEL_100;
                                        case 2uLL:
                                          sub_1AAD117A0((v228 & 0xFFFFFFFFFFFFFFFLL) + 16, &v790);
                                          v250 = *(&v790 + 1);
                                          v251 = *(*(&v790 + 1) + 16);

                                          if (v251)
                                          {
                                            v252 = 0;
                                            height = v786;
                                            width = v787;
                                            y = v788;
                                            x = v789;
                                            while (v252 < *(v250 + 16))
                                            {
                                              v253 = v252 + 1;
                                              v254 = *(v250 + 32 + 8 * v252);

                                              v837.origin.x = sub_1AAF517A0(v254);
                                              v837.origin.y = v255;
                                              v837.size.width = v256;
                                              v837.size.height = v257;
                                              v833.origin.x = x;
                                              v833.origin.y = y;
                                              v833.size.width = width;
                                              v833.size.height = height;
                                              v834 = CGRectUnion(v833, v837);
                                              x = v834.origin.x;
                                              y = v834.origin.y;
                                              width = v834.size.width;
                                              height = v834.size.height;

                                              v252 = v253;
                                              if (v251 == v253)
                                              {
                                                goto LABEL_154;
                                              }
                                            }

LABEL_376:
                                            __break(1u);
LABEL_377:
                                            __break(1u);
LABEL_378:
                                            __break(1u);
LABEL_379:
                                            __break(1u);
                                            goto LABEL_380;
                                          }

                                          x = v789;
                                          y = v788;
                                          width = v787;
                                          height = v786;
LABEL_154:
                                          sub_1AAF14C40(&v790);
LABEL_155:
                                          v149 = v751;
                                          v223 = v758;
LABEL_100:
                                          v831.origin.x = v196;
                                          v831.origin.y = v197;
                                          v831.size.width = v198;
                                          v831.size.height = v199;
                                          v836.origin.x = x;
                                          v836.origin.y = y;
                                          v836.size.width = width;
                                          v836.size.height = height;
                                          v832 = CGRectUnion(v831, v836);
                                          v196 = v832.origin.x;
                                          v197 = v832.origin.y;
                                          v198 = v832.size.width;
                                          v199 = v832.size.height;

                                          v158 = *&v783;
                                          v160 = *&v782;
                                          if (v222 == v767)
                                          {
                                            goto LABEL_196;
                                          }

                                          break;
                                        case 3uLL:
                                          v229 = swift_projectBox();
                                          v230 = v739;
                                          sub_1AACAAD4C(v229, v739, type metadata accessor for SgPoint);
                                          sub_1AAD9ADE4(v230 + 48, &v790);
                                          if (v793)
                                          {
                                            width = *(&v790 + 1);
                                            height = *&v791;

                                            v223 = v758;

                                            x = *(v230 + 8) - width * 0.5;
                                            y = *(v230 + 16) - height * 0.5;
                                            v231 = v230;
                                          }

                                          else
                                          {
                                            v794 = v790;
                                            v795 = v791;
                                            v796 = v792;
                                            v292 = *(v230 + 24);
                                            if (*(v230 + 40) == 1)
                                            {
                                              height = *(v230 + 32);
                                              width = *(v230 + 24);
                                              x = *(v230 + 8) - v292 * 0.5;
                                              y = *(v230 + 16) - height * 0.5;
                                            }

                                            else
                                            {
                                              v312 = *(v230 + 8);
                                              v721 = *(v230 + 16);
                                              v313 = *(&v795 + 1);
                                              v314 = v796;
                                              v315 = sqrt(v292);

                                              sub_1AACBB42C(&v794, v313);
                                              v316 = *(v314 + 16);
                                              v317 = v314;
                                              v149 = v751;
                                              v318 = v316(v313, v317);
                                              v223 = v758;
                                              width = v315 * v319;
                                              height = v315 * v320;
                                              x = v312 + v315 * (v318 + -0.5);
                                              y = v721 + v315 * (v321 + -0.5);
                                            }

                                            sub_1AAE45A14(&v794);
                                            v231 = v739;
                                          }

                                          v291 = type metadata accessor for SgPoint;
                                          goto LABEL_159;
                                        case 4uLL:
                                          v270 = swift_projectBox();
                                          v259 = v748;
                                          sub_1AACAAD4C(v270, v748, type metadata accessor for SgRectangle);
                                          x = v259[1];
                                          y = v259[2];
                                          width = v259[3];
                                          height = v259[4];

                                          v264 = type metadata accessor for SgRectangle;
                                          goto LABEL_132;
                                        case 5uLL:
                                          v271 = swift_projectBox();
                                          v272 = v749;
                                          sub_1AACAAD4C(v271, v749, type metadata accessor for SgSector);
                                          v273 = vaddvq_f64(vmulq_f64(*(v272 + 24), xmmword_1AAFC7450));
                                          v274 = __sincos_stret(((*(v272 + 8) + *(v272 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
                                          x = v273 * v274.__cosval;
                                          y = v273 * v274.__sinval;
                                          v275 = (v272 + *(v750 + 52));
                                          v276 = v275[1];
                                          width = *v275 + *v275;

                                          v277 = v272;
                                          v223 = v758;
                                          sub_1AACAADB4(v277, type metadata accessor for SgSector);
                                          height = v276 + v276;
                                          goto LABEL_100;
                                        case 6uLL:
                                          v258 = swift_projectBox();
                                          v259 = v730;
                                          sub_1AACAAD4C(v258, v730, type metadata accessor for SgRule);
                                          v260 = v259[1];
                                          v261 = v259[2];
                                          v262 = v259[3];
                                          v263 = v259[4];
                                          if (v262 >= v260)
                                          {
                                            x = v259[1];
                                          }

                                          else
                                          {
                                            x = v259[3];
                                          }

                                          if (v263 >= v261)
                                          {
                                            y = v259[2];
                                          }

                                          else
                                          {
                                            y = v259[4];
                                          }

                                          width = vabdd_f64(v262, v260);
                                          height = vabdd_f64(v263, v261);

                                          v264 = type metadata accessor for SgRule;
                                          goto LABEL_132;
                                        case 7uLL:
                                          v286 = swift_projectBox();
                                          v259 = v740;
                                          sub_1AACAAD4C(v286, v740, type metadata accessor for SgLine);

                                          sub_1AAF56CF0();
                                          x = v287;
                                          y = v288;
                                          width = v289;
                                          height = v290;
                                          v264 = type metadata accessor for SgLine;
                                          goto LABEL_132;
                                        case 8uLL:
                                          v232 = swift_projectBox();
                                          v233 = v744;
                                          sub_1AACAAD4C(v232, v744, type metadata accessor for SgArea);
                                          v234 = *(v233 + 8);
                                          v235 = *(v234 + 16);
                                          v236 = MEMORY[0x1E69E7CC0];
                                          *&v790 = MEMORY[0x1E69E7CC0];
                                          v237 = *(v235 + 16);

                                          if (v237)
                                          {
                                            v238 = 0;
                                            v239 = (v235 + 56);
                                            v240 = v789;
                                            while (v238 < *(v235 + 16))
                                            {
                                              ++v238;
                                              v241 = *v239;
                                              v242 = *(v239 - 2);
                                              sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);
                                              v243 = swift_allocObject();
                                              *(v243 + 16) = xmmword_1AAF9E2B0;
                                              *(v243 + 32) = v242;
                                              *(v243 + 40) = v241;
                                              result = sub_1AADC8F2C(v243);
                                              v239 += 5;
                                              if (v237 == v238)
                                              {
                                                v236 = v790;
                                                v119 = v752;
                                                goto LABEL_136;
                                              }
                                            }

                                            __break(1u);
                                            goto LABEL_376;
                                          }

                                          v240 = v789;
LABEL_136:

                                          *&v293 = COERCE_DOUBLE(sub_1AACEC978(v236));
                                          v295 = v294;
                                          v297 = v296;

                                          if (v297)
                                          {
                                            x = v240;
                                            y = v788;
                                            width = v787;
                                            height = v786;
                                          }

                                          else
                                          {
                                            v298 = *(v234 + 16);
                                            v299 = MEMORY[0x1E69E7CC0];
                                            *&v790 = MEMORY[0x1E69E7CC0];
                                            v300 = *(v298 + 16);

                                            if (v300)
                                            {
                                              v721 = v295;
                                              v301 = 0;
                                              v302 = (v298 + 64);
                                              do
                                              {
                                                if (v301 >= *(v298 + 16))
                                                {
                                                  goto LABEL_386;
                                                }

                                                ++v301;
                                                v303 = *v302;
                                                v304 = *(v302 - 2);
                                                sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);
                                                v305 = swift_allocObject();
                                                *(v305 + 16) = xmmword_1AAF9E2B0;
                                                *(v305 + 32) = v304;
                                                *(v305 + 40) = v303;
                                                result = sub_1AADC8F2C(v305);
                                                v302 += 5;
                                              }

                                              while (v300 != v301);
                                              v299 = v790;
                                              v119 = v752;
                                              v295 = v721;
                                            }

                                            x = *&v293;

                                            v306 = COERCE_DOUBLE(sub_1AACEC978(v299));
                                            v308 = v307;
                                            v310 = v309;

                                            v311 = v295 - x;
                                            if (v310)
                                            {
                                              x = v240;
                                              y = v788;
                                            }

                                            else
                                            {
                                              y = v306;
                                            }

                                            if (v310)
                                            {
                                              width = v787;
                                            }

                                            else
                                            {
                                              width = v311;
                                            }

                                            if (v310)
                                            {
                                              height = v786;
                                            }

                                            else
                                            {
                                              height = v308 - v306;
                                            }
                                          }

                                          sub_1AACAADB4(v744, type metadata accessor for SgArea);
                                          goto LABEL_155;
                                        case 9uLL:
                                          v278 = swift_projectBox();
                                          v279 = v745;
                                          sub_1AACAAD4C(v278, v745, type metadata accessor for SgPath);
                                          v280 = *(v279 + 24);
                                          v810 = *(v279 + 8);
                                          v811 = v280;
                                          v812 = *(v279 + 40);

                                          v281 = sub_1AAF8E8E4();
                                          x = v789;
                                          y = v788;
                                          width = v787;
                                          height = v786;
                                          if ((v281 & 1) == 0)
                                          {
                                            sub_1AAF8E874();
                                            x = v282;
                                            y = v283;
                                            width = v284;
                                            height = v285;
                                          }

                                          sub_1AACAADB4(v745, type metadata accessor for SgPath);
                                          v223 = v758;
                                          goto LABEL_100;
                                        case 0xAuLL:

                                          x = v789;
                                          y = v788;
                                          width = v787;
                                          height = v786;
                                          goto LABEL_100;
                                        case 0xBuLL:
                                        case 0xCuLL:
                                          x = *((v228 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                                          y = *((v228 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                                          width = *((v228 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                                          height = *((v228 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

                                          goto LABEL_100;
                                        case 0xDuLL:

                                          x = 0.0;
                                          y = 0.0;
                                          width = 0.0;
                                          height = 0.0;
                                          goto LABEL_100;
                                        case 0xEuLL:
                                          goto LABEL_100;
                                        default:
                                          v265 = swift_projectBox();
                                          v259 = v747;
                                          sub_1AACAAD4C(v265, v747, type metadata accessor for SgGroup);

                                          sub_1AAF58748();
                                          x = v266;
                                          y = v267;
                                          width = v268;
                                          height = v269;
                                          v264 = type metadata accessor for SgGroup;
LABEL_132:
                                          v291 = v264;
                                          v231 = v259;
                                          v223 = v758;
LABEL_159:
                                          sub_1AACAADB4(v231, v291);
                                          goto LABEL_100;
                                      }
                                    }
                                  }

                                  v196 = v789;
                                  v197 = v788;
                                  v198 = v787;
                                  v199 = v786;
LABEL_196:
                                  sub_1AAF14C40(&v803);
                                  v62 = &unk_1AAF9E000;
                                  goto LABEL_85;
                                case 3uLL:
                                  v201 = swift_projectBox();
                                  v202 = v728;
                                  sub_1AACAAD4C(v201, v728, type metadata accessor for SgPoint);
                                  sub_1AAD9ADE4(v202 + 48, &v803);
                                  if (v806)
                                  {
                                    v198 = *(&v803 + 1);
                                    v199 = *&v804;

LABEL_185:
                                    v362 = *(v202 + 16);
                                    v196 = *(v202 + 8) - v198 * 0.5;
                                    sub_1AACAADB4(v202, type metadata accessor for SgPoint);
                                    v197 = v362 - v199 * 0.5;
                                    goto LABEL_85;
                                  }

                                  v790 = v803;
                                  v791 = v804;
                                  v792 = v805;
                                  if (*(v202 + 40) == 1)
                                  {
                                    v199 = *(v202 + 32);
                                    v198 = *(v202 + 24);

                                    sub_1AAE45A14(&v790);
                                    goto LABEL_185;
                                  }

                                  v402 = *(v202 + 8);
                                  v403 = *(v202 + 16);
                                  v404 = *(&v791 + 1);
                                  v405 = v792;
                                  v406 = sqrt(*(v202 + 24));

                                  sub_1AACBB42C(&v790, v404);
                                  v407 = (*(v405 + 16))(v404, v405);
                                  v409 = v408;
                                  v411 = v410;
                                  v413 = v412;
                                  sub_1AACAADB4(v202, type metadata accessor for SgPoint);
                                  v198 = v406 * v411;
                                  v199 = v406 * v413;
                                  v196 = v402 + v406 * (v407 + -0.5);
                                  v158 = *&v783;
                                  v414 = v406 * (v409 + -0.5);
                                  v160 = *&v782;
                                  v197 = v403 + v414;
                                  sub_1AAE45A14(&v790);
LABEL_85:
                                  v829.origin.x = v158;
                                  v829.origin.y = v785;
                                  v829.size.width = v160;
                                  v829.size.height = v781;
                                  v835.origin.x = v196;
                                  v835.origin.y = v197;
                                  v835.size.width = v198;
                                  v835.size.height = v199;
                                  v830 = CGRectUnion(v829, v835);
                                  v158 = v830.origin.x;
                                  v785 = v830.origin.y;
                                  v160 = v830.size.width;
                                  v781 = v830.size.height;

                                  v60 = v786;
                                  v69 = v777;
                                  v115 = v778;
                                  v112 = v779;
                                  v114 = v780;
                                  v193 = v762;
                                  if (v195 == v764)
                                  {
                                    goto LABEL_245;
                                  }

                                  break;
                                case 4uLL:
                                  v334 = swift_projectBox();
                                  v323 = v748;
                                  sub_1AACAAD4C(v334, v748, type metadata accessor for SgRectangle);
                                  v196 = v323[1];
                                  v197 = v323[2];
                                  v198 = v323[3];
                                  v199 = v323[4];

                                  v328 = type metadata accessor for SgRectangle;
                                  goto LABEL_169;
                                case 5uLL:
                                  v337 = swift_projectBox();
                                  v338 = v749;
                                  sub_1AACAAD4C(v337, v749, type metadata accessor for SgSector);
                                  v339 = vaddvq_f64(vmulq_f64(*(v338 + 24), xmmword_1AAFC7450));
                                  v340 = __sincos_stret(((*(v338 + 8) + *(v338 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
                                  v196 = v339 * v340.__cosval;
                                  v197 = v339 * v340.__sinval;
                                  v341 = (v338 + *(v750 + 52));
                                  v342 = v341[1];
                                  v198 = *v341 + *v341;

                                  sub_1AACAADB4(v338, type metadata accessor for SgSector);
                                  v199 = v342 + v342;
                                  goto LABEL_85;
                                case 6uLL:
                                  v322 = swift_projectBox();
                                  v323 = v729;
                                  sub_1AACAAD4C(v322, v729, type metadata accessor for SgRule);
                                  v324 = v323[1];
                                  v325 = v323[2];
                                  v326 = v323[3];
                                  v327 = v323[4];
                                  if (v326 >= v324)
                                  {
                                    v196 = v323[1];
                                  }

                                  else
                                  {
                                    v196 = v323[3];
                                  }

                                  if (v327 >= v325)
                                  {
                                    v197 = v323[2];
                                  }

                                  else
                                  {
                                    v197 = v323[4];
                                  }

                                  v198 = vabdd_f64(v326, v324);
                                  v199 = vabdd_f64(v327, v325);

                                  v328 = type metadata accessor for SgRule;
                                  goto LABEL_169;
                                case 7uLL:
                                  v351 = swift_projectBox();
                                  v352 = v741;
                                  sub_1AACAAD4C(v351, v741, type metadata accessor for SgLine);
                                  v353 = *(v352 + 8);
                                  swift_beginAccess();
                                  v354 = *(v353 + 16);
                                  v355 = *(v354 + 16);
                                  if (v355)
                                  {
                                    *&v790 = MEMORY[0x1E69E7CC0];

                                    sub_1AAF67208(v355);
                                    v356 = v354 + 32;
                                    v357 = v790;
                                    v199 = v786;
                                    do
                                    {
                                      sub_1AAE5EDF4(v356, &v803);
                                      v358 = *(&v803 + 1);
                                      sub_1AAE5EE50(&v803);
                                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                      {
                                        sub_1AAD1FAF4(0, *(v357 + 16) + 1, 1);
                                        v357 = v790;
                                      }

                                      v360 = *(v357 + 16);
                                      v359 = *(v357 + 24);
                                      if (v360 >= v359 >> 1)
                                      {
                                        sub_1AAD1FAF4((v359 > 1), v360 + 1, 1);
                                        v357 = v790;
                                      }

                                      *(v357 + 16) = v360 + 1;
                                      *(v357 + 8 * v360 + 32) = v358;
                                      v356 += 96;
                                      --v355;
                                    }

                                    while (v355);
                                  }

                                  else
                                  {

                                    v357 = MEMORY[0x1E69E7CC0];
                                    v199 = v786;
                                  }

                                  MEMORY[0x1EEE9AC00](v361);
                                  sub_1AACC7228(0, &qword_1ED9B2A88, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
                                  v783 = v385;
                                  *(&v721 - 4) = *&v385;
                                  v386 = sub_1AAE840B8();
                                  *(&v721 - 3) = v386;
                                  *&v782 = COERCE_DOUBLE(sub_1AAE971D0());
                                  *(&v721 - 2) = *&v782;
                                  swift_getKeyPath();
                                  v387 = v761;
                                  v388 = COERCE_DOUBLE(sub_1AAF894FC(v357, sub_1AAF68E40));
                                  v390 = v389;
                                  v392 = v391;
                                  v761 = v387;

                                  v196 = v789;
                                  v197 = v788;
                                  v198 = v787;
                                  if (v392)
                                  {
                                    goto LABEL_217;
                                  }

                                  v196 = v388;
                                  v393 = v390;
                                  if (v388 > v390)
                                  {
                                    goto LABEL_392;
                                  }

                                  v394 = *(v353 + 16);
                                  v395 = *(v394 + 16);
                                  if (v395)
                                  {
                                    *&v790 = MEMORY[0x1E69E7CC0];

                                    sub_1AAF67208(v395);
                                    v396 = v394 + 32;
                                    v397 = v790;
                                    v398 = v783;
                                    do
                                    {
                                      sub_1AAE5EDF4(v396, &v803);
                                      v399 = v804;
                                      sub_1AAE5EE50(&v803);
                                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                      {
                                        sub_1AAD1FAF4(0, *(v397 + 16) + 1, 1);
                                        v397 = v790;
                                      }

                                      v401 = *(v397 + 16);
                                      v400 = *(v397 + 24);
                                      if (v401 >= v400 >> 1)
                                      {
                                        sub_1AAD1FAF4((v400 > 1), v401 + 1, 1);
                                        v397 = v790;
                                      }

                                      *(v397 + 16) = v401 + 1;
                                      *(v397 + 8 * v401 + 32) = v399;
                                      v396 += 96;
                                      --v395;
                                    }

                                    while (v395);
                                  }

                                  else
                                  {
                                    v397 = MEMORY[0x1E69E7CC0];
                                    v398 = v783;
                                  }

                                  MEMORY[0x1EEE9AC00](result);
                                  *(&v721 - 4) = v398;
                                  *(&v721 - 3) = v386;
                                  *(&v721 - 2) = *&v782;
                                  swift_getKeyPath();
                                  v415 = v761;
                                  v416 = COERCE_DOUBLE(sub_1AAF894FC(v397, sub_1AAF68E40));
                                  v418 = v417;
                                  v420 = v419;
                                  v761 = v415;

                                  v199 = v786;
                                  if (v420)
                                  {
                                    v196 = v789;
                                    v197 = v788;
                                    v198 = v787;
                                  }

                                  else
                                  {
                                    v197 = v416;
                                    if (v416 > v418)
                                    {
                                      goto LABEL_397;
                                    }

                                    v198 = v393 - v196;
                                    v199 = v418 - v416;
                                  }

LABEL_217:
                                  sub_1AACAADB4(v741, type metadata accessor for SgLine);
                                  v62 = &unk_1AAF9E000;
                                  v119 = v752;
LABEL_218:
                                  v149 = v751;
                                  goto LABEL_85;
                                case 8uLL:
                                  v203 = swift_projectBox();
                                  v204 = v742;
                                  sub_1AACAAD4C(v203, v742, type metadata accessor for SgArea);
                                  v205 = *(v204 + 8);
                                  v206 = *(v205 + 16);
                                  v207 = MEMORY[0x1E69E7CC0];
                                  *&v803 = MEMORY[0x1E69E7CC0];
                                  v208 = *(v206 + 16);
                                  v783 = v205;
                                  if (v208)
                                  {
                                    sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

                                    v209 = (v206 + 56);
                                    v199 = v786;
                                    do
                                    {
                                      v210 = *(v209 - 2);
                                      v211 = *v209;
                                      v209 += 5;
                                      v212 = swift_allocObject();
                                      *(v212 + 16) = v62[43];
                                      *(v212 + 32) = v210;
                                      *(v212 + 40) = v211;
                                      sub_1AADC8F2C(v212);
                                      --v208;
                                    }

                                    while (v208);

                                    v207 = v803;
                                  }

                                  else
                                  {

                                    v199 = v786;
                                  }

                                  MEMORY[0x1EEE9AC00](v213);
                                  sub_1AACC7228(0, &qword_1ED9B2A88, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
                                  v782 = v363;
                                  *(&v721 - 4) = *&v363;
                                  v364 = sub_1AAE840B8();
                                  *(&v721 - 3) = v364;
                                  v365 = sub_1AAE971D0();
                                  *(&v721 - 2) = v365;
                                  swift_getKeyPath();
                                  v366 = v761;
                                  v367 = COERCE_DOUBLE(sub_1AAF894FC(v207, sub_1AAF68E40));
                                  v369 = v368;
                                  v371 = v370;
                                  v761 = v366;

                                  v196 = v789;
                                  v197 = v788;
                                  v198 = v787;
                                  v119 = v752;
                                  if (v371)
                                  {
                                    goto LABEL_211;
                                  }

                                  v196 = v367;
                                  if (v367 > v369)
                                  {
                                    goto LABEL_393;
                                  }

                                  v372 = *(v783 + 16);
                                  v373 = MEMORY[0x1E69E7CC0];
                                  *&v803 = MEMORY[0x1E69E7CC0];
                                  v374 = *(v372 + 16);
                                  if (v374)
                                  {
                                    sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

                                    v375 = (v372 + 64);
                                    do
                                    {
                                      v376 = *(v375 - 2);
                                      v377 = *v375;
                                      v375 += 5;
                                      v378 = swift_allocObject();
                                      *(v378 + 16) = xmmword_1AAF9E2B0;
                                      *(v378 + 32) = v376;
                                      *(v378 + 40) = v377;
                                      sub_1AADC8F2C(v378);
                                      --v374;
                                    }

                                    while (v374);

                                    v373 = v803;
                                  }

                                  MEMORY[0x1EEE9AC00](result);
                                  *(&v721 - 4) = *&v782;
                                  *(&v721 - 3) = v364;
                                  *(&v721 - 2) = v365;
                                  swift_getKeyPath();
                                  v379 = v761;
                                  v380 = COERCE_DOUBLE(sub_1AAF894FC(v373, sub_1AAF68E40));
                                  v382 = v381;
                                  v384 = v383;
                                  v761 = v379;

                                  v199 = v786;
                                  if (v384)
                                  {
                                    v196 = v789;
                                    v197 = v788;
                                    v198 = v787;
                                    v119 = v752;
                                  }

                                  else
                                  {
                                    v197 = v380;
                                    v119 = v752;
                                    if (v380 > v382)
                                    {
                                      goto LABEL_398;
                                    }

                                    v198 = v369 - v196;
                                    v199 = v382 - v380;
                                  }

LABEL_211:
                                  sub_1AACAADB4(v742, type metadata accessor for SgArea);
                                  v62 = &unk_1AAF9E000;
                                  goto LABEL_218;
                                case 9uLL:
                                  v343 = swift_projectBox();
                                  v344 = v743;
                                  sub_1AACAAD4C(v343, v743, type metadata accessor for SgPath);
                                  v345 = *(v344 + 24);
                                  v813 = *(v344 + 8);
                                  v814 = v345;
                                  v815 = *(v344 + 40);

                                  v346 = sub_1AAF8E8E4();
                                  v196 = v789;
                                  v197 = v788;
                                  v198 = v787;
                                  v199 = v786;
                                  if ((v346 & 1) == 0)
                                  {
                                    sub_1AAF8E874();
                                    v196 = v347;
                                    v197 = v348;
                                    v198 = v349;
                                    v199 = v350;
                                  }

                                  v335 = type metadata accessor for SgPath;
                                  v336 = v743;
                                  goto LABEL_174;
                                case 0xAuLL:

                                  v196 = v789;
                                  v197 = v788;
                                  v198 = v787;
                                  v199 = v786;
                                  goto LABEL_85;
                                case 0xBuLL:
                                case 0xCuLL:
                                  v196 = *((v200 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                                  v197 = *((v200 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                                  v198 = *((v200 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                                  v199 = *((v200 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

                                  goto LABEL_85;
                                case 0xDuLL:

                                  v196 = 0.0;
                                  v197 = 0.0;
                                  v198 = 0.0;
                                  v199 = 0.0;
                                  goto LABEL_85;
                                case 0xEuLL:
                                  goto LABEL_85;
                                default:
                                  v329 = swift_projectBox();
                                  v323 = v747;
                                  sub_1AACAAD4C(v329, v747, type metadata accessor for SgGroup);

                                  sub_1AAF58748();
                                  v196 = v330;
                                  v197 = v331;
                                  v198 = v332;
                                  v199 = v333;
                                  v328 = type metadata accessor for SgGroup;
LABEL_169:
                                  v335 = v328;
                                  v336 = v323;
LABEL_174:
                                  sub_1AACAADB4(v336, v335);
                                  goto LABEL_85;
                              }
                            }
                          }

                          v158 = v789;
                          v785 = v788;
                          v160 = v787;
                          v781 = v60;
LABEL_245:
                          sub_1AAF14C40(&v797);
                          v58 = v746;
                          v166 = v785;
                          v165 = v781;
                          goto LABEL_69;
                        case 3:
                          v170 = swift_projectBox();
                          v171 = v726;
                          sub_1AACAAD4C(v170, v726, type metadata accessor for SgPoint);
                          sub_1AAD9ADE4(v171 + 48, &v803);
                          if (v806)
                          {
                            v160 = *(&v803 + 1);
                            v172 = v69;
                            v173 = *&v804;

                            v174 = *(v171 + 16);
                            v158 = *(v171 + 8) - v160 * 0.5;
                            sub_1AACAADB4(v171, type metadata accessor for SgPoint);
                            v165 = v173;
                            v69 = v172;
                            v166 = v174 - v165 * 0.5;
                            v112 = v779;
                            v114 = v780;
                          }

                          else
                          {
                            v797 = v803;
                            v798 = v804;
                            v799 = v805;
                            if (*(v171 + 40) == 1)
                            {
                              v456 = v69;
                              v457 = *(v171 + 32);
                              v160 = *(v171 + 24);

                              sub_1AAE45A14(&v797);
                              v458 = *(v171 + 16);
                              v158 = *(v171 + 8) - v160 * 0.5;
                              sub_1AACAADB4(v171, type metadata accessor for SgPoint);
                              v165 = v457;
                              v69 = v456;
                              v166 = v458 - v165 * 0.5;
                            }

                            else
                            {
                              v500 = *(v171 + 8);
                              v501 = *(v171 + 16);
                              v502 = v119;
                              v503 = *(&v798 + 1);
                              v504 = v799;
                              v505 = sqrt(*(v171 + 24));

                              sub_1AACBB42C(&v797, v503);
                              v506 = v503;
                              v119 = v502;
                              v507 = (*(v504 + 16))(v506, v504);
                              v509 = v508;
                              v511 = v510;
                              v513 = v512;
                              sub_1AACAADB4(v171, type metadata accessor for SgPoint);
                              v514 = v505 * v511;
                              v515 = v777;
                              v115 = v778;
                              v516 = v505 * v513;
                              v158 = v500 + v505 * (v507 + -0.5);
                              v517 = v505 * (v509 + -0.5);
                              v160 = v514;
                              v518 = v501 + v517;
                              v60 = v786;
                              sub_1AAE45A14(&v797);
                              v165 = v516;
                              v69 = v515;
                              v166 = v518;
                            }

                            v112 = v779;
                            v114 = v780;
                          }

                          goto LABEL_69;
                        case 4:
                          v426 = swift_projectBox();
                          v153 = v748;
                          sub_1AACAAD4C(v426, v748, type metadata accessor for SgRectangle);
                          v158 = v153[1];
                          v785 = v153[2];
                          v161 = v60;
                          v162 = v69;
                          v160 = v153[3];
                          v163 = v153[4];

                          v164 = type metadata accessor for SgRectangle;
                          goto LABEL_67;
                        case 5:
                          v427 = swift_projectBox();
                          v428 = v749;
                          sub_1AACAAD4C(v427, v749, type metadata accessor for SgSector);
                          v429 = vaddvq_f64(vmulq_f64(*(v428 + 24), xmmword_1AAFC7450));
                          v430 = __sincos_stret(((*(v428 + 8) + *(v428 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
                          v158 = v429 * v430.__cosval;
                          v431 = v429 * v430.__sinval;
                          v432 = (v428 + *(v750 + 52));
                          v433 = v432[1];
                          v160 = *v432 + *v432;

                          sub_1AACAADB4(v428, type metadata accessor for SgSector);
                          v166 = v431;
                          v165 = v433 + v433;
                          v114 = v780;
                          goto LABEL_69;
                        case 6:
                          v152 = swift_projectBox();
                          v153 = v727;
                          sub_1AACAAD4C(v152, v727, type metadata accessor for SgRule);
                          v154 = v153[1];
                          v155 = v153[2];
                          v156 = v153[3];
                          v157 = v153[4];
                          if (v156 >= v154)
                          {
                            v158 = v153[1];
                          }

                          else
                          {
                            v158 = v153[3];
                          }

                          if (v157 >= v155)
                          {
                            v159 = v153[2];
                          }

                          else
                          {
                            v159 = v153[4];
                          }

                          v785 = v159;
                          v160 = vabdd_f64(v156, v154);
                          v161 = v60;
                          v162 = v69;
                          v163 = vabdd_f64(v157, v155);

                          v164 = type metadata accessor for SgRule;
                          goto LABEL_67;
                        case 7:
                          v444 = swift_projectBox();
                          v445 = v736;
                          sub_1AACAAD4C(v444, v736, type metadata accessor for SgLine);
                          v446 = *(v445 + 8);
                          swift_beginAccess();
                          v447 = *(v446 + 16);
                          v448 = *(v447 + 16);
                          if (v448)
                          {
                            *&v797 = MEMORY[0x1E69E7CC0];

                            sub_1AAF67208(v448);
                            v449 = v447 + 32;
                            v450 = v797;
                            do
                            {
                              sub_1AAE5EDF4(v449, &v803);
                              v451 = *(&v803 + 1);
                              sub_1AAE5EE50(&v803);
                              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                              {
                                sub_1AAD1FAF4(0, *(v450 + 16) + 1, 1);
                                v450 = v797;
                              }

                              v453 = *(v450 + 16);
                              v452 = *(v450 + 24);
                              if (v453 >= v452 >> 1)
                              {
                                sub_1AAD1FAF4((v452 > 1), v453 + 1, 1);
                                v450 = v797;
                              }

                              *(v450 + 16) = v453 + 1;
                              *(v450 + 8 * v453 + 32) = v451;
                              v449 += 96;
                              --v448;
                            }

                            while (v448);
                            v454 = v119;

                            v114 = v780;
                          }

                          else
                          {
                            v454 = v119;

                            v450 = MEMORY[0x1E69E7CC0];
                          }

                          MEMORY[0x1EEE9AC00](v455);
                          sub_1AACC7228(0, &qword_1ED9B2A88, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
                          v785 = v483;
                          *(&v721 - 4) = v483;
                          *&v783 = COERCE_DOUBLE(sub_1AAE840B8());
                          *(&v721 - 3) = *&v783;
                          v484 = sub_1AAE971D0();
                          *(&v721 - 2) = v484;
                          swift_getKeyPath();
                          v485 = v761;
                          v486 = COERCE_DOUBLE(sub_1AAF894FC(v450, sub_1AAF68E40));
                          v488 = v487;
                          v490 = v489;
                          v761 = v485;

                          v158 = v789;
                          v468 = v788;
                          v160 = v787;
                          v469 = v60;
                          v119 = v454;
                          if (v490)
                          {
                            goto LABEL_269;
                          }

                          v158 = v486;
                          v491 = v488;
                          if (v486 > v488)
                          {
                            goto LABEL_395;
                          }

                          v492 = *(v446 + 16);
                          v493 = *(v492 + 16);
                          if (v493)
                          {
                            *&v797 = MEMORY[0x1E69E7CC0];

                            sub_1AAF67208(v493);
                            v494 = v492 + 32;
                            v495 = v797;
                            do
                            {
                              sub_1AAE5EDF4(v494, &v803);
                              v496 = v804;
                              sub_1AAE5EE50(&v803);
                              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                              {
                                sub_1AAD1FAF4(0, *(v495 + 16) + 1, 1);
                                v495 = v797;
                              }

                              v498 = *(v495 + 16);
                              v497 = *(v495 + 24);
                              if (v498 >= v497 >> 1)
                              {
                                sub_1AAD1FAF4((v497 > 1), v498 + 1, 1);
                                v495 = v797;
                              }

                              *(v495 + 16) = v498 + 1;
                              *(v495 + 8 * v498 + 32) = v496;
                              v494 += 96;
                              --v493;
                            }

                            while (v493);
                            v499 = v454;

                            v112 = v779;
                          }

                          else
                          {
                            v499 = v454;
                            v495 = MEMORY[0x1E69E7CC0];
                          }

                          MEMORY[0x1EEE9AC00](result);
                          v521 = v783;
                          *(&v721 - 4) = v785;
                          *(&v721 - 3) = v521;
                          *(&v721 - 2) = v484;
                          swift_getKeyPath();
                          v522 = v761;
                          v523 = COERCE_DOUBLE(sub_1AAF894FC(v495, sub_1AAF68E40));
                          v525 = v524;
                          v527 = v526;

                          v761 = v522;
                          if (v527)
                          {
                            v158 = v789;
                            v468 = v788;
                            v160 = v787;
                            v469 = v60;
                            v119 = v499;
                          }

                          else
                          {
                            v468 = v523;
                            if (v523 > v525)
                            {
                              goto LABEL_400;
                            }

                            v119 = v499;
                            v160 = v491 - v158;
                            v469 = v525 - v523;
                          }

                          v114 = v780;
LABEL_269:
                          v519 = type metadata accessor for SgLine;
                          v520 = v736;
LABEL_270:
                          v528 = v468;
                          v529 = v69;
                          v530 = v469;
                          sub_1AACAADB4(v520, v519);
                          v165 = v530;
                          v69 = v529;
                          v60 = v786;
                          v166 = v528;
                          v58 = v746;
                          v62 = &unk_1AAF9E000;
                          v149 = v751;
LABEL_69:
                          v827.origin.x = v112;
                          v827.origin.y = v776;
                          v827.size.width = v114;
                          v827.size.height = v115;
                          v167 = v158;
                          v168 = v160;
                          v828 = CGRectUnion(v827, *(&v166 - 1));
                          v112 = v828.origin.x;
                          v776 = v828.origin.y;
                          v114 = v828.size.width;
                          v115 = v828.size.height;

                          v151 = v775;
                          if (v775 != v760)
                          {
                            continue;
                          }

                          goto LABEL_314;
                        case 8:
                          v175 = swift_projectBox();
                          v176 = v737;
                          sub_1AACAAD4C(v175, v737, type metadata accessor for SgArea);
                          v177 = *(v176 + 8);
                          v178 = *(*&v177 + 16);
                          v179 = MEMORY[0x1E69E7CC0];
                          *&v803 = MEMORY[0x1E69E7CC0];
                          v180 = *(v178 + 16);
                          v785 = v177;
                          if (v180)
                          {
                            sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

                            v181 = (v178 + 56);
                            v182 = v761;
                            do
                            {
                              v183 = *(v181 - 2);
                              v184 = *v181;
                              v181 += 5;
                              v185 = swift_allocObject();
                              *(v185 + 16) = v62[43];
                              *(v185 + 32) = v183;
                              *(v185 + 40) = v184;
                              sub_1AADC8F2C(v185);
                              --v180;
                            }

                            while (v180);

                            v179 = v803;
                            v112 = v779;
                            v114 = v780;
                          }

                          else
                          {

                            v182 = v761;
                          }

                          MEMORY[0x1EEE9AC00](v186);
                          sub_1AACC7228(0, &qword_1ED9B2A88, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
                          v460 = v459;
                          *(&v721 - 4) = v459;
                          v461 = sub_1AAE840B8();
                          *(&v721 - 3) = v461;
                          v462 = sub_1AAE971D0();
                          *(&v721 - 2) = v462;
                          swift_getKeyPath();
                          v463 = COERCE_DOUBLE(sub_1AAF894FC(v179, sub_1AAF68E40));
                          v465 = v464;
                          v467 = v466;
                          v761 = v182;

                          v158 = v789;
                          v468 = v788;
                          v160 = v787;
                          v469 = v60;
                          v119 = v752;
                          if (v467)
                          {
                            goto LABEL_262;
                          }

                          v158 = v463;
                          if (v463 > v465)
                          {
                            goto LABEL_394;
                          }

                          v470 = *(*&v785 + 16);
                          v471 = MEMORY[0x1E69E7CC0];
                          *&v803 = MEMORY[0x1E69E7CC0];
                          v472 = *(v470 + 16);
                          if (v472)
                          {
                            sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

                            v473 = (v470 + 64);
                            do
                            {
                              v474 = *(v473 - 2);
                              v475 = *v473;
                              v473 += 5;
                              v476 = swift_allocObject();
                              *(v476 + 16) = xmmword_1AAF9E2B0;
                              *(v476 + 32) = v474;
                              *(v476 + 40) = v475;
                              sub_1AADC8F2C(v476);
                              --v472;
                            }

                            while (v472);

                            v471 = v803;
                            v60 = v786;
                            v115 = v778;
                            v112 = v779;
                          }

                          MEMORY[0x1EEE9AC00](result);
                          *(&v721 - 4) = v460;
                          *(&v721 - 3) = v461;
                          *(&v721 - 2) = v462;
                          swift_getKeyPath();
                          v477 = v761;
                          v478 = COERCE_DOUBLE(sub_1AAF894FC(v471, sub_1AAF68E40));
                          v480 = v479;
                          v482 = v481;

                          v761 = v477;
                          if (v482)
                          {
                            v158 = v789;
                            v468 = v788;
                            v160 = v787;
                            v469 = v60;
                            v119 = v752;
                          }

                          else
                          {
                            v468 = v478;
                            v119 = v752;
                            if (v478 > v480)
                            {
                              goto LABEL_399;
                            }

                            v160 = v465 - v158;
                            v469 = v480 - v478;
                          }

                          v114 = v780;
LABEL_262:
                          v519 = type metadata accessor for SgArea;
                          v520 = v737;
                          goto LABEL_270;
                        case 9:
                          v434 = swift_projectBox();
                          v435 = v738;
                          sub_1AACAAD4C(v434, v738, type metadata accessor for SgPath);
                          v436 = *(v435 + 24);
                          v816 = *(v435 + 8);
                          v817 = v436;
                          v818 = *(v435 + 40);

                          v437 = sub_1AAF8E8E4();
                          v158 = v789;
                          v438 = v788;
                          v160 = v787;
                          v439 = v60;
                          if ((v437 & 1) == 0)
                          {
                            sub_1AAF8E874();
                            v158 = v440;
                            v160 = v441;
                          }

                          v442 = v438;
                          v443 = v439;
                          sub_1AACAADB4(v738, type metadata accessor for SgPath);
                          v165 = v443;
                          v166 = v442;
                          v69 = v777;
                          goto LABEL_69;
                        case 0xALL:

                          v158 = v789;
                          v166 = v788;
                          v160 = v787;
                          v165 = v60;
                          goto LABEL_69;
                        case 0xBLL:
                        case 0xCLL:
                          v158 = *((*&v169 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                          v785 = *((*&v169 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                          v161 = v60;
                          v162 = v69;
                          v160 = *((*&v169 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                          v163 = *((*&v169 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

                          goto LABEL_68;
                        case 0xDLL:

                          v158 = 0.0;
                          v166 = 0.0;
                          v160 = 0.0;
                          v165 = 0.0;
                          goto LABEL_69;
                        case 0xELL:
                          goto LABEL_69;
                        default:
                          v421 = swift_projectBox();
                          v153 = v747;
                          sub_1AACAAD4C(v421, v747, type metadata accessor for SgGroup);

                          sub_1AAF58748();
                          v158 = v422;
                          v785 = v423;
                          v160 = v424;
                          v161 = v60;
                          v162 = v69;
                          v163 = v425;
                          v164 = type metadata accessor for SgGroup;
LABEL_67:
                          sub_1AACAADB4(v153, v164);
LABEL_68:
                          v165 = v163;
                          v69 = v162;
                          v60 = v161;
                          v166 = v785;
                          goto LABEL_69;
                      }
                    }

                    goto LABEL_385;
                  }
                }

                v112 = v789;
                v776 = v788;
                v114 = v787;
                v115 = v60;
LABEL_314:
                sub_1AAF14C40(&v800);
                v113 = v776;
                goto LABEL_37;
              case 3uLL:
                v121 = swift_projectBox();
                v122 = v724;
                sub_1AACAAD4C(v121, v724, type metadata accessor for SgPoint);
                sub_1AAD9ADE4(v122 + 48, &v803);
                if (v806)
                {
                  v123 = *(&v803 + 1);
                  v115 = *&v804;

LABEL_296:
                  v577 = *(v122 + 16);
                  v578 = v60;
                  v579 = *(v122 + 8) - v123 * 0.5;
                  sub_1AACAADB4(v122, type metadata accessor for SgPoint);
                  v112 = v579;
                  v60 = v578;
                  v113 = v577 - v115 * 0.5;
                  v114 = v123;
                  goto LABEL_37;
                }

                v800 = v803;
                v801 = v804;
                v802 = v805;
                if (*(v122 + 40) == 1)
                {
                  v115 = *(v122 + 32);
                  v123 = *(v122 + 24);

                  sub_1AAE45A14(&v800);
                  goto LABEL_296;
                }

                v619 = *(v122 + 8);
                v620 = *(v122 + 16);
                v621 = *(&v801 + 1);
                v622 = v802;
                v623 = sqrt(*(v122 + 24));

                sub_1AACBB42C(&v800, v621);
                v624 = (*(v622 + 16))(v621, v622);
                v626 = v625;
                v628 = v627;
                v630 = v629;
                sub_1AACAADB4(v122, type metadata accessor for SgPoint);
                v631 = v623 * v628;
                v632 = v786;
                v115 = v623 * v630;
                v69 = v777;
                v633 = v624 + -0.5;
                v114 = v631;
                v634 = v619 + v623 * v633;
                v635 = v626 + -0.5;
                v112 = v634;
                v636 = v620 + v623 * v635;
                sub_1AAE45A14(&v800);
                v113 = v636;
                v60 = v632;
                goto LABEL_37;
              case 4uLL:
                v545 = swift_projectBox();
                v539 = v748;
                sub_1AACAAD4C(v545, v748, type metadata accessor for SgRectangle);
                v144 = v60;
                v112 = *(v539 + 8);
                v146 = *(v539 + 16);
                v114 = *(v539 + 24);
                v115 = *(v539 + 32);

                v544 = type metadata accessor for SgRectangle;
                goto LABEL_280;
              case 5uLL:
                v546 = swift_projectBox();
                v547 = v749;
                sub_1AACAAD4C(v546, v749, type metadata accessor for SgSector);
                v548 = vaddvq_f64(vmulq_f64(*(v547 + 24), xmmword_1AAFC7450));
                v549 = __sincos_stret(((*(v547 + 8) + *(v547 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
                v112 = v548 * v549.__cosval;
                v550 = v548 * v549.__sinval;
                v551 = (v547 + *(v750 + 52));
                v552 = v551[1];
                v553 = v60;
                v554 = *v551 + *v551;

                sub_1AACAADB4(v547, type metadata accessor for SgSector);
                v113 = v550;
                v115 = v552 + v552;
                v114 = v554;
                v60 = v553;
                goto LABEL_37;
              case 6uLL:
                v531 = swift_projectBox();
                v532 = v725;
                sub_1AACAAD4C(v531, v725, type metadata accessor for SgRule);
                v533 = v532[1];
                v534 = v532[2];
                v535 = v532[3];
                v536 = v532[4];
                if (v535 >= v533)
                {
                  v112 = v532[1];
                }

                else
                {
                  v112 = v532[3];
                }

                if (v536 >= v534)
                {
                  v537 = v532[2];
                }

                else
                {
                  v537 = v532[4];
                }

                v114 = vabdd_f64(v535, v533);
                v115 = vabdd_f64(v536, v534);

                sub_1AACAADB4(v532, type metadata accessor for SgRule);
                v113 = v537;
                goto LABEL_37;
              case 7uLL:
                v564 = swift_projectBox();
                v565 = v734;
                sub_1AACAAD4C(v564, v734, type metadata accessor for SgLine);
                v566 = *(v565 + 8);
                swift_beginAccess();
                v567 = v119;
                v568 = *(v566 + 16);
                v569 = *(v568 + 16);
                v752 = v567;
                if (v569)
                {
                  *&v800 = MEMORY[0x1E69E7CC0];

                  sub_1AAF67208(v569);
                  v570 = v568 + 32;
                  v571 = v800;
                  do
                  {
                    sub_1AAE5EDF4(v570, &v803);
                    v572 = *(&v803 + 1);
                    sub_1AAE5EE50(&v803);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      sub_1AAD1FAF4(0, *(v571 + 16) + 1, 1);
                      v571 = v800;
                    }

                    v574 = *(v571 + 16);
                    v573 = *(v571 + 24);
                    if (v574 >= v573 >> 1)
                    {
                      sub_1AAD1FAF4((v573 > 1), v574 + 1, 1);
                      v571 = v800;
                    }

                    *(v571 + 16) = v574 + 1;
                    *(v571 + 8 * v574 + 32) = v572;
                    v570 += 96;
                    --v569;
                  }

                  while (v569);
                  v575 = v566;
                }

                else
                {
                  v575 = v566;

                  v571 = MEMORY[0x1E69E7CC0];
                }

                MEMORY[0x1EEE9AC00](v576);
                sub_1AACC7228(0, &qword_1ED9B2A88, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
                v785 = v599;
                *(&v721 - 4) = v599;
                v600 = sub_1AAE840B8();
                *(&v721 - 3) = v600;
                v601 = sub_1AAE971D0();
                *(&v721 - 2) = v601;
                swift_getKeyPath();
                v602 = v761;
                v603 = COERCE_DOUBLE(sub_1AAF894FC(v571, sub_1AAF68E40));
                v605 = v604;
                v607 = v606;
                v761 = v602;

                v112 = v789;
                v608 = v788;
                v114 = v787;
                v115 = v60;
                v58 = v746;
                if (v607)
                {
                  goto LABEL_332;
                }

                v112 = v603;
                v609 = v605;
                if (v603 > v605)
                {
                  goto LABEL_396;
                }

                v610 = *(v575 + 16);
                v611 = *(v610 + 16);
                if (v611)
                {
                  v612 = v60;
                  v613 = v112;
                  *&v800 = MEMORY[0x1E69E7CC0];

                  sub_1AAF67208(v611);
                  v614 = v610 + 32;
                  v615 = v800;
                  do
                  {
                    sub_1AAE5EDF4(v614, &v803);
                    v616 = v804;
                    sub_1AAE5EE50(&v803);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      sub_1AAD1FAF4(0, *(v615 + 16) + 1, 1);
                      v615 = v800;
                    }

                    v618 = *(v615 + 16);
                    v617 = *(v615 + 24);
                    if (v618 >= v617 >> 1)
                    {
                      sub_1AAD1FAF4((v617 > 1), v618 + 1, 1);
                      v615 = v800;
                    }

                    *(v615 + 16) = v618 + 1;
                    *(v615 + 8 * v618 + 32) = v616;
                    v614 += 96;
                    --v611;
                  }

                  while (v611);

                  v58 = v746;
                  v112 = v613;
                  v60 = v612;
                }

                else
                {
                  v615 = MEMORY[0x1E69E7CC0];
                }

                MEMORY[0x1EEE9AC00](result);
                *(&v721 - 4) = v785;
                *(&v721 - 3) = v600;
                *(&v721 - 2) = v601;
                swift_getKeyPath();
                v637 = v761;
                v638 = COERCE_DOUBLE(sub_1AAF894FC(v615, sub_1AAF68E40));
                v640 = v639;
                v642 = v641;
                v761 = v637;

                if (v642)
                {
                  v112 = v789;
                  v608 = v788;
                  v114 = v787;
                  v115 = v60;
                }

                else
                {
                  v608 = v638;
                  if (v638 > v640)
                  {
                    goto LABEL_401;
                  }

                  v114 = v609 - v112;
                  v115 = v640 - v638;
                }

LABEL_332:
                v643 = v60;
                v644 = v608;
                sub_1AACAADB4(v734, type metadata accessor for SgLine);
                v113 = v644;
                v60 = v643;
                v62 = &unk_1AAF9E000;
                goto LABEL_37;
              case 8uLL:
                v124 = swift_projectBox();
                v125 = v733;
                sub_1AACAAD4C(v124, v733, type metadata accessor for SgArea);
                v126 = *(v125 + 8);
                v127 = *(*&v126 + 16);
                v128 = *(v127 + 16);
                v752 = v119;
                if (v128)
                {
                  v785 = v126;
                  sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

                  v129 = (v127 + 56);
                  v130 = MEMORY[0x1E69E7CC0];
                  while (1)
                  {
                    v131 = *(v129 - 2);
                    v132 = *v129;
                    result = swift_allocObject();
                    *(result + 32) = v131;
                    v133 = (result + 32);
                    *(result + 40) = v132;
                    v134 = *(v130 + 16);
                    v135 = v134 + 2;
                    if (__OFADD__(v134, 2))
                    {
                      goto LABEL_379;
                    }

                    result = swift_isUniquelyReferenced_nonNull_native();
                    if (!result || (v136 = *(v130 + 24) >> 1, v136 < v135))
                    {
                      if (v134 <= v135)
                      {
                        v137 = v134 + 2;
                      }

                      else
                      {
                        v137 = v134;
                      }

                      result = sub_1AAD69810(result, v137, 1, v130);
                      v130 = result;
                      v136 = *(result + 24) >> 1;
                    }

                    v62 = &unk_1AAF9E000;
                    v138 = *(v130 + 16);
                    if (v136 - v138 < 2)
                    {
                      break;
                    }

                    *(v130 + 8 * v138 + 32) = *v133;
                    swift_setDeallocating();
                    result = swift_deallocClassInstance();
                    v139 = *(v130 + 16);
                    v101 = __OFADD__(v139, 2);
                    v140 = v139 + 2;
                    if (v101)
                    {
                      goto LABEL_381;
                    }

                    *(v130 + 16) = v140;
                    v129 += 5;
                    if (!--v128)
                    {

                      v58 = v746;
                      v126 = v785;
                      goto LABEL_298;
                    }
                  }

LABEL_380:
                  __break(1u);
LABEL_381:
                  __break(1u);
LABEL_382:
                  __break(1u);
                  goto LABEL_383;
                }

                v130 = MEMORY[0x1E69E7CC0];
LABEL_298:
                v580 = COERCE_DOUBLE(sub_1AACEC978(v130));
                v582 = v581;
                v584 = v583;

                if (v584)
                {
                  v112 = v789;
                  v115 = v60;
                  v563 = v788;
                  v114 = v787;
                }

                else
                {
                  v784 = v580;
                  v785 = v582;
                  v585 = *(*&v126 + 16);
                  v586 = *(v585 + 16);
                  if (v586)
                  {
                    sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

                    v587 = (v585 + 64);
                    v588 = MEMORY[0x1E69E7CC0];
                    do
                    {
                      v589 = *(v587 - 2);
                      v590 = *v587;
                      result = swift_allocObject();
                      *(result + 32) = v589;
                      v591 = (result + 32);
                      *(result + 40) = v590;
                      v592 = *(v588 + 16);
                      v593 = v592 + 2;
                      if (__OFADD__(v592, 2))
                      {
                        goto LABEL_389;
                      }

                      result = swift_isUniquelyReferenced_nonNull_native();
                      if (!result || (v594 = *(v588 + 24) >> 1, v594 < v593))
                      {
                        if (v592 <= v593)
                        {
                          v595 = v592 + 2;
                        }

                        else
                        {
                          v595 = v592;
                        }

                        result = sub_1AAD69810(result, v595, 1, v588);
                        v588 = result;
                        v594 = *(result + 24) >> 1;
                      }

                      v596 = *(v588 + 16);
                      if (v594 - v596 < 2)
                      {
                        goto LABEL_390;
                      }

                      *(v588 + 8 * v596 + 32) = *v591;
                      swift_setDeallocating();
                      result = swift_deallocClassInstance();
                      v597 = *(v588 + 16);
                      v101 = __OFADD__(v597, 2);
                      v598 = v597 + 2;
                      if (v101)
                      {
                        goto LABEL_391;
                      }

                      *(v588 + 16) = v598;
                      v587 += 5;
                      --v586;
                    }

                    while (v586);

                    v58 = v746;
                    v62 = &unk_1AAF9E000;
                  }

                  else
                  {
                    v588 = MEMORY[0x1E69E7CC0];
                  }

                  v645 = COERCE_DOUBLE(sub_1AACEC978(v588));
                  v647 = v646;
                  v649 = v648;

                  if (v649)
                  {
                    v112 = v789;
                    v563 = v788;
                    v114 = v787;
                    v115 = v786;
                  }

                  else
                  {
                    v112 = v784;
                    v114 = v785 - v784;
                    v563 = v645;
                    v115 = v647 - v645;
                  }
                }

                sub_1AACAADB4(v733, type metadata accessor for SgArea);
LABEL_338:
                v113 = v563;
                v60 = v786;
LABEL_37:
                v825.origin.x = v69;
                v825.origin.y = v771;
                v825.size.height = v772;
                v825.size.width = v773;
                v116 = v112;
                v117 = v114;
                v118 = v115;
                v826 = CGRectUnion(v825, *(&v113 - 1));
                v69 = v826.origin.x;
                v771 = v826.origin.y;
                v772 = v826.size.height;
                v773 = v826.size.width;

                v111 = v769;
                v109 = v755;
                if (v769 == v757)
                {
                  goto LABEL_357;
                }

                break;
              case 9uLL:
                v555 = swift_projectBox();
                v556 = v735;
                sub_1AACAAD4C(v555, v735, type metadata accessor for SgPath);
                v557 = *(v556 + 24);
                v819 = *(v556 + 8);
                v820 = v557;
                v821 = *(v556 + 40);

                v558 = sub_1AAF8E8E4();
                v112 = v789;
                v559 = v788;
                v114 = v787;
                v115 = v60;
                if ((v558 & 1) == 0)
                {
                  sub_1AAF8E874();
                  v112 = v560;
                  v114 = v561;
                  v115 = v562;
                }

                v563 = v559;
                sub_1AACAADB4(v735, type metadata accessor for SgPath);
                goto LABEL_338;
              case 0xAuLL:

                v112 = v789;
                v113 = v788;
                v114 = v787;
                v115 = v60;
                goto LABEL_37;
              case 0xBuLL:
              case 0xCuLL:
                v112 = *((v119 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v120 = *((v119 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                v114 = *((v119 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                v115 = *((v119 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

                v113 = v120;
                goto LABEL_37;
              case 0xDuLL:

                v112 = 0.0;
                v113 = 0.0;
                v114 = 0.0;
                v115 = 0.0;
                goto LABEL_37;
              case 0xEuLL:
                goto LABEL_37;
              default:
                v538 = swift_projectBox();
                v539 = v747;
                sub_1AACAAD4C(v538, v747, type metadata accessor for SgGroup);

                sub_1AAF58748();
                v112 = v540;
                v144 = v60;
                v146 = v541;
                v114 = v542;
                v115 = v543;
                v544 = type metadata accessor for SgGroup;
LABEL_280:
                sub_1AACAADB4(v539, v544);
LABEL_281:
                v113 = v146;
                v60 = v144;
                goto LABEL_37;
            }
          }
        }

        v69 = v789;
        v771 = v788;
        v772 = v60;
        v773 = v787;
LABEL_357:
        sub_1AAF14C40(&v807);
        v76 = v772;
        v77 = v773;
        v75 = v771;
        goto LABEL_12;
      case 3uLL:
        v80 = swift_projectBox();
        v81 = v722;
        sub_1AACAAD4C(v80, v722, type metadata accessor for SgPoint);
        sub_1AAD9ADE4(v81 + 48, &v803);
        if (v806)
        {
          v82 = v60;
          v83 = *(&v803 + 1);
          v84 = *&v804;

LABEL_348:
          v682 = *(v81 + 16);
          v69 = *(v81 + 8) - v83 * 0.5;
          sub_1AACAADB4(v81, type metadata accessor for SgPoint);
          v76 = v84;
          v77 = v83;
          v60 = v82;
          v75 = v682 - v84 * 0.5;
          goto LABEL_12;
        }

        v807 = v803;
        v808 = v804;
        v809 = v805;
        if (*(v81 + 40) == 1)
        {
          v84 = *(v81 + 32);
          v82 = v60;
          v83 = *(v81 + 24);

          sub_1AAE45A14(&v807);
          goto LABEL_348;
        }

        v699 = *(v81 + 8);
        v700 = *(v81 + 16);
        v701 = *(&v808 + 1);
        v702 = v809;
        v703 = sqrt(*(v81 + 24));

        sub_1AACBB42C(&v807, v701);
        v704 = (*(v702 + 16))(v701, v702);
        v785 = v705;
        v707 = v706;
        v709 = v708;
        sub_1AACAADB4(v81, type metadata accessor for SgPoint);
        v710 = v703 * v707;
        v711 = v786;
        v712 = v703 * v709;
        v69 = v699 + v703 * (v704 + -0.5);
        v713 = v700 + v703 * (v785 + -0.5);
        sub_1AAE45A14(&v807);
        v75 = v713;
        v76 = v712;
        v77 = v710;
        v60 = v711;
        goto LABEL_12;
      case 4uLL:
        v655 = swift_projectBox();
        v64 = v748;
        sub_1AACAAD4C(v655, v748, type metadata accessor for SgRectangle);
        v70 = v60;
        v69 = *(v64 + 8);
        v71 = *(v64 + 16);
        v72 = *(v64 + 24);
        v73 = *(v64 + 32);

        v74 = type metadata accessor for SgRectangle;
        goto LABEL_10;
      case 5uLL:
        v656 = swift_projectBox();
        v657 = v749;
        sub_1AACAAD4C(v656, v749, type metadata accessor for SgSector);
        v658 = vaddvq_f64(vmulq_f64(*(v657 + 24), xmmword_1AAFC7450));
        v659 = __sincos_stret(((*(v657 + 8) + *(v657 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
        v69 = v658 * v659.__cosval;
        v660 = v60;
        v661 = v658 * v659.__sinval;
        v662 = (v657 + *(v750 + 52));
        v663 = v662[1];
        v664 = *v662 + *v662;

        sub_1AACAADB4(v657, type metadata accessor for SgSector);
        v75 = v661;
        v60 = v660;
        v77 = v664;
        v76 = v663 + v663;
        goto LABEL_12;
      case 6uLL:
        v63 = swift_projectBox();
        v64 = v723;
        sub_1AACAAD4C(v63, v723, type metadata accessor for SgRule);
        v65 = *(v64 + 8);
        v66 = *(v64 + 16);
        v67 = *(v64 + 24);
        v68 = *(v64 + 32);
        if (v67 >= v65)
        {
          v69 = *(v64 + 8);
        }

        else
        {
          v69 = *(v64 + 24);
        }

        v70 = v60;
        if (v68 >= v66)
        {
          v71 = *(v64 + 16);
        }

        else
        {
          v71 = *(v64 + 32);
        }

        v72 = vabdd_f64(v67, v65);
        v73 = vabdd_f64(v68, v66);

        v74 = type metadata accessor for SgRule;
        goto LABEL_10;
      case 7uLL:
        v677 = swift_projectBox();
        v64 = v740;
        sub_1AACAAD4C(v677, v740, type metadata accessor for SgLine);

        sub_1AAF56CF0();
        v69 = v678;
        v70 = v60;
        v71 = v679;
        v72 = v680;
        v73 = v681;
        v74 = type metadata accessor for SgLine;
        goto LABEL_10;
      case 8uLL:
        v85 = swift_projectBox();
        v86 = v731;
        sub_1AACAAD4C(v85, v731, type metadata accessor for SgArea);
        v87 = *(v86 + 8);
        v88 = *(*&v87 + 16);
        v89 = *(v88 + 16);
        if (!v89)
        {

          v91 = MEMORY[0x1E69E7CC0];
LABEL_350:
          *&v683 = COERCE_DOUBLE(sub_1AACEC978(v91));
          v685 = v684;
          v687 = v686;

          if (v687)
          {
            v69 = v789;
            v688 = v60;
            v689 = v788;
            v690 = v787;
            v691 = v688;
          }

          else
          {
            v692 = *(*&v87 + 16);
            v693 = MEMORY[0x1E69E7CC0];
            *&v803 = MEMORY[0x1E69E7CC0];
            v694 = *(v692 + 16);
            if (v694)
            {
              sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

              v695 = (v692 + 64);
              do
              {
                v696 = *(v695 - 2);
                v697 = *v695;
                v695 += 5;
                v698 = swift_allocObject();
                *(v698 + 16) = v62[43];
                *(v698 + 32) = v696;
                *(v698 + 40) = v697;
                sub_1AADC8F2C(v698);
                --v694;
              }

              while (v694);
              v691 = v60;

              v693 = v803;
            }

            else
            {
              v691 = v60;
            }

            v714 = *&v683;
            v715 = v685;
            v716 = COERCE_DOUBLE(sub_1AACEC978(v693));
            v718 = v717;
            v720 = v719;

            if (v720)
            {
              v69 = v789;
            }

            else
            {
              v69 = v714;
            }

            if (v720)
            {
              v689 = v788;
            }

            else
            {
              v689 = v716;
            }

            if (v720)
            {
              v690 = v787;
            }

            else
            {
              v690 = v715 - v714;
            }

            if (v720)
            {
              v688 = v691;
            }

            else
            {
              v688 = v718 - v716;
            }
          }

          sub_1AACAADB4(v731, type metadata accessor for SgArea);
          v77 = v690;
          v76 = v688;
          v75 = v689;
          v60 = v691;
LABEL_12:
          v78 = v69;
          v770 = CGRectUnion(v770, *(&v75 - 1));

          v61 = v768;
          if (v768 == v754)
          {
          }

          continue;
        }

        v785 = v87;
        sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

        v90 = (v88 + 56);
        v91 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v92 = *(v90 - 2);
          v93 = *v90;
          result = swift_allocObject();
          *(result + 32) = v92;
          v94 = (result + 32);
          *(result + 40) = v93;
          v95 = *(v91 + 16);
          v96 = v95 + 2;
          if (__OFADD__(v95, 2))
          {
            goto LABEL_382;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if (!result || (v97 = *(v91 + 24) >> 1, v97 < v96))
          {
            if (v95 <= v96)
            {
              v98 = v95 + 2;
            }

            else
            {
              v98 = v95;
            }

            result = sub_1AAD69810(result, v98, 1, v91);
            v91 = result;
            v97 = *(result + 24) >> 1;
          }

          v62 = &unk_1AAF9E000;
          v99 = *(v91 + 16);
          if (v97 - v99 < 2)
          {
            break;
          }

          *(v91 + 8 * v99 + 32) = *v94;
          swift_setDeallocating();
          result = swift_deallocClassInstance();
          v100 = *(v91 + 16);
          v101 = __OFADD__(v100, 2);
          v102 = v100 + 2;
          if (v101)
          {
            goto LABEL_384;
          }

          *(v91 + 16) = v102;
          v90 += 5;
          if (!--v89)
          {

            v58 = v746;
            v87 = v785;
            goto LABEL_350;
          }
        }

LABEL_383:
        __break(1u);
LABEL_384:
        __break(1u);
LABEL_385:
        __break(1u);
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
LABEL_392:
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
        return result;
      case 9uLL:
        v665 = swift_projectBox();
        v666 = v732;
        sub_1AACAAD4C(v665, v732, type metadata accessor for SgPath);
        v667 = *(v666 + 24);
        v822 = *(v666 + 8);
        v823 = v667;
        v824 = *(v666 + 40);

        v668 = sub_1AAF8E8E4();
        v69 = v789;
        v669 = v788;
        v670 = v787;
        v671 = v60;
        v672 = v60;
        if ((v668 & 1) == 0)
        {
          sub_1AAF8E874();
          v69 = v673;
        }

        v674 = v670;
        v675 = v672;
        v676 = v669;
        sub_1AACAADB4(v732, type metadata accessor for SgPath);
        v75 = v676;
        v76 = v675;
        v77 = v674;
        v60 = v671;
        goto LABEL_12;
      case 0xAuLL:

        v69 = v789;
        v75 = v788;
        v77 = v787;
        v76 = v60;
        goto LABEL_12;
      case 0xBuLL:
      case 0xCuLL:
        v70 = v60;
        v69 = *((v79 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v71 = *((v79 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v72 = *((v79 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        v73 = *((v79 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

        goto LABEL_11;
      case 0xDuLL:

        v69 = 0.0;
        v75 = 0.0;
        v77 = 0.0;
        v76 = 0.0;
        goto LABEL_12;
      case 0xEuLL:
        goto LABEL_12;
      default:
        v650 = swift_projectBox();
        v64 = v747;
        sub_1AACAAD4C(v650, v747, type metadata accessor for SgGroup);

        sub_1AAF58748();
        v69 = v651;
        v70 = v60;
        v71 = v652;
        v72 = v653;
        v73 = v654;
        v74 = type metadata accessor for SgGroup;
LABEL_10:
        sub_1AACAADB4(v64, v74);
LABEL_11:
        v75 = v71;
        v60 = v70;
        v76 = v73;
        v77 = v72;
        goto LABEL_12;
    }
  }
}

uint64_t sub_1AAF62ADC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SgPath(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v635 = &v624 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v637 = &v624 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v640 = &v624 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v644 = &v624 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v647 = &v624 - v12;
  v13 = type metadata accessor for SgArea(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v636 = &v624 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v639 = &v624 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v643 = &v624 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v642 = (&v624 - v20);
  v21 = type metadata accessor for SgLine(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v638 = &v624 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v649 = (&v624 - v24);
  v25 = type metadata accessor for SgRule(0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v627 = (&v624 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27);
  v629 = &v624 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v631 = (&v624 - v30);
  MEMORY[0x1EEE9AC00](v31);
  v633 = (&v624 - v32);
  MEMORY[0x1EEE9AC00](v33);
  v634 = (&v624 - v34);
  v653 = type metadata accessor for SgSector(0);
  MEMORY[0x1EEE9AC00](v653);
  v652 = &v624 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for SgRectangle(0);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v651 = (&v624 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = type metadata accessor for SgPoint(0);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v626 = &v624 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v628 = &v624 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v630 = &v624 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v632 = &v624 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v641 = &v624 - v47;
  v48 = type metadata accessor for SgGroup(0);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v650 = (&v624 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v700 = a2;

  result = sub_1AADC9018(v50);
  v52 = v700;
  v53 = *(MEMORY[0x1E695F050] + 8);
  v688 = *MEMORY[0x1E695F050];
  v687 = v53;
  v54 = *(MEMORY[0x1E695F050] + 16);
  v686 = *(MEMORY[0x1E695F050] + 24);
  v55 = *(v700 + 16);
  if (!v55)
  {
    v671.origin.x = v688;
    v671.origin.y = v687;
    v671.size.width = v54;
    v671.size.height = v686;
  }

  v56 = 0;
  v654 = 0;
  v658 = v700 + 32;
  v57 = &unk_1AAF9E000;
  v671.size.width = v54;
  v671.size.height = v686;
  v671.origin.x = v688;
  v671.origin.y = v687;
  v648 = v700;
  v677 = v54;
  v656 = v55;
  while (2)
  {
    if (v56 >= *(v52 + 16))
    {
      goto LABEL_383;
    }

    v69 = *(v658 + 8 * v56++);
    v63 = v688;
    v65 = v687;
    v685 = v54;
    v66 = v686;
    switch(v69 >> 60)
    {
      case 1uLL:
        v84 = v56;
        v85 = *((v69 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v86 = *((v69 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

        v63 = sub_1AAF62ADC(v87, v85, v86);
        v64 = v88;
        v685 = v89;
        v62 = v90;
        v56 = v84;

        goto LABEL_5;
      case 2uLL:
        v625 = v56;
        sub_1AAD117A0((v69 & 0xFFFFFFFFFFFFFFFLL) + 16, &v707);
        v91 = *(&v707 + 1);
        v92 = *(*(&v707 + 1) + 16);

        v660 = v92;
        if (!v92)
        {
          v63 = v688;
          v685 = v54;
          v672 = v687;
          v673 = v686;
LABEL_371:
          sub_1AAF14C40(&v707);
          v65 = v672;
          v66 = v673;
          v56 = v625;
LABEL_6:
          v67 = v63;
          v68 = v685;
          v671 = CGRectUnion(v671, *(&v65 - 1));

          if (v56 == v55)
          {
          }

          continue;
        }

        v93 = 0;
        v659 = v91 + 32;
        v685 = v54;
        v672 = v687;
        v673 = v686;
        v63 = v688;
        v657 = v91;
        v655 = v69;
LABEL_19:
        if (v93 >= *(v91 + 16))
        {
          goto LABEL_382;
        }

        v100 = *(v659 + 8 * v93);
        v670 = v93 + 1;
        v94 = v688;
        v95 = v687;
        v96 = v54;
        v97 = v686;
        v679 = v63;
        switch(v100 >> 60)
        {
          case 1uLL:
            v129 = *((v100 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v130 = *((v100 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

            v94 = sub_1AAF62ADC(v131, v129, v130);
            v132 = v54;
            v134 = v133;
            v96 = v135;
            v137 = v136;
            v91 = v657;

            goto LABEL_282;
          case 2uLL:
            v645 = v100;
            sub_1AAD117A0((v100 & 0xFFFFFFFFFFFFFFFLL) + 16, &v704);
            v138 = *(&v704 + 1);
            v139 = *(*(&v704 + 1) + 16);

            v663 = v139;
            if (!v139)
            {
              v94 = v688;
              v96 = v54;
              v675 = v687;
              v676 = v686;
LABEL_324:
              sub_1AAF14C40(&v704);
              v95 = v675;
              v97 = v676;
              goto LABEL_18;
            }

            v140 = 0;
            v661 = v138;
            v662 = v138 + 32;
            v96 = v54;
            v675 = v687;
            v676 = v686;
            v94 = v688;
            while (2)
            {
              if (v140 < *(v138 + 16))
              {
                v157 = *(v662 + 8 * v140);
                v674 = v140 + 1;
                v147 = v688;
                v154 = v687;
                v155 = v54;
                v153 = v686;
                v680 = v94;
                v678 = v96;
                switch(v157 >> 60)
                {
                  case 1uLL:
                    v175 = *((v157 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                    v176 = *((v157 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

                    v147 = sub_1AAF62ADC(v177, v175, v176);
                    v148 = v178;
                    v149 = v54;
                    v150 = v179;
                    v151 = v180;
                    v91 = v657;

                    goto LABEL_50;
                  case 2uLL:
                    sub_1AAD117A0((v157 & 0xFFFFFFFFFFFFFFFLL) + 16, &v700);
                    v181 = *(&v700 + 1);
                    v182 = *(*(&v700 + 1) + 16);

                    v667 = v182;
                    if (v182)
                    {
                      v183 = 0;
                      v665 = v181;
                      v666 = v181 + 32;
                      v683 = v54;
                      v681 = v686;
                      v682 = v687;
                      v147 = v688;
                      v646 = v157;
                      while (1)
                      {
                        if (v183 >= *(v181 + 16))
                        {
                          goto LABEL_377;
                        }

                        v188 = *(v666 + 8 * v183++);
                        v184 = v688;
                        v185 = v687;
                        v186 = v54;
                        v187 = v686;
                        v684 = v147;
                        switch(v188 >> 60)
                        {
                          case 1uLL:
                            v202 = *((v188 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                            v203 = *((v188 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

                            v184 = sub_1AAF62ADC(v204, v202, v203);
                            v185 = v205;
                            v186 = v206;
                            v187 = v207;
                            v91 = v657;

                            goto LABEL_68;
                          case 2uLL:
                            sub_1AAD117A0((v188 & 0xFFFFFFFFFFFFFFFLL) + 16, &v696);
                            v208 = *(&v696 + 1);
                            v209 = *(*(&v696 + 1) + 16);

                            v669 = v209;
                            if (v209)
                            {
                              v210 = 0;
                              v668 = v208 + 32;
                              v187 = v686;
                              v186 = v54;
                              v185 = v687;
                              v184 = v688;
                              v211 = v208;
                              v664 = v208;
                              while (1)
                              {
                                if (v210 >= *(v211 + 16))
                                {
                                  goto LABEL_376;
                                }

                                v224 = *(v668 + 8 * v210++);
                                x = v688;
                                y = v687;
                                width = v54;
                                height = v686;
                                switch(v224 >> 60)
                                {
                                  case 1uLL:
                                    v229 = *((v224 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                                    v230 = *((v224 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

                                    x = sub_1AAF62ADC(v231, v229, v230);
                                    y = v232;
                                    width = v233;
                                    height = v234;
                                    v91 = v657;

                                    v211 = v664;

                                    goto LABEL_84;
                                  case 2uLL:
                                    sub_1AAD117A0((v224 & 0xFFFFFFFFFFFFFFFLL) + 16, &v689);
                                    v235 = *(&v689 + 1);
                                    v236 = *(*(&v689 + 1) + 16);

                                    if (v236)
                                    {
                                      v237 = 0;
                                      height = v686;
                                      width = v677;
                                      y = v687;
                                      x = v688;
                                      while (v237 < *(v235 + 16))
                                      {
                                        v238 = v237 + 1;
                                        v239 = *(v235 + 32 + 8 * v237);

                                        v737.origin.x = sub_1AAD0FB18(v239);
                                        v737.origin.y = v240;
                                        v737.size.width = v241;
                                        v737.size.height = v242;
                                        v733.origin.x = x;
                                        v733.origin.y = y;
                                        v733.size.width = width;
                                        v733.size.height = height;
                                        v734 = CGRectUnion(v733, v737);
                                        x = v734.origin.x;
                                        y = v734.origin.y;
                                        width = v734.size.width;
                                        height = v734.size.height;

                                        v237 = v238;
                                        if (v236 == v238)
                                        {
                                          goto LABEL_115;
                                        }
                                      }

                                      __break(1u);
LABEL_376:
                                      __break(1u);
LABEL_377:
                                      __break(1u);
LABEL_378:
                                      __break(1u);
                                      goto LABEL_379;
                                    }

                                    x = v688;
                                    y = v687;
                                    width = v677;
                                    height = v686;
LABEL_115:
                                    sub_1AAF14C40(&v689);
                                    v57 = &unk_1AAF9E000;
                                    v69 = v655;
                                    v91 = v657;
LABEL_116:
                                    v211 = v664;
LABEL_84:
                                    v731.origin.x = v184;
                                    v731.origin.y = v185;
                                    v731.size.width = v186;
                                    v731.size.height = v187;
                                    v736.origin.x = x;
                                    v736.origin.y = y;
                                    v736.size.width = width;
                                    v736.size.height = height;
                                    v732 = CGRectUnion(v731, v736);
                                    v184 = v732.origin.x;
                                    v185 = v732.origin.y;
                                    v186 = v732.size.width;
                                    v187 = v732.size.height;

                                    v54 = v677;
                                    v147 = v684;
                                    if (v210 == v669)
                                    {
                                      goto LABEL_148;
                                    }

                                    break;
                                  case 3uLL:
                                    v225 = v69;
                                    v226 = swift_projectBox();
                                    v227 = v641;
                                    sub_1AACAAD4C(v226, v641, type metadata accessor for SgPoint);
                                    sub_1AAD9ADE4(v227 + 48, &v689);
                                    if (v692)
                                    {
                                      width = *(&v689 + 1);
                                      height = *&v690;

                                      v211 = v664;

                                      x = *(v227 + 8) - width * 0.5;
                                      y = *(v227 + 16) - height * 0.5;
                                      v228 = v227;
                                    }

                                    else
                                    {
                                      v693 = v689;
                                      v694 = v690;
                                      v695 = v691;
                                      v273 = *(v227 + 24);
                                      if (*(v227 + 40) == 1)
                                      {
                                        height = *(v227 + 32);
                                        width = *(v227 + 24);

                                        sub_1AAE45A14(&v693);
                                        v228 = v641;
                                        x = *(v641 + 8) - width * 0.5;
                                        y = *(v641 + 16) - height * 0.5;
                                      }

                                      else
                                      {
                                        v274 = *(v227 + 8);
                                        v624 = *(v227 + 16);
                                        v275 = *(&v694 + 1);
                                        v276 = v695;
                                        v277 = sqrt(v273);

                                        sub_1AACBB42C(&v693, v275);
                                        v278 = v275;
                                        v91 = v657;
                                        v279 = (*(v276 + 16))(v278, v276);
                                        v211 = v664;
                                        width = v277 * v280;
                                        height = v277 * v281;
                                        x = v274 + v277 * (v279 + -0.5);
                                        y = v624 + v277 * (v282 + -0.5);
                                        sub_1AAE45A14(&v693);
                                        v228 = v641;
                                      }
                                    }

                                    sub_1AACAADB4(v228, type metadata accessor for SgPoint);
                                    v69 = v225;
                                    v57 = &unk_1AAF9E000;
                                    goto LABEL_84;
                                  case 4uLL:
                                    v252 = swift_projectBox();
                                    v213 = v651;
                                    sub_1AACAAD4C(v252, v651, type metadata accessor for SgRectangle);
                                    x = v213[1];
                                    y = v213[2];
                                    width = v213[3];
                                    height = v213[4];

                                    v222 = type metadata accessor for SgRectangle;
                                    goto LABEL_83;
                                  case 5uLL:
                                    v253 = swift_projectBox();
                                    v254 = v652;
                                    sub_1AACAAD4C(v253, v652, type metadata accessor for SgSector);
                                    v255 = vaddvq_f64(vmulq_f64(*(v254 + 24), xmmword_1AAFC7450));
                                    v256 = __sincos_stret(((*(v254 + 8) + *(v254 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
                                    x = v255 * v256.__cosval;
                                    y = v255 * v256.__sinval;
                                    v257 = (v254 + *(v653 + 52));
                                    v258 = v257[1];
                                    width = *v257 + *v257;

                                    v259 = v254;
                                    v211 = v664;
                                    sub_1AACAADB4(v259, type metadata accessor for SgSector);
                                    height = v258 + v258;
                                    goto LABEL_84;
                                  case 6uLL:
                                    v243 = swift_projectBox();
                                    v213 = v634;
                                    sub_1AACAAD4C(v243, v634, type metadata accessor for SgRule);
                                    v244 = v213[1];
                                    v245 = v213[2];
                                    v246 = v213[3];
                                    v247 = v213[4];
                                    if (v246 >= v244)
                                    {
                                      x = v213[1];
                                    }

                                    else
                                    {
                                      x = v213[3];
                                    }

                                    if (v247 >= v245)
                                    {
                                      y = v213[2];
                                    }

                                    else
                                    {
                                      y = v213[4];
                                    }

                                    width = vabdd_f64(v246, v244);
                                    height = vabdd_f64(v247, v245);

                                    v222 = type metadata accessor for SgRule;
                                    goto LABEL_83;
                                  case 7uLL:
                                    v268 = swift_projectBox();
                                    v213 = v649;
                                    sub_1AACAAD4C(v268, v649, type metadata accessor for SgLine);

                                    sub_1AAF56CF0();
                                    x = v269;
                                    y = v270;
                                    width = v271;
                                    height = v272;
                                    v222 = type metadata accessor for SgLine;
                                    goto LABEL_83;
                                  case 8uLL:
                                    v212 = swift_projectBox();
                                    v213 = v642;
                                    sub_1AACAAD4C(v212, v642, type metadata accessor for SgArea);

                                    sub_1AAF58424();
                                    x = v214;
                                    y = v216;
                                    width = v218;
                                    height = v220;
                                    v222 = type metadata accessor for SgArea;
                                    goto LABEL_83;
                                  case 9uLL:
                                    v260 = swift_projectBox();
                                    v261 = v647;
                                    sub_1AACAAD4C(v260, v647, type metadata accessor for SgPath);
                                    v262 = *(v261 + 24);
                                    v710 = *(v261 + 8);
                                    v711 = v262;
                                    v712 = *(v261 + 40);

                                    v263 = sub_1AAF8E8E4();
                                    x = v688;
                                    y = v687;
                                    width = v677;
                                    height = v686;
                                    if ((v263 & 1) == 0)
                                    {
                                      sub_1AAF8E874();
                                      x = v264;
                                      y = v265;
                                      width = v266;
                                      height = v267;
                                    }

                                    sub_1AACAADB4(v647, type metadata accessor for SgPath);
                                    goto LABEL_116;
                                  case 0xAuLL:
                                    width = *((v224 & 0xFFFFFFFFFFFFFFFLL) + 0x68);
                                    height = *((v224 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
                                    x = *((v224 & 0xFFFFFFFFFFFFFFFLL) + 0x18) - *((v224 & 0xFFFFFFFFFFFFFFFLL) + 0x28) * width;
                                    y = *((v224 & 0xFFFFFFFFFFFFFFFLL) + 0x20) - *((v224 & 0xFFFFFFFFFFFFFFFLL) + 0x30) * height;

                                    goto LABEL_84;
                                  case 0xBuLL:
                                  case 0xCuLL:
                                    x = *((v224 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                                    y = *((v224 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                                    width = *((v224 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                                    height = *((v224 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

                                    goto LABEL_84;
                                  case 0xDuLL:

                                    x = 0.0;
                                    y = 0.0;
                                    width = 0.0;
                                    height = 0.0;
                                    goto LABEL_84;
                                  case 0xEuLL:
                                    goto LABEL_84;
                                  default:
                                    v248 = swift_projectBox();
                                    v213 = v650;
                                    sub_1AACAAD4C(v248, v650, type metadata accessor for SgGroup);

                                    x = sub_1AAD05240();
                                    y = v249;
                                    width = v250;
                                    height = v251;
                                    v222 = type metadata accessor for SgGroup;
LABEL_83:
                                    v223 = v213;
                                    v211 = v664;
                                    sub_1AACAADB4(v223, v222);
                                    goto LABEL_84;
                                }
                              }
                            }

                            v184 = v688;
                            v185 = v687;
                            v186 = v54;
                            v187 = v686;
LABEL_148:
                            sub_1AAF14C40(&v696);
                            v55 = v656;
                            goto LABEL_68;
                          case 3uLL:
                            v189 = v69;
                            v190 = swift_projectBox();
                            v191 = v632;
                            sub_1AACAAD4C(v190, v632, type metadata accessor for SgPoint);
                            sub_1AAD9ADE4(v191 + 48, &v696);
                            if (v699)
                            {
                              v186 = *(&v696 + 1);
                              v187 = *&v697;

LABEL_137:
                              v316 = *(v191 + 16);
                              v184 = *(v191 + 8) - v186 * 0.5;
                              sub_1AACAADB4(v191, type metadata accessor for SgPoint);
                              v185 = v316 - v187 * 0.5;
                              v69 = v189;
                              goto LABEL_68;
                            }

                            v689 = v696;
                            v690 = v697;
                            v691 = v698;
                            if (*(v191 + 40) == 1)
                            {
                              v187 = *(v191 + 32);
                              v186 = *(v191 + 24);

                              sub_1AAE45A14(&v689);
                              goto LABEL_137;
                            }

                            v340 = *(v191 + 8);
                            v341 = *(v191 + 16);
                            v342 = *(&v690 + 1);
                            v343 = v691;
                            v344 = sqrt(*(v191 + 24));

                            sub_1AACBB42C(&v689, v342);
                            v345 = *(v343 + 16);
                            v346 = v342;
                            v347 = v343;
                            v55 = v656;
                            v91 = v657;
                            v348 = v345(v346, v347);
                            v350 = v349;
                            v352 = v351;
                            v354 = v353;
                            sub_1AACAADB4(v191, type metadata accessor for SgPoint);
                            v186 = v344 * v352;
                            v187 = v344 * v354;
                            v184 = v340 + v344 * (v348 + -0.5);
                            v355 = v350 + -0.5;
                            v54 = v677;
                            v356 = v344 * v355;
                            v147 = v684;
                            v185 = v341 + v356;
                            sub_1AAE45A14(&v689);
                            v69 = v189;
LABEL_68:
                            v729.origin.x = v147;
                            v729.origin.y = v682;
                            v729.size.width = v683;
                            v729.size.height = v681;
                            v735.origin.x = v184;
                            v735.origin.y = v185;
                            v735.size.width = v186;
                            v735.size.height = v187;
                            v730 = CGRectUnion(v729, v735);
                            v147 = v730.origin.x;
                            v682 = v730.origin.y;
                            v683 = v730.size.width;
                            v681 = v730.size.height;

                            v63 = v679;
                            v94 = v680;
                            v96 = v678;
                            v181 = v665;
                            if (v183 == v667)
                            {
                              goto LABEL_202;
                            }

                            break;
                          case 4uLL:
                            v294 = swift_projectBox();
                            v284 = v651;
                            sub_1AACAAD4C(v294, v651, type metadata accessor for SgRectangle);
                            v184 = v284[1];
                            v185 = v284[2];
                            v186 = v284[3];
                            v187 = v284[4];

                            v289 = type metadata accessor for SgRectangle;
                            goto LABEL_133;
                          case 5uLL:
                            v295 = swift_projectBox();
                            v296 = v652;
                            sub_1AACAAD4C(v295, v652, type metadata accessor for SgSector);
                            v297 = vaddvq_f64(vmulq_f64(*(v296 + 24), xmmword_1AAFC7450));
                            v298 = __sincos_stret(((*(v296 + 8) + *(v296 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
                            v184 = v297 * v298.__cosval;
                            v185 = v297 * v298.__sinval;
                            v299 = (v296 + *(v653 + 52));
                            v300 = v299[1];
                            v186 = *v299 + *v299;

                            sub_1AACAADB4(v296, type metadata accessor for SgSector);
                            v187 = v300 + v300;
                            goto LABEL_68;
                          case 6uLL:
                            v283 = swift_projectBox();
                            v284 = v633;
                            sub_1AACAAD4C(v283, v633, type metadata accessor for SgRule);
                            v285 = v284[1];
                            v286 = v284[2];
                            v287 = v284[3];
                            v288 = v284[4];
                            if (v287 >= v285)
                            {
                              v184 = v284[1];
                            }

                            else
                            {
                              v184 = v284[3];
                            }

                            if (v288 >= v286)
                            {
                              v185 = v284[2];
                            }

                            else
                            {
                              v185 = v284[4];
                            }

                            v186 = vabdd_f64(v287, v285);
                            v187 = vabdd_f64(v288, v286);

                            v289 = type metadata accessor for SgRule;
                            goto LABEL_133;
                          case 7uLL:
                            v311 = swift_projectBox();
                            v284 = v649;
                            sub_1AACAAD4C(v311, v649, type metadata accessor for SgLine);

                            sub_1AAF56CF0();
                            v184 = v312;
                            v185 = v313;
                            v186 = v314;
                            v187 = v315;
                            v289 = type metadata accessor for SgLine;
                            goto LABEL_133;
                          case 8uLL:
                            v192 = swift_projectBox();
                            v193 = v643;
                            sub_1AACAAD4C(v192, v643, type metadata accessor for SgArea);
                            v684 = *(v193 + 8);
                            v194 = *(*&v684 + 16);
                            v195 = MEMORY[0x1E69E7CC0];
                            *&v696 = MEMORY[0x1E69E7CC0];
                            v196 = *(v194 + 16);
                            if (v196)
                            {
                              sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

                              v197 = (v194 + 56);
                              do
                              {
                                v198 = *(v197 - 2);
                                v199 = *v197;
                                v197 += 5;
                                v200 = swift_allocObject();
                                *(v200 + 16) = v57[43];
                                *(v200 + 32) = v198;
                                *(v200 + 40) = v199;
                                sub_1AADC8F2C(v200);
                                --v196;
                              }

                              while (v196);

                              v195 = v696;
                            }

                            else
                            {
                            }

                            MEMORY[0x1EEE9AC00](v201);
                            sub_1AACC7228(0, &qword_1ED9B2A88, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
                            v669 = v317;
                            *(&v624 - 4) = v317;
                            v668 = sub_1AAE840B8();
                            *(&v624 - 3) = v668;
                            v318 = sub_1AAE971D0();
                            *(&v624 - 2) = v318;
                            swift_getKeyPath();
                            v319 = v654;
                            v320 = COERCE_DOUBLE(sub_1AAF894FC(v195, sub_1AAF68E40));
                            v322 = v321;
                            v324 = v323;
                            v654 = v319;

                            v184 = v688;
                            v185 = v687;
                            v186 = v54;
                            v187 = v686;
                            v69 = v655;
                            if (v324)
                            {
                              goto LABEL_152;
                            }

                            v184 = v320;
                            v325 = v322;
                            if (v320 > v322)
                            {
                              goto LABEL_399;
                            }

                            v326 = *(*&v684 + 16);
                            v327 = MEMORY[0x1E69E7CC0];
                            *&v696 = MEMORY[0x1E69E7CC0];
                            v328 = *(v326 + 16);
                            if (v328)
                            {
                              sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

                              v329 = (v326 + 64);
                              do
                              {
                                v330 = *(v329 - 2);
                                v331 = *v329;
                                v329 += 5;
                                v332 = swift_allocObject();
                                *(v332 + 16) = xmmword_1AAF9E2B0;
                                *(v332 + 32) = v330;
                                *(v332 + 40) = v331;
                                sub_1AADC8F2C(v332);
                                --v328;
                              }

                              while (v328);

                              v327 = v696;
                            }

                            MEMORY[0x1EEE9AC00](result);
                            v333 = v668;
                            *(&v624 - 4) = v669;
                            *(&v624 - 3) = v333;
                            *(&v624 - 2) = v318;
                            swift_getKeyPath();
                            v334 = v654;
                            v335 = COERCE_DOUBLE(sub_1AAF894FC(v327, sub_1AAF68E40));
                            v337 = v336;
                            v339 = v338;
                            v654 = v334;

                            if (v339)
                            {
                              v184 = v688;
                              v185 = v687;
                              v186 = v54;
                              v187 = v686;
                              v69 = v655;
                            }

                            else
                            {
                              v185 = v335;
                              v69 = v655;
                              if (v335 > v337)
                              {
                                goto LABEL_402;
                              }

                              v186 = v325 - v184;
                              v187 = v337 - v335;
                            }

LABEL_152:
                            sub_1AACAADB4(v643, type metadata accessor for SgArea);
                            v55 = v656;
                            v91 = v657;
                            v57 = &unk_1AAF9E000;
                            goto LABEL_68;
                          case 9uLL:
                            v301 = swift_projectBox();
                            v302 = v644;
                            sub_1AACAAD4C(v301, v644, type metadata accessor for SgPath);
                            v303 = *(v302 + 24);
                            v713 = *(v302 + 8);
                            v714 = v303;
                            v715 = *(v302 + 40);

                            v304 = sub_1AAF8E8E4();
                            v184 = v688;
                            v185 = v687;
                            v186 = v54;
                            v187 = v686;
                            if ((v304 & 1) == 0)
                            {
                              sub_1AAF8E874();
                              v184 = v305;
                              v185 = v306;
                              v186 = v307;
                              v187 = v308;
                            }

                            v309 = type metadata accessor for SgPath;
                            v310 = v644;
                            goto LABEL_134;
                          case 0xAuLL:
                            v186 = *((v188 & 0xFFFFFFFFFFFFFFFLL) + 0x68);
                            v187 = *((v188 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
                            v184 = *((v188 & 0xFFFFFFFFFFFFFFFLL) + 0x18) - *((v188 & 0xFFFFFFFFFFFFFFFLL) + 0x28) * v186;
                            v185 = *((v188 & 0xFFFFFFFFFFFFFFFLL) + 0x20) - *((v188 & 0xFFFFFFFFFFFFFFFLL) + 0x30) * v187;

                            goto LABEL_68;
                          case 0xBuLL:
                          case 0xCuLL:
                            v184 = *((v188 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                            v185 = *((v188 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                            v186 = *((v188 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                            v187 = *((v188 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

                            goto LABEL_68;
                          case 0xDuLL:

                            v184 = 0.0;
                            v185 = 0.0;
                            v186 = 0.0;
                            v187 = 0.0;
                            goto LABEL_68;
                          case 0xEuLL:
                            goto LABEL_68;
                          default:
                            v290 = swift_projectBox();
                            v284 = v650;
                            sub_1AACAAD4C(v290, v650, type metadata accessor for SgGroup);

                            v184 = sub_1AAD05240();
                            v185 = v291;
                            v186 = v292;
                            v187 = v293;
                            v289 = type metadata accessor for SgGroup;
LABEL_133:
                            v309 = v289;
                            v310 = v284;
LABEL_134:
                            sub_1AACAADB4(v310, v309);
                            goto LABEL_68;
                        }
                      }
                    }

                    v147 = v688;
                    v682 = v687;
                    v683 = v54;
                    v681 = v686;
LABEL_202:
                    sub_1AAF14C40(&v700);
                    v52 = v648;
                    v154 = v682;
                    v155 = v683;
                    v153 = v681;
                    goto LABEL_51;
                  case 3uLL:
                    v158 = v69;
                    v159 = swift_projectBox();
                    v160 = v630;
                    sub_1AACAAD4C(v159, v630, type metadata accessor for SgPoint);
                    sub_1AAD9ADE4(v160 + 48, &v700);
                    if (v703)
                    {
                      v161 = v54;
                      v162 = *(&v700 + 1);
                      v163 = *&v701;

                      v164 = *(v160 + 16);
                      v147 = *(v160 + 8) - v162 * 0.5;
                      sub_1AACAADB4(v160, type metadata accessor for SgPoint);
                      v153 = v163;
                      v155 = v162;
                      v54 = v161;
                      v96 = v678;
                      v154 = v164 - v163 * 0.5;
                      v94 = v680;
                      v69 = v158;
                    }

                    else
                    {
                      v696 = v700;
                      v697 = v701;
                      v698 = v702;
                      if (*(v160 + 40) == 1)
                      {
                        v392 = *(v160 + 32);
                        v393 = v54;
                        v394 = *(v160 + 24);

                        sub_1AAE45A14(&v696);
                        v395 = *(v160 + 16);
                        v147 = *(v160 + 8) - v394 * 0.5;
                        sub_1AACAADB4(v160, type metadata accessor for SgPoint);
                        v153 = v392;
                        v155 = v394;
                        v54 = v393;
                        v154 = v395 - v392 * 0.5;
                      }

                      else
                      {
                        v429 = *(v160 + 8);
                        v428 = *(v160 + 16);
                        v430 = *(&v697 + 1);
                        v431 = v698;
                        v432 = sqrt(*(v160 + 24));

                        sub_1AACBB42C(&v696, v430);
                        v433 = *(v431 + 16);
                        v434 = v430;
                        v435 = v431;
                        v55 = v656;
                        v91 = v657;
                        v436 = v433(v434, v435);
                        v438 = v437;
                        v440 = v439;
                        v442 = v441;
                        sub_1AACAADB4(v160, type metadata accessor for SgPoint);
                        v443 = v432 * v440;
                        v63 = v679;
                        v444 = v432 * v442;
                        v445 = v429 + v432 * (v436 + -0.5);
                        v446 = v677;
                        v447 = v432 * (v438 + -0.5);
                        v147 = v445;
                        v448 = v428 + v447;
                        sub_1AAE45A14(&v696);
                        v153 = v444;
                        v154 = v448;
                        v155 = v443;
                        v54 = v446;
                      }

                      v69 = v158;
                      v94 = v680;
                      v96 = v678;
                    }

                    goto LABEL_51;
                  case 4uLL:
                    v361 = swift_projectBox();
                    v142 = v651;
                    sub_1AACAAD4C(v361, v651, type metadata accessor for SgRectangle);
                    v147 = v142[1];
                    v148 = v142[2];
                    v149 = v54;
                    v150 = v142[3];
                    v151 = v142[4];

                    v152 = type metadata accessor for SgRectangle;
                    goto LABEL_49;
                  case 5uLL:
                    v362 = swift_projectBox();
                    v363 = v652;
                    sub_1AACAAD4C(v362, v652, type metadata accessor for SgSector);
                    v364 = vaddvq_f64(vmulq_f64(*(v363 + 24), xmmword_1AAFC7450));
                    v365 = __sincos_stret(((*(v363 + 8) + *(v363 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
                    v147 = v364 * v365.__cosval;
                    v366 = v364 * v365.__sinval;
                    v367 = (v363 + *(v653 + 52));
                    v368 = v367[1];
                    v369 = v54;
                    v370 = *v367 + *v367;

                    sub_1AACAADB4(v363, type metadata accessor for SgSector);
                    v154 = v366;
                    v155 = v370;
                    v54 = v369;
                    v153 = v368 + v368;
                    v94 = v680;
                    goto LABEL_51;
                  case 6uLL:
                    v141 = swift_projectBox();
                    v142 = v631;
                    sub_1AACAAD4C(v141, v631, type metadata accessor for SgRule);
                    v143 = v142[1];
                    v144 = v142[2];
                    v145 = v142[3];
                    v146 = v142[4];
                    if (v145 >= v143)
                    {
                      v147 = v142[1];
                    }

                    else
                    {
                      v147 = v142[3];
                    }

                    if (v146 >= v144)
                    {
                      v148 = v142[2];
                    }

                    else
                    {
                      v148 = v142[4];
                    }

                    v149 = v54;
                    v150 = vabdd_f64(v145, v143);
                    v151 = vabdd_f64(v146, v144);

                    v152 = type metadata accessor for SgRule;
                    goto LABEL_49;
                  case 7uLL:
                    v382 = swift_projectBox();
                    v383 = v638;
                    sub_1AACAAD4C(v382, v638, type metadata accessor for SgLine);
                    v384 = *(v383 + 8);
                    swift_beginAccess();
                    v385 = *(v384 + 16);
                    v386 = *(v385 + 16);
                    if (v386)
                    {
                      *&v696 = MEMORY[0x1E69E7CC0];

                      sub_1AAD1FAF4(0, v386, 0);
                      v387 = v696;
                      v388 = v385 + 32;
                      do
                      {
                        sub_1AAE5EDF4(v388, &v700);
                        v389 = *(&v700 + 1);
                        sub_1AAE5EE50(&v700);
                        *&v696 = v387;
                        v391 = *(v387 + 16);
                        v390 = *(v387 + 24);
                        if (v391 >= v390 >> 1)
                        {
                          sub_1AAD1FAF4((v390 > 1), v391 + 1, 1);
                          v387 = v696;
                        }

                        *(v387 + 16) = v391 + 1;
                        *(v387 + 8 * v391 + 32) = v389;
                        v388 += 96;
                        --v386;
                      }

                      while (v386);

                      v55 = v656;
                      v91 = v657;
                      v94 = v680;
                    }

                    else
                    {

                      v387 = MEMORY[0x1E69E7CC0];
                    }

                    v413 = 0;
                    v414 = *(v387 + 16);
                    v415 = 1;
                    v52 = v648;
                    do
                    {
                      if (v414 == v413)
                      {

                        v147 = v688;
                        v411 = v687;
                        v412 = v686;
                        v69 = v655;
                        goto LABEL_265;
                      }

                      v416 = v415;
                      v417 = v387 + 8 * v413++;
                      v147 = *(v417 + 32);
                      v415 = v416 + 1;
                    }

                    while ((*&v147 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL);
                    do
                    {
                      if (v414 == v416)
                      {

                        v423 = v147;
                        v422 = MEMORY[0x1E69E7CC0];
                        goto LABEL_252;
                      }

                      v418 = v416 + 1;
                      if (__OFADD__(v416, 1))
                      {
                        goto LABEL_384;
                      }

                      v419 = *(v387 + 8 * v416++ + 32);
                    }

                    while ((*&v419 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL);
                    if (v419 >= v147)
                    {
                      v420 = v419;
                    }

                    else
                    {
                      v420 = v147;
                    }

                    if (v419 < v147)
                    {
                      v147 = v419;
                    }

                    v421 = v147;
                    v422 = MEMORY[0x1E69E7CC0];
LABEL_216:
                    v423 = v420;
LABEL_217:
                    v424 = v418 + 1;
                    while (v414 != v418)
                    {
                      if (v418 >= v414)
                      {
                        goto LABEL_387;
                      }

                      if (__OFADD__(v418, 1))
                      {
                        goto LABEL_389;
                      }

                      v425 = v424;
                      v426 = *(v387 + 8 * v418++ + 32);
                      ++v424;
                      if ((*&v426 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                      {
                        while (v414 != v425)
                        {
                          v418 = v425 + 1;
                          if (__OFADD__(v425, 1))
                          {
                            goto LABEL_396;
                          }

                          v427 = *(v387 + 32 + 8 * v425++);
                          if ((*&v427 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                          {
                            goto LABEL_227;
                          }
                        }

                        v418 = *(v387 + 16);
                        v427 = v426;
LABEL_227:
                        if (v427 >= v426)
                        {
                          v420 = v427;
                        }

                        else
                        {
                          v420 = v426;
                        }

                        if (v427 < v426)
                        {
                          v426 = v427;
                        }

                        if (v426 < v421)
                        {
                          v147 = v426;
                          v421 = v426;
                        }

                        if (v420 < v423)
                        {
                          goto LABEL_217;
                        }

                        goto LABEL_216;
                      }
                    }

                    if (v147 > v423)
                    {
                      goto LABEL_401;
                    }

LABEL_252:
                    v464 = *(v384 + 16);
                    v465 = *(v464 + 16);
                    if (v465)
                    {
                      *&v696 = v422;

                      sub_1AAF67208(v465);
                      v466 = v464 + 32;
                      v467 = v696;
                      do
                      {
                        sub_1AAE5EDF4(v466, &v700);
                        v468 = v701;
                        sub_1AAE5EE50(&v700);
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          sub_1AAD1FAF4(0, *(v467 + 16) + 1, 1);
                          v467 = v696;
                        }

                        v470 = *(v467 + 16);
                        v469 = *(v467 + 24);
                        if (v470 >= v469 >> 1)
                        {
                          sub_1AAD1FAF4((v469 > 1), v470 + 1, 1);
                          v467 = v696;
                        }

                        *(v467 + 16) = v470 + 1;
                        *(v467 + 8 * v470 + 32) = v468;
                        v466 += 96;
                        --v465;
                      }

                      while (v465);

                      v96 = v678;
                    }

                    else
                    {
                      v467 = v422;
                    }

                    MEMORY[0x1EEE9AC00](result);
                    sub_1AACC7228(0, &qword_1ED9B2A88, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
                    *(&v624 - 4) = v471;
                    *(&v624 - 3) = sub_1AAE840B8();
                    *(&v624 - 2) = sub_1AAE971D0();
                    swift_getKeyPath();
                    v472 = v654;
                    v473 = COERCE_DOUBLE(sub_1AAF894FC(v467, sub_1AAF68E40));
                    v475 = v474;
                    v477 = v476;
                    v654 = v472;

                    if (v477)
                    {
                      v147 = v688;
                      v411 = v687;
                      v412 = v686;
                      v52 = v648;
                      v69 = v655;
                      v55 = v656;
                      v91 = v657;
                      v94 = v680;
                    }

                    else
                    {
                      v69 = v655;
                      if (v473 > v475)
                      {
                        goto LABEL_404;
                      }

                      v54 = v423 - v147;
                      v411 = v473;
                      v412 = v475 - v473;
                      v52 = v648;
                      v55 = v656;
                      v91 = v657;
                      v94 = v680;
                    }

LABEL_265:
                    v462 = type metadata accessor for SgLine;
                    v463 = v638;
LABEL_266:
                    sub_1AACAADB4(v463, v462);
                    v155 = v54;
                    v54 = v677;
                    v154 = v411;
                    v153 = v412;
LABEL_51:
                    v727.origin.x = v94;
                    v727.origin.y = v675;
                    v727.size.height = v676;
                    v727.size.width = v96;
                    v156 = v147;
                    v728 = CGRectUnion(v727, *(&v154 - 1));
                    v94 = v728.origin.x;
                    v675 = v728.origin.y;
                    v676 = v728.size.height;
                    v96 = v728.size.width;

                    v140 = v674;
                    v138 = v661;
                    if (v674 != v663)
                    {
                      continue;
                    }

                    goto LABEL_324;
                  case 8uLL:
                    v165 = swift_projectBox();
                    v166 = v639;
                    sub_1AACAAD4C(v165, v639, type metadata accessor for SgArea);
                    v167 = *(v166 + 8);
                    v168 = *(v167 + 16);
                    v169 = MEMORY[0x1E69E7CC0];
                    *&v700 = MEMORY[0x1E69E7CC0];
                    v170 = *(v168 + 16);
                    if (v170)
                    {
                      sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

                      v171 = (v168 + 56);
                      do
                      {
                        v172 = *(v171 - 2);
                        v173 = *v171;
                        v171 += 5;
                        v174 = swift_allocObject();
                        *(v174 + 16) = v57[43];
                        *(v174 + 32) = v172;
                        *(v174 + 40) = v173;
                        sub_1AADC8F2C(v174);
                        --v170;
                      }

                      while (v170);

                      result = v700;
                      v52 = v648;
                      v55 = v656;
                      v94 = v680;
                      v96 = v678;
                    }

                    else
                    {

                      result = v169;
                    }

                    v396 = 0;
                    v397 = *(result + 16);
                    v398 = 1;
                    v91 = v657;
                    do
                    {
                      if (v397 == v396)
                      {

                        v147 = v688;
                        v411 = v687;
                        v412 = v686;
                        v69 = v655;
                        goto LABEL_250;
                      }

                      v399 = v398;
                      v400 = result + 8 * v396++;
                      v147 = *(v400 + 32);
                      v398 = v399 + 1;
                    }

                    while ((*&v147 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL);
                    do
                    {
                      if (v397 == v399)
                      {

                        v406 = v147;
                        v405 = MEMORY[0x1E69E7CC0];
                        goto LABEL_242;
                      }

                      v401 = v399 + 1;
                      if (__OFADD__(v399, 1))
                      {
                        goto LABEL_385;
                      }

                      v402 = *(result + 8 * v399++ + 32);
                    }

                    while ((*&v402 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL);
                    if (v402 >= v147)
                    {
                      v403 = v402;
                    }

                    else
                    {
                      v403 = v147;
                    }

                    if (v402 < v147)
                    {
                      v147 = v402;
                    }

                    v404 = v147;
                    v405 = MEMORY[0x1E69E7CC0];
LABEL_180:
                    v406 = v403;
LABEL_181:
                    v407 = v401 + 1;
                    while (v397 != v401)
                    {
                      if (v401 >= v397)
                      {
                        goto LABEL_386;
                      }

                      if (__OFADD__(v401, 1))
                      {
                        goto LABEL_388;
                      }

                      v408 = v407;
                      v409 = *(result + 8 * v401++ + 32);
                      ++v407;
                      if ((*&v409 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                      {
                        while (v397 != v408)
                        {
                          v401 = v408 + 1;
                          if (__OFADD__(v408, 1))
                          {
                            goto LABEL_397;
                          }

                          v410 = *(result + 32 + 8 * v408++);
                          if ((*&v410 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                          {
                            goto LABEL_191;
                          }
                        }

                        v401 = *(result + 16);
                        v410 = v409;
LABEL_191:
                        if (v410 >= v409)
                        {
                          v403 = v410;
                        }

                        else
                        {
                          v403 = v409;
                        }

                        if (v410 < v409)
                        {
                          v409 = v410;
                        }

                        if (v409 < v404)
                        {
                          v147 = v409;
                          v404 = v409;
                        }

                        if (v403 < v406)
                        {
                          goto LABEL_181;
                        }

                        goto LABEL_180;
                      }
                    }

                    if (v147 > v406)
                    {
                      goto LABEL_400;
                    }

LABEL_242:
                    v449 = *(v167 + 16);
                    *&v700 = v405;
                    v450 = *(v449 + 16);
                    if (v450)
                    {
                      sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

                      v451 = (v449 + 64);
                      do
                      {
                        v452 = *(v451 - 2);
                        v453 = *v451;
                        v451 += 5;
                        v454 = swift_allocObject();
                        *(v454 + 16) = v57[43];
                        *(v454 + 32) = v452;
                        *(v454 + 40) = v453;
                        sub_1AADC8F2C(v454);
                        --v450;
                      }

                      while (v450);

                      v405 = v700;
                      v96 = v678;
                      v63 = v679;
                    }

                    MEMORY[0x1EEE9AC00](result);
                    sub_1AACC7228(0, &qword_1ED9B2A88, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
                    *(&v624 - 4) = v455;
                    *(&v624 - 3) = sub_1AAE840B8();
                    *(&v624 - 2) = sub_1AAE971D0();
                    swift_getKeyPath();
                    v456 = v654;
                    v457 = COERCE_DOUBLE(sub_1AAF894FC(v405, sub_1AAF68E40));
                    v459 = v458;
                    v461 = v460;
                    v654 = v456;

                    if (v461)
                    {
                      v147 = v688;
                      v411 = v687;
                      v412 = v686;
                      v52 = v648;
                      v69 = v655;
                      v55 = v656;
                      v91 = v657;
                      v94 = v680;
                    }

                    else
                    {
                      v69 = v655;
                      if (v457 > v459)
                      {
                        goto LABEL_403;
                      }

                      v54 = v406 - v147;
                      v411 = v457;
                      v412 = v459 - v457;
                      v52 = v648;
                      v55 = v656;
                      v91 = v657;
                      v94 = v680;
                    }

LABEL_250:
                    v462 = type metadata accessor for SgArea;
                    v463 = v639;
                    goto LABEL_266;
                  case 9uLL:
                    v371 = swift_projectBox();
                    v372 = v640;
                    sub_1AACAAD4C(v371, v640, type metadata accessor for SgPath);
                    v373 = *(v372 + 24);
                    v716 = *(v372 + 8);
                    v717 = v373;
                    v718 = *(v372 + 40);

                    v374 = sub_1AAF8E8E4();
                    v147 = v688;
                    v375 = v687;
                    v376 = v54;
                    v377 = v686;
                    if ((v374 & 1) == 0)
                    {
                      sub_1AAF8E874();
                      v147 = v378;
                    }

                    v379 = v376;
                    v380 = v375;
                    v381 = v377;
                    sub_1AACAADB4(v640, type metadata accessor for SgPath);
                    v153 = v381;
                    v154 = v380;
                    v155 = v379;
                    v54 = v677;
                    goto LABEL_51;
                  case 0xAuLL:
                    v149 = v54;
                    v150 = *((v157 & 0xFFFFFFFFFFFFFFFLL) + 0x68);
                    v151 = *((v157 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
                    v147 = *((v157 & 0xFFFFFFFFFFFFFFFLL) + 0x18) - *((v157 & 0xFFFFFFFFFFFFFFFLL) + 0x28) * v150;
                    v148 = *((v157 & 0xFFFFFFFFFFFFFFFLL) + 0x20) - *((v157 & 0xFFFFFFFFFFFFFFFLL) + 0x30) * v151;
                    goto LABEL_57;
                  case 0xBuLL:
                  case 0xCuLL:
                    v147 = *((v157 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                    v148 = *((v157 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                    v149 = v54;
                    v150 = *((v157 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                    v151 = *((v157 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
LABEL_57:

                    goto LABEL_50;
                  case 0xDuLL:

                    v147 = 0.0;
                    v154 = 0.0;
                    v155 = 0.0;
                    v153 = 0.0;
                    goto LABEL_51;
                  case 0xEuLL:
                    goto LABEL_51;
                  default:
                    v357 = swift_projectBox();
                    v142 = v650;
                    sub_1AACAAD4C(v357, v650, type metadata accessor for SgGroup);

                    v147 = sub_1AAD05240();
                    v148 = v358;
                    v149 = v54;
                    v150 = v359;
                    v151 = v360;
                    v152 = type metadata accessor for SgGroup;
LABEL_49:
                    sub_1AACAADB4(v142, v152);
LABEL_50:
                    v153 = v151;
                    v154 = v148;
                    v155 = v150;
                    v54 = v149;
                    goto LABEL_51;
                }
              }

              goto LABEL_381;
            }

          case 3uLL:
            v104 = v69;
            v105 = swift_projectBox();
            v106 = v628;
            sub_1AACAAD4C(v105, v628, type metadata accessor for SgPoint);
            sub_1AAD9ADE4(v106 + 48, &v700);
            if (v703)
            {
              v107 = *(&v700 + 1);
              v108 = *&v701;

              v109 = *(v106 + 16);
              v110 = *(v106 + 8) - v107 * 0.5;
              sub_1AACAADB4(v106, type metadata accessor for SgPoint);
              v97 = v108;
              v95 = v109 - v108 * 0.5;
              v94 = v110;
              v96 = v107;
              v69 = v104;
            }

            else
            {
              v704 = v700;
              v705 = v701;
              v706 = v702;
              if (*(v106 + 40) == 1)
              {
                v514 = *(v106 + 32);
                v96 = *(v106 + 24);

                sub_1AAE45A14(&v704);
                v515 = *(v106 + 16);
                v516 = *(v106 + 8) - v96 * 0.5;
                sub_1AACAADB4(v106, type metadata accessor for SgPoint);
                v97 = v514;
                v95 = v515 - v514 * 0.5;
                v94 = v516;
              }

              else
              {
                v534 = *(v106 + 8);
                v535 = *(v106 + 16);
                v536 = *(&v705 + 1);
                v537 = v706;
                v538 = sqrt(*(v106 + 24));

                sub_1AACBB42C(&v704, v536);
                v539 = *(v537 + 16);
                v540 = v536;
                v541 = v537;
                v55 = v656;
                v91 = v657;
                v542 = v539(v540, v541);
                v544 = v543;
                v546 = v545;
                v548 = v547;
                sub_1AACAADB4(v106, type metadata accessor for SgPoint);
                v549 = v538 * v546;
                v63 = v679;
                v94 = v534 + v538 * (v542 + -0.5);
                v550 = v677;
                v551 = v544 + -0.5;
                v96 = v549;
                v552 = v535 + v538 * v551;
                sub_1AAE45A14(&v704);
                v95 = v552;
                v54 = v550;
                v97 = v538 * v548;
              }

              v69 = v104;
            }

            goto LABEL_18;
          case 4uLL:
            v489 = swift_projectBox();
            v479 = v651;
            sub_1AACAAD4C(v489, v651, type metadata accessor for SgRectangle);
            v132 = v54;
            v94 = *(v479 + 8);
            v134 = *(v479 + 16);
            v96 = *(v479 + 24);
            v137 = *(v479 + 32);

            v484 = type metadata accessor for SgRectangle;
            goto LABEL_281;
          case 5uLL:
            v490 = swift_projectBox();
            v491 = v652;
            sub_1AACAAD4C(v490, v652, type metadata accessor for SgSector);
            v492 = vaddvq_f64(vmulq_f64(*(v491 + 24), xmmword_1AAFC7450));
            v493 = __sincos_stret(((*(v491 + 8) + *(v491 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
            v494 = v492 * v493.__cosval;
            v495 = v54;
            v496 = v492 * v493.__sinval;
            v497 = (v491 + *(v653 + 52));
            v498 = v497[1];
            v96 = *v497 + *v497;

            sub_1AACAADB4(v491, type metadata accessor for SgSector);
            v95 = v496;
            v54 = v495;
            v97 = v498 + v498;
            v94 = v494;
            goto LABEL_18;
          case 6uLL:
            v478 = swift_projectBox();
            v479 = v629;
            sub_1AACAAD4C(v478, v629, type metadata accessor for SgRule);
            v480 = *(v479 + 8);
            v481 = *(v479 + 16);
            v482 = *(v479 + 24);
            v483 = *(v479 + 32);
            if (v482 >= v480)
            {
              v94 = *(v479 + 8);
            }

            else
            {
              v94 = *(v479 + 24);
            }

            v132 = v54;
            if (v483 >= v481)
            {
              v134 = *(v479 + 16);
            }

            else
            {
              v134 = *(v479 + 32);
            }

            v96 = vabdd_f64(v482, v480);
            v137 = vabdd_f64(v483, v481);

            v484 = type metadata accessor for SgRule;
            goto LABEL_281;
          case 7uLL:
            v509 = swift_projectBox();
            v479 = v649;
            sub_1AACAAD4C(v509, v649, type metadata accessor for SgLine);

            sub_1AAF56CF0();
            v94 = v510;
            v132 = v54;
            v134 = v511;
            v96 = v512;
            v137 = v513;
            v484 = type metadata accessor for SgLine;
            goto LABEL_281;
          case 8uLL:
            v111 = v100;
            v112 = swift_projectBox();
            v113 = v636;
            sub_1AACAAD4C(v112, v636, type metadata accessor for SgArea);
            v684 = *(v113 + 8);
            v114 = *(*&v684 + 16);
            v115 = *(v114 + 16);
            v645 = v111;
            if (!v115)
            {

              v117 = MEMORY[0x1E69E7CC0];
LABEL_287:
              v517 = 0;
              v518 = *(v117 + 16);
              v519 = 1;
              v91 = v657;
              while (v518 != v517)
              {
                v520 = v519;
                v521 = v117 + 8 * v517++;
                v522 = *(v521 + 32);
                v519 = v520 + 1;
                if ((*&v522 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  while (v518 != v520)
                  {
                    v523 = v520 + 1;
                    if (__OFADD__(v520, 1))
                    {
                      goto LABEL_390;
                    }

                    v524 = *(v117 + 8 * v520++ + 32);
                    if ((*&v524 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                    {
                      if (v524 >= v522)
                      {
                        v525 = v524;
                      }

                      else
                      {
                        v525 = v522;
                      }

                      if (v524 < v522)
                      {
                        v522 = v524;
                      }

                      v680 = v522;
                      v526 = v522;
LABEL_299:
                      v522 = v525;
LABEL_300:
                      v527 = v523 + 1;
                      while (v518 != v523)
                      {
                        if (v523 >= v518)
                        {
                          goto LABEL_391;
                        }

                        if (__OFADD__(v523, 1))
                        {
                          goto LABEL_392;
                        }

                        v528 = v527;
                        v529 = *(v117 + 8 * v523++ + 32);
                        ++v527;
                        if ((*&v529 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                        {
                          while (v518 != v528)
                          {
                            v523 = v528 + 1;
                            if (__OFADD__(v528, 1))
                            {
                              goto LABEL_398;
                            }

                            v530 = *(v117 + 32 + 8 * v528++);
                            if ((*&v530 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                            {
                              goto LABEL_310;
                            }
                          }

                          v523 = v518;
                          v530 = v529;
LABEL_310:
                          if (v530 >= v529)
                          {
                            v525 = v530;
                          }

                          else
                          {
                            v525 = v529;
                          }

                          if (v530 < v529)
                          {
                            v529 = v530;
                          }

                          v531 = v680;
                          if (v529 < v526)
                          {
                            v531 = v529;
                          }

                          v680 = v531;
                          if (v529 < v526)
                          {
                            v526 = v529;
                          }

                          if (v525 < v522)
                          {
                            goto LABEL_300;
                          }

                          goto LABEL_299;
                        }
                      }

                      LOBYTE(v700) = 0;

                      if (v700)
                      {
                        goto LABEL_322;
                      }

LABEL_329:
                      if (v680 > v522)
                      {
                        goto LABEL_405;
                      }

                      v553 = *(*&v684 + 16);
                      v554 = *(v553 + 16);
                      if (v554)
                      {
                        sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

                        v555 = (v553 + 64);
                        v556 = MEMORY[0x1E69E7CC0];
                        do
                        {
                          v557 = *(v555 - 2);
                          v558 = *v555;
                          result = swift_allocObject();
                          *(result + 32) = v557;
                          v559 = (result + 32);
                          *(result + 40) = v558;
                          v560 = *(v556 + 16);
                          v561 = v560 + 2;
                          if (__OFADD__(v560, 2))
                          {
                            goto LABEL_393;
                          }

                          result = swift_isUniquelyReferenced_nonNull_native();
                          if (!result || (v562 = *(v556 + 24) >> 1, v562 < v561))
                          {
                            if (v560 <= v561)
                            {
                              v563 = v560 + 2;
                            }

                            else
                            {
                              v563 = v560;
                            }

                            result = sub_1AAD69810(result, v563, 1, v556);
                            v556 = result;
                            v562 = *(result + 24) >> 1;
                          }

                          v57 = &unk_1AAF9E000;
                          v63 = v679;
                          v564 = *(v556 + 16);
                          if (v562 - v564 < 2)
                          {
                            goto LABEL_394;
                          }

                          *(v556 + 8 * v564 + 32) = *v559;
                          swift_setDeallocating();
                          result = swift_deallocClassInstance();
                          v565 = *(v556 + 16);
                          v127 = __OFADD__(v565, 2);
                          v566 = v565 + 2;
                          if (v127)
                          {
                            goto LABEL_395;
                          }

                          *(v556 + 16) = v566;
                          v555 += 5;
                          --v554;
                        }

                        while (v554);
                      }

                      else
                      {
                        v556 = MEMORY[0x1E69E7CC0];
                      }

                      MEMORY[0x1EEE9AC00](result);
                      sub_1AACC7228(0, &qword_1ED9B2A88, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
                      *(&v624 - 4) = v567;
                      *(&v624 - 3) = sub_1AAE840B8();
                      *(&v624 - 2) = sub_1AAE971D0();
                      swift_getKeyPath();
                      v568 = v654;
                      v569 = COERCE_DOUBLE(sub_1AAF894FC(v556, sub_1AAF68E40));
                      v571 = v570;
                      v573 = v572;
                      v654 = v568;

                      if (v573)
                      {
                        v94 = v688;
                        v96 = v54;
                        v532 = v687;
                        v533 = v686;
                        v52 = v648;
                        v69 = v655;
                        v55 = v656;
                        goto LABEL_348;
                      }

                      v69 = v655;
                      if (v569 > v571)
                      {
                        goto LABEL_406;
                      }

                      v96 = v522 - v680;
                      v94 = v680;
                      v532 = v569;
                      v533 = v571 - v569;
                      v52 = v648;
                      v55 = v656;
LABEL_348:
                      v91 = v657;
LABEL_349:
                      sub_1AACAADB4(v636, type metadata accessor for SgArea);
                      v97 = v533;
                      v95 = v532;
LABEL_350:
                      v54 = v677;
LABEL_18:
                      v725.origin.x = v63;
                      v725.origin.y = v672;
                      v725.size.height = v673;
                      v725.size.width = v685;
                      v98 = v94;
                      v99 = v96;
                      v726 = CGRectUnion(v725, *(&v95 - 1));
                      v63 = v726.origin.x;
                      v672 = v726.origin.y;
                      v673 = v726.size.height;
                      v685 = v726.size.width;

                      v93 = v670;
                      if (v670 == v660)
                      {
                        goto LABEL_371;
                      }

                      goto LABEL_19;
                    }
                  }

                  LOBYTE(v700) = 0;

                  v680 = v522;
                  if ((v700 & 1) == 0)
                  {
                    goto LABEL_329;
                  }

LABEL_322:
                  v94 = v688;
                  v96 = v54;
                  v532 = v687;
                  v533 = v686;
                  goto LABEL_349;
                }
              }

              goto LABEL_322;
            }

            sub_1AACC7228(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);

            v116 = (v114 + 56);
            v117 = MEMORY[0x1E69E7CC0];
            while (1)
            {
              v118 = *(v116 - 2);
              v119 = *v116;
              result = swift_allocObject();
              *(result + 32) = v118;
              v120 = (result + 32);
              *(result + 40) = v119;
              v121 = *(v117 + 16);
              v122 = v121 + 2;
              if (__OFADD__(v121, 2))
              {
                goto LABEL_378;
              }

              result = swift_isUniquelyReferenced_nonNull_native();
              if (!result || (v123 = *(v117 + 24) >> 1, v123 < v122))
              {
                if (v121 <= v122)
                {
                  v124 = v121 + 2;
                }

                else
                {
                  v124 = v121;
                }

                result = sub_1AAD69810(result, v124, 1, v117);
                v117 = result;
                v123 = *(result + 24) >> 1;
              }

              v125 = *(v117 + 16);
              if (v123 - v125 < 2)
              {
                break;
              }

              *(v117 + 8 * v125 + 32) = *v120;
              swift_setDeallocating();
              result = swift_deallocClassInstance();
              v126 = *(v117 + 16);
              v127 = __OFADD__(v126, 2);
              v128 = v126 + 2;
              if (v127)
              {
                goto LABEL_380;
              }

              *(v117 + 16) = v128;
              v116 += 5;
              if (!--v115)
              {

                v52 = v648;
                v69 = v655;
                v55 = v656;
                v57 = &unk_1AAF9E000;
                goto LABEL_287;
              }
            }

LABEL_379:
            __break(1u);
LABEL_380:
            __break(1u);
LABEL_381:
            __break(1u);
LABEL_382:
            __break(1u);
            break;
          case 9uLL:
            v499 = swift_projectBox();
            v500 = v637;
            sub_1AACAAD4C(v499, v637, type metadata accessor for SgPath);
            v501 = *(v500 + 24);
            v719 = *(v500 + 8);
            v720 = v501;
            v721 = *(v500 + 40);

            v502 = sub_1AAF8E8E4();
            v94 = v688;
            v503 = v687;
            v96 = v54;
            v504 = v686;
            if ((v502 & 1) == 0)
            {
              sub_1AAF8E874();
              v94 = v505;
              v96 = v506;
            }

            v507 = v504;
            v508 = v503;
            sub_1AACAADB4(v637, type metadata accessor for SgPath);
            v95 = v508;
            v97 = v507;
            goto LABEL_350;
          case 0xAuLL:
            v96 = *((v100 & 0xFFFFFFFFFFFFFFFLL) + 0x68);
            v103 = *((v100 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
            v94 = *((v100 & 0xFFFFFFFFFFFFFFFLL) + 0x18) - *((v100 & 0xFFFFFFFFFFFFFFFLL) + 0x28) * v96;
            v101 = v54;
            v102 = *((v100 & 0xFFFFFFFFFFFFFFFLL) + 0x20) - *((v100 & 0xFFFFFFFFFFFFFFFLL) + 0x30) * v103;
            goto LABEL_23;
          case 0xBuLL:
          case 0xCuLL:
            v101 = v54;
            v94 = *((v100 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v102 = *((v100 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            v96 = *((v100 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
            v103 = *((v100 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
LABEL_23:

            v95 = v102;
            v54 = v101;
            v63 = v679;
            v97 = v103;
            goto LABEL_18;
          case 0xDuLL:

            v94 = 0.0;
            v95 = 0.0;
            v96 = 0.0;
            v97 = 0.0;
            goto LABEL_18;
          case 0xEuLL:
            goto LABEL_18;
          default:
            v485 = swift_projectBox();
            v479 = v650;
            sub_1AACAAD4C(v485, v650, type metadata accessor for SgGroup);

            v94 = sub_1AAD05240();
            v132 = v54;
            v134 = v486;
            v96 = v487;
            v137 = v488;
            v484 = type metadata accessor for SgGroup;
LABEL_281:
            sub_1AACAADB4(v479, v484);
LABEL_282:
            v95 = v134;
            v54 = v132;
            v97 = v137;
            goto LABEL_18;
        }

LABEL_383:
        __break(1u);
LABEL_384:
        __break(1u);
LABEL_385:
        __break(1u);
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
LABEL_392:
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
        return result;
      case 3uLL:
        v70 = v56;
        v71 = swift_projectBox();
        v72 = v626;
        sub_1AACAAD4C(v71, v626, type metadata accessor for SgPoint);
        sub_1AAD9ADE4(v72 + 48, &v700);
        if (v703)
        {
          v73 = *(&v700 + 1);
          v74 = *&v701;

          v685 = v73;
          v75 = v73 * 0.5;
          v76 = *(v72 + 16);
          v63 = *(v72 + 8) - v75;
          sub_1AACAADB4(v72, type metadata accessor for SgPoint);
          v66 = v74;
          v65 = v76 - v74 * 0.5;
        }

        else
        {
          v707 = v700;
          v708 = v701;
          v709 = v702;
          if (*(v72 + 40) == 1)
          {
            v606 = *(v72 + 32);
            v607 = *(v72 + 24);

            sub_1AAE45A14(&v707);
            v685 = v607;
            v608 = v607 * 0.5;
            v609 = *(v72 + 16);
            v63 = *(v72 + 8) - v608;
            sub_1AACAADB4(v72, type metadata accessor for SgPoint);
            v66 = v606;
            v65 = v609 - v606 * 0.5;
          }

          else
          {
            v610 = *(v72 + 8);
            v611 = *(v72 + 16);
            v612 = *(&v708 + 1);
            v613 = v709;
            v614 = sqrt(*(v72 + 24));

            sub_1AACBB42C(&v707, v612);
            v615 = *(v613 + 16);
            v616 = v613;
            v55 = v656;
            v617 = v615(v612, v616);
            v619 = v618;
            v621 = v620;
            v623 = v622;
            sub_1AACAADB4(v72, type metadata accessor for SgPoint);
            v685 = v614 * v621;
            v63 = v610 + v614 * (v617 + -0.5);
            v54 = v677;
            sub_1AAE45A14(&v707);
            v65 = v611 + v614 * (v619 + -0.5);
            v66 = v614 * v623;
          }

          v56 = v70;
        }

        goto LABEL_6;
      case 4uLL:
        v583 = swift_projectBox();
        v78 = v651;
        sub_1AACAAD4C(v583, v651, type metadata accessor for SgRectangle);
        v63 = v78[1];
        v64 = v78[2];
        v62 = v78[4];
        v685 = v78[3];

        v83 = type metadata accessor for SgRectangle;
        goto LABEL_365;
      case 5uLL:
        v584 = swift_projectBox();
        v585 = v652;
        sub_1AACAAD4C(v584, v652, type metadata accessor for SgSector);
        v586 = vaddvq_f64(vmulq_f64(*(v585 + 24), xmmword_1AAFC7450));
        v587 = __sincos_stret(((*(v585 + 8) + *(v585 + 16)) * 0.5 + 270.0) * 3.14159265 / 180.0);
        v63 = v586 * v587.__cosval;
        v588 = v586 * v587.__sinval;
        v589 = (v585 + *(v653 + 52));
        v590 = v589[1];
        v685 = *v589 + *v589;

        sub_1AACAADB4(v585, type metadata accessor for SgSector);
        v65 = v588;
        v66 = v590 + v590;
        goto LABEL_6;
      case 6uLL:
        v574 = swift_projectBox();
        v78 = v627;
        sub_1AACAAD4C(v574, v627, type metadata accessor for SgRule);
        v575 = v78[1];
        v576 = v78[2];
        v577 = v78[3];
        v578 = v78[4];
        if (v577 >= v575)
        {
          v63 = v78[1];
        }

        else
        {
          v63 = v78[3];
        }

        if (v578 >= v576)
        {
          v64 = v78[2];
        }

        else
        {
          v64 = v78[4];
        }

        v685 = vabdd_f64(v577, v575);
        v62 = vabdd_f64(v578, v576);

        v83 = type metadata accessor for SgRule;
        goto LABEL_365;
      case 7uLL:
        v601 = swift_projectBox();
        v78 = v649;
        sub_1AACAAD4C(v601, v649, type metadata accessor for SgLine);

        sub_1AAF56CF0();
        v63 = v602;
        v64 = v603;
        v685 = v604;
        v62 = v605;
        v83 = type metadata accessor for SgLine;
        goto LABEL_365;
      case 8uLL:
        v77 = swift_projectBox();
        v78 = v642;
        sub_1AACAAD4C(v77, v642, type metadata accessor for SgArea);

        sub_1AAF58424();
        v63 = v79;
        v64 = v80;
        v685 = v81;
        v62 = v82;
        v83 = type metadata accessor for SgArea;
        goto LABEL_365;
      case 9uLL:
        v591 = swift_projectBox();
        v592 = v635;
        sub_1AACAAD4C(v591, v635, type metadata accessor for SgPath);
        v593 = *(v592 + 24);
        v722 = *(v592 + 8);
        v723 = v593;
        v724 = *(v592 + 40);

        v594 = sub_1AAF8E8E4();
        v63 = v688;
        v595 = v687;
        v685 = v54;
        v596 = v686;
        if ((v594 & 1) == 0)
        {
          sub_1AAF8E874();
          v63 = v597;
          v685 = v598;
        }

        v599 = type metadata accessor for SgPath;
        v600 = v635;
        v62 = v596;
        v64 = v595;
        goto LABEL_366;
      case 0xAuLL:
        v58 = *((v69 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v59 = *((v69 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v60 = *((v69 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        v61 = *((v69 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v62 = *((v69 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
        v685 = *((v69 & 0xFFFFFFFFFFFFFFFLL) + 0x68);
        v63 = v58 - v60 * v685;
        v64 = v59 - v61 * v62;
        goto LABEL_4;
      case 0xBuLL:
      case 0xCuLL:
        v63 = *((v69 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v64 = *((v69 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v62 = *((v69 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v685 = *((v69 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
LABEL_4:

        goto LABEL_5;
      case 0xDuLL:

        v63 = 0.0;
        v65 = 0.0;
        v685 = 0.0;
        v66 = 0.0;
        goto LABEL_6;
      case 0xEuLL:
        goto LABEL_6;
      default:
        v579 = swift_projectBox();
        v78 = v650;
        sub_1AACAAD4C(v579, v650, type metadata accessor for SgGroup);

        v63 = sub_1AAD05240();
        v64 = v580;
        v685 = v581;
        v62 = v582;
        v83 = type metadata accessor for SgGroup;
LABEL_365:
        v599 = v83;
        v600 = v78;
LABEL_366:
        sub_1AACAADB4(v600, v599);
LABEL_5:
        v65 = v64;
        v66 = v62;
        goto LABEL_6;
    }
  }
}

uint64_t sub_1AAF6632C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *a1;

  sub_1AAF8DCF4();
  sub_1AAD12A5C(a4, &v13);
  v6 = *(v13 + 2);
  if (v6)
  {
    v7 = v14;
    v8 = v13 + 40;
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v8 += 16;
      v13 = v9;
      v14 = v10;
      v7(&v12, &v13);
      sub_1AACAAE1C(&v15, a2, v12);

      --v6;
    }

    while (v6);
  }
}

uint64_t sub_1AAF6643C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1AAD12A5C(a4, &v13);
  v7 = *(v13 + 2);
  if (v7)
  {
    v8 = v14;
    v9 = v13 + 40;
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v9 += 16;
      v13 = v10;
      v14 = v11;
      v8(&v15, &v13);
      sub_1AACAAE1C(a1, a5, v15);

      --v7;
    }

    while (v7);
  }
}

uint64_t sub_1AAF66508@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a2[3];
  v6 = a2[4];
  sub_1AACBB42C(a2, v5);
  KeyPath = swift_getKeyPath();
  v8 = (*(v6 + 16))(a1, KeyPath, &type metadata for AnyChartSymbolShape, v5, v6);
  v10 = v9;

  *a3 = v8;
  a3[1] = v10;
  return result;
}

uint64_t sub_1AAF665B4(uint64_t a1, uint64_t *a2)
{
  sub_1AACDBA18(a1, v5, &qword_1ED9AE348, &type metadata for AnyPlottableProjection, MEMORY[0x1E69E6720]);
  v3 = *a2;
  swift_beginAccess();
  sub_1AAF67B98(v5, v3 + 128);
  return swift_endAccess();
}

uint64_t sub_1AAF66634@<X0>(_OWORD *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a1[5];
  v14[4] = a1[4];
  v15[0] = v4;
  *(v15 + 9) = *(a1 + 89);
  v5 = a1[1];
  v14[0] = *a1;
  v14[1] = v5;
  v6 = a1[3];
  v14[2] = a1[2];
  v14[3] = v6;
  v7 = a2[3];
  v8 = a2[4];
  sub_1AACBB42C(a2, v7);
  KeyPath = swift_getKeyPath();
  v10 = (*(v8 + 16))(v14, KeyPath, MEMORY[0x1E69E7DE0], v7, v8);
  v12 = v11;

  *a3 = v10;
  a3[1] = v12;
  return result;
}

uint64_t sub_1AAF666F8(uint64_t a1, uint64_t *a2)
{
  sub_1AACDBA18(a1, v5, &qword_1ED9AE348, &type metadata for AnyPlottableProjection, MEMORY[0x1E69E6720]);
  v3 = *a2;
  swift_beginAccess();
  sub_1AAF67B98(v5, v3 + 184);
  return swift_endAccess();
}

uint64_t sub_1AAF66794@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 112);
  v15[6] = *(a1 + 96);
  v15[7] = v4;
  v16 = *(a1 + 128);
  v5 = *(a1 + 48);
  v15[2] = *(a1 + 32);
  v15[3] = v5;
  v6 = *(a1 + 80);
  v15[4] = *(a1 + 64);
  v15[5] = v6;
  v7 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v7;
  v8 = a2[3];
  v9 = a2[4];
  sub_1AACBB42C(a2, v8);
  KeyPath = swift_getKeyPath();
  v11 = (*(v9 + 16))(v15, KeyPath, MEMORY[0x1E697DD48], v8, v9);
  v13 = v12;

  *a3 = v11;
  a3[1] = v13;
  return result;
}

uint64_t sub_1AAF66860(uint64_t a1, uint64_t *a2)
{
  sub_1AACDBA18(a1, v5, &qword_1ED9AE348, &type metadata for AnyPlottableProjection, MEMORY[0x1E69E6720]);
  v3 = *a2;
  swift_beginAccess();
  sub_1AAF67B98(v5, v3 + 72);
  return swift_endAccess();
}

uint64_t sub_1AAF668E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1AAF8DE54();
  result = sub_1AAF8E964();
  v10 = *(a6 + 16);
  if (!v10)
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = a2 % v10;
  if (v11 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = *(a6 + 8 * v11 + 32);
  if ((v12 & 0x8000000000000000) == 0)
  {
    goto LABEL_6;
  }

  v13 = __OFSUB__(0, v12);
  v12 = -v12;
  if (!v13)
  {
    if ((v12 & 0x8000000000000000) == 0)
    {
LABEL_6:
      if (v12 < *(a5 + 16))
      {
        v14 = a5 + 40 * v12;
        v15 = *(v14 + 48);
        v17[0] = *(v14 + 32);
        v17[1] = v15;
        v18 = *(v14 + 64);

        sub_1AAF8DDF4();
        sub_1AAD12C10(v16);
        return sub_1AAE15FEC(v17);
      }

      goto LABEL_11;
    }

LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAF66A14(uint64_t *a1, uint64_t a2, double *a3)
{
  v5 = type metadata accessor for SgShapeStyle();
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SgSector(0);
  sub_1AACAAD4C(a3 + v9[12], v8, type metadata accessor for SgShapeStyle);
  v10 = a3[1];
  v11 = a3[2];
  v12 = a3[3];
  v13 = a3[4];
  v14 = (a3 + v9[13]);
  v15 = *v14;
  v16 = *(v14 + 1);
  if (*&v8[*(v6 + 44)])
  {
    v40 = a3[1];
    v39 = 270.0;
    v42 = v12;
    v38 = v11;
    __sincos_stret(((v10 + v11) * 0.5 + 270.0) * 3.14159265 / 180.0);
    v41 = v13;
    v43 = *a1;

    sub_1AAF8F014();
    sub_1AAF8DD54();
    sub_1AAD12C10(v44);
    v17 = (v40 + v39) * 3.14159265 / 180.0;
    v18 = a3[5];
    v19 = (v38 + v39) * 3.14159265 / 180.0;
    sub_1AAF8E444();
    v21.n128_u64[0] = v20;
    v23.n128_u64[0] = v22;
    v25.f64[0] = v24;
    sub_1AAF4344C(a3 + v9[11], *(a3 + v9[14]), v45, v42, v41, v17, v19, v18, v21, v23, v25, v26, v15, v16);
    sub_1AAF8DDA4();
    sub_1AAD12C10(v45);

    sub_1AACAADB4(v8, type metadata accessor for SgShapeStyle);
  }

  else
  {
    v28 = (v10 + 270.0) * 3.14159265 / 180.0;
    v29 = a3[5];
    v30 = (v11 + 270.0) * 3.14159265 / 180.0;
    sub_1AAF8E444();
    v32.n128_u64[0] = v31;
    v34.n128_u64[0] = v33;
    v36.f64[0] = v35;
    sub_1AAF4344C(a3 + v9[11], *(a3 + v9[14]), v45, v12, v13, v28, v30, v29, v32, v34, v36, v37, v15, v16);
    sub_1AAF8DDA4();
    sub_1AAD12C10(v45);
    return sub_1AACAADB4(v8, type metadata accessor for SgShapeStyle);
  }
}

uint64_t sub_1AAF66D84(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SgShapeStyle();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = type metadata accessor for SgPath(0);
  sub_1AACAAD4C(a3 + *(v8 + 24), v7, type metadata accessor for SgShapeStyle);
  v9 = *(a3 + 24);
  v13 = *(a3 + 8);
  v14 = v9;
  v15 = *(a3 + 40);
  if ((sub_1AAF8E8E4() & 1) == 0)
  {
    sub_1AAF8E874();
  }

  if (*&v7[*(v5 + 36)])
  {
    v11 = *a1;

    sub_1AAF8F014();
    sub_1AAF8DD54();
    sub_1AAD12C10(v12);
    sub_1AAF8DDA4();

    sub_1AACAADB4(v7, type metadata accessor for SgShapeStyle);
  }

  else
  {
    sub_1AAF8DDA4();
    return sub_1AACAADB4(v7, type metadata accessor for SgShapeStyle);
  }
}

uint64_t sub_1AAF66F70(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SgShapeStyle();
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SgArea(0);
  sub_1AACAAD4C(a3 + *(v9 + 32), v8, type metadata accessor for SgShapeStyle);
  sub_1AAF58424();
  if (*&v8[*(v6 + 44)])
  {
    v11[1] = *a1;

    sub_1AAF8F014();
    sub_1AAF8DD54();
    sub_1AAD12C10(v12);
    sub_1AAF58258(v13);
    sub_1AAF8DDA4();
    sub_1AAD12C10(v13);

    sub_1AACAADB4(v8, type metadata accessor for SgShapeStyle);
  }

  else
  {
    sub_1AAF58258(v13);
    sub_1AAF8DDA4();
    sub_1AAD12C10(v13);
    return sub_1AACAADB4(v8, type metadata accessor for SgShapeStyle);
  }
}

uint64_t sub_1AAF671A8@<X0>(_BYTE *a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  result = sub_1AAF8F454();
  *a1 = result & 1;
  return result;
}

char *sub_1AAF67208(int64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return sub_1AAD1FAF4(result, v5, 0);
  }

  return result;
}

uint64_t sub_1AAF67280(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v90;
    if (!*v90)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1AADAA0A4(v8);
      v8 = result;
    }

    v82 = (v8 + 16);
    v83 = *(v8 + 16);
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = (v8 + 16 * v83);
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        sub_1AAF67808((*a3 + 16 * *v84), (*a3 + 16 * *v86), (*a3 + 16 * v87), v5);
        if (v4)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_114;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_115;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_116;
        }

        v83 = *v82 - 1;
        result = memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v89 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 2;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 0;
        v21 = 16 * v7;
        v22 = v9;
        do
        {
          if (v22 != v7 + v20 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v27 + v11);
            v24 = v27 + v21;
            v25 = *v23;
            v26 = v23[1];
            *v23 = *(v24 - 16);
            *(v24 - 16) = v25;
            *(v24 - 8) = v26;
          }

          ++v22;
          --v20;
          v21 -= 16;
          v11 += 16;
        }

        while (v22 < v7 + v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1AAD68568(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v36 = *(v8 + 24);
    v37 = v5 + 1;
    if (v5 >= v36 >> 1)
    {
      result = sub_1AAD68568((v36 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v37;
    v38 = v8 + 32;
    v39 = (v8 + 32 + 16 * v5);
    *v39 = v9;
    v39[1] = v7;
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v40 = *(v8 + 32);
          v41 = *(v8 + 40);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = (v8 + 16 * v37);
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_106;
          }

          v62 = (v38 + 16 * v5);
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v5 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v66 = (v8 + 16 * v37);
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_72:
        if (v61)
        {
          goto LABEL_108;
        }

        v69 = (v38 + 16 * v5);
        v71 = *v69;
        v70 = v69[1];
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_110;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v37)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v77 = (v38 + 16 * (v5 - 1));
        v78 = *v77;
        v79 = (v38 + 16 * v5);
        v80 = v79[1];
        sub_1AAF67808((*a3 + 16 * *v77), (*a3 + 16 * *v79), (*a3 + 16 * v80), v91);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *(v8 + 16);
        if (v5 >= v81)
        {
          goto LABEL_101;
        }

        v37 = v81 - 1;
        result = memmove((v38 + 16 * v5), v79 + 2, 16 * (v81 - 1 - v5));
        *(v8 + 16) = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = v38 + 16 * v37;
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = (v8 + 16 * v37);
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_107;
      }

      if (v55 >= v47)
      {
        v73 = (v38 + 16 * v5);
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v42 < v76)
        {
          v5 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v89;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 16 * v7 - 16;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 16 * v7);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v7;
      v29 += 16;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    *(v33 + 16) = *v33;
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 16;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1AAF67808(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
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

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 2);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

void sub_1AAF67A0C()
{
  if (!qword_1ED9B2890)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED9B2890);
    }
  }
}

uint64_t sub_1AAF67B3C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1AACC7228(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AAF67B98(uint64_t a1, uint64_t a2)
{
  sub_1AACC7228(0, &qword_1ED9AE348, &type metadata for AnyPlottableProjection, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAF67C60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAF67CC8(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v1 <= 2)
  {
    if (v1 >= 2)
    {
      v1 = 2;
    }

LABEL_9:
    if (v2 == 3)
    {
LABEL_12:
      v2 = 3;
      return v1 | (v2 << 8);
    }

    if (v2 == 4)
    {
      return v1 | (v2 << 8);
    }

LABEL_11:
    if (v2 == 5)
    {
      goto LABEL_12;
    }

    return v1 | (v2 << 8);
  }

  if (v1 == 3 || v1 != 4)
  {
    v1 = 3;
    goto LABEL_9;
  }

  v1 = 4;
  if (v2 == 3)
  {
    goto LABEL_12;
  }

  if (v2 != 4)
  {
    goto LABEL_11;
  }

  return 1028;
}

void sub_1AAF67D3C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1AACC7228(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1AAF8E724();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1AAF67DA8(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1AAF67D3C(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AAF67E34()
{
  result = qword_1ED9AF4F0;
  if (!qword_1ED9AF4F0)
  {
    sub_1AAF686A4(255, &qword_1ED9AF4E8, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E6980480]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AF4F0);
  }

  return result;
}

void sub_1AAF67EF0()
{
  sub_1AACC7228(319, &qword_1ED9B2BF8, MEMORY[0x1E697FA58], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1AAF8E244();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1AAF67FC8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[56])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1AAF6800C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1AAF68090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = a4(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1AAF68154(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = a5(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1AAF68204(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 608))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AAF6824C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 600) = 0;
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
      *(result + 608) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 608) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AAF6833C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 288))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 272);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AAF68384(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 288) = 1;
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
      *(result + 272) = (a2 - 1);
      return result;
    }

    *(result + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1AAF68420(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_1AAF68454(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1AAF684A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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
      *(result + 40) = 0;
      *(result + 48) = 0;
      *(result + 64) = 0;
      *(result + 72) = 0;
      *(result + 56) = 2 * -a2;
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AAF6852C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1AAF68574(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1AAF685C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1AAF6860C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AAF68650()
{
  result = qword_1EB4273F8;
  if (!qword_1EB4273F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4273F8);
  }

  return result;
}

void sub_1AAF686A4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1AAF686F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a6 + 16);
  if (!v8)
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = a2 % v8;
  if (v10 < 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v13 = *(a6 + 8 * v10 + 32);
  if ((v13 & 0x8000000000000000) != 0)
  {
    v14 = __OFSUB__(0, v13);
    v13 = -v13;
    if (v14)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if ((v13 & 0x8000000000000000) != 0)
    {
      goto LABEL_20;
    }
  }

  if (v13 >= *(a5 + 16))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_1AAD9B194(a5 + 40 * v13 + 32, v28);
  v28[40] = 0;
  v15 = *(a8 + 16);
  if (!v15)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v16 = a2 % v15;
  if (v16 < 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v17 = *(a8 + 8 * v16 + 32);
  if ((v17 & 0x8000000000000000) != 0)
  {
    v14 = __OFSUB__(0, v17);
    v17 = -v17;
    if (v14)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if ((v17 & 0x8000000000000000) != 0)
    {
      goto LABEL_24;
    }
  }

  if (v17 >= *(a7 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_1AAD9ADE4(v28, &v24);
  if (v27 == 1)
  {
  }

  else
  {
    v21 = v24;
    v22 = v25;
    v18 = v26;
    v23 = v26;
    v19 = *(&v25 + 1);
    sub_1AACBB42C(&v21, *(&v25 + 1));
    (*(v18 + 16))(v19, v18);
    sub_1AAE45A14(&v21);
  }

  sub_1AAD9ADE4(v28, &v24);
  if ((v27 & 1) == 0)
  {
    v21 = v24;
    v22 = v25;
    v23 = v26;
    sub_1AACBB42C(&v21, *(&v25 + 1));
    sub_1AAF8EDA4();
    sub_1AAF8DE54();
    sub_1AAF8DDA4();
    sub_1AAD12C10(v29);
    sub_1AAF50004(v28);
    return sub_1AAE45A14(&v21);
  }

LABEL_28:
  result = sub_1AAF902C4();
  __break(1u);
  return result;
}

uint64_t sub_1AAF689B4(uint64_t a1)
{
  if ((*(v1 + 32) & 1) != 0 || (v2 = vdupq_n_s64(0x3CB0000000000000uLL), (vmaxv_u16(vmovn_s32(vuzp1q_s32(vcgeq_f64(*v1, v2), vcgeq_f64(*(v1 + 16), v2)))) & 1) == 0))
  {
    sub_1AAF8E944();
    v3 = v9;
    v4 = v10;
    v5 = v11;
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1AAF8E964();
    v3 = v9;
    v4 = v10;
    v5 = v11;
  }

  v7 = v4;
  v8 = v3;
  sub_1AAF8DE54();
  sub_1AAF8DDA4();
  return sub_1AAD0E508(v8, *(&v8 + 1), v7, *(&v7 + 1), v5);
}

uint64_t getEnumTagSinglePayload for SgAnnotation.OverflowResolution.Strategy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
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

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SgAnnotation.OverflowResolution.Strategy(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
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

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1AAF68D84()
{
  result = qword_1EB427400;
  if (!qword_1EB427400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB427400);
  }

  return result;
}

unint64_t sub_1AAF68DEC()
{
  result = qword_1EB427408;
  if (!qword_1EB427408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB427408);
  }

  return result;
}

uint64_t sub_1AAF68E44(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      v8 = *v4;
      if ((*v4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1AACEF664(0, *(v5 + 16) + 1, 1);
        }

        v7 = *(v5 + 16);
        v6 = *(v5 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1AACEF664((v6 > 1), v7 + 1, 1);
        }

        *(v5 + 16) = v7 + 1;
        *(v5 + 8 * v7 + 32) = v8;
      }

      ++v4;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v9 = COERCE_DOUBLE(sub_1AADC5DE0(v5));
  v11 = v10;
  v13 = v12;

  if (v13)
  {
  }

  else
  {
    v14 = v9;
    v15 = v11;
    v16 = COERCE_DOUBLE(sub_1AADC5DE0(a2));
    v18 = v17;
    if (v19)
    {
      v18 = v11;
      v16 = v9;
    }

    v20 = *(a2 + 16);
    v21 = v18;
    v22 = v16;
    if (v20)
    {
      v22 = *(a2 + 32);
      v21 = *(a2 + 32 + 8 * v20 - 8);
    }

    if (v16 <= v9)
    {
      v14 = v16;
    }

    if (v18 > v11)
    {
      v15 = v18;
    }

    sub_1AAEF2CE4();
    v23 = swift_allocObject();
    a2 = v23;
    *(v23 + 16) = xmmword_1AAF9E2B0;
    if (v22 >= v21)
    {
      *(v23 + 32) = v15;
      *(v23 + 40) = v14;
    }

    else
    {
      *(v23 + 32) = v14;
      *(v23 + 40) = v15;
    }
  }

  return a2;
}

uint64_t sub_1AAF68FFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3 && (sub_1AAD79E08(v2, v3) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1AAF6903C(uint64_t a1, uint64_t a2, int64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, double a8, double a9)
{
  v10 = a3;
  v11 = a9;
  if (!a7)
  {
    v14 = *&a6;
    v26 = *(a1 + 16);
    if (v26)
    {
      v27 = *&a2;
      v28 = *&a4;
      v122 = MEMORY[0x1E69E7CC0];
      sub_1AACEF664(0, v26, 0);
      v29 = v122;
      v30 = (a1 + 32);
      do
      {
        v31 = *v30;
        v33 = *(v122 + 16);
        v32 = *(v122 + 24);
        v24 = v33 + 1;
        if (v33 >= v32 >> 1)
        {
          v35 = *v30;
          sub_1AACEF664((v32 > 1), v33 + 1, 1);
          v31 = v35;
        }

        v34 = pow(v31, v14);
        *(v122 + 16) = v24;
        *(v122 + 8 * v33 + 32) = v34;
        ++v30;
        --v26;
      }

      while (v26);
    }

    else
    {
      v29 = MEMORY[0x1E69E7CC0];
      v24 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v24)
      {
        goto LABEL_58;
      }

      v27 = *&a2;
      v28 = *&a4;
    }

    v64 = *(v29 + 32);
    v65 = *(v29 + 32 + 8 * v24 - 8);

    if ((v10 & 1) != 0 || (a5 & 1) != 0 || a8 <= 2.22044605e-12 && v11 <= 2.22044605e-12)
    {
      return 0;
    }

    v66 = v28 - v27;
    if (v28 - v27 <= 1.0)
    {
      v88 = v27 - v28;
      if (v27 - v28 <= 1.0)
      {
        return 0;
      }

      v89 = fmin(v88 * 0.99 / (a8 + v11), 1.0);
      v90 = (v64 - v65) / (v88 - (a8 + v11) * v89);
      sub_1AAEF2CE4();
      v69 = swift_allocObject();
      v61 = v69;
      *(v69 + 16) = xmmword_1AAF9E2B0;
      v70 = v64 + v89 * v11 * v90;
      v71 = v65 - v89 * a8 * v90;
    }

    else
    {
      v67 = fmin(v66 * 0.99 / (a8 + v11), 1.0);
      v68 = (v65 - v64) / (v66 - (a8 + v11) * v67);
      sub_1AAEF2CE4();
      v69 = swift_allocObject();
      v61 = v69;
      *(v69 + 16) = xmmword_1AAF9E2B0;
      v70 = v64 - v67 * a8 * v68;
      v71 = v65 + v67 * v11 * v68;
    }

    *(v69 + 32) = v70;
    *(v69 + 40) = v71;
    v124 = MEMORY[0x1E69E7CC0];
    sub_1AACEF664(0, 2, 0);
    v84 = v61[2];
    if (!v84)
    {
      goto LABEL_96;
    }

    v11 = 1.0 / v14;
    v91 = *(v61 + 4);
    v85 = v124;
    v24 = *(v124 + 16);
    v92 = *(v124 + 24);
    v10 = v24 + 1;
    if (v24 >= v92 >> 1)
    {
      v117 = *(v61 + 4);
      sub_1AACEF664((v92 > 1), v24 + 1, 1);
      v91 = v117;
      v85 = v124;
    }

    v93 = pow(v91, 1.0 / v14);
    *(v85 + 16) = v10;
    *(v85 + 8 * v24 + 32) = v93;
    if (v61[2] < 2uLL)
    {
      goto LABEL_96;
    }

    v94 = *(v61 + 5);
    v96 = *(v85 + 16);
    v95 = *(v85 + 24);
    if (v96 >= v95 >> 1)
    {
      v118 = *(v61 + 5);
      sub_1AACEF664((v95 > 1), v96 + 1, 1);
      v94 = v118;
    }

    v97 = pow(v94, 1.0 / v14);
    *(v85 + 16) = v96 + 1;
    *(v85 + 8 * v96 + 32) = v97;
LABEL_83:

    return v85;
  }

  if (a7 == 1)
  {
    v14 = *&a6;
    v15 = *(a1 + 16);
    if (v15)
    {
      v16 = *&a2;
      v17 = *&a4;
      v121 = MEMORY[0x1E69E7CC0];
      sub_1AACEF664(0, v15, 0);
      v18 = v121;
      v19 = (a1 + 32);
      do
      {
        v20 = *v19 * v14;
        if ((*v19 & 0x8000000000000000) != 0)
        {
          v21 = -log(1.0 - v20);
        }

        else
        {
          v21 = log(v20 + 1.0);
        }

        v23 = *(v121 + 16);
        v22 = *(v121 + 24);
        v24 = v23 + 1;
        if (v23 >= v22 >> 1)
        {
          v25 = v21;
          sub_1AACEF664((v22 > 1), v23 + 1, 1);
          v21 = v25;
        }

        *(v121 + 16) = v24;
        *(v121 + 8 * v23 + 32) = v21;
        ++v19;
        --v15;
      }

      while (v15);
LABEL_36:
      v55 = *(v18 + 32);
      v56 = *(v18 + 32 + 8 * v24 - 8);

      if ((v10 & 1) == 0 && (a5 & 1) == 0 && (a8 > 2.22044605e-12 || v11 > 2.22044605e-12))
      {
        v57 = v17 - v16;
        if (v17 - v16 > 1.0)
        {
          v58 = fmin(v57 * 0.99 / (a8 + v11), 1.0);
          v59 = (v56 - v55) / (v57 - (a8 + v11) * v58);
          sub_1AAEF2CE4();
          v60 = swift_allocObject();
          v61 = v60;
          *(v60 + 16) = xmmword_1AAF9E2B0;
          v62 = v55 - v58 * a8 * v59;
          v63 = v56 + v58 * v11 * v59;
LABEL_62:
          *(v60 + 32) = v62;
          *(v60 + 40) = v63;
          v124 = MEMORY[0x1E69E7CC0];
          sub_1AACEF664(0, 2, 0);
          v84 = v61[2];
          if (!v84)
          {
            goto LABEL_95;
          }

          v85 = v124;
          v86 = *(v61 + 4);
          if ((*&v86 & 0x8000000000000000) != 0)
          {
            v87 = 1.0 - exp(-v86);
          }

          else
          {
            v87 = exp(v86) + -1.0;
          }

          v24 = *(v124 + 16);
          v84 = *(v124 + 24);
          v10 = v24 + 1;
          v11 = v87 / v14;
          if (v24 >= v84 >> 1)
          {
            goto LABEL_97;
          }

          while (1)
          {
            *(v85 + 16) = v10;
            *(v85 + 8 * v24 + 32) = v11;
            v84 = v61[2];
            if (v84 >= 2)
            {
              break;
            }

LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            sub_1AACEF664((v84 > 1), v10, 1);
            v85 = v124;
          }

          v98 = *(v61 + 5);
          if ((*&v98 & 0x8000000000000000) != 0)
          {
            v99 = 1.0 - exp(-v98);
          }

          else
          {
            v99 = exp(v98) + -1.0;
          }

          v101 = *(v85 + 16);
          v100 = *(v85 + 24);
          v102 = v99 / v14;
          if (v101 >= v100 >> 1)
          {
            sub_1AACEF664((v100 > 1), v101 + 1, 1);
          }

          *(v85 + 16) = v101 + 1;
          *(v85 + 8 * v101 + 32) = v102;
          goto LABEL_83;
        }

        v81 = v16 - v17;
        if (v16 - v17 > 1.0)
        {
          v82 = fmin(v81 * 0.99 / (a8 + v11), 1.0);
          v83 = (v55 - v56) / (v81 - (a8 + v11) * v82);
          sub_1AAEF2CE4();
          v60 = swift_allocObject();
          v61 = v60;
          *(v60 + 16) = xmmword_1AAF9E2B0;
          v62 = v55 + v82 * v11 * v83;
          v63 = v56 - v82 * a8 * v83;
          goto LABEL_62;
        }
      }

      return 0;
    }

    v18 = MEMORY[0x1E69E7CC0];
    v24 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v24)
    {
      v16 = *&a2;
      v17 = *&a4;
      goto LABEL_36;
    }

LABEL_58:

    return 0;
  }

  if (a6 > 2)
  {
    if (a6 != 3)
    {
      return 0;
    }
  }

  else if (a6 >= 2)
  {
    v36 = *(a1 + 16);
    if (v36)
    {
      v37 = *&a2;
      v38 = *&a4;
      v123 = MEMORY[0x1E69E7CC0];
      sub_1AACEF664(0, v36, 0);
      v39 = v123;
      v40 = (a1 + 32);
      do
      {
        v41 = log(*v40);
        v43 = *(v123 + 16);
        v42 = *(v123 + 24);
        v44 = v43 + 1;
        if (v43 >= v42 >> 1)
        {
          v45 = v41;
          sub_1AACEF664((v42 > 1), v43 + 1, 1);
          v41 = v45;
        }

        *(v123 + 16) = v44;
        *(v123 + 8 * v43 + 32) = v41;
        ++v40;
        --v36;
      }

      while (v36);
    }

    else
    {
      v39 = MEMORY[0x1E69E7CC0];
      v44 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v44)
      {
        goto LABEL_58;
      }

      v37 = *&a2;
      v38 = *&a4;
    }

    v72 = *(v39 + 32);
    v73 = *(v39 + 32 + 8 * v44 - 8);

    if ((v10 & 1) != 0 || (a5 & 1) != 0 || a8 <= 2.22044605e-12 && v11 <= 2.22044605e-12)
    {
      return 0;
    }

    v74 = v38 - v37;
    if (v38 - v37 <= 1.0)
    {
      v106 = v37 - v38;
      if (v37 - v38 <= 1.0)
      {
        return 0;
      }

      v107 = fmin(v106 * 0.99 / (a8 + v11), 1.0);
      v108 = (v72 - v73) / (v106 - (a8 + v11) * v107);
      sub_1AAEF2CE4();
      v77 = swift_allocObject();
      v78 = v77;
      *(v77 + 16) = xmmword_1AAF9E2B0;
      v79 = v72 + v107 * v11 * v108;
      v80 = v73 - v107 * a8 * v108;
    }

    else
    {
      v75 = fmin(v74 * 0.99 / (a8 + v11), 1.0);
      v76 = (v73 - v72) / (v74 - (a8 + v11) * v75);
      sub_1AAEF2CE4();
      v77 = swift_allocObject();
      v78 = v77;
      *(v77 + 16) = xmmword_1AAF9E2B0;
      v79 = v72 - v75 * a8 * v76;
      v80 = v73 + v75 * v11 * v76;
    }

    *(v77 + 32) = v79;
    *(v77 + 40) = v80;
    v125 = MEMORY[0x1E69E7CC0];
    sub_1AACEF664(0, 2, 0);
    if (!*(v78 + 16))
    {
      goto LABEL_98;
    }

    v110 = exp(*(v78 + 32));
    v111 = v125;
    v44 = *(v125 + 16);
    v109 = *(v125 + 24);
    v10 = v44 + 1;
    if (v44 >= v109 >> 1)
    {
      goto LABEL_99;
    }

    while (1)
    {
      *(v111 + 16) = v10;
      v112 = v111;
      *(v111 + 8 * v44 + 32) = v110;
      if (*(v78 + 16) >= 2uLL)
      {
        break;
      }

LABEL_98:
      __break(1u);
LABEL_99:
      v119 = v110;
      sub_1AACEF664((v109 > 1), v10, 1);
      v110 = v119;
      v111 = v125;
    }

    v113 = exp(*(v78 + 40));
    v114 = v112;
    v116 = *(v112 + 16);
    v115 = *(v112 + 24);
    if (v116 >= v115 >> 1)
    {
      v120 = v113;
      sub_1AACEF664((v115 > 1), v116 + 1, 1);
      v113 = v120;
      v114 = v112;
    }

    *(v114 + 16) = v116 + 1;
    *(v114 + 8 * v116 + 32) = v113;
    v85 = v114;
    goto LABEL_83;
  }

  v46 = *(a1 + 16);
  if (!v46)
  {
    return 0;
  }

  if (a3)
  {
    return 0;
  }

  if (a5)
  {
    return 0;
  }

  v47 = *(a1 + 32);
  v48 = *(a1 + 32 + 8 * v46 - 8);
  if (a8 <= 2.22044605e-12 && a9 <= 2.22044605e-12)
  {
    return 0;
  }

  v49 = *&a4 - *&a2;
  if (*&a4 - *&a2 <= 1.0)
  {
    v103 = *&a2 - *&a4;
    if (*&a2 - *&a4 <= 1.0)
    {
      return 0;
    }

    v104 = fmin(v103 * 0.99 / (a8 + a9), 1.0);
    v105 = (v47 - v48) / (v103 - (a8 + a9) * v104);
    sub_1AAEF2CE4();
    result = swift_allocObject();
    *(result + 16) = xmmword_1AAF9E2B0;
    v53 = v47 + v104 * v11 * v105;
    v54 = v48 - v104 * a8 * v105;
  }

  else
  {
    v50 = fmin(v49 * 0.99 / (a8 + a9), 1.0);
    v51 = (v48 - v47) / (v49 - (a8 + a9) * v50);
    sub_1AAEF2CE4();
    result = swift_allocObject();
    *(result + 16) = xmmword_1AAF9E2B0;
    v53 = v47 - v50 * a8 * v51;
    v54 = v48 + v50 * v11 * v51;
  }

  *(result + 32) = v53;
  *(result + 40) = v54;
  return result;
}

uint64_t sub_1AAF69B10()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AAF69B80(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80)) & ~*(v4 + 80)) + v6;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

char *sub_1AAF69CD0(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_1AAF69F00(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_1AAF69F5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1AAF69FE4(unint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for SgGroup(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v53 - v9;
  v11 = a1 >> 60;
  if ((a1 >> 60) - 3 < 0xB)
  {
    v12 = sub_1AACAB6D8(a1);
    if (!sub_1AAF503AC(v12, a2))
    {
      return 0xE000000000000000;
    }

    return a1;
  }

  if (v11 <= 1)
  {
    if (!v11)
    {
      v54 = v8;
      v14 = swift_projectBox();
      sub_1AACE3CA8(v14, v10, type metadata accessor for SgGroup);
      sub_1AACE3CA8(v10, v6, type metadata accessor for SgGroup);
      v15 = *(v6 + 1);
      v16 = *(v15 + 16);
      if (v16)
      {
        v53 = v6;
        v57[0] = MEMORY[0x1E69E7CC0];
        sub_1AAD0F6F0(0, v16, 0);
        v17 = 32;
        v18 = v57[0];
        do
        {
          v19 = *(v15 + v17);

          v20 = sub_1AAF69FE4(v19, a2);

          v57[0] = v18;
          v22 = *(v18 + 16);
          v21 = *(v18 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_1AAD0F6F0((v21 > 1), v22 + 1, 1);
            v18 = v57[0];
          }

          *(v18 + 16) = v22 + 1;
          *(v18 + 8 * v22 + 32) = v20;
          v17 += 8;
          --v16;
        }

        while (v16);
        sub_1AACE40B8(v10, type metadata accessor for SgGroup);

        v6 = v53;
      }

      else
      {
        sub_1AACE40B8(v10, type metadata accessor for SgGroup);

        v18 = MEMORY[0x1E69E7CC0];
      }

      *(v6 + 1) = v18;
      a1 = swift_allocBox();
      sub_1AACE3DD4(v6, v48);
      return a1;
    }

    v31 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v54 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v32 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v33 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    v34 = *(v31 + 16);
    if (v34)
    {
      v57[0] = MEMORY[0x1E69E7CC0];

      sub_1AAD0F6F0(0, v34, 0);
      v35 = 32;
      v36 = v57[0];
      do
      {
        v37 = *(v31 + v35);

        v38 = sub_1AAF69FE4(v37, a2);

        v57[0] = v36;
        v40 = *(v36 + 16);
        v39 = *(v36 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_1AAD0F6F0((v39 > 1), v40 + 1, 1);
          v36 = v57[0];
        }

        *(v36 + 16) = v40 + 1;
        *(v36 + 8 * v40 + 32) = v38;
        v35 += 8;
        --v34;
      }

      while (v34);

      v41 = *(v32 + 16);
      if (v41)
      {
        goto LABEL_27;
      }
    }

    else
    {

      v36 = MEMORY[0x1E69E7CC0];
      v41 = *(v32 + 16);
      if (v41)
      {
LABEL_27:
        v57[0] = MEMORY[0x1E69E7CC0];
        sub_1AAD0F6F0(0, v41, 0);
        v42 = 32;
        v43 = v57[0];
        do
        {
          v44 = *(v32 + v42);

          v45 = sub_1AAF69FE4(v44, a2);

          v57[0] = v43;
          v47 = *(v43 + 16);
          v46 = *(v43 + 24);
          if (v47 >= v46 >> 1)
          {
            sub_1AAD0F6F0((v46 > 1), v47 + 1, 1);
            v43 = v57[0];
          }

          *(v43 + 16) = v47 + 1;
          *(v43 + 8 * v47 + 32) = v45;
          v42 += 8;
          --v41;
        }

        while (v41);

        goto LABEL_38;
      }
    }

    v43 = MEMORY[0x1E69E7CC0];
LABEL_38:
    v52 = swift_allocObject();
    *(v52 + 16) = v54;
    *(v52 + 24) = v36;
    *(v52 + 32) = v43;
    *(v52 + 40) = v33;
    return v52 | 0x1000000000000000;
  }

  if (v11 == 2)
  {
    sub_1AAD117A0((a1 & 0xFFFFFFFFFFFFFFFLL) + 16, v57);
    sub_1AAD117A0(v57, v56);
    v23 = *(&v56[0] + 1);
    v24 = *(*(&v56[0] + 1) + 16);
    if (v24)
    {
      v55 = MEMORY[0x1E69E7CC0];
      sub_1AAD0F6F0(0, v24, 0);
      v25 = 32;
      v26 = v55;
      do
      {
        v27 = *(v23 + v25);

        v28 = sub_1AAF69FE4(v27, a2);

        v55 = v26;
        v30 = *(v26 + 16);
        v29 = *(v26 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1AAD0F6F0((v29 > 1), v30 + 1, 1);
          v26 = v55;
        }

        *(v26 + 16) = v30 + 1;
        *(v26 + 8 * v30 + 32) = v28;
        v25 += 8;
        --v24;
      }

      while (v24);
      sub_1AAF14C40(v57);
    }

    else
    {
      sub_1AAF14C40(v57);

      v26 = MEMORY[0x1E69E7CC0];
    }

    *(&v56[0] + 1) = v26;
    v49 = swift_allocObject();
    v50 = v56[1];
    *(v49 + 16) = v56[0];
    *(v49 + 32) = v50;
    v51 = v56[3];
    *(v49 + 48) = v56[2];
    *(v49 + 64) = v51;
    return v49 | 0x2000000000000000;
  }

  return a1;
}

void sub_1AAF6A544(unint64_t a1, uint64_t a2, double (*a3)(_OWORD *), uint64_t a4, char **a5, double a6)
{
  v12 = type metadata accessor for SgGroup(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v54[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = a1 >> 60;
  if ((a1 >> 60) > 0xE)
  {
    goto LABEL_22;
  }

  if (((1 << v15) & 0x7BF8) != 0)
  {
    return;
  }

  if (v15 == 2)
  {
    sub_1AAD117A0((a1 & 0xFFFFFFFFFFFFFFFLL) + 16, v55);
    v16 = *(*(&v55[0] + 1) + 16);
    if (v16)
    {
      v17 = (*(&v55[0] + 1) + 32);

      do
      {
        v18 = *v17++;

        sub_1AAF6A544(v18, a2, a3, a4, a5, a6);

        --v16;
      }

      while (v16);
    }

    else
    {
    }

    sub_1AAF14C40(v55);
LABEL_36:

    return;
  }

  if (v15 != 10)
  {
LABEL_22:
    if (!v15)
    {
      v40 = swift_projectBox();
      sub_1AACE3CA8(v40, v14, type metadata accessor for SgGroup);
      v41 = *(v14 + 1);
      v42 = *(v41 + 16);
      if (v42)
      {
        v43 = (v41 + 32);

        do
        {
          v44 = *v43++;

          sub_1AAF6A544(v44, a2, a3, a4, a5, a6);

          --v42;
        }

        while (v42);
      }

      else
      {
      }

      sub_1AACE40B8(v14, type metadata accessor for SgGroup);
      goto LABEL_36;
    }

    v45 = a1 & 0xFFFFFFFFFFFFFFFLL;
    v47 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v46 = *(v45 + 32);
    v48 = *(v47 + 16);
    if (v48)
    {

      v49 = 32;
      do
      {
        v50 = *(v47 + v49);

        sub_1AAF6A544(v50, a2, a3, a4, a5, a6);

        v49 += 8;
        --v48;
      }

      while (v48);

      v51 = *(v46 + 16);
      if (!v51)
      {
        goto LABEL_40;
      }
    }

    else
    {

      v51 = *(v46 + 16);
      if (!v51)
      {
LABEL_40:

        return;
      }
    }

    v52 = 32;
    do
    {
      v53 = *(v46 + v52);

      sub_1AAF6A544(v53, a2, a3, a4, a5, a6);

      v52 += 8;
      --v51;
    }

    while (v51);
    goto LABEL_40;
  }

  v19 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x90);
  v55[7] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x80);
  v55[8] = v19;
  v20 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0xB0);
  v55[9] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0xA0);
  v56 = v20;
  v21 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
  v55[3] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
  v55[4] = v21;
  v22 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
  v55[5] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
  v55[6] = v22;
  v23 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v55[0] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v55[1] = v23;
  v55[2] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
  LOBYTE(v24) = v56;
  if (v56 != 6)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        sub_1AAF902C4();
        __break(1u);
        return;
      }

      v24 = BYTE1(v56);
    }

    if (v24 == 3)
    {

      sub_1AAD1B82C(v55, v54);
      v25 = a3(v55);
      v27 = v26;
      v29 = v28;
      v30 = *a5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a5 = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = sub_1AAD6BFDC(0, *(v30 + 2) + 1, 1, v30);
        *a5 = v30;
      }

      v33 = *(v30 + 2);
      v32 = *(v30 + 3);
      if (v33 >= v32 >> 1)
      {
        v30 = sub_1AAD6BFDC((v32 > 1), v33 + 1, 1, v30);
        *a5 = v30;
      }

      v34 = v25 / a6;
      *(v30 + 2) = v33 + 1;
      v35 = &v30[16 * v33];
      *(v35 + 4) = v34;
      *(v35 + 5) = -(v29 * v27);
      v36 = *a5;
      v38 = *(*a5 + 2);
      v37 = *(*a5 + 3);
      if (v38 >= v37 >> 1)
      {
        v36 = sub_1AAD6BFDC((v37 > 1), v38 + 1, 1, v36);
        *a5 = v36;
      }

      *(v36 + 2) = v38 + 1;
      v39 = &v36[16 * v38];
      *(v39 + 4) = v34;
      *(v39 + 5) = v27 * (1.0 - v29);
      sub_1AAD1C8F0(v55);
      goto LABEL_36;
    }
  }
}

uint64_t sub_1AAF6AADC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(v3 + 56);
    v14 = *(v3 + 48) + 56 * v12;
    v15 = *(v14 + 32);
    v16 = *v14;
    v17 = *(v14 + 48);
    v34 = *(v14 + 16);
    v35 = v15;
    v33 = v16;
    v36 = v17;
    v18 = (v13 + 16 * v12);
    v19 = *v18;
    v20 = v18[1];
    v30 = v34;
    v31 = v16;
    v22 = *(&v15 + 1);
    v21 = v15;
    sub_1AACDC8C4(&v33, v32);
    v23 = v31 & 0xFF00;
    v24 = v23 == 512;
    if (v23 != 512)
    {
      v37[0] = v31;
      v37[1] = v30;
      v38 = v21;
      v39 = v22;
      v40 = v17;
      v25 = sub_1AACDBD1C(v37);
      v27 = v26;
      result = sub_1AACDC920(v37);
      if (v27)
      {
        v28 = (*(a2 + 56) + 16 * v25);
        if (*v28 == v19 && v28[1] == v20)
        {
          continue;
        }
      }
    }

    return v24;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAF6AC84(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    v14 = sub_1AACB6398(*(*(v3 + 48) + v12));
    if (v15)
    {
      result = sub_1AAD7A270(*(*(a2 + 56) + 8 * v14), v13);
      if (result)
      {
        continue;
      }
    }

    return 0;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAF6AD90(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 48) + v12);
    sub_1AACE0A98(*(v3 + 56) + 48 * v12, &v18);
    if (v19 == 255)
    {
      return 1;
    }

    v14 = sub_1AACE1760(v13);
    if ((v15 & 1) == 0)
    {
      sub_1AAD57C94(&v18);
      return 0;
    }

    sub_1AACE0A98(*(a2 + 56) + 48 * v14, v17);
    v16 = sub_1AAF77A14(v17, &v18);
    sub_1AAD57C94(v17);
    result = sub_1AAD57C94(&v18);
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1AAF6AF7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1AAF6B594(v7, v9);
}

uint64_t sub_1AAF6AFD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1AACF0744(v7, v9) & 1;
}

uint64_t sub_1AAF6B044(uint64_t a1, unsigned __int8 a2)
{
  sub_1AAF90694();
  MEMORY[0x1AC5992C0](a2);
  MEMORY[0x1AC5992C0](a1);
  sub_1AAF906B4();
  return sub_1AAF906F4();
}

uint64_t sub_1AAF6B0B0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1AAF90694();
  MEMORY[0x1AC5992C0](v2);
  MEMORY[0x1AC5992C0](v1);
  return sub_1AAF906F4();
}

uint64_t sub_1AAF6B110()
{
  v1 = *v0;
  MEMORY[0x1AC5992C0](*(v0 + 8));
  return MEMORY[0x1AC5992C0](v1);
}

uint64_t sub_1AAF6B150()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1AAF90694();
  MEMORY[0x1AC5992C0](v2);
  MEMORY[0x1AC5992C0](v1);
  return sub_1AAF906F4();
}

uint64_t sub_1AAF6B1CC()
{
  v1 = *v0;
  MEMORY[0x1AC5992C0](*(v0 + 8));
  MEMORY[0x1AC5992C0](v1);
  return sub_1AAF906B4();
}

uint64_t sub_1AAF6B218()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1AAF90694();
  MEMORY[0x1AC5992C0](v2);
  MEMORY[0x1AC5992C0](v1);
  sub_1AAF906B4();
  return sub_1AAF906F4();
}

uint64_t sub_1AAF6B284(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      if (v4 != 1 || v2 != v3)
      {
        return 0;
      }
    }

    else if (v4 != 2 || v2 != v3)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 8))
    {
      v7 = 0;
    }

    else
    {
      v7 = v2 == v3;
    }

    if (!v7)
    {
      return 0;
    }
  }

  return *(a1 + 9) ^ *(a2 + 9) ^ 1u;
}

uint64_t sub_1AAF6B2F0(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 3u)
  {
    if (a3 > 5u)
    {
      if (a3 == 6)
      {
        return a6 == 6 && a1 == a4;
      }

      else
      {
        if (a6 == 7)
        {
          if (a2 > 1u)
          {
            if (a2 == 2)
            {
              if (a5 == 2 && a1 == a4)
              {
                return 1;
              }
            }

            else if (a5 == 3 && a1 == a4)
            {
              return 1;
            }
          }

          else if (a2)
          {
            if (a5 == 1 && a1 == a4)
            {
              return 1;
            }
          }

          else if (!a5 && a1 == a4)
          {
            return 1;
          }
        }

        return 0;
      }
    }

    else
    {
      v17 = a6 == 4 && a1 == a4;
      v19 = a6 == 5 && a1 == a4;
      if (a3 == 4)
      {
        return v17;
      }

      else
      {
        return v19;
      }
    }
  }

  else
  {
    v7 = a6 == 2 && a1 == a4;
    v9 = a6 == 3 && a1 == a4;
    if (a3 != 2)
    {
      v7 = v9;
    }

    if (a6)
    {
      v10 = 0;
    }

    else
    {
      v10 = a1 == a4;
    }

    v12 = v10 && a2 == a5;
    v14 = a6 == 1 && a1 == a4;
    if (!a3)
    {
      v14 = v12;
    }

    if (a3 <= 1u)
    {
      return v14;
    }

    else
    {
      return v7;
    }
  }
}

uint64_t sub_1AAF6B428(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  result = 0;
  if (a1 == a5 && a2 == a6)
  {
    if (a4 == -1)
    {
      if (a8 == -1)
      {
        return 1;
      }
    }

    else if (a8 != -1)
    {
      if (a4)
      {
        if (a4 == 1)
        {
          if (a8 != 1)
          {
            return 0;
          }
        }

        else if (a8 != 2)
        {
          return 0;
        }
      }

      else if (a8)
      {
        return 0;
      }

      if (a3 == a7)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AAF6B4B0(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7, __int16 a8)
{
  if (HIBYTE(a4) > 1u)
  {
    if (HIBYTE(a4) != 2)
    {
      if (HIBYTE(a8) == 3 && a1 == a5 && a2 == a6)
      {
        if (a4 == 255)
        {
          if (a8 == 255)
          {
            return 1;
          }
        }

        else if (a8 != 255)
        {
          if (a4)
          {
            if (a4 == 1)
            {
              if (a8 == 1 && a3 == a7)
              {
                return 1;
              }
            }

            else if (a8 == 2 && a3 == a7)
            {
              return 1;
            }
          }

          else if (!a8 && a3 == a7)
          {
            return 1;
          }
        }
      }

      return 0;
    }

    return HIBYTE(a8) == 2 && a1 == a5;
  }

  else
  {
    if (HIBYTE(a8))
    {
      v8 = 0;
    }

    else
    {
      v8 = a1 == a5;
    }

    v9 = v8;
    v11 = HIBYTE(a8) == 1 && a1 == a5;
    if (HIBYTE(a4))
    {
      return v11;
    }

    else
    {
      return v9;
    }
  }
}

BOOL sub_1AAF6B594(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == 255)
  {
    if (v3 != 255)
    {
      return 0;
    }

    goto LABEL_11;
  }

  if (v3 == 255)
  {
    return 0;
  }

  v4 = *a1;
  v5 = *a2;
  if (*(a1 + 8))
  {
    if (v2 != 1)
    {
      if (*&v4 <= 1)
      {
        v2 = 0;
        if (v4 == 0.0)
        {
          if (v3 != 2 || v5 != 0.0)
          {
            return v2;
          }
        }

        else if (v3 != 2 || *&v5 != 1)
        {
          return v2;
        }
      }

      else if (*&v4 == 2)
      {
        v2 = 0;
        if (v3 != 2 || *&v5 != 2)
        {
          return v2;
        }
      }

      else if (*&v4 == 3)
      {
        v2 = 0;
        if (v3 != 2 || *&v5 != 3)
        {
          return v2;
        }
      }

      else
      {
        v2 = 0;
        if (v3 != 2 || *&v5 != 4)
        {
          return v2;
        }
      }

      goto LABEL_11;
    }

    v2 = 0;
    if (v3 != 1)
    {
      return v2;
    }
  }

  else if (*(a2 + 8))
  {
    return v2;
  }

  if (v4 != v5)
  {
    return v2;
  }

LABEL_11:
  v7 = *(a1 + 40);
  v2 = v7 >> 8;
  v8 = *(a2 + 40);
  if (v2 > 0xFE)
  {
    if (v8 >> 8 <= 0xFE)
    {
      return 0;
    }

    goto LABEL_34;
  }

  v9 = v8 >> 8;
  if (v8 >> 8 > 0xFE)
  {
    return 0;
  }

  v10 = *(a1 + 16);
  v11 = *(a2 + 16);
  if (v7 >> 8 > 1)
  {
    if (v2 == 2)
    {
      v2 = 0;
      if (v9 != 2)
      {
        return v2;
      }

      goto LABEL_33;
    }

    if (v9 != 3)
    {
      return 0;
    }

    v2 = 0;
    if (v10 == v11 && *(a1 + 24) == *(a2 + 24))
    {
      if (v7 == 0xFF)
      {
        if (v8 != 0xFF)
        {
          return 0;
        }

        goto LABEL_34;
      }

      if (v8 == 0xFF)
      {
        return 0;
      }

      v10 = *(a1 + 32);
      v11 = *(a2 + 32);
      v2 = *(a1 + 40);
      if (*(a1 + 40))
      {
        if (v2 == 1)
        {
          v2 = 0;
          if (*(a2 + 40) != 1)
          {
            return v2;
          }
        }

        else
        {
          v2 = 0;
          if (*(a2 + 40) != 2)
          {
            return v2;
          }
        }
      }

      else if (*(a2 + 40))
      {
        return v2;
      }

      goto LABEL_33;
    }

    return v2;
  }

  if (v2)
  {
    v2 = 0;
    if (v9 == 1)
    {
      goto LABEL_33;
    }

    return v2;
  }

  if (v9)
  {
    return v2;
  }

LABEL_33:
  if (v10 != v11)
  {
    return v2;
  }

LABEL_34:
  v12 = *(a1 + 64);
  v13 = *(a2 + 64);
  if (v12 != 255)
  {
    return v13 != 255 && (sub_1AAF6B2F0(*(a1 + 48), *(a1 + 56), v12, *(a2 + 48), *(a2 + 56), v13) & 1) != 0;
  }

  return v13 == 255;
}

uint64_t sub_1AAF6B7F8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = a1;
      *(v9 + 24) = a2;

      v8 = sub_1AAF6C0D8(sub_1AAF6BCFC, v9);
      goto LABEL_7;
    }

    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;

    v7 = sub_1AAF6BCFC;
  }

  else
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;

    v7 = sub_1AAF6C088;
  }

  v8 = sub_1AAF6C0AC(v7, v6);
LABEL_7:
  v10 = v8;

  sub_1AADC6930(a1, a2, a3);

  return v10;
}

uint64_t sub_1AAF6B92C(uint64_t result, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v7 = a3 >> 5;
  if (v7 > 3)
  {
    if ((a3 >> 5) > 5u)
    {
      if (v7 != 6)
      {
        v23 = result;
        if ((a3 & 0x1Fu) > 1)
        {
          if ((a3 & 0x1F) == 2)
          {
            v25 = swift_allocObject();
            *(v25 + 16) = v23;
            *(v25 + 24) = a2;
            sub_1AADC681C(v23, a2, 2u);
            v13 = sub_1AAF6C210(sub_1AAF6BD14, v25);
          }

          else
          {
            v27 = swift_allocObject();
            *(v27 + 16) = v23;
            *(v27 + 24) = a2;
            sub_1AADC681C(v23, a2, 3u);
            v13 = sub_1AAF6C250(sub_1AAF6BD04, v27);
          }

          sub_1AADC6888(v23, a2, a3);
          return v13;
        }

        if ((a3 & 0x1F) != 0)
        {
          v26 = swift_allocObject();
          *(v26 + 16) = v23;
          *(v26 + 24) = a2;
          sub_1AADC681C(v23, a2, 1u);
          v13 = sub_1AAF6C230(sub_1AAF6BD0C, v26);

          sub_1AADC6888(v23, a2, a3);
          return v13;
        }

        v24 = swift_allocObject();
        *(v24 + 16) = v23;
        *(v24 + 24) = a2;
        sub_1AADC681C(v23, a2, 0);
        v13 = sub_1AAF6C1F0(sub_1AAF6BD1C, v24);

        v22 = v23;
        goto LABEL_18;
      }

      v15 = result;

      v17 = sub_1AAF6C408(v19);
    }

    else
    {
      v15 = result;
      if (v7 == 4)
      {

        v17 = sub_1AAF6C1D4(v16);
      }

      else
      {

        v17 = sub_1AAF6C34C(v21);
      }
    }

LABEL_17:
    v13 = v17;

    sub_1AADC6888(v15, a2, a3);
    v22 = v15;
LABEL_18:
    sub_1AADC6888(v22, a2, a3);
    return v13;
  }

  if ((a3 >> 5) > 1u)
  {
    v15 = result;

    if (v7 == 2)
    {
      v17 = sub_1AACC0420(v18);
    }

    else
    {
      v17 = sub_1AAF6C1B8(v18);
    }

    goto LABEL_17;
  }

  if (a3 >> 5)
  {
    v15 = result;

    v17 = sub_1AAF6C330(v20);
    goto LABEL_17;
  }

  v8 = *(a4 + 16);
  v9 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    *(a4 + 16) = v9;
    sub_1AACB4144(0, &qword_1ED9B3D70, MEMORY[0x1E69E7DE0], type metadata accessor for ParametersContext.ParameterSignalContainer);
    v12 = v11;
    v29 = v11;
    v30 = &off_1F1FE4488;
    v28[0] = v10;
    swift_beginAccess();
    result = sub_1AACB8910(v28, v9);
    v13 = *(a4 + 16);
    v14 = v13 + 1;
    if (!__OFADD__(v13, 1))
    {
      *(a4 + 16) = v14;
      v29 = v12;
      v30 = &off_1F1FE4488;
      v28[0] = a2;
      sub_1AACB8910(v28, v14);
      swift_endAccess();

      return v13;
    }
  }

  __break(1u);
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for PartialSpec.Values(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PartialSpec.Values(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PartialSpec.Values(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1AAF6BE50()
{
  result = qword_1EB427420;
  if (!qword_1EB427420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB427420);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PartialSpec.ScaleRange(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 17))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 16);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PartialSpec.ScaleRange(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1AAF6BF7C()
{
  result = qword_1EB427428;
  if (!qword_1EB427428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB427428);
  }

  return result;
}

uint64_t sub_1AAF6BFD0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_1AAF6C01C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = ~a2;
    }
  }

  return result;
}

uint64_t sub_1AAF6C104(uint64_t result, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t, uint64_t))
{
  v5 = v4;
  v6 = *(v4 + 16);
  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    *(v5 + 16) = v7;
    v11[3] = a3(0);
    v11[4] = &off_1F1FE4488;
    v11[0] = v10;
    v11[1] = a2;
    swift_beginAccess();
    a4(v10, a2);
    sub_1AACB8910(v11, v7);
    swift_endAccess();
    return *(v5 + 16);
  }

  return result;
}

uint64_t sub_1AAF6C270(uint64_t result, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  v5 = v4;
  v6 = *(v4 + 16);
  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    *(v5 + 16) = v7;
    sub_1AAF6FB8C(0, a3, a4);
    v11[3] = v10;
    v11[4] = &off_1F1FE4488;
    v11[0] = v9;
    v11[1] = a2;
    swift_beginAccess();

    sub_1AACB8910(v11, v7);
    swift_endAccess();
    return *(v5 + 16);
  }

  return result;
}

uint64_t sub_1AAF6C34C(uint64_t result)
{
  v2 = v1;
  v3 = *(v1 + 16);
  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    *(v2 + 16) = v4;
    sub_1AACB4194(0, &qword_1EB427450, MEMORY[0x1E697DB90], type metadata accessor for ParametersContext.ParameterSignalContainer);
    v7[3] = v6;
    v7[4] = &off_1F1FE4488;
    v7[0] = v5;
    swift_beginAccess();

    sub_1AACB8910(v7, v4);
    swift_endAccess();
    return *(v2 + 16);
  }

  return result;
}

BOOL sub_1AAF6C424(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1AAF6CEA0(v7, v9);
}

uint64_t sub_1AAF6C490@<X0>(void *a1@<X8>)
{
  if (qword_1EB422C10 != -1)
  {
    result = swift_once();
  }

  v2 = qword_1EB432210;
  v3 = *(qword_1EB432210 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v7 = MEMORY[0x1E69E7CC0];
    sub_1AAF901E4();
    v5 = v2 + 32;
    do
    {
      v5 += 8;

      sub_1AAF8DA44();
      sub_1AAF901B4();
      sub_1AAF901F4();
      sub_1AAF90204();
      result = sub_1AAF901C4();
      --v3;
    }

    while (v3);
    v4 = v7;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1AAF6C5A0@<X0>(void *a1@<X8>)
{
  if (qword_1EB422C18 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EB432218;
}

uint64_t sub_1AAF6C610@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  if (*(a1 + 80))
  {
    if (qword_1EB422C30 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_1ED9AEC20 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:

  *a2 = result;
  return result;
}

uint64_t sub_1AAF6C6B8@<X0>(char a1@<W1>, uint64_t *a2@<X8>)
{
  if (a1 == 2)
  {
    if (qword_1EB422C38 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_1ED9B03C0 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:

  *a2 = result;
  return result;
}

uint64_t sub_1AAF6C7C4()
{
  if (*(v0 + 8) == 1)
  {
    sub_1AAF906B4();
  }

  else
  {
    v1 = *v0;
    sub_1AAF906B4();
    MEMORY[0x1AC5992C0](v1);
  }

  if (*(v0 + 24) == 1)
  {
    sub_1AAF906B4();
  }

  else
  {
    v2 = v0[2];
    sub_1AAF906B4();
    MEMORY[0x1AC5992C0](v2);
  }

  if (*(v0 + 40) == 1)
  {
    sub_1AAF906B4();
  }

  else
  {
    v3 = v0[4];
    sub_1AAF906B4();
    MEMORY[0x1AC5992C0](v3);
  }

  if (*(v0 + 56) == 1)
  {
    sub_1AAF906B4();
  }

  else
  {
    v4 = v0[6];
    sub_1AAF906B4();
    MEMORY[0x1AC5992C0](v4);
  }

  if (*(v0 + 72) == 1)
  {
    return sub_1AAF906B4();
  }

  v6 = v0[8];
  sub_1AAF906B4();
  return MEMORY[0x1AC5992C0](v6);
}

uint64_t sub_1AAF6C8CC()
{
  sub_1AAF90694();
  sub_1AAF6C7C4();
  return sub_1AAF906F4();
}

uint64_t sub_1AAF6C910()
{
  sub_1AAF90694();
  sub_1AAF6C7C4();
  return sub_1AAF906F4();
}

BOOL sub_1AAF6C94C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 9) = *(a1 + 57);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 9) = *(a2 + 57);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1AAF6CDCC(v7, v9);
}

uint64_t sub_1AAF6C9A8()
{
  v1 = *v0;
  sub_1AAF906B4();
  if (v1 != 9)
  {
    MEMORY[0x1AC5992C0](v1);
  }

  if (v0[16] == 1)
  {
    sub_1AAF906B4();
  }

  else
  {
    v2 = *(v0 + 1);
    sub_1AAF906B4();
    MEMORY[0x1AC5992C0](v2);
  }

  if (v0[32] == 1)
  {
    sub_1AAF906B4();
  }

  else
  {
    v3 = *(v0 + 3);
    sub_1AAF906B4();
    MEMORY[0x1AC5992C0](v3);
  }

  return MEMORY[0x1AC5992C0](*(v0 + 5));
}

uint64_t sub_1AAF6CA5C()
{
  sub_1AAF90694();
  sub_1AAF6C9A8();
  return sub_1AAF906F4();
}

uint64_t sub_1AAF6CAA0()
{
  sub_1AAF90694();
  sub_1AAF6C9A8();
  return sub_1AAF906F4();
}

BOOL sub_1AAF6CADC(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1AAF6CD40(v7, v8);
}

uint64_t sub_1AAF6CB24()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  sub_1AAF90694();
  sub_1AAF906B4();
  sub_1AAF906B4();
  if (v2)
  {
    sub_1AAD7A524(v4, v2);
  }

  sub_1AAD7A434(v4, v1);
  return sub_1AAF906F4();
}

uint64_t sub_1AAF6CBAC(uint64_t a1)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  sub_1AAF906B4();
  sub_1AAF906B4();
  if (v4)
  {
    sub_1AAD7A524(a1, v4);
  }

  return sub_1AAD7A434(a1, v3);
}

uint64_t sub_1AAF6CC28()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  sub_1AAF90694();
  sub_1AAF906B4();
  sub_1AAF906B4();
  if (v2)
  {
    sub_1AAD7A524(v4, v2);
  }

  sub_1AAD7A434(v4, v1);
  return sub_1AAF906F4();
}

uint64_t sub_1AAF6CCAC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v7 = *(a2 + 1);
  v8 = *(a2 + 2);
  if (!v4)
  {
    if (!v7)
    {
      goto LABEL_8;
    }

    return 0;
  }

  if (!v7 || (sub_1AACF1088(v4, v7) & 1) == 0)
  {
    return 0;
  }

LABEL_8:

  return sub_1AAD798E4(v5, v8);
}

BOOL sub_1AAF6CD40(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 9)
  {
    if (v3 != 9)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  v4 = a2[16];
  if (a1[16])
  {
    if (a2[16])
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (*(a1 + 1) != *(a2 + 1))
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

LABEL_11:
  v5 = a2[32];
  if (a1[32])
  {
    if (!a2[32])
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 3) != *(a2 + 3))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  return *(a1 + 5) == *(a2 + 5);
}

BOOL sub_1AAF6CDCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  v4 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  v6 = *(a2 + 72);
  if ((*(a1 + 72) & 1) == 0)
  {
    if (*(a1 + 64) != *(a2 + 64))
    {
      v6 = 1;
    }

    return (v6 & 1) == 0;
  }

  return (*(a2 + 72) & 1) != 0;
}

BOOL sub_1AAF6CEA0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || ((*(a1 + 24) ^ *(a2 + 24)) & 1) != 0)
  {
    return 0;
  }

  if ((sub_1AACF0AB8(*(a1 + 32), *(a2 + 32)) & 1) != 0 && (sub_1AACF0880(*(a1 + 40), *(a2 + 40)) & 1) != 0 && ((*(a1 + 48) ^ *(a2 + 48)) & 1) == 0 && ((*(a1 + 48) ^ *(a2 + 48)) & 0x100) == 0 && *(a1 + 56) == *(a2 + 56))
  {
    return *(a1 + 64) == *(a2 + 64);
  }

  return 0;
}

uint64_t sub_1AAF6CF6C@<X0>(uint64_t result@<X0>, unsigned __int8 a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, __int16 a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v10 = result;
  v12 = *(result + 16);
  v13 = *(result + 24);
  v14 = *(result + 32);
  v15 = *(result + 40);
  v16 = *(result + 8);
  if (v16 == 254 || (v17 = *(result + 64), v17 == 255))
  {
    result = sub_1AAEA7F5C(&v67, a7, 0);
    v66 = result;
    v18 = 0;
    v24 = 32;
  }

  else
  {
    v18 = *(result + 56);
    v66 = *(result + 48);
    v19 = v18;
    if (v17 == 6)
    {
      v19 = 0;
      v20 = -63;
    }

    else
    {
      v20 = -32;
    }

    if (v17 == 4)
    {
      v21 = -127;
    }

    else
    {
      v21 = -95;
    }

    if (*(result + 64) <= 5u)
    {
      v19 = 0;
      v20 = v21;
    }

    if (v17 == 2)
    {
      v22 = 65;
    }

    else
    {
      v22 = 97;
    }

    if (*(result + 64))
    {
      v18 = 0;
      v23 = 33;
    }

    else
    {
      v23 = 0;
    }

    if (*(result + 64) > 1u)
    {
      v18 = 0;
      v23 = v22;
    }

    if (*(result + 64) <= 3u)
    {
      v24 = v23;
    }

    else
    {
      v18 = v19;
      v24 = v20;
    }
  }

  v65 = v24;
  v64 = v18;
  v25 = 2;
  if (!a3)
  {
    if (v16 == 254)
    {
      v71 = 0;
    }

    else
    {
      v38 = *v10;
      if (v16 == 255)
      {
        v38 = 0;
      }

      v71 = v38;
      if (v16 == 255)
      {
        v25 = 2;
      }

      else
      {
        v25 = v16;
      }

      v39 = v15 >> 8;
      if (v15 >> 8 <= 0xFE)
      {
        if (v39 == 3)
        {
          goto LABEL_94;
        }

        if (!v39)
        {
          v30 = v25;

          v35 = 0;
          v36 = 0;
          v13 = 0;
          v14 = 0;
          v37 = 0x8000000000000000;
          goto LABEL_73;
        }

        goto LABEL_90;
      }
    }

    v40 = *(a6 + 16);
    v41 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    v42 = v25;
    *(a6 + 16) = v41;
    sub_1AACB40E8(0, &qword_1ED9B12C0, &qword_1ED9B2A20, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    v69 = v43;
    v70 = &off_1F1FE4488;
    LOBYTE(v67) = 2;
    swift_beginAccess();
    result = sub_1AACB8910(&v67, v41);
    v12 = *(a6 + 16);
    if (__OFADD__(v12, 1))
    {
LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    *(a6 + 16) = v12 + 1;
    sub_1AACB4194(0, &qword_1ED9B12C8, MEMORY[0x1E69E6370], type metadata accessor for ParametersContext.ParameterSignalContainer);
    v69 = v44;
    v70 = &off_1F1FE4488;
    LOBYTE(v67) = 0;
    sub_1AACB8910(&v67, v12 + 1);
    swift_endAccess();
    v13 = *(a6 + 16);
LABEL_54:
    v14 = sub_1AAF6C104(0, 0, sub_1AAF6F9BC, sub_1AACBD93C);
    v35 = v12;
    v25 = v42;
    goto LABEL_55;
  }

  if (a3 == 1)
  {
    if (v16 == 254)
    {
      v71 = 0;
LABEL_37:
      v28 = *(a6 + 16);
      v29 = v28 + 1;
      if (!__OFADD__(v28, 1))
      {
        v30 = v25;
        *(a6 + 16) = v29;
        sub_1AACB40E8(0, &qword_1ED9B12C0, &qword_1ED9B2A20, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
        v69 = v31;
        v70 = &off_1F1FE4488;
        LOBYTE(v67) = 2;
        swift_beginAccess();
        result = sub_1AACB8910(&v67, v29);
        v32 = *(a6 + 16);
        v33 = v32 + 1;
        if (!__OFADD__(v32, 1))
        {
          *(a6 + 16) = v33;
          sub_1AACB4194(0, &qword_1ED9B12C8, MEMORY[0x1E69E6370], type metadata accessor for ParametersContext.ParameterSignalContainer);
          v69 = v34;
          v70 = &off_1F1FE4488;
          LOBYTE(v67) = 0;
          sub_1AACB8910(&v67, v33);
          swift_endAccess();
          v13 = *(a6 + 16);
          goto LABEL_40;
        }

        goto LABEL_106;
      }

      __break(1u);
      goto LABEL_104;
    }

    v26 = *v10;
    if (v16 == 255)
    {
      v26 = 0;
    }

    v71 = v26;
    if (v16 == 255)
    {
      v25 = 2;
    }

    else
    {
      v25 = v16;
    }

    v27 = v15 >> 8;
    if (v15 >> 8 > 0xFE)
    {
      goto LABEL_37;
    }

    if (v27 != 3)
    {
      if (v27 == 1)
      {
        v30 = v25;

        v35 = 0;
        v36 = 0;
        v13 = 0;
        v14 = 0;
        v37 = 0xA000000000000000;
LABEL_73:
        v56 = v66;
        v57 = v65;
LABEL_80:
        *a8 = v71;
        *(a8 + 8) = v30;
        *(a8 + 16) = v12;
        *(a8 + 24) = v35;
        *(a8 + 32) = v36;
        *(a8 + 40) = v13;
        *(a8 + 48) = v37;
        *(a8 + 56) = v14;
        *(a8 + 64) = v56;
        *(a8 + 72) = v64;
        *(a8 + 80) = v57;
        return result;
      }

      goto LABEL_97;
    }

    v30 = v25;
    if (v15 == 1)
    {
LABEL_41:
      v12 = a4;
      if ((a5 & 0xFF00) == 0x200 || a5 != 1)
      {
        v12 = sub_1AACC0374(MEMORY[0x1E69E7CC0], &qword_1ED9B3D50, &qword_1ED9B2A30, MEMORY[0x1E69E63B0]);
      }

      v35 = sub_1AAEA7E5C(&v67, sub_1AAF7030C, 0);

      v36 = 0;
      v37 = 0x2000000000000100;
      goto LABEL_73;
    }

    if (v15 == 255)
    {
LABEL_40:
      v14 = sub_1AAF6C104(0, 0, sub_1AAF6F9BC, sub_1AACBD93C);
      goto LABEL_41;
    }

    __break(1u);
LABEL_94:
    if (v15)
    {
      v42 = v25;
      if (v15 != 255)
      {
        __break(1u);
LABEL_97:
        v67 = 0;
        v68 = 0xE000000000000000;
        sub_1AAF900D4();
        MEMORY[0x1AC5982F0](0xD000000000000058, 0x80000001AAFD05D0);
        sub_1AAF90284();
        v59 = v67;
        v58 = v68;
        goto LABEL_98;
      }

      goto LABEL_54;
    }

LABEL_102:
    v35 = v12;
LABEL_55:
    v45 = a4;
    if (v25 == 1 || v25 == 2 && v71 == 2)
    {
      v30 = v25;
      v35 = sub_1AAEA7E5C(&v67, sub_1AAF7030C, 0);

      v46 = 0;
      v47 = 0;
    }

    else
    {
      v30 = v25;
      v46 = (a2 < 9u) & (0x187u >> a2);
      v47 = 2;
    }

    if ((a5 & 0xFF00) == 0x200 || a5)
    {
      v45 = sub_1AACC0374(MEMORY[0x1E69E7CC0], &qword_1ED9B3D50, &qword_1ED9B2A30, MEMORY[0x1E69E63B0]);

      result = sub_1AAEAEF98(v35, v46, v47);
    }

    else
    {
      sub_1AAEAEF98(v35, v46, v47);
    }

    v56 = v66;
    v57 = v65;
    v36 = v46 | (v47 << 8);
    v37 = 256;
    v12 = v45;
    goto LABEL_80;
  }

  if (v16 == 254)
  {
    v71 = 0;
    goto LABEL_65;
  }

  v48 = *v10;
  if (v16 == 255)
  {
    v48 = 0;
  }

  v71 = v48;
  if (v16 == 255)
  {
    v25 = 2;
  }

  else
  {
    v25 = v16;
  }

  v49 = v15 >> 8;
  if (v15 >> 8 <= 0xFE)
  {
    if (v49 == 3)
    {
      v30 = v25;
      if (v15 == 2)
      {
LABEL_69:
        v12 = a4;
        if ((a5 & 0xFF00) == 0x200 || a5 != 2)
        {
          v12 = sub_1AACC0374(MEMORY[0x1E69E7CC0], &qword_1ED9AFF80, &qword_1ED9B0C88, MEMORY[0x1E69E6158]);
        }

        v35 = sub_1AAEA7E5C(&v67, sub_1AAF7030C, 0);

        v36 = 0;
        v37 = 0x4000000000000100;
        goto LABEL_73;
      }

      if (v15 != 255)
      {
        __break(1u);
        goto LABEL_102;
      }

LABEL_68:
      v14 = sub_1AAF6C104(0, 0, sub_1AAF6FA34, sub_1AADFB604);
      goto LABEL_69;
    }

    if (v49 == 2)
    {
      v30 = v25;

      v35 = 0;
      v36 = 0;
      v13 = 0;
      v14 = 0;
      v37 = 0xC000000000000000;
      goto LABEL_73;
    }

LABEL_90:
    v58 = 0x80000001AAFD0590;
    v59 = 0xD00000000000003BLL;
LABEL_98:
    sub_1AAF6F968();
    swift_allocError();
    *v60 = v59;
    v60[1] = v58;
    swift_willThrow();
    sub_1AAD12C64(v66, v64, v65);
  }

LABEL_65:
  v50 = *(a6 + 16);
  v51 = v50 + 1;
  if (__OFADD__(v50, 1))
  {
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v30 = v25;
  *(a6 + 16) = v51;
  sub_1AACB40E8(0, &qword_1ED9B12C0, &qword_1ED9B2A20, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
  v69 = v52;
  v70 = &off_1F1FE4488;
  LOBYTE(v67) = 2;
  swift_beginAccess();
  result = sub_1AACB8910(&v67, v51);
  v53 = *(a6 + 16);
  v54 = v53 + 1;
  if (!__OFADD__(v53, 1))
  {
    *(a6 + 16) = v54;
    sub_1AACB4194(0, &qword_1ED9B12C8, MEMORY[0x1E69E6370], type metadata accessor for ParametersContext.ParameterSignalContainer);
    v69 = v55;
    v70 = &off_1F1FE4488;
    LOBYTE(v67) = 0;
    sub_1AACB8910(&v67, v54);
    swift_endAccess();
    v13 = *(a6 + 16);
    goto LABEL_68;
  }

LABEL_108:
  __break(1u);
  return result;
}

uint64_t sub_1AAF6D8C0@<X0>(uint64_t result@<X0>, unsigned __int8 a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v11 = result;
  v13 = *(result + 16);
  v14 = *(result + 32);
  LODWORD(v15) = *(result + 40);
  v16 = *(result + 8);
  v73 = *(result + 24);
  if (v16 == 254 || (v17 = *(result + 64), v17 == 255))
  {
    if (a7 == 2)
    {
      result = sub_1AAEA8034(&v69, sub_1AAF6C490, 0);
      v68 = result;
      v18 = 0;
      v24 = 96;
    }

    else
    {
      result = sub_1AAEA810C(&v69, sub_1AAF6C5A0, 0);
      v68 = result;
      v18 = 0;
      v24 = -96;
    }
  }

  else
  {
    v18 = *(result + 56);
    v68 = *(result + 48);
    v19 = v18;
    if (v17 == 6)
    {
      v19 = 0;
      v20 = -63;
    }

    else
    {
      v20 = -32;
    }

    if (v17 == 4)
    {
      v21 = -127;
    }

    else
    {
      v21 = -95;
    }

    if (*(result + 64) <= 5u)
    {
      v19 = 0;
      v20 = v21;
    }

    if (v17 == 2)
    {
      v22 = 65;
    }

    else
    {
      v22 = 97;
    }

    if (*(result + 64))
    {
      v18 = 0;
      v23 = 33;
    }

    else
    {
      v23 = 0;
    }

    if (*(result + 64) > 1u)
    {
      v18 = 0;
      v23 = v22;
    }

    if (*(result + 64) <= 3u)
    {
      v24 = v23;
    }

    else
    {
      v18 = v19;
      v24 = v20;
    }
  }

  v67 = v24;
  v66 = v18;
  v25 = 2;
  if (!a3)
  {
    v63 = a5;
    if (v16 == 254)
    {
      v26 = 0;
    }

    else
    {
      if (v16 == 255)
      {
        a5 = 0;
      }

      else
      {
        a5 = *v11;
      }

      if (v16 == 255)
      {
        v25 = 2;
      }

      else
      {
        v25 = v16;
      }

      v39 = v15 >> 8;
      if (v15 >> 8 <= 0xFE)
      {
        if (v39 == 3)
        {
LABEL_104:
          if (!v15)
          {
            v36 = v13;
LABEL_61:
            v45 = a4;
            if (v25 == 1 || v25 == 2 && a5 == 2)
            {
              v31 = v25;
              v36 = sub_1AAEA7E5C(&v69, sub_1AAF7030C, 0);

              v46 = 0;
              v47 = 0;
            }

            else
            {
              v31 = v25;
              v46 = (a2 < 9u) & (0x187u >> a2);
              v47 = 2;
            }

            if ((v63 & 0xFF00) == 0x200 || v63)
            {
              v45 = sub_1AACC0374(MEMORY[0x1E69E7CC0], &qword_1ED9B3D50, &qword_1ED9B2A30, MEMORY[0x1E69E63B0]);

              result = sub_1AAEAEF98(v36, v46, v47);
            }

            else
            {
              sub_1AAEAEF98(v36, v46, v47);
            }

            v55 = v68;
            v56 = v67;
            v37 = v46 | (v47 << 8);
            v38 = 256;
            v13 = v45;
            v15 = a5;
            goto LABEL_88;
          }

          v42 = v25;
          if (v15 != 255)
          {
            __break(1u);
LABEL_107:
            v69 = 0;
            v70 = 0xE000000000000000;
            sub_1AAF900D4();
            MEMORY[0x1AC5982F0](0xD000000000000058, 0x80000001AAFD05D0);
            sub_1AAF90284();
            v59 = v69;
            v58 = v70;
            goto LABEL_108;
          }

LABEL_60:
          v14 = sub_1AAF6C104(0, 0, sub_1AAF6F9BC, sub_1AACBD93C);
          v36 = v13;
          v25 = v42;
          goto LABEL_61;
        }

        if (!v39)
        {
          v31 = v25;

          v36 = 0;
          v37 = 0;
          v57 = 0;
          v14 = 0;
          v38 = 0x8000000000000000;
          v55 = v68;
          v56 = v67;
          v15 = a5;
          goto LABEL_89;
        }

        goto LABEL_100;
      }

      v26 = a5;
    }

    v40 = *(a6 + 16);
    v41 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    v42 = v25;
    *(a6 + 16) = v41;
    sub_1AACB40E8(0, &qword_1ED9B12C0, &qword_1ED9B2A20, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    v71 = v43;
    v72 = &off_1F1FE4488;
    LOBYTE(v69) = 2;
    swift_beginAccess();
    result = sub_1AACB8910(&v69, v41);
    v13 = *(a6 + 16);
    if (__OFADD__(v13, 1))
    {
LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

    *(a6 + 16) = v13 + 1;
    sub_1AACB4194(0, &qword_1ED9B12C8, MEMORY[0x1E69E6370], type metadata accessor for ParametersContext.ParameterSignalContainer);
    v71 = v44;
    v72 = &off_1F1FE4488;
    LOBYTE(v69) = 0;
    sub_1AACB8910(&v69, v13 + 1);
    swift_endAccess();
    v73 = *(a6 + 16);
    a5 = v26;
    goto LABEL_60;
  }

  if (a3 == 1)
  {
    if (v16 == 254)
    {
      v15 = 0;
LABEL_41:
      v29 = *(a6 + 16);
      v30 = v29 + 1;
      if (!__OFADD__(v29, 1))
      {
        v31 = v25;
        *(a6 + 16) = v30;
        sub_1AACB40E8(0, &qword_1ED9B12C0, &qword_1ED9B2A20, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
        v71 = v32;
        v72 = &off_1F1FE4488;
        LOBYTE(v69) = 2;
        swift_beginAccess();
        result = sub_1AACB8910(&v69, v30);
        v33 = *(a6 + 16);
        v34 = v33 + 1;
        if (!__OFADD__(v33, 1))
        {
          *(a6 + 16) = v34;
          sub_1AACB4194(0, &qword_1ED9B12C8, MEMORY[0x1E69E6370], type metadata accessor for ParametersContext.ParameterSignalContainer);
          v71 = v35;
          v72 = &off_1F1FE4488;
          LOBYTE(v69) = 0;
          sub_1AACB8910(&v69, v34);
          swift_endAccess();
          v73 = *(a6 + 16);
LABEL_44:
          v14 = sub_1AAF6C104(0, 0, sub_1AAF6F9BC, sub_1AACBD93C);
          v13 = a4;
          goto LABEL_45;
        }

        goto LABEL_118;
      }

      __break(1u);
      goto LABEL_116;
    }

    if (v16 == 255)
    {
      v27 = 0;
    }

    else
    {
      v27 = *v11;
    }

    if (v16 == 255)
    {
      v25 = 2;
    }

    else
    {
      v25 = v16;
    }

    v28 = v15 >> 8;
    if (v15 >> 8 > 0xFE)
    {
      v15 = v27;
      goto LABEL_41;
    }

    if (v28 != 3)
    {
      if (v28 == 1)
      {
        v31 = v25;

        v36 = 0;
        v37 = 0;
        v57 = 0;
        v14 = 0;
        v38 = 0xA000000000000000;
LABEL_99:
        v55 = v68;
        v56 = v67;
        v15 = v27;
        goto LABEL_89;
      }

      goto LABEL_107;
    }

    v31 = v25;
    v60 = v15;
    if (v15 != 1)
    {
      v15 = v27;
      if (v60 == 255)
      {
        goto LABEL_44;
      }

      __break(1u);
      goto LABEL_104;
    }

LABEL_112:
    v13 = a4;
    v15 = v27;
LABEL_45:
    if ((a5 & 0xFF00) == 0x200 || a5 != 1)
    {
      v13 = sub_1AACC0374(MEMORY[0x1E69E7CC0], &qword_1ED9B3D50, &qword_1ED9B2A30, MEMORY[0x1E69E63B0]);
    }

    v36 = sub_1AAEA7E5C(&v69, sub_1AAF7030C, 0);

    v37 = 0;
    v38 = 0x2000000000000100;
LABEL_81:
    v55 = v68;
    v56 = v67;
LABEL_88:
    v57 = v73;
LABEL_89:
    *a8 = v15;
    *(a8 + 8) = v31;
    *(a8 + 16) = v13;
    *(a8 + 24) = v36;
    *(a8 + 32) = v37;
    *(a8 + 40) = v57;
    *(a8 + 48) = v38;
    *(a8 + 56) = v14;
    *(a8 + 64) = v55;
    *(a8 + 72) = v66;
    *(a8 + 80) = v56;
    return result;
  }

  if (v16 == 254)
  {
    v15 = 0;
    goto LABEL_73;
  }

  if (v16 == 255)
  {
    v27 = 0;
  }

  else
  {
    v27 = *v11;
  }

  if (v16 == 255)
  {
    LOBYTE(v25) = 2;
  }

  else
  {
    LOBYTE(v25) = v16;
  }

  v48 = v15 >> 8;
  if (v15 >> 8 <= 0xFE)
  {
    if (v48 == 3)
    {
      v31 = v25;
      v62 = v15;
      if (v15 == 2)
      {
        v13 = a4;
        v15 = v27;
LABEL_77:
        if ((a5 & 0xFF00) == 0x200 || a5 != 2)
        {
          v13 = sub_1AACC0374(MEMORY[0x1E69E7CC0], &qword_1ED9AFF80, &qword_1ED9B0C88, MEMORY[0x1E69E6158]);
        }

        v36 = sub_1AAEA7E5C(&v69, sub_1AAF7030C, 0);

        v37 = 0;
        v38 = 0x4000000000000100;
        goto LABEL_81;
      }

      v15 = v27;
      if (v62 != 255)
      {
        __break(1u);
        goto LABEL_112;
      }

LABEL_76:
      v14 = sub_1AAF6C104(0, 0, sub_1AAF6FA34, sub_1AADFB604);
      v13 = a4;
      goto LABEL_77;
    }

    if (v48 == 2)
    {
      v31 = v25;

      v36 = 0;
      v37 = 0;
      v57 = 0;
      v14 = 0;
      v38 = 0xC000000000000000;
      goto LABEL_99;
    }

LABEL_100:
    v58 = 0x80000001AAFD0590;
    v59 = 0xD00000000000003BLL;
LABEL_108:
    sub_1AAF6F968();
    swift_allocError();
    *v61 = v59;
    v61[1] = v58;
    swift_willThrow();
    sub_1AAD12C64(v68, v66, v67);
  }

  v15 = v27;
LABEL_73:
  v49 = *(a6 + 16);
  v50 = v49 + 1;
  if (__OFADD__(v49, 1))
  {
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v31 = v25;
  *(a6 + 16) = v50;
  sub_1AACB40E8(0, &qword_1ED9B12C0, &qword_1ED9B2A20, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
  v71 = v51;
  v72 = &off_1F1FE4488;
  LOBYTE(v69) = 2;
  swift_beginAccess();
  result = sub_1AACB8910(&v69, v50);
  v52 = *(a6 + 16);
  v53 = v52 + 1;
  if (!__OFADD__(v52, 1))
  {
    *(a6 + 16) = v53;
    sub_1AACB4194(0, &qword_1ED9B12C8, MEMORY[0x1E69E6370], type metadata accessor for ParametersContext.ParameterSignalContainer);
    v71 = v54;
    v72 = &off_1F1FE4488;
    LOBYTE(v69) = 0;
    sub_1AACB8910(&v69, v53);
    swift_endAccess();
    v73 = *(a6 + 16);
    goto LABEL_76;
  }

LABEL_120:
  __break(1u);
  return result;
}

uint64_t sub_1AAF6E2A8@<X0>(uint64_t *a1@<X0>, unsigned __int8 a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, __int16 a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v14 = a1[2];
  v70 = a1[4];
  v71 = a1[3];
  LODWORD(v15) = *(a1 + 20);
  v16 = *(a1 + 8);
  if (v16 != 254)
  {
    v17 = *(a1 + 64);
    if (v17 != 255)
    {
      v18 = a1[7];
      v82 = a1[6];
      v19 = v18;
      if (v17 == 6)
      {
        v19 = 0;
        v20 = -63;
      }

      else
      {
        v20 = -32;
      }

      if (v17 == 4)
      {
        v21 = -127;
      }

      else
      {
        v21 = -95;
      }

      if (v17 <= 5)
      {
        v19 = 0;
        v20 = v21;
      }

      if (v17 == 2)
      {
        v22 = 65;
      }

      else
      {
        v22 = 97;
      }

      if (v17)
      {
        v18 = 0;
        v23 = 33;
      }

      else
      {
        v23 = 0;
      }

      if (v17 > 1)
      {
        v18 = 0;
        v23 = v22;
      }

      if (v17 <= 3)
      {
        v24 = v23;
      }

      else
      {
        v18 = v19;
        v24 = v20;
      }

LABEL_24:
      v75 = v24;
      v76 = v18;
      v28 = 2;
      if (a3)
      {
        if (a3 == 1)
        {
          if (v16 == 254)
          {
            v15 = 0;
LABEL_40:
            v32 = *(a6 + 16);
            v33 = v32 + 1;
            if (!__OFADD__(v32, 1))
            {
              *(a6 + 16) = v33;
              sub_1AACB40E8(0, &qword_1ED9B12C0, &qword_1ED9B2A20, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
              v80 = v34;
              v81 = &off_1F1FE4488;
              LOBYTE(v78) = 2;
              swift_beginAccess();
              sub_1AACB8910(&v78, v33);
              v35 = *(a6 + 16);
              v36 = v35 + 1;
              if (!__OFADD__(v35, 1))
              {
                *(a6 + 16) = v36;
                sub_1AACB4194(0, &qword_1ED9B12C8, MEMORY[0x1E69E6370], type metadata accessor for ParametersContext.ParameterSignalContainer);
                v80 = v37;
                v81 = &off_1F1FE4488;
                LOBYTE(v78) = 0;
                sub_1AACB8910(&v78, v36);
                swift_endAccess();
                v38 = *(a6 + 16);
LABEL_43:
                v39 = sub_1AAF6C104(0, 0, sub_1AAF6F9BC, sub_1AACBD93C);
                v14 = a4;
                v40 = a5;
                goto LABEL_44;
              }

              goto LABEL_116;
            }

            __break(1u);
            goto LABEL_114;
          }

          if (v16 == 255)
          {
            v30 = 0;
          }

          else
          {
            v30 = *a1;
          }

          if (v16 == 255)
          {
            v28 = 2;
          }

          else
          {
            v28 = v16;
          }

          v31 = v15 >> 8;
          if (v15 >> 8 > 0xFE)
          {
            v15 = v30;
            goto LABEL_40;
          }

          if (v31 != 3)
          {
            if (v31 == 1)
            {

              v41 = 0;
              v43 = 0;
              v38 = 0;
              v44 = 0xA000000000000000;
LABEL_95:
              v62 = v82;
              v63 = v75;
              v15 = v30;
              v39 = 0;
              goto LABEL_96;
            }

            goto LABEL_104;
          }

          v66 = v15;
          if (v15 != 1)
          {
            v15 = v30;
            v38 = v71;
            if (v66 == 255)
            {
              goto LABEL_43;
            }

            __break(1u);
            goto LABEL_101;
          }

LABEL_109:
          v14 = a4;
          v15 = v30;
          v40 = a5;
          v39 = v70;
          v38 = v71;
LABEL_44:
          if ((v40 & 0xFF00) == 0x200 || v40 != 1)
          {
            v14 = sub_1AACC0374(MEMORY[0x1E69E7CC0], &qword_1ED9B3D50, &qword_1ED9B2A30, MEMORY[0x1E69E63B0]);
          }

          v41 = sub_1AAEA7E5C(v77, sub_1AAF7030C, 0);

          v43 = 0;
          v44 = 0x2000000000000100;
LABEL_79:
          v62 = v82;
          v63 = v75;
LABEL_96:
          *a9 = v15;
          *(a9 + 8) = v28;
          *(a9 + 16) = v14;
          *(a9 + 24) = v41;
          *(a9 + 32) = v43;
          *(a9 + 40) = v38;
          *(a9 + 48) = v44;
          *(a9 + 56) = v39;
          *(a9 + 64) = v62;
          *(a9 + 72) = v76;
          *(a9 + 80) = v63;
          return result;
        }

        if (v16 == 254)
        {
          v15 = 0;
LABEL_71:
          v55 = *(a6 + 16);
          v56 = v55 + 1;
          if (__OFADD__(v55, 1))
          {
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
            goto LABEL_117;
          }

          *(a6 + 16) = v56;
          sub_1AACB40E8(0, &qword_1ED9B12C0, &qword_1ED9B2A20, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
          v80 = v57;
          v81 = &off_1F1FE4488;
          LOBYTE(v78) = 2;
          swift_beginAccess();
          sub_1AACB8910(&v78, v56);
          v58 = *(a6 + 16);
          v59 = v58 + 1;
          if (__OFADD__(v58, 1))
          {
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          *(a6 + 16) = v59;
          sub_1AACB4194(0, &qword_1ED9B12C8, MEMORY[0x1E69E6370], type metadata accessor for ParametersContext.ParameterSignalContainer);
          v80 = v60;
          v81 = &off_1F1FE4488;
          LOBYTE(v78) = 0;
          sub_1AACB8910(&v78, v59);
          swift_endAccess();
          v38 = *(a6 + 16);
          goto LABEL_74;
        }

        if (v16 == 255)
        {
          v30 = 0;
        }

        else
        {
          v30 = *a1;
        }

        if (v16 == 255)
        {
          LOBYTE(v28) = 2;
        }

        else
        {
          LOBYTE(v28) = v16;
        }

        v54 = v15 >> 8;
        if (v15 >> 8 > 0xFE)
        {
          v15 = v30;
          goto LABEL_71;
        }

        if (v54 == 3)
        {
          v68 = v15;
          if (v15 == 2)
          {
            v14 = a4;
            v15 = v30;
            v61 = a5;
            v39 = v70;
            v38 = v71;
LABEL_75:
            if ((v61 & 0xFF00) == 0x200 || v61 != 2)
            {
              v14 = sub_1AACC0374(MEMORY[0x1E69E7CC0], &qword_1ED9AFF80, &qword_1ED9B0C88, MEMORY[0x1E69E6158]);
            }

            v41 = sub_1AAEA7E5C(v77, sub_1AAF7030C, 0);

            v43 = 0;
            v44 = 0x4000000000000100;
            goto LABEL_79;
          }

          v15 = v30;
          v38 = v71;
          if (v68 != 255)
          {
            __break(1u);
            goto LABEL_109;
          }

LABEL_74:
          v39 = sub_1AAF6C104(0, 0, sub_1AAF6FA34, sub_1AADFB604);
          v14 = a4;
          v61 = a5;
          goto LABEL_75;
        }

        if (v54 == 2)
        {

          v41 = 0;
          v43 = 0;
          v38 = 0;
          v44 = 0xC000000000000000;
          goto LABEL_95;
        }

LABEL_97:
        v64 = 0x80000001AAFD0590;
        v65 = 0xD00000000000003BLL;
LABEL_105:
        sub_1AAF6F968();
        swift_allocError();
        *v67 = v65;
        v67[1] = v64;
        swift_willThrow();
        sub_1AAD12C64(v82, v76, v75);
      }

      if (v16 == 254)
      {
        v29 = 0;
      }

      else
      {
        if (v16 == 255)
        {
          v30 = 0;
        }

        else
        {
          v30 = *a1;
        }

        if (v16 == 255)
        {
          v28 = 2;
        }

        else
        {
          v28 = v16;
        }

        v45 = v15 >> 8;
        if (v15 >> 8 <= 0xFE)
        {
          if (v45 == 3)
          {
LABEL_101:
            if (!v15)
            {
              v41 = v14;
              v51 = a4;
              v69 = v30;
              v50 = v70;
              v38 = v71;
              if (v28 == 1)
              {
                goto LABEL_62;
              }

LABEL_60:
              if (v28 != 2 || v69 != 2)
              {
                v52 = (a2 < 9u) & (0x187u >> a2);
                v53 = 2;
LABEL_81:
                if ((a5 & 0xFF00) == 0x200 || a5)
                {
                  v51 = sub_1AACC0374(MEMORY[0x1E69E7CC0], &qword_1ED9B3D50, &qword_1ED9B2A30, MEMORY[0x1E69E63B0]);

                  result = sub_1AAEAEF98(v41, v52, v53);
                }

                else
                {
                  sub_1AAEAEF98(v41, v52, v53);
                }

                v63 = v75;
                v43 = v52 | (v53 << 8);
                v44 = 256;
                v14 = v51;
                v62 = v82;
                v39 = v50;
                v15 = v69;
                goto LABEL_96;
              }

LABEL_62:
              v41 = sub_1AAEA7E5C(v77, sub_1AAF7030C, 0);

              v52 = 0;
              v53 = 0;
              goto LABEL_81;
            }

            v29 = v30;
            v38 = v71;
            if (v15 != 255)
            {
              __break(1u);
LABEL_104:
              v78 = 0;
              v79 = 0xE000000000000000;
              sub_1AAF900D4();
              MEMORY[0x1AC5982F0](0xD000000000000058, 0x80000001AAFD05D0);
              v77[0] = a2;
              sub_1AAF90284();
              v65 = v78;
              v64 = v79;
              goto LABEL_105;
            }

LABEL_59:
            v69 = v29;
            v50 = sub_1AAF6C104(0, 0, sub_1AAF6F9BC, sub_1AACBD93C);
            v41 = v14;
            v51 = a4;
            if (v28 == 1)
            {
              goto LABEL_62;
            }

            goto LABEL_60;
          }

          if (!v45)
          {

            v41 = 0;
            v43 = 0;
            v38 = 0;
            v44 = 0x8000000000000000;
            goto LABEL_95;
          }

          goto LABEL_97;
        }

        v29 = v30;
      }

      v46 = *(a6 + 16);
      v47 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
LABEL_114:
        __break(1u);
        goto LABEL_115;
      }

      *(a6 + 16) = v47;
      sub_1AACB40E8(0, &qword_1ED9B12C0, &qword_1ED9B2A20, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
      v80 = v48;
      v81 = &off_1F1FE4488;
      LOBYTE(v78) = 2;
      swift_beginAccess();
      sub_1AACB8910(&v78, v47);
      v14 = *(a6 + 16);
      if (__OFADD__(v14, 1))
      {
LABEL_117:
        __break(1u);
        goto LABEL_118;
      }

      *(a6 + 16) = v14 + 1;
      sub_1AACB4194(0, &qword_1ED9B12C8, MEMORY[0x1E69E6370], type metadata accessor for ParametersContext.ParameterSignalContainer);
      v80 = v49;
      v81 = &off_1F1FE4488;
      LOBYTE(v78) = 0;
      sub_1AACB8910(&v78, v14 + 1);
      swift_endAccess();
      v38 = *(a6 + 16);
      goto LABEL_59;
    }
  }

  if (a7 == 2)
  {
    v25 = swift_allocObject();
    v26 = *(a8 + 48);
    *(v25 + 48) = *(a8 + 32);
    *(v25 + 64) = v26;
    *(v25 + 80) = *(a8 + 64);
    *(v25 + 96) = *(a8 + 80);
    v27 = *(a8 + 16);
    *(v25 + 16) = *a8;
    *(v25 + 32) = v27;
    sub_1AACC135C(a8, &v78);
    v82 = sub_1AAEA8208(v77, sub_1AAF6FB7C, v25);
    v18 = 0;
    v24 = 0x80;
    goto LABEL_24;
  }

LABEL_119:
  result = sub_1AAF902C4();
  __break(1u);
  return result;
}

uint64_t sub_1AAF6ECE8@<X0>(uint64_t result@<X0>, unsigned __int8 a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, __int16 a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v11 = result;
  v13 = *(result + 16);
  v68 = *(result + 24);
  v14 = *(result + 32);
  LODWORD(v15) = *(result + 40);
  v16 = *(result + 8);
  if (v16 == 254 || (v17 = *(result + 64), v17 == 255))
  {
    v25 = swift_allocObject();
    *(v25 + 16) = a7;
    result = sub_1AAEA82E0(&v74, sub_1AAF6FB84, v25);
    v78 = result;
    v18 = 0;
    v24 = -64;
  }

  else
  {
    v18 = *(result + 56);
    v78 = *(result + 48);
    v19 = v18;
    if (v17 == 6)
    {
      v19 = 0;
      v20 = -63;
    }

    else
    {
      v20 = -32;
    }

    if (v17 == 4)
    {
      v21 = -127;
    }

    else
    {
      v21 = -95;
    }

    if (v17 <= 5)
    {
      v19 = 0;
      v20 = v21;
    }

    if (v17 == 2)
    {
      v22 = 65;
    }

    else
    {
      v22 = 97;
    }

    if (v17)
    {
      v18 = 0;
      v23 = 33;
    }

    else
    {
      v23 = 0;
    }

    if (v17 > 1)
    {
      v18 = 0;
      v23 = v22;
    }

    if (v17 <= 3)
    {
      v24 = v23;
    }

    else
    {
      v18 = v19;
      v24 = v20;
    }
  }

  v73 = v24;
  v72 = v18;
  v26 = 2;
  if (!a3)
  {
    if (v16 == 254)
    {
      v27 = 0;
    }

    else
    {
      v40 = *v11;
      if (v16 == 255)
      {
        v40 = 0;
      }

      v66 = v40;
      if (v16 == 255)
      {
        v26 = 2;
      }

      else
      {
        v26 = v16;
      }

      v41 = v15 >> 8;
      if (v15 >> 8 <= 0xFE)
      {
        if (v41 == 3)
        {
LABEL_100:
          v63 = v15;
          if (!v15)
          {
            v37 = v13;
            v46 = v68;
            v47 = a4;
            v27 = v66;
LABEL_58:
            v69 = v46;
            if (v26 == 1 || v26 == 2 && v27 == 2)
            {
              v48 = v27;
              v49 = v26;
              v37 = sub_1AAEA7E5C(&v74, sub_1AAF7030C, 0);

              v50 = 0;
              v26 = 0;
            }

            else
            {
              v48 = v27;
              v49 = v26;
              v50 = (a2 < 9u) & (0x187u >> a2);
              v26 = 2;
            }

            if ((a5 & 0xFF00) == 0x200 || a5)
            {
              v47 = sub_1AACC0374(MEMORY[0x1E69E7CC0], &qword_1ED9B3D50, &qword_1ED9B2A30, MEMORY[0x1E69E63B0]);

              result = sub_1AAEAEF98(v37, v50, v26);
            }

            else
            {
              sub_1AAEAEF98(v37, v50, v26);
            }

            v58 = v78;
            v59 = v73;
            v38 = v50 | (v26 << 8);
            v39 = 256;
            v13 = v47;
            LOBYTE(v26) = v49;
            v15 = v48;
            v36 = v69;
            goto LABEL_85;
          }

          v27 = v66;
          v46 = v68;
          if (v63 != 255)
          {
            __break(1u);
LABEL_103:
            v74 = 0;
            v75 = 0xE000000000000000;
            sub_1AAF900D4();
            MEMORY[0x1AC5982F0](0xD000000000000058, 0x80000001AAFD05D0);
            sub_1AAF90284();
            v61 = v74;
            v60 = v75;
            goto LABEL_104;
          }

LABEL_57:
          v14 = sub_1AAF6C104(0, 0, sub_1AAF6F9BC, sub_1AACBD93C);
          v37 = v13;
          v47 = a4;
          goto LABEL_58;
        }

        if (!v41)
        {

          v37 = 0;
          v38 = 0;
          v36 = 0;
          v14 = 0;
          v39 = 0x8000000000000000;
          v58 = v78;
          v59 = v73;
          v15 = v66;
          goto LABEL_85;
        }

        goto LABEL_96;
      }

      v27 = v66;
    }

    v42 = *(a6 + 16);
    v43 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }

    *(a6 + 16) = v43;
    sub_1AACB40E8(0, &qword_1ED9B12C0, &qword_1ED9B2A20, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    v76 = v44;
    v77 = &off_1F1FE4488;
    LOBYTE(v74) = 2;
    swift_beginAccess();
    result = sub_1AACB8910(&v74, v43);
    v13 = *(a6 + 16);
    if (__OFADD__(v13, 1))
    {
LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

    *(a6 + 16) = v13 + 1;
    sub_1AACB4194(0, &qword_1ED9B12C8, MEMORY[0x1E69E6370], type metadata accessor for ParametersContext.ParameterSignalContainer);
    v76 = v45;
    v77 = &off_1F1FE4488;
    LOBYTE(v74) = 0;
    sub_1AACB8910(&v74, v13 + 1);
    swift_endAccess();
    v46 = *(a6 + 16);
    goto LABEL_57;
  }

  if (a3 == 1)
  {
    if (v16 == 254)
    {
      v15 = 0;
LABEL_39:
      v30 = *(a6 + 16);
      v31 = v30 + 1;
      if (!__OFADD__(v30, 1))
      {
        *(a6 + 16) = v31;
        sub_1AACB40E8(0, &qword_1ED9B12C0, &qword_1ED9B2A20, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
        v76 = v32;
        v77 = &off_1F1FE4488;
        LOBYTE(v74) = 2;
        swift_beginAccess();
        result = sub_1AACB8910(&v74, v31);
        v33 = *(a6 + 16);
        v34 = v33 + 1;
        if (!__OFADD__(v33, 1))
        {
          *(a6 + 16) = v34;
          sub_1AACB4194(0, &qword_1ED9B12C8, MEMORY[0x1E69E6370], type metadata accessor for ParametersContext.ParameterSignalContainer);
          v76 = v35;
          v77 = &off_1F1FE4488;
          LOBYTE(v74) = 0;
          sub_1AACB8910(&v74, v34);
          swift_endAccess();
          v36 = *(a6 + 16);
LABEL_42:
          v14 = sub_1AAF6C104(0, 0, sub_1AAF6F9BC, sub_1AACBD93C);
          v13 = a4;
          goto LABEL_43;
        }

        goto LABEL_114;
      }

      __break(1u);
      goto LABEL_112;
    }

    if (v16 == 255)
    {
      v28 = 0;
    }

    else
    {
      v28 = *v11;
    }

    if (v16 == 255)
    {
      v26 = 2;
    }

    else
    {
      v26 = v16;
    }

    v29 = v15 >> 8;
    if (v15 >> 8 > 0xFE)
    {
      v15 = v28;
      goto LABEL_39;
    }

    if (v29 != 3)
    {
      if (v29 == 1)
      {

        v37 = 0;
        v38 = 0;
        v36 = 0;
        v14 = 0;
        v39 = 0xA000000000000000;
LABEL_95:
        v58 = v78;
        v59 = v73;
        v15 = v28;
        goto LABEL_85;
      }

      goto LABEL_103;
    }

    v62 = v15;
    if (v15 != 1)
    {
      v15 = v28;
      v36 = v68;
      if (v62 == 255)
      {
        goto LABEL_42;
      }

      __break(1u);
      goto LABEL_100;
    }

LABEL_108:
    v36 = v68;
    v13 = a4;
    v15 = v28;
LABEL_43:
    if ((a5 & 0xFF00) == 0x200 || a5 != 1)
    {
      v13 = sub_1AACC0374(MEMORY[0x1E69E7CC0], &qword_1ED9B3D50, &qword_1ED9B2A30, MEMORY[0x1E69E63B0]);
    }

    v37 = sub_1AAEA7E5C(&v74, sub_1AAF7030C, 0);

    v38 = 0;
    v39 = 0x2000000000000100;
LABEL_78:
    v58 = v78;
    v59 = v73;
LABEL_85:
    *a8 = v15;
    *(a8 + 8) = v26;
    *(a8 + 16) = v13;
    *(a8 + 24) = v37;
    *(a8 + 32) = v38;
    *(a8 + 40) = v36;
    *(a8 + 48) = v39;
    *(a8 + 56) = v14;
    *(a8 + 64) = v58;
    *(a8 + 72) = v72;
    *(a8 + 80) = v59;
    return result;
  }

  if (v16 == 254)
  {
    v15 = 0;
    goto LABEL_70;
  }

  if (v16 == 255)
  {
    v28 = 0;
  }

  else
  {
    v28 = *v11;
  }

  if (v16 == 255)
  {
    LOBYTE(v26) = 2;
  }

  else
  {
    LOBYTE(v26) = v16;
  }

  v51 = v15 >> 8;
  if (v15 >> 8 <= 0xFE)
  {
    if (v51 == 3)
    {
      v65 = v15;
      if (v15 == 2)
      {
        v36 = v68;
        v13 = a4;
        v15 = v28;
LABEL_74:
        if ((a5 & 0xFF00) == 0x200 || a5 != 2)
        {
          v13 = sub_1AACC0374(MEMORY[0x1E69E7CC0], &qword_1ED9AFF80, &qword_1ED9B0C88, MEMORY[0x1E69E6158]);
        }

        v37 = sub_1AAEA7E5C(&v74, sub_1AAF7030C, 0);

        v38 = 0;
        v39 = 0x4000000000000100;
        goto LABEL_78;
      }

      v15 = v28;
      v36 = v68;
      if (v65 != 255)
      {
        __break(1u);
        goto LABEL_108;
      }

LABEL_73:
      v14 = sub_1AAF6C104(0, 0, sub_1AAF6FA34, sub_1AADFB604);
      v13 = a4;
      goto LABEL_74;
    }

    if (v51 == 2)
    {

      v37 = 0;
      v38 = 0;
      v36 = 0;
      v14 = 0;
      v39 = 0xC000000000000000;
      goto LABEL_95;
    }

LABEL_96:
    v60 = 0x80000001AAFD0590;
    v61 = 0xD00000000000003BLL;
LABEL_104:
    sub_1AAF6F968();
    swift_allocError();
    *v64 = v61;
    v64[1] = v60;
    swift_willThrow();
    sub_1AAD12C64(v78, v72, v73);
  }

  v15 = v28;
LABEL_70:
  v52 = *(a6 + 16);
  v53 = v52 + 1;
  if (__OFADD__(v52, 1))
  {
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  *(a6 + 16) = v53;
  sub_1AACB40E8(0, &qword_1ED9B12C0, &qword_1ED9B2A20, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
  v76 = v54;
  v77 = &off_1F1FE4488;
  LOBYTE(v74) = 2;
  swift_beginAccess();
  result = sub_1AACB8910(&v74, v53);
  v55 = *(a6 + 16);
  v56 = v55 + 1;
  if (!__OFADD__(v55, 1))
  {
    *(a6 + 16) = v56;
    sub_1AACB4194(0, &qword_1ED9B12C8, MEMORY[0x1E69E6370], type metadata accessor for ParametersContext.ParameterSignalContainer);
    v76 = v57;
    v77 = &off_1F1FE4488;
    LOBYTE(v74) = 0;
    sub_1AACB8910(&v74, v56);
    swift_endAccess();
    v36 = *(a6 + 16);
    goto LABEL_73;
  }

LABEL_116:
  __break(1u);
  return result;
}

unint64_t sub_1AAF6F6C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AACC3154(MEMORY[0x1E69E7CC0]);
  memset(__src, 0, 40);
  v5 = *(a1 + 16);
  v6 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = result;
  *(a1 + 16) = v6;
  sub_1AACB40E8(0, &qword_1ED9B3D58, qword_1ED9B3E60, &type metadata for AnyChartContent, MEMORY[0x1E69E6720]);
  __dst[3] = v8;
  __dst[4] = &off_1F1FE4488;
  __dst[0] = swift_allocObject();
  sub_1AACB8890(__src, __dst[0] + 16, qword_1ED9B3E60, &type metadata for AnyChartContent);
  swift_beginAccess();
  sub_1AACB8910(__dst, v6);
  swift_endAccess();
  sub_1AACB9168(__src);
  v9 = *(a1 + 16);
  v10 = sub_1AACB91E8(0, 0);
  sub_1AAF6F934(__src);
  memcpy(__dst, __src, 0x102uLL);
  v11 = sub_1AACB92B8(__dst);
  v12 = MEMORY[0x1E69E7CC0];
  v13 = sub_1AACB978C(MEMORY[0x1E69E7CC0]);
  result = sub_1AADF88B8(v12);
  v14 = *(a1 + 16);
  v15 = v14 + 1;
  if (__OFADD__(v14, 1))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v21 = result;
  *(a1 + 16) = v15;
  sub_1AACB40E8(0, &qword_1ED9B3D48, &qword_1ED9B29E0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
  v17 = v16;
  v24 = v16;
  v25 = &off_1F1FE4488;
  v22 = 0;
  v23 = 1;
  swift_beginAccess();
  result = sub_1AACB8910(&v22, v15);
  v18 = *(a1 + 16);
  v19 = v18 + 1;
  if (!__OFADD__(v18, 1))
  {
    *(a1 + 16) = v19;
    v24 = v17;
    v25 = &off_1F1FE4488;
    v22 = 0;
    v23 = 1;
    sub_1AACB8910(&v22, v19);
    result = swift_endAccess();
    v20 = *(a1 + 16);
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = 0;
    *(a2 + 32) = v13;
    *(a2 + 40) = v21;
    *(a2 + 48) = 0;
    *(a2 + 56) = v18;
    *(a2 + 64) = v20;
    *(a2 + 72) = v7;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

double sub_1AAF6F934(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0;
  return result;
}

unint64_t sub_1AAF6F968()
{
  result = qword_1EB427430;
  if (!qword_1EB427430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB427430);
  }

  return result;
}

void sub_1AAF6F9BC()
{
  if (!qword_1ED9B0F40)
  {
    sub_1AAF6FAAC(255, &qword_1ED9B0C78, &qword_1ED9B0C80, &qword_1ED9B2A30, MEMORY[0x1E69E63B0]);
    v0 = type metadata accessor for ParametersContext.ParameterSignalContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B0F40);
    }
  }
}

void sub_1AAF6FA34()
{
  if (!qword_1EB427438)
  {
    sub_1AAF6FAAC(255, &qword_1EB4269A0, &qword_1EB426330, &qword_1ED9B0C88, MEMORY[0x1E69E6158]);
    v0 = type metadata accessor for ParametersContext.ParameterSignalContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB427438);
    }
  }
}

void sub_1AAF6FAAC(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1AAF6FB08(255, a3, a4, a5);
    v6 = sub_1AAF8FE74();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1AAF6FB08(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a2;
  if (!*a2)
  {
    sub_1AACB4194(255, a3, a4, MEMORY[0x1E69E62F8]);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1AAF6FB8C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ParametersContext.ParameterSignalContainer();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1AAF6FBE0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && a1[48])
  {
    return (*a1 + 247);
  }

  v3 = *a1;
  if (v3 <= 9)
  {
    v4 = 9;
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4 - 10;
  if (v3 < 9)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_1AAF6FC34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 247;
    if (a3 >= 0xF7)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 + 9;
    }
  }

  return result;
}

uint64_t sub_1AAF6FC94(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 73))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AAF6FCB4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 73) = v3;
  return result;
}

uint64_t sub_1AAF6FD54(uint64_t result, char a2)
{
  v2 = *(result + 32) & 0x80000000000003FFLL | ((a2 & 3) << 61);
  *(result + 16) &= 0x3FFuLL;
  *(result + 32) = v2;
  return result;
}

uint64_t sub_1AAF6FD88(uint64_t a1, int a2)
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

uint64_t sub_1AAF6FDD0(uint64_t result, int a2, int a3)
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

uint64_t sub_1AAF6FE34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32) >> 10;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1AAF6FE84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 32) = -a2 << 10;
      *(result + 40) = 0;
      *(result + 48) = 0;
      *(result + 56) = 0;
      return result;
    }

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AAF6FEF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1AAF6FF40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AAF6FFA4()
{
  result = qword_1EB427480;
  if (!qword_1EB427480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB427480);
  }

  return result;
}

unint64_t sub_1AAF6FFFC()
{
  result = qword_1EB427488;
  if (!qword_1EB427488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB427488);
  }

  return result;
}

unint64_t sub_1AAF70054()
{
  result = qword_1EB427490;
  if (!qword_1EB427490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB427490);
  }

  return result;
}

unint64_t sub_1AAF700AC()
{
  result = qword_1EB427498[0];
  if (!qword_1EB427498[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB427498);
  }

  return result;
}

uint64_t sub_1AAF70100()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AAF7013C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 10;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1AAF7018C(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = -a2 << 10;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 40) = 0;
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

uint64_t sub_1AAF701E4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32) & 0x3FFLL | (a2 << 63);
  *(result + 16) &= 0x3FFuLL;
  *(result + 32) = v2;
  return result;
}

uint64_t sub_1AAF7021C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AAF70258(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 48))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 17);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1AAF702A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 17) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AAF70314(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 4;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1AAF70364(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 152) = 1;
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
      *a1 = 16 * -a2;
      result = 0.0;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0u;
      return result;
    }

    *(a1 + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1AAF703F4(void *result, uint64_t a2)
{
  v2 = result[9] & 0xFFFFFFFFFFFFFFBLL;
  v3 = result[18] & 0xFFFFFFFFFFFFFFBLL;
  *result &= 0xFuLL;
  result[9] = v2;
  result[18] = v3 | (a2 << 62);
  return result;
}

uint64_t sub_1AAF70438(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (a1 + 32);
    while (1)
    {
      v5 = v4[7];
      v100 = v4[6];
      v101 = v5;
      v102 = v4[8];
      v103 = *(v4 + 18);
      v6 = v4[3];
      v96 = v4[2];
      v97 = v6;
      v7 = v4[5];
      v98 = v4[4];
      v99 = v7;
      v8 = v4[1];
      v94 = *v4;
      v95 = v8;
      result = sub_1AAED0054(&v94);
      if (result != 1)
      {
        break;
      }

      ++v3;
      v4 = (v4 + 152);
      if (v2 == v3)
      {
        v3 = v2;
        break;
      }
    }

    if (v3 != v2)
    {
      v11 = a1 + 32;
      v12 = a1 + 184;
      v13 = MEMORY[0x1E69E7CC0];
      v10 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v14 = v3;
        while (1)
        {
          if (v14 >= v2)
          {
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
            return result;
          }

          v15 = (v11 + 152 * v14);
          v16 = v15[7];
          v17 = v15[5];
          v90 = v15[6];
          v91 = v16;
          v18 = v15[7];
          v92 = v15[8];
          v19 = v15[3];
          v20 = v15[1];
          v86 = v15[2];
          v87 = v19;
          v21 = v15[3];
          v22 = v15[5];
          v88 = v15[4];
          v89 = v22;
          v23 = v15[1];
          v84 = *v15;
          v85 = v23;
          v100 = v90;
          v101 = v18;
          v102 = v15[8];
          v96 = v86;
          v97 = v21;
          v98 = v88;
          v99 = v17;
          v93 = *(v15 + 18);
          v103 = *(v15 + 18);
          v94 = v84;
          v95 = v20;
          result = sub_1AAED0054(&v94);
          if (result == 1)
          {
            goto LABEL_45;
          }

          v24 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            goto LABEL_42;
          }

          if (v2 < v24)
          {
            goto LABEL_43;
          }

          if (v24 < 0)
          {
            goto LABEL_44;
          }

          v3 = v2;
          if (v24 != v2)
          {
            v25 = (v12 + 152 * v14);
            while (1)
            {
              v26 = v25[7];
              v80 = v25[6];
              v81 = v26;
              v82 = v25[8];
              v83 = *(v25 + 18);
              v27 = v25[3];
              v76 = v25[2];
              v77 = v27;
              v28 = v25[5];
              v78 = v25[4];
              v79 = v28;
              v29 = v25[1];
              v74 = *v25;
              v75 = v29;
              if (sub_1AAED0054(&v74) != 1)
              {
                break;
              }

              ++v24;
              v25 = (v25 + 152);
              if (v2 == v24)
              {
                v3 = v2;
                goto LABEL_23;
              }
            }

            v3 = v24;
          }

LABEL_23:
          v70 = v90;
          v71 = v91;
          v72 = v92;
          v66 = v86;
          v67 = v87;
          v68 = v88;
          v69 = v89;
          v64 = v84;
          v65 = v85;
          v80 = v90;
          v81 = v91;
          v82 = v92;
          v76 = v86;
          v77 = v87;
          v78 = v88;
          v79 = v89;
          v73 = v93;
          v83 = v93;
          v74 = v84;
          v75 = v85;
          v30 = sub_1AAF14CF0(&v74);
          v31 = sub_1AACBC764(&v74);
          if (v30)
          {
            break;
          }

          if (*(v31 + 56) >= 2u)
          {
            goto LABEL_35;
          }

LABEL_29:
          v60 = v90;
          v61 = v91;
          v62 = v92;
          v63 = v93;
          v56 = v86;
          v57 = v87;
          v58 = v88;
          v59 = v89;
          v54 = v84;
          v55 = v85;
          sub_1AAD81BF4(&v54, v53);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1AAD6931C(0, *(v13 + 16) + 1, 1, v13);
            v13 = result;
          }

          v34 = *(v13 + 16);
          v33 = *(v13 + 24);
          if (v34 >= v33 >> 1)
          {
            result = sub_1AAD6931C((v33 > 1), v34 + 1, 1, v13);
            v13 = result;
          }

          *(v13 + 16) = v34 + 1;
          v35 = v13 + 152 * v34;
          v36 = v65;
          *(v35 + 32) = v64;
          *(v35 + 48) = v36;
          v37 = v66;
          v38 = v67;
          v39 = v69;
          *(v35 + 96) = v68;
          *(v35 + 112) = v39;
          *(v35 + 64) = v37;
          *(v35 + 80) = v38;
          v40 = v70;
          v41 = v71;
          v42 = v72;
          *(v35 + 176) = v73;
          *(v35 + 144) = v41;
          *(v35 + 160) = v42;
          *(v35 + 128) = v40;
          v14 = v3;
          if (v3 == v2)
          {
            return v10;
          }
        }

        if (v30 == 1)
        {
          v32 = *(v31 + 72);
          if ((v32 & 0x80000000) == 0 && v32 != 2)
          {
            goto LABEL_29;
          }
        }

LABEL_35:
        v60 = v90;
        v61 = v91;
        v62 = v92;
        v63 = v93;
        v56 = v86;
        v57 = v87;
        v58 = v88;
        v59 = v89;
        v54 = v84;
        v55 = v85;
        sub_1AAD81BF4(&v54, v53);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1AAD6931C(0, *(v10 + 16) + 1, 1, v10);
          v10 = result;
        }

        v44 = *(v10 + 16);
        v43 = *(v10 + 24);
        if (v44 >= v43 >> 1)
        {
          result = sub_1AAD6931C((v43 > 1), v44 + 1, 1, v10);
          v10 = result;
        }

        *(v10 + 16) = v44 + 1;
        v45 = v10 + 152 * v44;
        v46 = v65;
        *(v45 + 32) = v64;
        *(v45 + 48) = v46;
        v47 = v66;
        v48 = v67;
        v49 = v69;
        *(v45 + 96) = v68;
        *(v45 + 112) = v49;
        *(v45 + 64) = v47;
        *(v45 + 80) = v48;
        v50 = v70;
        v51 = v71;
        v52 = v72;
        *(v45 + 176) = v73;
        *(v45 + 144) = v51;
        *(v45 + 160) = v52;
        *(v45 + 128) = v50;
        if (v3 == v2)
        {
          return v10;
        }
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1AAF70898(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(v14);
  if (sub_1AAED0054(v14) == 1)
  {
    return (*(a2 + 32))(a1, a2);
  }

  v22 = v14[6];
  v23 = v14[7];
  v24 = v14[8];
  v25 = v15;
  v18 = v14[2];
  v19 = v14[3];
  v20 = v14[4];
  v21 = v14[5];
  v16 = v14[0];
  v17 = v14[1];
  v5 = (*(a2 + 32))(a1, a2);
  sub_1AAF74FFC(0, &qword_1ED9B1E00, &type metadata for AccessibilityDataField, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v7 = v22;
  v8 = v24;
  *(inited + 144) = v23;
  *(inited + 160) = v8;
  v9 = v18;
  v10 = v20;
  v11 = v21;
  *(inited + 80) = v19;
  *(inited + 96) = v10;
  *(inited + 112) = v11;
  *(inited + 128) = v7;
  v12 = v16;
  v13 = v17;
  *(inited + 16) = xmmword_1AAF92AB0;
  *(inited + 32) = v12;
  *(inited + 176) = v25;
  *(inited + 48) = v13;
  *(inited + 64) = v9;
  sub_1AADC92A4(inited);
  return v5;
}

uint64_t sub_1AAF70A10()
{
  v1 = sub_1AAF8E204();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = *v0;
  if (((*(v0 + 49) | ((*(v0 + 53) | (*(v0 + 55) << 16)) << 32)) & 0x8000000000000000) != 0)
  {
    sub_1AAF8E1F4();
    sub_1AAF8E1E4();
    sub_1AAF8E1C4();
    sub_1AAF8E1E4();
    sub_1AAF8E1C4();
    sub_1AAF8E1E4();
    sub_1AAF8E224();
    type metadata accessor for FindClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = [objc_opt_self() bundleForClass_];
    return sub_1AAF8EA44();
  }

  else
  {
    sub_1AACD7304(*v0, *(v0 + 8), *(v0 + 16) & 1);
  }

  return v2;
}

uint64_t sub_1AAF70BEC()
{
  v1 = sub_1AAF8E204();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = *(v0 + 112);
  v14[6] = *(v0 + 96);
  v14[7] = v2;
  v14[8] = *(v0 + 128);
  v15 = *(v0 + 144);
  v3 = *(v0 + 48);
  v14[2] = *(v0 + 32);
  v14[3] = v3;
  v4 = *(v0 + 80);
  v14[4] = *(v0 + 64);
  v14[5] = v4;
  v5 = *(v0 + 16);
  v14[0] = *v0;
  v14[1] = v5;
  v6 = sub_1AAF14CF0(v14);
  v7 = sub_1AACBC764(v14);
  if (v6 > 1)
  {
    sub_1AAF8E1F4();
    sub_1AAF8E1E4();
    sub_1AAF8E1C4();
    sub_1AAF8E1E4();
    sub_1AAF8E1C4();
    sub_1AAF8E1E4();
    sub_1AAF8E224();
    type metadata accessor for FindClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass_];
    return sub_1AAF8EA44();
  }

  else
  {
    if (v6)
    {
      v8 = *(v7 + 16);
      v9 = *(v7 + 24);
      LOBYTE(v10) = *(v7 + 32);
    }

    else
    {
      v8 = *(v7 + 8);
      v9 = *(v7 + 16);
      v10 = *(v7 + 24);
    }

    sub_1AACD7304(v8, v9, v10 & 1);

    return v8;
  }
}

uint64_t sub_1AAF70EE0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 112);
  v43[6] = *(v2 + 96);
  v43[7] = v4;
  v43[8] = *(v2 + 128);
  v44 = *(v2 + 144);
  v5 = *(v2 + 48);
  v43[2] = *(v2 + 32);
  v43[3] = v5;
  v6 = *(v2 + 80);
  v43[4] = *(v2 + 64);
  v43[5] = v6;
  v7 = *(v2 + 16);
  v43[0] = *v2;
  v43[1] = v7;
  v8 = sub_1AAF14CF0(v43);
  v9 = sub_1AACBC764(v43);
  v10 = *v9;
  v11 = *(v9 + 6);
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      v28 = *(v9 + 1);
      v30 = *(v9 + 7);
      v29 = *(v9 + 8);
      v31 = v9[72];
      v32 = *(v9 + 10);
      v34 = *(v9 + 15);
      v33 = *(v9 + 16);
      v35 = *(v9 + 17);
      v36 = v9[144];
      MEMORY[0x1AC5992C0](3);
      MEMORY[0x1AC5992C0](v10);
      v37 = 0.0;
      if (v28 != 0.0)
      {
        v37 = v28;
      }

      MEMORY[0x1AC5992F0](*&v37);
      if ((v11 & 0x7FFFFFFFFFFFFFFFLL) == 0)
      {
        v11 = 0;
      }

      if (v31 < 0)
      {
        MEMORY[0x1AC5992C0](1);
        MEMORY[0x1AC5992F0](v11);
        if ((v30 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v39 = v30;
        }

        else
        {
          v39 = 0;
        }

        MEMORY[0x1AC5992F0](v39);
        v31 = v29;
      }

      else
      {
        MEMORY[0x1AC5992C0](0);
        MEMORY[0x1AC5992F0](v11);
        sub_1AAF906B4();
        if (v29)
        {
          sub_1AAF8F6C4();
        }
      }

      MEMORY[0x1AC5992C0](v31);
      v40 = 0.0;
      if (v32 != 0.0)
      {
        v40 = v32;
      }

      MEMORY[0x1AC5992F0](*&v40);
      if ((v34 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v41 = v34;
      }

      else
      {
        v41 = 0;
      }

      if ((v36 & 0x80) != 0)
      {
        MEMORY[0x1AC5992C0](1);
        MEMORY[0x1AC5992F0](v41);
        if ((v33 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v42 = v33;
        }

        else
        {
          v42 = 0;
        }

        MEMORY[0x1AC5992F0](v42);
        v15 = v35;
      }

      else
      {
        MEMORY[0x1AC5992C0](0);
        MEMORY[0x1AC5992F0](v41);
        sub_1AAF906B4();
        if (v35)
        {
          sub_1AAF8F6C4();
        }

        v15 = v36;
      }

      return MEMORY[0x1AC5992C0](v15);
    }

    v16 = *(v9 + 5);
    v17 = v9[56];
    v19 = *(v9 + 14);
    v18 = *(v9 + 15);
    v20 = v9[128];
    MEMORY[0x1AC5992C0](2);
    MEMORY[0x1AC5992C0](v10);
    if (v17 < 0)
    {
      MEMORY[0x1AC5992C0](1);
      sub_1AACDC020(a1, v16, v11, v17 & 1);
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      MEMORY[0x1AC5992C0](0);
      sub_1AAE86E08(a1, v16, v11, v17);
      if ((v20 & 0x80000000) == 0)
      {
LABEL_9:
        MEMORY[0x1AC5992C0](0);
        return sub_1AAE86E08(a1, v19, v18, v20);
      }
    }

    MEMORY[0x1AC5992C0](1);
    return sub_1AACDC020(a1, v19, v18, v20 & 1);
  }

  if (v8)
  {
    v22 = *(v9 + 1);
    v24 = *(v9 + 7);
    v23 = *(v9 + 8);
    v25 = v9[72];
    v26 = v9[73];
    MEMORY[0x1AC5992C0](1);
    MEMORY[0x1AC5992C0](v10);
    v27 = 0.0;
    if (v22 != 0.0)
    {
      v27 = v22;
    }

    MEMORY[0x1AC5992F0](*&v27);
    if ((v11 & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      v11 = 0;
    }

    if (v25 < 0)
    {
      MEMORY[0x1AC5992C0](1);
      MEMORY[0x1AC5992F0](v11);
      if ((v24 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v38 = v24;
      }

      else
      {
        v38 = 0;
      }

      MEMORY[0x1AC5992F0](v38);
      v25 = v23;
    }

    else
    {
      MEMORY[0x1AC5992C0](0);
      MEMORY[0x1AC5992F0](v11);
      sub_1AAF906B4();
      if (v23)
      {
        sub_1AAF8F6C4();
      }
    }

    MEMORY[0x1AC5992C0](v25);
    v15 = v26;
  }

  else
  {
    v12 = *(v9 + 5);
    v13 = v9[56];
    v14 = v9[80];
    MEMORY[0x1AC5992C0](0);
    MEMORY[0x1AC5992C0](v10);
    if (v13 < 0)
    {
      MEMORY[0x1AC5992C0](1);
      sub_1AACDC020(a1, v12, v11, v13 & 1);
    }

    else
    {
      MEMORY[0x1AC5992C0](0);
      sub_1AAE86E08(a1, v12, v11, v13);
    }

    v15 = v14;
  }

  return MEMORY[0x1AC5992C0](v15);
}

uint64_t sub_1AAF71280(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  if (((*(a1 + 49) | ((*(a1 + 53) | (*(a1 + 55) << 16)) << 32)) & 0x8000000000000000) == 0)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if ((v2 & 0x8000000000000000) == 0 || (sub_1AAF8EA14() & 1) == 0)
  {
    return 0;
  }

LABEL_3:

  return sub_1AAF8EA14();
}

uint64_t sub_1AAF7138C()
{
  sub_1AAF90694();
  sub_1AAF70EE0(v1);
  return sub_1AAF906F4();
}

uint64_t sub_1AAF713D0()
{
  sub_1AAF90694();
  sub_1AAF70EE0(v1);
  return sub_1AAF906F4();
}

uint64_t sub_1AAF7140C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v11[8] = *(a1 + 128);
  v12 = *(a1 + 144);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v13[8] = *(a2 + 128);
  v14 = *(a2 + 144);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return sub_1AAF72168(v11, v13) & 1;
}

unint64_t sub_1AAF714A4()
{
  result = qword_1ED9B0F10;
  if (!qword_1ED9B0F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B0F10);
  }

  return result;
}

uint64_t sub_1AAF714F8()
{
  v0 = sub_1AAF8E204();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1AAF8E1F4();
  sub_1AAF8E1E4();
  sub_1AAF8E1C4();
  sub_1AAF8E1E4();
  return sub_1AAF8E224();
}

uint64_t sub_1AAF715F8()
{
  v0 = sub_1AAF8E204();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1AAF8E1F4();
  sub_1AAF8E1E4();
  sub_1AAF8E1C4();
  sub_1AAF8E1E4();
  sub_1AAF8E1C4();
  sub_1AAF8E1E4();
  return sub_1AAF8E224();
}

uint64_t sub_1AAF71738(uint64_t a1)
{
  v2 = v1;
  v5 = v2[5];
  v4 = v2[6];
  v6 = v2[8];
  if (v6 < 0)
  {
    v9 = v2[7];
    v10 = *v2;
    MEMORY[0x1AC5992C0](1);
    if ((v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    MEMORY[0x1AC5992F0](v11);
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      v5 = 0;
    }

    if ((v6 & 0x80) != 0)
    {
      MEMORY[0x1AC5992C0](1);
      MEMORY[0x1AC5992F0](v5);
      if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v12 = v4;
      }

      else
      {
        v12 = 0;
      }

      MEMORY[0x1AC5992F0](v12);
      v13 = v9;
    }

    else
    {
      MEMORY[0x1AC5992C0](0);
      MEMORY[0x1AC5992F0](v5);
      sub_1AAF906B4();
      if (v9)
      {
        sub_1AAF8F6C4();
      }

      v13 = v6 & 0x7F;
    }

    return MEMORY[0x1AC5992C0](v13);
  }

  else
  {
    v7 = v2[4];
    MEMORY[0x1AC5992C0](0);
    if ((v4 & 0x80) != 0)
    {
      MEMORY[0x1AC5992C0](1);

      return sub_1AACDC020(a1, v7, v5, v4 & 1);
    }

    else
    {
      MEMORY[0x1AC5992C0](0);

      return sub_1AAE86E08(a1, v7, v5, v4);
    }
  }
}

uint64_t sub_1AAF71890(uint64_t a1)
{
  v2 = v1;
  MEMORY[0x1AC5992C0](*v2);
  v5 = v2[6];
  v4 = v2[7];
  v6 = v2[9];
  if (v6 < 0)
  {
    v9 = v2[8];
    v10 = v2[1];
    MEMORY[0x1AC5992C0](1);
    if ((v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    MEMORY[0x1AC5992F0](v11);
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      v5 = 0;
    }

    if ((v6 & 0x80) != 0)
    {
      MEMORY[0x1AC5992C0](1);
      MEMORY[0x1AC5992F0](v5);
      if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v12 = v4;
      }

      else
      {
        v12 = 0;
      }

      MEMORY[0x1AC5992F0](v12);
      v13 = v9;
    }

    else
    {
      MEMORY[0x1AC5992C0](0);
      MEMORY[0x1AC5992F0](v5);
      sub_1AAF906B4();
      if (v9)
      {
        sub_1AAF8F6C4();
      }

      v13 = v6 & 0x7F;
    }

    return MEMORY[0x1AC5992C0](v13);
  }

  else
  {
    v7 = v2[5];
    MEMORY[0x1AC5992C0](0);
    if ((v4 & 0x80) != 0)
    {
      MEMORY[0x1AC5992C0](1);

      return sub_1AACDC020(a1, v7, v5, v4 & 1);
    }

    else
    {
      MEMORY[0x1AC5992C0](0);

      return sub_1AAE86E08(a1, v7, v5, v4);
    }
  }
}

uint64_t sub_1AAF719F0()
{
  sub_1AAF90694();
  sub_1AAF71738(v1);
  return sub_1AAF906F4();
}

uint64_t sub_1AAF71A34()
{
  sub_1AAF90694();
  sub_1AAF71738(v1);
  return sub_1AAF906F4();
}

BOOL sub_1AAF71A70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1AAF728E0(v7, v9);
}

uint64_t sub_1AAF71ACC()
{
  sub_1AAF90694();
  sub_1AAF71890(v1);
  return sub_1AAF906F4();
}

uint64_t sub_1AAF71B10()
{
  sub_1AAF90694();
  sub_1AAF71890(v1);
  return sub_1AAF906F4();
}

BOOL sub_1AAF71B4C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 24);
  v4 = *(a1 + 56);
  v10[2] = *(a1 + 40);
  v10[3] = v4;
  v11 = *(a1 + 9);
  v10[0] = *(a1 + 8);
  v10[1] = v3;
  v5 = *a2;
  v6 = *(a2 + 24);
  v7 = *(a2 + 56);
  v12[2] = *(a2 + 40);
  v12[3] = v7;
  v13 = *(a2 + 9);
  v12[0] = *(a2 + 8);
  v12[1] = v6;
  return v2 == v5 && sub_1AAF728E0(v10, v12);
}

uint64_t sub_1AAF71BD0()
{
  v1 = *(v0 + 32);
  sub_1AAF90694();
  sub_1AAD7A698(v3, v1);
  sub_1AAF906B4();
  return sub_1AAF906F4();
}

uint64_t sub_1AAF71C68()
{
  v1 = *(v0 + 32);
  sub_1AAF90694();
  sub_1AAD7A698(v3, v1);
  sub_1AAF906B4();
  return sub_1AAF906F4();
}

uint64_t sub_1AAF71CC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  if ((sub_1AAF8EA14() & 1) == 0)
  {
    return 0;
  }

  if (sub_1AAD799D0(v2, v4))
  {
    return v3 ^ v5 ^ 1u;
  }

  return 0;
}

__int128 *sub_1AAF71D44@<X0>(__int128 *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = result[3];
  v24 = result[2];
  v25 = v3;
  v4 = result[5];
  v26 = result[4];
  v27 = v4;
  v5 = result[1];
  v22 = *result;
  v23 = v5;
  v6 = result[6];
  v7 = result[8];
  v8 = result[9];
  v29 = result[7];
  v30 = v7;
  v31 = v8;
  v28 = v6;
  v9 = v7;
  if ((*(&v8 + 1) & 0x8000000000000000) != 0)
  {
    if ((BYTE8(v8) & 0xFE) != 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = *(&v27 + 1);
    v10 = v28;
    v12 = BYTE8(v28);
    v13 = BYTE8(v30);
    if (SBYTE8(v30) < 0)
    {
      sub_1AAD81924(&v27, v21);
      sub_1AAD04750(v11, v10, v12 & 1);

      v15 = 0;
      goto LABEL_26;
    }

    v14 = *(&v29 + 1);
    if (BYTE8(v30) && BYTE8(v30) != 1)
    {
      sub_1AAD81924(&v27, v21);
      sub_1AAD04750(v11, v10, v12 & 1);

      result = sub_1AAD0E818(v14, v9, 2);
      v15 = 0;
      goto LABEL_26;
    }

    sub_1AAD81924(&v27, v21);
    sub_1AAD04750(v11, v10, v12 & 1);

    result = sub_1AAD0E818(v14, v9, v13);
  }

  v16 = v25;
  if ((*(&v26 + 1) & 0x8000000000000000) != 0)
  {
    if ((BYTE8(v26) & 0x80) != 0)
    {
      if ((v26 & 0xFE) == 0)
      {
LABEL_20:
        sub_1AAF748E4();
        result = sub_1AAF8FCE4();
LABEL_25:
        v15 = result;
        goto LABEL_26;
      }
    }

    else
    {
      if (BYTE8(v26) < 2u)
      {
        goto LABEL_20;
      }

      if (v26)
      {
        sub_1AAF748E4();

        result = sub_1AAF8FCD4();
        goto LABEL_25;
      }
    }

LABEL_7:
    v15 = 0;
    goto LABEL_26;
  }

  v17 = *(&v22 + 1);
  v32 = v23;
  v18 = BYTE8(v23);
  v19 = *(&v24 + 1);
  if ((BYTE8(v25) & 0x80) != 0)
  {
    sub_1AAF748E4();
    sub_1AAD81924(&v22, v21);
    v15 = sub_1AAF8FCE4();
    sub_1AAD04750(v17, v32, v18 & 1);
  }

  else
  {
    v20 = SBYTE8(v25);
    sub_1AAF748E4();
    if (v20)
    {
      sub_1AAD81924(&v22, v21);
      if (v20 == 1)
      {
        v15 = sub_1AAF8FCE4();
        sub_1AAD04750(v17, v32, v18 & 1);

        result = sub_1AAD0E818(v19, v16, 1);
      }

      else
      {
        sub_1AACD7C50(v19, v16, 2);
        v15 = sub_1AAF8FCD4();
        sub_1AAD04750(v17, v32, v18 & 1);

        result = sub_1AAD0E818(v19, v16, 2);
      }
    }

    else
    {
      sub_1AAD81924(&v22, v21);
      v15 = sub_1AAF8FCE4();
      sub_1AAD04750(v17, v32, v18 & 1);

      result = sub_1AAD0E818(v19, v16, 0);
    }
  }

LABEL_26:
  *a2 = v15;
  return result;
}

uint64_t sub_1AAF72168(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 112);
  v110[6] = *(a1 + 96);
  v110[7] = v3;
  v110[8] = *(a1 + 128);
  v111 = *(a1 + 144);
  v4 = *(a1 + 48);
  v110[2] = *(a1 + 32);
  v110[3] = v4;
  v5 = *(a1 + 80);
  v110[4] = *(a1 + 64);
  v110[5] = v5;
  v6 = *(a1 + 16);
  v110[0] = *a1;
  v110[1] = v6;
  v7 = sub_1AAF14CF0(v110);
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v22 = sub_1AACBC764(v110);
      v23 = *v22;
      v24 = *(v22 + 5);
      v25 = *(v22 + 6);
      v26 = v22[56];
      v93 = *(v22 + 11);
      v96 = *(v22 + 10);
      v27 = v22[96];
      v88 = *(v22 + 14);
      v90 = *(v22 + 13);
      v87 = *(v22 + 15);
      v86 = v22[128];
      v28 = a2[8];
      v107 = a2[7];
      v108 = v28;
      v109 = *(a2 + 18);
      v29 = a2[6];
      v105 = a2[5];
      v106 = v29;
      v30 = a2[4];
      v103 = a2[3];
      v104 = v30;
      v31 = a2[2];
      v101 = a2[1];
      v102 = v31;
      v100 = *a2;
      if (sub_1AAF14CF0(&v100) != 2)
      {
        goto LABEL_92;
      }

      v32 = sub_1AACBC764(&v100);
      if (v23 != *v32)
      {
        goto LABEL_92;
      }

      v33 = *(v32 + 5);
      v34 = v32[56];
      v78 = *(v32 + 6);
      v79 = *(v32 + 10);
      v84 = *(v32 + 13);
      v85 = *(v32 + 11);
      v83 = *(v32 + 14);
      v82 = *(v32 + 15);
      v80 = v32[128];
      v81 = v32[96];
      if ((sub_1AAF8EA14() & 1) == 0)
      {
        goto LABEL_92;
      }

      if ((v26 & 0x80) != 0)
      {
        if ((v34 & 0x80000000) == 0)
        {
          goto LABEL_92;
        }

        if (v26)
        {
          if ((v34 & 1) == 0)
          {
            goto LABEL_92;
          }
        }

        else if (v34)
        {
          goto LABEL_92;
        }

        v21 = 0;
        if (v24 != v33)
        {
          return v21 & 1;
        }

        v35 = v25;
        v36 = v78;
      }

      else
      {
        if (v34 < 0)
        {
          goto LABEL_92;
        }

        if (v26)
        {
          if (v26 != 1)
          {
            if (v34 != 2 || (*&v24 != *&v33 || *&v25 != *&v78) && (sub_1AAF904F4() & 1) == 0)
            {
              goto LABEL_92;
            }

LABEL_90:
            LOBYTE(v77) = v81 & 1;
            v21 = sub_1AAE83A88(v96, v93, v27 & 1, v90, v88, v87, v86, v79, v35, v36, v37, v38, v39, v40, v41, v42, v85, v77, v84, v83, v82, v80);
            return v21 & 1;
          }

          v21 = 0;
          if (v34 != 1)
          {
            return v21 & 1;
          }
        }

        else
        {
          v21 = 0;
          if (v34)
          {
            return v21 & 1;
          }
        }

        v35 = v24;
        v36 = v33;
      }

      if (v35 != v36)
      {
        return v21 & 1;
      }

      goto LABEL_90;
    }

    v57 = sub_1AACBC764(v110);
    v58 = *v57;
    v59 = *(v57 + 1);
    v60 = *(v57 + 6);
    v62 = *(v57 + 7);
    v61 = *(v57 + 8);
    v63 = v57[72];
    *&v99[32] = *(v57 + 105);
    *&v99[48] = *(v57 + 121);
    *&v99[64] = *(v57 + 137);
    *v99 = *(v57 + 73);
    *&v99[16] = *(v57 + 89);
    v109 = *(a2 + 18);
    v64 = a2[8];
    v107 = a2[7];
    v108 = v64;
    v65 = a2[6];
    v105 = a2[5];
    v106 = v65;
    v66 = a2[4];
    v103 = a2[3];
    v104 = v66;
    v67 = a2[2];
    v101 = a2[1];
    v102 = v67;
    v100 = *a2;
    if (sub_1AAF14CF0(&v100) != 3)
    {
      goto LABEL_92;
    }

    v68 = sub_1AACBC764(&v100);
    v69 = *(v68 + 6);
    *&v98[32] = *(v68 + 105);
    *&v98[48] = *(v68 + 121);
    *&v98[64] = *(v68 + 137);
    *v98 = *(v68 + 73);
    *&v98[16] = *(v68 + 89);
    if (v58 != *v68)
    {
      goto LABEL_92;
    }

    if (v59 != *(v68 + 1))
    {
      goto LABEL_92;
    }

    v70 = *(v68 + 7);
    v71 = *(v68 + 8);
    v72 = v68[72];
    if ((sub_1AAF8EA14() & 1) == 0)
    {
      goto LABEL_92;
    }

    if ((v63 & 0x80) != 0)
    {
      if ((v72 & 0x80) == 0 || v60 != v69 || v62 != v70 || v71 != v61)
      {
        goto LABEL_92;
      }

      goto LABEL_85;
    }

    if ((v72 & 0x80) != 0 || v60 != v69)
    {
      goto LABEL_92;
    }

    if (v61)
    {
      if (!v71)
      {
        goto LABEL_92;
      }

      if (*&v62 != *&v70 || v61 != v71)
      {
        if ((sub_1AAF904F4() & 1) == 0 || v63 != v72)
        {
          goto LABEL_92;
        }

        goto LABEL_85;
      }
    }

    else if (v71)
    {
      goto LABEL_92;
    }

    if (v63 != v72)
    {
      goto LABEL_92;
    }

LABEL_85:
    v112[2] = *&v99[39];
    v112[3] = *&v99[55];
    v113 = v99[71];
    v112[0] = *&v99[7];
    v112[1] = *&v99[23];
    v114[2] = *&v98[39];
    v114[3] = *&v98[55];
    v115 = v98[71];
    v114[0] = *&v98[7];
    v114[1] = *&v98[23];
    v21 = sub_1AAF0A5EC(v112, v114);
    return v21 & 1;
  }

  if (v7)
  {
    v43 = sub_1AACBC764(v110);
    v44 = *v43;
    v45 = v43[1];
    v46 = v43[6];
    v48 = v43[7];
    v47 = *(v43 + 8);
    v49 = *(v43 + 72);
    v97 = *(v43 + 73);
    v50 = a2[7];
    v106 = a2[6];
    v107 = v50;
    v108 = a2[8];
    v109 = *(a2 + 18);
    v51 = a2[5];
    v104 = a2[4];
    v105 = v51;
    v52 = a2[3];
    v102 = a2[2];
    v103 = v52;
    v53 = a2[1];
    v100 = *a2;
    v101 = v53;
    if (sub_1AAF14CF0(&v100) != 1)
    {
      goto LABEL_92;
    }

    v54 = sub_1AACBC764(&v100);
    if (v44 != *v54)
    {
      goto LABEL_92;
    }

    if (v45 != v54[1])
    {
      goto LABEL_92;
    }

    v55 = v54[6];
    v91 = v54[7];
    v94 = *(v54 + 8);
    v56 = *(v54 + 72);
    v89 = *(v54 + 73);
    if ((sub_1AAF8EA14() & 1) == 0)
    {
      goto LABEL_92;
    }

    if ((v49 & 0x80) == 0)
    {
      v21 = 0;
      if ((v56 & 0x80) != 0 || v46 != v55)
      {
        return v21 & 1;
      }

      if (v47)
      {
        if (!v94)
        {
          goto LABEL_92;
        }

        if (*&v48 == *&v91 && v47 == v94)
        {
          if (v49 != v56)
          {
            goto LABEL_92;
          }

LABEL_100:
          v21 = v97 == v89;
          return v21 & 1;
        }

        v76 = sub_1AAF904F4();
        v21 = 0;
        if ((v76 & 1) == 0)
        {
          return v21 & 1;
        }
      }

      else
      {
        v21 = 0;
        if (v94)
        {
          return v21 & 1;
        }
      }

      if (v49 != v56)
      {
        return v21 & 1;
      }

      goto LABEL_100;
    }

    if ((v56 & 0x80) == 0)
    {
      goto LABEL_92;
    }

    v21 = 0;
    if (v46 != v55 || v48 != v91 || v94 != v47)
    {
      return v21 & 1;
    }

    goto LABEL_100;
  }

  v8 = sub_1AACBC764(v110);
  v9 = *v8;
  v10 = v8[5];
  v11 = v8[6];
  v12 = *(v8 + 56);
  v13 = *(v8 + 80);
  v14 = a2[7];
  v106 = a2[6];
  v107 = v14;
  v108 = a2[8];
  v109 = *(a2 + 18);
  v15 = a2[5];
  v104 = a2[4];
  v105 = v15;
  v16 = a2[3];
  v102 = a2[2];
  v103 = v16;
  v17 = a2[1];
  v100 = *a2;
  v101 = v17;
  if (sub_1AAF14CF0(&v100))
  {
    goto LABEL_92;
  }

  v18 = sub_1AACBC764(&v100);
  if (v9 != *v18)
  {
    goto LABEL_92;
  }

  v19 = v18[5];
  v92 = v18[6];
  v20 = *(v18 + 56);
  v95 = *(v18 + 80);
  if ((sub_1AAF8EA14() & 1) == 0)
  {
    goto LABEL_92;
  }

  if ((v12 & 0x80) != 0)
  {
    if (v20 < 0)
    {
      if (v12)
      {
        if ((v20 & 1) == 0)
        {
          goto LABEL_92;
        }
      }

      else if (v20)
      {
        goto LABEL_92;
      }

      v21 = 0;
      if (v10 != v19)
      {
        return v21 & 1;
      }

      v73 = v11;
      v74 = v92;
      goto LABEL_96;
    }

LABEL_92:
    v21 = 0;
    return v21 & 1;
  }

  if (v20 < 0)
  {
    goto LABEL_92;
  }

  if (!v12)
  {
    v21 = 0;
    if (v20)
    {
      return v21 & 1;
    }

    goto LABEL_75;
  }

  if (v12 != 1)
  {
    if (v20 == 2 && (*&v10 == *&v19 && *&v11 == *&v92 || (sub_1AAF904F4() & 1) != 0))
    {
      goto LABEL_97;
    }

    goto LABEL_92;
  }

  v21 = 0;
  if (v20 != 1)
  {
    return v21 & 1;
  }

LABEL_75:
  v73 = v10;
  v74 = v19;
LABEL_96:
  if (v73 == v74)
  {
LABEL_97:
    v21 = v13 == v95;
  }

  return v21 & 1;
}

BOOL sub_1AAF728E0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  if (v7 < 0)
  {
    v11 = *(a2 + 64);
    if ((v11 & 0x8000000000000000) == 0)
    {
      return 0;
    }

    if (*a2 != v3)
    {
      return 0;
    }

    v13 = *(a1 + 56);
    v15 = *(a2 + 48);
    v14 = *(a2 + 56);
    v16 = *(a2 + 40);
    if ((sub_1AAF8EA14() & 1) == 0)
    {
      return 0;
    }

    if ((v7 & 0x80) != 0)
    {
      return (v11 & 0x80) != 0 && v5 == v16 && v6 == v15 && v14 == v13;
    }

    if ((v11 & 0x80) != 0 || v5 != v16)
    {
      return 0;
    }

    if (v13)
    {
      if (!v14 || (*&v6 != *&v15 || v13 != v14) && (sub_1AAF904F4() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v14)
    {
      return 0;
    }

    return ((v11 ^ v7) & 0x7F) == 0;
  }

  if ((*(a2 + 64) & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 32);
  if ((sub_1AAF8EA14() & 1) == 0)
  {
    return 0;
  }

  if ((LOBYTE(v6) & 0x80) != 0)
  {
    if ((v9 & 0x80) != 0)
    {
      if (LOBYTE(v6))
      {
        if ((v9 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v9)
      {
        return 0;
      }

      return v4 == v10 && v5 == v8;
    }

    return 0;
  }

  if ((v9 & 0x80) != 0)
  {
    return 0;
  }

  if (LOBYTE(v6))
  {
    if (LOBYTE(v6) != 1)
    {
      return v9 == 2 && (*&v4 == *&v10 && *&v5 == *&v8 || (sub_1AAF904F4() & 1) != 0);
    }

    if (v9 == 1)
    {
      return v4 == v10;
    }

    return 0;
  }

  if (v9)
  {
    return 0;
  }

  return v4 == v10;
}

double sub_1AAF72B20@<D0>(char a1@<W0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[7];
  v78[6] = a2[6];
  v78[7] = v5;
  v78[8] = a2[8];
  v6 = a2[3];
  v78[2] = a2[2];
  v78[3] = v6;
  v7 = a2[5];
  v78[4] = a2[4];
  v78[5] = v7;
  v8 = a2[1];
  v78[0] = *a2;
  v78[1] = v8;
  v9 = sub_1AACDB99C(v78);
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      v19 = sub_1AACD2C84(v78);
      v44 = *(v19 + 8);
      v45 = *v19;
      LODWORD(v59) = *(v19 + 17);
      *(&v59 + 3) = *(v19 + 20);
      v20 = *(v19 + 32);
      v21 = *(v19 + 40);
      *v53 = *(v19 + 49);
      v22 = *(v19 + 72);
      *&v53[15] = *(v19 + 64);
      v47 = *(v19 + 24);
      v48 = *(v19 + 80);
      v49 = *(v19 + 16);
      v23 = *(v19 + 48);
      v24 = *(v19 + 88);
      *(&v58 + 3) = *(v19 + 92);
      LODWORD(v58) = *(v19 + 89);
      v26 = *(v19 + 96);
      v25 = *(v19 + 104);
      v46 = *(v19 + 112);
      *&v56[15] = *(v19 + 136);
      *v56 = *(v19 + 121);
      v43 = *(v19 + 120);
      sub_1AACD7304(*v19, v44, v49 & 1);

      sub_1AACD7C50(v20, v21, v23);
      sub_1AACD7304(v22, v48, v24 & 1);

      sub_1AACD7C50(v25, v46, v43);
      sub_1AADC7F60(a2);
      LOBYTE(v60) = a1;
      *(&v60 + 1) = v45;
      *&v61 = v44;
      BYTE8(v61) = v49;
      *(&v61 + 9) = v59;
      HIDWORD(v61) = *(&v59 + 3);
      *&v62 = v47;
      *(&v62 + 1) = v20;
      *v63 = v21;
      v63[8] = v23;
      *&v63[9] = *v53;
      *&v63[24] = *&v53[15];
      *&v64 = v22;
      *(&v64 + 1) = v48;
      LOBYTE(v65) = v24;
      DWORD1(v65) = *(&v58 + 3);
      *(&v65 + 1) = v58;
      *(&v65 + 1) = v26;
      *&v66 = v25;
      *(&v66 + 1) = v46;
      v67[0] = v43;
      *&v67[1] = *v56;
      *&v67[16] = *&v56[15];
      sub_1AAE0C1C0(&v60);
      v74 = v65;
      v75 = v66;
      v76 = *v67;
      v77 = *&v67[16];
      v70 = v62;
      v71 = *v63;
      v28 = *&v63[16];
      v29 = v64;
LABEL_13:
      v72 = v28;
      v73 = v29;
      v68 = v60;
      v69 = v61;
      nullsub_1(&v68, v27);
      v85 = v74;
      v86 = v75;
      v87 = v76;
      v88 = v77;
      v81 = v70;
      v82 = v71;
      v83 = v72;
      v84 = v73;
      v79 = v68;
      v80 = v69;
      goto LABEL_14;
    }

    if (v9 != 4)
    {
      v30 = sub_1AACD2C84(v78);
      v31 = *v30;
      v32 = *(v30 + 8);
      LODWORD(v57) = *(v30 + 17);
      *(&v57 + 3) = *(v30 + 20);
      v33 = *(v30 + 24);
      v34 = *(v30 + 32);
      v35 = *(v30 + 40);
      *v54 = *(v30 + 49);
      *&v54[15] = *(v30 + 64);
      v50 = *(v30 + 72);
      v36 = *(v30 + 16);
      v37 = *(v30 + 48);
      sub_1AACD7304(*v30, v32, v36 & 1);

      sub_1AACD7C50(v34, v35, v37);
      sub_1AADC7F60(a2);
      LOBYTE(v60) = a1;
      *(&v60 + 1) = v31;
      *&v61 = v32;
      BYTE8(v61) = v36;
      *(&v61 + 9) = v57;
      HIDWORD(v61) = *(&v57 + 3);
      *&v62 = v33;
      *(&v62 + 1) = v34;
      *v63 = v35;
      v63[8] = v37;
      *&v63[9] = *v54;
      *&v63[24] = *&v54[15];
      v18 = v50;
      goto LABEL_12;
    }
  }

  else
  {
    if (!v9)
    {
      v10 = sub_1AACD2C84(v78);
      v11 = *v10;
      v12 = *(v10 + 8);
      *v55 = *(v10 + 17);
      *&v55[3] = *(v10 + 20);
      v13 = *(v10 + 24);
      v14 = *(v10 + 32);
      v15 = *(v10 + 40);
      *v52 = *(v10 + 49);
      *&v52[15] = *(v10 + 64);
      goto LABEL_9;
    }

    if (v9 != 1)
    {
      v10 = sub_1AACD2C84(v78);
      v11 = *v10;
      v12 = *(v10 + 8);
      *v55 = *(v10 + 17);
      *&v55[3] = *(v10 + 20);
      v13 = *(v10 + 24);
      v14 = *(v10 + 32);
      v15 = *(v10 + 40);
      *v52 = *(v10 + 49);
      *&v52[16] = *(v10 + 65);
LABEL_9:
      v16 = *(v10 + 16);
      v17 = *(v10 + 48);
      sub_1AACD7304(v11, v12, v16 & 1);

      sub_1AACD7C50(v14, v15, v17);
      sub_1AADC7F60(a2);
      LOBYTE(v60) = a1;
      *(&v60 + 1) = v11;
      *&v61 = v12;
      BYTE8(v61) = v16;
      *(&v61 + 9) = *v55;
      HIDWORD(v61) = *&v55[3];
      *&v62 = v13;
      *(&v62 + 1) = v14;
      *v63 = v15;
      v63[8] = v17;
      *&v63[9] = *v52;
      *&v63[24] = *&v52[15];
      v18 = 3;
LABEL_12:
      LOBYTE(v64) = v18;
      sub_1AAE0C0B0(&v60);
      v74 = v65;
      v75 = v66;
      v76 = *v67;
      v77 = *&v67[16];
      v70 = v62;
      v71 = *v63;
      v28 = *&v63[16];
      v29 = v64;
      goto LABEL_13;
    }
  }

  sub_1AACD2C84(v78);
  sub_1AAE2D7EC(&v79);
LABEL_14:
  v38 = v86;
  *(a3 + 96) = v85;
  *(a3 + 112) = v38;
  *(a3 + 128) = v87;
  *(a3 + 144) = v88;
  v39 = v82;
  *(a3 + 32) = v81;
  *(a3 + 48) = v39;
  v40 = v84;
  *(a3 + 64) = v83;
  *(a3 + 80) = v40;
  result = *&v79;
  v42 = v80;
  *a3 = v79;
  *(a3 + 16) = v42;
  return result;
}

uint64_t sub_1AAF72FD4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 112);
  v101 = *(a1 + 96);
  v102 = v4;
  v103 = *(a1 + 128);
  v104 = *(a1 + 144);
  v5 = *(a1 + 48);
  v97 = *(a1 + 32);
  v98 = v5;
  v6 = *(a1 + 80);
  v99 = *(a1 + 64);
  v100 = v6;
  v7 = *(a1 + 16);
  v95 = *a1;
  v96 = v7;
  v8 = sub_1AAF8E204();
  MEMORY[0x1EEE9AC00](v8 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v10 = *(a1 + 112);
  v89 = *(a1 + 96);
  v90 = v10;
  v91 = *(a1 + 128);
  v92 = *(a1 + 144);
  v11 = *(a1 + 48);
  v85 = *(a1 + 32);
  v86 = v11;
  v12 = *(a1 + 80);
  v87 = *(a1 + 64);
  v88 = v12;
  v13 = *(a1 + 16);
  v83 = *a1;
  v84 = v13;
  if (sub_1AAED0054(&v83) == 1)
  {
    return 0;
  }

  v93[6] = v89;
  v93[7] = v90;
  v93[8] = v91;
  v94 = v92;
  v93[2] = v85;
  v93[3] = v86;
  v93[4] = v87;
  v93[5] = v88;
  v93[0] = v83;
  v93[1] = v84;
  v15 = sub_1AAF14CF0(v93);
  if (v15 <= 1)
  {
    if (v15)
    {
      v30 = sub_1AACBC764(v93);
      v31 = *(v30 + 6);
      v33 = *(v30 + 7);
      v32 = *(v30 + 8);
      v34 = v30[72];
      if (*(a2 + 16) && (v35 = sub_1AACE1760(*v30), (v36 & 1) != 0))
      {
        sub_1AACE0A98(*(a2 + 56) + 48 * v35, &v67);
      }

      else
      {
        v67 = 0u;
        memset(v68, 0, 24);
        BYTE8(v68[1]) = -1;
      }

      sub_1AADDDC34(&v67, &v63);
      if (BYTE8(v64[1]) == 255)
      {
        v65 = 0u;
        memset(v66, 0, 24);
        BYTE8(v66[1]) = 3;
      }

      else
      {
        v65 = v63;
        v66[0] = v64[0];
        *(v66 + 9) = *(v64 + 9);
      }

      v79 = v101;
      v80 = v102;
      v81 = v103;
      v82 = v104;
      v75 = v97;
      v76 = v98;
      v77 = v99;
      v78 = v100;
      v73 = v95;
      v74 = v96;
      sub_1AAD81BF4(&v73, &v69);
      if (v34 < 0)
      {
        v47 = sub_1AAF76D68(v31, *&v33);
      }

      else
      {
        v47 = sub_1AAF7681C(v33, v32, v34, v31);
      }
    }

    else
    {
      v16 = sub_1AACBC764(v93);
      v18 = *(v16 + 5);
      v17 = *(v16 + 6);
      v19 = v16[56];
      if (*(a2 + 16) && (v20 = sub_1AACE1760(*v16), (v21 & 1) != 0))
      {
        sub_1AACE0A98(*(a2 + 56) + 48 * v20, &v67);
      }

      else
      {
        v67 = 0u;
        memset(v68, 0, 24);
        BYTE8(v68[1]) = -1;
      }

      sub_1AADDDC34(&v67, &v63);
      if (BYTE8(v64[1]) == 255)
      {
        v65 = 0u;
        memset(v66, 0, 24);
        BYTE8(v66[1]) = 3;
      }

      else
      {
        v65 = v63;
        v66[0] = v64[0];
        *(v66 + 9) = *(v64 + 9);
      }

      v79 = v101;
      v80 = v102;
      v81 = v103;
      v82 = v104;
      v75 = v97;
      v76 = v98;
      v77 = v99;
      v78 = v100;
      v73 = v95;
      v74 = v96;
      sub_1AAD81BF4(&v73, &v69);
      if (v19 < 0)
      {
        v47 = sub_1AAF75FD0(v18, v17, v19 & 1);
      }

      else
      {
        v47 = sub_1AAF75A98(v18, v17, v19);
      }
    }

    v53 = v47;
    v54 = v48;
    sub_1AAD57C94(&v65);
    sub_1AAF74930(&v67, qword_1ED9B4010, &type metadata for AnyFormatStyle);
    *&v73 = v53;
    *(&v73 + 1) = v54;
    sub_1AADA6144();
    v55 = sub_1AAF8EA64();
    goto LABEL_64;
  }

  if (v15 != 2)
  {
    v37 = sub_1AACBC764(v93);
    v38 = *v37;
    v39 = *(v37 + 6);
    v40 = *(v37 + 7);
    v41 = *(v37 + 8);
    v42 = v37[72];
    v43 = *(v37 + 15);
    v60 = *(v37 + 16);
    v62 = *(v37 + 17);
    v44 = v37[144];
    v73 = v95;
    v74 = v96;
    v77 = v99;
    v78 = v100;
    v79 = v101;
    v80 = v102;
    v82 = v104;
    v81 = v103;
    v75 = v97;
    v76 = v98;
    sub_1AAD81BF4(&v73, &v69);
    sub_1AAF8E1F4();
    sub_1AAF8E1E4();
    if (*(a2 + 16) && (v45 = sub_1AACE1760(v38), (v46 & 1) != 0))
    {
      sub_1AACE0A98(*(a2 + 56) + 48 * v45, &v69);
    }

    else
    {
      v71 = 0;
      v69 = 0u;
      v70 = 0u;
      v72 = -1;
    }

    sub_1AADDDC34(&v69, &v65);
    if (BYTE8(v66[1]) == 255)
    {
      v67 = 0u;
      memset(v68, 0, 24);
      BYTE8(v68[1]) = 3;
      if ((v42 & 0x80000000) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v67 = v65;
      v68[0] = v66[0];
      *(v68 + 9) = *(v66 + 9);
      if ((v42 & 0x80000000) == 0)
      {
LABEL_31:
        sub_1AAF7681C(v40, v41, v42, v39);
LABEL_49:
        sub_1AAD57C94(&v67);
        sub_1AAF74930(&v69, qword_1ED9B4010, &type metadata for AnyFormatStyle);
        sub_1AAF8E1D4();

        sub_1AAF8E1E4();
        if (*(a2 + 16) && (v51 = sub_1AACE1760(v38), (v52 & 1) != 0))
        {
          sub_1AACE0A98(*(a2 + 56) + 48 * v51, &v69);
        }

        else
        {
          v71 = 0;
          v69 = 0u;
          v70 = 0u;
          v72 = -1;
        }

        sub_1AADDDC34(&v69, &v65);
        if (BYTE8(v66[1]) == 255)
        {
          v67 = 0u;
          memset(v68, 0, 24);
          BYTE8(v68[1]) = 3;
          if ((v44 & 0x80000000) == 0)
          {
            goto LABEL_55;
          }
        }

        else
        {
          v67 = v65;
          v68[0] = v66[0];
          *(v68 + 9) = *(v66 + 9);
          if ((v44 & 0x80000000) == 0)
          {
LABEL_55:
            sub_1AAF7681C(v60, v62, v44, v43);
            goto LABEL_63;
          }
        }

        sub_1AAF76D68(v43, *&v60);
        goto LABEL_63;
      }
    }

    sub_1AAF76D68(v39, *&v40);
    goto LABEL_49;
  }

  v22 = sub_1AACBC764(v93);
  v23 = *v22;
  v24 = *(v22 + 5);
  v25 = *(v22 + 6);
  v26 = v22[56];
  v59 = *(v22 + 14);
  v61 = *(v22 + 15);
  v27 = v22[128];
  v73 = v95;
  v74 = v96;
  v82 = v104;
  v75 = v97;
  v76 = v98;
  v80 = v102;
  v81 = v103;
  v77 = v99;
  v78 = v100;
  v79 = v101;
  sub_1AAD81BF4(&v73, &v69);
  sub_1AAF8E1F4();
  sub_1AAF8E1E4();
  if (*(a2 + 16) && (v28 = sub_1AACE1760(v23), (v29 & 1) != 0))
  {
    sub_1AACE0A98(*(a2 + 56) + 48 * v28, &v69);
  }

  else
  {
    v71 = 0;
    v69 = 0u;
    v70 = 0u;
    v72 = -1;
  }

  sub_1AADDDC34(&v69, &v65);
  if (BYTE8(v66[1]) == 255)
  {
    v67 = 0u;
    memset(v68, 0, 24);
    BYTE8(v68[1]) = 3;
    if ((v26 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

LABEL_36:
    sub_1AAF75FD0(v24, v25, v26 & 1);
    goto LABEL_37;
  }

  v67 = v65;
  v68[0] = v66[0];
  *(v68 + 9) = *(v66 + 9);
  if (v26 < 0)
  {
    goto LABEL_36;
  }

LABEL_24:
  sub_1AAF75A98(v24, v25, v26);
LABEL_37:
  sub_1AAD57C94(&v67);
  sub_1AAF74930(&v69, qword_1ED9B4010, &type metadata for AnyFormatStyle);
  sub_1AAF8E1D4();

  sub_1AAF8E1E4();
  if (*(a2 + 16) && (v49 = sub_1AACE1760(v23), (v50 & 1) != 0))
  {
    sub_1AACE0A98(*(a2 + 56) + 48 * v49, &v69);
  }

  else
  {
    v71 = 0;
    v69 = 0u;
    v70 = 0u;
    v72 = -1;
  }

  sub_1AADDDC34(&v69, &v65);
  if (BYTE8(v66[1]) == 255)
  {
    v67 = 0u;
    memset(v68, 0, 24);
    BYTE8(v68[1]) = 3;
    if ((v27 & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

LABEL_58:
    sub_1AAF75FD0(v59, v61, v27 & 1);
    goto LABEL_63;
  }

  v67 = v65;
  v68[0] = v66[0];
  *(v68 + 9) = *(v66 + 9);
  if (v27 < 0)
  {
    goto LABEL_58;
  }

LABEL_43:
  sub_1AAF75A98(v59, v61, v27);
LABEL_63:
  sub_1AAD57C94(&v67);
  sub_1AAF74930(&v69, qword_1ED9B4010, &type metadata for AnyFormatStyle);
  sub_1AAF8E1D4();

  sub_1AAF8E1E4();
  sub_1AAF8E224();
  type metadata accessor for FindClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v57 = [objc_opt_self() bundleForClass_];
  v55 = sub_1AAF8EA44();
LABEL_64:
  v58 = v55;
  sub_1AAF74930(a1, qword_1ED9B2098, &type metadata for AccessibilityDataField);
  return v58;
}

uint64_t sub_1AAF739C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v56 = MEMORY[0x1E69E7CC0];
    sub_1AAD414C0(0, v2, 0);
    v6 = a2;
    v3 = v56;
    v7 = a1 + 32;
    do
    {
      v8 = *(v7 + 112);
      v9 = *(v7 + 80);
      v42 = *(v7 + 96);
      v43 = v8;
      v10 = *(v7 + 112);
      v44 = *(v7 + 128);
      v11 = *(v7 + 48);
      v12 = *(v7 + 16);
      v38 = *(v7 + 32);
      v39 = v11;
      v13 = *(v7 + 48);
      v14 = *(v7 + 80);
      v40 = *(v7 + 64);
      v41 = v14;
      v15 = *(v7 + 16);
      v37[0] = *v7;
      v37[1] = v15;
      v52 = v42;
      v53 = v10;
      v54 = *(v7 + 128);
      v48 = v38;
      v49 = v13;
      v50 = v40;
      v51 = v9;
      v45 = *(v7 + 144);
      v55 = *(v7 + 144);
      v46 = v37[0];
      v47 = v12;
      nullsub_1(&v46, v5);
      v57[6] = v52;
      v57[7] = v53;
      v57[8] = v54;
      v58 = v55;
      v57[2] = v48;
      v57[3] = v49;
      v57[4] = v50;
      v57[5] = v51;
      v57[0] = v46;
      v57[1] = v47;
      sub_1AAD81BF4(v37, v36);
      v16 = sub_1AAF72FD4(v57, v6);
      v18 = v17;
      v20 = v19;
      v22 = v21;
      sub_1AAD81C50(v37);
      v56 = v3;
      v24 = *(v3 + 16);
      v23 = *(v3 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1AAD414C0((v23 > 1), v24 + 1, 1);
        v6 = a2;
        v3 = v56;
      }

      *(v3 + 16) = v24 + 1;
      v25 = (v3 + 32 * v24);
      v25[4] = v16;
      v25[5] = v18;
      v25[6] = v20;
      v25[7] = v22;
      v7 += 152;
      --v2;
    }

    while (v2);
  }

  v26 = *(v3 + 16);
  if (v26)
  {
    v27 = 0;
    v28 = (v3 + 56);
    while (1)
    {
      v29 = *v28;
      if (*v28)
      {
        break;
      }

      ++v27;
      v28 += 4;
      if (v26 == v27)
      {
        goto LABEL_10;
      }
    }

    v32 = *(v28 - 2);
    v31 = *(v28 - 1);
    v33 = *(v28 - 3);

    sub_1AADA61DC(v33, v32, v31, v29);
    sub_1AAD04750(v33, v32, v31 & 1);

    v34 = sub_1AAF1161C(8236, 0xE200000000000000, 0, MEMORY[0x1E69E7CC0], v3, v27);
    swift_bridgeObjectRelease_n();
    return v34;
  }

  else
  {
LABEL_10:

    return 0;
  }
}

void sub_1AAF73C2C(double *a1, char a2)
{
  v4 = sub_1AAF8E204();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = *(a1 + 2);
  if (v5 == 2)
  {
    sub_1AAF75A98(*(a1 + 4), 0, 0);
    sub_1AAF75A98(*(a1 + 5), 0, 0);
    sub_1AAF8E1F4();
    sub_1AAF8E1E4();
    sub_1AAF8E1D4();

    sub_1AAF8E1E4();
    sub_1AAF8E1D4();

    sub_1AAF8E1E4();
    sub_1AAF8E224();
    type metadata accessor for FindClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = [objc_opt_self() bundleForClass_];
  }

  else
  {
    if (v5 == 1)
    {
      sub_1AAF75A98(*(a1 + 4), 0, 0);
      sub_1AADA6144();
      sub_1AAF8EA64();
      return;
    }

    if (v5)
    {
      v11 = *(a1 + 4);
      v10 = a1[5];
      v9 = a1 + 4;
      if (v10 < *&v11)
      {
        v12 = *(a1 + 4);
      }

      else
      {
        v12 = *(a1 + 5);
      }

      if (v10 < *&v11)
      {
        v13 = *(a1 + 5);
      }

      else
      {
        v13 = *(a1 + 4);
      }

      v14 = 2;
      v15 = *&v13;
      v16 = *&v12;
      do
      {
        if (v14 >= v5)
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
          __break(1u);
          __break(1u);
          return;
        }

        v19 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_50;
        }

        v18 = *&v9[v14];
        v20 = *(a1 + 2);
        v21 = v18;
        if (v19 != v5)
        {
          if (v19 >= v5)
          {
            goto LABEL_51;
          }

          v20 = v14 + 2;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_52;
          }

          v21 = *&v9[v19];
        }

        if (v21 >= v18)
        {
          v17 = v21;
        }

        else
        {
          v17 = *&v9[v14];
        }

        if (v21 < v18)
        {
          v18 = v21;
        }

        if (v18 < v15)
        {
          *&v13 = v18;
          v15 = v18;
        }

        if (v17 >= v16)
        {
          *&v12 = v17;
          v16 = v17;
        }

        v14 = v20;
      }

      while (v20 != v5);
      sub_1AAF75A98(v13, 0, 0);
      sub_1AAF75A98(v12, 0, 0);
      if (*&v13 == *&v12)
      {

        sub_1AAF8E1F4();
        sub_1AAF8E1E4();
        sub_1AAF8E1D4();

        sub_1AAF8E1E4();
        sub_1AAF8E224();
        type metadata accessor for FindClass();
        v22 = swift_getObjCClassFromMetadata();
        v7 = [objc_opt_self() bundleForClass_];
        goto LABEL_48;
      }

      if (a2)
      {
        v23 = &v9[v5];
        if (*&v13 == *&v11 && *&v12 == *(v23 - 1))
        {

          v24 = a1 + 5;
          v25 = 1 - v5;
          do
          {
            if (v25 < 2)
            {
              break;
            }

            v26 = *(v24 - 1);
            v27 = *v24++;
            ++v25;
          }

          while (v26 <= v27);
        }

        else
        {
          if (*&v12 != *&v11 || *&v13 != *(v23 - 1))
          {
            sub_1AAF75A98(v11, 0, 0);
            sub_1AAF75A98(*(v23 - 1), 0, 0);
            sub_1AAF8E1F4();
            sub_1AAF8E1E4();
            sub_1AAF8E1D4();

            sub_1AAF8E1E4();
            sub_1AAF8E1D4();

            sub_1AAF8E1E4();
            sub_1AAF8E1D4();

            sub_1AAF8E1E4();
            sub_1AAF8E1D4();

            sub_1AAF8E1E4();
            sub_1AAF8E224();
            type metadata accessor for FindClass();
            v32 = swift_getObjCClassFromMetadata();
            v7 = [objc_opt_self() bundleForClass_];
            goto LABEL_48;
          }

          v28 = a1 + 5;
          v29 = 1 - v5;
          do
          {
            if (v29 < 2)
            {
              break;
            }

            v30 = *(v28 - 1);
            v31 = *v28++;
            ++v29;
          }

          while (v31 <= v30);
        }
      }

      sub_1AAF8E1F4();
      sub_1AAF8E1E4();
      sub_1AAF8E1D4();

      sub_1AAF8E1E4();
      sub_1AAF8E1D4();

      sub_1AAF8E1E4();
      sub_1AAF8E224();
      type metadata accessor for FindClass();
      v33 = swift_getObjCClassFromMetadata();
      v7 = [objc_opt_self() bundleForClass_];
    }

    else
    {
      sub_1AAF8E214();
      type metadata accessor for FindClass();
      v6 = swift_getObjCClassFromMetadata();
      v7 = [objc_opt_self() bundleForClass_];
    }
  }

LABEL_48:
  v34 = v7;
  sub_1AAF8EA44();
}

id sub_1AAF74684(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v50 = MEMORY[0x1E69E7CC0];
  v5 = *(a4 + 16);
  if (v5)
  {
    v6 = a4 + 32;
    do
    {
      v7 = *(v6 + 144);
      v8 = *(v6 + 112);
      v46 = *(v6 + 128);
      v47 = v7;
      v9 = *(v6 + 144);
      v48 = *(v6 + 160);
      v10 = *(v6 + 80);
      v11 = *(v6 + 48);
      v42 = *(v6 + 64);
      v43 = v10;
      v12 = *(v6 + 80);
      v13 = *(v6 + 112);
      v44 = *(v6 + 96);
      v45 = v13;
      v14 = *(v6 + 16);
      v39[0] = *v6;
      v39[1] = v14;
      v15 = *(v6 + 48);
      v17 = *v6;
      v16 = *(v6 + 16);
      v40 = *(v6 + 32);
      v41 = v15;
      v35 = v46;
      v36 = v9;
      v37 = *(v6 + 160);
      v31 = v42;
      v32 = v12;
      v33 = v44;
      v34 = v8;
      v27 = v17;
      v28 = v16;
      v49 = *(v6 + 176);
      v38 = *(v6 + 176);
      v29 = v40;
      v30 = v11;
      sub_1AAEDC834(v39, v24);
      sub_1AAF71D44(&v27, &v26);
      v24[8] = v35;
      v24[9] = v36;
      v24[10] = v37;
      v25 = v38;
      v24[4] = v31;
      v24[5] = v32;
      v24[6] = v33;
      v24[7] = v34;
      v24[0] = v27;
      v24[1] = v28;
      v24[2] = v29;
      v24[3] = v30;
      v18 = sub_1AAEDCEC4(v24);
      if (v26)
      {
        MEMORY[0x1AC598430](v18);
        if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1AAF8F874();
        }

        sub_1AAF8F8C4();
      }

      v6 += 184;
      --v5;
    }

    while (v5);
  }

  v19 = objc_allocWithZone(MEMORY[0x1E6959570]);
  v20 = sub_1AAF8F624();
  sub_1AAF748E4();
  v21 = sub_1AAF8F824();

  v22 = [v19 initWithName:v20 isContinuous:a3 & 1 dataPoints:v21];

  return v22;
}

unint64_t sub_1AAF748E4()
{
  result = qword_1ED9B11C8;
  if (!qword_1ED9B11C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED9B11C8);
  }

  return result;
}

uint64_t sub_1AAF74930(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AAF74FFC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AAF749A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 112);
  v68[6] = *(a1 + 96);
  v68[7] = v3;
  v68[8] = *(a1 + 128);
  v69 = *(a1 + 144);
  v4 = *(a1 + 48);
  v68[2] = *(a1 + 32);
  v68[3] = v4;
  v5 = *(a1 + 80);
  v68[4] = *(a1 + 64);
  v68[5] = v5;
  v6 = *(a1 + 16);
  v68[0] = *a1;
  v68[1] = v6;
  v7 = sub_1AAF14CF0(v68);
  v8 = sub_1AACBC764(v68);
  v9 = *v8;
  if (v7 <= 1)
  {
    if (!v7)
    {
      v11 = *(v8 + 5);
      v10 = *(v8 + 6);
      v12 = v8[56];
      if (*(a2 + 16) && (v13 = sub_1AACE1760(*v8), (v14 & 1) != 0))
      {
        sub_1AACE0A98(*(a2 + 56) + 48 * v13, &v62);
      }

      else
      {
        v64 = 0;
        v62 = 0u;
        v63 = 0u;
        v65 = -1;
      }

      sub_1AADDDC34(&v62, &v58);
      if (v59[24] == 255)
      {
        v60 = 0u;
        memset(v61, 0, 24);
        v61[24] = 3;
        if ((v12 & 0x80000000) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v60 = v58;
        *v61 = *v59;
        *&v61[9] = *&v59[9];
        if ((v12 & 0x80000000) == 0)
        {
LABEL_19:
          v39 = sub_1AAF75A98(v11, v10, v12);
LABEL_45:
          v50 = v39;
          sub_1AAD57C94(&v60);
          sub_1AAF74930(&v62, qword_1ED9B4010, &type metadata for AnyFormatStyle);
          return v50;
        }
      }

      v39 = sub_1AAF75FD0(v11, v10, v12 & 1);
      goto LABEL_45;
    }

    v23 = *(v8 + 6);
    v25 = *(v8 + 7);
    v24 = *(v8 + 8);
    v26 = v8[72];
    if (*(a2 + 16) && (v27 = sub_1AACE1760(*v8), (v28 & 1) != 0))
    {
      sub_1AACE0A98(*(a2 + 56) + 48 * v27, &v62);
    }

    else
    {
      v64 = 0;
      v62 = 0u;
      v63 = 0u;
      v65 = -1;
    }

    sub_1AADDDC34(&v62, &v58);
    if (v59[24] == 255)
    {
      v60 = 0u;
      memset(v61, 0, 24);
      v61[24] = 3;
      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v60 = v58;
      *v61 = *v59;
      *&v61[9] = *&v59[9];
      if ((v26 & 0x80000000) == 0)
      {
LABEL_27:
        v39 = sub_1AAF7681C(v25, v24, v26, v23);
        goto LABEL_45;
      }
    }

    v39 = sub_1AAF76D68(v23, *&v25);
    goto LABEL_45;
  }

  if (v7 != 2)
  {
    v29 = *(v8 + 6);
    v31 = *(v8 + 7);
    v30 = *(v8 + 8);
    v32 = v8[72];
    v33 = *(v8 + 15);
    v35 = *(v8 + 16);
    v34 = *(v8 + 17);
    v36 = v8[144];
    v66 = 0;
    v67 = 0xE000000000000000;
    if (*(a2 + 16) && (v37 = sub_1AACE1760(v9), (v38 & 1) != 0))
    {
      sub_1AACE0A98(*(a2 + 56) + 48 * v37, &v62);
    }

    else
    {
      v64 = 0;
      v62 = 0u;
      v63 = 0u;
      v65 = -1;
    }

    sub_1AADDDC34(&v62, &v58);
    if (v59[24] == 255)
    {
      v60 = 0u;
      memset(v61, 0, 24);
      v61[24] = 3;
      if ((v32 & 0x80000000) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v60 = v58;
      *v61 = *v59;
      *&v61[9] = *&v59[9];
      if ((v32 & 0x80000000) == 0)
      {
LABEL_31:
        v42 = sub_1AAF7681C(v31, v30, v32, v29);
LABEL_48:
        v52 = v42;
        v53 = v43;
        sub_1AAD57C94(&v60);
        sub_1AAF74930(&v62, qword_1ED9B4010, &type metadata for AnyFormatStyle);
        MEMORY[0x1AC5982F0](v52, v53);

        MEMORY[0x1AC5982F0](32, 0xE100000000000000);
        if (*(a2 + 16) && (v54 = sub_1AACE1760(v9), (v55 & 1) != 0))
        {
          sub_1AACE0A98(*(a2 + 56) + 48 * v54, &v62);
        }

        else
        {
          v64 = 0;
          v62 = 0u;
          v63 = 0u;
          v65 = -1;
        }

        sub_1AADDDC34(&v62, &v58);
        if (v59[24] == 255)
        {
          v60 = 0u;
          memset(v61, 0, 24);
          v61[24] = 3;
          if ((v36 & 0x80000000) == 0)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v60 = v58;
          *v61 = *v59;
          *&v61[9] = *&v59[9];
          if ((v36 & 0x80000000) == 0)
          {
LABEL_54:
            v48 = sub_1AAF7681C(v35, v34, v36, v33);
            goto LABEL_59;
          }
        }

        v48 = sub_1AAF76D68(v33, *&v35);
        goto LABEL_59;
      }
    }

    v42 = sub_1AAF76D68(v29, *&v31);
    goto LABEL_48;
  }

  v16 = *(v8 + 5);
  v15 = *(v8 + 6);
  v17 = v8[56];
  v19 = *(v8 + 14);
  v18 = *(v8 + 15);
  v20 = v8[128];
  v66 = 0;
  v67 = 0xE000000000000000;
  if (*(a2 + 16) && (v21 = sub_1AACE1760(v9), (v22 & 1) != 0))
  {
    sub_1AACE0A98(*(a2 + 56) + 48 * v21, &v62);
  }

  else
  {
    v64 = 0;
    v62 = 0u;
    v63 = 0u;
    v65 = -1;
  }

  sub_1AADDDC34(&v62, &v58);
  if (v59[24] == 255)
  {
    v60 = 0u;
    memset(v61, 0, 24);
    v61[24] = 3;
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_35:
    v40 = sub_1AAF75FD0(v16, v15, v17 & 1);
    goto LABEL_36;
  }

  v60 = v58;
  *v61 = *v59;
  *&v61[9] = *&v59[9];
  if (v17 < 0)
  {
    goto LABEL_35;
  }

LABEL_23:
  v40 = sub_1AAF75A98(v16, v15, v17);
LABEL_36:
  v44 = v40;
  v45 = v41;
  sub_1AAD57C94(&v60);
  sub_1AAF74930(&v62, qword_1ED9B4010, &type metadata for AnyFormatStyle);
  MEMORY[0x1AC5982F0](v44, v45);

  MEMORY[0x1AC5982F0](32, 0xE100000000000000);
  if (*(a2 + 16) && (v46 = sub_1AACE1760(v9), (v47 & 1) != 0))
  {
    sub_1AACE0A98(*(a2 + 56) + 48 * v46, &v62);
  }

  else
  {
    v64 = 0;
    v62 = 0u;
    v63 = 0u;
    v65 = -1;
  }

  sub_1AADDDC34(&v62, &v58);
  if (v59[24] == 255)
  {
    v60 = 0u;
    memset(v61, 0, 24);
    v61[24] = 3;
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

LABEL_56:
    v48 = sub_1AAF75FD0(v19, v18, v20 & 1);
    goto LABEL_59;
  }

  v60 = v58;
  *v61 = *v59;
  *&v61[9] = *&v59[9];
  if (v20 < 0)
  {
    goto LABEL_56;
  }

LABEL_42:
  v48 = sub_1AAF75A98(v19, v18, v20);
LABEL_59:
  v56 = v48;
  v57 = v49;
  sub_1AAD57C94(&v60);
  sub_1AAF74930(&v62, qword_1ED9B4010, &type metadata for AnyFormatStyle);
  MEMORY[0x1AC5982F0](v56, v57);

  return v66;
}

void sub_1AAF74FFC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AAF75058(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1AAF750A8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 64) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 2 * -a2;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0;
      return result;
    }

    *(a1 + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AAF75120(uint64_t result, uint64_t a2)
{
  v2 = *(result + 48) & 1 | (a2 << 63);
  *(result + 16) &= 1uLL;
  *(result + 48) = v2;
  return result;
}

uint64_t sub_1AAF75150(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1AAF75198(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AAF75200(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && a1[80])
  {
    return (*a1 + 248);
  }

  v3 = *a1;
  v4 = v3 >= 9;
  v5 = v3 - 9;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1AAF75244(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = a2 + 8;
    }
  }

  return result;
}

__n128 sub_1AAF752AC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1AAF752E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 177))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 160);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AAF75330(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 177) = 1;
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
      *(result + 160) = (a2 - 1);
      return result;
    }

    *(result + 177) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AAF753B4()
{
  result = qword_1EB427520;
  if (!qword_1EB427520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB427520);
  }

  return result;
}

unint64_t sub_1AAF7540C()
{
  result = qword_1ED9B0F28;
  if (!qword_1ED9B0F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B0F28);
  }

  return result;
}

unint64_t sub_1AAF75464()
{
  result = qword_1ED9B0EF8;
  if (!qword_1ED9B0EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B0EF8);
  }

  return result;
}

double sub_1AAF754B8@<D0>(char a1@<W0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[6];
  v7 = a2[7];
  v8 = a2[4];
  v50[5] = a2[5];
  v50[6] = v6;
  v51[0] = v7;
  *(v51 + 9) = *(a2 + 121);
  v9 = a2[3];
  v50[2] = a2[2];
  v50[3] = v9;
  v50[4] = v8;
  v10 = a2[1];
  v50[0] = *a2;
  v50[1] = v10;
  v11 = sub_1AAE63EF0(v50);
  if (v11 > 2)
  {
    if (v11 == 3)
    {
      v16 = sub_1AAD357A8(v50);
      *v37 = *v16;
      v17 = v16[3];
      v19 = v16[1];
      v18 = v16[2];
      *&v37[64] = v16[4];
      *&v37[32] = v18;
      *&v37[48] = v17;
      *&v37[16] = v19;
      v21 = v16[6];
      v20 = v16[7];
      v22 = v16[5];
      *&v37[121] = *(v16 + 121);
      *&v37[96] = v21;
      *&v37[112] = v20;
      *&v37[80] = v22;
      sub_1AAE63EFC(v37, &v52);
      sub_1AAE63EFC(&v37[72], &v52);
      sub_1AAE68190(a2);
      *&v38[23] = *&v37[16];
      *&v38[39] = *&v37[32];
      *&v38[55] = *&v37[48];
      v38[71] = v37[64];
      *&v38[7] = *v37;
      *&v36[23] = *&v37[88];
      *&v36[39] = *&v37[104];
      *&v36[55] = *&v37[120];
      *&v36[7] = *&v37[72];
      *&v39[1] = *v38;
      *&v39[49] = *&v38[48];
      *&v39[33] = *&v38[32];
      *&v39[17] = *&v38[16];
      *&v39[73] = *v36;
      *&v39[121] = *&v36[48];
      *&v39[105] = *&v36[32];
      v36[71] = v37[136];
      v39[0] = a1;
      *&v39[65] = *&v38[64];
      *&v39[137] = *&v36[64];
      *&v39[89] = *&v36[16];
      sub_1AAF758DC(v39);
LABEL_12:
      v46 = *&v39[96];
      v47 = *&v39[112];
      v15 = *&v39[128];
      goto LABEL_13;
    }

    if (v11 != 4)
    {
      v23 = sub_1AAD357A8(v50);
      *v37 = *v23;
      v24 = v23[3];
      v26 = v23[1];
      v25 = v23[2];
      *&v37[64] = v23[4];
      *&v37[32] = v25;
      *&v37[48] = v24;
      *&v37[16] = v26;
      v28 = v23[6];
      v27 = v23[7];
      v29 = v23[5];
      *&v37[121] = *(v23 + 121);
      *&v37[96] = v28;
      *&v37[112] = v27;
      *&v37[80] = v29;
      v30 = v37[72];
      sub_1AAE63EFC(v37, &v52);
      sub_1AAE68190(a2);
      *&v38[7] = *v37;
      *&v38[23] = *&v37[16];
      *&v38[39] = *&v37[32];
      *&v38[55] = *&v37[48];
      v38[71] = v37[64];
      *&v39[17] = *&v38[16];
      *&v39[33] = *&v38[32];
      *&v39[49] = *&v38[48];
      v39[0] = a1;
      *&v39[65] = *&v38[64];
      *&v39[1] = *v38;
      v39[73] = v30;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v11)
    {
      v13 = sub_1AAD357A8(v50);
      *&v37[7] = *v13;
      *&v37[55] = *(v13 + 48);
      v37[71] = *(v13 + 64);
      *&v37[39] = *(v13 + 32);
      *&v37[23] = *(v13 + 16);
      *&v39[1] = *v37;
      *&v39[49] = *&v37[48];
      *&v39[33] = *&v37[32];
      v39[0] = a1;
      *&v39[65] = *&v37[64];
      *&v39[17] = *&v37[16];
      v39[73] = 3;
      sub_1AAEDA174(v39);
      v46 = *&v39[96];
      v15 = *&v39[128];
      v47 = *&v39[112];
LABEL_13:
      v48 = v15;
      v49 = *&v39[144];
      v42 = *&v39[32];
      v43 = *&v39[48];
      v44 = *&v39[64];
      v45 = *&v39[80];
      v40 = *v39;
      v41 = *&v39[16];
      nullsub_1(&v40, v14);
      v58 = v46;
      v59 = v47;
      v60 = v48;
      v61 = v49;
      v54 = v42;
      v55 = v43;
      v56 = v44;
      v57 = v45;
      v52 = v40;
      v53 = v41;
      goto LABEL_14;
    }

    if (v11 != 1)
    {
      v12 = sub_1AAD357A8(v50);
      *&v37[7] = *v12;
      *&v37[55] = *(v12 + 48);
      v37[71] = *(v12 + 64);
      *&v37[39] = *(v12 + 32);
      *&v37[23] = *(v12 + 16);
      *&v39[1] = *v37;
      *&v39[49] = *&v37[48];
      *&v39[33] = *&v37[32];
      v39[0] = a1;
      *&v39[65] = *&v37[64];
      *&v39[17] = *&v37[16];
      v39[73] = 3;
LABEL_11:
      sub_1AAEDA174(v39);
      goto LABEL_12;
    }
  }

  sub_1AAD357A8(v50);
  sub_1AAE2D7EC(&v52);
LABEL_14:
  v31 = v59;
  *(a3 + 96) = v58;
  *(a3 + 112) = v31;
  *(a3 + 128) = v60;
  *(a3 + 144) = v61;
  v32 = v55;
  *(a3 + 32) = v54;
  *(a3 + 48) = v32;
  v33 = v57;
  *(a3 + 64) = v56;
  *(a3 + 80) = v33;
  result = *&v52;
  v35 = v53;
  *a3 = v52;
  *(a3 + 16) = v35;
  return result;
}

void *sub_1AAF758DC(void *result)
{
  v1 = result[9] & 0xFFFFFFFFFFFFFFBLL;
  v2 = result[18] & 0xFFFFFFFFFFFFFFBLL | 0xC000000000000000;
  *result &= 0xFuLL;
  result[9] = v1;
  result[18] = v2;
  return result;
}

uint64_t sub_1AAF75910(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1F && *(a1 + 72))
  {
    return (*a1 + 31);
  }

  v3 = (((*(a1 + 64) >> 59) >> 4) | (2 * ((*(a1 + 64) >> 59) & 0xE | (*(a1 + 64) >> 2) & 1))) ^ 0x1F;
  if (v3 >= 0x1E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1AAF7596C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1E)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 31;
    if (a3 >= 0x1F)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1F)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0xF | (16 * (-a2 & 0x1F));
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 64) = ((v3 << 59) | (4 * v3)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_1AAF75A0C()
{
  result = qword_1EB427528;
  if (!qword_1EB427528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB427528);
  }

  return result;
}

uint64_t sub_1AAF75A60(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1AAF75A98(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1AAF8CA04();
  v29 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AAF8CA64();
  v30 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1AAF8CAA4();
  MEMORY[0x1EEE9AC00](v14 - 8);
  sub_1AAEB36F8();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    v22 = v17;
    v23 = v16;
    sub_1AACE0A98(v4, &v35);
    if (v38 - 1 >= 2)
    {
      if (!v38)
      {
        v32 = v35;
        v33 = v36;
        v34 = v37;
        v31[0] = a1;
        v24 = sub_1AACBB42C(&v32, *(&v36 + 1));
        v25 = MEMORY[0x1E69E63B0];
        a1 = sub_1AAF7743C(v24, v31, MEMORY[0x1E69E63B0]);
        sub_1AAF77910(&v32, &qword_1ED9B2790, v25);
        return a1;
      }

      v31[0] = a1;
      sub_1AAF8CA74();
      sub_1AAD46810();
      sub_1AAF8C794();
      sub_1AAF778C8(&qword_1ED9B4470, sub_1AAEB36F8);
      sub_1AAF8F344();
      (*(v22 + 8))(v19, v23);
      return v32;
    }

LABEL_10:
    sub_1AAD57C94(&v35);
    return 0;
  }

  if (a3 == 1)
  {
    sub_1AAF8C844();
    v20 = sub_1AACE0A98(v4, &v35);
    if (v38 <= 1u)
    {
      if (v38)
      {
        v32 = v35;
        v33 = v36;
        v34 = v37;
        v21 = sub_1AACBB42C(&v32, *(&v36 + 1));
        a1 = sub_1AAF7743C(v21, v13, v11);
        (*(v30 + 8))(v13, v11);
        sub_1AAF77810(&v32, sub_1AAF77870);
        return a1;
      }

      goto LABEL_12;
    }

    if (v38 == 2)
    {
LABEL_12:
      sub_1AAD57C94(&v35);
      (*(v30 + 8))(v13, v11);
      return 0;
    }

    MEMORY[0x1AC5952D0](v20);
    sub_1AAF778C8(&qword_1ED9B2850, MEMORY[0x1E6969328]);
    sub_1AAF8CA44();
    (*(v29 + 8))(v10, v8);
    (*(v30 + 8))(v13, v11);
    return v32;
  }

  sub_1AACE0A98(v4, &v35);
  if (v38 < 2u)
  {
    goto LABEL_10;
  }

  if (v38 == 2)
  {
    v32 = v35;
    v33 = v36;
    v34 = v37;
    v31[0] = a1;
    v31[1] = a2;
    v26 = sub_1AACBB42C(&v32, *(&v36 + 1));
    v27 = MEMORY[0x1E69E6158];
    a1 = sub_1AAF7743C(v26, v31, MEMORY[0x1E69E6158]);
    sub_1AAF77910(&v32, &qword_1ED9AEC08, v27);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_1AAF75FD0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1AAF8CA04();
  v9 = *(v8 - 8);
  v56 = v8;
  v57 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AAF8CA64();
  v13 = *(v12 - 8);
  v58 = v12;
  v59 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v55 - v17;
  v19 = sub_1AAF8CAA4();
  MEMORY[0x1EEE9AC00](v19 - 8);
  sub_1AAEB36F8();
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    sub_1AAF8C844();
    sub_1AAF8C844();
    sub_1AACE0A98(v4, &v64);
    if (v67 <= 1u)
    {
      if (v67)
      {
        v61 = v64;
        v62 = v65;
        v63 = v66;
        sub_1AAF77D58(0, &qword_1ED9B1188, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1AAF9E2B0;
        v26 = sub_1AACBB42C(&v61, *(&v62 + 1));
        v27 = v58;
        *(inited + 32) = sub_1AAF7743C(v26, v18, v58);
        *(inited + 40) = v28;
        v29 = sub_1AACBB42C(&v61, *(&v62 + 1));
        *(inited + 48) = sub_1AAF7743C(v29, v15, v27);
        *(inited + 56) = v30;
        v31 = sub_1AAF882B8(0x4025204F54204025, 0xE800000000000000, inited);
        swift_setDeallocating();
        swift_arrayDestroy();
        v32 = *(v59 + 8);
        v32(v15, v27);
        v32(v18, v27);
        sub_1AAF77810(&v61, sub_1AAF77870);
        return v31;
      }

      goto LABEL_8;
    }

    if (v67 == 2)
    {
LABEL_8:
      sub_1AAD57C94(&v64);
      v36 = v58;
      v37 = *(v59 + 8);
      v37(v15, v58);
      v37(v18, v36);
      return 0;
    }

    sub_1AAF77D58(0, &qword_1ED9B1188, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v45 = swift_initStackObject();
    *(v45 + 16) = xmmword_1AAF9E2B0;
    MEMORY[0x1AC5952D0]();
    sub_1AAF778C8(&qword_1ED9B2850, MEMORY[0x1E6969328]);
    v46 = v56;
    sub_1AAF8CA44();
    v47 = *(v57 + 8);
    v48 = v47(v11, v46);
    MEMORY[0x1AC5952D0](v48);
    sub_1AAF8CA44();
    v47(v11, v46);
    v49 = sub_1AAF882B8(0x4025204F54204025, 0xE800000000000000, v45);
    swift_setDeallocating();
    swift_arrayDestroy();
    v50 = v58;
    v51 = *(v59 + 8);
    v51(v15, v58);
    v51(v18, v50);
    return v49;
  }

  else
  {
    v34 = v22;
    v59 = a2;
    v35 = v21;
    sub_1AACE0A98(v4, &v64);
    if (v67 - 1 < 2)
    {
      sub_1AAD57C94(&v64);
      return 0;
    }

    if (v67)
    {
      sub_1AAF77D58(0, &qword_1ED9B1188, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v52 = swift_initStackObject();
      *(v52 + 16) = xmmword_1AAF9E2B0;
      *&v61 = a1;
      sub_1AAF8CA74();
      sub_1AAD46810();
      sub_1AAF8C794();
      sub_1AAF778C8(&qword_1ED9B4470, sub_1AAEB36F8);
      sub_1AAF8F344();
      v53 = *(v34 + 8);
      v53(v24, v35);
      *&v61 = v59;
      sub_1AAF8CA74();
      sub_1AAF8C794();
      sub_1AAF8F344();
      v53(v24, v35);
      v54 = sub_1AAF882B8(0x4025204F54204025, 0xE800000000000000, v52);
      swift_setDeallocating();
      swift_arrayDestroy();
      return v54;
    }

    else
    {
      v61 = v64;
      v62 = v65;
      v63 = v66;
      sub_1AAF77D58(0, &qword_1ED9B1188, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v38 = swift_initStackObject();
      *(v38 + 16) = xmmword_1AAF9E2B0;
      v60[0] = a1;
      v39 = sub_1AACBB42C(&v61, *(&v62 + 1));
      v40 = MEMORY[0x1E69E63B0];
      *(v38 + 32) = sub_1AAF7743C(v39, v60, MEMORY[0x1E69E63B0]);
      *(v38 + 40) = v41;
      v60[0] = v59;
      v42 = sub_1AACBB42C(&v61, *(&v62 + 1));
      *(v38 + 48) = sub_1AAF7743C(v42, v60, v40);
      *(v38 + 56) = v43;
      v44 = sub_1AAF882B8(0x4025204F54204025, 0xE800000000000000, v38);
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_1AAF77910(&v61, &qword_1ED9B2790, v40);
      return v44;
    }
  }
}

uint64_t sub_1AAF7681C(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v32 = a1;
  v8 = sub_1AAF8CA04();
  v31 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AAF8CA64();
  v33 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1AAF8CAA4();
  MEMORY[0x1EEE9AC00](v14 - 8);
  sub_1AAEB36F8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if (a3 == 1)
    {
      sub_1AAF8C844();
      v20 = sub_1AACE0A98(v4, &v38);
      if (v41 <= 1u)
      {
        if (v41)
        {
          v35 = v38;
          v36 = v39;
          v37 = v40;
          v21 = sub_1AACBB42C(&v35, *(&v39 + 1));
          v22 = sub_1AAF7743C(v21, v13, v11);
          (*(v33 + 8))(v13, v11);
          sub_1AAF77810(&v35, sub_1AAF77870);
          return v22;
        }

        goto LABEL_13;
      }

      if (v41 == 2)
      {
LABEL_13:
        sub_1AAD57C94(&v38);
        (*(v33 + 8))(v13, v11);
        return 0;
      }

      MEMORY[0x1AC5952D0](v20);
      sub_1AAF778C8(&qword_1ED9B2850, MEMORY[0x1E6969328]);
      sub_1AAF8CA44();
      (*(v31 + 8))(v10, v8);
      (*(v33 + 8))(v13, v11);
      return v35;
    }

    if (!a2)
    {
      return 0;
    }

    sub_1AACE0A98(v4, &v38);
    if (v41 < 2u)
    {
LABEL_11:
      sub_1AAD57C94(&v38);
      return 0;
    }

    if (v41 != 2)
    {

      return v32;
    }

    v35 = v38;
    v36 = v39;
    v37 = v40;
    v34[0] = v32;
    v34[1] = a2;
    v29 = sub_1AACBB42C(&v35, *(&v39 + 1));
    v26 = MEMORY[0x1E69E6158];
    v27 = sub_1AAF7743C(v29, v34, MEMORY[0x1E69E6158]);
    v28 = &qword_1ED9AEC08;
LABEL_18:
    sub_1AAF77910(&v35, v28, v26);
    return v27;
  }

  v24 = v17;
  sub_1AACE0A98(v4, &v38);
  if (v41 - 1 < 2)
  {
    goto LABEL_11;
  }

  if (!v41)
  {
    v35 = v38;
    v36 = v39;
    v37 = v40;
    *v34 = a4;
    v25 = sub_1AACBB42C(&v35, *(&v39 + 1));
    v26 = MEMORY[0x1E69E63B0];
    v27 = sub_1AAF7743C(v25, v34, MEMORY[0x1E69E63B0]);
    v28 = &qword_1ED9B2790;
    goto LABEL_18;
  }

  *v34 = a4;
  sub_1AAF8CA74();
  sub_1AAD46810();
  sub_1AAF8C794();
  sub_1AAF778C8(&qword_1ED9B4470, sub_1AAEB36F8);
  sub_1AAF8F344();
  (*(v16 + 8))(v19, v24);
  return v35;
}

uint64_t sub_1AAF76D68(double a1, double a2)
{
  v5 = sub_1AAF8CAA4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1AAEB36F8();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACE0A98(v2, v27);
  if (v29 - 1 >= 2)
  {
    if (v29)
    {
      sub_1AAF77D58(0, &qword_1ED9B1188, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1AAF9E2B0;
      *&v24 = a1;
      sub_1AAF8CA74();
      sub_1AAD46810();
      sub_1AAF8C794();
      sub_1AAF778C8(&qword_1ED9B4470, sub_1AAEB36F8);
      sub_1AAF8F344();
      v20 = *(v8 + 8);
      v20(v10, v7);
      *&v24 = a2;
      sub_1AAF8CA74();
      sub_1AAF8C794();
      sub_1AAF8F344();
      v20(v10, v7);
      v21 = sub_1AAF882B8(0x4025204F54204025, 0xE800000000000000, inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      return v21;
    }

    else
    {
      v24 = v27[0];
      v25 = v27[1];
      v26 = v28;
      sub_1AAF77D58(0, &qword_1ED9B1188, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v12 = swift_initStackObject();
      *(v12 + 16) = xmmword_1AAF9E2B0;
      v23 = a1;
      v13 = sub_1AACBB42C(&v24, *(&v25 + 1));
      v14 = MEMORY[0x1E69E63B0];
      *(v12 + 32) = sub_1AAF7743C(v13, &v23, MEMORY[0x1E69E63B0]);
      *(v12 + 40) = v15;
      v23 = a2;
      v16 = sub_1AACBB42C(&v24, *(&v25 + 1));
      *(v12 + 48) = sub_1AAF7743C(v16, &v23, v14);
      *(v12 + 56) = v17;
      v18 = sub_1AAF882B8(0x4025204F54204025, 0xE800000000000000, v12);
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_1AAF77910(&v24, &qword_1ED9B2790, v14);
      return v18;
    }
  }

  else
  {
    sub_1AAD57C94(v27);
    return 0;
  }
}

unint64_t sub_1AAF77160()
{
  sub_1AAF77D58(0, &qword_1ED9B0280, MEMORY[0x1E69E6158], type metadata accessor for AnyFormatStyle.IdentityFormatStyle);
  qword_1ED9C33D0 = v0;
  result = sub_1AAF77998();
  qword_1ED9C33D8 = result;
  byte_1ED9C33E0 = 2;
  return result;
}

uint64_t sub_1AAF771C4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = sub_1AACBB42C(a1, v5);

  return sub_1AAF7721C(v6, a2, a3, v5);
}

uint64_t sub_1AAF7721C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1AAF8FE74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19[-v8 - 8];
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1AACAEF68(a2, v19);
  sub_1AAF77CF4();
  v14 = swift_dynamicCast();
  v15 = *(v10 + 56);
  if (v14)
  {
    v15(v9, 0, 1, a4);
    (*(v10 + 32))(v13, v9, a4);
    v16 = sub_1AAF8F5F4();
    (*(v10 + 8))(v13, a4);
  }

  else
  {
    v15(v9, 1, 1, a4);
    (*(v7 + 8))(v9, v6);
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1AAF7743C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[0] = a2;
  v18[1] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v18 - v7;
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = (v18 - v13);
  if (*(*(a3 - 8) + 64) == v6)
  {
    v15 = result;
    (*(v5 + 16))(v8, v18[0], AssociatedTypeWitness);
    sub_1AAF8C6A4();
    result = (*(v5 + 8))(v8, AssociatedTypeWitness);
    if (v11 == 16)
    {
      v16 = *v14;
      v17 = *(v10 + 8);

      v17(v14, v15);
      return v16;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAF77694@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_1AAF27900();

  *a1 = v2 & 1;
  return result;
}

uint64_t sub_1AAF776DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AAF27900();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1AAF7770C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1AAF77760(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1AAF77810(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AAF77870()
{
  if (!qword_1ED9B2588[0])
  {
    sub_1AAF8CA64();
    v0 = type metadata accessor for AnyFormatStyle.Wrapper();
    if (!v1)
    {
      atomic_store(v0, qword_1ED9B2588);
    }
  }
}

uint64_t sub_1AAF778C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AAF77910(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AAF77D58(0, a2, a3, type metadata accessor for AnyFormatStyle.Wrapper);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1AAF77998()
{
  result = qword_1ED9B0288[0];
  if (!qword_1ED9B0288[0])
  {
    sub_1AAF77D58(255, &qword_1ED9B0280, MEMORY[0x1E69E6158], type metadata accessor for AnyFormatStyle.IdentityFormatStyle);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9B0288);
  }

  return result;
}

uint64_t sub_1AAF77A14(uint64_t a1, uint64_t a2)
{
  sub_1AACE0A98(a1, v22);
  sub_1AACE0A98(a2, v24);
  if (v23 <= 1u)
  {
    if (v23)
    {
      sub_1AACE0A98(v22, v20);
      if (v25 != 1)
      {
        sub_1AAF77810(v20, sub_1AAF77870);
        goto LABEL_16;
      }

      v17 = *v24;
      v18 = *&v24[16];
      v19 = *&v24[32];
      v10 = v21;
      v11 = sub_1AACBB42C(v20, v21);
      v12 = sub_1AAF8CA64();
      v8 = sub_1AAF7721C(v11, &v17, v12, v10);
      sub_1AAF77810(&v17, sub_1AAF77870);
      sub_1AAF77810(v20, sub_1AAF77870);
LABEL_19:
      sub_1AAD57C94(v22);
      return v8 & 1;
    }

    sub_1AACE0A98(v22, v20);
    if (v25)
    {
      v3 = &qword_1ED9B2790;
      v4 = MEMORY[0x1E69E63B0];
LABEL_14:
      sub_1AAF77910(v20, v3, v4);
LABEL_16:
      sub_1AAF77810(v22, sub_1AAF77C98);
      v8 = 0;
      return v8 & 1;
    }

    v17 = *v24;
    v18 = *&v24[16];
    v19 = *&v24[32];
    v14 = v21;
    v15 = sub_1AACBB42C(v20, v21);
    v7 = MEMORY[0x1E69E63B0];
    v8 = sub_1AAF7721C(v15, &v17, MEMORY[0x1E69E63B0], v14);
    v9 = &qword_1ED9B2790;
LABEL_18:
    sub_1AAF77910(&v17, v9, v7);
    sub_1AAF77910(v20, v9, v7);
    goto LABEL_19;
  }

  if (v23 == 2)
  {
    sub_1AACE0A98(v22, v20);
    if (v25 != 2)
    {
      v3 = &qword_1ED9AEC08;
      v4 = MEMORY[0x1E69E6158];
      goto LABEL_14;
    }

    v17 = *v24;
    v18 = *&v24[16];
    v19 = *&v24[32];
    v5 = v21;
    v6 = sub_1AACBB42C(v20, v21);
    v7 = MEMORY[0x1E69E6158];
    v8 = sub_1AAF7721C(v6, &v17, MEMORY[0x1E69E6158], v5);
    v9 = &qword_1ED9AEC08;
    goto LABEL_18;
  }

  if (v25 != 3)
  {
    goto LABEL_16;
  }

  v13 = vorrq_s8(*&v24[8], *&v24[24]);
  if (*&vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL)) | *v24)
  {
    goto LABEL_16;
  }

  sub_1AAD57C94(v22);
  v8 = 1;
  return v8 & 1;
}

void sub_1AAF77C98()
{
  if (!qword_1EB427530[0])
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EB427530);
    }
  }
}

unint64_t sub_1AAF77CF4()
{
  result = qword_1ED9B4478;
  if (!qword_1ED9B4478)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED9B4478);
  }

  return result;
}

void sub_1AAF77D58(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AAF77DA8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AAF77E54(void *a1)
{
  type metadata accessor for AnyFormatStyle.IdentityFormatStyle.CodingKeys();
  swift_getWitnessTable();
  v2 = sub_1AAF90454();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  sub_1AACBB42C(a1, a1[3]);
  sub_1AAF90764();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1AAF77FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v67 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v54 = *(TupleTypeMetadata2 - 8);
  v55 = TupleTypeMetadata2;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v56 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v52 - v11;
  v65 = sub_1AAF900F4();
  MEMORY[0x1EEE9AC00](v65);
  v12 = sub_1AAF90364();
  v66 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v52 - v13;
  v64 = swift_getTupleTypeMetadata2();
  v15 = sub_1AAF8FE74();
  v60 = *(v15 - 8);
  v61 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v52 - v16;
  v59 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v52 - v18;
  v63 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v19);
  v62 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v57 = &v52 - v23;
  MEMORY[0x1AC5983C0](a1, a2, v22);
  v68 = a1;
  v69 = a2;
  v70 = a3;
  KeyPath = swift_getKeyPath();
  v25 = swift_allocObject();
  v25[2] = a1;
  v25[3] = a2;
  v25[4] = a3;
  v25[5] = KeyPath;
  v26 = a3;

  swift_getWitnessTable();
  sub_1AAF903E4();

  v27 = v64;

  WitnessTable = swift_getWitnessTable();
  v29 = *(*(*(v26 + 16) + 24) + 8);
  sub_1AAF88EEC(v12, WitnessTable, v29, v17);
  (*(v66 + 8))(v14, v12);
  if ((*(*(v27 - 8) + 48))(v17, 1, v27) == 1)
  {
    (*(v60 + 8))(v17, v61);
    v30 = sub_1AAF8F5D4();
    return (*(*(v30 - 8) + 56))(v67, 1, 1, v30);
  }

  else
  {
    v32 = v67;
    v33 = *(v27 + 48);
    v34 = v29;
    v36 = v58;
    v35 = v59;
    v37 = *(v59 + 48);
    v38 = *(v63 + 32);
    v38(v58, v17, AssociatedTypeWitness);
    v38(&v36[v37], &v17[v33], AssociatedTypeWitness);
    v39 = *(v35 + 48);
    v40 = v57;
    v38(v57, v36, AssociatedTypeWitness);
    v41 = &v36[v39];
    v42 = v62;
    v38(v62, v41, AssociatedTypeWitness);
    result = sub_1AAF8F584();
    if (result)
    {
      v66 = v34;
      v43 = v53;
      v38(v53, v40, AssociatedTypeWitness);
      v44 = v55;
      v38(&v43[*(v55 + 48)], v42, AssociatedTypeWitness);
      v45 = v54;
      v46 = v56;
      (*(v54 + 16))(v56, v43, v44);
      v47 = *(v44 + 48);
      v38(v32, v46, AssociatedTypeWitness);
      v48 = *(v63 + 8);
      v48(&v46[v47], AssociatedTypeWitness);
      (*(v45 + 32))(v46, v43, v44);
      v49 = *(v44 + 48);
      v50 = sub_1AAF8F5D4();
      v51 = v67;
      v38(&v67[*(v50 + 36)], &v46[v49], AssociatedTypeWitness);
      v48(v46, AssociatedTypeWitness);
      return (*(*(v50 - 8) + 56))(v51, 0, 1, v50);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1AAF786F0@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void (**a4)(char *, uint64_t)@<X4>, uint64_t a5@<X5>, char *a6@<X8>)
{
  v59 = a5;
  v77 = a1;
  v78 = a2;
  v69 = a6;
  v62 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v10;
  v83 = a4;
  v11 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v85 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v55 - v13;
  v68 = sub_1AAF8FE74();
  v63 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v16 = &v55 - v15;
  v17 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_getAssociatedTypeWitness();
  v55 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v55 - v22;
  v24 = a3;
  v56 = sub_1AAF8FE74();
  v57 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v60 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v75 = &v55 - v27;
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v55 - v30;
  v66 = *(v85 + 56);
  v67 = v85 + 56;
  v66(v69, 1, 1, AssociatedTypeWitness, v29);
  v32 = *(v62 + 56);
  v76 = v24;
  v65 = v62 + 56;
  v64 = v32;
  v32(v31, 1, 1, v24);
  (*(v17 + 16))(v20, v84, v82);
  sub_1AAF8F744();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v79 = v23;
  v80 = v21;
  v34 = v56;
  v35 = v31;
  v74 = AssociatedConformanceWitness;
  sub_1AAF8FE94();
  v36 = v85;
  v72 = *(v85 + 48);
  v73 = v85 + 48;
  if (v72(v16, 1, AssociatedTypeWitness) == 1)
  {
LABEL_2:
    (*(v55 + 8))(v79, v80);
    return (*(v57 + 8))(v35, v34);
  }

  v84 = *(v36 + 32);
  v82 = (v57 + 16);
  v81 = (v62 + 48);
  v83 = (v57 + 8);
  v61 = (v62 + 8);
  v85 = v36 + 32;
  v58 = (v36 + 8);
  ++v63;
  v62 += 32;
  v70 = AssociatedTypeWitness;
  v71 = v16;
  v84(v14, v16, AssociatedTypeWitness);
  while (1)
  {
    v41 = v14;
    v77(v14);
    v42 = *v82;
    v43 = v75;
    (*v82)(v75, v35, v34);
    v44 = *v81;
    v45 = v76;
    v46 = (*v81)(v43, 1, v76);
    v47 = *v83;
    (*v83)(v43, v34);
    if (v46 == 1)
    {
LABEL_4:
      v47(v35, v34);
      v38 = v69;
      (*v63)(v69, v68);
      (*v62)(v35, v9, v45);
      v64(v35, 0, 1, v45);
      v14 = v41;
      v39 = v70;
      v84(v38, v41, v70);
      (v66)(v38, 0, 1, v39);
      goto LABEL_5;
    }

    v48 = v60;
    v49 = v35;
    v50 = v35;
    v51 = v34;
    v42(v60, v50, v34);
    result = v44(v48, 1, v45);
    if (result == 1)
    {
      break;
    }

    v52 = v48;
    v53 = sub_1AAF8F564();
    v54 = *v61;
    (*v61)(v52, v45);
    v34 = v51;
    v35 = v49;
    if (v53)
    {
      goto LABEL_4;
    }

    v54(v9, v45);
    v14 = v41;
    v39 = v70;
    (*v58)(v41, v70);
LABEL_5:
    v40 = v71;
    sub_1AAF8FE94();
    if (v72(v40, 1, v39) == 1)
    {
      goto LABEL_2;
    }

    v84(v14, v40, v39);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAF78EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v45 = a2;
  v46 = a4;
  v47 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v41 = *(TupleTypeMetadata2 - 8);
  v42 = TupleTypeMetadata2;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v39 - v9;
  v10 = swift_getTupleTypeMetadata2();
  v11 = sub_1AAF8FE74();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - v13;
  v15 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - v16;
  v44 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v39 - v22;
  sub_1AAF88EEC(a1, v45, v47, v14);
  if ((*(*(v10 - 8) + 48))(v14, 1, v10) == 1)
  {
    (*(v12 + 8))(v14, v11);
    v24 = sub_1AAF8F5D4();
    return (*(*(v24 - 8) + 56))(v46, 1, 1, v24);
  }

  else
  {
    v26 = *(v10 + 48);
    v27 = *(v15 + 48);
    v28 = *(v44 + 32);
    v28(v17, v14, AssociatedTypeWitness);
    v28(&v17[v27], &v14[v26], AssociatedTypeWitness);
    v29 = *(v15 + 48);
    v28(v23, v17, AssociatedTypeWitness);
    v28(v20, &v17[v29], AssociatedTypeWitness);
    result = sub_1AAF8F584();
    if (result)
    {
      v30 = v40;
      v28(v40, v23, AssociatedTypeWitness);
      v31 = v42;
      v28(&v30[*(v42 + 48)], v20, AssociatedTypeWitness);
      v32 = v41;
      v33 = v43;
      (*(v41 + 16))(v43, v30, v31);
      v34 = *(v31 + 48);
      v28(v46, v33, AssociatedTypeWitness);
      v35 = *(v44 + 8);
      v35(&v33[v34], AssociatedTypeWitness);
      (*(v32 + 32))(v33, v30, v31);
      v36 = *(v31 + 48);
      v37 = sub_1AAF8F5D4();
      v38 = v46;
      v28(&v46[*(v37 + 36)], &v33[v36], AssociatedTypeWitness);
      v35(v33, AssociatedTypeWitness);
      return (*(*(v37 - 8) + 56))(v38, 0, 1, v37);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1AAF79400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v76 = sub_1AAF904A4();
  v82 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v81 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v75 = &v72 - v9;
  v10 = *(a4 + 16);
  v91 = *(*(v10 + 16) + 8);
  v88 = *(v91 + 16);
  v87 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v87);
  v86 = &v72 - v11;
  v12 = sub_1AAF8FE74();
  v84 = *(v12 - 8);
  v85 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v92 = &v72 - v13;
  v95 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v73 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v74 = &v72 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v89 = &v72 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v77 = &v72 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v72 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v100 = &v72 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v93 = &v72 - v28;
  v80 = v10;
  v83 = *(*(v10 + 24) + 8);
  v29 = sub_1AAF8F5D4();
  v30 = sub_1AAF8FE74();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v72 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v72 - v34;
  v36 = *(v29 - 8);
  v38 = MEMORY[0x1EEE9AC00](v37);
  v98 = v39;
  v99 = &v72 - v40;
  v97 = v41;
  v42 = a1;
  v43 = v29;
  (*(v41 + 16))(v32, v42, v38);
  v44 = *(v36 + 48);
  v45 = v44(v32, 1, v43);
  v96 = a3;
  v90 = v24;
  v94 = *&a2;
  if (v45 == 1)
  {
    v101 = a2;
    v46 = a4;
    v47 = sub_1AAF8F914();
    WitnessTable = swift_getWitnessTable();
    v49 = v47;
    a4 = v46;
    sub_1AAF77FE4(v49, WitnessTable, v46, v35);
    if (v44(v32, 1, v43) != 1)
    {
      (*(v97 + 8))(v32, v98);
    }
  }

  else
  {
    (*(v36 + 32))(v35, v32, v43);
    (*(v36 + 56))(v35, 0, 1, v43);
  }

  v50 = v44(v35, 1, v43);
  v51 = v100;
  if (v50 == 1)
  {
    v53 = v97;
    v52 = v98;
LABEL_9:
    (*(v53 + 8))(v35, v52);
    return 1;
  }

  v54 = v99;
  (*(v36 + 32))(v99, v35, v43);
  v35 = v92;
  v55 = v96;
  sub_1AAF7B82C(v94, v96, a4, v92);
  v56 = v95;
  if ((*(v95 + 48))(v35, 1, v55) == 1)
  {
    (*(v36 + 8))(v54, v43);
    v53 = v84;
    v52 = v85;
    goto LABEL_9;
  }

  v98 = v43;
  v58 = v93;
  (*(v56 + 32))(v93, v35, v55);
  swift_getAssociatedConformanceWitness();
  sub_1AAF90554();
  sub_1AAF904C4();
  v59 = sub_1AAF8F554();
  v60 = *(v56 + 8);
  v60(v51, v55);
  if ((v59 & 1) == 0)
  {
    v60(v58, v55);
    (*(v36 + 8))(v99, v98);
    return 1;
  }

  v97 = v36;
  sub_1AAF902F4();
  sub_1AAF8F384();
  v61 = sub_1AAF8F8D4();
  cbrt(v61);
  v62 = v74;
  sub_1AAF8F374();
  sub_1AAF8FAD4();
  v60(v62, v55);
  swift_getAssociatedConformanceWitness();
  sub_1AAF90544();
  v63 = v73;
  sub_1AAF90494();
  sub_1AAF8FAD4();
  v60(v63, v55);
  v64 = v89;
  sub_1AAF8F434();
  v60(v62, v55);
  v60(v64, v55);
  v65 = v82;
  v66 = v81;
  v67 = v76;
  (*(v82 + 104))(v81, *MEMORY[0x1E69E7040], v76);
  v68 = v77;
  v69 = v100;
  sub_1AAF8F444();
  (*(v65 + 8))(v66, v67);
  v60(v69, v55);
  sub_1AADF2498();
  sub_1AAF902B4();
  if (v102)
  {
    v101 = 0;
    v102 = 0xE000000000000000;
    sub_1AAF900D4();
    v71 = sub_1AAF907B4();
    MEMORY[0x1AC5982F0](v71);

    MEMORY[0x1AC5982F0](0xD00000000000001ELL, 0x80000001AAFCE890);
    MEMORY[0x1AC5982F0](7630409, 0xE300000000000000);
    MEMORY[0x1AC5982F0](0xD00000000000002ELL, 0x80000001AAFCE8B0);
    result = sub_1AAF902C4();
    __break(1u);
  }

  else
  {
    v70 = v101;
    v60(v68, v55);
    v60(v90, v55);
    v60(v93, v55);
    (*(v97 + 8))(v99, v98);
    return v70;
  }

  return result;
}

uint64_t sub_1AAF79F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a5;
  v38 = a2;
  v36 = a1;
  v41 = sub_1AAF8FE74();
  v7 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v42 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v39 = &v34 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - v19;
  v40 = a3;
  v43 = a3;
  sub_1AAF8F914();
  swift_getWitnessTable();
  sub_1AAF8FBF4();
  v21 = *(v12 + 48);
  if (v21(v11, 1, a4) == 1)
  {
    v7[1](v11, v41);
    return 0;
  }

  v35 = v7;
  v34 = *(v12 + 32);
  v34(v20, v11, a4);
  v43 = v40;
  swift_getWitnessTable();
  v22 = v42;
  sub_1AAF8F4F4();
  if (v21(v22, 1, a4) == 1)
  {
    (*(v12 + 8))(v20, a4);
    (*(v35 + 1))(v42, v41);
    return 0;
  }

  v35 = v20;
  v41 = v12;
  v23 = v39;
  v34(v39, v42, a4);
  v24 = v38;
  if (v38 < 2)
  {
    v25 = *(v41 + 8);
    v25(v23, a4);
    v25(v35, a4);
    return 0;
  }

  v28 = v38 - 1;
  result = sub_1AAF8F564();
  if ((result & 1) == 0)
  {
    v26 = 0;
    if (v24 != 2)
    {
      v31 = (v41 + 8);
      while (!__OFADD__(v26, v28))
      {
        sub_1AAF8F944();
        v32 = sub_1AAF8F554();
        result = (*v31)(v15, a4);
        if (v32)
        {
          v28 = (v26 + v28) / 2;
        }

        else
        {
          v26 = (v26 + v28) / 2;
        }

        if (v26 + 1 >= v28)
        {
          goto LABEL_25;
        }
      }

      goto LABEL_27;
    }

LABEL_25:
    v33 = *(v41 + 8);
    v33(v39, a4);
    v33(v35, a4);
    return v26;
  }

  v26 = 0;
  if (v24 == 2)
  {
    goto LABEL_25;
  }

  v29 = (v41 + 8);
  while (!__OFADD__(v26, v28))
  {
    sub_1AAF8F944();
    v30 = sub_1AAF8F564();
    result = (*v29)(v15, a4);
    if (v30)
    {
      v28 = (v26 + v28) / 2;
    }

    else
    {
      v26 = (v26 + v28) / 2;
    }

    if (v26 + 1 >= v28)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1AAF7A3D0(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1AADF8C54(MEMORY[0x1E69E7CC0]);
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_44;
  }

  v5 = 0;
  v6 = a1 + 32;
  v96 = *(a1 + 16);
  v93 = a1 + 32;
  do
  {
    v98 = v3;
    v7 = (v6 + 152 * v5);
    while (1)
    {
      if (v5 >= v4)
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v8 = v7[7];
      v115 = v7[6];
      v116 = v8;
      v117 = v7[8];
      v118 = *(v7 + 18);
      v9 = v7[3];
      v111 = v7[2];
      v112 = v9;
      v10 = v7[5];
      v113 = v7[4];
      v114 = v10;
      v11 = v7[1];
      v109 = *v7;
      v110 = v11;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_46;
      }

      v99 = v5 + 1;
      v12 = v7[7];
      v119[6] = v7[6];
      v119[7] = v12;
      v119[8] = v7[8];
      v120 = *(v7 + 18);
      v13 = v7[3];
      v119[2] = v7[2];
      v119[3] = v13;
      v14 = v7[5];
      v119[4] = v7[4];
      v119[5] = v14;
      v15 = v7[1];
      v119[0] = *v7;
      v119[1] = v15;
      v16 = sub_1AAF14CF0(v119);
      if (v16 > 1)
      {
        v97 = v2;
        if (v16 == 2)
        {
          v23 = sub_1AACBC764(v119);
          v24 = *(v23 + 8);
          v25 = *(v23 + 16);
          v26 = *(v23 + 32);
          v27 = *(v23 + 80);
          v28 = *(v23 + 88);
          v29 = *(v23 + 96);
          v30 = *(v23 + 104);
          v104[0] = *(v23 + 24);
          v31 = v104[0] & 1;
          sub_1AACD7304(v24, v25, v104[0]);

          sub_1AACD7304(v27, v28, v29);
          *&v105 = v24;
          *(&v105 + 1) = v25;
          *&v106 = v31;
          *(&v106 + 1) = v26;
          *&v107 = v27;
          *(&v107 + 1) = v28;
          *&v108 = v29 & 1 | 0x8000000000000000;
          *(&v108 + 1) = v30;
        }

        else
        {
          v37 = sub_1AACBC764(v119);
          v38 = *(v37 + 16);
          v39 = *(v37 + 24);
          v40 = *(v37 + 40);
          v41 = *(v37 + 88);
          v42 = *(v37 + 96);
          v43 = *(v37 + 104);
          v44 = *(v37 + 112);
          v104[0] = *(v37 + 32);
          v45 = v104[0] & 1;
          sub_1AACD7304(v38, v39, v104[0]);

          sub_1AACD7304(v41, v42, v43);
          *&v105 = v38;
          *(&v105 + 1) = v39;
          *&v106 = v45;
          *(&v106 + 1) = v40;
          *&v107 = v41;
          *(&v107 + 1) = v42;
          *&v108 = v43 & 1 | 0x8000000000000000;
          *(&v108 + 1) = v44;
        }

        v4 = v96;
        v2 = v97;
      }

      else
      {
        if (v16)
        {
          v32 = sub_1AACBC764(v119);
          v33 = *(v32 + 16);
          v34 = *(v32 + 24);
          v36 = *(v32 + 40);
          v104[0] = *(v32 + 32);
          v35 = v104[0];
          v22 = v94 & 1;
          sub_1AACD7304(v33, v34, v104[0]);
          *&v105 = v33;
          *(&v105 + 1) = v34;
          LOBYTE(v106) = v35;
          BYTE7(v106) = 0;
          *(&v106 + 5) = 0;
          *(&v106 + 1) = 0;
          *(&v106 + 1) = v36;
          v94 &= 1u;
        }

        else
        {
          v17 = sub_1AACBC764(v119);
          v18 = *(v17 + 8);
          v19 = *(v17 + 16);
          v21 = *(v17 + 32);
          v104[0] = *(v17 + 24);
          v20 = v104[0];
          v22 = v95 & 1;
          sub_1AACD7304(v18, v19, v104[0]);
          *&v105 = v18;
          *(&v105 + 1) = v19;
          LOBYTE(v106) = v20;
          BYTE7(v106) = 0;
          *(&v106 + 5) = 0;
          *(&v106 + 1) = 0;
          *(&v106 + 1) = v21;
          v95 &= 1u;
        }

        *&v108 = v22;
      }

      v121 = v105;
      v122 = v106;
      v123 = v107;
      v124 = v108;
      v3 = v98;
      if (!v98[2])
      {
        break;
      }

      sub_1AAD81BF4(&v109, v104);
      v46 = sub_1AADB0C18(&v121);
      if ((v47 & 1) == 0)
      {
        goto LABEL_29;
      }

      v48 = *(v98[7] + 8 * v46);
      sub_1AAD81BF4(&v109, v104);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v48 & 0x8000000000000000) != 0)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v2 = sub_1AADB81E4(v2);
        if ((v48 & 0x8000000000000000) != 0)
        {
          goto LABEL_47;
        }
      }

      if (v48 >= v2[2])
      {
        goto LABEL_48;
      }

      v49 = &v2[9 * v48];
      v52 = v49[12];
      v50 = (v49 + 12);
      v51 = v52;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v50 = v52;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v51 = sub_1AAD6931C(0, *(v51 + 2) + 1, 1, v51);
        *v50 = v51;
      }

      v55 = *(v51 + 2);
      v54 = *(v51 + 3);
      if (v55 >= v54 >> 1)
      {
        *v50 = sub_1AAD6931C((v54 > 1), v55 + 1, 1, v51);
      }

      sub_1AAD81C50(&v109);
      v56 = *v50;
      *(v56 + 2) = v55 + 1;
      v57 = &v56[152 * v55];
      v58 = v115;
      v59 = v116;
      v60 = v117;
      *(v57 + 22) = v118;
      *(v57 + 9) = v59;
      *(v57 + 10) = v60;
      *(v57 + 8) = v58;
      v61 = v111;
      v62 = v112;
      v63 = v114;
      *(v57 + 6) = v113;
      *(v57 + 7) = v63;
      *(v57 + 4) = v61;
      *(v57 + 5) = v62;
      v64 = v110;
      *(v57 + 2) = v109;
      *(v57 + 3) = v64;
      sub_1AAD81A30(&v105);
      ++v5;
      v7 = (v7 + 152);
      if (v99 == v4)
      {
        goto LABEL_44;
      }
    }

    sub_1AAD81BF4(&v109, v104);
LABEL_29:
    v65 = v2[2];
    v66 = swift_isUniquelyReferenced_nonNull_native();
    v67 = sub_1AADB0C18(&v121);
    v69 = v98[2];
    v70 = (v68 & 1) == 0;
    v71 = __OFADD__(v69, v70);
    v72 = v69 + v70;
    if (v71)
    {
      goto LABEL_49;
    }

    v73 = v68;
    if (v98[3] < v72)
    {
      sub_1AAD8DBA8(v72, v66);
      v67 = sub_1AADB0C18(&v121);
      if ((v73 & 1) != (v74 & 1))
      {
        goto LABEL_51;
      }

LABEL_34:
      if (v73)
      {
        goto LABEL_35;
      }

LABEL_37:
      v98[(v67 >> 6) + 8] |= 1 << v67;
      v76 = (v98[6] + (v67 << 6));
      v77 = v122;
      *v76 = v121;
      v76[1] = v77;
      v78 = v124;
      v76[2] = v123;
      v76[3] = v78;
      *(v98[7] + 8 * v67) = v65;
      v79 = v98[2];
      v71 = __OFADD__(v79, 1);
      v80 = v79 + 1;
      if (!v71)
      {
        v98[2] = v80;
        sub_1AAD819D4(&v105, v104);
        goto LABEL_39;
      }

LABEL_50:
      __break(1u);
LABEL_51:
      result = sub_1AAF905B4();
      __break(1u);
      return result;
    }

    if (v66)
    {
      goto LABEL_34;
    }

    v75 = v67;
    sub_1AAD97B18();
    v67 = v75;
    if ((v73 & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_35:
    *(v98[7] + 8 * v67) = v65;
LABEL_39:
    sub_1AAF7C3A0(0, &qword_1ED9B1E00, &type metadata for AccessibilityDataField, MEMORY[0x1E69E6F90]);
    v81 = swift_allocObject();
    v82 = v115;
    v83 = v117;
    *(v81 + 144) = v116;
    *(v81 + 160) = v83;
    v84 = v111;
    v85 = v113;
    v86 = v114;
    *(v81 + 80) = v112;
    *(v81 + 96) = v85;
    *(v81 + 112) = v86;
    *(v81 + 128) = v82;
    v87 = v109;
    v88 = v110;
    *(v81 + 16) = xmmword_1AAF92AB0;
    *(v81 + 32) = v87;
    *(v81 + 176) = v118;
    *(v81 + 48) = v88;
    *(v81 + 64) = v84;
    v100 = v121;
    v101 = v122;
    v102 = v123;
    v103 = v124;
    sub_1AAD81BF4(&v109, v104);
    sub_1AAD819D4(&v105, v104);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1AAD69F50(0, v2[2] + 1, 1, v2);
    }

    v90 = v2[2];
    v89 = v2[3];
    if (v90 >= v89 >> 1)
    {
      v2 = sub_1AAD69F50((v89 > 1), v90 + 1, 1, v2);
    }

    sub_1AAD81C50(&v109);
    v2[2] = v90 + 1;
    v91 = &v2[9 * v90];
    *(v91 + 4) = v102;
    *(v91 + 5) = v103;
    *(v91 + 2) = v100;
    *(v91 + 3) = v101;
    v91[12] = v81;
    sub_1AAD81A30(&v105);
    ++v5;
    v6 = v93;
  }

  while (v99 != v4);
LABEL_44:

  return v2;
}

uint64_t sub_1AAF7AA6C(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1AADF9084(MEMORY[0x1E69E7CC0]);
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_35:

    return v2;
  }

  v5 = (a1 + 32);
  while (1)
  {
    v77 = v2;
    v9 = v5[9];
    v91 = v5[8];
    v92 = v9;
    v93 = v5[10];
    v94 = *(v5 + 176);
    v10 = v5[5];
    v87 = v5[4];
    v88 = v10;
    v11 = v5[7];
    v89 = v5[6];
    v90 = v11;
    v12 = v5[1];
    v83 = *v5;
    v84 = v12;
    v13 = v5[3];
    v85 = v5[2];
    v86 = v13;
    v14 = v89;
    v15 = BYTE8(v89);
    v16 = v90;
    if ((*(&v92 + 1) & 0x8000000000000000) != 0)
    {
      v19 = *(&v90 + 1);
      v20 = (*(&v89 + 9) << 8) | ((*(&v89 + 13) | (HIBYTE(v89) << 16)) << 40) | BYTE8(v89);
      sub_1AACD7304(v89, v20, v90 & 1);
      v17 = v14;
      v14 = v20;
      v15 = v16;
      v18 = v19;
    }

    else
    {
      v17 = *(&v88 + 1);
      v18 = (*(&v90 + 1) << 8) | ((*(&v90 + 5) | (BYTE7(v90) << 16)) << 40) | v90;
      sub_1AACD7304(*(&v88 + 1), v89, BYTE8(v89) & 1);
    }

    v79 = v15;
    v80 = v18;

    v21 = v93;
    v22 = v94;
    v81 = v17;
    *&v95 = v17;
    *(&v95 + 1) = v14;
    v96[0] = v15 & 1;
    *&v96[8] = v18;
    *&v96[16] = v93;
    v96[24] = v94;
    v76 = v4;
    if (!v3[2])
    {
      break;
    }

    sub_1AAEDC834(&v83, v82);

    v23 = sub_1AADB0DBC(&v95);
    v2 = v77;
    if ((v24 & 1) == 0)
    {
      goto LABEL_19;
    }

    v25 = *(v3[7] + 8 * v23);
    sub_1AAEDC834(&v83, v82);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((v25 & 0x8000000000000000) != 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v2 = sub_1AADB8220(v77);
      if ((v25 & 0x8000000000000000) != 0)
      {
        goto LABEL_38;
      }
    }

    if (v25 >= v2[2])
    {
      goto LABEL_39;
    }

    v26 = &v2[7 * v25];
    v29 = v26[10];
    v27 = (v26 + 10);
    v28 = v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v27 = v29;
    v78 = v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v28 = sub_1AAD6A38C(0, *(v28 + 2) + 1, 1, v28);
      *v27 = v28;
    }

    v32 = *(v28 + 2);
    v31 = *(v28 + 3);
    if (v32 >= v31 >> 1)
    {
      *v27 = sub_1AAD6A38C((v31 > 1), v32 + 1, 1, v28);
    }

    sub_1AAEDCEC4(&v83);
    v33 = *v27;
    *(v33 + 2) = v32 + 1;
    v34 = &v33[184 * v32];
    v35 = v91;
    v36 = v92;
    v37 = v93;
    v34[208] = v94;
    *(v34 + 11) = v36;
    *(v34 + 12) = v37;
    *(v34 + 10) = v35;
    v38 = v87;
    v39 = v88;
    v40 = v90;
    *(v34 + 8) = v89;
    *(v34 + 9) = v40;
    *(v34 + 6) = v38;
    *(v34 + 7) = v39;
    v41 = v83;
    v42 = v84;
    v43 = v86;
    *(v34 + 4) = v85;
    *(v34 + 5) = v43;
    *(v34 + 2) = v41;
    *(v34 + 3) = v42;
    v2 = v78;
    v8 = v79;
    v7 = v17;
LABEL_4:
    sub_1AAD04750(v7, v14, v8 & 1);

    v5 = (v5 + 184);
    v4 = v76 - 1;
    if (v76 == 1)
    {
      goto LABEL_35;
    }
  }

  sub_1AAEDC834(&v83, v82);

  v2 = v77;
LABEL_19:
  v75 = v22;
  v44 = v2[2];
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v82[0] = v3;
  v46 = sub_1AADB0DBC(&v95);
  v48 = v3[2];
  v49 = (v47 & 1) == 0;
  v50 = __OFADD__(v48, v49);
  v51 = v48 + v49;
  if (!v50)
  {
    v52 = v47;
    if (v3[3] >= v51)
    {
      if ((v45 & 1) == 0)
      {
        v56 = v2;
        v57 = v46;
        sub_1AAD9806C();
        v46 = v57;
        v2 = v56;
        v54 = v17;
        v3 = v82[0];
        if (v52)
        {
          goto LABEL_25;
        }

        goto LABEL_27;
      }
    }

    else
    {
      sub_1AAD8E73C(v51, v45);
      v46 = sub_1AADB0DBC(&v95);
      if ((v52 & 1) != (v53 & 1))
      {
        goto LABEL_40;
      }
    }

    v54 = v17;
    v3 = v82[0];
    if (v52)
    {
LABEL_25:
      *(v3[7] + 8 * v46) = v44;
      v55 = v79;
LABEL_29:
      sub_1AAF7C3A0(0, &qword_1ED9B0C18, &type metadata for AccessibilityChartDataPoint, MEMORY[0x1E69E6F90]);
      v62 = swift_allocObject();
      v63 = v91;
      v64 = v93;
      *(v62 + 176) = v92;
      *(v62 + 192) = v64;
      v65 = v87;
      v66 = v89;
      v67 = v90;
      *(v62 + 112) = v88;
      *(v62 + 128) = v66;
      *(v62 + 144) = v67;
      *(v62 + 160) = v63;
      v68 = v83;
      v69 = v84;
      *(v62 + 16) = xmmword_1AAF92AB0;
      *(v62 + 32) = v68;
      v70 = v85;
      v71 = v86;
      *(v62 + 48) = v69;
      *(v62 + 64) = v70;
      *(v62 + 208) = v94;
      *(v62 + 80) = v71;
      *(v62 + 96) = v65;
      sub_1AAEDC834(&v83, v82);

      sub_1AACD7304(v54, v14, v55 & 1);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1AAD6A604(0, v2[2] + 1, 1, v2);
      }

      v73 = v2[2];
      v72 = v2[3];
      if (v73 >= v72 >> 1)
      {
        v2 = sub_1AAD6A604((v72 > 1), v73 + 1, 1, v2);
      }

      sub_1AAEDCEC4(&v83);
      v2[2] = v73 + 1;
      v6 = &v2[7 * v73];
      v7 = v81;
      v6[4] = v81;
      v6[5] = v14;
      v8 = v79;
      *(v6 + 48) = v79 & 1;
      v6[7] = v80;
      v6[8] = v21;
      *(v6 + 72) = v75;
      v6[10] = v62;
      goto LABEL_4;
    }

LABEL_27:
    v3[(v46 >> 6) + 8] |= 1 << v46;
    v58 = (v3[6] + 48 * v46);
    v59 = *v96;
    *v58 = v95;
    v58[1] = v59;
    *(v58 + 25) = *&v96[9];
    *(v3[7] + 8 * v46) = v44;
    v60 = v3[2];
    v50 = __OFADD__(v60, 1);
    v61 = v60 + 1;
    if (v50)
    {
      goto LABEL_37;
    }

    v3[2] = v61;

    v55 = v79;
    sub_1AACD7304(v54, v14, v79 & 1);

    goto LABEL_29;
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_1AAF905B4();
  __break(1u);
  return result;
}

void sub_1AAF7AFE4(double a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __Sum[1] = *MEMORY[0x1E69E9840];
  v58 = *(a3 + 16);
  v7 = *(*(v58 + 16) + 8);
  v56 = a3;
  v57 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v9);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v47 - v18;
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  MEMORY[0x1EEE9AC00](v22);
  if (a2 == MEMORY[0x1E69E63B0])
  {
    v31 = *(*&a1 + 16);
    v32 = 0.0;
    if (v31 >= 2)
    {
      __Sum[0] = NAN;
      __SumOfSquares[0] = NAN;
      vDSP_sve_svesqD((*&a1 + 32), 1, __Sum, __SumOfSquares, v31);
      v32 = (__SumOfSquares[0] - __Sum[0] * (__Sum[0] / v31)) / (v31 - 1);
    }

    *a4 = v32;
    *(a4 + 8) = v31 < 2;
  }

  else if (a2 == MEMORY[0x1E69E6448])
  {
    v33 = *(*&a1 + 16);
    v34 = 0.0;
    if (v33 >= 2)
    {
      LODWORD(__Sum[0]) = 2143289344;
      LODWORD(__SumOfSquares[0]) = 2143289344;
      vDSP_sve_svesq((*&a1 + 32), 1, __Sum, __SumOfSquares, v33);
      v34 = (*__SumOfSquares - (*__Sum * (*__Sum / v33))) / (v33 - 1);
    }

    *a4 = v34;
    *(a4 + 4) = v33 < 2;
  }

  else
  {
    v50 = v23;
    v51 = &v47 - v25;
    v52 = v28;
    v53 = v26;
    v54 = v27;
    v55 = v24;
    v29 = sub_1AAF8F8D4();
    if (v29 >= 2)
    {
      __Sum[0] = a1;
      v49 = v29;
      swift_getAssociatedConformanceWitness();
      v48 = a4;
      sub_1AAF90554();
      sub_1AAF904C4();
      sub_1AAF90554();
      sub_1AAF904C4();
      v35 = v50;
      v36 = *(v50 + 48);
      v37 = *(v55 + 32);
      v37(v12, v54, a2);
      v38 = (v37)(&v12[v36], v19, a2);
      v47 = &v47;
      MEMORY[0x1EEE9AC00](v38);
      v39 = v56;
      *(&v47 - 2) = a2;
      *(&v47 - 1) = v39;
      sub_1AAF8F914();
      swift_getWitnessTable();
      sub_1AAF8F7B4();
      v40 = *(v35 + 48);
      v41 = v51;
      v37(v51, v15, a2);
      v42 = v52;
      v37(v52, &v15[v40], a2);
      sub_1AAF8F464();
      v43 = v41;
      sub_1AAF8F434();
      v44 = *(v55 + 8);
      v44(v19, a2);
      v45 = v53;
      sub_1AAF8FAD4();
      sub_1AAF902F4();
      v44(v45, a2);
      sub_1AAF8F464();
      v46 = v48;
      sub_1AAF8F434();
      v44(v45, a2);
      v44(v19, a2);
      v44(v54, a2);
      v44(v42, a2);
      v44(v43, a2);
      (*(v55 + 56))(v46, 0, 1, a2);
    }

    else
    {
      v30 = *(v55 + 56);

      v30(a4, 1, 1, a2);
    }
  }
}

uint64_t sub_1AAF7B6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAF90304();
  sub_1AAF8FAD4();
  swift_getTupleTypeMetadata2();
  sub_1AAF90304();
  return (*(v4 + 8))(v6, a3);
}

void sub_1AAF7B82C(double a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __Sum[2] = *MEMORY[0x1E69E9840];
  v8 = sub_1AAF8FE74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &__Sum[-1] - v10;
  if (a2 == MEMORY[0x1E69E63B0])
  {
    v17 = *(*&a1 + 16);
    v18 = 0.0;
    if (v17 >= 2)
    {
      __SumOfSquares = NAN;
      __Sum[0] = NAN;
      vDSP_sve_svesqD((*&a1 + 32), 1, __Sum, &__SumOfSquares, v17);
      v18 = sqrt((__SumOfSquares - __Sum[0] * (__Sum[0] / v17)) / (v17 - 1));
    }

    *a4 = v18;
    *(a4 + 8) = v17 < 2;
  }

  else if (a2 == MEMORY[0x1E69E6448])
  {
    v19 = *(*&a1 + 16);
    v20 = 0.0;
    if (v19 >= 2)
    {
      LODWORD(__Sum[0]) = 2143289344;
      LODWORD(__SumOfSquares) = 2143289344;
      vDSP_sve_svesq((*&a1 + 32), 1, __Sum, &__SumOfSquares, v19);
      v20 = sqrtf((*&__SumOfSquares - (*__Sum * (*__Sum / v19))) / (v19 - 1));
    }

    *a4 = v20;
    *(a4 + 4) = v19 < 2;
  }

  else
  {
    sub_1AAF7AFE4(a1, a2, a3, v11);
    MEMORY[0x1EEE9AC00](v12);
    v13 = *(a3 + 16);
    *(&__SumOfSquares - 2) = a2;
    *(&__SumOfSquares - 1) = v13;
    MEMORY[0x1EEE9AC00](v14);
    *(&__SumOfSquares - 4) = a2;
    *(&__SumOfSquares - 3) = a3;
    *(&__SumOfSquares - 2) = sub_1AAF7BF00;
    *(&__SumOfSquares - 1) = v15;
    sub_1AACD90D0(sub_1AAF7BF08, (&__SumOfSquares - 6), MEMORY[0x1E69E73E0], a2, v16, a4);
    (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_1AAF7BAE0(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1AADF8DC0(MEMORY[0x1E69E7CC0]);
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_34;
  }

  v5 = 0;
  v6 = a1 + 32;
  v39 = a1 + 32;
  v40 = *(a1 + 16);
  do
  {
    v7 = (v6 + 608 * v5);
    v8 = v5;
    while (1)
    {
      if (v8 >= v4)
      {
        __break(1u);
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

      memcpy(__dst, v7, 0x260uLL);
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_36;
      }

      memcpy(v42, v7, sizeof(v42));
      sub_1AAF14AE0(__dst, v41);
      swift_getAtKeyPath();
      v9 = v41[0];
      if (!v3[2])
      {
        break;
      }

      v10 = sub_1AADB0C78(v41[0]);
      if ((v11 & 1) == 0)
      {
        break;
      }

      v12 = *(v3[7] + 8 * v10);
      sub_1AAF14AE0(__dst, v42);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v12 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = sub_1AADB81F8(v2);
        if ((v12 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }
      }

      if (v12 >= v2[2])
      {
        goto LABEL_38;
      }

      v13 = &v2[2 * v12];
      v16 = v13[5];
      v14 = (v13 + 5);
      v15 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v14 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v15 = sub_1AAD6A24C(0, *(v15 + 2) + 1, 1, v15);
        *v14 = v15;
      }

      v19 = *(v15 + 2);
      v18 = *(v15 + 3);
      if (v19 >= v18 >> 1)
      {
        *v14 = sub_1AAD6A24C((v18 > 1), v19 + 1, 1, v15);
      }

      sub_1AAF14B3C(__dst);
      v20 = *v14;
      *(v20 + 2) = v19 + 1;
      memcpy(&v20[608 * v19 + 32], __dst, 0x260uLL);

      ++v8;
      v7 += 608;
      v4 = v40;
      if (v5 == v40)
      {
        goto LABEL_34;
      }
    }

    v21 = v2[2];
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v42[0] = v3;
    v23 = sub_1AADB0C78(v9);
    v25 = v3[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      goto LABEL_39;
    }

    v29 = v24;
    if (v3[3] < v28)
    {
      sub_1AAD8DEBC(v28, v22);
      v23 = sub_1AADB0C78(v9);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_41;
      }

LABEL_24:
      v3 = v42[0];
      if (v29)
      {
        goto LABEL_25;
      }

LABEL_27:
      v3[(v23 >> 6) + 8] |= 1 << v23;
      *(v3[6] + 8 * v23) = v9;
      *(v3[7] + 8 * v23) = v21;
      v32 = v3[2];
      v27 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (!v27)
      {
        v3[2] = v33;

        goto LABEL_29;
      }

LABEL_40:
      __break(1u);
LABEL_41:

      sub_1AAF7C3A0(0, &qword_1ED9B0CA0, &type metadata for AccessibilityDataField, MEMORY[0x1E69E62F8]);
      result = sub_1AAF905B4();
      __break(1u);
      return result;
    }

    if (v22)
    {
      goto LABEL_24;
    }

    v31 = v23;
    sub_1AAD97CCC();
    v23 = v31;
    v3 = v42[0];
    if ((v29 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_25:
    *(v3[7] + 8 * v23) = v21;
LABEL_29:
    sub_1AAF7C3A0(0, &qword_1ED9B1DE8, &type metadata for SgAccessibilityIndividual, MEMORY[0x1E69E6F90]);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1AAF92AB0;
    memcpy((v34 + 32), __dst, 0x260uLL);
    sub_1AAF14AE0(__dst, v42);

    v6 = v39;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1AAD6A228(0, v2[2] + 1, 1, v2);
    }

    v36 = v2[2];
    v35 = v2[3];
    if (v36 >= v35 >> 1)
    {
      v2 = sub_1AAD6A228((v35 > 1), v36 + 1, 1, v2);
    }

    sub_1AAF14B3C(__dst);
    v2[2] = v36 + 1;
    v37 = &v2[2 * v36];
    v37[4] = v9;
    v37[5] = v34;
  }

  while (v5 != v4);
LABEL_34:

  return v2;
}

uint64_t sub_1AAF7BF80(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1AADF8DC0(MEMORY[0x1E69E7CC0]);
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_34;
  }

  v5 = 0;
  v6 = a1 + 32;
  v39 = a1 + 32;
  v40 = *(a1 + 16);
  do
  {
    v7 = (v6 + 600 * v5);
    v8 = v5;
    while (1)
    {
      if (v8 >= v4)
      {
        __break(1u);
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

      memcpy(__dst, v7, 0x251uLL);
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_36;
      }

      memcpy(v42, v7, 0x251uLL);
      sub_1AAECFFF8(__dst, v41);
      swift_getAtKeyPath();
      v9 = v41[0];
      if (!v3[2])
      {
        break;
      }

      v10 = sub_1AADB0C78(v41[0]);
      if ((v11 & 1) == 0)
      {
        break;
      }

      v12 = *(v3[7] + 8 * v10);
      sub_1AAECFFF8(__dst, v42);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v12 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = sub_1AADB8270(v2);
        if ((v12 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }
      }

      if (v12 >= v2[2])
      {
        goto LABEL_38;
      }

      v13 = &v2[2 * v12];
      v16 = v13[5];
      v14 = (v13 + 5);
      v15 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v14 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v15 = sub_1AAD6AD20(0, *(v15 + 2) + 1, 1, v15);
        *v14 = v15;
      }

      v19 = *(v15 + 2);
      v18 = *(v15 + 3);
      if (v19 >= v18 >> 1)
      {
        *v14 = sub_1AAD6AD20((v18 > 1), v19 + 1, 1, v15);
      }

      sub_1AAF209D4(__dst);
      v20 = *v14;
      *(v20 + 2) = v19 + 1;
      memcpy(&v20[600 * v19 + 32], __dst, 0x251uLL);

      ++v8;
      v7 += 600;
      v4 = v40;
      if (v5 == v40)
      {
        goto LABEL_34;
      }
    }

    v21 = v2[2];
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v42[0] = v3;
    v23 = sub_1AADB0C78(v9);
    v25 = v3[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      goto LABEL_39;
    }

    v29 = v24;
    if (v3[3] < v28)
    {
      sub_1AAD8DEBC(v28, v22);
      v23 = sub_1AADB0C78(v9);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_41;
      }

LABEL_24:
      v3 = v42[0];
      if (v29)
      {
        goto LABEL_25;
      }

LABEL_27:
      v3[(v23 >> 6) + 8] |= 1 << v23;
      *(v3[6] + 8 * v23) = v9;
      *(v3[7] + 8 * v23) = v21;
      v32 = v3[2];
      v27 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (!v27)
      {
        v3[2] = v33;

        goto LABEL_29;
      }

LABEL_40:
      __break(1u);
LABEL_41:

      sub_1AAF7C3A0(0, &qword_1ED9B0CA0, &type metadata for AccessibilityDataField, MEMORY[0x1E69E62F8]);
      result = sub_1AAF905B4();
      __break(1u);
      return result;
    }

    if (v22)
    {
      goto LABEL_24;
    }

    v31 = v23;
    sub_1AAD97CCC();
    v23 = v31;
    v3 = v42[0];
    if ((v29 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_25:
    *(v3[7] + 8 * v23) = v21;
LABEL_29:
    sub_1AAF7C3A0(0, &qword_1EB423B58, &type metadata for ChartAccessibilityContent.LeafItem, MEMORY[0x1E69E6F90]);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1AAF92AB0;
    memcpy((v34 + 32), __dst, 0x251uLL);
    sub_1AAECFFF8(__dst, v42);

    v6 = v39;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1AAD6ABA8(0, v2[2] + 1, 1, v2);
    }

    v36 = v2[2];
    v35 = v2[3];
    if (v36 >= v35 >> 1)
    {
      v2 = sub_1AAD6ABA8((v35 > 1), v36 + 1, 1, v2);
    }

    sub_1AAF209D4(__dst);
    v2[2] = v36 + 1;
    v37 = &v2[2 * v36];
    v37[4] = v9;
    v37[5] = v34;
  }

  while (v5 != v4);
LABEL_34:

  return v2;
}

void sub_1AAF7C3A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AAF7C458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v26 = *(a1 + 24);
  v2 = sub_1AAF8FE74();
  v3 = sub_1AAF8FE74();
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  v6 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v25 = AssociatedTypeWitness;
  sub_1AAF8FE94();
  v23 = *(v6 + 48);
  if (v23(v5, 1, v2) == 1)
  {
LABEL_5:
    (*(v19 + 8))(v5, v20);
    return (*(*(v26 - 8) + 56))(v21, 1, 1);
  }

  else
  {
    v14 = *(v6 + 32);
    v22 = v26 - 8;
    while (1)
    {
      v14(v12, v5, v2);
      v14(v9, v12, v2);
      v15 = *(v26 - 8);
      if ((*(v15 + 48))(v9, 1) != 1)
      {
        break;
      }

      (*(v6 + 8))(v9, v2);
      sub_1AAF8FE94();
      if (v23(v5, 1, v2) == 1)
      {
        goto LABEL_5;
      }
    }

    v17 = v21;
    v18 = v26;
    (*(v15 + 32))(v21, v9, v26);
    return (*(v15 + 56))(v17, 0, 1, v18);
  }
}

uint64_t sub_1AAF7C7C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v14 - v11;
  (*(v5 + 16))(v7, v2, v4, v10);
  sub_1AAF8F744();
  return (*(v9 + 32))(a2, v12, AssociatedTypeWitness);
}

uint64_t sub_1AAF7C950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AAF7C7C0(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_1AAF7C9B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AAF7E48C(v2, a1, a2);
  (*(*(a1 - 8) + 8))(v2, a1);
  return v4;
}

uint64_t sub_1AAF7CA20@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = &v7 - v4;
  sub_1AAF8FBA4();
  return (*(v3 + 32))(a1, v5, AssociatedTypeWitness);
}

uint64_t sub_1AAF7CB1C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = sub_1AAF8FE74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11[-v6];
  v8 = sub_1AAF8FC84();
  (*(v5 + 16))(v7);
  v8(v11, 0);
  v9 = *(v3 - 8);
  result = (*(v9 + 48))(v7, 1, v3);
  if (result != 1)
  {
    return (*(v9 + 32))(a2, v7, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAF7CC98@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a1;
  v55 = a3;
  v5 = a2[4];
  v6 = a2[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v53 = *(AssociatedTypeWitness - 8);
  v54 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v52 = &v41 - v8;
  v9 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = sub_1AAF902A4();
  v50 = *(v10 - 8);
  v51 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v41 - v11;
  v12 = sub_1AAF8FE74();
  v43 = *(v12 - 8);
  v44 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v49 = &v41 - v13;
  v14 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v45 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v42 = &v41 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v60 = &v41 - v20;
  v21 = a2[3];
  v22 = type metadata accessor for CompactedCollection.Index();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v41 - v24;
  v46 = a2;
  v26 = v5;
  v59 = v3;
  sub_1AAF7CA20(&v41 - v24);
  v58 = v6;
  v27 = sub_1AAF7E1B8();
  result = (*(v23 + 8))(v25, v22);
  if (v27)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1AAF8FB44();
  result = sub_1AAF8F5F4();
  if ((result & 1) == 0)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v47 = v14;
  v29 = v48;
  (*(v14 + 16))(v48, v60, v9);
  v30 = v51;
  swift_getWitnessTable();
  v31 = v52;
  v32 = v58;
  v33 = sub_1AAF8FC44();
  MEMORY[0x1EEE9AC00](v33);
  *(&v41 - 4) = v32;
  *(&v41 - 3) = v21;
  *(&v41 - 2) = v26;
  v57 = v26;
  v34 = v54;
  swift_getAssociatedConformanceWitness();
  v35 = v49;
  sub_1AAF8FBC4();
  v36 = v47;
  (*(v53 + 8))(v31, v34);
  (*(v50 + 8))(v29, v30);
  if ((*(v36 + 48))(v35, 1, v9) == 1)
  {
    (*(v43 + 8))(v35, v44);
    sub_1AAF7CA20(v55);
    return (*(v36 + 8))(v60, v9);
  }

  else
  {
    (*(v36 + 8))(v60, v9);
    v37 = *(v36 + 32);
    v38 = v42;
    v37(v42, v35, v9);
    v39 = v45;
    v37(v45, v38, v9);
    v40 = swift_getAssociatedTypeWitness();
    return (*(*(v40 - 8) + 32))(v55, v39, v40);
  }
}

uint64_t sub_1AAF7D2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = type metadata accessor for CompactedCollection.Index();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void (*sub_1AAF7D34C(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1AAF7D3D4(v6, a2, a3);
  return sub_1AAD9E48C;
}

void (*sub_1AAF7D3D4(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v5 = *(a3 + 24);
  *a1 = v5;
  v6 = *(v5 - 8);
  a1[1] = v6;
  v7 = *(v6 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  a1[2] = v8;
  sub_1AAF7CB1C(a3, v8);
  return sub_1AAD9E5BC;
}

uint64_t sub_1AAF7D4A8@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for CompactedCollection.Index();
  v2 = sub_1AAF8FE74();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1AAF7D53C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for CompactedCollection.Index();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  (*(v5 + 32))(&v10 - v7, a1, v4, v6);
  sub_1AAF7CC98(v8, a2, a1);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1AAF7D638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = *(a1 - 8);
  (*(v10 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v5 = *(sub_1AAF90294() + 36);
  v6 = *(a1 + 44);
  v7 = type metadata accessor for CompactedCollection.Index();
  (*(*(v7 - 8) + 16))(a2 + v5, v2 + v6, v7);
  v8 = *(v10 + 8);

  return v8(v2, a1);
}

uint64_t sub_1AAF7D774(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1AAF7D7C8(uint64_t a1)
{
  swift_getWitnessTable();
  v3 = sub_1AAD9EC60();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t sub_1AAF7D854@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v6 = a2;
  v73 = a1;
  v71 = a4;
  v66 = a3;
  v7 = *(a3 + 8);
  v8 = *(a2 + 2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v67 = *(AssociatedTypeWitness - 8);
  v68 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v65 = &v53 - v10;
  v11 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v61 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v59 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v56 = &v53 - v14;
  v64 = *(v6 + 3);
  v72 = type metadata accessor for CompactedCollection.Index();
  v15 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v17 = &v53 - v16;
  swift_getAssociatedConformanceWitness();
  v75 = sub_1AAF8FCA4();
  v63 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v53 - v18;
  v54 = sub_1AAF8FE74();
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v60 = &v53 - v19;
  v20 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v62 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v58 = &v53 - v24;
  v25 = *(v6 + 11);
  v76 = v5;
  v26 = v73;
  v69 = v8;
  v70 = v7;
  if (sub_1AAF7E1B8())
  {
    __break(1u);
    goto LABEL_6;
  }

  (*(v15 + 16))(v17, &v76[v25], v72);
  if ((sub_1AAF8F584() & 1) == 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v27 = v20;
  v28 = *(v20 + 32);
  v29 = v56;
  v28(v56, v17, v11);
  v30 = TupleTypeMetadata2;
  v31 = *(TupleTypeMetadata2 + 48);
  v32 = v27;
  v55 = v27;
  (*(v27 + 16))(&v29[v31], v26, v11);
  v33 = v61;
  v34 = v59;
  (*(v61 + 16))(v59, v29, v30);
  v35 = *(v30 + 48);
  v28(v74, v34, v11);
  v36 = *(v32 + 8);
  v36(&v34[v35], v11);
  (*(v33 + 32))(v34, v29, v30);
  v37 = *(v30 + 48);
  v38 = v74;
  v39 = &v74[*(v75 + 36)];
  v73 = v28;
  v28(v39, &v34[v37], v11);
  v36(v34, v11);
  v40 = v65;
  v41 = v38;
  v42 = v69;
  v43 = sub_1AAF8FC74();
  v76 = &v53;
  MEMORY[0x1EEE9AC00](v43);
  v44 = v64;
  *(&v53 - 4) = v42;
  *(&v53 - 3) = v44;
  v51 = v66;
  v45 = v68;
  swift_getAssociatedConformanceWitness();
  v6 = v60;
  sub_1AAF8F534();
  (*(v67 + 8))(v40, v45);
  (*(v63 + 8))(v41, v75);
  if ((*(v55 + 48))(v6, 1, v11) != 1)
  {
    v46 = v58;
    v47 = v73;
    v73(v58, v6, v11);
    v48 = v62;
    v47(v62, v46, v11);
    v49 = swift_getAssociatedTypeWitness();
    return (*(*(v49 - 8) + 32))(v71, v48, v49);
  }

LABEL_7:
  (*(v53 + 8))(v6, v54);
  v52 = 0;
  v51 = 125;
  result = sub_1AAF902C4();
  __break(1u);
  return result;
}

uint64_t sub_1AAF7E004(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = type metadata accessor for CompactedCollection.Index();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v12 - v9);
  (*(v7 + 32))(&v12 - v9, a1, v6, v8);
  sub_1AAF7D854(v10, a2, v5, a1);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1AAF7E120()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1AAF8F564() & 1;
}

uint64_t sub_1AAF7E1B8()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1AAF8F5F4() & 1;
}

uint64_t sub_1AAF7E250()
{
  swift_getAssociatedTypeWitness();

  return sub_1AAF8F484();
}

uint64_t sub_1AAF7E2BC()
{
  sub_1AAF90694();
  swift_getAssociatedTypeWitness();
  sub_1AAF8F484();
  return sub_1AAF906F4();
}

uint64_t sub_1AAF7E370()
{
  sub_1AAF90694();
  sub_1AAF7E250();
  return sub_1AAF906F4();
}

uint64_t sub_1AAF7E588()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AAF7E610(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v5)
  {
LABEL_23:
    v11 = *(v4 + 48);

    return v11(a1);
  }

  v7 = 8 * v6;
  if (v6 <= 3)
  {
    v9 = ((a2 - v5 + ~(-1 << v7)) >> v7) + 1;
    if (HIWORD(v9))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v9 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v9 < 2)
    {
LABEL_22:
      if (v5)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v10 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v10 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v10) + 1;
}

void sub_1AAF7E7AC(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (a3 <= v7)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 - v7 + ~(-1 << (8 * v8))) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (v7 < a2)
  {
    v10 = ~v7 + a2;
    if (v8 < 4)
    {
      v11 = (v10 >> (8 * v8)) + 1;
      if (v8)
      {
        v14 = v10 & ~(-1 << (8 * v8));
        bzero(a1, v8);
        if (v8 != 3)
        {
          if (v8 == 2)
          {
            *a1 = v14;
            if (v9 > 1)
            {
LABEL_39:
              if (v9 == 2)
              {
                *&a1[v8] = v11;
              }

              else
              {
                *&a1[v8] = v11;
              }

              return;
            }
          }

          else
          {
            *a1 = v10;
            if (v9 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v14;
        a1[2] = BYTE2(v14);
      }

      if (v9 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v9)
    {
      a1[v8] = v11;
    }

    return;
  }

  if (v9 > 1)
  {
    if (v9 != 2)
    {
      *&a1[v8] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v8] = 0;
  }

  else if (v9)
  {
    a1[v8] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v15 = *(v6 + 56);

  v15(a1, a2);
}

uint64_t sub_1AAF7E9D4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CompactedCollection.Index();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AAF7EA64(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(AssociatedTypeWitness - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_1AAF7ECE0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v29 = v8;
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = *(v10 + 64);
  v16 = (v14 & ~v13) + v15;
  if (a3 <= v12)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v12 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v12 < a2)
  {
    v18 = ~v12 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_57:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
LABEL_30:
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!v17)
  {
    goto LABEL_30;
  }

  a1[v16] = 0;
  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v27 = *(v29 + 56);

    v27(a1, a2, v9, v7);
  }

  else
  {
    v23 = (&a1[v14] & ~v13);
    if (v11 >= a2)
    {
      v28 = *(v10 + 56);

      v28(v23, a2);
    }

    else
    {
      if (v15 <= 3)
      {
        v24 = ~(-1 << (8 * v15));
      }

      else
      {
        v24 = -1;
      }

      if (v15)
      {
        v25 = v24 & (~v11 + a2);
        if (v15 <= 3)
        {
          v26 = v15;
        }

        else
        {
          v26 = 4;
        }

        bzero(v23, v15);
        if (v26 > 2)
        {
          if (v26 == 3)
          {
            *v23 = v25;
            v23[2] = BYTE2(v25);
          }

          else
          {
            *v23 = v25;
          }
        }

        else if (v26 == 1)
        {
          *v23 = v25;
        }

        else
        {
          *v23 = v25;
        }
      }
    }
  }
}

uint64_t sub_1AAF7F0D4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AADB816C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1AAF90464();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[16 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 3);
          *(v13 + 1) = *v13;
          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 16;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 16;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_1AAF7FD68();
      v7 = sub_1AAF8F8A4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1AAF7F220(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1AAF7F220(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v87 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v87;
    if (!*v87)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1AADAA0A4(v8);
      v8 = result;
    }

    v79 = (v8 + 16);
    v80 = *(v8 + 16);
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = (v8 + 16 * v80);
        v82 = *v81;
        v83 = &v79[2 * v80];
        v84 = v83[1];
        sub_1AAF300D8((*a3 + 16 * *v81), (*a3 + 16 * *v83), (*a3 + 16 * v84), v5);
        if (v4)
        {
        }

        if (v84 < v82)
        {
          goto LABEL_114;
        }

        if (v80 - 2 >= *v79)
        {
          goto LABEL_115;
        }

        *v81 = v82;
        v81[1] = v84;
        v85 = *v79 - v80;
        if (*v79 < v80)
        {
          goto LABEL_116;
        }

        v80 = *v79 - 1;
        result = memmove(v83, v83 + 2, 16 * v85);
        *v79 = v80;
        if (v80 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v86 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v14 = *v12;
      v13 = v12 + 4;
      v15 = v14;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v13;
        v13 += 2;
        v19 = v18 >= v17;
        ++v16;
        v17 = v18;
        if ((((v10 < v15) ^ v19) & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v15)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v15)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 16 * v7 - 16;
        v21 = v7;
        v22 = v9;
        do
        {
          if (v22 != --v21)
          {
            v24 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = *(v24 + v11);
            *(v24 + v11) = *(v24 + v20);
            *(v24 + v20) = v23;
          }

          ++v22;
          v20 -= 16;
          v11 += 16;
        }

        while (v22 < v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1AAD68568(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v33 = *(v8 + 24);
    v34 = v5 + 1;
    if (v5 >= v33 >> 1)
    {
      result = sub_1AAD68568((v33 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v34;
    v35 = v8 + 32;
    v36 = (v8 + 32 + 16 * v5);
    *v36 = v9;
    v36[1] = v7;
    v88 = *v87;
    if (!*v87)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v37 = *(v8 + 32);
          v38 = *(v8 + 40);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = (v8 + 16 * v34);
          v55 = *v53;
          v54 = v53[1];
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_106;
          }

          v59 = (v35 + 16 * v5);
          v61 = *v59;
          v60 = v59[1];
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v5 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v63 = (v8 + 16 * v34);
        v65 = *v63;
        v64 = v63[1];
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_72:
        if (v58)
        {
          goto LABEL_108;
        }

        v66 = (v35 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_110;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v34)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v74 = (v35 + 16 * (v5 - 1));
        v75 = *v74;
        v76 = (v35 + 16 * v5);
        v77 = v76[1];
        sub_1AAF300D8((*a3 + 16 * *v74), (*a3 + 16 * *v76), (*a3 + 16 * v77), v88);
        if (v4)
        {
        }

        if (v77 < v75)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v74 = v75;
        v74[1] = v77;
        v78 = *(v8 + 16);
        if (v5 >= v78)
        {
          goto LABEL_101;
        }

        v34 = v78 - 1;
        result = memmove((v35 + 16 * v5), v76 + 2, 16 * (v78 - 1 - v5));
        *(v8 + 16) = v78 - 1;
        if (v78 <= 2)
        {
          goto LABEL_3;
        }
      }

      v41 = v35 + 16 * v34;
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = (v8 + 16 * v34);
      v50 = *v48;
      v49 = v48[1];
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_107;
      }

      if (v52 >= v44)
      {
        v70 = (v35 + 16 * v5);
        v72 = *v70;
        v71 = v70[1];
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_113;
        }

        if (v39 < v73)
        {
          v5 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v86;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v25 = *a3;
  v26 = *a3 + 16 * v7 - 16;
  v27 = v9 - v7;
LABEL_30:
  v28 = *(v25 + 16 * v7);
  v29 = v27;
  v30 = v26;
  while (1)
  {
    if (v28 >= *v30)
    {
LABEL_29:
      ++v7;
      v26 += 16;
      --v27;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v25)
    {
      break;
    }

    v31 = *(v30 + 24);
    *(v30 + 16) = *v30;
    *v30 = v28;
    *(v30 + 8) = v31;
    v30 -= 16;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

unint64_t sub_1AAF7F798(unint64_t result)
{
  if (result)
  {
    v2 = *v1;
    v3 = *v1 - 0x61C8864680B583EBLL;
    *v1 = v3;
    v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30))) >> 27));
    v5 = v4 ^ (v4 >> 31);
    v6 = v5 * result;
    v7 = (v5 * result) >> 64;
    if (v6 < result)
    {
      v8 = -result % result;
      if (v8 > v6)
      {
        v9 = v2 + 0x3C6EF372FE94F82ALL;
        do
        {
          v3 -= 0x61C8864680B583EBLL;
          v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) >> 27));
          v11 = v10 ^ (v10 >> 31);
          v9 -= 0x61C8864680B583EBLL;
        }

        while (v8 > v11 * result);
        v7 = (v11 * result) >> 64;
        *v1 = v3;
      }
    }

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1AAF7F860(char *result, char a2, uint64_t a3, char a4, double (*a5)(double), double a6, double a7)
{
  v54 = result;
  v7 = a7 - a6;
  if (COERCE__INT64(fabs(a7 - a6)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_80;
  }

  v11 = 0;
  v12 = v7 / 12300.0;
  v56 = MEMORY[0x1E69E7CC0];
  v13 = 0x78ABBF7B5AEAE776;
  do
  {
    v15 = v13 - 0x61C8864680B583EBLL;
    v16 = 0xBF58476D1CE4E5B9 * ((v13 - 0x61C8864680B583EBLL) ^ ((v13 - 0x61C8864680B583EBLL) >> 30));
    v17 = (0x94D049BB133111EBLL * (v16 ^ (v16 >> 27))) ^ ((0x94D049BB133111EBLL * (v16 ^ (v16 >> 27))) >> 31);
    if (0x20000000000001 * v17 >= 0x1FFFFFFFFFF801)
    {
      v21 = (v17 * 0x20000000000001uLL) >> 64;
    }

    else
    {
      v18 = v13 + 0x3C6EF372FE94F82ALL;
      do
      {
        v15 -= 0x61C8864680B583EBLL;
        v19 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v18 ^ (v18 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v18 ^ (v18 >> 30))) >> 27));
        v20 = v19 ^ (v19 >> 31);
        v18 -= 0x61C8864680B583EBLL;
      }

      while (0x20000000000001 * v20 < 0x1FFFFFFFFFF801);
      v21 = (v20 * 0x20000000000001uLL) >> 64;
    }

    v13 = v15;
    v22 = v7 * vcvtd_n_f64_u64(v21, 0x35uLL) + a6;
    if (v21 == 0x20000000000000)
    {
      v23 = a7;
    }

    else
    {
      v23 = v22;
    }

    v24 = a5(v23);
    v25 = a5(v12 + v23);
    v26 = (v25 - a5(v23 - v12)) / (v12 + v12);
    v27 = COERCE__INT64(fabs(v26)) > 0x7FEFFFFFFFFFFFFFLL;
    if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && !v27)
    {
      v28 = v56;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1AAD690CC(0, *(v56 + 2) + 1, 1, v56);
      }

      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      v56 = v28;
      if (v30 >= v29 >> 1)
      {
        v56 = sub_1AAD690CC((v29 > 1), v30 + 1, 1, v28);
      }

      *(v56 + 2) = v30 + 1;
      v14 = &v56[16 * v30];
      *(v14 + 4) = v24;
      *(v14 + 5) = v26;
    }

    ++v11;
  }

  while (v11 != 200);
  v57 = v56;
  if (*(v56 + 2) <= 1uLL)
  {
  }

  sub_1AAF7F0D4(&v57);
  result = v57;
  v31 = *(v57 + 2);
  if (!v31)
  {
    goto LABEL_81;
  }

  v32 = a7;
  v33 = a6;
  v34 = v31 - 1;
  if (v31 == 1)
  {
LABEL_36:

    if (v54)
    {
      if (v32 <= 0.0 || v33 >= 0.0)
      {
        v40 = a2;
        if (v32 <= 0.0 || v33 < 0.0 || v33 >= v32 * 0.5)
        {
          if (v32 <= 0.0 && v33 < 0.0 && v33 * 0.5 < v32)
          {
            v32 = -v33;
          }
        }

        else
        {
          v33 = -v32;
        }

LABEL_44:
        if ((v40 & 1) == 0)
        {
LABEL_60:
          v46 = v33 > v32;
          if (v33 >= v32)
          {
            return result;
          }

          goto LABEL_61;
        }

        v41 = (v32 - v33) / v7;
        if (v41 > 0.1 && v41 < 1.2)
        {
          if (a4)
          {
            if (v33 == 0.0)
            {
              goto LABEL_64;
            }

LABEL_58:
            if (v32 != 0.0)
            {
              v49 = (v32 + v33) * 0.5;
              v50 = v49 - v7 * 0.5;
              v51 = v49 + v7 * 0.5;
              v46 = v50 > v51;
              if (v50 >= v51)
              {
                return result;
              }

              goto LABEL_61;
            }

            v33 = -v7;
            goto LABEL_60;
          }
        }

        else if (a4)
        {
          v43 = (v32 - v33) * 0.05;
          v44 = v33 - v43;
          v45 = v32 + v43;
          v46 = v44 > v45;
          if (v44 >= v45)
          {
            return result;
          }

LABEL_61:
          if (v46)
          {
            goto LABEL_82;
          }

          return result;
        }

        v7 = v7 / *&a3;
        if (v33 == 0.0)
        {
LABEL_64:
          v46 = v33 > v7;
          if (v33 >= v7)
          {
            return result;
          }

          goto LABEL_61;
        }

        goto LABEL_58;
      }

      if (fabs(v32 / (v32 - v33) + -0.5) < 0.15)
      {
        if (v32 < -v33)
        {
          v32 = -v33;
        }

        v33 = -v32;
      }
    }

    v40 = a2;
    goto LABEL_44;
  }

  v35 = 0;
  v36 = v57 + 32;
  v37 = (v57 + 32);
  while (1)
  {
    v33 = *v37;
    v32 = *&v36[16 * v34];
    v38 = (v32 - *v37) / v7;
    if (v38 > 100000000.0)
    {
      ++v35;
LABEL_31:
      --v34;
      goto LABEL_32;
    }

    if (v35 >= v31)
    {
      goto LABEL_79;
    }

    v39 = &v36[16 * v34];
    if (fabs(*&v36[16 * v35 + 8]) / v38 <= 10.0)
    {
      if (fabs(*(v39 + 1)) / v38 <= 10.0)
      {
        goto LABEL_36;
      }

      goto LABEL_31;
    }

    ++v35;
    if (fabs(*(v39 + 1)) / v38 > 10.0)
    {
      goto LABEL_31;
    }

LABEL_32:
    if (v35 >= v31)
    {
      break;
    }

    if (v34 >= v31)
    {
      goto LABEL_78;
    }

    v37 = &v36[16 * v35];
    if (v35 >= v34)
    {
      v32 = a7;
      v33 = a6;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
  return result;
}

void sub_1AAF7FD68()
{
  if (!qword_1EB423038)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB423038);
    }
  }
}

double sub_1AAF7FDC8(int64x2_t a1, int64x2_t a2, int64x2_t a3)
{
  v3 = vsubq_f64(vzip1q_s64(a1, a3), vdupq_lane_s64(a2.i64[0], 0));
  v4 = vsubq_f64(vzip2q_s64(a1, a3), vdupq_laneq_s64(a2, 1));
  v5 = vmulq_laneq_f64(v4, v4, 1);
  v6 = vsqrtq_f64(vaddq_f64(vmulq_f64(v3, v3), vmulq_f64(v4, v4)));
  v7 = vmulq_f64(vzip1q_s64(v3, v6), vzip2q_s64(v3, v6));
  *&result = *&vdivq_f64(vaddq_f64(v7, v5), vdupq_laneq_s64(v7, 1));
  return result;
}

uint64_t sub_1AAF7FE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, double (*a8)(void), double a9, int8x16_t a10, double a11, int64x2_t a12, double a13, double a14, double a15, double a16, double a17, uint64_t a18)
{
  swift_beginAccess();
  v28 = sub_1AAF7F798(0x20000000000001uLL);
  v29.n128_f64[0] = vcvtd_n_f64_u64(v28, 0x35uLL) * 0.06 + 0.22;
  if (v28 == 0x20000000000000)
  {
    v29.n128_f64[0] = 0.28;
  }

  v30 = a11 - a9;
  v29.n128_f64[0] = (a11 - a9) * v29.n128_f64[0] + a9;
  v216 = v29;
  v31 = a8();
  v32.n128_u64[0] = v216.n128_u64[0];
  v199 = v31;
  v32.n128_f64[1] = v31;
  v214 = v32;
  swift_beginAccess();
  v33 = sub_1AAF7F798(0x20000000000001uLL);
  v34.n128_f64[0] = vcvtd_n_f64_u64(v33, 0x35uLL) * 0.06 + 0.47;
  if (v33 == 0x20000000000000)
  {
    v34.n128_f64[0] = 0.53;
  }

  v34.n128_f64[0] = v30 * v34.n128_f64[0] + a9;
  v218 = v34;
  v35 = a8();
  v36.n128_u64[0] = v218.n128_u64[0];
  v200 = v35;
  v36.n128_f64[1] = v35;
  v223 = v36;
  swift_beginAccess();
  v37 = sub_1AAF7F798(0x20000000000001uLL);
  v38.n128_f64[0] = vcvtd_n_f64_u64(v37, 0x35uLL) * 0.06 + 0.72;
  if (v37 == 0x20000000000000)
  {
    v38.n128_f64[0] = 0.78;
  }

  v38.n128_f64[0] = v30 * v38.n128_f64[0] + a9;
  v222 = v38;
  v39 = a8();
  v40 = a10;
  v41 = v39;
  v42.i64[0] = v222.n128_u64[0];
  v43.f64[0] = NAN;
  v43.f64[1] = NAN;
  v44 = vnegq_f64(v43);
  v45 = vdupq_n_s64(0x7FF0000000000000uLL);
  v46 = vcgtq_s64(v45, vandq_s8(a10, v44));
  v47 = vandq_s8(vdupq_laneq_s64(v46, 1), v46).u64[0];
  v194 = v41;
  if (v47 < 0)
  {
    v50 = v214;
    v51 = vcgtq_s64(v45, vandq_s8(v214, v44));
    if ((vandq_s8(vdupq_laneq_s64(v51, 1), v51).u64[0] & 0x8000000000000000) != 0 && (v52.f64[0] = NAN, v52.f64[1] = NAN, v53 = vcgtq_s64(vdupq_n_s64(0x7FF0000000000000uLL), vandq_s8(v223, vnegq_f64(v52))), (vandq_s8(vdupq_laneq_s64(v53, 1), v53).u64[0] & 0x8000000000000000) != 0) && ((v54 = sqrt((*&a10.i64[1] - v199) * (*&a10.i64[1] - v199) + (*a10.i64 - v216.n128_f64[0]) * (*a10.i64 - v216.n128_f64[0])), v55 = sqrt((v200 - v199) * (v200 - v199) + (v218.n128_f64[0] - v216.n128_f64[0]) * (v218.n128_f64[0] - v216.n128_f64[0])), fabs(((*&a10.i64[1] - v199) * (v200 - v199) + (*a10.i64 - v216.n128_f64[0]) * (v218.n128_f64[0] - v216.n128_f64[0])) / (v54 * v55) + 1.0) < a13) ? (v56 = v54 < a14) : (v56 = 0), v56 ? (v57 = v55 < a14) : (v57 = 0), v57))
    {
      v196 = v45;
      v198 = v44;
      swift_beginAccess();
      v100 = sub_1AAF7F798(0x20000000000001uLL);
      v101 = vcvtd_n_f64_u64(v100, 0x35uLL) * 0.06 + 0.22;
      if (v100 == 0x20000000000000)
      {
        v101 = 0.28;
      }

      v204 = v30 * v101 + a9;
      v102 = a8();
      *v103.i64 = v204;
      *&v103.i64[1] = v102;
      v104.f64[0] = NAN;
      v104.f64[1] = NAN;
      v105 = vcgtq_s64(vdupq_n_s64(0x7FF0000000000000uLL), vandq_s8(v103, vnegq_f64(v104)));
      if ((vandq_s8(vdupq_laneq_s64(v105, 1), v105).u64[0] & 0x8000000000000000) != 0)
      {
        v179 = sub_1AAF7FDC8(a10, v103, v223);
        v40 = a10;
        v182 = v181 < a14;
        v49 = a13;
        if (fabs(v179 + 1.0) >= a13 || v180 >= a14)
        {
          v182 = 0;
        }

        v203 = v182;
        v48 = a16;
        v50 = v214;
        v42.i64[0] = v222.n128_u64[0];
        v41 = v194;
      }

      else
      {
        v203 = 0;
        v48 = a16;
        v49 = a13;
        v50 = v214;
        v42.i64[0] = v222.n128_u64[0];
        v41 = v194;
        v40 = a10;
      }

      v45 = v196;
      v44 = v198;
    }

    else
    {
      v203 = 0;
      v48 = a16;
      v49 = a13;
    }
  }

  else
  {
    v203 = 0;
    v48 = a16;
    v49 = a13;
    v50 = v214;
  }

  *&v42.i64[1] = v41;
  v58 = vcgtq_s64(v45, vandq_s8(v50, v44));
  v59 = vandq_s8(vdupq_laneq_s64(v58, 1), v58).u64[0];
  v60 = a12;
  v215 = v42;
  if (v59 < 0 && (v61.f64[0] = NAN, v61.f64[1] = NAN, v62 = vnegq_f64(v61), v63 = vdupq_n_s64(0x7FF0000000000000uLL), v64 = vcgtq_s64(v63, vandq_s8(v223, v62)), (vandq_s8(vdupq_laneq_s64(v64, 1), v64).u64[0] & 0x8000000000000000) != 0) && (v65 = vcgtq_s64(v63, vandq_s8(v42, v62)), (vandq_s8(vdupq_laneq_s64(v65, 1), v65).u64[0] & 0x8000000000000000) != 0) && ((v66 = sqrt((v199 - v200) * (v199 - v200) + (v216.n128_f64[0] - v218.n128_f64[0]) * (v216.n128_f64[0] - v218.n128_f64[0])), v67 = sqrt((v41 - v200) * (v41 - v200) + (v222.n128_f64[0] - v218.n128_f64[0]) * (v222.n128_f64[0] - v218.n128_f64[0])), fabs(((v199 - v200) * (v41 - v200) + (v216.n128_f64[0] - v218.n128_f64[0]) * (v222.n128_f64[0] - v218.n128_f64[0])) / (v66 * v67) + 1.0) < v49) ? (v68 = v66 < a14) : (v68 = 0), v68 ? (v69 = v67 < a14) : (v69 = 0), v69))
  {
    swift_beginAccess();
    v106 = sub_1AAF7F798(0x20000000000001uLL);
    v107 = vcvtd_n_f64_u64(v106, 0x35uLL) * 0.06 + 0.47;
    if (v106 == 0x20000000000000)
    {
      v107 = 0.53;
    }

    v212 = v30 * v107 + a9;
    v108 = a8();
    *v109.i64 = v212;
    *&v109.i64[1] = v108;
    v110.f64[0] = NAN;
    v110.f64[1] = NAN;
    v111 = vcgtq_s64(vdupq_n_s64(0x7FF0000000000000uLL), vandq_s8(v109, vnegq_f64(v110)));
    if ((vandq_s8(vdupq_laneq_s64(v111, 1), v111).u64[0] & 0x8000000000000000) != 0)
    {
      v184 = sub_1AAF7FDC8(v214, v109, v215);
      v50 = v214;
      v42 = v215;
      v187 = v186 < a14;
      if (fabs(v184 + 1.0) >= v49 || v185 >= a14)
      {
        v187 = 0;
      }

      v205 = v187;
      v70 = a15;
      v60 = a12;
    }

    else
    {
      v205 = 0;
      v70 = a15;
      v60 = a12;
      v50 = v214;
      v42 = v215;
    }

    v41 = v194;
    v40 = a10;
  }

  else
  {
    v205 = 0;
    v70 = a15;
  }

  v71.f64[0] = NAN;
  v71.f64[1] = NAN;
  v72 = vnegq_f64(v71);
  v73 = vdupq_n_s64(0x7FF0000000000000uLL);
  v74 = vcgtq_s64(v73, vandq_s8(v223, v72));
  v75 = vandq_s8(vdupq_laneq_s64(v74, 1), v74).u64[0];
  v211 = v75;
  if ((v75 & 0x8000000000000000) != 0 && (v76 = vcgtq_s64(v73, vandq_s8(v42, v72)), (vandq_s8(vdupq_laneq_s64(v76, 1), v76).u64[0] & 0x8000000000000000) != 0) && (v77.f64[0] = NAN, v77.f64[1] = NAN, v78 = vcgtq_s64(vdupq_n_s64(0x7FF0000000000000uLL), vandq_s8(v60, vnegq_f64(v77))), (vandq_s8(vdupq_laneq_s64(v78, 1), v78).u64[0] & 0x8000000000000000) != 0) && ((v79 = vdupq_lane_s64(v60.i64[0], 0), *&v79.f64[0] = v218.n128_u64[0], *&v80.f64[1] = v60.i64[1], v80.f64[0] = v200, v81 = vsubq_f64(v79, vdupq_lane_s64(v222.n128_i64[0], 0)), v82 = vsubq_f64(v80, vdupq_lane_s64(*&v41, 0)), v80.f64[0] = vaddq_f64(vmulq_laneq_f64(v82, v82, 1), vmulq_laneq_f64(v81, v81, 1)).f64[0], v83 = vsqrtq_f64(vaddq_f64(vmulq_f64(v82, v82), vmulq_f64(v81, v81))), fabs(v80.f64[0] / vmuld_lane_f64(v83.f64[0], v83, 1) + 1.0) < v49) ? (v84 = v83.f64[0] < a14) : (v84 = 0), v84 ? (v85 = v83.f64[1] < a14) : (v85 = 0), v85))
  {
    v202 = v73;
    v221 = v72;
    swift_beginAccess();
    v112 = sub_1AAF7F798(0x20000000000001uLL);
    v113 = vcvtd_n_f64_u64(v112, 0x35uLL) * 0.06 + 0.72;
    if (v112 == 0x20000000000000)
    {
      v113 = 0.78;
    }

    v209 = v30 * v113 + a9;
    v114 = a8();
    *v115.i64 = v209;
    *&v115.i64[1] = v114;
    v116.f64[0] = NAN;
    v116.f64[1] = NAN;
    v117 = vcgtq_s64(vdupq_n_s64(0x7FF0000000000000uLL), vandq_s8(v115, vnegq_f64(v116)));
    if ((vandq_s8(vdupq_laneq_s64(v117, 1), v117).u64[0] & 0x8000000000000000) != 0)
    {
      v189 = sub_1AAF7FDC8(v223, v115, a12);
      v60 = a12;
      v192 = v191 < a14;
      if (fabs(v189 + 1.0) >= v49 || v190 >= a14)
      {
        v192 = 0;
      }

      v206 = v192;
    }

    else
    {
      v206 = 0;
      v60 = a12;
    }

    v50 = v214;
    v42 = v215;
    v75 = v211;
    v40 = a10;
    v72 = v221;
    v73 = v202;
  }

  else
  {
    v206 = 0;
  }

  v86 = vcgtq_s64(v73, vandq_s8(v42, v72));
  v87 = vcgtq_s64(v73, vandq_s8(v60, v72));
  v88 = vmovn_s64(vcltzq_s64(vandq_s8(vzip1q_s64(v87, v86), vzip2q_s64(v87, v86))));
  v220 = a4;
  v89 = v88;
  if (v47 < 0)
  {
    if ((v59 & 0x8000000000000000) == 0)
    {
      if ((v75 & 0x8000000000000000) == 0)
      {
        if (v88.i8[4])
        {
          if (a1 >= a3)
          {
            if (a1 < a4)
            {
              v197 = 0;
              v93 = v203;
              if (a1 < a5)
              {
                v93 = 0;
              }

              v201 = 1;
              v195 = 1;
              if (v93)
              {
                goto LABEL_154;
              }

              goto LABEL_153;
            }

            if (a1 >= a5)
            {
              v197 = 0;
              v95 = a9 == v70;
LABEL_180:
              v118 = !v95;
              v201 = 1;
              if ((v118 | v203))
              {
                v195 = 1;
              }

              else
              {
                v195 = 1;
                if (v205)
                {
                  goto LABEL_199;
                }
              }

LABEL_154:
              swift_beginAccess();
              v96 = *(a6 + 16);
              if (sub_1AAE63884(v96))
              {

                sub_1AADD923C();
                v97 = *(*(a6 + 24) + 16);
                sub_1AADD92E0(v97);
                v98 = sub_1AAF0AC40(v97, v96);
                nullsub_1(v98, v99);
              }

              *(a6 + 16) = MEMORY[0x1E69E7CC0];
              swift_endAccess();

              goto LABEL_211;
            }
          }

          goto LABEL_53;
        }

        if (a1 >= a3)
        {
          if (a1 < a4)
          {
            v195 = 0;
            v197 = 0;
            v94 = v203;
            if (a1 < a5)
            {
              v94 = 0;
            }

            v201 = v88.i32[0];
            if (v94)
            {
              goto LABEL_154;
            }

            goto LABEL_153;
          }

          if (a1 >= a5)
          {
            v91 = a9 == v70;
LABEL_75:
            v92 = !v91;
            v195 = 0;
            if ((v92 | v203))
            {
              v201 = v88.i32[0];
              v197 = 0;
            }

            else
            {
              v201 = v88.i32[0];
              v197 = 0;
              if (v205)
              {
                goto LABEL_199;
              }
            }

            goto LABEL_154;
          }
        }

        goto LABEL_95;
      }

      if ((v88.i8[4] & 1) == 0)
      {
        if (a1 < a3)
        {
          goto LABEL_131;
        }

        if (a1 < a4)
        {
          if (!v203)
          {
            goto LABEL_131;
          }

          goto LABEL_126;
        }

LABEL_129:
        if (a1 >= a5)
        {
          if (a9 != v70 || v203)
          {
            goto LABEL_259;
          }
        }

        else
        {
          if (v47 < 0 != v59 < 0)
          {
            goto LABEL_131;
          }

          if (a9 != v70 || v203)
          {
            goto LABEL_259;
          }
        }

        if (!v205)
        {
          goto LABEL_259;
        }

        v195 = 1;
        v201 = v88.i32[0];
LABEL_198:
        v197 = 1;
        goto LABEL_199;
      }

      if (a1 < a3)
      {
        goto LABEL_116;
      }

      if (a1 >= a4)
      {
LABEL_84:
        if (a1 >= a5 || v47 < 0 == v59 < 0)
        {
          v201 = 1;
          if (a9 == v70 && !v203)
          {
            v195 = 1;
            v197 = 1;
            if (v205)
            {
              goto LABEL_199;
            }

            goto LABEL_154;
          }

LABEL_283:
          v195 = 1;
          v197 = 1;
          goto LABEL_154;
        }

        goto LABEL_116;
      }

      goto LABEL_92;
    }

    if ((v75 & 0x8000000000000000) == 0)
    {
      if ((v88.i8[4] & 1) == 0)
      {
        if (a1 >= a3)
        {
          if (a1 >= a4)
          {
            goto LABEL_149;
          }

          if (v203)
          {
LABEL_120:
            if (a1 < a5 && v47 < 0 != v59 < 0)
            {
              goto LABEL_151;
            }

LABEL_176:
            v195 = 0;
            v197 = 1;
            v201 = v88.i32[0];
            if ((a7 & 1) == 0)
            {
              goto LABEL_192;
            }

LABEL_203:
            swift_beginAccess();
            v126 = *(a6 + 16);
            if (sub_1AAE63884(v126) > 1)
            {
              result = sub_1AAE63884(v126);
              v128 = result - 2;
              if (__OFSUB__(result, 2))
              {
LABEL_286:
                __break(1u);
                goto LABEL_287;
              }

              sub_1AAE9BFE8(result - 2, 1, v126);
              v129 = v126 + 32;
              v208 = *(v126 + 32 + 16 * v128);
              result = sub_1AAE63884(v126);
              v130 = result - 1;
              if (__OFSUB__(result, 1))
              {
LABEL_287:
                __break(1u);
                goto LABEL_288;
              }

              sub_1AAE9BFE8(result - 1, 1, v126);
              v131 = *(v129 + 16 * v130);
              v132 = v216.n128_f64[0] - v131.f64[0];
              v133 = v199 - *(v129 + 16 * v130 + 8);
              v134 = vsubq_f64(v208, v131);
              if (fabs((v132 * v134.f64[0] + vmuld_lane_f64(v133, v134, 1)) / (sqrt(vaddvq_f64(vmulq_f64(v134, v134))) * sqrt(v132 * v132 + v133 * v133)) + 1.0) > a17)
              {
                swift_beginAccess();
                if (sub_1AAE63884(v126))
                {

                  sub_1AADD923C();
                  v135 = *(*(a6 + 24) + 16);
                  sub_1AADD92E0(v135);
                  v136 = sub_1AAF0AC40(v135, v126);
                  nullsub_1(v136, v137);
                }

                *(a6 + 16) = MEMORY[0x1E69E7CC0];
                swift_endAccess();
              }
            }

            swift_beginAccess();
            sub_1AADD9224();
            v138 = *(*(a6 + 16) + 16);
            sub_1AADD92C8(v138);
            v139 = sub_1AAF0AC28(v138, v214);
            nullsub_1(v139, v140);
            swift_endAccess();
LABEL_211:
            a4 = v220;
            if (a1 < a3)
            {
              goto LABEL_217;
            }

            goto LABEL_212;
          }
        }

LABEL_151:
        v195 = 0;
        v197 = 1;
        goto LABEL_152;
      }

LABEL_67:
      if (a1 < a3)
      {
        goto LABEL_116;
      }

      if (a1 < a4)
      {
        if (!v203 || a1 < a5 && v47 < 0 != v59 < 0)
        {
          goto LABEL_116;
        }

        goto LABEL_147;
      }

LABEL_114:
      if (a1 < a5 && v47 < 0 != v59 < 0)
      {
        goto LABEL_116;
      }

      if (a9 == v70 && !v203 && v205)
      {
        v201 = 1;
        v195 = 1;
        goto LABEL_198;
      }

LABEL_147:
      v201 = 1;
      v195 = 1;
      goto LABEL_191;
    }

    if (v88.i8[4])
    {
      if (a1 < a3)
      {
        goto LABEL_116;
      }

      if (a1 < a4)
      {
        if (v203)
        {
          goto LABEL_106;
        }

        goto LABEL_116;
      }

      goto LABEL_114;
    }

LABEL_110:
    if (a1 < a3)
    {
      goto LABEL_131;
    }

    if (a1 < a4)
    {
      if (!v203)
      {
        goto LABEL_131;
      }

      goto LABEL_126;
    }

    goto LABEL_129;
  }

  if (v59 < 0)
  {
    if ((v75 & 0x8000000000000000) == 0)
    {
      if ((v88.i8[4] & 1) == 0)
      {
        if (a1 >= a3)
        {
          if (a1 < a4)
          {
            if (!v203)
            {
              goto LABEL_151;
            }

            goto LABEL_120;
          }

LABEL_149:
          if (a1 < a5 && v47 < 0 != v59 < 0)
          {
            goto LABEL_151;
          }

          if (a9 == v70 && !v203 && v205)
          {
            v195 = 0;
            v197 = 1;
            v201 = v88.i32[0];
            goto LABEL_199;
          }

          goto LABEL_176;
        }

        goto LABEL_151;
      }

      goto LABEL_67;
    }

    if (v88.i8[4])
    {
      if (a1 < a3)
      {
        goto LABEL_116;
      }

      if (a1 >= a4)
      {
        goto LABEL_114;
      }

LABEL_92:
      if (v203)
      {
        goto LABEL_106;
      }

      goto LABEL_116;
    }

    goto LABEL_110;
  }

  if ((v75 & 0x8000000000000000) != 0)
  {
    if (v88.i8[4])
    {
      if (a1 >= a3)
      {
        if (a1 < a4)
        {
          if (!v203)
          {
            v90 = a9 == v70 && v205;
            v201 = 1;
            v195 = 1;
            goto LABEL_100;
          }

LABEL_106:
          if (a1 >= a5 || v47 < 0 == v59 < 0)
          {
            if ((v59 & 0x8000000000000000) == 0)
            {
              v201 = 1;
              goto LABEL_283;
            }

            goto LABEL_147;
          }

          goto LABEL_116;
        }

        goto LABEL_84;
      }

LABEL_116:
      v201 = 1;
      v195 = 1;
LABEL_132:
      v197 = 1;
      goto LABEL_153;
    }

    if (a1 < a3)
    {
      goto LABEL_131;
    }

    if (a1 < a4)
    {
      if (!v203)
      {
        v90 = a9 == v70 && v205;
        v195 = 1;
        v201 = v88.i32[0];
LABEL_100:
        v197 = 1;
        if (v90)
        {
          goto LABEL_199;
        }

        goto LABEL_154;
      }

LABEL_126:
      if (a1 >= a5)
      {
        if ((v59 & 0x8000000000000000) == 0)
        {
LABEL_260:
          v195 = 1;
          v201 = v88.i32[0];
          v197 = 1;
          goto LABEL_154;
        }

LABEL_190:
        v195 = 1;
        v201 = v88.i32[0];
LABEL_191:
        v197 = 1;
        if ((a7 & 1) == 0)
        {
          goto LABEL_192;
        }

        goto LABEL_203;
      }

      if (v47 < 0 == v59 < 0)
      {
LABEL_259:
        if ((v59 & 0x8000000000000000) == 0)
        {
          goto LABEL_260;
        }

        goto LABEL_190;
      }

LABEL_131:
      v195 = 1;
      v201 = v88.i32[0];
      goto LABEL_132;
    }

    goto LABEL_129;
  }

  if ((v88.i8[4] & 1) == 0)
  {
    if (a1 >= a3)
    {
      v91 = a9 == v70;
      goto LABEL_75;
    }

LABEL_95:
    v195 = 0;
    v197 = 0;
LABEL_152:
    v201 = v88.i32[0];
LABEL_153:
    sub_1AAF7FE10(a1 + 1, a2, a3, a4, a5, a6, a7 & 1, a8, a9, v40, v216, v50, v49, a14, v70, v48, *&a17, a18);
    if (v59 < 0)
    {
      goto LABEL_202;
    }

    goto LABEL_154;
  }

  if (a1 < a3)
  {
LABEL_53:
    v197 = 0;
    v201 = 1;
    v195 = 1;
    goto LABEL_153;
  }

  if (a1 >= a4)
  {
    v197 = 0;
    v95 = a9 == v70;
    goto LABEL_180;
  }

  v197 = 0;
  v201 = 1;
  v195 = 1;
  if (((a9 == v70) & ~v203 & v205) == 0)
  {
    goto LABEL_154;
  }

LABEL_199:
  swift_beginAccess();
  v122 = *(a6 + 16);
  if (sub_1AAE63884(v122))
  {

    sub_1AADD923C();
    v123 = *(*(a6 + 24) + 16);
    sub_1AADD92E0(v123);
    v124 = sub_1AAF0AC40(v123, v122);
    nullsub_1(v124, v125);
  }

  *(a6 + 16) = MEMORY[0x1E69E7CC0];
  swift_endAccess();

  a4 = v220;
  if ((v59 & 0x8000000000000000) == 0)
  {
    goto LABEL_154;
  }

LABEL_202:
  if (a7)
  {
    goto LABEL_203;
  }

LABEL_192:
  swift_beginAccess();
  sub_1AADD9224();
  v119 = *(*(a6 + 16) + 16);
  sub_1AADD92C8(v119);
  v120 = sub_1AAF0AC28(v119, v214);
  nullsub_1(v120, v121);
  swift_endAccess();
  if (a1 < a3)
  {
    goto LABEL_217;
  }

LABEL_212:
  if (a1 < a4 && (!v203 || !v205) && v197 == 1 || a1 < a5 && v59 < 0 != v211 < 0)
  {
LABEL_217:
    sub_1AAF7FE10(a1 + 1, a2, a3, a4, a5, a6, a7 & 1, a8, v216.n128_f64[0], v214, v218, v223, v49, a14, v70, v48, *&a17, a18);
    v141 = v211;
    if (v211 < 0)
    {
      goto LABEL_218;
    }

LABEL_228:
    swift_beginAccess();
    v156 = *(a6 + 16);
    if (sub_1AAE63884(v156))
    {

      sub_1AADD923C();
      v157 = *(*(a6 + 24) + 16);
      sub_1AADD92E0(v157);
      v158 = sub_1AAF0AC40(v157, v156);
      nullsub_1(v158, v159);
    }

    *(a6 + 16) = MEMORY[0x1E69E7CC0];
    swift_endAccess();

    goto LABEL_231;
  }

  v141 = v211;
  if ((v211 & 0x8000000000000000) == 0)
  {
    goto LABEL_228;
  }

LABEL_218:
  if (a7)
  {
    swift_beginAccess();
    v142 = *(a6 + 16);
    if (sub_1AAE63884(v142) >= 2)
    {
      result = sub_1AAE63884(v142);
      v143 = result - 2;
      if (__OFSUB__(result, 2))
      {
LABEL_288:
        __break(1u);
        goto LABEL_289;
      }

      sub_1AAE9BFE8(result - 2, 1, v142);
      v144 = v142 + 32;
      v217 = *(v142 + 32 + 16 * v143);
      result = sub_1AAE63884(v142);
      v145 = result - 1;
      if (__OFSUB__(result, 1))
      {
LABEL_289:
        __break(1u);
        return result;
      }

      sub_1AAE9BFE8(result - 1, 1, v142);
      v146 = *(v144 + 16 * v145);
      v147 = v218.n128_f64[0] - v146.f64[0];
      v148 = v200 - *(v144 + 16 * v145 + 8);
      v149 = vsubq_f64(v217, v146);
      if (fabs((v147 * v149.f64[0] + vmuld_lane_f64(v148, v149, 1)) / (sqrt(vaddvq_f64(vmulq_f64(v149, v149))) * sqrt(v147 * v147 + v148 * v148)) + 1.0) > a17)
      {
        swift_beginAccess();
        if (sub_1AAE63884(v142))
        {

          sub_1AADD923C();
          v150 = *(*(a6 + 24) + 16);
          sub_1AADD92E0(v150);
          v151 = sub_1AAF0AC40(v150, v142);
          nullsub_1(v151, v152);
        }

        *(a6 + 16) = MEMORY[0x1E69E7CC0];
        swift_endAccess();
      }
    }
  }

  swift_beginAccess();
  sub_1AADD9224();
  v153 = *(*(a6 + 16) + 16);
  sub_1AADD92C8(v153);
  v154 = sub_1AAF0AC28(v153, v223);
  nullsub_1(v154, v155);
  swift_endAccess();
LABEL_231:
  if (a1 < a3 || a1 < v220 && (!v205 || !v206) && v195 == 1 || a1 < a5 && (((v141 < 0) ^ v89.i32[1]) & 1) != 0)
  {
    sub_1AAF7FE10(a1 + 1, a2, a3, v220, a5, a6, a7 & 1, a8, v218.n128_f64[0], v223, v222, v215, v49, a14, v70, v48, *&a17, a18);
  }

  if ((v89.i8[4] & 1) == 0)
  {
    swift_beginAccess();
    v171 = *(a6 + 16);
    if (sub_1AAE63884(v171))
    {

      sub_1AADD923C();
      v172 = *(*(a6 + 24) + 16);
      sub_1AADD92E0(v172);
      v173 = sub_1AAF0AC40(v172, v171);
      nullsub_1(v173, v174);
    }

    *(a6 + 16) = MEMORY[0x1E69E7CC0];
    swift_endAccess();

    goto LABEL_252;
  }

  if (a7)
  {
    swift_beginAccess();
    v160 = *(a6 + 16);
    if (sub_1AAE63884(v160) >= 2)
    {
      result = sub_1AAE63884(v160);
      v161 = result - 2;
      if (__OFSUB__(result, 2))
      {
        __break(1u);
      }

      else
      {
        sub_1AAE9BFE8(result - 2, 1, v160);
        v162 = v160 + 32;
        v224 = *(v160 + 32 + 16 * v161);
        result = sub_1AAE63884(v160);
        v163 = result - 1;
        if (!__OFSUB__(result, 1))
        {
          sub_1AAE9BFE8(result - 1, 1, v160);
          v164 = *(v162 + 16 * v163);
          v165 = v222.n128_f64[0] - v164.f64[0];
          v166 = v194 - *(v162 + 16 * v163 + 8);
          v167 = vsubq_f64(v224, v164);
          if (fabs((v165 * v167.f64[0] + vmuld_lane_f64(v166, v167, 1)) / (sqrt(vaddvq_f64(vmulq_f64(v167, v167))) * sqrt(v165 * v165 + v166 * v166)) + 1.0) > a17)
          {
            swift_beginAccess();
            if (sub_1AAE63884(v160))
            {

              sub_1AADD923C();
              v168 = *(*(a6 + 24) + 16);
              sub_1AADD92E0(v168);
              v169 = sub_1AAF0AC40(v168, v160);
              nullsub_1(v169, v170);
            }

            *(a6 + 16) = MEMORY[0x1E69E7CC0];
            swift_endAccess();
          }

          goto LABEL_251;
        }
      }

      __break(1u);
      goto LABEL_286;
    }
  }

LABEL_251:
  swift_beginAccess();
  sub_1AADD9224();
  v176 = *(*(a6 + 16) + 16);
  sub_1AADD92C8(v176);
  v177 = sub_1AAF0AC28(v176, v215);
  nullsub_1(v177, v178);
  result = swift_endAccess();
LABEL_252:
  if (a1 < a3 || a1 < v220 && !v206 && ((v201 ^ 1) & 1) == 0 || a1 < a5 && ((v89.i32[0] ^ v89.i32[1]) & 1) != 0)
  {
    v175.n128_f64[0] = a11;
    return sub_1AAF7FE10(a1 + 1, a2, a3, v220, a5, a6, a7 & 1, a8, v222.n128_f64[0], v215, v175, a12, v49, a14, v70, v48, *&a17, a18);
  }

  return result;
}

void *sub_1AAF81604(uint64_t a1, uint64_t a2, char a3, double (*a4)(__n128), char *a5, __n128 a6, __n128 a7)
{
  v52 = a1;
  v58 = a6;
  v59 = a7;
  v11 = sub_1AAF8D7E4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED9B59F0 != -1)
  {
    swift_once();
  }

  v15 = qword_1ED9C36C8;
  sub_1AAF8FE04();
  sub_1AAF8D7D4();
  sub_1AAF8D7C4();

  v53 = *(v12 + 8);
  v54 = v12 + 8;
  v53(v14, v11);
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E7CC0];
  *(v16 + 16) = MEMORY[0x1E69E7CC0];
  v18 = (v16 + 16);
  *(v16 + 24) = v17;
  v55 = swift_allocObject();
  *(v55 + 16) = 0x78ABBF7B5AEAE776;
  v19 = (a2 + 4);
  if (__OFADD__(a2, 4))
  {
    __break(1u);
LABEL_41:
    v19 = sub_1AAD6958C(0, v19[2] + 1, 1, v19);
    goto LABEL_35;
  }

  v20 = a4(v58);
  v21.i64[0] = v58.n128_u64[0];
  *&v21.i64[1] = v20;
  v56 = v21;
  v22.f64[0] = a4(v59);
  v23.i64[0] = v59.n128_u64[0];
  v51 = v22;
  v23.i64[1] = *&v22.f64[0];
  v57 = v23;
  v22.f64[0] = NAN;
  v22.f64[1] = NAN;
  v24 = vcgtq_s64(vdupq_n_s64(0x7FF0000000000000uLL), vandq_s8(v56, vnegq_f64(v22)));
  if ((vandq_s8(vdupq_laneq_s64(v24, 1), v24).u64[0] & 0x8000000000000000) != 0)
  {
    v50 = v11;
    swift_beginAccess();
    v25 = sub_1AAD6945C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v27 = *(v25 + 2);
    v26 = *(v25 + 3);
    if (v27 >= v26 >> 1)
    {
      v25 = sub_1AAD6945C((v26 > 1), v27 + 1, 1, v25);
    }

    *(v25 + 2) = v27 + 1;
    *&v25[16 * v27 + 32] = v56;
    *v18 = v25;
    swift_endAccess();
    v11 = v50;
  }

  else
  {
    swift_beginAccess();
    *v18 = MEMORY[0x1E69E7CC0];
  }

  sub_1AAF7FE10(1, v55, v52, a2, a2 + 4, v16, a3 & 1, a4, v58.n128_f64[0], v56, v59.n128_f64[0], v57, 0.00137046525, 20.0, v58.n128_f64[0], v59.n128_f64[0], 0.190983006, a5);
  v28.f64[0] = NAN;
  v28.f64[1] = NAN;
  v29 = vcgtq_s64(vdupq_n_s64(0x7FF0000000000000uLL), vandq_s8(v57, vnegq_f64(v28)));
  if ((vandq_s8(vdupq_laneq_s64(v29, 1), v29).u64[0] & 0x8000000000000000) != 0)
  {
    a4 = MEMORY[0x1E69E7CC0];
    if (a3)
    {
      swift_beginAccess();
      a5 = *v18;
      v34 = *v18 + 16;
      if (*v34 >= 2uLL)
      {
        v35 = 2 * *v34;
        v36 = *&v34[v35];
        v37 = vsubq_f64(*&a5[v35 * 8], v36);
        if (fabs(((v59.n128_f64[0] - v36.f64[0]) * v37.f64[0] + vmuld_lane_f64(v51.f64[0] - *&v34[v35 + 1], v37, 1)) / (sqrt(vaddvq_f64(vmulq_f64(v37, v37))) * sqrt((v59.n128_f64[0] - v36.f64[0]) * (v59.n128_f64[0] - v36.f64[0]) + (v51.f64[0] - *&v34[v35 + 1]) * (v51.f64[0] - *&v34[v35 + 1]))) + 1.0) > 0.190983006)
        {
          swift_beginAccess();
          v38 = *(v16 + 24);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v38 = sub_1AAD6958C(0, v38[2] + 1, 1, v38);
          }

          v40 = v38[2];
          v39 = v38[3];
          if (v40 >= v39 >> 1)
          {
            v38 = sub_1AAD6958C((v39 > 1), v40 + 1, 1, v38);
          }

          v38[2] = v40 + 1;
          v38[v40 + 4] = a5;

          *(v16 + 16) = a4;
          *(v16 + 24) = v38;
          swift_endAccess();
          a5 = a4;
        }
      }

      swift_beginAccess();
    }

    else
    {
      swift_beginAccess();
      a5 = *v18;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a5 = sub_1AAD6945C(0, *(a5 + 2) + 1, 1, a5);
    }

    v42 = *(a5 + 2);
    v41 = *(a5 + 3);
    v43 = v57;
    if (v42 >= v41 >> 1)
    {
      v48 = sub_1AAD6945C((v41 > 1), v42 + 1, 1, a5);
      v43 = v57;
      a5 = v48;
    }

    *(a5 + 2) = v42 + 1;
    *&a5[16 * v42 + 32] = v43;
    *v18 = a5;
    swift_endAccess();
  }

  else
  {
    swift_beginAccess();
    v30 = *v18;
    a4 = MEMORY[0x1E69E7CC0];
    if (*(*v18 + 2))
    {
      v31 = *(v16 + 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1AAD6958C(0, v31[2] + 1, 1, v31);
      }

      v33 = v31[2];
      v32 = v31[3];
      if (v33 >= v32 >> 1)
      {
        v31 = sub_1AAD6958C((v32 > 1), v33 + 1, 1, v31);
      }

      v31[2] = v33 + 1;
      v31[v33 + 4] = v30;

      *(v16 + 24) = v31;
    }

    else
    {
    }

    *v18 = a4;
    swift_endAccess();
    a5 = a4;
  }

  swift_beginAccess();
  if (!*(a5 + 2))
  {

    v19 = *(v16 + 24);
    goto LABEL_39;
  }

  v19 = *(v16 + 24);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_35:
  v45 = v19[2];
  v44 = v19[3];
  if (v45 >= v44 >> 1)
  {
    v19 = sub_1AAD6958C((v44 > 1), v45 + 1, 1, v19);
  }

  v19[2] = v45 + 1;
  v19[v45 + 4] = a5;

  *(v16 + 24) = v19;
LABEL_39:
  *(v16 + 16) = a4;
  swift_endAccess();

  v46 = qword_1ED9C36C8;
  sub_1AAF8FDF4();
  sub_1AAF8D7D4();
  sub_1AAF8D7C4();

  v53(v14, v11);
  return v19;
}

uint64_t sub_1AAF81D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, double (*a8)(void), double a9, int8x16_t a10, double a11, int8x16_t a12, double a13, double a14, double a15, double a16, double a17, uint64_t a18, uint64_t a19, char a20, double a21, double a22, uint64_t a23, char a24, double a25, double a26)
{
  swift_beginAccess();
  v31 = sub_1AAF7F798(0x20000000000001uLL);
  v32 = vcvtd_n_f64_u64(v31, 0x35uLL) * 0.06 + 0.22;
  if (v31 == 0x20000000000000)
  {
    v32 = 0.28;
  }

  v232 = a11;
  v33 = a11 - a9;
  v34 = (a11 - a9) * v32 + a9;
  swift_retain_n();
  v239 = v34;
  v35.n128_f64[0] = sub_1AAE62928(a8, v34, a21, a22, a25, a26, a18, a19, a20, a23, a24);
  v251 = v35;
  swift_beginAccess();
  v36 = sub_1AAF7F798(0x20000000000001uLL);
  v37 = vcvtd_n_f64_u64(v36, 0x35uLL) * 0.06 + 0.47;
  if (v36 == 0x20000000000000)
  {
    v37 = 0.53;
  }

  v240 = v33 * v37 + a9;
  v38.n128_f64[0] = sub_1AAE62928(a8, v240, a21, a22, a25, a26, a18, a19, a20, a23, a24);
  v254 = v38;
  swift_beginAccess();
  v250 = a2;
  v39 = a18;
  v40 = sub_1AAF7F798(0x20000000000001uLL);
  v41 = vcvtd_n_f64_u64(v40, 0x35uLL) * 0.06 + 0.72;
  if (v40 == 0x20000000000000)
  {
    v41 = 0.78;
  }

  v42 = v33;
  v235 = v33 * v41 + a9;
  v236 = a9;
  v43.f64[0] = sub_1AAE62928(a8, v235, a21, a22, a25, a26, a18, a19, a20, a23, a24);
  v44 = v43;
  v43.f64[0] = NAN;
  v43.f64[1] = NAN;
  v45 = vnegq_f64(v43);
  v46 = vdupq_n_s64(0x7FF0000000000000uLL);
  v47 = vcgtq_s64(v46, vandq_s8(a10, v45));
  v48 = vandq_s8(vdupq_laneq_s64(v47, 1), v47).u64[0];
  v248 = v44;
  if (v48 < 0)
  {
    v55 = vcgtq_s64(v46, vandq_s8(v251, v45));
    v50 = a5;
    v52 = a3;
    v54 = v251;
    if ((vandq_s8(vdupq_laneq_s64(v55, 1), v55).u64[0] & 0x8000000000000000) != 0)
    {
      v56.f64[0] = NAN;
      v56.f64[1] = NAN;
      v53 = v254;
      v57 = vcgtq_s64(vdupq_n_s64(0x7FF0000000000000uLL), vandq_s8(v254, vnegq_f64(v56)));
      if ((vandq_s8(vdupq_laneq_s64(v57, 1), v57).u64[0] & 0x8000000000000000) != 0 && ((v58 = vsubq_f64(a10, v251), v59 = vsubq_f64(v254, v251), v60 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v58, v58), vmulq_f64(v59, v59))), fabs(vaddvq_f64(vmulq_f64(v58, v59)) / vmuld_lane_f64(v60.f64[0], v60, 1) + 1.0) < a13) ? (v61 = v60.f64[0] < a14) : (v61 = 0), v61 ? (v62 = v60.f64[1] < a14) : (v62 = 0), v62))
      {
        v223 = v46;
        v228 = v45;
        swift_beginAccess();
        v39 = a18;
        v116 = sub_1AAF7F798(0x20000000000001uLL);
        v117 = vcvtd_n_f64_u64(v116, 0x35uLL) * 0.06 + 0.22;
        if (v116 == 0x20000000000000)
        {
          v117 = 0.28;
        }

        v118.f64[0] = sub_1AAE62928(a8, v33 * v117 + a9, a21, a22, a25, a26, a18, a19, a20, a23, a24);
        v119 = v118;
        v118.f64[0] = NAN;
        v118.f64[1] = NAN;
        v120 = vcgtq_s64(vdupq_n_s64(0x7FF0000000000000uLL), vandq_s8(v119, vnegq_f64(v118)));
        if ((vandq_s8(vdupq_laneq_s64(v120, 1), v120).u64[0] & 0x8000000000000000) != 0)
        {
          v133 = sub_1AAF7FDC8(a10, v119, v254);
          v53 = v254;
          v51 = a14;
          v49 = fabs(v133 + 1.0) < a13 && v134 < a14 && v135 < a14;
          v44 = v248;
        }

        else
        {
          v49 = 0;
          v51 = a14;
          v44 = v248;
          v53 = v254;
        }

        v54 = v251;
        v45 = v228;
        v46 = v223;
      }

      else
      {
        v49 = 0;
        v51 = a14;
      }
    }

    else
    {
      v49 = 0;
      v51 = a14;
      v53 = v254;
    }
  }

  else
  {
    v49 = 0;
    v50 = a5;
    v51 = a14;
    v52 = a3;
    v53 = v254;
    v54 = v251;
  }

  v63 = vcgtq_s64(v46, vandq_s8(v54, v45));
  v246 = vandq_s8(vdupq_laneq_s64(v63, 1), v63).u64[0];
  if ((v246 & 0x8000000000000000) == 0 || (v64.f64[0] = NAN, v64.f64[1] = NAN, v65 = vnegq_f64(v64), v66 = vdupq_n_s64(0x7FF0000000000000uLL), v67 = vcgtq_s64(v66, vandq_s8(v53, v65)), (vandq_s8(vdupq_laneq_s64(v67, 1), v67).u64[0] & 0x8000000000000000) == 0))
  {
    v231 = 0;
    v68 = v250;
    v69 = a6;
    v70 = a21;
    v71 = a22;
    v72 = a8;
    goto LABEL_23;
  }

  v91 = vcgtq_s64(v66, vandq_s8(v44, v65));
  v68 = v250;
  v72 = a8;
  if ((vandq_s8(vdupq_laneq_s64(v91, 1), v91).u64[0] & 0x8000000000000000) == 0)
  {
    v231 = 0;
    v69 = a6;
LABEL_100:
    v70 = a21;
    v71 = a22;
    goto LABEL_23;
  }

  v96 = vsubq_f64(v54, v53);
  v97 = vsubq_f64(v44, v53);
  v98 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v96, v96), vmulq_f64(v97, v97)));
  v100 = fabs(vaddvq_f64(vmulq_f64(v96, v97)) / vmuld_lane_f64(v98.f64[0], v98, 1) + 1.0) < a13 && v98.f64[0] < v51 && v98.f64[1] < v51;
  v69 = a6;
  if (!v100)
  {
    v231 = 0;
    goto LABEL_100;
  }

  swift_beginAccess();
  v121 = sub_1AAF7F798(0x20000000000001uLL);
  v122 = vcvtd_n_f64_u64(v121, 0x35uLL) * 0.06 + 0.47;
  if (v121 == 0x20000000000000)
  {
    v122 = 0.53;
  }

  v70 = a21;
  v71 = a22;
  v123.f64[0] = sub_1AAE62928(a8, v42 * v122 + a9, a21, a22, a25, a26, v39, a19, a20, a23, a24);
  v124 = v123;
  v123.f64[0] = NAN;
  v123.f64[1] = NAN;
  v125 = vcgtq_s64(vdupq_n_s64(0x7FF0000000000000uLL), vandq_s8(v124, vnegq_f64(v123)));
  if ((vandq_s8(vdupq_laneq_s64(v125, 1), v125).u64[0] & 0x8000000000000000) != 0)
  {
    v137 = sub_1AAF7FDC8(v251, v124, v248);
    v44 = v248;
    v140 = v139 < v51;
    if (fabs(v137 + 1.0) >= a13 || v138 >= v51)
    {
      v140 = 0;
    }

    v231 = v140;
  }

  else
  {
    v231 = 0;
    v44 = v248;
  }

  v53 = v254;
LABEL_23:
  v73.f64[0] = NAN;
  v73.f64[1] = NAN;
  v74 = vnegq_f64(v73);
  v75 = vdupq_n_s64(0x7FF0000000000000uLL);
  v76 = vcgtq_s64(v75, vandq_s8(v53, v74));
  v77 = vandq_s8(vdupq_laneq_s64(v76, 1), v76).u64[0];
  v78 = a12;
  v238 = v77;
  v227 = v49;
  if ((v77 & 0x8000000000000000) == 0 || (v79 = vcgtq_s64(v75, vandq_s8(v44, v74)), (vandq_s8(vdupq_laneq_s64(v79, 1), v79).u64[0] & 0x8000000000000000) == 0))
  {
    v234 = 0;
    v80 = a15;
    v81 = a19;
    v82 = a1;
    v83 = a25;
LABEL_26:
    v84 = a26;
    goto LABEL_27;
  }

  v92.f64[0] = NAN;
  v92.f64[1] = NAN;
  v93 = vcgtq_s64(vdupq_n_s64(0x7FF0000000000000uLL), vandq_s8(a12, vnegq_f64(v92)));
  v81 = a19;
  v83 = a25;
  if ((vandq_s8(vdupq_laneq_s64(v93, 1), v93).u64[0] & 0x8000000000000000) == 0)
  {
    v234 = 0;
    v80 = a15;
    v82 = a1;
    goto LABEL_26;
  }

  v101 = vsubq_f64(v53, v44);
  v102 = vsubq_f64(a12, v44);
  v103 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v101, v101), vmulq_f64(v102, v102)));
  v105 = fabs(vaddvq_f64(vmulq_f64(v101, v102)) / vmuld_lane_f64(v103.f64[0], v103, 1) + 1.0) < a13 && v103.f64[0] < v51 && v103.f64[1] < v51;
  v82 = a1;
  v84 = a26;
  if (v105)
  {
    v224 = v75;
    v230 = v74;
    swift_beginAccess();
    v126 = sub_1AAF7F798(0x20000000000001uLL);
    v127 = vcvtd_n_f64_u64(v126, 0x35uLL) * 0.06 + 0.72;
    if (v126 == 0x20000000000000)
    {
      v127 = 0.78;
    }

    v128.f64[0] = sub_1AAE62928(v72, v42 * v127 + a9, v70, v71, a25, a26, v39, a19, a20, a23, a24);
    v129 = v128;
    v128.f64[0] = NAN;
    v128.f64[1] = NAN;
    v130 = vcgtq_s64(vdupq_n_s64(0x7FF0000000000000uLL), vandq_s8(v129, vnegq_f64(v128)));
    if ((vandq_s8(vdupq_laneq_s64(v130, 1), v130).u64[0] & 0x8000000000000000) != 0)
    {
      v142 = sub_1AAF7FDC8(v254, v129, a12);
      v78 = a12;
      v145 = v144 < v51;
      if (fabs(v142 + 1.0) >= a13 || v143 >= v51)
      {
        v145 = 0;
      }

      v234 = v145;
      v80 = a15;
    }

    else
    {
      v234 = 0;
      v80 = a15;
      v78 = a12;
    }

    v44 = v248;
    v77 = v238;
    v74 = v230;
    v75 = v224;
  }

  else
  {
    v234 = 0;
    v80 = a15;
  }

LABEL_27:
  v85 = vcgtq_s64(v75, vandq_s8(v44, v74));
  v86 = vcgtq_s64(v75, vandq_s8(v78, v74));
  v87 = vmovn_s64(vcltzq_s64(vandq_s8(vzip1q_s64(v86, v85), vzip2q_s64(v86, v85))));
  v88 = v87;
  if (v48 < 0)
  {
    if ((v246 & 0x8000000000000000) == 0)
    {
      if ((v77 & 0x8000000000000000) == 0)
      {
        if (v87.i8[4])
        {
          v89 = a4;
          if (v82 >= v52)
          {
            if (v82 < a4)
            {
              v226 = 0;
              v113 = v82 >= v50 && v49;
              v229 = 1;
              v225 = 1;
              if (v113)
              {
                goto LABEL_131;
              }

              goto LABEL_130;
            }

            if (v82 >= v50)
            {
              v226 = 0;
              v115 = v236 == v80;
              goto LABEL_184;
            }
          }

          goto LABEL_39;
        }

        v89 = a4;
        if (v82 >= v52)
        {
          if (v82 < a4)
          {
            v225 = 0;
            v226 = 0;
            v114 = v82 >= v50 && v49;
            v229 = v87.i32[0];
            if (v114)
            {
              goto LABEL_131;
            }

            goto LABEL_130;
          }

          if (v82 >= v50)
          {
            v94 = v236 == v80;
LABEL_65:
            v95 = !v94;
            v225 = 0;
            if ((v95 | v49))
            {
              v229 = v87.i32[0];
              v226 = 0;
            }

            else
            {
              v229 = v87.i32[0];
              v226 = 0;
              if (v231)
              {
                goto LABEL_250;
              }
            }

            goto LABEL_131;
          }
        }

        goto LABEL_85;
      }

      if (v87.i8[4])
      {
        if (v82 < v52)
        {
          goto LABEL_123;
        }

        if (v82 >= a4)
        {
LABEL_74:
          if (v82 >= v50 || v48 < 0 == v246 < 0)
          {
            v229 = 1;
            v89 = a4;
            if (v236 == v80 && !v49)
            {
              v225 = 1;
              v226 = 1;
              if (v231)
              {
                goto LABEL_250;
              }

              goto LABEL_131;
            }

LABEL_246:
            v225 = 1;
            v226 = 1;
            goto LABEL_131;
          }

          goto LABEL_123;
        }

        goto LABEL_82;
      }

      if (v82 < v52)
      {
        goto LABEL_127;
      }

      if (v82 < a4)
      {
        if (!v49)
        {
          goto LABEL_127;
        }

        goto LABEL_171;
      }

LABEL_174:
      if (v82 >= v50)
      {
        if (v236 != v80)
        {
LABEL_204:
          v89 = a4;
LABEL_205:
          if (v246 < 0)
          {
            v225 = 1;
            v229 = v87.i32[0];
            v226 = 1;
            goto LABEL_253;
          }

          goto LABEL_206;
        }

        v89 = a4;
        v112 = v235;
        if (!v49)
        {
          if (v231)
          {
            v225 = 1;
            v229 = v87.i32[0];
            v226 = 1;
            goto LABEL_250;
          }

          goto LABEL_205;
        }

        if ((v246 & 0x8000000000000000) == 0)
        {
LABEL_206:
          v225 = 1;
          v229 = v87.i32[0];
          v226 = 1;
          goto LABEL_131;
        }

        v225 = 1;
        v229 = v87.i32[0];
      }

      else
      {
        if (v48 < 0 != v246 < 0)
        {
          goto LABEL_176;
        }

        v131 = v87.i32[0];
        if (v236 != v80)
        {
          goto LABEL_212;
        }

        v112 = v235;
        if (!v49)
        {
          v89 = a4;
          if (v231)
          {
            v225 = 1;
            v229 = v87.i32[0];
            v226 = 1;
            goto LABEL_250;
          }

          goto LABEL_213;
        }

        v89 = a4;
        if ((v246 & 0x8000000000000000) == 0)
        {
LABEL_214:
          v225 = 1;
          v229 = v131;
          v226 = 1;
          goto LABEL_131;
        }

        v225 = 1;
        v229 = v87.i32[0];
      }

      goto LABEL_203;
    }

    if ((v77 & 0x8000000000000000) == 0)
    {
      if ((v87.i8[4] & 1) == 0)
      {
        if (v82 < v52)
        {
          goto LABEL_125;
        }

        if (v82 < a4)
        {
          if (v49)
          {
            goto LABEL_163;
          }

          goto LABEL_125;
        }

LABEL_166:
        if (v82 >= v50)
        {
          if (v236 != v80)
          {
            goto LABEL_197;
          }

          v89 = a4;
          v112 = v235;
          if (!v49 && v231)
          {
            v225 = 0;
            v226 = 1;
            v229 = v87.i32[0];
            goto LABEL_250;
          }

          v225 = 0;
          v226 = 1;
          v229 = v87.i32[0];
        }

        else
        {
          if (v48 < 0 != v246 < 0)
          {
LABEL_168:
            v225 = 0;
            v226 = 1;
            v229 = v87.i32[0];
            goto LABEL_129;
          }

          v89 = a4;
          if (v236 != v80)
          {
            v225 = 0;
            v226 = 1;
            v229 = v87.i32[0];
            goto LABEL_253;
          }

          v112 = v235;
          if (!v49 && v231)
          {
            v225 = 0;
            v226 = 1;
            v229 = v87.i32[0];
            goto LABEL_250;
          }

          v225 = 0;
          v226 = 1;
          v229 = v87.i32[0];
        }

LABEL_263:
        if (a7)
        {
          goto LABEL_254;
        }

LABEL_264:
        swift_beginAccess();
        sub_1AADD9224();
        v172 = *(*(v69 + 16) + 16);
        sub_1AADD92C8(v172);
        v173 = v172;
        v89 = a4;
        v174 = sub_1AAF0AC28(v173, v251);
        nullsub_1(v174, v175);
        swift_endAccess();
        goto LABEL_265;
      }

LABEL_57:
      if (v82 < v52)
      {
        goto LABEL_123;
      }

      if (v82 < a4)
      {
        if (!v49 || v82 < v50 && v48 < 0 != v246 < 0)
        {
          goto LABEL_123;
        }

LABEL_181:
        v229 = 1;
        v225 = 1;
        v226 = 1;
        v89 = a4;
        goto LABEL_253;
      }

LABEL_121:
      if (v82 >= v50)
      {
        if (v236 != v80)
        {
          goto LABEL_181;
        }

        v89 = a4;
      }

      else
      {
        if (v48 < 0 != v246 < 0)
        {
          goto LABEL_123;
        }

        v89 = a4;
        if (v236 != v80)
        {
          goto LABEL_211;
        }
      }

      v112 = v235;
      if (!v49 && v231)
      {
        v229 = 1;
        v225 = 1;
        v226 = 1;
        goto LABEL_250;
      }

      v229 = 1;
      v225 = 1;
LABEL_203:
      v226 = 1;
      goto LABEL_263;
    }

    if (v87.i8[4])
    {
      if (v82 < v52)
      {
        goto LABEL_123;
      }

      if (v82 < a4)
      {
        if (v49)
        {
          goto LABEL_113;
        }

        goto LABEL_123;
      }

      goto LABEL_121;
    }

LABEL_117:
    if (v82 < v52)
    {
      goto LABEL_127;
    }

    if (v82 < a4)
    {
      if (!v49)
      {
        goto LABEL_127;
      }

LABEL_171:
      if (v82 < v50)
      {
        if (v48 < 0 == v246 < 0)
        {
          v131 = v87.i32[0];
LABEL_212:
          v89 = a4;
LABEL_213:
          if (v246 < 0)
          {
            v225 = 1;
            v229 = v131;
            v226 = 1;
            goto LABEL_253;
          }

          goto LABEL_214;
        }

LABEL_176:
        v225 = 1;
        v229 = v87.i32[0];
        goto LABEL_128;
      }

      goto LABEL_204;
    }

    goto LABEL_174;
  }

  if (v246 < 0)
  {
    if ((v77 & 0x8000000000000000) == 0)
    {
      if ((v87.i8[4] & 1) == 0)
      {
        if (v82 < v52)
        {
          goto LABEL_125;
        }

        if (v82 < a4)
        {
          if (v49)
          {
LABEL_163:
            if (v82 < v50)
            {
              if (v48 < 0 == v246 < 0)
              {
                v225 = 0;
                v226 = 1;
                v229 = v87.i32[0];
                v89 = a4;
                goto LABEL_253;
              }

              goto LABEL_168;
            }

LABEL_197:
            v225 = 0;
            v226 = 1;
            v229 = v87.i32[0];
            v89 = a4;
            goto LABEL_253;
          }

LABEL_125:
          v225 = 0;
          v226 = 1;
          v229 = v87.i32[0];
LABEL_129:
          v89 = a4;
LABEL_130:

          sub_1AAF81D60(v82 + 1, v68, v52, v89, v50, v69, a7 & 1, v72, v236, a10, v239, v251, a13, v51, v80, a16, *&a17, v39, v81, a20, *&v70, *&v71, a23, a24, *&v83, *&v84);

          if (v246 < 0)
          {
            goto LABEL_253;
          }

          goto LABEL_131;
        }

        goto LABEL_166;
      }

      goto LABEL_57;
    }

    if (v87.i8[4])
    {
      if (v82 < v52)
      {
        goto LABEL_123;
      }

      if (v82 >= a4)
      {
        goto LABEL_121;
      }

LABEL_82:
      if (v49)
      {
        goto LABEL_113;
      }

      goto LABEL_123;
    }

    goto LABEL_117;
  }

  if ((v77 & 0x8000000000000000) == 0)
  {
    if (v87.i8[4])
    {
      v89 = a4;
      if (v82 >= v52)
      {
        if (v82 < a4)
        {
          v226 = 0;
          v229 = 1;
          v225 = 1;
          if (((v236 == v80) & ~v49 & v231) != 0)
          {
            goto LABEL_250;
          }

LABEL_131:
          v106 = v50;
          swift_beginAccess();
          v107 = *(v69 + 16);
          if (sub_1AAE63884(v107))
          {

            sub_1AADD923C();
            v108 = *(*(v69 + 24) + 16);
            sub_1AADD92E0(v108);
            v109 = v108;
            v89 = a4;
            v110 = sub_1AAF0AC40(v109, v107);
            nullsub_1(v110, v111);
          }

          *(v69 + 16) = MEMORY[0x1E69E7CC0];
          swift_endAccess();

          v50 = v106;
          v68 = v250;
          v112 = v235;
          goto LABEL_265;
        }

        v226 = 0;
        v115 = v236 == v80;
LABEL_184:
        v132 = !v115;
        v229 = 1;
        if ((v132 | v49))
        {
          v225 = 1;
        }

        else
        {
          v225 = 1;
          if (v231)
          {
            goto LABEL_250;
          }
        }

        goto LABEL_131;
      }

LABEL_39:
      v226 = 0;
      v229 = 1;
      v225 = 1;
      goto LABEL_130;
    }

    v89 = a4;
    if (v82 >= v52)
    {
      v94 = v236 == v80;
      goto LABEL_65;
    }

LABEL_85:
    v225 = 0;
    v226 = 0;
    v229 = v87.i32[0];
    goto LABEL_130;
  }

  if (v87.i8[4])
  {
    if (v82 >= v52)
    {
      if (v82 < a4)
      {
        if (!v49)
        {
          v90 = v236 == v80 && v231;
          v229 = 1;
          v225 = 1;
          goto LABEL_90;
        }

LABEL_113:
        if (v82 >= v50 || v48 < 0 == v246 < 0)
        {
          v89 = a4;
          if ((v246 & 0x8000000000000000) == 0)
          {
            v229 = 1;
            goto LABEL_246;
          }

LABEL_211:
          v229 = 1;
          v225 = 1;
          v226 = 1;
          goto LABEL_253;
        }

        goto LABEL_123;
      }

      goto LABEL_74;
    }

LABEL_123:
    v229 = 1;
    v225 = 1;
LABEL_128:
    v226 = 1;
    goto LABEL_129;
  }

  if (v82 < v52)
  {
LABEL_127:
    v225 = 1;
    v229 = v87.i32[0];
    goto LABEL_128;
  }

  if (v82 >= a4)
  {
    goto LABEL_174;
  }

  if (v49)
  {
    goto LABEL_171;
  }

  v90 = v236 == v80 && v231;
  v225 = 1;
  v229 = v87.i32[0];
LABEL_90:
  v226 = 1;
  v89 = a4;
  if (!v90)
  {
    goto LABEL_131;
  }

LABEL_250:
  v147 = v50;
  swift_beginAccess();
  v148 = *(v69 + 16);
  if (sub_1AAE63884(v148))
  {

    sub_1AADD923C();
    v149 = *(*(v69 + 24) + 16);
    sub_1AADD92E0(v149);
    v150 = v149;
    v89 = a4;
    v151 = sub_1AAF0AC40(v150, v148);
    nullsub_1(v151, v152);
  }

  *(v69 + 16) = MEMORY[0x1E69E7CC0];
  swift_endAccess();

  v50 = v147;
  v68 = v250;
  if ((v246 & 0x8000000000000000) == 0)
  {
    goto LABEL_131;
  }

LABEL_253:
  v112 = v235;
  if ((a7 & 1) == 0)
  {
    goto LABEL_264;
  }

LABEL_254:
  v153 = v50;
  swift_beginAccess();
  v154 = *(v69 + 16);
  if (sub_1AAE63884(v154) > 1)
  {
    result = sub_1AAE63884(v154);
    v156 = result - 2;
    if (__OFSUB__(result, 2))
    {
LABEL_316:
      __break(1u);
      goto LABEL_317;
    }

    sub_1AAE9BFE8(result - 2, 1, v154);
    v242 = *(v154 + 32 + 16 * v156);
    result = sub_1AAE63884(v154);
    v157 = result - 1;
    if (__OFSUB__(result, 1))
    {
LABEL_317:
      __break(1u);
      goto LABEL_318;
    }

    sub_1AAE9BFE8(result - 1, 1, v154);
    v158 = *(v154 + 32 + 16 * v157);
    v159 = vsubq_f64(v242, v158);
    v160 = vsubq_f64(v251, v158);
    v161 = vmulq_f64(v159, v160);
    v162 = vzip1q_s64(v159, v160);
    v163 = vzip2q_s64(v159, v160);
    v164 = vsqrtq_f64(vaddq_f64(vmulq_f64(v162, v162), vmulq_f64(v163, v163)));
    v153 = a5;
    v82 = a1;
    if (fabs(vdivq_f64(vaddq_f64(v161, vdupq_laneq_s64(v161, 1)), vmulq_laneq_f64(v164, v164, 1)).f64[0] + 1.0) > a17)
    {
      swift_beginAccess();
      if (sub_1AAE63884(v154))
      {

        sub_1AADD923C();
        v165 = *(*(v69 + 24) + 16);
        sub_1AADD92E0(v165);
        v166 = v165;
        v89 = a4;
        v167 = sub_1AAF0AC40(v166, v154);
        nullsub_1(v167, v168);
      }

      *(v69 + 16) = MEMORY[0x1E69E7CC0];
      swift_endAccess();
    }
  }

  swift_beginAccess();
  sub_1AADD9224();
  v169 = *(*(v69 + 16) + 16);
  sub_1AADD92C8(v169);
  v170 = sub_1AAF0AC28(v169, v251);
  nullsub_1(v170, v171);
  swift_endAccess();
  v50 = v153;
  v68 = v250;
LABEL_265:
  if (v82 < v52 || v82 < v89 && (!v227 || !v231) && v226 == 1 || v82 < v50 && v246 < 0 != v238 < 0)
  {

    LOBYTE(v222) = a24;
    LOBYTE(v221) = a20;
    sub_1AAF81D60(v82 + 1, v68, v52, v89, v50, v69, a7 & 1, v72, v239, v251, v240, v254, a13, v51, v80, a16, *&a17, v39, v81, v221, *&v70, *&v71, a23, v222, *&v83, *&v84);
  }

  v176 = v50;
  if (v238 < 0)
  {
    if (a7)
    {
      swift_beginAccess();
      v182 = *(v69 + 16);
      if (sub_1AAE63884(v182) >= 2)
      {
        result = sub_1AAE63884(v182);
        v183 = result - 2;
        if (__OFSUB__(result, 2))
        {
LABEL_318:
          __break(1u);
          goto LABEL_319;
        }

        sub_1AAE9BFE8(result - 2, 1, v182);
        v252 = *(v182 + 32 + 16 * v183);
        result = sub_1AAE63884(v182);
        v184 = result - 1;
        if (__OFSUB__(result, 1))
        {
LABEL_319:
          __break(1u);
          return result;
        }

        sub_1AAE9BFE8(result - 1, 1, v182);
        v185 = *(v182 + 32 + 16 * v184);
        v186 = vsubq_f64(v252, v185);
        v187 = vsubq_f64(v254, v185);
        v188 = vmulq_f64(v186, v187);
        v189 = vzip1q_s64(v186, v187);
        v190 = vzip2q_s64(v186, v187);
        v191 = vsqrtq_f64(vaddq_f64(vmulq_f64(v189, v189), vmulq_f64(v190, v190)));
        v176 = a5;
        v82 = a1;
        if (fabs(vdivq_f64(vaddq_f64(v188, vdupq_laneq_s64(v188, 1)), vmulq_laneq_f64(v191, v191, 1)).f64[0] + 1.0) > a17)
        {
          swift_beginAccess();
          if (sub_1AAE63884(v182))
          {

            sub_1AADD923C();
            v192 = *(*(v69 + 24) + 16);
            sub_1AADD92E0(v192);
            v193 = v192;
            v89 = a4;
            v194 = sub_1AAF0AC40(v193, v182);
            nullsub_1(v194, v195);
          }

          *(v69 + 16) = MEMORY[0x1E69E7CC0];
          swift_endAccess();
        }
      }
    }

    swift_beginAccess();
    sub_1AADD9224();
    v196 = *(*(v69 + 16) + 16);
    sub_1AADD92C8(v196);
    v197 = sub_1AAF0AC28(v196, v254);
    nullsub_1(v197, v198);
    swift_endAccess();
  }

  else
  {
    swift_beginAccess();
    v177 = *(v69 + 16);
    if (sub_1AAE63884(v177))
    {

      sub_1AADD923C();
      v178 = *(*(v69 + 24) + 16);
      sub_1AADD92E0(v178);
      v179 = v178;
      v89 = a4;
      v180 = sub_1AAF0AC40(v179, v177);
      nullsub_1(v180, v181);
    }

    *(v69 + 16) = MEMORY[0x1E69E7CC0];
    swift_endAccess();
  }

  if (v82 < v52 || v82 < v89 && (!v231 || !v234) && v225 == 1 || v82 < v176 && (((v238 < 0) ^ v88.i32[1]) & 1) != 0)
  {

    LOBYTE(v222) = a24;
    LOBYTE(v221) = a20;
    sub_1AAF81D60(v82 + 1, v250, v52, v89, v176, v69, a7 & 1, v72, v240, v254, v112, v248, a13, v51, v80, a16, *&a17, v39, v81, v221, *&v70, *&v71, a23, v222, *&v83, *&v84);
  }

  if ((v88.i8[4] & 1) == 0)
  {
    swift_beginAccess();
    v213 = *(v69 + 16);
    if (sub_1AAE63884(v213))
    {

      sub_1AADD923C();
      v214 = *(*(v69 + 24) + 16);
      sub_1AADD92E0(v214);
      v215 = v214;
      v89 = a4;
      v216 = sub_1AAF0AC40(v215, v213);
      nullsub_1(v216, v217);
    }

    *(v69 + 16) = MEMORY[0x1E69E7CC0];
    swift_endAccess();

    goto LABEL_306;
  }

  if (a7)
  {
    swift_beginAccess();
    v199 = *(v69 + 16);
    if (sub_1AAE63884(v199) >= 2)
    {
      result = sub_1AAE63884(v199);
      v200 = result - 2;
      if (__OFSUB__(result, 2))
      {
        __break(1u);
      }

      else
      {
        sub_1AAE9BFE8(result - 2, 1, v199);
        v255 = *(v199 + 32 + 16 * v200);
        result = sub_1AAE63884(v199);
        v201 = result - 1;
        if (!__OFSUB__(result, 1))
        {
          sub_1AAE9BFE8(result - 1, 1, v199);
          v202 = *(v199 + 32 + 16 * v201);
          v203 = vsubq_f64(v255, v202);
          v204 = vsubq_f64(v248, v202);
          v205 = vmulq_f64(v203, v204);
          v206 = vzip1q_s64(v203, v204);
          v207 = vzip2q_s64(v203, v204);
          v208 = vsqrtq_f64(vaddq_f64(vmulq_f64(v206, v206), vmulq_f64(v207, v207)));
          v89 = a4;
          if (fabs(vdivq_f64(vaddq_f64(v205, vdupq_laneq_s64(v205, 1)), vmulq_laneq_f64(v208, v208, 1)).f64[0] + 1.0) > a17)
          {
            swift_beginAccess();
            if (sub_1AAE63884(v199))
            {

              sub_1AADD923C();
              v209 = *(*(v69 + 24) + 16);
              sub_1AADD92E0(v209);
              v210 = v209;
              v89 = a4;
              v211 = sub_1AAF0AC40(v210, v199);
              nullsub_1(v211, v212);
            }

            *(v69 + 16) = MEMORY[0x1E69E7CC0];
            swift_endAccess();
          }

          goto LABEL_305;
        }
      }

      __break(1u);
      goto LABEL_316;
    }
  }

LABEL_305:
  swift_beginAccess();
  sub_1AADD9224();
  v218 = *(*(v69 + 16) + 16);
  sub_1AADD92C8(v218);
  v219 = sub_1AAF0AC28(v218, v248);
  nullsub_1(v219, v220);
  swift_endAccess();
LABEL_306:
  if (a1 < v52 || a1 < v89 && !v234 && ((v229 ^ 1) & 1) == 0 || a1 < a5 && ((v88.i32[0] ^ v88.i32[1]) & 1) != 0)
  {

    LOBYTE(v222) = a24;
    LOBYTE(v221) = a20;
    sub_1AAF81D60(a1 + 1, v250, v52, v89, a5, v69, a7 & 1, v72, v112, v248, v232, a12, a13, v51, v80, a16, *&a17, v39, v81, v221, *&v70, *&v71, a23, v222, *&v83, *&v84);
  }
}

void *sub_1AAF83960(uint64_t a1, uint64_t a2, int a3, char *a4, uint64_t a5, void *a6, char a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, char a15)
{
  v87 = a8;
  v94 = a3;
  v88 = a1;
  v26 = sub_1AAF8D7E4();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = qword_1ED9B59F0;
  v96 = a5;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = qword_1ED9C36C8;
  sub_1AAF8FE04();
  sub_1AAF8D7D4();
  sub_1AAF8D7C4();

  v32 = *(v27 + 8);
  v89 = v29;
  v33 = v26;
  v92 = v27 + 8;
  v91 = v32;
  v32(v29, v26);
  v34 = swift_allocObject();
  v35 = MEMORY[0x1E69E7CC0];
  *(v34 + 16) = MEMORY[0x1E69E7CC0];
  v36 = (v34 + 16);
  *(v34 + 24) = v35;
  v90 = swift_allocObject();
  *(v90 + 16) = 0x78ABBF7B5AEAE776;
  if (__OFADD__(a2, 4))
  {
    __break(1u);
LABEL_41:
    a6 = sub_1AAD6958C(0, a6[2] + 1, 1, a6);
    goto LABEL_35;
  }

  v85 = a2 + 4;
  v86 = a2;
  v37 = a4;
  v38 = (a4)(a9);
  v40 = v39;
  v41 = a6;
  v42 = a6;
  v43 = a7;
  *v44.i64 = sub_1AAF424D8(v42, a7, v38, a11, a12);
  v97 = v44;
  v45 = v87;
  v46 = sub_1AAF424D8(v87, a15, v40, a13, a14);
  v47.i64[0] = v97.i64[0];
  *&v47.i64[1] = v46;
  v97 = v47;
  v48 = v37(a10);
  v50 = v49;
  *&v51 = sub_1AAF424D8(v41, v43, v48, a11, a12);
  v93 = v51;
  v52.f64[0] = sub_1AAF424D8(v45, a15, v50, a13, a14);
  v53.i64[0] = v93;
  v84 = v52;
  v53.i64[1] = *&v52.f64[0];
  v95 = v53;
  v52.f64[0] = NAN;
  v52.f64[1] = NAN;
  v54 = vcgtq_s64(vdupq_n_s64(0x7FF0000000000000uLL), vandq_s8(v97, vnegq_f64(v52)));
  if ((vandq_s8(vdupq_laneq_s64(v54, 1), v54).u64[0] & 0x8000000000000000) != 0)
  {
    v83 = v26;
    swift_beginAccess();
    v55 = sub_1AAD6945C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v57 = *(v55 + 2);
    v56 = *(v55 + 3);
    if (v57 >= v56 >> 1)
    {
      v55 = sub_1AAD6945C((v56 > 1), v57 + 1, 1, v55);
    }

    *(v55 + 2) = v57 + 1;
    *&v55[16 * v57 + 32] = v97;
    *v36 = v55;
    swift_endAccess();
    v33 = v83;
  }

  else
  {
    swift_beginAccess();
    *v36 = MEMORY[0x1E69E7CC0];
  }

  v58 = v96;

  v81 = v41;
  v59 = v94;
  sub_1AAF81D60(1, v90, v88, v86, v85, v34, v94 & 1, v37, a9, v97, a10, v95, 0.00137046525, 20.0, a9, a10, 0.190983006, v58, v81, v43, a11, a12, v45, a15, a13, a14);

  v60.f64[0] = NAN;
  v60.f64[1] = NAN;
  v61 = vcgtq_s64(vdupq_n_s64(0x7FF0000000000000uLL), vandq_s8(v95, vnegq_f64(v60)));
  if ((vandq_s8(vdupq_laneq_s64(v61, 1), v61).u64[0] & 0x8000000000000000) != 0)
  {
    v26 = v89;
    if (v59)
    {
      swift_beginAccess();
      a4 = *v36;
      v66 = *v36 + 16;
      if (*v66 >= 2uLL)
      {
        v67 = 2 * *v66;
        v68 = *&v66[v67];
        v69 = vsubq_f64(*&a4[v67 * 8], v68);
        if (fabs(((*&v93 - v68.f64[0]) * v69.f64[0] + vmuld_lane_f64(v84.f64[0] - *&v66[v67 + 1], v69, 1)) / (sqrt(vaddvq_f64(vmulq_f64(v69, v69))) * sqrt((*&v93 - v68.f64[0]) * (*&v93 - v68.f64[0]) + (v84.f64[0] - *&v66[v67 + 1]) * (v84.f64[0] - *&v66[v67 + 1]))) + 1.0) > 0.190983006)
        {
          swift_beginAccess();
          v70 = *(v34 + 24);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v70 = sub_1AAD6958C(0, v70[2] + 1, 1, v70);
          }

          v72 = v70[2];
          v71 = v70[3];
          if (v72 >= v71 >> 1)
          {
            v70 = sub_1AAD6958C((v71 > 1), v72 + 1, 1, v70);
          }

          v70[2] = v72 + 1;
          v70[v72 + 4] = a4;

          *(v34 + 24) = v70;
          a4 = MEMORY[0x1E69E7CC0];
          *(v34 + 16) = MEMORY[0x1E69E7CC0];
          swift_endAccess();
        }
      }

      swift_beginAccess();
    }

    else
    {
      swift_beginAccess();
      a4 = *v36;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a4 = sub_1AAD6945C(0, *(a4 + 2) + 1, 1, a4);
    }

    v74 = *(a4 + 2);
    v73 = *(a4 + 3);
    v75 = v95;
    if (v74 >= v73 >> 1)
    {
      v80 = sub_1AAD6945C((v73 > 1), v74 + 1, 1, a4);
      v75 = v95;
      a4 = v80;
    }

    *(a4 + 2) = v74 + 1;
    *&a4[16 * v74 + 32] = v75;
  }

  else
  {
    swift_beginAccess();
    v62 = *v36;
    v26 = v89;
    if (*(*v36 + 2))
    {
      v63 = *(v34 + 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = sub_1AAD6958C(0, v63[2] + 1, 1, v63);
      }

      v65 = v63[2];
      v64 = v63[3];
      if (v65 >= v64 >> 1)
      {
        v63 = sub_1AAD6958C((v64 > 1), v65 + 1, 1, v63);
      }

      v63[2] = v65 + 1;
      v63[v65 + 4] = v62;

      *(v34 + 24) = v63;
    }

    else
    {
    }

    a4 = MEMORY[0x1E69E7CC0];
  }

  *v36 = a4;
  swift_endAccess();
  swift_beginAccess();
  if (!*(a4 + 2))
  {

    a6 = *(v34 + 24);
    goto LABEL_39;
  }

  a6 = *(v34 + 24);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_35:
  v77 = a6[2];
  v76 = a6[3];
  if (v77 >= v76 >> 1)
  {
    a6 = sub_1AAD6958C((v76 > 1), v77 + 1, 1, a6);
  }

  a6[2] = v77 + 1;
  a6[v77 + 4] = a4;

  *(v34 + 24) = a6;
LABEL_39:
  *(v34 + 16) = MEMORY[0x1E69E7CC0];
  swift_endAccess();

  v78 = qword_1ED9C36C8;
  sub_1AAF8FDF4();
  sub_1AAF8D7D4();
  sub_1AAF8D7C4();

  v91(v26, v33);

  return a6;
}

char *sub_1AAF84258(char *result, char a2, uint64_t a3, char a4, double (*a5)(double), double a6, double a7)
{
  v54 = result;
  v7 = a7 - a6;
  if (COERCE__INT64(fabs(a7 - a6)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_80;
  }

  v11 = 0;
  v12 = v7 / 12300.0;
  v56 = MEMORY[0x1E69E7CC0];
  v13 = 0x78ABBF7B5AEAE776;
  do
  {
    v15 = v13 - 0x61C8864680B583EBLL;
    v16 = 0xBF58476D1CE4E5B9 * ((v13 - 0x61C8864680B583EBLL) ^ ((v13 - 0x61C8864680B583EBLL) >> 30));
    v17 = (0x94D049BB133111EBLL * (v16 ^ (v16 >> 27))) ^ ((0x94D049BB133111EBLL * (v16 ^ (v16 >> 27))) >> 31);
    if (0x20000000000001 * v17 >= 0x1FFFFFFFFFF801)
    {
      v21 = (v17 * 0x20000000000001uLL) >> 64;
    }

    else
    {
      v18 = v13 + 0x3C6EF372FE94F82ALL;
      do
      {
        v15 -= 0x61C8864680B583EBLL;
        v19 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v18 ^ (v18 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v18 ^ (v18 >> 30))) >> 27));
        v20 = v19 ^ (v19 >> 31);
        v18 -= 0x61C8864680B583EBLL;
      }

      while (0x20000000000001 * v20 < 0x1FFFFFFFFFF801);
      v21 = (v20 * 0x20000000000001uLL) >> 64;
    }

    v13 = v15;
    v22 = v7 * vcvtd_n_f64_u64(v21, 0x35uLL) + a6;
    if (v21 == 0x20000000000000)
    {
      v23 = a7;
    }

    else
    {
      v23 = v22;
    }

    v24 = a5(v23);
    v25 = a5(v12 + v23);
    v26 = (v25 - a5(v23 - v12)) / (v12 + v12);
    v27 = COERCE__INT64(fabs(v26)) > 0x7FEFFFFFFFFFFFFFLL;
    if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && !v27)
    {
      v28 = v56;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1AAD690CC(0, *(v56 + 2) + 1, 1, v56);
      }

      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      v56 = v28;
      if (v30 >= v29 >> 1)
      {
        v56 = sub_1AAD690CC((v29 > 1), v30 + 1, 1, v28);
      }

      *(v56 + 2) = v30 + 1;
      v14 = &v56[16 * v30];
      *(v14 + 4) = v24;
      *(v14 + 5) = v26;
    }

    ++v11;
  }

  while (v11 != 200);
  v57 = v56;
  if (*(v56 + 2) <= 1uLL)
  {
  }

  sub_1AAF7F0D4(&v57);
  result = v57;
  v31 = *(v57 + 2);
  if (!v31)
  {
    goto LABEL_81;
  }

  v32 = a7;
  v33 = a6;
  v34 = v31 - 1;
  if (v31 == 1)
  {
LABEL_36:

    if (v54)
    {
      if (v32 <= 0.0 || v33 >= 0.0)
      {
        v40 = a2;
        if (v32 <= 0.0 || v33 < 0.0 || v33 >= v32 * 0.5)
        {
          if (v32 <= 0.0 && v33 < 0.0 && v33 * 0.5 < v32)
          {
            v32 = -v33;
          }
        }

        else
        {
          v33 = -v32;
        }

LABEL_44:
        if ((v40 & 1) == 0)
        {
          goto LABEL_63;
        }

        v41 = (v32 - v33) / v7;
        if (v41 > 0.1 && v41 < 1.2)
        {
          if (a4)
          {
            if (v33 == 0.0)
            {
LABEL_62:
              v32 = v7;
LABEL_63:
              v46 = v33 > v32;
              if (v33 >= v32)
              {
                return result;
              }

              goto LABEL_64;
            }

LABEL_58:
            if (v32 == 0.0)
            {
              v46 = -v7 > v32;
              if (-v7 >= v32)
              {
                return result;
              }
            }

            else
            {
              v49 = (v32 + v33) * 0.5;
              v50 = v49 - v7 * 0.5;
              v51 = v49 + v7 * 0.5;
              v46 = v50 > v51;
              if (v50 >= v51)
              {
                return result;
              }
            }

            goto LABEL_64;
          }
        }

        else if (a4)
        {
          v43 = (v32 - v33) * 0.05;
          v44 = v33 - v43;
          v45 = v32 + v43;
          v46 = v44 > v45;
          if (v44 >= v45)
          {
            return result;
          }

LABEL_64:
          if (v46)
          {
            goto LABEL_82;
          }

          return result;
        }

        v7 = v7 / *&a3;
        if (v33 == 0.0)
        {
          goto LABEL_62;
        }

        goto LABEL_58;
      }

      if (fabs(v32 / (v32 - v33) + -0.5) < 0.15)
      {
        if (v32 < -v33)
        {
          v32 = -v33;
        }

        v33 = -v32;
      }
    }

    v40 = a2;
    goto LABEL_44;
  }

  v35 = 0;
  v36 = v57 + 32;
  v37 = (v57 + 32);
  while (1)
  {
    v33 = *v37;
    v32 = *&v36[16 * v34];
    v38 = (v32 - *v37) / v7;
    if (v38 > 100000000.0)
    {
      ++v35;
LABEL_31:
      --v34;
      goto LABEL_32;
    }

    if (v35 >= v31)
    {
      goto LABEL_79;
    }

    v39 = &v36[16 * v34];
    if (fabs(*&v36[16 * v35 + 8]) / v38 <= 10.0)
    {
      if (fabs(*(v39 + 1)) / v38 <= 10.0)
      {
        goto LABEL_36;
      }

      goto LABEL_31;
    }

    ++v35;
    if (fabs(*(v39 + 1)) / v38 > 10.0)
    {
      goto LABEL_31;
    }

LABEL_32:
    if (v35 >= v31)
    {
      break;
    }

    if (v34 >= v31)
    {
      goto LABEL_78;
    }

    v37 = &v36[16 * v35];
    if (v35 >= v34)
    {
      v32 = a7;
      v33 = a6;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
  return result;
}

char *sub_1AAF84760(char *result, char a2, uint64_t a3, char a4, uint64_t (*a5)(double), double a6, double a7)
{
  v60 = result;
  v7 = a7 - a6;
  if (COERCE__INT64(fabs(a7 - a6)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_80;
  }

  v11 = 0;
  v12 = v7 / 12300.0;
  v62 = MEMORY[0x1E69E7CC0];
  v13 = 0x78ABBF7B5AEAE776;
  do
  {
    v15 = v13 - 0x61C8864680B583EBLL;
    v16 = 0xBF58476D1CE4E5B9 * ((v13 - 0x61C8864680B583EBLL) ^ ((v13 - 0x61C8864680B583EBLL) >> 30));
    v17 = (0x94D049BB133111EBLL * (v16 ^ (v16 >> 27))) ^ ((0x94D049BB133111EBLL * (v16 ^ (v16 >> 27))) >> 31);
    if (0x20000000000001 * v17 >= 0x1FFFFFFFFFF801)
    {
      v21 = (v17 * 0x20000000000001uLL) >> 64;
    }

    else
    {
      v18 = v13 + 0x3C6EF372FE94F82ALL;
      do
      {
        v15 -= 0x61C8864680B583EBLL;
        v19 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v18 ^ (v18 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v18 ^ (v18 >> 30))) >> 27));
        v20 = v19 ^ (v19 >> 31);
        v18 -= 0x61C8864680B583EBLL;
      }

      while (0x20000000000001 * v20 < 0x1FFFFFFFFFF801);
      v21 = (v20 * 0x20000000000001uLL) >> 64;
    }

    v13 = v15;
    v22 = v7 * vcvtd_n_f64_u64(v21, 0x35uLL) + a6;
    if (v21 == 0x20000000000000)
    {
      v23 = a7;
    }

    else
    {
      v23 = v22;
    }

    v24 = a5(v23);
    v26 = v25;
    v27 = v25;
    v28 = (a5)(v24, v12 + v23);
    v30 = v29;
    (a5)(v28, v23 - v12);
    v32 = (v30 - v31) / (v12 + v12);
    v33 = COERCE__INT64(fabs(v32)) > 0x7FEFFFFFFFFFFFFFLL;
    if ((v27 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && !v33)
    {
      v34 = v62;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1AAD690CC(0, *(v62 + 2) + 1, 1, v62);
      }

      v36 = *(v34 + 2);
      v35 = *(v34 + 3);
      v62 = v34;
      if (v36 >= v35 >> 1)
      {
        v62 = sub_1AAD690CC((v35 > 1), v36 + 1, 1, v34);
      }

      *(v62 + 2) = v36 + 1;
      v14 = &v62[16 * v36];
      *(v14 + 4) = v26;
      *(v14 + 5) = v32;
    }

    ++v11;
  }

  while (v11 != 200);
  v63 = v62;
  if (*(v62 + 2) <= 1uLL)
  {
  }

  sub_1AAF7F0D4(&v63);
  result = v63;
  v37 = *(v63 + 2);
  if (!v37)
  {
    goto LABEL_81;
  }

  v38 = a7;
  v39 = a6;
  v40 = v37 - 1;
  if (v37 == 1)
  {
LABEL_36:

    if (v60)
    {
      if (v38 <= 0.0 || v39 >= 0.0)
      {
        v46 = a2;
        if (v38 <= 0.0 || v39 < 0.0 || v39 >= v38 * 0.5)
        {
          if (v38 <= 0.0 && v39 < 0.0 && v39 * 0.5 < v38)
          {
            v38 = -v39;
          }
        }

        else
        {
          v39 = -v38;
        }

LABEL_44:
        if ((v46 & 1) == 0)
        {
          goto LABEL_63;
        }

        v47 = (v38 - v39) / v7;
        if (v47 > 0.1 && v47 < 1.2)
        {
          if (a4)
          {
            if (v39 == 0.0)
            {
LABEL_62:
              v38 = v7;
LABEL_63:
              v52 = v39 > v38;
              if (v39 >= v38)
              {
                return result;
              }

              goto LABEL_64;
            }

LABEL_58:
            if (v38 == 0.0)
            {
              v52 = -v7 > v38;
              if (-v7 >= v38)
              {
                return result;
              }
            }

            else
            {
              v55 = (v38 + v39) * 0.5;
              v56 = v55 - v7 * 0.5;
              v57 = v55 + v7 * 0.5;
              v52 = v56 > v57;
              if (v56 >= v57)
              {
                return result;
              }
            }

            goto LABEL_64;
          }
        }

        else if (a4)
        {
          v49 = (v38 - v39) * 0.05;
          v50 = v39 - v49;
          v51 = v38 + v49;
          v52 = v50 > v51;
          if (v50 >= v51)
          {
            return result;
          }

LABEL_64:
          if (v52)
          {
            goto LABEL_82;
          }

          return result;
        }

        v7 = v7 / *&a3;
        if (v39 == 0.0)
        {
          goto LABEL_62;
        }

        goto LABEL_58;
      }

      if (fabs(v38 / (v38 - v39) + -0.5) < 0.15)
      {
        if (v38 < -v39)
        {
          v38 = -v39;
        }

        v39 = -v38;
      }
    }

    v46 = a2;
    goto LABEL_44;
  }

  v41 = 0;
  v42 = v63 + 32;
  v43 = (v63 + 32);
  while (1)
  {
    v39 = *v43;
    v38 = *&v42[16 * v40];
    v44 = (v38 - *v43) / v7;
    if (v44 > 100000000.0)
    {
      ++v41;
LABEL_31:
      --v40;
      goto LABEL_32;
    }

    if (v41 >= v37)
    {
      goto LABEL_79;
    }

    v45 = &v42[16 * v40];
    if (fabs(*&v42[16 * v41 + 8]) / v44 <= 10.0)
    {
      if (fabs(*(v45 + 1)) / v44 <= 10.0)
      {
        goto LABEL_36;
      }

      goto LABEL_31;
    }

    ++v41;
    if (fabs(*(v45 + 1)) / v44 > 10.0)
    {
      goto LABEL_31;
    }

LABEL_32:
    if (v41 >= v37)
    {
      break;
    }

    if (v40 >= v37)
    {
      goto LABEL_78;
    }

    v43 = &v42[16 * v41];
    if (v41 >= v40)
    {
      v38 = a7;
      v39 = a6;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
  return result;
}

uint64_t sub_1AAF84C68(double (*a1)(double), double a2)
{
  v4 = 0;
  v5 = a2 + a2;
  v6 = a2 * 3.0;
  while (1)
  {
    v7 = *(&unk_1F1FCEEA8 + v4 + 32);
    v8 = a1(v7 + a2);
    if (vabdd_f64(v8, a1(v7)) >= 0.000001)
    {
      break;
    }

    v9 = a1(v7 + v5);
    if (vabdd_f64(v9, a1(v7)) >= 0.000001)
    {
      break;
    }

    v10 = a1(v7 + v6);
    if (vabdd_f64(v10, a1(v7)) >= 0.000001)
    {
      break;
    }

    v11 = a1(v7 + a2 * 4.0);
    if (vabdd_f64(v11, a1(v7)) >= 0.000001)
    {
      break;
    }

    v4 += 8;
    if (v4 == 32)
    {
      return 1;
    }
  }

  return 0;
}

void sub_1AAF84DA0(double (*a1)(double), double a2, double a3, uint64_t a4, uint64_t a5)
{
  v5 = a5 - 1;
  if (__OFSUB__(a5, 1))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v25 = v5;
  __x = a3 / a2;
  v24 = pow(a3 / a2, 2.0 / v5);
  if (a5 < 0)
  {
LABEL_27:
    __break(1u);
    return;
  }

  if (a5)
  {
    for (i = 0; i != a5; ++i)
    {
      v10 = pow(__x, i / v25) * a2;
      v11 = v10 / v24;
      v12 = v24 * v10;
      if (v10 / v24 > v24 * v10)
      {
        __break(1u);
        goto LABEL_26;
      }

      v13 = a1(v11 + 0.292048924);
      v14 = a1(0.292048924);
      if (vabdd_f64(v13, v14) >= 1.0e-10)
      {
        v15 = a1(v12 + 0.292048924);
        v16 = a1(0.292048924);
        if (vabdd_f64(v15, v16) >= 1.0e-10)
        {
          v17 = v13 - v14;
          if (v17 * (v15 - v16) >= 0.0)
          {
            continue;
          }

          v18 = 40;
          while (1)
          {
            v19 = (v12 + v11) * 0.5;
            v20 = a1(v19 + 0.292048924);
            v21 = a1(0.292048924);
            if (vabdd_f64(v20, v21) < 1.0e-10)
            {
              break;
            }

            v22 = v20 - v21;
            v23 = v17 * v22 < 0.0;
            if (v17 * v22 < 0.0)
            {
              v12 = (v12 + v11) * 0.5;
            }

            else
            {
              v17 = v22;
            }

            if (!v23)
            {
              v11 = v19;
            }

            if (!--v18)
            {
              goto LABEL_5;
            }
          }

          v11 = (v12 + v11) * 0.5;
        }

        else
        {
          v11 = v12;
        }
      }

      if ((sub_1AAF84C68(a1, v11) & 1) != 0 && (sub_1AAF84C68(a1, v11 * 0.5) & 1) == 0)
      {
        return;
      }

LABEL_5:
      ;
    }
  }
}

uint64_t sub_1AAF84F9C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 < 2 || v2 != *(a2 + 16))
  {
    goto LABEL_62;
  }

  if (v2 < 4)
  {
    v4 = 0;
    v5 = 0.0;
LABEL_11:
    v8 = v2 - v4;
    v9 = (result + 8 * v4 + 32);
    do
    {
      v10 = *v9++;
      v5 = v5 + v10;
      --v8;
    }

    while (v8);
    goto LABEL_13;
  }

  v4 = v2 & 0x7FFFFFFFFFFFFFFCLL;
  v6 = (result + 48);
  v5 = 0.0;
  v7 = v2 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v5 = v5 + *(v6 - 2) + *(v6 - 1) + *v6 + v6[1];
    v6 += 4;
    v7 -= 4;
  }

  while (v7);
  if (v2 != v4)
  {
    goto LABEL_11;
  }

LABEL_13:
  v11 = v2;
  if (v2 > 3)
  {
    v12 = v2 & 0x7FFFFFFFFFFFFFFCLL;
    v14 = (a2 + 48);
    v13 = 0.0;
    v15 = v2 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v13 = v13 + *(v14 - 2) + *(v14 - 1) + *v14 + v14[1];
      v14 += 4;
      v15 -= 4;
    }

    while (v15);
    if (v2 == v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0.0;
  }

  v16 = v2 - v12;
  v17 = (a2 + 8 * v12 + 32);
  do
  {
    v18 = *v17++;
    v13 = v13 + v18;
    --v16;
  }

  while (v16);
LABEL_20:
  v19 = (result + 32);
  v20 = (a2 + 32);
  v21 = MEMORY[0x1E69E7CC0];
  v66 = MEMORY[0x1E69E7CC0];
  v22 = v5 / v11;
  sub_1AACEF664(0, v2, 0);
  v23 = 0;
  v24 = v66;
  v25 = *(v66 + 16);
  v26 = v25;
  do
  {
    v27 = v19[v23];
    v67 = v24;
    v28 = *(v24 + 24);
    v29 = v26 + 1;
    if (v26 >= v28 >> 1)
    {
      sub_1AACEF664((v28 > 1), v26 + 1, 1);
      v24 = v67;
    }

    ++v23;
    *(v24 + 16) = v29;
    *(v24 + 8 * v26++ + 32) = (v27 - v22) * (v27 - v22);
  }

  while (v2 != v23);
  v30 = v2 + v25;
  if (v2 + v25 <= 3)
  {
    v31 = 0;
    v32 = 0.0;
LABEL_29:
    v35 = v29 - v31;
    v36 = (v24 + 8 * v31 + 32);
    do
    {
      v37 = *v36++;
      v32 = v32 + v37;
      --v35;
    }

    while (v35);
    goto LABEL_31;
  }

  v31 = v30 & 0xFFFFFFFFFFFFFFFCLL;
  v33 = (v24 + 48);
  v32 = 0.0;
  v34 = v30 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v32 = v32 + *(v33 - 2) + *(v33 - 1) + *v33 + v33[1];
    v33 += 4;
    v34 -= 4;
  }

  while (v34);
  if (v30 != v31)
  {
    goto LABEL_29;
  }

LABEL_31:

  v38 = v13 / v11;
  sub_1AACEF664(0, v2, 0);
  v39 = 0;
  result = v21;
  while (v2 != v39)
  {
    v40 = v19[v39];
    v41 = v20[v39];
    v68 = result;
    v43 = *(result + 16);
    v42 = *(result + 24);
    if (v43 >= v42 >> 1)
    {
      sub_1AACEF664((v42 > 1), v43 + 1, 1);
      result = v68;
    }

    ++v39;
    *(result + 16) = v43 + 1;
    *(result + 8 * v43 + 32) = (v40 - v22) * (v41 - v38);
    if (v2 == v39)
    {
      v44 = *(result + 16);
      if (v44)
      {
        if (v44 <= 3)
        {
          v45 = 0;
          v46 = 0.0;
          goto LABEL_43;
        }

        v45 = v44 & 0x7FFFFFFFFFFFFFFCLL;
        v47 = (result + 48);
        v46 = 0.0;
        v48 = v44 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v46 = v46 + *(v47 - 2) + *(v47 - 1) + *v47 + v47[1];
          v47 += 4;
          v48 -= 4;
        }

        while (v48);
        if (v44 != v45)
        {
LABEL_43:
          v49 = v44 - v45;
          v50 = (result + 8 * v45 + 32);
          do
          {
            v51 = *v50++;
            v46 = v46 + v51;
            --v49;
          }

          while (v49);
        }
      }

      else
      {
        v46 = 0.0;
      }

      v52 = v46 / v32;
      v53 = v38 - v22 * v52;
      sub_1AACEF664(0, v2, 0);
      result = v21;
      do
      {
        if (!v2)
        {
          goto LABEL_61;
        }

        v54 = *v19;
        v55 = *v20;
        v69 = result;
        v57 = *(result + 16);
        v56 = *(result + 24);
        if (v57 >= v56 >> 1)
        {
          sub_1AACEF664((v56 > 1), v57 + 1, 1);
          result = v69;
        }

        *(result + 16) = v57 + 1;
        *(result + 8 * v57 + 32) = (v55 - v52 * v54 - v53) * (v55 - v52 * v54 - v53);
        ++v20;
        ++v19;
        --v2;
      }

      while (v2);
      v58 = *(result + 16);
      if (v58)
      {
        if (v58 <= 3)
        {
          v59 = 0;
          v60 = 0.0;
          goto LABEL_57;
        }

        v59 = v58 & 0x7FFFFFFFFFFFFFFCLL;
        v61 = (result + 48);
        v60 = 0.0;
        v62 = v58 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v60 = v60 + *(v61 - 2) + *(v61 - 1) + *v61 + v61[1];
          v61 += 4;
          v62 -= 4;
        }

        while (v62);
        if (v58 != v59)
        {
LABEL_57:
          v63 = v58 - v59;
          v64 = (result + 8 * v59 + 32);
          do
          {
            v65 = *v64++;
            v60 = v60 + v65;
            --v63;
          }

          while (v63);
        }
      }
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

void sub_1AAF8545C(double (*a1)(void))
{
  v1 = a1;
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  v4 = 0x78ABBF7B5AEAE776;
  v69 = MEMORY[0x1E69E7CC0];
  do
  {
    v5 = v4 - 0x61C8864680B583EBLL;
    v6 = 0xBF58476D1CE4E5B9 * ((v4 - 0x61C8864680B583EBLL) ^ ((v4 - 0x61C8864680B583EBLL) >> 30));
    v7 = (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31);
    if (0x20000000000001 * v7 >= 0x1FFFFFFFFFF801)
    {
      v11 = (v7 * 0x20000000000001uLL) >> 64;
    }

    else
    {
      v8 = v4 + 0x3C6EF372FE94F82ALL;
      do
      {
        v5 -= 0x61C8864680B583EBLL;
        v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) >> 27));
        v10 = v9 ^ (v9 >> 31);
        v8 -= 0x61C8864680B583EBLL;
      }

      while (0x20000000000001 * v10 < 0x1FFFFFFFFFF801);
      v11 = (v10 * 0x20000000000001uLL) >> 64;
    }

    v4 = v5;
    v12 = vcvtd_n_f64_u64(v11, 0x35uLL) * 0.6 + 0.2;
    if (v11 == 0x20000000000000)
    {
      v12 = 0.8;
    }

    v13 = exp((v12 + v2) / 100.0 * 15.0 + 5.0);
    v14 = v1();
    if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v15 = v69;
      }

      else
      {
        v15 = sub_1AAD67B50(0, *(v69 + 16) + 1, 1, v69);
      }

      v17 = *(v15 + 2);
      v16 = *(v15 + 3);
      if (v17 >= v16 >> 1)
      {
        v15 = sub_1AAD67B50((v16 > 1), v17 + 1, 1, v15);
      }

      *(v15 + 2) = v17 + 1;
      v69 = v15;
      *&v15[8 * v17 + 32] = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1AAD67B50(0, *(v3 + 2) + 1, 1, v3);
      }

      v19 = *(v3 + 2);
      v18 = *(v3 + 3);
      if (v19 >= v18 >> 1)
      {
        v3 = sub_1AAD67B50((v18 > 1), v19 + 1, 1, v3);
      }

      *(v3 + 2) = v19 + 1;
      *&v3[8 * v19 + 32] = v14;
      v1 = a1;
    }

    ++v2;
  }

  while (v2 != 100);
  if (*(v69 + 16) < 0x14uLL || (sub_1AAF84F9C(v69, v3), v74 = v21, v22 > 0.001))
  {

LABEL_24:

    return;
  }

  v23 = v20;
  v24 = 0;
  v68 = 1;
  v25 = 1;
LABEL_27:
  if (v25)
  {
    v26 = 4;
  }

  else
  {
    v26 = v24 - 1;
  }

  v71 = __exp10(v26);
  v27 = 0;
  v70 = v26;
  while (2)
  {
    v28 = 5;
    if (v27 > 5)
    {
      v28 = v27;
    }

    v72 = v28;
    while (1)
    {
      if (v27 == v72)
      {
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
        return;
      }

      v29 = v71 * *(&unk_1F1FCEEE8 + v27 + 4);
      v30 = v29 * 0.7;
      v31 = v29 * 0.9;
      if (v29 * 0.7 > v29 * 0.9)
      {
        goto LABEL_85;
      }

      if (COERCE__INT64(fabs(v31 - v30)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_86;
      }

      v32 = 0;
      v73 = v27 + 1;
      v33 = MEMORY[0x1E69E7CC0];
      do
      {
        v35 = v4 - 0x61C8864680B583EBLL;
        v36 = 0xBF58476D1CE4E5B9 * ((v4 - 0x61C8864680B583EBLL) ^ ((v4 - 0x61C8864680B583EBLL) >> 30));
        v37 = (0x94D049BB133111EBLL * (v36 ^ (v36 >> 27))) ^ ((0x94D049BB133111EBLL * (v36 ^ (v36 >> 27))) >> 31);
        if (0x20000000000001 * v37 >= 0x1FFFFFFFFFF801)
        {
          v41 = (v37 * 0x20000000000001uLL) >> 64;
        }

        else
        {
          v38 = v4 + 0x3C6EF372FE94F82ALL;
          do
          {
            v35 -= 0x61C8864680B583EBLL;
            v39 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v38 ^ (v38 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v38 ^ (v38 >> 30))) >> 27));
            v40 = v39 ^ (v39 >> 31);
            v38 -= 0x61C8864680B583EBLL;
          }

          while (0x20000000000001 * v40 < 0x1FFFFFFFFFF801);
          v41 = (v40 * 0x20000000000001uLL) >> 64;
        }

        v4 = v35;
        v42 = v30 + (v31 - v30) * vcvtd_n_f64_u64(v41, 0x35uLL);
        if (v41 == 0x20000000000000)
        {
          v43 = v31;
        }

        else
        {
          v43 = v42;
        }

        v44 = (v1)(v43);
        if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v45 = v23 + v74 * v43;
          v34 = vabdd_f64(v45, v44);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (fabs(v45) >= 0.00000001)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v33 = sub_1AAD67B50(0, *(v33 + 2) + 1, 1, v33);
            }

            v48 = *(v33 + 2);
            v50 = *(v33 + 3);
            v49 = v48 + 1;
            if (v48 >= v50 >> 1)
            {
              v33 = sub_1AAD67B50((v50 > 1), v48 + 1, 1, v33);
            }

            v34 = v34 / v45;
          }

          else
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v33 = sub_1AAD67B50(0, *(v33 + 2) + 1, 1, v33);
            }

            v48 = *(v33 + 2);
            v47 = *(v33 + 3);
            v49 = v48 + 1;
            if (v48 >= v47 >> 1)
            {
              v33 = sub_1AAD67B50((v47 > 1), v48 + 1, 1, v33);
            }
          }

          *(v33 + 2) = v49;
          *&v33[8 * v48 + 32] = v34;
          v1 = a1;
        }

        ++v32;
      }

      while (v32 != 100);
      if (*(v33 + 2) >= 0x32uLL)
      {
        break;
      }

      v27 = v73;
      v24 = v70;
      if (v73 == 5)
      {
        goto LABEL_26;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_1AADB8144(v33);
    }

    v51 = *(v33 + 2);
    v78[0] = (v33 + 32);
    v78[1] = v51;
    v52 = sub_1AAF90464();
    if (v52 >= v51)
    {
      if (v51 < 2)
      {
        goto LABEL_69;
      }

      v60 = -1;
      v57 = v33 + 32;
      v61 = v33 + 32;
      for (i = 1; i != v51; ++i)
      {
        v63 = *&v33[8 * i + 32];
        v64 = v60;
        v65 = v61;
        do
        {
          v66 = *v65;
          if (v63 >= *v65)
          {
            break;
          }

          *v65 = v63;
          v65[1] = v66;
          --v65;
        }

        while (!__CFADD__(v64++, 1));
        v61 += 8;
        --v60;
      }
    }

    else
    {
      v53 = v52;
      v54 = v51 >> 1;
      v55 = MEMORY[0x1E69E7CC0];
      if (v51 >= 2)
      {
        v55 = sub_1AAF8F8A4();
        v54 = v51 >> 1;
        *(v55 + 16) = v51 >> 1;
      }

      v76[0] = v55 + 32;
      v76[1] = v54;
      v56 = v55;
      sub_1AADA0140(v76, v77, v78, v53);
      *(v56 + 16) = 0;

LABEL_69:
      v57 = v33 + 32;
    }

    v58 = *(v33 + 2);
    if (!v58)
    {
      goto LABEL_87;
    }

    v59 = *&v57[(4 * v58) & 0xFFFFFFFFFFFFFFF8];

    if ((v68 & (v59 > 0.005)) == 1)
    {
      goto LABEL_82;
    }

    if (v59 <= 0.005)
    {
      v68 = 0;
      v27 = v73;
      v24 = v70;
      if (v73 != 5)
      {
        continue;
      }

      v68 = 0;
LABEL_26:
      v25 = 0;
      if (v24 != -1)
      {
        goto LABEL_27;
      }

LABEL_82:

      goto LABEL_24;
    }

    break;
  }
}

void sub_1AAF85BB0(double (*a1)(double))
{
  v1 = a1;
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  v4 = 0x78ABBF7B5AEAE776;
  v72 = MEMORY[0x1E69E7CC0];
  do
  {
    v5 = v4 - 0x61C8864680B583EBLL;
    v6 = 0xBF58476D1CE4E5B9 * ((v4 - 0x61C8864680B583EBLL) ^ ((v4 - 0x61C8864680B583EBLL) >> 30));
    v7 = (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31);
    if (0x20000000000001 * v7 >= 0x1FFFFFFFFFF801)
    {
      v11 = (v7 * 0x20000000000001uLL) >> 64;
    }

    else
    {
      v8 = v4 + 0x3C6EF372FE94F82ALL;
      do
      {
        v5 -= 0x61C8864680B583EBLL;
        v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) >> 27));
        v10 = v9 ^ (v9 >> 31);
        v8 -= 0x61C8864680B583EBLL;
      }

      while (0x20000000000001 * v10 < 0x1FFFFFFFFFF801);
      v11 = (v10 * 0x20000000000001uLL) >> 64;
    }

    v4 = v5;
    v12 = vcvtd_n_f64_u64(v11, 0x35uLL) * 0.6 + 0.2;
    if (v11 == 0x20000000000000)
    {
      v12 = 0.8;
    }

    v13 = exp((v12 + v2) / 100.0 * 15.0 + 5.0);
    v14 = v1(-v13);
    if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v15 = v72;
      }

      else
      {
        v15 = sub_1AAD67B50(0, *(v72 + 16) + 1, 1, v72);
      }

      v17 = *(v15 + 2);
      v16 = *(v15 + 3);
      if (v17 >= v16 >> 1)
      {
        v15 = sub_1AAD67B50((v16 > 1), v17 + 1, 1, v15);
      }

      *(v15 + 2) = v17 + 1;
      v72 = v15;
      *&v15[8 * v17 + 32] = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1AAD67B50(0, *(v3 + 2) + 1, 1, v3);
      }

      v19 = *(v3 + 2);
      v18 = *(v3 + 3);
      if (v19 >= v18 >> 1)
      {
        v3 = sub_1AAD67B50((v18 > 1), v19 + 1, 1, v3);
      }

      *(v3 + 2) = v19 + 1;
      *&v3[8 * v19 + 32] = v14;
      v1 = a1;
    }

    ++v2;
  }

  while (v2 != 100);
  if (*(v72 + 16) <= 0x13uLL || (sub_1AAF84F9C(v72, v3), v76 = v21, v22 > 0.001))
  {

LABEL_24:

    return;
  }

  v23 = v20;
  v24 = 0;
  v70 = 1;
  v25 = 1;
LABEL_27:
  v26 = v24 - 1;
  v27 = (v25 & 1) == 0;
  v28 = 4;
  if (v27)
  {
    v28 = v26;
  }

  v71 = v28;
  v73 = __exp10(v28);
  v29 = 0;
  while (2)
  {
    v30 = 5;
    if (v29 > 5)
    {
      v30 = v29;
    }

    v74 = v30;
    while (1)
    {
      if (v29 == v74)
      {
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
        return;
      }

      v31 = v73 * *(&unk_1F1FCEF30 + v29 + 4);
      v32 = v31 * 0.7;
      v33 = v31 * 0.9;
      if (v31 * 0.7 > v31 * 0.9)
      {
        goto LABEL_85;
      }

      if (COERCE__INT64(fabs(v33 - v32)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_86;
      }

      v34 = 0;
      v75 = v29 + 1;
      v35 = MEMORY[0x1E69E7CC0];
      do
      {
        v37 = v4 - 0x61C8864680B583EBLL;
        v38 = 0xBF58476D1CE4E5B9 * ((v4 - 0x61C8864680B583EBLL) ^ ((v4 - 0x61C8864680B583EBLL) >> 30));
        v39 = (0x94D049BB133111EBLL * (v38 ^ (v38 >> 27))) ^ ((0x94D049BB133111EBLL * (v38 ^ (v38 >> 27))) >> 31);
        if (0x20000000000001 * v39 >= 0x1FFFFFFFFFF801)
        {
          v43 = (v39 * 0x20000000000001uLL) >> 64;
        }

        else
        {
          v40 = v4 + 0x3C6EF372FE94F82ALL;
          do
          {
            v37 -= 0x61C8864680B583EBLL;
            v41 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v40 ^ (v40 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v40 ^ (v40 >> 30))) >> 27));
            v42 = v41 ^ (v41 >> 31);
            v40 -= 0x61C8864680B583EBLL;
          }

          while (0x20000000000001 * v42 < 0x1FFFFFFFFFF801);
          v43 = (v42 * 0x20000000000001uLL) >> 64;
        }

        v4 = v37;
        v44 = v32 + (v33 - v32) * vcvtd_n_f64_u64(v43, 0x35uLL);
        if (v43 == 0x20000000000000)
        {
          v45 = v33;
        }

        else
        {
          v45 = v44;
        }

        v46 = v1(-v45);
        if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v47 = v23 + v76 * v45;
          v36 = vabdd_f64(v47, v46);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (fabs(v47) >= 0.00000001)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v35 = sub_1AAD67B50(0, *(v35 + 2) + 1, 1, v35);
            }

            v50 = *(v35 + 2);
            v52 = *(v35 + 3);
            v51 = v50 + 1;
            if (v50 >= v52 >> 1)
            {
              v35 = sub_1AAD67B50((v52 > 1), v50 + 1, 1, v35);
            }

            v36 = v36 / v47;
          }

          else
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v35 = sub_1AAD67B50(0, *(v35 + 2) + 1, 1, v35);
            }

            v50 = *(v35 + 2);
            v49 = *(v35 + 3);
            v51 = v50 + 1;
            if (v50 >= v49 >> 1)
            {
              v35 = sub_1AAD67B50((v49 > 1), v50 + 1, 1, v35);
            }
          }

          *(v35 + 2) = v51;
          *&v35[8 * v50 + 32] = v36;
          v1 = a1;
        }

        ++v34;
      }

      while (v34 != 100);
      if (*(v35 + 2) > 0x31uLL)
      {
        break;
      }

      v29 = v75;
      if (v75 == 5)
      {
        goto LABEL_26;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_1AADB8144(v35);
    }

    v53 = *(v35 + 2);
    v80[0] = (v35 + 32);
    v80[1] = v53;
    v54 = sub_1AAF90464();
    if (v54 >= v53)
    {
      if (v53 < 2)
      {
        goto LABEL_69;
      }

      v62 = -1;
      v59 = v35 + 32;
      v63 = v35 + 32;
      for (i = 1; i != v53; ++i)
      {
        v65 = *&v35[8 * i + 32];
        v66 = v62;
        v67 = v63;
        do
        {
          v68 = *v67;
          if (v65 >= *v67)
          {
            break;
          }

          *v67 = v65;
          v67[1] = v68;
          --v67;
        }

        while (!__CFADD__(v66++, 1));
        v63 += 8;
        --v62;
      }
    }

    else
    {
      v55 = v54;
      v56 = v53 >> 1;
      v57 = MEMORY[0x1E69E7CC0];
      if (v53 >= 2)
      {
        v57 = sub_1AAF8F8A4();
        v56 = v53 >> 1;
        *(v57 + 16) = v53 >> 1;
      }

      v78[0] = v57 + 32;
      v78[1] = v56;
      v58 = v57;
      sub_1AADA0140(v78, v79, v80, v55);
      *(v58 + 16) = 0;

LABEL_69:
      v59 = v35 + 32;
    }

    v60 = *(v35 + 2);
    if (!v60)
    {
      goto LABEL_87;
    }

    v61 = *&v59[(4 * v60) & 0xFFFFFFFFFFFFFFF8];

    if ((v70 & (v61 > 0.005)) == 1)
    {
      goto LABEL_82;
    }

    if (v61 <= 0.005)
    {
      v70 = 0;
      v29 = v75;
      if (v75 != 5)
      {
        continue;
      }

      v70 = 0;
LABEL_26:
      v25 = 0;
      v24 = v71;
      if (v71 != -1)
      {
        goto LABEL_27;
      }

LABEL_82:

      goto LABEL_24;
    }

    break;
  }
}

void sub_1AAF86304(double (*a1)(__n128), __n128 a2, double a3)
{
  v3 = a3 - a2.n128_f64[0];
  if (COERCE__INT64(fabs(a3 - a2.n128_f64[0])) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    v5 = a2.n128_f64[0];
    v7 = 0;
    v8 = 0;
    v9 = 0x78ABBF7B5AEAE776;
    while (1)
    {
      v10 = v9 - 0x61C8864680B583EBLL;
      v11 = 0xBF58476D1CE4E5B9 * ((v9 - 0x61C8864680B583EBLL) ^ ((v9 - 0x61C8864680B583EBLL) >> 30));
      v12 = (0x94D049BB133111EBLL * (v11 ^ (v11 >> 27))) ^ ((0x94D049BB133111EBLL * (v11 ^ (v11 >> 27))) >> 31);
      if (0x20000000000001 * v12 >= 0x1FFFFFFFFFF801)
      {
        v16 = (v12 * 0x20000000000001uLL) >> 64;
      }

      else
      {
        v13 = v9 + 0x3C6EF372FE94F82ALL;
        do
        {
          v10 -= 0x61C8864680B583EBLL;
          v14 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) >> 27));
          v15 = v14 ^ (v14 >> 31);
          v13 -= 0x61C8864680B583EBLL;
        }

        while (0x20000000000001 * v15 < 0x1FFFFFFFFFF801);
        v16 = (v15 * 0x20000000000001uLL) >> 64;
      }

      v9 = v10;
      a2.n128_f64[0] = v3 * vcvtd_n_f64_u64(v16, 0x35uLL) + v5;
      if (v16 == 0x20000000000000)
      {
        a2.n128_f64[0] = a3;
      }

      if ((COERCE_UNSIGNED_INT64(a1(a2)) & 0x7FFFFFFFFFFFFFFFLL) <= 0x7FEFFFFFFFFFFFFFLL && __OFADD__(v7++, 1))
      {
        break;
      }

      if (++v8 == 100)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1AAF864AC(double (*a1)(__n128), __n128 a2)
{
  a2.n128_u64[0] = 0xC0F86A0000000000;
  sub_1AAF86304(a1, a2, 100000.0);
  if (v3.n128_f64[0] <= 0.1)
  {
    if (*&qword_1F1FCEF98 < 0.0)
    {
      goto LABEL_17;
    }

    v3.n128_f64[0] = -*&qword_1F1FCEF98;
    sub_1AAF86304(a1, v3, *&qword_1F1FCEF98);
    if (v4.n128_f64[0] >= 0.4)
    {
      return;
    }

    if (*&qword_1F1FCEFA0 < 0.0)
    {
      goto LABEL_17;
    }

    v4.n128_f64[0] = -*&qword_1F1FCEFA0;
    sub_1AAF86304(a1, v4, *&qword_1F1FCEFA0);
    if (v5.n128_f64[0] >= 0.4)
    {
      return;
    }

    if (*&qword_1F1FCEFA8 < 0.0)
    {
      goto LABEL_17;
    }

    v5.n128_f64[0] = -*&qword_1F1FCEFA8;
    sub_1AAF86304(a1, v5, *&qword_1F1FCEFA8);
    if (v6.n128_f64[0] >= 0.4)
    {
      return;
    }

    if (*&qword_1F1FCEFB0 < 0.0)
    {
      goto LABEL_17;
    }

    v6.n128_f64[0] = -*&qword_1F1FCEFB0;
    sub_1AAF86304(a1, v6, *&qword_1F1FCEFB0);
    if (v7.n128_f64[0] >= 0.4)
    {
      return;
    }

    if (*&qword_1F1FCEFB8 < 0.0)
    {
      goto LABEL_17;
    }

    v7.n128_f64[0] = -*&qword_1F1FCEFB8;
    sub_1AAF86304(a1, v7, *&qword_1F1FCEFB8);
    if (v8.n128_f64[0] >= 0.4)
    {
      return;
    }

    if (*&qword_1F1FCEFC0 < 0.0)
    {
      goto LABEL_17;
    }

    v8.n128_f64[0] = -*&qword_1F1FCEFC0;
    sub_1AAF86304(a1, v8, *&qword_1F1FCEFC0);
    if (v9.n128_f64[0] >= 0.4)
    {
      return;
    }

    if (*&qword_1F1FCEFC8 < 0.0)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v9.n128_f64[0] = -*&qword_1F1FCEFC8;
    sub_1AAF86304(a1, v9, *&qword_1F1FCEFC8);
  }
}

uint64_t sub_1AAF86680(uint64_t (*a1)(double), double a2)
{
  v4 = 0;
  v5 = a2 + a2;
  v6 = a2 * 3.0;
  while (1)
  {
    v7 = *(&unk_1F1FCEFD0 + v4 + 32);
    v8 = a1(v7 + a2);
    v10 = v9;
    v11 = (a1)(v8, v7);
    if (vabdd_f64(v10, v12) >= 0.000001)
    {
      break;
    }

    v13 = (a1)(v11, v7 + v5);
    v15 = v14;
    v16 = (a1)(v13, v7);
    if (vabdd_f64(v15, v17) >= 0.000001)
    {
      break;
    }

    v18 = (a1)(v16, v7 + v6);
    v20 = v19;
    v21 = (a1)(v18, v7);
    if (vabdd_f64(v20, v22) >= 0.000001)
    {
      break;
    }

    v23 = (a1)(v21, v7 + a2 * 4.0);
    v25 = v24;
    (a1)(v23, v7);
    if (vabdd_f64(v25, v26) >= 0.000001)
    {
      break;
    }

    v4 += 8;
    if (v4 == 32)
    {
      return 1;
    }
  }

  return 0;
}

void sub_1AAF867B8(void (*a1)(void))
{
  v1 = a1;
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  v4 = 0x78ABBF7B5AEAE776;
  v73 = MEMORY[0x1E69E7CC0];
  do
  {
    v5 = v4 - 0x61C8864680B583EBLL;
    v6 = 0xBF58476D1CE4E5B9 * ((v4 - 0x61C8864680B583EBLL) ^ ((v4 - 0x61C8864680B583EBLL) >> 30));
    v7 = (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31);
    if (0x20000000000001 * v7 >= 0x1FFFFFFFFFF801)
    {
      v11 = (v7 * 0x20000000000001uLL) >> 64;
    }

    else
    {
      v8 = v4 + 0x3C6EF372FE94F82ALL;
      do
      {
        v5 -= 0x61C8864680B583EBLL;
        v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) >> 27));
        v10 = v9 ^ (v9 >> 31);
        v8 -= 0x61C8864680B583EBLL;
      }

      while (0x20000000000001 * v10 < 0x1FFFFFFFFFF801);
      v11 = (v10 * 0x20000000000001uLL) >> 64;
    }

    v4 = v5;
    v12 = vcvtd_n_f64_u64(v11, 0x35uLL) * 0.6 + 0.2;
    if (v11 == 0x20000000000000)
    {
      v12 = 0.8;
    }

    v13 = exp((v12 + v2) / 100.0 * 15.0 + 5.0);
    v1();
    v15 = v14;
    if ((v14 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v16 = v73;
      }

      else
      {
        v16 = sub_1AAD67B50(0, *(v73 + 16) + 1, 1, v73);
      }

      v18 = *(v16 + 2);
      v17 = *(v16 + 3);
      if (v18 >= v17 >> 1)
      {
        v16 = sub_1AAD67B50((v17 > 1), v18 + 1, 1, v16);
      }

      *(v16 + 2) = v18 + 1;
      v73 = v16;
      *&v16[8 * v18 + 32] = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1AAD67B50(0, *(v3 + 2) + 1, 1, v3);
      }

      v20 = *(v3 + 2);
      v19 = *(v3 + 3);
      if (v20 >= v19 >> 1)
      {
        v3 = sub_1AAD67B50((v19 > 1), v20 + 1, 1, v3);
      }

      *(v3 + 2) = v20 + 1;
      *&v3[8 * v20 + 32] = v15;
      v1 = a1;
    }

    ++v2;
  }

  while (v2 != 100);
  if (*(v73 + 16) <= 0x13uLL || (sub_1AAF84F9C(v73, v3), v77 = v22, v23 > 0.001))
  {

LABEL_24:

    return;
  }

  v24 = v21;
  v25 = 0;
  v71 = 1;
  v26 = 1;
LABEL_27:
  v27 = v25 - 1;
  v28 = (v26 & 1) == 0;
  v29 = 4;
  if (v28)
  {
    v29 = v27;
  }

  v72 = v29;
  v74 = __exp10(v29);
  v30 = 0;
  while (2)
  {
    v31 = 5;
    if (v30 > 5)
    {
      v31 = v30;
    }

    v75 = v31;
    while (1)
    {
      if (v30 == v75)
      {
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
        return;
      }

      v32 = v74 * *(&unk_1F1FCF010 + v30 + 4);
      v33 = v32 * 0.7;
      v34 = v32 * 0.9;
      if (v32 * 0.7 > v32 * 0.9)
      {
        goto LABEL_85;
      }

      if (COERCE__INT64(fabs(v34 - v33)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_86;
      }

      v35 = 0;
      v76 = v30 + 1;
      v36 = MEMORY[0x1E69E7CC0];
      do
      {
        v38 = v4 - 0x61C8864680B583EBLL;
        v39 = 0xBF58476D1CE4E5B9 * ((v4 - 0x61C8864680B583EBLL) ^ ((v4 - 0x61C8864680B583EBLL) >> 30));
        v40 = (0x94D049BB133111EBLL * (v39 ^ (v39 >> 27))) ^ ((0x94D049BB133111EBLL * (v39 ^ (v39 >> 27))) >> 31);
        if (0x20000000000001 * v40 >= 0x1FFFFFFFFFF801)
        {
          v44 = (v40 * 0x20000000000001uLL) >> 64;
        }

        else
        {
          v41 = v4 + 0x3C6EF372FE94F82ALL;
          do
          {
            v38 -= 0x61C8864680B583EBLL;
            v42 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v41 ^ (v41 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v41 ^ (v41 >> 30))) >> 27));
            v43 = v42 ^ (v42 >> 31);
            v41 -= 0x61C8864680B583EBLL;
          }

          while (0x20000000000001 * v43 < 0x1FFFFFFFFFF801);
          v44 = (v43 * 0x20000000000001uLL) >> 64;
        }

        v4 = v38;
        v45 = v33 + (v34 - v33) * vcvtd_n_f64_u64(v44, 0x35uLL);
        if (v44 == 0x20000000000000)
        {
          v46 = v34;
        }

        else
        {
          v46 = v45;
        }

        (v1)(v46);
        if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v48 = v24 + v77 * v46;
          v37 = vabdd_f64(v48, v47);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (fabs(v48) >= 0.00000001)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v36 = sub_1AAD67B50(0, *(v36 + 2) + 1, 1, v36);
            }

            v51 = *(v36 + 2);
            v53 = *(v36 + 3);
            v52 = v51 + 1;
            if (v51 >= v53 >> 1)
            {
              v36 = sub_1AAD67B50((v53 > 1), v51 + 1, 1, v36);
            }

            v37 = v37 / v48;
          }

          else
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v36 = sub_1AAD67B50(0, *(v36 + 2) + 1, 1, v36);
            }

            v51 = *(v36 + 2);
            v50 = *(v36 + 3);
            v52 = v51 + 1;
            if (v51 >= v50 >> 1)
            {
              v36 = sub_1AAD67B50((v50 > 1), v51 + 1, 1, v36);
            }
          }

          *(v36 + 2) = v52;
          *&v36[8 * v51 + 32] = v37;
          v1 = a1;
        }

        ++v35;
      }

      while (v35 != 100);
      if (*(v36 + 2) > 0x31uLL)
      {
        break;
      }

      v30 = v76;
      if (v76 == 5)
      {
        goto LABEL_26;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_1AADB8144(v36);
    }

    v54 = *(v36 + 2);
    v81[0] = (v36 + 32);
    v81[1] = v54;
    v55 = sub_1AAF90464();
    if (v55 >= v54)
    {
      if (v54 < 2)
      {
        goto LABEL_69;
      }

      v63 = -1;
      v60 = v36 + 32;
      v64 = v36 + 32;
      for (i = 1; i != v54; ++i)
      {
        v66 = *&v36[8 * i + 32];
        v67 = v63;
        v68 = v64;
        do
        {
          v69 = *v68;
          if (v66 >= *v68)
          {
            break;
          }

          *v68 = v66;
          v68[1] = v69;
          --v68;
        }

        while (!__CFADD__(v67++, 1));
        v64 += 8;
        --v63;
      }
    }

    else
    {
      v56 = v55;
      v57 = v54 >> 1;
      v58 = MEMORY[0x1E69E7CC0];
      if (v54 >= 2)
      {
        v58 = sub_1AAF8F8A4();
        v57 = v54 >> 1;
        *(v58 + 16) = v54 >> 1;
      }

      v79[0] = v58 + 32;
      v79[1] = v57;
      v59 = v58;
      sub_1AADA0140(v79, v80, v81, v56);
      *(v59 + 16) = 0;

LABEL_69:
      v60 = v36 + 32;
    }

    v61 = *(v36 + 2);
    if (!v61)
    {
      goto LABEL_87;
    }

    v62 = *&v60[(4 * v61) & 0xFFFFFFFFFFFFFFF8];

    if ((v71 & (v62 > 0.005)) == 1)
    {
      goto LABEL_82;
    }

    if (v62 <= 0.005)
    {
      v71 = 0;
      v30 = v76;
      if (v76 != 5)
      {
        continue;
      }

      v71 = 0;
LABEL_26:
      v26 = 0;
      v25 = v72;
      if (v72 != -1)
      {
        goto LABEL_27;
      }

LABEL_82:

      goto LABEL_24;
    }

    break;
  }
}

uint64_t sub_1AAF86F08(uint64_t result, __n128 a2, double a3)
{
  v3 = a3 - a2.n128_f64[0];
  if (COERCE__INT64(fabs(a3 - a2.n128_f64[0])) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v6 = a2.n128_f64[0];
    v7 = 0;
    v8 = 0;
    v9 = 0x78ABBF7B5AEAE776;
    while (1)
    {
      v10 = v9 - 0x61C8864680B583EBLL;
      v11 = 0xBF58476D1CE4E5B9 * ((v9 - 0x61C8864680B583EBLL) ^ ((v9 - 0x61C8864680B583EBLL) >> 30));
      v12 = (0x94D049BB133111EBLL * (v11 ^ (v11 >> 27))) ^ ((0x94D049BB133111EBLL * (v11 ^ (v11 >> 27))) >> 31);
      if (0x20000000000001 * v12 >= 0x1FFFFFFFFFF801)
      {
        v16 = (v12 * 0x20000000000001uLL) >> 64;
      }

      else
      {
        v13 = v9 + 0x3C6EF372FE94F82ALL;
        do
        {
          v10 -= 0x61C8864680B583EBLL;
          v14 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) >> 27));
          v15 = v14 ^ (v14 >> 31);
          v13 -= 0x61C8864680B583EBLL;
        }

        while (0x20000000000001 * v15 < 0x1FFFFFFFFFF801);
        v16 = (v15 * 0x20000000000001uLL) >> 64;
      }

      v9 = v10;
      a2.n128_f64[0] = v3 * vcvtd_n_f64_u64(v16, 0x35uLL) + v6;
      if (v16 == 0x20000000000000)
      {
        a2.n128_f64[0] = a3;
      }

      result = v4(a2);
      if ((v17 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && __OFADD__(v7++, 1))
      {
        break;
      }

      if (++v8 == 100)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1AAF870B8()
{
  sub_1AAF90694();
  MEMORY[0x1AC5992F0](*v0);
  sub_1AAF90014();
  return sub_1AAF906F4();
}

uint64_t sub_1AAF87144()
{
  sub_1AAF90694();
  MEMORY[0x1AC5992F0](*v0);
  sub_1AAF90014();
  return sub_1AAF906F4();
}

uint64_t sub_1AAF87194(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    JUMPOUT(0x1AC598C20);
  }

  return 0;
}

uint64_t sub_1AAF87224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a1, a3, AssociatedTypeWitness);
  v7 = sub_1AAF8FC84();
  v9 = v8;
  v10 = swift_getAssociatedTypeWitness();
  (*(*(v10 - 8) + 16))(a2, v9, v10);
  return v7(&v12, 0);
}

void (*sub_1AAF87388(uint64_t *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  v6 = v5;
  *a1 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6[4] = TupleTypeMetadata2;
  v10 = *(TupleTypeMetadata2 - 8);
  v6[5] = v10;
  if (v4)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v10 + 64));
  }

  v12 = v11;
  v6[6] = v11;
  v13 = sub_1AAF875DC(v6, a2);
  v15 = v14;
  v6[7] = v13;
  (*(*(AssociatedTypeWitness - 8) + 16))(v12);
  (*(*(v8 - 8) + 16))(v12 + *(TupleTypeMetadata2 + 48), v15, v8);
  return sub_1AAF87564;
}

void sub_1AAF87564(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

void (*sub_1AAF875DC(uint64_t *a1, uint64_t a2))(void *a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v5 = *(TupleTypeMetadata2 - 8);
  a1[1] = v5;
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v5 + 64));
  }

  a1[2] = v6;
  sub_1AAF87224(v6, v6 + *(TupleTypeMetadata2 + 48), a2);
  return sub_1AAD9E5BC;
}

uint64_t sub_1AAF87728@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  v2 = sub_1AAF8FE74();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1AAF877BC(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v8 - v5;
  (*(v3 + 32))(&v8 - v5, a1, AssociatedTypeWitness, v4);
  sub_1AAF87344();
  return (*(v3 + 8))(v6, AssociatedTypeWitness);
}

uint64_t sub_1AAF878C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(a1 - 8);
  (*(v6 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  sub_1AAF90294();
  sub_1AAF8720C();
  v4 = *(v6 + 8);

  return v4(v2, a1);
}

uint64_t sub_1AAF879C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1AAF87A14(uint64_t a1)
{
  swift_getWitnessTable();
  v3 = sub_1AAD9EC60();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t sub_1AAF87AB0(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v10 - v7;
  (*(v5 + 32))(&v10 - v7, a1, AssociatedTypeWitness, v6);
  sub_1AAF87AA0(v8, a2);
  return (*(v5 + 8))(v8, AssociatedTypeWitness);
}

double sub_1AAF87D70(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v25 = a3;
  v15 = sub_1AAF8DF14();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26.origin.x = a5;
  v26.origin.y = a6;
  v26.size.width = a7;
  v26.size.height = a8;
  MinX = CGRectGetMinX(v26);
  (*(v16 + 104))(v18, *MEMORY[0x1E697E7D8], v15);
  v20 = sub_1AAF8DF04();
  (*(v16 + 8))(v18, v15);
  if (v20)
  {
    v21 = a4;
  }

  else
  {
    v21 = a2;
  }

  v24 = MinX - v21;
  v27.origin.x = a5;
  v27.origin.y = a6;
  v27.size.width = a7;
  v27.size.height = a8;
  v23[1] = CGRectGetMinY(v27) - a1;
  v28.origin.x = a5;
  v28.origin.y = a6;
  v28.size.width = a7;
  v28.size.height = a8;
  CGRectGetMaxX(v28);
  v29.origin.x = a5;
  v29.origin.y = a6;
  v29.size.width = a7;
  v29.size.height = a8;
  CGRectGetMinX(v29);
  v30.origin.x = a5;
  v30.origin.y = a6;
  v30.size.width = a7;
  v30.size.height = a8;
  CGRectGetMaxY(v30);
  v31.origin.x = a5;
  v31.origin.y = a6;
  v31.size.width = a7;
  v31.size.height = a8;
  CGRectGetMinY(v31);
  return v24;
}

uint64_t sub_1AAF87F6C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_1AACEF664(0, v2, 0);
    result = v8;
    v4 = (a1 + 32);
    v5 = *(v8 + 16);
    do
    {
      v6 = *v4;
      v9 = result;
      v7 = *(result + 24);
      if (v5 >= v7 >> 1)
      {
        sub_1AACEF664((v7 > 1), v5 + 1, 1);
        result = v9;
      }

      *(result + 16) = v5 + 1;
      *(result + 8 * v5 + 32) = v6;
      ++v4;
      ++v5;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1AAF88038(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1AAD41488(0, v1, 0);
    v2 = v14;
    v4 = (a1 + 40);
    v5 = MEMORY[0x1E69E6158];
    do
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v14 = v2;
      v8 = *(v2 + 16);
      v9 = *(v2 + 24);

      if (v8 >= v9 >> 1)
      {
        sub_1AAD41488((v9 > 1), v8 + 1, 1);
        v2 = v14;
      }

      v12 = v5;
      v13 = sub_1AAD6E644();
      *&v11 = v7;
      *(&v11 + 1) = v6;
      *(v2 + 16) = v8 + 1;
      sub_1AACBB198(&v11, v2 + 40 * v8 + 32);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1AAF88134()
{
  v0 = sub_1AAF8E204();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1AAF8E1F4();
  sub_1AAF8E1E4();
  sub_1AAF8E1B4();
  sub_1AAF8E1E4();
  sub_1AAF8E1D4();
  sub_1AAF8E1E4();
  sub_1AAF8E224();
  type metadata accessor for FindClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  return sub_1AAF8EA44();
}

uint64_t sub_1AAF882B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for FindClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_1AAF8F624();
  v7 = [v5 localizedStringForKey:v6 value:0 table:0];

  v8 = sub_1AAF8F634();
  if (*(a3 + 16))
  {
    sub_1AAF88038(a3);
    v8 = sub_1AAF8F644();
  }

  return v8;
}

unint64_t sub_1AAF88430(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0xD00000000000005CLL;
    v6 = 0xD0000000000000D8;
    if (a1 != 10)
    {
      v6 = 0xD000000000000044;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000049;
    if (a1 == 7)
    {
      v7 = 0xD00000000000004BLL;
    }

    if (a1 == 6)
    {
      v7 = 0xD000000000000047;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000046;
    v2 = 0xD00000000000007BLL;
    if (a1 != 4)
    {
      v2 = 0xD000000000000030;
    }

    if (a1 != 3)
    {
      v1 = v2;
    }

    v3 = 0xD00000000000004FLL;
    if (a1 == 1)
    {
      v3 = 0xD00000000000006ALL;
    }

    if (!a1)
    {
      v3 = 0xD00000000000007ALL;
    }

    if (a1 <= 2u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1AAF885A0(uint64_t a1)
{
  if (qword_1EB422C58 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = sub_1AAD7B1A0(&v6, a1);
  result = swift_endAccess();
  if (v2)
  {
    sub_1AAF886C4();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1AAF92AB0;
    v5 = sub_1AAF88430(a1);
    MEMORY[0x1AC5982F0](v5);

    *(v4 + 56) = MEMORY[0x1E69E6158];
    *(v4 + 32) = 0x203A737472616843;
    *(v4 + 40) = 0xE800000000000000;
    sub_1AAF90674();
  }

  return result;
}

void sub_1AAF886C4()
{
  if (!qword_1EB424C30)
  {
    v0 = sub_1AAF90484();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB424C30);
    }
  }
}

uint64_t getEnumTagSinglePayload for ExternalWarning(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExternalWarning(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1AAF8886C()
{
  result = qword_1EB427838[0];
  if (!qword_1EB427838[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB427838);
  }

  return result;
}

uint64_t sub_1AAF888C0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AAF888FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1AAF88944(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AAF889A4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  v12 = *(v7 + 64);
  if (v8 <= v5)
  {
    v13 = *(v4 + 84);
  }

  else
  {
    v13 = *(v7 + 84);
  }

  if (v13 <= 0xFE)
  {
    v13 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_29;
  }

  v15 = v12 + ((v10 + v11 + ((v9 + 16) & ~v9)) & ~v11) + 1;
  v16 = 8 * v15;
  if (v15 > 3)
  {
    goto LABEL_9;
  }

  v18 = ((v14 + ~(-1 << v16)) >> v16) + 1;
  if (HIWORD(v18))
  {
    v17 = *(a1 + v15);
    if (v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v18 <= 0xFF)
    {
      if (v18 < 2)
      {
        goto LABEL_29;
      }

LABEL_9:
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_29;
      }

LABEL_16:
      v19 = (v17 - 1) << v16;
      if (v15 > 3)
      {
        v19 = 0;
      }

      if (v12 + ((v10 + v11 + ((v9 + 16) & ~v9)) & ~v11) == -1)
      {
        v21 = 0;
      }

      else
      {
        if (v15 <= 3)
        {
          v20 = v12 + ((v10 + v11 + ((v9 + 16) & ~v9)) & ~v11) + 1;
        }

        else
        {
          v20 = 4;
        }

        if (v20 > 2)
        {
          if (v20 == 3)
          {
            v21 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v21 = *a1;
          }
        }

        else if (v20 == 1)
        {
          v21 = *a1;
        }

        else
        {
          v21 = *a1;
        }
      }

      return v13 + (v21 | v19) + 1;
    }

    v17 = *(a1 + v15);
    if (*(a1 + v15))
    {
      goto LABEL_16;
    }
  }

LABEL_29:
  v22 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9;
  if (v5 == v13)
  {
    return (*(v4 + 48))(v22);
  }

  v24 = (v22 + v10 + v11) & ~v11;
  if (v8 == v13)
  {
    return (*(v7 + 48))(v24, v8, v6);
  }

  v25 = *(v24 + v12);
  if (v25 < 2)
  {
    return 0;
  }

  return ((v25 + 2147483646) & 0x7FFFFFFF) + 1;
}

void sub_1AAF88BE0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  if (v9 <= v7)
  {
    v14 = *(v6 + 84);
  }

  else
  {
    v14 = *(v8 + 84);
  }

  if (v14 <= 0xFE)
  {
    v14 = 254;
  }

  v15 = v13 + ((v11 + v12 + ((v10 + 16) & ~v10)) & ~v12) + 1;
  v16 = a3 >= v14;
  v17 = a3 - v14;
  if (v17 != 0 && v16)
  {
    if (v15 <= 3)
    {
      v21 = ((v17 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
      if (HIWORD(v21))
      {
        v18 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v18 = v22;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v15 < 4)
    {
      v20 = (v19 >> (8 * v15)) + 1;
      if (v13 + ((v11 + v12 + ((v10 + 16) & ~v10)) & ~v12) != -1)
      {
        v23 = v19 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_50:
              if (v18 == 2)
              {
                *&a1[v15] = v20;
              }

              else
              {
                *&a1[v15] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_50;
            }
          }

          goto LABEL_47;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_50;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_50;
      }
    }

LABEL_47:
    if (v18)
    {
      a1[v15] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v15] = 0;
  }

  else if (v18)
  {
    a1[v15] = 0;
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
  v24 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10;
  if (v7 == v14)
  {
    v25 = *(v6 + 56);

    v25(v24);
  }

  else
  {
    v26 = (v24 + v11 + v12) & ~v12;
    if (v9 == v14)
    {
      v27 = *(v8 + 56);

      v27(v26);
    }

    else
    {
      *(v26 + v13) = a2 + 1;
    }
  }
}

uint64_t sub_1AAF88EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return sub_1AAF89730(sub_1AAF8A288, &v6, v7, a4);
}

uint64_t sub_1AAF88F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AAF8CA64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v56 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v56 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v61 = &v56 - v14;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v56 - v16;
  if (*(a1 + 16))
  {
    v19 = *(v5 + 16);
    v20 = *(v5 + 80);
    v66 = *(a1 + 16);
    v21 = a1 + ((v20 + 32) & ~v20);
    v22 = v19;
    (v19)(&v56 - v16, v21, v4, v17);
    if (v66 == 1)
    {
      sub_1AAF8A2FC();
      v23 = v22;
      v25 = v24;
      v26 = v18;
      v27 = *(v24 + 48);
      v23(a2, v26, v4);
      (*(v5 + 32))(a2 + v27, v26, v4);
      return (*(*(v25 - 8) + 56))(a2, 0, 1, v25);
    }

    else
    {
      v57 = a2;
      v30 = *(v5 + 72);
      v65 = v21;
      v62 = v30;
      v31 = v61;
      v22(v61, (v21 + v30), v4);
      v32 = sub_1AACD6CE8();
      v60 = v18;
      v67 = v32;
      result = sub_1AAF8F564();
      v63 = v22;
      v64 = v5 + 16;
      if (result)
      {
        v33 = *(v5 + 32);
        v35 = v59;
        v34 = v60;
        v33(v59, v60, v4);
        v33(v34, v31, v4);
        result = (v33)(v31, v35, v4);
        v22 = v63;
      }

      v58 = v5;
      v37 = v65;
      v36 = v66;
      if (v66 == 2)
      {
LABEL_8:
        sub_1AAF8A2FC();
        v39 = v38;
        v40 = *(v38 + 48);
        v41 = v57;
        v42 = *(v58 + 32);
        v42(v57, v60, v4);
        v42(v41 + v40, v61, v4);
        return (*(*(v39 - 8) + 56))(v41, 0, 1, v39);
      }

      else
      {
        v43 = (v58 + 32);
        v44 = (v58 + 8);
        v45 = 2;
        while (v45 < v36)
        {
          v46 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            goto LABEL_26;
          }

          result = (v22)(v10, v37 + v45 * v62, v4);
          v45 = v66;
          if (v46 == v66)
          {
            v47 = v7;
            v48 = v10;
          }

          else
          {
            if (v46 >= v66)
            {
              goto LABEL_27;
            }

            v45 = v46 + 1;
            if (__OFADD__(v46, 1))
            {
              goto LABEL_28;
            }

            v48 = (v65 + v46 * v62);
            v47 = v7;
          }

          v22(v47, v48, v4);
          v49 = sub_1AAF8F564();
          v50 = v60;
          if (v49)
          {
            v51 = *v43;
            v52 = v59;
            (*v43)(v59, v10, v4);
            v51(v10, v7, v4);
            v51(v7, v52, v4);
            v22 = v63;
          }

          if (sub_1AAF8F564())
          {
            (*v44)(v50, v4);
            v22(v50, v10, v4);
          }

          v53 = v61;
          v54 = sub_1AAF8F564();
          v55 = *v44;
          (*v44)(v10, v4);
          if (v54)
          {
            result = (v55)(v7, v4);
          }

          else
          {
            v55(v53, v4);
            result = (*v43)(v53, v7, v4);
          }

          v37 = v65;
          v36 = v66;
          v22 = v63;
          if (v45 == v66)
          {
            goto LABEL_8;
          }
        }

        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
      }
    }
  }

  else
  {
    sub_1AAF8A2FC();
    return (*(*(v29 - 8) + 56))(a2, 1, 1, v29);
  }

  return result;
}

uint64_t sub_1AAF894FC(uint64_t a1, uint64_t (*a2)(double *))
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v5 = 0;
  v6 = a1 + 32;
  for (i = (a1 + 40); ; ++i)
  {
    v8 = v5 + 1;
    v9 = *(i - 1);
    v23 = v9;
    result = a2(&v23);
    if (result)
    {
      break;
    }

    ++v5;
    if (v2 == v8)
    {
      return 0;
    }
  }

  if (v2 - 1 == v5)
  {
    return *&v9;
  }

  while (1)
  {
    if (v8 >= v2)
    {
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
      __break(1u);
      return result;
    }

    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_47;
    }

    v12 = *i;
    v23 = *i;
    result = a2(&v23);
    if (result)
    {
      break;
    }

    ++v8;
    ++i;
    if (v11 == v2)
    {
      return *&v9;
    }
  }

  if (v12 >= v9)
  {
    v13 = v12;
  }

  else
  {
    v13 = v9;
  }

  if (v12 >= v9)
  {
    v12 = v9;
  }

  if (v11 != v2)
  {
    v15 = a1 + 40;
    v14 = v12;
LABEL_20:
    v16 = v13;
LABEL_21:
    v17 = v11 + 1;
    v18 = (v15 + 8 * v11);
    while (v11 < v2)
    {
      v19 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_49;
      }

      v20 = *(v6 + 8 * v11);
      v23 = v20;
      result = a2(&v23);
      if (result)
      {
        v11 = v2;
        v21 = v20;
        if (v19 != v2)
        {
          while (v17 < v2)
          {
            v11 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              goto LABEL_51;
            }

            v21 = *v18;
            v23 = *v18;
            result = a2(&v23);
            if (result)
            {
              goto LABEL_33;
            }

            ++v17;
            ++v18;
            if (v11 == v2)
            {
              v11 = v2;
              v21 = v20;
              goto LABEL_33;
            }
          }

          goto LABEL_50;
        }

LABEL_33:
        if (v21 >= v20)
        {
          v13 = v21;
        }

        else
        {
          v13 = v20;
        }

        if (v21 >= v20)
        {
          v22 = v20;
        }

        else
        {
          v22 = v21;
        }

        if (v22 < v12)
        {
          v14 = v22;
          v12 = v22;
        }

        if (v13 >= v16)
        {
          if (v11 != v2)
          {
            goto LABEL_20;
          }
        }

        else if (v11 != v2)
        {
          goto LABEL_21;
        }

        return *&v14;
      }

      ++v11;
      ++v17;
      ++v18;
      if (v19 == v2)
      {
        return *&v14;
      }
    }

    goto LABEL_48;
  }

  v14 = v12;
  return *&v14;
}

uint64_t sub_1AAF89730@<X0>(uint64_t (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v95 = a2;
  v98 = a1;
  v105 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v103 = sub_1AAF8FE74();
  v99 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v94 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v93 = &v84 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v102 = &v84 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v84 - v12;
  v106 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v14);
  v91 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v97 = &v84 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v100 = &v84 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v104 = &v84 - v21;
  v22 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = swift_getAssociatedTypeWitness();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v84 - v29;
  (*(v22 + 16))(v25, v101, a3, v28);
  v31 = v106;
  sub_1AAF8F744();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1AAF8FE94();
  v34 = v31 + 48;
  v33 = *(v31 + 48);
  if (v33(v13, 1, AssociatedTypeWitness) == 1)
  {
    (*(v27 + 8))(v30, v26);
    (*(v99 + 8))(v13, v103);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(v105, 1, 1, TupleTypeMetadata2);
  }

  v96 = v27;
  v37 = AssociatedConformanceWitness;
  v39 = *(v31 + 32);
  v38 = (v31 + 32);
  v40 = v104;
  v92 = v39;
  v39(v104, v13, AssociatedTypeWitness);
  v41 = v102;
  v101 = v33;
  v88 = v37;
  sub_1AAF8FE94();
  v42 = v101(v41, 1, AssociatedTypeWitness);
  v43 = v40;
  v44 = AssociatedTypeWitness;
  if (v42 == 1)
  {
    (*(v96 + 8))(v30, v26);
    (*(v99 + 8))(v102, v103);
    v45 = swift_getTupleTypeMetadata2();
    v46 = *(v45 + 48);
    v47 = v105;
    (*(v106 + 16))(v105, v40, AssociatedTypeWitness);
    v92(v47 + v46, v40, AssociatedTypeWitness);
    v48 = *(*(v45 - 8) + 56);
    v49 = v47;
    return v48(v49, 0, 1, v45);
  }

  v50 = v106;
  v89 = v30;
  v90 = v26;
  v51 = v100;
  v92(v100, v102, AssociatedTypeWitness);
  v52 = v107;
  v53 = v98(v51, v43);
  v54 = v43;
  v107 = v52;
  v55 = v105;
  if (v52)
  {
    v56 = *(v50 + 8);
    v56(v51, v44);
    v56(v54, v44);
    return (*(v96 + 8))(v89, v90);
  }

  else
  {
    v87 = v34;
    if (v53)
    {
      sub_1AAF90594();
    }

    v102 = v38;
    v57 = v93;
    sub_1AAF8FE94();
    if (v101(v57, 1, v44) == 1)
    {
      v59 = v89;
      v58 = v90;
LABEL_12:
      (*(v96 + 8))(v59, v58);
      (*(v99 + 8))(v57, v103);
      v45 = swift_getTupleTypeMetadata2();
      v60 = *(v45 + 48);
      v61 = v92;
      v92(v55, v104, v44);
      v61(v55 + v60, v100, v44);
      v48 = *(*(v45 - 8) + 56);
      v49 = v55;
      return v48(v49, 0, 1, v45);
    }

    v85 = (v50 + 16);
    v84 = (v99 + 8);
    v86 = (v50 + 8);
    v106 = v44;
    while (1)
    {
      v63 = v57;
      v64 = v92;
      v92(v97, v63, v44);
      v65 = v94;
      sub_1AAF8FE94();
      v66 = v101;
      if (v101(v65, 1, v44) == 1)
      {
        v67 = v91;
        v68 = v97;
        (*v85)(v91, v97, v44);
        v69 = v66(v65, 1, v44);
        v70 = v96;
        v71 = v98;
        v72 = v86;
        if (v69 != 1)
        {
          (*v84)(v94, v103);
        }
      }

      else
      {
        v67 = v91;
        v64(v91, v65, v44);
        v70 = v96;
        v68 = v97;
        v71 = v98;
        v72 = v86;
      }

      v73 = v107;
      v74 = v71(v67, v68);
      if (v73)
      {
        break;
      }

      v75 = v106;
      if (v74)
      {
        sub_1AAF90594();
      }

      v76 = v104;
      if (v71(v68, v104))
      {
        (*v72)(v76, v75);
        (*v85)(v76, v68, v75);
        v71 = v98;
      }

      v77 = v71(v67, v100);
      v107 = 0;
      v78 = v77;
      v79 = *v72;
      v44 = v106;
      (*v72)(v68, v106);
      if (v78)
      {
        v79(v67, v44);
      }

      else
      {
        v80 = v100;
        v79(v100, v44);
        v64(v80, v67, v44);
      }

      v59 = v89;
      v58 = v90;
      v57 = v93;
      sub_1AAF8FE94();
      v62 = v101(v57, 1, v44);
      v55 = v105;
      if (v62 == 1)
      {
        goto LABEL_12;
      }
    }

    v81 = *v72;
    v82 = v67;
    v83 = v106;
    (*v72)(v82, v106);
    v81(v68, v83);
    v81(v100, v83);
    v81(v104, v83);
    return (*(v70 + 8))(v89, v90);
  }
}

void sub_1AAF8A2FC()
{
  if (!qword_1EB424CD0)
  {
    sub_1AAF8CA64();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB424CD0);
    }
  }
}

uint64_t sub_1AAF8A364(uint64_t result, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v14 = result;
  v4 = a3 >> 1;
  v5 = (a3 >> 1) - a2;
  if (!__OFSUB__(a3 >> 1, a2))
  {
    v7 = a3 >> 1;
    while (1)
    {
      if (v5 < 1)
      {
        return v7;
      }

      v8 = v5;
      v5 = v5 >> 1;
      v9 = v7 - v5;
      if (__OFADD__(v7, -v5))
      {
        break;
      }

      v10 = v9 - 1;
      if (__OFSUB__(v9, 1))
      {
        goto LABEL_15;
      }

      if (v10 < a2 || v10 >= v4)
      {
        goto LABEL_16;
      }

      v12 = *(v14 + 8 * v10);

      v13 = a4(v10, v12);

      if ((v13 & 1) == 0)
      {
        v5 = v8 + ~v5;
        v7 = v10;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1AAF8A454(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(a3 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v3 = *(a3 + 8 * result + 32);
  if ((v3 & 0x8000000000000000) == 0)
  {
    return sub_1AAF8F944();
  }

  v4 = __OFSUB__(0, v3);
  result = -v3;
  if (!v4)
  {
    return sub_1AAF8F944();
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_1AAF8A4B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v9 - 1;
  if (v9 < 1)
  {
    return;
  }

  v11 = sub_1AAF8F8D4();
  (*(v6 + 16))(v8, a1, v5);
  sub_1AAF8F914();
  sub_1AAF8F8E4();
  if (__OFSUB__(0, v11))
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = v3[1];
  ++v3;
  v5 = v12;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_9:
    v5 = sub_1AACF04D8(0, *(v5 + 2) + 1, 1, v5);
  }

  v14 = *(v5 + 2);
  v13 = *(v5 + 3);
  if (v14 >= v13 >> 1)
  {
    v5 = sub_1AACF04D8((v13 > 1), v14 + 1, 1, v5);
  }

  *(v5 + 2) = v14 + 1;
  v15 = &v5[8 * v14];
  *(v15 + 32) = -v11;
  *v3 = v5;
  sub_1AADC9038(v10, v11, v15);
}

uint64_t sub_1AAF8A640@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AAF8A634(a1, *(v2 + 8));
  *a2 = result;
  return result;
}

void (*sub_1AAF8A66C(void *a1, unint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  v7[4] = sub_1AAF8A6F8(v7, *a2, *v3, v3[1], *(a3 + 16));
  return sub_1AAD9E48C;
}

void (*sub_1AAF8A6F8(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(void *a1)
{
  v9 = *(a5 - 8);
  *a1 = a5;
  a1[1] = v9;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  a1[2] = v10;
  sub_1AAF8A454(a2, a3, a4);
  return sub_1AAD9E5BC;
}

uint64_t sub_1AAF8A7D4()
{
  swift_getWitnessTable();

  return sub_1AAF8FB04();
}

__n128 sub_1AAF8A840@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_1AAF8A850(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1AAF8A8A4()
{
  swift_getWitnessTable();
  v0 = sub_1AAD9EC60();

  return v0;
}

uint64_t sub_1AAF8A908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AACAF444(a3, a3);
  v6 = *(a3 - 8);
  swift_allocObject();
  v7 = sub_1AAF8F854();
  (*(v6 + 16))(v8, a1, a3);
  result = sub_1AAE935DC(v7);
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v10 = result;
    v11 = sub_1AAF8F8A4();
    *(v11 + 16) = a2;
    bzero((v11 + 32), 8 * a2);
    return v10;
  }

  return result;
}

uint64_t sub_1AAF8AA2C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1AAF8ABA8(void *a1)
{
  if (*a1 == 512)
  {
    sub_1AADCF1A0();
    if (!v1)
    {
      __break(1u);
    }
  }
}

void sub_1AAF8AC14(void *a1, uint64_t a2, uint64_t a3, char *a4, char *a5, char *a6, uint64_t a7, uint64_t a8, char **a9)
{
  v15 = a1;
  sub_1AAF8ABA8(a1);
  if (v18)
  {
    v19 = v16;
    v44 = v17;
    sub_1AADCF1A0();
    if (!v20)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v21 = v20;
    sub_1AADCF1A0();
    if (!v22)
    {
LABEL_28:
      __break(1u);
      return;
    }

    if (v21 == v22)
    {
      if (a3)
      {
        v23 = *(a2 + 4 * a3);
        v24 = __OFADD__(a4, v23);
        a4 += v23;
        v15 = v44;
        if (v24)
        {
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        a2 = v19;
      }

      else
      {
        a2 = v19;
        v15 = v44;
      }

      sub_1AAF8AC14(*v15, a2, 0, a4, a5, a6, a7, a8, a9);
      v15 = v15[1];
      sub_1AAF8ABA8(v15);
      if (v27)
      {
        v28 = v25;
        v29 = v26;
        while (1)
        {
          sub_1AADCF1A0();
          if (!v30)
          {
            goto LABEL_27;
          }

          v31 = v30;
          sub_1AADCF1A0();
          if (!v32)
          {
            goto LABEL_28;
          }

          if (v31 == v32)
          {
            v33 = *(a2 + 8);
            v24 = __OFADD__(a4, v33);
            a4 += v33;
            if (v24)
            {
              goto LABEL_23;
            }

            a2 = v28;
            sub_1AAF8AC14(*v29, v28, 0, a4, a5, a6, a7, a8, a9);
            v15 = v29[1];
            sub_1AAF8ABA8(v15);
            v28 = v34;
            v29 = v35;
            if (v36)
            {
              continue;
            }
          }

          break;
        }
      }

      a3 = 2;
    }
  }

  v37 = (a2 + 4 * a3);
  v38 = *v37;
  a6 = &a4[v38];
  if (__OFADD__(a4, v38))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v39 = v37[1];
  a5 = &a4[v39];
  if (__OFADD__(a4, v39))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  a4 = *a9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a9 = a4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_26:
    a4 = sub_1AAD68B38(0, *(a4 + 2) + 1, 1, a4);
    *a9 = a4;
  }

  v42 = *(a4 + 2);
  v41 = *(a4 + 3);
  if (v42 >= v41 >> 1)
  {
    a4 = sub_1AAD68B38((v41 > 1), v42 + 1, 1, a4);
    *a9 = a4;
  }

  *(a4 + 2) = v42 + 1;
  v43 = &a4[24 * v42];
  *(v43 + 4) = v15;
  *(v43 + 5) = a6;
  *(v43 + 6) = a5;
}

uint64_t sub_1AAF8AE4C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1AAF8AEF0(uint64_t a1)
{
  sub_1AACB634C(a1);

  JUMPOUT(0x1AC59A0D0);
}

uint64_t sub_1AAF8AF54()
{

  return swift_deallocClassInstance();
}

void sub_1AAF8AFB0()
{
  sub_1AAF900D4();
  type metadata accessor for ThreadSpecific();
  sub_1AAF907B4();

  MEMORY[0x1AC5982F0](0xD000000000000020, 0x80000001AAFD0E00);
  sub_1AAF902C4();
  __break(1u);
}

uint64_t sub_1AAF8B0C0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, unint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1AAF8B104(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AAF8B104(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AAD45974();
    v7 = a3(a1, MEMORY[0x1E69E63B0], v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

float64_t sub_1AAF8B168(double a1, float64x2_t a2, float64x2_t a3)
{
  if ((vmovn_s64(vceqq_f64(a2, a3)).u8[0] & 1) == 0)
  {
    a2 = vsubq_f64(a2, a3);
    *&a2.f64[0] = *&vaddq_f64(vmulq_n_f64(a2, (a1 - a3.f64[0]) / a2.f64[0]), a3);
  }

  return a2.f64[0];
}

uint64_t sub_1AAF8B248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t, uint64_t, uint64_t))
{
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 32))(v12, a1);
  a5(v12, a2, a3, a4);
  return (*(v10 + 8))(v12, a3);
}

double sub_1AAF8B350@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_1AAF8B35C(double *a1, void *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_1AAF8B368@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

double sub_1AAF8B374(double *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 8) = *a1;
  return result;
}

double sub_1AAF8B380@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 16);
  *a2 = result;
  return result;
}

double sub_1AAF8B38C(double *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 16) = *a1;
  return result;
}

double sub_1AAF8B398@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 24);
  *a2 = result;
  return result;
}

double sub_1AAF8B3A4(double *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 24) = *a1;
  return result;
}

uint64_t sub_1AAF8B3B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAF90044();
  return (*(v4 + 32))(a2, v6, a1);
}

uint64_t sub_1AAF8B474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v28 = &v26 - v18;
  v19 = v7[2];
  v19(v15, v17);
  (v19)(v12, a2, a3);
  sub_1AAF90044();
  result = sub_1AAF90034();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v21 = result;
    v27 = a4;
    if (result)
    {
      v22 = 0;
      do
      {
        sub_1AAF90054();
        sub_1AAF90054();
        v31 = v30 + v29;
        sub_1AAF90064();
        ++v22;
      }

      while (v21 != v22);
    }

    v23 = v7[1];
    v23(v12, a3);
    v23(v15, a3);
    v24 = v7[4];
    v25 = v28;
    v24(v28, v9, a3);
    return (v24)(v27, v25, a3);
  }

  return result;
}

uint64_t sub_1AAF8B6D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v28 = &v26 - v18;
  v19 = v7[2];
  v19(v15, v17);
  (v19)(v12, a2, a3);
  sub_1AAF90044();
  result = sub_1AAF90034();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v21 = result;
    v27 = a4;
    if (result)
    {
      v22 = 0;
      do
      {
        sub_1AAF90054();
        sub_1AAF90054();
        v31 = v30 - v29;
        sub_1AAF90064();
        ++v22;
      }

      while (v21 != v22);
    }

    v23 = v7[1];
    v23(v12, a3);
    v23(v15, a3);
    v24 = v7[4];
    v25 = v28;
    v24(v28, v9, a3);
    return (v24)(v27, v25, a3);
  }

  return result;
}

uint64_t sub_1AAF8B93C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  v17 = *(v4 + 16);
  v17(v12, v1, v3, v14);
  (v17)(v9, v1, v3);
  v18 = *(a1 + 24);
  sub_1AAF90044();
  result = sub_1AAF90034();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v20 = result;
    v26 = v18;
    v27 = v16;
    if (result)
    {
      v21 = 0;
      do
      {
        sub_1AAF90054();
        sub_1AAF90054();
        v30 = v29 * v28;
        sub_1AAF90064();
        ++v21;
      }

      while (v20 != v21);
    }

    v22 = *(v4 + 8);
    v22(v9, v3);
    v22(v12, v3);
    v23 = v27;
    (*(v4 + 32))(v27, v6, v3);
    v24 = sub_1AAF8C148();
    sub_1AAF8BBB4(v26, v24, &v30);
    return (v22)(v23, v3);
  }

  return result;
}

uint64_t sub_1AAF8BBB4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v17 - v8;
  v10 = *(*(*(a2 + 16) + 8) + 8);
  sub_1AAF90314();
  v20 = a3;
  sub_1AAF90154();
  v18 = *(v7 + 8);
  v18(v9, AssociatedTypeWitness);
  result = sub_1AAF90034();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v12 = result;
    v19 = v10;
    v13 = v18;
    if (result)
    {
      v14 = v5;
      result = 0;
      do
      {
        v15 = result + 1;
        v16 = v14;
        sub_1AAF90054();
        sub_1AAF90304();
        v13(v9, AssociatedTypeWitness);
        v14 = v16;
        result = v15;
      }

      while (v12 != v15);
    }
  }

  return result;
}

uint64_t sub_1AAF8BD7C(uint64_t a1, double a2)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - v16;
  v26 = v5;
  v27 = *(v5 + 32);
  v27(&v25 - v16, v2, v4, v15);
  sub_1AAF90044();
  result = sub_1AAF90034();
  if (result < 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v19 = result;
  v25 = v2;
  if (result)
  {
    v20 = 0;
    do
    {
      v21 = v20 + 1;
      v30 = a2;
      sub_1AAF90064();
      v20 = v21;
    }

    while (v19 != v21);
  }

  (v27)(v13, v10, v4);
  sub_1AAF90044();
  result = sub_1AAF90034();
  if (result < 0)
  {
    goto LABEL_11;
  }

  v22 = result;
  if (result)
  {
    v23 = 0;
    do
    {
      sub_1AAF90054();
      sub_1AAF90054();
      v30 = v29 * v28;
      sub_1AAF90064();
      ++v23;
    }

    while (v22 != v23);
  }

  v24 = *(v26 + 8);
  v24(v13, v4);
  v24(v17, v4);
  return (v27)(v25, v7, v4);
}

unint64_t sub_1AAF8C148()
{
  result = qword_1EB4278C8;
  if (!qword_1EB4278C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4278C8);
  }

  return result;
}

uint64_t sub_1AAF8C1AC(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_1ED9B6D38 == -1)
  {
    if (qword_1ED9B6D40)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_1AAF8C674();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1ED9B6D40)
    {
      return _availability_version_check();
    }
  }

  if (qword_1ED9B6D30 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_1AAF8C68C();
    a3 = v10;
    a4 = v9;
    v8 = dword_1ED9B6D20 < v11;
    if (dword_1ED9B6D20 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1ED9B6D24 > a3)
      {
        return 1;
      }

      if (dword_1ED9B6D24 >= a3)
      {
        return dword_1ED9B6D28 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_1ED9B6D20 < a2;
  if (dword_1ED9B6D20 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_1AAF8C340(uint64_t result)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = qword_1ED9B6D40;
  if (qword_1ED9B6D40)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x1EEE9AC60])
    {
      v1 = MEMORY[0x1EEE9AC60];
      qword_1ED9B6D40 = MEMORY[0x1EEE9AC60];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x1AC5998D0](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_1ED9B6D20, &dword_1ED9B6D24, &dword_1ED9B6D28);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

CGRect CGPathGetPathBoundingBox(CGPathRef path)
{
  MEMORY[0x1EEDBAC58](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

simd_float4x4 __invert_f4(simd_float4x4 a1)
{
  MEMORY[0x1EEE73560](a1.columns[0], a1.columns[1], a1.columns[2], a1.columns[3]);
  result.columns[3].i64[1] = v8;
  result.columns[3].i64[0] = v7;
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}