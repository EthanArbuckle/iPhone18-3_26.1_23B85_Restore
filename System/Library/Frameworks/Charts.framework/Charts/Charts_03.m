uint64_t sub_1AACE2878@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = **a1;
  v6 = *a1[2];
  v7 = *a1[3];
  sub_1AACB4B38(a1[1], a3 + 16);
  *a3 = a2;
  *(a3 + 8) = v5;
  *(a3 + 57) = v6;
  *(a3 + 64) = v7;
}

uint64_t sub_1AACE293C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AACE2978(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1AACE29C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AACE2A0C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t static ForEach<>._renderChartContent(_:_:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v59 = a8;
  v55 = a7;
  v54 = a6;
  v46 = a5;
  v45 = a4;
  v57 = a1;
  v60 = a9;
  v49 = *(*(a6 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v58 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v45 - v15;
  v51 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(swift_getAssociatedConformanceWitness() + 8);
  v53 = sub_1AAF90354();
  v56 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v20 = &v45 - v19;
  v48 = *a2;
  v47 = *(a2 + 1);
  v21 = v47 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v52 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v22 = *(v52 + 64);
  v23 = *(v21 + v22);
  *(v21 + v22) = 0;
  v71 = a3;
  v72 = a4;
  v24 = v54;
  v73 = a5;
  v74 = v54;
  v25 = v55;
  v75 = v55;
  sub_1AAF8EFE4();
  v26 = v57;
  sub_1AAF8EF94();
  sub_1AAF8FB74();
  (*(v51 + 8))(v18, a3);
  MEMORY[0x1AC598390](AssociatedTypeWitness, v50);
  (*(v58 + 8))(v16, AssociatedTypeWitness);
  v27 = MEMORY[0x1E69E7CC0];
  v70 = MEMORY[0x1E69E7CC0];
  v61 = a3;
  v62 = v45;
  v63 = v46;
  v64 = v24;
  v65 = v25;
  v66 = v59;
  v67 = v48;
  v28 = v47;
  v68 = v47;
  v69 = v26;
  sub_1AACE4024();
  v29 = v53;
  swift_getWitnessTable();
  sub_1AAF8F7B4();
  (*(v56 + 8))(v20, v29);
  v30 = v71;
  *(v21 + *(v52 + 64)) = v23;
  v31 = *(*(v28 + 16) + 24);
  v32 = *(v30 + 16);
  if (v32)
  {
    v71 = v27;
    sub_1AAD0F6F0(0, v32, 0);
    v33 = v71;
    v34 = *(v71 + 16);
    v35 = 32;
    do
    {
      v36 = *(v30 + v35);
      v71 = v33;
      v37 = *(v33 + 24);

      if (v34 >= v37 >> 1)
      {
        sub_1AAD0F6F0((v37 > 1), v34 + 1, 1);
        v33 = v71;
      }

      *(v33 + 16) = v34 + 1;
      *(v33 + 8 * v34 + 32) = v36;
      v35 += 8;
      ++v34;
      --v32;
    }

    while (v32);
  }

  else
  {

    v33 = MEMORY[0x1E69E7CC0];
  }

  v38 = type metadata accessor for SgGroup(0);
  v39 = swift_allocBox();
  v41 = v40;
  v42 = v38[6];
  v43 = type metadata accessor for SgClipRect(0);
  result = (*(*(v43 - 8) + 56))(&v41[v42], 1, 1, v43);
  *v41 = v31;
  *(v41 + 1) = v33;
  *&v41[v38[7]] = 0x3FF0000000000000;
  *&v41[v38[8]] = v23;
  *&v41[v38[9]] = v27;
  v41[v38[10]] = 0;
  *v60 = v39;
  return result;
}

uint64_t sub_1AACE3014(void (*a1)(uint64_t *__return_ptr, void *))
{
  type metadata accessor for CGSize(0);

  sub_1AACD889C(&v5);

  v6[0] = &v5;

  sub_1AACD889C(v4);

  v6[1] = v4;

  sub_1AACD889C(v3);

  v6[2] = v3;
  a1(&v7, v6);

  return v7;
}

uint64_t sub_1AACE30F0()
{

  memcpy(__dst, (v0 + 80), 0x102uLL);
  sub_1AACBB254(__dst);
  sub_1AACE3448(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment, type metadata accessor for ChartContentRenderContext.Environment);

  sub_1AACE4390(*(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 8), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 16), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 24), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 32), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 40), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 48), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 56), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 64), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 72), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 80), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 88), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 96), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 104));
  sub_1AACE4390(*(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 8), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 16), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 24), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 32), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 40), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 48), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 56), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 64), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 72), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 80), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 88), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 96), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 104));
  sub_1AACE4390(*(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xOffsetScale), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xOffsetScale + 8), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xOffsetScale + 16), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xOffsetScale + 24), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xOffsetScale + 32), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xOffsetScale + 40), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xOffsetScale + 48), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xOffsetScale + 56), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xOffsetScale + 64), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xOffsetScale + 72), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xOffsetScale + 80), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xOffsetScale + 88), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xOffsetScale + 96), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xOffsetScale + 104));
  sub_1AACE4390(*(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yOffsetScale), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yOffsetScale + 8), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yOffsetScale + 16), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yOffsetScale + 24), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yOffsetScale + 32), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yOffsetScale + 40), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yOffsetScale + 48), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yOffsetScale + 56), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yOffsetScale + 64), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yOffsetScale + 72), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yOffsetScale + 80), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yOffsetScale + 88), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yOffsetScale + 96), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yOffsetScale + 104));
  sub_1AACE4390(*(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 8), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 16), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 24), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 32), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 40), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 48), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 56), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 64), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 72), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 80), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 88), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 96), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 104));
  sub_1AACE337C(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolScale, &qword_1ED9B3E00, &qword_1ED9B3E08, &type metadata for AnyChartSymbolShape);
  v1 = *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 112);
  v7[6] = *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 96);
  v7[7] = v1;
  v8 = *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 128);
  v2 = *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 48);
  v7[2] = *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 32);
  v7[3] = v2;
  v3 = *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 80);
  v7[4] = *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 64);
  v7[5] = v3;
  v4 = *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 16);
  v7[0] = *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale);
  v7[1] = v4;
  sub_1AACE337C(v7, &qword_1ED9B3E10, &qword_1ED9B3E18, MEMORY[0x1E697DD48]);
  sub_1AACE4080(*(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 8), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 16), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 24), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 32), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 40), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 48), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 56), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 64), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 72), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 80), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 88), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 96));

  return v0;
}

uint64_t sub_1AACE337C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1AACE46B4(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AACE33D8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1AAF3AA3C(0, a2, a3, a4, type metadata accessor for AnyConcreteScale);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AACE3448(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AACE34A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AACE3534(unint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v14 = type metadata accessor for SgGroup(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v82 - v19;
  v21 = a1 >> 60;
  if ((a1 >> 60) <= 0xE)
  {
    if (((1 << v21) & 0x7BF8) != 0)
    {

      return a1;
    }

    if (v21 == 2)
    {
      sub_1AAD117A0((a1 & 0xFFFFFFFFFFFFFFFLL) + 16, v96);
      sub_1AAD117A0(v96, v84);
      v23 = *(&v84[0] + 1);
      v24 = *(*(&v84[0] + 1) + 16);
      if (v24)
      {
        v97 = MEMORY[0x1E69E7CC0];
        sub_1AAD0F6F0(0, v24, 0);
        v25 = 32;
        v26 = v97;
        do
        {
          v27 = *(v23 + v25);

          v28 = sub_1AACE3534(v27, a2, a3, a4, a5, a6, a7);

          v97 = v26;
          v30 = *(v26 + 16);
          v29 = *(v26 + 24);
          if (v30 >= v29 >> 1)
          {
            sub_1AAD0F6F0((v29 > 1), v30 + 1, 1);
            v26 = v97;
          }

          *(v26 + 16) = v30 + 1;
          *(v26 + 8 * v30 + 32) = v28;
          v25 += 8;
          --v24;
        }

        while (v24);
        sub_1AAF14C40(v96);
      }

      else
      {
        sub_1AAF14C40(v96);

        v26 = MEMORY[0x1E69E7CC0];
      }

      *(&v84[0] + 1) = v26;
      v77 = swift_allocObject();
      v78 = v84[1];
      *(v77 + 16) = v84[0];
      *(v77 + 32) = v78;
      v79 = v84[3];
      *(v77 + 48) = v84[2];
      *(v77 + 64) = v79;
      return v77 | 0x2000000000000000;
    }

    if (v21 == 10)
    {
      v31 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v32 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v33 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v34 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      v35 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
      v96[4] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
      v96[5] = v35;
      v96[2] = v33;
      v96[3] = v34;
      v36 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
      v37 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x80);
      v38 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x90);
      v39 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0xB0);
      v96[9] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0xA0);
      v96[10] = v39;
      v96[7] = v37;
      v96[8] = v38;
      v96[6] = v36;
      v96[0] = v31;
      v96[1] = v32;
      v40 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0xA0);
      v93 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x90);
      v94 = v40;
      v95 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0xB0);
      v41 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
      v89 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
      v90 = v41;
      v42 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x80);
      v91 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
      v92 = v42;
      v43 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v85 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v86 = v43;
      v44 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      v87 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v88 = v44;
      sub_1AAD1B82C(v96, v84);
      sub_1AAF50448(&v85, a2, a3, a4, a5, a6, a7);
      v45 = swift_allocObject();
      v46 = v94;
      *(v45 + 144) = v93;
      *(v45 + 160) = v46;
      *(v45 + 176) = v95;
      v47 = v90;
      *(v45 + 80) = v89;
      *(v45 + 96) = v47;
      v48 = v92;
      *(v45 + 112) = v91;
      *(v45 + 128) = v48;
      v49 = v86;
      *(v45 + 16) = v85;
      *(v45 + 32) = v49;
      v50 = v88;
      a1 = v45 | 0xA000000000000000;
      *(v45 + 48) = v87;
      *(v45 + 64) = v50;
      return a1;
    }
  }

  if (v21)
  {
    v60 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v83 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v61 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v62 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    v63 = *(v60 + 16);
    if (v63)
    {
      *&v96[0] = MEMORY[0x1E69E7CC0];

      sub_1AAD0F6F0(0, v63, 0);
      v64 = 32;
      v65 = *&v96[0];
      do
      {
        v66 = *(v60 + v64);

        v67 = sub_1AACE3534(v66, a2, a3, a4, a5, a6, a7);

        *&v96[0] = v65;
        v69 = *(v65 + 16);
        v68 = *(v65 + 24);
        if (v69 >= v68 >> 1)
        {
          sub_1AAD0F6F0((v68 > 1), v69 + 1, 1);
          v65 = *&v96[0];
        }

        *(v65 + 16) = v69 + 1;
        *(v65 + 8 * v69 + 32) = v67;
        v64 += 8;
        --v63;
      }

      while (v63);

      v70 = *(v61 + 16);
      if (v70)
      {
        goto LABEL_27;
      }
    }

    else
    {

      v65 = MEMORY[0x1E69E7CC0];
      v70 = *(v61 + 16);
      if (v70)
      {
LABEL_27:
        *&v96[0] = MEMORY[0x1E69E7CC0];
        sub_1AAD0F6F0(0, v70, 0);
        v71 = 32;
        v72 = *&v96[0];
        do
        {
          v73 = *(v61 + v71);

          v74 = sub_1AACE3534(v73, a2, a3, a4, a5, a6, a7);

          *&v96[0] = v72;
          v76 = *(v72 + 16);
          v75 = *(v72 + 24);
          if (v76 >= v75 >> 1)
          {
            sub_1AAD0F6F0((v75 > 1), v76 + 1, 1);
            v72 = *&v96[0];
          }

          *(v72 + 16) = v76 + 1;
          *(v72 + 8 * v76 + 32) = v74;
          v71 += 8;
          --v70;
        }

        while (v70);

        goto LABEL_38;
      }
    }

    v72 = MEMORY[0x1E69E7CC0];
LABEL_38:
    v81 = swift_allocObject();
    *(v81 + 16) = v83;
    *(v81 + 24) = v65;
    *(v81 + 32) = v72;
    *(v81 + 40) = v62;
    return v81 | 0x1000000000000000;
  }

  v83 = v18;
  v51 = swift_projectBox();
  sub_1AACE3CA8(v51, v20, type metadata accessor for SgGroup);
  sub_1AACE3CA8(v20, v16, type metadata accessor for SgGroup);
  v52 = *(v16 + 1);
  v53 = *(v52 + 16);
  if (v53)
  {
    v82 = v16;
    *&v96[0] = MEMORY[0x1E69E7CC0];
    sub_1AAD0F6F0(0, v53, 0);
    v54 = 32;
    v55 = *&v96[0];
    do
    {
      v56 = *(v52 + v54);

      v57 = sub_1AACE3534(v56, a2, a3, a4, a5, a6, a7);

      *&v96[0] = v55;
      v59 = *(v55 + 16);
      v58 = *(v55 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_1AAD0F6F0((v58 > 1), v59 + 1, 1);
        v55 = *&v96[0];
      }

      *(v55 + 16) = v59 + 1;
      *(v55 + 8 * v59 + 32) = v57;
      v54 += 8;
      --v53;
    }

    while (v53);
    sub_1AACE40B8(v20, type metadata accessor for SgGroup);

    v16 = v82;
  }

  else
  {
    sub_1AACE40B8(v20, type metadata accessor for SgGroup);

    v55 = MEMORY[0x1E69E7CC0];
  }

  *(v16 + 1) = v55;
  a1 = swift_allocBox();
  sub_1AACE3DD4(v16, v80);
  return a1;
}

uint64_t sub_1AACE3BE0()
{

  if (*(v0 + 56))
  {
    sub_1AACB634C(v0 + 32);
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AACE3C28()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AACE3C68()
{
  sub_1AACE56EC(v0[7], v0[8], v0[9]);

  return MEMORY[0x1EEE6BDD0](v0, 192, 7);
}

uint64_t sub_1AACE3CA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1AACE3D30@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v8 = *a1;
  result = v5 + (v6 - v5) * v4(&v8);
  *a2 = result;
  return result;
}

uint64_t sub_1AACE3D90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AACE3534(**a1, **(a1 + 16), *(*(a1 + 16) + 8), *(*(a1 + 16) + 16), *(*(a1 + 16) + 24), **(a1 + 8), *(*(a1 + 8) + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1AACE3DD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SgGroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AACE3E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{

  sub_1AACB4A98(a5);

  return sub_1AACE3EF4(a8, a9);
}

uint64_t sub_1AACE3EF4(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_1AACE40AC(result, a2 & 1);
  }

  return result;
}

uint64_t sub_1AACE3F0C(void *a1)
{
  if (*a1 >> 61 == 7)
  {
    return (*a1 >> 3) + 14;
  }

  else
  {
    return *a1 >> 60;
  }
}

uint64_t sub_1AACE3F2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x71)
  {
    *result = a2 - 114;
    if (a3 >= 0x72)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x72)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1AACE3F7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t type metadata accessor for SgShapeStyle()
{
  result = qword_1ED9B6610;
  if (!qword_1ED9B6610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AACE4024()
{
  if (!qword_1ED9B2758)
  {
    v0 = sub_1AAF8F914();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2758);
    }
  }
}

uint64_t sub_1AACE4080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13)
{
  if (a13 != 255)
  {
    return sub_1AAE0BF5C(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return a1;
}

uint64_t sub_1AACE40AC(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1AACE40B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AACE4118@<X0>(uint64_t (*a1)(void, void, void, void, void, void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1(v2[2], v2[3], v2[4], v2[5], v2[6], v2[7]);
  *a2 = result;
  return result;
}

uint64_t sub_1AACE416C@<X0>(void (*a1)(uint64_t *__return_ptr, void *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X4>, unint64_t *a6@<X5>, unint64_t *a7@<X6>, uint64_t *a8@<X8>)
{
  v9 = *(a3 + 48);
  v10 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v10;
  v12[2] = *(a3 + 32);
  v13 = v9;
  result = sub_1AACE148C(a1, a2, v12, a4, a5, a6, a7);
  *a8 = result;
  return result;
}

uint64_t sub_1AACE41B8(uint64_t a1)
{
  if ((*(a1 + 40) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

char *sub_1AACE41D4(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1AAD6D1F0(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

uint64_t sub_1AACE4318()
{
  sub_1AACE30F0();

  return swift_deallocClassInstance();
}

uint64_t sub_1AACE4390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14)
{
  if (a14 != 255)
  {
    return sub_1AACE3E8C(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  return a1;
}

uint64_t sub_1AACE43C4@<X0>(uint64_t (*a1)(void, void, void, void, void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1(v2[2], v2[3], v2[4], v2[5], v2[6]);
  *a2 = result;
  return result;
}

uint64_t sub_1AACE4414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_1AAF8E244();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_1AACE4490(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1AACE44E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AACE4530(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x72 && *(a1 + 8))
  {
    return (*a1 + 114);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x71)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1AACE4580(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

void sub_1AACE45C8()
{
  if (!qword_1ED9B3E58)
  {
    sub_1AACC9BB0(255, qword_1ED9B3E60, &type metadata for AnyChartContent, MEMORY[0x1E69E6720]);
    sub_1AACC9E68(255);
    sub_1AACCA000(255, &qword_1ED9B2AB8, MEMORY[0x1E69E5E28]);
    sub_1AACC9CF4();
    sub_1AACC9D70();
    sub_1AACC9DEC();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1ED9B3E58);
    }
  }
}

void sub_1AACE46B4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1AACAE398(255, a3, a4, type metadata accessor for AnyConcreteScale);
    v5 = sub_1AAF8FE74();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1AACE4720(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_1AACE47D8@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[4];
  v18 = a1[3];
  v19 = v6;
  v7 = *a1;
  v8 = *a1;
  v17[1] = a1[1];
  v17[2] = v5;
  v14 = v5;
  v15 = v18;
  v16 = a1[4];
  v17[0] = v7;
  v9 = *a2;
  v12 = v8;
  v13 = v4;
  v11 = v9;
  sub_1AACE477C(v17, v20);
  static AxisTick._renderAxisMark(_:_:)(&v12, &v11, a3);
  v20[2] = v14;
  v20[3] = v15;
  v20[4] = v16;
  v20[0] = v12;
  v20[1] = v13;
  return sub_1AACE1438(v20);
}

uint64_t *sub_1AACE487C@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  result = sub_1AACE1D48(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32));
  *a2 = result;
  return result;
}

void sub_1AACE48F0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1AACC9BB0(255, a3, a4, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata, a2);
    }
  }
}

__n128 sub_1AACE4990(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

void sub_1AACE49D8()
{
  if (!qword_1ED9B16F8)
  {
    sub_1AAD9B578();
    v0 = sub_1AAF8F3F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B16F8);
    }
  }
}

void sub_1AACE4A3C()
{
  if (!qword_1ED9B1D68)
  {
    type metadata accessor for SgMeasurements();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1ED9B1D68);
    }
  }
}

void sub_1AACE4ACC()
{
  if (!qword_1ED9B67A0)
  {
    type metadata accessor for SgClipRect(255);
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B67A0);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for ContourLineValues.Stride(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for IndexedChannel(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 9))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 9;
  v5 = v3 - 9;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for IndexedChannel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 8) = 0;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AxisMarkPosition.Storage(unsigned __int8 *a1, unsigned int a2)
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
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1AACE4C50()
{
  result = qword_1ED9B1D50;
  if (!qword_1ED9B1D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B1D50);
  }

  return result;
}

uint64_t sub_1AACE4CB8(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = sub_1AAF8EC34();
  *a3 = result;
  return result;
}

void sub_1AACE4D00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_1AACDF9B8();
    v7 = v6;
    v8 = sub_1AACE046C();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1AACE4DD8(uint64_t a1, uint64_t a2)
{
  v4 = v2[4];
  if (*(v4 + 16) && (v5 = a2, v6 = sub_1AACC9B78(a2), v8 = v7, a2 = v5, (v8 & 1) != 0) && (v9 = *(*(v4 + 56) + 8 * v6), (v9 & 0x8000000000000000) == 0))
  {
    v10 = v2[1];
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1AADB8130(v10);
      v10 = result;
    }

    if (v9 >= v10[2])
    {
      __break(1u);
    }

    else
    {
      v10[5 * v9 + 7] = a1;

      v2[1] = v10;
      if (v9 != v2[2])
      {
        v12 = v10[2];
        v13[0] = (v10 + 4);
        v13[1] = v12;
        result = sub_1AACFD36C(v13, v9, v2);
        v2[1] = v10;
      }
    }
  }

  else
  {

    return sub_1AACE4F04(a1, a2, 0);
  }

  return result;
}

unint64_t sub_1AACE4F04(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = v3;
  v8 = v3[1];
  v9 = v8[2];
  if (v9 >= *v3)
  {
    a3 = v3[3];
    if (a3 < v9)
    {
      v15 = v8 + 4;
      v4 = 40 * a3;
      if (LOBYTE(v8[5 * a3 + 8]) != 1)
      {
LABEL_16:
        v16 = sub_1AACC9B78(*(v15 + v4 + 16));
        if ((v17 & 1) == 0)
        {
          goto LABEL_19;
        }

        v9 = v16;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = v3[4];
        v24[0] = v5[4];
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_18;
        }

        goto LABEL_32;
      }

      while (1)
      {
        a3 = v15[5 * a3];
        if (a3 >= v9)
        {
          break;
        }

        v4 = 40 * a3;
        if ((v8[5 * a3 + 8] & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_28:
    v8 = sub_1AACE5360(0, v8[2] + 1, 1, v8);
LABEL_9:
    v13 = v8[2];
    v12 = v8[3];
    if (v13 >= v12 >> 1)
    {
      v8 = sub_1AACE5360((v12 > 1), v13 + 1, 1, v8);
    }

    v8[2] = v13 + 1;
    v14 = &v8[5 * v13];
    v14[4] = -1;
    v14[5] = v4;
    v14[6] = a2;
    v14[7] = a1;
    *(v14 + 64) = a3 & 1;
    v5[1] = v8;
    return v9;
  }

  v4 = v3[2];
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_6:
    v5[2] = v9;
    if ((v5[3] & 0x8000000000000000) != 0)
    {
      v5[3] = v9;
    }

    v11 = swift_isUniquelyReferenced_nonNull_native();
    v24[0] = v5[4];
    sub_1AACE51D4(v9, a2, v11);
    v5[4] = v24[0];

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_30;
  }

  while (1)
  {
    if (v4 < v8[2])
    {
      v8[5 * v4 + 4] = v9;
      goto LABEL_6;
    }

    __break(1u);
LABEL_32:
    sub_1AAD94F24();
    v19 = v24[0];
LABEL_18:
    sub_1AAD928F4(v9, v19);
    v5[4] = v19;
LABEL_19:
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v24[0] = v5[4];
    sub_1AACE51D4(a3, a2, v20);
    v5[4] = v24[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1AADB8130(v8);
    }

    if (a3 < v8[2])
    {
      break;
    }

    __break(1u);
LABEL_30:
    v8 = sub_1AADB8130(v8);
  }

  v21 = v8 + v4 + 32;
  *(v21 + 2) = a2;
  *(v21 + 3) = a1;

  v5[1] = v8;
  if (a3 == v5[2])
  {
    return a3;
  }

  v22 = v8[2];
  v24[0] = (v8 + 4);
  v24[1] = v22;
  sub_1AACFD36C(v24, a3, v5);
  v5[1] = v8;
  return v5[2];
}

unint64_t sub_1AACE51D4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1AACC9B78(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1AAD94F24();
    result = v17;
    goto LABEL_8;
  }

  sub_1AACE0504(v14, a3 & 1);
  result = sub_1AACC9B78(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1AAF905B4();
  __break(1u);
  return result;
}

void sub_1AACE52F8()
{
  if (!qword_1ED9B1730)
  {
    type metadata accessor for SgMeasurements.CacheContent();
    v0 = type metadata accessor for LRUCache.Element();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B1730);
    }
  }
}

void *sub_1AACE5360(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1AAD6CF88(0, &qword_1ED9B1690, sub_1AACE52F8, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AACE52F8();
    swift_arrayInitWithCopy();
  }

  return v10;
}

__n128 AxisGridLine.init(centered:stroke:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v4[7] = *a2;
  *&v4[23] = *(a2 + 16);
  *(a3 + 17) = *v4;
  *&v4[39] = *(a2 + 32);
  *a3 = a1;
  *(a3 + 8) = 0;
  *(a3 + 16) = -1;
  *(a3 + 33) = *&v4[16];
  result = *&v4[31];
  *(a3 + 48) = *&v4[31];
  *(a3 + 64) = 1;
  *(a3 + 72) = 0;
  return result;
}

uint64_t sub_1AACE5524()
{
  v1 = *(v0 + 64);
  if (v1 == 255)
  {
    return 0;
  }

  if (v1)
  {
    return 0;
  }

  v2 = *(v0 + 56);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  else
  {
    return *(v2 + 8 * v3 + 24);
  }
}

uint64_t sub_1AACE555C()
{
  v1 = *(v0 + 8);
  MEMORY[0x1AC5992C0](*v0);
  return MEMORY[0x1AC5992C0](v1);
}

uint64_t getEnumTagSinglePayload for PrimitivePlottableType(unsigned __int8 *a1, unsigned int a2)
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
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1AACE56EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    sub_1AAD04750(a1, a2, a3 & 1);
  }
}

uint64_t sub_1AACE5740(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

BOOL sub_1AACE578C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 24);
  v4 = *(a1 + 56);
  v28[2] = *(a1 + 40);
  v28[3] = v4;
  v29 = a1[72];
  v28[0] = *(a1 + 8);
  v28[1] = v3;
  v5 = *a2;
  v6 = *(a2 + 24);
  v7 = *(a2 + 56);
  v30[2] = *(a2 + 40);
  v30[3] = v7;
  v31 = a2[72];
  v30[0] = *(a2 + 8);
  v30[1] = v6;
  if (v2 == v5)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 56);
    v21 = *(a1 + 40);
    v22 = v9;
    v23 = a1[72];
    v19 = *(a1 + 8);
    v20 = v8;
    v10 = *(a2 + 24);
    v11 = *(a2 + 56);
    v16 = *(a2 + 40);
    v17 = v11;
    v18 = a2[72];
    v14 = *(a2 + 8);
    v15 = v10;
    sub_1AACB1E30(v28, v26);
    sub_1AACB1E30(v30, v26);
    v12 = sub_1AACD22F8(&v19, &v14);
    v24[2] = v16;
    v24[3] = v17;
    v25 = v18;
    v24[0] = v14;
    v24[1] = v15;
    sub_1AACB24B4(v24);
    v26[2] = v21;
    v26[3] = v22;
    v27 = v23;
    v26[0] = v19;
    v26[1] = v20;
    sub_1AACB24B4(v26);
  }

  else
  {
    return 0;
  }

  return v12;
}

void sub_1AACE58B4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1AACC9BB0(255, a3, a4, MEMORY[0x1E69E62F8]);
    type metadata accessor for AxisMarkLayoutContext();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

__n128 sub_1AACE5948(uint64_t a1, uint64_t a2)
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

uint64_t sub_1AACE5968(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AACCB8F0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AACE59E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4;
  v277 = a4;
  v263 = a3;
  v260 = *&a2;
  v304 = a1;
  v6 = type metadata accessor for CalendarBinningUnit(0);
  v261 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v269 = &v259 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v284 = &v259 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v270 = &v259 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v259 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v288 = &v259 - v16;
  v17 = sub_1AAF8CBA4();
  v18 = *(v17 - 8);
  v300 = v17;
  v301 = v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v268 = &v259 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v276 = &v259 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v292 = &v259 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v287 = &v259 - v25;
  v26 = type metadata accessor for DateBins(0);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v266 = &v259 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v274 = &v259 - v29;
  sub_1AACD57C4();
  v282 = v30;
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v259 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v278 = &v259 - v34;
  v35 = sub_1AAF8CA64();
  v298 = *(v35 - 8);
  v36 = MEMORY[0x1EEE9AC00](v35);
  v293 = &v259 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v259 - v38;
  sub_1AACEC8E4();
  v299 = v40;
  v41 = MEMORY[0x1EEE9AC00](v40);
  v271 = &v259 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v279 = &v259 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v262 = &v259 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v280 = &v259 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v264 = &v259 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v272 = &v259 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v283 = (&v259 - v54);
  v55 = MEMORY[0x1EEE9AC00](v53);
  v57 = &v259 - v56;
  v58 = MEMORY[0x1EEE9AC00](v55);
  v285 = &v259 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v295 = (&v259 - v61);
  v62 = MEMORY[0x1EEE9AC00](v60);
  v297 = &v259 - v63;
  MEMORY[0x1EEE9AC00](v62);
  v296 = &v259 - v64;
  sub_1AACAF184(0, &qword_1ED9B6B90, MEMORY[0x1E6969AE8], MEMORY[0x1E69E6720]);
  v66 = MEMORY[0x1EEE9AC00](v65 - 8);
  v265 = &v259 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  v290 = (&v259 - v68);
  v302 = sub_1AAF8CB94();
  v69 = *(v302 - 8);
  v70 = MEMORY[0x1EEE9AC00](v302);
  v267 = &v259 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = MEMORY[0x1EEE9AC00](v70);
  v291 = &v259 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v294 = &v259 - v75;
  v76 = MEMORY[0x1EEE9AC00](v74);
  v286 = &v259 - v77;
  MEMORY[0x1EEE9AC00](v76);
  v289 = (&v259 - v78);
  v79 = type metadata accessor for AxisMarkValues.Storage.Stride(0);
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v259 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v275 = v5;
  sub_1AACB81D4(v5, v81, type metadata accessor for AxisMarkValues.Storage.Stride);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v84 = *v81;
      if (v81[8] == 1)
      {
        return v84;
      }
    }

    sub_1AADD90F0();
    return MEMORY[0x1E69E7CC0];
  }

  v305 = v35;
  if (EnumCaseMultiPayload)
  {
    v273 = v6;
    sub_1AACAF0D8();
    v118 = *&v81[*(v117 + 48)];
    v119 = *(v117 + 64);
    (*(v69 + 32))(v289, v81, v302);
    sub_1AACB75FC(&v81[v119], v290, &qword_1ED9B6B90, MEMORY[0x1E6969AE8]);
    sub_1AACEC978(v304);
    sub_1AAF8C844();
    v120 = v293;
    sub_1AAF8C844();
    sub_1AACED314(&qword_1ED9B6BA8, MEMORY[0x1E6969530]);
    result = sub_1AAF8F584();
    if (result)
    {
      v284 = v118;
      v280 = v57;
      v279 = v15;
      v121 = v298;
      v122 = *(v298 + 32);
      v123 = v278;
      v122(v278, v39, v35);
      v281 = v69;
      v124 = v282;
      v122((v123 + v282[12]), v120, v35);
      sub_1AACB81D4(v123, v33, sub_1AACD57C4);
      v125 = v124[12];
      v122(v296, v33, v35);
      v126 = *(v121 + 8);
      v126(&v33[v125], v35);
      sub_1AACB812C(v123, v33, sub_1AACD57C4);
      v127 = v296;
      v122(&v296[*(v299 + 36)], &v33[v124[12]], v35);
      v303 = v126;
      v304 = v121 + 8;
      v126(v33, v35);
      v128 = v281 + 16;
      v129 = *(v281 + 16);
      v129(v286, v289, v302);
      sub_1AACB81D4(v127, v297, sub_1AACEC8E4);
      v130 = v265;
      sub_1AACAEB18(v290, v265, &qword_1ED9B6B90, MEMORY[0x1E6969AE8]);
      v131 = v300;
      v132 = v301;
      v133 = v301[6];
      v134 = v133(v130, 1, v300);
      v283 = v128;
      if (v134 == 1)
      {
        (v132[2])(v287, v277, v131);
        if (v133(v130, 1, v131) != 1)
        {
          sub_1AACD1518(v130, &qword_1ED9B6B90, MEMORY[0x1E6969AE8], MEMORY[0x1E69E6720], sub_1AACAF184);
        }
      }

      else
      {
        (v132[4])(v287, v130, v131);
      }

      v135 = v294;
      v129(v294, v286, v302);
      v136 = v129;
      v282 = v129;
      v138 = (v298 + 16);
      v137 = *(v298 + 16);
      v137(v39, v297, v305);
      v278 = v132[2];
      v139 = v300;
      (v278)(v292, v287, v300);
      v140 = v288;
      v141 = v135;
      v142 = v135;
      v143 = v302;
      v136(v288, v141, v302);
      v144 = v273;
      v145 = v140;
      *&v140[*(v273 + 20)] = v284;
      v146 = v144;
      v147 = v145;
      v148 = v305;
      v137(&v145[*(v144 + 24)], v39, v305);
      v149 = &v147[*(v146 + 28)];
      v150 = v292;
      v151 = v278;
      (v278)(v149, v292, v139);
      (v282)(v291, v142, v143);
      v152 = v293;
      v283 = v137;
      v282 = v138;
      v137(v293, v39, v148);
      v153 = v276;
      (v151)(v276, v150, v139);
      type metadata accessor for CalendarBinningImpl(0);
      swift_allocObject();
      v154 = sub_1AACE7AF4(v291, v284, v152, v153);
      v155 = v301[1];
      ++v301;
      v155(v150, v139);
      v303(v39, v148);
      v156 = v281 + 8;
      v157 = v294;
      v294 = *(v281 + 8);
      (v294)(v157, v302);
      v158 = v288;
      *&v288[*(v273 + 32)] = v154;
      sub_1AACB81D4(v158, v279, type metadata accessor for CalendarBinningUnit);
      v159 = v295;
      sub_1AACB81D4(v297, v295, sub_1AACEC8E4);
      v160 = sub_1AACEE9E4(v159);
      v161 = sub_1AACEE9E4(v159);
      v162 = sub_1AACEE9E4(v159 + *(v299 + 36));
      sub_1AACE8E98(v161, v285);
      result = sub_1AACE8E98(v162, v280);
      v163 = v162 - v161;
      if (!__OFSUB__(v162, v161))
      {
        v164 = v163 + 1;
        if (!__OFADD__(v163, 1))
        {
          result = sub_1AAF8CA14();
          v165 = v283;
          if (result)
          {
            v166 = __OFSUB__(v164--, 1);
            if (v166)
            {
              goto LABEL_76;
            }
          }

          v167 = v280;
          v168 = sub_1AAF8CA14();
          sub_1AACB767C(v167, sub_1AACEC8E4);
          sub_1AACB767C(v285, sub_1AACEC8E4);
          if (v168)
          {
            v166 = __OFSUB__(v164--, 1);
            v169 = v302;
            v170 = v274;
            if (!v166)
            {
              goto LABEL_31;
            }

            __break(1u);
          }

          v169 = v302;
          v170 = v274;
LABEL_31:
          sub_1AACB767C(v295, sub_1AACEC8E4);
          sub_1AACB767C(v288, type metadata accessor for CalendarBinningUnit);
          v155(v287, v300);
          sub_1AACB767C(v297, sub_1AACEC8E4);
          v171 = v169;
          v172 = v294;
          (v294)(v286, v171);
          sub_1AACE99D0();
          v173 = v156;
          v175 = *(v174 + 48);
          v176 = *(v174 + 64);
          sub_1AACB812C(v279, v170, type metadata accessor for CalendarBinningUnit);
          *(v170 + v175) = v160;
          *(v170 + v176) = v164;
          type metadata accessor for DateBins.Storage(0);
          swift_storeEnumTagMultiPayload();
          v177 = DateBins.thresholds.getter();
          v178 = type metadata accessor for AxisMarkValues.Storage(0);
          MEMORY[0x1EEE9AC00](v178);
          *(&v259 - 32) = v179 & 1;
          *(&v259 - 3) = v296;
          *(&v259 - 16) = v180 & 1;
          v181 = sub_1AACE9C1C(sub_1AACE9F14, (&v259 - 6), v177);
          v182 = v170;
          v183 = *(v181 + 16);
          if (v183)
          {
            v281 = v173;
            v306 = MEMORY[0x1E69E7CC0];
            sub_1AACEF664(0, v183, 0);
            v84 = v306;
            v184 = (*(v298 + 80) + 32) & ~*(v298 + 80);
            v301 = v181;
            v185 = v181 + v184;
            v186 = *(v298 + 72);
            do
            {
              v187 = v305;
              v165(v39, v185, v305);
              sub_1AAF8C854();
              v189 = v188;
              v303(v39, v187);
              v306 = v84;
              v191 = *(v84 + 16);
              v190 = *(v84 + 24);
              if (v191 >= v190 >> 1)
              {
                sub_1AACEF664((v190 > 1), v191 + 1, 1);
                v84 = v306;
              }

              *(v84 + 16) = v191 + 1;
              *(v84 + 8 * v191 + 32) = v189;
              v185 += v186;
              --v183;
            }

            while (v183);

            sub_1AACB767C(v274, type metadata accessor for DateBins);
            sub_1AACD1518(v290, &qword_1ED9B6B90, MEMORY[0x1E6969AE8], MEMORY[0x1E69E6720], sub_1AACAF184);
            (v294)(v289, v302);
          }

          else
          {

            sub_1AACB767C(v182, type metadata accessor for DateBins);
            sub_1AACD1518(v290, &qword_1ED9B6B90, MEMORY[0x1E6969AE8], MEMORY[0x1E69E6720], sub_1AACAF184);
            v172(v289, v302);
            v84 = MEMORY[0x1E69E7CC0];
          }

          v192 = v296;
          goto LABEL_68;
        }

LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_72;
  }

  v83 = *v81;
  if (v81[8])
  {
    v83 = 4;
  }

  v84 = MEMORY[0x1E69E7CC0];
  if (v83 < 1)
  {
    return v84;
  }

  v296 = v83;
  v297 = v33;
  v273 = v6;
  v281 = v69;
  sub_1AACEC978(v304);
  sub_1AAF8C844();
  v85 = v293;
  sub_1AAF8C844();
  v86 = v35;
  v290 = sub_1AACED314(&qword_1ED9B6BA8, MEMORY[0x1E6969530]);
  result = sub_1AAF8F584();
  if ((result & 1) == 0)
  {
    goto LABEL_73;
  }

  v88 = v298;
  v89 = *(v298 + 32);
  v90 = v278;
  v89(v278, v39, v86);
  v91 = v282;
  v89((v90 + v282[12]), v85, v86);
  v92 = v297;
  sub_1AACB81D4(v90, v297, sub_1AACD57C4);
  v304 = v91[12];
  v93 = v283;
  v89(v283, v92, v86);
  v94 = *(v88 + 8);
  v94(&v92[v304], v86);
  sub_1AACB812C(v90, v92, sub_1AACD57C4);
  v95 = v93 + *(v299 + 36);
  v96 = &v92[v282[12]];
  v295 = v89;
  v89(v95, v96, v86);
  v303 = v94;
  v304 = v88 + 8;
  v94(v92, v86);
  v97 = v93;
  v98 = v272;
  sub_1AACB81D4(v97, v272, sub_1AACEC8E4);
  if ((v263 & 1) == 0 && v260 > 0.0)
  {
    sub_1AAF8CA24();
    v99 = v305;
    result = sub_1AAF8F584();
    if ((result & 1) == 0)
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v100 = v278;
    (*(v298 + 16))(v278, v98, v99);
    sub_1AACB767C(v98, sub_1AACEC8E4);
    v101 = v282;
    v102 = v295;
    (v295)(v100 + v282[12], v39, v99);
    v103 = v102;
    v104 = v297;
    sub_1AACB81D4(v100, v297, sub_1AACD57C4);
    v105 = v101[12];
    v103(v98, v104, v99);
    v106 = &v104[v105];
    v107 = v303;
    v303(v106, v99);
    sub_1AACB812C(v100, v104, sub_1AACD57C4);
    (v295)(v98 + *(v299 + 36), &v104[v101[12]], v99);
    v107(v104, v99);
  }

  v108 = v264;
  sub_1AACB81D4(v98, v264, sub_1AACEC8E4);
  v109 = type metadata accessor for AxisMarkValues.Storage(0);
  v110 = *(v275 + *(v109 + 20));
  v111 = *(v275 + *(v109 + 24));
  result = sub_1AADDFFE8(v108, v277);
  v112 = result;
  v113 = *(result + 16);
  LODWORD(v287) = v111;
  LODWORD(v286) = v110;
  if (v113 == 1)
  {
    v285 = 0;
    v114 = result + ((*(v261 + 80) + 32) & ~*(v261 + 80));
    v115 = v281;
    v116 = v273;
    goto LABEL_51;
  }

  if (!v113)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  MEMORY[0x1EEE9AC00](result);
  *(&v259 - 4) = v108;
  LODWORD(v297) = v110 & 1;
  *(&v259 - 24) = v110 & 1;
  LODWORD(v295) = v111 & 1;
  *(&v259 - 23) = v111 & 1;
  *(&v259 - 2) = v296;
  v193 = v112;
  v194 = sub_1AADE595C(sub_1AADD996C, (&v259 - 6), v112);
  v285 = 0;
  v195 = v194;
  v196 = *(v194 + 16);
  v197 = MEMORY[0x1E69E7CC0];
  if (v196)
  {
    v290 = v113;
    v306 = MEMORY[0x1E69E7CC0];
    sub_1AAD214F4(0, v196, 0);
    v197 = v306;
    v198 = *(v306 + 16);
    v199 = v195;
    v200 = (v195 + 40);
    do
    {
      v202 = *v200;
      v200 += 2;
      v201 = v202;
      v306 = v197;
      v203 = *(v197 + 24);
      if (v198 >= v203 >> 1)
      {
        sub_1AAD214F4((v203 > 1), v198 + 1, 1);
        v197 = v306;
      }

      *(v197 + 16) = v198 + 1;
      *(v197 + 8 * v198++ + 32) = v201;
      --v196;
    }

    while (v196);
    v108 = v264;
    v113 = v290;
    v195 = v199;
  }

  v204 = sub_1AADE6A18(v197);
  v206 = v205;

  if (v206)
  {
    goto LABEL_82;
  }

  MEMORY[0x1EEE9AC00](result);
  *(&v259 - 6) = v195;
  *(&v259 - 5) = v204;
  *(&v259 - 4) = v193;
  *(&v259 - 3) = v108;
  *(&v259 - 16) = v297;
  *(&v259 - 15) = v295;
  *(&v259 - 1) = v296;
  result = sub_1AADE7340(sub_1AADD9998, (&v259 - 8), 0, v113);
  if ((v207 & 1) == 0)
  {
    v208 = result;

    v115 = v281;
    v116 = v273;
    if ((v208 & 0x8000000000000000) != 0)
    {
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    if (v208 >= *(v193 + 16))
    {
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v114 = v193 + ((*(v261 + 80) + 32) & ~*(v261 + 80)) + *(v261 + 72) * v208;
LABEL_51:
    v290 = type metadata accessor for CalendarBinningUnit;
    v209 = v270;
    sub_1AACB81D4(v114, v270, type metadata accessor for CalendarBinningUnit);

    sub_1AACB767C(v108, sub_1AACEC8E4);
    v210 = *(v115 + 16);
    v211 = v267;
    v212 = v302;
    v210(v267, v209, v302);
    v213 = *(v209 + *(v116 + 20));
    v295 = v210;
    v296 = v213;
    v289 = sub_1AACEC8E4;
    v214 = v280;
    sub_1AACB81D4(v283, v280, sub_1AACEC8E4);
    v215 = v301[2];
    v216 = v268;
    v215(v268, v277, v300);
    v288 = v215;
    v210(v294, v211, v212);
    v297 = *(v298 + 16);
    (v297)(v39, v214, v305);
    v217 = v300;
    v215(v292, v216, v300);
    v218 = v284;
    v219 = v294;
    v220 = v302;
    (v295)(v284, v294, v302);
    v221 = v273;
    *(v218 + *(v273 + 20)) = v296;
    v222 = v218 + *(v221 + 24);
    v223 = v305;
    (v297)(v222, v39, v305);
    v224 = v284 + *(v221 + 28);
    v225 = v292;
    v226 = v217;
    v227 = v288;
    (v288)(v224, v292, v226);
    (v295)(v291, v219, v220);
    v228 = v293;
    (v297)(v293, v39, v223);
    v229 = v276;
    v230 = v300;
    v227(v276, v225, v300);
    type metadata accessor for CalendarBinningImpl(0);
    swift_allocObject();
    v231 = sub_1AACE7AF4(v291, v296, v228, v229);
    v232 = v301[1];
    ++v301;
    v296 = v232;
    (v232)(v225, v230);
    v233 = v281;
    v303(v39, v305);
    v295 = *(v233 + 8);
    (v295)(v294, v302);
    v234 = v284;
    *(v284 + *(v273 + 32)) = v231;
    sub_1AACB81D4(v234, v269, v290);
    v235 = v262;
    sub_1AACB81D4(v280, v262, v289);
    v294 = sub_1AACEE9E4(v235);
    v236 = sub_1AACEE9E4(v235);
    v237 = sub_1AACEE9E4(v235 + *(v299 + 36));
    sub_1AACE8E98(v236, v279);
    result = sub_1AACE8E98(v237, v271);
    v238 = v237 - v236;
    if (!__OFSUB__(v237, v236))
    {
      v239 = v238 + 1;
      if (!__OFADD__(v238, 1))
      {
        result = sub_1AAF8CA14();
        v240 = v297;
        if ((result & 1) == 0 || (v166 = __OFSUB__(v239, 1), --v239, !v166))
        {
          v241 = v271;
          v242 = sub_1AAF8CA14();
          sub_1AACB767C(v241, sub_1AACEC8E4);
          sub_1AACB767C(v279, sub_1AACEC8E4);
          if (v242)
          {
            v166 = __OFSUB__(v239--, 1);
            v243 = v266;
            if (!v166)
            {
              goto LABEL_60;
            }

            __break(1u);
          }

          v243 = v266;
LABEL_60:
          sub_1AACB767C(v235, sub_1AACEC8E4);
          sub_1AACB767C(v284, type metadata accessor for CalendarBinningUnit);
          (v296)(v268, v300);
          sub_1AACB767C(v280, sub_1AACEC8E4);
          (v295)(v267, v302);
          sub_1AACE99D0();
          v245 = *(v244 + 48);
          v246 = *(v244 + 64);
          sub_1AACB812C(v269, v243, type metadata accessor for CalendarBinningUnit);
          *(v243 + v245) = v294;
          *(v243 + v246) = v239;
          type metadata accessor for DateBins.Storage(0);
          swift_storeEnumTagMultiPayload();
          v247 = DateBins.thresholds.getter();
          MEMORY[0x1EEE9AC00](v247);
          *(&v259 - 32) = v286 & 1;
          *(&v259 - 3) = v283;
          *(&v259 - 16) = v287 & 1;
          v249 = sub_1AACE9C1C(sub_1AACE9EEC, (&v259 - 6), v248);
          v250 = *(v249 + 16);
          if (v250)
          {
            v306 = v84;
            sub_1AACEF664(0, v250, 0);
            v84 = v306;
            v251 = (*(v298 + 80) + 32) & ~*(v298 + 80);
            v302 = v249;
            v252 = v249 + v251;
            v253 = *(v298 + 72);
            do
            {
              v254 = v305;
              (v240)(v39, v252, v305);
              sub_1AAF8C854();
              v256 = v255;
              v303(v39, v254);
              v306 = v84;
              v258 = *(v84 + 16);
              v257 = *(v84 + 24);
              if (v258 >= v257 >> 1)
              {
                sub_1AACEF664((v257 > 1), v258 + 1, 1);
                v84 = v306;
              }

              *(v84 + 16) = v258 + 1;
              *(v84 + 8 * v258 + 32) = v256;
              v252 += v253;
              --v250;
            }

            while (v250);

            sub_1AACB767C(v266, type metadata accessor for DateBins);
            sub_1AACB767C(v270, type metadata accessor for CalendarBinningUnit);
            sub_1AACB767C(v272, sub_1AACEC8E4);
          }

          else
          {

            sub_1AACB767C(v243, type metadata accessor for DateBins);
            sub_1AACB767C(v270, type metadata accessor for CalendarBinningUnit);
            sub_1AACB767C(v272, sub_1AACEC8E4);
            v84 = MEMORY[0x1E69E7CC0];
          }

          v192 = v283;
LABEL_68:
          sub_1AACB767C(v192, sub_1AACEC8E4);
          return v84;
        }

        goto LABEL_80;
      }

      goto LABEL_75;
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

LABEL_83:
  __break(1u);
  return result;
}

uint64_t sub_1AACE7A94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AACE59E8(**(a1 + 8), **(a1 + 16), *(*(a1 + 16) + 8), *(a1 + 24));
  *a2 = result;
  return result;
}

uint64_t sub_1AACE7AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v89 = a3;
  v8 = sub_1AAF8CAB4();
  v77 = *(v8 - 8);
  v78 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v75 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v74 - v11;
  v12 = sub_1AAF8CB94();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v81 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACECC0C(0, &qword_1ED9B1678, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v74 - v16;
  v80 = sub_1AAF8CA64();
  v18 = *(v80 - 8);
  v19 = MEMORY[0x1EEE9AC00](v80);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v74 - v22;
  v84 = v13;
  v85 = v12;
  v79 = *(v13 + 16);
  v79(v4 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_component, a1, v12);
  v87 = a2;
  *(v4 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_stride) = a2;
  v83 = a4;
  v24 = sub_1AACECCD4(a4);
  v88 = v4;
  *(v4 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_cache) = v24;

  v86 = a1;
  sub_1AACED38C(a1, v89, v17);

  v25 = sub_1AAF8C6F4();
  v26 = *(v25 - 8);
  v27 = (*(v26 + 48))(v17, 1, v25);
  v28 = (v18 + 32);
  v82 = v18;
  if (v27 == 1)
  {
    sub_1AADE4234(v17);
    v29 = *(v18 + 2);
    v18 += 16;
    v30 = v89;
    v31 = v80;
    v29(v23, v89, v80);
    v32 = *(v18 + 2);
  }

  else
  {
    sub_1AAF8C6E4();
    (*(v26 + 8))(v17, v25);
    v32 = *v28;
    v33 = v21;
    v31 = v80;
    (*v28)(v23, v33, v80);
    v30 = v89;
  }

  v34 = v88;
  v32((v88 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_anchor), v23, v31);
  v35 = v81;
  v37 = v85;
  v36 = v86;
  v79(v81, v86, v85);
  v38 = v84;
  v39 = (*(v84 + 88))(v35, v37);
  if (v39 != *MEMORY[0x1E6969A68])
  {
    if (v39 != *MEMORY[0x1E6969A78])
    {
      if (v39 == *MEMORY[0x1E6969A48])
      {
        v56 = sub_1AAF8CBA4();
        (*(*(v56 - 8) + 8))(v83, v56);
        (*(v82 + 1))(v30, v31);
        v42 = (*(v38 + 8))(v36, v37);
        v49 = v34 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_fixedTimeInterval;
        *(v34 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_fixedTimeInterval) = 0;
        v50 = 1;
        v43 = 79200.0;
        v44 = 93600.0;
        goto LABEL_17;
      }

      v57 = v82;
      if (v39 == *MEMORY[0x1E6969A58])
      {
        v58 = sub_1AAF8CBA4();
        (*(*(v58 - 8) + 8))(v83, v58);
        v59 = *(v57 + 1);
        v35 = v57 + 8;
        v59(v30, v31);
        v42 = (*(v38 + 8))(v36, v37);
        v50 = 0;
        v51 = v87;
        v60 = v87;
        v61 = 3600.0;
      }

      else
      {
        if (v39 != *MEMORY[0x1E6969A88])
        {
          if (v39 == *MEMORY[0x1E6969A98])
          {
            v66 = sub_1AAF8CBA4();
            (*(*(v66 - 8) + 8))(v83, v66);
            v67 = *(v57 + 1);
            v35 = v57 + 8;
            v67(v30, v31);
            v42 = (*(v38 + 8))(v36, v37);
            v50 = 0;
            v51 = v87;
            v49 = v34 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_fixedTimeInterval;
            *(v34 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_fixedTimeInterval) = v87;
            v44 = 1.0;
            v43 = 1.0;
            goto LABEL_18;
          }

          if (v39 == *MEMORY[0x1E6969A10])
          {
            v69 = sub_1AAF8CBA4();
            (*(*(v69 - 8) + 8))(v83, v69);
            v70 = *(v57 + 1);
            v35 = v57 + 8;
            v70(v30, v31);
            v42 = (*(v38 + 8))(v36, v37);
            v49 = v34 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_fixedTimeInterval;
            *(v34 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_fixedTimeInterval) = 0;
            v50 = 1;
            v44 = 604800.0;
            v43 = 604800.0;
            goto LABEL_17;
          }

          result = sub_1AAF902C4();
          __break(1u);
          return result;
        }

        v62 = sub_1AAF8CBA4();
        (*(*(v62 - 8) + 8))(v83, v62);
        v63 = *(v57 + 1);
        v35 = v57 + 8;
        v63(v30, v31);
        v42 = (*(v38 + 8))(v36, v37);
        v50 = 0;
        v51 = v87;
        v60 = v87;
        v61 = 60.0;
      }

      v44 = v61;
      v64 = v60 * v61;
      v49 = v34 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_fixedTimeInterval;
      *(v34 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_fixedTimeInterval) = v64;
      v43 = v44;
      goto LABEL_18;
    }

    v18 = v75;
    v47 = v83;
    sub_1AAF8CAC4();
    v48 = sub_1AAF8CBA4();
    (*(*(v48 - 8) + 8))(v47, v48);
    (*(v82 + 1))(v30, v31);
    (*(v38 + 8))(v36, v37);
    v35 = v77;
    v36 = v78;
    v42 = (*(v77 + 11))(v18, v78);
    v43 = 2412000.0;
    v44 = 2685600.0;
    if (v42 == *MEMORY[0x1E6969868] || v42 == *MEMORY[0x1E6969850])
    {
      goto LABEL_16;
    }

    if (v42 == *MEMORY[0x1E6969820])
    {
      goto LABEL_14;
    }

    v43 = 424800.0;
    v44 = 2599200.0;
    if (v42 == *MEMORY[0x1E69697F8] || v42 == *MEMORY[0x1E69697D0] || v42 == *MEMORY[0x1E69697C8])
    {
      goto LABEL_16;
    }

    if (v42 == *MEMORY[0x1E6969800])
    {
LABEL_14:
      v43 = 2498400.0;
      v46 = 0x4143D49000000000;
      goto LABEL_15;
    }

    if (v42 == *MEMORY[0x1E6969830])
    {
      goto LABEL_37;
    }

    if (v42 == *MEMORY[0x1E6969808])
    {
      v71 = 0xB87000000000;
    }

    else
    {
      v43 = 2498400.0;
      v44 = 2599200.0;
      if (v42 == *MEMORY[0x1E6969828] || v42 == *MEMORY[0x1E69697A8])
      {
        goto LABEL_16;
      }

      if (v42 == *MEMORY[0x1E6969860])
      {
LABEL_37:
        v65 = 0x414266F000000000;
LABEL_49:
        v43 = *&v65;
        v46 = 0x41447D5000000000;
        goto LABEL_15;
      }

      if (v42 != *MEMORY[0x1E6969848])
      {
        goto LABEL_65;
      }

      v71 = 0xFB000000000;
    }

    v65 = v71 & 0xFFFFFFFFFFFFLL | 0x4143000000000000;
    goto LABEL_49;
  }

  v18 = v76;
  v40 = v83;
  sub_1AAF8CAC4();
  v41 = sub_1AAF8CBA4();
  (*(*(v41 - 8) + 8))(v40, v41);
  (*(v82 + 1))(v30, v31);
  (*(v38 + 8))(v36, v37);
  v35 = v77;
  v36 = v78;
  v42 = (*(v77 + 11))(v18, v78);
  v43 = 31532400.0;
  v44 = 31622400.0;
  if (v42 == *MEMORY[0x1E6969868] || v42 == *MEMORY[0x1E6969850])
  {
    goto LABEL_16;
  }

  if (v42 == *MEMORY[0x1E6969820])
  {
    v45 = 0x2A4F00000000;
LABEL_9:
    *&v43 = v45 & 0xFFFFFFFFFFFFLL | 0x417D000000000000;
    v46 = 0x417FB91800000000;
    goto LABEL_15;
  }

  v43 = 31532400.0;
  v44 = 31622400.0;
  if (v42 == *MEMORY[0x1E69697F8] || v42 == *MEMORY[0x1E69697D0] || v42 == *MEMORY[0x1E69697C8])
  {
    goto LABEL_16;
  }

  if (v42 == *MEMORY[0x1E6969800])
  {
    v45 = 0x153700000000;
    goto LABEL_9;
  }

  v43 = 31532400.0;
  v44 = 31622400.0;
  if (v42 == *MEMORY[0x1E6969830] || v42 == *MEMORY[0x1E6969808])
  {
    goto LABEL_16;
  }

  if (v42 == *MEMORY[0x1E6969828])
  {
    v68 = 0x161800000000;
LABEL_52:
    *&v43 = v68 & 0xFFFFFFFFFFFFLL | 0x417D000000000000;
    v46 = 0x417D412900000000;
    goto LABEL_15;
  }

  if (v42 == *MEMORY[0x1E69697A8])
  {
    goto LABEL_51;
  }

  v43 = 31532400.0;
  v44 = 31622400.0;
  if (v42 == *MEMORY[0x1E6969860] || v42 == *MEMORY[0x1E6969848] || v42 == *MEMORY[0x1E69697B8])
  {
    goto LABEL_16;
  }

  if (v42 == *MEMORY[0x1E69697B0])
  {
LABEL_51:
    v68 = 0x2A4F00000000;
    goto LABEL_52;
  }

  if (v42 != *MEMORY[0x1E69697C0])
  {
    v73 = *(v35 + 1);
    v35 += 8;
    v42 = v73(v18, v36, 31532400.0, 31622400.0);
    v45 = 0x161800000000;
    goto LABEL_9;
  }

  v43 = 30582000.0;
  v46 = 0x417D556000000000;
LABEL_15:
  v44 = *&v46;
LABEL_16:
  while (1)
  {
    v49 = v34 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_fixedTimeInterval;
    *(v34 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_fixedTimeInterval) = 0;
    v50 = 1;
LABEL_17:
    v51 = v87;
LABEL_18:
    *(v49 + 8) = v50;
    v52 = v43 * v51;
    v53 = v44 * v51;
    if (v52 <= v53)
    {
      break;
    }

    __break(1u);
LABEL_65:
    if (v42 == *MEMORY[0x1E69697B8])
    {
      goto LABEL_37;
    }

    v43 = 2498400.0;
    v44 = 2599200.0;
    if (v42 != *MEMORY[0x1E69697B0] && v42 != *MEMORY[0x1E69697C0])
    {
      v72 = *(v35 + 1);
      v35 += 8;
      v42 = v72(v18, v36, 2498400.0, 2599200.0);
      goto LABEL_37;
    }
  }

  v54 = (v34 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_durationBounds);
  *v54 = v52;
  v54[1] = v53;
  return v34;
}

void sub_1AACE8880(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AAF8CBA4();
    v7 = type metadata accessor for CalendarCache(255);
    v8 = sub_1AACECACC(&qword_1ED9B1650, MEMORY[0x1E6969AE8]);
    v9 = a3(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1AACE8934(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_1AAF8CBA4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_1AADB31F8(&qword_1ED9B6B98, MEMORY[0x1E6969AE8]);
      v15 = sub_1AAF8F5F4();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

void sub_1AACE8B14()
{
  if (!qword_1ED9B1660)
  {
    sub_1AAF8CB94();
    sub_1AAF8CA64();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED9B1660);
    }
  }
}

unint64_t sub_1AACE8B84(uint64_t a1)
{
  sub_1AAF90694();
  sub_1AACED800(v4);
  v2 = sub_1AAF906F4();

  return sub_1AACEDDAC(a1, v2);
}

uint64_t sub_1AACE8BF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AACE8C58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AACE8CC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1AACE8D28()
{
  if (!qword_1ED9B1588[0])
  {
    type metadata accessor for CalendarCache.Key(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1ED9B1588);
    }
  }
}

uint64_t sub_1AACE8D8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AACE8DEC()
{
  if (!qword_1ED9B1290)
  {
    type metadata accessor for CalendarCache.Key(255);
    type metadata accessor for CalendarCache.Value(255);
    sub_1AAD6CACC(&qword_1ED9B1640, type metadata accessor for CalendarCache.Key);
    v0 = type metadata accessor for LRUCache.Element();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B1290);
    }
  }
}

uint64_t sub_1AACE8E98@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v104 = a2;
  v106 = type metadata accessor for CalendarCache.Key(0);
  MEMORY[0x1EEE9AC00](v106);
  v6 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CalendarCache.Value(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v99 = &v82 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v101 = (&v82 - v14);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v82 - v15);
  sub_1AACECC0C(0, &qword_1ED9B2738, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v98 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v100 = &v82 - v20;
  sub_1AACD57C4();
  v103 = v21;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v102 = &v82 - v25;
  v26 = sub_1AAF8CA64();
  v107 = *(v26 - 8);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v97 = &v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v105 = &v82 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v82 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v82 - v34;
  if ((*(v3 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_fixedTimeInterval + 8) & 1) == 0)
  {
    v10 = OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_anchor;
    v37 = v3 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_anchor;
    sub_1AAF8C854();
    if (!__OFADD__(a1, 1))
    {
      sub_1AAF8C854();
      sub_1AAF8C844();
      sub_1AAF8C844();
      sub_1AACECACC(&qword_1ED9B6BA8, MEMORY[0x1E6969530]);
      v37 = v26;
      if (sub_1AAF8F584())
      {
        v73 = v107;
        v74 = v107[4];
        v75 = v102;
        v74(v102, v35, v26);
        v76 = v103;
        v74((v75 + *(v103 + 48)), v33, v26);
        sub_1AACEDD44(v75, v24, sub_1AACD57C4);
        v77 = *(v76 + 48);
        v78 = v104;
        v74(v104, v24, v26);
        v79 = v73[1];
        v79(&v24[v77], v26);
        sub_1AACD582C(v75, v24, sub_1AACD57C4);
        v80 = *(v76 + 48);
        sub_1AACEC8E4();
        v74(&v78[*(v81 + 36)], &v24[v80], v26);
        return (v79)(v24, v26);
      }

      goto LABEL_16;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v96 = v7;
  v36 = *(v3 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_stride);
  v37 = a1 * v36;
  if ((a1 * v36) >> 64 != (a1 * v36) >> 63)
  {
    __break(1u);
    goto LABEL_15;
  }

  v93 = *(v3 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_stride);
  v94 = a1;
  v92 = v10;
  v83 = v24;
  v95 = v16;
  v38 = *(v3 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_cache);
  v39 = v3 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_component;
  v40 = v3 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_anchor;
  sub_1AADDFE60();
  v42 = *(v41 + 48);
  v89 = v41;
  v43 = *(v41 + 64);
  v44 = sub_1AAF8CB94();
  v45 = *(v44 - 8);
  v46 = *(v45 + 16);
  v88 = v44;
  v87 = v46;
  v86 = v45 + 16;
  (v46)(v6, v39);
  *&v6[v42] = v37;
  v10 = v107;
  v47 = v107[2];
  v85 = v107 + 2;
  v84 = v47;
  v47(&v6[v43], v40, v26);
  v48 = swift_storeEnumTagMultiPayload();
  MEMORY[0x1EEE9AC00](v48);
  *(&v82 - 4) = v38;
  *(&v82 - 3) = v39;
  v90 = v39;
  *(&v82 - 2) = v37;
  *(&v82 - 1) = v40;
  v49 = v40;
  swift_beginAccess();
  v91 = v38;
  v50 = v95;
  sub_1AACED630(v6, sub_1AADE42C0, v95);
  swift_endAccess();
  sub_1AACE8D8C(v6, type metadata accessor for CalendarCache.Key);
  v37 = v101;
  sub_1AACEDD44(v50, v101, type metadata accessor for CalendarCache.Value);
  if (swift_getEnumCaseMultiPayload())
  {
LABEL_20:
    sub_1AACE8D8C(v37, type metadata accessor for CalendarCache.Value);
    __break(1u);
    goto LABEL_21;
  }

  sub_1AACE8D8C(v50, type metadata accessor for CalendarCache.Value);
  v51 = v37;
  v37 = v100;
  sub_1AADE42E4(v51, v100, &qword_1ED9B2738, MEMORY[0x1E6969530]);
  v52 = (v10 + 48);
  v53 = *(v10 + 6);
  if (v53(v37, 1, v26) == 1)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v10 = *(v10 + 4);
  (v10)(v105, v37, v26);
  v54 = v94 + 1;
  if (__OFADD__(v94, 1))
  {
    goto LABEL_17;
  }

  v37 = v54 * v93;
  if ((v54 * v93) >> 64 != (v54 * v93) >> 63)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v95 = v53;
  v100 = v52;
  v101 = v10;
  v55 = *(v89 + 48);
  v56 = *(v89 + 64);
  v57 = v90;
  v87(v6, v90, v88);
  *&v6[v55] = v37;
  v84(&v6[v56], v49, v26);
  v58 = swift_storeEnumTagMultiPayload();
  MEMORY[0x1EEE9AC00](v58);
  *(&v82 - 4) = v91;
  *(&v82 - 3) = v57;
  *(&v82 - 2) = v37;
  *(&v82 - 1) = v49;
  swift_beginAccess();
  v59 = v99;
  sub_1AACED630(v6, sub_1AADE43D8, v99);
  swift_endAccess();
  sub_1AACE8D8C(v6, type metadata accessor for CalendarCache.Key);
  v10 = v92;
  sub_1AACEDD44(v59, v92, type metadata accessor for CalendarCache.Value);
  if (swift_getEnumCaseMultiPayload())
  {
LABEL_22:
    result = sub_1AACE8D8C(v10, type metadata accessor for CalendarCache.Value);
    __break(1u);
    goto LABEL_23;
  }

  sub_1AACE8D8C(v59, type metadata accessor for CalendarCache.Value);
  v60 = v10;
  v61 = v98;
  sub_1AADE42E4(v60, v98, &qword_1ED9B2738, MEMORY[0x1E6969530]);
  result = (v95)(v61, 1, v26);
  v63 = v104;
  v64 = v83;
  v65 = v97;
  v66 = v101;
  if (result != 1)
  {
    v101(v97, v61, v26);
    sub_1AACECACC(&qword_1ED9B6BA8, MEMORY[0x1E6969530]);
    v10 = v105;
    v37 = v26;
    if (sub_1AAF8F584())
    {
      v67 = v102;
      v66(v102, v10, v26);
      v68 = v103;
      v66((v67 + *(v103 + 48)), v65, v26);
      sub_1AACEDD44(v67, v64, sub_1AACD57C4);
      v69 = *(v68 + 48);
      v66(v63, v64, v26);
      v70 = v107[1];
      v70(v64 + v69, v26);
      sub_1AACD582C(v67, v64, sub_1AACD57C4);
      v71 = *(v68 + 48);
      sub_1AACEC8E4();
      v66(&v63[*(v72 + 36)], (v64 + v71), v26);
      return (v70)(v64, v26);
    }

    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
  return result;
}

void sub_1AACE99D0()
{
  if (!qword_1ED9B3BD8[0])
  {
    type metadata accessor for CalendarBinningUnit(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, qword_1ED9B3BD8);
    }
  }
}

void sub_1AACE9A60()
{
  if (!qword_1ED9B2620[0])
  {
    sub_1AAF8CA64();
    sub_1AAD6CACC(&qword_1ED9B6BA8, MEMORY[0x1E6969530]);
    v0 = type metadata accessor for ChartBinRange();
    if (!v1)
    {
      atomic_store(v0, qword_1ED9B2620);
    }
  }
}

void sub_1AACE9AF4()
{
  if (!qword_1ED9B11E0)
  {
    type metadata accessor for DateBins(255);
    sub_1AACECB14(&qword_1ED9B12A0, type metadata accessor for DateBins);
    v0 = sub_1AAF8F4D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B11E0);
    }
  }
}

uint64_t sub_1AACE9B88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AACE9C1C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = sub_1AAF8CA64();
  v7 = MEMORY[0x1EEE9AC00](v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v7);
  v38 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = MEMORY[0x1E69E7CC0];
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v10 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v10;
      v18 = a1;
      v19 = v38;
      (*(v10 + 16))(v38, v16, v39);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v32)(v38, v39);
        v27 = v37;

        return v27;
      }

      if (v21)
      {
        v22 = *v33;
        (*v33)(v36, v38, v39);
        v23 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1AACEA040(0, *(v23 + 16) + 1, 1);
          v23 = v40;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1AACEA040(v25 > 1, v26 + 1, 1);
          v23 = v40;
        }

        *(v23 + 16) = v26 + 1;
        v37 = v23;
        result = (v22)(v23 + v13 + v26 * v14, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v38, v39);
        a3 = v15;
      }

      ++v12;
      v10 = v17;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC0];
LABEL_14:

    return v37;
  }

  return result;
}

uint64_t sub_1AACE9F30(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a4)
    {
      v5 = 1;
      return v5 & 1;
    }

LABEL_6:
    sub_1AAF8CA64();
    sub_1AACEC8E4();
    sub_1AACED314(&qword_1ED9B6BA8, MEMORY[0x1E6969530]);
    v5 = sub_1AAF8F584();
    return v5 & 1;
  }

  sub_1AAF8CA64();
  sub_1AACED314(&qword_1ED9B6BA8, MEMORY[0x1E6969530]);
  v5 = sub_1AAF8F574();
  if ((v5 & 1) != 0 && (a4 & 1) == 0)
  {
    goto LABEL_6;
  }

  return v5 & 1;
}

size_t sub_1AACEA040(size_t a1, int64_t a2, char a3)
{
  result = sub_1AAD45470(a1, a2, a3, *v3, &qword_1ED9B1E10, MEMORY[0x1E6969530], MEMORY[0x1E6969530]);
  *v3 = result;
  return result;
}

uint64_t sub_1AACEA090()
{
  v1 = OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_component;
  v2 = sub_1AAF8CB94();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_anchor;
  v4 = sub_1AAF8CA64();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

void sub_1AACEA1AC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1AAF8CAA4();
    sub_1AAF8CBA4();
    sub_1AACC9BB0(255, a3, a4, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

uint64_t sub_1AACEA258@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v265 = a2;
  v266 = a3;
  v248 = a4;
  v224 = sub_1AAF8C9D4();
  v223 = *(v224 - 8);
  MEMORY[0x1EEE9AC00](v224);
  v222 = &v222 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = sub_1AAF8C9B4();
  v227 = *(v228 - 8);
  MEMORY[0x1EEE9AC00](v228);
  v226 = &v222 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = sub_1AAF8C944();
  v230 = *(v232 - 8);
  MEMORY[0x1EEE9AC00](v232);
  v229 = &v222 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = sub_1AAF8C954();
  v233 = *(v234 - 8);
  MEMORY[0x1EEE9AC00](v234);
  v231 = &v222 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = sub_1AAF8C914();
  v236 = *(v237 - 8);
  MEMORY[0x1EEE9AC00](v237);
  v235 = &v222 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = sub_1AAF8C994();
  v244 = *(v245 - 8);
  MEMORY[0x1EEE9AC00](v245);
  v243 = &v222 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = sub_1AAF8C974();
  v239 = *(v240 - 8);
  MEMORY[0x1EEE9AC00](v240);
  v238 = &v222 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AAF8C774();
  v251 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v247 = &v222 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v246 = &v222 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v262 = &v222 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v225 = &v222 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v242 = &v222 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v263 = &v222 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v222 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v222 - v28;
  v30 = sub_1AAF8C834();
  MEMORY[0x1EEE9AC00](v30 - 8);
  v264 = &v222 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1AAF8CBC4();
  MEMORY[0x1EEE9AC00](v32 - 8);
  v261 = &v222 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v260 = sub_1AAF8CBA4();
  v258 = *(v260 - 8);
  MEMORY[0x1EEE9AC00](v260);
  v259 = &v222 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1AAF8CAA4();
  v252 = *(v35 - 8);
  v253 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v250 = &v222 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1E69E6720];
  sub_1AACEBDDC(0, &qword_1ED9B2748, MEMORY[0x1E69690E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v40 = &v222 - v39;
  sub_1AACEBDDC(0, &qword_1ED9B2740, MEMORY[0x1E69690F0], v37);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v43 = &v222 - v42;
  v44 = sub_1AAF8CA04();
  v45 = *(v44 - 8);
  v256 = v44;
  v257 = v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v241 = &v222 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v254 = &v222 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v255 = &v222 - v51;
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v222 - v52;
  v267 = a1;

  v54 = sub_1AACEBE40(&v267);
  v55 = v267;
  MEMORY[0x1EEE9AC00](v54);
  v56 = v266;
  *(&v222 - 2) = v266;
  v57 = sub_1AACEFF84(sub_1AACF040C, (&v222 - 4), v55);

  v58 = sub_1AAF8C874();
  v59 = *(*(v58 - 8) + 56);
  v249 = v43;
  v59(v43, 1, 1, v58);
  v60 = sub_1AAF8C864();
  (*(*(v60 - 8) + 56))(v40, 1, 1, v60);
  (*(v252 + 16))(v250, v265, v253);
  v258[2](v259, v56, v260);
  v61 = v261;
  sub_1AAF8CBB4();
  sub_1AAF8C824();
  sub_1AAF8C8A4();
  v62 = 0;
  v261 = *(v57 + 16);
  v63 = v251;
  v265 = v251 + 16;
  v266 = (v251 + 8);
  while (1)
  {
    if (v261 == v62)
    {

      v184 = v238;
      sub_1AAF8C964();
      v185 = v255;
      sub_1AAF8C8C4();
      (*(v239 + 8))(v184, v240);
LABEL_117:
      v187 = v257;
      v188 = *(v257 + 8);
      v189 = v53;
LABEL_118:
      v195 = v256;
      v188(v189, v256);
      goto LABEL_126;
    }

    if (v62 >= *(v57 + 16))
    {
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
      goto LABEL_132;
    }

    v259 = ((*(v63 + 80) + 32) & ~*(v63 + 80));
    v264 = *(v63 + 72);
    v61 = *(v63 + 16);
    v61(v29, &v259[v57 + v264 * v62], v12);
    v64 = sub_1AAF8C734();
    if (v65)
    {
      break;
    }

    if (v64 != 1)
    {
      break;
    }

    v66 = sub_1AAF8C704();
    if (v67)
    {
      break;
    }

    if (v66 != 1)
    {
      break;
    }

    v68 = sub_1AAF8C714();
    if (v69)
    {
      break;
    }

    if (v68)
    {
      break;
    }

    v70 = sub_1AAF8C754();
    if (v71)
    {
      break;
    }

    if (v70)
    {
      break;
    }

    v72 = sub_1AAF8C764();
    if (v73)
    {
      break;
    }

    v74 = v72;
    v75 = *v266;
    (*v266)(v29, v12);
    ++v62;
    if (v74)
    {
      goto LABEL_16;
    }
  }

  v75 = *v266;
  (*v266)(v29, v12);
LABEL_16:
  v76 = sub_1AACF04C0(1uLL, v57);
  v252 = v79 >> 1;
  v253 = v78;
  v80 = (v79 >> 1) - v78;
  v258 = v53;
  v260 = v57;
  v249 = v77;
  v250 = v76;
  if (v79 >> 1 == v78)
  {

    v81 = MEMORY[0x1E69E7CC0];
LABEL_18:
    v82 = *(v81 + 2);
    if (v82)
    {
      v83 = (v81 + 32);
      v84 = v258;
      v85 = v260;
      do
      {
        v86 = v82 == 0;
        if (!v82)
        {
          break;
        }

        v87 = *v83++;
        --v82;
      }

      while (v87 == *(v81 + 4));
    }

    else
    {
      v86 = 1;
      v84 = v258;
      v85 = v260;
    }

    LODWORD(v251) = v86;

    v96 = v259;
    v97 = &v259[v85];
    v98 = -v261;
    v99 = -1;
    while (v98 + v99 != -1)
    {
      if (++v99 >= *(v85 + 16))
      {
        goto LABEL_128;
      }

      v61(v263, v97, v12);
      v100 = sub_1AAF8C704();
      if (v101 & 1) != 0 || v100 != 1 || (v102 = sub_1AAF8C714(), (v103) || v102 || (v104 = sub_1AAF8C754(), (v105) || v104 || (v106 = sub_1AAF8C764(), (v107))
      {
        v75(v263, v12);
LABEL_46:
        v109 = &v96[v85];
        v110 = -v261;
        v111 = -1;
        v112 = v242;
        while (v110 + v111 != -1)
        {
          if (++v111 >= *(v85 + 16))
          {
            goto LABEL_129;
          }

          v61(v112, v109, v12);
          v113 = sub_1AAF8C714();
          if (v114 & 1) != 0 || v113 || (v115 = sub_1AAF8C754(), (v116) || v115 || (v117 = sub_1AAF8C764(), (v118))
          {
            v75(v112, v12);
LABEL_57:
            v120 = v252 - v253;
            if (v252 == v253)
            {
              v121 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              if (v252 <= v253)
              {
                goto LABEL_133;
              }

              v127 = &v249[v253 * v264];
              v121 = MEMORY[0x1E69E7CC0];
              v128 = v225;
              do
              {
                v61(v128, v127, v12);
                v129 = sub_1AAF8C734();
                v131 = v130;
                v75(v128, v12);
                if ((v131 & 1) == 0)
                {
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v121 = sub_1AACF04D8(0, *(v121 + 2) + 1, 1, v121);
                  }

                  v133 = *(v121 + 2);
                  v132 = *(v121 + 3);
                  if (v133 >= v132 >> 1)
                  {
                    v121 = sub_1AACF04D8((v132 > 1), v133 + 1, 1, v121);
                  }

                  *(v121 + 2) = v133 + 1;
                  *&v121[8 * v133 + 32] = v129;
                }

                v127 = &v264[v127];
                --v120;
              }

              while (v120);
            }

            v122 = *(v121 + 2);
            if (v122)
            {
              v123 = (v121 + 32);
              v124 = v253;
              do
              {
                v125 = v122 == 0;
                if (!v122)
                {
                  break;
                }

                v126 = *v123++;
                --v122;
              }

              while (v126 == *(v121 + 4));
            }

            else
            {
              v125 = 1;
              v124 = v253;
            }

            v134 = v252 - v124;
            if (v252 == v124)
            {
              v135 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              if (v252 <= v124)
              {
                goto LABEL_134;
              }

              v143 = &v249[v124 * v264];
              v135 = MEMORY[0x1E69E7CC0];
              do
              {
                v144 = v262;
                v61(v262, v143, v12);
                v145 = sub_1AAF8C704();
                v147 = v146;
                v75(v144, v12);
                if ((v147 & 1) == 0)
                {
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v135 = sub_1AACF04D8(0, *(v135 + 2) + 1, 1, v135);
                  }

                  v149 = *(v135 + 2);
                  v148 = *(v135 + 3);
                  if (v149 >= v148 >> 1)
                  {
                    v135 = sub_1AACF04D8((v148 > 1), v149 + 1, 1, v135);
                  }

                  *(v135 + 2) = v149 + 1;
                  *&v135[8 * v149 + 32] = v145;
                }

                v143 = &v264[v143];
                --v134;
              }

              while (v134);
            }

            v136 = *(v135 + 2);
            if (v136)
            {
              v137 = (v135 + 32);
              v138 = v257;
              v139 = v247;
              v140 = v246;
              do
              {
                v141 = v136 == 0;
                if (!v136)
                {
                  break;
                }

                v142 = *v137++;
                --v136;
              }

              while (v142 == *(v135 + 4));
            }

            else
            {
              v141 = 1;
              v138 = v257;
              v139 = v247;
              v140 = v246;
            }

            if (v251)
            {
              v150 = v125 && v141;
              v151 = v259;
              if (!v150)
              {
                v152 = v243;
                sub_1AAF8C984();
                v153 = v254;
                v154 = v258;
                sub_1AAF8C8D4();
                (*(v244 + 8))(v152, v245);
                v155 = v235;
                sub_1AAF8C904();
                v156 = v255;
                sub_1AAF8C894();
                (*(v236 + 8))(v155, v237);
                v157 = *(v138 + 8);
                v158 = v153;
                v159 = v256;
                v157(v158, v256);
                v157(v154, v159);
                goto LABEL_95;
              }
            }

            else
            {
              v160 = v238;
              sub_1AAF8C964();
              v161 = v241;
              sub_1AAF8C8C4();
              (*(v239 + 8))(v160, v240);
              v162 = v243;
              sub_1AAF8C984();
              v163 = v254;
              sub_1AAF8C8D4();
              (*(v244 + 8))(v162, v245);
              v164 = *(v138 + 8);
              v165 = v256;
              v164(v161, v256);
              v166 = v235;
              sub_1AAF8C904();
              v156 = v255;
              sub_1AAF8C894();
              v167 = v166;
              v154 = v258;
              (*(v236 + 8))(v167, v237);
              v168 = v163;
              v159 = v165;
              v164(v168, v165);
              v164(v154, v165);
              v138 = v257;
              v151 = v259;
LABEL_95:
              (*(v138 + 32))(v154, v156, v159);
              v139 = v247;
              v140 = v246;
            }

            v169 = &v151[v260];
            v170 = -v261;
            v171 = -1;
            while (1)
            {
              if (v170 + v171 == -1)
              {

                v193 = v229;
                sub_1AAF8C934();
                v194 = v231;
                sub_1AAF8C924();
                (*(v230 + 8))(v193, v232);
                v185 = v255;
                v53 = v258;
                sub_1AAF8C8B4();
                swift_unknownObjectRelease();
                (*(v233 + 8))(v194, v234);
                goto LABEL_117;
              }

              if (++v171 >= *(v260 + 16))
              {
                goto LABEL_130;
              }

              v61(v140, v169, v12);
              v172 = sub_1AAF8C754();
              if (v173)
              {
                break;
              }

              if (v172)
              {
                break;
              }

              v174 = sub_1AAF8C764();
              if (v175)
              {
                break;
              }

              v176 = v174;
              v169 = &v264[v169];
              v75(v140, v12);
              if (v176)
              {
                goto LABEL_105;
              }
            }

            v75(v140, v12);
LABEL_105:
            v177 = v260;
            v178 = &v151[v260];
            v179 = -v261;
            v180 = -1;
            while (1)
            {
              if (v179 + v180 == -1)
              {

                v196 = v229;
                sub_1AAF8C934();
                v197 = v231;
                sub_1AAF8C924();
                (*(v230 + 8))(v196, v232);
                v198 = v254;
                v53 = v258;
                sub_1AAF8C8B4();
                (*(v233 + 8))(v197, v234);
                v199 = v226;
                sub_1AAF8C9A4();
                v185 = v255;
                sub_1AAF8C9E4();
                swift_unknownObjectRelease();
                (*(v227 + 8))(v199, v228);
                v195 = v256;
                v187 = v257;
                v200 = *(v257 + 8);
                v200(v198, v256);
                v201 = v53;
                goto LABEL_124;
              }

              if (++v180 >= *(v177 + 16))
              {
                goto LABEL_131;
              }

              v61(v139, v178, v12);
              v181 = sub_1AAF8C764();
              if (v182)
              {
                break;
              }

              v183 = v181;
              v178 = &v264[v178];
              v75(v139, v12);
              if (v183)
              {
                goto LABEL_121;
              }
            }

            v75(v139, v12);
LABEL_121:

            v202 = v229;
            sub_1AAF8C934();
            v203 = v231;
            sub_1AAF8C924();
            (*(v230 + 8))(v202, v232);
            v204 = v241;
            v53 = v258;
            sub_1AAF8C8B4();
            (*(v233 + 8))(v203, v234);
            v205 = v226;
            sub_1AAF8C9A4();
            v206 = v254;
            sub_1AAF8C9E4();
            (*(v227 + 8))(v205, v228);
            v195 = v256;
            v187 = v257;
            v207 = *(v257 + 8);
            v207(v204, v256);
            v208 = v222;
            sub_1AAF8C9A4();
            v185 = v255;
            sub_1AAF8C9F4();
            swift_unknownObjectRelease();
            (*(v223 + 8))(v208, v224);
            v207(v206, v195);
            v207(v53, v195);
            goto LABEL_126;
          }

          v119 = v117;
          v109 = &v264[v109];
          v75(v112, v12);
          if (v119)
          {
            goto LABEL_57;
          }
        }

        if (v251)
        {
          v190 = v243;
          sub_1AAF8C984();
          v191 = v254;
          v53 = v84;
          sub_1AAF8C8D4();
          (*(v244 + 8))(v190, v245);
          v192 = v235;
          sub_1AAF8C904();
          v185 = v255;
          sub_1AAF8C894();
          swift_unknownObjectRelease();
          (*(v236 + 8))(v192, v237);
          goto LABEL_123;
        }

        v211 = v238;
        sub_1AAF8C964();
        v212 = v241;
        sub_1AAF8C8C4();
        (*(v239 + 8))(v211, v240);
        v213 = v243;
        sub_1AAF8C984();
        v214 = v254;
        sub_1AAF8C8D4();
        (*(v244 + 8))(v213, v245);
        v195 = v256;
        v187 = v257;
        v215 = *(v257 + 8);
        v216 = v212;
        v53 = v84;
        v215(v216, v256);
        v217 = v235;
        sub_1AAF8C904();
        v185 = v255;
        sub_1AAF8C894();
        swift_unknownObjectRelease();
        (*(v236 + 8))(v217, v237);
        v215(v214, v195);
        v215(v84, v195);
        goto LABEL_126;
      }

      v108 = v106;
      v97 = &v264[v97];
      v75(v263, v12);
      if (v108)
      {
        goto LABEL_46;
      }
    }

    if (v251)
    {
      v186 = v243;
      sub_1AAF8C984();
      v185 = v255;
      v53 = v84;
      sub_1AAF8C8D4();
      swift_unknownObjectRelease();
      (*(v244 + 8))(v186, v245);
      v187 = v257;
      v188 = *(v257 + 8);
      v189 = v84;
      goto LABEL_118;
    }

    v209 = v238;
    sub_1AAF8C964();
    v191 = v254;
    v53 = v84;
    sub_1AAF8C8C4();
    (*(v239 + 8))(v209, v240);
    v210 = v243;
    sub_1AAF8C984();
    v185 = v255;
    sub_1AAF8C8D4();
    swift_unknownObjectRelease();
    (*(v244 + 8))(v210, v245);
LABEL_123:
    v195 = v256;
    v187 = v257;
    v200 = *(v257 + 8);
    v200(v191, v256);
    v201 = v84;
LABEL_124:
    v200(v201, v195);
LABEL_126:
    v218 = v248;
    v219 = *(v187 + 32);
    v219(v53, v185, v195);
    *(v218 + 24) = v195;
    *(v218 + 32) = sub_1AACEFF3C(&qword_1ED9B2850, MEMORY[0x1E6969328]);
    v220 = sub_1AACB2508(v218);
    result = (v219)(v220, v53, v195);
    *(v218 + 40) = 1;
    return result;
  }

  if ((v79 >> 1) > v78)
  {
    v88 = v77;
    v89 = v78;

    v90 = &v88[v89 * v264];
    v81 = MEMORY[0x1E69E7CC0];
    do
    {
      v61(v27, v90, v12);
      v91 = sub_1AAF8C724();
      v93 = v92;
      v75(v27, v12);
      if ((v93 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = sub_1AACF04D8(0, *(v81 + 2) + 1, 1, v81);
        }

        v95 = *(v81 + 2);
        v94 = *(v81 + 3);
        if (v95 >= v94 >> 1)
        {
          v81 = sub_1AACF04D8((v94 > 1), v95 + 1, 1, v81);
        }

        *(v81 + 2) = v95 + 1;
        *&v81[8 * v95 + 32] = v91;
      }

      v90 = &v264[v90];
      --v80;
    }

    while (v80);
    goto LABEL_18;
  }

LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);

  __break(1u);
  return result;
}

void sub_1AACEBDDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1AACEBE40(void **a1)
{
  v2 = *(sub_1AAF8CA64() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1AACEFC1C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1AACEBEE8(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1AACEBEE8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1AAF90464();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1AAF8CA64();
        v6 = sub_1AAF8F8A4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1AAF8CA64() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1AAF0EE80(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1AACEFC30(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1AACEC014(uint64_t a1)
{
  v2 = sub_1AAF8CB94();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1AACF042C();
    v9 = sub_1AAF900A4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1AADAB5C0(&qword_1ED9B2820, MEMORY[0x1E6969AD0]);
      v16 = sub_1AAF8F474();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1AADAB5C0(&qword_1ED9B1DB0, MEMORY[0x1E6969AD0]);
          v23 = sub_1AAF8F5F4();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

BOOL sub_1AACEC328(double *a1, double *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  if (a1[2])
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (a1[1] != a2[1])
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a2 + 32);
  if (a1[4])
  {
    if (!*(a2 + 32))
    {
      return 0;
    }
  }

  else
  {
    if (a1[3] != a2[3])
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  sub_1AACE5968((a1 + 5), v10, &qword_1ED9B3728, &type metadata for AnyChartScrollTargetBehavior);
  sub_1AACE5968((a2 + 5), &v12, &qword_1ED9B3728, &type metadata for AnyChartScrollTargetBehavior);
  if (v11)
  {
    sub_1AACE5968(v10, v9, &qword_1ED9B3728, &type metadata for AnyChartScrollTargetBehavior);
    if (*(&v13 + 1))
    {
      v7[0] = v12;
      v7[1] = v13;
      v8 = v14;
      sub_1AAE049CC();
      v5 = AGCompareValues();
      sub_1AAE04C1C(v7);
      sub_1AAE04C1C(v9);
      sub_1AACEC504(v10, &qword_1ED9B3728, &type metadata for AnyChartScrollTargetBehavior);
      return (v5 & 1) != 0;
    }

    sub_1AAE04C1C(v9);
  }

  else if (!*(&v13 + 1))
  {
    sub_1AACEC504(v10, &qword_1ED9B3728, &type metadata for AnyChartScrollTargetBehavior);
    return 1;
  }

  sub_1AAE04BC0(v10, &qword_1EB424EB0, &qword_1ED9B3728, &type metadata for AnyChartScrollTargetBehavior);
  return 0;
}

uint64_t sub_1AACEC504(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AACCB8F0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AACEC574(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AACBBBA0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AACEC5E4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AACEC634(void (*a1)(uint64_t *__return_ptr, void *))
{
  sub_1AACEC808();
  v3 = (v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AxisMarkValues.Storage(0);
  v6 = MEMORY[0x1E69E63B0];
  sub_1AACC9BB0(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
  sub_1AACC9BB0(0, &qword_1ED9B29E0, v6, MEMORY[0x1E69E6720]);
  sub_1AAF8CBA4();

  sub_1AACD889C(v5);

  v12[0] = v5;
  v7 = &v5[v3[14]];

  sub_1AACD889C(v7);

  v12[1] = v7;
  v8 = &v5[v3[18]];

  sub_1AACD889C(v8);

  v12[2] = v8;
  v9 = &v5[v3[22]];

  sub_1AACD889C(v9);

  v12[3] = v9;
  a1(&v13, v12);
  sub_1AACD8D78(v5, sub_1AACEC808);
  return v13;
}

void sub_1AACEC808()
{
  if (!qword_1ED9B1D58)
  {
    type metadata accessor for AxisMarkValues.Storage(255);
    v0 = MEMORY[0x1E69E63B0];
    sub_1AACC9BB0(255, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
    sub_1AACC9BB0(255, &qword_1ED9B29E0, v0, MEMORY[0x1E69E6720]);
    sub_1AAF8CBA4();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1ED9B1D58);
    }
  }
}

void sub_1AACEC8E4()
{
  if (!qword_1ED9B2AA0)
  {
    sub_1AAF8CA64();
    sub_1AADAB5C0(&qword_1ED9B6BA8, MEMORY[0x1E6969530]);
    v0 = sub_1AAF8F5D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2AA0);
    }
  }
}

uint64_t sub_1AACEC978(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 32;
  do
  {
    v4 = v1;
    if (v2 == v1)
    {
      *&result = 0.0;
      return result;
    }

    ++v1;
    v5 = *(v3 + 8 * v4);
    v6 = v5;
  }

  while ((~*&v5 & 0x7FF0000000000000) == 0);
  do
  {
    if (v2 == v1)
    {
      result = *(v3 + 8 * v4);
      goto LABEL_36;
    }

    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v8 = *(v3 + 8 * v1++);
  }

  while ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL);
  if (v8 >= v5)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(v3 + 8 * v4);
  }

  if (v8 < v5)
  {
    v5 = v8;
  }

  v10 = v5;
LABEL_13:
  v11 = v9;
LABEL_14:
  v12 = v7 + 1;
  while (v2 != v7)
  {
    if (v7 >= v2)
    {
      goto LABEL_39;
    }

    if (__OFADD__(v7, 1))
    {
      goto LABEL_40;
    }

    v13 = v12;
    v14 = *(v3 + 8 * v7++);
    ++v12;
    if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      while (v2 != v13)
      {
        v7 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_41;
        }

        v15 = *(v3 + 8 * v13++);
        if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_24;
        }
      }

      v7 = *(result + 16);
      v15 = v14;
LABEL_24:
      if (v15 >= v14)
      {
        v9 = v15;
      }

      else
      {
        v9 = v14;
      }

      if (v15 < v14)
      {
        v14 = v15;
      }

      if (v14 < v10)
      {
        v5 = v14;
        v10 = v14;
      }

      if (v9 < v11)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  *&result = v5;
  v6 = v11;
LABEL_36:
  if (*&result <= v6)
  {
    return result;
  }

LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1AACECACC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AACECB14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AACECB5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AACECBA4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1AACECC0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1AACECC70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1AACECCD4(uint64_t a1)
{
  v2 = sub_1AAF8CBA4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED9B14C0 != -1)
  {
    swift_once();
  }

  v6 = off_1ED9B14C8;
  swift_beginAccess();
  v7 = *(v6 + 2);

  v8 = pthread_getspecific(v7);
  if (!v8)
  {
    v9 = swift_slowAlloc();
    pthread_setspecific(*(v6 + 2), v9);
    sub_1AACE8880(0, qword_1ED9B1208, type metadata accessor for LRUCache);
    *(&v45 + 1) = v10;
    v11 = swift_allocObject();
    *&v44 = v11;
    v12 = *(v6 + 4);
    v13 = *(v6 + 7);
    v14 = *(v6 + 40);
    *(v11 + 16) = *(v6 + 3);
    *(v11 + 24) = v12;
    *(v11 + 32) = v14;
    *(v11 + 48) = v13;
    sub_1AACED35C(&v44, v9);

    v8 = v9;
  }

  sub_1AACED220(v8, &v42);
  sub_1AACE8880(0, qword_1ED9B1208, type metadata accessor for LRUCache);
  v40 = v15;
  swift_dynamicCast();
  v16 = *(&v44 + 1);
  v17 = v46;
  v39 = v45;
  if (*(v46 + 16) && (v18 = sub_1AACED27C(a1), (v19 & 1) != 0) && (v20 = *(*(v17 + 56) + 8 * v18), (v20 & 0x8000000000000000) == 0))
  {
    if (v20 == v39)
    {
      goto LABEL_11;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(&v44 + 1) = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v22 = v16[2];
      sub_1AACE8880(0, &qword_1ED9B1298, type metadata accessor for LRUCache.Element);
      *&v42 = v16 + ((*(*(v23 - 8) + 80) + 32) & ~*(*(v23 - 8) + 80));
      *(&v42 + 1) = v22;
      sub_1AADB7088(&v42, v20, &v44, v41);
      *(&v44 + 1) = v16;
LABEL_11:
      if (v20 < v16[2])
      {
        break;
      }

      __break(1u);
LABEL_18:
      v16 = sub_1AADB8158(v16);
      *(&v44 + 1) = v16;
    }

    sub_1AACE8880(0, &qword_1ED9B1298, type metadata accessor for LRUCache.Element);
    v25 = *(v16 + ((*(*(v24 - 8) + 80) + 32) & ~*(*(v24 - 8) + 80)) + *(*(v24 - 8) + 72) * v20 + *(v24 + 52));
  }

  else
  {
    (*(v3 + 16))(v5, a1, v2);
    type metadata accessor for CalendarCache(0);
    v25 = swift_allocObject();
    v26 = (v25 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893713CalendarCache_cache);
    v27 = MEMORY[0x1E69E7CC0];
    v28 = sub_1AADF72C0(MEMORY[0x1E69E7CC0]);
    *v26 = 64;
    v26[1] = v27;
    v26[2] = -1;
    v26[3] = -1;
    v26[4] = v28;
    (*(v3 + 32))(v25 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893713CalendarCache_calendar, v5, v2);
    sub_1AADB7940(v25, a1, 0);
    v16 = *(&v44 + 1);
  }

  v29 = v44;
  v30 = v45;
  v31 = v46;
  v32 = pthread_getspecific(*(v6 + 2));
  if (!v32)
  {
    v32 = swift_slowAlloc();
    pthread_setspecific(*(v6 + 2), v32);
    v43 = v40;
    v33 = swift_allocObject();
    *&v42 = v33;
    v34 = *(v6 + 4);
    v35 = *(v6 + 7);
    v36 = *(v6 + 40);
    *(v33 + 16) = *(v6 + 3);
    *(v33 + 24) = v34;
    *(v33 + 32) = v36;
    *(v33 + 48) = v35;
    sub_1AACED35C(&v42, v32);
  }

  v43 = v40;
  v37 = swift_allocObject();
  *&v42 = v37;
  *(v37 + 16) = v29;
  *(v37 + 24) = v16;
  *(v37 + 32) = v30;
  *(v37 + 48) = v31;
  sub_1AACB634C(v32);
  sub_1AACED35C(&v42, v32);

  return v25;
}

uint64_t sub_1AACED1E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AACED220(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1AACED27C(uint64_t a1)
{
  sub_1AAF8CBA4();
  sub_1AADB31F8(&qword_1ED9B1650, MEMORY[0x1E6969AE8]);
  v2 = sub_1AAF8F474();

  return sub_1AACE8934(a1, v2);
}

uint64_t sub_1AACED314(unint64_t *a1, void (*a2)(uint64_t))
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

_OWORD *sub_1AACED35C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1AACED38C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for CalendarCache.Key(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for CalendarCache.Value(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v21[-v14];
  sub_1AACE8B14();
  v17 = *(v16 + 48);
  v18 = sub_1AAF8CB94();
  (*(*(v18 - 8) + 16))(v9, a1, v18);
  v19 = sub_1AAF8CA64();
  (*(*(v19 - 8) + 16))(&v9[v17], a2, v19);
  swift_storeEnumTagMultiPayload();
  v22 = v3;
  v23 = a1;
  v24 = a2;
  swift_beginAccess();
  sub_1AACED630(v9, sub_1AADE42D8, v15);
  swift_endAccess();
  sub_1AACE8D8C(v9, type metadata accessor for CalendarCache.Key);
  sub_1AACEDD44(v15, v13, type metadata accessor for CalendarCache.Value);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1AACE8D8C(v15, type metadata accessor for CalendarCache.Value);
    return sub_1AADE42E4(v13, a3, &qword_1ED9B1678, MEMORY[0x1E6968130]);
  }

  else
  {
    result = sub_1AACE8D8C(v13, type metadata accessor for CalendarCache.Value);
    __break(1u);
  }

  return result;
}

size_t sub_1AACED630@<X0>(unint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(v3 + 32);
  if (*(v8 + 16) && (v9 = sub_1AACE8B84(a1), (v10 & 1) != 0) && (v11 = *(*(v8 + 56) + 8 * v9), (v11 & 0x8000000000000000) == 0))
  {
    v12 = *(v4 + 8);
    if (v11 == *(v4 + 16))
    {
      goto LABEL_7;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 8) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_13;
    }

    while (1)
    {
      v14 = v12[2];
      sub_1AACE8DEC();
      v19[0] = v12 + ((*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80));
      v19[1] = v14;
      sub_1AADB6FF8(v19, v11, v4, &v18);
      *(v4 + 8) = v12;
LABEL_7:
      if (v11 < v12[2])
      {
        break;
      }

      __break(1u);
LABEL_13:
      v12 = sub_1AADB80F4(v12);
      *(v4 + 8) = v12;
    }

    sub_1AACE8DEC();
    return sub_1AACEDD44(v12 + ((*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80)) + *(*(v16 - 8) + 72) * v11 + *(v16 + 52), a3, type metadata accessor for CalendarCache.Value);
  }

  else
  {
    a2();

    return sub_1AADB71DC(a3, a1, 0);
  }
}

uint64_t sub_1AACED800(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1AAF8CA64();
  v35 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v32 - v8;
  v10 = sub_1AAF8CB94();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CalendarCache.Key(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACEDD44(v2, v16, type metadata accessor for CalendarCache.Key);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1AACE8B14();
    v26 = *(v25 + 48);
    v20 = v13;
    (*(v11 + 32))(v13, v16, v10);
    v27 = v35;
    (*(v35 + 32))(v9, &v16[v26], v4);
    MEMORY[0x1AC5992C0](0);
    sub_1AACECACC(&qword_1ED9B2820, MEMORY[0x1E6969AD0]);
    sub_1AAF8F484();
LABEL_6:
    sub_1AACECACC(&qword_1ED9B1670, MEMORY[0x1E6969530]);
    sub_1AAF8F484();
    (*(v27 + 8))(v9, v4);
    return (*(v11 + 8))(v20, v10);
  }

  v34 = a1;
  if (EnumCaseMultiPayload != 1)
  {
    sub_1AADDFE60();
    v29 = *&v16[*(v28 + 48)];
    v30 = *(v28 + 64);
    v20 = v13;
    (*(v11 + 32))(v13, v16, v10);
    v27 = v35;
    (*(v35 + 32))(v9, &v16[v30], v4);
    MEMORY[0x1AC5992C0](2);
    sub_1AACECACC(&qword_1ED9B2820, MEMORY[0x1E6969AD0]);
    sub_1AAF8F484();
    MEMORY[0x1AC5992C0](v29);
    goto LABEL_6;
  }

  sub_1AADDFDEC();
  v19 = *(v18 + 48);
  v32 = *(v18 + 64);
  v20 = v13;
  (*(v11 + 32))(v13, v16, v10);
  v21 = v35;
  v33 = v9;
  v22 = *(v35 + 32);
  v22(v9, &v16[v19], v4);
  v22(v7, &v16[v32], v4);
  MEMORY[0x1AC5992C0](1);
  sub_1AACECACC(&qword_1ED9B2820, MEMORY[0x1E6969AD0]);
  sub_1AAF8F484();
  sub_1AACECACC(&qword_1ED9B1670, MEMORY[0x1E6969530]);
  v23 = v33;
  sub_1AAF8F484();
  sub_1AAF8F484();
  v24 = *(v21 + 8);
  v24(v7, v4);
  v24(v23, v4);
  return (*(v11 + 8))(v20, v10);
}

uint64_t sub_1AACEDD44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1AACEDDAC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CalendarCache.Key(0) - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_1AADB3194(*(v2 + 48) + v12 * v10, v8);
      v13 = sub_1AACEDEF8(v8, a1);
      sub_1AADB3134(v8, type metadata accessor for CalendarCache.Key);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_1AACEDEF8(uint64_t a1, uint64_t a2)
{
  v123 = a1;
  v124 = a2;
  v2 = sub_1AAF8CA64();
  v127 = *(v2 - 8);
  v128 = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v116 = &v115 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v119 = &v115 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v117 = &v115 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v118 = &v115 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v120 = &v115 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v121 = &v115 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v115 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v115 - v18;
  v20 = sub_1AAF8CB94();
  v21 = *(v20 - 8);
  v125 = v20;
  v126 = v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v115 = &v115 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v122 = &v115 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v115 - v26;
  v28 = type metadata accessor for CalendarCache.Key(0);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v115 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v115 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v115 - v35;
  sub_1AACE8D28();
  v38 = MEMORY[0x1EEE9AC00](v37 - 8);
  v40 = &v115 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = &v40[*(v38 + 56)];
  sub_1AACEDD44(v123, v40, type metadata accessor for CalendarCache.Key);
  sub_1AACEDD44(v124, v41, type metadata accessor for CalendarCache.Key);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v124 = v40;
      sub_1AACEDD44(v40, v34, type metadata accessor for CalendarCache.Key);
      sub_1AADDFDEC();
      v44 = *(v43 + 48);
      v45 = *(v43 + 64);
      v46 = swift_getEnumCaseMultiPayload();
      v47 = v127;
      v48 = v128;
      if (v46 == 1)
      {
        v50 = v125;
        v49 = v126;
        (*(v126 + 32))(v122, v41, v125);
        v51 = *(v47 + 32);
        v51(v121, &v34[v44], v48);
        v51(v120, &v34[v45], v48);
        v52 = (v41 + v44);
        v53 = v118;
        v51(v118, v52, v48);
        v54 = (v41 + v45);
        v55 = v117;
        v51(v117, v54, v48);
        v56 = v122;
        v57 = sub_1AAF8CB84();
        v58 = *(v49 + 8);
        v58(v34, v50);
        if (v57)
        {
          v59 = v121;
          if (sub_1AAF8CA14())
          {
            v60 = v120;
            v61 = sub_1AAF8CA14();
            v62 = v55;
            v63 = v61;
            v64 = *(v47 + 8);
            v64(v62, v48);
            v64(v53, v48);
            v64(v60, v48);
            v64(v59, v48);
            v58(v122, v50);
LABEL_25:
            v92 = type metadata accessor for CalendarCache.Key;
            v40 = v124;
            goto LABEL_26;
          }

          v107 = *(v47 + 8);
          v107(v55, v48);
          v107(v53, v48);
          v107(v120, v48);
          v108 = v59;
        }

        else
        {
          v107 = *(v47 + 8);
          v107(v55, v48);
          v107(v53, v48);
          v107(v120, v48);
          v108 = v121;
        }

        v107(v108, v48);
        v58(v56, v50);
        goto LABEL_24;
      }

      v91 = *(v127 + 8);
      v91(&v34[v45], v128);
      v91(&v34[v44], v48);
      v36 = v34;
      v40 = v124;
    }

    else
    {
      sub_1AACEDD44(v40, v31, type metadata accessor for CalendarCache.Key);
      sub_1AADDFE60();
      v68 = *(v67 + 48);
      v69 = *&v31[v68];
      v70 = *(v67 + 64);
      v71 = swift_getEnumCaseMultiPayload();
      v72 = v127;
      if (v71 == 2)
      {
        v124 = v40;
        v73 = *(v41 + v68);
        v122 = v69;
        v123 = v73;
        v74 = v125;
        v75 = v126;
        v76 = v115;
        (*(v126 + 32))(v115, v41, v125);
        v77 = *(v72 + 32);
        v78 = v128;
        v77(v119, &v31[v70], v128);
        v79 = (v41 + v70);
        v80 = v74;
        v81 = v116;
        v77(v116, v79, v78);
        v82 = v76;
        v83 = sub_1AAF8CB84();
        v84 = *(v75 + 8);
        v84(v31, v80);
        if (v83)
        {
          if (v122 == v123)
          {
            v85 = v119;
            v86 = sub_1AAF8CA14();
            v87 = v81;
            v88 = v80;
            v63 = v86;
            v89 = *(v72 + 8);
            v90 = v128;
            v89(v87, v128);
            v89(v85, v90);
            v84(v76, v88);
            goto LABEL_25;
          }

          v112 = *(v72 + 8);
          v113 = v128;
          v112(v81, v128);
          v112(v119, v113);
          v84(v76, v80);
        }

        else
        {
          v109 = *(v72 + 8);
          v110 = v128;
          v109(v81, v128);
          v109(v119, v110);
          v84(v82, v80);
        }

LABEL_24:
        v63 = 0;
        goto LABEL_25;
      }

      (*(v127 + 8))(&v31[v70], v128);
      v36 = v31;
    }
  }

  else
  {
    v122 = v17;
    v123 = v19;
    sub_1AACEDD44(v40, v36, type metadata accessor for CalendarCache.Key);
    sub_1AACE8B14();
    v66 = *(v65 + 48);
    if (!swift_getEnumCaseMultiPayload())
    {
      v124 = v40;
      v93 = v125;
      v94 = v126;
      v95 = v27;
      (*(v126 + 32))(v27, v41, v125);
      v96 = v127;
      v97 = v128;
      v98 = *(v127 + 32);
      v98(v123, &v36[v66], v128);
      v99 = (v41 + v66);
      v100 = v93;
      v101 = v122;
      v98(v122, v99, v97);
      v102 = sub_1AAF8CB84();
      v103 = *(v94 + 8);
      v103(v36, v100);
      if (v102)
      {
        v104 = v123;
        v105 = v100;
        v63 = sub_1AAF8CA14();
        v106 = *(v96 + 8);
        v106(v101, v97);
        v106(v104, v97);
        v103(v95, v105);
        goto LABEL_25;
      }

      v111 = *(v96 + 8);
      v111(v101, v97);
      v111(v123, v97);
      v103(v95, v100);
      goto LABEL_24;
    }

    (*(v127 + 8))(&v36[v66], v128);
  }

  (*(v126 + 8))(v36, v125);
  v63 = 0;
  v92 = sub_1AACE8D28;
LABEL_26:
  sub_1AACE8D8C(v40, v92);
  return v63 & 1;
}

uint64_t sub_1AACEE924(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AACEE984(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AACEE9E4(uint64_t a1)
{
  if ((*(v1 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_fixedTimeInterval + 8) & 1) == 0)
  {
    v6 = *(v1 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_fixedTimeInterval);
    sub_1AAF8C854();
    v8 = v7;
    result = sub_1AAF8C854();
    v10 = floor((v8 - v9) / v6);
    if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v10 > -9.22337204e18)
    {
      if (v10 < 9.22337204e18)
      {
        return v10;
      }

      goto LABEL_21;
    }

    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  result = sub_1AADDF484(v1 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_component, v1 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_anchor, a1);
  if ((v3 & 1) == 0)
  {
    v4 = *(v1 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_stride);
    if (result < 0)
    {
      if (!v4)
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (result == 0x8000000000000000 && v4 == -1)
      {
        goto LABEL_26;
      }

      v12 = result / v4 * v4;
      v13 = __OFSUB__(v12, v4);
      v5 = v12 - v4;
      if (v13)
      {
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (v4 != -1 || v5 != 0x8000000000000000)
      {
        return v5 / v4;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (v4)
    {
      v5 = result / v4 * v4;
      return v5 / v4;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t DateBins.thresholds.getter()
{
  v58 = sub_1AAF8CA64();
  v51 = *(v58 - 8);
  v1 = MEMORY[0x1EEE9AC00](v58);
  v50 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v55 = &v47 - v3;
  sub_1AACE9A60();
  v47 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACE9AF4();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACEF1CC();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DateBins.Storage(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = (&v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = (&v47 - v18);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v47 - v20;
  v56 = v0;
  sub_1AACEF164(v0, &v47 - v20, type metadata accessor for DateBins.Storage);
  v52 = v13;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return *v21;
    }

    sub_1AACE9B88(v21, type metadata accessor for CalendarBinningUnit);
  }

  v23 = v56;
  sub_1AACEF164(v56, v9, type metadata accessor for DateBins);
  *&v9[*(v7 + 36)] = 0;
  sub_1AACEF164(v23, v19, type metadata accessor for DateBins.Storage);
  v24 = swift_getEnumCaseMultiPayload();
  if (v24)
  {
    if (v24 == 1)
    {
      sub_1AACE99D0();
      v26 = *(v19 + *(v25 + 64));
      sub_1AACE9B88(v19, type metadata accessor for CalendarBinningUnit);
    }

    else
    {
      v28 = *(*v19 + 16);

      v26 = v28 - 1;
    }
  }

  else
  {
    v26 = v19[2];
  }

  *&v9[*(v7 + 40)] = v26;
  v29 = v53;
  result = sub_1AACEF260(v9, v53, sub_1AACE9AF4);
  v49 = *(v11 + 36);
  *(v29 + v49) = 0;
  v48 = *(v29 + *(v7 + 40));
  if (!v48)
  {
    v27 = MEMORY[0x1E69E7CC0];
LABEL_30:
    sub_1AACE9B88(v53, sub_1AACEF1CC);
    return v27;
  }

  v31 = 0;
  v32 = (v51 + 16);
  v54 = v51 + 32;
  v27 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v33 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    *(v53 + v49) = v33;
    v34 = v57;
    DateBins.subscript.getter(v31, v57);
    v35 = *v32;
    (*v32)(v55, v34, v58);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_1AACE9BE8(0, v27[2] + 1, 1, v27);
    }

    v37 = v27[2];
    v36 = v27[3];
    if (v37 >= v36 >> 1)
    {
      v27 = sub_1AACE9BE8(v36 > 1, v37 + 1, 1, v27);
    }

    v27[2] = v37 + 1;
    v38 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v39 = *(v51 + 72);
    v40 = v27 + v38 + v39 * v37;
    v41 = *(v51 + 32);
    v41(v40, v55, v58);
    sub_1AACEF164(v56, v16, type metadata accessor for DateBins.Storage);
    result = swift_getEnumCaseMultiPayload();
    if (result)
    {
      if (result == 1)
      {
        sub_1AACE99D0();
        v43 = *(v16 + *(v42 + 64));
        result = sub_1AACE9B88(v16, type metadata accessor for CalendarBinningUnit);
      }

      else
      {
        v44 = *(*v16 + 16);

        v43 = v44 - 1;
      }
    }

    else
    {
      v43 = v16[2];
    }

    if (v43 < 0)
    {
      goto LABEL_33;
    }

    if (v31 == v43 - 1)
    {
      v35(v50, v57 + *(v47 + 36), v58);
      v46 = v27[2];
      v45 = v27[3];
      if (v46 >= v45 >> 1)
      {
        v27 = sub_1AACE9BE8(v45 > 1, v46 + 1, 1, v27);
      }

      sub_1AACE9B88(v57, sub_1AACE9A60);
      v27[2] = v46 + 1;
      result = (v41)(v27 + v38 + v46 * v39, v50, v58);
    }

    else
    {
      result = sub_1AACE9B88(v57, sub_1AACE9A60);
    }

    ++v31;
    if (v33 == v48)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1AACEF164(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1AACEF1CC()
{
  if (!qword_1ED9B11B8)
  {
    sub_1AACE9AF4();
    sub_1AACECB14(&qword_1ED9B11D8, sub_1AACE9AF4);
    v0 = sub_1AAF90294();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B11B8);
    }
  }
}

uint64_t sub_1AACEF260(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t DateBins.subscript.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1AACEC8E4();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CalendarBinningUnit(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DateBins.Storage(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AACEF164(v3, v15, type metadata accessor for DateBins.Storage);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result != 1)
    {
      goto LABEL_11;
    }

    sub_1AACE99D0();
    v18 = *(v15 + *(v17 + 48));
    v19 = *(v15 + *(v17 + 64));
    sub_1AACEF260(v15, v12, type metadata accessor for CalendarBinningUnit);
    result = v18 + a1;
    if (__OFADD__(v18, a1))
    {
      __break(1u);
      goto LABEL_17;
    }

    sub_1AACE8E98(result, v9);
    sub_1AACE9B88(v12, type metadata accessor for CalendarBinningUnit);
    v20 = sub_1AAF8CA64();
    v15 = *(*(v20 - 8) + 32);
    v15(a2, v9, v20);
    v21 = *(v7 + 36);
    sub_1AACE9A60();
    v23 = v22;
    result = (v15)(a2 + *(v22 + 36), &v9[v21], v20);
    v24 = v19 - 1;
    if (!__OFSUB__(v19, 1))
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  if (__OFADD__(a1, 1))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25 = *(v15 + 2);
  sub_1AAF8C844();
  sub_1AACE9A60();
  v23 = v26;
  result = sub_1AAF8C844();
  v24 = v25 - 1;
  if (!__OFSUB__(v25, 1))
  {
    goto LABEL_15;
  }

  __break(1u);
LABEL_11:
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v27 = *v15;
  v28 = *(*v15 + 16);
  if ((v28 - 1) <= a1)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v28 > a1)
  {
    v36 = *(*v15 + 16);
    v29 = sub_1AAF8CA64();
    v30 = *(v29 - 8);
    v31 = *(v30 + 16);
    v32 = v27 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v33 = *(v30 + 72);
    v31(a2, v32 + v33 * a1, v29);
    sub_1AACE9A60();
    v23 = v34;
    v31(a2 + *(v34 + 36), v32 + v33 + v33 * a1, v29);

    v24 = v36 - 2;
LABEL_15:
    *(a2 + *(v23 + 40)) = v24 == a1;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

char *sub_1AACEF664(char *a1, int64_t a2, char a3)
{
  result = sub_1AACEF684(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AACEF684(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1AAD469FC(0, &qword_1ED9B28C0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_1AACEF7A0(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, unint64_t *a7, uint64_t a8)
{
  v18[1] = a2;
  v19 = a1;
  sub_1AACEA1AC(0, a6, a7, a8);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v18 - v13;
  sub_1AAF8CAA4();
  sub_1AAF8CBA4();
  sub_1AACC9BB0(0, a7, a8, MEMORY[0x1E69E62F8]);

  sub_1AACD889C(v14);

  v20[0] = v14;
  v15 = &v14[*(v12 + 56)];

  sub_1AACD889C(v15);

  v20[1] = v15;
  v16 = &v14[*(v12 + 72)];

  sub_1AACD889C(v16);

  v20[2] = v16;
  v19(v20);
  return sub_1AACE1350(v14, a6, a7, a8, sub_1AACEA1AC);
}

uint64_t sub_1AACEF970@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1AAF8CA64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = **(a1 + 16);
  if (a2)
  {
    if (a2 == 1)
    {
      v12 = *(a1 + 8);
      v13 = *(v11 + 16);
      v14 = MEMORY[0x1E69E7CC0];
      if (v13)
      {
        v21 = v12;
        v22 = a3;
        v23 = MEMORY[0x1E69E7CC0];
        sub_1AACEA040(0, v13, 0);
        v14 = v23;
        v15 = v11 + 32;
        do
        {
          sub_1AAF8C844();
          v23 = v14;
          v17 = v14[2];
          v16 = v14[3];
          if (v17 >= v16 >> 1)
          {
            sub_1AACEA040(v16 > 1, v17 + 1, 1);
            v14 = v23;
          }

          v14[2] = v17 + 1;
          (*(v7 + 32))(v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17, v9, v6);
          v15 += 8;
          --v13;
        }

        while (v13);
        v12 = v21;
        a3 = v22;
      }

      sub_1AACEA258(v14, v10, v12, a3);
    }

    else
    {
      if (qword_1ED9B0278 != -1)
      {
        swift_once();
      }

      return sub_1AACE0A98(&unk_1ED9C33B8, a3);
    }
  }

  else
  {
    v18 = sub_1AAF87F6C(**(a1 + 16));
    sub_1AAF0D208(v18, v10, a3);
  }
}

uint64_t sub_1AACEFC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1AAF8CA64();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v41 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v45 = &v31 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v14 + 16);
    v43 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v39 = (v14 + 32);
    v40 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v21, v8);
      v25 = v45;
      v24(v45, v22, v8);
      sub_1AACEFF3C(&qword_1ED9B6BA8, MEMORY[0x1E6969530]);
      v26 = sub_1AAF8F564();
      v27 = *v18;
      (*v18)(v25, v8);
      result = v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = v36 + v32;
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v28)(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1AACEFEF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AACEFF3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AACEFF84(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v19 = sub_1AAF8C774();
  v6 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v22 = MEMORY[0x1E69E7CC0];
  sub_1AACF0188(0, v9, 0);
  v10 = v22;
  v11 = *(sub_1AAF8CA64() - 8);
  v12 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v18 = v6 + 32;
  v17 = *(v11 + 72);
  while (1)
  {
    v20(v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v10;
    v14 = *(v10 + 16);
    v13 = *(v10 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1AACF0188(v13 > 1, v14 + 1, 1);
      v10 = v22;
    }

    *(v10 + 16) = v14 + 1;
    (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v8, v19);
    v12 += v17;
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

size_t sub_1AACF0188(size_t a1, int64_t a2, char a3)
{
  result = sub_1AAD45470(a1, a2, a3, *v3, &qword_1ED9B16B0, MEMORY[0x1E6968278], MEMORY[0x1E6968278]);
  *v3 = result;
  return result;
}

uint64_t sub_1AACF01D8()
{
  sub_1AACEBDDC(0, &qword_1ED9B1E08, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v0 = sub_1AAF8CB94();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AAFC2A20;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E6969A68], v0);
  v6(v5 + v2, *MEMORY[0x1E6969A78], v0);
  v6(v5 + 2 * v2, *MEMORY[0x1E6969A48], v0);
  v6(v5 + 3 * v2, *MEMORY[0x1E6969A58], v0);
  v6(v5 + 4 * v2, *MEMORY[0x1E6969A88], v0);
  v6(v5 + 5 * v2, *MEMORY[0x1E6969A98], v0);
  sub_1AACEC014(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1AAF8CB04();
}

void sub_1AACF042C()
{
  if (!qword_1ED9B1E38)
  {
    sub_1AAF8CB94();
    sub_1AADAB5C0(&qword_1ED9B2820, MEMORY[0x1E6969AD0]);
    v0 = sub_1AAF900B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B1E38);
    }
  }
}

uint64_t sub_1AACF04EC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v25 = v3;
  v26 = a1;
  while (v7)
  {
    v11 = v10;
LABEL_15:
    v14 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v15 = v14 | (v11 << 6);
    v16 = *(*(v3 + 48) + 8 * v15);
    sub_1AACAEF68(*(v3 + 56) + 40 * v15, v28);
    *&v29 = v16;
    sub_1AACBB198(v28, &v29 + 8);
LABEL_16:
    v32[1] = v30;
    v32[2] = v31;
    v32[0] = v29;
    if (!v31)
    {
    }

    v17 = *&v32[0];
    sub_1AACBB198((v32 + 8), &v29);
    if (*(a1 + 16))
    {
      v18 = sub_1AACC9B78(v17);
      if (v19)
      {
        v20 = *(*(a1 + 56) + 16 * v18 + 8);
        v22 = *(&v30 + 1);
        v21 = v31;
        sub_1AACBB42C(&v29, *(&v30 + 1));
        v27 = *(v21 + 16);

        v24 = v21;
        a1 = v26;
        v27(v23, v20, v22, v24);
        v3 = v25;
      }
    }

    result = sub_1AACB634C(&v29);
  }

  if (v8 <= v10 + 1)
  {
    v12 = v10 + 1;
  }

  else
  {
    v12 = v8;
  }

  v13 = v12 - 1;
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
      v7 = 0;
      v30 = 0u;
      v31 = 0u;
      v10 = v13;
      v29 = 0u;
      goto LABEL_16;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AACF06EC(uint64_t result, int a2, int a3)
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
      *(result + 82) = 1;
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

    *(result + 82) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AACF0744(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || ((*(a1 + 24) ^ *(a2 + 24)) & 1) != 0)
  {
    return 0;
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 56);
  v5 = *(a1 + 64);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v11 = *(a2 + 56);
  v10 = *(a2 + 64);
  if (sub_1AACF0AB8(*(a1 + 32), *(a2 + 32)) & 1) == 0 || (sub_1AACF0880(v3, v8) & 1) == 0 || ((v4 ^ v9))
  {
    goto LABEL_9;
  }

  v13 = 0;
  if (((v9 & 0x100) == 0) == (v4 & 0x100) >> 8 || v6 != v11 || v5 != v10)
  {
    return v13 & 1;
  }

  if ((sub_1AACF0C18(*(a1 + 72), *(a2 + 72)) & 1) != 0 && ((*(a1 + 80) ^ *(a2 + 80)) & 1) == 0)
  {
    v13 = *(a1 + 81) ^ *(a2 + 81) ^ 1;
  }

  else
  {
LABEL_9:
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_1AACF0880(uint64_t result, uint64_t a2)
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
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_12:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 56) + 24 * v12);
    v14 = *v13;
    v15 = *(v13 + 1);
    v16 = *(v13 + 2);
    result = sub_1AACB6398(*(*(v3 + 48) + v12));
    if ((v17 & 1) == 0)
    {
      return 0;
    }

    v18 = (*(a2 + 56) + 24 * result);
    if (v14 != *v18)
    {
      return 0;
    }

    v19 = *(v18 + 2);
    if (*(v18 + 1))
    {
      if (!v15 || (sub_1AACF1088(*(v18 + 1), v15) & 1) == 0)
      {
        return 0;
      }
    }

    else if (v15)
    {
      return 0;
    }

    v20 = *(v19 + 16);
    if (v20 != *(v16 + 16))
    {
LABEL_52:

      return 0;
    }

    if (v20)
    {
      v21 = v19 == v16;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      v22 = 0;
      while (v20)
      {
        v24 = *(v19 + v22 + 32);
        v25 = *(v19 + v22 + 72);
        v26 = *(v16 + v22 + 32);
        result = *(v16 + v22 + 48);
        v27 = *(v16 + v22 + 72);
        if (v24 == 9)
        {
          if (v26 != 9)
          {
            goto LABEL_52;
          }
        }

        else if (v26 == 9 || v24 != v26)
        {
          goto LABEL_52;
        }

        if (*(v19 + v22 + 48))
        {
          if (!*(v16 + v22 + 48))
          {
            goto LABEL_52;
          }
        }

        else
        {
          if (*(v19 + v22 + 40) == *(v16 + v22 + 40))
          {
            v29 = *(v16 + v22 + 48);
          }

          else
          {
            v29 = 1;
          }

          if (v29)
          {
            goto LABEL_52;
          }
        }

        if (*(v19 + v22 + 64))
        {
          if (v25 == v27)
          {
            v23 = *(v16 + v22 + 64);
          }

          else
          {
            v23 = 0;
          }

          if (v23 != 1)
          {
            goto LABEL_52;
          }
        }

        else if ((*(v16 + v22 + 64) & 1) != 0 || *(v19 + v22 + 56) != *(v16 + v22 + 56) || v25 != v27)
        {
          goto LABEL_52;
        }

        v22 += 48;
        if (!--v20)
        {
          goto LABEL_25;
        }
      }

      goto LABEL_56;
    }

LABEL_25:
    ;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= i)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_1AACF0AB8(uint64_t result, uint64_t a2)
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
    v13 = *(v3 + 56) + 16 * v12;
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(v13 + 9);
    v17 = sub_1AACB6398(*(*(v3 + 48) + v12));
    if ((v18 & 1) == 0)
    {
      return 0;
    }

    v19 = *(a2 + 56) + 16 * v17;
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 9);
    if (v21)
    {
      if (v21 == 1)
      {
        if (v15 != 1)
        {
          return 0;
        }
      }

      else if (v15 != 2)
      {
        return 0;
      }
    }

    else if (v15)
    {
      return 0;
    }

    result = 0;
    if (v20 != v14 || ((v16 ^ v22) & 1) != 0)
    {
      return result;
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

uint64_t sub_1AACF0C18(uint64_t result, uint64_t a2)
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
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v49 = (v6 + 63) >> 6;
  while (v8)
  {
    v9 = __clz(__rbit64(v8));
    v10 = (v8 - 1) & v8;
LABEL_13:
    v13 = v9 | (v4 << 6);
    v14 = *(v3 + 56) + 72 * v13;
    v15 = *(v14 + 8);
    result = v15 == 254;
    if (v15 == 254)
    {
      return result;
    }

    v53 = v10;
    v16 = *v14;
    v17 = *(v14 + 16);
    v18 = *(v14 + 24);
    v19 = *(v14 + 40);
    v52 = *(v14 + 48);
    v50 = *(v14 + 32);
    v51 = *(v14 + 56);
    v20 = *(v14 + 64);
    v21 = v3;
    v22 = sub_1AACB6398(*(*(v3 + 48) + v13));
    if ((v23 & 1) == 0)
    {
      return v15 == 254;
    }

    v24 = *(a2 + 56) + 72 * v22;
    v25 = *(v24 + 8);
    v26 = *(v24 + 16);
    v27 = *(v24 + 24);
    v28 = *(v24 + 32);
    v29 = *(v24 + 40);
    v30 = *(v24 + 48);
    v31 = *(v24 + 56);
    v32 = *(v24 + 64);
    if (v25 == 255)
    {
      if (v15 != 255)
      {
        return v15 == 254;
      }
    }

    else
    {
      if (v15 == 255)
      {
        return v15 == 254;
      }

      v33 = *v24;
      if (v25)
      {
        if (v25 == 1)
        {
          if (v15 != 1 || v33 != v16)
          {
            return v15 == 254;
          }
        }

        else if (*&v33 <= 1)
        {
          if (v33 == 0.0)
          {
            if (v15 != 2 || *&v16 != 0)
            {
              return v15 == 254;
            }
          }

          else if (v15 != 2 || *&v16 != 1)
          {
            return v15 == 254;
          }
        }

        else if (*&v33 == 2)
        {
          if (v15 != 2 || *&v16 != 2)
          {
            return v15 == 254;
          }
        }

        else if (*&v33 == 3)
        {
          if (v15 != 2 || *&v16 != 3)
          {
            return v15 == 254;
          }
        }

        else if (v15 != 2 || *&v16 != 4)
        {
          return v15 == 254;
        }
      }

      else
      {
        if (v15)
        {
          v35 = 0;
        }

        else
        {
          v35 = v33 == v16;
        }

        if (!v35)
        {
          return v15 == 254;
        }
      }
    }

    v36 = v29 >> 8;
    v37 = v19 & 0xFF00;
    if (v29 >> 8 <= 0xFE)
    {
      if (v37 == 65280)
      {
        return v15 == 254;
      }

      if (v29 >> 8 > 1)
      {
        if (v36 == 2)
        {
          if (BYTE1(v19) != 2 || v26 != v17)
          {
            return v15 == 254;
          }
        }

        else
        {
          if (BYTE1(v19) != 3 || v26 != v17 || v27 != v18)
          {
            return v15 == 254;
          }

          if (v29 == 0xFF)
          {
            if (v19 != 255)
            {
              return v15 == 254;
            }
          }

          else
          {
            if (v19 == 255)
            {
              return v15 == 254;
            }

            if (v29)
            {
              if (v29 == 1)
              {
                if (v19 != 1)
                {
                  return v15 == 254;
                }
              }

              else if (v19 != 2)
              {
                return v15 == 254;
              }
            }

            else if (v19)
            {
              return v15 == 254;
            }

            if (v28 != v50)
            {
              return v15 == 254;
            }
          }
        }
      }

      else if (v36)
      {
        if (BYTE1(v19) != 1 || v26 != v17)
        {
          return v15 == 254;
        }
      }

      else
      {
        if (BYTE1(v19))
        {
          v39 = 0;
        }

        else
        {
          v39 = v26 == v17;
        }

        if (!v39)
        {
          return v15 == 254;
        }
      }
    }

    else if (v37 != 65280)
    {
      return v15 == 254;
    }

    if (v32 == 255)
    {
      v38 = v20 == 255;
      result = v15 == 254;
      v3 = v21;
      goto LABEL_35;
    }

    if (v20 == 255)
    {
      return v15 == 254;
    }

    v3 = v21;
    if (v32 > 3)
    {
      if (v32 <= 5)
      {
        if (v32 == 4)
        {
          v8 = v53;
          if (v20 != 4)
          {
            return v15 == 254;
          }
        }

        else
        {
          v8 = v53;
          if (v20 != 5)
          {
            return v15 == 254;
          }
        }

        goto LABEL_108;
      }

      if (v32 == 6)
      {
        v8 = v53;
        if (v20 != 6)
        {
          return v15 == 254;
        }

        goto LABEL_108;
      }

      if (v20 != 7)
      {
        return v15 == 254;
      }

      result = v15 == 254;
      if (v31 > 1u)
      {
        if (v31 == 2)
        {
          if (v51 != 2)
          {
            return result;
          }
        }

        else if (v51 != 3)
        {
          return result;
        }
      }

      else if (v31)
      {
        if (v51 != 1)
        {
          return result;
        }
      }

      else if (v51)
      {
        return result;
      }

      v38 = v30 == v52;
LABEL_35:
      v8 = v53;
      if (!v38)
      {
        return result;
      }
    }

    else
    {
      if (v32 <= 1)
      {
        if (v32)
        {
          if (v20 != 1)
          {
            return v15 == 254;
          }

          v38 = v30 == v52;
        }

        else
        {
          if (v20)
          {
            return v15 == 254;
          }

          v38 = v30 == v52 && v31 == v51;
        }

        result = v15 == 254;
        goto LABEL_35;
      }

      if (v32 == 2)
      {
        v8 = v53;
        if (v20 != 2)
        {
          return v15 == 254;
        }
      }

      else
      {
        v8 = v53;
        if (v20 != 3)
        {
          return v15 == 254;
        }
      }

LABEL_108:
      result = v15 == 254;
      if (v30 != v52)
      {
        return result;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v49)
    {
      return 1;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v9 = __clz(__rbit64(v12));
      v10 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AACF1088(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    do
    {
      if (*(a1 + v3 + 40))
      {
        if (!*(a2 + v3 + 40))
        {
          return 0;
        }
      }

      else
      {
        if (*(a1 + v3 + 32) == *(a2 + v3 + 32))
        {
          v5 = *(a2 + v3 + 40);
        }

        else
        {
          v5 = 1;
        }

        if (v5)
        {
          return 0;
        }
      }

      if (*(a1 + v3 + 56))
      {
        if (!*(a2 + v3 + 56))
        {
          return 0;
        }
      }

      else
      {
        if (*(a1 + v3 + 48) == *(a2 + v3 + 48))
        {
          v6 = *(a2 + v3 + 56);
        }

        else
        {
          v6 = 1;
        }

        if (v6)
        {
          return 0;
        }
      }

      if (*(a1 + v3 + 72))
      {
        if (!*(a2 + v3 + 72))
        {
          return 0;
        }
      }

      else
      {
        if (*(a1 + v3 + 64) == *(a2 + v3 + 64))
        {
          v7 = *(a2 + v3 + 72);
        }

        else
        {
          v7 = 1;
        }

        if (v7)
        {
          return 0;
        }
      }

      if (*(a1 + v3 + 88))
      {
        if (!*(a2 + v3 + 88))
        {
          return 0;
        }
      }

      else
      {
        if (*(a1 + v3 + 80) == *(a2 + v3 + 80))
        {
          v8 = *(a2 + v3 + 88);
        }

        else
        {
          v8 = 1;
        }

        if (v8)
        {
          return 0;
        }
      }

      if (*(a1 + v3 + 104))
      {
        if (!*(a2 + v3 + 104))
        {
          return 0;
        }
      }

      else
      {
        if (*(a1 + v3 + 96) == *(a2 + v3 + 96))
        {
          v4 = *(a2 + v3 + 104);
        }

        else
        {
          v4 = 1;
        }

        if (v4)
        {
          return 0;
        }
      }

      v3 += 80;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1AACF11BC()
{
  swift_beginAccess();

  sub_1AACF04EC(v0);
}

uint64_t sub_1AACF1218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  type metadata accessor for SourceSignal();
  v5 = swift_dynamicCastClass();
  v6 = v5;
  if (v5)
  {
  }

  v9[6] = v6;
  MEMORY[0x1EEE9AC00](v5);
  v9[2] = v4;
  v9[3] = v3;
  sub_1AAF8FE74();
  sub_1AACD90D0(sub_1AACF130C, v9, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v7, &v10);
}

uint64_t sub_1AACF1340(uint64_t a1)
{
  v3 = *(*v1 + 344);
  v4 = sub_1AAF8FE74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15[-v6];
  v8 = *(v3 - 8);
  (*(v8 + 16))(&v15[-v6], a1, v3);
  (*(v8 + 56))(v7, 0, 1, v3);
  v9 = *(*v1 + 256);
  swift_beginAccess();
  (*(v5 + 40))(v1 + v9, v7, v4);
  swift_endAccess();
  sub_1AACDCA88();
  *(v1 + 16) = 1;
  result = swift_beginAccess();
  v11 = *(v1 + 32);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = v11 + 32;

    do
    {
      sub_1AACD9378(v13, v15);
      Strong = swift_weakLoadStrong();
      sub_1AACD93DC(v15);
      if (Strong)
      {
        *(Strong + 17) = 1;
      }

      v13 += 8;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_1AACF1548(uint64_t a1)
{
  v3 = sub_1AAF8DF14();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACF198C(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACDCB48(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - v16;
  v18 = *(v4 + 16);
  v25 = a1;
  v18(&v25 - v16, a1, v3, v15);
  (*(v4 + 56))(v17, 0, 1, v3);
  v19 = *(*v1 + 256);
  swift_beginAccess();
  v20 = *(v8 + 56);
  sub_1AACDCB7C(v17, v10, sub_1AACDCB48);
  sub_1AACDCB7C(v1 + v19, &v10[v20], sub_1AACDCB48);
  v21 = *(v4 + 48);
  if (v21(v10, 1, v3) == 1)
  {
    sub_1AACC9B18(v17, sub_1AACDCB48);
    if (v21(&v10[v20], 1, v3) == 1)
    {
      return sub_1AACC9B18(v10, sub_1AACDCB48);
    }

    goto LABEL_6;
  }

  sub_1AACDCB7C(v10, v13, sub_1AACDCB48);
  if (v21(&v10[v20], 1, v3) == 1)
  {
    sub_1AACC9B18(v17, sub_1AACDCB48);
    (*(v4 + 8))(v13, v3);
LABEL_6:
    sub_1AACC9B18(v10, sub_1AACF198C);
    return sub_1AACFE690(v25, sub_1AACDCB48, MEMORY[0x1E697E7E0], sub_1AACDCB48);
  }

  (*(v4 + 32))(v6, &v10[v20], v3);
  sub_1AACF1A0C(&qword_1ED9B5578, MEMORY[0x1E697E7E0]);
  v23 = sub_1AAF8F5F4();
  v24 = *(v4 + 8);
  v24(v6, v3);
  sub_1AACC9B18(v17, sub_1AACDCB48);
  v24(v13, v3);
  result = sub_1AACC9B18(v10, sub_1AACDCB48);
  if ((v23 & 1) == 0)
  {
    return sub_1AACFE690(v25, sub_1AACDCB48, MEMORY[0x1E697E7E0], sub_1AACDCB48);
  }

  return result;
}

void sub_1AACF19AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1AACF1A0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AACF1A54(uint64_t a1)
{
  v3 = sub_1AAF8CAA4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACF1ECC(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACF1E98(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - v16;
  v18 = *(v4 + 16);
  v25 = a1;
  v18(&v25 - v16, a1, v3, v15);
  (*(v4 + 56))(v17, 0, 1, v3);
  v19 = *(*v1 + 256);
  swift_beginAccess();
  v20 = *(v8 + 56);
  sub_1AACDCB7C(v17, v10, sub_1AACF1E98);
  sub_1AACDCB7C(v1 + v19, &v10[v20], sub_1AACF1E98);
  v21 = *(v4 + 48);
  if (v21(v10, 1, v3) == 1)
  {
    sub_1AACC9B18(v17, sub_1AACF1E98);
    if (v21(&v10[v20], 1, v3) == 1)
    {
      return sub_1AACC9B18(v10, sub_1AACF1E98);
    }

    goto LABEL_6;
  }

  sub_1AACDCB7C(v10, v13, sub_1AACF1E98);
  if (v21(&v10[v20], 1, v3) == 1)
  {
    sub_1AACC9B18(v17, sub_1AACF1E98);
    (*(v4 + 8))(v13, v3);
LABEL_6:
    sub_1AACC9B18(v10, sub_1AACF1ECC);
    return sub_1AACFE690(v25, sub_1AACF1E98, MEMORY[0x1E6969770], sub_1AACF1E98);
  }

  (*(v4 + 32))(v6, &v10[v20], v3);
  sub_1AACF1A0C(&qword_1ED9B6BA0, MEMORY[0x1E6969770]);
  v23 = sub_1AAF8F5F4();
  v24 = *(v4 + 8);
  v24(v6, v3);
  sub_1AACC9B18(v17, sub_1AACF1E98);
  v24(v13, v3);
  result = sub_1AACC9B18(v10, sub_1AACF1E98);
  if ((v23 & 1) == 0)
  {
    return sub_1AACFE690(v25, sub_1AACF1E98, MEMORY[0x1E6969770], sub_1AACF1E98);
  }

  return result;
}

uint64_t sub_1AACF1EEC(uint64_t a1)
{
  v3 = sub_1AAF8CBA4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACD265C();
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACF2330(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - v16;
  v18 = *(v4 + 16);
  v25 = a1;
  v18(&v25 - v16, a1, v3, v15);
  (*(v4 + 56))(v17, 0, 1, v3);
  v19 = *(*v1 + 256);
  swift_beginAccess();
  v20 = *(v8 + 56);
  sub_1AACDCB7C(v17, v10, sub_1AACF2330);
  sub_1AACDCB7C(v1 + v19, &v10[v20], sub_1AACF2330);
  v21 = *(v4 + 48);
  if (v21(v10, 1, v3) == 1)
  {
    sub_1AACC9B18(v17, sub_1AACF2330);
    if (v21(&v10[v20], 1, v3) == 1)
    {
      return sub_1AACC9B18(v10, sub_1AACF2330);
    }

    goto LABEL_6;
  }

  sub_1AACDCB7C(v10, v13, sub_1AACF2330);
  if (v21(&v10[v20], 1, v3) == 1)
  {
    sub_1AACC9B18(v17, sub_1AACF2330);
    (*(v4 + 8))(v13, v3);
LABEL_6:
    sub_1AACC9B18(v10, sub_1AACD265C);
    return sub_1AACFE690(v25, sub_1AACF2330, MEMORY[0x1E6969AE8], sub_1AACF2330);
  }

  (*(v4 + 32))(v6, &v10[v20], v3);
  sub_1AACF1A0C(&qword_1ED9B6B98, MEMORY[0x1E6969AE8]);
  v23 = sub_1AAF8F5F4();
  v24 = *(v4 + 8);
  v24(v6, v3);
  sub_1AACC9B18(v17, sub_1AACF2330);
  v24(v13, v3);
  result = sub_1AACC9B18(v10, sub_1AACF2330);
  if ((v23 & 1) == 0)
  {
    return sub_1AACFE690(v25, sub_1AACF2330, MEMORY[0x1E6969AE8], sub_1AACF2330);
  }

  return result;
}

uint64_t sub_1AACF2364()
{
  sub_1AACF2398();

  return swift_deallocClassInstance();
}

uint64_t sub_1AACF2398()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 72);
  v20[2] = *(v0 + 56);
  v20[3] = v2;
  v21 = *(v0 + 88);
  v20[0] = *(v0 + 24);
  v20[1] = v1;
  sub_1AACB9B38(v20);
  v3 = *(v0 + 144);
  v22[2] = *(v0 + 128);
  v22[3] = v3;
  v23 = *(v0 + 160);
  v4 = *(v0 + 112);
  v22[0] = *(v0 + 96);
  v22[1] = v4;
  sub_1AACB9B38(v22);
  v5 = *(v0 + 184);
  v6 = *(v0 + 216);
  v24[2] = *(v0 + 200);
  v24[3] = v6;
  v25 = *(v0 + 232);
  v24[0] = *(v0 + 168);
  v24[1] = v5;
  sub_1AACB9B38(v24);

  v7 = *(v0 + 264);
  v8 = *(v0 + 296);
  v26[2] = *(v0 + 280);
  v26[3] = v8;
  v27 = *(v0 + 312);
  v26[0] = *(v0 + 248);
  v26[1] = v7;
  sub_1AACB9B38(v26);
  v9 = *(v0 + 368);
  v28[2] = *(v0 + 352);
  v28[3] = v9;
  v29 = *(v0 + 384);
  v10 = *(v0 + 336);
  v28[0] = *(v0 + 320);
  v28[1] = v10;
  sub_1AACB9B38(v28);
  v11 = *(v0 + 440);
  v30[2] = *(v0 + 424);
  v30[3] = v11;
  v31 = *(v0 + 456);
  v12 = *(v0 + 408);
  v30[0] = *(v0 + 392);
  v30[1] = v12;
  sub_1AACB9B38(v30);
  v13 = *(v0 + 512);
  v32[2] = *(v0 + 496);
  v32[3] = v13;
  v33 = *(v0 + 528);
  v14 = *(v0 + 480);
  v32[0] = *(v0 + 464);
  v32[1] = v14;
  sub_1AACB9B38(v32);
  v15 = *(v0 + 584);
  v34[2] = *(v0 + 568);
  v34[3] = v15;
  v35 = *(v0 + 600);
  v16 = *(v0 + 552);
  v34[0] = *(v0 + 536);
  v34[1] = v16;
  sub_1AACB9B38(v34);
  v17 = *(v0 + 656);
  v36[2] = *(v0 + 640);
  v36[3] = v17;
  v37 = *(v0 + 672);
  v18 = *(v0 + 624);
  v36[0] = *(v0 + 608);
  v36[1] = v18;
  sub_1AACB9B38(v36);

  memcpy(__dst, (v0 + 696), 0x102uLL);
  sub_1AACBB254(__dst);
  sub_1AACF257C(v0 + 960);
  return v0;
}

uint64_t sub_1AACF2544()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AACF25D0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AACF25E8(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AACF2600@<X0>(uint64_t (*a1)(void, void, void, void, void, void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1(v2[2], v2[3], v2[4], v2[5], v2[6], v2[7]);
  *a2 = result;
  return result;
}

unint64_t sub_1AACF2648(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v18 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9BB0(0, &qword_1ED9B2A88, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v10 = *v6;
  v11 = *v8;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v10;
  v12[5] = v11;
  sub_1AACC9C70();
  v13 = swift_allocObject();
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0u;
  *(v13 + 120) = 0u;
  *(v13 + 136) = 0u;
  *(v13 + 152) = 0;

  v14 = sub_1AACBD668(v18);

  v15 = swift_allocObject();
  *(v15 + 16) = sub_1AACDE210;
  *(v15 + 24) = v12;
  v16 = *(v14 + 144);
  *(v14 + 144) = sub_1AACD8838;
  *(v14 + 152) = v15;

  sub_1AACB4A98(v16);

  return v14;
}

unint64_t sub_1AACF28C0(uint64_t a1, unsigned __int8 a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void))
{
  v8 = v5;
  v12 = *v5;
  result = sub_1AACB6398(a2);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 < v18 || (a3 & 1) != 0)
    {
      a5(v18, a3 & 1);
      result = sub_1AACB6398(a2);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = sub_1AAF905B4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      a4();
      result = v21;
    }
  }

  v23 = *v8;
  if ((v19 & 1) == 0)
  {
    v23[(result >> 6) + 8] |= 1 << result;
    *(v23[6] + result) = a2;
    *(v23[7] + 8 * result) = a1;
    v24 = v23[2];
    v17 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v17)
    {
      v23[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  *(v23[7] + 8 * result) = a1;
}

unint64_t sub_1AACF2A74(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v21 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AAF8CAA4();
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AAF8CBA4();
  v10 = a1[2];

  MEMORY[0x1AC598430](v11);
  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v12 = *v6;
  v13 = *v8;
  v14 = *v10;
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v12;
  v15[5] = v13;
  v15[6] = v14;
  sub_1AACC9BB0(0, &unk_1ED9B3210, &type metadata for AnyFormatStyle, type metadata accessor for Signal);
  v16 = swift_allocObject();
  *(v16 + 40) = 0u;
  *(v16 + 56) = 0u;
  *(v16 + 72) = 0;
  *(v16 + 80) = -1;
  *(v16 + 88) = 0;
  *(v16 + 96) = 0;

  v17 = sub_1AACBD668(v21);

  v18 = swift_allocObject();
  *(v18 + 16) = sub_1AAEB0210;
  *(v18 + 24) = v15;
  v19 = *(v17 + 88);
  *(v17 + 88) = sub_1AACD8838;
  *(v17 + 96) = v18;

  sub_1AACB4A98(v19);

  return v17;
}

unint64_t sub_1AACF2D68(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1AACE1760(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1AACF5A40(v14, a3 & 1);
      result = sub_1AACE1760(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1AAF905B4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1AAD96AE4();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

unint64_t sub_1AACF2EB4(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v21 = MEMORY[0x1E69E7CC0];
  type metadata accessor for CGSize(0);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v10 = a1[2];

  MEMORY[0x1AC598430](v11);
  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v12 = *v6;
  v13 = *v8;
  v14 = *v10;
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v12;
  v15[5] = v13;
  v15[6] = v14;
  sub_1AACF3140();
  v16 = swift_allocObject();
  v16[6] = 0;
  v16[7] = 0;
  v16[5] = 0;

  v17 = sub_1AACBD668(v21);

  v18 = swift_allocObject();
  *(v18 + 16) = sub_1AACDDFA4;
  *(v18 + 24) = v15;
  v19 = *(v17 + 48);
  *(v17 + 48) = sub_1AACD8838;
  *(v17 + 56) = v18;

  sub_1AACB4A98(v19);

  return v17;
}

void sub_1AACF3140()
{
  if (!qword_1ED9B31A8)
  {
    sub_1AACC9BB0(255, &qword_1ED9B2A88, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
    v0 = type metadata accessor for Signal();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B31A8);
    }
  }
}

unint64_t sub_1AACF31BC(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v21 = MEMORY[0x1E69E7CC0];
  sub_1AAF8CAA4();
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AAF8CBA4();
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9BB0(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
  v10 = a1[2];

  MEMORY[0x1AC598430](v11);
  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v12 = *v6;
  v13 = *v8;
  v14 = *v10;
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v12;
  v15[5] = v13;
  v15[6] = v14;
  sub_1AACC9BB0(0, &unk_1ED9B3210, &type metadata for AnyFormatStyle, type metadata accessor for Signal);
  v16 = swift_allocObject();
  *(v16 + 40) = 0u;
  *(v16 + 56) = 0u;
  *(v16 + 72) = 0;
  *(v16 + 80) = -1;
  *(v16 + 88) = 0;
  *(v16 + 96) = 0;

  v17 = sub_1AACBD668(v21);

  v18 = swift_allocObject();
  *(v18 + 16) = sub_1AACEA17C;
  *(v18 + 24) = v15;
  v19 = *(v17 + 88);
  *(v17 + 88) = sub_1AACD8800;
  *(v17 + 96) = v18;

  sub_1AACB4A98(v19);

  return v17;
}

unint64_t sub_1AACF34B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1AACC9BB0(0, &qword_1ED9B1770, &type metadata for AxisMarkPosition.Storage, type metadata accessor for Signal);
  v6 = swift_allocObject();
  *(v6 + 40) = 4;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  v7 = sub_1AACBD668(MEMORY[0x1E69E7CC0]);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1AAD131E8;
  *(v8 + 24) = v5;
  v9 = *(v7 + 48);
  *(v7 + 48) = sub_1AACD8838;
  *(v7 + 56) = v8;

  sub_1AACB4A98(v9);

  return v7;
}

unint64_t sub_1AACF35B8(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v24 = MEMORY[0x1E69E7CC0];
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  type metadata accessor for SgMeasurements();
  v10 = a1[2];

  MEMORY[0x1AC598430](v11);
  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v12 = a1[3];

  MEMORY[0x1AC598430](v13);
  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v14 = *v6;
  v15 = *v8;
  v16 = *v10;
  v17 = *v12;
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = v14;
  v18[5] = v15;
  v18[6] = v16;
  v18[7] = v17;
  sub_1AACF5D54(0, &qword_1ED9B1758, type metadata accessor for AxisMarkLayoutContext, type metadata accessor for Signal);
  v19 = swift_allocObject();
  v19[6] = 0;
  v19[7] = 0;
  v19[5] = 0;

  v20 = sub_1AACBD668(v24);

  v21 = swift_allocObject();
  *(v21 + 16) = sub_1AAD16D4C;
  *(v21 + 24) = v18;
  v22 = *(v20 + 48);
  *(v20 + 48) = sub_1AACD8800;
  *(v20 + 56) = v21;

  sub_1AACB4A98(v22);

  return v20;
}

unint64_t sub_1AACF38F4(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v21 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  type metadata accessor for AxisMarkLayoutContext();
  v10 = a1[2];

  MEMORY[0x1AC598430](v11);
  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v12 = *v6;
  v13 = *v8;
  v14 = *v10;
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v12;
  v15[5] = v13;
  v15[6] = v14;
  sub_1AACC9BB0(0, &qword_1ED9B1760, &type metadata for AxisLayoutInformation, type metadata accessor for Signal);
  v16 = swift_allocObject();
  *(v16 + 40) = 0u;
  *(v16 + 56) = 0u;
  *(v16 + 72) = 0u;
  *(v16 + 88) = 0u;
  *(v16 + 104) = 0;

  v17 = sub_1AACBD668(v21);

  v18 = swift_allocObject();
  *(v18 + 16) = sub_1AACE56C0;
  *(v18 + 24) = v15;
  v19 = *(v17 + 96);
  *(v17 + 96) = sub_1AACD8800;
  *(v17 + 104) = v18;

  sub_1AACB4A98(v19);

  return v17;
}

unint64_t sub_1AACF3C00(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v24 = MEMORY[0x1E69E7CC0];
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v10 = a1[2];

  MEMORY[0x1AC598430](v11);
  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  type metadata accessor for SgMeasurements();
  v12 = a1[3];

  MEMORY[0x1AC598430](v13);
  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v14 = *v6;
  v15 = *v8;
  v16 = *v10;
  v17 = *v12;
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = v14;
  v18[5] = v15;
  v18[6] = v16;
  v18[7] = v17;
  sub_1AACF5D54(0, &qword_1ED9B1750, type metadata accessor for AxisMarkRenderContext, type metadata accessor for Signal);
  v19 = swift_allocObject();
  v19[6] = 0;
  v19[7] = 0;
  v19[5] = 0;

  v20 = sub_1AACBD668(v24);

  v21 = swift_allocObject();
  *(v21 + 16) = sub_1AACE4154;
  *(v21 + 24) = v18;
  v22 = *(v20 + 48);
  *(v20 + 48) = sub_1AACD8838;
  *(v20 + 56) = v21;

  sub_1AACB4A98(v22);

  return v20;
}

unint64_t sub_1AACF3F38(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v24 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v10 = a1[2];

  MEMORY[0x1AC598430](v11);
  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v12 = a1[3];

  MEMORY[0x1AC598430](v13);
  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v14 = *v6;
  v15 = *v8;
  v16 = *v10;
  v17 = *v12;
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = v14;
  v18[5] = v15;
  v18[6] = v16;
  v18[7] = v17;
  sub_1AACF4278();
  v19 = swift_allocObject();
  *(v19 + 40) = 0u;
  *(v19 + 56) = 0u;
  *(v19 + 72) = 0u;
  *(v19 + 88) = 0u;
  *(v19 + 104) = 0u;
  *(v19 + 120) = 0;

  v20 = sub_1AACBD668(v24);

  v21 = swift_allocObject();
  *(v21 + 16) = sub_1AACE285C;
  *(v21 + 24) = v18;
  v22 = *(v20 + 112);
  *(v20 + 112) = sub_1AACD8838;
  *(v20 + 120) = v21;

  sub_1AACB4A98(v22);

  return v20;
}

void sub_1AACF4278()
{
  if (!qword_1ED9B1778)
  {
    sub_1AAD6D1F0(255, qword_1ED9B1B28, MEMORY[0x1E69E63B0], type metadata accessor for MarksDescriptor);
    v0 = type metadata accessor for Signal();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B1778);
    }
  }
}

unint64_t sub_1AACF42F4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = 0;
  v3[6] = 0;
  v3[7] = 0;
  v3[8] = 1;
  v3[10] = 0;
  v3[11] = 0;
  v3[9] = 0;
  v6 = sub_1AACBD668(a1);

  swift_unownedRetainStrong();

  swift_unownedRetain();

  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;
  v8 = *(v6 + 80);
  *(v6 + 80) = sub_1AAD1CCF8;
  *(v6 + 88) = v7;
  sub_1AACB4A98(v8);

  return v6;
}

void sub_1AACF43A8()
{
  if (!qword_1ED9B1768)
  {
    sub_1AACC9BB0(255, &qword_1ED9B3AF8, &type metadata for AxisCompositingLayer, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for Signal();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B1768);
    }
  }
}

unint64_t sub_1AACF4424(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v33 = MEMORY[0x1E69E7CC0];
  type metadata accessor for AxisMarkRenderContext();
  v4 = *a1;

  MEMORY[0x1AC598430](v5);
  if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9C1C(0, &qword_1ED9B4070, MEMORY[0x1E69E63B0], MEMORY[0x1E69E7DE0], type metadata accessor for ConcreteScale);
  v6 = a1[1];

  MEMORY[0x1AC598430](v7);
  if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  type metadata accessor for CGSize(0);
  v8 = a1[2];

  MEMORY[0x1AC598430](v9);
  if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v32 = a1[3];

  MEMORY[0x1AC598430](v10);
  if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACE49D8();
  v11 = a1[4];

  MEMORY[0x1AC598430](v12);
  if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9BB0(0, qword_1ED9B1B28, MEMORY[0x1E69E63B0], type metadata accessor for MarksDescriptor);
  v13 = a1[5];

  MEMORY[0x1AC598430](v14);
  if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9BB0(0, &qword_1ED9B3AF8, &type metadata for AxisCompositingLayer, MEMORY[0x1E69E6720]);
  v15 = a1[6];

  MEMORY[0x1AC598430](v16);
  if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v17 = *v4;
  v18 = *v6;
  v19 = *v8;
  v20 = *v32;
  v21 = *v11;
  v22 = *v13;
  v23 = *v15;
  v24 = swift_allocObject();
  v24[2] = a2;
  v24[3] = a3;
  v24[4] = v17;
  v24[5] = v18;
  v24[6] = v19;
  v24[7] = v20;
  v24[8] = v21;
  v24[9] = v22;
  v24[10] = v23;
  sub_1AACC9BB0(0, &unk_1ED9B31D0, &type metadata for SgNode, type metadata accessor for Signal);
  v25 = swift_allocObject();
  v25[6] = 0;
  v25[7] = 0;
  v25[5] = 0xF000000000000007;

  v26 = sub_1AACBD668(v33);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_1AACE48B0;
  *(v27 + 24) = v24;
  v28 = *(v26 + 48);
  *(v26 + 48) = sub_1AACD8838;
  *(v26 + 56) = v27;

  sub_1AACB4A98(v28);

  return v26;
}

unint64_t sub_1AACF4984(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v15 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v8 = *v6;
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v8;
  sub_1AACC9BB0(0, &qword_1ED9B1740, &type metadata for AnyPrimitivePlottableArray, type metadata accessor for Signal);
  v10 = swift_allocObject();
  *(v10 + 40) = 0;
  *(v10 + 48) = -1;
  *(v10 + 56) = 0;
  *(v10 + 64) = 0;

  v11 = sub_1AACBD668(v15);

  v12 = swift_allocObject();
  *(v12 + 16) = sub_1AAEB0184;
  *(v12 + 24) = v9;
  v13 = *(v11 + 56);
  *(v11 + 56) = sub_1AACD8800;
  *(v11 + 64) = v12;

  sub_1AACB4A98(v13);

  return v11;
}

uint64_t sub_1AACF4B88(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1AAF8FFB4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1AAF8FFB4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1AAD9B4FC();
          sub_1AAEB02DC(&qword_1EB4268A8, sub_1AAD9B4FC);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1AAEAD5BC(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1AACC9BB0(0, &qword_1ED9B1740, &type metadata for AnyPrimitivePlottableArray, type metadata accessor for Signal);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AACF4D48(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AACF5940(0, &qword_1ED9B16D0, sub_1AAD9B4FC, sub_1AACB62F8);
  v30 = a2;
  result = sub_1AAF90394();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_1AAF90694();
      MEMORY[0x1AC5992C0](v20);
      result = sub_1AAF906F4();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1AACF5004(uint64_t a1, uint64_t a2)
{
  sub_1AACC9B7C(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AACF5068(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v6[5] = 0;
  v6[6] = 0;
  v6[7] = 0;
  v11 = sub_1AACBD668(a1);

  swift_unownedRetainStrong();

  swift_unownedRetain();

  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v11;
  v14 = *(v11 + 48);
  v13 = *(v11 + 56);
  *(v11 + 48) = a5;
  *(v11 + 56) = v12;
  a6(v14, v13);

  return v11;
}

uint64_t sub_1AACF5174(uint64_t *a1, char a2, uint64_t *a3, uint64_t a4)
{
  v5 = a1[6];
  v6 = *a1;
  v7 = *(a1 + 8);
  v42 = *(a1 + 4);
  v43 = *(a1 + 80);
  v8 = v43;
  v9 = v42;
  v10 = v43 >> 5;
  if (v10 > 3)
  {
    if (v43 >> 5 > 6u)
    {
      v23 = (v5 >> 61) & 3;
      if (BYTE8(v42) > 1u)
      {
        v39 = a3;
        v36 = &v39;
        if (BYTE8(v42) == 2)
        {

          v41 = sub_1AAEA03BC(v9);
          v37 = &v41;
          v29 = swift_allocObject();
          *(v29 + 16) = v23;
          return sub_1AAEA179C(&v36, sub_1AAEB7BC0, v29);
        }

        else
        {

          v41 = sub_1AAEA03A4(v9);
          v37 = &v41;
          v31 = swift_allocObject();
          *(v31 + 16) = v23;
          return sub_1AAEA1554(&v36, sub_1AAEB7BB8, v31);
        }
      }

      else
      {
        v39 = a3;
        v36 = &v39;
        if (BYTE8(v42))
        {

          v41 = sub_1AAEA03D4(v9);
          v37 = &v41;
          v30 = swift_allocObject();
          *(v30 + 16) = v23;
          return sub_1AAEA19E8(&v36, sub_1AAEB7BC8, v30);
        }

        else
        {

          v41 = sub_1AAEA03EC(v9);
          v37 = &v41;
          v24 = swift_allocObject();
          *(v24 + 16) = v23;
          return sub_1AAEA1C44(&v36, sub_1AAEB7BD0, v24);
        }
      }
    }

    if (v10 == 5)
    {
      v41 = a3;
      v39 = &v41;

      sub_1AAEB7BD8(&v42, &v36);
      v36 = sub_1AAEAA090(v9, *(&v9 + 1), v8 & 0x1F);
      v40 = &v36;
      v20 = swift_allocObject();
      *(v20 + 16) = v6;
      *(v20 + 24) = v7;
      v21 = sub_1AAEA1098(&v39, sub_1AAEB7CA0, v20);
    }

    else
    {
      if (v10 != 6)
      {
        result = sub_1AAF902C4();
        __break(1u);
        return result;
      }

      v41 = a3;
      v39 = &v41;

      sub_1AAEB7BD8(&v42, &v36);
      v36 = sub_1AAEAA148(v9, *(&v9 + 1), v8 & 0x1F);
      v40 = &v36;
      v25 = swift_allocObject();
      *(v25 + 16) = v6;
      *(v25 + 24) = v7;
      v21 = sub_1AAEA12D4(&v39, sub_1AAEB7C34, v25);
    }

LABEL_23:
    v28 = v21;
    sub_1AAEB7C4C(&v42);
    return v28;
  }

  if (v43 >> 5 > 1u)
  {
    v41 = a3;
    v39 = &v41;
    if (v10 == 2)
    {

      sub_1AAEB7BD8(&v42, &v36);
      v36 = sub_1AAEA9ED8(v9, *(&v9 + 1), v8 & 0x1F);
      v40 = &v36;
      v22 = swift_allocObject();
      *(v22 + 16) = v6;
      *(v22 + 24) = v7;
      v21 = sub_1AAEA0BF0(&v39, sub_1AAEB7D00, v22);
    }

    else
    {

      sub_1AAEB7BD8(&v42, &v36);
      v36 = sub_1AAEA9FB4(v9, *(&v9 + 1), v8 & 0x1F);
      v40 = &v36;
      v27 = swift_allocObject();
      *(v27 + 16) = v6;
      *(v27 + 24) = v7;
      v21 = sub_1AAEA0E30(&v39, sub_1AAEB7CB8, v27);
    }

    goto LABEL_23;
  }

  if (v10)
  {
    v41 = a3;
    v39 = &v41;

    sub_1AAEB7BD8(&v42, &v36);
    v36 = sub_1AAEA9DFC(v9, *(&v9 + 1), v8 & 0x1F);
    v40 = &v36;
    v26 = swift_allocObject();
    *(v26 + 16) = v6;
    *(v26 + 24) = v7;
    v21 = sub_1AACF2648(&v39, sub_1AACDE384, v26);
    goto LABEL_23;
  }

  v13 = sub_1AACF263C(v42);
  v14 = sub_1AACF263C(*(&v42 + 1));
  v41 = a4;
  v16 = (v5 & 0x6000000000000000) == 0 && a2 == 1;
  v35 = v13;
  v36 = &v41;
  v34 = v14;
  v37 = &v35;
  v38 = &v34;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 17) = v16;

  v32 = sub_1AACF2EB4(&v36, sub_1AACDDFBC, v17);
  v33 = a3;
  v39 = &v33;
  v40 = &v32;
  v18 = swift_allocObject();
  *(v18 + 16) = v6;
  *(v18 + 24) = v7;

  return sub_1AACF2648(&v39, sub_1AACDE380, v18);
}

uint64_t sub_1AACF57BC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  swift_beginAccess();
  v6 = *(v2 + 24);
  if (*(v6 + 16))
  {
    v7 = sub_1AACC9B78(a1);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 16 * v7);
      swift_endAccess();
      result = (*(*v9 + 200))(a2, a2);
      if (result)
      {
        return result;
      }

      __break(1u);
    }
  }

  swift_endAccess();

  v11 = sub_1AACC6620(a1);
  v13 = v12;

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v4 + 24);
  *(v4 + 24) = 0x8000000000000000;
  sub_1AACC6B20(v11, v13, a1, isUniquelyReferenced_nonNull_native);
  *(v4 + 24) = v16;
  swift_endAccess();
  result = (*(*v11 + 200))(a2, a2);
  if (result)
  {
    v15 = result;

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1AACF5940(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = sub_1AAF903B4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1AACF59C0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = sub_1AAF903B4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1AACF5A40(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AACF5CC4();
  v30 = a2;
  result = sub_1AAF90394();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_1AAF90694();
      MEMORY[0x1AC5992C0](v20);
      result = sub_1AAF906F4();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_1AACF5CC4()
{
  if (!qword_1ED9B2968)
  {
    sub_1AAD9B62C(255, &unk_1ED9B3210, &type metadata for AnyFormatStyle, type metadata accessor for Signal);
    sub_1AACFDD38();
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2968);
    }
  }
}

void sub_1AACF5D54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1AACF5DB8(unint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_1AAF8FFB4();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v8 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v8, v7);
    result = v8 + v7;
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = sub_1AAF8FFB4();
  v9 = __OFADD__(v17, v7);
  result = v17 + v7;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 < 1)
  {
LABEL_9:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1AACF5EC0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1AAF8FFB4();
LABEL_9:
  result = sub_1AAF90134();
  *v1 = result;
  return result;
}

uint64_t sub_1AACF5FEC()
{
  sub_1AACF6044();

  return swift_deallocClassInstance();
}

uint64_t sub_1AACF6044()
{

  v1 = *(*v0 + 256);
  v2 = sub_1AAF8FE74();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1AACB4A98(*(v0 + *(*v0 + 264)));
  return v0;
}

uint64_t sub_1AACF6100()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + v6, v4 | 7);
}

uint64_t sub_1AACF61B4()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for ChartScrollView();
  v3 = *(*(v2 - 1) + 80);
  v4 = *(*(v2 - 1) + 64);
  v5 = (v3 + 32) & ~v3;
  v6 = v0 + v5;
  (*(*(v1 - 8) + 8))(v0 + v5 + v2[9], v1);
  v7 = v0 + v5 + v2[10];
  if (*(v7 + 104) != 255)
  {
    sub_1AACE3E8C(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32), *(v7 + 40), *(v7 + 48), *(v7 + 56), *(v7 + 64));
  }

  v8 = v6 + v2[11];
  if (*(v8 + 104) != 255)
  {
    sub_1AACE3E8C(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32), *(v8 + 40), *(v8 + 48), *(v8 + 56), *(v8 + 64));
  }

  v9 = v6 + v2[12];
  if (*(v9 + 90))
  {
    v10 = *(v9 + 40);
    if (v10 >> 8 <= 0xFE)
    {
      if ((v10 & 0x100) != 0)
      {
        sub_1AACB634C(v6 + v2[12]);
      }

      else
      {
        sub_1AACCA728(*v9, *(v9 + 8), *(v9 + 16));
      }
    }

    v11 = *(v9 + 88);
    if (v11 >> 8 <= 0xFE)
    {
      if ((v11 & 0x100) != 0)
      {
        sub_1AACB634C(v9 + 48);
      }

      else
      {
        sub_1AACCA728(*(v9 + 48), *(v9 + 56), *(v9 + 64));
      }
    }
  }

  else
  {
  }

  v12 = v6 + v2[13];
  if (*(v12 + 80))
  {
    if (*(v12 + 64))
    {
      sub_1AACB634C(v12 + 40);
    }
  }

  else
  {
  }

  v13 = v6 + v2[14];
  v14 = *(v13 + 16);
  if (v14 != 255)
  {
    sub_1AACCA728(*v13, *(v13 + 8), v14);
  }

  v15 = v6 + v2[15];
  v16 = *(v15 + 16);
  if (v16 != 255)
  {
    sub_1AACCA728(*v15, *(v15 + 8), v16);
  }

  return MEMORY[0x1EEE6BDD0](v0, v5 + v4, v3 | 7);
}

uint64_t sub_1AACF6410()
{
  v1 = *(v0 + 24);
  sub_1AAF8FE74();
  v2 = (sub_1AAF8EF74() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(*v2 + 64);

  v6 = v2[10];
  v7 = *(v1 - 8);
  if (!(*(v7 + 48))(v0 + v4 + v6, 1, v1))
  {
    (*(v7 + 8))(v0 + v4 + v6, v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AACF6548(void (*a1)(void))
{

  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t sub_1AACF6598()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AACF65D8()
{
  if (v0[2])
  {
  }

  if (v0[4])
  {
  }

  if (v0[6])
  {
  }

  if (v0[8])
  {
  }

  if (v0[10])
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1AACF6658()
{
  if (*(v0 + 56) <= 2u)
  {
    sub_1AACB634C(v0 + 16);
  }

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

unint64_t sub_1AACF669C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 72) = 1;
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  v6 = sub_1AACBD668(a1);

  swift_unownedRetainStrong();

  swift_unownedRetain();

  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;
  v8 = *(v6 + 80);
  *(v6 + 80) = sub_1AACDCC90;
  *(v6 + 88) = v7;
  sub_1AACB4A98(v8);

  return v6;
}

unint64_t sub_1AACF6754(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v32 = MEMORY[0x1E69E7CC0];
  type metadata accessor for CGSize(0);
  v4 = *a1;

  MEMORY[0x1AC598430](v5);
  if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v6 = a1[1];

  MEMORY[0x1AC598430](v7);
  if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  type metadata accessor for SgMeasurements();
  v8 = a1[2];

  MEMORY[0x1AC598430](v9);
  if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v10 = a1[3];

  MEMORY[0x1AC598430](v11);
  if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9BB0(0, &qword_1ED9B4100, &type metadata for StackContext, MEMORY[0x1E69E6720]);
  v12 = a1[4];

  MEMORY[0x1AC598430](v13);
  if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9BB0(0, qword_1ED9B3CE8, &type metadata for SubPositionContext, MEMORY[0x1E69E6720]);
  v14 = a1[5];

  MEMORY[0x1AC598430](v15);
  if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v16 = v32;
  v17 = *v4;
  v18 = *v6;
  v19 = *v8;
  v20 = *v10;
  v21 = *v12;
  v22 = *v14;
  v23 = swift_allocObject();
  v23[2] = a2;
  v23[3] = a3;
  v23[4] = v17;
  v23[5] = v18;
  v23[6] = v19;
  v23[7] = v20;
  v23[8] = v21;
  v23[9] = v22;
  sub_1AACF5D54(0, &qword_1ED9B3180, sub_1AACC9E68, type metadata accessor for Signal);
  v24 = swift_allocObject();
  sub_1AACF6BF0(__src);
  memcpy(v24 + 5, __src, 0x152uLL);
  v24[48] = 0;
  v24[49] = 0;

  v25 = sub_1AACBD668(v16);

  v26 = swift_allocObject();
  *(v26 + 16) = sub_1AACDEAC8;
  *(v26 + 24) = v23;
  v27 = *(v25 + 384);
  *(v25 + 384) = sub_1AACD8800;
  *(v25 + 392) = v26;

  sub_1AACB4A98(v27);

  return v25;
}