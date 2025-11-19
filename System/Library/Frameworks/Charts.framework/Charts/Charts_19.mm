unsigned int *sub_1AAE0EAA8(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t sub_1AAE0ECF8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1AAF90774();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AAE0ED8C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1AAE0EEC8(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_1AAE0F0D4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = *a2;
  v6 = *(a2 + 1);
  v7 = type metadata accessor for ModifiedChartContent_AccessibilityHidden();
  v45 = a1;
  sub_1AAF3032C(0, 0, 0, 0, *(a1 + *(v7 + 44)), __dst);
  v8 = __dst[0];
  v9 = __dst[1];
  v10 = __dst[2];
  v11 = __dst[3];
  v41 = __dst[4];
  v12 = __dst[5];
  v42 = __dst[6];
  v13 = v6 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v39 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v40 = v13;
  v14 = v13 + *(v39 + 108);
  v46 = v12;
  if (!*(v14 + 24))
  {
    memset(__src, 0, 24);
    __src[3] = 2;
    bzero(&__src[4], 0x2A9uLL);

    goto LABEL_5;
  }

  sub_1AAE0FC20(v14, v52);

  sub_1AAF303E4(__src);
  sub_1AAE0FC7C(v52);
  if (__src[3] == 2)
  {
LABEL_5:
    type metadata accessor for TypedVectorizedProperties();
    v28 = sub_1AAF8FE74();
    (*(*(v28 - 8) + 8))(__src, v28);
    memset(v57, 0, 24);
    v57[3] = 1;
    v57[5] = 0;
    v57[4] = 0;
    v58 = 0;
    memset(v59, 0, 24);
    v59[3] = 1;
    v59[5] = 0;
    v59[4] = 0;
    v60 = 0;
    v61 = 0uLL;
    v62 = 0;
    v63 = 1;
    v64 = 0u;
    memset(v65, 0, sizeof(v65));
    v47 = 0uLL;
    v48 = 0;
    v49 = 1;
    v50 = 0u;
    memset(v51, 0, sizeof(v51));
    memset(v66, 0, sizeof(v66));
    v67 = -4;
    sub_1AAD3CF1C(v53);
    v68[6] = v53[6];
    v68[7] = v53[7];
    v69 = v54;
    v68[2] = v53[2];
    v68[3] = v53[3];
    v68[5] = v53[5];
    v68[4] = v53[4];
    v68[1] = v53[1];
    v68[0] = v53[0];
    memset(v70, 0, 24);
    v70[3] = 1;
    v70[5] = 0;
    v70[4] = 0;
    v71 = 0;
    v72[0] = v8;
    v72[1] = v9;
    v29 = v10;
    v72[2] = v10;
    v72[3] = v11;
    v30 = v11;
    v22 = v41;
    v72[4] = v41;
    v72[5] = v12;
    v23 = v42;
    v73 = v42;
    v74 = 0uLL;
    v75 = 0;
    v76 = 1;
    v79 = 0;
    v77 = 0u;
    v78 = 0u;
    sub_1AAF304C8(v57, v59, &v61, &v47, v66, v68, v70, v72, v52, &v74, &v74);
    v27 = v8;
    v19 = v9;
    LOBYTE(v9) = v29;
    v21 = v30;
    sub_1AAF30464(v52, &v47);
    swift_beginAccess();
    v31 = *(v39 + 108);
    sub_1AADA61DC(v27, v19, v9, v30);
    sub_1AAD3CEFC(v41, v12, v42);
    sub_1AAE0FB6C(&v47, v40 + v31);
    swift_endAccess();
    goto LABEL_6;
  }

  memcpy(__dst, __src, 0x2C9uLL);
  v36 = __dst[66];
  v37 = __dst[65];
  v34 = __dst[68];
  v35 = __dst[67];
  v15 = __dst[69];
  v33 = __dst[70];
  v38 = v6;
  v16 = __dst[71];
  v17 = v8;
  v18 = v8;
  v19 = v9;
  v20 = v9;
  v9 = v10;
  v21 = v11;
  sub_1AADA61DC(v18, v20, v10, v11);
  v22 = v41;
  v23 = v42;
  sub_1AAD3CEFC(v41, v46, v42);
  v24 = v16;
  v6 = v38;
  sub_1AAD3D034(v37, v36, v35, v34, v15, v33, v24);
  __dst[65] = v17;
  __dst[66] = v19;
  __dst[67] = v9;
  __dst[68] = v21;
  __dst[69] = v41;
  __dst[70] = v46;
  LOBYTE(__dst[71]) = v42;
  v25 = type metadata accessor for TypedVectorizedProperties();
  v26 = *(v25 - 8);
  (*(v26 + 16))(__src, __dst, v25);
  v27 = v17;
  sub_1AAF30464(__src, v52);
  swift_beginAccess();
  sub_1AAE0FB6C(v52, v40 + *(v39 + 108));
  swift_endAccess();
  (*(v26 + 8))(__dst, v25);
  v12 = v46;
LABEL_6:
  LOBYTE(__dst[0]) = v44;
  __dst[1] = v6;
  (*(a5 + 40))(v45, __dst);
  sub_1AADA6198(v27, v19, v9, v21);
  return sub_1AAD3D014(v22, v12, v23);
}

void *sub_1AAE0F680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v7 = *(a2 + 8);
  if ((*a2 & 1) == 0)
  {
    v13[0] = 0;
    v14 = v7;
    v12 = a4;
LABEL_6:
    result = (*(v12 + 40))(&v15, a1, v13, a3);
    v11 = v15;
    goto LABEL_7;
  }

  v8 = a1;
  result = type metadata accessor for AXHiddenModifier();
  if ((*(v8 + *(result + 9)) & 1) == 0)
  {
    a1 = v8;
    v13[0] = 1;
    v14 = v7;
    v12 = a4;
    goto LABEL_6;
  }

  v11 = 0xE000000000000000;
LABEL_7:
  *a5 = v11;
  return result;
}

uint64_t sub_1AAE0F740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = type metadata accessor for CollectedChartContent(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a2 + *(type metadata accessor for _ChartContentCollectInputs(0) + 32)) != 1)
  {
    return (*(a4 + 64))(a1, a2, a3, a4);
  }

  (*(a4 + 64))(&v27, a1, a2, a3, a4);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v34 = 1;
  memset(v35, 0, sizeof(v35));
  v36 = 1;
  sub_1AAE0F994(&v29, v26);
  sub_1AAE0F9F0(v35);
  sub_1AAE0FA44();
  v15 = v14;
  v16 = swift_allocBox();
  v18 = v17 + *(v15 + 48);
  sub_1AAF027E4(v17);
  v19 = v30;
  *v18 = v29;
  *(v18 + 1) = v19;
  v20 = v31;
  v21 = v32;
  v22 = v33;
  v18[80] = v34;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  *(v18 + 2) = v20;
  v18[81] = 1;
  *v13 = v16;
  swift_storeEnumTagMultiPayload();
  sub_1AADFA56C(&v28, (a5 + 1));
  sub_1AAE0FAB0();
  v23 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1AAF92AB0;
  sub_1AAE0FB08(v13, v24 + v23);
  result = sub_1AAD58308(&v27);
  *a5 = v24;
  return result;
}

void sub_1AAE0FA44()
{
  if (!qword_1ED9AE350)
  {
    type metadata accessor for CollectedChartContent(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED9AE350);
    }
  }
}

void sub_1AAE0FAB0()
{
  if (!qword_1ED9AD6F8)
  {
    type metadata accessor for CollectedChartContent(255);
    v0 = sub_1AAF90484();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9AD6F8);
    }
  }
}

uint64_t sub_1AAE0FB08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectedChartContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAE0FB6C(uint64_t a1, uint64_t a2)
{
  sub_1AAE0FBD0();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1AAE0FBD0()
{
  if (!qword_1ED9B3A10)
  {
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B3A10);
    }
  }
}

uint64_t sub_1AAE0FCD0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  if (!a3)
  {
  }

  return result;
}

uint64_t sub_1AAE0FD00(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  if (!a3)
  {
  }

  return result;
}

uint64_t sub_1AAE0FD30(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a4 != 1)
  {
    sub_1AADA6198(result, a2, a3, a4);

    return sub_1AAE0FD00(a5, a6, a7);
  }

  return result;
}

uint64_t sub_1AAE0FD8C(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 2:

    case 1:

    case 0:
      sub_1AACD7304(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1AAE0FE08(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 2:

    case 1:

    case 0:
      sub_1AAD04750(result, a2, a3 & 1);
  }

  return result;
}

uint64_t static AnnotationPosition.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
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

  else if (v2 == v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1AAE0FF40(unsigned __int8 *a1, unsigned __int8 *a2)
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

  else if (v2 == v3)
  {
    return 1;
  }

  return 0;
}

_BYTE *AnnotationOverflowResolution.init(x:y:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *a2;
  *a3 = *result;
  a3[1] = v3;
  return result;
}

uint64_t static AnnotationOverflowResolution.automatic.getter@<X0>(_WORD *a1@<X8>)
{
  if (qword_1ED9B0AB0 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = word_1ED9B0AB8;
  return result;
}

uint64_t ChartContent.annotation<A>(position:alignment:spacing:content:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double a4@<X3>, int a5@<W4>, void (*a6)(void)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v29 = a7;
  v30 = a6;
  v28 = a5;
  v32 = a2;
  v33 = a3;
  v31 = a9;
  v34[0] = a8;
  v34[1] = a10;
  v34[2] = a11;
  v34[3] = a12;
  v16 = type metadata accessor for ModifiedChartContent_Annotate.AnnotationBody();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27[-v17];
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v27[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = *a1;
  (*(v24 + 16))(v22, v12, a8, v20);
  if (qword_1ED9B0AB0 != -1)
  {
    swift_once();
  }

  if (v28)
  {
    v25 = 4.0;
  }

  else
  {
    v25 = a4;
  }

  if (v23 == 9)
  {
    LOBYTE(v23) = 1;
  }

  LOWORD(v34[0]) = word_1ED9B0AB8;
  v30();
  swift_storeEnumTagMultiPayload();
  return sub_1AAE10248(v22, v23, v32, v33, v34, v18, a8, v31, v25);
}

uint64_t sub_1AAE10248@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int16 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  v15 = *a5;
  (*(*(a7 - 8) + 32))(a8, a1, a7);
  v16 = type metadata accessor for ModifiedChartContent_Annotate();
  *(a8 + v16[13]) = a2;
  v17 = (a8 + v16[14]);
  *v17 = a3;
  v17[1] = a4;
  *(a8 + v16[15]) = a9;
  *(a8 + v16[16]) = v15;
  v18 = v16[17];
  v19 = type metadata accessor for ModifiedChartContent_Annotate.AnnotationBody();
  return (*(*(v19 - 8) + 32))(a8 + v18, a6, v19);
}

uint64_t ChartContent.annotation<A>(position:alignment:spacing:content:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  v31 = a6;
  v32 = a9;
  v30 = a5;
  v29 = a4;
  v33 = a2;
  v34 = a3;
  v35[0] = a8;
  v35[1] = a10;
  v35[2] = a11;
  v35[3] = a12;
  v17 = type metadata accessor for ModifiedChartContent_Annotate.AnnotationBody();
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v29 - v18);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  (*(v25 + 16))(v23, v13, a8, v21);
  if (qword_1ED9B0AB0 != -1)
  {
    swift_once();
  }

  if (v30)
  {
    v26 = 4.0;
  }

  else
  {
    v26 = v29;
  }

  LOWORD(v35[0]) = word_1ED9B0AB8;
  if (v24 == 9)
  {
    v27 = 1;
  }

  else
  {
    v27 = v24;
  }

  *v19 = v31;
  v19[1] = a7;
  swift_storeEnumTagMultiPayload();
  sub_1AAE10248(v23, v27, v33, v34, v35, v19, a8, v32, v26);
}

_BYTE *AnnotationBoundaryResolution.init(x:y:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *a2;
  *a3 = *result;
  a3[1] = v3;
  return result;
}

uint64_t ChartContent.annotation<A>(position:alignment:spacing:overflowResolution:content:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double a4@<X3>, int a5@<W4>, __int16 *a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v30 = a4;
  v32 = a8;
  v33 = a7;
  v31 = a5;
  v35 = a2;
  v36 = a3;
  v34 = a9;
  v37[0] = a10;
  v37[1] = a11;
  v37[2] = a12;
  v37[3] = a13;
  v15 = type metadata accessor for ModifiedChartContent_Annotate.AnnotationBody();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  v23 = *a6;
  v25 = (*(v24 + 16))(v21, v29, a10, v19);
  if (v22 == 9)
  {
    v26 = 1;
  }

  else
  {
    v26 = v22;
  }

  if (v31)
  {
    v27 = 4.0;
  }

  else
  {
    v27 = v30;
  }

  LOWORD(v37[0]) = v23;
  v33(v25);
  swift_storeEnumTagMultiPayload();
  return sub_1AAE10248(v21, v26, v35, v36, v37, v17, a10, v34, v27);
}

uint64_t ChartContent.annotation<A>(position:alignment:spacing:overflowResolution:content:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double a4@<X3>, int a5@<W4>, __int16 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v33 = a7;
  v34 = a8;
  v32 = a5;
  v31 = a4;
  v36 = a2;
  v37 = a3;
  v35 = a9;
  v38[0] = a10;
  v38[1] = a11;
  v38[2] = a12;
  v38[3] = a13;
  v16 = type metadata accessor for ModifiedChartContent_Annotate.AnnotationBody();
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v30 - v17);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  v24 = *a6;
  (*(v25 + 16))(v22, v13, a10, v20);
  if (v23 == 9)
  {
    v26 = 1;
  }

  else
  {
    v26 = v23;
  }

  LOWORD(v38[0]) = v24;
  if (v32)
  {
    v27 = 4.0;
  }

  else
  {
    v27 = v31;
  }

  v28 = v34;
  *v18 = v33;
  v18[1] = v28;
  swift_storeEnumTagMultiPayload();
  sub_1AAE10248(v22, v26, v36, v37, v38, v18, a10, v35, v27);
}

uint64_t ChartContent.annotation<A>(position:alignment:spacing:boundaryResolution:content:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double a4@<X3>, char a5@<W4>, __int16 *a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v13 = *a6;
  v16 = *a1;
  v15 = v13;
  return ChartContent.annotation<A>(position:alignment:spacing:overflowResolution:content:)(&v16, a2, a3, a4, a5 & 1, &v15, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t ChartContent.annotation<A>(position:alignment:spacing:boundaryResolution:content:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double a4@<X3>, char a5@<W4>, __int16 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v13 = *a6;
  v16 = *a1;
  v15 = v13;
  return ChartContent.annotation<A>(position:alignment:spacing:overflowResolution:content:)(&v16, a2, a3, a4, a5 & 1, &v15, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t getEnumTagSinglePayload for AnnotationPosition(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AnnotationPosition(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SgAnnotation.OverflowResolution(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 65285 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65285 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65285;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65285;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65285;
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

_WORD *storeEnumTagSinglePayload for SgAnnotation.OverflowResolution(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65285 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65285 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 16) + 1;
    *result = a2 - 251;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1AAE10D14(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CollectedChartContent.PrimitiveType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1AAE10E84()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ModifiedChartContent_Annotate.AnnotationBody();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AAE10F50(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(*(a3 + 24) - 8);
  v7 = *(v6 + 64);
  if (v7 <= 0x10)
  {
    v7 = 16;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (v5 <= 0xFE)
  {
    v9 = 254;
  }

  else
  {
    v9 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v10 = *(v6 + 80) & 0xF8 | 7;
  v11 = a2 - v9;
  if (a2 <= v9)
  {
    goto LABEL_28;
  }

  v12 = v7 + ((v10 + (((v8 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 10) & ~v10) + 1;
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v16 < 2)
    {
LABEL_28:
      if (v5 >= 0xFE)
      {
        return (*(v4 + 48))();
      }

      v18 = *(((((((a1 + v8) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + v10 + 10) & ~v10) + v7);
      if (v18 >= 2)
      {
        return (v18 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_28;
  }

LABEL_17:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v12) = *a1;
      }
    }

    else if (v12 == 1)
    {
      LODWORD(v12) = *a1;
    }

    else
    {
      LODWORD(v12) = *a1;
    }
  }

  return v9 + (v12 | v17) + 1;
}

void sub_1AAE11154(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = 16;
  if (*(v7 + 64) > 0x10uLL)
  {
    v8 = *(v7 + 64);
  }

  if (v6 <= 0xFE)
  {
    v9 = 254;
  }

  else
  {
    v9 = *(v5 + 84);
  }

  v10 = *(*(*(a4 + 16) - 8) + 64);
  v11 = *(v7 + 80) & 0xF8 | 7;
  v12 = v8 + 1;
  v13 = ((v11 + (((v10 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 10) & ~v11) + v8 + 1;
  v14 = a3 >= v9;
  v15 = a3 - v9;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
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
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v9 < a2)
  {
    v17 = ~v9 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = a1;
        bzero(a1, v13);
        a1 = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_57:
              if (v16 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v18 = a1;
      bzero(a1, v13);
      a1 = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v16)
    {
      a1[v13] = v19;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v13] = 0;
LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!v16)
  {
    goto LABEL_32;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v6 < 0xFE)
  {
    v25 = (((((&a1[v10] & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + v11 + 10) & ~v11);
    if (a2 > 0xFE)
    {
      if (v12 <= 3)
      {
        v26 = ~(-1 << (8 * v12));
      }

      else
      {
        v26 = -1;
      }

      if (v8 != -1)
      {
        v27 = v26 & (a2 - 255);
        if (v12 <= 3)
        {
          v28 = v8 + 1;
        }

        else
        {
          v28 = 4;
        }

        bzero(v25, v8 + 1);
        if (v28 > 2)
        {
          if (v28 == 3)
          {
            *v25 = v27;
            v25[2] = BYTE2(v27);
          }

          else
          {
            *v25 = v27;
          }
        }

        else if (v28 == 1)
        {
          *v25 = v27;
        }

        else
        {
          *v25 = v27;
        }
      }
    }

    else
    {
      v25[v8] = -a2;
    }
  }

  else
  {
    v24 = *(v5 + 56);

    v24();
  }
}

uint64_t getEnumTagSinglePayload for AnnotationOverflowResolution.Strategy.Storage(unsigned __int8 *a1, unsigned int a2)
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

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
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

  if (v8 >= 4)
  {
    return v8 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AnnotationOverflowResolution.Strategy.Storage(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1AAE1161C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1AAE11630(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

unint64_t sub_1AAE11650()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1AACFDCAC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AAE116C8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
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

void sub_1AAE117E0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 24) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
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

unint64_t sub_1AAE1199C()
{
  result = qword_1EB425208;
  if (!qword_1EB425208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB425208);
  }

  return result;
}

unint64_t sub_1AAE119F4()
{
  result = qword_1EB425210[0];
  if (!qword_1EB425210[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB425210);
  }

  return result;
}

uint64_t sub_1AAE11A48(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *a2;
  v8 = *(*a2 + 16);
  v9 = *(v8 + 16);
  v10 = *(v9 + 32);

  v11 = sub_1AACD5520(0, v10);
  v12 = *(v9 + 32);
  *(v9 + 32) = v11;
  v13 = *(v8 + 24);
  *(v8 + 24) = v11;
  v16 = v15;
  (*(a5 + 32))(a1, &v16, a3, a5);
  *(v8 + 24) = v13;

  *(v9 + 32) = v12;
}

uint64_t sub_1AAE11B2C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v115 = a7;
  v110 = type metadata accessor for SgGroup(0);
  MEMORY[0x1EEE9AC00](v110);
  v109 = (&v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v118 = a3;
  *(&v118 + 1) = a4;
  *&v119 = a5;
  *(&v119 + 1) = a6;
  v106 = a6;
  v104 = type metadata accessor for ModifiedChartContent_Annotate.AnnotationBody();
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  *&v111 = &v99 - v14;
  v114 = a4;
  v113 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v15);
  *&v107 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v105 = &v99 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v112 = &v99 - v20;
  v21 = *a2;
  v22 = *(a2 + 1);
  v23 = *(v22 + 16);
  v24 = *(v23 + 16);
  v25 = *(v24 + 32);

  v26 = sub_1AACD5520(0, v25);
  v27 = *(v24 + 32);
  *(v24 + 32) = v26;
  v28 = *(v23 + 24);
  *(v23 + 24) = v26;
  LOBYTE(v118) = v21;
  v108 = v22;
  *(&v118 + 1) = v22;
  (*(a5 + 40))(v117, a1, &v118, a3, a5);
  *(v23 + 24) = v28;
  *(v24 + 32) = v27;

  v29 = *v117;

  v30 = sub_1AAF517A0(v29);
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v121.origin.x = v30;
  v121.origin.y = v32;
  v121.size.width = v34;
  v121.size.height = v36;
  result = CGRectEqualToRect(v121, *MEMORY[0x1E695F050]);
  if ((result & 1) == 0)
  {
    v38 = v114;
    *&v118 = a3;
    *(&v118 + 1) = v114;
    v39 = v106;
    *&v119 = a5;
    *(&v119 + 1) = v106;
    v40 = type metadata accessor for ModifiedChartContent_Annotate();
    v41 = v40[14];
    v42 = *(a1 + v40[13]);
    v43 = *(a1 + v41);
    v44 = *(a1 + v41 + 8);
    v45 = sub_1AAE12380(v43, v44, v42);
    v47 = v46;
    v102 = v48;
    v101 = v49;
    v99 = *(a1 + v40[15]);
    sub_1AAE1264C(v43, v44, v42);
    v51 = v50;
    v100 = v52;
    v122.origin.x = v30;
    v122.origin.y = v32;
    v122.size.width = v34;
    v122.size.height = v36;
    MinX = CGRectGetMinX(v122);
    v123.origin.x = v30;
    v123.origin.y = v32;
    v123.size.width = v34;
    v123.size.height = v36;
    v54 = MinX + v45 * CGRectGetWidth(v123);
    v124.origin.x = v30;
    v124.origin.y = v32;
    v124.size.width = v34;
    v124.size.height = v36;
    MinY = CGRectGetMinY(v124);
    v125.origin.x = v30;
    v125.origin.y = v32;
    v125.size.width = v34;
    v125.size.height = v36;
    v56 = MinY + v47 * CGRectGetHeight(v125);
    v57 = v40[17];
    v58 = *(v103 + 16);
    v103 = a1;
    v58(v111, a1 + v57, v104);
    v59 = v38;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v60 = *v111;
      v118 = 0uLL;
      v61 = v105;
      v60(&v118);

      v62 = v113;
      v63 = *(v113 + 32);
    }

    else
    {
      v62 = v113;
      v63 = *(v113 + 32);
      v61 = v105;
      v63(v105, v111, v38);
    }

    v64 = v51 + v54;
    v65 = v100 + v56;
    v66 = v112;
    v63(v112, v61, v59);
    v67 = v107;
    (*(v62 + 16))(v107, v66, v59);
    sub_1AAF51E48(v67, v59, v39, &v118);
    v107 = v119;
    v111 = v118;
    v106 = v120;
    if (v42)
    {
      v68 = sub_1AAF8DFB4();
      v70 = v69;
      v72 = v71;
      v74 = v73;
    }

    else
    {
      v126.origin.x = v30;
      v126.origin.y = v32;
      v126.size.width = v34;
      v126.size.height = v36;
      v76 = CGRectGetWidth(v126) - (v99 + v99);
      v77 = v64;
      if (v76 < 0.0)
      {
        v78 = 0.0;
      }

      else
      {
        v78 = v76;
      }

      v127.origin.x = v30;
      v127.origin.y = v32;
      v127.size.width = v34;
      v127.size.height = v36;
      v70 = 0;
      v74 = 0;
      v75 = v99 + v99;
      v79 = CGRectGetHeight(v127) - v75;
      if (v79 < 0.0)
      {
        v79 = 0.0;
      }

      v68 = *&v78;
      v64 = v77;
      v72 = *&v79;
    }

    v80 = v103;
    v81 = v108;
    v82 = *(*(*(v108 + 16) + 16) + 32);

    v83 = sub_1AACD5520(1, v82);

    sub_1AAE1282C(&v118, v117);
    v117[0] = v70 & 1;
    v116 = v74 & 1;
    v84 = sub_1AACDFA18(&v118, v83, v68, v70 & 1, v72, v74 & 1);
    v86 = v85;
    *v117 = *(v80 + v40[16]);
    v87 = sub_1AAF67CC8(v117);
    v88 = *(*(*(v81 + 16) + 16) + 32);

    v89 = sub_1AACD5520(2, v88);

    sub_1AAE12888();
    v90 = swift_allocObject();
    *(v90 + 16) = xmmword_1AAF9E2B0;
    *(v90 + 32) = v29;
    v91 = swift_allocObject();
    *(v91 + 16) = v83;
    *(v91 + 24) = v64;
    *(v91 + 32) = v65;
    v92 = v101;
    *(v91 + 40) = v102;
    *(v91 + 48) = v92;
    *(v91 + 72) = v107;
    *(v91 + 56) = v111;
    *(v91 + 88) = v106;
    *(v91 + 96) = 0;
    *(v91 + 104) = v84;
    *(v91 + 112) = v86;
    *(v91 + 120) = 2;
    *(v91 + 128) = 0u;
    *(v91 + 144) = 0u;
    *(v91 + 160) = 0u;
    *(v91 + 176) = v87;
    *(v91 + 184) = 0;
    *(v90 + 40) = v91 | 0xA000000000000000;
    v93 = v110;
    v94 = *(v110 + 24);
    v95 = type metadata accessor for SgClipRect(0);
    v96 = v109;
    (*(*(v95 - 8) + 56))(v109 + v94, 1, 1, v95);

    sub_1AAE1282C(&v118, v117);
    v97 = sub_1AACAC5B8(v29);
    sub_1AACFD7CC(&v118);
    sub_1AACFD7CC(&v118);

    (*(v113 + 8))(v112, v114);
    *v96 = v89;
    v96[1] = v90;
    *(v96 + v93[7]) = 0x3FF0000000000000;
    *(v96 + v93[8]) = v97;
    *(v96 + v93[9]) = MEMORY[0x1E69E7CC0];
    *(v96 + v93[10]) = 0;
    v29 = swift_allocBox();
    result = sub_1AACE3DD4(v96, v98);
  }

  *v115 = v29;
  return result;
}

double sub_1AAE12380(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 3u)
  {
    if (a3 > 5u)
    {
      if (a3 != 6)
      {
        if (a3 == 7)
        {
          sub_1AAF8F214();
LABEL_29:
          v7 = v3;
          sub_1AAF8F204();
          return v7;
        }

        sub_1AAF8F224();
        goto LABEL_22;
      }

      sub_1AAF8F204();
LABEL_36:
      v7 = v6;
      sub_1AAF8F214();
      return v7;
    }

    if (a3 == 4)
    {
      sub_1AAF8E174();
      if (sub_1AAF8E164())
      {
        sub_1AAF8F204();
        goto LABEL_22;
      }

      sub_1AAF8E184();
      if (sub_1AAF8E164())
      {
        sub_1AAF8F224();
        goto LABEL_36;
      }

      sub_1AAF8F284();
LABEL_46:
      v7 = v10;
      sub_1AAF8F274();
      return v7;
    }

    sub_1AAF8F1F4();
LABEL_24:
    v7 = v8;
    sub_1AAF8F224();
    return v7;
  }

  if (a3 <= 1u)
  {
    if (a3)
    {
      sub_1AAF8E274();
      if (sub_1AAF8E164())
      {
        sub_1AAF8F1F4();
        goto LABEL_36;
      }

      sub_1AAF8E284();
      if (sub_1AAF8E164())
      {
        sub_1AAF8F204();
        goto LABEL_24;
      }

      sub_1AAF8F244();
LABEL_42:
      v7 = v9;
      sub_1AAF8F254();
      return v7;
    }

    sub_1AAF8F104();
    if (sub_1AAF8F0F4())
    {
      sub_1AAF8F244();
      goto LABEL_40;
    }

    sub_1AAF8F114();
    if (sub_1AAF8F0F4())
    {
      sub_1AAF8F254();
      goto LABEL_42;
    }

    sub_1AAF8F134();
    if (sub_1AAF8F0F4())
    {
      sub_1AAF8F274();
      goto LABEL_46;
    }

    sub_1AAF8F144();
    if ((sub_1AAF8F0F4() & 1) == 0)
    {
      sub_1AAF8F0B4();
      if (sub_1AAF8F0F4())
      {
        sub_1AAF8F1F4();
        goto LABEL_22;
      }

      sub_1AAF8F0C4();
      if (sub_1AAF8F0F4())
      {
        sub_1AAF8F204();
        goto LABEL_29;
      }

      sub_1AAF8F0D4();
      if (sub_1AAF8F0F4())
      {
        sub_1AAF8F214();
        goto LABEL_36;
      }

      sub_1AAF8F0E4();
      if ((sub_1AAF8F0F4() & 1) == 0)
      {
        sub_1AAF8F264();
        v7 = v13;
        sub_1AAF8F264();
        return v7;
      }

      sub_1AAF8F224();
      goto LABEL_24;
    }

    sub_1AAF8F284();
LABEL_44:
    v7 = v11;
    sub_1AAF8F284();
    return v7;
  }

  if (a3 != 2)
  {
    sub_1AAF8E174();
    if (sub_1AAF8E164())
    {
      sub_1AAF8F1F4();
      goto LABEL_29;
    }

    sub_1AAF8E184();
    if (sub_1AAF8E164())
    {
      sub_1AAF8F214();
      goto LABEL_24;
    }

    sub_1AAF8F274();
    goto LABEL_44;
  }

  sub_1AAF8E274();
  if ((sub_1AAF8E164() & 1) == 0)
  {
    sub_1AAF8E284();
    if (sub_1AAF8E164())
    {
      sub_1AAF8F224();
      goto LABEL_29;
    }

    sub_1AAF8F254();
LABEL_40:
    v7 = v4;
    sub_1AAF8F244();
    return v7;
  }

  sub_1AAF8F214();
LABEL_22:
  v7 = v5;
  sub_1AAF8F1F4();
  return v7;
}

uint64_t sub_1AAE1264C(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    sub_1AAF8F104();
    result = sub_1AAF8F0F4();
    if ((result & 1) == 0)
    {
      sub_1AAF8F114();
      result = sub_1AAF8F0F4();
      if ((result & 1) == 0)
      {
        sub_1AAF8F134();
        result = sub_1AAF8F0F4();
        if ((result & 1) == 0)
        {
          sub_1AAF8F144();
          result = sub_1AAF8F0F4();
          if ((result & 1) == 0)
          {
            sub_1AAF8F0B4();
            result = sub_1AAF8F0F4();
            if ((result & 1) == 0)
            {
              sub_1AAF8F0C4();
              result = sub_1AAF8F0F4();
              if ((result & 1) == 0)
              {
                sub_1AAF8F0D4();
                result = sub_1AAF8F0F4();
                if ((result & 1) == 0)
                {
                  sub_1AAF8F0E4();
                  return sub_1AAF8F0F4();
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

void sub_1AAE12888()
{
  if (!qword_1ED9B28D0)
  {
    v0 = sub_1AAF90484();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B28D0);
    }
  }
}

double ChartContent.compositingLayer()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AAF8E514();
  WitnessTable = swift_getWitnessTable();
  return ChartContent.compositingLayer<A>(style:)(sub_1AAE12998, a1, v4, WitnessTable, a2);
}

uint64_t sub_1AAE12998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AAF8E514();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

double ChartContent.compositingLayer<A>(style:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v9 = *(a2 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v13, v10);
  *&v18 = a2;
  *(&v18 + 1) = a3;
  *&v19 = a4;
  *(&v19 + 1) = swift_getOpaqueTypeMetadata2();
  v17[0] = a2;
  v17[1] = a3;
  v17[2] = a4;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1AACB2508(&v18);
  sub_1AAF8E504();
  (*(v9 + 32))(a5, v12, a2);
  v14 = a5 + *(type metadata accessor for CompositingLayer() + 36);
  result = *&v18;
  v16 = v19;
  *v14 = v18;
  *(v14 + 16) = v16;
  *(v14 + 32) = OpaqueTypeConformance2;
  return result;
}

uint64_t ChartContent.compositingLayer<A>(style:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = *(a3 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v18, v15);
  v19 = swift_allocObject();
  *(v19 + 2) = a3;
  *(v19 + 3) = a4;
  *(v19 + 4) = a5;
  *(v19 + 5) = a6;
  *(v19 + 6) = a1;
  *(v19 + 7) = a2;
  v20 = type metadata accessor for ClosureBasedModifier();
  WitnessTable = swift_getWitnessTable();
  (*(v14 + 32))(a7, v17, a3);
  v22 = (a7 + *(type metadata accessor for CompositingLayer() + 36));
  *v22 = sub_1AAE12DBC;
  v22[1] = v19;
  v22[3] = v20;
  v22[4] = WitnessTable;
}

uint64_t sub_1AAE12D4C(uint64_t a1, void (*a2)(void))
{

  sub_1AAF8EF44();
  a2();
}

void sub_1AAE12DE4()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1AAE13750(319, &qword_1ED9B2EE8, sub_1AAE131C4, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1AAE12E9C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double sub_1AAE12FE0(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFE)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (a2 > 0x7FFFFFFE)
    {
      *(v19 + 32) = 0;
      result = 0.0;
      *v19 = 0u;
      *(v19 + 16) = 0u;
      *v19 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *(v19 + 24) = a2;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

unint64_t sub_1AAE131C4()
{
  result = qword_1ED9B2EF0;
  if (!qword_1ED9B2EF0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED9B2EF0);
  }

  return result;
}

uint64_t sub_1AAE13228()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AAE13264(uint64_t a1, void (*a2)(void))
{
  type metadata accessor for ClosureBasedModifier();
  swift_getWitnessTable();
  v4 = sub_1AAF8E4F4();
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(&v9 - v6, a1, v4, v5);
  swift_getWitnessTable();
  sub_1AAF8EF44();
  a2();
}

uint64_t sub_1AAE133C0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a2;
  v10 = *(a2 + 1);
  v11 = v10 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v12 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v13 = *(v12 + 64);
  v14 = *(v11 + v13);
  *(v11 + v13) = 0;
  LOBYTE(v22) = v9;
  *(&v22 + 1) = v10;
  result = (*(a4 + 40))(&v25, a1, &v22, a3, a4);
  v16 = v25;
  *(v11 + *(v12 + 64)) = v14;
  if ((v9 & 1) == 0)
  {
    v17 = *(*(v10 + 16) + 24);
    sub_1AAE12888();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1AAF92AB0;
    *(v18 + 32) = v16;
    v19 = type metadata accessor for CompositingLayer();
    sub_1AAD14CD4(a1 + *(v19 + 36), v23);
    *&v22 = v17;
    *(&v22 + 1) = v18;
    *(&v24 + 1) = v14;
    result = swift_allocObject();
    v20 = v23[0];
    *(result + 16) = v22;
    *(result + 32) = v20;
    v21 = v24;
    *(result + 48) = v23[1];
    *(result + 64) = v21;
    v16 = result | 0x2000000000000000;
  }

  *a5 = v16;
  return result;
}

uint64_t sub_1AAE13528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *(a2 + *(type metadata accessor for _ChartContentCollectInputs(0) + 20));
  v11 = *(a4 + 64);

  v11(a1, a2, a3, a4);
  sub_1AAE13750(0, &qword_1ED9AD6F8, type metadata accessor for CollectedChartContent, MEMORY[0x1E69E6F90]);
  v12 = *(type metadata accessor for CollectedChartContent(0) - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1AAF92AB0;
  sub_1AAE0FA44();
  v16 = v15;
  v17 = swift_allocBox();
  v19 = v18 + *(v16 + 48);
  sub_1AAF027E4(v18);
  *v19 = v10;
  v20 = type metadata accessor for CompositingLayer();
  sub_1AAD14CD4(a1 + *(v20 + 36), (v19 + 8));
  v19[81] = 0;
  *(v14 + v13) = v17;
  swift_storeEnumTagMultiPayload();

  *a5 = v14;
  return result;
}

void sub_1AAE13750(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t ChartContent.id<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16, a2, v12);
  (*(v8 + 16))(v10, a1, a3);
  return sub_1AAE13940(v14, v10, a2, a3, a4);
}

uint64_t sub_1AAE13940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for ModifiedChartContent_ID();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t sub_1AAE13A20(uint64_t a1)
{
  v2 = *(type metadata accessor for ModifiedChartContent_ID() + 52);

  sub_1AACD857C(a1 + v2);
}

uint64_t sub_1AAE13BDC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 48);
  v3 = *(v0 + 64);
  v5[0] = *(v0 + 56);
  v6 = v3;
  return (*(v1 + 40))(v2, v5);
}

uint64_t sub_1AAE13C38()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 48);
  v4 = *(v0 + 56);
  return (*(v1 + 32))(v2, &v4);
}

uint64_t ChartContent.mask<A>(content:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (*(v15 + 16))(v14, v4, v12);
  a1(v16);
  return sub_1AAE13DDC(v14, v10, a2, a3, a4);
}

uint64_t sub_1AAE13DDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for ModifiedChartContent_Mask();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t sub_1AAE13EBC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a2;
  v9 = a2[1];
  v11 = *(*a2 + 16);
  v12 = *(v11 + 16);
  v13 = *(v12 + 32);

  v14 = sub_1AACD5520(0, v13);
  v15 = *(v12 + 32);
  *(v12 + 32) = v14;
  v16 = *(v11 + 24);
  *(v11 + 24) = v14;
  v27 = v10;
  v28 = v9;
  (*(a5 + 32))(a1, &v27, a3, a5);
  *(v11 + 24) = v16;

  *(v12 + 32) = v15;

  v17 = *(v10 + 16);
  v18 = *(v17 + 16);
  v19 = *(v18 + 32);

  v20 = sub_1AACD5520(1, v19);
  v21 = *(v18 + 32);
  *(v18 + 32) = v20;
  v22 = *(v17 + 24);
  *(v17 + 24) = v20;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v23 = *(type metadata accessor for ModifiedChartContent_Mask() + 52);
  v27 = v10;
  v28 = v9;
  (*(a6 + 32))(a1 + v23, &v27, a4, a6);
  *(v17 + 24) = v22;

  *(v18 + 32) = v21;
}

__n128 sub_1AAE14038@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v10 = *a2;
  v11 = *(a2 + 1);
  v12 = v11 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v38 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v13 = *(v38 + 64);
  v36 = v12;
  v14 = *(v12 + v13);
  *(v12 + v13) = 0;
  v15 = *(v11 + 16);
  v16 = *(v15 + 16);
  v17 = *(v16 + 32);

  v18 = sub_1AACD5520(0, v17);
  v19 = *(v16 + 32);
  *(v16 + 32) = v18;
  v20 = *(v15 + 24);
  *(v15 + 24) = v18;
  LOBYTE(v41) = v10;
  v42 = v11;
  (*(a5 + 40))(&v40, a1, &v41, a3, a5);
  *(v15 + 24) = v20;
  *(v16 + 32) = v19;

  v34 = v40;
  v21 = *(v11 + 16);
  v22 = *(v21 + 16);
  v23 = *(v22 + 32);

  v24 = sub_1AACD5520(1, v23);
  v25 = *(v22 + 32);
  *(v22 + 32) = v24;
  v26 = *(v21 + 24);
  *(v21 + 24) = v24;
  v41 = a3;
  v42 = a4;
  v43 = a5;
  v44 = a6;
  v27 = *(type metadata accessor for ModifiedChartContent_Mask() + 52);
  LOBYTE(v41) = v10;
  v42 = v11;
  (*(a6 + 40))(&v40, a1 + v27, &v41, a4, a6);
  *(v21 + 24) = v26;
  *(v22 + 32) = v25;

  v28 = v40;
  *(v36 + *(v38 + 64)) = v14;
  v29 = swift_allocObject();
  v30 = *(*(v11 + 16) + 24);
  sub_1AAE12888();
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1AAF92AB0;
  *(v31 + 32) = v34;
  v32 = swift_allocObject();
  result = xmmword_1AAF92AB0;
  *(v32 + 16) = xmmword_1AAF92AB0;
  *(v32 + 32) = v28;
  *(v29 + 16) = v30;
  *(v29 + 24) = v31;
  *(v29 + 32) = v32;
  *(v29 + 40) = v14;
  *a7 = v29 | 0x1000000000000000;
  return result;
}

uint64_t sub_1AAE1429C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v29 = a1;
  v32 = a6;
  v46 = *MEMORY[0x1E69E9840];
  v31 = sub_1AAF8D954();
  v30 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v28 = &v25 - v10;
  v27 = sub_1AAF8D954();
  v11 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v13 = &v25 - v12;
  v14 = type metadata accessor for _ChartContentOutputs(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v26 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v25 = &v25 - v17;
  v38 = a2;
  v39 = a3;
  v40 = a4;
  v41 = a5;
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a5;
  type metadata accessor for ModifiedChartContent_Mask();
  sub_1AAF8D954();
  sub_1AAF007E4(sub_1AAE14948, a2, v13);
  v18 = v29;
  (*(a4 + 48))(v13, v29, a2, a4);
  (*(v11 + 8))(v13, v27);
  v34 = a2;
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v19 = v28;
  sub_1AAF007E4(sub_1AAE14954, a3, v28);
  v20 = v26;
  (*(a5 + 48))(v19, v18, a3, a5);
  (*(v30 + 8))(v19, v31);
  v21 = v25;
  LODWORD(v19) = sub_1AAF025D8();
  v22 = sub_1AAF025D8();
  type metadata accessor for _ChartContentInputs(0);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  _s6Charts12BuilderEmptyV19_makeChart3DContent7content6inputsAA01_eF7OutputsV7SwiftUI11_GraphValueVyACG_AA01_eF6InputsVtFZ_0();
  v42 = __PAIR64__(v22, v19);
  LODWORD(v43) = OffsetAttribute2;
  sub_1AACBC63C();
  sub_1AAE14B88();
  v33 = sub_1AAF8D194();
  sub_1AADF797C();
  sub_1AAF8E494();
  sub_1AAE14BE4(v20);
  return sub_1AAE14BE4(v21);
}

uint64_t sub_1AAE146DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v10[2] = type metadata accessor for ModifiedChartContent_Mask();
  v10[3] = a2;
  v7 = sub_1AAF8D1C4();
  sub_1AACBE580(a1, sub_1AAD62CC4, v10, a2, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v11;
}

uint64_t sub_1AAE1477C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v7 = type metadata accessor for ModifiedChartContent_Mask();
  v8 = *(v7 + 52);
  v12[2] = v7;
  v12[3] = a3;
  v9 = sub_1AAF8D1C4();
  sub_1AACBE580(a1 + v8, sub_1AAD62594, v12, a3, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13;
}

uint64_t sub_1AAE14820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  (*(a5 + 64))(v18, a1, a2, a3, a5);
  v17[0] = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v14 = type metadata accessor for ModifiedChartContent_Mask();
  (*(a6 + 64))(v17, a1 + *(v14 + 52), a2, a4, a6);
  v15 = type metadata accessor for _ChartContentCollectInputs(0);
  sub_1AAF02900(v18, *(a2 + *(v15 + 20)), a7);
  sub_1AAD58308(v17);
  return sub_1AAD58308(v18);
}

unint64_t sub_1AAE14960@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v3 = *MEMORY[0x1E698D3F8];
  if (*MEMORY[0x1E698D3F8] == result)
  {
    *a2 = MEMORY[0x1E69E7CC0];
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    *(a2 + 2) = xmmword_1AAF92AC0;
    a2[48] = 0;
    *(a2 + 8) = 0;
    *(a2 + 9) = 0;
    *(a2 + 7) = 0;
    *(a2 + 5) = xmmword_1AAF92AC0;
    a2[96] = 0;
    *(a2 + 14) = 0;
    *(a2 + 15) = 0;
    *(a2 + 13) = 0;
    *(a2 + 8) = xmmword_1AAF92AC0;
    a2[144] = 0;
    *(a2 + 20) = 0;
    *(a2 + 21) = 0;
    *(a2 + 19) = 0;
    *(a2 + 11) = xmmword_1AAF92AC0;
    a2[192] = 0;
    *(a2 + 26) = 0;
    *(a2 + 27) = 0;
    *(a2 + 25) = 0;
    *(a2 + 14) = xmmword_1AAF92AC0;
    a2[240] = 0;
    *(a2 + 32) = 0;
    *(a2 + 33) = 0;
    *(a2 + 31) = 0;
    *(a2 + 17) = xmmword_1AAF92AC0;
    a2[288] = 0;
    *(a2 + 38) = 0;
    *(a2 + 39) = 0;
    *(a2 + 37) = 0;
    *(a2 + 20) = xmmword_1AAF92AC0;
    a2[336] = 0;
    *(a2 + 44) = 0;
    *(a2 + 45) = 0;
    *(a2 + 43) = 0;
    *(a2 + 23) = xmmword_1AAF92AC0;
    a2[384] = 0;
    *(a2 + 50) = 0;
    *(a2 + 51) = 0;
    *(a2 + 49) = 0;
    *(a2 + 26) = xmmword_1AAF92AC0;
    a2[432] = 0;
    *(a2 + 56) = 0;
    *(a2 + 57) = 0;
    *(a2 + 55) = 0;
    *(a2 + 29) = xmmword_1AAF92AC0;
    a2[480] = 0;
    *(a2 + 488) = 0u;
    *(a2 + 504) = 0u;
    *(a2 + 65) = 1;
    *(a2 + 799) = 0;
    *(a2 + 48) = 0u;
    *(a2 + 49) = 0u;
    *(a2 + 46) = 0u;
    *(a2 + 47) = 0u;
    *(a2 + 44) = 0u;
    *(a2 + 45) = 0u;
    *(a2 + 42) = 0u;
    *(a2 + 43) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 41) = 0u;
    *(a2 + 38) = 0u;
    *(a2 + 39) = 0u;
    *(a2 + 36) = 0u;
    *(a2 + 37) = 0u;
    *(a2 + 34) = 0u;
    *(a2 + 35) = 0u;
    *(a2 + 33) = 0u;
  }

  else
  {
    v4 = HIDWORD(result);
    Value = AGGraphGetValue();
    sub_1AADF9ADC(Value, __src);
    if (v3 == v4)
    {
      sub_1AAD58308(__src);
      v6 = AGGraphGetValue();
      sub_1AADF9ADC(v6, __src);
      return memcpy(a2, __src, 0x323uLL);
    }

    else
    {
      v7 = AGGraphGetValue();
      sub_1AADF9ADC(v7, v9);
      v8 = *AGGraphGetValue();

      sub_1AAF02900(__src, v8, a2);

      sub_1AAD58308(v9);
      return sub_1AAD58308(__src);
    }
  }

  return result;
}

unint64_t sub_1AAE14B88()
{
  result = qword_1EB425318;
  if (!qword_1EB425318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB425318);
  }

  return result;
}

uint64_t sub_1AAE14BE4(uint64_t a1)
{
  v2 = type metadata accessor for _ChartContentOutputs(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for MakeMaskResult(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MakeMaskResult(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

void sub_1AAE14CD4()
{
  if (!qword_1ED9ADE70[0])
  {
    sub_1AACAA194(255, &unk_1ED9B3898, &type metadata for ModifierForegroundStyle, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for _ContainerValueWritingChartContentModifier();
    if (!v1)
    {
      atomic_store(v0, qword_1ED9ADE70);
    }
  }
}

uint64_t VectorizedChartContent.foregroundStyle<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v3, a2, v7);
  sub_1AAE14EA4(v9, a1, a2, a3);
}

uint64_t sub_1AAE14EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for ModifiedChartContent_ForegroundStyles();
  *(a4 + *(result + 60)) = a2;
  return result;
}

uint64_t VectorizedChartContent.foregroundStyle<A>(by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v23 = a1;
  v24 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for PlottableProjection();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v7, a2, v18);
  (*(v14 + 16))(v16, v23, v13);
  return sub_1AAE1733C(v20, v16, a2, AssociatedTypeWitness, a3, a4, a5, type metadata accessor for ModifiedChartContent_ForegroundStyles_Plottable, v24);
}

uint64_t ChartContent.alignsMarkStylesWithPlotArea(_:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  v12 = a1;
  v9 = swift_getKeyPath();
  v11 = a1;
  sub_1AACD7E50(KeyPath, &v12, v9, &v11, a2, a3, a4);
}

uint64_t ChartContent.position<A>(by:axis:span:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v25 = a6;
  v24 = a4;
  v23 = a3;
  v22 = a2;
  v11 = type metadata accessor for PlottableValue();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21[-v13];
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v21[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v19 + 16))(v18, v7, a5, v16);
  (*(v12 + 16))(v14, a1, v11);
  return sub_1AAE153B0(v18, v14, v22, v23, v24, a5, a7);
}

uint64_t sub_1AAE153B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a6 - 8) + 32))(a7, a1, a6);
  v12 = type metadata accessor for ModifiedChartContent_Position();
  v13 = v12[17];
  v14 = type metadata accessor for PlottableValue();
  result = (*(*(v14 - 8) + 32))(a7 + v13, a2, v14);
  *(a7 + v12[18]) = a3;
  v16 = a7 + v12[19];
  *v16 = a4;
  *(v16 + 8) = a5;
  return result;
}

double VectorizedChartContent.position<A>(by:axis:span:)@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v26 = a9;
  v29 = a4;
  v28 = a3;
  v27 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for PlottableProjection();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v25 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22, v25[1], a5, v20);
  (*(v16 + 16))(v18, a1, v15);
  *&result = sub_1AAE156B8(v22, v27, v28, v29, v18, a5, AssociatedTypeWitness, a6, v26, a7, a8).n128_u64[0];
  return result;
}

__n128 sub_1AAE156B8@<Q0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10, uint64_t a11)
{
  v35 = a5;
  v34 = a4;
  v33 = a3;
  v32 = a2;
  v31 = a10;
  v16 = type metadata accessor for PlottableProjection();
  v17 = *(v16 - 8);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v16);
  v20 = &v30 - v19;
  v21 = *(a6 - 8);
  (*(v21 + 16))(a9, a1, a6, v18);
  (*(v17 + 16))(v20, v35, v16);
  *&v37 = a6;
  *(&v37 + 1) = a7;
  v38.n128_u64[0] = a8;
  v38.n128_u64[1] = v31;
  *&v39 = a11;
  v22 = type metadata accessor for ModifiedChartContent_Positions();
  v23 = a9 + *(v22 + 60);
  sub_1AAE8C998(v20, a8, a11, (v23 + 24));
  (*(v21 + 8))(a1, a6);
  LOBYTE(a6) = v32;
  *v23 = v32;
  v24 = v33;
  *(v23 + 8) = v33;
  LOBYTE(v20) = v34;
  *(v23 + 16) = v34;
  sub_1AAF30A7C(v35, a7, a8, a11, v36);
  sub_1AAF30C04(a6, v24, v20, v36, &v37);
  v25 = a9 + *(v22 + 64);
  v26 = v44;
  *(v25 + 96) = v43;
  *(v25 + 112) = v26;
  *(v25 + 128) = v45;
  v27 = v40;
  *(v25 + 32) = v39;
  *(v25 + 48) = v27;
  v28 = v42;
  *(v25 + 64) = v41;
  *(v25 + 80) = v28;
  result = v38;
  *v25 = v37;
  *(v25 + 16) = result;
  return result;
}

uint64_t ChartContent.opacity(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  KeyPath = swift_getKeyPath();
  v12 = a4;
  v9 = swift_getKeyPath();
  v11 = a4;
  sub_1AACD7E50(KeyPath, &v12, v9, &v11, a1, a2, a3);
}

uint64_t ChartContent.blendMode(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = MEMORY[0x1E6981E38];
  sub_1AAE15B48(0, &qword_1ED9B54F8, MEMORY[0x1E6981E38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  KeyPath = swift_getKeyPath();
  v11 = sub_1AAF8F154();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v9, a1, v11);
  (*(v12 + 56))(v9, 0, 1, v11);
  sub_1AAE15BAC(KeyPath, v9, a2, a3);

  return sub_1AACAC38C(v9, &qword_1ED9B54F8, v6);
}

void sub_1AAE15B48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1AAE15BAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(*a1 + *MEMORY[0x1E69E6CE8] + 8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v19 - v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v17, v13);
  (*(v9 + 16))(v11, a2, v8);
  sub_1AAE1B794(v15, a1, v11, a3, a4);
}

uint64_t ChartContent.clipShape<A>(_:style:)@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v19 = a5;
  v17 = a6;
  v18 = a3;
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v13 = *(v9 + 16);
  v13(v11, a1, a4);
  v14 = a2 & 0x101;
  v22 = sub_1AAF8F024();
  v23 = a2 & 0x101;
  v15 = swift_getKeyPath();
  v13(v11, a1, a4);
  v20 = sub_1AAF8F024();
  v21 = v14;
  sub_1AACD7E50(KeyPath, &v22, v15, &v20, v18, v19, v17);
}

uint64_t ChartContent.lineStyle(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a1[2];
  v7 = a1[3];
  v9 = a1[4];
  v11 = *a1;
  v10 = a1[1];
  KeyPath = swift_getKeyPath();
  v17[0] = v11;
  v17[1] = v10;
  v17[2] = v8;
  v17[3] = v7;
  v17[4] = v9;
  v13 = swift_getKeyPath();
  v16[0] = v11;
  v16[1] = v10;
  v16[2] = v8;
  v16[3] = v7;
  v16[4] = v9;
  memset(&v16[6], 0, 24);
  sub_1AACD7E50(KeyPath, v17, v13, v16, a2, a3, a4);
  swift_bridgeObjectRetain_n();

  sub_1AAE15FEC(a1);
  return sub_1AAE15FEC(a1);
}

uint64_t ChartContent.lineStyle<A>(by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v29 = a4;
  v28 = a6;
  v12 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PlottableValue();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v26 - v17;
  (*(v19 + 16))(&v26 - v17, a1, v16);
  sub_1AACD6F84(v18, a3, a5, &v37);
  v20 = v39;
  LOBYTE(v18) = v40;
  v21 = v41;
  v22 = v42;
  KeyPath = swift_getKeyPath();
  v26 = v38;
  v27 = v37;
  v46 = v37;
  v47 = v38;
  v45 = *(&v38 + 1);
  v43 = v39;
  v44 = v40;
  (*(v12 + 16))(v14, v7, a2);
  v30 = KeyPath;
  v32 = v26;
  v31 = v27;
  v33 = v20;
  v34 = v18 & 0x83;
  v35 = v21 & 0xFFFFFFFFFFFFFF8;
  v36 = v22 & 0xFFFFFFFFFFFFFF8 | 0x8000000000000000;
  sub_1AAE1630C();
  sub_1AAEEDC94(v14, &v37, &v30, a2, v24, v29, &off_1EE75E340, v28);
  sub_1AADFA6FC(&v46, &v30);
  sub_1AAE20E20(&v45, &v30, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
  return sub_1AAE14D50(&v43, &v30);
}

void sub_1AAE1630C()
{
  if (!qword_1EB425320)
  {
    sub_1AACAA194(255, &qword_1ED9B3D78, &type metadata for ModifierLineStyle, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for _ContainerValueWritingChartContentModifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB425320);
    }
  }
}

uint64_t sub_1AAE163A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, uint64_t, void, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v5, a2, v11);
  sub_1AAE17260(v13, a1, a2, *(a3 + 8), a4, a5);
}

uint64_t ChartContent.symbol<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(&v21 + 1) = a3;
  v22 = a5;
  v11 = sub_1AACB2508(&v20);
  (*(*(a3 - 8) + 16))(v11, a1, a3);
  KeyPath = swift_getKeyPath();
  sub_1AAD9B194(&v20, v19);
  v19[40] = 0;
  v13 = swift_getKeyPath();
  v16[0] = v20;
  v16[1] = v21;
  v17 = v22;
  v18 = 0;
  sub_1AACD7E50(KeyPath, v19, v13, v16, a2, a4, a6);

  v14 = MEMORY[0x1E69E6720];
  sub_1AACD84B4(v16, qword_1ED9B3EA8, &type metadata for ModifierSymbol, MEMORY[0x1E69E6720]);
  return sub_1AACD84B4(v19, qword_1ED9B3000, &type metadata for SgSymbol, v14);
}

uint64_t sub_1AAE16634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void)@<X6>, void (*a7)(char *, __int128 *, uint64_t *, uint64_t, uint64_t, uint64_t, _UNKNOWN **)@<X7>, uint64_t a8@<X8>)
{
  v28 = a7;
  v10 = v8;
  v27 = a4;
  v26[1] = a8;
  v15 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PlottableValue();
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = v26 - v20;
  (*(v22 + 16))(v26 - v20, a1, v19);
  sub_1AACD6F84(v21, a3, a5, &v36);
  KeyPath = swift_getKeyPath();
  v44 = v36;
  v45 = v37;
  v43 = *(&v37 + 1);
  v41 = v38;
  v42 = v39;
  v31 = v37;
  v32 = v38;
  v33 = v39;
  v34 = v40;
  v30 = v36;
  v35 = 2;
  v29 = KeyPath;
  (*(v15 + 16))(v17, v10, a2);
  v24 = a6(0);
  v28(v17, &v36, &v29, a2, v24, v27, &off_1EE75E340);
  sub_1AADFA6FC(&v44, &v29);
  sub_1AAE20E20(&v43, &v29, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
  return sub_1AAE14D50(&v41, &v29);
}

void sub_1AAE168D8()
{
  if (!qword_1ED9AF708)
  {
    sub_1AACAA194(255, qword_1ED9B3EA8, &type metadata for ModifierSymbol, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for _ContainerValueWritingChartContentModifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9AF708);
    }
  }
}

uint64_t ChartContent.symbol<A>(symbol:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v6 = v5;
  v27 = a5;
  v28 = a4;
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v26 - v19;
  v21(v18);
  KeyPath = swift_getKeyPath();
  (*(v13 + 16))(v16, v20, a3);
  v23 = sub_1AAF8EF44();
  v30 = 1;
  v29[0] = KeyPath;
  v29[1] = v23;
  (*(v9 + 16))(v11, v6, a2);
  sub_1AAE168D8();
  return sub_1AAEEDCC4(v11, v20, v29, a2, a3, v24, v27);
}

uint64_t sub_1AAE16B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, void *)@<X5>, uint64_t a7@<X8>)
{
  v26 = a7;
  v27 = a6;
  v8 = v7;
  v25 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for PlottableProjection();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v8, a2, v19);
  (*(v15 + 16))(v17, v25, v14);
  return sub_1AAE1733C(v21, v17, a2, AssociatedTypeWitness, a3, *(a4 + 8), a5, v27, v26);
}

uint64_t ChartContent.symbolSize(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  KeyPath = swift_getKeyPath();
  *v12 = a4;
  v12[1] = 0;
  v13 = 0;
  v9 = swift_getKeyPath();
  *v11 = a4;
  v11[2] = 0;
  memset(&v11[6], 0, 24);
  sub_1AACD7E50(KeyPath, v12, v9, v11, a1, a2, a3);
}

uint64_t ChartContent.symbolSize(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  KeyPath = swift_getKeyPath();
  *v14 = a4;
  *&v14[1] = a5;
  v15 = 1;
  v11 = swift_getKeyPath();
  *v13 = a4;
  *&v13[1] = a5;
  v13[2] = 0;
  v13[6] = 0;
  v13[7] = 0;
  v13[8] = 0x4000000000000000;
  sub_1AACD7E50(KeyPath, v14, v11, v13, a1, a2, a3);
}

uint64_t ChartContent.symbolSize<A>(by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a4;
  v31 = a2;
  v33 = a6;
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PlottableValue();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  (*(v16 + 16))(&v28 - v14, a1, v13);
  sub_1AACD6F84(v15, a3, a5, &v36);
  v17 = *(&v36 + 1);
  v30 = v36;
  LOBYTE(v15) = v37;
  v18 = v38;
  v28 = *(&v39 + 1);
  v29 = v39;
  v19 = v40;
  v20 = v41;
  v21 = v42;
  KeyPath = swift_getKeyPath();
  v46 = v36;
  v47 = v37;
  v45 = v18;
  v43 = v39;
  v44 = v40;
  v23 = v11;
  v24 = v11;
  v25 = v31;
  (*(v9 + 16))(v24, v32, v31);
  v35[0] = KeyPath;
  v35[1] = v30;
  v35[2] = v17;
  v35[3] = v15 & 1;
  v35[4] = v18;
  v35[5] = v29;
  v35[6] = v28;
  v35[7] = v19 & 0x83;
  v35[8] = v20 & 0xFFFFFFFFFFFFFF8;
  v35[9] = v21 & 0xFFFFFFFFFFFFFF8 | 0x8000000000000000;
  sub_1AAE171B4();
  sub_1AAEEDDEC(v23, &v36, v35, v25, v26, v34, &off_1EE75E340, v33);
  sub_1AADFA6FC(&v46, v35);
  sub_1AAE20E20(&v45, v35, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
  return sub_1AAE14D50(&v43, v35);
}

void sub_1AAE171B4()
{
  if (!qword_1EB425328)
  {
    sub_1AACAA194(255, &qword_1ED9B3D30, &type metadata for ModifierSymbolSize, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for _ContainerValueWritingChartContentModifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB425328);
    }
  }
}

uint64_t VectorizedChartContent.symbolSize(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  return sub_1AAE163A0(a1, a2, a3, type metadata accessor for ModifiedChartContent_SymbolAreas_KeyPath, a4);
}

{
  return sub_1AAE163A0(a1, a2, a3, type metadata accessor for ModifiedChartContent_SymbolSizes_KeyPath, a4);
}

uint64_t sub_1AAE17260@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, uint64_t, void, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v11 = *a2;
  (*(*(a3 - 8) + 32))(a6, a1);
  result = a5(0, a3, *(v11 + *MEMORY[0x1E69E77B0]), a4);
  *(a6 + *(result + 44)) = a2;
  return result;
}

uint64_t sub_1AAE1733C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(void, void *)@<X7>, uint64_t a9@<X8>)
{
  (*(*(a3 - 8) + 32))(a9, a1);
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = a5;
  v20[3] = a6;
  v20[4] = a7;
  v17 = *(a8(0, v20) + 60);
  v18 = type metadata accessor for PlottableProjection();
  return (*(*(v18 - 8) + 32))(a9 + v17, a2, v18);
}

uint64_t ChartContent.offset(x:y:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v9 = *(a1 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v4, a1, v10);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  (*(v9 + 32))(a2, v12, a1);
  result = type metadata accessor for ModifiedChartContent_TransformEnvironment();
  v15 = (a2 + *(result + 36));
  *v15 = sub_1AAE175EC;
  v15[1] = v13;
  return result;
}

float64_t sub_1AAE1756C(uint64_t a1, double a2, double a3)
{
  v4 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v5 = (a1 + *(v4 + 84));
  *v5 = vaddq_f64(*v5, vdupq_lane_s64(*&a2, 0));
  v5[1].f64[0] = v5[1].f64[0] + a2;
  v6 = (a1 + *(v4 + 88));
  *v6 = vaddq_f64(*v6, vdupq_lane_s64(*&a3, 0));
  result = v6[1].f64[0] + a3;
  v6[1].f64[0] = result;
  return result;
}

float64x2_t sub_1AAE17618(uint64_t a1)
{
  v9 = *(v1 + 16);
  v3 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v4 = (a1 + *(v3 + 84));
  v5 = *&v9 + v4[1].f64[0];
  v6 = *(v1 + 24);
  *v4 = vaddq_f64(vdupq_lane_s64(v9, 0), *v4);
  v4[1].f64[0] = v5;
  v7 = a1 + *(v3 + 88);
  result = vaddq_f64(v6, *(v7 + 8));
  *(v7 + 8) = result;
  return result;
}

uint64_t sub_1AAE176B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v12 = *(a1 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, v16, a1, v13);
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  (*(v12 + 32))(a3, v15, a1);
  result = type metadata accessor for ModifiedChartContent_TransformEnvironment();
  v19 = (a3 + *(result + 36));
  *v19 = a2;
  v19[1] = v17;
  return result;
}

double sub_1AAE177FC(uint64_t a1)
{
  v6 = *&v1[2].f64[0];
  v3 = type metadata accessor for ChartContentRenderContext.Environment(0);
  *(a1 + *(v3 + 84) + 8) = vaddq_f64(v1[1], *(a1 + *(v3 + 84) + 8));
  v4 = (a1 + *(v3 + 88));
  *v4 = vaddq_f64(vdupq_lane_s64(v6, 0), *v4);
  result = *&v6 + v4[1].f64[0];
  v4[1].f64[0] = result;
  return result;
}

uint64_t ChartContent.offset(xStart:xEnd:yStart:yEnd:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v12 = *(a1 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, v16, a1, v13);
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a6;
  (*(v12 + 32))(a2, v15, a1);
  result = type metadata accessor for ModifiedChartContent_TransformEnvironment();
  v19 = (a2 + *(result + 36));
  *v19 = sub_1AAE179C8;
  v19[1] = v17;
  return result;
}

float64x2_t sub_1AAE179C8(uint64_t a1)
{
  v3 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v4 = v1[2];
  *(a1 + *(v3 + 84) + 8) = vaddq_f64(v1[1], *(a1 + *(v3 + 84) + 8));
  v5 = a1 + *(v3 + 88);
  result = vaddq_f64(v4, *(v5 + 8));
  *(v5 + 8) = result;
  return result;
}

uint64_t ChartContent.cornerRadius(_:style:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v37 = a4;
  v38 = MEMORY[0x1E697F488];
  sub_1AAE15B48(0, &qword_1ED9B5558, MEMORY[0x1E697F488], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - v13;
  sub_1AACAA194(255, &qword_1ED9B4438, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
  v16 = v15;
  sub_1AAE17D80();
  v41 = *&a2;
  v42 = v16;
  v43 = v17;
  v44 = a3;
  v45 = &off_1EE75E340;
  v18 = type metadata accessor for CombinedModifiedChartContent_Environment();
  v19 = *(v18 - 8);
  v35 = v18;
  v36 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v34 - v20;
  v34 = &v34 - v20;
  KeyPath = swift_getKeyPath();
  v41 = a5;
  LOBYTE(v42) = 0;
  v23 = swift_getKeyPath();
  v39 = a5;
  v40 = 0;
  sub_1AACD7E50(KeyPath, &v41, v23, &v39, a2, a3, v21);

  v24 = swift_getKeyPath();
  v25 = sub_1AAF8E244();
  v26 = *(v25 - 8);
  v27 = *(v26 + 16);
  v27(v14, a1, v25);
  v28 = *(v26 + 56);
  v28(v14, 0, 1, v25);
  v29 = swift_getKeyPath();
  v27(v11, a1, v25);
  v28(v11, 0, 1, v25);
  v31 = v34;
  v30 = v35;
  sub_1AACD7E50(v24, v14, v29, v11, v35, &off_1EE75E280, v37);

  v32 = v38;
  sub_1AACAC38C(v11, &qword_1ED9B5558, v38);
  sub_1AACAC38C(v14, &qword_1ED9B5558, v32);
  return (*(v36 + 8))(v31, v30);
}

void sub_1AAE17D80()
{
  if (!qword_1ED9B0DE8[0])
  {
    sub_1AACAA194(255, &qword_1ED9B4438, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for _ContainerValueWritingChartContentModifier();
    if (!v1)
    {
      atomic_store(v0, qword_1ED9B0DE8);
    }
  }
}

uint64_t ChartContent.rectangleCornerRadii(_:style:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v43 = a4;
  v44 = MEMORY[0x1E697F488];
  sub_1AAE15B48(0, &qword_1ED9B5558, MEMORY[0x1E697F488], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v40 - v19;
  sub_1AACAA194(255, &qword_1ED9B2BF8, MEMORY[0x1E697FA58], MEMORY[0x1E69E6720]);
  v22 = v21;
  sub_1AAE1817C();
  v47 = *&a2;
  v48 = v22;
  v49 = v23;
  v50 = *&a3;
  v51 = &off_1EE75E340;
  v24 = type metadata accessor for CombinedModifiedChartContent_Environment();
  v25 = *(v24 - 8);
  v41 = v24;
  v42 = v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v40 - v26;
  v40 = &v40 - v26;
  KeyPath = swift_getKeyPath();
  v47 = a5;
  v48 = a6;
  v49 = a7;
  v50 = a8;
  LOBYTE(v51) = 0;
  v29 = swift_getKeyPath();
  *v45 = a5;
  *&v45[1] = a6;
  *&v45[2] = a7;
  *&v45[3] = a8;
  v46 = 0;
  sub_1AACD7E50(KeyPath, &v47, v29, v45, a2, a3, v27);

  v30 = swift_getKeyPath();
  v31 = sub_1AAF8E244();
  v32 = *(v31 - 8);
  v33 = *(v32 + 16);
  v33(v20, a1, v31);
  v34 = *(v32 + 56);
  v34(v20, 0, 1, v31);
  v35 = swift_getKeyPath();
  v33(v17, a1, v31);
  v34(v17, 0, 1, v31);
  v37 = v40;
  v36 = v41;
  sub_1AACD7E50(v30, v20, v35, v17, v41, &off_1EE75E280, v43);

  v38 = v44;
  sub_1AACAC38C(v17, &qword_1ED9B5558, v44);
  sub_1AACAC38C(v20, &qword_1ED9B5558, v38);
  return (*(v42 + 8))(v37, v36);
}

void sub_1AAE1817C()
{
  if (!qword_1ED9AF710)
  {
    sub_1AACAA194(255, &qword_1ED9B2BF8, MEMORY[0x1E697FA58], MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for _ContainerValueWritingChartContentModifier();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9AF710);
    }
  }
}

uint64_t ChartContent.interpolationMethod(_:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  KeyPath = swift_getKeyPath();
  v15 = a1;
  v16 = a2;
  v11 = swift_getKeyPath();
  v13 = a1;
  v14 = a2;
  sub_1AACD7E50(KeyPath, &v15, v11, &v13, a3, a4, a5);
}

uint64_t ChartContent.blur(radius:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v8, a1, v5);
  sub_1AAE15B48(0, qword_1EB425330, MEMORY[0x1E697E7A0], MEMORY[0x1E69E6F90]);
  sub_1AAF8DDD4();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AAF92AB0;
  sub_1AAF8DDB4();
  (*(v4 + 32))(a2, v7, a1);
  result = type metadata accessor for ModifiedChartContent_Filters();
  *(a2 + *(result + 36)) = v9;
  return result;
}

uint64_t ChartContent.shadow(color:radius:x:y:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v9, a2, v6);
  sub_1AAE15B48(0, qword_1EB425330, MEMORY[0x1E697E7A0], MEMORY[0x1E69E6F90]);
  sub_1AAF8DDD4();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AAF92AB0;
  sub_1AAF8DDC4();
  (*(v5 + 32))(a3, v8, a2);
  result = type metadata accessor for ModifiedChartContent_Filters();
  *(a3 + *(result + 36)) = v10;
  return result;
}

uint64_t ChartContent.zIndex(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  KeyPath = swift_getKeyPath();
  v8 = a3;
  sub_1AAE15BAC(KeyPath, &v8, a1, a2);
}

uint64_t sub_1AAE18720(uint64_t a1, void (*a2)(uint64_t, void *))
{
  v3 = *(a1 + 8);
  v6[0] = *a1;
  v6[2] = v3;
  v5 = *(a1 + 16);
  v6[1] = swift_getAssociatedTypeWitness();
  v7 = v5;
  a2(255, v6);
  return swift_getWitnessTable();
}

uint64_t sub_1AAE18834(uint64_t *a1, void (*a2)(uint64_t, uint64_t, uint64_t, void))
{
  v3 = *a1;
  v4 = a1[1];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  a2(255, v3, AssociatedTypeWitness, *(v4 + 8));

  return swift_getWitnessTable();
}

uint64_t sub_1AAE188CC(uint64_t *a1, void (*a2)(uint64_t, void *))
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(v5 + 8);
  v10[0] = v3;
  v10[1] = AssociatedTypeWitness;
  v10[2] = v4;
  v10[3] = v8;
  v10[4] = v6;
  a2(255, v10);
  return swift_getWitnessTable();
}

void sub_1AAE18974()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1AAE15B48(319, &qword_1ED9B2A48, MEMORY[0x1E697E7A0], MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1AAE18A44()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1AACFDCAC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AAE18ACC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1AAE18C08(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_1AAE18DC0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(255);
    result = sub_1AAF90774();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AAE18E68()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ChartContentRenderContext.Environment(255);
    result = sub_1AAF90274();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1AAE18F38()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TypedVectorizedProperties.Position();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AAE18FCC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 129;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 48);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * (((((v6 + 7) & 0xF8) + 87) & 0xF8) - 127));
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

double sub_1AAE19128(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 129;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return result;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v19 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v19 + 72) = 0;
          result = 0.0;
          *(v19 + 56) = 0u;
          *(v19 + 40) = 0u;
          *(v19 + 24) = 0u;
          *(v19 + 8) = 0u;
          *v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(v19 + 48) = a2 - 1;
        }
      }

      else
      {
        v18 = *(v6 + 56);

        v18();
      }

      return result;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 129);
  if (v10 <= 3)
  {
    v17 = (v15 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v17;
      }

      else
      {
        *&a1[v10] = v17;
      }

      return result;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v17;
  }

  return result;
}

void sub_1AAE1932C()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PlottableValue();
    if (v1 <= 0x3F)
    {
      sub_1AACAA194(319, &qword_1ED9B1E70, MEMORY[0x1E6980D10], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1AAE19400(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(*(a3 + 24) - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  if (((v7 + v8) & ~v8) + v7 <= v7)
  {
    v9 = *(v6 + 64);
  }

  else
  {
    v9 = ((v7 + v8) & ~v8) + v7;
  }

  if (v5 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = v8 | 7;
  v12 = (v8 | 7) + *(*(*(a3 + 16) - 8) + 64);
  if (v10 >= a2)
  {
    goto LABEL_31;
  }

  v13 = ((((v8 + 32) & ~v8) + (v12 & ~v11) + v9 + 1) & 0xFFFFFFFFFFFFFFF8) + 17;
  v14 = (a2 - v10 + 255) >> 8;
  if (v13 <= 3)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = 2;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *&a1[v13];
      if (!*&a1[v13])
      {
        goto LABEL_31;
      }
    }

    else
    {
      v18 = *&a1[v13];
      if (!v18)
      {
        goto LABEL_31;
      }
    }
  }

  else if (!v17 || (v18 = a1[v13]) == 0)
  {
LABEL_31:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v22 = *((&a1[v12] & ~v11) + 0x18);
    if (v22 >= 0xFFFFFFFF)
    {
      LODWORD(v22) = -1;
    }

    return (v22 + 1);
  }

  v20 = (v18 - 1) << (8 * v13);
  if (v13 <= 3)
  {
    v21 = *a1;
  }

  else
  {
    v20 = 0;
    v21 = *a1;
  }

  return v10 + (v21 | v20) + 1;
}

void sub_1AAE195D0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 24) - 8);
  v9 = *(v8 + 64);
  v10 = *(v8 + 80);
  if (((v9 + v10) & ~v10) + v9 > v9)
  {
    v9 += (v9 + v10) & ~v10;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v6 + 84);
  }

  v12 = v10 | 7;
  v13 = (v10 | 7) + *(*(*(a4 + 16) - 8) + 64);
  v14 = ((v10 + 32) & ~v10) + v9 + 1;
  v15 = ((v14 + (v13 & ~(v10 | 7))) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v11 >= a3)
  {
    v19 = 0;
    if (v11 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v16 = (a3 - v11 + 255) >> 8;
    if (v15 <= 3)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if (v11 >= a2)
    {
LABEL_19:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *&a1[v15] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v15] = 0;
      }

      else if (v19)
      {
        a1[v15] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v7 < 0x7FFFFFFF)
      {
        v23 = (&a1[v13] & ~v12);
        if ((a2 & 0x80000000) != 0)
        {
          if (v14 <= 3)
          {
            v24 = ~(-1 << (8 * v14));
          }

          else
          {
            v24 = 0x7FFFFFFF;
          }

          if (v14)
          {
            v25 = v24 & a2;
            if (v14 <= 3)
            {
              v26 = v14;
            }

            else
            {
              v26 = 4;
            }

            bzero(v23, v14);
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

        else
        {
          *((&a1[v13] & ~v12) + 0x18) = a2 - 1;
        }
      }

      else
      {
        v22 = *(v6 + 56);

        v22();
      }

      return;
    }
  }

  v20 = ~v11 + a2;
  bzero(a1, v15);
  if (v15 <= 3)
  {
    v21 = (v20 >> 8) + 1;
  }

  else
  {
    v21 = 1;
  }

  if (v15 <= 3)
  {
    *a1 = v20;
    if (v19 > 1)
    {
LABEL_29:
      if (v19 == 2)
      {
        *&a1[v15] = v21;
      }

      else
      {
        *&a1[v15] = v21;
      }

      return;
    }
  }

  else
  {
    *a1 = v20;
    if (v19 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v19)
  {
    a1[v15] = v21;
  }
}

uint64_t sub_1AAE198B4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PlottableProjection();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AAE19944(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v32 = *(a3 + 16);
  v5 = *(v32 - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a3 + 32) - 8);
  v8 = *(v7 + 64);
  v9 = *(v7 + 80);
  if (((v8 + v9) & ~v9) + v8 <= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = ((v8 + v9) & ~v9) + v8;
  }

  v11 = *(sub_1AAF8CB94() - 8);
  v12 = *(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(sub_1AAF8CBA4() - 8);
  v15 = *(v14 + 80);
  v16 = ((((v12 + 8) & ~v12) + v13 + v15) & ~v15) + *(v14 + 64);
  if (v10 > v16)
  {
    v16 = v10;
  }

  if (v16 <= 0x10)
  {
    v17 = 16;
  }

  else
  {
    v17 = v16;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v12 | v15 | v9;
  v20 = v19 | 7;
  v21 = (v19 | 7) + *(v5 + 64);
  if (a2 <= v18)
  {
    goto LABEL_36;
  }

  v22 = v17 + ((v19 + 32) & ~v20) + (v21 & ~v20) + 1;
  v23 = 8 * v22;
  if (v22 <= 3)
  {
    v26 = ((a2 - v18 + ~(-1 << v23)) >> v23) + 1;
    if (HIWORD(v26))
    {
      v24 = *(a1 + v22);
      if (!v24)
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    if (v26 > 0xFF)
    {
      v24 = *(a1 + v22);
      if (!*(a1 + v22))
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    if (v26 < 2)
    {
LABEL_36:
      if (v6 < 0x7FFFFFFF)
      {
        v31 = *(((a1 + v21) & ~v20) + 0x18);
        if (v31 >= 0xFFFFFFFF)
        {
          LODWORD(v31) = -1;
        }

        return (v31 + 1);
      }

      else
      {
        v30 = *(v5 + 48);

        return v30(a1, v6, v32);
      }
    }
  }

  v24 = *(a1 + v22);
  if (!*(a1 + v22))
  {
    goto LABEL_36;
  }

LABEL_23:
  v27 = (v24 - 1) << v23;
  if (v22 > 3)
  {
    v27 = 0;
  }

  if (v22)
  {
    if (v22 <= 3)
    {
      v28 = v22;
    }

    else
    {
      v28 = 4;
    }

    if (v28 > 2)
    {
      if (v28 == 3)
      {
        v29 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v29 = *a1;
      }
    }

    else if (v28 == 1)
    {
      v29 = *a1;
    }

    else
    {
      v29 = *a1;
    }
  }

  else
  {
    v29 = 0;
  }

  return v18 + (v29 | v27) + 1;
}

void sub_1AAE19C88(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v38 = *(a4 + 16);
  v6 = *(v38 - 8);
  v37 = v6;
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 32) - 8);
  v9 = *(v8 + 64);
  v10 = *(v8 + 80);
  if (((v9 + v10) & ~v10) + v9 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = ((v9 + v10) & ~v10) + v9;
  }

  v12 = *(sub_1AAF8CB94() - 8);
  v13 = *(v12 + 80);
  v14 = *(v12 + 64);
  v15 = *(sub_1AAF8CBA4() - 8);
  v16 = *(v15 + 80);
  v17 = ((((v13 + 8) & ~v13) + v14 + v16) & ~v16) + *(v15 + 64);
  if (v11 > v17)
  {
    v17 = v11;
  }

  if (v17 <= 0x10)
  {
    v18 = 16;
  }

  else
  {
    v18 = v17;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v7;
  }

  v20 = v13 | v16 | v10;
  v21 = v20 | 7;
  v22 = (v20 | 7) + *(v6 + 64);
  v23 = v18 + ((v20 + 32) & ~(v20 | 7)) + 1;
  v24 = v23 + (v22 & ~(v20 | 7));
  if (a3 <= v19)
  {
    v26 = 0;
    v25 = a1;
  }

  else
  {
    v25 = a1;
    if (v24 <= 3)
    {
      v29 = ((a3 - v19 + ~(-1 << (8 * v24))) >> (8 * v24)) + 1;
      if (HIWORD(v29))
      {
        v26 = 4;
      }

      else
      {
        if (v29 < 0x100)
        {
          v30 = 1;
        }

        else
        {
          v30 = 2;
        }

        if (v29 >= 2)
        {
          v26 = v30;
        }

        else
        {
          v26 = 0;
        }
      }
    }

    else
    {
      v26 = 1;
    }
  }

  if (v19 < a2)
  {
    v27 = ~v19 + a2;
    if (v24 < 4)
    {
      v28 = (v27 >> (8 * v24)) + 1;
      if (v24)
      {
        v31 = v27 & ~(-1 << (8 * v24));
        bzero(v25, v24);
        if (v24 != 3)
        {
          if (v24 == 2)
          {
            *v25 = v31;
            if (v26 > 1)
            {
LABEL_63:
              if (v26 == 2)
              {
                *&v25[v24] = v28;
              }

              else
              {
                *&v25[v24] = v28;
              }

              return;
            }
          }

          else
          {
            *v25 = v27;
            if (v26 > 1)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_60;
        }

        *v25 = v31;
        v25[2] = BYTE2(v31);
      }

      if (v26 > 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      bzero(v25, v24);
      *v25 = v27;
      v28 = 1;
      if (v26 > 1)
      {
        goto LABEL_63;
      }
    }

LABEL_60:
    if (v26)
    {
      v25[v24] = v28;
    }

    return;
  }

  if (v26 > 1)
  {
    if (v26 != 2)
    {
      *&v25[v24] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *&v25[v24] = 0;
LABEL_38:
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!v26)
  {
    goto LABEL_38;
  }

  v25[v24] = 0;
  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v7 < 0x7FFFFFFF)
  {
    v33 = (&v25[v22] & ~v21);
    if ((a2 & 0x80000000) != 0)
    {
      if (v23 <= 3)
      {
        v34 = ~(-1 << (8 * v23));
      }

      else
      {
        v34 = 0x7FFFFFFF;
      }

      if (v23)
      {
        v35 = v34 & a2;
        if (v23 <= 3)
        {
          v36 = v23;
        }

        else
        {
          v36 = 4;
        }

        bzero(v33, v23);
        if (v36 > 2)
        {
          if (v36 == 3)
          {
            *v33 = v35;
            *(v33 + 2) = BYTE2(v35);
          }

          else
          {
            *v33 = v35;
          }
        }

        else if (v36 == 1)
        {
          *v33 = v35;
        }

        else
        {
          *v33 = v35;
        }
      }
    }

    else
    {
      *(v33 + 3) = a2 - 1;
    }
  }

  else
  {
    v32 = *(v37 + 56);

    v32(v25, a2, v7, v38);
  }
}

uint64_t sub_1AAE1A0C0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1AAF90774();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AAE1A14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v64 = a2;
  v63 = a1;
  v12 = type metadata accessor for PlottableValue();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v59 = &v56 - v13;
  v14 = type metadata accessor for PlottableProjection.Storage();
  v60 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v56 - v15;
  v58 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v56 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v57 = &v56 - v20;
  v21 = type metadata accessor for PlottableProjection();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v56 - v23;
  v64 = *v64;
  v61 = a3;
  *&v68 = a3;
  *(&v68 + 1) = a4;
  v69 = a5;
  v70 = a6;
  v62 = a6;
  *&v71 = a7;
  v25 = v63 + *(type metadata accessor for ModifiedChartContent_LineStyle_Plottable() + 60);
  (*(v22 + 16))(v24, v25, v21);
  v26 = a5;
  sub_1AAE8C998(v24, a5, a7, &v68);
  v27 = v64;
  swift_beginAccess();
  sub_1AAE20F5C(&v68, v27 + 1016, &qword_1ED9AE348, &type metadata for AnyPlottableProjection);
  swift_endAccess();
  v28 = *(v21 + 44);
  v29 = v60;
  (*(v60 + 16))(v16, v25 + v28, v14);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v29 + 8))(v16, v14);
  }

  else
  {
    v60 = v27;
    v30 = v58;
    v31 = v57;
    (*(v58 + 32))(v57, v16, a5);
    v32 = *v25;
    v33 = *(v25 + 8);
    v34 = *(v25 + 16);
    v35 = *(v25 + 24);
    v36 = v56;
    (*(v30 + 16))(v56, v31, a5);
    v37 = v59;
    sub_1AACD6EC4(v32, v33, v34, v35, v36, v26, v59);

    sub_1AACD7304(v32, v33, v34);
    sub_1AACD6F84(v37, v26, a7, &v68);
    v76 = v71;
    v77 = v72;
    v38 = v71;
    v39 = v72;
    v40 = v30;
    if (v72 < 0)
    {
      v48 = v76;
      v49 = v71 & 0x7FF0000000000000;
      if (v72)
      {
        v43 = v60;
        swift_beginAccess();
        if (v49 != 0x7FF0000000000000)
        {
          if (*(v43 + 648))
          {
            v50 = *&v38;
          }

          else
          {
            v50 = *(v43 + 632);
            if (v50 >= *&v38)
            {
              v50 = *&v38;
            }

            if (*(v43 + 640) >= *&v38)
            {
              v48 = *(v43 + 640);
            }
          }

          *(v43 + 632) = v50;
          *(v43 + 640) = v48;
          *(v43 + 648) = 0;
        }

        if ((~*(&v38 + 1) & 0x7FF0000000000000) != 0)
        {
          if (*(v43 + 648))
          {
            *(v43 + 632) = *(&v38 + 1);
            *(v43 + 640) = *(&v38 + 1);
            *(v43 + 648) = 0;
          }

          else
          {
            v52 = *(v43 + 640);
            v53 = *(v43 + 632);
            if (v53 >= *(&v38 + 1))
            {
              v53 = *(&v38 + 1);
            }

            *(v43 + 632) = v53;
            if (v52 < *(&v38 + 1))
            {
              v52 = *(&v38 + 1);
            }

            *(v43 + 640) = v52;
            *(v43 + 648) = 0;
          }
        }
      }

      else
      {
        v43 = v60;
        swift_beginAccess();
        if (v49 != 0x7FF0000000000000)
        {
          if (*(v43 + 624))
          {
            v51 = *&v38;
          }

          else
          {
            v51 = *(v43 + 608);
            if (v51 >= *&v38)
            {
              v51 = *&v38;
            }

            if (*(v43 + 616) >= *&v38)
            {
              v48 = *(v43 + 616);
            }
          }

          *(v43 + 608) = v51;
          *(v43 + 616) = v48;
          *(v43 + 624) = 0;
        }

        if ((~*(&v38 + 1) & 0x7FF0000000000000) != 0)
        {
          if (*(v43 + 624))
          {
            *(v43 + 608) = *(&v38 + 1);
            *(v43 + 616) = *(&v38 + 1);
            *(v43 + 624) = 0;
          }

          else
          {
            v54 = *(v43 + 616);
            v55 = *(v43 + 608);
            if (v55 >= *(&v38 + 1))
            {
              v55 = *(&v38 + 1);
            }

            *(v43 + 608) = v55;
            if (v54 < *(&v38 + 1))
            {
              v54 = *(&v38 + 1);
            }

            *(v43 + 616) = v54;
            *(v43 + 624) = 0;
          }
        }
      }
    }

    else
    {
      v41 = v60;
      swift_beginAccess();
      v42 = v39;
      v43 = v41;
      sub_1AACD3D44(v38, *(&v38 + 1), v42);
      swift_endAccess();
    }

    v44 = v73;
    v45 = v74;
    swift_beginAccess();
    if (*(v43 + 673) << 8 == 512)
    {
      sub_1AAE082D0(v44, (v43 + 672), v44, v45);
    }

    swift_endAccess();
    v46 = v70;
    v65 = v68;
    v66 = v69;
    sub_1AAD6E0DC(&v65);
    v75 = v46;
    sub_1AACD84B4(&v75, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
    sub_1AAD6E18C(&v76);
    (*(v40 + 8))(v31, v26);
  }

  v67 = v64;
  return (*(v62 + 32))(v63, &v67);
}

uint64_t sub_1AAE1A83C@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v106 = a3;
  v107 = a6;
  v104 = a8;
  v105 = a1;
  v12 = type metadata accessor for PlottableValue();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v92 = &v90 - v13;
  v96 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v91 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v95 = &v90 - v17;
  v18 = type metadata accessor for PlottableProjection.Storage();
  v101 = *(v18 - 8);
  *&v102 = v18;
  MEMORY[0x1EEE9AC00](v18);
  *&v100 = &v90 - v19;
  v20 = type metadata accessor for PlottableProjection();
  v21 = *(v20 - 1);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v90 - v22;
  v103 = *a2;
  v24 = *(a2 + 1);
  *&v127[0] = v106;
  *(&v127[0] + 1) = a4;
  *&v127[1] = a5;
  *(&v127[1] + 1) = v107;
  *&v127[2] = a7;
  v25 = v105 + *(type metadata accessor for ModifiedChartContent_LineStyle_Plottable() + 60);
  v26 = *(v21 + 16);
  v98 = v20;
  v99 = v25;
  v26(v23);
  v168[0] = *(v24 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale);
  v27 = *(v24 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 64);
  v29 = *(v24 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 16);
  v28 = *(v24 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 32);
  v170 = *(v24 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 48);
  v171 = v27;
  v168[1] = v29;
  v169 = v28;
  v31 = *(v24 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 96);
  v30 = *(v24 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 112);
  v32 = *(v24 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 80);
  v175 = *(v24 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 128);
  v173 = v31;
  v174 = v30;
  v172 = v32;
  v127[6] = v31;
  v127[7] = v30;
  LOBYTE(v127[8]) = v175;
  v127[2] = v169;
  v127[3] = v170;
  v127[4] = v171;
  v127[5] = v32;
  v127[0] = v168[0];
  v127[1] = v29;
  sub_1AAE20E90(v168, v126, sub_1AACC9D70);
  sub_1AAF8D914();
  v93 = a7;
  v94 = a5;
  sub_1AAF305E0(v23, v127, v126, a4, MEMORY[0x1E697DD48], &v176);
  v97 = v24;
  v33 = v24 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v108 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v34 = v33 + *(v108 + 108);
  if (*(v34 + 24))
  {
    sub_1AAE0FC20(v34, &v116);
    sub_1AAF303E4(v126);
    sub_1AAE0FC7C(&v116);
    v35 = a4;
    if (*(&v126[1] + 1) != 2)
    {
      memcpy(v127, v126, 0x2C9uLL);
      v122 = v177;
      v123 = v178;
      v124[0] = v179[0];
      *(v124 + 9) = *(v179 + 9);
      v121 = v176;
      v149 = v126[9];
      v150[0] = v126[10];
      *(v150 + 9) = *(&v126[10] + 9);
      v147 = v126[7];
      v148 = v126[8];
      v36 = type metadata accessor for VisualMapper();
      (*(*(v36 - 8) + 16))(&v116, &v176, v36);
      v37 = sub_1AAF8FE74();
      (*(*(v37 - 8) + 8))(&v147, v37);
      v127[8] = v122;
      v127[9] = v123;
      v127[10] = v124[0];
      *(&v127[10] + 9) = *(v124 + 9);
      v127[7] = v121;
      v38 = type metadata accessor for TypedVectorizedProperties();
      v39 = *(v38 - 8);
      (*(v39 + 16))(&v116, v127, v38);
      sub_1AAF30464(&v116, v143);
      swift_beginAccess();
      sub_1AAE20F5C(v143, v33 + *(v108 + 108), &qword_1ED9B3A10, &type metadata for VectorizedProperties);
      swift_endAccess();
      (*(v39 + 8))(v127, v38);
      goto LABEL_6;
    }
  }

  else
  {
    memset(v126, 0, 24);
    *(&v126[1] + 1) = 2;
    bzero(&v126[2], 0x2A9uLL);
    v35 = a4;
  }

  type metadata accessor for TypedVectorizedProperties();
  v40 = sub_1AAF8FE74();
  (*(*(v40 - 8) + 8))(v126, v40);
  memset(v133, 0, sizeof(v133));
  v134 = 1;
  v136 = 0;
  v135 = 0;
  v137 = 0;
  memset(v138, 0, sizeof(v138));
  v139 = 1;
  v141 = 0;
  v140 = 0;
  v142 = 0;
  v143[0] = v176;
  *(v144 + 9) = *(v179 + 9);
  v143[2] = v178;
  v144[0] = v179[0];
  v143[1] = v177;
  v111 = 0uLL;
  v112 = 0;
  v113 = 1;
  v114 = 0u;
  memset(v115, 0, sizeof(v115));
  memset(v145, 0, sizeof(v145));
  v146 = -4;
  sub_1AAD3CF1C(&v121);
  v150[3] = v124[3];
  v150[4] = v124[4];
  v151 = v125;
  v149 = v123;
  v150[0] = v124[0];
  v150[1] = v124[1];
  v150[2] = v124[2];
  v147 = v121;
  v148 = v122;
  memset(v152, 0, sizeof(v152));
  v153 = 1;
  v155 = 0;
  v154 = 0;
  v156 = 0;
  memset(v157, 0, sizeof(v157));
  v158 = 1;
  v160 = 0;
  v159 = 0;
  v161 = 0;
  v162 = 0uLL;
  v163 = 0;
  v164 = 1;
  v167 = 0;
  v166 = 0u;
  v165 = 0u;
  sub_1AAF304C8(v133, v138, v143, &v111, v145, &v147, v152, v157, &v116, &v162, &v162);
  sub_1AAF30464(&v116, &v111);
  swift_beginAccess();
  v41 = *(v108 + 108);
  v42 = type metadata accessor for VisualMapper();
  (*(*(v42 - 8) + 16))(&v116, &v176, v42);
  sub_1AAE20F5C(&v111, v33 + v41, &qword_1ED9B3A10, &type metadata for VectorizedProperties);
  swift_endAccess();
LABEL_6:
  v43 = v99;
  v45 = v101;
  v44 = v102;
  v46 = v100;
  (*(v101 + 16))(v100, v99 + *(v98 + 11), v102);
  if (swift_getEnumCaseMultiPayload())
  {
    LOBYTE(v127[0]) = v103;
    *(&v127[0] + 1) = v97;
    (*(v107 + 40))(v105, v127);
    v47 = type metadata accessor for VisualMapper();
    (*(*(v47 - 8) + 8))(&v176, v47);
    return (*(v45 + 8))(v46, v44);
  }

  else
  {
    v49 = v96;
    v50 = *(v96 + 32);
    v99 = v35;
    v51 = v95;
    v52 = v94;
    v50();
    v101 = *(v33 + 80);
    v53 = (v33 + *(v108 + 80));
    v54 = *(v33 + 64);
    v100 = *(v33 + 48);
    v102 = v54;
    v55 = *(v53 + 8);
    v56 = v53[3];
    v57 = v53[1];
    v118 = v53[2];
    v119 = v56;
    v120 = v55;
    v117 = v57;
    v116 = *v53;
    v59 = *v43;
    v58 = *(v43 + 8);
    v60 = *(v43 + 16);
    v61 = *(v43 + 24);
    v62 = *(v49 + 16);
    v63 = v91;
    v62(v91, v51, v52);
    v64 = v92;
    v65 = v63;
    v66 = v93;
    sub_1AACD6EC4(v59, v58, v60, v61, v65, v52, v92);

    v98 = MEMORY[0x1E69E6720];
    sub_1AAE20E20(&v116, v127, qword_1ED9B3D88, &type metadata for AnyPlottableValue, MEMORY[0x1E69E6720]);
    sub_1AACD7304(v59, v58, v60);

    sub_1AACD6F84(v64, v52, v66, &v128);
    v67 = v130;
    LOBYTE(v66) = v131;
    v68 = v97;
    sub_1AAE0BA04(*&v130, *(&v130 + 1), v131, 8, &v121);
    v69 = v123;
    v70 = v122;
    *(v33 + 48) = v121;
    *(v33 + 64) = v70;
    *(v33 + 80) = v69;
    v71 = v128;
    v111 = v128;
    LOBYTE(v112) = v129;
    v110[0] = *(&v129 + 1);
    v72 = v33 + *(v108 + 80);
    v126[0] = *v72;
    v74 = *(v72 + 32);
    v73 = *(v72 + 48);
    v75 = *(v72 + 16);
    *&v126[4] = *(v72 + 64);
    v126[2] = v74;
    v126[3] = v73;
    v126[1] = v75;
    v76 = v129;
    v77 = v131;
    *(v72 + 32) = v130;
    *(v72 + 48) = v77;
    *(v72 + 64) = v132;
    *v72 = v71;
    *(v72 + 16) = v76;
    sub_1AADFA6FC(&v111, v127);
    v78 = MEMORY[0x1E69E62F8];
    sub_1AAE20E20(v110, v127, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
    sub_1AACD7C50(v67, *(&v67 + 1), v66);

    v79 = v98;
    sub_1AACD84B4(v126, qword_1ED9B3D88, &type metadata for AnyPlottableValue, v98);
    LOBYTE(v127[0]) = v103;
    *(&v127[0] + 1) = v68;
    (*(v107 + 40))(&v109, v105, v127);
    sub_1AAD6E0DC(&v111);
    sub_1AACD84B4(v110, &qword_1ED9B1E40, MEMORY[0x1E69810C8], v78);
    sub_1AAD0E818(v67, *(&v67 + 1), v66);
    v80 = type metadata accessor for VisualMapper();
    (*(*(v80 - 8) + 8))(&v176, v80);
    (*(v96 + 8))(v95, v94);
    v81 = v102;
    *(v33 + 48) = v100;
    *(v33 + 64) = v81;
    *(v33 + 80) = v101;
    v82 = v109;
    v83 = v33 + *(v108 + 80);
    v127[0] = *v83;
    v84 = *(v83 + 16);
    v85 = *(v83 + 32);
    v86 = *(v83 + 48);
    *&v127[4] = *(v83 + 64);
    v127[2] = v85;
    v127[3] = v86;
    v127[1] = v84;
    v87 = v120;
    v88 = v119;
    v89 = v117;
    *(v83 + 32) = v118;
    *(v83 + 48) = v88;
    *(v83 + 64) = v87;
    *(v83 + 16) = v89;
    *v83 = v116;

    result = sub_1AACD84B4(v127, qword_1ED9B3D88, &type metadata for AnyPlottableValue, v79);
    *v104 = v82;
  }

  return result;
}

uint64_t sub_1AAE1B520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v21 = a1;
  v22 = a4;
  v26 = a5;
  v6 = *(a3 - 8);
  v24 = a2;
  v25 = v6;
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  v23 = *v12;
  v13 = *(v12 + 1);
  v14 = type metadata accessor for ModifiedChartContent_Environment();
  swift_beginAccess();
  v15 = swift_readAtKeyPath();
  v16 = *(v6 + 16);
  v16(v11);
  v15(v27, 0);
  swift_endAccess();
  v17 = v21;
  (v16)(v8, v21 + *(v14 + 48), a3);
  swift_beginAccess();
  swift_setAtWritableKeyPath();
  swift_endAccess();
  v27[0] = v23;
  v28 = v13;
  (*(v22 + 40))(v29, v17, v27);
  v18 = v29[0];
  (v16)(v8, v11, a3);
  swift_beginAccess();
  swift_setAtWritableKeyPath();
  swift_endAccess();
  result = (*(v25 + 8))(v11, a3);
  *v26 = v18;
  return result;
}

uint64_t sub_1AAE1B794@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  v9 = *(v8 + *MEMORY[0x1E69E6CE8] + 8);
  v10 = type metadata accessor for ModifiedChartContent_Environment();
  *(a5 + *(v10 + 44)) = a2;
  v11 = *(*(v9 - 8) + 32);
  v12 = a5 + *(v10 + 48);

  return v11(v12, a3, v9);
}

uint64_t sub_1AAE1B8B4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = type metadata accessor for ChartContentRenderContext.Environment(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v14 = *(a2 + 1);
  v15 = OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  sub_1AAE20E90(v14 + v15, v12, type metadata accessor for ChartContentRenderContext.Environment);
  v16 = *(a1 + *(type metadata accessor for ModifiedChartContent_TransformEnvironment() + 36));
  swift_beginAccess();
  v16(v14 + v15);
  swift_endAccess();
  v21[0] = v13;
  v22 = v14;
  (*(a4 + 40))(&v20, a1, v21, a3, a4);
  v17 = v20;
  swift_beginAccess();
  sub_1AAE20EF8(v12, v14 + v15);
  result = swift_endAccess();
  *a5 = v17;
  return result;
}

uint64_t sub_1AAE1BA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a8;
  v36 = a6;
  v37 = a3;
  v12 = a3;
  *&v38 = a2;
  v14 = type metadata accessor for PlottableValue();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v34 - v16;
  *&v47 = v12;
  *(&v47 + 1) = a4;
  *&v48 = a5;
  *(&v48 + 1) = a6;
  *&v49 = a7;
  *(&v49 + 1) = v34;
  v18 = type metadata accessor for ModifiedChartContent_Position();
  v19 = *(v18 + 68);
  v20 = *(v15 + 16);
  v38 = *v38;
  v20(v17, a1 + v19, v14);
  sub_1AACD6F84(v17, a4, a7, &v53);
  v21 = *(v18 + 76);
  v35 = a1;
  v22 = (a1 + v21);
  v23 = *v22;
  LOBYTE(v12) = *(v22 + 8);
  swift_getKeyPath();
  swift_beginAccess();

  v24 = swift_readAtKeyPath();
  v26 = v25[1];
  v47 = *v25;
  v48 = v26;
  v28 = v25[3];
  v27 = v25[4];
  v29 = v25[2];
  v52 = *(v25 + 80);
  v50 = v28;
  v51 = v27;
  v49 = v29;
  v30 = MEMORY[0x1E69E6720];
  sub_1AAE20E20(&v47, &v40, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
  v24(v39, 0);
  swift_endAccess();

  swift_beginAccess();
  v43 = v56;
  v41 = v54;
  v42 = v55;
  v40 = v53;
  v61 = v53;
  *&v44 = v57;
  *(&v44 + 1) = v23;
  v45 = v12;
  v62 = v54;
  v60 = *(&v54 + 1);
  v58 = v55;
  v59 = v56;
  sub_1AADFA6FC(&v61, v46);
  v31 = MEMORY[0x1E69810C8];
  v32 = MEMORY[0x1E69E62F8];
  sub_1AAE20E20(&v60, v46, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
  sub_1AAE14D50(&v58, v46);
  swift_setAtWritableKeyPath();
  swift_endAccess();
  v40 = v38;
  (*(v36 + 32))(v35, &v40);
  swift_beginAccess();
  v43 = v50;
  v44 = v51;
  v45 = v52;
  v40 = v47;
  v41 = v48;
  v42 = v49;
  sub_1AAE20E20(&v47, v39, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, v30);
  swift_setAtWritableKeyPath();
  swift_endAccess();

  sub_1AAD6E0DC(&v61);
  sub_1AACD84B4(&v60, &qword_1ED9B1E40, v31, v32);
  sub_1AAD6E18C(&v58);
  return sub_1AACD84B4(&v47, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, v30);
}

uint64_t sub_1AAE1BE50@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v36 = a8;
  v37 = a6;
  v35 = a5;
  v39 = a3;
  v40 = a9;
  v15 = type metadata accessor for PlottableValue();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - v17;
  v38 = *a2;
  v19 = *(a2 + 1);
  *&v49 = a3;
  *(&v49 + 1) = a4;
  *&v50 = v35;
  *(&v50 + 1) = a6;
  *&v51 = a7;
  *(&v51 + 1) = v36;
  v20 = type metadata accessor for ModifiedChartContent_Position();
  (*(v16 + 16))(v18, a1 + *(v20 + 68), v15);
  sub_1AACD6F84(v18, a4, a7, &v55);
  v21 = (a1 + *(v20 + 76));
  v22 = *v21;
  LOBYTE(v15) = *(v21 + 8);
  swift_getKeyPath();
  swift_beginAccess();

  v23 = swift_readAtKeyPath();
  v25 = v24[1];
  v49 = *v24;
  v50 = v25;
  v27 = v24[3];
  v26 = v24[4];
  v28 = v24[2];
  v54 = *(v24 + 80);
  v52 = v27;
  v53 = v26;
  v51 = v28;
  v29 = MEMORY[0x1E69E6720];
  sub_1AAE20E20(&v49, &v42, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, MEMORY[0x1E69E6720]);
  v23(v41, 0);
  swift_endAccess();

  swift_beginAccess();
  v45 = v58;
  v43 = v56;
  v44 = v57;
  v42 = v55;
  v63 = v55;
  *&v46 = v59;
  *(&v46 + 1) = v22;
  v47 = v15;
  v64 = v56;
  v62 = *(&v56 + 1);
  v60 = v57;
  v61 = v58;
  sub_1AADFA6FC(&v63, v48);
  v30 = MEMORY[0x1E69810C8];
  v31 = MEMORY[0x1E69E62F8];
  sub_1AAE20E20(&v62, v48, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
  sub_1AAE14D50(&v60, v48);
  swift_setAtWritableKeyPath();
  swift_endAccess();
  LOBYTE(v42) = v38;
  *(&v42 + 1) = v19;
  (*(v37 + 40))(v41, a1, &v42);
  v32 = v41[0];
  swift_beginAccess();
  v45 = v52;
  v46 = v53;
  v47 = v54;
  v42 = v49;
  v43 = v50;
  v44 = v51;
  sub_1AAE20E20(&v49, v41, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, v29);
  swift_setAtWritableKeyPath();
  swift_endAccess();

  sub_1AAD6E0DC(&v63);
  sub_1AACD84B4(&v62, &qword_1ED9B1E40, v30, v31);
  sub_1AAD6E18C(&v60);
  result = sub_1AACD84B4(&v49, &qword_1ED9B22B8, &type metadata for SubPositionContext.Value, v29);
  *v40 = v32;
  return result;
}

uint64_t sub_1AAE1C28C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *a2;
  v13 = *a2;
  swift_beginAccess();
  sub_1AAE20E20(v13 + 1184, v21, &qword_1ED9AE368, &type metadata for VectorizedPlottables.Position, MEMORY[0x1E69E6720]);
  *&v17 = a3;
  *(&v17 + 1) = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v14 = type metadata accessor for ModifiedChartContent_Positions();
  sub_1AAE210E0(a1 + *(v14 + 60), &v17);
  swift_beginAccess();
  sub_1AAE20F5C(&v17, v13 + 1184, &qword_1ED9AE368, &type metadata for VectorizedPlottables.Position);
  swift_endAccess();
  v17 = v16;
  (*(*(a6 + 8) + 32))(a1, &v17, a3);
  swift_beginAccess();
  sub_1AAE20F5C(v21, v13 + 1184, &qword_1ED9AE368, &type metadata for VectorizedPlottables.Position);
  return swift_endAccess();
}

uint64_t sub_1AAE1C3F4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = *a2;
  v45 = *(a2 + 1);
  v13 = v45 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v43 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v14 = v13 + *(v43 + 108);
  if (!*(v14 + 24))
  {
    memset(__src, 0, 24);
    __src[3] = 2;
    bzero(&__src[4], 0x2A9uLL);
    goto LABEL_5;
  }

  sub_1AAE0FC20(v14, &v51);
  sub_1AAF303E4(__src);
  sub_1AAE0FC7C(&v51);
  if (__src[3] == 2)
  {
LABEL_5:
    type metadata accessor for TypedVectorizedProperties();
    v29 = sub_1AAF8FE74();
    (*(*(v29 - 8) + 8))(__src, v29);
    memset(v76, 0, 24);
    v76[3] = 1;
    v76[5] = 0;
    v76[4] = 0;
    v77 = 0;
    memset(v78, 0, 24);
    v78[3] = 1;
    v78[5] = 0;
    v78[4] = 0;
    v79 = 0;
    v80 = 0uLL;
    v81 = 0;
    v82 = 1;
    v83 = 0u;
    memset(v84, 0, sizeof(v84));
    v46 = 0uLL;
    v47 = 0;
    v48 = 1;
    v49 = 0u;
    memset(v50, 0, sizeof(v50));
    memset(v85, 0, sizeof(v85));
    v86 = -4;
    v51 = a3;
    v52 = a4;
    v53 = a5;
    v54 = a6;
    v55 = a7;
    v30 = a1 + *(type metadata accessor for ModifiedChartContent_Positions() + 64);
    v31 = *(v30 + 80);
    v32 = *(v30 + 112);
    v62 = *(v30 + 96);
    v63 = v32;
    v33 = *(v30 + 16);
    v34 = *(v30 + 48);
    v58 = *(v30 + 32);
    v59 = v34;
    v35 = *(v30 + 48);
    v36 = *(v30 + 80);
    v60 = *(v30 + 64);
    v61 = v36;
    v37 = *(v30 + 16);
    v56 = *v30;
    v57 = v37;
    v38 = *(v30 + 112);
    v71 = v62;
    v72 = v38;
    v67 = v58;
    v68 = v35;
    v69 = v60;
    v70 = v31;
    v64 = *(v30 + 128);
    v73 = *(v30 + 128);
    v65 = v56;
    v66 = v33;
    nullsub_1(&v65, v39);
    v93 = v71;
    v94 = v72;
    v95 = v73;
    v89 = v67;
    v90 = v68;
    v91 = v69;
    v92 = v70;
    v87 = v65;
    v88 = v66;
    memset(v96, 0, 24);
    v96[3] = 1;
    v96[5] = 0;
    v96[4] = 0;
    v97 = 0;
    memset(v98, 0, 24);
    v98[3] = 1;
    v98[4] = 0;
    v98[5] = 0;
    v99 = 0;
    v100 = 0uLL;
    v101 = 0;
    v102 = 1;
    v105 = 0;
    v104 = 0u;
    v103 = 0u;
    sub_1AAF304C8(v76, v78, &v80, &v46, v85, &v87, v96, v98, &v51, &v100, &v100);
    sub_1AAF30464(&v51, &v46);
    swift_beginAccess();
    v40 = *(v43 + 108);
    v41 = type metadata accessor for TypedVectorizedProperties.Position();
    (*(*(v41 - 8) + 16))(&v51, &v56, v41);
    sub_1AAE20F5C(&v46, v13 + v40, &qword_1ED9B3A10, &type metadata for VectorizedProperties);
    swift_endAccess();
    goto LABEL_6;
  }

  memcpy(__dst, __src, 0x2C9uLL);
  v51 = a3;
  v52 = a4;
  v53 = a5;
  v54 = a6;
  v55 = a7;
  v15 = a1 + *(type metadata accessor for ModifiedChartContent_Positions() + 64);
  v16 = *(v15 + 80);
  v17 = *(v15 + 112);
  v62 = *(v15 + 96);
  v63 = v17;
  v18 = *(v15 + 16);
  v19 = *(v15 + 48);
  v58 = *(v15 + 32);
  v59 = v19;
  v20 = *(v15 + 48);
  v21 = *(v15 + 80);
  v60 = *(v15 + 64);
  v61 = v21;
  v22 = *(v15 + 16);
  v56 = *v15;
  v57 = v22;
  v23 = *(v15 + 112);
  v71 = v62;
  v72 = v23;
  v67 = v58;
  v68 = v20;
  v69 = v60;
  v70 = v16;
  v64 = *(v15 + 128);
  v73 = *(v15 + 128);
  v65 = v56;
  v66 = v18;
  nullsub_1(&v65, v24);
  v93 = *&__dst[53];
  v94 = *&__dst[55];
  v95 = __dst[57];
  v89 = *&__dst[45];
  v90 = *&__dst[47];
  v91 = *&__dst[49];
  v92 = *&__dst[51];
  v87 = *&__dst[41];
  v88 = *&__dst[43];
  v25 = type metadata accessor for TypedVectorizedProperties.Position();
  (*(*(v25 - 8) + 16))(&v51, &v56, v25);
  v26 = sub_1AAF8FE74();
  (*(*(v26 - 8) + 8))(&v87, v26);
  *&__dst[53] = v71;
  *&__dst[55] = v72;
  *&__dst[45] = v67;
  *&__dst[47] = v68;
  *&__dst[49] = v69;
  *&__dst[51] = v70;
  *&__dst[41] = v65;
  *&__dst[43] = v66;
  LOBYTE(__dst[57]) = v73;
  v27 = type metadata accessor for TypedVectorizedProperties();
  v28 = *(v27 - 8);
  (*(v28 + 16))(&v51, __dst, v27);
  sub_1AAF30464(&v51, &v80);
  swift_beginAccess();
  sub_1AAE20F5C(&v80, v13 + *(v43 + 108), &qword_1ED9B3A10, &type metadata for VectorizedProperties);
  swift_endAccess();
  (*(v28 + 8))(__dst, v27);
LABEL_6:
  LOBYTE(__dst[0]) = v44;
  __dst[1] = v45;
  return (*(*(a6 + 8) + 40))(a1, __dst, a3);
}

void *sub_1AAE1CA00@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = type metadata accessor for SgGroup(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v15 = *(a2 + 1);
  v25[0] = *a2;
  v14 = v25[0];
  v26 = v15;
  result = (*(a4 + 40))(&v27, a1, v25, a3, a4, v11);
  v17 = v27;
  if ((v14 & 1) == 0)
  {
    v18 = *(*(v15 + 16) + 24);
    sub_1AACAA194(0, &qword_1ED9B28D0, &type metadata for SgNode, MEMORY[0x1E69E6F90]);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1AAF92AB0;
    *(v19 + 32) = v17;
    v20 = v10[6];
    v21 = type metadata accessor for SgClipRect(0);
    (*(*(v21 - 8) + 56))(&v13[v20], 1, 1, v21);
    v22 = *(a1 + *(type metadata accessor for ModifiedChartContent_Filters() + 36));
    *v13 = v18;
    *(v13 + 1) = v19;
    *&v13[v10[7]] = 0x3FF0000000000000;
    *&v13[v10[8]] = 0;
    *&v13[v10[9]] = v22;
    v13[v10[10]] = 1;
    v17 = swift_allocBox();
    sub_1AACE3DD4(v13, v23);
  }

  *a5 = v17;
  return result;
}

uint64_t sub_1AAE1CC38(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = *a2;
  v9 = *(a2 + 1);
  *&__dst[0] = a3;
  *(&__dst[0] + 1) = a4;
  *&__dst[1] = a5;
  *(&__dst[1] + 1) = a6;
  *&__dst[2] = a7;
  v10 = type metadata accessor for ModifiedChartContent_ForegroundStyles();
  v34 = a1;
  sub_1AAF30C74(0, 0, 0, 0, *(a1 + *(v10 + 60)), a7, &v52);
  v11 = v52;
  *v29 = *(&v53 + 1);
  v12 = v53;
  *&v29[8] = v54;
  v30 = v55;
  v32 = v9;
  v13 = v9 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v14 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v15 = v13 + *(v14 + 108);
  if (!*(v15 + 24))
  {
    memset(__src, 0, 24);
    *(&__src[1] + 1) = 2;
    bzero(&__src[2], 0x2A9uLL);

    goto LABEL_5;
  }

  sub_1AAE0FC20(v15, v40);

  sub_1AAF303E4(__src);
  sub_1AAE0FC7C(v40);
  if (*(&__src[1] + 1) == 2)
  {
LABEL_5:
    type metadata accessor for TypedVectorizedProperties();
    v20 = sub_1AAF8FE74();
    (*(*(v20 - 8) + 8))(__src, v20);
    v58[0] = v52;
    memset(v59, 0, 24);
    v59[3] = 1;
    v59[5] = 0;
    v59[4] = 0;
    v60 = 0;
    v58[1] = v53;
    v56 = v54;
    v57 = v55;
    v61 = v11;
    v62 = v12;
    v63 = *v29;
    v64 = *&v29[8];
    v65 = *&v29[16];
    v66 = v30;
    v67 = 0uLL;
    v68 = 0;
    v69 = 1;
    v70 = 0u;
    memset(v71, 0, sizeof(v71));
    v35 = 0uLL;
    v36 = 0;
    v37 = 1;
    v38 = 0u;
    memset(v39, 0, sizeof(v39));
    memset(v72, 0, sizeof(v72));
    v73 = -4;
    sub_1AAD3CF1C(&v41);
    v74[6] = v47;
    v74[7] = v48;
    v75 = v49;
    v74[2] = v43;
    v74[3] = v44;
    v74[4] = v45;
    v74[5] = v46;
    v74[0] = v41;
    v74[1] = v42;
    memset(v76, 0, 24);
    v76[3] = 1;
    v76[5] = 0;
    v76[4] = 0;
    v77 = 0;
    memset(v78, 0, 24);
    v78[3] = 1;
    v78[4] = 0;
    v78[5] = 0;
    v79 = 0;
    v80 = 0uLL;
    v81 = 0;
    v82 = 1;
    v85 = 0;
    v84 = 0u;
    v83 = 0u;
    sub_1AAF304C8(v59, &v61, &v67, &v35, v72, v74, v76, v78, v40, &v80, &v80);
    sub_1AAF30464(v40, &v35);
    swift_beginAccess();
    v21 = *(v14 + 108);
    sub_1AAE20E20(v58, v40, &qword_1ED9B2B78, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
    v17 = type metadata accessor for VisualMapper.Mapping();
    (*(*(v17 - 8) + 16))(v40, &v56, v17);
    sub_1AAE20F5C(&v35, v13 + v21, &qword_1ED9B3A10, &type metadata for VectorizedProperties);
    swift_endAccess();
    goto LABEL_6;
  }

  memcpy(__dst, __src, 0x2C9uLL);
  v40[0] = v52;
  v40[1] = v53;
  v41 = v54;
  LOBYTE(v42) = v55;
  v16 = *(&__dst[3] + 1);
  v27 = BYTE8(__dst[4]);
  v28 = *&__dst[4];
  v25 = *(&__dst[5] + 1);
  v26 = *&__dst[5];
  v24 = *&__dst[6];
  v23 = BYTE8(__dst[6]);
  sub_1AAE20E20(v40, __src, &qword_1ED9B2B78, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
  v17 = type metadata accessor for VisualMapper.Mapping();
  (*(*(v17 - 8) + 16))(__src, &v41, v17);
  sub_1AAD2C0D4(v16, v28, v27, v26, v25, v24, v23);
  *(&__dst[3] + 8) = v11;
  *(&__dst[4] + 1) = v12;
  __dst[5] = *v29;
  *&__dst[6] = *&v29[16];
  BYTE8(__dst[6]) = v30;
  v18 = type metadata accessor for TypedVectorizedProperties();
  v19 = *(v18 - 8);
  (*(v19 + 16))(__src, __dst, v18);
  sub_1AAF30464(__src, v74);
  swift_beginAccess();
  sub_1AAE20F5C(v74, v13 + *(v14 + 108), &qword_1ED9B3A10, &type metadata for VectorizedProperties);
  swift_endAccess();
  (*(v19 + 8))(__dst, v18);
LABEL_6:
  LOBYTE(v35) = v31;
  *(&v35 + 1) = v32;
  (*(*(a6 + 8) + 40))(v34, &v35);
  __dst[0] = v52;
  __dst[1] = v53;
  sub_1AACD84B4(__dst, &qword_1ED9B2B78, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
  __src[0] = v54;
  LOBYTE(__src[1]) = v55;
  type metadata accessor for VisualMapper.Mapping();
  return (*(*(v17 - 8) + 8))(__src, v17);
}

uint64_t sub_1AAE1D310(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = *a2;
  v8 = *(a2 + 1);
  v9 = type metadata accessor for ModifiedChartContent_StrokeStyles();
  v22 = a1;
  sub_1AAF3032C(0, 0, 0, 0, *(a1 + *(v9 + 44)), &v59);
  v20 = v8;
  v10 = v8 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v11 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v12 = v10 + *(v11 + 108);
  if (!*(v12 + 24))
  {
    memset(__src, 0, 24);
    *(&__src[1] + 1) = 2;
    bzero(&__src[2], 0x2A9uLL);

    goto LABEL_5;
  }

  sub_1AAE0FC20(v12, v28);

  sub_1AAF303E4(__src);
  sub_1AAE0FC7C(v28);
  if (*(&__src[1] + 1) == 2)
  {
LABEL_5:
    type metadata accessor for TypedVectorizedProperties();
    v17 = sub_1AAF8FE74();
    (*(*(v17 - 8) + 8))(__src, v17);
    memset(v36, 0, 24);
    v36[3] = 1;
    v36[5] = 0;
    v36[4] = 0;
    v37 = 0;
    memset(v38, 0, 24);
    v38[3] = 1;
    v38[5] = 0;
    v38[4] = 0;
    v39 = 0;
    v40[0] = v59;
    *(v41 + 9) = *(v62 + 9);
    v40[2] = v61;
    v41[0] = v62[0];
    v40[1] = v60;
    v23 = 0uLL;
    v24 = 0;
    v25 = 1;
    v26 = 0u;
    memset(v27, 0, sizeof(v27));
    memset(v42, 0, sizeof(v42));
    v43 = -4;
    sub_1AAD3CF1C(&v29);
    v47[3] = v32[3];
    v47[4] = v32[4];
    v48 = v33;
    v46 = v31;
    v47[0] = v32[0];
    v47[1] = v32[1];
    v47[2] = v32[2];
    v44 = v29;
    v45 = v30;
    memset(v49, 0, 24);
    v49[3] = 1;
    v49[5] = 0;
    v49[4] = 0;
    v50 = 0;
    memset(v51, 0, 24);
    v51[3] = 1;
    v51[5] = 0;
    v51[4] = 0;
    v52 = 0;
    v53 = 0uLL;
    v54 = 0;
    v55 = 1;
    v58 = 0;
    v57 = 0u;
    v56 = 0u;
    sub_1AAF304C8(v36, v38, v40, &v23, v42, &v44, v49, v51, v28, &v53, &v53);
    sub_1AAF30464(v28, &v23);
    swift_beginAccess();
    v18 = *(v11 + 108);
    v13 = type metadata accessor for VisualMapper();
    (*(*(v13 - 8) + 16))(v28, &v59, v13);
    sub_1AAE20F5C(&v23, v10 + v18, &qword_1ED9B3A10, &type metadata for VectorizedProperties);
    swift_endAccess();
    goto LABEL_6;
  }

  memcpy(__dst, __src, 0x2C9uLL);
  v31 = v61;
  v32[0] = v62[0];
  *(v32 + 9) = *(v62 + 9);
  v29 = v59;
  v30 = v60;
  v46 = __src[9];
  v47[0] = __src[10];
  *(v47 + 9) = *(&__src[10] + 9);
  v44 = __src[7];
  v45 = __src[8];
  v13 = type metadata accessor for VisualMapper();
  (*(*(v13 - 8) + 16))(v28, &v59, v13);
  v14 = sub_1AAF8FE74();
  (*(*(v14 - 8) + 8))(&v44, v14);
  __dst[8] = v30;
  __dst[9] = v31;
  __dst[10] = v32[0];
  *(&__dst[10] + 9) = *(v32 + 9);
  __dst[7] = v29;
  v15 = type metadata accessor for TypedVectorizedProperties();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v28, __dst, v15);
  sub_1AAF30464(v28, v40);
  swift_beginAccess();
  sub_1AAE20F5C(v40, v10 + *(v11 + 108), &qword_1ED9B3A10, &type metadata for VectorizedProperties);
  swift_endAccess();
  (*(v16 + 8))(__dst, v15);
LABEL_6:
  LOBYTE(__dst[0]) = v21;
  *(&__dst[0] + 1) = v20;
  (*(a5 + 40))(v22, __dst, a3, a5);
  type metadata accessor for VisualMapper();
  return (*(*(v13 - 8) + 8))(&v59, v13);
}

uint64_t sub_1AAE1D8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v62 = a6;
  *&v61 = a2;
  v63 = a1;
  v11 = type metadata accessor for PlottableValue();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v58 = &v53 - v12;
  v13 = type metadata accessor for PlottableProjection.Storage();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v53 - v15;
  v57 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v55 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v56 = &v53 - v20;
  v21 = type metadata accessor for PlottableProjection();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v53 - v23;
  v61 = *v61;
  v60 = a3;
  *&v67 = a3;
  *(&v67 + 1) = a4;
  v68 = a5;
  v69 = v62;
  *&v70 = a7;
  v25 = v63 + *(type metadata accessor for ModifiedChartContent_ForegroundStyles_Plottable() + 60);
  (*(v22 + 16))(v24, v25, v21);
  v59 = a5;
  sub_1AAE8C998(v24, a5, a7, &v67);
  v26 = v61;
  swift_beginAccess();
  sub_1AAE20F5C(&v67, v26 + 960, &qword_1ED9AE348, &type metadata for AnyPlottableProjection);
  swift_endAccess();
  (*(v14 + 16))(v16, v25 + *(v21 + 44), v13);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v14 + 8))(v16, v13);
  }

  else
  {
    v54 = v26;
    v27 = v57;
    v28 = v56;
    v29 = v16;
    v30 = v59;
    (*(v57 + 32))(v56, v29, v59);
    v31 = *v25;
    v32 = *(v25 + 8);
    v33 = *(v25 + 16);
    v34 = *(v25 + 24);
    v35 = v55;
    (*(v27 + 16))(v55, v28, v30);
    v36 = v58;
    sub_1AACD6EC4(v31, v32, v33, v34, v35, v30, v58);

    sub_1AACD7304(v31, v32, v33);
    sub_1AACD6F84(v36, v30, a7, &v67);
    v75 = v70;
    v76 = v71;
    v37 = v70;
    v38 = v71;
    v39 = v28;
    if (v71 < 0)
    {
      v45 = v75;
      v46 = v70 & 0x7FF0000000000000;
      v40 = v54;
      if (v71)
      {
        swift_beginAccess();
        if (v46 != 0x7FF0000000000000)
        {
          if (*(v40 + 432))
          {
            v47 = *&v37;
          }

          else
          {
            v47 = *(v40 + 416);
            if (v47 >= *&v37)
            {
              v47 = *&v37;
            }

            if (*(v40 + 424) >= *&v37)
            {
              v45 = *(v40 + 424);
            }
          }

          *(v40 + 416) = v47;
          *(v40 + 424) = v45;
          *(v40 + 432) = 0;
        }

        if ((~*(&v37 + 1) & 0x7FF0000000000000) != 0)
        {
          if (*(v40 + 432))
          {
            *(v40 + 416) = *(&v37 + 1);
            *(v40 + 424) = *(&v37 + 1);
            *(v40 + 432) = 0;
          }

          else
          {
            v50 = *(v40 + 416);
            v49 = *(v40 + 424);
            if (v50 >= *(&v37 + 1))
            {
              v50 = *(&v37 + 1);
            }

            if (v49 < *(&v37 + 1))
            {
              v49 = *(&v37 + 1);
            }

            *(v40 + 416) = v50;
            *(v40 + 424) = v49;
            *(v40 + 432) = 0;
          }
        }
      }

      else
      {
        swift_beginAccess();
        if (v46 != 0x7FF0000000000000)
        {
          if (*(v40 + 408))
          {
            v48 = *&v37;
          }

          else
          {
            v48 = *(v40 + 392);
            if (v48 >= *&v37)
            {
              v48 = *&v37;
            }

            if (*(v40 + 400) >= *&v37)
            {
              v45 = *(v40 + 400);
            }
          }

          *(v40 + 392) = v48;
          *(v40 + 400) = v45;
          *(v40 + 408) = 0;
        }

        if ((~*(&v37 + 1) & 0x7FF0000000000000) != 0)
        {
          if (*(v40 + 408))
          {
            *(v40 + 392) = *(&v37 + 1);
            *(v40 + 400) = *(&v37 + 1);
            *(v40 + 408) = 0;
          }

          else
          {
            v52 = *(v40 + 392);
            v51 = *(v40 + 400);
            if (v52 >= *(&v37 + 1))
            {
              v52 = *(&v37 + 1);
            }

            if (v51 < *(&v37 + 1))
            {
              v51 = *(&v37 + 1);
            }

            *(v40 + 392) = v52;
            *(v40 + 400) = v51;
            *(v40 + 408) = 0;
          }
        }
      }
    }

    else
    {
      v40 = v54;
      swift_beginAccess();
      sub_1AACD3D44(v37, *(&v37 + 1), v38);
      swift_endAccess();
    }

    v41 = v72;
    v42 = v73;
    swift_beginAccess();
    if (*(v40 + 457) << 8 == 512)
    {
      sub_1AAE082D0(v41, (v40 + 456), v41, v42);
    }

    swift_endAccess();
    v43 = v69;
    v64 = v67;
    v65 = v68;
    sub_1AAD6E0DC(&v64);
    v74 = v43;
    sub_1AACD84B4(&v74, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
    sub_1AAD6E18C(&v75);
    (*(v27 + 8))(v39, v59);
  }

  v66 = v61;
  return (*(*(v62 + 8) + 32))(v63, &v66);
}

uint64_t sub_1AAE1DF70@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v122 = a6;
  v123 = a1;
  v124 = a3;
  v116 = a8;
  v12 = type metadata accessor for PlottableValue();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v104 = &v96 - v13;
  v107 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v103 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v106 = &v96 - v17;
  v18 = type metadata accessor for PlottableProjection.Storage();
  v112 = *(v18 - 8);
  v113 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v111 = &v96 - v19;
  v117 = a4;
  v20 = type metadata accessor for PlottableProjection();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v96 - v22;
  v115 = *a2;
  v24 = *(a2 + 1);
  *&v142[0] = v124;
  *(&v142[0] + 1) = a4;
  *&v142[1] = a5;
  *(&v142[1] + 1) = v122;
  *&v142[2] = a7;
  v25 = v123 + *(type metadata accessor for ModifiedChartContent_ForegroundStyles_Plottable() + 60);
  v26 = *(v21 + 16);
  v109 = v20;
  v26(v23, v25, v20);
  v28 = *(v24 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 16);
  v27 = *(v24 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 32);
  v183 = *(v24 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale);
  v184 = v28;
  v29 = *(v24 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 48);
  v30 = *(v24 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 64);
  v31 = *(v24 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 80);
  v189 = *(v24 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 96);
  v187 = v30;
  v188 = v31;
  v185 = v27;
  v186 = v29;
  v142[3] = v29;
  v142[4] = v30;
  v142[5] = v31;
  LOBYTE(v142[6]) = v189;
  v142[0] = v183;
  v142[1] = v184;
  v142[2] = v27;
  sub_1AAE20E90(&v183, v141, sub_1AACC9DEC);
  *&v141[0] = sub_1AAF8ECE4();
  *&v134 = sub_1AAF8DA44();
  v108 = a5;
  v105 = a7;
  sub_1AAF305E0(v23, v142, &v134, v117, MEMORY[0x1E697E0B8], v141);
  v120 = *(&v141[0] + 1);
  v121 = *&v141[1];
  v118 = *&v141[0];
  v119 = *(&v141[1] + 1);
  v128 = *(&v141[2] + 1);
  v126 = *&v141[2];
  v127 = LOBYTE(v141[3]);
  v114 = v24;
  v32 = v24 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v125 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v33 = v32 + *(v125 + 108);
  v34 = *(v33 + 24);
  v110 = v25;
  if (v34)
  {
    sub_1AAE0FC20(v33, &v134);
    sub_1AAF303E4(v141);
    sub_1AAE0FC7C(&v134);
    if (*(&v141[1] + 1) != 2)
    {
      memcpy(v142, v141, 0x2C9uLL);
      v97 = *(&v142[3] + 1);
      v35 = v126;
      v102 = v32;
      v36 = *&v142[4];
      v100 = *&v142[5];
      v101 = *(&v142[4] + 1);
      v37 = *(&v142[5] + 1);
      v38 = v118;
      v39 = v119;
      v99 = *&v142[6];
      v98 = BYTE8(v142[6]);
      v41 = v120;
      v40 = v121;
      sub_1AADA61DC(v118, v120, v121, v119);
      v42 = v128;
      v43 = v127;
      sub_1AAD3CF48(v35, v128, v127);
      v44 = v36;
      v32 = v102;
      sub_1AAD2C0D4(v97, v44, v101, v100, v37, v99, v98);
      *(&v142[3] + 1) = v38;
      *&v142[4] = v41;
      *(&v142[4] + 1) = v40;
      *&v142[5] = v39;
      *(&v142[5] + 1) = v35;
      *&v142[6] = v42;
      BYTE8(v142[6]) = v43;
      v45 = type metadata accessor for TypedVectorizedProperties();
      v46 = *(v45 - 8);
      (*(v46 + 16))(v141, v142, v45);
      sub_1AAF30464(v141, &v134);
      swift_beginAccess();
      sub_1AAE20F5C(&v134, v32 + *(v125 + 108), &qword_1ED9B3A10, &type metadata for VectorizedProperties);
      swift_endAccess();
      (*(v46 + 8))(v142, v45);
      goto LABEL_6;
    }
  }

  else
  {
    memset(v141, 0, 24);
    *(&v141[1] + 1) = 2;
    bzero(&v141[2], 0x2A9uLL);
  }

  type metadata accessor for TypedVectorizedProperties();
  v47 = sub_1AAF8FE74();
  (*(*(v47 - 8) + 8))(v141, v47);
  memset(v151, 0, sizeof(v151));
  v152 = 1;
  v154 = 0;
  v153 = 0;
  v155 = 0;
  v48 = v118;
  v49 = v119;
  v156[0] = v118;
  v51 = v120;
  v50 = v121;
  v156[1] = v120;
  v156[2] = v121;
  v156[3] = v119;
  v156[4] = v126;
  v156[5] = v128;
  v157 = v127;
  v158 = 0uLL;
  v159 = 0;
  v160 = 1;
  v161 = 0u;
  memset(v162, 0, sizeof(v162));
  v129 = 0uLL;
  v130 = 0;
  v131 = 1;
  v132 = 0u;
  memset(v133, 0, sizeof(v133));
  memset(v163, 0, sizeof(v163));
  v164 = -4;
  sub_1AAD3CF1C(v139);
  v165[6] = v139[6];
  v165[7] = v139[7];
  v166 = v140;
  v165[2] = v139[2];
  v165[3] = v139[3];
  v165[4] = v139[4];
  v165[5] = v139[5];
  v165[0] = v139[0];
  v165[1] = v139[1];
  memset(v167, 0, sizeof(v167));
  v168 = 1;
  v170 = 0;
  v169 = 0;
  v171 = 0;
  memset(v172, 0, sizeof(v172));
  v173 = 1;
  v175 = 0;
  v174 = 0;
  v176 = 0;
  v177 = 0uLL;
  v178 = 0;
  v179 = 1;
  v182 = 0;
  v181 = 0u;
  v180 = 0u;
  sub_1AAF304C8(v151, v156, &v158, &v129, v163, v165, v167, v172, &v134, &v177, &v177);
  sub_1AAF30464(&v134, &v129);
  swift_beginAccess();
  v52 = *(v125 + 108);
  sub_1AADA61DC(v48, v51, v50, v49);
  sub_1AAD3CF48(v126, v128, v127);
  sub_1AAE20F5C(&v129, v32 + v52, &qword_1ED9B3A10, &type metadata for VectorizedProperties);
  swift_endAccess();
LABEL_6:
  v53 = v110;
  v55 = v111;
  v54 = v112;
  v56 = v113;
  (*(v112 + 16))(v111, v110 + *(v109 + 44), v113);
  if (swift_getEnumCaseMultiPayload())
  {
    LOBYTE(v142[0]) = v115;
    *(&v142[0] + 1) = v114;
    (*(*(v122 + 8) + 40))(v123, v142);
    sub_1AADA6198(v118, v120, v121, v119);
    sub_1AAD2C0B8(v126, v128, v127);
    return (*(v54 + 8))(v55, v56);
  }

  else
  {
    v59 = v106;
    v58 = v107;
    (*(v107 + 32))(v106, v55, v108);
    v60 = MEMORY[0x1E69E6720];
    v117 = MEMORY[0x1E69E6720];
    sub_1AAE20E20(v32, v139, qword_1ED9B52F0, &type metadata for SgShapeStyle.Shading, MEMORY[0x1E69E6720]);
    v61 = v32 + *(v125 + 68);
    v63 = *(v61 + 32);
    v62 = *(v61 + 48);
    v64 = *(v61 + 16);
    v138 = *(v61 + 64);
    v134 = *v61;
    v135 = v64;
    v137 = v62;
    v136 = v63;
    v65 = *v53;
    v66 = *(v53 + 8);
    v67 = *(v53 + 16);
    v68 = *(v53 + 24);
    v69 = *(v58 + 16);
    v70 = v103;
    v71 = v108;
    v69(v103, v59, v108);
    v72 = v32;
    v73 = v104;
    v74 = v70;
    v75 = v105;
    sub_1AACD6EC4(v65, v66, v67, v68, v74, v71, v104);
    sub_1AAE20E20(&v134, v142, qword_1ED9B3D88, &type metadata for AnyPlottableValue, v60);
    sub_1AACD7304(v65, v66, v67);

    sub_1AACD6F84(v73, v71, v75, &v143);
    v76 = v145;
    LOBYTE(v68) = v146;
    v77 = v114;
    v78 = sub_1AAE0BCD0(v145, *(&v145 + 1), v146, 5);
    *&v142[2] = MEMORY[0x1E697E0A8];
    *(&v142[1] + 1) = MEMORY[0x1E697E0B8];
    *&v142[0] = v78;
    BYTE8(v142[2]) = 1;
    swift_beginAccess();
    sub_1AAE20F5C(v142, v72, qword_1ED9B52F0, &type metadata for SgShapeStyle.Shading);
    v150 = v144;
    v149 = v143;
    v148 = *(&v144 + 1);
    v79 = v72 + *(v125 + 68);
    v80 = *(v79 + 16);
    v81 = *(v79 + 32);
    v82 = *(v79 + 48);
    *&v141[4] = *(v79 + 64);
    v141[2] = v81;
    v141[3] = v82;
    v141[0] = *v79;
    v141[1] = v80;
    *(v79 + 64) = v147;
    v83 = v146;
    *(v79 + 32) = v145;
    *(v79 + 48) = v83;
    v84 = v144;
    *v79 = v143;
    *(v79 + 16) = v84;
    sub_1AADFA6FC(&v149, v142);
    v85 = MEMORY[0x1E69E62F8];
    sub_1AAE20E20(&v148, v142, &qword_1ED9B1E40, MEMORY[0x1E69810C8], MEMORY[0x1E69E62F8]);
    sub_1AACD7C50(v76, *(&v76 + 1), v68);
    swift_endAccess();
    v86 = v117;
    sub_1AACD84B4(v141, qword_1ED9B3D88, &type metadata for AnyPlottableValue, v117);
    LOBYTE(v142[0]) = v115;
    *(&v142[0] + 1) = v77;
    (*(*(v122 + 8) + 40))(&v129, v123, v142);
    sub_1AAD6E0DC(&v149);
    sub_1AACD84B4(&v148, &qword_1ED9B1E40, MEMORY[0x1E69810C8], v85);
    sub_1AAD0E818(v76, *(&v76 + 1), v68);
    sub_1AADA6198(v118, v120, v121, v119);
    sub_1AAD2C0B8(v126, v128, v127);
    (*(v107 + 8))(v106, v71);
    v87 = v129;
    swift_beginAccess();
    sub_1AAE20F5C(v139, v72, qword_1ED9B52F0, &type metadata for SgShapeStyle.Shading);
    v88 = v72 + *(v125 + 68);
    v142[0] = *v88;
    v89 = *(v88 + 16);
    v90 = *(v88 + 32);
    v91 = *(v88 + 48);
    *&v142[4] = *(v88 + 64);
    v142[3] = v91;
    v142[2] = v90;
    v142[1] = v89;
    v92 = v138;
    v93 = v137;
    v94 = v135;
    *(v88 + 32) = v136;
    v95 = v134;
    *(v88 + 48) = v93;
    *(v88 + 64) = v92;
    *v88 = v95;
    *(v88 + 16) = v94;
    swift_endAccess();
    result = sub_1AACD84B4(v142, qword_1ED9B3D88, &type metadata for AnyPlottableValue, v86);
    *v116 = v87;
  }

  return result;
}

uint64_t sub_1AAE1EC24(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = type metadata accessor for PlottableProjection();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - v16;
  *&v23 = a3;
  *(&v23 + 1) = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v18 = *(type metadata accessor for ModifiedChartContent_Symbols_Plottable() + 60);
  v19 = *(v15 + 16);
  v22 = *a2;
  v19(v17, a1 + v18, v14);
  sub_1AAE8C998(v17, a5, a7, &v23);
  v20 = v22;
  swift_beginAccess();
  sub_1AAE20F5C(&v23, v20 + 1072, &qword_1ED9AE348, &type metadata for AnyPlottableProjection);
  swift_endAccess();
  v23 = v22;
  return (*(a6 + 32))(a1, &v23, a3, a6);
}

uint64_t sub_1AAE1EDC8@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v35 = a8;
  v15 = type metadata accessor for PlottableProjection();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  HIDWORD(v34) = *a2;
  v17 = *(a2 + 1);
  v36 = a3;
  v37 = a6;
  v44[0] = a3;
  v44[1] = a4;
  v44[2] = a5;
  v44[3] = a6;
  v44[4] = a7;
  v19 = &v34 - v18;
  v20 = *(type metadata accessor for ModifiedChartContent_Symbols_Plottable() + 60);
  v21 = *(v16 + 16);
  v38 = a1;
  v21(v19, a1 + v20, v15);
  v22 = OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolScale;
  swift_beginAccess();
  sub_1AAE20E90(v17 + v22, v44, sub_1AACC9CF4);
  if (qword_1ED9B0450 != -1)
  {
    swift_once();
  }

  sub_1AAD9B194(&unk_1ED9C33F0, v43);
  sub_1AAF305E0(v19, v44, v43, a4, &type metadata for AnyChartSymbolShape, v45);
  v23 = v17 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v24 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v25 = v23 + *(v24 + 108);
  if (!*(v25 + 24))
  {
    memset(v43, 0, 24);
    v43[3] = 2;
    bzero(&v43[4], 0x2A9uLL);
    goto LABEL_7;
  }

  sub_1AAE0FC20(v25, v40);
  sub_1AAF303E4(v43);
  sub_1AAE0FC7C(v40);
  if (v43[3] == 2)
  {
LABEL_7:
    type metadata accessor for TypedVectorizedProperties();
    v30 = sub_1AAF8FE74();
    (*(*(v30 - 8) + 8))(v43, v30);
    memset(v46, 0, sizeof(v46));
    v47 = 1;
    v49 = 0;
    v48 = 0;
    v50 = 0;
    memset(v51, 0, sizeof(v51));
    v52 = 1;
    v54 = 0;
    v53 = 0;
    v55 = 0;
    v56 = 0uLL;
    v57 = 0;
    v58 = 1;
    v59 = 0u;
    memset(v60, 0, sizeof(v60));
    v31 = type metadata accessor for VisualMapper();
    (*(*(v31 - 8) + 16))(v39, v45, v31);
    memset(v61, 0, sizeof(v61));
    v62 = -4;
    sub_1AAD3CF1C(v41);
    v63[6] = v41[6];
    v63[7] = v41[7];
    v64 = v42;
    v63[2] = v41[2];
    v63[3] = v41[3];
    v63[4] = v41[4];
    v63[5] = v41[5];
    v63[0] = v41[0];
    v63[1] = v41[1];
    memset(v65, 0, sizeof(v65));
    v66 = 1;
    v68 = 0;
    v67 = 0;
    v69 = 0;
    memset(v70, 0, 24);
    v70[3] = 1;
    v70[4] = 0;
    v70[5] = 0;
    v71 = 0;
    v72 = 0uLL;
    v73 = 0;
    v74 = 1;
    v77 = 0;
    v76 = 0u;
    v75 = 0u;
    sub_1AAF304C8(v46, v51, &v56, v39, v61, v63, v65, v70, v40, &v72, &v72);
    sub_1AAF30464(v40, v39);
    swift_beginAccess();
    sub_1AAE20F5C(v39, v23 + *(v24 + 108), &qword_1ED9B3A10, &type metadata for VectorizedProperties);
    swift_endAccess();
    goto LABEL_8;
  }

  memcpy(v44, v43, 0x2C9uLL);
  v26 = type metadata accessor for VisualMapper();
  v27 = sub_1AAF8FE74();
  (*(*(v27 - 8) + 8))(&v44[24], v27);
  (*(*(v26 - 8) + 16))(&v44[24], v45, v26);
  v28 = type metadata accessor for TypedVectorizedProperties();
  v29 = *(v28 - 8);
  (*(v29 + 16))(v43, v44, v28);
  sub_1AAF30464(v43, v40);
  swift_beginAccess();
  sub_1AAE20F5C(v40, v23 + *(v24 + 108), &qword_1ED9B3A10, &type metadata for VectorizedProperties);
  swift_endAccess();
  (*(v29 + 8))(v44, v28);
LABEL_8:
  LOBYTE(v44[0]) = BYTE4(v34);
  v44[1] = v17;
  (*(v37 + 40))(v38, v44);
  v32 = type metadata accessor for VisualMapper();
  return (*(*(v32 - 8) + 8))(v45, v32);
}

uint64_t sub_1AAE1F478(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = type metadata accessor for PlottableProjection();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - v16;
  *&v23 = a3;
  *(&v23 + 1) = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v18 = *(type metadata accessor for ModifiedChartContent_SymbolSizes_Plottable() + 60);
  v19 = *(v15 + 16);
  v22 = *a2;
  v19(v17, a1 + v18, v14);
  sub_1AAE8C998(v17, a5, a7, &v23);
  v20 = v22;
  swift_beginAccess();
  sub_1AAE20F5C(&v23, v20 + 1128, &qword_1ED9AE348, &type metadata for AnyPlottableProjection);
  swift_endAccess();
  v23 = v22;
  return (*(a6 + 32))(a1, &v23, a3, a6);
}

uint64_t sub_1AAE1F61C@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v72 = a1;
  v66 = a8;
  v14 = type metadata accessor for PlottableProjection();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v53 - v16;
  v65 = *a2;
  v18 = *(a2 + 1);
  v67 = a3;
  v68 = a6;
  *&v82[0] = a3;
  *(&v82[0] + 1) = a4;
  *&v82[1] = a5;
  *(&v82[1] + 1) = a6;
  *&v82[2] = a7;
  v19 = type metadata accessor for ModifiedChartContent_SymbolSizes_Plottable();
  v20 = v18;
  (*(v15 + 16))(v17, v72 + *(v19 + 60), v14);
  v22 = *(v18 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 16);
  v21 = *(v18 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 32);
  v122 = *(v18 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale);
  v123 = v22;
  v23 = *(v18 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 48);
  v24 = *(v18 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 64);
  v25 = *(v18 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 80);
  *(v127 + 9) = *(v18 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 89);
  v126 = v24;
  v127[0] = v25;
  v124 = v21;
  v125 = v23;
  v82[4] = v24;
  v82[5] = v25;
  *(&v82[5] + 9) = *(v127 + 9);
  v82[0] = v122;
  v82[1] = v123;
  v82[3] = v23;
  v82[2] = v21;
  v78[0] = 0x404921FB54442D18;
  sub_1AAE20E90(&v122, v81, sub_1AACCF364);
  v26 = a4;
  sub_1AAF305E0(v17, v82, v78, a4, MEMORY[0x1E69E7DE0], v81);
  v27 = v81[0];
  v28 = v81[2];
  v62 = v81[3];
  v63 = v81[1];
  v69 = v81[5];
  v70 = v81[4];
  v71 = LOBYTE(v81[6]);
  v64 = v20;
  v29 = v20 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v60 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v61 = v29;
  v30 = v29 + *(v60 + 108);
  if (!*(v30 + 24))
  {
    memset(v81, 0, 24);
    v81[3] = 2;
    bzero(&v81[4], 0x2A9uLL);
    goto LABEL_5;
  }

  sub_1AAE0FC20(v30, v78);
  sub_1AAF303E4(v81);
  sub_1AAE0FC7C(v78);
  if (v81[3] == 2)
  {
LABEL_5:
    type metadata accessor for TypedVectorizedProperties();
    v44 = sub_1AAF8FE74();
    (*(*(v44 - 8) + 8))(v81, v44);
    memset(v83, 0, sizeof(v83));
    v84 = 1;
    v86 = 0;
    v85 = 0;
    v87 = 0;
    memset(v88, 0, sizeof(v88));
    v89 = 1;
    v91 = 0;
    v90 = 0;
    v92 = 0;
    v93 = 0uLL;
    v94 = 0;
    v95 = 1;
    v96 = 0u;
    memset(v97, 0, sizeof(v97));
    v73 = 0uLL;
    v74 = 0;
    v75 = 1;
    v76 = 0u;
    memset(v77, 0, sizeof(v77));
    v45 = v27;
    *&v98 = v27;
    v46 = v62;
    v40 = v63;
    *(&v98 + 1) = v63;
    v99 = v28;
    v100 = v62;
    v47 = v69;
    v48 = v70;
    v101 = v70;
    v102 = v69;
    v49 = v71;
    v103 = v71;
    sub_1AAD3CF1C(v79);
    v104[6] = v79[6];
    v104[7] = v79[7];
    v105 = v80;
    v104[2] = v79[2];
    v104[3] = v79[3];
    v104[5] = v79[5];
    v104[4] = v79[4];
    v104[1] = v79[1];
    v104[0] = v79[0];
    memset(v106, 0, sizeof(v106));
    v107 = 1;
    v109 = 0;
    v108 = 0;
    v110 = 0;
    memset(v111, 0, sizeof(v111));
    v112 = 1;
    v114 = 0;
    v113 = 0;
    v115 = 0;
    v116 = 0uLL;
    v117 = 0;
    v118 = 1;
    v121 = 0;
    v119 = 0u;
    v120 = 0u;
    sub_1AAF304C8(v83, v88, &v93, &v73, &v98, v104, v106, v111, v78, &v116, &v116);
    v36 = v46;
    v38 = v28;
    v39 = v45;
    sub_1AAF30464(v78, &v73);
    v50 = v61;
    swift_beginAccess();
    v51 = *(v60 + 108);
    sub_1AADA61DC(v39, v40, v38, v36);
    sub_1AAD3CEFC(v48, v47, v49);
    sub_1AAE20F5C(&v73, v50 + v51, &qword_1ED9B3A10, &type metadata for VectorizedProperties);
    swift_endAccess();
    goto LABEL_6;
  }

  memcpy(v82, v81, 0x2C9uLL);
  v31 = *&v82[17];
  v33 = v69;
  v32 = v70;
  v34 = v71;
  v57 = *&v82[18];
  v58 = *(&v82[17] + 1);
  v35 = *(&v82[18] + 1);
  v59 = v26;
  v55 = *(&v82[19] + 1);
  v56 = *&v82[19];
  v54 = LOBYTE(v82[20]);
  v36 = v62;
  v37 = v63;
  sub_1AADA61DC(v27, v63, v28, v62);
  sub_1AAD3CEFC(v32, v33, v34);
  sub_1AAE20FDC(v31, v58, v57, v35, v56, v55, v54);
  *&v82[17] = v27;
  *(&v82[17] + 1) = v37;
  *&v82[18] = v28;
  *(&v82[18] + 1) = v36;
  *&v82[19] = v32;
  *(&v82[19] + 1) = v33;
  LOBYTE(v82[20]) = v34;
  v38 = v28;
  v39 = v27;
  v40 = v37;
  v41 = type metadata accessor for TypedVectorizedProperties();
  v42 = *(v41 - 8);
  (*(v42 + 16))(v81, v82, v41);
  sub_1AAF30464(v81, v78);
  v43 = v61;
  swift_beginAccess();
  sub_1AAE20F5C(v78, v43 + *(v60 + 108), &qword_1ED9B3A10, &type metadata for VectorizedProperties);
  swift_endAccess();
  (*(v42 + 8))(v82, v41);
LABEL_6:
  LOBYTE(v82[0]) = v65;
  *(&v82[0] + 1) = v64;
  (*(v68 + 40))(v72, v82);
  sub_1AADA6198(v39, v40, v38, v36);
  return sub_1AAD3D014(v70, v69, v71);
}

uint64_t sub_1AAE1FD5C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = *a2;
  v6 = *(a2 + 1);
  v7 = type metadata accessor for ModifiedChartContent_Opacities_KeyPath();
  v40 = a1;
  sub_1AAF3032C(0, 0, 0, 0, *(a1 + *(v7 + 44)), __dst);
  v8 = __dst[0];
  v9 = __dst[1];
  v10 = __dst[2];
  v37 = __dst[3];
  v11 = __dst[4];
  v12 = __dst[5];
  v13 = __dst[6];
  v14 = v6 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v35 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v36 = v14;
  v15 = v14 + *(v35 + 108);
  if (!*(v15 + 24))
  {
    memset(__src, 0, 24);
    __src[3] = 2;
    bzero(&__src[4], 0x2A9uLL);

    goto LABEL_5;
  }

  sub_1AAE0FC20(v15, v46);

  sub_1AAF303E4(__src);
  sub_1AAE0FC7C(v46);
  if (__src[3] == 2)
  {
LABEL_5:
    type metadata accessor for TypedVectorizedProperties();
    v26 = sub_1AAF8FE74();
    (*(*(v26 - 8) + 8))(__src, v26);
    v51[0] = v8;
    v51[1] = v9;
    v51[2] = v10;
    v51[3] = v37;
    v51[4] = v11;
    v51[5] = v12;
    v52 = v13;
    memset(v53, 0, 24);
    v53[3] = 1;
    v53[5] = 0;
    v53[4] = 0;
    v54 = 0;
    v55 = 0uLL;
    v56 = 0;
    v57 = 1;
    v58 = 0u;
    memset(v59, 0, sizeof(v59));
    v41 = 0uLL;
    v42 = 0;
    v43 = 1;
    v44 = 0u;
    memset(v45, 0, sizeof(v45));
    memset(v60, 0, sizeof(v60));
    v61 = -4;
    sub_1AAD3CF1C(v47);
    v62[6] = v47[6];
    v62[7] = v47[7];
    v63 = v48;
    v62[2] = v47[2];
    v62[3] = v47[3];
    v62[5] = v47[5];
    v62[4] = v47[4];
    v62[1] = v47[1];
    v62[0] = v47[0];
    memset(v64, 0, 24);
    v64[3] = 1;
    v64[5] = 0;
    v64[4] = 0;
    v65 = 0;
    memset(v66, 0, 24);
    v66[3] = 1;
    v66[4] = 0;
    v66[5] = 0;
    v67 = 0;
    v68 = 0uLL;
    v69 = 0;
    v70 = 1;
    v73 = 0;
    v71 = 0u;
    v72 = 0u;
    sub_1AAF304C8(v51, v53, &v55, &v41, v60, v62, v64, v66, v46, &v68, &v68);
    v25 = v10;
    v21 = v37;
    sub_1AAF30464(v46, &v41);
    swift_beginAccess();
    v27 = *(v35 + 108);
    sub_1AADA61DC(v8, v9, v25, v37);
    sub_1AAD3CEFC(v11, v12, v13);
    sub_1AAE20F5C(&v41, v14 + v27, &qword_1ED9B3A10, &type metadata for VectorizedProperties);
    swift_endAccess();
    goto LABEL_6;
  }

  memcpy(__dst, __src, 0x2C9uLL);
  v16 = __dst[0];
  v32 = __dst[1];
  v33 = v6;
  v17 = __dst[3];
  v34 = v12;
  v18 = __dst[4];
  v29 = __dst[5];
  v30 = __dst[2];
  v31 = __dst[6];
  v19 = v10;
  v20 = v10;
  v21 = v37;
  sub_1AADA61DC(v8, v9, v20, v37);
  sub_1AAD3CEFC(v11, v34, v13);
  v22 = v17;
  v6 = v33;
  sub_1AAD3D034(v16, v32, v30, v22, v18, v29, v31);
  __dst[0] = v8;
  __dst[1] = v9;
  __dst[2] = v19;
  __dst[3] = v37;
  __dst[4] = v11;
  __dst[5] = v34;
  LOBYTE(__dst[6]) = v13;
  v23 = type metadata accessor for TypedVectorizedProperties();
  v24 = *(v23 - 8);
  (*(v24 + 16))(__src, __dst, v23);
  v25 = v19;
  sub_1AAF30464(__src, v46);
  swift_beginAccess();
  sub_1AAE20F5C(v46, v36 + *(v35 + 108), &qword_1ED9B3A10, &type metadata for VectorizedProperties);
  swift_endAccess();
  (*(v24 + 8))(__dst, v23);
  v12 = v34;
LABEL_6:
  LOBYTE(__dst[0]) = v39;
  __dst[1] = v6;
  (*(a5 + 40))(v40, __dst);
  sub_1AADA6198(v8, v9, v25, v21);
  return sub_1AAD3D014(v11, v12, v13);
}

uint64_t sub_1AAE202C0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = *a2;
  v6 = *(a2 + 1);
  v7 = type metadata accessor for ModifiedChartContent_SymbolAreas_KeyPath();
  v37 = a1;
  sub_1AAF3032C(0, 0, 0, 0, *(a1 + *(v7 + 44)), __dst);
  v8 = __dst[0];
  v9 = __dst[1];
  v10 = __dst[2];
  v11 = __dst[3];
  v38 = __dst[4];
  v12 = __dst[5];
  v33 = __dst[6];
  v36 = v6;
  v13 = v6 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v31 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v32 = v13;
  v14 = v13 + *(v31 + 108);
  if (!*(v14 + 24))
  {
    memset(__src, 0, 24);
    __src[3] = 2;
    bzero(&__src[4], 0x2A9uLL);

    goto LABEL_5;
  }

  sub_1AAE0FC20(v14, v44);

  sub_1AAF303E4(__src);
  sub_1AAE0FC7C(v44);
  if (__src[3] == 2)
  {
LABEL_5:
    type metadata accessor for TypedVectorizedProperties();
    v23 = sub_1AAF8FE74();
    (*(*(v23 - 8) + 8))(__src, v23);
    memset(v49, 0, 24);
    v49[3] = 1;
    v49[5] = 0;
    v49[4] = 0;
    v50 = 0;
    memset(v51, 0, 24);
    v51[3] = 1;
    v51[5] = 0;
    v51[4] = 0;
    v52 = 0;
    v53 = 0uLL;
    v54 = 0;
    v55 = 1;
    v56 = 0u;
    memset(v57, 0, sizeof(v57));
    v39 = 0uLL;
    v40 = 0;
    v41 = 1;
    v42 = 0u;
    memset(v43, 0, sizeof(v43));
    *&v58 = v8;
    *(&v58 + 1) = v9;
    v59 = v10;
    v60 = v11;
    v61 = v38;
    v62 = v12;
    v63 = v33;
    sub_1AAD3CF1C(v45);
    v64[5] = v45[5];
    v64[6] = v45[6];
    v64[7] = v45[7];
    v64[1] = v45[1];
    v64[2] = v45[2];
    v64[3] = v45[3];
    v64[4] = v45[4];
    v65 = v46;
    v64[0] = v45[0];
    memset(v66, 0, 24);
    v66[3] = 1;
    v66[5] = 0;
    v66[4] = 0;
    v67 = 0;
    memset(v68, 0, 24);
    v68[3] = 1;
    v68[4] = 0;
    v68[5] = 0;
    v69 = 0;
    v70 = 0uLL;
    v71 = 0;
    v72 = 1;
    v22 = v8;
    v75 = 0;
    v74 = 0u;
    v73 = 0u;
    sub_1AAF304C8(v49, v51, &v53, &v39, &v58, v64, v66, v68, v44, &v70, &v70);
    v19 = v33;
    v16 = v11;
    sub_1AAF30464(v44, &v39);
    swift_beginAccess();
    v24 = *(v31 + 108);
    sub_1AADA61DC(v22, v9, v10, v11);
    sub_1AAD3CEFC(v38, v12, v33);
    sub_1AAE20F5C(&v39, v32 + v24, &qword_1ED9B3A10, &type metadata for VectorizedProperties);
    swift_endAccess();
    goto LABEL_6;
  }

  memcpy(__dst, __src, 0x2C9uLL);
  v15 = __dst[34];
  v29 = __dst[36];
  v30 = __dst[35];
  v16 = v11;
  v17 = __dst[38];
  v27 = __dst[39];
  v28 = __dst[37];
  v26 = LOBYTE(__dst[40]);
  v18 = v8;
  sub_1AADA61DC(v8, v9, v10, v11);
  v19 = v33;
  sub_1AAD3CEFC(v38, v12, v33);
  sub_1AAE20FDC(v15, v30, v29, v28, v17, v27, v26);
  __dst[34] = v18;
  __dst[35] = v9;
  __dst[36] = v10;
  __dst[37] = v11;
  __dst[38] = v38;
  __dst[39] = v12;
  LOBYTE(__dst[40]) = v33;
  v20 = type metadata accessor for TypedVectorizedProperties();
  v21 = *(v20 - 8);
  (*(v21 + 16))(__src, __dst, v20);
  sub_1AAF30464(__src, v44);
  swift_beginAccess();
  sub_1AAE20F5C(v44, v32 + *(v31 + 108), &qword_1ED9B3A10, &type metadata for VectorizedProperties);
  swift_endAccess();
  (*(v21 + 8))(__dst, v20);
  v22 = v18;
LABEL_6:
  LOBYTE(__dst[0]) = v35;
  __dst[1] = v36;
  (*(a5 + 40))(v37, __dst);
  sub_1AADA6198(v22, v9, v10, v16);
  return sub_1AAD3D014(v38, v12, v19);
}

uint64_t sub_1AAE20860(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = *a2;
  v6 = *(a2 + 1);
  v7 = type metadata accessor for ModifiedChartContent_SymbolSizes_KeyPath();
  v38 = a1;
  sub_1AAF3032C(0, 0, 0, 0, *(a1 + *(v7 + 44)), __dst);
  v8 = __dst[0];
  v9 = __dst[1];
  v10 = __dst[2];
  v11 = __dst[3];
  v39 = __dst[4];
  v34 = __dst[5];
  v12 = __dst[6];
  v37 = v6;
  v13 = v6 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v32 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v33 = v13;
  v14 = v13 + *(v32 + 108);
  if (!*(v14 + 24))
  {
    memset(__src, 0, 24);
    __src[3] = 2;
    bzero(&__src[4], 0x2A9uLL);

    goto LABEL_5;
  }

  sub_1AAE0FC20(v14, v45);

  sub_1AAF303E4(__src);
  sub_1AAE0FC7C(v45);
  if (__src[3] == 2)
  {
LABEL_5:
    type metadata accessor for TypedVectorizedProperties();
    v23 = sub_1AAF8FE74();
    (*(*(v23 - 8) + 8))(__src, v23);
    memset(v50, 0, 24);
    v50[3] = 1;
    v50[5] = 0;
    v50[4] = 0;
    v51 = 0;
    memset(v52, 0, 24);
    v52[3] = 1;
    v52[5] = 0;
    v52[4] = 0;
    v53 = 0;
    v54 = 0uLL;
    v55 = 0;
    v56 = 1;
    v57 = 0u;
    memset(v58, 0, sizeof(v58));
    v40 = 0uLL;
    v41 = 0;
    v42 = 1;
    v43 = 0u;
    memset(v44, 0, sizeof(v44));
    *&v59 = v8;
    *(&v59 + 1) = v9;
    v60 = v10;
    v61 = v11;
    v62 = v39;
    v20 = v11;
    v63 = v34;
    v64 = v12 | 0x80;
    sub_1AAD3CF1C(v46);
    v65[5] = v46[5];
    v65[6] = v46[6];
    v65[7] = v46[7];
    v65[1] = v46[1];
    v65[2] = v46[2];
    v65[3] = v46[3];
    v65[4] = v46[4];
    v66 = v47;
    v65[0] = v46[0];
    memset(v67, 0, 24);
    v67[3] = 1;
    v67[5] = 0;
    v67[4] = 0;
    v68 = 0;
    memset(v69, 0, 24);
    v69[3] = 1;
    v69[4] = 0;
    v69[5] = 0;
    v70 = 0;
    v71 = 0uLL;
    v72 = 0;
    v73 = 1;
    v18 = v8;
    v76 = 0;
    v75 = 0u;
    v74 = 0u;
    sub_1AAF304C8(v50, v52, &v54, &v40, &v59, v65, v67, v69, v45, &v71, &v71);
    v19 = v34;
    sub_1AAF30464(v45, &v40);
    swift_beginAccess();
    v24 = *(v32 + 108);
    sub_1AADA61DC(v18, v9, v10, v11);
    sub_1AAD3CEFC(v39, v34, v12);
    sub_1AAE20F5C(&v40, v13 + v24, &qword_1ED9B3A10, &type metadata for VectorizedProperties);
    swift_endAccess();
    goto LABEL_6;
  }

  memcpy(__dst, __src, 0x2C9uLL);
  v30 = v12 | 0x80;
  v31 = v12;
  v15 = __dst[35];
  v28 = __dst[36];
  v29 = __dst[34];
  v27 = __dst[37];
  v16 = __dst[38];
  v17 = __dst[39];
  v26 = LOBYTE(__dst[40]);
  v18 = v8;
  sub_1AADA61DC(v8, v9, v10, v11);
  v19 = v34;
  sub_1AAD3CEFC(v39, v34, v31);
  sub_1AAE20FDC(v29, v15, v28, v27, v16, v17, v26);
  __dst[34] = v18;
  __dst[35] = v9;
  __dst[36] = v10;
  __dst[37] = v11;
  __dst[38] = v39;
  v20 = v11;
  __dst[39] = v34;
  LOBYTE(__dst[40]) = v30;
  v21 = type metadata accessor for TypedVectorizedProperties();
  v22 = *(v21 - 8);
  (*(v22 + 16))(__src, __dst, v21);
  sub_1AAF30464(__src, v45);
  swift_beginAccess();
  sub_1AAE20F5C(v45, v33 + *(v32 + 108), &qword_1ED9B3A10, &type metadata for VectorizedProperties);
  swift_endAccess();
  (*(v22 + 8))(__dst, v21);
  v12 = v31;
LABEL_6:
  LOBYTE(__dst[0]) = v36;
  __dst[1] = v37;
  (*(a5 + 40))(v38, __dst);
  sub_1AADA6198(v18, v9, v10, v20);
  return sub_1AAD3D014(v39, v19, v12);
}

uint64_t sub_1AAE20E20(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  sub_1AACAA194(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1AAE20E90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAE20EF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChartContentRenderContext.Environment(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAE20F5C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AACAA194(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AAE20FDC(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7 <= 0xFBu)
  {
    return sub_1AAE21034(result, a2, a3, a4, a5, a6, a7, sub_1AAE21144, sub_1AAE21144);
  }

  return result;
}

uint64_t sub_1AAE21034(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t), uint64_t (*a9)(uint64_t, uint64_t, uint64_t))
{
  if ((a7 & 0x80) != 0)
  {
    sub_1AADA6198(a1, a2, a3, a4);
    v14 = a7 & 0x7F;
    v12 = a5;
    v13 = a6;
    v15 = a9;
  }

  else
  {
    sub_1AADA6198(a1, a2, a3, a4);
    v12 = a5;
    v13 = a6;
    v14 = a7;
    v15 = a8;
  }

  return v15(v12, v13, v14);
}

uint64_t sub_1AAE21158(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for BuilderConditional.Storage();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v8 = &v19 - v7;
  v9 = type metadata accessor for BuilderConditional();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  (*(v13 + 16))(&v19 - v11, v2, v10);
  v14 = *(TupleTypeMetadata2 + 48);
  v15 = *(v4 - 8);
  (*(v15 + 32))(v8, v12, v4);
  (*(v15 + 16))(&v8[v14], a1, v4);
  LODWORD(a1) = swift_getEnumCaseMultiPayload();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (a1 == 1)
  {
    if (EnumCaseMultiPayload != 1)
    {
LABEL_3:
      (*(v6 + 8))(v8, TupleTypeMetadata2);
      return 0;
    }
  }

  else if (EnumCaseMultiPayload == 1)
  {
    goto LABEL_3;
  }

  v18 = *(v15 + 8);
  v18(&v8[v14], v4);
  v18(v8, v4);
  return 1;
}

uint64_t sub_1AAE213B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for BuilderConditional();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for BuilderConditional.Info();
  *(a3 + *(result + 36)) = a2;
  return result;
}

uint64_t BuilderConditional.init(storage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BuilderConditional.Storage();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t static Optional<A>._makeChartContent(content:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v10 = type metadata accessor for BuilderConditional();
  v11 = sub_1AAF8D954();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (v19 - v13);
  sub_1AAF8FE74();
  v20 = sub_1AACBC3B4(a1);
  v22 = v10;
  v15 = _s5ChildVMa_1();
  v23 = v15;
  WitnessTable = swift_getWitnessTable();
  v16 = sub_1AAF8D1A4();
  sub_1AACBC418(&v20, sub_1AACBC5B0, v21, v15, MEMORY[0x1E69E73E0], v16, MEMORY[0x1E69E7410], v17);
  sub_1AACBC644(v19[2], v14);
  static BuilderConditional<>._makeChartContent(content:inputs:)(v14, a2, a3, &type metadata for BuilderEmpty, a4, &protocol witness table for BuilderEmpty, a5);
  return (*(v12 + 8))(v14, v11);
}

uint64_t static BuilderConditional<>._makeChartContent(content:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v34[1] = a6;
  v34[0] = a5;
  v36 = a1;
  v50 = *MEMORY[0x1E69E9840];
  v39 = type metadata accessor for SetDependency(0) - 8;
  MEMORY[0x1EEE9AC00](v39);
  v38 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for _ChartContentOutputs(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v35 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for _ChartContentInputs(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a3;
  v47 = a4;
  v48 = a5;
  v49 = a6;
  v19 = _s9ContainerVMa();
  v37 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (v34 - v20);
  v22 = type metadata accessor for AddPreference(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s6Charts12BuilderEmptyV19_makeChart3DContent7content6inputsAA01_eF7OutputsV7SwiftUI11_GraphValueVyACG_AA01_eF6InputsVtFZ_0();
  v45 = v24;
  sub_1AAF8E394();
  v25 = a7;
  _s6Charts12BuilderEmptyV19_makeChart3DContent7content6inputsAA01_eF7OutputsV7SwiftUI11_GraphValueVyACG_AA01_eF6InputsVtFZ_0();
  v26 = sub_1AAF8E4B4();
  v27 = *(v26 - 8);
  (*(v27 + 24))(v25, v24, v26);
  sub_1AAE279D0(v24, type metadata accessor for AddPreference);
  type metadata accessor for BuilderConditional();
  LODWORD(v24) = sub_1AACBC3B4(v36);
  sub_1AACE8BF0(a2, v18, type metadata accessor for _ChartContentInputs);
  v28 = v35;
  sub_1AACE8BF0(v25, v35, type metadata accessor for _ChartContentOutputs);
  sub_1AAE22FC8(v24, v18, v28, v21);
  v42 = type metadata accessor for BuilderConditional.Info();
  v43 = v19;
  WitnessTable = swift_getWitnessTable();
  v29 = sub_1AAF8D1A4();
  sub_1AACBC418(v21, sub_1AAD4AE90, v41, v19, MEMORY[0x1E69E73E0], v29, MEMORY[0x1E69E7410], v30);
  LODWORD(a4) = v46;
  v31 = v38;
  (*(v27 + 16))(v38, v25, v26);
  v32 = v31 + *(v39 + 28);
  *v32 = a4;
  *(v32 + 4) = 0;
  v40 = v31;
  sub_1AAF8E484();
  (*(v37 + 8))(v21, v19);
  return sub_1AAE279D0(v31, type metadata accessor for SetDependency);
}

uint64_t static Optional<A>._collectChartContent(content:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1AAF8FE74();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  v14 = *(a3 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a1, v10, v16);
  if ((*(v14 + 48))(v13, 1, a3) == 1)
  {
    result = (*(v11 + 8))(v13, v10);
    *a5 = MEMORY[0x1E69E7CC0];
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    *(a5 + 24) = 0;
    *(a5 + 32) = xmmword_1AAF92AC0;
    *(a5 + 48) = 0;
    *(a5 + 64) = 0;
    *(a5 + 72) = 0;
    *(a5 + 56) = 0;
    *(a5 + 80) = xmmword_1AAF92AC0;
    *(a5 + 96) = 0;
    *(a5 + 112) = 0;
    *(a5 + 120) = 0;
    *(a5 + 104) = 0;
    *(a5 + 128) = xmmword_1AAF92AC0;
    *(a5 + 144) = 0;
    *(a5 + 160) = 0;
    *(a5 + 168) = 0;
    *(a5 + 152) = 0;
    *(a5 + 176) = xmmword_1AAF92AC0;
    *(a5 + 192) = 0;
    *(a5 + 208) = 0;
    *(a5 + 216) = 0;
    *(a5 + 200) = 0;
    *(a5 + 224) = xmmword_1AAF92AC0;
    *(a5 + 240) = 0;
    *(a5 + 256) = 0;
    *(a5 + 264) = 0;
    *(a5 + 248) = 0;
    *(a5 + 272) = xmmword_1AAF92AC0;
    *(a5 + 288) = 0;
    *(a5 + 304) = 0;
    *(a5 + 312) = 0;
    *(a5 + 296) = 0;
    *(a5 + 320) = xmmword_1AAF92AC0;
    *(a5 + 336) = 0;
    *(a5 + 352) = 0;
    *(a5 + 360) = 0;
    *(a5 + 344) = 0;
    *(a5 + 368) = xmmword_1AAF92AC0;
    *(a5 + 384) = 0;
    *(a5 + 400) = 0;
    *(a5 + 408) = 0;
    *(a5 + 392) = 0;
    *(a5 + 416) = xmmword_1AAF92AC0;
    *(a5 + 432) = 0;
    *(a5 + 448) = 0;
    *(a5 + 456) = 0;
    *(a5 + 440) = 0;
    *(a5 + 464) = xmmword_1AAF92AC0;
    *(a5 + 480) = 0;
    *(a5 + 488) = 0u;
    *(a5 + 504) = 0u;
    *(a5 + 520) = 1;
    *(a5 + 799) = 0;
    *(a5 + 768) = 0u;
    *(a5 + 784) = 0u;
    *(a5 + 736) = 0u;
    *(a5 + 752) = 0u;
    *(a5 + 704) = 0u;
    *(a5 + 720) = 0u;
    *(a5 + 672) = 0u;
    *(a5 + 688) = 0u;
    *(a5 + 640) = 0u;
    *(a5 + 656) = 0u;
    *(a5 + 608) = 0u;
    *(a5 + 624) = 0u;
    *(a5 + 576) = 0u;
    *(a5 + 592) = 0u;
    *(a5 + 544) = 0u;
    *(a5 + 560) = 0u;
    *(a5 + 528) = 0u;
  }

  else
  {
    (*(v14 + 32))(v18, v13, a3);
    (*(a4 + 64))(v18, a2, a3, a4);
    return (*(v14 + 8))(v18, a3);
  }

  return result;
}

uint64_t sub_1AAE2208C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v18 = a2;
  v19 = a3;
  v4 = type metadata accessor for BuilderConditional.Storage();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - v6;
  v8 = sub_1AAF8FE74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  v12 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD3EFB4(v11);
  if ((*(v12 + 48))(v11, 1, a1) == 1)
  {
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    v16 = *(v12 + 32);
    v16(v15, v11, a1);
    v16(v7, v15, a1);
  }

  swift_storeEnumTagMultiPayload();
  return (*(v5 + 32))(v19, v7, v4);
}

uint64_t sub_1AAE222F8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for BuilderConditional();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

double sub_1AAE22490@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = xmmword_1AAF92AC0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  *(a1 + 80) = xmmword_1AAF92AC0;
  *(a1 + 96) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 128) = xmmword_1AAF92AC0;
  *(a1 + 144) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0;
  *(a1 + 176) = xmmword_1AAF92AC0;
  *(a1 + 192) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0;
  *(a1 + 224) = xmmword_1AAF92AC0;
  *(a1 + 240) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0;
  *(a1 + 272) = xmmword_1AAF92AC0;
  *(a1 + 288) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 296) = 0;
  *(a1 + 320) = xmmword_1AAF92AC0;
  *(a1 + 336) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 344) = 0;
  *(a1 + 368) = xmmword_1AAF92AC0;
  *(a1 + 384) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 392) = 0;
  *(a1 + 416) = xmmword_1AAF92AC0;
  *(a1 + 432) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 440) = 0;
  *(a1 + 464) = xmmword_1AAF92AC0;
  *(a1 + 480) = 0;
  result = 0.0;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 1;
  *(a1 + 799) = 0;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 528) = 0u;
  return result;
}

double static BuilderEmpty._collectChartContent(content:inputs:)@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = xmmword_1AAF92AC0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  *(a1 + 80) = xmmword_1AAF92AC0;
  *(a1 + 96) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 128) = xmmword_1AAF92AC0;
  *(a1 + 144) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0;
  *(a1 + 176) = xmmword_1AAF92AC0;
  *(a1 + 192) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0;
  *(a1 + 224) = xmmword_1AAF92AC0;
  *(a1 + 240) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0;
  *(a1 + 272) = xmmword_1AAF92AC0;
  *(a1 + 288) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 296) = 0;
  *(a1 + 320) = xmmword_1AAF92AC0;
  *(a1 + 336) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 344) = 0;
  *(a1 + 368) = xmmword_1AAF92AC0;
  *(a1 + 384) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 392) = 0;
  *(a1 + 416) = xmmword_1AAF92AC0;
  *(a1 + 432) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 440) = 0;
  *(a1 + 464) = xmmword_1AAF92AC0;
  *(a1 + 480) = 0;
  result = 0.0;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 1;
  *(a1 + 799) = 0;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 528) = 0u;
  return result;
}

uint64_t BuilderConditional.storage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for BuilderConditional.Storage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1AAE226E4(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  v24 = a1;
  v2 = type metadata accessor for BuilderConditional.Storage();
  v25 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - v3;
  v5 = type metadata accessor for BuilderConditional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  v9 = type metadata accessor for BuilderConditional.Info();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - v11;
  v23 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v22 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAE22AB0(v12);
  (*(v6 + 16))(v8, v12, v5);
  v15 = v25;
  (*(v10 + 8))(v12, v9);
  (*(v15 + 32))(v4, v8, v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v15 + 8))(v4, v2);
  }

  v18 = v22;
  v17 = v23;
  v19 = (*(v23 + 32))(v22, v4, v1);
  MEMORY[0x1EEE9AC00](v19);
  *(&v21 - 2) = v24;
  *(&v21 - 1) = swift_getWitnessTable();
  sub_1AACBC418(v18, sub_1AAD4BC60, (&v21 - 4), v1, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v20);
  return (*(v17 + 8))(v18, v1);
}

uint64_t sub_1AAE22AB0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for BuilderConditional.Info();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t sub_1AAE22B74(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);
  v24 = a1;
  v2 = type metadata accessor for BuilderConditional.Storage();
  v25 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - v3;
  v5 = type metadata accessor for BuilderConditional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  v9 = type metadata accessor for BuilderConditional.Info();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - v11;
  v23 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v22 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAE22AB0(v12);
  (*(v6 + 16))(v8, v12, v5);
  v15 = v25;
  (*(v10 + 8))(v12, v9);
  (*(v15 + 32))(v4, v8, v2);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(v15 + 8))(v4, v2);
  }

  v17 = v22;
  v16 = v23;
  v18 = (*(v23 + 32))(v22, v4, v1);
  MEMORY[0x1EEE9AC00](v18);
  *(&v21 - 2) = v24;
  *(&v21 - 1) = swift_getWitnessTable();
  sub_1AACBC418(v17, sub_1AAD4BC60, (&v21 - 4), v1, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v19);
  return (*(v16 + 8))(v17, v1);
}

id sub_1AAE22FC8@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  *a4 = a1;
  v7 = _s9ContainerVMa();
  sub_1AAE27A30(a2, a4 + v7[13], type metadata accessor for _ChartContentInputs);
  sub_1AAE27A30(a3, a4 + v7[14], type metadata accessor for _ChartContentOutputs);
  result = AGSubgraphGetCurrent();
  if (result)
  {
    *(a4 + v7[15]) = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static BuilderConditional<>._collectChartContent(content:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v36 = a6;
  v37 = a5;
  v38 = a1;
  v39 = a7;
  v35 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for BuilderConditional.Storage();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - v18;
  v20 = type metadata accessor for _ChartContentCollectInputs(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACE8BF0(a2, v22, type metadata accessor for _ChartContentCollectInputs);
  (*(v17 + 16))(v19, v38, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = v35;
    (*(v35 + 32))(v11, v19, a4);
    v24 = *(v20 + 20);
    v25 = *&v22[v24];
    sub_1AADAD8EC();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AAF92AB0;
    *(inited + 32) = 0;
    *(inited + 72) = 0;
    v40 = v25;

    sub_1AADC85B8(inited);
    v27 = v40;

    *&v22[v24] = v27;
    (*(v36 + 64))(v11, v22, a4);
    (*(v23 + 8))(v11, a4);
  }

  else
  {
    v28 = v34;
    (*(v34 + 32))(v15, v19, a3);
    v29 = *(v20 + 20);
    v30 = *&v22[v29];
    sub_1AADAD8EC();
    v31 = swift_initStackObject();
    *(v31 + 16) = xmmword_1AAF92AB0;
    *(v31 + 32) = 1;
    *(v31 + 72) = 0;
    v40 = v30;

    sub_1AADC85B8(v31);
    v32 = v40;

    *&v22[v29] = v32;
    (*(v37 + 64))(v15, v22, a3);
    (*(v28 + 8))(v15, a3);
  }

  return sub_1AAE279D0(v22, type metadata accessor for _ChartContentCollectInputs);
}

uint64_t sub_1AAE2349C(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for BuilderConditional.Info();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v49 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v43 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v43 - v9;
  v54 = sub_1AAF8FE74();
  v10 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  v19 = type metadata accessor for BuilderConditional();
  v50 = *(v19 - 8);
  v51 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v55 = &v43 - v20;
  v48 = v1;
  sub_1AAD3D6FC(&v43 - v20);
  OutputValue = AGGraphGetOutputValue();
  v52 = a1;
  if (OutputValue)
  {
    (*(v4 + 16))(v18, OutputValue, v3);
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  (*(v4 + 56))(v18, v22, 1, v3);
  v23 = *(v10 + 16);
  v56 = v18;
  v24 = v54;
  v23(v15, v18, v54);
  v25 = v10;
  v26 = *(v4 + 48);
  v27 = v26(v15, 1, v3);
  v53 = v25;
  if (v27 == 1)
  {
    (*(v25 + 8))(v15, v24);
  }

  else
  {
    v28 = sub_1AAE21158(v55);
    v44 = *(v4 + 8);
    v45 = v4 + 8;
    v44(v15, v3);
    if (v28)
    {
      result = AGGraphGetOutputValue();
      if (result)
      {
        v30 = v46;
        (*(v4 + 16))(v46, result, v3);
        v32 = v50;
        v31 = v51;
        v33 = v55;
        v34 = (*(v50 + 24))(v30, v55, v51);
        MEMORY[0x1EEE9AC00](v34);
        *(&v43 - 2) = v52;
        *(&v43 - 1) = swift_getWitnessTable();
        sub_1AACBC418(v30, sub_1AAD4BC60, (&v43 - 4), v3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v35);
        (*(v53 + 8))(v56, v24);
        (*(v32 + 8))(v33, v31);
        return (v44)(v30, v3);
      }

      else
      {
        __break(1u);
      }

      return result;
    }
  }

  v23(v12, v56, v24);
  if (v26(v12, 1, v3) == 1)
  {
    v36 = v53;
    (*(v53 + 8))(v12, v24);
    v37 = v52;
  }

  else
  {
    v38 = v47;
    (*(v4 + 32))(v47, v12, v3);
    v37 = v52;
    sub_1AAE23B18(v38, v52);
    (*(v4 + 8))(v38, v3);
    v36 = v53;
  }

  v39 = v49;
  v40 = v55;
  v41 = sub_1AAE23C30(v55, v37, v49);
  MEMORY[0x1EEE9AC00](v41);
  *(&v43 - 2) = v37;
  *(&v43 - 1) = swift_getWitnessTable();
  sub_1AACBC418(v39, sub_1AAD4B490, (&v43 - 4), v3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v42);
  (*(v4 + 8))(v39, v3);
  (*(v36 + 8))(v56, v24);
  return (*(v50 + 8))(v40, v51);
}