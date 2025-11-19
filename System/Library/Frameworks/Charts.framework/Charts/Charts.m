uint64_t sub_1AACA9FB4()
{
  result = type metadata accessor for BuilderConditional.Storage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AACAA024()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AACAA0AC()
{
  type metadata accessor for ChartContainerValues();
  result = sub_1AAF90274();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for ChartContainerValues()
{
  result = qword_1ED9B3AE8;
  if (!qword_1ED9B3AE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AACAA194(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1AACAA1E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AACAA2EC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1AACAA2F8()
{
  result = qword_1ED9B6058[0];
  if (!qword_1ED9B6058[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9B6058);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for MakeCanonicalScale3D(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1AACAA37C()
{
  sub_1AAF8DF74();
  sub_1AACAA3E4();
  return swift_getWitnessTable();
}

unint64_t sub_1AACAA3E4()
{
  result = qword_1ED9B4D90;
  if (!qword_1ED9B4D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B4D90);
  }

  return result;
}

unsigned int *sub_1AACAA440(unsigned int *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[2] - 8);
  v6 = *(v5 + 84);
  v7 = *(a4[3] - 8);
  v8 = *(v7 + 84);
  if (v6 <= v8)
  {
    v9 = *(v7 + 84);
  }

  else
  {
    v9 = *(v5 + 84);
  }

  v10 = a4[4];
  v11 = *(v10 - 8);
  v12 = *(*(a4[2] - 8) + 64);
  v13 = *(v7 + 80);
  v14 = *(*(a4[3] - 8) + 64);
  v15 = *(v11 + 80);
  if (v9 <= *(v11 + 84))
  {
    v16 = *(v11 + 84);
  }

  else
  {
    v16 = v9;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  v18 = ((v14 + v15 + ((v13 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13)) & ~v15) + *(*(v10 - 8) + 64);
  v19 = a3 >= v17;
  v20 = a3 - v17;
  if (v20 != 0 && v19)
  {
    if (v18 <= 3)
    {
      v25 = ((v20 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
      if (HIWORD(v25))
      {
        v21 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v21 = v26;
        }

        else
        {
          v21 = 0;
        }
      }
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  if (v17 < a2)
  {
    v22 = ~v17 + a2;
    if (v18 >= 4)
    {
      v23 = result;
      bzero(result, v18);
      result = v23;
      *v23 = v22;
      v24 = 1;
      if (v21 > 1)
      {
        goto LABEL_17;
      }

      goto LABEL_55;
    }

    v24 = (v22 >> (8 * v18)) + 1;
    if (v18)
    {
      v27 = v22 & ~(-1 << (8 * v18));
      v28 = result;
      bzero(result, v18);
      result = v28;
      if (v18 != 3)
      {
        if (v18 == 2)
        {
          *v28 = v27;
          if (v21 > 1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          *v28 = v22;
          if (v21 > 1)
          {
LABEL_17:
            if (v21 == 2)
            {
              *(result + v18) = v24;
            }

            else
            {
              *(result + v18) = v24;
            }

            return result;
          }
        }

LABEL_55:
        if (v21)
        {
          *(result + v18) = v24;
        }

        return result;
      }

      *v28 = v27;
      *(v28 + 2) = BYTE2(v27);
    }

    if (v21 > 1)
    {
      goto LABEL_17;
    }

    goto LABEL_55;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *(result + v18) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_38;
    }

    *(result + v18) = 0;
LABEL_37:
    if (!a2)
    {
      return result;
    }

    goto LABEL_38;
  }

  if (!v21)
  {
    goto LABEL_37;
  }

  *(result + v18) = 0;
  if (!a2)
  {
    return result;
  }

LABEL_38:
  if (v6 == v17)
  {
    v29 = *(v5 + 56);

    return v29();
  }

  else
  {
    v30 = ((result + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((v16 & 0x80000000) != 0)
    {
      v32 = (v30 + v13 + 8) & ~v13;
      if (v8 == v17)
      {
        v33 = *(v7 + 56);

        return v33(v32);
      }

      else
      {
        v34 = *(v11 + 56);
        v35 = (v32 + v14 + v15) & ~v15;

        return v34(v35);
      }
    }

    else
    {
      if ((a2 & 0x80000000) != 0)
      {
        v31 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v31 = a2 - 1;
      }

      *v30 = v31;
    }
  }

  return result;
}

uint64_t sub_1AACAA7F0(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = *(a3[3] - 8);
  v8 = *(v7 + 84);
  if (v6 <= v8)
  {
    v9 = *(v7 + 84);
  }

  else
  {
    v9 = *(v5 + 84);
  }

  v10 = a3[4];
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = *(*(a3[2] - 8) + 64);
  v14 = *(v7 + 80);
  v15 = *(*(a3[3] - 8) + 64);
  v16 = *(v11 + 80);
  if (v9 <= v12)
  {
    v17 = *(v11 + 84);
  }

  else
  {
    v17 = v9;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = a2 - v18;
  if (a2 <= v18)
  {
    goto LABEL_34;
  }

  v20 = ((v15 + v16 + ((v14 + ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14)) & ~v16) + *(*(v10 - 8) + 64);
  v21 = 8 * v20;
  if (v20 <= 3)
  {
    v24 = ((v19 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v24))
    {
      v22 = *(a1 + v20);
      if (!v22)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v24 > 0xFF)
    {
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v24 < 2)
    {
LABEL_34:
      if (v6 == v18)
      {
        v28 = *(v5 + 48);

        return v28();
      }

      else
      {
        v29 = ((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((v17 & 0x80000000) != 0)
        {
          v31 = (v29 + v14 + 8) & ~v14;
          if (v8 == v18)
          {
            v32 = *(v7 + 48);

            return v32(v31);
          }

          else
          {
            v33 = *(v11 + 48);
            v34 = (v31 + v15 + v16) & ~v16;

            return v33(v34, v12, v10);
          }
        }

        else
        {
          v30 = *v29;
          if (v30 >= 0xFFFFFFFF)
          {
            LODWORD(v30) = -1;
          }

          return (v30 + 1);
        }
      }
    }
  }

  v22 = *(a1 + v20);
  if (!*(a1 + v20))
  {
    goto LABEL_34;
  }

LABEL_21:
  v25 = (v22 - 1) << v21;
  if (v20 > 3)
  {
    v25 = 0;
  }

  if (v20)
  {
    if (v20 <= 3)
    {
      v26 = ((v15 + v16 + ((v14 + ((v13 + 7) & 0xFFFFFFF8) + 8) & ~v14)) & ~v16) + *(*(v10 - 8) + 64);
    }

    else
    {
      v26 = 4;
    }

    if (v26 > 2)
    {
      if (v26 == 3)
      {
        v27 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v27 = *a1;
      }
    }

    else if (v26 == 1)
    {
      v27 = *a1;
    }

    else
    {
      v27 = *a1;
    }
  }

  else
  {
    v27 = 0;
  }

  return v18 + (v27 | v25) + 1;
}

uint64_t sub_1AACAAAF0(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5[0] = a4;
  v5[8] = a1;
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  return MEMORY[0x1AC597820](v5, a2, &type metadata for ChartAxisModifier, a3);
}

uint64_t sub_1AACAAB60(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SgShapeStyle();
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SgRule(0);
  sub_1AACAAD4C(a3 + *(v9 + 36), v8, type metadata accessor for SgShapeStyle);
  if (*&v8[*(v6 + 44)])
  {
    v11[1] = *a1;

    sub_1AAF8F014();
    sub_1AAF8DD54();
    sub_1AAD12C10(v12);
    sub_1AAD1C7D8(v13);
    sub_1AAF8DDA4();
    sub_1AAD12C10(v13);

    sub_1AACAADB4(v8, type metadata accessor for SgShapeStyle);
  }

  else
  {
    sub_1AAD1C7D8(v13);
    sub_1AAF8DDA4();
    sub_1AAD12C10(v13);
    return sub_1AACAADB4(v8, type metadata accessor for SgShapeStyle);
  }
}

uint64_t sub_1AACAAD4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AACAADB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AACAAE1C(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v68 = a2;
  v5 = type metadata accessor for AnyVectorizedRenderer(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v65 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SgRectangle(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v64 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SgSector(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v63 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for SgPoint(0);
  MEMORY[0x1EEE9AC00](v62);
  v66 = (&v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for SgGroup(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SgPath(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = (&v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for SgArea(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for SgLine(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for SgRule(0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACAB6D8(a3);
  sub_1AACAB6D8(a3);
  v67 = a1;
  result = sub_1AAF8DCE4();
  switch(a3 >> 60)
  {
    case 1uLL:
      v42 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v43 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);

      sub_1AAF6632C(v67, v68, v42, v43);

    case 2uLL:
      sub_1AAD117A0((a3 & 0xFFFFFFFFFFFFFFFLL) + 16, v70);
      sub_1AAF5E9CC(v67, v68);
      return sub_1AAF14C40(v70);
    case 3uLL:
      v34 = swift_projectBox();
      v17 = v66;
      sub_1AACAAD4C(v34, v66, type metadata accessor for SgPoint);
      v35 = *(v62 + 36);
      sub_1AAF54C08();
      if (*(v17 + v35 + *(type metadata accessor for SgShapeStyle() + 36)))
      {
        v69[0] = *v67;

        sub_1AAF8F014();
        sub_1AAF8DD54();
        sub_1AAD12C10(v70);
        sub_1AAF54D38(v69, v17, v68);

        v36 = type metadata accessor for SgPoint;
        v37 = v17;
        goto LABEL_17;
      }

      sub_1AAF54D38(v67, v17, v68);
      v40 = type metadata accessor for SgPoint;
      goto LABEL_21;
    case 4uLL:
      v44 = swift_projectBox();
      v32 = v64;
      sub_1AACAAD4C(v44, v64, type metadata accessor for SgRectangle);
      sub_1AAD0DC3C(v67);
      v33 = type metadata accessor for SgRectangle;
      goto LABEL_19;
    case 5uLL:
      v60 = swift_projectBox();
      v32 = v63;
      sub_1AACAAD4C(v60, v63, type metadata accessor for SgSector);
      sub_1AAF56494(v67);
      v33 = type metadata accessor for SgSector;
      goto LABEL_19;
    case 6uLL:
      v41 = swift_projectBox();
      sub_1AACAAD4C(v41, v26, type metadata accessor for SgRule);
      sub_1AACAD2A4(v67);
      v29 = type metadata accessor for SgRule;
      v30 = v26;
      return sub_1AACAADB4(v30, v29);
    case 7uLL:
      v50 = swift_projectBox();
      sub_1AACAAD4C(v50, v23, type metadata accessor for SgLine);
      sub_1AAF56CF0();
      v52 = v51;
      v54 = v53;
      v56 = v55;
      v58 = v57;
      v59 = *(v21 + 32);
      if (*&v23[v59 + *(type metadata accessor for SgShapeStyle() + 36)])
      {
        v69[0] = *v67;

        sub_1AAF8F014();
        sub_1AAF8DD54();
        sub_1AAD12C10(v70);
        sub_1AAF56F10(v69, v23, v52, v54, v56, v58);

        v36 = type metadata accessor for SgLine;
        v37 = v23;
LABEL_17:
        sub_1AACAADB4(v37, v36);
      }

      else
      {
        sub_1AAF56F10(v67, v23, v52, v54, v56, v58);
        v29 = type metadata accessor for SgLine;
        v30 = v23;
        return sub_1AACAADB4(v30, v29);
      }

    case 8uLL:
      v38 = swift_projectBox();
      sub_1AACAAD4C(v38, v20, type metadata accessor for SgArea);
      sub_1AAF5587C(v67);
      v29 = type metadata accessor for SgArea;
      v30 = v20;
      return sub_1AACAADB4(v30, v29);
    case 9uLL:
      v39 = swift_projectBox();
      sub_1AACAAD4C(v39, v17, type metadata accessor for SgPath);
      sub_1AAF55E88(v67);
      v40 = type metadata accessor for SgPath;
LABEL_21:
      v29 = v40;
      v30 = v17;
      return sub_1AACAADB4(v30, v29);
    case 0xAuLL:
      v45 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x90);
      v70[7] = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x80);
      v70[8] = v45;
      v46 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0xB0);
      v70[9] = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0xA0);
      v70[10] = v46;
      v47 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
      v70[3] = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      v70[4] = v47;
      v48 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
      v70[5] = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
      v70[6] = v48;
      v49 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v70[0] = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v70[1] = v49;
      v70[2] = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      sub_1AAD1B82C(v70, v69);
      sub_1AACAD8BC();
      return sub_1AAD1C8F0(v70);
    case 0xBuLL:
    case 0xCuLL:
    case 0xEuLL:
      return result;
    case 0xDuLL:
      v31 = swift_projectBox();
      v32 = v65;
      sub_1AACAAD4C(v31, v65, type metadata accessor for AnyVectorizedRenderer);
      sub_1AAF3215C(v67, v68);
      v33 = type metadata accessor for AnyVectorizedRenderer;
LABEL_19:
      v29 = v33;
      v30 = v32;
      return sub_1AACAADB4(v30, v29);
    default:
      v28 = swift_projectBox();
      sub_1AACAAD4C(v28, v14, type metadata accessor for SgGroup);
      sub_1AACABF14(v67, v68);
      v29 = type metadata accessor for SgGroup;
      v30 = v14;
      return sub_1AACAADB4(v30, v29);
  }
}

uint64_t sub_1AACAB6D8(uint64_t a1)
{
  v2 = type metadata accessor for SgPath(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v60 = (&v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for SgArea(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v59 = (&v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for SgLine(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v58 = (&v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for SgRule(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v57 = (&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for SgSector(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = (&v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for SgVectorized(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v56 = (&v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for RulesRenderer(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v55 = (&v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for PointsRenderer(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for RectanglesRenderer(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for AnyVectorizedRenderer.MarkRenderer(0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for AnyVectorizedRenderer(0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for SgRectangle(0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = (&v55 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = type metadata accessor for SgPoint(0);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = (&v55 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for SgGroup(0);
  v35 = MEMORY[0x1EEE9AC00](a1);
  v37 = (&v55 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = 0;
  switch(v35 >> 60)
  {
    case 1uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
      return *((v35 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    case 2uLL:
      sub_1AAD117A0((v35 & 0xFFFFFFFFFFFFFFFLL) + 16, v61);
      v38 = v61[0];
      sub_1AAF14C40(v61);
      return v38;
    case 3uLL:
      v48 = swift_projectBox();
      sub_1AACAAD4C(v48, v34, type metadata accessor for SgPoint);
      v38 = *v34;
      v44 = type metadata accessor for SgPoint;
      goto LABEL_17;
    case 4uLL:
      v51 = swift_projectBox();
      sub_1AACAAD4C(v51, v31, type metadata accessor for SgRectangle);
      v38 = *v31;
      v41 = type metadata accessor for SgRectangle;
      v42 = v31;
      goto LABEL_18;
    case 5uLL:
      v46 = swift_projectBox();
      sub_1AACAAD4C(v46, v12, type metadata accessor for SgSector);
      v38 = *v12;
      v41 = type metadata accessor for SgSector;
      v42 = v12;
      goto LABEL_18;
    case 6uLL:
      v50 = swift_projectBox();
      v34 = v57;
      sub_1AACAAD4C(v50, v57, type metadata accessor for SgRule);
      v38 = *v34;
      v44 = type metadata accessor for SgRule;
      goto LABEL_17;
    case 7uLL:
      v43 = swift_projectBox();
      v34 = v58;
      sub_1AACAAD4C(v43, v58, type metadata accessor for SgLine);
      v38 = *v34;
      v44 = type metadata accessor for SgLine;
      goto LABEL_17;
    case 8uLL:
      v45 = swift_projectBox();
      v34 = v59;
      sub_1AACAAD4C(v45, v59, type metadata accessor for SgArea);
      v38 = *v34;
      v44 = type metadata accessor for SgArea;
      goto LABEL_17;
    case 9uLL:
      v49 = swift_projectBox();
      v34 = v60;
      sub_1AACAAD4C(v49, v60, type metadata accessor for SgPath);
      v38 = *v34;
      v44 = type metadata accessor for SgPath;
      goto LABEL_17;
    case 0xDuLL:
      v39 = swift_projectBox();
      sub_1AACAAD4C(v39, v28, type metadata accessor for AnyVectorizedRenderer);
      sub_1AAF67C60(v28, v25, type metadata accessor for AnyVectorizedRenderer.MarkRenderer);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          sub_1AAF67C60(v25, v19, type metadata accessor for PointsRenderer);
          v38 = *(v19 + 7);
          v41 = type metadata accessor for PointsRenderer;
          v42 = v19;
        }

        else
        {
          sub_1AAF67C60(v25, v22, type metadata accessor for RectanglesRenderer);
          v38 = *(v22 + 7);
          v41 = type metadata accessor for RectanglesRenderer;
          v42 = v22;
        }

LABEL_18:
        sub_1AACAADB4(v42, v41);
        return v38;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v34 = v55;
        sub_1AAF67C60(v25, v55, type metadata accessor for RulesRenderer);
        v38 = v34[7];
        v44 = type metadata accessor for RulesRenderer;
LABEL_17:
        v41 = v44;
        v42 = v34;
        goto LABEL_18;
      }

      v53 = swift_projectBox();
      v54 = v56;
      sub_1AACAAD4C(v53, v56, type metadata accessor for SgVectorized);
      v38 = *v54;
      sub_1AACAADB4(v54, type metadata accessor for SgVectorized);

      return v38;
    case 0xEuLL:
      return v38;
    default:
      v47 = swift_projectBox();
      sub_1AACAAD4C(v47, v37, type metadata accessor for SgGroup);
      v38 = *v37;
      v41 = type metadata accessor for SgGroup;
      v42 = v37;
      goto LABEL_18;
  }
}

uint64_t sub_1AACABF14(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  sub_1AAD0DA28(0, &qword_1ED9B67A0, type metadata accessor for SgClipRect, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v34 = &v33 - v7;
  v8 = sub_1AAF8DDD4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *a1;
  v12 = type metadata accessor for SgGroup(0);

  sub_1AAF8DE44();
  sub_1AAF8DE54();
  v33 = v12;
  v13 = *(v12 + 36);
  v35 = v3;
  v14 = *(v3 + v13);
  v15 = *(v14 + 16);
  if (v15)
  {
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = v14 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v20 = *(v17 + 56);
    do
    {
      v16(v11, v19, v8);
      sub_1AAF8DE94();
      (*(v17 - 8))(v11, v8);
      v19 += v20;
      --v15;
    }

    while (v15);
  }

  v22 = v33;
  v21 = v34;
  v23 = v35;
  sub_1AACAC30C(v35 + *(v33 + 24), v34, &qword_1ED9B67A0, type metadata accessor for SgClipRect);
  v24 = type metadata accessor for SgClipRect(0);
  v25 = (*(*(v24 - 8) + 48))(v21, 1, v24);
  if (v25 == 1)
  {
    v26 = sub_1AACAC4BC(v21, &qword_1ED9B67A0, type metadata accessor for SgClipRect);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v25);
    *(&v33 - 2) = v21;
    sub_1AAF8E964();
    sub_1AACAADB4(v21, type metadata accessor for SgClipRect);
    sub_1AAF8DD54();
    v26 = sub_1AAD12C10(v40);
  }

  if (*(v23 + *(v22 + 40)) == 1)
  {
    MEMORY[0x1EEE9AC00](v26);
    *(&v33 - 2) = v23;
    *(&v33 - 1) = a2;
    sub_1AAF8DEC4();
  }

  else
  {
    sub_1AAD12A5C(*(v23 + 8), &v37);
    v27 = *(v37 + 2);
    if (v27)
    {
      v28 = v38;
      v29 = v37 + 40;
      do
      {
        v30 = *(v29 - 1);
        v31 = *v29;
        v29 += 16;
        v37 = v30;
        v38 = v31;
        v28(&v36, &v37);
        sub_1AACAAE1C(&v39, a2, v36);

        --v27;
      }

      while (v27);
    }
  }
}

uint64_t sub_1AACAC30C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1AAD0DA28(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AACAC38C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1AAE15B48(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AACAC3FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AACAC45C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AACAC4BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1AAD0DA28(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AACAC540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_1AAF8E244();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

double sub_1AACAC5B8(uint64_t a1)
{
  v62 = type metadata accessor for SgPath(0);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for SgArea(0);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for SgLine(0);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for SgRule(0);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for SgSector(0);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SgVectorized(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v52 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RulesRenderer(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v51 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PointsRenderer(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v50 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RectanglesRenderer(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = (&v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for AnyVectorizedRenderer.MarkRenderer(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AnyVectorizedRenderer(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for SgRectangle(0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for SgPoint(0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for SgGroup(0);
  v29 = MEMORY[0x1EEE9AC00](a1);
  v31 = &v50 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = 0.0;
  switch(v29 >> 60)
  {
    case 1uLL:
      return *((v29 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    case 2uLL:
      sub_1AAD117A0((v29 & 0xFFFFFFFFFFFFFFFLL) + 16, v63);
      v32 = v64;
      sub_1AAF14C40(v63);
      return v32;
    case 3uLL:
      v38 = swift_projectBox();
      sub_1AACAAD4C(v38, v27, type metadata accessor for SgPoint);
      v32 = *&v27[*(v25 + 40)];
      v34 = type metadata accessor for SgPoint;
      v35 = v27;
      goto LABEL_22;
    case 4uLL:
      v43 = swift_projectBox();
      sub_1AACAAD4C(v43, v24, type metadata accessor for SgRectangle);
      v32 = *&v24[*(v22 + 48)];
      v34 = type metadata accessor for SgRectangle;
      v35 = v24;
      goto LABEL_22;
    case 5uLL:
      v44 = swift_projectBox();
      v40 = v53;
      sub_1AACAAD4C(v44, v53, type metadata accessor for SgSector);
      v32 = *(v40 + *(v54 + 60));
      v41 = type metadata accessor for SgSector;
      goto LABEL_21;
    case 6uLL:
      v42 = swift_projectBox();
      v40 = v55;
      sub_1AACAAD4C(v42, v55, type metadata accessor for SgRule);
      v32 = *(v40 + *(v56 + 40));
      v41 = type metadata accessor for SgRule;
      goto LABEL_21;
    case 7uLL:
      v46 = swift_projectBox();
      v40 = v57;
      sub_1AACAAD4C(v46, v57, type metadata accessor for SgLine);
      v32 = *(v40 + *(v58 + 36));
      v41 = type metadata accessor for SgLine;
      goto LABEL_21;
    case 8uLL:
      v39 = swift_projectBox();
      v40 = v59;
      sub_1AACAAD4C(v39, v59, type metadata accessor for SgArea);
      v32 = *(v40 + *(v60 + 36));
      v41 = type metadata accessor for SgArea;
      goto LABEL_21;
    case 9uLL:
      v45 = swift_projectBox();
      v40 = v61;
      sub_1AACAAD4C(v45, v61, type metadata accessor for SgPath);
      v32 = *(v40 + *(v62 + 28));
      v41 = type metadata accessor for SgPath;
      goto LABEL_21;
    case 0xAuLL:
      return *((v29 & 0xFFFFFFFFFFFFFFFLL) + 0xB8);
    case 0xBuLL:
      return *((v29 & 0xFFFFFFFFFFFFFFFLL) + 0x128);
    case 0xCuLL:
      return *((v29 & 0xFFFFFFFFFFFFFFFLL) + 0x268);
    case 0xDuLL:
      v36 = swift_projectBox();
      sub_1AACAAD4C(v36, v21, type metadata accessor for AnyVectorizedRenderer);
      sub_1AAF67C60(v21, v18, type metadata accessor for AnyVectorizedRenderer.MarkRenderer);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          sub_1AAF67C60(v18, v15, type metadata accessor for RectanglesRenderer);
          v32 = v15[8];
          v34 = type metadata accessor for RectanglesRenderer;
          v35 = v15;
LABEL_22:
          sub_1AACAADB4(v35, v34);
          return v32;
        }

        v40 = v50;
        sub_1AAF67C60(v18, v50, type metadata accessor for PointsRenderer);
        v32 = *(v40 + 64);
        v41 = type metadata accessor for PointsRenderer;
LABEL_21:
        v34 = v41;
        v35 = v40;
        goto LABEL_22;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v40 = v51;
        sub_1AAF67C60(v18, v51, type metadata accessor for RulesRenderer);
        v32 = *(v40 + 64);
        v41 = type metadata accessor for RulesRenderer;
        goto LABEL_21;
      }

      v48 = swift_projectBox();
      v49 = v52;
      sub_1AACAAD4C(v48, v52, type metadata accessor for SgVectorized);
      v32 = *(v49 + 24);
      sub_1AACAADB4(v49, type metadata accessor for SgVectorized);

      return v32;
    case 0xEuLL:
      return v32;
    default:
      v33 = swift_projectBox();
      sub_1AACAAD4C(v33, v31, type metadata accessor for SgGroup);
      v32 = *&v31[*(v28 + 32)];
      v34 = type metadata accessor for SgGroup;
      v35 = v31;
      goto LABEL_22;
  }
}

uint64_t sub_1AACACEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1AAF8DE34();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACAD248(a1, v19);
  if (v20)
  {
    sub_1AACBB198(v19, v17);
    sub_1AACAEF68(v17, v16);
    sub_1AAD45E1C(0, &qword_1ED9B2778);
    if (swift_dynamicCast())
    {
      sub_1AAF8DE14();
    }

    else if ((*(a1 + 41) & 1) != 0 || (*(a2 + 32) & 1) == 0)
    {
      sub_1AACBB42C(v17, v18);
      v11 = sub_1AAF8E354();
      v15[1] = v15;
      v12 = *(v11 - 8);
      MEMORY[0x1EEE9AC00](v11);
      v14 = v15 - v13;
      sub_1AAF8D864();
      swift_getWitnessTable();
      sub_1AAF8DE24();
      (*(v12 + 8))(v14, v11);
    }

    else
    {
      sub_1AACBB42C(v17, v18);
      sub_1AAF8DE24();
    }

    (*(v7 + 32))(a3, v9, v6);
    return sub_1AACB634C(v17);
  }

  else
  {
    sub_1AAF8DE14();
  }
}

uint64_t sub_1AACAD2A4(void *a1)
{
  v34 = sub_1AAF8DE34();
  v3 = *(v34 - 8);
  v4 = MEMORY[0x1EEE9AC00](v34);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v34 - v7;
  sub_1AAD0DA28(0, &qword_1ED9B54F8, MEMORY[0x1E6981E38], MEMORY[0x1E69E6720]);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v34 - v13;
  v15 = type metadata accessor for SgShapeStyle();
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(type metadata accessor for SgRule(0) + 36);
  v35 = v1;
  sub_1AACAAD4C(v1 + v18, v17, type metadata accessor for SgShapeStyle);
  memset(v36, 0, sizeof(v36));
  v37 = 1;
  if (v17[11] != 1.0)
  {
    sub_1AAF8DE44();
    sub_1AAF8DE54();
    sub_1AACAC30C(v17 + *(v15 + 32), v12, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
    v21 = sub_1AAF8F154();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v12, 1, v21) == 1)
    {
      sub_1AACAC4BC(v12, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
    }

    else
    {
      v28 = sub_1AAF2E844();
      (*(v22 + 8))(v12, v21);
      if ((v28 & 0x100000000) == 0)
      {
        sub_1AAF8DEA4();
        sub_1AAF8DEB4();
        sub_1AACACEAC(v17, v36, v8);
        sub_1AAF8DE74();
        sub_1AACAAB60(a1, v6, v35);
        v29 = *(v3 + 8);
        v30 = v34;
        v29(v6, v34);
        v29(v8, v30);
        sub_1AAF8DEB4();
LABEL_12:
        sub_1AAF8DE54();
        return sub_1AACAADB4(v17, type metadata accessor for SgShapeStyle);
      }
    }

    sub_1AACACEAC(v17, v36, v8);
    sub_1AAF8DE74();
    sub_1AACAAB60(a1, v6, v35);
    v31 = *(v3 + 8);
    v32 = v34;
    v31(v6, v34);
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
    sub_1AACAAB60(a1, v6, v35);
    v26 = *(v3 + 8);
    v27 = v34;
    v26(v6, v34);
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
  sub_1AACAAB60(a1, v6, v35);
  v24 = *(v3 + 8);
  v25 = v34;
  v24(v6, v34);
  v24(v8, v25);
  sub_1AAF8DEB4();
  return sub_1AACAADB4(v17, type metadata accessor for SgShapeStyle);
}

uint64_t sub_1AACAD8BC()
{
  v1 = v0;
  sub_1AAD0DA28(0, &qword_1ED9B2E80, MEMORY[0x1E697E798], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v24 - v3;
  v5 = sub_1AAF8DD44();
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v25 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AAF8DE34();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1AAF8DD24();
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AAF8DF14();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAF8DED4();
  type metadata accessor for RenderParams(0);
  (*(v12 + 104))(v14, *MEMORY[0x1E697E7D8], v11);
  v15 = sub_1AAF8DF04();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    sub_1AAF8DE84();
    sub_1AAF8DD04();
  }

  sub_1AAF8DD04();
  sub_1AAF8DDE4();
  v16 = v1[7];
  if (v16 < 0)
  {
    v30 = *v1;
    sub_1AAF8DD34();
    v21 = v26;
    v20 = v27;
    if ((*(v26 + 48))(v4, 1, v27) == 1)
    {
      sub_1AACAC4BC(v4, &qword_1ED9B2E80, MEMORY[0x1E697E798]);
    }

    else
    {
      v22 = v25;
      (*(v21 + 32))(v25, v4, v20);
      sub_1AAF8DD94();
      (*(v21 + 8))(v22, v20);
    }
  }

  else
  {
    v17 = v1[5];
    v18 = v1[6];
    v19 = v1[9];

    sub_1AACD7304(v17, v18, v16 & 1);

    sub_1AAF8DE64();
    if (v19)
    {
      v30 = v19;

      sub_1AAF8DE24();
      sub_1AAF8DD14();
    }

    sub_1AAF8DD84();
    sub_1AAD04750(v17, v18, v16 & 1);

    (*(v28 + 8))(v10, v29);
  }

  return sub_1AAF8DEE4();
}

void sub_1AACADE04()
{
  sub_1AACAA1E4(319, &unk_1ED9B3898, &type metadata for ModifierForegroundStyle, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1AACAA1E4(319, qword_1ED9B3EA8, &type metadata for ModifierSymbol, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1AACAA1E4(319, &qword_1ED9B3D30, &type metadata for ModifierSymbolSize, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1AACAA1E4(319, &qword_1ED9B3D78, &type metadata for ModifierLineStyle, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1AACAE1F4(319, &qword_1ED9B2B00, sub_1AACAE258, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1AACAA1E4(319, &qword_1ED9B4438, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1AACAA1E4(319, &qword_1ED9B2BF8, MEMORY[0x1E697FA58], MEMORY[0x1E69E6720]);
              if (v6 <= 0x3F)
              {
                sub_1AACAE1F4(319, &qword_1ED9B5558, MEMORY[0x1E697F488], MEMORY[0x1E69E6720]);
                if (v7 <= 0x3F)
                {
                  sub_1AACAA1E4(319, &qword_1ED9B2B78, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
                  if (v8 <= 0x3F)
                  {
                    sub_1AACAA1E4(319, &qword_1ED9B2A98, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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

void sub_1AACAE0E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1AAF8FE74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1AACAE13C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1AAF8FE74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1AACAE190(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1AACAE1F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1AACAE258()
{
  if (!qword_1ED9B2B08)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED9B2B08);
    }
  }
}

uint64_t sub_1AACAE2C4()
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
        result = swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_1AACAE398(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1AACAE3E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1AACAE438()
{
  sub_1AACAE398(319, qword_1ED9B52F0, &type metadata for SgShapeStyle.Shading, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1AACAE398(319, &qword_1ED9B2F20, MEMORY[0x1E697DD48], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1AACAE398(319, qword_1ED9B3000, &type metadata for SgSymbol, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1AACAE398(319, qword_1ED9B4178, &type metadata for SgSymbolSize, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1AACAE398(319, &qword_1ED9B4438, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1AACAE398(319, &qword_1ED9B2BF8, MEMORY[0x1E697FA58], MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1AACAE0E8(319, &qword_1ED9B5558, MEMORY[0x1E697F488]);
              if (v6 <= 0x3F)
              {
                sub_1AACAE0E8(319, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
                if (v7 <= 0x3F)
                {
                  sub_1AACAE0E8(319, &qword_1ED9B2B00, sub_1AACAE258);
                  if (v8 <= 0x3F)
                  {
                    sub_1AACAE398(319, qword_1ED9B3D88, &type metadata for AnyPlottableValue, MEMORY[0x1E69E6720]);
                    if (v9 <= 0x3F)
                    {
                      sub_1AACAE398(319, &qword_1ED9B2B78, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
                      if (v10 <= 0x3F)
                      {
                        sub_1AACAE398(319, &qword_1ED9B2A98, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
                        if (v11 <= 0x3F)
                        {
                          sub_1AACAE398(319, &qword_1ED9B3A10, &type metadata for VectorizedProperties, MEMORY[0x1E69E6720]);
                          if (v12 <= 0x3F)
                          {
                            swift_cvw_initStructMetadataWithLayoutString();
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
  }
}

uint64_t sub_1AACAE7C0(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    result = swift_checkMetadataState();
    if (v3 > 0x3F)
    {
      return result;
    }

LABEL_13:
    v19[7] = 0;
    v20 = result;
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  MEMORY[0x1EEE9AC00](a1);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (v4)
  {
    v7 = 0;
    v8 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (v4 < 4)
    {
      goto LABEL_10;
    }

    if (&v6[-v8] < 0x20)
    {
      goto LABEL_10;
    }

    v7 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = (v8 + 16);
    v10 = v6 + 16;
    v11 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v12 = *v9;
      *(v10 - 1) = *(v9 - 1);
      *v10 = v12;
      v9 += 2;
      v10 += 2;
      v11 -= 4;
    }

    while (v11);
    if (v4 != v7)
    {
LABEL_10:
      v13 = v4 - v7;
      v14 = 8 * v7;
      v15 = &v6[8 * v7];
      v16 = (v8 + v14);
      do
      {
        v17 = *v16++;
        *v15++ = v17;
        --v13;
      }

      while (v13);
    }
  }

  result = swift_getTupleTypeMetadata();
  if (v18 <= 0x3F)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1AACAE904()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t static AxisMarkValues.stride(by:count:roundLowerBound:roundUpperBound:calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1AACAF0D8();
  v13 = *(v12 + 48);
  v14 = *(v12 + 64);
  v15 = sub_1AAF8CB94();
  (*(*(v15 - 8) + 16))(a6, a1, v15);
  *(a6 + v13) = a2;
  sub_1AACAEB18(a5, a6 + v14, &qword_1ED9B6B90, MEMORY[0x1E6969AE8]);
  type metadata accessor for AxisMarkValues.Storage.Stride(0);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for AxisMarkValues.Storage(0);
  v17 = *(v16 + 24);
  *(a6 + *(v16 + 20)) = a3;
  *(a6 + v17) = a4;
  v18 = *(*(v16 - 8) + 56);

  return v18(a6, 0, 1, v16);
}

uint64_t sub_1AACAEB18(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1AACAF184(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AACAEB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t ForEach<>.init(_:id:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1AAF8EF84();

  v7 = *(*(a5 - 8) + 8);

  return v7(a1, a5);
}

{
  sub_1AAF8EF84();

  v7 = *(*(a5 - 8) + 8);

  return v7(a1, a5);
}

uint64_t sub_1AACAECA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AxisMarkValues.Storage.Stride(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_1AACAED5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v12 = *(a4 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13();
  (*(a6 + 8))(&v18, v15);
  v16 = v18;
  LOBYTE(v18) = a7;
  v19 = 3;
  v20 = v16;
  v21 = MEMORY[0x1E69E7CC0];
  MEMORY[0x1AC597820](&v18, a3, &type metadata for ChartAxisModifier, a5);

  return (*(v12 + 8))(v15, a4);
}

uint64_t sub_1AACAEED4()
{
  sub_1AAF8DF74();
  sub_1AACAA2F8();
  return swift_getWitnessTable();
}

uint64_t sub_1AACAEF68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1AACAF000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AxisMarkValues.Storage.Stride(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

void sub_1AACAF0D8()
{
  if (!qword_1ED9B4448)
  {
    sub_1AAF8CB94();
    sub_1AACAF184(255, &qword_1ED9B6B90, MEMORY[0x1E6969AE8], MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ED9B4448);
    }
  }
}

void sub_1AACAF184(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1AACAF1E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1AACAF24C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1AACAF2D0(uint64_t result, uint64_t a2, uint64_t a3, __int16 a4)
{
  if (HIBYTE(a4) != 255)
  {
    return sub_1AACAF2E4(result, a2, a3, a4, HIBYTE(a4));
  }

  return result;
}

uint64_t sub_1AACAF2E4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {
    if (a5 >= 2u)
    {
      return result;
    }
  }

  if (a5 == 2)
  {
  }

  if (a5 == 3)
  {
    return sub_1AADC68F0(a2, a3, a4);
  }

  return result;
}

uint64_t sub_1AACAF328(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFBu)
  {
    return sub_1AADC67CC(result, a2, a3);
  }

  return result;
}

uint64_t sub_1AACAF33C(uint64_t result, uint64_t a2, uint64_t a3, __int16 a4)
{
  if (HIBYTE(a4) != 255)
  {
    return sub_1AACAF350(result, a2, a3, a4, HIBYTE(a4));
  }

  return result;
}

uint64_t sub_1AACAF350(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {
    if (a5 >= 2u)
    {
      return result;
    }
  }

  if (a5 == 2)
  {
  }

  if (a5 == 3)
  {
    return sub_1AADC691C(a2, a3, a4);
  }

  return result;
}

uint64_t sub_1AACAF3B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = sub_1AACB0534(a1, AssociatedTypeWitness, v6, v5);
  *a2 = v9;
  return result;
}

void sub_1AACAF444(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {
    sub_1AACB6194(0, &qword_1ED9B28A0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  }

  else
  {

    sub_1AAF90484();
  }
}

__n128 sub_1AACAF500(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t storeEnumTagSinglePayload for AxisTick.Length.Storage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AACAF554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v10 = *a2;
  v11 = *(a2 + 8);
  (*(a6 + 8))(&v20, a4, a6);
  v17 = v20;
  v18 = v21;
  v19 = v22;
  if (v11 == 255)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10;
  }

  sub_1AACB0818(a7, &v17, 0, 0, 0xFCu, v12, v11, a3, a5);
  v13 = v17;
  v14 = v18;
  v15 = v19;

  return sub_1AACAF33C(v13, *(&v13 + 1), v14, v15);
}

uint64_t ClosedRange<>._makeScaleDomain()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(a1 + 16);
  sub_1AACAF444(v8, v8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  swift_allocObject();
  v11 = sub_1AAF8F854();
  v13 = v12;
  v14 = *(v9 + 16);
  v14(v12, v4, v8);
  v14(v13 + v10, v4 + *(a1 + 36), v8);
  sub_1AAF8F914();
  v15 = sub_1AACAF550(v11, v8, a2);
  LOBYTE(v8) = v16;

  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = v15;
  *(a3 + 24) = 0;
  *(a3 + 25) = v8;
  return result;
}

uint64_t sub_1AACAF784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = (*(AssociatedConformanceWitness + 16))(&v27, AssociatedTypeWitness, AssociatedConformanceWitness);
  switch(v27)
  {
    case 1:
      v26 = a1;
      MEMORY[0x1EEE9AC00](v8);
      v24 = a2;
      v25 = a3;
      v9 = sub_1AAF8F914();
      WitnessTable = swift_getWitnessTable();
      v12 = MEMORY[0x1E69E63B0];
      v13 = MEMORY[0x1E69E73E0];
      v14 = MEMORY[0x1E69E7410];
      v15 = sub_1AAE8A9C4;
      return sub_1AACB00E0(v15, v23, v9, v12, v13, WitnessTable, v14, v11);
    case 2:
      v26 = a1;
      MEMORY[0x1EEE9AC00](v8);
      v24 = a2;
      v25 = a3;
      v9 = sub_1AAF8F914();
      WitnessTable = swift_getWitnessTable();
      v12 = MEMORY[0x1E69E63B0];
      v13 = MEMORY[0x1E69E73E0];
      v14 = MEMORY[0x1E69E7410];
      v15 = sub_1AAE8A9A4;
      return sub_1AACB00E0(v15, v23, v9, v12, v13, WitnessTable, v14, v11);
    case 3:
      v26 = a1;
      MEMORY[0x1EEE9AC00](v8);
      v24 = a2;
      v25 = a3;
      v9 = sub_1AAF8F914();
      WitnessTable = swift_getWitnessTable();
      v12 = MEMORY[0x1E69E63B0];
      v13 = MEMORY[0x1E69E73E0];
      v14 = MEMORY[0x1E69E7410];
      v15 = sub_1AAE8A97C;
      return sub_1AACB00E0(v15, v23, v9, v12, v13, WitnessTable, v14, v11);
    case 4:
      v26 = a1;
      MEMORY[0x1EEE9AC00](v8);
      v24 = a2;
      v25 = a3;
      v9 = sub_1AAF8F914();
      WitnessTable = swift_getWitnessTable();
      v12 = MEMORY[0x1E69E63B0];
      v13 = MEMORY[0x1E69E73E0];
      v14 = MEMORY[0x1E69E7410];
      v15 = sub_1AAE8A954;
      return sub_1AACB00E0(v15, v23, v9, v12, v13, WitnessTable, v14, v11);
    case 5:
      v26 = a1;
      MEMORY[0x1EEE9AC00](v8);
      v24 = a2;
      v25 = a3;
      v9 = sub_1AAF8F914();
      WitnessTable = swift_getWitnessTable();
      v12 = MEMORY[0x1E69E63B0];
      v13 = MEMORY[0x1E69E73E0];
      v14 = MEMORY[0x1E69E7410];
      v15 = sub_1AAE8A934;
      return sub_1AACB00E0(v15, v23, v9, v12, v13, WitnessTable, v14, v11);
    case 6:
      v26 = a1;
      MEMORY[0x1EEE9AC00](v8);
      v24 = a2;
      v25 = a3;
      v9 = sub_1AAF8F914();
      WitnessTable = swift_getWitnessTable();
      v12 = MEMORY[0x1E69E63B0];
      v13 = MEMORY[0x1E69E73E0];
      v14 = MEMORY[0x1E69E7410];
      v15 = sub_1AAE8A914;
      return sub_1AACB00E0(v15, v23, v9, v12, v13, WitnessTable, v14, v11);
    case 7:
      v26 = a1;
      MEMORY[0x1EEE9AC00](v8);
      v24 = a2;
      v25 = a3;
      v9 = sub_1AAF8F914();
      WitnessTable = swift_getWitnessTable();
      v12 = MEMORY[0x1E69E63B0];
      v13 = MEMORY[0x1E69E73E0];
      v14 = MEMORY[0x1E69E7410];
      v15 = sub_1AAE8A8F4;
      return sub_1AACB00E0(v15, v23, v9, v12, v13, WitnessTable, v14, v11);
    case 8:
      v26 = a1;
      MEMORY[0x1EEE9AC00](v8);
      v24 = a2;
      v25 = a3;
      v9 = sub_1AAF8F914();
      WitnessTable = swift_getWitnessTable();
      v12 = MEMORY[0x1E69E63B0];
      v13 = MEMORY[0x1E69E73E0];
      v14 = MEMORY[0x1E69E7410];
      v15 = sub_1AAE8A8CC;
      return sub_1AACB00E0(v15, v23, v9, v12, v13, WitnessTable, v14, v11);
    case 9:
      v26 = a1;
      MEMORY[0x1EEE9AC00](v8);
      v24 = a2;
      v25 = a3;
      v9 = sub_1AAF8F914();
      WitnessTable = swift_getWitnessTable();
      v12 = MEMORY[0x1E69E63B0];
      v13 = MEMORY[0x1E69E73E0];
      v14 = MEMORY[0x1E69E7410];
      v15 = sub_1AAE8A8A4;
      return sub_1AACB00E0(v15, v23, v9, v12, v13, WitnessTable, v14, v11);
    case 10:
      v26 = a1;
      MEMORY[0x1EEE9AC00](v8);
      v24 = a2;
      v25 = a3;
      v9 = sub_1AAF8F914();
      WitnessTable = swift_getWitnessTable();
      v12 = MEMORY[0x1E69E63B0];
      v13 = MEMORY[0x1E69E73E0];
      v14 = MEMORY[0x1E69E7410];
      v15 = sub_1AAE8A884;
      return sub_1AACB00E0(v15, v23, v9, v12, v13, WitnessTable, v14, v11);
    case 11:
      v26 = a1;
      MEMORY[0x1EEE9AC00](v8);
      v24 = a2;
      v25 = a3;
      v9 = sub_1AAF8F914();
      WitnessTable = swift_getWitnessTable();
      v12 = MEMORY[0x1E69E63B0];
      v13 = MEMORY[0x1E69E73E0];
      v14 = MEMORY[0x1E69E7410];
      v15 = sub_1AAE8A864;
      return sub_1AACB00E0(v15, v23, v9, v12, v13, WitnessTable, v14, v11);
    case 12:
      v26 = a1;
      MEMORY[0x1EEE9AC00](v8);
      v24 = a2;
      v25 = a3;
      v9 = sub_1AAF8F914();
      WitnessTable = swift_getWitnessTable();
      v12 = MEMORY[0x1E69E63B0];
      v13 = MEMORY[0x1E69E73E0];
      v14 = MEMORY[0x1E69E7410];
      v15 = sub_1AACB0B28;
      return sub_1AACB00E0(v15, v23, v9, v12, v13, WitnessTable, v14, v11);
    case 13:
      v26 = a1;
      MEMORY[0x1EEE9AC00](v8);
      v24 = a2;
      v25 = a3;
      v20 = sub_1AAF8F914();
      v21 = swift_getWitnessTable();
      return sub_1AACB00E0(sub_1AACAF3A0, v23, v20, MEMORY[0x1E69E63B0], MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v22);
    case 14:
      v26 = a1;
      MEMORY[0x1EEE9AC00](v8);
      v24 = a2;
      v25 = a3;
      v16 = sub_1AAF8F914();
      v17 = swift_getWitnessTable();
      return sub_1AACB00E0(sub_1AAE8A7E4, v23, v16, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v17, MEMORY[0x1E69E7410], v18);
    default:
      v26 = a1;
      MEMORY[0x1EEE9AC00](v8);
      v24 = a2;
      v25 = a3;
      v9 = sub_1AAF8F914();
      WitnessTable = swift_getWitnessTable();
      v12 = MEMORY[0x1E69E63B0];
      v13 = MEMORY[0x1E69E73E0];
      v14 = MEMORY[0x1E69E7410];
      v15 = sub_1AAE8A9E4;
      return sub_1AACB00E0(v15, v23, v9, v12, v13, WitnessTable, v14, v11);
  }
}

uint64_t sub_1AACB00E0(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1AAF8FB34();
  if (!v19)
  {
    return sub_1AAF8F894();
  }

  v41 = v19;
  v45 = sub_1AAF90224();
  v32 = sub_1AAF90234();
  sub_1AAF901D4();
  result = sub_1AAF8FB24();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1AAF8FC84();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1AAF90214();
      result = sub_1AAF8FBB4();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AACB0534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v23 = a3;
  sub_1AACECC70(0, &qword_1ED9B2738, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v9 = sub_1AAF8CA64();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v22 - v17;
  (*(a4 + 24))(v23, a4);
  (*(v14 + 16))(&v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v18, a2);
  v19 = swift_dynamicCast();
  v20 = *(v10 + 56);
  if (v19)
  {
    v20(v8, 0, 1, v9);
    (*(v10 + 32))(v13, v8, v9);
    sub_1AAF8C854();
    (*(v10 + 8))(v13, v9);
    return (*(v14 + 8))(v18, a2);
  }

  v20(v8, 1, 1, v9);
  result = sub_1AAE8A194(v8);
  if (v15 == 8)
  {
    return (*(v14 + 8))(v18, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AACB0818(char a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  v13 = *a2;
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  LOBYTE(v18) = a1;
  *(&v18 + 1) = a6;
  LOBYTE(v19) = a7;
  *(&v19 + 1) = v13;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  *v21 = v16;
  *&v21[8] = a3;
  *&v21[16] = a4;
  v21[24] = a5;
  sub_1AACAF2D0(v13, v14, v15, v16);
  sub_1AACAF328(a3, a4, a5);
  MEMORY[0x1AC597820](&v18, a8, &type metadata for ChartScaleModifier, a9);
  v22[2] = v20;
  v23[0] = *v21;
  *(v23 + 9) = *&v21[9];
  v22[0] = v18;
  v22[1] = v19;
  return sub_1AACB098C(v22);
}

uint64_t Array<A>._makeScaleDomain()@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{

  v7 = sub_1AACAF550(v6, a1, a2);
  LOBYTE(a1) = v8;

  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = v7;
  *(a3 + 24) = 0;
  *(a3 + 25) = a1;
  return result;
}

__n128 sub_1AACB0968(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1AACB09D0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00]();
  result = (*(v8 + 24))(v9, v8);
  if (v7 == *(*(a2 - 8) + 64))
  {
    (*(*(a2 - 8) + 16))(a3, &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
    return (*(v6 + 8))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1AACB0BA8@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

void *sub_1AACB0BB4@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for RenderBasedChartView();
  sub_1AACB0C3C(v2, v4);
  return memcpy(a1, v4, 0x129uLL);
}

uint64_t sub_1AACB0C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1AACB1128(a1);
  sub_1AACB6294(0, &qword_1ED9B44B0, type metadata accessor for ChartModel, MEMORY[0x1E6981E98]);
  sub_1AAF8F1D4();
  v6 = *(*&v54[0] + 216);

  if (!v6)
  {
    __break(1u);
    goto LABEL_23;
  }

  sub_1AACD8DD8();
  swift_beginAccess();
  if (*(v6 + 72))
  {
LABEL_23:
    result = sub_1AAF902C4();
    __break(1u);
    return result;
  }

  v25.val[0] = *(v6 + 56);
  v25.val[1] = *(v6 + 40);

  sub_1AAF8F1D4();
  v7 = *(*&v54[0] + 336);

  if (v7)
  {
    sub_1AACD8DD8();
    swift_beginAccess();
    v8 = *(v7 + 40);
    if (v8)
    {

      goto LABEL_7;
    }

    goto LABEL_23;
  }

  v8 = 0;
LABEL_7:
  sub_1AAE2F91C(a1, v56);
  if (v57 == 1 || (v9 = v56[0], sub_1AACEC574(v56, &qword_1ED9B3888, &type metadata for ChartLegendConfiguration), v9 == 3))
  {
    v9 = 0;
  }

  sub_1AAE2F91C(a1, v58);
  if (v59 == 1 || (v10 = v58[1], sub_1AACEC574(v58, &qword_1ED9B3888, &type metadata for ChartLegendConfiguration), v10 == 9))
  {
    v10 = 2;
  }

  v22 = v10;
  sub_1AAE2F91C(a1, v60);
  v20 = v9;
  if (v64 == 1)
  {
    v23 = 0;
    v24 = 0;
    v11 = 1;
  }

  else
  {
    v23 = v61;
    v24 = v62;
    v11 = v63;
    sub_1AACEC574(v60, &qword_1ED9B3888, &type metadata for ChartLegendConfiguration);
  }

  sub_1AAE2F91C(a1, v65);
  if (v68 == 1)
  {
    v21 = 0;
    v12 = 1;
  }

  else
  {
    v21 = v66;
    v12 = v67;
    sub_1AACEC574(v65, &qword_1ED9B3888, &type metadata for ChartLegendConfiguration);
  }

  v41 = v11 & 1;
  v40 = v12 & 1;
  sub_1AACFF9B8(v3, v8, v20, v22, *(a1 + 16), *(a1 + 24), &v27);
  v51 = v36;
  v52 = v37;
  v53[0] = v38[0];
  *(v53 + 9) = *(v38 + 9);
  v48 = v33;
  v49 = v34;
  v50 = v35;
  v44 = v29;
  v45 = v30;
  v46 = v31;
  v47 = v32;
  v42 = v27;
  v43 = v28;
  v54[9] = v36;
  v54[10] = v37;
  v55[0] = v38[0];
  *(v55 + 9) = *(v38 + 9);
  v54[6] = v33;
  v54[7] = v34;
  v54[8] = v35;
  v54[2] = v29;
  v54[3] = v30;
  v54[4] = v31;
  v54[5] = v32;
  v54[0] = v27;
  v54[1] = v28;
  sub_1AAD00998(&v42, v26, sub_1AACCBE34);
  sub_1AAD00EF8(v54, sub_1AACCBE34);

  *(&v39[9] + 7) = v51;
  *(&v39[10] + 7) = v52;
  *(&v39[11] + 7) = v53[0];
  v39[12] = *(v53 + 9);
  *(&v39[5] + 7) = v47;
  *(&v39[6] + 7) = v48;
  *(&v39[7] + 7) = v49;
  *(&v39[8] + 7) = v50;
  *(&v39[1] + 7) = v43;
  *(&v39[2] + 7) = v44;
  *(&v39[3] + 7) = v45;
  *(&v39[4] + 7) = v46;
  *(v39 + 7) = v42;
  if (qword_1ED9B6620 != -1)
  {
    swift_once();
  }

  v13 = qword_1ED9C3950;
  v14 = a2;
  v69 = v25;
  vst2q_f64(v14, v69);
  v14 += 4;
  v15 = v39[11];
  *(a2 + 265) = v39[12];
  v69.val[1] = v39[8];
  *(a2 + 217) = v39[9];
  *(a2 + 233) = v39[10];
  *(a2 + 249) = v15;
  v16 = v39[4];
  *(a2 + 153) = v39[5];
  v17 = v39[7];
  *(a2 + 169) = v39[6];
  *(a2 + 185) = v17;
  *(a2 + 201) = v69.val[1];
  v69.val[1] = v39[0];
  *(a2 + 89) = v39[1];
  v18 = v39[3];
  *(a2 + 105) = v39[2];
  *(a2 + 121) = v18;
  *v14 = v22;
  *(a2 + 40) = v23;
  *(a2 + 48) = v24;
  *(a2 + 56) = v11 & 1;
  *(a2 + 64) = v21;
  *(a2 + 72) = v12 & 1;
  *(a2 + 137) = v16;
  *(a2 + 73) = v69.val[1];
  *(a2 + 288) = v13;
  *(a2 + 296) = 0;
}

uint64_t sub_1AACB1128(uint64_t a1)
{
  sub_1AACB6294(0, &qword_1ED9B5518, MEMORY[0x1E6980F98], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v93 = &v86 - v4;
  v92 = type metadata accessor for ChartEnvironmentValues(0);
  MEMORY[0x1EEE9AC00](v92);
  v95 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for ChartInternal();
  MEMORY[0x1EEE9AC00](v88);
  v89 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v94 = &v86 - v8;
  v9 = sub_1AACB1C5C(MEMORY[0x1E69E7CC0]);
  v90 = a1;
  v91 = v1;
  v10 = sub_1AAE2FC84(a1);
  v11 = v10;
  v12 = 0;
  v13 = 1 << *(v10 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v10 + 64;
  v16 = v14 & *(v10 + 64);
  v17 = (v13 + 63) >> 6;
  if (v16)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v25 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v25 >= v17)
    {

      v48 = v90;
      v50 = *(v90 + 16);
      v87 = *(v90 + 24);
      v49 = v87;
      v51 = v94;
      *(v94 + 3) = v50;
      *(v51 + 32) = v49;
      v52 = sub_1AACB2508(v51);
      v53 = v91;
      (*(*(v50 - 8) + 16))(v52, v91, v50);

      v86 = sub_1AAE2F5FC(v48);
      sub_1AAE2F91C(v48, v101);
      sub_1AAE2FAEC(v48, (v51 + 112));
      v54 = v88;
      sub_1AAE2F100(v48, v51 + *(v88 + 36));
      sub_1AAE2FE08(v48, &v103);
      v55 = *(&v103 + 1);
      v56 = v104;
      sub_1AACB2684(&v103);
      sub_1AAE2FE08(v48, &v96);
      v57 = *(&v97 + 1);
      v58 = v98;
      sub_1AACB2684(&v96);
      v59 = v101[1];
      *(v51 + 56) = v101[0];
      v60 = v86;
      *(v51 + 40) = v9;
      *(v51 + 48) = v60;
      *(v51 + 72) = v59;
      *(v51 + 88) = v101[2];
      *(v51 + 104) = v102;
      v61 = v51 + *(v54 + 40);
      *v61 = v55;
      *(v61 + 8) = v56;
      v62 = v51 + *(v54 + 44);
      *v62 = v57;
      *(v62 + 8) = v58;
      type metadata accessor for ChartContentLayoutContext();
      swift_allocObject();

      *&v103 = sub_1AACB2740();
      *(&v103 + 1) = v9;
      v63 = v87;
      v64 = *(v87 + 32);
      v65 = v103;

      v64(v53, &v103, v50, v63);

      sub_1AACB41E4(v9);

      type metadata accessor for ParametersContext();
      v66 = swift_allocObject();
      *(v66 + 16) = 0;
      v67 = MEMORY[0x1E69E7CC0];
      *(v66 + 24) = sub_1AACB362C(MEMORY[0x1E69E7CC0]);
      v68 = v89;
      sub_1AACB26B4(v51, v89, type metadata accessor for ChartInternal);
      v88 = v65;

      sub_1AACB3750(v68, v65, v66, &v103);
      sub_1AACB6294(0, &qword_1ED9B44B0, type metadata accessor for ChartModel, MEMORY[0x1E6981E98]);
      sub_1AAF8F1D4();
      v69 = v96;
      v70 = v95;
      sub_1AAE2F100(v48, v95);
      v71 = *(v48 + 76);
      v72 = *(v69 + 120);
      *(v72 + 24) = 0;
      type metadata accessor for IDGenerator();
      v73 = swift_allocObject();
      v74 = sub_1AACB236C(v67);
      v75 = MEMORY[0x1E69E7CD0];
      v73[2] = v74;
      v73[3] = v75;
      v73[4] = 0;
      *(v72 + 16) = v73;

      v76 = *(v69 + 104);
      v77 = sub_1AAF8E9D4();
      v78 = *(v77 - 8);
      v79 = v53 + v71;
      v80 = v93;
      (*(v78 + 16))(v93, v79, v77);
      (*(v78 + 56))(v80, 0, 1, v77);
      v81 = OBJC_IVAR____TtC6Charts14SgMeasurements__measurements;
      swift_beginAccess();
      sub_1AACBD5D4(v80, v76 + v81);
      swift_endAccess();
      v82 = *(v92 + 32);
      v83 = OBJC_IVAR____TtC6Charts14SgMeasurements__dynamicTypeSize;
      swift_beginAccess();
      v84 = sub_1AAF8DCD4();
      (*(*(v84 - 8) + 24))(v76 + v83, v70 + v82, v84);
      swift_endAccess();
      sub_1AACC0764(&v103, v66, v70);
      sub_1AACC13B8(&v103);

      sub_1AACDCF70(v70, type metadata accessor for ChartEnvironmentValues);
      return sub_1AACDCF70(v51, type metadata accessor for ChartInternal);
    }

    v16 = *(v15 + 8 * v25);
    ++v12;
  }

  while (!v16);
  while (1)
  {
    v26 = __clz(__rbit64(v16)) | (v25 << 6);
    v27 = *(*(v11 + 48) + v26);
    v28 = *(v11 + 56) + 72 * v26;
    v103 = *v28;
    v30 = *(v28 + 32);
    v29 = *(v28 + 48);
    v31 = *(v28 + 16);
    v107 = *(v28 + 64);
    v105 = v30;
    v106 = v29;
    v104 = v31;
    sub_1AACB1E30(&v103, &v96);
    sub_1AACB1E30(&v103, &v96);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v101[0] = v9;
    v33 = sub_1AACB6398(v27);
    v35 = v9[2];
    v36 = (v34 & 1) == 0;
    v37 = __OFADD__(v35, v36);
    v38 = v35 + v36;
    if (v37)
    {
      break;
    }

    v39 = v34;
    if (v9[3] >= v38)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v47 = v33;
        sub_1AAD93F74();
        v33 = v47;
      }
    }

    else
    {
      sub_1AACB1F40(v38, isUniquelyReferenced_nonNull_native);
      v33 = sub_1AACB6398(v27);
      if ((v39 & 1) != (v40 & 1))
      {
        goto LABEL_24;
      }
    }

    v16 &= v16 - 1;
    if (v39)
    {
      v9 = *&v101[0];
      v18 = *(*&v101[0] + 56) + 72 * v33;
      v96 = *v18;
      v19 = *(v18 + 16);
      v20 = *(v18 + 32);
      v21 = *(v18 + 48);
      v100 = *(v18 + 64);
      v99 = v21;
      v98 = v20;
      v97 = v19;
      v23 = v105;
      v22 = v106;
      v24 = v104;
      *(v18 + 64) = v107;
      *(v18 + 32) = v23;
      *(v18 + 48) = v22;
      *(v18 + 16) = v24;
      *v18 = v103;
      sub_1AACB24B4(&v96);
      sub_1AACB24B4(&v103);
      v12 = v25;
      if (!v16)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v9 = *&v101[0];
      *(*&v101[0] + 8 * (v33 >> 6) + 64) |= 1 << v33;
      *(v9[6] + v33) = v27;
      v41 = v9[7] + 72 * v33;
      v42 = v107;
      v44 = v105;
      v43 = v106;
      *(v41 + 16) = v104;
      *(v41 + 32) = v44;
      *(v41 + 48) = v43;
      *(v41 + 64) = v42;
      *v41 = v103;
      sub_1AACB24B4(&v103);
      v45 = v9[2];
      v37 = __OFADD__(v45, 1);
      v46 = v45 + 1;
      if (v37)
      {
        goto LABEL_23;
      }

      v9[2] = v46;
      v12 = v25;
      if (!v16)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v25 = v12;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1AAF905B4();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for ChartInternal()
{
  result = qword_1ED9B65A8;
  if (!qword_1ED9B65A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AACB1A10(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1AACB62F8();
    v3 = sub_1AAF8F3F4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1AACB1A74()
{
  sub_1AACB1A10(319, &qword_1ED9B2AC0);
  if (v0 <= 0x3F)
  {
    sub_1AACB1A10(319, &qword_1ED9B2AB0);
    if (v1 <= 0x3F)
    {
      sub_1AACB1C0C(319, &qword_1ED9B3888, &type metadata for ChartLegendConfiguration, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for ChartEnvironmentValues(319);
        if (v3 <= 0x3F)
        {
          sub_1AACB1C0C(319, &qword_1ED9B29E0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1AACB1BC0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1AAF8FE74();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1AACB1C0C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1AACB1C5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AADFAB58();
  v3 = sub_1AAF903A4();
  v4 = *(a1 + 48);
  *v21 = *(a1 + 32);
  *&v21[16] = v4;
  v5 = *(a1 + 80);
  *&v21[32] = *(a1 + 64);
  *&v21[48] = v5;
  *&v21[57] = *(a1 + 89);
  v6 = v21[0];
  result = sub_1AACB6398(v21[0]);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_1AADF9C48(v21, v20, &unk_1EB424D50, &type metadata for Spec.Channel, &type metadata for ChartInternal.ScaleDef, sub_1AACC9AC0);
    return v3;
  }

  v9 = (a1 + 112);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v6;
    v10 = v3[7] + 72 * result;
    *v10 = *&v21[8];
    v11 = *&v21[24];
    v12 = *&v21[40];
    v13 = *&v21[56];
    *(v10 + 64) = v21[72];
    *(v10 + 32) = v12;
    *(v10 + 48) = v13;
    *(v10 + 16) = v11;
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    v3[2] = v16;
    if (!--v1)
    {
      goto LABEL_8;
    }

    sub_1AADF9C48(v21, v20, &unk_1EB424D50, &type metadata for Spec.Channel, &type metadata for ChartInternal.ScaleDef, sub_1AACC9AC0);
    v17 = v9[1];
    *v21 = *v9;
    *&v21[16] = v17;
    v18 = v9[3];
    *&v21[32] = v9[2];
    *&v21[48] = v18;
    *&v21[57] = *(v9 + 57);
    v6 = v21[0];
    result = sub_1AACB6398(v21[0]);
    v9 += 5;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AACB1E98(uint64_t a1)
{
  v1 = *(a1 + 25);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AACB1EAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (((2 * v1) & 0x38) != 0)
  {
    return 64 - ((2 * v1) & 0x38 | (v1 >> 5));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1AACB1ED0(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1AACB1F40(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AAD9BF84(0, &qword_1ED9B1E20, sub_1AACB62F8);
  v34 = a2;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(v5 + 56) + 72 * v20;
      if (v34)
      {
        v41 = *(v22 + 16);
        v38 = *v22;
        v39 = *(v22 + 24);
        v37 = *(v22 + 32);
        v35 = *(v22 + 40);
        v36 = *(v22 + 8);
        v42 = *(v22 + 48);
        v40 = *(v22 + 56);
        v23 = *(v22 + 64);
      }

      else
      {
        v23 = *(v22 + 64);
        v24 = *(v22 + 16);
        v25 = *(v22 + 48);
        v44 = *(v22 + 32);
        v45 = v25;
        v43[1] = v24;
        v43[0] = *v22;
        v46 = v23;
        v41 = v24;
        v42 = v25;
        v39 = *(&v24 + 1);
        v40 = *(&v25 + 1);
        v37 = v44;
        v38 = *&v43[0];
        v35 = WORD4(v44);
        v36 = BYTE8(v43[0]);
        sub_1AACB1E30(v43, v47);
      }

      sub_1AAF90694();
      MEMORY[0x1AC5992C0](v21);
      result = sub_1AAF906F4();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = *(v7 + 56) + 72 * v15;
      *v16 = v38;
      *(v16 + 8) = v36;
      *(v16 + 16) = v41;
      *(v16 + 24) = v39;
      *(v16 + 32) = v37;
      *(v16 + 40) = v35;
      *(v16 + 48) = v42;
      *(v16 + 56) = v40;
      *(v16 + 64) = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1AACB22DC(uint64_t a1)
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

uint64_t sub_1AACB22F4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AACB230C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1AACB236C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1AADFAA14();
    v3 = sub_1AAF903A4();
    v4 = a1 + 32;

    v5 = MEMORY[0x1E69E76D8];
    while (1)
    {
      sub_1AADF9C48(v4, v14, &unk_1EB424D40, &type metadata for IDGenerator.Key, v5, sub_1AACC9AC0);
      result = sub_1AACCAE28(v14);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v8 = (v3[6] + 48 * result);
      v9 = v14[0];
      v10 = v14[2];
      v8[1] = v14[1];
      v8[2] = v10;
      *v8 = v9;
      *(v3[7] + 8 * result) = v15;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t *sub_1AACB2508(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1AACB256C(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  sub_1AACB1BC0(0, a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1AACB25D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AACB2628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7 != 1)
  {
  }

  return result;
}

uint64_t sub_1AACB263C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1AACB26B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AACB2740()
{
  type metadata accessor for ChartContentIDContext();
  v1 = swift_allocObject();
  type metadata accessor for IDGenerator();
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  v4 = sub_1AACB236C(MEMORY[0x1E69E7CC0]);
  v5 = MEMORY[0x1E69E7CD0];
  v2[2] = v4;
  v2[3] = v5;
  v2[4] = 0;
  *(v1 + 16) = v2;
  *(v1 + 24) = 0;
  *(v0 + 16) = v1;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 1;
  *(v0 + 72) = v3;
  *(v0 + 80) = v5;
  *(v0 + 88) = 512;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 1;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 1;
  *(v0 + 144) = v3;
  *(v0 + 152) = v5;
  *(v0 + 160) = 512;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 1;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 1;
  *(v0 + 216) = v3;
  *(v0 + 224) = v5;
  *(v0 + 232) = 512;
  *(v0 + 240) = v3;
  *(v0 + 248) = 0u;
  *(v0 + 264) = 1;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 1;
  *(v0 + 296) = v3;
  *(v0 + 304) = v5;
  *(v0 + 312) = 512;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 1;
  *(v0 + 344) = 0u;
  *(v0 + 360) = 1;
  *(v0 + 361) = *v9;
  *(v0 + 364) = *&v9[3];
  *(v0 + 368) = v3;
  *(v0 + 376) = v5;
  *(v0 + 384) = 512;
  *(v0 + 392) = 0u;
  *(v0 + 408) = 1;
  *(v0 + 409) = *v11;
  *(v0 + 412) = *&v11[3];
  *(v0 + 416) = 0u;
  *(v0 + 432) = 1;
  *(v0 + 433) = *v10;
  *(v0 + 436) = *&v10[3];
  *(v0 + 440) = v3;
  *(v0 + 448) = v5;
  *(v0 + 456) = 512;
  *(v0 + 464) = 0u;
  *(v0 + 480) = 1;
  *(v0 + 481) = *v13;
  *(v0 + 484) = *&v13[3];
  *(v0 + 488) = 0u;
  *(v0 + 504) = 1;
  *(v0 + 505) = *v12;
  *(v0 + 508) = *&v12[3];
  *(v0 + 512) = v3;
  *(v0 + 520) = v5;
  *(v0 + 528) = 512;
  *(v0 + 536) = 0u;
  *(v0 + 552) = 1;
  *(v0 + 553) = *v15;
  *(v0 + 556) = *&v15[3];
  *(v0 + 560) = 0u;
  *(v0 + 576) = 1;
  *(v0 + 577) = *v14;
  *(v0 + 580) = *&v14[3];
  *(v0 + 584) = v3;
  *(v0 + 592) = v5;
  *(v0 + 600) = 512;
  v19[0] = 1;
  v18[0] = 1;
  *(v0 + 608) = 0u;
  *(v0 + 624) = 1;
  *(v0 + 625) = *v17;
  *(v0 + 628) = *&v17[3];
  *(v0 + 632) = 0u;
  *(v0 + 648) = 1;
  *(v0 + 649) = *v16;
  *(v0 + 652) = *&v16[3];
  *(v0 + 656) = v3;
  *(v0 + 664) = v5;
  *(v0 + 672) = 512;
  v6 = sub_1AACB2AB8(v3);
  v7 = sub_1AACB2AB8(v3);
  *(v0 + 680) = v6;
  *(v0 + 688) = v7;
  *(v0 + 696) = 0u;
  *(v0 + 712) = 0u;
  *(v0 + 728) = 0u;
  *(v0 + 744) = 0u;
  *(v0 + 760) = 0u;
  *(v0 + 776) = 0;
  *(v0 + 777) = *v19;
  *(v0 + 780) = *&v19[3];
  *(v0 + 784) = 0u;
  *(v0 + 800) = 0u;
  *(v0 + 816) = 0u;
  *(v0 + 832) = 0u;
  *(v0 + 848) = 0u;
  *(v0 + 864) = 0;
  *(v0 + 865) = *v18;
  *(v0 + 868) = *&v18[3];
  *(v0 + 872) = 0u;
  *(v0 + 888) = 0u;
  *(v0 + 904) = 0u;
  *(v0 + 920) = 0u;
  *(v0 + 936) = 0u;
  *(v0 + 952) = 512;
  *(v0 + 960) = 0u;
  *(v0 + 976) = 0u;
  *(v0 + 992) = 0u;
  *(v0 + 1008) = 0u;
  *(v0 + 1024) = 0u;
  *(v0 + 1040) = 0u;
  *(v0 + 1056) = 0u;
  *(v0 + 1072) = 0u;
  *(v0 + 1088) = 0u;
  *(v0 + 1104) = 0u;
  *(v0 + 1120) = 0u;
  *(v0 + 1136) = 0u;
  *(v0 + 1152) = 0u;
  *(v0 + 1168) = 0u;
  *(v0 + 1184) = 0u;
  *(v0 + 1200) = 0u;
  *(v0 + 1216) = 0u;
  *(v0 + 1232) = 0u;
  *(v0 + 1248) = 0u;
  *(v0 + 1263) = 0;
  return v0;
}

unint64_t sub_1AACB2AB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1AADFA7BC();
    v3 = sub_1AAF903A4();
    v4 = a1 + 32;

    for (i = v1 - 1; ; --i)
    {
      v6 = *(v4 + 48);
      v17 = *(v4 + 32);
      *v18 = v6;
      *&v18[16] = *(v4 + 64);
      v7 = *(v4 + 16);
      v16[0] = *v4;
      v16[1] = v7;
      v19 = v16[0];
      v20 = v7;
      v21 = v17;
      v22 = *(v4 + 48);
      sub_1AADF9C48(v16, v15, &unk_1EB424D20, &type metadata for StackGroup, &type metadata for StackContext.Item, sub_1AACC9AC0);
      result = sub_1AACDBD1C(&v19);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = v3[6] + 56 * result;
      v11 = v20;
      *v10 = v19;
      *(v10 + 16) = v11;
      *(v10 + 32) = v21;
      *(v10 + 48) = v22;
      *(v3[7] + 16 * result) = *&v18[8];
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_11;
      }

      v3[2] = v14;
      if (!i)
      {

        return v3;
      }

      v4 += 72;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t static ForEach<>._layoutChartContent(_:_:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v71 = a8;
  v80 = a6;
  v81 = a7;
  v78 = a1;
  v79 = a5;
  v82 = a2;
  v85 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v68 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(v12 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v84 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v65 = &v50 - v15;
  v52 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v64 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_getAssociatedTypeWitness();
  v53 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v63 = &v50 - v18;
  v86 = v19;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v76 = sub_1AAF8FE74();
  v73 = *(v76 - 8);
  v20 = MEMORY[0x1EEE9AC00](v76);
  v75 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v87 = (&v50 - v22);
  v23 = swift_getAssociatedTypeWitness();
  v58 = *(v23 - 8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v50 - v25;
  v27 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v29 = &v50 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(swift_getAssociatedConformanceWitness() + 8);
  v72 = sub_1AAF90354();
  MEMORY[0x1EEE9AC00](v72);
  v83 = sub_1AAF90344();
  v51 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v32 = &v50 - v31;
  v74 = *v82;
  v88[0] = a3;
  v88[1] = a4;
  v70 = a4;
  v88[2] = v79;
  v88[3] = v80;
  v88[4] = v81;
  v60 = sub_1AAF8EFE4();
  sub_1AAF8EF94();
  v67 = v13;
  sub_1AAF8FB74();
  v33 = *(v27 + 8);
  v61 = v29;
  v69 = a3;
  v62 = v27 + 8;
  v59 = v33;
  v33(v29, a3);
  MEMORY[0x1AC598390](v23, v30);
  (v58[1])(v26, v23);
  v82 = v32;
  sub_1AAF90324();
  v73 += 4;
  v34 = TupleTypeMetadata2;
  v72 = TupleTypeMetadata2 - 8;
  v58 = (v53 + 4);
  v57 = (v84 + 16);
  v56 = (v84 + 8);
  v55 = v74;
  v54 = (v85 + 8);
  ++v53;
  ++v52;
  v35 = v65;
  for (i = v79; ; (*v52)(v44, i))
  {
    v37 = v75;
    sub_1AAF90334();
    v38 = v87;
    (*v73)(v87, v37, v76);
    if ((*(*(v34 - 8) + 48))(v38, 1, v34) == 1)
    {
      break;
    }

    v85 = *v87;
    v39 = v63;
    (*v58)(v63, v87 + *(v34 + 48), v86);
    v84 = sub_1AAF8EFB4();
    v40 = v61;
    sub_1AAF8EF94();
    v41 = v69;
    v42 = sub_1AAF8FC84();
    v43 = AssociatedTypeWitness;
    (*v57)(v35);
    v42(v88, 0);
    v59(v40, v41);
    v44 = v64;
    v84(v35);

    (*v56)(v35, v43);

    v45 = v68;
    v46 = sub_1AAF8EFA4();
    MEMORY[0x1EEE9AC00](v46);
    *(&v50 - 10) = v41;
    v47 = v70;
    *(&v50 - 9) = v70;
    *(&v50 - 8) = i;
    v48 = v81;
    *(&v50 - 7) = v80;
    *(&v50 - 6) = v48;
    *(&v50 - 5) = v71;
    *(&v50 - 4) = v44;
    *(&v50 - 3) = v74;
    sub_1AACD857C(v45);

    (*v54)(v45, v47);
    (*v53)(v39, v86);
    v34 = TupleTypeMetadata2;
  }

  return (*(v51 + 8))(v82, v83);
}

unint64_t sub_1AACB362C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1AACB9028(0, &qword_1ED9B2918, &qword_1ED9B37E0);
    v3 = sub_1AAF903A4();
    for (i = a1 + 32; ; i += 48)
    {
      sub_1AADFAEBC(i, &v11, sub_1AADFAADC);
      v5 = v11;
      result = sub_1AACC9B78(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1AACBB198(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1AACB3750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v101 = sub_1AACB3F40(MEMORY[0x1E69E7CC0]);
  v8 = *(a2 + 1265);
  v9 = *(a2 + 1266);
  sub_1AACB3EE4(a1, __src);
  v10 = *(a3 + 16);
  v11 = v10 + 1;
  if (__OFADD__(v10, 1))
  {
    goto LABEL_35;
  }

  v100 = v9;
  *(a3 + 16) = v11;
  sub_1AACB407C(0, &qword_1ED9B3D58, qword_1ED9B3E60, &type metadata for AnyChartContent);
  __dst[3] = v12;
  __dst[4] = &off_1F1FE4488;
  __dst[0] = swift_allocObject();
  sub_1AACB8810(__src, __dst[0] + 16, qword_1ED9B3E60, &type metadata for AnyChartContent);
  swift_beginAccess();
  sub_1AACB8910(__dst, v11);
  swift_endAccess();
  sub_1AACB9168(__src);
  v99 = *(a3 + 16);
  swift_beginAccess();
  v13 = *(a2 + 680);
  v14 = *(a2 + 688);

  v98 = sub_1AACB91E8(v13, v14);

  swift_beginAccess();
  memcpy(__dst, (a2 + 696), 0x102uLL);
  memcpy(__src, (a2 + 696), 0x102uLL);
  nullsub_1(__src, v15);
  memcpy(v108, __src, 0x102uLL);
  sub_1AACBB21C(__dst, &v103);
  v16 = sub_1AACB92B8(v108);
  sub_1AACBB254(__dst);
  v97 = *(a2 + 1266);
  v96 = sub_1AACB946C();
  v17 = *(a1 + 48);

  v18 = sub_1AACB9B8C(v17, a2, a3);

  v19 = *(a1 + 529);
  v95 = *(a1 + 530);
  v20 = type metadata accessor for ChartInternal();
  v21 = *(a3 + 16);
  v22 = v21 + 1;
  if (__OFADD__(v21, 1))
  {
LABEL_36:
    __break(1u);
  }

  else
  {
    v23 = v20;
    v92 = v19;
    v93 = v18;
    v94 = v16;
    v24 = a1 + *(v20 + 40);
    v25 = *(v24 + 8);
    v26 = *v24;
    *(a3 + 16) = v22;
    sub_1AACB407C(0, &qword_1ED9B3D48, &qword_1ED9B29E0, MEMORY[0x1E69E63B0]);
    v28 = v27;
    v106 = v27;
    v107 = &off_1F1FE4488;
    v103 = v26;
    LOBYTE(v104) = v25;
    swift_beginAccess();
    sub_1AACB8910(&v103, v22);
    v29 = *(a3 + 16);
    v30 = v29 + 1;
    if (!__OFADD__(v29, 1))
    {
      v90 = *(a3 + 16);
      v91 = v8;
      v31 = a1 + *(v23 + 44);
      v32 = *(v31 + 8);
      v33 = *v31;
      *(a3 + 16) = v30;
      v106 = v28;
      v107 = &off_1F1FE4488;
      v103 = v33;
      LOBYTE(v104) = v32;
      sub_1AACB8910(&v103, v30);
      swift_endAccess();
      v89 = *(a3 + 16);
      v34 = *(a1 + 40);
      v35 = 1 << *(v34 + 32);
      v36 = -1;
      if (v35 < 64)
      {
        v36 = ~(-1 << v35);
      }

      v37 = v36 & *(v34 + 64);
      v38 = (v35 + 63) >> 6;

      v39 = 0;
      for (i = v101; ; i[2] = v68)
      {
        while (1)
        {
          do
          {
            if (!v37)
            {
              while (1)
              {
                v45 = v39 + 1;
                if (__OFADD__(v39, 1))
                {
                  break;
                }

                if (v45 >= v38)
                {

                  result = sub_1AACBA674(a1, type metadata accessor for ChartInternal);
                  *a4 = v99;
                  *(a4 + 8) = v98;
                  *(a4 + 16) = v94;
                  *(a4 + 24) = v97;
                  *(a4 + 32) = v96;
                  *(a4 + 40) = v93;
                  *(a4 + 48) = v92;
                  *(a4 + 49) = v95;
                  *(a4 + 56) = v90;
                  *(a4 + 64) = v89;
                  *(a4 + 72) = i;
                  *(a4 + 80) = v91;
                  *(a4 + 81) = v100;
                  return result;
                }

                v37 = *(v34 + 64 + 8 * v45);
                ++v39;
                if (v37)
                {
                  v39 = v45;
                  goto LABEL_7;
                }
              }

              __break(1u);
LABEL_35:
              __break(1u);
              goto LABEL_36;
            }

LABEL_7:
            v41 = __clz(__rbit64(v37));
            v37 &= v37 - 1;
            v42 = v41 | (v39 << 6);
            v43 = *(*(v34 + 48) + v42);
          }

          while (*(a2 + 1266) == 1 && v43 != 5);
          v46 = *(v34 + 56) + 72 * v42;
          v81 = *v46;
          v82 = *(v46 + 8);
          v47 = *(v46 + 24);
          v48 = *(v46 + 32);
          v49 = *(v46 + 40);
          v88 = *(v46 + 48);
          v87 = *(v46 + 56);
          v102 = *(v46 + 64);
          v86 = *(v46 + 40);
          v84 = v47;
          v85 = v48;
          v83 = *(v46 + 16);
          if (v49 >> 8 <= 0xFE)
          {
            v103 = *(v46 + 16);
            v104 = v47;
            v105 = v48;
            LOWORD(v106) = v49;

            sub_1AACAF2D0(v83, v84, v85, v86);
            sub_1AACAF328(v88, v87, v102);
            sub_1AACAF2D0(v83, v84, v85, v86);
            v50 = sub_1AACC00E8(&v103, a3);
            v79 = v51;
            v80 = v50;
            v78 = v52;
            v77 = v53;
          }

          else
          {
            sub_1AACAF2D0(*(v46 + 16), v47, v48, v49);
            sub_1AACAF328(v88, v87, v102);
            v79 = 0;
            v80 = 0;
            v78 = 0;
            v77 = -256;
          }

          if (v102 <= 0xFB)
          {

            sub_1AACAF328(v88, v87, v102);
            v54 = sub_1AAF6B92C(v88, v87, v102, a3);
            v75 = v55;
            v76 = v54;
            v74 = v56;
          }

          else
          {
            v75 = 0;
            v76 = 0;
            v74 = -1;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v103 = i;
          v58 = sub_1AACB6398(v43);
          v59 = i[2];
          v60 = (v57 & 1) == 0;
          v61 = v59 + v60;
          if (__OFADD__(v59, v60))
          {
            goto LABEL_38;
          }

          if (i[3] < v61)
          {
            break;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            i = v103;
            if ((v57 & 1) == 0)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v73 = v58;
            v71 = v57;
            sub_1AAD95BC8();
            v58 = v73;
            i = v103;
            if ((v71 & 1) == 0)
            {
              goto LABEL_31;
            }
          }

LABEL_29:
          v64 = i[7] + 72 * v58;
          *v64 = v81;
          *(v64 + 8) = v82;
          *(v64 + 16) = v80;
          *(v64 + 24) = v79;
          *(v64 + 32) = v78;
          *(v64 + 40) = v77;
          *(v64 + 48) = v76;
          *(v64 + 56) = v75;
          *(v64 + 64) = v74;
          sub_1AACAF33C(v83, v84, v85, v86);
          sub_1AACC0710(v88, v87, v102);
        }

        v70 = v57;
        sub_1AACC043C(v61, isUniquelyReferenced_nonNull_native);
        v62 = sub_1AACB6398(v43);
        if ((v70 & 1) != (v63 & 1))
        {
          goto LABEL_40;
        }

        v58 = v62;
        i = v103;
        if (v70)
        {
          goto LABEL_29;
        }

LABEL_31:
        i[(v58 >> 6) + 8] |= 1 << v58;
        *(i[6] + v58) = v43;
        v65 = i[7] + 72 * v58;
        *v65 = v81;
        *(v65 + 8) = v82;
        *(v65 + 16) = v80;
        *(v65 + 24) = v79;
        *(v65 + 32) = v78;
        *(v65 + 40) = v77;
        *(v65 + 48) = v76;
        *(v65 + 56) = v75;
        *(v65 + 64) = v74;
        sub_1AACAF33C(v83, v84, v85, v86);
        sub_1AACC0710(v88, v87, v102);
        v66 = i[2];
        v67 = __OFADD__(v66, 1);
        v68 = v66 + 1;
        if (v67)
        {
          goto LABEL_39;
        }
      }
    }
  }

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

uint64_t sub_1AACB3EA4()
{
  if (*(v0 + 40))
  {
    sub_1AACB634C(v0 + 16);
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

unint64_t sub_1AACB3F40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AADFAA78();
  v3 = sub_1AAF903A4();
  v4 = *(a1 + 32);
  v16 = *(a1 + 72);
  v17 = *(a1 + 88);
  v18 = *(a1 + 104);
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  result = sub_1AACB6398(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x1E69E7CC8];
  }

  v7 = (a1 + 120);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    v8 = v3[7] + 72 * result;
    *(v8 + 64) = v18;
    *(v8 + 32) = v16;
    *(v8 + 48) = v17;
    *v8 = v14;
    *(v8 + 16) = v15;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      return v3;
    }

    v12 = v7 + 5;
    v4 = *(v7 - 8);
    v16 = v7[2];
    v17 = v7[3];
    v18 = *(v7 + 64);
    v14 = *v7;
    v15 = v7[1];
    result = sub_1AACB6398(v4);
    v7 = v12;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_1AACB407C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1AACB4144(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for ParametersContext.ParameterSignalContainer();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1AACB40E8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  if (!*a2)
  {
    sub_1AACB4194(255, a3, a4, a5);
    v6 = type metadata accessor for ParametersContext.ParameterSignalContainer();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1AACB4144(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1AACB4194(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AACB41E4(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v3 = *(v1 + 680);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);

  swift_beginAccess();
  result = swift_beginAccess();
  v8 = 0;
  v9 = (v4 + 63) >> 6;
  v34 = (v2 + 112);
  v35 = (v2 + 40);
  while (v6)
  {
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = *(v3 + 48) + 56 * (v11 | (v8 << 6));
    v13 = *(v12 + 48);
    v14 = *(v12 + 32);
    v15 = *v12;
    v37[1] = *(v12 + 16);
    v37[2] = v14;
    v37[0] = v15;
    v38 = v13;
    v16 = v15;
    if (v15 != 3)
    {
      v17 = *(v2 + 680);
      if (*(v17 + 16))
      {
        sub_1AACDC8C4(v37, v36);

        v18 = sub_1AACDBD1C(v37);
        v19 = 0.0;
        v20 = 0.0;
        if (v21)
        {
          v22 = (*(v17 + 56) + 16 * v18);
          v20 = *v22;
          v19 = v22[1];
        }
      }

      else
      {
        sub_1AACDC8C4(v37, v36);

        v19 = 0.0;
        v20 = 0.0;
      }

      result = sub_1AACDC920(v37);
      if (!v16)
      {
        v24 = v19;
        v25 = v20;
        goto LABEL_23;
      }

      if (v16 != 1)
      {
        v24 = (v20 - v19) * -0.5;
        v25 = (v20 - v19) * 0.5;
        if (BYTE1(v37[0]))
        {
          goto LABEL_24;
        }

        goto LABEL_28;
      }

      if (v20 > -v19)
      {
        v23 = v20;
      }

      else
      {
        v23 = -v19;
      }

      v24 = 0.0;
      v25 = 0.0;
      if (v23 == 0.0)
      {
LABEL_23:
        if (BYTE1(v37[0]))
        {
          goto LABEL_24;
        }

LABEL_28:
        if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (*v35)
          {
            v27 = v24;
          }

          else
          {
            v30 = *(v2 + 24);
            v27 = *(v2 + 32);
            if (v30 >= v24)
            {
              v30 = v24;
            }

            if (v24 > v27)
            {
              v27 = v24;
            }

            v24 = v30;
          }

          *(v2 + 24) = v24;
          *(v2 + 32) = v27;
          *(v2 + 40) = 0;
        }

        if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v29 = (v2 + 40);
          if (*v35)
          {
            *(v2 + 24) = v25;
            *(v2 + 32) = v25;
          }

          else
          {
            v32 = *(v2 + 24);
            if (v32 >= v25)
            {
              v32 = v25;
            }

            if (v25 <= *(v2 + 32))
            {
              v25 = *(v2 + 32);
            }

            *(v2 + 24) = v32;
            *(v2 + 32) = v25;
          }

          goto LABEL_60;
        }
      }

      else
      {
        v24 = v19 / v23 * 100.0;
        v25 = v20 / v23 * 100.0;
        if ((BYTE1(v37[0]) & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_24:
        if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (*v34)
          {
            v26 = v24;
          }

          else
          {
            v28 = *(v2 + 96);
            v26 = *(v2 + 104);
            if (v28 >= v24)
            {
              v28 = v24;
            }

            if (v24 > v26)
            {
              v26 = v24;
            }

            v24 = v28;
          }

          *(v2 + 96) = v24;
          *(v2 + 104) = v26;
          *(v2 + 112) = 0;
        }

        if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v29 = (v2 + 112);
          if (*v34)
          {
            *(v2 + 96) = v25;
          }

          else
          {
            v31 = *(v2 + 96);
            if (v31 >= v25)
            {
              v31 = v25;
            }

            if (v25 <= *(v2 + 104))
            {
              v25 = *(v2 + 104);
            }

            *(v2 + 96) = v31;
          }

          *(v2 + 104) = v25;
LABEL_60:
          *v29 = 0;
        }
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return sub_1AACB4568(a1);
    }

    v6 = *(v3 + 64 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AACB4568(uint64_t a1)
{
  v2 = v1;
  *&result = COERCE_DOUBLE(swift_beginAccess());
  if (*(*(v2 + 240) + 16))
  {
    if (*(a1 + 16))
    {
      v5 = sub_1AACB6398(0);
      if (v6)
      {
        v7 = *(a1 + 56) + 72 * v5;
        if (*(v7 + 40) <= 0xFFu)
        {
          *&result = COERCE_DOUBLE(sub_1AACEC978(*(v7 + 16)));
          if ((v9 & 1) == 0)
          {
            v52 = *(v2 + 240);
            v53 = *(v52 + 16);
            if (!v53)
            {
              return result;
            }

            v54 = *&result;
            v55 = v8;

            swift_beginAccess();
            v56 = v52 + 56;
            do
            {
              v57 = *(v56 - 24);
              v58 = *(v56 - 8);

              v59 = sub_1AACBD93C(v58);
              v60 = v57(v59, v54, v55);
              v62 = v61;

              sub_1AACB4A98(v58);
              if ((*&v60 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                v63 = v60;
                if ((*(v2 + 112) & 1) == 0)
                {
                  v64 = *(v2 + 96);
                  v63 = *(v2 + 104);
                  if (v64 >= v60)
                  {
                    v64 = v60;
                  }

                  if (v60 > v63)
                  {
                    v63 = v60;
                  }

                  v60 = v64;
                }

                *(v2 + 96) = v60;
                *(v2 + 104) = v63;
                *(v2 + 112) = 0;
              }

              if ((*&v62 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                v65 = v62;
                if ((*(v2 + 112) & 1) == 0)
                {
                  v66 = *(v2 + 96);
                  v65 = *(v2 + 104);
                  if (v66 >= v62)
                  {
                    v66 = v62;
                  }

                  if (v62 > v65)
                  {
                    v65 = v62;
                  }

                  v62 = v66;
                }

                *(v2 + 96) = v62;
                *(v2 + 104) = v65;
                *(v2 + 112) = 0;
              }

              v56 += 32;
              --v53;
            }

            while (v53);
            goto LABEL_90;
          }
        }
      }
    }

    *&result = COERCE_DOUBLE(swift_beginAccess());
    if ((*(v2 + 40) & 1) == 0)
    {
      v21 = *(v2 + 24);
      v20 = *(v2 + 32);
      if (v21 >= v20)
      {
        return result;
      }

      if (v21 <= v20)
      {
        v22 = *(v2 + 240);
        v23 = *(v22 + 16);
        if (!v23)
        {
          return result;
        }

        swift_beginAccess();
        v24 = v22 + 56;
        do
        {
          v25 = *(v24 - 24);
          v26 = *(v24 - 8);

          v27 = sub_1AACBD93C(v26);
          v28 = v25(v27, v21, v20);
          v30 = v29;

          sub_1AACB4A98(v26);
          if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v31 = v28;
            if ((*(v2 + 112) & 1) == 0)
            {
              v32 = *(v2 + 96);
              v31 = *(v2 + 104);
              if (v32 >= v28)
              {
                v32 = v28;
              }

              if (v28 > v31)
              {
                v31 = v28;
              }

              v28 = v32;
            }

            *(v2 + 96) = v28;
            *(v2 + 104) = v31;
            *(v2 + 112) = 0;
          }

          if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v33 = v30;
            if ((*(v2 + 112) & 1) == 0)
            {
              v34 = *(v2 + 96);
              v33 = *(v2 + 104);
              if (v34 >= v30)
              {
                v34 = v30;
              }

              if (v30 > v33)
              {
                v33 = v30;
              }

              v30 = v34;
            }

            *(v2 + 96) = v30;
            *(v2 + 104) = v33;
            *(v2 + 112) = 0;
          }

          v24 += 32;
          --v23;
        }

        while (v23);
LABEL_90:
        *&result = COERCE_DOUBLE();
        return result;
      }

      __break(1u);
LABEL_93:
      __break(1u);
      return result;
    }

    v10 = *(v2 + 240);
    v11 = *(v10 + 16);
    if (v11)
    {

      v12 = v10 + 56;
      v13 = INFINITY;
      v14 = -INFINITY;
      do
      {
        v15 = *(v12 - 8);
        if (v15)
        {

          v16 = sub_1AACBD93C(v15);
          v17 = v15(v16);
          v19 = v18;

          sub_1AACB4A98(v15);
          if (v17 < v13)
          {
            v13 = v17;
          }

          if (v14 <= v19)
          {
            v14 = v19;
          }
        }

        v12 += 32;
        --v11;
      }

      while (v11);
      *&result = COERCE_DOUBLE();
      if (v13 < v14)
      {
        if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v35 = v13;
          v36 = v13;
          if ((*(v2 + 40) & 1) == 0)
          {
            v35 = *(v2 + 24);
            v36 = *(v2 + 32);
            if (v35 >= v13)
            {
              v35 = v13;
            }

            if (v13 > v36)
            {
              v36 = v13;
            }
          }

          *(v2 + 24) = v35;
          *(v2 + 32) = v36;
          *(v2 + 40) = 0;
        }

        if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v37 = v14;
          v38 = v14;
          if ((*(v2 + 40) & 1) == 0)
          {
            v37 = *(v2 + 24);
            v38 = *(v2 + 32);
            if (v37 >= v14)
            {
              v37 = v14;
            }

            if (v14 > v38)
            {
              v38 = v14;
            }
          }

          *(v2 + 24) = v37;
          *(v2 + 32) = v38;
          *(v2 + 40) = 0;
        }

        if (v13 <= v14)
        {
          v39 = *(v2 + 240);
          v40 = *(v39 + 16);
          if (!v40)
          {
            return result;
          }

          swift_beginAccess();
          v41 = v39 + 56;
          do
          {
            v42 = *(v41 - 24);
            v43 = *(v41 - 8);

            v44 = sub_1AACBD93C(v43);
            v45 = v42(v44, v13, v14);
            v47 = v46;

            sub_1AACB4A98(v43);
            if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v48 = v45;
              if ((*(v2 + 112) & 1) == 0)
              {
                v49 = *(v2 + 96);
                v48 = *(v2 + 104);
                if (v49 >= v45)
                {
                  v49 = v45;
                }

                if (v45 > v48)
                {
                  v48 = v45;
                }

                v45 = v49;
              }

              *(v2 + 96) = v45;
              *(v2 + 104) = v48;
              *(v2 + 112) = 0;
            }

            if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v50 = v47;
              if ((*(v2 + 112) & 1) == 0)
              {
                v51 = *(v2 + 96);
                v50 = *(v2 + 104);
                if (v51 >= v47)
                {
                  v51 = v47;
                }

                if (v47 > v50)
                {
                  v50 = v47;
                }

                v47 = v51;
              }

              *(v2 + 96) = v47;
              *(v2 + 104) = v50;
              *(v2 + 112) = 0;
            }

            v41 += 32;
            --v40;
          }

          while (v40);
          goto LABEL_90;
        }

        goto LABEL_93;
      }
    }
  }

  return result;
}

uint64_t sub_1AACB4A98(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1AACB4ACC(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

uint64_t type metadata accessor for AxisMarksConfiguration()
{
  result = qword_1ED9B5E60;
  if (!qword_1ED9B5E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1AACB4B80()
{
  result = qword_1ED9B4528;
  if (!qword_1ED9B4528)
  {
    sub_1AACB60D0();
    sub_1AACB4C00();
    sub_1AACB4C90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B4528);
  }

  return result;
}

unint64_t sub_1AACB4C00()
{
  result = qword_1ED9B44E0;
  if (!qword_1ED9B44E0)
  {
    sub_1AACB6480(255, &qword_1ED9B1E98, sub_1AACAA3E4, &type metadata for ChartScaleModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B44E0);
  }

  return result;
}

unint64_t sub_1AACB4C90()
{
  result = qword_1ED9B44D0;
  if (!qword_1ED9B44D0)
  {
    sub_1AACB6194(255, &qword_1ED9B1E78, &type metadata for ChartEncodingConfigurations, MEMORY[0x1E6980B20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B44D0);
  }

  return result;
}

unint64_t sub_1AACB4D24()
{
  result = qword_1ED9B59E8;
  if (!qword_1ED9B59E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B59E8);
  }

  return result;
}

unint64_t sub_1AACB4D98()
{
  result = qword_1ED9B5570;
  if (!qword_1ED9B5570)
  {
    sub_1AACB64E8();
    sub_1AACB4E18();
    sub_1AACB4E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B5570);
  }

  return result;
}

unint64_t sub_1AACB4E18()
{
  result = qword_1ED9B5540;
  if (!qword_1ED9B5540)
  {
    sub_1AACB6580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B5540);
  }

  return result;
}

unint64_t sub_1AACB4E70()
{
  result = qword_1ED9B5528;
  if (!qword_1ED9B5528)
  {
    sub_1AACAF1E8(255, &qword_1ED9B2B88, sub_1AACB606C, MEMORY[0x1E6980B20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B5528);
  }

  return result;
}

uint64_t static Chart._makeViewList(view:inputs:)()
{
  type metadata accessor for Chart();
  swift_getWitnessTable();

  return sub_1AAF8E074();
}

uint64_t static Chart._makeView(view:inputs:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v95 = a5;
  v115 = *MEMORY[0x1E69E9840];
  v85 = type metadata accessor for RenderBasedChartView();
  v86 = sub_1AAF8D954();
  v84 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v83 = (&v81 - v9);
  v99 = a4;
  v93 = type metadata accessor for Chart.AttributeGraphChartView();
  v94 = sub_1AAF8D954();
  v92 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v91 = &v81 - v10;
  v98 = a3;
  v90 = sub_1AAF8D954();
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v88 = &v81 - v11;
  v12 = type metadata accessor for _ChartContentOutputs(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v101 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ChartContainerValues();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for _ChartContentInputs(0);
  MEMORY[0x1EEE9AC00](v87);
  v100 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1AAF8D974();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1AAF8F194();
  v22 = *(v97 - 8);
  v23 = MEMORY[0x1EEE9AC00](v97);
  v25 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v81 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = *(v19 + 16);
  v96 = a2;
  v30 = a2;
  v32 = &v81 - v31;
  v29(v21, v30, v18);
  sub_1AAF8F1B4();
  if (qword_1ED9B36E8 != -1)
  {
    swift_once();
  }

  if ((byte_1ED9C3488 & 1) != 0 || (sub_1AACBC358(), sub_1AAF8F1A4(), v103 == 1))
  {
    v33 = *(v22 + 16);
    v83 = a1;
    v34 = v97;
    v33(v28, v32, v97);
    *(v16 + 8) = 0u;
    *(v16 + 24) = 0u;
    *(v16 + 40) = 0u;
    *(v16 + 56) = 0u;
    *(v16 + 9) = 0;
    *(v16 + 40) = 255;
    *(v16 + 88) = 0u;
    *(v16 + 104) = 0u;
    *(v16 + 120) = 0u;
    *(v16 + 136) = 0u;
    *(v16 + 19) = 0;
    v16[160] = -1;
    *(v16 + 21) = 0;
    *(v16 + 22) = 0;
    *(v16 + 23) = 0x1FFFFFFFELL;
    *(v16 + 16) = 0u;
    *(v16 + 17) = 0u;
    *(v16 + 14) = 0u;
    *(v16 + 15) = 0u;
    *(v16 + 12) = 0u;
    *(v16 + 13) = 0u;
    *(v16 + 36) = 0x7FFFFFF7CLL;
    *(v16 + 37) = 0;
    *(v16 + 38) = 0;
    *(v16 + 39) = 0;
    *(v16 + 160) = 0;
    *(v16 + 41) = 0x3FF0000000000000;
    *(v16 + 42) = 0;
    v16[344] = 1;
    *(v16 + 22) = 0u;
    *(v16 + 23) = 0u;
    v16[384] = 1;
    v35 = v14[14];
    v36 = sub_1AAF8E244();
    (*(*(v36 - 8) + 56))(&v16[v35], 1, 1, v36);
    v37 = &v16[v14[15]];
    *v37 = 0;
    v37[8] = 3;
    v38 = &v16[v14[16]];
    *v38 = 0u;
    *(v38 + 1) = 0u;
    v39 = &v16[v14[17]];
    *v39 = 0u;
    *(v39 + 1) = 0u;
    v40 = &v16[v14[18]];
    *v40 = 0;
    *(v40 + 1) = 0;
    v85 = v32;
    v41 = MEMORY[0x1E69E7CC0];
    *v16 = MEMORY[0x1E69E7CC0];
    LODWORD(v35) = sub_1AAF8D194();
    sub_1AADFAF78(v16, type metadata accessor for ChartContainerValues);
    v42 = v25;
    v43 = v87;
    v44 = v100;
    *(v100 + *(v87 + 28)) = *MEMORY[0x1E698D3F8];
    v33(v44, v28, v34);
    v33(v42, v28, v34);
    sub_1AAF8E3B4();
    v45 = *(v22 + 8);
    v86 = v22 + 8;
    v84 = v45;
    v45(v28, v34);
    v46 = v44;
    *(v44 + *(v43 + 24)) = v35;
    LODWORD(v35) = sub_1AAF8F164();
    type metadata accessor for PlottableValueMapper();
    v47 = swift_allocObject();
    v48 = sub_1AADF7720(v41);
    v49 = sub_1AADF7818(v41);
    v47[2] = v48;
    v47[3] = v49;
    v47[4] = 0;
    v50 = sub_1AADF74B4(v41);
    v51 = sub_1AADF75E4(v41);
    v47[5] = v50;
    v47[6] = v51;
    v47[7] = 0;
    v103 = v35;
    v105 = v47;
    sub_1AACBC63C();
    sub_1AAF8E134();
    sub_1AADF7928();
    sub_1AAF8D194();

    sub_1AAF8F174();
    sub_1AADF797C();
    v52 = sub_1AAF8E3A4();
    MEMORY[0x1EEE9AC00](v52);
    v54 = v98;
    v53 = v99;
    *(&v81 - 2) = v98;
    *(&v81 - 1) = v53;
    type metadata accessor for Chart();
    sub_1AAF8D954();
    v55 = v88;
    sub_1AAF007E4(sub_1AADF79D0, v54, v88);
    (*(v53 + 48))(v55, v46, v54, v53);
    (*(v89 + 8))(v55, v90);
    v103 = sub_1AAF8F164();
    LOBYTE(v104) = 0;
    sub_1AACBC63C();
    sub_1AADF79D8();
    LODWORD(v47) = sub_1AAF8D194();
    v103 = sub_1AAF8F164();
    LOBYTE(v104) = 1;
    LODWORD(v50) = sub_1AAF8D194();
    v103 = sub_1AAF025D8();
    sub_1AACBC63C();
    sub_1AADF7A2C();
    v56 = sub_1AAF8D194();
    v57 = sub_1AAF8F164();
    v103 = v47;
    v104 = v57;
    LODWORD(v105) = v56;
    BYTE4(v105) = 0;
    sub_1AACBC63C();
    sub_1AADA128C();
    v58 = sub_1AAF8D194();
    v59 = sub_1AAF8F164();
    v103 = v50;
    v104 = v59;
    LODWORD(v105) = v56;
    BYTE4(v105) = 1;
    LODWORD(v90) = sub_1AAF8D194();
    v60 = sub_1AAF8F164();
    v103 = v56;
    v104 = v60;
    sub_1AACBC63C();
    v61 = MEMORY[0x1E69E6720];
    sub_1AACCFD50(0, &qword_1ED9AE370, &type metadata for ForegroundStyleScale, MEMORY[0x1E69E6720]);
    sub_1AADF7A80();
    LODWORD(v89) = sub_1AAF8D194();
    v103 = v56;
    sub_1AACBC63C();
    sub_1AACCFD50(0, &qword_1ED9AEB50, &type metadata for SymbolSizeScale, v61);
    sub_1AADF7AD4();
    LODWORD(v88) = sub_1AAF8D194();
    v103 = v56;
    sub_1AACBC63C();
    sub_1AACCFD50(0, qword_1ED9AED88, &type metadata for SymbolScale, v61);
    sub_1AADF7B28();
    LODWORD(v87) = sub_1AAF8D194();
    if (qword_1ED9B03C0 != -1)
    {
      swift_once();
    }

    v103 = v56;
    v105 = qword_1ED9C33E8;
    sub_1AACBC63C();
    sub_1AACCFD50(0, &qword_1ED9AEBB0, &type metadata for LineStyleScale, MEMORY[0x1E69E6720]);
    sub_1AADF7B7C();
    v82 = sub_1AAF8D194();
    v62 = v96;
    v63 = sub_1AADF34D8(v58, v96);
    v64 = v63;
    v81 = HIDWORD(v63);
    v65 = v90;
    v66 = sub_1AADF34D8(v90, v62);
    v67 = v66;
    v68 = HIDWORD(v66);
    v103 = sub_1AAF8F164();
    v104 = v65;
    LODWORD(v105) = v58;
    sub_1AACBC63C();
    sub_1AADF7BD0();
    sub_1AADF7C34();
    v69 = sub_1AAF8D194();
    v70 = sub_1AAF025D8();
    v83 = &v81;
    v103 = v70;
    v104 = v58;
    v105 = __PAIR64__(v89, v65);
    v106 = v87;
    v107 = v88;
    v108 = v82;
    v109 = v64;
    v110 = v67;
    v111 = v81;
    v112 = v68;
    v113 = v69;
    v114 = 0;
    MEMORY[0x1EEE9AC00](v70);
    *(&v81 - 4) = v93;
    v71 = type metadata accessor for Chart.AttributeGraphBasedChart();
    *(&v81 - 3) = v71;
    *(&v81 - 2) = swift_getWitnessTable();
    v72 = sub_1AAF8D1A4();
    sub_1AACBC418(&v103, sub_1AAD4AE90, (&v81 - 6), v71, MEMORY[0x1E69E73E0], v72, MEMORY[0x1E69E7410], v73);
    v74 = v91;
    sub_1AACBC644(v102, v91);
    swift_getWitnessTable();
    sub_1AAF8EAA4();
    (*(v92 + 8))(v74, v94);
    sub_1AADFAF78(v101, type metadata accessor for _ChartContentOutputs);
    sub_1AADFAF78(v100, type metadata accessor for _ChartContentInputs);
    return v84(v85, v97);
  }

  else
  {
    type metadata accessor for Chart();
    v76 = sub_1AACBC3B4(a1);
    v103 = v76;
    MEMORY[0x1EEE9AC00](v76);
    *(&v81 - 4) = v85;
    v77 = type metadata accessor for Chart.RenderBasedChart();
    *(&v81 - 3) = v77;
    *(&v81 - 2) = swift_getWitnessTable();
    v78 = sub_1AAF8D1A4();
    sub_1AACBC418(&v103, sub_1AACBC5B0, (&v81 - 6), v77, MEMORY[0x1E69E73E0], v78, MEMORY[0x1E69E7410], v79);
    v80 = v83;
    sub_1AACBC644(v102, v83);
    swift_getWitnessTable();
    sub_1AAF8EAA4();
    (*(v84 + 1))(v80, v86);
    return (*(v22 + 8))(v32, v97);
  }
}

void sub_1AACB606C()
{
  if (!qword_1ED9B2AB0)
  {
    sub_1AACB62F8();
    v0 = sub_1AAF8F3F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2AB0);
    }
  }
}

void sub_1AACB60D0()
{
  if (!qword_1ED9B1EA8[0])
  {
    sub_1AACB6480(255, &qword_1ED9B1E98, sub_1AACAA3E4, &type metadata for ChartScaleModifier, MEMORY[0x1E697FDE8]);
    sub_1AACB6194(255, &qword_1ED9B1E78, &type metadata for ChartEncodingConfigurations, MEMORY[0x1E6980B20]);
    v0 = sub_1AAF8DF74();
    if (!v1)
    {
      atomic_store(v0, qword_1ED9B1EA8);
    }
  }
}

void sub_1AACB6194(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1AACB61E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1AACB6294(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1AACB62F8()
{
  result = qword_1ED9B4880;
  if (!qword_1ED9B4880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B4880);
  }

  return result;
}

uint64_t sub_1AACB634C(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_1AACB6398(unsigned __int8 a1)
{
  sub_1AAF90694();
  MEMORY[0x1AC5992C0](a1);
  v2 = sub_1AAF906F4();

  return sub_1AACB1ED0(a1, v2);
}

uint64_t sub_1AACB640C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

void sub_1AACB6480(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1AACB64E8()
{
  if (!qword_1ED9B2E10)
  {
    sub_1AACB6580();
    sub_1AACAF1E8(255, &qword_1ED9B2B88, sub_1AACB606C, MEMORY[0x1E6980B20]);
    v0 = sub_1AAF8DF74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2E10);
    }
  }
}

void sub_1AACB6580()
{
  if (!qword_1ED9B2BE0)
  {
    sub_1AACAA2F8();
    v0 = sub_1AAF8E4F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2BE0);
    }
  }
}

void sub_1AACB65DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1AACB6640@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v19 = a2;
  sub_1AACB65DC(0, &qword_1ED9B4550, type metadata accessor for ChartEnvironmentValues, MEMORY[0x1E697DCC0]);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20[-v5 - 8];
  v7 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = type metadata accessor for Chart();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v20[-v11 - 8];
  sub_1AACB723C(&v20[-v11 - 8]);
  (*(v7 + 32))(v9, v12, a1);
  sub_1AACB72C4(v6);
  KeyPath = swift_getKeyPath();
  v14 = swift_getKeyPath();
  v15 = swift_getKeyPath();
  v22[0] = swift_getKeyPath();
  memset(&v22[1], 0, 24);
  v23 = 0;
  v16 = swift_getKeyPath();
  v26 = 0;
  *&v24[0] = v16;
  v25 = 0;
  sub_1AACBE1C8(v21);
  v17 = swift_getKeyPath();
  sub_1AACBE204(v20);
  return sub_1AACBE240(v9, v6, KeyPath, 0, 0, v14, 0, 0, v19, v15, 0, v22, v24, v21, v17, 0, v20, sub_1AACCD958, 0, a1);
}

uint64_t sub_1AACB69CC@<X0>(void *a1@<X8>)
{
  sub_1AACB6BD8();
  result = sub_1AAF8E144();
  *a1 = v3;
  return result;
}

uint64_t sub_1AACB6A30@<X0>(void *a1@<X8>)
{
  sub_1AACBE71C();
  result = sub_1AAF8E144();
  *a1 = v3;
  return result;
}

uint64_t sub_1AACB6A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[8];
  v8 = *(v2 + 2);
  v7 = *(v2 + 3);
  KeyPath = swift_getKeyPath();
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v6;
  *(v10 + 32) = v8;
  *(v10 + 40) = v7;
  sub_1AACB6580();
  (*(*(v11 - 8) + 16))(a2, a1, v11);
  sub_1AACB64E8();
  v13 = (a2 + *(v12 + 36));
  *v13 = KeyPath;
  v13[1] = sub_1AACB6C2C;
  v13[2] = v10;
}

uint64_t sub_1AACB6B98()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

unint64_t sub_1AACB6BD8()
{
  result = qword_1ED9B5AB0;
  if (!qword_1ED9B5AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B5AB0);
  }

  return result;
}

unint64_t sub_1AACB6C3C(uint64_t *a1, unsigned __int8 a2, char a3, uint64_t a4)
{
  v8 = *a1;
  if (*(*a1 + 16) && (v9 = sub_1AACB6398(a2), (v10 & 1) != 0))
  {
    v11 = *(v8 + 56) + 24 * v9;
    v12 = *v11;
    v13 = *(v11 + 8);
    v18 = *(v11 + 16);

    if (!a4)
    {
LABEL_4:
      a4 = v13;
      goto LABEL_7;
    }
  }

  else
  {
    v13 = 0;
    v18 = MEMORY[0x1E69E7CC0];
    v12 = 3;
    if (!a4)
    {
      goto LABEL_4;
    }
  }

LABEL_7:
  if (a3 == 3)
  {
    a3 = v12;
  }

  sub_1AACB7008(v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *a1;
  result = sub_1AACBEF48(a3, a4, v18, a2, isUniquelyReferenced_nonNull_native);
  *a1 = v17;
  return result;
}

size_t sub_1AACB6D54(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1AAD6CF88(0, a5, a6, MEMORY[0x1E69E6F90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1AACB6F48@<X0>(void *a1@<X8>)
{
  sub_1AACB6BD8();
  result = sub_1AAF8E144();
  *a1 = v3;
  return result;
}

uint64_t sub_1AACB6F98@<X0>(void *a1@<X8>)
{
  if (qword_1ED9B5AB8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1ED9C3918;
}

uint64_t sub_1AACB7008(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1AACB7100(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1AACB7100(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6D1F0(0, &qword_1EB423AB8, &type metadata for AxisLabelConfiguration, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1AACB723C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Chart();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t sub_1AACB72C4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_1AACB6294(0, qword_1ED9B5598, type metadata accessor for ChartEnvironmentValues, MEMORY[0x1E697DCB8]);

  return swift_storeEnumTagMultiPayload();
}

uint64_t AxisMarks.init(preset:position:values:content:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  v16 = type metadata accessor for AxisMarkValues(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a2;
  v24 = *a1;
  v23 = v19;
  sub_1AACB81D4(a3, v18, type metadata accessor for AxisMarkValues);
  v20 = swift_allocObject();
  v20[2] = a6;
  v20[3] = a7;
  v20[4] = a4;
  v20[5] = a5;
  AxisMarks.init(preset:position:values:content:)(&v24, &v23, v18, sub_1AACE0F34, v20, a6, a7, a8);
  return sub_1AACB767C(a3, type metadata accessor for AxisMarkValues);
}

void *AxisMarks.init(preset:position:values:content:)@<X0>(_BYTE *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  v14 = *a2;
  *a8 = *a1;
  a8[1] = v14;
  v15 = type metadata accessor for AxisMarks();
  sub_1AACB75FC(a3, &a8[*(v15 + 40)], &qword_1ED9B63B8, type metadata accessor for AxisMarkValues.Storage);
  v16 = &a8[*(v15 + 44)];
  result = swift_allocObject();
  result[2] = a6;
  result[3] = a7;
  result[4] = a4;
  result[5] = a5;
  *v16 = sub_1AACE0F40;
  *(v16 + 1) = result;
  v16[40] = 1;
  return result;
}

uint64_t sub_1AACB75C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AACB75FC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1AACAF184(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AACB767C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AACB76F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1AACAF184(0, &qword_1ED9B63B8, type metadata accessor for AxisMarkValues.Storage, MEMORY[0x1E69E6720]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 40);

    v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 44) + 40) = -a2;
  }
}

uint64_t sub_1AACB77F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AACAF184(0, &qword_1ED9B63B8, type metadata accessor for AxisMarkValues.Storage, MEMORY[0x1E69E6720]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 44) + 40);
    if (v12 > 2)
    {
      return (v12 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void *static BuilderTuple<each A>._makeAxisContent(_:_:)@<X0>(uint64_t TupleTypeMetadata@<X0>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v7 = a2;
  v49 = a5;
  if (a2 == 1)
  {
    v8 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v11 != v7)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v8 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v47 = v23;
  v24 = *(v23 + 16);
  v51 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v24();
  v48 = v8;
  if (v7)
  {
    v26 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v27 = (a4 & 0xFFFFFFFFFFFFFFFELL);
    v28 = (v8 + 32);
    v55 = MEMORY[0x1E69E7CC0];
    v50 = v7;
    while (1)
    {
      v30 = *v27;
      v54 = *v26;
      MEMORY[0x1EEE9AC00](v25);
      v33 = &v47 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
      v34 = v50 == 1 ? 0 : *v28;
      v53 = v31;
      (*(v31 + 16))(v33, &v51[v34], v54);
      swift_getDynamicType();
      (*(v30 + 8))(&v56, v33);
      result = v55;
      v35 = v56;
      v36 = *(v56 + 16);
      v37 = v55[2];
      v38 = v37 + v36;
      if (__OFADD__(v37, v36))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v55;
      if (!isUniquelyReferenced_nonNull_native || v38 > v55[3] >> 1)
      {
        if (v37 <= v38)
        {
          v41 = v37 + v36;
        }

        else
        {
          v41 = v37;
        }

        v40 = sub_1AACB8194(isUniquelyReferenced_nonNull_native, v41, 1, v55);
      }

      v42 = *(v35 + 16);
      v55 = v40;
      if (v42)
      {
        v52 = (v40[3] >> 1) - v40[2];
        result = type metadata accessor for AxisMarksConfiguration();
        if (v52 < v36)
        {
          goto LABEL_35;
        }

        swift_arrayInitWithCopy();

        if (v36)
        {
          v43 = v55[2];
          v44 = __OFADD__(v43, v36);
          v45 = v43 + v36;
          if (v44)
          {
            goto LABEL_36;
          }

          v55[2] = v45;
        }
      }

      else
      {

        if (v36)
        {
          goto LABEL_34;
        }
      }

      v25 = (*(v53 + 8))(v33, v54);
      v28 += 4;
      ++v27;
      ++v26;
      if (!--v7)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
    v55 = MEMORY[0x1E69E7CC0];
LABEL_32:
    v46 = v48;
    *v49 = v55;
    return (*(v47 + 8))(v51, v46);
  }

  return result;
}

uint64_t static Optional<A>._makeAxisContent(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v8 = sub_1AAF8FE74();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  v13 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8);
  if ((*(v13 + 48))(v12, 1, a2) == 1)
  {
    result = (*(v9 + 8))(v12, v8);
    *a4 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    (*(v13 + 32))(v15, v12, a2);
    (*(a3 + 8))(v15);
    return (*(v13 + 8))(v15, a2);
  }

  return result;
}

uint64_t static AxisMarks._makeAxisContent(_:_:)@<X0>(__int16 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for AxisMarksConfiguration();
  v5 = (v4 - 8);
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v10 = type metadata accessor for AxisMarks();
  sub_1AACAEB18(a1 + *(v10 + 40), v8 + v5[8], &qword_1ED9B63B8, type metadata accessor for AxisMarkValues.Storage);
  sub_1AACB4B38(a1 + *(v10 + 44), v8 + v5[9]);
  v11 = v8 + v5[10];
  *(v11 + 4) = 0;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *v8 = v9;
  sub_1AACAF184(0, &qword_1ED9B1DF0, type metadata accessor for AxisMarksConfiguration, MEMORY[0x1E69E6F90]);
  v12 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1AAF92AB0;
  result = sub_1AACB812C(v8, v13 + v12, type metadata accessor for AxisMarksConfiguration);
  *a2 = v13;
  return result;
}

uint64_t sub_1AACB812C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AACB81D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AACB8248()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for RenderBasedChartView();
  v3 = *(*(v2 - 1) + 80);
  v4 = *(*(v2 - 1) + 64);
  v5 = (v3 + 32) & ~v3;
  v6 = v0 + v5;
  (*(*(v1 - 8) + 8))(v0 + v5, v1);
  v7 = v0 + v5 + v2[9];
  sub_1AACB6294(0, qword_1ED9B5598, type metadata accessor for ChartEnvironmentValues, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1AAF8CAA4();
    (*(*(v8 - 8) + 8))(v7, v8);
    v9 = type metadata accessor for ChartEnvironmentValues(0);
    v10 = v9[5];
    v11 = sub_1AAF8CBA4();
    (*(*(v11 - 8) + 8))(v7 + v10, v11);
    v12 = v9[6];
    v13 = sub_1AAF8DF14();
    (*(*(v13 - 8) + 8))(v7 + v12, v13);
    v14 = v9[8];
    v15 = sub_1AAF8DCD4();
    (*(*(v15 - 8) + 8))(v7 + v14, v15);
  }

  else
  {
  }

  sub_1AACB8774(*(v6 + v2[10]), *(v6 + v2[10] + 8), *(v6 + v2[10] + 16), sub_1AACB8784);
  sub_1AACB8774(*(v6 + v2[11]), *(v6 + v2[11] + 8), *(v6 + v2[11] + 16), sub_1AACB8784);
  sub_1AACB8788(*(v6 + v2[12]), *(v6 + v2[12] + 8), MEMORY[0x1E69E7D48], MEMORY[0x1E69E7CF8]);
  v16 = v6 + v2[13];
  sub_1AACB879C(*v16, *(v16 + 8), *(v16 + 16), *(v16 + 24), *(v16 + 32));
  v17 = v6 + v2[14];
  sub_1AACB87F0(*v17, *(v17 + 8), *(v17 + 16), *(v17 + 24), *(v17 + 32), *(v17 + 40), *(v17 + 48), *(v17 + 56));
  v18 = v6 + v2[15];
  if (*(v18 + 419) != 1)
  {
    goto LABEL_23;
  }

  if (*(v18 + 40) != 255)
  {
    sub_1AACB634C(v6 + v2[15]);
  }

  if (*(v18 + 88) != 255)
  {
    sub_1AACB634C(v18 + 48);
  }

  if (*(v18 + 136) != 255)
  {
    sub_1AACB634C(v18 + 96);
  }

  if (*(v18 + 184) != 255)
  {
    sub_1AACB634C(v18 + 144);
  }

  if (*(v18 + 232) != 255)
  {
    sub_1AACB634C(v18 + 192);
  }

  if (*(v18 + 280) != 255)
  {
    sub_1AACB634C(v18 + 240);
  }

  if (*(v18 + 328) != 255)
  {
    sub_1AACB634C(v18 + 288);
  }

  if (*(v18 + 376) != 255)
  {
    sub_1AACB634C(v18 + 336);
  }

  if (*(v18 + 392))
  {

LABEL_23:
  }

  sub_1AACB8788(*(v6 + v2[16]), *(v6 + v2[16] + 8), MEMORY[0x1E69E7D48], MEMORY[0x1E69E7CF8]);
  v19 = v6 + v2[17];
  if (*(v19 + 80))
  {
    if (*(v19 + 64))
    {
      sub_1AACB634C(v19 + 40);
    }
  }

  else
  {
  }

  v20 = v6 + v2[18];
  sub_1AACB6294(0, &qword_1ED9B2AF0, type metadata accessor for ChartModel, MEMORY[0x1E6981E90]);
  (*(*(v21 - 8) + 8))(v20, v21);
  sub_1AACB6294(0, &qword_1ED9B44B0, type metadata accessor for ChartModel, MEMORY[0x1E6981E98]);

  v22 = v2[19];
  v23 = sub_1AAF8E9D4();
  (*(*(v23 - 8) + 8))(v6 + v22, v23);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v4, v3 | 7);
}

uint64_t sub_1AACB8774(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void))
{
  if (a3)
  {
    return a4();
  }

  else
  {
  }
}

uint64_t sub_1AACB8788(uint64_t a1, char a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  if (a2)
  {
    return a4();
  }

  else
  {
    return a3();
  }
}

uint64_t sub_1AACB879C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    sub_1AACB4A98(a1);

    return sub_1AACB4A98(a3);
  }

  else
  {
  }
}

uint64_t sub_1AACB87F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8)
  {
    return sub_1AACB87FC(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
  }
}

uint64_t sub_1AACB87FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7 != 1)
  {
  }

  return result;
}

uint64_t sub_1AACB8810(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AACB4144(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AACB8890(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AACB4194(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AACB8910(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_1AACBB198(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1AACB8A38(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_1AADB2F9C(a1);
    v7 = sub_1AACB89FC(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1AAD958AC();
        v11 = v13;
      }

      sub_1AACBB198((*(v11 + 56) + 40 * v9), v14);
      sub_1AAD92D84(v9, v11);
      *v3 = v11;
    }

    else
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
    }

    return sub_1AADB2F9C(v14);
  }

  return result;
}

uint64_t sub_1AACB8A38(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = sub_1AACB8B34(a1, v7);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  sub_1AACB8B84(v12, a2, a3, v3, v7, v8);
  return sub_1AACB634C(a1);
}

uint64_t sub_1AACB8B34(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1AACB8B84(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v12 = sub_1AACB2508(&v32);
  (*(*(a5 - 8) + 32))(v12, a1, a5);
  v13 = *a4;
  v15 = sub_1AACC9B78(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *a4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7] + 40 * v15;
      sub_1AACB634C(v22);
      return sub_1AACBB198(&v32, v22);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_1AAD958AC();
    goto LABEL_7;
  }

  sub_1AACB8D98(v18, a3 & 1);
  v24 = sub_1AACC9B78(a2);
  if ((v19 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_1AAF905B4();
    __break(1u);
    return result;
  }

  v15 = v24;
  v21 = *a4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  v26 = sub_1AACB8B34(&v32, v33);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_1AACB9098(v15, a2, v29, v21, a5, a6);
  return sub_1AACB634C(&v32);
}

uint64_t sub_1AACB8D98(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AACB9028(0, &qword_1ED9B2918, &qword_1ED9B37E0);
  result = sub_1AAF90394();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 40 * v19);
      if (a2)
      {
        sub_1AACBB198(v21, v31);
      }

      else
      {
        sub_1AACAEF68(v21, v31);
      }

      result = sub_1AAF90684();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_1AACBB198(v31, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
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

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

void sub_1AACB9028(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1AACBB650(255, a3);
    v4 = sub_1AAF903B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1AACB9098(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v17 = a5;
  v18 = a6;
  v11 = sub_1AACB2508(&v16);
  (*(*(a5 - 8) + 32))(v11, a3, a5);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1AACBB198(&v16, a4[7] + 40 * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_1AACB9168(uint64_t a1)
{
  sub_1AACB4144(0, qword_1ED9B3E60, &type metadata for AnyChartContent, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AACB91E8(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v4 = *(v2 + 16);
  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    *(v3 + 16) = v5;
    sub_1AACB40E8(0, &qword_1ED9B3D60, &qword_1ED9B4100, &type metadata for StackContext, MEMORY[0x1E69E6720]);
    v9[3] = v8;
    v9[4] = &off_1F1FE4488;
    v9[0] = v7;
    v9[1] = a2;
    swift_beginAccess();
    sub_1AACBB2CC(v7);
    sub_1AACB8910(v9, v5);
    swift_endAccess();
    return *(v3 + 16);
  }

  return result;
}

const void *sub_1AACB92B8(const void *result)
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
    sub_1AACB40E8(0, &qword_1ED9B3D68, qword_1ED9B3CE8, &type metadata for SubPositionContext, MEMORY[0x1E69E6720]);
    v8[3] = v6;
    v8[4] = &off_1F1FE4488;
    v8[0] = swift_allocObject();
    memcpy((v8[0] + 16), v5, 0x102uLL);
    swift_beginAccess();
    sub_1AACB8890(v5, v7, qword_1ED9B3CE8, &type metadata for SubPositionContext);
    sub_1AACB8910(v8, v4);
    swift_endAccess();
    return *(v2 + 16);
  }

  return result;
}

uint64_t sub_1AACB93BC()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    if (v1 == 1)
    {
      goto LABEL_8;
    }

    sub_1AAD04750(*(v0 + 16), *(v0 + 24), *(v0 + 32));

    sub_1AAD0E818(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  }

  if (*(v0 + 128))
  {
    sub_1AAD04750(*(v0 + 104), *(v0 + 112), *(v0 + 120));

    sub_1AAD0E818(*(v0 + 136), *(v0 + 144), *(v0 + 152));
  }

  if (*(v0 + 216))
  {
    sub_1AAD04750(*(v0 + 192), *(v0 + 200), *(v0 + 208));

    sub_1AAD0E818(*(v0 + 224), *(v0 + 232), *(v0 + 240));
  }

LABEL_8:

  return MEMORY[0x1EEE6BDD0](v0, 274, 7);
}

unint64_t sub_1AACB946C()
{
  v35 = sub_1AACB978C(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = *(v0 + 72);
  v50[2] = *(v0 + 56);
  v50[3] = v2;
  v51 = *(v0 + 88);
  v50[0] = *(v0 + 24);
  v50[1] = v1;
  sub_1AACB987C(v50, v48);

  v3 = sub_1AACB98D8(v50);
  sub_1AACB9A70(v3, v4, 0);
  swift_beginAccess();
  v5 = *(v0 + 144);
  v48[2] = *(v0 + 128);
  v48[3] = v5;
  v49 = *(v0 + 160);
  v6 = *(v0 + 112);
  v48[0] = *(v0 + 96);
  v48[1] = v6;

  sub_1AACB987C(v48, v46);
  v7 = sub_1AACB98D8(v48);
  sub_1AACB9A70(v7, v8, 1);
  swift_beginAccess();
  v9 = *(v0 + 264);
  v10 = *(v0 + 296);
  v46[2] = *(v0 + 280);
  v46[3] = v10;
  v47 = *(v0 + 312);
  v46[0] = *(v0 + 248);
  v46[1] = v9;

  sub_1AACB987C(v46, v44);
  v11 = sub_1AACB98D8(v46);
  sub_1AACB9A70(v11, v12, 3);
  swift_beginAccess();
  v13 = *(v0 + 368);
  v44[2] = *(v0 + 352);
  v44[3] = v13;
  v45 = *(v0 + 384);
  v14 = *(v0 + 336);
  v44[0] = *(v0 + 320);
  v44[1] = v14;

  sub_1AACB987C(v44, v42);
  v15 = sub_1AACB98D8(v44);
  sub_1AACB9A70(v15, v16, 4);
  swift_beginAccess();
  v17 = *(v0 + 440);
  v42[2] = *(v0 + 424);
  v42[3] = v17;
  v43 = *(v0 + 456);
  v18 = *(v0 + 408);
  v42[0] = *(v0 + 392);
  v42[1] = v18;

  sub_1AACB987C(v42, v40);
  v19 = sub_1AACB98D8(v42);
  sub_1AACB9A70(v19, v20, 5);
  swift_beginAccess();
  v21 = *(v0 + 512);
  v40[2] = *(v0 + 496);
  v40[3] = v21;
  v41 = *(v0 + 528);
  v22 = *(v0 + 480);
  v40[0] = *(v0 + 464);
  v40[1] = v22;

  sub_1AACB987C(v40, v38);
  v23 = sub_1AACB98D8(v40);
  sub_1AACB9A70(v23, v24, 6);
  swift_beginAccess();
  v25 = *(v0 + 584);
  v38[2] = *(v0 + 568);
  v38[3] = v25;
  v39 = *(v0 + 600);
  v26 = *(v0 + 552);
  v38[0] = *(v0 + 536);
  v38[1] = v26;

  sub_1AACB987C(v38, v36);
  v27 = sub_1AACB98D8(v38);
  sub_1AACB9A70(v27, v28, 7);
  swift_beginAccess();
  v29 = *(v0 + 656);
  v36[2] = *(v0 + 640);
  v36[3] = v29;
  v37 = *(v0 + 672);
  v30 = *(v0 + 624);
  v36[0] = *(v0 + 608);
  v36[1] = v30;

  sub_1AACB987C(v36, &v34);
  v31 = sub_1AACB98D8(v36);
  sub_1AACB9A70(v31, v32, 8);
  return v35;
}

unint64_t sub_1AACB978C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1AADFA884();
    v3 = sub_1AAF903A4();
    for (i = (a1 + 49); ; i += 24)
    {
      v5 = *(i - 17);
      v6 = *(i - 9);
      v7 = *(i - 1);
      v8 = *i;
      result = sub_1AACB6398(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v11 = v3[7] + 16 * result;
      *v11 = v6;
      *(v11 + 8) = v7;
      *(v11 + 9) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1AACB98D8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    if (*(a1 + 40))
    {
      v2 = *(a1 + 48);
      if (!*(v2 + 16))
      {

        sub_1AACB9B38(a1);
        return 0;
      }

      swift_bridgeObjectRetain_n();
      v3 = sub_1AAF6C314(v2);
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v8 = *(a1 + 24);
      v7 = *(a1 + 32);
      sub_1AACB4144(0, &qword_1ED9B28C0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6F90]);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1AAF9E2B0;
      *(v9 + 32) = v8;
      *(v9 + 40) = v7;
      v3 = sub_1AACC0420(v9);
    }
  }

  else
  {
    v5 = *a1;
    v4 = *(a1 + 8);
    sub_1AACB4144(0, &qword_1ED9B28C0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1AAF9E2B0;
    *(v6 + 32) = v5;
    *(v6 + 40) = v4;
    v3 = sub_1AACC0420(v6);
  }

  sub_1AACB9B38(a1);
  return v3;
}

unint64_t sub_1AACB9A70(uint64_t a1, __int16 a2, char a3)
{
  v4 = v3;
  if ((a2 & 0xFF00) == 0x200)
  {
    result = sub_1AACB6398(a3);
    if (v6)
    {
      v7 = result;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v3;
      v14 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1AAD95A40();
        v9 = v14;
      }

      result = sub_1AAD92F00(v7, v9);
      *v4 = v9;
    }
  }

  else
  {
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v4;
    result = sub_1AACD4348(a1, a2 & 0x1FF, a3, v13);
    *v4 = v15;
  }

  return result;
}

uint64_t sub_1AACB9B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AACB9D6C();
  result = sub_1AAF90384();
  v5 = 0;
  v29 = a1;
  v8 = *(a1 + 64);
  v7 = a1 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v28 = result + 64;
  v32 = result;
  if ((v10 & v6) != 0)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v16 = v13 | (v5 << 6);
      v17 = *(*(v29 + 48) + v16);
      v18 = *(v29 + 56) + 24 * v16;
      v19 = *(v18 + 8);
      v20 = *(v18 + 16);
      v36[0] = *v18;
      v37 = v19;
      v38 = v20;

      v21 = v39;
      sub_1AACB9DD0(v36, a2, a3, v33);
      v39 = v21;
      if (v21)
      {
        break;
      }

      *(v28 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v32;
      *(v32[6] + v16) = v17;
      v22 = v32[7] + 24 * v16;
      v23 = v34;
      v24 = v35;
      *v22 = v33[0];
      *(v22 + 8) = v23;
      *(v22 + 16) = v24;
      v25 = v32[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_17;
      }

      v32[2] = v27;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

    return v32;
  }

  else
  {
LABEL_5:
    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v12)
      {
        return result;
      }

      v15 = *(v7 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

void sub_1AACB9D6C()
{
  if (!qword_1ED9B2938)
  {
    sub_1AACB62F8();
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2938);
    }
  }
}

void sub_1AACB9DD0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v81 = a4;
  v7 = type metadata accessor for AxisMarksConfiguration();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 8);
  v11 = *(a1 + 16);
  if (*(a2 + 1266))
  {
    v80 = 0;
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (*a1 == 3)
    {
      v24 = 1;
    }

    else
    {
      v24 = sub_1AAF8D874() ^ 1;
    }

    v80 = v24;
    if (v12)
    {
LABEL_3:
      v13 = *(v12 + 16);
      v14 = MEMORY[0x1E69E7CC0];
      if (v13)
      {
        v89 = v11;
        v103[0] = MEMORY[0x1E69E7CC0];
        sub_1AACBA6D4(0, v13, 0);
        v91 = v12;
        if (!*(v12 + 16))
        {
          goto LABEL_47;
        }

        v15 = 0;
        v14 = v103[0];
        v16 = v91 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
        v90 = *(v8 + 72);
        while (1)
        {
          sub_1AACBA81C(v16, v10, type metadata accessor for AxisMarksConfiguration);
          v17 = v82;
          sub_1AACBA884(v10, a3, v104);
          v82 = v17;
          if (v17)
          {
            goto LABEL_51;
          }

          sub_1AACBA674(v10, type metadata accessor for AxisMarksConfiguration);
          *(v95 + 9) = *(v106 + 9);
          v94 = v105;
          v95[0] = v106[0];
          v92 = v104[0];
          v93 = v104[1];
          v103[0] = v14;
          v19 = *(v14 + 16);
          v18 = *(v14 + 24);
          if (v19 >= v18 >> 1)
          {
            sub_1AACBA6D4((v18 > 1), v19 + 1, 1);
            v14 = v103[0];
          }

          *(v14 + 16) = v19 + 1;
          v20 = (v14 + 80 * v19);
          v20[2] = v92;
          v21 = v93;
          v22 = v94;
          v23 = v95[0];
          *(v20 + 89) = *(v95 + 9);
          v20[4] = v22;
          v20[5] = v23;
          v20[3] = v21;
          if (v13 - 1 == v15)
          {
            break;
          }

          v16 += v90;
          if (++v15 >= *(v91 + 16))
          {
            goto LABEL_47;
          }
        }

        v11 = v89;
      }

      goto LABEL_18;
    }
  }

  v14 = 0;
LABEL_18:
  v25 = *(v11 + 16);
  v26 = MEMORY[0x1E69E7CC0];
  if (!v25)
  {
LABEL_44:
    v77 = v81;
    *v81 = v80 & 1;
    *(v77 + 1) = v14;
    *(v77 + 2) = v26;
    return;
  }

  v79 = v14;
  v108 = MEMORY[0x1E69E7CC0];
  sub_1AAD41D24(0, v25, 0);
  v26 = v108;
  v27 = v11 + 32;
  while (1)
  {
    sub_1AAD81760(v27, v104);
    LODWORD(v91) = BYTE8(v105);
    v28 = LOBYTE(v106[1]);
    if (v106[1])
    {
      v10 = 0;
    }

    else
    {
      v29 = *(a3 + 16);
      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_48;
      }

      v32 = *(&v106[0] + 1);
      v31 = *&v106[0];
      *(a3 + 16) = v30;
      sub_1AACB4144(0, &qword_1EB427418, MEMORY[0x1E6981D58], type metadata accessor for ParametersContext.ParameterSignalContainer);
      *(&v93 + 1) = v33;
      *&v94 = &off_1F1FE4488;
      v92 = __PAIR128__(v32, v31);
      swift_beginAccess();

      sub_1AACB8910(&v92, v30);
      swift_endAccess();
      v10 = *(a3 + 16);
    }

    LODWORD(v89) = v107;
    LODWORD(v90) = v28;
    if (v107)
    {
      v34 = 0;
    }

    else
    {
      v35 = *(a3 + 16);
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        goto LABEL_49;
      }

      v37 = *(&v106[1] + 1);
      *(a3 + 16) = v36;
      sub_1AACB4144(0, &qword_1ED9B3D70, MEMORY[0x1E69E7DE0], type metadata accessor for ParametersContext.ParameterSignalContainer);
      *(&v93 + 1) = v38;
      *&v94 = &off_1F1FE4488;
      *&v92 = v37;
      swift_beginAccess();

      sub_1AACB8910(&v92, v36);
      swift_endAccess();
      v34 = *(a3 + 16);
    }

    v39 = *(a3 + 16);
    v40 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    v84 = v34;
    v85 = v10;
    v86 = v27;
    v87 = v26;
    v88 = v25;
    *(a3 + 16) = v40;
    sub_1AACBAEA8(0, &qword_1EB427410, sub_1AAD81810, type metadata accessor for ParametersContext.ParameterSignalContainer);
    v42 = v41;
    v10 = &off_1F1FE4488;
    *(&v93 + 1) = v41;
    *&v94 = &off_1F1FE4488;
    *&v92 = swift_allocObject();
    sub_1AACAEF68(v104, v92 + 16);
    swift_beginAccess();
    sub_1AACBB198(&v92, v103);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v102 = *(a3 + 24);
    v44 = v102;
    v45 = sub_1AACB8B34(v103, v103[3]);
    v83 = &v78;
    v46 = MEMORY[0x1EEE9AC00](v45);
    v48 = &v78 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v49 + 16))(v48, v46);
    v100 = v42;
    v101 = &off_1F1FE4488;
    v50 = swift_allocObject();
    *&v99 = v50;
    v51 = *(v48 + 1);
    *(v50 + 16) = *v48;
    *(v50 + 32) = v51;
    *(v50 + 48) = *(v48 + 4);
    v53 = sub_1AACC9B78(v40);
    v54 = *(v44 + 2);
    v55 = (v52 & 1) == 0;
    v56 = v54 + v55;
    if (__OFADD__(v54, v55))
    {
      goto LABEL_46;
    }

    v57 = v52;
    if (*(v44 + 3) >= v56)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v10 = v102;
        if ((v52 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      else
      {
        sub_1AAD958AC();
        v10 = v102;
        if ((v57 & 1) == 0)
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
      sub_1AACB8D98(v56, isUniquelyReferenced_nonNull_native);
      v58 = sub_1AACC9B78(v40);
      if ((v57 & 1) != (v59 & 1))
      {
        goto LABEL_52;
      }

      v53 = v58;
      v10 = v102;
      if ((v57 & 1) == 0)
      {
LABEL_38:
        v61 = sub_1AACB8B34(&v99, v100);
        v62 = MEMORY[0x1EEE9AC00](v61);
        v64 = &v78 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v65 + 16))(v64, v62);
        v97 = v42;
        v98 = &off_1F1FE4488;
        v66 = swift_allocObject();
        *&v96 = v66;
        *(v66 + 48) = *(v64 + 4);
        v67 = *(v64 + 1);
        *(v66 + 16) = *v64;
        *(v66 + 32) = v67;
        *&v10[8 * (v53 >> 6) + 64] |= 1 << v53;
        *(*(v10 + 6) + 8 * v53) = v40;
        sub_1AACBB198(&v96, *(v10 + 7) + 40 * v53);
        v68 = *(v10 + 2);
        v69 = __OFADD__(v68, 1);
        v70 = v68 + 1;
        if (v69)
        {
          goto LABEL_50;
        }

        *(v10 + 2) = v70;
        sub_1AACB634C(&v99);
        goto LABEL_40;
      }
    }

    v60 = *(v10 + 7) + 40 * v53;
    sub_1AACB634C(v60);
    sub_1AACBB198(&v99, v60);
LABEL_40:
    sub_1AACB634C(v103);
    *(a3 + 24) = v10;
    swift_endAccess();
    sub_1AAD817BC(v104);
    v10 = *(a3 + 16);
    v71 = v86;
    v26 = v87;
    v108 = v87;
    v73 = *(v87 + 16);
    v72 = *(v87 + 24);
    v74 = v90;
    if (v73 >= v72 >> 1)
    {
      sub_1AAD41D24((v72 > 1), v73 + 1, 1);
      v26 = v108;
    }

    *(v26 + 16) = v73 + 1;
    v75 = v26 + 48 * v73;
    *(v75 + 32) = v91;
    v76 = v84;
    *(v75 + 40) = v85;
    *(v75 + 48) = v74;
    *(v75 + 56) = v76;
    *(v75 + 64) = v89;
    *(v75 + 72) = v10;
    v27 = v71 + 120;
    v25 = v88 - 1;
    if (v88 == 1)
    {
      v14 = v79;
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_46:
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
  sub_1AACBA674(v10, type metadata accessor for AxisMarksConfiguration);

  __break(1u);
LABEL_52:
  sub_1AAF905B4();
  __break(1u);
}

uint64_t sub_1AACBA63C()
{
  sub_1AACB634C(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AACBA674(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_1AACBA6D4(char *a1, int64_t a2, char a3)
{
  result = sub_1AACBA6F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AACBA6F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD469FC(0, &qword_1ED9B1DD8, &type metadata for Spec.Axis.Marks, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 80 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

uint64_t sub_1AACBA81C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1AACBA884(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AxisMarkValues.Storage(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACBAEA8(0, &qword_1ED9B63B8, type metadata accessor for AxisMarkValues.Storage, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = 0;
  v49 = *a1;
  if (v49 != 3)
  {
    v14 = *(a2 + 16);
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    *(a2 + 16) = v15;
    sub_1AACB4144(0, &qword_1ED9AFF98, &type metadata for AxisMarkPreset.Storage, type metadata accessor for ParametersContext.ParameterSignalContainer);
    *(&v46 + 1) = v16;
    v47 = &off_1F1FE4488;
    LOBYTE(v45) = v49;
    swift_beginAccess();
    sub_1AACB8910(&v45, v15);
    swift_endAccess();
    v13 = *(a2 + 16);
  }

  v39 = a1[1];
  v38 = v13;
  if (v39 == 4)
  {
    v37 = 0;
  }

  else
  {
    v17 = *(a2 + 16);
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    *(a2 + 16) = v18;
    sub_1AACB4144(0, &qword_1ED9AFF90, &type metadata for AxisMarkPosition.Storage, type metadata accessor for ParametersContext.ParameterSignalContainer);
    *(&v46 + 1) = v19;
    v47 = &off_1F1FE4488;
    LOBYTE(v45) = v39;
    swift_beginAccess();
    sub_1AACB8910(&v45, v18);
    swift_endAccess();
    v37 = *(a2 + 16);
  }

  v20 = type metadata accessor for AxisMarksConfiguration();
  sub_1AACBAF0C(&a1[v20[6]], v12);
  v21 = (*(v7 + 48))(v12, 1, v6);
  v22 = 0;
  if (v21 == 1)
  {
LABEL_11:
    v27 = *(a2 + 16);
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
    }

    else
    {
      v29 = v20[7];
      *(a2 + 16) = v28;
      sub_1AACB4144(0, &qword_1ED9B23D0, &type metadata for AxisMarksContentStorage, type metadata accessor for ParametersContext.ParameterSignalContainer);
      *(&v46 + 1) = v30;
      v47 = &off_1F1FE4488;
      *&v45 = swift_allocObject();
      sub_1AACB4B38(&a1[v29], v45 + 16);
      swift_beginAccess();
      sub_1AACB8910(&v45, v28);
      swift_endAccess();
      v31 = *(a2 + 16);
      sub_1AACB8810(&a1[v20[8]], &v45, &qword_1ED9B3AF8, &type metadata for AxisCompositingLayer);
      v32 = *(&v46 + 1);
      if (!*(&v46 + 1))
      {
        v34 = 0;
        goto LABEL_16;
      }

      v42[0] = v45;
      v42[1] = v46;
      v43 = v47;
      if (!__OFADD__(v31, 1))
      {
        *(a2 + 16) = v31 + 1;
        sub_1AACB4144(0, &qword_1ED9B0908, &type metadata for AxisCompositingLayer, type metadata accessor for ParametersContext.ParameterSignalContainer);
        v41[3] = v33;
        v41[4] = &off_1F1FE4488;
        v41[0] = swift_allocObject();
        sub_1AAF6BD24(v42, v41[0] + 16);
        swift_beginAccess();

        sub_1AACB8910(v41, v31 + 1);
        swift_endAccess();
        v34 = *(a2 + 16);
        sub_1AADDA608(v42);

LABEL_16:
        v35 = v39 == 4;
        v36 = v49 == 3;
        LOBYTE(v42[0]) = v49 == 3;
        LOBYTE(v41[0]) = v39 == 4;
        v40 = v21 == 1;
        v48 = 0;
        v44 = v32 == 0;
        *a3 = v38;
        *(a3 + 8) = v36;
        *(a3 + 16) = v37;
        *(a3 + 24) = v35;
        *(a3 + 32) = v22;
        *(a3 + 40) = v21 == 1;
        *(a3 + 48) = v31;
        *(a3 + 56) = 0;
        *(a3 + 64) = v34;
        *(a3 + 72) = v32 == 0;
        return;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  sub_1AACBB0F8(v12, v9);
  v23 = *(a2 + 16);
  v24 = v23 + 1;
  if (!__OFADD__(v23, 1))
  {
    *(a2 + 16) = v24;
    sub_1AACBAEA8(0, &qword_1ED9B23D8, type metadata accessor for AxisMarkValues.Storage, type metadata accessor for ParametersContext.ParameterSignalContainer);
    *(&v46 + 1) = v25;
    v47 = &off_1F1FE4488;
    v26 = sub_1AACB2508(&v45);
    sub_1AACBA81C(v9, v26, type metadata accessor for AxisMarkValues.Storage);
    swift_beginAccess();

    sub_1AACB8910(&v45, v24);
    swift_endAccess();
    v22 = *(a2 + 16);
    sub_1AACBA674(v9, type metadata accessor for AxisMarkValues.Storage);

    goto LABEL_11;
  }

LABEL_21:
  __break(1u);
}

uint64_t sub_1AACBAE50()
{
  if (*(v0 + 56) == 1)
  {
  }

  else if (!*(v0 + 56))
  {
    sub_1AACB634C(v0 + 16);
  }

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

void sub_1AACBAEA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1AACBAF0C(uint64_t a1, uint64_t a2)
{
  sub_1AACBAEA8(0, &qword_1ED9B63B8, type metadata accessor for AxisMarkValues.Storage, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1AACBAFA0()
{
  sub_1AACB61E4(319, &qword_1ED9B4008, &type metadata for AxisMarkPreset.Storage, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1AACB61E4(319, &qword_1ED9B3DF8, &type metadata for AxisMarkPosition.Storage, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1AACAF1E8(319, &qword_1ED9B63B8, type metadata accessor for AxisMarkValues.Storage, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1AACB61E4(319, &qword_1ED9B3AF8, &type metadata for AxisCompositingLayer, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1AACBB0F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AxisMarkValues.Storage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AACBB15C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AACBB198(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_1AACBB1B0(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1AACBB284(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1AACBB2CC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1AACBB31C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AACBB334(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 258))
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

uint64_t sub_1AACBB390(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0;
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
    *(result + 256) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 258) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 258) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void *sub_1AACBB42C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1AACBB470(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 248);
  (*(*(v7 - 8) + 56))(v3 + *(*v3 + 256), 1, 1, v7);
  v8 = (v3 + *(*v3 + 264));
  *v8 = 0;
  v8[1] = 0;
  v9 = sub_1AACBD668(a1);

  v10 = swift_allocObject();
  v10[2] = v7;
  v10[3] = a2;
  v10[4] = a3;
  v11 = (v9 + *(*v9 + 264));
  v12 = *v11;
  *v11 = sub_1AAF42F8C;
  v11[1] = v10;

  sub_1AACB4A98(v12);

  return v9;
}

uint64_t sub_1AACBB5A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AACBB5E0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AACBB650(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t type metadata accessor for ChartModel.Scenegraph()
{
  result = qword_1ED9B6D08;
  if (!qword_1ED9B6D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AACBB744()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1AACB6294(319, &qword_1ED9B4550, type metadata accessor for ChartEnvironmentValues, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1AACBBB24(319, &qword_1ED9B2F58, &qword_1ED9B3738, &type metadata for ChartPlotStyleConfiguration, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1AACBBB24(319, &qword_1ED9B2F68, qword_1ED9B37F8, &type metadata for ChartGestureConfiguration, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1AACB6294(319, &qword_1ED9B2F28, sub_1AACB606C, MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1AACBBBA0(319, &qword_1ED9B2F48, &type metadata for ChartAxisStyleConfigurations, MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              sub_1AACBBB24(319, &qword_1ED9B2F70, &qword_1ED9B3888, &type metadata for ChartLegendConfiguration, MEMORY[0x1E697DCC0]);
              if (v6 <= 0x3F)
              {
                sub_1AACBBBA0(319, &qword_1ED9B2F50, &type metadata for ChartSelectionConfiguration, MEMORY[0x1E697DCC0]);
                if (v7 <= 0x3F)
                {
                  sub_1AACBBBA0(319, &qword_1ED9B2F60, &type metadata for ChartEncodingConfigurations, MEMORY[0x1E697DCC0]);
                  if (v8 <= 0x3F)
                  {
                    sub_1AACBBBA0(319, &qword_1ED9B2F40, &type metadata for ChartScrollZoomConfiguration, MEMORY[0x1E697DCC0]);
                    if (v9 <= 0x3F)
                    {
                      sub_1AACB6294(319, &qword_1ED9B44B0, type metadata accessor for ChartModel, MEMORY[0x1E6981E98]);
                      if (v10 <= 0x3F)
                      {
                        sub_1AAF8E9D4();
                        if (v11 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
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
}

uint64_t sub_1AACBBA60()
{
  result = sub_1AAF8CAA4();
  if (v1 <= 0x3F)
  {
    result = sub_1AAF8CBA4();
    if (v2 <= 0x3F)
    {
      result = sub_1AAF8DF14();
      if (v3 <= 0x3F)
      {
        result = sub_1AAF8DCD4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_1AACBBB24(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1AACBBBA0(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1AACBBBA0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AACBBBF0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AACBBC34()
{
  result = sub_1AAF8E4B4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1AACBBCA0()
{
  sub_1AAF8F194();
  if (v0 <= 0x3F)
  {
    sub_1AAF8E3C4();
    if (v1 <= 0x3F)
    {
      sub_1AACBBDB4(319, &qword_1ED9B4428, type metadata accessor for ChartContainerValues, MEMORY[0x1E698D388]);
      if (v2 <= 0x3F)
      {
        sub_1AACBBDB4(319, &qword_1ED9B4430, MEMORY[0x1E697E648], MEMORY[0x1E698D378]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1AACBBDB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1AACBBE18()
{
  v3[3] = &type metadata for AgDSLFeatureFlagsKey;
  v3[4] = sub_1AACBBEC4();
  v0 = swift_allocObject();
  v3[0] = v0;
  *(v0 + 16) = "Charts";
  *(v0 + 24) = 6;
  *(v0 + 32) = 2;
  *(v0 + 40) = "attributeGraphBasedDSL";
  *(v0 + 48) = 22;
  *(v0 + 56) = 2;
  v1 = sub_1AAF8D174();
  result = sub_1AACB634C(v3);
  byte_1ED9C3488 = v1 & 1;
  return result;
}

unint64_t sub_1AACBBEC4()
{
  result = qword_1ED9B3B00[0];
  if (!qword_1ED9B3B00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9B3B00);
  }

  return result;
}

uint64_t sub_1AACBBF24()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1AACBBFA0()
{
  result = qword_1ED9B5468[0];
  if (!qword_1ED9B5468[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9B5468);
  }

  return result;
}

void sub_1AACBC014()
{
  sub_1AAF8DF14();
  if (v0 <= 0x3F)
  {
    sub_1AACBC0B0(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1AACBC10C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1AACBC180()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1AACBBBA0(319, &qword_1ED9B3D40, &type metadata for ScrollViewMapping, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1AACBBBA0(319, &qword_1ED9B2F38, &type metadata for ChartScrollPositionConfiguration, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1AACBBBA0(319, &qword_1ED9B2F40, &type metadata for ChartScrollZoomConfiguration, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1AACBBB24(319, &qword_1ED9B2B50, qword_1ED9B3978, &type metadata for AnyPrimitivePlottable, MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1AACBC358()
{
  result = qword_1ED9B4420;
  if (!qword_1ED9B4420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B4420);
  }

  return result;
}

uint64_t sub_1AACBC3B4(unsigned int *a1)
{
  v2 = sub_1AAF8D954();
  v4 = *(v2 - 8);
  result = v2 - 8;
  if (*(v4 + 64) == 4)
  {
    return *a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AACBC418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00]();
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v12, v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t sub_1AACBC4F4@<X0>(_DWORD *a1@<X8>)
{
  sub_1AACBC63C();
  result = sub_1AAF8D194();
  *a1 = result;
  return result;
}

uint64_t sub_1AACBC644@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = a1;
  result = sub_1AAF8D954();
  if (*(*(result - 8) + 64) == 4)
  {
    return (*(*(result - 8) + 16))(a2, &v4, result);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AACBC774(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_1AACBC7D4()
{
  v1 = v0;
  v2 = sub_1AAF8CBA4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v53 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1AAF8CAA4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v45 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1AAF8DF14();
  v6 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACBD4E4(0, &qword_1ED9B5518, MEMORY[0x1E6980F98], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v43 - v10;
  v46 = &v43 - v10;
  type metadata accessor for SgMeasurements();
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0;
  v12 = swift_allocObject();
  v13 = OBJC_IVAR____TtC6Charts14SgMeasurements__measurements;
  v14 = sub_1AAF8E9D4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v51 = v16;
  v52 = v15 + 56;
  v16((v12 + v13), 1, 1, v14);
  v16(v11, 1, 1, v14);
  swift_beginAccess();
  sub_1AACBD5D4(v11, v12 + v13);
  swift_endAccess();
  v17 = OBJC_IVAR____TtC6Charts14SgMeasurements__dynamicTypeSize;
  v49 = *MEMORY[0x1E697E6F8];
  v18 = v49;
  v48 = sub_1AAF8DCD4();
  v19 = *(v48 - 8);
  v47 = *(v19 + 104);
  v50 = v19 + 104;
  v47(v12 + v17, v18, v48);
  v20 = MEMORY[0x1E69E7CC0];
  v21 = sub_1AACBD02C(MEMORY[0x1E69E7CC0]);
  v22 = (v12 + OBJC_IVAR____TtC6Charts14SgMeasurements__cache);
  *v22 = 50;
  v22[1] = v20;
  v22[2] = -1;
  v22[3] = -1;
  v22[4] = v21;
  *(v1 + 104) = v12;
  *(v1 + 112) = -1;
  type metadata accessor for ChartContentIDContext();
  v23 = swift_allocObject();
  type metadata accessor for IDGenerator();
  v24 = swift_allocObject();
  v25 = sub_1AACB236C(v20);
  v26 = MEMORY[0x1E69E7CD0];
  v24[2] = v25;
  v24[3] = v26;
  v24[4] = 0;
  *(v23 + 16) = v24;
  *(v23 + 24) = 0;
  *(v1 + 120) = v23;
  *(v1 + 128) = nullsub_1;
  *(v1 + 136) = 0;
  sub_1AACBD4E4(0, &qword_1ED9B4108, type metadata accessor for CGSize, type metadata accessor for SourceSignal);
  swift_allocObject();
  *(v1 + 144) = sub_1AACCD74C(0.0, 0.0);
  swift_allocObject();
  *(v1 + 152) = sub_1AACCD74C(0.0, 0.0);
  *(v1 + 160) = 0;
  (*(v6 + 104))(v8, *MEMORY[0x1E697E7D0], v44);
  sub_1AACBD4E4(0, &qword_1ED9B4120, MEMORY[0x1E697E7E0], type metadata accessor for SourceSignal);
  swift_allocObject();
  v27 = sub_1AACCD9C0(v8);
  v28 = v45;
  sub_1AAF8CA74();
  sub_1AACBD4E4(0, qword_1ED9B4138, MEMORY[0x1E6969770], type metadata accessor for SourceSignal);
  swift_allocObject();
  v29 = sub_1AACBD1D0(v28);
  v30 = v53;
  sub_1AAF8CB34();
  sub_1AACBD4E4(0, &qword_1ED9B4130, MEMORY[0x1E6969AE8], type metadata accessor for SourceSignal);
  swift_allocObject();
  v31 = sub_1AACCDCCC(v30);
  sub_1AACBD560(0, &qword_1ED9B4128, MEMORY[0x1E69E7DE0], type metadata accessor for SourceSignal);
  swift_allocObject();
  v32 = sub_1AACCDFD8(1.0);
  sub_1AACBD560(0, &qword_1ED9B4110, MEMORY[0x1E69E6370], type metadata accessor for SourceSignal);
  swift_allocObject();
  v33 = sub_1AACBCEF4(1);
  *(v1 + 168) = v27;
  *(v1 + 176) = v29;
  *(v1 + 184) = v31;
  *(v1 + 192) = v32;
  *(v1 + 200) = v33;
  v34 = swift_allocObject();
  v35 = OBJC_IVAR____TtC6Charts14SgMeasurements__measurements;
  v36 = v51;
  v51((v34 + OBJC_IVAR____TtC6Charts14SgMeasurements__measurements), 1, 1, v14);
  v37 = v46;
  v36(v46, 1, 1, v14);
  swift_beginAccess();
  sub_1AACBD5D4(v37, v34 + v35);
  swift_endAccess();
  v47(v34 + OBJC_IVAR____TtC6Charts14SgMeasurements__dynamicTypeSize, v49, v48);
  v38 = MEMORY[0x1E69E7CC0];
  v39 = sub_1AACBD02C(MEMORY[0x1E69E7CC0]);
  v40 = (v34 + OBJC_IVAR____TtC6Charts14SgMeasurements__cache);
  *v40 = 50;
  v40[1] = v38;
  v40[2] = -1;
  v40[3] = -1;
  v40[4] = v39;
  sub_1AACBD4E4(0, &qword_1ED9B4118, type metadata accessor for SgMeasurements, type metadata accessor for SourceSignal);
  swift_allocObject();
  v41 = sub_1AACCE0D0(v34);
  *(v1 + 216) = 0u;
  *(v1 + 208) = v41;
  *(v1 + 232) = 0u;
  *(v1 + 248) = 0u;
  *(v1 + 264) = 0u;
  *(v1 + 280) = sub_1AACCE1B8(v38);
  *(v1 + 288) = 0u;
  *(v1 + 304) = 0u;
  *(v1 + 320) = 0u;
  *(v1 + 336) = 0;
  if (qword_1ED9B59F0 != -1)
  {
    swift_once();
  }

  return v1;
}

unint64_t sub_1AACBCEF4(char a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v1 + 40) = 2;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  v4 = sub_1AACBD668(MEMORY[0x1E69E7CC0]);
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1AAEB9138;
  *(v5 + 24) = v3;
  v6 = *(v4 + 48);
  *(v4 + 48) = sub_1AACD8830;
  *(v4 + 56) = v5;

  sub_1AACB4A98(v6);

  swift_beginAccess();
  *(v4 + 40) = a1;
  *(v4 + 16) = 1;
  return v4;
}

uint64_t sub_1AACBCFEC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t sub_1AACBD02C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1AAD9AFC4();
    v3 = sub_1AAF903A4();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1AACC9B78(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1AACBD0FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AACBD164(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1AACCD858(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

_BYTE *sub_1AACBD1D0(char *a1)
{
  v21 = MEMORY[0x1E6969770];
  sub_1AACCD858(0, &qword_1ED9B4458, MEMORY[0x1E6969770]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21 - v4;
  v6 = sub_1AAF8CAA4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  v12 = *(v7 + 32);
  v12(v11 + v10, v9, v6);
  v13 = *(v7 + 56);
  v13(v1 + *(*v1 + 256), 1, 1, v6);
  v14 = (v1 + *(*v1 + 264));
  *v14 = 0;
  v14[1] = 0;
  v15 = sub_1AACBD668(MEMORY[0x1E69E7CC0]);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1AAEB9168;
  *(v16 + 24) = v11;
  v17 = &v15[*(*v15 + 264)];
  v18 = *v17;
  *v17 = sub_1AACFEA94;
  v17[1] = v16;

  sub_1AACB4A98(v18);

  v12(v5, a1, v6);
  v13(v5, 0, 1, v6);
  v19 = *(*v15 + 256);
  swift_beginAccess();

  sub_1AACBD164(v5, &v15[v19], &qword_1ED9B4458, v21);
  swift_endAccess();
  v15[16] = 1;

  return v15;
}

void sub_1AACBD4E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1AACBD560(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AACBD5D4(uint64_t a1, uint64_t a2)
{
  sub_1AACBD4E4(0, &qword_1ED9B5518, MEMORY[0x1E6980F98], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AACBD668(unint64_t result)
{
  v2 = result;
  *(v1 + 16) = 256;
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = result;
  *(v1 + 32) = v3;
  if (!(result >> 62))
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_20:

    return v1;
  }

  result = sub_1AAF8FFB4();
  v4 = result;
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (v4 >= 1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {

      v5 = 0;
      do
      {
        v6 = MEMORY[0x1AC598D40](v5, v2);
        swift_weakInit();
        swift_beginAccess();
        v7 = *(v6 + 32);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v6 + 32) = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v7 = sub_1AACC93C4(0, v7[2] + 1, 1, v7);
          *(v6 + 32) = v7;
        }

        v10 = v7[2];
        v9 = v7[3];
        if (v10 >= v9 >> 1)
        {
          v7 = sub_1AACC93C4((v9 > 1), v10 + 1, 1, v7);
        }

        ++v5;
        v7[2] = v10 + 1;
        sub_1AACF5004(v17, &v7[v10 + 4]);
        *(v6 + 32) = v7;
        swift_endAccess();
        swift_unknownObjectRelease();
      }

      while (v4 != v5);
    }

    else
    {
      v11 = (v2 + 32);

      do
      {
        v12 = *v11;
        swift_weakInit();
        swift_beginAccess();
        v13 = *(v12 + 32);

        v14 = swift_isUniquelyReferenced_nonNull_native();
        *(v12 + 32) = v13;
        if ((v14 & 1) == 0)
        {
          v13 = sub_1AACC93C4(0, v13[2] + 1, 1, v13);
          *(v12 + 32) = v13;
        }

        v16 = v13[2];
        v15 = v13[3];
        if (v16 >= v15 >> 1)
        {
          v13 = sub_1AACC93C4((v15 > 1), v16 + 1, 1, v13);
        }

        v13[2] = v16 + 1;
        sub_1AACF5004(v17, &v13[v16 + 4]);
        *(v12 + 32) = v13;
        swift_endAccess();

        ++v11;
        --v4;
      }

      while (v4);
    }

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for SgMeasurements()
{
  result = qword_1ED9B6338;
  if (!qword_1ED9B6338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_1AACBD920(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1AACBD93C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1AACBD960(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1AAF8CAA4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_1AAF8CBA4();
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[5];
    }

    else
    {
      v14 = sub_1AAF8DF14();
      if (*(*(v14 - 8) + 84) == a2)
      {
        v8 = v14;
        v12 = *(v14 - 8);
        v13 = a3[6];
      }

      else
      {
        v15 = sub_1AAF8DCD4();
        if (*(*(v15 - 8) + 84) != a2)
        {
          v17 = *(a1 + a3[9]);
          if (v17 >= 2)
          {
            return ((v17 + 2147483646) & 0x7FFFFFFF) + 1;
          }

          else
          {
            return 0;
          }
        }

        v8 = v15;
        v12 = *(v15 - 8);
        v13 = a3[8];
      }
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1AACBDB0C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1AACBDB54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AACBDBA4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1AAF8CAA4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1AAF8CBA4();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_1AAF8DF14();
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = sub_1AAF8DCD4();
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[9]) = a2 + 1;
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[8];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1AACBDD44(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_1AACBDDA8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1AACBDDFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 408) = 0;
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
    *(result + 418) = 0;
    *(result + 416) = 0;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 419) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 419) = 0;
    }

    if (a2)
    {
      *(result + 392) = a2;
    }
  }

  return result;
}

uint64_t sub_1AACBDEC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 419))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 392);
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

uint64_t sub_1AACBDF24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

uint64_t sub_1AACBDF8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
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

uint64_t sub_1AACBDFE8(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1AACCBD48(255, a2, a3);
    a4();
    sub_1AACCFA24();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AACBE068(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AACBE0F4()
{
  result = qword_1ED9B2DC8;
  if (!qword_1ED9B2DC8)
  {
    sub_1AACCBB34(255, &qword_1ED9B2DC0, sub_1AACCBB98);
    sub_1AACCC5FC(&qword_1ED9B2EB0, sub_1AACCBB98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B2DC8);
  }

  return result;
}

uint64_t sub_1AACBE1C8@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 419) = 0;
  return result;
}

uint64_t sub_1AACBE204@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 80) = 0;
  return result;
}

uint64_t sub_1AACBE240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, _OWORD *a13, const void *a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  (*(*(a20 - 8) + 32))(a9, a1, a20);
  v23 = type metadata accessor for RenderBasedChartView();
  sub_1AACBE430(a2, a9 + v23[9]);
  v24 = a9 + v23[10];
  *v24 = a3;
  *(v24 + 8) = a4;
  *(v24 + 16) = a5 & 1;
  v25 = a9 + v23[11];
  *v25 = a6;
  *(v25 + 8) = a7;
  *(v25 + 16) = a8 & 1;
  v26 = a9 + v23[12];
  *v26 = a10;
  *(v26 + 8) = a11 & 1;
  v27 = a9 + v23[13];
  v28 = *(a12 + 16);
  *v27 = *a12;
  *(v27 + 16) = v28;
  *(v27 + 32) = *(a12 + 32);
  v29 = (a9 + v23[14]);
  v30 = a13[1];
  *v29 = *a13;
  v29[1] = v30;
  v29[2] = a13[2];
  *(v29 + 41) = *(a13 + 41);
  memcpy((a9 + v23[15]), a14, 0x1A4uLL);
  v31 = a9 + v23[16];
  *v31 = a15;
  *(v31 + 8) = a16 & 1;
  v32 = a9 + v23[17];
  v33 = *(a17 + 48);
  *(v32 + 32) = *(a17 + 32);
  *(v32 + 48) = v33;
  *(v32 + 64) = *(a17 + 64);
  *(v32 + 80) = *(a17 + 80);
  v34 = *(a17 + 16);
  *v32 = *a17;
  *(v32 + 16) = v34;
  sub_1AACBE4C4(a18, a19);
  return sub_1AAF8E9C4();
}

uint64_t sub_1AACBE430(uint64_t a1, uint64_t a2)
{
  sub_1AACB6294(0, &qword_1ED9B4550, type metadata accessor for ChartEnvironmentValues, MEMORY[0x1E697DCC0]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AACBE4C4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  type metadata accessor for ChartModel();

  return sub_1AAF8F1C4();
}

uint64_t sub_1AACBE548()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AACBE580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x1EEE9AC00]();
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v12, v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t sub_1AACBE6CC@<X0>(void *a1@<X8>)
{
  sub_1AACBE71C();
  result = sub_1AAF8E144();
  *a1 = v3;
  return result;
}

unint64_t sub_1AACBE71C()
{
  result = qword_1ED9B5A30;
  if (!qword_1ED9B5A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B5A30);
  }

  return result;
}

unint64_t sub_1AACBE770@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1AACB1C5C(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

unint64_t sub_1AACBE7A8(void *a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = *(a2 + 56);
  v9[2] = *(a2 + 40);
  v9[3] = v4;
  v10 = *(a2 + 72);
  v9[0] = *(a2 + 8);
  v9[1] = v3;
  v5 = *a2;
  sub_1AACBEF10(a2, v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[0] = *a1;
  result = sub_1AACBE838(v9, v5, isUniquelyReferenced_nonNull_native);
  *a1 = v8[0];
  return result;
}

unint64_t sub_1AACBE838(uint64_t a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1AACB6398(a2);
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
      sub_1AACB1F40(v14, a3 & 1);
      result = sub_1AACB6398(a2);
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
      sub_1AAD93F74();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    v21 = v19[7] + 72 * result;
    *v21 = *a1;
    v22 = *(a1 + 16);
    v23 = *(a1 + 32);
    v24 = *(a1 + 48);
    *(v21 + 64) = *(a1 + 64);
    *(v21 + 32) = v23;
    *(v21 + 48) = v24;
    *(v21 + 16) = v22;
    v25 = v19[2];
    v13 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v13)
    {
      v19[2] = v26;
      return result;
    }

    goto LABEL_15;
  }

  v20 = v19[7] + 72 * result;

  return sub_1AADD4428(a1, v20);
}

uint64_t sub_1AACBE9A8()
{
  sub_1AACBE71C();

  return sub_1AAF8E154();
}