uint64_t sub_1AAF0F8A8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = sub_1AAF8CA64();
  v8 = *(v52 - 8);
  v9 = MEMORY[0x1EEE9AC00](v52);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v49 = &v40 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v51 = a3;
  v16 = (a2 - a1) / v14;
  v55 = a1;
  v54 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = a4 + v18;
    if (v18 >= 1)
    {
      v28 = -v14;
      v43 = a4;
      v44 = (v8 + 16);
      v41 = (v8 + 8);
      v42 = a1;
      v29 = a4 + v18;
      v30 = v51;
      v45 = v28;
      do
      {
        v40 = v27;
        v31 = a2 + v28;
        v47 = a2 + v28;
        v48 = v27;
        v46 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v55 = a2;
            v27 = v40;
            goto LABEL_59;
          }

          v33 = v30;
          v51 = v30 + v28;
          v34 = v29 + v28;
          v35 = *v44;
          v36 = v49;
          v37 = v52;
          (*v44)(v49, v29 + v28, v52);
          v38 = v50;
          v35(v50, v31, v37);
          sub_1AACEFF3C(&qword_1ED9B6BA8, MEMORY[0x1E6969530]);
          LOBYTE(v35) = sub_1AAF8F564();
          v39 = *v41;
          (*v41)(v38, v37);
          v39(v36, v37);
          if (v35)
          {
            break;
          }

          v30 = v51;
          if (v33 < v29 || v51 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v47;
            a1 = v42;
          }

          else
          {
            v31 = v47;
            a1 = v42;
            if (v33 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v48 = v34;
          v29 = v34;
          v32 = v34 > v43;
          v28 = v45;
          a2 = v46;
          if (!v32)
          {
            v27 = v48;
            goto LABEL_58;
          }
        }

        v30 = v51;
        if (v33 < v46 || v51 >= v46)
        {
          a2 = v47;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v42;
        }

        else
        {
          a2 = v47;
          a1 = v42;
          if (v33 != v46)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v27 = v48;
        v28 = v45;
      }

      while (v29 > v43);
    }

LABEL_58:
    v55 = a2;
LABEL_59:
    v53 = v27;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v48 = a4 + v17;
    v53 = a4 + v17;
    if (v17 >= 1 && a2 < v51)
    {
      v46 = *(v8 + 16);
      v47 = v8 + 16;
      v44 = v14;
      v45 = (v8 + 8);
      do
      {
        v20 = v49;
        v21 = v52;
        v22 = v46;
        v46(v49, a2, v52);
        v23 = v50;
        v22(v50, a4, v21);
        sub_1AACEFF3C(&qword_1ED9B6BA8, MEMORY[0x1E6969530]);
        LOBYTE(v22) = sub_1AAF8F564();
        v24 = *v45;
        (*v45)(v23, v21);
        v24(v20, v21);
        if (v22)
        {
          v25 = v44;
          if (a1 < a2 || a1 >= v44 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v25;
        }

        else
        {
          v25 = v44;
          v26 = v44 + a4;
          if (a1 < a4 || a1 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v54 = v26;
          a4 += v25;
        }

        a1 += v25;
        v55 = a1;
      }

      while (a4 < v48 && a2 < v51);
    }
  }

  sub_1AAF0FE9C(&v55, &v54, &v53);
  return 1;
}

uint64_t sub_1AAF0FE9C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1AAF8CA64();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1AAF0FF80()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_getAssociatedTypeWitness();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1AAF10040(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v32 = *(a3 + 24);
  v7 = *(v6 + 84);
  v8 = *(v32 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v6 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v8 + 80);
  v14 = *(v8 + 64);
  v15 = *(v12 + 80);
  if (*(v12 + 84) <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = *(v12 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(v6 + 64) + v13;
  if (a2 > v16)
  {
    v18 = ((v14 + v15 + (v17 & ~v13)) & ~v15) + *(*(AssociatedTypeWitness - 8) + 64);
    v19 = 8 * v18;
    if (v18 <= 3)
    {
      v21 = ((a2 - v16 + ~(-1 << v19)) >> v19) + 1;
      if (HIWORD(v21))
      {
        v20 = *(a1 + v18);
        if (!v20)
        {
          goto LABEL_30;
        }

        goto LABEL_17;
      }

      if (v21 > 0xFF)
      {
        v20 = *(a1 + v18);
        if (!*(a1 + v18))
        {
          goto LABEL_30;
        }

        goto LABEL_17;
      }

      if (v21 < 2)
      {
LABEL_30:
        if (v16)
        {
          goto LABEL_31;
        }

        return 0;
      }
    }

    v20 = *(a1 + v18);
    if (!*(a1 + v18))
    {
      goto LABEL_30;
    }

LABEL_17:
    v22 = (v20 - 1) << v19;
    if (v18 > 3)
    {
      v22 = 0;
    }

    if (v18)
    {
      if (v18 <= 3)
      {
        v23 = v18;
      }

      else
      {
        v23 = 4;
      }

      if (v23 > 2)
      {
        if (v23 == 3)
        {
          v24 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v24 = *a1;
        }
      }

      else if (v23 == 1)
      {
        v24 = *a1;
      }

      else
      {
        v24 = *a1;
      }
    }

    else
    {
      v24 = 0;
    }

    return v16 + (v24 | v22) + 1;
  }

LABEL_31:
  if (v7 == v16)
  {
    v25 = *(v6 + 48);
    v26 = a1;
    v27 = v7;
    v28 = v5;
LABEL_36:

    return v25(v26, v27, v28);
  }

  v26 = ((a1 + v17) & ~v13);
  if (v9 == v16)
  {
    v25 = *(v8 + 48);
    v27 = v9;
    v28 = v32;
    goto LABEL_36;
  }

  v30 = *(v12 + 48);
  v31 = (v26 + v14 + v15) & ~v15;

  return v30(v31);
}

void sub_1AAF10364(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(a4 + 16) - 8);
  v36 = *(a4 + 24);
  v37 = v7;
  v8 = *(v7 + 84);
  v9 = *(v36 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v8)
  {
    v11 = *(v7 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v38 = *(a4 + 16);
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = v12;
  v14 = *(v7 + 64);
  if (*(v12 + 84) <= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = *(v12 + 84);
  }

  v16 = *(v9 + 80);
  v17 = v14 + v16;
  v18 = (v14 + v16) & ~v16;
  v19 = *(v9 + 64);
  v20 = *(v12 + 80);
  v21 = ((v19 + v20 + v18) & ~v20) + *(v12 + 64);
  if (a3 <= v15)
  {
    v23 = 0;
    v22 = a1;
  }

  else
  {
    v22 = a1;
    if (v21 <= 3)
    {
      v26 = ((a3 - v15 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
      if (HIWORD(v26))
      {
        v23 = 4;
      }

      else
      {
        if (v26 < 0x100)
        {
          v27 = 1;
        }

        else
        {
          v27 = 2;
        }

        if (v26 >= 2)
        {
          v23 = v27;
        }

        else
        {
          v23 = 0;
        }
      }
    }

    else
    {
      v23 = 1;
    }
  }

  if (v15 < a2)
  {
    v24 = ~v15 + a2;
    if (v21 < 4)
    {
      v25 = (v24 >> (8 * v21)) + 1;
      if (v21)
      {
        v28 = v24 & ~(-1 << (8 * v21));
        bzero(v22, v21);
        if (v21 != 3)
        {
          if (v21 == 2)
          {
            *v22 = v28;
            if (v23 > 1)
            {
LABEL_52:
              if (v23 == 2)
              {
                *&v22[v21] = v25;
              }

              else
              {
                *&v22[v21] = v25;
              }

              return;
            }
          }

          else
          {
            *v22 = v24;
            if (v23 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *v22 = v28;
        v22[2] = BYTE2(v28);
      }

      if (v23 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(v22, v21);
      *v22 = v24;
      v25 = 1;
      if (v23 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v23)
    {
      v22[v21] = v25;
    }

    return;
  }

  if (v23 <= 1)
  {
    if (v23)
    {
      v22[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v23 == 2)
  {
    *&v22[v21] = 0;
    goto LABEL_33;
  }

  *&v22[v21] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v8 == v15)
  {
    v29 = v38;
    v30 = *(v37 + 56);
    v31 = v22;
    v32 = a2;
    v33 = v8;
LABEL_38:

    v30(v31, v32, v33, v29);
    return;
  }

  v31 = (&v22[v17] & ~v16);
  if (v10 == v15)
  {
    v30 = *(v9 + 56);
    v32 = a2;
    v33 = v10;
    v29 = v36;
    goto LABEL_38;
  }

  v34 = *(v13 + 56);
  v35 = &v31[v19 + v20] & ~v20;

  v34(v35, a2);
}

uint64_t sub_1AAF107F0()
{
  sub_1AAF900D4();

  swift_getMetatypeMetadata();
  v0 = sub_1AAF8F664();
  MEMORY[0x1AC5982F0](v0);

  MEMORY[0x1AC5982F0](0x3D6469202CLL, 0xE500000000000000);
  v1 = sub_1AAF90474();
  MEMORY[0x1AC5982F0](v1);

  MEMORY[0x1AC5982F0](41, 0xE100000000000000);
  return 0x6574656D61726150;
}

uint64_t sub_1AAF10918(uint64_t a1)
{
  sub_1AAF90694();
  MEMORY[0x1AC5992C0](a1);
  return sub_1AAF906F4();
}

uint64_t sub_1AAF10970()
{
  sub_1AAF90694();
  sub_1AAF108F0(v2, *v0);
  return sub_1AAF906F4();
}

uint64_t sub_1AAF109CC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AAF10A3C()
{
  result = type metadata accessor for Signal();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ParameterRef();
    if (v2 <= 0x3F)
    {
      sub_1AAF8FE74();
      type metadata accessor for ParameterRef();
      result = swift_getTupleTypeMetadata2();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1AAF10AF8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = 8;
  if (((*(*(*(a3 + 16) - 8) + 80) + 8) & ~*(*(*(a3 + 16) - 8) + 80)) + *(*(*(a3 + 16) - 8) + 64) > 8)
  {
    v3 = ((*(*(*(a3 + 16) - 8) + 80) + 8) & ~*(*(*(a3 + 16) - 8) + 80)) + *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 253) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 3)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 254;
}

void sub_1AAF10C4C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = ((*(*(*(a4 + 16) - 8) + 80) + 8) & ~*(*(*(a4 + 16) - 8) + 80)) + *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
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

uint64_t sub_1AAF10E58(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a4;
  v59 = a2;
  v60 = a3;
  v58 = sub_1AAF8E134();
  v5 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = MEMORY[0x1E69E7CC0];
  v9 = (v8 + 16);
  sub_1AAF14178(a1, v8);
  swift_beginAccess();
  v10 = *v9;

  if (!*(v10 + 16))
  {

    return 0;
  }

  v61 = v5;
  v11 = *(v10 + 176);
  v72 = *(v10 + 160);
  v73 = v11;
  v74 = *(v10 + 192);
  v75 = *(v10 + 208);
  v12 = *(v10 + 112);
  v68 = *(v10 + 96);
  v69 = v12;
  v13 = *(v10 + 144);
  v70 = *(v10 + 128);
  v71 = v13;
  v14 = *(v10 + 48);
  v64 = *(v10 + 32);
  v65 = v14;
  v15 = *(v10 + 80);
  v66 = *(v10 + 64);
  v67 = v15;
  v56 = v69;
  v57 = v64;
  if ((*(&v68 + 1) & 0x8000000000000000) != 0)
  {
    if ((SBYTE8(v68) & 0x80u) == 0)
    {
      v19 = BYTE8(v68);
    }

    else
    {
      v19 = v68;
    }

    v16 = *(&v65 + 1);
    v17 = v65;
    v18 = v66;
  }

  else
  {
    v17 = *(&v64 + 1);
    v16 = v65;
    v18 = BYTE8(v65);
    if ((SBYTE8(v67) & 0x80u) == 0)
    {
      v19 = BYTE8(v67);
    }

    else
    {
      v19 = BYTE8(v67) & 1;
    }
  }

  sub_1AACD7304(v17, v16, v18 & 1);

  sub_1AAEDC834(&v64, v63);
  sub_1AAF8E124();
  v20 = sub_1AAF8E974();
  v22 = v21;
  sub_1AAD04750(v17, v16, v18 & 1);

  v24 = v61 + 8;
  v23 = *(v61 + 8);
  v23(v7, v58);
  v25 = sub_1AAF13498(v57, v19, v20, v22, v59, v60, v62);

  if (!v25)
  {
    goto LABEL_27;
  }

  v61 = v24;
  v55 = v25;
  v26 = DWORD2(v73);
  if ((*(&v73 + 1) & 0x8000000000000000) != 0)
  {
    if (SBYTE8(v73) < 0)
    {
      v26 = v73;
    }

    v57 = v26;
    v29 = *(&v70 + 1);
    v28 = v70;
    v30 = v71;
  }

  else
  {
    v27 = BYTE8(v72);
    v28 = *(&v69 + 1);
    v29 = v70;
    v30 = BYTE8(v70);
    if (SBYTE8(v72) < 0)
    {
      v27 = BYTE8(v72) & 1;
    }

    v57 = v27;
  }

  sub_1AACD7304(v28, v29, v30 & 1);

  sub_1AAF8E124();
  v31 = sub_1AAF8E974();
  v33 = v32;
  sub_1AAD04750(v28, v29, v30 & 1);

  v23(v7, v58);
  v34 = sub_1AAF13498(v56, v57, v31, v33, v59, v60, v62);

  if (!v34)
  {
    swift_unknownObjectRelease();
LABEL_27:

LABEL_28:
    sub_1AAEDCEC4(&v64);
    return 0;
  }

  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (!v35)
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    goto LABEL_28;
  }

  v36 = v35;
  v37 = sub_1AAF7C3F4(v10);

  v38 = *(v37 + 16);
  if (v38)
  {
    v59 = v36;
    v63[0] = MEMORY[0x1E69E7CC0];
    result = sub_1AAF901E4();
    v40 = 0;
    v41 = (v37 + 80);
    v60 = v38;
    v61 = v37;
    while (v40 < *(v37 + 16))
    {
      ++v40;
      v42 = *(v41 - 6);
      v43 = *(v41 - 5);
      v44 = *(v41 - 32);
      v45 = *(v41 - 2);
      v46 = *(v41 - 8);
      v47 = *v41;
      v41 += 7;
      sub_1AACD7304(v42, v43, v44);

      sub_1AAF144A4(v45, v46, v47, v62);
      v48 = v43;
      v49 = v60;
      sub_1AAD04750(v42, v48, v44);

      sub_1AAF901B4();
      sub_1AAF901F4();
      v37 = v61;
      sub_1AAF90204();
      result = sub_1AAF901C4();
      if (v49 == v40)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_31:

    sub_1AAD59D08(0, &qword_1ED9B4480);
    type metadata accessor for FindClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v51 = [objc_opt_self() bundleForClass_];
    v52 = sub_1AAF8F624();
    v53 = [v51 localizedStringForKey:v52 value:0 table:0];

    sub_1AAF8F634();
    v54 = sub_1AAF8FD84();
    sub_1AAEDCEC4(&v64);
    return v54;
  }

  return result;
}

uint64_t sub_1AAF11448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 16);
  if (!v5)
  {
    return 0;
  }

  v7 = *(a5 + 32);
  v8 = *(a5 + 40);
  v9 = *(a5 + 48);
  sub_1AACD7304(v7, v8, v9);

  v10 = v5 - 1;
  if (v5 == 1)
  {
    return v7;
  }

  v12 = a5 + 88;
  v13 = v7;
  do
  {
    v28 = v13;
    v30 = v10;
    v14 = *(v12 - 24);
    v15 = *(v12 - 16);
    v16 = *(v12 - 8);
    v12 += 32;
    sub_1AACD7304(v14, v15, v16);

    v29 = v9;
    v17 = sub_1AAF8EA04();
    v19 = v18;
    v21 = v20;
    v22 = sub_1AAF8EA04();
    v26 = v23;
    v27 = v22;
    v25 = v24;
    sub_1AAD04750(v17, v19, v21 & 1);

    sub_1AAD04750(v14, v15, v16);

    sub_1AAD04750(v28, v8, v29 & 1);

    result = v27;
    v13 = v27;
    v8 = v26;
    v9 = v25;
    v10 = v30 - 1;
  }

  while (v30 != 1);
  return result;
}

uint64_t sub_1AAF1161C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = *(a5 + 16);
  if (v6 != a6)
  {
    if (v6 > a6)
    {
      v51 = a5 + 32;
      v7 = (a5 + 32 + 32 * a6);
      v8 = v7[3];
      if (!v8)
      {
LABEL_34:
        __break(1u);
        return result;
      }

      v9 = v7[1];
      v56 = *v7;
      v10 = v7[2];
      v11 = a6 + 1;
      v12 = (a5 + 32 * a6 + 88);
      while (1)
      {
        if (v6 == v11)
        {
          goto LABEL_11;
        }

        v13 = *v12;
        if (*v12)
        {
          break;
        }

        v12 += 4;
        if (__OFADD__(v11++, 1))
        {
          __break(1u);
LABEL_11:

          sub_1AADA61DC(v56, v9, v10, v8);
LABEL_12:

          return v56;
        }
      }

      v16 = *(v12 - 2);
      v17 = *(v12 - 1);
      v18 = *(v12 - 3);
      swift_bridgeObjectRetain_n();
      sub_1AADA61DC(v56, v9, v10, v8);
      sub_1AADA61DC(v18, v16, v17, v13);
      sub_1AAD04750(v18, v16, v17 & 1);

      v19 = v10;
      v20 = v9;
      v21 = v56;
      v50 = v6;
      while (v11 < v6)
      {
        v36 = (v51 + 32 * v11);
        v37 = v36[3];
        if (!v37)
        {
          goto LABEL_33;
        }

        v22 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_29;
        }

        if (v6 < v22)
        {
          goto LABEL_30;
        }

        if (v22 < 0)
        {
          goto LABEL_31;
        }

        v38 = *v36;
        v39 = v36[1];
        v40 = v36[2];
        v57 = v19;
        v55 = v21;
        v54 = v39;
        if (v22 == v6)
        {
LABEL_15:
          v22 = v6;
          v23 = v38;
          sub_1AADA61DC(v38, v39, v40, v37);
        }

        else
        {
          v41 = a5 + 88 + 32 * v11;
          v42 = v41;
          while (1)
          {
            v44 = *v42;
            v42 += 4;
            v43 = v44;
            if (v44)
            {
              break;
            }

            ++v22;
            v41 = v42;
            if (v6 == v22)
            {
              goto LABEL_15;
            }
          }

          v45 = *(v41 - 8);
          v53 = *(v41 - 16);
          v46 = *(v41 - 24);
          v47 = v38;
          v48 = v39;

          v23 = v47;
          sub_1AADA61DC(v47, v48, v40, v37);
          sub_1AADA61DC(v46, v53, v45, v43);
          sub_1AAD04750(v46, v53, v45 & 1);
        }

        v24 = sub_1AAF8EA04();
        v26 = v25;
        v28 = v27;
        v52 = v20;
        v29 = v40 & 1;
        v30 = sub_1AAF8EA04();
        v32 = v31;
        v34 = v33;
        v35 = v24;
        v21 = v30;
        sub_1AAD04750(v35, v26, v28 & 1);

        sub_1AAD04750(v23, v54, v29);

        sub_1AAD04750(v55, v52, v57 & 1);

        v19 = v34;
        v20 = v32;
        v56 = v21;
        v11 = v22;
        v6 = v50;
        if (v22 == v50)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  return 0;
}

__n128 sub_1AAF119A4(uint64_t a1, char **a2)
{
  v2 = a1;
  v3 = *(a1 + 240);
  v203 = *(a1 + 224);
  v204 = v3;
  v205 = *(a1 + 256);
  v206 = *(a1 + 272);
  v4 = *(a1 + 176);
  v199 = *(a1 + 160);
  v200 = v4;
  v5 = *(a1 + 208);
  v201 = *(a1 + 192);
  v202 = v5;
  v6 = *(a1 + 144);
  v197 = *(a1 + 128);
  v198 = v6;
  if (sub_1AAED0054(&v197) == 1)
  {
    goto LABEL_6;
  }

  v187 = v203;
  v188 = v204;
  v189 = v205;
  v190 = v206;
  v183 = v199;
  v184 = v200;
  v185 = v201;
  v186 = v202;
  v181 = v197;
  v182 = v198;
  v7 = sub_1AAF14CF0(&v181);
  if (v7 > 1)
  {
    sub_1AACBC764(&v181);
LABEL_6:
    v192 = 0u;
    v193 = 0u;
    v194 = 0u;
    v195 = 0u;
    v191 = 9;
    v196 = 0;
    goto LABEL_9;
  }

  if (v7)
  {
    v15 = sub_1AACBC764(&v181);
    v9 = *v15;
    v10 = *(v15 + 72) & 0xFB | 0x8000000000000000;
    v144 = *(v15 + 40);
    v145 = *(v15 + 8);
    v137 = *(v15 + 56);
    v141 = *(v15 + 24);
    v16 = *(v2 + 176);
    v173 = *(v2 + 160);
    v174 = v16;
    v17 = *(v2 + 144);
    __dst = *(v2 + 128);
    v172 = v17;
    v18 = *(v2 + 208);
    v175 = *(v2 + 192);
    v176 = v18;
    v180 = *(v2 + 272);
    v19 = *(v2 + 256);
    v178 = *(v2 + 240);
    v179 = v19;
    v177 = *(v2 + 224);
  }

  else
  {
    v8 = sub_1AACBC764(&v181);
    v9 = *v8;
    v10 = *(v8 + 72) & 0xFFFFFFFFFFFFFFBLL;
    v144 = *(v8 + 40);
    v145 = *(v8 + 8);
    v137 = *(v8 + 56);
    v141 = *(v8 + 24);
    v11 = *(v2 + 176);
    v173 = *(v2 + 160);
    v174 = v11;
    v12 = *(v2 + 208);
    v175 = *(v2 + 192);
    v176 = v12;
    v180 = *(v2 + 272);
    v13 = *(v2 + 256);
    v178 = *(v2 + 240);
    v179 = v13;
    v177 = *(v2 + 224);
    v14 = *(v2 + 144);
    __dst = *(v2 + 128);
    v172 = v14;
  }

  sub_1AAD81BF4(&__dst, &v161);
  LOBYTE(v191) = v9;
  v193 = v141;
  v192 = v145;
  v195 = v137;
  v194 = v144;
  v196 = v10;
LABEL_9:
  v20 = (v2 + 440);
  v190 = *(v2 + 584);
  v21 = *(v2 + 552);
  v187 = *(v2 + 536);
  v188 = v21;
  v189 = *(v2 + 568);
  v22 = *(v2 + 488);
  v183 = *(v2 + 472);
  v184 = v22;
  v23 = *(v2 + 520);
  v185 = *(v2 + 504);
  v186 = v23;
  v24 = *(v2 + 456);
  v181 = *(v2 + 440);
  v182 = v24;
  v128 = v2;
  if (sub_1AAED0054(&v181) == 1)
  {
LABEL_14:
    v146 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  v177 = v187;
  v178 = v188;
  v179 = v189;
  v180 = v190;
  v173 = v183;
  v174 = v184;
  v175 = v185;
  v176 = v186;
  __dst = v181;
  v172 = v182;
  v25 = sub_1AAF14CF0(&__dst);
  if (v25 > 1)
  {
    sub_1AACBC764(&__dst);
    goto LABEL_14;
  }

  if (v25)
  {
    v33 = sub_1AACBC764(&__dst);
    v27 = *v33;
    v142 = *(v33 + 24);
    v144 = *(v33 + 8);
    v134 = *(v33 + 56);
    v138 = *(v33 + 40);
    v28 = *(v33 + 72) & 0xFB | 0x8000000000000000;
    v34 = *(v2 + 488);
    v163 = *(v2 + 472);
    v164 = v34;
    v35 = *(v2 + 456);
    v161 = *v20;
    v162 = v35;
    v36 = *(v2 + 520);
    v165 = *(v2 + 504);
    v166 = v36;
    v170 = *(v2 + 584);
    v37 = *(v2 + 568);
    v168 = *(v2 + 552);
    v169 = v37;
    v167 = *(v2 + 536);
  }

  else
  {
    v26 = sub_1AACBC764(&__dst);
    v27 = *v26;
    v142 = *(v26 + 24);
    v144 = *(v26 + 8);
    v134 = *(v26 + 56);
    v138 = *(v26 + 40);
    v28 = *(v26 + 72) & 0xFFFFFFFFFFFFFFBLL;
    v29 = *(v2 + 488);
    v163 = *(v2 + 472);
    v164 = v29;
    v30 = *(v2 + 520);
    v165 = *(v2 + 504);
    v166 = v30;
    v170 = *(v2 + 584);
    v31 = *(v2 + 568);
    v168 = *(v2 + 552);
    v169 = v31;
    v167 = *(v2 + 536);
    v32 = *(v2 + 456);
    v161 = *v20;
    v162 = v32;
  }

  sub_1AAD81BF4(&v161, v154);
  v38 = sub_1AAD6A4CC(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v40 = *(v38 + 2);
  v39 = *(v38 + 3);
  v146 = v38;
  if (v40 >= v39 >> 1)
  {
    v146 = sub_1AAD6A4CC((v39 > 1), v40 + 1, 1, v38);
  }

  *(v146 + 2) = v40 + 1;
  v41 = &v146[80 * v40];
  v41[32] = v27;
  *(v41 + 56) = v142;
  *(v41 + 40) = v144;
  *(v41 + 88) = v134;
  *(v41 + 72) = v138;
  *(v41 + 13) = v28;
  v2 = v128;
LABEL_19:
  v42 = *(v2 + 120);
  v43 = *(v42 + 16);
  if (v43)
  {
    v44 = (v42 + 32);
    v143 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v45 = *(v44 + 1);
      v161 = *v44;
      v162 = v45;
      v46 = v44[2];
      v47 = v44[3];
      v48 = v44[5];
      v165 = v44[4];
      v166 = v48;
      v163 = v46;
      v164 = v47;
      v49 = v44[6];
      v50 = v44[7];
      v51 = v44[8];
      v170 = *(v44 + 18);
      v168 = v50;
      v169 = v51;
      v167 = v49;
      memmove(&__dst, v44, 0x98uLL);
      v52 = sub_1AAF14CF0(&__dst);
      if (v52 <= 1)
      {
        break;
      }

      sub_1AACBC764(&__dst);
LABEL_22:
      v44 = (v44 + 152);
      if (!--v43)
      {
        goto LABEL_53;
      }
    }

    if (v52)
    {
      v65 = sub_1AACBC764(&__dst);
      v66 = *v65;
      v68 = *(v65 + 8);
      v67 = *(v65 + 16);
      v69 = *(v65 + 24);
      v131 = *(v65 + 32);
      v133 = *(v65 + 40);
      v136 = *(v65 + 48);
      v70 = *(v65 + 64);
      v140 = *(v65 + 56);
      v71 = *(v65 + 72);
      *&v144 = v144 & 0xFFFFFFFFFFFFF00 | v71 & 0xFFFFFFFFFFFFFFFBLL | 0x8000000000000000;
      if ((v71 & 0x80) != 0 || v71 == 2)
      {
        v156 = v167;
        v157 = v168;
        v158 = v169;
        v159 = v170;
        *&v154[32] = v163;
        *&v154[48] = v164;
        *&v154[64] = v165;
        v155 = v166;
        *v154 = v161;
        *&v154[16] = v162;
        v77 = sub_1AACBC764(v154);
        sub_1AAD81BF4(&v161, &v147);
        sub_1AAF14A78(v77, &v147, sub_1AAF14CFC);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v146 = sub_1AAD6A4CC(0, *(v146 + 2) + 1, 1, v146);
        }

        v74 = *(v146 + 2);
        v78 = *(v146 + 3);
        v75 = v74 + 1;
        if (v74 >= v78 >> 1)
        {
          v146 = sub_1AAD6A4CC((v78 > 1), v74 + 1, 1, v146);
        }

        sub_1AAD81C50(&v161);
        v76 = v146;
      }

      else
      {
        v156 = v167;
        v157 = v168;
        v158 = v169;
        v159 = v170;
        *&v154[32] = v163;
        *&v154[48] = v164;
        *&v154[64] = v165;
        v155 = v166;
        *v154 = v161;
        *&v154[16] = v162;
        v72 = sub_1AACBC764(v154);
        sub_1AAD81BF4(&v161, &v147);
        sub_1AAF14A78(v72, &v147, sub_1AAF14CFC);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v143 = sub_1AAD6A4CC(0, *(v143 + 2) + 1, 1, v143);
        }

        v74 = *(v143 + 2);
        v73 = *(v143 + 3);
        v75 = v74 + 1;
        if (v74 >= v73 >> 1)
        {
          v143 = sub_1AAD6A4CC((v73 > 1), v74 + 1, 1, v143);
        }

        sub_1AAD81C50(&v161);
        v76 = v143;
      }

      *(v76 + 2) = v75;
      v79 = &v76[80 * v74];
      v79[32] = v66;
      v80 = v153[0];
      *(v79 + 9) = *(v153 + 3);
      *(v79 + 33) = v80;
      *(v79 + 5) = v68;
      *(v79 + 6) = v67;
      *(v79 + 7) = v69;
      *(v79 + 8) = v131;
      *(v79 + 9) = v133;
      *(v79 + 10) = v136;
      *(v79 + 11) = v140;
      *(v79 + 12) = v70;
      *(v79 + 13) = v144;
      goto LABEL_22;
    }

    v53 = sub_1AACBC764(&__dst);
    v129 = *v53;
    v55 = *(v53 + 8);
    v54 = *(v53 + 16);
    v56 = *(v53 + 24);
    v58 = *(v53 + 40);
    v57 = *(v53 + 48);
    v59 = *(v53 + 56);
    v60 = *(v53 + 32);
    v130 = *(v53 + 24);
    v132 = *(v53 + 56);
    v139 = *(v53 + 64);
    v135 = *(v53 + 72) & 0xFFFFFFFFFFFFFFBLL;
    if ((v59 & 0x80000000) == 0)
    {
      if (v59 != 2)
      {
        sub_1AAD81BF4(&v161, v154);
        sub_1AACD7304(v55, v54, v56);

        sub_1AACD7C50(v58, v57, v59);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v143 = sub_1AAD6A4CC(0, *(v143 + 2) + 1, 1, v143);
        }

        v62 = *(v143 + 2);
        v81 = *(v143 + 3);
        v63 = v62 + 1;
        if (v62 >= v81 >> 1)
        {
          v143 = sub_1AAD6A4CC((v81 > 1), v62 + 1, 1, v143);
        }

        sub_1AAD81C50(&v161);
        v64 = v143;
        goto LABEL_51;
      }

      sub_1AACCAE10(v58, v57, 2);
    }

    sub_1AAD81BF4(&v161, v154);
    sub_1AACD7304(v55, v54, v56);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v146 = sub_1AAD6A4CC(0, *(v146 + 2) + 1, 1, v146);
    }

    v62 = *(v146 + 2);
    v61 = *(v146 + 3);
    v63 = v62 + 1;
    if (v62 >= v61 >> 1)
    {
      v146 = sub_1AAD6A4CC((v61 > 1), v62 + 1, 1, v146);
    }

    sub_1AAD81C50(&v161);
    v64 = v146;
LABEL_51:
    *(v64 + 2) = v63;
    v82 = &v64[80 * v62];
    v82[32] = v129;
    v83 = v147;
    *(v82 + 9) = *(&v147 + 3);
    *(v82 + 33) = v83;
    *(v82 + 5) = v55;
    *(v82 + 6) = v54;
    *(v82 + 7) = v130;
    *(v82 + 8) = v60;
    *(v82 + 9) = v58;
    *(v82 + 10) = v57;
    *(v82 + 11) = v132;
    *(v82 + 12) = v139;
    *(v82 + 13) = v135;
    goto LABEL_22;
  }

  v143 = MEMORY[0x1E69E7CC0];
LABEL_53:
  v84 = *(v128 + 280);
  v85 = *(v84 + 16);
  if (v85)
  {
    v86 = (v84 + 32);
    v147 = 9;
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    v151 = 0u;
    v152 = 0;
    for (i = v85 - 1; ; --i)
    {
      v88 = *(v86 + 1);
      v161 = *v86;
      v162 = v88;
      v89 = v86[2];
      v90 = v86[3];
      v91 = v86[5];
      v165 = v86[4];
      v166 = v91;
      v163 = v89;
      v164 = v90;
      v92 = v86[6];
      v93 = v86[7];
      v94 = v86[8];
      v170 = *(v86 + 18);
      v168 = v93;
      v169 = v94;
      v167 = v92;
      memmove(&__dst, v86, 0x98uLL);
      v95 = sub_1AAF14CF0(&__dst);
      if (v95 > 1)
      {
        sub_1AACBC764(&__dst);
        v101 = v147;
        v160[0] = *(&v147 + 1);
        *(v160 + 3) = HIDWORD(v147);
        v105 = v148;
        v106 = v149;
        v107 = v150;
        v108 = v151;
        v109 = v152;
        if (!i)
        {
          goto LABEL_63;
        }
      }

      else if (v95)
      {
        v110 = sub_1AACBC764(&__dst);
        v156 = v167;
        v157 = v168;
        v158 = v169;
        v159 = v170;
        *&v154[32] = v163;
        *&v154[48] = v164;
        *&v154[64] = v165;
        v155 = v166;
        *v154 = v161;
        *&v154[16] = v162;
        v111 = sub_1AACBC764(v154);
        sub_1AAF14A78(v111, v153, sub_1AAF14CFC);
        sub_1AAF1496C(&v147, &qword_1ED9B1FC8, &type metadata for AccessibilityChartDataField, MEMORY[0x1E69E6720]);
        v101 = *v110;
        v105 = *(v110 + 8);
        v106 = *(v110 + 24);
        v107 = *(v110 + 40);
        v108 = *(v110 + 56);
        v109 = v144 & 0xFFFFFFFFFFFFF00 | *(v110 + 72) & 0xFB | 0x8000000000000000;
        *&v144 = v109;
        if (!i)
        {
LABEL_63:
          v154[0] = v101;
          *&v154[1] = v160[0];
          *&v154[4] = *(v160 + 3);
          *&v154[8] = v105;
          *&v154[24] = v106;
          *&v154[40] = v107;
          *&v154[56] = v108;
          *&v154[72] = v109;
          goto LABEL_65;
        }
      }

      else
      {
        v96 = sub_1AACBC764(&__dst);
        v156 = v167;
        v157 = v168;
        v158 = v169;
        v159 = v170;
        *&v154[32] = v163;
        *&v154[48] = v164;
        *&v154[64] = v165;
        v155 = v166;
        *v154 = v161;
        *&v154[16] = v162;
        v97 = sub_1AACBC764(v154);
        v98 = *(v97 + 40);
        v99 = *(v97 + 48);
        v100 = *(v97 + 56);
        sub_1AACD7304(*(v97 + 8), *(v97 + 16), *(v97 + 24));

        sub_1AACD7C50(v98, v99, v100);
        sub_1AAF1496C(&v147, &qword_1ED9B1FC8, &type metadata for AccessibilityChartDataField, MEMORY[0x1E69E6720]);
        v101 = *v96;
        v102 = *(v96 + 40);
        v103 = *(v96 + 48);
        v104 = *(v96 + 56);
        sub_1AACD7304(*(v96 + 8), *(v96 + 16), *(v96 + 24));

        sub_1AACD7C50(v102, v103, v104);
        sub_1AAD81C50(&v161);
        v105 = *(v96 + 8);
        v106 = *(v96 + 24);
        v107 = *(v96 + 40);
        v108 = *(v96 + 56);
        v109 = *(v96 + 72) & 0xFFFFFFFFFFFFFFBLL;
        if (!i)
        {
          goto LABEL_63;
        }
      }

      LOBYTE(v147) = v101;
      *(&v147 + 1) = v160[0];
      HIDWORD(v147) = *(v160 + 3);
      v148 = v105;
      v149 = v106;
      v150 = v107;
      v151 = v108;
      v152 = v109;
      v86 = (v86 + 152);
    }
  }

  memset(&v154[8], 0, 72);
  *v154 = 9;
LABEL_65:
  v112 = v191;
  if (v191 == 9)
  {
    v113 = MEMORY[0x1E69E6720];
    v114 = v154;
LABEL_69:
    sub_1AAF1496C(v114, &qword_1ED9B1FC8, &type metadata for AccessibilityChartDataField, v113);

    return result;
  }

  v115 = *v154;
  if (v154[0] == 9)
  {
    v113 = MEMORY[0x1E69E6720];
    v114 = &v191;
    goto LABEL_69;
  }

  v117 = *(v128 + 592);
  v173 = v194;
  v174 = v195;
  *&v175 = v196;
  __dst = v192;
  v172 = v193;
  v163 = *&v154[40];
  v164 = *&v154[56];
  *&v165 = *&v154[72];
  v161 = *&v154[8];
  v162 = *&v154[24];
  v118 = *a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v118 = sub_1AAD6A38C(0, *(v118 + 2) + 1, 1, v118);
  }

  v120 = *(v118 + 2);
  v119 = *(v118 + 3);
  if (v120 >= v119 >> 1)
  {
    v118 = sub_1AAD6A38C((v119 > 1), v120 + 1, 1, v118);
  }

  *(v118 + 2) = v120 + 1;
  v121 = &v118[184 * v120];
  *(v121 + 4) = v112;
  *(v121 + 40) = __dst;
  v122 = v172;
  v123 = v173;
  v124 = v175;
  *(v121 + 88) = v174;
  *(v121 + 72) = v123;
  *(v121 + 56) = v122;
  *(v121 + 13) = v124;
  *(v121 + 14) = v115;
  *(v121 + 120) = v161;
  result = v162;
  v125 = v163;
  v126 = v165;
  *(v121 + 168) = v164;
  *(v121 + 152) = v125;
  *(v121 + 136) = result;
  *(v121 + 23) = v126;
  *(v121 + 24) = v146;
  *(v121 + 25) = v143;
  v121[208] = v117;
  *a2 = v118;
  return result;
}

__n128 sub_1AAF12708(uint64_t a1, char **a2)
{
  v2 = a1;
  v3 = *(a1 + 152);
  v206 = *(a1 + 136);
  v207 = v3;
  v208 = *(a1 + 168);
  v209 = *(a1 + 184);
  v4 = *(a1 + 88);
  v202 = *(a1 + 72);
  v203 = v4;
  v5 = *(a1 + 120);
  v204 = *(a1 + 104);
  v205 = v5;
  v6 = *(a1 + 56);
  v200 = *(a1 + 40);
  v201 = v6;
  if (sub_1AAED0054(&v200) == 1)
  {
    goto LABEL_6;
  }

  v190 = v206;
  v191 = v207;
  v192 = v208;
  v193 = v209;
  v186 = v202;
  v187 = v203;
  v188 = v204;
  v189 = v205;
  v184 = v200;
  v185 = v201;
  v7 = sub_1AAF14CF0(&v184);
  if (v7 > 1)
  {
    sub_1AACBC764(&v184);
LABEL_6:
    v195 = 0u;
    v196 = 0u;
    v197 = 0u;
    v198 = 0u;
    v194 = 9;
    v199 = 0;
    goto LABEL_9;
  }

  if (v7)
  {
    v17 = sub_1AACBC764(&v184);
    v9 = *v17;
    v10 = *(v17 + 72) & 0xFB | 0x8000000000000000;
    v147 = *(v17 + 40);
    v148 = *(v17 + 8);
    v140 = *(v17 + 56);
    v144 = *(v17 + 24);
    v18 = *(v2 + 40);
    v19 = *(v2 + 88);
    v176 = *(v2 + 72);
    v177 = v19;
    v20 = *(v2 + 56);
    __dst = v18;
    v175 = v20;
    v21 = *(v2 + 120);
    v178 = *(v2 + 104);
    v179 = v21;
    v183 = *(v2 + 184);
    v22 = *(v2 + 168);
    v23 = *(v2 + 136);
    v181 = *(v2 + 152);
    v182 = v22;
    v180 = v23;
  }

  else
  {
    v8 = sub_1AACBC764(&v184);
    v9 = *v8;
    v10 = *(v8 + 72) & 0xFFFFFFFFFFFFFFBLL;
    v147 = *(v8 + 40);
    v148 = *(v8 + 8);
    v140 = *(v8 + 56);
    v144 = *(v8 + 24);
    v11 = *(v2 + 40);
    v12 = *(v2 + 88);
    v176 = *(v2 + 72);
    v177 = v12;
    v13 = *(v2 + 120);
    v178 = *(v2 + 104);
    v179 = v13;
    v183 = *(v2 + 184);
    v14 = *(v2 + 168);
    v15 = *(v2 + 136);
    v181 = *(v2 + 152);
    v182 = v14;
    v180 = v15;
    v16 = *(v2 + 56);
    __dst = v11;
    v175 = v16;
  }

  sub_1AAD81BF4(&__dst, &v164);
  LOBYTE(v194) = v9;
  v196 = v144;
  v195 = v148;
  v198 = v140;
  v197 = v147;
  v199 = v10;
LABEL_9:
  v24 = *(v2 + 464);
  v190 = *(v2 + 448);
  v191 = v24;
  v192 = *(v2 + 480);
  v193 = *(v2 + 496);
  v25 = *(v2 + 400);
  v186 = *(v2 + 384);
  v187 = v25;
  v26 = *(v2 + 432);
  v188 = *(v2 + 416);
  v189 = v26;
  v27 = *(v2 + 368);
  v184 = *(v2 + 352);
  v185 = v27;
  v131 = v2;
  if (sub_1AAED0054(&v184) == 1)
  {
LABEL_14:
    v149 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  v180 = v190;
  v181 = v191;
  v182 = v192;
  v183 = v193;
  v176 = v186;
  v177 = v187;
  v178 = v188;
  v179 = v189;
  __dst = v184;
  v175 = v185;
  v28 = sub_1AAF14CF0(&__dst);
  if (v28 > 1)
  {
    sub_1AACBC764(&__dst);
    goto LABEL_14;
  }

  if (v28)
  {
    v36 = sub_1AACBC764(&__dst);
    v30 = *v36;
    v145 = *(v36 + 24);
    v147 = *(v36 + 8);
    v137 = *(v36 + 56);
    v141 = *(v36 + 40);
    v31 = *(v36 + 72) & 0xFB | 0x8000000000000000;
    v37 = *(v2 + 400);
    v166 = *(v2 + 384);
    v167 = v37;
    v38 = *(v2 + 368);
    v164 = *(v2 + 352);
    v165 = v38;
    v39 = *(v2 + 432);
    v168 = *(v2 + 416);
    v169 = v39;
    v173 = *(v2 + 496);
    v40 = *(v2 + 480);
    v171 = *(v2 + 464);
    v172 = v40;
    v170 = *(v2 + 448);
  }

  else
  {
    v29 = sub_1AACBC764(&__dst);
    v30 = *v29;
    v145 = *(v29 + 24);
    v147 = *(v29 + 8);
    v137 = *(v29 + 56);
    v141 = *(v29 + 40);
    v31 = *(v29 + 72) & 0xFFFFFFFFFFFFFFBLL;
    v32 = *(v2 + 400);
    v166 = *(v2 + 384);
    v167 = v32;
    v33 = *(v2 + 432);
    v168 = *(v2 + 416);
    v169 = v33;
    v173 = *(v2 + 496);
    v34 = *(v2 + 480);
    v171 = *(v2 + 464);
    v172 = v34;
    v170 = *(v2 + 448);
    v35 = *(v2 + 368);
    v164 = *(v2 + 352);
    v165 = v35;
  }

  sub_1AAD81BF4(&v164, v157);
  v41 = sub_1AAD6A4CC(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v43 = *(v41 + 2);
  v42 = *(v41 + 3);
  v149 = v41;
  if (v43 >= v42 >> 1)
  {
    v149 = sub_1AAD6A4CC((v42 > 1), v43 + 1, 1, v41);
  }

  *(v149 + 2) = v43 + 1;
  v44 = &v149[80 * v43];
  v44[32] = v30;
  *(v44 + 56) = v145;
  *(v44 + 40) = v147;
  *(v44 + 88) = v137;
  *(v44 + 72) = v141;
  *(v44 + 13) = v31;
  v2 = v131;
LABEL_19:
  v45 = *(v2 + 32);
  v46 = *(v45 + 16);
  if (v46)
  {
    v47 = (v45 + 32);
    v146 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v48 = *(v47 + 1);
      v164 = *v47;
      v165 = v48;
      v49 = v47[2];
      v50 = v47[3];
      v51 = v47[5];
      v168 = v47[4];
      v169 = v51;
      v166 = v49;
      v167 = v50;
      v52 = v47[6];
      v53 = v47[7];
      v54 = v47[8];
      v173 = *(v47 + 18);
      v171 = v53;
      v172 = v54;
      v170 = v52;
      memmove(&__dst, v47, 0x98uLL);
      v55 = sub_1AAF14CF0(&__dst);
      if (v55 <= 1)
      {
        break;
      }

      sub_1AACBC764(&__dst);
LABEL_22:
      v47 = (v47 + 152);
      if (!--v46)
      {
        goto LABEL_53;
      }
    }

    if (v55)
    {
      v68 = sub_1AACBC764(&__dst);
      v69 = *v68;
      v71 = *(v68 + 8);
      v70 = *(v68 + 16);
      v72 = *(v68 + 24);
      v134 = *(v68 + 32);
      v136 = *(v68 + 40);
      v139 = *(v68 + 48);
      v73 = *(v68 + 64);
      v143 = *(v68 + 56);
      v74 = *(v68 + 72);
      *&v147 = v147 & 0xFFFFFFFFFFFFF00 | v74 & 0xFFFFFFFFFFFFFFFBLL | 0x8000000000000000;
      if ((v74 & 0x80) != 0 || v74 == 2)
      {
        v159 = v170;
        v160 = v171;
        v161 = v172;
        v162 = v173;
        *&v157[32] = v166;
        *&v157[48] = v167;
        *&v157[64] = v168;
        v158 = v169;
        *v157 = v164;
        *&v157[16] = v165;
        v80 = sub_1AACBC764(v157);
        sub_1AAD81BF4(&v164, &v150);
        sub_1AAF14A78(v80, &v150, sub_1AAF14CFC);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v149 = sub_1AAD6A4CC(0, *(v149 + 2) + 1, 1, v149);
        }

        v77 = *(v149 + 2);
        v81 = *(v149 + 3);
        v78 = v77 + 1;
        if (v77 >= v81 >> 1)
        {
          v149 = sub_1AAD6A4CC((v81 > 1), v77 + 1, 1, v149);
        }

        sub_1AAD81C50(&v164);
        v79 = v149;
      }

      else
      {
        v159 = v170;
        v160 = v171;
        v161 = v172;
        v162 = v173;
        *&v157[32] = v166;
        *&v157[48] = v167;
        *&v157[64] = v168;
        v158 = v169;
        *v157 = v164;
        *&v157[16] = v165;
        v75 = sub_1AACBC764(v157);
        sub_1AAD81BF4(&v164, &v150);
        sub_1AAF14A78(v75, &v150, sub_1AAF14CFC);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v146 = sub_1AAD6A4CC(0, *(v146 + 2) + 1, 1, v146);
        }

        v77 = *(v146 + 2);
        v76 = *(v146 + 3);
        v78 = v77 + 1;
        if (v77 >= v76 >> 1)
        {
          v146 = sub_1AAD6A4CC((v76 > 1), v77 + 1, 1, v146);
        }

        sub_1AAD81C50(&v164);
        v79 = v146;
      }

      *(v79 + 2) = v78;
      v82 = &v79[80 * v77];
      v82[32] = v69;
      v83 = v156[0];
      *(v82 + 9) = *(v156 + 3);
      *(v82 + 33) = v83;
      *(v82 + 5) = v71;
      *(v82 + 6) = v70;
      *(v82 + 7) = v72;
      *(v82 + 8) = v134;
      *(v82 + 9) = v136;
      *(v82 + 10) = v139;
      *(v82 + 11) = v143;
      *(v82 + 12) = v73;
      *(v82 + 13) = v147;
      goto LABEL_22;
    }

    v56 = sub_1AACBC764(&__dst);
    v132 = *v56;
    v58 = *(v56 + 8);
    v57 = *(v56 + 16);
    v59 = *(v56 + 24);
    v61 = *(v56 + 40);
    v60 = *(v56 + 48);
    v62 = *(v56 + 56);
    v63 = *(v56 + 32);
    v133 = *(v56 + 24);
    v135 = *(v56 + 56);
    v142 = *(v56 + 64);
    v138 = *(v56 + 72) & 0xFFFFFFFFFFFFFFBLL;
    if ((v62 & 0x80000000) == 0)
    {
      if (v62 != 2)
      {
        sub_1AAD81BF4(&v164, v157);
        sub_1AACD7304(v58, v57, v59);

        sub_1AACD7C50(v61, v60, v62);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v146 = sub_1AAD6A4CC(0, *(v146 + 2) + 1, 1, v146);
        }

        v65 = *(v146 + 2);
        v84 = *(v146 + 3);
        v66 = v65 + 1;
        if (v65 >= v84 >> 1)
        {
          v146 = sub_1AAD6A4CC((v84 > 1), v65 + 1, 1, v146);
        }

        sub_1AAD81C50(&v164);
        v67 = v146;
        goto LABEL_51;
      }

      sub_1AACCAE10(v61, v60, 2);
    }

    sub_1AAD81BF4(&v164, v157);
    sub_1AACD7304(v58, v57, v59);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v149 = sub_1AAD6A4CC(0, *(v149 + 2) + 1, 1, v149);
    }

    v65 = *(v149 + 2);
    v64 = *(v149 + 3);
    v66 = v65 + 1;
    if (v65 >= v64 >> 1)
    {
      v149 = sub_1AAD6A4CC((v64 > 1), v65 + 1, 1, v149);
    }

    sub_1AAD81C50(&v164);
    v67 = v149;
LABEL_51:
    *(v67 + 2) = v66;
    v85 = &v67[80 * v65];
    v85[32] = v132;
    v86 = v150;
    *(v85 + 9) = *(&v150 + 3);
    *(v85 + 33) = v86;
    *(v85 + 5) = v58;
    *(v85 + 6) = v57;
    *(v85 + 7) = v133;
    *(v85 + 8) = v63;
    *(v85 + 9) = v61;
    *(v85 + 10) = v60;
    *(v85 + 11) = v135;
    *(v85 + 12) = v142;
    *(v85 + 13) = v138;
    goto LABEL_22;
  }

  v146 = MEMORY[0x1E69E7CC0];
LABEL_53:
  v87 = *(v131 + 192);
  v88 = *(v87 + 16);
  if (v88)
  {
    v89 = (v87 + 32);
    v150 = 9;
    v151 = 0u;
    v152 = 0u;
    v153 = 0u;
    v154 = 0u;
    v155 = 0;
    for (i = v88 - 1; ; --i)
    {
      v91 = *(v89 + 1);
      v164 = *v89;
      v165 = v91;
      v92 = v89[2];
      v93 = v89[3];
      v94 = v89[5];
      v168 = v89[4];
      v169 = v94;
      v166 = v92;
      v167 = v93;
      v95 = v89[6];
      v96 = v89[7];
      v97 = v89[8];
      v173 = *(v89 + 18);
      v171 = v96;
      v172 = v97;
      v170 = v95;
      memmove(&__dst, v89, 0x98uLL);
      v98 = sub_1AAF14CF0(&__dst);
      if (v98 > 1)
      {
        sub_1AACBC764(&__dst);
        v104 = v150;
        v163[0] = *(&v150 + 1);
        *(v163 + 3) = HIDWORD(v150);
        v108 = v151;
        v109 = v152;
        v110 = v153;
        v111 = v154;
        v112 = v155;
        if (!i)
        {
          goto LABEL_63;
        }
      }

      else if (v98)
      {
        v113 = sub_1AACBC764(&__dst);
        v159 = v170;
        v160 = v171;
        v161 = v172;
        v162 = v173;
        *&v157[32] = v166;
        *&v157[48] = v167;
        *&v157[64] = v168;
        v158 = v169;
        *v157 = v164;
        *&v157[16] = v165;
        v114 = sub_1AACBC764(v157);
        sub_1AAF14A78(v114, v156, sub_1AAF14CFC);
        sub_1AAF1496C(&v150, &qword_1ED9B1FC8, &type metadata for AccessibilityChartDataField, MEMORY[0x1E69E6720]);
        v104 = *v113;
        v108 = *(v113 + 8);
        v109 = *(v113 + 24);
        v110 = *(v113 + 40);
        v111 = *(v113 + 56);
        v112 = v147 & 0xFFFFFFFFFFFFF00 | *(v113 + 72) & 0xFB | 0x8000000000000000;
        *&v147 = v112;
        if (!i)
        {
LABEL_63:
          v157[0] = v104;
          *&v157[1] = v163[0];
          *&v157[4] = *(v163 + 3);
          *&v157[8] = v108;
          *&v157[24] = v109;
          *&v157[40] = v110;
          *&v157[56] = v111;
          *&v157[72] = v112;
          goto LABEL_65;
        }
      }

      else
      {
        v99 = sub_1AACBC764(&__dst);
        v159 = v170;
        v160 = v171;
        v161 = v172;
        v162 = v173;
        *&v157[32] = v166;
        *&v157[48] = v167;
        *&v157[64] = v168;
        v158 = v169;
        *v157 = v164;
        *&v157[16] = v165;
        v100 = sub_1AACBC764(v157);
        v101 = *(v100 + 40);
        v102 = *(v100 + 48);
        v103 = *(v100 + 56);
        sub_1AACD7304(*(v100 + 8), *(v100 + 16), *(v100 + 24));

        sub_1AACD7C50(v101, v102, v103);
        sub_1AAF1496C(&v150, &qword_1ED9B1FC8, &type metadata for AccessibilityChartDataField, MEMORY[0x1E69E6720]);
        v104 = *v99;
        v105 = *(v99 + 40);
        v106 = *(v99 + 48);
        v107 = *(v99 + 56);
        sub_1AACD7304(*(v99 + 8), *(v99 + 16), *(v99 + 24));

        sub_1AACD7C50(v105, v106, v107);
        sub_1AAD81C50(&v164);
        v108 = *(v99 + 8);
        v109 = *(v99 + 24);
        v110 = *(v99 + 40);
        v111 = *(v99 + 56);
        v112 = *(v99 + 72) & 0xFFFFFFFFFFFFFFBLL;
        if (!i)
        {
          goto LABEL_63;
        }
      }

      LOBYTE(v150) = v104;
      *(&v150 + 1) = v163[0];
      HIDWORD(v150) = *(v163 + 3);
      v151 = v108;
      v152 = v109;
      v153 = v110;
      v154 = v111;
      v155 = v112;
      v89 = (v89 + 152);
    }
  }

  memset(&v157[8], 0, 72);
  *v157 = 9;
LABEL_65:
  v115 = v194;
  if (v194 == 9)
  {
    v116 = MEMORY[0x1E69E6720];
    v117 = v157;
LABEL_69:
    sub_1AAF1496C(v117, &qword_1ED9B1FC8, &type metadata for AccessibilityChartDataField, v116);

    return result;
  }

  v118 = *v157;
  if (v157[0] == 9)
  {
    v116 = MEMORY[0x1E69E6720];
    v117 = &v194;
    goto LABEL_69;
  }

  v120 = *(v131 + 505);
  v176 = v197;
  v177 = v198;
  *&v178 = v199;
  __dst = v195;
  v175 = v196;
  v166 = *&v157[40];
  v167 = *&v157[56];
  *&v168 = *&v157[72];
  v164 = *&v157[8];
  v165 = *&v157[24];
  v121 = *a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v121 = sub_1AAD6A38C(0, *(v121 + 2) + 1, 1, v121);
  }

  v123 = *(v121 + 2);
  v122 = *(v121 + 3);
  if (v123 >= v122 >> 1)
  {
    v121 = sub_1AAD6A38C((v122 > 1), v123 + 1, 1, v121);
  }

  *(v121 + 2) = v123 + 1;
  v124 = &v121[184 * v123];
  *(v124 + 4) = v115;
  *(v124 + 40) = __dst;
  v125 = v175;
  v126 = v176;
  v127 = v178;
  *(v124 + 88) = v177;
  *(v124 + 72) = v126;
  *(v124 + 56) = v125;
  *(v124 + 13) = v127;
  *(v124 + 14) = v118;
  *(v124 + 120) = v164;
  result = v165;
  v128 = v166;
  v129 = v168;
  *(v124 + 168) = v167;
  *(v124 + 152) = v128;
  *(v124 + 136) = result;
  *(v124 + 23) = v129;
  *(v124 + 24) = v149;
  *(v124 + 25) = v146;
  v124[208] = v120;
  *a2 = v121;
  return result;
}

id sub_1AAF13498(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1AAF138CC(a1, a2, a5, a6, v35);
  if (sub_1AAE3929C(v35) == 1)
  {
    return 0;
  }

  *&v34[9] = *(v36 + 9);
  v32 = v35[4];
  v33 = v35[5];
  *v34 = v36[0];
  v30[0] = v35[0];
  v30[1] = v35[1];
  v30[2] = v35[2];
  v31 = v35[3];
  if (!a2)
  {
    if ((v34[8] & 1) == 0)
    {
      if (!BYTE8(v36[1]))
      {
        v10 = v31;
        if (*(a7 + 16) && (v19 = sub_1AACE1760(a1), (v20 & 1) != 0) && (sub_1AACE0A98(*(a7 + 56) + 48 * v19, &v24), v13 = v25[24], v25[24] != 255))
        {
          v26 = v24;
          v27 = *v25;
          v28 = *&v25[16];
        }

        else
        {
          v28 = 0;
          v26 = 0u;
          v27 = 0u;
          v13 = 3;
        }

        goto LABEL_24;
      }

      goto LABEL_15;
    }

LABEL_11:
    sub_1AAF1496C(v30, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);

    return 0;
  }

  if (a2 != 1)
  {

    if (v34[8])
    {
      v14 = objc_allocWithZone(MEMORY[0x1E6959548]);

      v15 = sub_1AAF8F624();
      v16 = sub_1AAF8F824();

      v17 = [v14 initWithTitle:v15 categoryOrder:v16];

      sub_1AAF1496C(v30, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
      return v17;
    }

    goto LABEL_16;
  }

  if (v34[8])
  {
    goto LABEL_11;
  }

  if (BYTE8(v36[1]) != 1)
  {
LABEL_15:

LABEL_16:
    sub_1AAF1496C(v30, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
    return 0;
  }

  v10 = v31;
  if (*(a7 + 16) && (v11 = sub_1AACE1760(a1), (v12 & 1) != 0) && (sub_1AACE0A98(*(a7 + 56) + 48 * v11, &v24), v13 = v25[24], v25[24] != 255))
  {
    v26 = v24;
    v27 = *v25;
    v28 = *&v25[16];
  }

  else
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    v13 = 3;
  }

LABEL_24:
  v29 = v13;
  sub_1AACEC978(v10);
  sub_1AAD59D08(0, &qword_1ED9B11C0);
  sub_1AACE0A98(&v26, &v24);
  v21 = swift_allocObject();
  v22 = *v25;
  v21[1] = v24;
  v21[2] = v22;
  *(v21 + 41) = *&v25[9];

  v23 = sub_1AAF8FE24();
  sub_1AAF1496C(v30, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
  sub_1AAD57C94(&v26);
  return v23;
}

void sub_1AAF138CC(unsigned __int8 a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  if (!*(a3 + 16) || (v10 = sub_1AACB6398(a1), (v11 & 1) == 0) || (v12 = *(a3 + 56) + 112 * v10, v14 = *(v12 + 16), v13 = *(v12 + 32), v77 = *v12, v78 = v14, v79 = v13, v16 = *(v12 + 64), v15 = *(v12 + 80), v17 = *(v12 + 48), *&v82[9] = *(v12 + 89), v81 = v16, *v82 = v15, v80 = v17, v18 = *(v12 + 16), v83 = *v12, v84 = v18, v19 = *(v12 + 32), v20 = *(v12 + 48), v21 = *(v12 + 64), v22 = *(v12 + 80), v89 = *(v12 + 96), v87 = v21, v88 = v22, v85 = v19, v86 = v20, v23 = v82[24], v82[24] == 255))
  {
    sub_1AAF149C8(&v90);
LABEL_11:
    v31 = *v95;
    a5[4] = v94;
    a5[5] = v31;
    a5[6] = *&v95[16];
    *(a5 + 105) = *&v95[25];
    v32 = v91;
    *a5 = v90;
    a5[1] = v32;
    v33 = v93;
    a5[2] = v92;
    a5[3] = v33;
    return;
  }

  if (!*(a4 + 16) || (v24 = sub_1AACB6398(a1), (v25 & 1) == 0))
  {
    if (a2)
    {
      v94 = v81;
      *v95 = *v82;
      *&v95[9] = *&v82[9];
      v90 = v77;
      v91 = v78;
      v92 = v79;
      v93 = v80;
      sub_1AAF149F0(&v90, &v70);
      if (a2 == 1)
      {
        v35 = 1;
      }

      else
      {
        v35 = 2;
      }
    }

    else
    {
      v94 = v81;
      *v95 = *v82;
      *&v95[9] = *&v82[9];
      v90 = v77;
      v91 = v78;
      v92 = v79;
      v93 = v80;
      sub_1AAF149F0(&v90, &v70);
      v35 = 0;
    }

    v29 = MEMORY[0x1E69E7CC0];
    goto LABEL_34;
  }

  v26 = *(*(a4 + 56) + 8 * v24);
  v27 = *(v26 + 16);
  if (!a2)
  {
    if (!v27)
    {
      v94 = v81;
      *v95 = *v82;
      *&v95[9] = *&v82[9];
      v90 = v77;
      v91 = v78;
      v92 = v79;
      v93 = v80;
      sub_1AAF149F0(&v90, &v70);
      v29 = MEMORY[0x1E69E7CC0];
      v35 = 0;
LABEL_34:
      v74 = v87;
      v75 = v88;
      *v76 = v89;
      v70 = v83;
      v71 = v84;
      v72 = v85;
      v73 = v86;
      v76[8] = v23;
      *&v76[16] = v29;
      v76[24] = v35;
      nullsub_1(&v70, v34);
      v94 = v74;
      *v95 = v75;
      *&v95[16] = *v76;
      *&v95[25] = *&v76[9];
      v90 = v70;
      v91 = v71;
      v92 = v72;
      v93 = v73;
      goto LABEL_11;
    }

    sub_1AAF14A78(&v77, &v90, sub_1AACCF364);

    v47 = (v26 + 40);
    v29 = MEMORY[0x1E69E7CC0];
    v48 = v47;
    while (1)
    {
      v49 = *v48;
      v48 += 16;
      if (!v49)
      {
        v50 = *(v47 - 1);
        v51 = *(v50 + 16);
        v52 = *(v29 + 2);
        v53 = v52 + v51;
        if (__OFADD__(v52, v51))
        {
          goto LABEL_81;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v53 <= *(v29 + 3) >> 1)
        {
          if (*(v50 + 16))
          {
            goto LABEL_49;
          }
        }

        else
        {
          if (v52 <= v53)
          {
            v55 = v52 + v51;
          }

          else
          {
            v55 = v52;
          }

          v29 = sub_1AAD67B50(isUniquelyReferenced_nonNull_native, v55, 1, v29);
          if (*(v50 + 16))
          {
LABEL_49:
            v56 = *(v29 + 2);
            if ((*(v29 + 3) >> 1) - v56 < v51)
            {
              goto LABEL_85;
            }

            memcpy(&v29[8 * v56 + 32], (v50 + 32), 8 * v51);

            if (v51)
            {
              v57 = *(v29 + 2);
              v45 = __OFADD__(v57, v51);
              v58 = v57 + v51;
              if (v45)
              {
                goto LABEL_88;
              }

              *(v29 + 2) = v58;
            }

            goto LABEL_38;
          }
        }

        if (v51)
        {
          goto LABEL_82;
        }
      }

LABEL_38:
      v47 = v48;
      if (!--v27)
      {

        v35 = 0;
        goto LABEL_34;
      }
    }
  }

  if (a2 == 1)
  {
    if (v27)
    {
      sub_1AAF14A78(&v77, &v90, sub_1AACCF364);

      v28 = (v26 + 40);
      v29 = MEMORY[0x1E69E7CC0];
      v30 = v28;
      while (1)
      {
        v36 = *v30;
        v30 += 16;
        if (v36 == 1)
        {
          v37 = *(v28 - 1);
          v38 = *(v37 + 16);
          v39 = *(v29 + 2);
          v40 = v39 + v38;
          if (__OFADD__(v39, v38))
          {
            __break(1u);
            goto LABEL_78;
          }

          v41 = swift_isUniquelyReferenced_nonNull_native();
          if (v41 && v40 <= *(v29 + 3) >> 1)
          {
            if (*(v37 + 16))
            {
              goto LABEL_27;
            }
          }

          else
          {
            if (v39 <= v40)
            {
              v42 = v39 + v38;
            }

            else
            {
              v42 = v39;
            }

            v29 = sub_1AAD67B50(v41, v42, 1, v29);
            if (*(v37 + 16))
            {
LABEL_27:
              v43 = *(v29 + 2);
              if ((*(v29 + 3) >> 1) - v43 < v38)
              {
                goto LABEL_83;
              }

              memcpy(&v29[8 * v43 + 32], (v37 + 32), 8 * v38);

              if (v38)
              {
                v44 = *(v29 + 2);
                v45 = __OFADD__(v44, v38);
                v46 = v44 + v38;
                if (v45)
                {
                  goto LABEL_86;
                }

                *(v29 + 2) = v46;
              }

              goto LABEL_16;
            }
          }

          if (v38)
          {
            goto LABEL_79;
          }
        }

LABEL_16:
        v28 = v30;
        if (!--v27)
        {

          v35 = 1;
          goto LABEL_34;
        }
      }
    }

    v94 = v81;
    *v95 = *v82;
    *&v95[9] = *&v82[9];
    v90 = v77;
    v91 = v78;
    v92 = v79;
    v93 = v80;
    sub_1AAF149F0(&v90, &v70);
    v29 = MEMORY[0x1E69E7CC0];
    v35 = 1;
    goto LABEL_34;
  }

  if (!v27)
  {
    v94 = v81;
    *v95 = *v82;
    *&v95[9] = *&v82[9];
    v90 = v77;
    v91 = v78;
    v92 = v79;
    v93 = v80;
    sub_1AAF149F0(&v90, &v70);
    v29 = MEMORY[0x1E69E7CC0];
    v35 = 2;
    goto LABEL_34;
  }

  sub_1AAF14A78(&v77, &v90, sub_1AACCF364);

  v59 = (v26 + 40);
  v29 = MEMORY[0x1E69E7CC0];
  v60 = v59;
  while (1)
  {
    v61 = *v60;
    v60 += 16;
    if (v61 != 2)
    {
      goto LABEL_56;
    }

    v62 = *(v59 - 1);
    v63 = *(v62 + 16);
    v64 = *(v29 + 2);
    v65 = v64 + v63;
    if (__OFADD__(v64, v63))
    {
      break;
    }

    v66 = swift_isUniquelyReferenced_nonNull_native();
    if (v66 && v65 <= *(v29 + 3) >> 1)
    {
      if (*(v62 + 16))
      {
        goto LABEL_67;
      }
    }

    else
    {
      if (v64 <= v65)
      {
        v67 = v64 + v63;
      }

      else
      {
        v67 = v64;
      }

      v29 = sub_1AAD67908(v66, v67, 1, v29);
      if (*(v62 + 16))
      {
LABEL_67:
        if ((*(v29 + 3) >> 1) - *(v29 + 2) < v63)
        {
          goto LABEL_84;
        }

        swift_arrayInitWithCopy();

        if (v63)
        {
          v68 = *(v29 + 2);
          v45 = __OFADD__(v68, v63);
          v69 = v68 + v63;
          if (v45)
          {
            goto LABEL_87;
          }

          *(v29 + 2) = v69;
        }

        goto LABEL_56;
      }
    }

    if (v63)
    {
      goto LABEL_80;
    }

LABEL_56:
    v59 = v60;
    if (!--v27)
    {

      v35 = 2;
      goto LABEL_34;
    }
  }

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
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
}

uint64_t sub_1AAF13F58(uint64_t a1, double a2)
{
  v4 = sub_1AAF8CAA4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1AAEB36F8();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACE0A98(a1, &v17);
  if (v20 - 1 >= 2)
  {
    if (v20)
    {
      v16 = a2;
      sub_1AAF8CA74();
      sub_1AAD46810();
      sub_1AAF8C794();
      sub_1AADABA9C();
      sub_1AAF8F344();
      (*(v7 + 8))(v9, v6);
      return *&v14[0];
    }

    else
    {
      v14[0] = v17;
      v14[1] = v18;
      v15 = v19;
      v16 = a2;
      v11 = sub_1AACBB42C(v14, *(&v18 + 1));
      v12 = MEMORY[0x1E69E63B0];
      v13 = sub_1AAF7743C(v11, &v16, MEMORY[0x1E69E63B0]);
      sub_1AAF1496C(v14, &qword_1ED9B2790, v12, type metadata accessor for AnyFormatStyle.Wrapper);
      return v13;
    }
  }

  else
  {
    sub_1AAD57C94(&v17);
    return 0;
  }
}

void sub_1AAF14178(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SgGroup(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = a1 >> 60;
  if ((a1 >> 60) > 1)
  {
    if (v7 == 2)
    {
      sub_1AAD117A0((a1 & 0xFFFFFFFFFFFFFFFLL) + 16, v31);
      v13 = v31[1];
      v14 = *(v31[1] + 16);
      if (!v14)
      {
LABEL_19:
        sub_1AAF14C40(v31);
        return;
      }

      v15 = 0;
      while (v15 < *(v13 + 16))
      {
        v16 = v15 + 1;
        v17 = *(v13 + 32 + 8 * v15);

        sub_1AAF14178(v17, a2);

        v15 = v16;
        if (v14 == v16)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
    }

    else
    {
      if (v7 != 11)
      {
        if (v7 == 12)
        {
          memcpy(v31, ((a1 & 0xFFFFFFFFFFFFFFFLL) + 16), sizeof(v31));
          swift_beginAccess();
          sub_1AAF14AE0(v31, v30);
          sub_1AAF119A4(v31, (a2 + 16));
          swift_endAccess();
          sub_1AAF14B3C(v31);
        }

        return;
      }

      memcpy(v31, ((a1 & 0xFFFFFFFFFFFFFFFLL) + 16), 0x120uLL);
      v18 = v31[34];
      v19 = *(v31[34] + 16);
      sub_1AAF14B90(v31, v30);

      if (!v19)
      {
LABEL_24:
        sub_1AAF14BEC(v31);

        return;
      }

      v20 = 0;
      while (v20 < *(v18 + 16))
      {
        v21 = v20 + 1;
        v22 = *(v18 + 32 + 8 * v20);

        sub_1AAF14178(v22, a2);

        v20 = v21;
        if (v19 == v21)
        {
          goto LABEL_24;
        }
      }
    }

    __break(1u);
    goto LABEL_33;
  }

  if (!v7)
  {
    v23 = swift_projectBox();
    sub_1AAF14A78(v23, v6, type metadata accessor for SgGroup);
    v24 = *(v6 + 1);
    v25 = *(v24 + 16);
    if (!v25)
    {
LABEL_29:
      sub_1AAF14C94(v6);
      return;
    }

    v26 = 0;
    while (v26 < *(v24 + 16))
    {
      v27 = v26 + 1;
      v28 = *(v24 + 32 + 8 * v26);

      sub_1AAF14178(v28, a2);

      v26 = v27;
      if (v25 == v27)
      {
        goto LABEL_29;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return;
  }

  if (v7 != 1)
  {
    return;
  }

  v8 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  v9 = *(v8 + 16);

  if (v9)
  {
    v10 = 0;
    while (v10 < *(v8 + 16))
    {
      v11 = v10 + 1;
      v12 = *(v8 + 32 + 8 * v10);

      sub_1AAF14178(v12, a2);

      v10 = v11;
      if (v9 == v11)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_34;
  }

LABEL_12:
}

id sub_1AAF144A4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v56 = a3;
  v57 = a4;
  v55 = a2;
  v5 = sub_1AAF8E134();
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v77 = MEMORY[0x1E69E7CC0];
    sub_1AAD414C0(0, v7, 0);
    v8 = v77;
    v9 = (a1 + 32);
    do
    {
      v58 = v8;
      v10 = v9[1];
      v72 = *v9;
      v73 = v10;
      v11 = v9[3];
      v74 = v9[2];
      v75 = v11;
      v76 = v9[4];
      v13 = *(&v72 + 1);
      v12 = v73;
      v14 = BYTE8(v73);
      v15 = *(&v74 + 1);
      v16 = v11;
      LOBYTE(v60) = v72;
      *(&v60 + 1) = *(&v72 + 1);
      *&v61 = v73;
      BYTE8(v61) = BYTE8(v73);
      *(&v61 + 9) = *(&v73 + 9);
      HIBYTE(v61) = (*(&v73 + 9) | ((*(&v73 + 13) | (HIBYTE(v73) << 16)) << 32)) >> 48;
      *(&v61 + 13) = *(&v73 + 13);
      v62 = v74;
      v63 = v11;
      if ((*(&v76 + 1) & 0x8000000000000000) != 0)
      {
        *&v64 = v76;
        BYTE8(v64) = BYTE8(v76);
        BYTE9(v64) = 3;
        sub_1AAEDA174(&v60);
        sub_1AAD81924(&v72, v70);
      }

      else
      {
        v64 = v76;
        LOBYTE(v65) = 3;
        sub_1AAE0C0B0(&v60);
        sub_1AACD7304(v13, v12, v14 & 1);

        sub_1AACD7C50(v15, v16, SBYTE8(v16));
      }

      v70[6] = v66;
      v70[7] = v67;
      v70[8] = v68;
      v71 = v69;
      v70[2] = v62;
      v70[3] = v63;
      v70[4] = v64;
      v70[5] = v65;
      v70[0] = v60;
      v70[1] = v61;
      nullsub_1(&v60, v17);
      v78[6] = v66;
      v78[7] = v67;
      v78[8] = v68;
      v79 = v69;
      v78[2] = v62;
      v78[3] = v63;
      v78[4] = v64;
      v78[5] = v65;
      v78[0] = v60;
      v78[1] = v61;
      sub_1AAD81924(&v72, &v59);
      v18 = sub_1AAF72FD4(v78, v57);
      v20 = v19;
      v22 = v21;
      v24 = v23;
      sub_1AAD81980(&v72);
      sub_1AAD81980(&v72);
      v8 = v58;
      v77 = v58;
      v26 = *(v58 + 16);
      v25 = *(v58 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1AAD414C0((v25 > 1), v26 + 1, 1);
        v8 = v77;
      }

      *(v8 + 16) = v26 + 1;
      v27 = (v8 + 32 * v26);
      v27[4] = v18;
      v27[5] = v20;
      v27[6] = v22;
      v27[7] = v24;
      v9 += 5;
      --v7;
    }

    while (v7);
  }

  v28 = *(v8 + 16);
  if (v28)
  {
    v29 = 0;
    v30 = (v8 + 56);
    while (1)
    {
      v31 = *v30;
      if (*v30)
      {
        break;
      }

      ++v29;
      v30 += 4;
      if (v28 == v29)
      {
        goto LABEL_13;
      }
    }

    v38 = *(v30 - 2);
    v37 = *(v30 - 1);
    v39 = *(v30 - 3);
    v40 = v8;

    sub_1AADA61DC(v39, v38, v37, v31);
    sub_1AAD04750(v39, v38, v37 & 1);

    v32 = sub_1AAF1161C(32, 0xE100000000000000, 0, MEMORY[0x1E69E7CC0], v40, v29);
    v36 = v41;
    v33 = v42;
    v44 = v43;
    swift_bridgeObjectRelease_n();
    v34 = v33 & 1;
    sub_1AACD7304(v32, v36, v33 & 1);

    v58 = v36;
    v35 = v44;
  }

  else
  {
LABEL_13:

    v32 = 0;
    v33 = 0;
    v58 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0xE000000000000000;
  }

  v45 = v52;
  sub_1AAF8E124();
  v46 = sub_1AAF8E974();
  v48 = v47;
  sub_1AAD04750(v32, v36, v33 & 1);

  (*(v53 + 8))(v45, v54);
  v49 = sub_1AAF74684(v46, v48, v55 & 1, v56);

  sub_1AADA6198(v32, v58, v34, v35);
  return v49;
}

uint64_t sub_1AAF1496C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1AACCB940(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

double sub_1AAF149C8(uint64_t a1)
{
  *(a1 + 96) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *&result = 255;
  *(a1 + 104) = xmmword_1AAFC2E60;
  *(a1 + 120) = 0;
  return result;
}

uint64_t sub_1AAF149F0(uint64_t a1, uint64_t a2)
{
  sub_1AACCB940(0, &qword_1ED9B3E38, MEMORY[0x1E69E7DE0], type metadata accessor for AnyConcreteScale);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAF14A78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAF14C94(uint64_t a1)
{
  v2 = type metadata accessor for SgGroup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AAF14CFC()
{
  if (!qword_1EB427090)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB427090);
    }
  }
}

uint64_t sub_1AAF14D68(void **a1)
{
  v1 = a1;
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AADAB494(v2);
  }

  v3 = v2[2];
  v16[0] = (v2 + 4);
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
          if (v12[42] >= v12[4])
          {
            break;
          }

          memcpy(__dst, v12 + 42, sizeof(__dst));
          memcpy(v12 + 42, v12 + 4, 0x130uLL);
          result = memcpy(v12 + 4, __dst, 0x130uLL);
          v12 -= 38;
        }

        while (!__CFADD__(v11++, 1));
        ++v9;
        v10 += 38;
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
      sub_1AAD45FFC();
      v7 = sub_1AAF8F8A4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    __dst[0] = v7 + 32;
    __dst[1] = v6;
    sub_1AAF1F678(__dst, v17, v16, v5);
    *(v7 + 16) = 0;
  }

  *v1 = v2;
  return result;
}

uint64_t sub_1AAF14EF0(unint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E7CC0];
  *(v5 + 16) = sub_1AADF8EA0(MEMORY[0x1E69E7CC0]);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v9 = v8 + 16;
  sub_1AAF1BE68(a1, v4, v7, a2, v8, v5);
  swift_beginAccess();
  v10 = *(v5 + 16);
  v11 = *(v10 + 16);
  if (v11)
  {
    v6 = sub_1AAD6C36C(v11, 0);
    v36 = sub_1AADA9504(v40, v6 + 32, v11, v10);
    swift_bridgeObjectRetain_n();
    sub_1AACC9C00();
    if (v36 == v11)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

LABEL_5:
  v40[0] = v6;
  sub_1AAF14D68(v40);

  v12 = v40[0][2];
  if (v12)
  {
    v13 = v12 - 1;
    for (i = v40[0] + 5; ; i += 38)
    {
      memcpy(__dst, i - 1, sizeof(__dst));
      v15 = __dst[37];
      memcpy(__src, i, 0x120uLL);
      nullsub_1(__src, v16);
      memcpy(v40, __src, 0x120uLL);
      v40[36] = v15;
      v41 = 1;
      v42 = a2;
      sub_1AAF20668(__dst, v37, sub_1AAD45FFC);
      sub_1AAF14B90(&__dst[1], v37);

      v18 = sub_1AAF153B8(v17);
      swift_beginAccess();
      v19 = *(v18 + 16);
      v20 = *v9;
      v21 = *(*v9 + 16);
      v22 = (v21 + v19);
      if (__OFADD__(v21, v19))
      {
        goto LABEL_30;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v22 <= v20[3] >> 1)
      {
        if (*(v18 + 16))
        {
          goto LABEL_11;
        }
      }

      else
      {
        if (v21 <= v22)
        {
          v28 = v21 + v19;
        }

        else
        {
          v28 = v21;
        }

        v20 = sub_1AAD6A1F4(isUniquelyReferenced_nonNull_native, v28, 1, v20);
        if (*(v18 + 16))
        {
LABEL_11:
          v21 = v20[2];
          v24 = (v20[3] >> 1) - v21;
          sub_1AACFDAA8();
          if (v24 < v19)
          {
            goto LABEL_32;
          }

          swift_arrayInitWithCopy();

          if (v19)
          {
            v25 = v20[2];
            v26 = __OFADD__(v25, v19);
            v27 = v25 + v19;
            if (v26)
            {
              goto LABEL_33;
            }

            v20[2] = v27;
          }

          goto LABEL_20;
        }
      }

      if (v19)
      {
        goto LABEL_31;
      }

LABEL_20:
      *v9 = v20;
      swift_endAccess();
      sub_1AAF14BEC(&__dst[1]);
      if (!v13)
      {
        break;
      }

      --v13;
    }
  }

  swift_beginAccess();
  v29 = *v9;
  v30 = *(*v9 + 16);
  if (v30)
  {
    v31 = 0;
    v21 = 0;
    v32 = -v30;
    while (1)
    {
      v33 = v29[2];
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1AADB820C(v29);
      }

      if (v21 >= v29[2])
      {
        break;
      }

      sub_1AACFDAA8();
      *(v29 + ((*(*(v34 - 8) + 80) + 32) & ~*(*(v34 - 8) + 80)) + *(*(v34 - 8) + 72) * v21 + 40) = (v31 + v33);
      *v9 = v29;
      swift_endAccess();
      --v31;
      ++v21;
      if (v32 == v31)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_28:

    return v29;
  }

  return result;
}

uint64_t sub_1AAF153B8(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = sub_1AAF8E204();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v376 = &v372 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACFDAA8();
  v405 = v4;
  v397 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v372 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  *&v407 = &v372 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v372 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v389 = (&v372 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v388 = &v372 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v375 = &v372 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v372 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v395 = &v372 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v393 = &v372 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v372 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v404 = &v372 - v29;
  v30 = *(v1 + 304);
  v31 = *(v1 + 288);
  memcpy(v463, v1, sizeof(v463));
  memcpy(v486, v1, sizeof(v486));
  memcpy(v487, v1, 0x120uLL);
  v32 = sub_1AAF201B8(v487);
  v394 = v31;
  if (v32 == 1)
  {
    v33 = *(v31 + 16);
    goto LABEL_3;
  }

  v69 = *(v1 + 296);
  memcpy(v462, v486, 0x120uLL);
  if (v69)
  {
    v70 = v394;
    v33 = *(v394 + 16);
    if (v33 <= 1)
    {
LABEL_3:
      if (v33)
      {
        v395 = v11;
        v396 = v6;
        v391 = v30;

        v404 = v33 - 1;
        v35 = (v34 + 88);
        v406 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          memcpy(v443, v35 - 56, 0x260uLL);
          v398 = v35;
          *&v408 = *(&v443[6] + 1);
          v399 = *&v443[6];
          v36 = *&v443[7];
          v37 = v35[1];
          v462[0] = *v35;
          v462[1] = v37;
          v474 = *(&v443[2] + 8);
          v38 = *(&v443[5] + 1);
          v39 = *&v443[0];
          v402 = *(&v443[1] + 8);
          v403 = *(v443 + 8);
          sub_1AAF14AE0(v443, v441);
          v40 = sub_1AAF1A164(v443, v463);
          v42 = v41;
          v44 = v43;
          v46 = v45;
          *(&v441[1] + 8) = v402;
          *(v441 + 8) = v403;
          *&v441[0] = v39;
          *(&v441[2] + 1) = 0;
          sub_1AAF201D0();
          LODWORD(v400) = v44;
          v47 = v399;
          v401 = v42;
          *&v402 = v40;
          *&v403 = v46;
          sub_1AAF8EB44();
          v48 = v408;
          v442[0] = v462[0];
          v442[1] = v462[1];
          v442[4] = v474;
          *&v442[2] = v38;
          *(&v442[2] + 1) = v47;
          *&v442[3] = v408;
          *(&v442[3] + 1) = v36;
          LOBYTE(v442[5]) = 0;
          sub_1AADA61DC(v38, v47, v408, v36);
          sub_1AADA61DC(v38, v47, v48, v36);
          sub_1AAF20224(v462, v441, &qword_1ED9B2B78, MEMORY[0x1E6981148]);
          sub_1AAF20224(&v474, v441, &qword_1ED9B2A98, MEMORY[0x1E69E6158]);
          sub_1AAE0F9F0(v442);
          if (v36)
          {
            v49 = v38;
            v50 = v47;
            v51 = v48;
          }

          else
          {

            v53 = sub_1AAF739C0(v52, v391);
            v55 = v54;
            v57 = v56;
            v59 = v58;

            if (v59)
            {
              v49 = v53;
            }

            else
            {
              v49 = 0;
            }

            if (v59)
            {
              v50 = v55;
            }

            else
            {
              v50 = 0xE000000000000000;
            }

            if (v59)
            {
              v51 = v57;
            }

            else
            {
              v51 = 0;
            }
          }

          v60 = v395;
          v61 = v407;
          sub_1AAF8DF44();
          sub_1AAD04750(v49, v50, v51 & 1);

          sub_1AAF20890(v61, sub_1AACFDAA8);
          v441[0] = v462[0];
          v441[1] = v462[1];
          v441[4] = v474;
          *&v441[2] = v38;
          *(&v441[2] + 1) = v47;
          v62 = v408;
          *&v441[3] = v408;
          *(&v441[3] + 1) = v36;
          LOBYTE(v441[5]) = 0;
          v63 = MEMORY[0x1E69E6158];
          sub_1AAF20224(&v474, v484, &qword_1ED9B2A98, MEMORY[0x1E69E6158]);
          sub_1AADA61DC(v38, v47, v62, v36);
          sub_1AAF20224(v462, v484, &qword_1ED9B2B78, MEMORY[0x1E6981148]);
          sub_1AAF20224(&v474, v484, &qword_1ED9B2A98, v63);
          sub_1AAE0F9F0(v441);
          if (*(&v474 + 1))
          {
            v64 = v393;
            sub_1AAF8DF54();
            sub_1AAF20734(&v474, &qword_1ED9B2A98, v63);
            sub_1AAF20890(v60, sub_1AACFDAA8);
            sub_1AAF206D0(v64, v60);
          }

          v65 = v396;
          sub_1AAF20668(v60, v396, sub_1AACFDAA8);
          v66 = v406;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v66 = sub_1AAD6A1F4(0, v66[2] + 1, 1, v66);
          }

          v68 = v66[2];
          v67 = v66[3];
          if (v68 >= v67 >> 1)
          {
            v66 = sub_1AAD6A1F4(v67 > 1, v68 + 1, 1, v66);
          }

          sub_1AAD04750(v402, v401, v400 & 1);

          sub_1AAF14B3C(v443);
          sub_1AAF20890(v60, sub_1AACFDAA8);
          v66[2] = v68 + 1;
          sub_1AAF206D0(v65, v66 + ((*(v397 + 80) + 32) & ~*(v397 + 80)) + *(v397 + 72) * v68);
          if (!v404)
          {
            break;
          }

          v406 = v66;
          --v404;
          v35 = v398 + 38;
        }
      }

      else
      {
        v66 = MEMORY[0x1E69E7CC0];
      }

      goto LABEL_220;
    }

    v71 = *(v462 + 1);
    v72 = v462[1];
    v73 = *&v462[2];
    sub_1AAF20224(v486, v443, &qword_1ED9B22B0, &type metadata for SgAccessibilityGroup);

    v74 = v73;
    v75 = *&v72;
    v76 = v71;
    v77 = *(&v72 + 1);
    v78 = v70 + 64;
    do
    {
      *&v76 = CGRectUnion(*&v76, *(v78 - 24));
      v78 += 608;
      --v33;
    }

    while (v33);
    Height = v74;
    v80 = v75;
    v81 = v76;
    v82 = v77;
  }

  else
  {
    v81 = *(v462 + 1);
    v82 = *(&v462[1] + 1);
    v80 = *&v462[1];
    Height = *&v462[2];
    memcpy(v443, v486, 0x120uLL);
    sub_1AAF14B90(v443, v441);
  }

  v488.origin.x = v81;
  v488.origin.y = v80;
  v488.size.width = v82;
  v488.size.height = Height;
  v83 = 0x401C5BF891B4EF6ALL;
  if (CGRectGetWidth(v488) >= 7.0898154)
  {
    *&v86 = v82;
    v87 = v81;
    v88 = v80;
  }

  else
  {
    v489.origin.x = v81;
    v489.origin.y = v80;
    v489.size.width = v82;
    v489.size.height = Height;
    v84 = CGRectGetMinX(v489) + -3.5449077;
    v490.origin.x = v81;
    v490.origin.y = v80;
    v490.size.width = v82;
    v490.size.height = Height;
    MinY = CGRectGetMinY(v490);
    v491.origin.x = v81;
    v491.origin.y = v80;
    v491.size.width = v82;
    v491.size.height = Height;
    Height = CGRectGetHeight(v491);
    *&v86 = 7.0898154;
    v87 = v84;
    v88 = MinY;
  }

  MinX = v87;
  v90 = v88;
  Width = *&v86;
  v92 = Height;
  v93 = Height;
  v94 = CGRectGetHeight(*&v87);
  v401 = v27;
  *&v402 = v20;
  if (v94 >= 7.0898154)
  {
    v83 = *&Height;
  }

  else
  {
    v95 = MinX;
    v492.origin.x = MinX;
    v492.origin.y = v90;
    v492.size.width = Width;
    v492.size.height = v92;
    MinX = CGRectGetMinX(v492);
    v493.origin.x = v95;
    v493.origin.y = v90;
    v493.size.width = Width;
    v493.size.height = v92;
    v96 = CGRectGetMinY(v493) + -3.5449077;
    v494.origin.x = v95;
    v494.origin.y = v90;
    v494.size.width = Width;
    v494.size.height = v92;
    Width = CGRectGetWidth(v494);
    v90 = v96;
  }

  v391 = v30;
  v448 = *&v462[0];
  v449 = MinX;
  v450 = v90;
  v451 = Width;
  v452 = v83;
  v453 = 0;
  v97 = v462[4];
  v98 = v462[5];
  v99 = v462[6];
  v100 = *&v462[7];
  v101 = *(&v462[3] + 1);
  v454 = *(&v462[3] + 1);
  v102 = *&v462[3];
  v455 = v462[4];
  v456 = v462[5];
  v457 = v462[6];
  v458 = *&v462[7];
  *&v408 = *(&v462[2] + 1);
  v459 = *(&v462[2] + 1);
  v460 = *&v462[3];
  v461 = 0;
  sub_1AADA61DC(*(&v462[3] + 1), *&v462[4], SBYTE8(v462[4]), *&v462[5]);
  *&v407 = v101;
  sub_1AADA61DC(v101, v97, SBYTE8(v97), v98);
  v398 = *(&v99 + 1);
  v400 = v99;
  *&v403 = v100;
  sub_1AADA61DC(*(&v98 + 1), v99, SBYTE8(v99), v100);
  v406 = v102;

  sub_1AAE0F9F0(&v454);
  v399 = v98;
  if (v98)
  {
    v103 = v407;
    v104 = v97;
    v105 = BYTE8(v97);
    v106 = *(&v97 + 1);
  }

  else
  {
    v484[6] = *(&v462[13] + 8);
    v484[7] = *(&v462[14] + 8);
    v484[8] = *(&v462[15] + 8);
    v485 = *(&v462[16] + 1);
    v484[2] = *(&v462[9] + 8);
    v484[3] = *(&v462[10] + 8);
    v484[4] = *(&v462[11] + 8);
    v484[5] = *(&v462[12] + 8);
    v484[0] = *(&v462[7] + 8);
    v484[1] = *(&v462[8] + 8);
    sub_1AAF20224(&v462[7] + 8, v443, qword_1ED9B2098, &type metadata for AccessibilityDataField);
    v103 = sub_1AAF72FD4(v484, v391);
    v104 = v107;
    v109 = v108;
    v111 = v110;
    sub_1AAF20734(&v462[7] + 8, qword_1ED9B2098, &type metadata for AccessibilityDataField);
    if (v111)
    {
      v105 = v109;
    }

    else
    {
      v103 = 0;
      v104 = 0xE000000000000000;
      v105 = 0;
    }

    v106 = *(&v97 + 1);
  }

  sub_1AAF201D0();
  sub_1AAF8EB44();
  sub_1AAD04750(v103, v104, v105 & 1);

  v112 = v407;
  v446[0] = v407;
  v446[1] = v97;
  v446[2] = v106;
  v446[3] = *(&v97 + 1);
  v446[4] = *(&v98 + 1);
  v113 = v400;
  v446[5] = v400;
  v114 = v106;
  v115 = v398;
  v446[6] = v398;
  v116 = v403;
  v446[7] = v403;
  v446[8] = v408;
  v446[9] = v406;
  v447 = 0;
  sub_1AADA61DC(*(&v98 + 1), v400, v398, v403);
  v392 = v114;
  sub_1AADA61DC(v112, v97, v114, *(&v97 + 1));
  sub_1AADA61DC(*(&v98 + 1), v113, v115, v116);

  sub_1AAE0F9F0(v446);
  v396 = v97;
  v390 = *(&v98 + 1);
  v117 = v401;
  if (v116)
  {
    v118 = *(&v98 + 1);
    v119 = v113;
    v120 = v115;
    v121 = v115;
  }

  else
  {
    v118 = sub_1AAF1AAD0(v394, v391);
    v120 = v115;
    v121 = v122;
  }

  v123 = v119;
  sub_1AAF8DF44();
  sub_1AAD04750(v118, v123, v121 & 1);

  sub_1AAF20890(v117, sub_1AACFDAA8);
  v66 = v406;
  v124 = v407;
  v444[0] = v407;
  v125 = v396;
  v444[1] = v396;
  LOBYTE(v123) = v392;
  v444[2] = v392;
  v127 = v399;
  v126 = v400;
  v444[3] = v399;
  v128 = v390;
  v444[4] = v390;
  v444[5] = v400;
  v444[6] = v120;
  v129 = v403;
  v444[7] = v403;
  v444[8] = v408;
  v444[9] = v406;
  v445 = 0;

  v130 = v125;
  v131 = v404;
  sub_1AADA61DC(v124, v130, v123, v127);
  sub_1AADA61DC(v128, v126, v120, v129);

  v132 = sub_1AAE0F9F0(v444);
  if (v66)
  {
    v133 = v393;
    sub_1AAF8DF54();

    sub_1AAF20890(v131, sub_1AACFDAA8);
    v132 = sub_1AAF206D0(v133, v131);
  }

  v134 = v394;
  v135 = *(v394 + 16);
  if (v135 <= 9)
  {
    v136 = MEMORY[0x1E69E7CC0];
    v137 = sub_1AAD6A0A8(0, v135, 0, MEMORY[0x1E69E7CC0]);
    v66 = v137;
    v138 = *(v134 + 16);
    if (!v138)
    {
      goto LABEL_151;
    }

    v139 = 0;
    *&v408 = v138 - 1;
    v407 = xmmword_1AAF92AB0;
    while (1)
    {
      memcpy(v443, (v134 + 32), 0x260uLL);
      KeyPath = *(&v443[7] + 1);
      v141 = *(v134 + 488);
      v442[0] = *(v134 + 472);
      v442[1] = v141;
      v142 = *(v134 + 552);
      v144 = *(v134 + 504);
      v143 = *(v134 + 520);
      v442[4] = *(v134 + 536);
      v442[5] = v142;
      v442[2] = v144;
      v442[3] = v143;
      v146 = *(v134 + 584);
      v145 = *(v134 + 600);
      v147 = *(v134 + 568);
      *&v442[9] = *(v134 + 616);
      v442[7] = v146;
      v442[8] = v145;
      v442[6] = v147;
      if (sub_1AAED0054(v442) == 1)
      {
        sub_1AAF14AE0(v443, v441);
      }

      else
      {
        sub_1AAF20A28(0, &qword_1ED9B1E00, &type metadata for AccessibilityDataField, MEMORY[0x1E69E6F90]);
        v148 = swift_allocObject();
        v149 = v442[6];
        v150 = v442[8];
        *(v148 + 144) = v442[7];
        *(v148 + 160) = v150;
        v151 = v442[2];
        v152 = v442[4];
        v153 = v442[5];
        *(v148 + 80) = v442[3];
        *(v148 + 96) = v152;
        *(v148 + 112) = v153;
        *(v148 + 128) = v149;
        v154 = v442[0];
        v155 = v442[1];
        *(v148 + 16) = v407;
        *(v148 + 32) = v154;
        *(v148 + 176) = *&v442[9];
        *(v148 + 48) = v155;
        *(v148 + 64) = v151;
        *&v474 = KeyPath;
        sub_1AAF14AE0(v443, v441);
        sub_1AAF20224(&v443[27] + 8, v441, qword_1ED9B2098, &type metadata for AccessibilityDataField);

        sub_1AADC92A4(v148);
        KeyPath = v474;
      }

      v441[6] = v443[14];
      v441[7] = v443[15];
      v441[8] = v443[16];
      *&v441[9] = *&v443[17];
      v441[2] = v443[10];
      v441[3] = v443[11];
      v441[4] = v443[12];
      v441[5] = v443[13];
      v441[0] = v443[8];
      v441[1] = v443[9];
      if (sub_1AAED0054(v441) != 1)
      {
        v480 = v441[6];
        v481 = v441[7];
        v482 = v441[8];
        v483 = *&v441[9];
        v476 = v441[2];
        v477 = v441[3];
        v478 = v441[4];
        v479 = v441[5];
        v474 = v441[0];
        v475 = v441[1];
        v156 = sub_1AAF14CF0(&v474);
        v157 = sub_1AACBC764(&v474);
        if (v156 <= 1)
        {
          if (v156)
          {
            v158 = *(v157 + 72);
            if (v158 < 0 || v158 == 2)
            {
              goto LABEL_69;
            }
          }

          else if (*(v157 + 56) < 0 || *(v157 + 56) >= 2u)
          {
            goto LABEL_69;
          }

          v470 = v443[14];
          v471 = v443[15];
          v472 = v443[16];
          v473 = *&v443[17];
          v466 = v443[10];
          v467 = v443[11];
          v468 = v443[12];
          v469 = v443[13];
          v464 = v443[8];
          v465 = v443[9];
          sub_1AAD81BF4(&v464, &v423);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            KeyPath = sub_1AAD6931C(0, *(KeyPath + 2) + 1, 1, KeyPath);
          }

          v160 = *(KeyPath + 2);
          v159 = *(KeyPath + 3);
          if (v160 >= v159 >> 1)
          {
            KeyPath = sub_1AAD6931C((v159 > 1), v160 + 1, 1, KeyPath);
          }

          v427 = v443[12];
          v428 = v443[13];
          v425 = v443[10];
          v426 = v443[11];
          v432 = *&v443[17];
          v430 = v443[15];
          v431 = v443[16];
          v429 = v443[14];
          v423 = v443[8];
          v424 = v443[9];
          *(KeyPath + 2) = v160 + 1;
          v161 = &KeyPath[152 * v160];
          v162 = v424;
          *(v161 + 2) = v423;
          *(v161 + 3) = v162;
          v163 = v425;
          v164 = v426;
          v165 = v428;
          *(v161 + 6) = v427;
          *(v161 + 7) = v165;
          *(v161 + 4) = v163;
          *(v161 + 5) = v164;
          v166 = v429;
          v167 = v430;
          v168 = v431;
          *(v161 + 22) = v432;
          *(v161 + 9) = v167;
          *(v161 + 10) = v168;
          *(v161 + 8) = v166;
        }
      }

LABEL_69:
      v169 = *(&v443[17] + 1);
      v171 = v66[2];
      v170 = v66[3];

      if (v171 >= v170 >> 1)
      {
        v66 = sub_1AAD6A0A8((v170 > 1), v171 + 1, 1, v66);
      }

      sub_1AAF14B3C(v443);
      v66[2] = v171 + 1;
      v172 = &v66[2 * v171];
      v172[4] = KeyPath;
      v172[5] = v169;
      if (v408 == v139)
      {
        goto LABEL_150;
      }

      ++v139;
      v173 = *(v394 + 16);
      v134 += 608;
      if (v139 >= v173)
      {
        goto LABEL_227;
      }
    }
  }

  MEMORY[0x1EEE9AC00](v132);
  *(&v372 - 4) = &type metadata for SgAccessibilityGroup;
  *(&v372 - 3) = &type metadata for SgAccessibilityIndividual;
  v370 = &off_1F1FE82A0;
  v371 = &off_1F1FE8320;
  KeyPath = swift_getKeyPath();

  v174 = sub_1AAF7BAE0(v134);

  v372 = *(v174 + 16);
  if (!v372)
  {

    v170 = v404;
    goto LABEL_218;
  }

  v373 = v174 + 32;
  v387 = v174;

  v175 = 0;
  *&v402 = 0;
  v170 = v404;
  while (1)
  {
    v173 = *(v387 + 16);
    if (v175 >= v173)
    {
      goto LABEL_237;
    }

    v374 = v175;
    v176 = (v373 + 16 * v175);
    KeyPath = v176[1];
    v177 = *(KeyPath + 2);
    v377 = *v176;

    v398 = v177;
    v399 = KeyPath;
    if (v177)
    {
      v178 = 0;
      v66 = KeyPath + 312;
      v179 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v173 = *(v399 + 2);
        if (v178 >= v173)
        {
          break;
        }

        *&v443[0] = MEMORY[0x1E69E7CD0];

        v181 = v402;
        KeyPath = sub_1AAF202A4(v180);
        *&v402 = v181;

        v177 = *(KeyPath + 2);
        v170 = *(v179 + 2);
        v182 = v170 + v177;
        if (__OFADD__(v170, v177))
        {
          goto LABEL_224;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v182 > *(v179 + 3) >> 1)
        {
          if (v170 <= v182)
          {
            v184 = v170 + v177;
          }

          else
          {
            v184 = v170;
          }

          v179 = sub_1AAD6931C(isUniquelyReferenced_nonNull_native, v184, 1, v179);
        }

        v170 = v404;
        if (*(KeyPath + 2))
        {
          v173 = *(v179 + 2);
          if (((*(v179 + 3) >> 1) - v173) < v177)
          {
            goto LABEL_226;
          }

          swift_arrayInitWithCopy();

          if (v177)
          {
            v185 = *(v179 + 2);
            v186 = __OFADD__(v185, v177);
            v173 = v185 + v177;
            if (v186)
            {
              goto LABEL_228;
            }

            *(v179 + 2) = v173;
          }
        }

        else
        {

          if (v177)
          {
            goto LABEL_225;
          }
        }

        ++v178;
        v66 += 76;
        if (v398 == v178)
        {
          goto LABEL_96;
        }
      }

      __break(1u);
LABEL_224:
      __break(1u);
LABEL_225:
      __break(1u);
LABEL_226:
      __break(1u);
LABEL_227:
      __break(1u);
LABEL_228:
      __break(1u);
LABEL_229:
      __break(1u);
LABEL_230:
      __break(1u);
      goto LABEL_231;
    }

    v179 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v187 = sub_1AAF7C3F0(v179);
    v188 = *(v187 + 16);
    if (v188)
    {
      break;
    }

LABEL_76:

    KeyPath = (v374 + 1);

    v175 = KeyPath;
    if (KeyPath == v372)
    {
LABEL_222:
      swift_bridgeObjectRelease_n();
LABEL_218:
      sub_1AAF20668(v170, v375, sub_1AACFDAA8);
      v66 = sub_1AAD6A1F4(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v170 = v66[2];
      v173 = v66[3];
      KeyPath = (v170 + 1);
      if (v170 >= v173 >> 1)
      {
        goto LABEL_238;
      }

      goto LABEL_219;
    }
  }

  v189 = 0;
  v190 = *(v179 + 2);
  v385 = v187;
  v386 = v187 + 32;
  v390 = v179 + 32;
  *&v408 = v190;
  v378 = v190 - 1;
  v406 = v179;
  v384 = v188;
  do
  {
    v191 = v386 + 72 * v189;
    v423 = *v191;
    v192 = *(v191 + 16);
    v193 = *(v191 + 32);
    v194 = *(v191 + 48);
    v195 = *(v191 + 64);
    v395 = v189;
    v396 = v195;
    *&v427 = v195;
    v425 = v193;
    v426 = v194;
    v424 = v192;
    if (v188 == 1)
    {
      sub_1AAF20668(&v423, v443, sub_1AAF207A4);
      LODWORD(v401) = 0;
      v392 = 0xE000000000000000;
      v393 = 0;
      v400 = MEMORY[0x1E69E7CC0];
      if (!v408)
      {
        goto LABEL_126;
      }
    }

    else
    {
      v219 = *(&v423 + 1);
      v177 = v423;
      v220 = v424;
      v66 = *(&v424 + 1);
      if (((*(&v426 + 1) | ((*(&v426 + 5) | (SBYTE7(v426) << 16)) << 32)) & 0x8000000000000000) != 0)
      {
        *&v407 = *(&v426 + 1);
        sub_1AAF20668(&v423, v443, sub_1AAF207A4);
        sub_1AAF8E1F4();
        sub_1AAF8E1E4();
        sub_1AAF8E1C4();
        sub_1AAF8E1E4();
        sub_1AAF8E1C4();
        sub_1AAF8E1E4();
        sub_1AAF8E224();
        type metadata accessor for FindClass();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v222 = [objc_opt_self() bundleForClass_];
        LOWORD(v371) = 256;
        v370 = 0;
        v177 = sub_1AAF8EA44();
        v219 = v223;
        v220 = v224;
        v66 = v225;
      }

      else
      {
        sub_1AAF20668(&v423, v443, sub_1AAF207A4);
        sub_1AACD7304(v177, v219, v220 & 1);
      }

      v226 = sub_1AAF8EA04();
      v392 = v227;
      v393 = v226;
      LODWORD(v401) = v228;
      v400 = v229;
      sub_1AAD04750(v177, v219, v220 & 1);

      if (!v408)
      {
LABEL_126:
        *&v403 = MEMORY[0x1E69E7CC0];
        goto LABEL_127;
      }
    }

    v196 = 0;
    *&v403 = MEMORY[0x1E69E7CC0];
    do
    {
      KeyPath = &v390[152 * v196];
      v170 = v196;
      while (1)
      {
        if (v170 >= *(v179 + 2))
        {
          __break(1u);
LABEL_173:

          v66 = v177;
          goto LABEL_175;
        }

        v197 = *(KeyPath + 1);
        v441[0] = *KeyPath;
        v441[1] = v197;
        v198 = *(KeyPath + 2);
        v199 = *(KeyPath + 3);
        v200 = *(KeyPath + 5);
        v441[4] = *(KeyPath + 4);
        v441[5] = v200;
        v441[2] = v198;
        v441[3] = v199;
        v201 = *(KeyPath + 6);
        v202 = *(KeyPath + 7);
        v203 = *(KeyPath + 8);
        *&v441[9] = *(KeyPath + 18);
        v441[7] = v202;
        v441[8] = v203;
        v441[6] = v201;
        memmove(v443, KeyPath, 0x98uLL);
        v204 = sub_1AAF14CF0(v443);
        if (v204 > 1)
        {
          if (v204 == 2)
          {
LABEL_107:
            v213 = sub_1AACBC764(v443);
            if (*(v213 + 56) < 0)
            {
              goto LABEL_240;
            }

            if (*(v213 + 56))
            {
              goto LABEL_241;
            }

            v177 = *(v213 + 40);
            goto LABEL_113;
          }

          sub_1AACBC764(v443);
          v442[6] = v441[6];
          v442[7] = v441[7];
          v442[8] = v441[8];
          *&v442[9] = *&v441[9];
          v442[2] = v441[2];
          v442[3] = v441[3];
          v442[4] = v441[4];
          v442[5] = v441[5];
          v442[0] = v441[0];
          v442[1] = v441[1];
          v214 = sub_1AACBC764(v442);
          v215 = *(v214 + 8);
          v214 += 8;
          v211 = v215;
          v66 = *(v214 + 56);
          *&v407 = *(v214 + 48);
          v206 = *(v214 + 64);
          v208 = *(v214 + 8);
          v207 = *(v214 + 16);
          v209 = *(v214 + 24);
          v210 = *(v214 + 32);
          v177 = *(v214 + 40);
          sub_1AAE63EFC(v214, &v474);
        }

        else
        {
          if (!v204)
          {
            goto LABEL_107;
          }

          sub_1AACBC764(v443);
          v480 = v441[6];
          v481 = v441[7];
          v482 = v441[8];
          v483 = *&v441[9];
          v476 = v441[2];
          v477 = v441[3];
          v478 = v441[4];
          v479 = v441[5];
          v474 = v441[0];
          v475 = v441[1];
          v205 = sub_1AACBC764(&v474);
          v66 = *(v205 + 64);
          *&v407 = *(v205 + 56);
          v206 = *(v205 + 72);
          v208 = *(v205 + 16);
          v207 = *(v205 + 24);
          v209 = *(v205 + 32);
          v210 = *(v205 + 40);
          v177 = *(v205 + 48);
          v211 = *(v205 + 8);
          *&v442[9] = *&v441[9];
          v442[4] = v441[4];
          v442[5] = v441[5];
          v442[7] = v441[7];
          v442[8] = v441[8];
          v442[6] = v441[6];
          v442[2] = v441[2];
          v442[3] = v441[3];
          v442[0] = v441[0];
          v442[1] = v441[1];
          v212 = sub_1AACBC764(v442);
          sub_1AAF20668(v212, &v464, sub_1AAF14CFC);
        }

        *&v442[0] = v211;
        *(&v442[0] + 1) = v208;
        *&v442[1] = v207;
        BYTE8(v442[1]) = v209;
        *&v442[2] = v210;
        *(&v442[2] + 1) = v177;
        *&v442[3] = v407;
        *(&v442[3] + 1) = v66;
        LOBYTE(v442[4]) = v206;
        if ((v206 & 0x80) != 0)
        {
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:

          __break(1u);
          return result;
        }

        sub_1AAE63F58(v442);
        v179 = v406;
        if (v206)
        {
          __break(1u);
          goto LABEL_222;
        }

LABEL_113:
        if ((~v177 & 0x7FF0000000000000) != 0)
        {
          break;
        }

        ++v170;
        KeyPath += 152;
        if (v408 == v170)
        {
          goto LABEL_127;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        *&v403 = sub_1AAD67B50(0, *(v403 + 16) + 1, 1, v403);
      }

      v217 = *(v403 + 16);
      v216 = *(v403 + 24);
      if (v217 >= v216 >> 1)
      {
        *&v403 = sub_1AAD67B50((v216 > 1), v217 + 1, 1, v403);
      }

      v196 = v170 + 1;
      v218 = v403;
      *(v403 + 16) = v217 + 1;
      *(v218 + 8 * v217 + 32) = v177;
    }

    while (v378 != v170);
LABEL_127:
    if (*(v387 + 16) <= 1uLL)
    {
      sub_1AAD04750(v393, v392, v401 & 1);

      sub_1AAD81A30(&v423);

      v170 = v404;
      goto LABEL_147;
    }

    v170 = v404;
    if (!*(v396 + 2))
    {
      goto LABEL_242;
    }

    v230 = *(v396 + 9);
    v441[6] = *(v396 + 8);
    v441[7] = v230;
    v441[8] = *(v396 + 10);
    *&v441[9] = *(v396 + 22);
    v231 = *(v396 + 5);
    v441[2] = *(v396 + 4);
    v441[3] = v231;
    v232 = *(v396 + 7);
    v441[4] = *(v396 + 6);
    v441[5] = v232;
    v233 = *(v396 + 3);
    v441[0] = *(v396 + 2);
    v441[1] = v233;
    sub_1AAD81BF4(v441, v443);

    v443[6] = v441[6];
    v443[7] = v441[7];
    v443[8] = v441[8];
    v443[2] = v441[2];
    v443[3] = v441[3];
    v443[4] = v441[4];
    v443[5] = v441[5];
    v443[0] = v441[0];
    *&v443[9] = *&v441[9];
    v443[1] = v441[1];
    sub_1AAF14CF0(v443);
    KeyPath = sub_1AACBC764(v443);
    sub_1AAD81C50(v441);
    v234 = v391;
    if (*(v391 + 2) && (v235 = *KeyPath, KeyPath = v391, v236 = sub_1AACE1760(v235), (v237 & 1) != 0) && (sub_1AACE0A98(*(v234 + 56) + 48 * v236, &v474), v238 = BYTE8(v476), BYTE8(v476) != 255))
    {
      v442[0] = v474;
      v442[1] = v475;
      *&v442[2] = v476;
    }

    else
    {
      v238 = 3;
      memset(v442, 0, 40);
    }

    BYTE8(v442[2]) = v238;
    v173 = v398;
    if (!v398)
    {
      goto LABEL_229;
    }

    v173 = *(v399 + 2);
    if (!v173)
    {
      goto LABEL_230;
    }

    sub_1AAF73C2C(v403, v399[625]);
    v383 = v239;
    *&v407 = v240;
    LODWORD(v382) = v241;
    v396 = v242;

    sub_1AAF20668(v170, v389, sub_1AACFDAA8);
    v243 = sub_1AAF739C0(v377, v234);
    if (v246)
    {
      v247 = v243;
    }

    else
    {
      v247 = 0;
    }

    if (v246)
    {
      v248 = v244;
    }

    else
    {
      v248 = 0xE000000000000000;
    }

    if (v246)
    {
      v249 = v245;
    }

    else
    {
      v249 = 0;
    }

    v250 = v392;
    v251 = v393;
    v379 = sub_1AAF8EA04();
    v380 = v252;
    LODWORD(v403) = v253;
    v381 = v254;
    sub_1AAD04750(v247, v248, v249 & 1);

    v370 = 0;
    v371 = v405;
    v255 = v382;
    v256 = v380;
    v257 = v383;
    v177 = v407;
    v66 = v389;
    sub_1AAF8DF34();
    sub_1AAD04750(v251, v250, v401 & 1);

    sub_1AAD81A30(&v423);
    v258 = v256;
    v179 = v406;
    sub_1AAD04750(v379, v258, v403 & 1);

    sub_1AAD04750(v257, v177, v255 & 1);
    v170 = v404;

    sub_1AAF20890(v66, sub_1AACFDAA8);
    sub_1AAD57C94(v442);
    sub_1AAF20890(v170, sub_1AACFDAA8);
    sub_1AAF206D0(v388, v170);
LABEL_147:
    v189 = (v395 + 1);
    v188 = v384;
    if (v395 + 1 == v384)
    {
      goto LABEL_76;
    }
  }

  while (v189 < *(v385 + 16));
  __break(1u);
LABEL_150:

  v136 = MEMORY[0x1E69E7CC0];
LABEL_151:
  MEMORY[0x1EEE9AC00](v137);
  v370 = v463;
  KeyPath = sub_1AADE5E58(sub_1AAF20830, (&v372 - 4), v66);
  v259 = *(sub_1AAD81218(KeyPath) + 16);

  v260 = *(KeyPath + 2);

  if (v259 == v260)
  {
    goto LABEL_175;
  }

  v170 = v66[2];
  if (!v170)
  {

    v66 = MEMORY[0x1E69E7CC0];
LABEL_175:
    v273 = 0;
    v382 = v66;
    v383 = 0;
    v385 = 0;
    v274 = v463[36];
    v380 = v66 + 4;
    v381 = v463[36] + 32;
    v394 = v463[36];
    v170 = v404;
    while (1)
    {
      if (v273)
      {
        goto LABEL_182;
      }

      v173 = *(v274 + 16);
      if (v385 == v173)
      {
        goto LABEL_182;
      }

      if (v385 >= v173)
      {
        goto LABEL_233;
      }

      KeyPath = (v381 + 608 * v385);
      memcpy(v441, KeyPath, 0x260uLL);
      ++v385;
      v173 = v382[2];
      if (v383 == v173)
      {
LABEL_182:
        sub_1AAF20868(v441);
        memcpy(v443, v441, 0x270uLL);
        v280 = 1;
      }

      else
      {
        if (v383 >= v173)
        {
          goto LABEL_235;
        }

        v321 = v383 + 1;
        v408 = *&v380[2 * v383];
        memmove(v443, KeyPath, 0x260uLL);
        v443[38] = v408;
        nullsub_1(v443, v322);
        sub_1AAF14AE0(v441, v442);

        v280 = 0;
        v383 = v321;
        v170 = v404;
      }

      memcpy(v441, v443, sizeof(v441));
      if (sub_1AAF20850(v441) == 1)
      {

        goto LABEL_218;
      }

      LODWORD(v393) = v280;
      v398 = *(&v443[38] + 1);
      v399 = *&v443[38];
      memcpy(v442, v443, sizeof(v442));
      sub_1AAF20668(v170, v402, sub_1AACFDAA8);
      v281 = *(&v442[3] + 1);
      v283 = *(&v442[4] + 1);
      v282 = *&v442[4];
      v284 = *(&v442[5] + 1);
      v285 = *&v442[5];
      v286 = v442[6];
      v287 = *&v442[7];
      v433 = *(&v442[3] + 1);
      v401 = *&v442[3];
      v434 = v442[4];
      v435 = v442[5];
      v436 = v442[6];
      v437 = *&v442[7];
      v387 = *(&v442[2] + 1);
      v438 = *(&v442[2] + 1);
      v439 = *&v442[3];
      v440 = 0;
      sub_1AADA61DC(*(&v442[3] + 1), *&v442[4], SBYTE8(v442[4]), *&v442[5]);
      v388 = v282;
      v389 = v281;
      v288 = v282;
      v289 = v283;
      sub_1AADA61DC(v281, v288, v283, v285);
      v406 = v284;
      v290 = v284;
      v291 = *(&v286 + 1);
      v400 = v286;
      *&v403 = v287;
      sub_1AADA61DC(v290, v286, SBYTE8(v286), v287);

      sub_1AAE0F9F0(&v433);
      v396 = v283;
      if (v285)
      {
        v292 = v388;
        v293 = v389;
        v391 = v388;
        v392 = v389;
        LODWORD(v407) = v289;
        v390 = v285;
        goto LABEL_202;
      }

      v384 = 0;
      v294 = v399;
      v295 = *(v399 + 2);
      v386 = *(&v286 + 1);
      if (v295)
      {
        *&v408 = v463[38];
        v410[0] = MEMORY[0x1E69E7CC0];
        sub_1AAD414C0(0, v295, 0);
        v296 = v410[0];
        v297 = v294 + 32;
        do
        {
          v298 = v297[1];
          v413 = *v297;
          v414 = v298;
          v299 = v297[2];
          v300 = v297[3];
          v301 = v297[5];
          v417 = v297[4];
          v418 = v301;
          v415 = v299;
          v416 = v300;
          v302 = v297[6];
          v303 = v297[7];
          v304 = v297[8];
          v422 = *(v297 + 18);
          v420 = v303;
          v421 = v304;
          v419 = v302;
          memmove(&v423, v297, 0x98uLL);
          nullsub_1(&v423, v305);
          v480 = v429;
          v481 = v430;
          v482 = v431;
          v483 = v432;
          v476 = v425;
          v477 = v426;
          v478 = v427;
          v479 = v428;
          v474 = v423;
          v475 = v424;
          sub_1AAD81BF4(&v413, v412);
          v306 = sub_1AAF72FD4(&v474, v408);
          v308 = v307;
          v310 = v309;
          v312 = v311;
          sub_1AAD81C50(&v413);
          v410[0] = v296;
          v314 = *(v296 + 16);
          v313 = *(v296 + 24);
          if (v314 >= v313 >> 1)
          {
            sub_1AAD414C0((v313 > 1), v314 + 1, 1);
            v296 = v410[0];
          }

          *(v296 + 16) = v314 + 1;
          v315 = (v296 + 32 * v314);
          v315[4] = v306;
          v315[5] = v308;
          v315[6] = v310;
          v315[7] = v312;
          v297 = (v297 + 152);
          --v295;
        }

        while (v295);
        v316 = MEMORY[0x1E69E7CC0];
        v291 = v386;
        v317 = *(v296 + 16);
        if (v317)
        {
LABEL_194:
          v318 = 0;
          v319 = (v296 + 56);
          while (1)
          {
            v320 = *v319;
            if (*v319)
            {
              break;
            }

            ++v318;
            v319 += 4;
            if (v317 == v318)
            {
              goto LABEL_197;
            }
          }

          v324 = *(v319 - 2);
          v323 = *(v319 - 1);
          v325 = *(v319 - 3);

          sub_1AADA61DC(v325, v324, v323, v320);
          v291 = v386;
          sub_1AAD04750(v325, v324, v323 & 1);

          v326 = sub_1AAF1161C(8236, 0xE200000000000000, 0, v316, v296, v318);
          v391 = v327;
          v392 = v326;
          LODWORD(v407) = v328;
          v390 = v329;
          swift_bridgeObjectRelease_n();
          v292 = v388;
          v293 = v389;
          v289 = v396;
          sub_1AADA6198(v389, v388, v396, 0);
          goto LABEL_201;
        }
      }

      else
      {
        v296 = MEMORY[0x1E69E7CC0];
        v316 = MEMORY[0x1E69E7CC0];
        v317 = *(MEMORY[0x1E69E7CC0] + 16);
        if (v317)
        {
          goto LABEL_194;
        }
      }

LABEL_197:

      v292 = v388;
      v293 = v389;
      v289 = v396;
      sub_1AADA6198(v389, v388, v396, 0);
      LODWORD(v407) = 0;
      v391 = 0xE000000000000000;
      v392 = 0;
      v390 = v316;
LABEL_201:
      v285 = v384;
LABEL_202:
      v410[0] = v293;
      v410[1] = v292;
      v410[2] = v289;
      v410[3] = v285;
      v330 = v406;
      v331 = v400;
      v410[4] = v406;
      v410[5] = v400;
      v332 = v403;
      v410[6] = v291;
      v410[7] = v403;
      v410[8] = v387;
      v410[9] = v401;
      v411 = 0;
      sub_1AADA61DC(v406, v400, v291, v403);
      v333 = v291;
      v334 = v331;
      sub_1AADA61DC(v293, v292, v396, v285);
      sub_1AADA61DC(v330, v331, v333, v332);

      sub_1AAE0F9F0(v410);
      if (v332)
      {

        v275 = v333;
        v276 = v407;
        goto LABEL_177;
      }

      v386 = v333;
      v335 = v398;
      v336 = *(v398 + 2);
      v276 = v407;
      if (v336)
      {
        *&v408 = v463[38];
        v409 = MEMORY[0x1E69E7CC0];
        sub_1AAD414C0(0, v336, 0);
        v337 = v409;
        v338 = v335 + 2;
        do
        {
          v339 = v338[1];
          v413 = *v338;
          v414 = v339;
          v340 = v338[2];
          v341 = v338[3];
          v342 = v338[5];
          v417 = v338[4];
          v418 = v342;
          v415 = v340;
          v416 = v341;
          v343 = v338[6];
          v344 = v338[7];
          v345 = v338[8];
          v422 = *(v338 + 18);
          v420 = v344;
          v421 = v345;
          v419 = v343;
          memmove(&v423, v338, 0x98uLL);
          nullsub_1(&v423, v346);
          v470 = v429;
          v471 = v430;
          v472 = v431;
          v473 = v432;
          v466 = v425;
          v467 = v426;
          v468 = v427;
          v469 = v428;
          v464 = v423;
          v465 = v424;
          sub_1AAD81BF4(&v413, v412);
          v347 = sub_1AAF72FD4(&v464, v408);
          v349 = v348;
          v351 = v350;
          v353 = v352;
          sub_1AAD81C50(&v413);
          v409 = v337;
          v355 = *(v337 + 16);
          v354 = *(v337 + 24);
          if (v355 >= v354 >> 1)
          {
            sub_1AAD414C0((v354 > 1), v355 + 1, 1);
            v337 = v409;
          }

          *(v337 + 16) = v355 + 1;
          v356 = (v337 + 32 * v355);
          v356[4] = v347;
          v356[5] = v349;
          v356[6] = v351;
          v356[7] = v353;
          v338 = (v338 + 152);
          --v336;
        }

        while (v336);
        v357 = MEMORY[0x1E69E7CC0];
        v276 = v407;
        v358 = *(v337 + 16);
        if (v358)
        {
LABEL_211:
          v359 = 0;
          v360 = (v337 + 56);
          while (1)
          {
            v361 = *v360;
            if (*v360)
            {
              break;
            }

            ++v359;
            v360 += 4;
            if (v358 == v359)
            {
              goto LABEL_214;
            }
          }

          v364 = *(v360 - 2);
          v363 = *(v360 - 1);
          v365 = *(v360 - 3);

          sub_1AADA61DC(v365, v364, v363, v361);
          sub_1AAD04750(v365, v364, v363 & 1);

          v362 = sub_1AAF1161C(8236, 0xE200000000000000, 0, v357, v337, v359);
          v334 = v366;
          v275 = v367;
          *&v403 = v368;

          swift_bridgeObjectRelease_n();
          goto LABEL_216;
        }
      }

      else
      {
        v337 = MEMORY[0x1E69E7CC0];
        v357 = MEMORY[0x1E69E7CC0];
        v358 = *(MEMORY[0x1E69E7CC0] + 16);
        if (v358)
        {
          goto LABEL_211;
        }
      }

LABEL_214:

      v362 = 0;
      v275 = 0;
      v334 = 0xE000000000000000;
      *&v403 = v357;
LABEL_216:
      sub_1AADA6198(v406, v400, v386, 0);
      v406 = v362;
LABEL_177:
      LODWORD(v407) = v276;
      v370 = 0;
      v371 = v405;
      v277 = v391;
      v278 = v392;
      v279 = v406;
      v66 = v403;
      sub_1AAF8DF34();
      sub_1AAD04750(v279, v334, v275 & 1);

      sub_1AAD04750(v278, v277, v407 & 1);

      sub_1AAF14B3C(v442);
      KeyPath = sub_1AACFDAA8;
      sub_1AAF20890(v402, sub_1AACFDAA8);
      v170 = v404;
      sub_1AAF20890(v404, sub_1AACFDAA8);
      sub_1AAF206D0(v395, v170);
      v274 = v394;
      v273 = v393;
    }
  }

  *&v443[0] = v136;
  sub_1AAD414E0(0, v170, 0);
  v177 = *&v443[0];
  v261 = v66 + 5;
  while (1)
  {
    v262 = *(v261 - 1);
    v263 = *v261;
    KeyPath = *(*v261 + 16);
    v264 = *(v262 + 2);
    v265 = &KeyPath[v264];
    if (__OFADD__(v264, KeyPath))
    {
      break;
    }

    v266 = swift_isUniquelyReferenced_nonNull_native();
    if (!v266 || v265 > *(v262 + 3) >> 1)
    {
      if (v264 <= v265)
      {
        v267 = &KeyPath[v264];
      }

      else
      {
        v267 = v264;
      }

      v262 = sub_1AAD6931C(v266, v267, 1, v262);
    }

    v268 = MEMORY[0x1E69E7CC0];
    if (*(v263 + 16))
    {
      v173 = *(v262 + 2);
      if (((*(v262 + 3) >> 1) - v173) < KeyPath)
      {
        goto LABEL_234;
      }

      swift_arrayInitWithCopy();

      if (KeyPath)
      {
        v269 = *(v262 + 2);
        v186 = __OFADD__(v269, KeyPath);
        v173 = &KeyPath[v269];
        if (v186)
        {
          goto LABEL_236;
        }

        *(v262 + 2) = v173;
      }
    }

    else
    {

      if (KeyPath)
      {
        goto LABEL_232;
      }
    }

    v270 = v177;
    *&v443[0] = v177;
    v272 = *(v177 + 16);
    v271 = *(v177 + 24);
    if (v272 >= v271 >> 1)
    {
      KeyPath = v443;
      sub_1AAD414E0((v271 > 1), v272 + 1, 1);
      v270 = *&v443[0];
    }

    *(v270 + 16) = v272 + 1;
    v177 = v270;
    v173 = v270 + 16 * v272;
    *(v173 + 32) = v262;
    *(v173 + 40) = v268;
    v261 += 2;
    if (!--v170)
    {
      goto LABEL_173;
    }
  }

LABEL_231:
  __break(1u);
LABEL_232:
  __break(1u);
LABEL_233:
  __break(1u);
LABEL_234:
  __break(1u);
LABEL_235:
  __break(1u);
LABEL_236:
  __break(1u);
LABEL_237:
  __break(1u);
LABEL_238:
  v66 = sub_1AAD6A1F4(v173 > 1, KeyPath, 1, v66);
LABEL_219:
  sub_1AAF20734(v486, &qword_1ED9B22B0, &type metadata for SgAccessibilityGroup);
  sub_1AAF20890(v404, sub_1AACFDAA8);
  v66[2] = KeyPath;
  sub_1AAF206D0(v375, v66 + ((*(v397 + 80) + 32) & ~*(v397 + 80)) + *(v397 + 72) * v170);
LABEL_220:
  memcpy(v441, v463, 0x120uLL);
  sub_1AAF20734(v441, &qword_1ED9B22B0, &type metadata for SgAccessibilityGroup);

  return v66;
}

uint64_t sub_1AAF17C04(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = sub_1AAF8E204();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v359 = &v355 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACFDAA8();
  v387 = v4;
  v378 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v355 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  *&v390 = &v355 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v355 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v371 = &v355 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v370 = &v355 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v358 = &v355 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v355 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v383 = &v355 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v374 = &v355 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v355 - v26;
  MEMORY[0x1EEE9AC00](v28);
  *&v386 = &v355 - v29;
  v375 = *(v1 + 312);
  v30 = *(v1 + 296);
  memcpy(v418, v1, sizeof(v418));
  memcpy(v442, v1, 0x121uLL);
  memcpy(v443, v1, 0x121uLL);
  v31 = sub_1AAF209BC(v443);
  v380 = v30;
  if (v31 == 1)
  {
    v32 = *(v30 + 16);
    if (v32)
    {
      goto LABEL_3;
    }

    goto LABEL_149;
  }

  v61 = *(v1 + 304);
  memcpy(v417, v442, 0x121uLL);
  memcpy(v441, v442, sizeof(v441));
  if (v61)
  {
    v32 = *(v380 + 16);
    if (v32 <= 1)
    {
      if (v32)
      {
LABEL_3:

        v33 = MEMORY[0x1E69E7CC0];
        v34 = 32;
        v376 = v11;
        v377 = v6;
        do
        {
          v388 = v32;
          *&v389 = v33;
          v382 = v34;
          memcpy(v415, (v380 + v34), 0x251uLL);
          v35 = *(&v415[34] + 1);
          v381 = *&v415[34];
          v36 = v415[35];
          v37 = *(&v415[35] + 1);
          v38 = *(&v415[36] + 1);
          v379 = *&v415[36];
          v385 = v415[1];
          v386 = v415[0];
          sub_1AAECFFF8(v415, v413);
          v39 = sub_1AAF1A674(v415, v418);
          v41 = v40;
          v43 = v42;
          v45 = v44;
          *(&v413[1] + 8) = v385;
          *(v413 + 8) = v386;
          *&v413[0] = 0;
          *(&v413[2] + 1) = 0;
          sub_1AAF201D0();
          LODWORD(v383) = v43;
          v384 = v41;
          *&v385 = v39;
          *&v386 = v45;
          sub_1AAF8EB44();
          if (v37)
          {
            v46 = v381;
            v47 = v381;
            v48 = v35;
            v49 = v36;
          }

          else
          {

            v47 = sub_1AAF739C0(v50, v375);
            v48 = v51;
            v49 = v52;
            v54 = v53;

            if (!v54)
            {
              v47 = 0;
              v48 = 0xE000000000000000;
              v49 = 0;
            }

            v46 = v381;
          }

          sub_1AADA61DC(v46, v35, v36, v37);
          v55 = v376;
          v56 = v390;
          sub_1AAF8DF44();
          sub_1AAD04750(v47, v48, v49 & 1);

          sub_1AAF20890(v56, sub_1AACFDAA8);
          if (v38)
          {

            v57 = v374;
            sub_1AAF8DF54();

            sub_1AAF20890(v55, sub_1AACFDAA8);
            sub_1AAF206D0(v57, v55);
          }

          v58 = v377;
          sub_1AAF20668(v55, v377, sub_1AACFDAA8);
          v33 = v389;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = sub_1AAD6A1F4(0, *(v33 + 16) + 1, 1, v33);
          }

          v60 = *(v33 + 16);
          v59 = *(v33 + 24);
          if (v60 >= v59 >> 1)
          {
            v33 = sub_1AAD6A1F4(v59 > 1, v60 + 1, 1, v33);
          }

          sub_1AAD04750(v385, v384, v383 & 1);

          sub_1AAF209D4(v415);
          sub_1AAF20890(v55, sub_1AACFDAA8);
          *(v33 + 16) = v60 + 1;
          sub_1AAF206D0(v58, v33 + ((*(v378 + 80) + 32) & ~*(v378 + 80)) + *(v378 + 72) * v60);
          v34 = v382 + 600;
          v32 = (v388 - 1);
        }

        while (v388 != 1);

        goto LABEL_221;
      }

LABEL_149:
      v33 = MEMORY[0x1E69E7CC0];
LABEL_221:
      memcpy(v413, v418, 0x121uLL);
      sub_1AAF20734(v413, &qword_1EB427098, &type metadata for ChartAccessibilityContent.GroupItem);

      return v33;
    }
  }

  memcpy(v416, v442, 0x121uLL);
  sub_1AAECFF4C(v416, v415);
  sub_1AAED1330();
  if (v61)
  {
    sub_1AAED1330();
    v66 = *(v380 + 16);
    if (v66)
    {
      v67 = v64;
      v68 = v62;
      v69 = v63;
      v70 = v65;

      v72 = v70;
      v73 = v69;
      v74 = v68;
      v75 = v67;
      v76 = v71 + 56;
      do
      {
        *&v74 = CGRectUnion(*&v74, *(v76 - 24));
        v76 += 600;
        --v66;
      }

      while (v66);
      v77 = v75;
      v78 = v74;
      v79 = v73;
      v80 = v72;

      v65 = v80;
      v63 = v79;
      v62 = v78;
      v64 = v77;
    }
  }

  v81 = v62;
  v82 = v63;
  v83 = v64;
  v84 = v65;
  v85 = 0x401C5BF891B4EF6ALL;
  if (CGRectGetWidth(*&v62) >= 7.0898154)
  {
    *&v89 = v83;
    v90 = v81;
    v91 = v82;
    Height = v84;
  }

  else
  {
    v444.origin.x = v81;
    v444.origin.y = v82;
    v444.size.width = v83;
    v444.size.height = v84;
    v86 = CGRectGetMinX(v444) + -3.5449077;
    v445.origin.x = v81;
    v445.origin.y = v82;
    v445.size.width = v83;
    v445.size.height = v84;
    MinY = CGRectGetMinY(v445);
    v446.origin.x = v81;
    v446.origin.y = v82;
    v446.size.width = v83;
    v446.size.height = v84;
    Height = CGRectGetHeight(v446);
    *&v89 = 7.0898154;
    v90 = v86;
    v91 = MinY;
  }

  MinX = v90;
  v93 = v91;
  Width = *&v89;
  v95 = Height;
  if (CGRectGetHeight(*&v90) >= 7.0898154)
  {
    v85 = *&v95;
  }

  else
  {
    v96 = MinX;
    v447.origin.x = MinX;
    v447.origin.y = v93;
    v447.size.width = Width;
    v447.size.height = v95;
    MinX = CGRectGetMinX(v447);
    v448.origin.x = v96;
    v448.origin.y = v93;
    v448.size.width = Width;
    v448.size.height = v95;
    v97 = CGRectGetMinY(v448) + -3.5449077;
    v449.origin.x = v96;
    v449.origin.y = v93;
    v449.size.width = Width;
    v449.size.height = v95;
    Width = CGRectGetWidth(v449);
    v93 = v97;
  }

  v388 = v20;
  *&v413[0] = 0;
  *(v413 + 1) = MinX;
  *&v413[1] = v93;
  *(&v413[1] + 1) = Width;
  v413[2] = v85;
  v98 = v417[2];
  v99 = v417[3];
  v100 = v417[4];
  v101 = v417[5];
  v384 = v417[7];
  *&v385 = v417[6];
  v381 = v417[9];
  v382 = v417[8];
  v379 = v417[10];
  *&v390 = v417[11];
  *&v389 = v27;
  if (v417[5])
  {
    v102 = v417[2];
    v103 = v417[3];
    v104 = v417[4];
  }

  else
  {
    v439[6] = *&v417[25];
    v439[7] = *&v417[27];
    v439[8] = *&v417[29];
    v440 = v417[31];
    v439[2] = *&v417[17];
    v439[3] = *&v417[19];
    v439[4] = *&v417[21];
    v439[5] = *&v417[23];
    v439[0] = *&v417[13];
    v439[1] = *&v417[15];
    sub_1AAF20224(&v417[13], v415, qword_1ED9B2098, &type metadata for AccessibilityDataField);
    v105 = sub_1AAF72FD4(v439, v375);
    v107 = v106;
    v377 = v108;
    v110 = v109;
    sub_1AAF20734(&v417[13], qword_1ED9B2098, &type metadata for AccessibilityDataField);
    if (v110)
    {
      v102 = v105;
    }

    else
    {
      v102 = 0;
    }

    if (v110)
    {
      v103 = v107;
    }

    else
    {
      v103 = 0xE000000000000000;
    }

    if (v110)
    {
      v104 = v377;
    }

    else
    {
      v104 = 0;
    }
  }

  sub_1AADA61DC(v98, v99, v100, v101);
  sub_1AAF201D0();
  sub_1AAF8EB44();
  sub_1AAD04750(v102, v103, v104 & 1);

  v111 = v381;
  if (v381)
  {
    v113 = v384;
    v112 = v385;
    v114 = v385;
    v115 = v384;
    v116 = v382;
    v117 = v382;
  }

  else
  {
    v114 = sub_1AAF1B49C(v380, v375);
    v115 = v118;
    v117 = v119;
    v113 = v384;
    v112 = v385;
    v116 = v382;
  }

  sub_1AADA61DC(v112, v113, v116, v111);
  v120 = v386;
  v121 = v389;
  sub_1AAF8DF44();
  sub_1AAD04750(v114, v115, v117 & 1);

  v122 = sub_1AAF20890(v121, sub_1AACFDAA8);
  v33 = v390;
  if (v390)
  {

    v123 = v374;
    sub_1AAF8DF54();

    sub_1AAF20890(v120, sub_1AACFDAA8);
    v122 = sub_1AAF206D0(v123, v120);
  }

  v124 = v380;
  v125 = *(v380 + 16);
  if (v125 <= 9)
  {
    v126 = sub_1AAD6A0A8(0, v125, 0, MEMORY[0x1E69E7CC0]);
    v127 = v126;
    v128 = *(v124 + 16);
    if (!v128)
    {
      goto LABEL_151;
    }

    v129 = 0;
    *&v390 = v128 - 1;
    v389 = xmmword_1AAF92AB0;
    while (1)
    {
      memcpy(v415, (v124 + 32), 0x251uLL);
      KeyPath = *&v415[2];
      v131 = *(v124 + 400);
      v414[0] = *(v124 + 384);
      v414[1] = v131;
      v132 = *(v124 + 464);
      v134 = *(v124 + 416);
      v133 = *(v124 + 432);
      v414[4] = *(v124 + 448);
      v414[5] = v132;
      v414[2] = v134;
      v414[3] = v133;
      v136 = *(v124 + 496);
      v135 = *(v124 + 512);
      v137 = *(v124 + 480);
      *&v414[9] = *(v124 + 528);
      v414[7] = v136;
      v414[8] = v135;
      v414[6] = v137;
      if (sub_1AAED0054(v414) == 1)
      {
        sub_1AAECFFF8(v415, v413);
      }

      else
      {
        sub_1AAF20A28(0, &qword_1ED9B1E00, &type metadata for AccessibilityDataField, MEMORY[0x1E69E6F90]);
        v138 = swift_allocObject();
        v139 = v414[6];
        v140 = v414[8];
        *(v138 + 144) = v414[7];
        *(v138 + 160) = v140;
        v141 = v414[2];
        v142 = v414[4];
        v143 = v414[5];
        *(v138 + 80) = v414[3];
        *(v138 + 96) = v142;
        *(v138 + 112) = v143;
        *(v138 + 128) = v139;
        v144 = v414[0];
        v145 = v414[1];
        *(v138 + 16) = v389;
        *(v138 + 32) = v144;
        *(v138 + 176) = *&v414[9];
        *(v138 + 48) = v145;
        *(v138 + 64) = v141;
        *&v429 = KeyPath;
        sub_1AAECFFF8(v415, v413);
        sub_1AAF20224(&v415[22], v413, qword_1ED9B2098, &type metadata for AccessibilityDataField);

        sub_1AADC92A4(v138);
        KeyPath = v429;
      }

      v413[6] = *(&v415[8] + 8);
      v413[7] = *(&v415[9] + 8);
      v413[8] = *(&v415[10] + 8);
      *&v413[9] = *(&v415[11] + 1);
      v413[2] = *(&v415[4] + 8);
      v413[3] = *(&v415[5] + 8);
      v413[4] = *(&v415[6] + 8);
      v413[5] = *(&v415[7] + 8);
      v413[0] = *(&v415[2] + 8);
      v413[1] = *(&v415[3] + 8);
      if (sub_1AAED0054(v413) != 1)
      {
        v435 = v413[6];
        v436 = v413[7];
        v437 = v413[8];
        v438 = *&v413[9];
        v431 = v413[2];
        v432 = v413[3];
        v433 = v413[4];
        v434 = v413[5];
        v429 = v413[0];
        v430 = v413[1];
        v146 = sub_1AAF14CF0(&v429);
        v147 = sub_1AACBC764(&v429);
        if (v146 <= 1)
        {
          if (v146)
          {
            v148 = *(v147 + 72);
            if (v148 < 0 || v148 == 2)
            {
              goto LABEL_66;
            }
          }

          else if (*(v147 + 56) < 0 || *(v147 + 56) >= 2u)
          {
            goto LABEL_66;
          }

          v425 = *(&v415[8] + 8);
          v426 = *(&v415[9] + 8);
          v427 = *(&v415[10] + 8);
          v428 = *(&v415[11] + 1);
          v421 = *(&v415[4] + 8);
          v422 = *(&v415[5] + 8);
          v423 = *(&v415[6] + 8);
          v424 = *(&v415[7] + 8);
          v419 = *(&v415[2] + 8);
          v420 = *(&v415[3] + 8);
          sub_1AAD81BF4(&v419, &v402);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            KeyPath = sub_1AAD6931C(0, *(KeyPath + 2) + 1, 1, KeyPath);
          }

          v150 = *(KeyPath + 2);
          v149 = *(KeyPath + 3);
          if (v150 >= v149 >> 1)
          {
            KeyPath = sub_1AAD6931C((v149 > 1), v150 + 1, 1, KeyPath);
          }

          v406 = *(&v415[6] + 8);
          v407 = *(&v415[7] + 8);
          v404 = *(&v415[4] + 8);
          v405 = *(&v415[5] + 8);
          v411 = *(&v415[11] + 1);
          v409 = *(&v415[9] + 8);
          v410 = *(&v415[10] + 8);
          v408 = *(&v415[8] + 8);
          v402 = *(&v415[2] + 8);
          v403 = *(&v415[3] + 8);
          *(KeyPath + 2) = v150 + 1;
          v151 = &KeyPath[152 * v150];
          v152 = v403;
          *(v151 + 2) = v402;
          *(v151 + 3) = v152;
          v153 = v404;
          v154 = v405;
          v155 = v407;
          *(v151 + 6) = v406;
          *(v151 + 7) = v155;
          *(v151 + 4) = v153;
          *(v151 + 5) = v154;
          v156 = v408;
          v157 = v409;
          v158 = v410;
          *(v151 + 22) = v411;
          *(v151 + 9) = v157;
          *(v151 + 10) = v158;
          *(v151 + 8) = v156;
        }
      }

LABEL_66:
      v159 = *&v415[12];
      v33 = v127[2];
      v160 = v127[3];

      if (v33 >= v160 >> 1)
      {
        v127 = sub_1AAD6A0A8((v160 > 1), v33 + 1, 1, v127);
      }

      sub_1AAF209D4(v415);
      v127[2] = v33 + 1;
      v161 = &v127[2 * v33];
      v161[4] = KeyPath;
      v161[5] = v159;
      if (v390 == v129)
      {

LABEL_151:
        MEMORY[0x1EEE9AC00](v126);
        v353 = v418;
        KeyPath = sub_1AADE5E58(sub_1AAF20A78, (&v355 - 4), v127);
        v248 = *(sub_1AAD81218(KeyPath) + 16);

        v33 = *(KeyPath + 2);

        if (v248 == v33)
        {
          v372 = v127;
          goto LABEL_176;
        }

        v160 = v127[2];
        if (!v160)
        {

          v372 = MEMORY[0x1E69E7CC0];
          goto LABEL_176;
        }

        *&v415[0] = MEMORY[0x1E69E7CC0];
        sub_1AAD414E0(0, v160, 0);
        v162 = *&v415[0];
        v372 = *&v415[0];
        v249 = v127 + 5;
        v33 = 152;
        while (2)
        {
          v250 = *(v249 - 1);
          v251 = *v249;
          KeyPath = *(*v249 + 16);
          v252 = *(v250 + 2);
          v253 = &KeyPath[v252];
          if (__OFADD__(v252, KeyPath))
          {
            goto LABEL_232;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native && v253 <= *(v250 + 3) >> 1)
          {
            if (*(v251 + 16))
            {
LABEL_159:
              v162 = *(v250 + 2);
              if (((*(v250 + 3) >> 1) - v162) < KeyPath)
              {
                goto LABEL_235;
              }

              swift_arrayInitWithCopy();

              if (KeyPath)
              {
                v255 = *(v250 + 2);
                v175 = __OFADD__(v255, KeyPath);
                v162 = &KeyPath[v255];
                if (v175)
                {
                  goto LABEL_237;
                }

                *(v250 + 2) = v162;
              }

              goto LABEL_168;
            }
          }

          else
          {
            if (v252 <= v253)
            {
              v256 = &KeyPath[v252];
            }

            else
            {
              v256 = v252;
            }

            v250 = sub_1AAD6931C(isUniquelyReferenced_nonNull_native, v256, 1, v250);
            if (*(v251 + 16))
            {
              goto LABEL_159;
            }
          }

          if (KeyPath)
          {
            goto LABEL_233;
          }

LABEL_168:
          *&v415[0] = v372;
          v258 = *(v372 + 2);
          v257 = *(v372 + 3);
          if (v258 >= v257 >> 1)
          {
            KeyPath = v415;
            sub_1AAD414E0((v257 > 1), v258 + 1, 1);
            v372 = *&v415[0];
          }

          v259 = v372;
          *(v372 + 2) = v258 + 1;
          v162 = &v259[16 * v258];
          *(v162 + 32) = v250;
          *(v162 + 40) = MEMORY[0x1E69E7CC0];
          v249 += 2;
          if (!--v160)
          {
            goto LABEL_174;
          }

          continue;
        }
      }

      ++v129;
      v162 = *(v380 + 16);
      v124 += 600;
      if (v129 >= v162)
      {
        goto LABEL_228;
      }
    }
  }

  MEMORY[0x1EEE9AC00](v122);
  *(&v355 - 4) = &type metadata for ChartAccessibilityContent.GroupItem;
  *(&v355 - 3) = &type metadata for ChartAccessibilityContent.LeafItem;
  v353 = &off_1F1FE8278;
  v354 = &off_1F1FE82C8;
  KeyPath = swift_getKeyPath();

  v163 = sub_1AAF7BF80(v124);

  v355 = *(v163 + 16);
  if (!v355)
  {

    v160 = v386;
LABEL_219:
    sub_1AAF20668(v160, v358, sub_1AACFDAA8);
    v33 = sub_1AAD6A1F4(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v160 = *(v33 + 16);
    v162 = *(v33 + 24);
    KeyPath = (v160 + 1);
    if (v160 >= v162 >> 1)
    {
LABEL_239:
      v33 = sub_1AAD6A1F4(v162 > 1, KeyPath, 1, v33);
    }

    sub_1AAF20734(v442, &qword_1EB427098, &type metadata for ChartAccessibilityContent.GroupItem);
    sub_1AAF20890(v386, sub_1AACFDAA8);
    *(v33 + 16) = KeyPath;
    sub_1AAF206D0(v358, v33 + ((*(v378 + 80) + 32) & ~*(v378 + 80)) + *(v378 + 72) * v160);
    goto LABEL_221;
  }

  v356 = v163 + 32;
  v369 = v163;

  v164 = 0;
  v384 = 0;
  v160 = v386;
LABEL_73:
  v162 = *(v369 + 16);
  if (v164 >= v162)
  {
    goto LABEL_238;
  }

  v357 = v164;
  v165 = (v356 + 16 * v164);
  KeyPath = v165[1];
  v33 = *(KeyPath + 2);
  v360 = *v165;

  v381 = KeyPath;
  v379 = v33;
  if (v33)
  {
    v166 = 0;
    v167 = KeyPath + 224;
    v168 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v162 = *(v381 + 2);
      if (v166 >= v162)
      {
LABEL_223:
        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
        goto LABEL_226;
      }

      *&v415[0] = MEMORY[0x1E69E7CD0];

      v170 = v384;
      KeyPath = sub_1AAF202A4(v169);
      v384 = v170;

      v33 = *(KeyPath + 2);
      v160 = *(v168 + 2);
      v171 = v160 + v33;
      if (__OFADD__(v160, v33))
      {
        goto LABEL_224;
      }

      v172 = swift_isUniquelyReferenced_nonNull_native();
      if (!v172 || v171 > *(v168 + 3) >> 1)
      {
        if (v160 <= v171)
        {
          v173 = v160 + v33;
        }

        else
        {
          v173 = v160;
        }

        v168 = sub_1AAD6931C(v172, v173, 1, v168);
      }

      v160 = v386;
      if (*(KeyPath + 2))
      {
        v162 = *(v168 + 2);
        if (((*(v168 + 3) >> 1) - v162) < v33)
        {
LABEL_227:
          __break(1u);
LABEL_228:
          __break(1u);
LABEL_229:
          __break(1u);
LABEL_230:
          __break(1u);
          goto LABEL_231;
        }

        swift_arrayInitWithCopy();

        if (v33)
        {
          v174 = *(v168 + 2);
          v175 = __OFADD__(v174, v33);
          v162 = v174 + v33;
          if (v175)
          {
            goto LABEL_229;
          }

          *(v168 + 2) = v162;
        }
      }

      else
      {

        if (v33)
        {
          goto LABEL_225;
        }
      }

      ++v166;
      v167 = (v167 + 600);
      if (v379 == v166)
      {
        goto LABEL_92;
      }
    }
  }

  v168 = MEMORY[0x1E69E7CC0];
LABEL_92:
  v176 = sub_1AAF7C3F0(v168);
  v177 = *(v176 + 16);
  if (!v177)
  {
    goto LABEL_146;
  }

  v178 = 0;
  v179 = *(v168 + 2);
  v367 = v176;
  v368 = (v176 + 32);
  v372 = v168 + 32;
  *&v390 = v179;
  v361 = v179 - 1;
  v388 = v168;
  v366 = v177;
  while (2)
  {
    v180 = v368 + 72 * v178;
    v402 = *v180;
    v181 = *(v180 + 1);
    v182 = *(v180 + 2);
    v183 = *(v180 + 3);
    v184 = *(v180 + 8);
    v376 = v178;
    v377 = v184;
    *&v406 = v184;
    v404 = v182;
    v405 = v183;
    v403 = v181;
    if (v177 == 1)
    {
      sub_1AAF20668(&v402, v415, sub_1AAF207A4);
      LODWORD(v383) = 0;
      v373 = 0xE000000000000000;
      v374 = 0;
      v382 = MEMORY[0x1E69E7CC0];
      if (!v390)
      {
        goto LABEL_122;
      }
    }

    else
    {
      v209 = *(&v402 + 1);
      v33 = v402;
      v210 = v403;
      if (((*(&v405 + 1) | ((*(&v405 + 5) | (SBYTE7(v405) << 16)) << 32)) & 0x8000000000000000) != 0)
      {
        *&v389 = *(&v405 + 1);
        sub_1AAF20668(&v402, v415, sub_1AAF207A4);
        sub_1AAF8E1F4();
        sub_1AAF8E1E4();
        sub_1AAF8E1C4();
        sub_1AAF8E1E4();
        sub_1AAF8E1C4();
        sub_1AAF8E1E4();
        sub_1AAF8E224();
        type metadata accessor for FindClass();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v212 = [objc_opt_self() bundleForClass_];
        LOWORD(v354) = 256;
        v353 = 0;
        v33 = sub_1AAF8EA44();
        v209 = v213;
        v210 = v214;
      }

      else
      {
        sub_1AAF20668(&v402, v415, sub_1AAF207A4);
        sub_1AACD7304(v33, v209, v210 & 1);
      }

      v215 = sub_1AAF8EA04();
      v373 = v216;
      v374 = v215;
      LODWORD(v383) = v217;
      v382 = v218;
      sub_1AAD04750(v33, v209, v210 & 1);

      if (!v390)
      {
LABEL_122:
        *&v385 = MEMORY[0x1E69E7CC0];
        goto LABEL_123;
      }
    }

    v185 = 0;
    *&v385 = MEMORY[0x1E69E7CC0];
    while (2)
    {
      KeyPath = &v372[152 * v185];
      v160 = v185;
      while (1)
      {
        if (v160 >= *(v168 + 2))
        {
          __break(1u);
LABEL_174:

LABEL_176:
          v260 = 0;
          v373 = 0;
          v380 = v418[37];
          v370 = v418[37] + 32;
          v371 = 0;
          v368 = (&v415[37] + 8);
          v369 = (v372 + 32);
          v160 = v386;
          while (1)
          {
            if (v260)
            {
              goto LABEL_183;
            }

            v162 = *(v380 + 16);
            if (v373 == v162)
            {
              goto LABEL_183;
            }

            if (v373 >= v162)
            {
              goto LABEL_234;
            }

            KeyPath = (v370 + 600 * v373);
            memcpy(v413, KeyPath, 0x251uLL);
            v33 = ++v373;
            v162 = *(v372 + 2);
            if (v371 == v162)
            {
LABEL_183:
              sub_1AAF20AB0(v413);
              memcpy(v415, v413, 0x268uLL);
              v266 = 1;
            }

            else
            {
              if (v371 >= v162)
              {
                goto LABEL_236;
              }

              v304 = v371 + 1;
              v390 = *(v369 + 16 * v371);
              memmove(v415, KeyPath, 0x251uLL);
              *v368 = v390;
              nullsub_1(v415, v305);
              sub_1AAECFFF8(v413, v414);

              v266 = 0;
              v371 = v304;
              v160 = v386;
            }

            v267 = v387;
            memcpy(v413, v415, 0x268uLL);
            if (sub_1AAF20A98(v413) == 1)
            {
              break;
            }

            LODWORD(v382) = v266;
            v268 = *(&v415[37] + 1);
            v269 = *&v415[38];
            memcpy(v414, v415, 0x251uLL);
            sub_1AAF20668(v160, v388, sub_1AACFDAA8);
            v270 = *(&v414[33] + 1);
            v271 = *(&v414[34] + 1);
            v272 = *(&v414[35] + 1);
            v273 = *&v414[35];
            *&v389 = *&v414[33];
            v384 = v269;
            *&v385 = *(&v414[32] + 1);
            if (*(&v414[33] + 1))
            {
              v274 = *&v414[35];
              v275 = *&v414[34];
              v276 = *&v414[32];
              sub_1AACD7304(*&v414[32], *(&v414[32] + 1), v414[33] & 1);

              v277 = v276;
              v278 = v275;
              v273 = v274;
            }

            else
            {
              v381 = *(&v414[35] + 1);
              v376 = *&v414[32];
              v377 = *&v414[34];
              v279 = *(v268 + 16);
              v374 = *&v414[35];
              v379 = v268;
              if (v279)
              {
                v375 = *(&v414[34] + 1);
                *&v390 = v418[39];
                v412 = MEMORY[0x1E69E7CC0];
                sub_1AAD414C0(0, v279, 0);
                v280 = v412;
                v281 = (v268 + 32);
                do
                {
                  v282 = v281[1];
                  v392 = *v281;
                  v393 = v282;
                  v283 = v281[2];
                  v284 = v281[3];
                  v285 = v281[5];
                  v396 = v281[4];
                  v397 = v285;
                  v394 = v283;
                  v395 = v284;
                  v286 = v281[6];
                  v287 = v281[7];
                  v288 = v281[8];
                  v401 = *(v281 + 18);
                  v399 = v287;
                  v400 = v288;
                  v398 = v286;
                  memmove(&v402, v281, 0x98uLL);
                  nullsub_1(&v402, v289);
                  v435 = v408;
                  v436 = v409;
                  v437 = v410;
                  v438 = v411;
                  v431 = v404;
                  v432 = v405;
                  v433 = v406;
                  v434 = v407;
                  v429 = v402;
                  v430 = v403;
                  sub_1AAD81BF4(&v392, v391);
                  v290 = sub_1AAF72FD4(&v429, v390);
                  v292 = v291;
                  v294 = v293;
                  v296 = v295;
                  sub_1AAD81C50(&v392);
                  v412 = v280;
                  v298 = *(v280 + 16);
                  v297 = *(v280 + 24);
                  if (v298 >= v297 >> 1)
                  {
                    sub_1AAD414C0((v297 > 1), v298 + 1, 1);
                    v280 = v412;
                  }

                  *(v280 + 16) = v298 + 1;
                  v299 = (v280 + 32 * v298);
                  v299[4] = v290;
                  v299[5] = v292;
                  v299[6] = v294;
                  v299[7] = v296;
                  v281 = (v281 + 152);
                  --v279;
                }

                while (v279);
                v273 = v374;
                v271 = v375;
              }

              else
              {
                v280 = MEMORY[0x1E69E7CC0];
              }

              v300 = *(v280 + 16);
              v278 = v377;
              if (v300)
              {
                v301 = 0;
                v302 = (v280 + 56);
                while (1)
                {
                  v303 = *v302;
                  if (*v302)
                  {
                    break;
                  }

                  ++v301;
                  v302 += 4;
                  if (v300 == v301)
                  {
                    goto LABEL_198;
                  }
                }

                v307 = *(v302 - 2);
                v306 = *(v302 - 1);
                v308 = v271;
                v309 = *(v302 - 3);

                sub_1AADA61DC(v309, v307, v306, v303);
                v310 = v309;
                v271 = v308;
                sub_1AAD04750(v310, v307, v306 & 1);

                v311 = sub_1AAF1161C(8236, 0xE200000000000000, 0, MEMORY[0x1E69E7CC0], v280, v301);
                v313 = v312;
                v315 = v314;
                v270 = v316;
                swift_bridgeObjectRelease_n();
                sub_1AADA6198(v376, v385, v389, 0);
                v277 = v311;
                *&v385 = v313;
                *&v389 = v315;
                v273 = v374;
              }

              else
              {
LABEL_198:

                sub_1AADA6198(v376, v385, v389, 0);
                v277 = 0;
                *&v389 = 0;
                *&v385 = 0xE000000000000000;
                v270 = MEMORY[0x1E69E7CC0];
              }

              v267 = v387;
              v268 = v379;
              v272 = v381;
            }

            v381 = v270;
            if (v272)
            {
              v261 = v277;
              sub_1AACD7304(v278, v271, v273 & 1);

              v262 = v273;
              v263 = v278;
            }

            else
            {
              v379 = v268;
              v317 = *(v384 + 16);
              v377 = v278;
              v375 = v271;
              if (v317)
              {
                v318 = v384;
                v374 = v273;
                v376 = v277;
                *&v390 = v418[39];
                v412 = MEMORY[0x1E69E7CC0];
                sub_1AAD414C0(0, v317, 0);
                v319 = v412;
                v320 = (v318 + 32);
                do
                {
                  v321 = v320[1];
                  v392 = *v320;
                  v393 = v321;
                  v322 = v320[2];
                  v323 = v320[3];
                  v324 = v320[5];
                  v396 = v320[4];
                  v397 = v324;
                  v394 = v322;
                  v395 = v323;
                  v325 = v320[6];
                  v326 = v320[7];
                  v327 = v320[8];
                  v401 = *(v320 + 18);
                  v399 = v326;
                  v400 = v327;
                  v398 = v325;
                  memmove(&v402, v320, 0x98uLL);
                  nullsub_1(&v402, v328);
                  v425 = v408;
                  v426 = v409;
                  v427 = v410;
                  v428 = v411;
                  v421 = v404;
                  v422 = v405;
                  v423 = v406;
                  v424 = v407;
                  v419 = v402;
                  v420 = v403;
                  sub_1AAD81BF4(&v392, v391);
                  v329 = sub_1AAF72FD4(&v419, v390);
                  v331 = v330;
                  v333 = v332;
                  v335 = v334;
                  sub_1AAD81C50(&v392);
                  v412 = v319;
                  v337 = *(v319 + 16);
                  v336 = *(v319 + 24);
                  if (v337 >= v336 >> 1)
                  {
                    sub_1AAD414C0((v336 > 1), v337 + 1, 1);
                    v319 = v412;
                  }

                  *(v319 + 16) = v337 + 1;
                  v338 = (v319 + 32 * v337);
                  v338[4] = v329;
                  v338[5] = v331;
                  v338[6] = v333;
                  v338[7] = v335;
                  v320 = (v320 + 152);
                  --v317;
                }

                while (v317);
                v277 = v376;
                v278 = v377;
                LOBYTE(v273) = v374;
              }

              else
              {
                v319 = MEMORY[0x1E69E7CC0];
              }

              v339 = *(v319 + 16);
              if (v339)
              {
                v340 = 0;
                v341 = (v319 + 56);
                while (1)
                {
                  v342 = *v341;
                  if (*v341)
                  {
                    break;
                  }

                  ++v340;
                  v341 += 4;
                  if (v339 == v340)
                  {
                    goto LABEL_215;
                  }
                }

                v343 = v273;
                v344 = *(v341 - 2);
                v273 = *(v341 - 1);
                v345 = v277;
                v346 = *(v341 - 3);

                sub_1AADA61DC(v346, v344, v273, v342);
                v347 = v273 & 1;
                LOBYTE(v273) = v343;
                v278 = v377;
                v348 = v344;
                v261 = v345;
                sub_1AAD04750(v346, v348, v347);

                v263 = sub_1AAF1161C(8236, 0xE200000000000000, 0, MEMORY[0x1E69E7CC0], v319, v340);
                v271 = v349;
                v351 = v350;

                v262 = v351;
                swift_bridgeObjectRelease_n();
              }

              else
              {
LABEL_215:
                v261 = v277;

                v263 = 0;
                v262 = 0;
                v271 = 0xE000000000000000;
              }

              sub_1AADA6198(v278, v375, v273, 0);
              v267 = v387;
            }

            v353 = 0;
            v354 = v267;
            v264 = v385;
            v265 = v263;
            v33 = v262;
            sub_1AAF8DF34();
            sub_1AAD04750(v265, v271, v262 & 1);

            sub_1AAD04750(v261, v264, v389 & 1);

            sub_1AAF209D4(v414);
            KeyPath = sub_1AACFDAA8;
            sub_1AAF20890(v388, sub_1AACFDAA8);
            v160 = v386;
            sub_1AAF20890(v386, sub_1AACFDAA8);
            sub_1AAF206D0(v383, v160);
            v260 = v382;
          }

          goto LABEL_219;
        }

        v186 = *(KeyPath + 1);
        v413[0] = *KeyPath;
        v413[1] = v186;
        v187 = *(KeyPath + 2);
        v188 = *(KeyPath + 3);
        v189 = *(KeyPath + 5);
        v413[4] = *(KeyPath + 4);
        v413[5] = v189;
        v413[2] = v187;
        v413[3] = v188;
        v190 = *(KeyPath + 6);
        v191 = *(KeyPath + 7);
        v192 = *(KeyPath + 8);
        *&v413[9] = *(KeyPath + 18);
        v413[7] = v191;
        v413[8] = v192;
        v413[6] = v190;
        memmove(v415, KeyPath, 0x98uLL);
        v193 = sub_1AAF14CF0(v415);
        if (v193 > 1)
        {
          if (v193 == 2)
          {
LABEL_103:
            v203 = sub_1AACBC764(v415);
            if (*(v203 + 56) < 0)
            {
              goto LABEL_241;
            }

            if (*(v203 + 56))
            {
              goto LABEL_242;
            }

            v33 = *(v203 + 40);
            goto LABEL_109;
          }

          sub_1AACBC764(v415);
          v414[6] = v413[6];
          v414[7] = v413[7];
          v414[8] = v413[8];
          *&v414[9] = *&v413[9];
          v414[2] = v413[2];
          v414[3] = v413[3];
          v414[4] = v413[4];
          v414[5] = v413[5];
          v414[0] = v413[0];
          v414[1] = v413[1];
          v204 = sub_1AACBC764(v414);
          v205 = *(v204 + 8);
          v204 += 8;
          v201 = v205;
          v195 = *(v204 + 56);
          *&v389 = *(v204 + 48);
          v196 = *(v204 + 64);
          v198 = *(v204 + 8);
          v197 = *(v204 + 16);
          v199 = *(v204 + 24);
          v200 = *(v204 + 32);
          v33 = *(v204 + 40);
          sub_1AAE63EFC(v204, &v429);
        }

        else
        {
          if (!v193)
          {
            goto LABEL_103;
          }

          sub_1AACBC764(v415);
          v435 = v413[6];
          v436 = v413[7];
          v437 = v413[8];
          v438 = *&v413[9];
          v431 = v413[2];
          v432 = v413[3];
          v433 = v413[4];
          v434 = v413[5];
          v429 = v413[0];
          v430 = v413[1];
          v194 = sub_1AACBC764(&v429);
          v195 = *(v194 + 64);
          *&v389 = *(v194 + 56);
          v196 = *(v194 + 72);
          v198 = *(v194 + 16);
          v197 = *(v194 + 24);
          v199 = *(v194 + 32);
          v200 = *(v194 + 40);
          v33 = *(v194 + 48);
          v201 = *(v194 + 8);
          *&v414[9] = *&v413[9];
          v414[4] = v413[4];
          v414[5] = v413[5];
          v414[7] = v413[7];
          v414[8] = v413[8];
          v414[6] = v413[6];
          v414[2] = v413[2];
          v414[3] = v413[3];
          v414[0] = v413[0];
          v414[1] = v413[1];
          v202 = sub_1AACBC764(v414);
          sub_1AAF20668(v202, &v419, sub_1AAF14CFC);
        }

        *&v414[0] = v201;
        *(&v414[0] + 1) = v198;
        *&v414[1] = v197;
        BYTE8(v414[1]) = v199;
        *&v414[2] = v200;
        *(&v414[2] + 1) = v33;
        *&v414[3] = v389;
        *(&v414[3] + 1) = v195;
        LOBYTE(v414[4]) = v196;
        if ((v196 & 0x80) != 0)
        {
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
          goto LABEL_243;
        }

        sub_1AAE63F58(v414);
        v168 = v388;
        if (v196)
        {
          __break(1u);
          goto LABEL_223;
        }

LABEL_109:
        if ((~v33 & 0x7FF0000000000000) != 0)
        {
          break;
        }

        ++v160;
        KeyPath += 152;
        if (v390 == v160)
        {
          goto LABEL_123;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        *&v385 = sub_1AAD67B50(0, *(v385 + 16) + 1, 1, v385);
      }

      v207 = *(v385 + 16);
      v206 = *(v385 + 24);
      if (v207 >= v206 >> 1)
      {
        *&v385 = sub_1AAD67B50((v206 > 1), v207 + 1, 1, v385);
      }

      v185 = v160 + 1;
      v208 = v385;
      *(v385 + 16) = v207 + 1;
      *(v208 + 8 * v207 + 32) = v33;
      if (v361 != v160)
      {
        continue;
      }

      break;
    }

LABEL_123:
    if (*(v369 + 16) <= 1uLL)
    {
      sub_1AAD04750(v374, v373, v383 & 1);

      sub_1AAD81A30(&v402);

      v160 = v386;
      goto LABEL_143;
    }

    v160 = v386;
    if (*(v377 + 2))
    {
      v219 = *(v377 + 9);
      v413[6] = *(v377 + 8);
      v413[7] = v219;
      v413[8] = *(v377 + 10);
      *&v413[9] = *(v377 + 22);
      v220 = *(v377 + 5);
      v413[2] = *(v377 + 4);
      v413[3] = v220;
      v221 = *(v377 + 7);
      v413[4] = *(v377 + 6);
      v413[5] = v221;
      v222 = *(v377 + 3);
      v413[0] = *(v377 + 2);
      v413[1] = v222;
      sub_1AAD81BF4(v413, v415);

      v415[6] = v413[6];
      v415[7] = v413[7];
      v415[8] = v413[8];
      v415[2] = v413[2];
      v415[3] = v413[3];
      v415[4] = v413[4];
      v415[5] = v413[5];
      v33 = v413;
      v415[0] = v413[0];
      *&v415[9] = *&v413[9];
      v415[1] = v413[1];
      sub_1AAF14CF0(v415);
      v223 = sub_1AACBC764(v415);
      sub_1AAD81C50(v413);
      KeyPath = v375;
      if (*(v375 + 16) && (v224 = sub_1AACE1760(*v223), KeyPath = v375, (v225 & 1) != 0) && (sub_1AACE0A98(*(v375 + 56) + 48 * v224, &v429), KeyPath = v375, v226 = BYTE8(v431), BYTE8(v431) != 255))
      {
        v414[0] = v429;
        v414[1] = v430;
        *&v414[2] = v431;
      }

      else
      {
        v226 = 3;
        memset(v414, 0, 40);
      }

      BYTE8(v414[2]) = v226;
      v162 = v379;
      if (!v379)
      {
        goto LABEL_230;
      }

      v162 = *(v381 + 2);
      if (!v162)
      {
LABEL_231:
        __break(1u);
LABEL_232:
        __break(1u);
LABEL_233:
        __break(1u);
LABEL_234:
        __break(1u);
LABEL_235:
        __break(1u);
LABEL_236:
        __break(1u);
LABEL_237:
        __break(1u);
LABEL_238:
        __break(1u);
        goto LABEL_239;
      }

      sub_1AAF73C2C(v385, v381[536]);
      v364 = v227;
      v365 = v228;
      v377 = v229;
      LODWORD(v389) = v230;

      sub_1AAF20668(v160, v371, sub_1AACFDAA8);
      v231 = sub_1AAF739C0(v360, KeyPath);
      if (v234)
      {
        v235 = v231;
      }

      else
      {
        v235 = 0;
      }

      if (v234)
      {
        v236 = v232;
      }

      else
      {
        v236 = 0xE000000000000000;
      }

      if (v234)
      {
        v237 = v233;
      }

      else
      {
        v237 = 0;
      }

      v238 = v373;
      v239 = v374;
      v362 = sub_1AAF8EA04();
      v363 = v240;
      v242 = v241;
      *&v385 = v243;
      sub_1AAD04750(v235, v236, v237 & 1);

      v353 = 0;
      v354 = v387;
      v244 = v363;
      v33 = v364;
      v245 = v377;
      v246 = v371;
      sub_1AAF8DF34();
      sub_1AAD04750(v239, v238, v383 & 1);

      sub_1AAD81A30(&v402);
      v247 = v244;
      v160 = v386;
      sub_1AAD04750(v362, v247, v242 & 1);

      sub_1AAD04750(v33, v245, v389 & 1);

      v168 = v388;
      sub_1AAF20890(v246, sub_1AACFDAA8);
      sub_1AAD57C94(v414);
      sub_1AAF20890(v160, sub_1AACFDAA8);
      sub_1AAF206D0(v370, v160);
LABEL_143:
      v178 = (v376 + 1);
      v177 = v366;
      KeyPath = v367;
      if (v376 + 1 != v366)
      {
        v162 = *(v367 + 16);
        if (v178 >= v162)
        {
LABEL_226:
          __break(1u);
          goto LABEL_227;
        }

        continue;
      }

LABEL_146:

      KeyPath = (v357 + 1);

      v164 = KeyPath;
      if (KeyPath == v355)
      {
        swift_bridgeObjectRelease_n();
        goto LABEL_219;
      }

      goto LABEL_73;
    }

    break;
  }

LABEL_243:

  __break(1u);
  return result;
}

uint64_t sub_1AAF1A164(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 72);
  v86 = *(a1 + 56);
  v87 = v3;
  v4 = *(a1 + 104);
  v85[0] = *(a1 + 88);
  v85[1] = v4;
  v84 = *(a1 + 40);
  v5 = v86;
  v6 = v3;
  v63 = *(&v85[0] + 1);
  v7 = v4;
  v64 = *&v85[0];
  v8 = MEMORY[0x1E6981148];
  sub_1AAF20224(&v86, v90, &qword_1ED9B2B78, MEMORY[0x1E6981148]);
  sub_1AAF20224(&v86, v90, &qword_1ED9B2B78, v8);
  sub_1AAF20224(v85, v90, &qword_1ED9B2B78, v8);
  sub_1AAF20224(&v84, v90, &qword_1ED9B2A98, MEMORY[0x1E69E6158]);
  sub_1AADA6198(v5, *(&v5 + 1), v6, *(&v6 + 1));
  sub_1AADA6198(v64, v63, v7, *(&v7 + 1));

  if (*(&v87 + 1))
  {
    return v86;
  }

  v10 = *(a1 + 400);
  v11 = *(a1 + 368);
  v80 = *(a1 + 384);
  v81 = v10;
  v12 = *(a1 + 400);
  v82 = *(a1 + 416);
  v13 = *(a1 + 336);
  v14 = *(a1 + 304);
  v76 = *(a1 + 320);
  v77 = v13;
  v15 = *(a1 + 336);
  v16 = *(a1 + 368);
  v78 = *(a1 + 352);
  v79 = v16;
  v17 = *(a1 + 304);
  v75[0] = *(a1 + 288);
  v75[1] = v17;
  v88[6] = v80;
  v88[7] = v12;
  v88[8] = *(a1 + 416);
  v88[2] = v76;
  v88[3] = v15;
  v88[4] = v78;
  v88[5] = v11;
  v83 = *(a1 + 432);
  v89 = *(a1 + 432);
  v88[0] = v75[0];
  v88[1] = v14;
  if (sub_1AAED0054(v88) != 1)
  {
    v18 = *(a2 + 304);

    sub_1AAF20224(v75, v90, qword_1ED9B2098, &type metadata for AccessibilityDataField);
    v19 = sub_1AAF72FD4(v75, v18);
    v21 = v20;
    v23 = v22;
    v25 = v24;

    if (v25)
    {
      v26 = sub_1AAD69E2C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1AAD69E2C((v27 > 1), v28 + 1, 1, v26);
      }

      sub_1AAF20734(v75, qword_1ED9B2098, &type metadata for AccessibilityDataField);
      *(v26 + 2) = v28 + 1;
      v29 = &v26[32 * v28];
      *(v29 + 4) = v19;
      *(v29 + 5) = v21;
      v29[48] = v23 & 1;
      *(v29 + 7) = v25;
      goto LABEL_10;
    }

    sub_1AAF20734(v75, qword_1ED9B2098, &type metadata for AccessibilityDataField);
  }

  v26 = MEMORY[0x1E69E7CC0];
LABEL_10:
  v30 = *(a1 + 552);
  v31 = *(a1 + 520);
  v71 = *(a1 + 536);
  v72 = v30;
  v32 = *(a1 + 552);
  v73 = *(a1 + 568);
  v33 = *(a1 + 488);
  v34 = *(a1 + 456);
  v67 = *(a1 + 472);
  v68 = v33;
  v35 = *(a1 + 488);
  v36 = *(a1 + 520);
  v69 = *(a1 + 504);
  v70 = v36;
  v37 = *(a1 + 456);
  v66[0] = *(a1 + 440);
  v66[1] = v37;
  v90[6] = v71;
  v90[7] = v32;
  v90[8] = *(a1 + 568);
  v90[2] = v67;
  v90[3] = v35;
  v90[4] = v69;
  v90[5] = v31;
  v74 = *(a1 + 584);
  v91 = *(a1 + 584);
  v90[0] = v66[0];
  v90[1] = v34;
  if (sub_1AAED0054(v90) != 1)
  {
    v38 = *(a2 + 304);

    sub_1AAF20224(v66, v65, qword_1ED9B2098, &type metadata for AccessibilityDataField);
    v39 = sub_1AAF72FD4(v66, v38);
    v41 = v40;
    v43 = v42;
    v45 = v44;

    if (v45)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1AAD69E2C(0, *(v26 + 2) + 1, 1, v26);
      }

      v47 = *(v26 + 2);
      v46 = *(v26 + 3);
      if (v47 >= v46 >> 1)
      {
        v26 = sub_1AAD69E2C((v46 > 1), v47 + 1, 1, v26);
      }

      sub_1AAF20734(v66, qword_1ED9B2098, &type metadata for AccessibilityDataField);
      *(v26 + 2) = v47 + 1;
      v48 = &v26[32 * v47];
      *(v48 + 4) = v39;
      *(v48 + 5) = v41;
      v48[48] = v43 & 1;
      *(v48 + 7) = v45;
    }

    else
    {
      sub_1AAF20734(v66, qword_1ED9B2098, &type metadata for AccessibilityDataField);
    }
  }

  v49 = *(a1 + 120);
  if (*(v49 + 16))
  {
    v50 = *(a2 + 304);

    v51 = sub_1AAF739C0(v49, v50);
    v53 = v52;
    v55 = v54;
    v57 = v56;

    if (v57)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1AAD69E2C(0, *(v26 + 2) + 1, 1, v26);
      }

      v59 = *(v26 + 2);
      v58 = *(v26 + 3);
      if (v59 >= v58 >> 1)
      {
        v26 = sub_1AAD69E2C((v58 > 1), v59 + 1, 1, v26);
      }

      *(v26 + 2) = v59 + 1;
      v60 = &v26[32 * v59];
      *(v60 + 4) = v51;
      *(v60 + 5) = v53;
      v60[48] = v55 & 1;
      *(v60 + 7) = v57;
    }
  }

  v61 = sub_1AAF11448(32, 0xE100000000000000, 0, MEMORY[0x1E69E7CC0], v26);

  return v61;
}

uint64_t sub_1AAF1A674(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 528);
  v75[0] = *(a1 + 512);
  v75[1] = v2;
  if (*(&v2 + 1))
  {
    v3 = *&v75[0];
    goto LABEL_26;
  }

  v6 = *(a1 + 248);
  v68[2] = *(a1 + 232);
  v68[3] = v6;
  v7 = *(a1 + 216);
  v68[0] = *(a1 + 200);
  v68[1] = v7;
  v8 = *(a1 + 312);
  v9 = *(a1 + 280);
  v71 = *(a1 + 296);
  v72 = v8;
  v10 = *(a1 + 312);
  v73 = *(a1 + 328);
  v11 = *(a1 + 280);
  v69 = *(a1 + 264);
  v70 = v11;
  v76[6] = v71;
  v76[7] = v10;
  v76[8] = *(a1 + 328);
  v12 = *(a1 + 248);
  v76[2] = *(a1 + 232);
  v76[3] = v12;
  v74 = *(a1 + 344);
  v77 = *(a1 + 344);
  v76[4] = v69;
  v76[5] = v9;
  v13 = *(a1 + 216);
  v76[0] = *(a1 + 200);
  v76[1] = v13;
  if (sub_1AAED0054(v76) != 1)
  {
    v14 = *(a2 + 312);

    sub_1AAF20224(v68, v78, qword_1ED9B2098, &type metadata for AccessibilityDataField);
    v15 = sub_1AAF72FD4(v68, v14);
    v17 = v16;
    v19 = v18;
    v21 = v20;

    if (v21)
    {
      v22 = sub_1AAD69E2C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v24 = *(v22 + 2);
      v23 = *(v22 + 3);
      if (v24 >= v23 >> 1)
      {
        v22 = sub_1AAD69E2C((v23 > 1), v24 + 1, 1, v22);
      }

      sub_1AAF20734(v68, qword_1ED9B2098, &type metadata for AccessibilityDataField);
      *(v22 + 2) = v24 + 1;
      v25 = &v22[32 * v24];
      *(v25 + 4) = v15;
      *(v25 + 5) = v17;
      v25[48] = v19 & 1;
      *(v25 + 7) = v21;
      goto LABEL_10;
    }

    sub_1AAF20734(v68, qword_1ED9B2098, &type metadata for AccessibilityDataField);
  }

  v22 = MEMORY[0x1E69E7CC0];
LABEL_10:
  v26 = *(a1 + 464);
  v27 = *(a1 + 432);
  v64 = *(a1 + 448);
  v65 = v26;
  v28 = *(a1 + 464);
  v66 = *(a1 + 480);
  v29 = *(a1 + 400);
  v30 = *(a1 + 368);
  v60 = *(a1 + 384);
  v61 = v29;
  v31 = *(a1 + 400);
  v32 = *(a1 + 432);
  v62 = *(a1 + 416);
  v63 = v32;
  v33 = *(a1 + 368);
  v59[0] = *(a1 + 352);
  v59[1] = v33;
  v78[6] = v64;
  v78[7] = v28;
  v78[8] = *(a1 + 480);
  v78[2] = v60;
  v78[3] = v31;
  v78[4] = v62;
  v78[5] = v27;
  v67 = *(a1 + 496);
  v79 = *(a1 + 496);
  v78[0] = v59[0];
  v78[1] = v30;
  if (sub_1AAED0054(v78) != 1)
  {
    v34 = *(a2 + 312);

    sub_1AAF20224(v59, v58, qword_1ED9B2098, &type metadata for AccessibilityDataField);
    v35 = sub_1AAF72FD4(v59, v34);
    v37 = v36;
    v39 = v38;
    v41 = v40;

    if (v41)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1AAD69E2C(0, *(v22 + 2) + 1, 1, v22);
      }

      v43 = *(v22 + 2);
      v42 = *(v22 + 3);
      if (v43 >= v42 >> 1)
      {
        v22 = sub_1AAD69E2C((v42 > 1), v43 + 1, 1, v22);
      }

      sub_1AAF20734(v59, qword_1ED9B2098, &type metadata for AccessibilityDataField);
      *(v22 + 2) = v43 + 1;
      v44 = &v22[32 * v43];
      *(v44 + 4) = v35;
      *(v44 + 5) = v37;
      v44[48] = v39 & 1;
      *(v44 + 7) = v41;
    }

    else
    {
      sub_1AAF20734(v59, qword_1ED9B2098, &type metadata for AccessibilityDataField);
    }
  }

  v45 = *(a1 + 32);
  if (*(v45 + 16))
  {
    v46 = *(a2 + 312);

    v47 = sub_1AAF739C0(v45, v46);
    v49 = v48;
    v51 = v50;
    v53 = v52;

    if (v53)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1AAD69E2C(0, *(v22 + 2) + 1, 1, v22);
      }

      v55 = *(v22 + 2);
      v54 = *(v22 + 3);
      if (v55 >= v54 >> 1)
      {
        v22 = sub_1AAD69E2C((v54 > 1), v55 + 1, 1, v22);
      }

      *(v22 + 2) = v55 + 1;
      v56 = &v22[32 * v55];
      *(v56 + 4) = v47;
      *(v56 + 5) = v49;
      v56[48] = v51 & 1;
      *(v56 + 7) = v53;
    }
  }

  v3 = sub_1AAF11448(32, 0xE100000000000000, 0, MEMORY[0x1E69E7CC0], v22);

LABEL_26:
  sub_1AAF20224(v75, v58, &qword_1ED9B2B78, MEMORY[0x1E6981148]);
  return v3;
}

uint64_t sub_1AAF1AAD0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AAF8E204();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v98 = a1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v96 = MEMORY[0x1E69E7CC0];
    v5 = 312;
    v6 = *(a1 + 16);
    do
    {
      *&v122[0] = MEMORY[0x1E69E7CD0];

      v9 = sub_1AAF202A4(v8);

      v10 = *(v9 + 16);
      result = v96;
      v11 = *(v96 + 16);
      v12 = v11 + v10;
      if (__OFADD__(v11, v10))
      {
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v13 = v96;
      if (!result || v12 > *(v96 + 24) >> 1)
      {
        if (v11 <= v12)
        {
          v14 = v11 + v10;
        }

        else
        {
          v14 = v11;
        }

        result = sub_1AAD6931C(result, v14, 1, v96);
        v13 = result;
      }

      v96 = v13;
      if (*(v9 + 16))
      {
        if ((*(v13 + 24) >> 1) - *(v13 + 16) < v10)
        {
          goto LABEL_63;
        }

        swift_arrayInitWithCopy();

        if (v10)
        {
          v15 = *(v96 + 16);
          v16 = __OFADD__(v15, v10);
          v17 = v15 + v10;
          if (v16)
          {
            goto LABEL_66;
          }

          *(v96 + 16) = v17;
        }
      }

      else
      {

        if (v10)
        {
          goto LABEL_60;
        }
      }

      v5 += 608;
      --v6;
    }

    while (v6);
    v18 = MEMORY[0x1E69E7CC0];
    v19 = MEMORY[0x1E69E7CC0];
LABEL_18:
    v20 = 608 * v6 + 472;
    v21 = v6;
    while (v21 < v4)
    {
      v22 = v98 + v20;
      v23 = *(v98 + v20 + 96);
      v24 = *(v98 + v20 + 128);
      v106 = *(v98 + v20 + 112);
      v107 = v24;
      v108 = *(v98 + v20 + 144);
      v25 = *(v98 + v20 + 48);
      v101 = *(v98 + v20 + 32);
      v102 = v25;
      v26 = *(v98 + v20 + 80);
      v103 = *(v98 + v20 + 64);
      v104 = v26;
      v105 = v23;
      v27 = *(v98 + v20 + 16);
      v99 = *(v98 + v20);
      v100 = v27;
      v6 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_62;
      }

      v28 = *(v22 + 112);
      v122[6] = *(v22 + 96);
      v122[7] = v28;
      v122[8] = *(v22 + 128);
      v29 = *(v22 + 48);
      v122[2] = *(v22 + 32);
      v122[3] = v29;
      v30 = *(v22 + 80);
      v122[4] = *(v22 + 64);
      v122[5] = v30;
      v31 = *(v22 + 16);
      v122[0] = *v22;
      *&v122[9] = *(v22 + 144);
      v122[1] = v31;
      result = sub_1AAED0054(v122);
      if (result != 1)
      {
        v129 = v105;
        v130 = v106;
        v131 = v107;
        v125 = v101;
        v126 = v102;
        v127 = v103;
        v128 = v104;
        v123 = v99;
        v132 = v108;
        v124 = v100;
        sub_1AAD81BF4(&v123, &v112);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1AAD6931C(0, *(v19 + 16) + 1, 1, v19);
          v19 = result;
        }

        v33 = *(v19 + 16);
        v32 = *(v19 + 24);
        if (v33 >= v32 >> 1)
        {
          result = sub_1AAD6931C((v32 > 1), v33 + 1, 1, v19);
          v19 = result;
        }

        v116 = v103;
        v117 = v104;
        v114 = v101;
        v115 = v102;
        v121 = v108;
        v120 = v107;
        v119 = v106;
        v118 = v105;
        v112 = v99;
        v113 = v100;
        *(v19 + 16) = v33 + 1;
        v34 = v19 + 152 * v33;
        v35 = v113;
        *(v34 + 32) = v112;
        *(v34 + 48) = v35;
        v36 = v114;
        v37 = v115;
        v38 = v117;
        *(v34 + 96) = v116;
        *(v34 + 112) = v38;
        *(v34 + 64) = v36;
        *(v34 + 80) = v37;
        v39 = v118;
        v40 = v119;
        v41 = v120;
        *(v34 + 176) = v121;
        *(v34 + 144) = v40;
        *(v34 + 160) = v41;
        *(v34 + 128) = v39;
        if (v6 != v4)
        {
          goto LABEL_18;
        }

LABEL_29:
        v42 = sub_1AAD81110(v19);

        v43 = *(v42 + 16);

        v44 = 0;
        if (v43 <= 1)
        {
          v45 = 1;
        }

        else
        {
          v45 = v43;
        }

        v94 = v45;
        v46 = 472;
        while (1)
        {
          v47 = v98 + v46;
          v48 = *(v98 + v46 + 112);
          v122[6] = *(v98 + v46 + 96);
          v122[7] = v48;
          v122[8] = *(v98 + v46 + 128);
          v49 = *(v98 + v46 + 48);
          v122[2] = *(v98 + v46 + 32);
          v122[3] = v49;
          v50 = *(v98 + v46 + 80);
          v122[4] = *(v98 + v46 + 64);
          v122[5] = v50;
          v51 = *(v98 + v46 + 16);
          v122[0] = *(v98 + v46);
          *&v122[9] = *(v98 + v46 + 144);
          v122[1] = v51;
          result = sub_1AAED0054(v122);
          if (result != 1)
          {
            break;
          }

          v52 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
            goto LABEL_65;
          }

          ++v44;
          v46 += 608;
          if (v52 == v4)
          {
            sub_1AAE2D7EC(&v112);
            goto LABEL_40;
          }
        }

        v55 = *(v47 + 80);
        v129 = *(v47 + 96);
        v56 = *(v47 + 96);
        v130 = *(v47 + 112);
        v57 = *(v47 + 112);
        v131 = *(v47 + 128);
        v58 = *(v47 + 16);
        v125 = *(v47 + 32);
        v59 = *(v47 + 32);
        v126 = *(v47 + 48);
        v60 = *(v47 + 48);
        v127 = *(v47 + 64);
        v61 = *(v47 + 64);
        v128 = *(v47 + 80);
        v123 = *v47;
        v62 = *v47;
        v124 = *(v47 + 16);
        v104 = v55;
        v105 = v56;
        v63 = *(v47 + 128);
        v106 = v57;
        v107 = v63;
        v101 = v59;
        v102 = v60;
        v103 = v61;
        v132 = *(v47 + 144);
        v108 = *(v47 + 144);
        v99 = v62;
        v100 = v58;
        result = sub_1AAED0054(&v99);
        if (result == 1)
        {
          goto LABEL_67;
        }

        v110[6] = v129;
        v110[7] = v130;
        v110[8] = v131;
        v111 = v132;
        v110[2] = v125;
        v110[3] = v126;
        v110[4] = v127;
        v110[5] = v128;
        v110[0] = v123;
        v110[1] = v124;
        sub_1AAD81BF4(v110, v109);
        v119 = v130;
        v120 = v131;
        v121 = v132;
        v114 = v125;
        v115 = v126;
        v116 = v127;
        v117 = v128;
        v118 = v129;
        v112 = v123;
        v113 = v124;
LABEL_40:
        v129 = v118;
        v130 = v119;
        v131 = v120;
        v125 = v114;
        v126 = v115;
        v127 = v116;
        v128 = v117;
        v123 = v112;
        v132 = v121;
        v124 = v113;
        *&v122[0] = v18;
        sub_1AAD41520(0, v4, 0);
        v64 = 152;
        v65 = *&v122[0];
        do
        {
          v66 = *(v98 + v64);
          *&v122[0] = v65;
          v68 = *(v65 + 16);
          v67 = *(v65 + 24);

          if (v68 >= v67 >> 1)
          {
            sub_1AAD41520((v67 > 1), v68 + 1, 1);
            v65 = *&v122[0];
          }

          *(v65 + 16) = v68 + 1;
          *(v65 + 8 * v68 + 32) = v66;
          v64 += 608;
          --v4;
        }

        while (v4);
        v69 = sub_1AAD81080(v65);

        v93 = *(v69 + 16);

        v70 = sub_1AAF7C3F0(v96);
        memcpy(v122, (v98 + 32), sizeof(v122));
        sub_1AAF14AE0(v122, &v99);

        v71 = *(v70 + 16);
        if (!v71)
        {
          v92 = MEMORY[0x1E69E7CC0];
LABEL_58:

          v90 = sub_1AAF11448(8251, 0xE200000000000000, 0, MEMORY[0x1E69E7CC0], v92);
          sub_1AAF20734(&v112, qword_1ED9B2098, &type metadata for AccessibilityDataField);

          sub_1AAF14B3C(v122);
          return v90;
        }

        v72 = 0;
        v97 = *(v70 + 16);
        v91 = v71 - 1;
        v92 = MEMORY[0x1E69E7CC0];
LABEL_46:
        v73 = 72 * v72 + 32;
        v74 = v72;
        while (v74 < *(v70 + 16))
        {
          v99 = *(v70 + v73);
          v75 = *(v70 + v73 + 16);
          v76 = *(v70 + v73 + 32);
          v77 = *(v70 + v73 + 48);
          *&v103 = *(v70 + v73 + 64);
          v78 = v103;
          v101 = v76;
          v102 = v77;
          v100 = v75;
          v109[0] = *(v70 + v73);
          v109[1] = *(v70 + v73 + 16);
          v109[2] = *(v70 + v73 + 32);
          v109[3] = *(v70 + v73 + 48);
          v72 = v74 + 1;
          sub_1AAF20668(&v99, v110, sub_1AAF207A4);
          v79 = sub_1AAF1CCBC(v109, v78, v70, a2, v93, v122, v94, &v123, v98);
          v81 = v80;
          v83 = v82;
          v85 = v84;
          result = sub_1AAF20890(&v99, sub_1AAF207A4);
          if (v85)
          {
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_1AAD69E2C(0, *(v92 + 16) + 1, 1, v92);
              v92 = result;
            }

            v87 = *(v92 + 16);
            v86 = *(v92 + 24);
            v88 = v87 + 1;
            if (v87 >= v86 >> 1)
            {
              result = sub_1AAD69E2C((v86 > 1), v87 + 1, 1, v92);
              v88 = v87 + 1;
              v92 = result;
            }

            *(v92 + 16) = v88;
            v89 = v92 + 32 * v87;
            *(v89 + 32) = v79;
            *(v89 + 40) = v81;
            *(v89 + 48) = v83 & 1;
            *(v89 + 56) = v85;
            if (v91 != v74)
            {
              goto LABEL_46;
            }

            goto LABEL_58;
          }

          v73 += 72;
          ++v74;
          if (v97 == v72)
          {
            goto LABEL_58;
          }
        }

        goto LABEL_64;
      }

      ++v21;
      v20 += 608;
      if (v6 == v4)
      {
        goto LABEL_29;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
  }

  else
  {
    sub_1AAF8E1F4();
    sub_1AAF8E1E4();
    *&v122[0] = 0;
    sub_1AAF8E1B4();
    sub_1AAF8E1E4();
    sub_1AAF8E224();
    type metadata accessor for FindClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v54 = [objc_opt_self() bundleForClass_];
    return sub_1AAF8EA44();
  }

  return result;
}

uint64_t sub_1AAF1B49C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AAF8E204();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v98 = a1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v96 = MEMORY[0x1E69E7CC0];
    v5 = 224;
    v6 = *(a1 + 16);
    do
    {
      *&v122[0] = MEMORY[0x1E69E7CD0];

      v9 = sub_1AAF202A4(v8);

      v10 = *(v9 + 16);
      result = v96;
      v11 = *(v96 + 16);
      v12 = v11 + v10;
      if (__OFADD__(v11, v10))
      {
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v13 = v96;
      if (!result || v12 > *(v96 + 24) >> 1)
      {
        if (v11 <= v12)
        {
          v14 = v11 + v10;
        }

        else
        {
          v14 = v11;
        }

        result = sub_1AAD6931C(result, v14, 1, v96);
        v13 = result;
      }

      v96 = v13;
      if (*(v9 + 16))
      {
        if ((*(v13 + 24) >> 1) - *(v13 + 16) < v10)
        {
          goto LABEL_63;
        }

        swift_arrayInitWithCopy();

        if (v10)
        {
          v15 = *(v96 + 16);
          v16 = __OFADD__(v15, v10);
          v17 = v15 + v10;
          if (v16)
          {
            goto LABEL_66;
          }

          *(v96 + 16) = v17;
        }
      }

      else
      {

        if (v10)
        {
          goto LABEL_60;
        }
      }

      v5 += 600;
      --v6;
    }

    while (v6);
    v18 = MEMORY[0x1E69E7CC0];
    v19 = MEMORY[0x1E69E7CC0];
LABEL_18:
    v20 = 600 * v6 + 384;
    v21 = v6;
    while (v21 < v4)
    {
      v22 = v98 + v20;
      v23 = *(v98 + v20 + 96);
      v24 = *(v98 + v20 + 128);
      v106 = *(v98 + v20 + 112);
      v107 = v24;
      v108 = *(v98 + v20 + 144);
      v25 = *(v98 + v20 + 48);
      v101 = *(v98 + v20 + 32);
      v102 = v25;
      v26 = *(v98 + v20 + 80);
      v103 = *(v98 + v20 + 64);
      v104 = v26;
      v105 = v23;
      v27 = *(v98 + v20 + 16);
      v99 = *(v98 + v20);
      v100 = v27;
      v6 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_62;
      }

      v28 = *(v22 + 112);
      v122[6] = *(v22 + 96);
      v122[7] = v28;
      v122[8] = *(v22 + 128);
      v29 = *(v22 + 48);
      v122[2] = *(v22 + 32);
      v122[3] = v29;
      v30 = *(v22 + 80);
      v122[4] = *(v22 + 64);
      v122[5] = v30;
      v31 = *(v22 + 16);
      v122[0] = *v22;
      *&v122[9] = *(v22 + 144);
      v122[1] = v31;
      result = sub_1AAED0054(v122);
      if (result != 1)
      {
        v129 = v105;
        v130 = v106;
        v131 = v107;
        v125 = v101;
        v126 = v102;
        v127 = v103;
        v128 = v104;
        v123 = v99;
        v132 = v108;
        v124 = v100;
        sub_1AAD81BF4(&v123, &v112);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1AAD6931C(0, *(v19 + 16) + 1, 1, v19);
          v19 = result;
        }

        v33 = *(v19 + 16);
        v32 = *(v19 + 24);
        if (v33 >= v32 >> 1)
        {
          result = sub_1AAD6931C((v32 > 1), v33 + 1, 1, v19);
          v19 = result;
        }

        v116 = v103;
        v117 = v104;
        v114 = v101;
        v115 = v102;
        v121 = v108;
        v120 = v107;
        v119 = v106;
        v118 = v105;
        v112 = v99;
        v113 = v100;
        *(v19 + 16) = v33 + 1;
        v34 = v19 + 152 * v33;
        v35 = v113;
        *(v34 + 32) = v112;
        *(v34 + 48) = v35;
        v36 = v114;
        v37 = v115;
        v38 = v117;
        *(v34 + 96) = v116;
        *(v34 + 112) = v38;
        *(v34 + 64) = v36;
        *(v34 + 80) = v37;
        v39 = v118;
        v40 = v119;
        v41 = v120;
        *(v34 + 176) = v121;
        *(v34 + 144) = v40;
        *(v34 + 160) = v41;
        *(v34 + 128) = v39;
        if (v6 != v4)
        {
          goto LABEL_18;
        }

LABEL_29:
        v42 = sub_1AAD81110(v19);

        v43 = *(v42 + 16);

        v44 = 0;
        if (v43 <= 1)
        {
          v45 = 1;
        }

        else
        {
          v45 = v43;
        }

        v94 = v45;
        v46 = 384;
        while (1)
        {
          v47 = v98 + v46;
          v48 = *(v98 + v46 + 112);
          v122[6] = *(v98 + v46 + 96);
          v122[7] = v48;
          v122[8] = *(v98 + v46 + 128);
          v49 = *(v98 + v46 + 48);
          v122[2] = *(v98 + v46 + 32);
          v122[3] = v49;
          v50 = *(v98 + v46 + 80);
          v122[4] = *(v98 + v46 + 64);
          v122[5] = v50;
          v51 = *(v98 + v46 + 16);
          v122[0] = *(v98 + v46);
          *&v122[9] = *(v98 + v46 + 144);
          v122[1] = v51;
          result = sub_1AAED0054(v122);
          if (result != 1)
          {
            break;
          }

          v52 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
            goto LABEL_65;
          }

          ++v44;
          v46 += 600;
          if (v52 == v4)
          {
            sub_1AAE2D7EC(&v112);
            goto LABEL_40;
          }
        }

        v55 = *(v47 + 80);
        v129 = *(v47 + 96);
        v56 = *(v47 + 96);
        v130 = *(v47 + 112);
        v57 = *(v47 + 112);
        v131 = *(v47 + 128);
        v58 = *(v47 + 16);
        v125 = *(v47 + 32);
        v59 = *(v47 + 32);
        v126 = *(v47 + 48);
        v60 = *(v47 + 48);
        v127 = *(v47 + 64);
        v61 = *(v47 + 64);
        v128 = *(v47 + 80);
        v123 = *v47;
        v62 = *v47;
        v124 = *(v47 + 16);
        v104 = v55;
        v105 = v56;
        v63 = *(v47 + 128);
        v106 = v57;
        v107 = v63;
        v101 = v59;
        v102 = v60;
        v103 = v61;
        v132 = *(v47 + 144);
        v108 = *(v47 + 144);
        v99 = v62;
        v100 = v58;
        result = sub_1AAED0054(&v99);
        if (result == 1)
        {
          goto LABEL_67;
        }

        v110[6] = v129;
        v110[7] = v130;
        v110[8] = v131;
        v111 = v132;
        v110[2] = v125;
        v110[3] = v126;
        v110[4] = v127;
        v110[5] = v128;
        v110[0] = v123;
        v110[1] = v124;
        sub_1AAD81BF4(v110, v109);
        v119 = v130;
        v120 = v131;
        v121 = v132;
        v114 = v125;
        v115 = v126;
        v116 = v127;
        v117 = v128;
        v118 = v129;
        v112 = v123;
        v113 = v124;
LABEL_40:
        v129 = v118;
        v130 = v119;
        v131 = v120;
        v125 = v114;
        v126 = v115;
        v127 = v116;
        v128 = v117;
        v123 = v112;
        v132 = v121;
        v124 = v113;
        *&v122[0] = v18;
        sub_1AAD41520(0, v4, 0);
        v64 = *&v122[0];
        v65 = 64;
        do
        {
          v66 = *(v98 + v65);
          *&v122[0] = v64;
          v68 = *(v64 + 16);
          v67 = *(v64 + 24);

          if (v68 >= v67 >> 1)
          {
            sub_1AAD41520((v67 > 1), v68 + 1, 1);
            v64 = *&v122[0];
          }

          *(v64 + 16) = v68 + 1;
          *(v64 + 8 * v68 + 32) = v66;
          v65 += 600;
          --v4;
        }

        while (v4);
        v69 = sub_1AAD81080(v64);

        v93 = *(v69 + 16);

        v70 = sub_1AAF7C3F0(v96);
        memcpy(v122, (v98 + 32), 0x251uLL);
        sub_1AAECFFF8(v122, &v99);

        v71 = *(v70 + 16);
        if (!v71)
        {
          v92 = MEMORY[0x1E69E7CC0];
LABEL_58:

          v90 = sub_1AAF11448(8251, 0xE200000000000000, 0, MEMORY[0x1E69E7CC0], v92);
          sub_1AAF20734(&v112, qword_1ED9B2098, &type metadata for AccessibilityDataField);

          sub_1AAF209D4(v122);
          return v90;
        }

        v72 = 0;
        v97 = *(v70 + 16);
        v91 = v71 - 1;
        v92 = MEMORY[0x1E69E7CC0];
LABEL_46:
        v73 = 72 * v72 + 32;
        v74 = v72;
        while (v74 < *(v70 + 16))
        {
          v99 = *(v70 + v73);
          v75 = *(v70 + v73 + 16);
          v76 = *(v70 + v73 + 32);
          v77 = *(v70 + v73 + 48);
          *&v103 = *(v70 + v73 + 64);
          v78 = v103;
          v101 = v76;
          v102 = v77;
          v100 = v75;
          v109[0] = *(v70 + v73);
          v109[1] = *(v70 + v73 + 16);
          v109[2] = *(v70 + v73 + 32);
          v109[3] = *(v70 + v73 + 48);
          v72 = v74 + 1;
          sub_1AAF20668(&v99, v110, sub_1AAF207A4);
          v79 = sub_1AAF1E194(v109, v78, v70, a2, v93, v122, v94, &v123, v98);
          v81 = v80;
          v83 = v82;
          v85 = v84;
          result = sub_1AAF20890(&v99, sub_1AAF207A4);
          if (v85)
          {
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_1AAD69E2C(0, *(v92 + 16) + 1, 1, v92);
              v92 = result;
            }

            v87 = *(v92 + 16);
            v86 = *(v92 + 24);
            v88 = v87 + 1;
            if (v87 >= v86 >> 1)
            {
              result = sub_1AAD69E2C((v86 > 1), v87 + 1, 1, v92);
              v88 = v87 + 1;
              v92 = result;
            }

            *(v92 + 16) = v88;
            v89 = v92 + 32 * v87;
            *(v89 + 32) = v79;
            *(v89 + 40) = v81;
            *(v89 + 48) = v83 & 1;
            *(v89 + 56) = v85;
            if (v91 != v74)
            {
              goto LABEL_46;
            }

            goto LABEL_58;
          }

          v73 += 72;
          ++v74;
          if (v97 == v72)
          {
            goto LABEL_58;
          }
        }

        goto LABEL_64;
      }

      ++v21;
      v20 += 600;
      if (v6 == v4)
      {
        goto LABEL_29;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
  }

  else
  {
    sub_1AAF8E1F4();
    sub_1AAF8E1E4();
    *&v122[0] = 0;
    sub_1AAF8E1B4();
    sub_1AAF8E1E4();
    sub_1AAF8E224();
    type metadata accessor for FindClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v54 = [objc_opt_self() bundleForClass_];
    return sub_1AAF8EA44();
  }

  return result;
}

void sub_1AAF1BE68(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v47 = a5;
  v11 = type metadata accessor for SgGroup(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1 >> 60;
  if ((a1 >> 60) > 1)
  {
    if (v14 != 2)
    {
      if (v14 != 11)
      {
        if (v14 == 12)
        {
          memcpy(v51, ((a1 & 0xFFFFFFFFFFFFFFFLL) + 16), 0x260uLL);
          swift_beginAccess();
          v15 = *(a2 + 16);
          swift_beginAccess();
          swift_beginAccess();
          swift_beginAccess();
          sub_1AAF14AE0(v51, v50);
          sub_1AAF1C3A4(v51, v15, a4, (a3 + 16), (a6 + 16));
          swift_endAccess();
          swift_endAccess();
          swift_endAccess();
          sub_1AAF14B3C(v51);
        }

        return;
      }

      memcpy(v50, ((a1 & 0xFFFFFFFFFFFFFFFLL) + 16), 0x120uLL);
      swift_beginAccess();
      v26 = *(a2 + 16);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_40;
      }

      *(a2 + 16) = v28;
      v29 = v50[34];
      v30 = *(v50[34] + 16);
      sub_1AAF14B90(v50, v51);

      if (!v30)
      {
LABEL_25:

        swift_beginAccess();
        if (*(a2 + 16) == 1)
        {
          memcpy(v49, v50, sizeof(v49));
          nullsub_1(v49, v34);
          swift_beginAccess();
          v35 = *(a3 + 16);
          memcpy(v51, v49, 0x120uLL);
          v51[36] = v35;
          LOBYTE(v51[37]) = 0;
          v51[38] = a4;
          sub_1AAF14B90(v50, &v48);

          v37 = sub_1AAF153B8(v36);
          swift_beginAccess();
          sub_1AADC939C(v37);
          swift_endAccess();
          sub_1AAF14BEC(v50);
          swift_beginAccess();
          *(a3 + 16) = MEMORY[0x1E69E7CC0];
        }

        else
        {
          sub_1AAF14BEC(v50);
        }

        swift_beginAccess();
        v44 = *(a2 + 16);
        v27 = __OFSUB__(v44, 1);
        v45 = v44 - 1;
        if (!v27)
        {
          *(a2 + 16) = v45;
          return;
        }

LABEL_41:
        __break(1u);
        return;
      }

      v31 = 0;
      while (v31 < *(v29 + 16))
      {
        v32 = v31 + 1;
        v33 = *(v29 + 32 + 8 * v31);

        sub_1AAF1BE68(v33, a2, a3, a4, v47, a6);

        v31 = v32;
        if (v30 == v32)
        {
          goto LABEL_25;
        }
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    sub_1AAD117A0((a1 & 0xFFFFFFFFFFFFFFFLL) + 16, v51);
    v21 = v51[1];
    v22 = *(v51[1] + 16);
    if (!v22)
    {
LABEL_19:
      sub_1AAF14C40(v51);
      return;
    }

    v23 = 0;
    while (v23 < *(v21 + 16))
    {
      v24 = v23 + 1;
      v25 = *(v21 + 32 + 8 * v23);

      sub_1AAF1BE68(v25, a2, a3, a4, v47, a6);

      v23 = v24;
      if (v22 == v24)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

  if (!v14)
  {
    v38 = swift_projectBox();
    sub_1AAF20668(v38, v13, type metadata accessor for SgGroup);
    v46 = v13;
    v39 = *(v13 + 1);
    v40 = *(v39 + 16);
    if (!v40)
    {
LABEL_31:
      sub_1AAF20890(v46, type metadata accessor for SgGroup);
      return;
    }

    v41 = 0;
    while (v41 < *(v39 + 16))
    {
      v42 = v41 + 1;
      v43 = *(v39 + 32 + 8 * v41);

      sub_1AAF1BE68(v43, a2, a3, a4, v47, a6);

      v41 = v42;
      if (v40 == v42)
      {
        goto LABEL_31;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v14 != 1)
  {
    return;
  }

  v16 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  v17 = *(v16 + 16);

  if (v17)
  {
    v18 = 0;
    while (v18 < *(v16 + 16))
    {
      v19 = v18 + 1;
      v20 = *(v16 + 32 + 8 * v18);

      sub_1AAF1BE68(v20, a2, a3, a4, v47, a6);

      v18 = v19;
      if (v17 == v19)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_38;
  }

LABEL_12:
}

uint64_t sub_1AAF1C3A4(void *a1, uint64_t a2, uint64_t a3, char **a4, char **a5)
{
  if (a2 < 1)
  {
    v14 = *(a1 + 25);
    v15 = *(a1 + 23);
    v96 = *(a1 + 24);
    v97 = v14;
    v16 = *(a1 + 25);
    v98 = *(a1 + 26);
    v17 = *(a1 + 21);
    v18 = *(a1 + 19);
    v92 = *(a1 + 20);
    v93 = v17;
    v19 = *(a1 + 21);
    v20 = *(a1 + 23);
    v94 = *(a1 + 22);
    v95 = v20;
    v21 = *(a1 + 19);
    v90 = *(a1 + 18);
    v91 = v21;
    v106 = v96;
    v107 = v16;
    v108 = *(a1 + 26);
    v102 = v92;
    v103 = v19;
    v104 = v94;
    v105 = v15;
    v99 = a1[54];
    v109 = a1[54];
    v100 = v90;
    v101 = v18;
    if (sub_1AAED0054(&v100) == 1)
    {
      sub_1AAF208F0(__src);
      sub_1AAF20A28(0, &qword_1ED9B1DE8, &type metadata for SgAccessibilityIndividual, MEMORY[0x1E69E6F90]);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1AAF92AB0;
      memcpy((v22 + 32), a1, 0x260uLL);
      memcpy(__dst, __src, 0x120uLL);
      __dst[36] = v22;
      LOBYTE(v115) = 0;
      v116 = a3;
      sub_1AAF14AE0(a1, v110);

      v24 = sub_1AAF153B8(v23);
      return sub_1AADC939C(v24);
    }

    v112[6] = v106;
    v112[7] = v107;
    v112[8] = v108;
    v113 = v109;
    v112[2] = v102;
    v112[3] = v103;
    v112[4] = v104;
    v112[5] = v105;
    v112[0] = v100;
    v112[1] = v101;
    v25 = *a5;
    if (*(*a5 + 2))
    {
      v88[6] = v96;
      v88[7] = v97;
      v88[8] = v98;
      v89 = v99;
      v88[2] = v92;
      v88[3] = v93;
      v88[4] = v94;
      v88[5] = v95;
      v88[0] = v90;
      v88[1] = v91;
      sub_1AAD81BF4(v88, v110);
      sub_1AADB0D50(v112);
      if (v26)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v69 = *a5;
        v28 = v69;
        v30 = sub_1AADB0D50(v112);
        v31 = *(v69 + 2);
        v32 = (v29 & 1) == 0;
        v33 = v31 + v32;
        if (__OFADD__(v31, v32))
        {
          __break(1u);
LABEL_36:
          v28 = sub_1AAD6A24C(0, *(v28 + 2) + 1, 1, v28);
LABEL_23:
          v51 = *(v28 + 2);
          v50 = *(v28 + 3);
          if (v51 >= v50 >> 1)
          {
            v28 = sub_1AAD6A24C((v50 > 1), v51 + 1, 1, v28);
          }

          *(v28 + 2) = v51 + 1;
          memcpy(&v28[608 * v51 + 32], a1, 0x260uLL);
          memcpy(v66, v68, 0x128uLL);
          *(&v66[18] + 1) = v28;
          memcpy(__src, v66, sizeof(__src));
          if (sub_1AAF2094C(__src) == 1)
          {
            if (v5)
            {
              v52 = v69;
              v53 = *(v69 + 6) + 152 * v30;
              sub_1AAF14AE0(a1, v110);
              sub_1AAD81C50(v53);
              sub_1AAD9340C(v30, v52);
            }

            else
            {
              sub_1AAF14AE0(a1, v110);
            }
          }

          else
          {
            if ((v5 & 1) == 0)
            {
              v63[0] = v66[0];
              v63[1] = v66[1];
              v63[2] = v66[2];
              v63[3] = v66[3];
              v63[4] = v66[4];
              v63[5] = v66[5];
              v63[6] = v66[6];
              v63[7] = v66[7];
              v63[8] = v66[8];
              v63[9] = v66[9];
              v63[10] = v66[10];
              v63[11] = v66[11];
              v63[12] = v66[12];
              v63[13] = v66[13];
              v63[14] = v66[14];
              v63[15] = v66[15];
              v63[16] = v66[16];
              v63[17] = v66[17];
              v64 = *&v66[18];
              v65 = v28;
              sub_1AADD4584(v30, v112, v63, v69);
              sub_1AAF14AE0(a1, v110);
              sub_1AAF20668(v66, v110, sub_1AAF20964);
              goto LABEL_33;
            }

            memmove((*(v69 + 7) + 304 * v30), v66, 0x130uLL);
            sub_1AAF14AE0(a1, v110);
            sub_1AAF20668(v66, v110, sub_1AAF20964);
          }

          sub_1AAF20734(&v90, qword_1ED9B2098, &type metadata for AccessibilityDataField);
LABEL_33:
          memcpy(v110, v68, sizeof(v110));
          v111 = v28;
          result = sub_1AAF20890(v110, sub_1AAF20964);
          v48 = v69;
          goto LABEL_34;
        }

        v5 = v29;
        if (*(v69 + 3) < v33)
        {
          sub_1AAD8E1B4(v33, isUniquelyReferenced_nonNull_native);
          v34 = sub_1AADB0D50(v112);
          if ((v5 & 1) != (v35 & 1))
          {
            goto LABEL_40;
          }

          v30 = v34;
          if ((v5 & 1) == 0)
          {
            goto LABEL_15;
          }

LABEL_20:
          memmove(v110, (*(v69 + 7) + 304 * v30), 0x130uLL);
          nullsub_1(v110, v49);
          goto LABEL_21;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          if (v29)
          {
            goto LABEL_20;
          }
        }

        else
        {
          sub_1AAD97E1C();
          if (v5)
          {
            goto LABEL_20;
          }
        }

LABEL_15:
        sub_1AAF2091C(v110);
LABEL_21:
        memcpy(v68, v110, sizeof(v68));
        v28 = v111;
        memcpy(__dst, v68, sizeof(__dst));
        v115 = v111;
        if (sub_1AAF2094C(__dst) != 1)
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_23;
          }

          goto LABEL_36;
        }

        __break(1u);
LABEL_40:
        result = sub_1AAF905B4();
        __break(1u);
        return result;
      }
    }

    else
    {
      *&v110[96] = v96;
      *&v110[112] = v97;
      *&v110[128] = v98;
      *&v110[144] = v99;
      *&v110[32] = v92;
      *&v110[48] = v93;
      *&v110[64] = v94;
      *&v110[80] = v95;
      *v110 = v90;
      *&v110[16] = v91;
      sub_1AAD81BF4(v110, __dst);
    }

    v36 = *a1;
    v37 = a1[1];
    v38 = a1[2];
    v39 = a1[3];
    v40 = a1[4];
    v42 = a1[5];
    v41 = a1[6];
    __src[6] = v106;
    __src[7] = v107;
    __src[8] = v108;
    *&__src[9] = v109;
    __src[2] = v102;
    __src[3] = v103;
    __src[4] = v104;
    __src[5] = v105;
    __src[0] = v100;
    __src[1] = v101;
    nullsub_1(__src, v26);
    __dst[0] = v36;
    __dst[1] = v37;
    __dst[2] = v38;
    __dst[3] = v39;
    __dst[4] = v40;
    __dst[5] = v42;
    __dst[6] = v41;
    *&__dst[27] = __src[6];
    *&__dst[29] = __src[7];
    *&__dst[31] = __src[8];
    *&__dst[19] = __src[2];
    *&__dst[21] = __src[3];
    *&__dst[23] = __src[4];
    *&__dst[25] = __src[5];
    *&__dst[15] = __src[0];
    memset(&__dst[7], 0, 64);
    *&__dst[17] = __src[1];
    v43 = MEMORY[0x1E69E7CC0];
    __dst[33] = *&__src[9];
    __dst[34] = MEMORY[0x1E69E7CC0];
    __dst[35] = 0;
    v44 = *(v25 + 2);
    sub_1AAF20A28(0, &qword_1ED9B1DE8, &type metadata for SgAccessibilityIndividual, MEMORY[0x1E69E6F90]);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1AAF92AB0;
    memcpy((v45 + 32), a1, 0x260uLL);
    v46 = __dst[33];
    v61 = *&__dst[15];
    v62 = *&__dst[31];
    v56 = *&__dst[21];
    v57 = *&__dst[17];
    v59 = *&__dst[23];
    v60 = *&__dst[19];
    v58 = *&__dst[27];
    v54 = *&__dst[29];
    v55 = *&__dst[25];
    sub_1AAF14AE0(a1, v110);
    sub_1AAF20224(&v90, v110, qword_1ED9B2098, &type metadata for AccessibilityDataField);

    sub_1AAF14B90(__dst, v110);
    v47 = swift_isUniquelyReferenced_nonNull_native();
    *v110 = *a5;
    v70[0] = v44;
    v70[1] = v36;
    v70[2] = v37;
    v70[3] = v38;
    v70[4] = v39;
    v70[5] = v40;
    v70[6] = v42;
    v70[7] = v41;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v76 = v57;
    v75 = v61;
    v78 = v56;
    v77 = v60;
    v80 = v55;
    v79 = v59;
    v82 = v54;
    v81 = v58;
    v83 = v62;
    v84 = v46;
    v85 = v43;
    v86 = 0;
    v87 = v45;
    sub_1AADD37D8(v70, v112, v47);
    sub_1AAF20734(&v90, qword_1ED9B2098, &type metadata for AccessibilityDataField);
    result = sub_1AAF14BEC(__dst);
    v48 = *v110;
LABEL_34:
    *a5 = v48;
    return result;
  }

  v8 = *a4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1AAD6A24C(0, *(v8 + 2) + 1, 1, v8);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1AAD6A24C((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  memcpy(&v8[608 * v10 + 32], a1, 0x260uLL);
  *a4 = v8;
  return sub_1AAF14AE0(a1, v110);
}

uint64_t sub_1AAF1CCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v239 = a8;
  v249 = a7;
  v246 = a5;
  v247 = a6;
  v243 = sub_1AAF8E134();
  v241 = *(v243 - 8);
  MEMORY[0x1EEE9AC00](v243);
  v240 = v235 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AAF8E204();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v238 = v235 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  v251 = 0;
  v252 = 0;
  v16 = 0;
  if (*(a3 + 16) >= 2uLL)
  {
    result = sub_1AAF70A10();
    v251 = v17;
    v252 = v18;
    v16 = v19 & 1;
  }

  v244 = a4;
  v253 = v16;
  v248 = result;
  v20 = *(a2 + 16);
  if (!v20)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v21 = 0;
  v245 = a9;
  v22 = a2 + 32;
  v254 = MEMORY[0x1E69E7CC0];
  v255 = v20;
  v250 = a2 + 32;
  while (2)
  {
    v23 = v22 + 152 * v21;
    v24 = v21;
    while (1)
    {
      if (v24 >= v20)
      {
        __break(1u);
LABEL_98:
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
        goto LABEL_104;
      }

      v25 = *(v23 + 112);
      v304 = *(v23 + 96);
      v305 = v25;
      v306 = *(v23 + 128);
      v307 = *(v23 + 144);
      v26 = *(v23 + 48);
      v300 = *(v23 + 32);
      v301 = v26;
      v27 = *(v23 + 80);
      v302 = *(v23 + 64);
      v303 = v27;
      v28 = *(v23 + 16);
      v298 = *v23;
      v299 = v28;
      v21 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_98;
      }

      v29 = *(v23 + 112);
      v314 = *(v23 + 96);
      v315 = v29;
      v316 = *(v23 + 128);
      v317 = *(v23 + 144);
      v30 = *(v23 + 48);
      v310 = *(v23 + 32);
      v311 = v30;
      v31 = *(v23 + 80);
      v312 = *(v23 + 64);
      v313 = v31;
      v32 = *(v23 + 16);
      v308 = *v23;
      v309 = v32;
      v33 = sub_1AAF14CF0(&v308);
      if (v33 > 1)
      {
        break;
      }

      if (v33)
      {
        sub_1AACBC764(&v308);
        v284 = v304;
        v285 = v305;
        v286 = v306;
        v287 = v307;
        v280 = v300;
        v281 = v301;
        v282 = v302;
        v283 = v303;
        v278 = v298;
        v279 = v299;
        v34 = sub_1AACBC764(&v278);
        v35 = *(v34 + 16);
        v256 = *(v34 + 24);
        v257 = v35;
        v36 = *(v34 + 32);
        v37 = *(v34 + 48);
        v38 = *(v34 + 56);
        v39 = *(v34 + 64);
        v40 = *(v34 + 72);
        v290 = v300;
        v291 = v301;
        v294 = v304;
        v295 = v305;
        v296 = v306;
        v297 = v307;
        v292 = v302;
        v293 = v303;
        v288 = v298;
        v289 = v299;
        v41 = sub_1AACBC764(&v288);
        result = sub_1AAF20668(v41, &v268, sub_1AAF14CFC);
        goto LABEL_18;
      }

LABEL_13:
      result = sub_1AACBC764(&v308);
      if (*(result + 56) < 0)
      {
        goto LABEL_103;
      }

      if (*(result + 56))
      {
        goto LABEL_102;
      }

      v37 = *(result + 40);
      if ((~v37 & 0x7FF0000000000000) != 0)
      {
        goto LABEL_21;
      }

LABEL_6:
      ++v24;
      v23 += 152;
      if (v21 == v20)
      {
        v22 = v250;
        goto LABEL_28;
      }
    }

    if (v33 == 2)
    {
      goto LABEL_13;
    }

    sub_1AACBC764(&v308);
    v294 = v304;
    v295 = v305;
    v296 = v306;
    v297 = v307;
    v290 = v300;
    v291 = v301;
    v292 = v302;
    v293 = v303;
    v288 = v298;
    v289 = v299;
    v42 = sub_1AACBC764(&v288);
    v43 = *(v42 + 16);
    v36 = *(v42 + 32);
    v37 = *(v42 + 48);
    v38 = *(v42 + 56);
    v39 = *(v42 + 64);
    v40 = *(v42 + 72);
    v256 = *(v42 + 24);
    v257 = v43;
    sub_1AACD7304(v43, v256, v36);

    result = sub_1AADB308C(v37, v38, v39, v40);
LABEL_18:
    if ((v40 & 0x80) != 0)
    {
      goto LABEL_101;
    }

    sub_1AAD04750(v257, v256, v36);

    result = sub_1AADB3124(v37, v38, v39, v40);
    if (v40)
    {
      goto LABEL_99;
    }

    v20 = v255;
    if ((~v37 & 0x7FF0000000000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_21:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1AAD67B50(0, *(v254 + 2) + 1, 1, v254);
      v254 = result;
    }

    v22 = v250;
    v45 = *(v254 + 2);
    v44 = *(v254 + 3);
    if (v45 >= v44 >> 1)
    {
      result = sub_1AAD67B50((v44 > 1), v45 + 1, 1, v254);
      v254 = result;
    }

    v46 = v254;
    *(v254 + 2) = v45 + 1;
    *&v46[v45 + 4] = v37;
    if (v21 != v20)
    {
      continue;
    }

    break;
  }

LABEL_28:
  v47 = *(v22 + 112);
  v266[6] = *(v22 + 96);
  v266[7] = v47;
  v266[8] = *(v22 + 128);
  v267 = *(v22 + 144);
  v48 = *(v22 + 48);
  v266[2] = *(v22 + 32);
  v266[3] = v48;
  v49 = *(v22 + 80);
  v266[4] = *(v22 + 64);
  v266[5] = v49;
  v50 = *(v22 + 16);
  v266[0] = *v22;
  v266[1] = v50;
  sub_1AAF14CF0(v266);
  v51 = sub_1AACBC764(v266);
  v52 = v244;
  if (*(v244 + 16) && (v53 = sub_1AACE1760(*v51), (v54 & 1) != 0) && (sub_1AACE0A98(*(v52 + 56) + 48 * v53, &v308), v55 = BYTE8(v310), BYTE8(v310) != 255))
  {
    v262 = v308;
    v263 = v309;
    v264 = v310;
  }

  else
  {
    v264 = 0;
    v262 = 0u;
    v263 = 0u;
    v55 = 3;
  }

  v56 = v253;
  v265 = v55;
  v57 = *(v247 + 120);
  v58 = v245;
  if (v246 <= 1)
  {
    v74 = sub_1AAF739C0(v57, v52);
    v256 = v76;
    v257 = v74;
    v244 = v77;
    v78 = v248;
  }

  else
  {
    if (*(v57 + 16) == 1)
    {
      v59 = *(v57 + 144);
      v294 = *(v57 + 128);
      v295 = v59;
      v296 = *(v57 + 160);
      v297 = *(v57 + 176);
      v60 = *(v57 + 80);
      v290 = *(v57 + 64);
      v291 = v60;
      v61 = *(v57 + 112);
      v292 = *(v57 + 96);
      v293 = v61;
      v62 = *(v57 + 48);
      v288 = *(v57 + 32);
      v289 = v62;
      sub_1AAD81BF4(&v288, &v308);
      v63 = sub_1AAF70BEC();
      v65 = v64;
      v67 = v66;
      sub_1AAD81C50(&v288);
      v68 = v240;
      sub_1AAF8E124();
      sub_1AAF8E974();
      sub_1AAD04750(v63, v65, v67 & 1);

      (*(v241 + 8))(v68, v243);
      v69 = sub_1AAF88134();
      v256 = v70;
      v257 = v69;
      v72 = v71;
      v244 = v73;
      v56 = v253;
    }

    else
    {
      sub_1AAF8E1F4();
      sub_1AAF8E1E4();
      *&v308 = v246;
      sub_1AAF8E1B4();
      sub_1AAF8E1E4();
      sub_1AAF8E224();
      type metadata accessor for FindClass();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v80 = [objc_opt_self() bundleForClass_];
      v81 = sub_1AAF8EA44();
      v256 = v82;
      v257 = v81;
      v72 = v83;
      v244 = v84;
    }

    v78 = v248;
    v75 = v72 & 1;
    v58 = v245;
  }

  v242 = v75;
  if (v249 < 2)
  {
    v95 = 0;
    v97 = 0;
    v100 = 0;
    v255 = 0;
  }

  else
  {
    v85 = *(v239 + 112);
    v274 = *(v239 + 96);
    v275 = v85;
    v276 = *(v239 + 128);
    v277 = *(v239 + 144);
    v86 = *(v239 + 48);
    v270 = *(v239 + 32);
    v271 = v86;
    v87 = *(v239 + 80);
    v272 = *(v239 + 64);
    v273 = v87;
    v88 = *(v239 + 16);
    v268 = *v239;
    v269 = v88;
    result = sub_1AAED0054(&v268);
    if (result == 1)
    {
      goto LABEL_106;
    }

    v284 = v274;
    v285 = v275;
    v286 = v276;
    v287 = v277;
    v280 = v270;
    v281 = v271;
    v282 = v272;
    v283 = v273;
    v278 = v268;
    v279 = v269;
    v89 = sub_1AAF70BEC();
    v91 = v90;
    v93 = v92;
    v94 = v240;
    sub_1AAF8E124();
    sub_1AAF8E974();
    sub_1AAD04750(v89, v91, v93 & 1);

    (*(v241 + 8))(v94, v243);
    v95 = sub_1AAF88134();
    v97 = v96;
    LOBYTE(v89) = v98;
    v255 = v99;

    v100 = v89 & 1;
    v56 = v253;
    v58 = v245;
  }

  v101 = *(v247 + 400);
  v304 = *(v247 + 384);
  v305 = v101;
  v306 = *(v247 + 416);
  v307 = *(v247 + 432);
  v102 = *(v247 + 336);
  v300 = *(v247 + 320);
  v301 = v102;
  v103 = *(v247 + 368);
  v302 = *(v247 + 352);
  v303 = v103;
  v104 = *(v247 + 304);
  v298 = *(v247 + 288);
  v299 = v104;
  result = sub_1AAED0054(&v298);
  if (result != 1)
  {
    v314 = v304;
    v315 = v305;
    v316 = v306;
    v317 = v307;
    v310 = v300;
    v311 = v301;
    v312 = v302;
    v313 = v303;
    v308 = v298;
    v309 = v299;
    v105 = sub_1AAF14CF0(&v308);
    result = sub_1AACBC764(&v308);
    v243 = v95;
    v241 = v97;
    v245 = v100;
    if (v105 <= 1)
    {
      v106 = *(v250 + 112);
      v260[6] = *(v250 + 96);
      v260[7] = v106;
      v260[8] = *(v250 + 128);
      v261 = *(v250 + 144);
      v107 = *(v250 + 48);
      v260[2] = *(v250 + 32);
      v260[3] = v107;
      v108 = *(v250 + 80);
      v260[4] = *(v250 + 64);
      v260[5] = v108;
      v109 = *(v250 + 16);
      v260[0] = *v250;
      v260[1] = v109;
      v110 = sub_1AAF14CF0(v260);
      v111 = sub_1AACBC764(v260);
      if ((v110 - 2) >= 2 && (v110 ? (v112 = 73) : (v112 = 80), *(v111 + v112) == 3))
      {
        v134 = 0;
        v135 = *(v254 + 2);
      }

      else
      {
        v134 = 1;
        v135 = v249;
      }

      v136 = *(v254 + 2);
      if (v136)
      {
        if (v136 <= 3)
        {
          v137 = 0;
          v138 = 0.0;
          goto LABEL_64;
        }

        v137 = v136 & 0x7FFFFFFFFFFFFFFCLL;
        v139 = v254 + 6;
        v138 = 0.0;
        v140 = v136 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v138 = v138 + *(v139 - 2) + *(v139 - 1) + *v139 + v139[1];
          v139 += 4;
          v140 -= 4;
        }

        while (v140);
        if (v136 != v137)
        {
LABEL_64:
          v141 = v136 - v137;
          v142 = &v254[v137 + 4];
          do
          {
            v143 = *v142++;
            v138 = v138 + v143;
            --v141;
          }

          while (v141);
        }
      }

      else
      {
        v138 = 0.0;
      }

      v258 = sub_1AAF75A98(COERCE__INT64(v138 / v135), 0, 0);
      v259 = v144;
      sub_1AADA6144();
      v250 = sub_1AAF8EA64();
      v247 = v145;
      LODWORD(v246) = v146;
      v254 = v147;
      if (v249 == 1)
      {
        v148 = v134;
      }

      else
      {
        v148 = 0;
      }

      LODWORD(v237) = v148;
      v149 = v252;
      if (v252)
      {
        v150 = v78;
        v151 = v251;
        v152 = v251;
        v153 = v253;
        v154 = v253;
        v155 = v252;
      }

      else
      {
        sub_1AAF8E214();
        v150 = sub_1AAF8EA44();
        v152 = v156;
        v154 = v157;
        v155 = v158;
        v151 = v251;
        v149 = v252;
        v153 = v253;
      }

      sub_1AADA61DC(v78, v151, v153, v149);
      sub_1AAF8E214();
      v159 = sub_1AAF8EA44();
      v161 = v160;
      v163 = v162;
      v164 = v155;
      v165 = sub_1AAF8EA14();
      sub_1AAD04750(v159, v161, v163 & 1);

      v249 = v164;
      v239 = v152;
      v240 = v150;
      LODWORD(v238) = v154;
      if (v165)
      {
        sub_1AAF714F8();
      }

      else
      {
        sub_1AAF715F8();
      }

      v166 = v244;
      sub_1AAD45E78();
      v167 = swift_allocObject();
      *(v167 + 16) = xmmword_1AAF99670;
      type metadata accessor for FindClass();
      v168 = swift_getObjCClassFromMetadata();
      v169 = [objc_opt_self() bundleForClass_];
      *(v167 + 32) = sub_1AAF8EA44();
      *(v167 + 40) = v171;
      *(v167 + 48) = v170 & 1;
      v173 = v256;
      v172 = v257;
      *(v167 + 56) = v174;
      *(v167 + 64) = v172;
      v176 = v242;
      v175 = v243;
      *(v167 + 72) = v173;
      *(v167 + 80) = v176;
      *(v167 + 88) = v166;
      *(v167 + 96) = v175;
      v177 = v241;
      v178 = v245;
      *(v167 + 104) = v241;
      *(v167 + 112) = v178;
      v179 = v255;
      *(v167 + 120) = v255;
      v180 = *(v167 + 16);
      v256 = v173;
      v257 = v172;
      v255 = v179;
      v244 = v166;
      if (v180)
      {
        v181 = 0;
        v182 = (v167 + 56);
        while (1)
        {
          v183 = *v182;
          if (*v182)
          {
            break;
          }

          ++v181;
          v182 += 4;
          if (v180 == v181)
          {
            goto LABEL_79;
          }
        }

        v186 = *(v182 - 1);
        v236 = *(v182 - 2);
        v237 = v186;
        v187 = v166;
        v188 = *(v182 - 3);
        sub_1AADA61DC(v172, v173, v176, v187);
        v189 = v179;
        v185 = v177;
        sub_1AADA61DC(v175, v177, v245, v189);

        v190 = v236;
        v191 = v237;
        sub_1AADA61DC(v188, v236, v237, v183);
        sub_1AAD04750(v188, v190, v191 & 1);

        v184 = sub_1AAF1161C(8236, 0xE200000000000000, 0, MEMORY[0x1E69E7CC0], v167, v181);

        sub_1AAD04750(v240, v239, v238 & 1);
      }

      else
      {
LABEL_79:
        sub_1AADA61DC(v172, v173, v176, v166);
        sub_1AADA61DC(v175, v177, v245, v179);
        sub_1AAD04750(v240, v239, v238 & 1);
        v184 = 0;
        v185 = v177;
      }

      sub_1AAD04750(v250, v247, v246 & 1);

      swift_setDeallocating();
      sub_1AAF20A28(0, &qword_1ED9B2B78, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_1AADA6198(v257, v256, v176, v244);
      sub_1AADA6198(v248, v251, v253, v252);
      sub_1AADA6198(v243, v185, v245, v255);
LABEL_95:
      sub_1AAD57C94(&v262);
      return v184;
    }

    if (v246 != 1)
    {
      sub_1AAF73C2C(v254, 0);
      v250 = v127;
      v129 = v128;
      v131 = v130;
      v120 = v132;

      v133 = v255;
      sub_1AADA61DC(v95, v97, v100, v255);
      v254 = v95;
      v246 = v97;
      v239 = v100;
      v240 = v133;
      v118 = v131;
      goto LABEL_84;
    }

    if (*(v58 + 16))
    {
      v113 = v254;
      sub_1AAF73C2C(v254, *(v58 + 625));
      v115 = v114;
      v249 = v116;
      v118 = v117;
      v120 = v119;
      v121 = *(v113 + 2);

      v250 = v115;
      if (v121 <= 1)
      {
        v254 = 0;
        v246 = 0;
        v239 = 0;
        v240 = 0;
      }

      else
      {
        sub_1AAF8E1F4();
        sub_1AAF8E1E4();
        *&v260[0] = v121;
        sub_1AAF8E1B4();
        sub_1AAF8E1E4();
        v254 = sub_1AAF8E224();
        v247 = v118;
        type metadata accessor for FindClass();
        v122 = swift_getObjCClassFromMetadata();
        v123 = [objc_opt_self() bundleForClass_];
        v118 = v247;
        v254 = sub_1AAF8EA44();
        v246 = v124;
        v239 = v125 & 1;
        v240 = v126;
      }

      v129 = v249;
LABEL_84:
      sub_1AAD45E78();
      v192 = swift_allocObject();
      *(v192 + 16) = xmmword_1AAF99670;
      v193 = swift_allocObject();
      v194 = 0;
      *(v193 + 16) = xmmword_1AAF9E2B0;
      *(v193 + 32) = v78;
      v195 = v251;
      v196 = v252;
      *(v193 + 40) = v251;
      *(v193 + 48) = v56;
      *(v193 + 56) = v196;
      *(v193 + 64) = v250;
      *(v193 + 72) = v129;
      *(v193 + 80) = v118 & 1;
      *(v193 + 88) = v120;
      v197 = v78;
      v237 = v193 + 32;
      v238 = v120;
      v198 = v193 + 32;
      v199 = v78;
      v200 = v196;
      v249 = v129;
      v247 = v118;
      if (v196)
      {
LABEL_87:
        v236 = v194;
        v201 = v56;
        v202 = *(v198 + 8);
        v203 = *(v198 + 16);
        sub_1AADA61DC(v199, v195, v201, v196);
        sub_1AACD7304(v250, v129, v118 & 1);

        sub_1AADA61DC(v197, v202, v203, v200);
        sub_1AAD04750(v197, v202, v203 & 1);

        v204 = sub_1AAF1161C(32, 0xE100000000000000, 0, MEMORY[0x1E69E7CC0], v193, v236);
        v206 = v205;
        LOBYTE(v202) = v207;
        v209 = v208;

        v120 = (v202 & 1);
      }

      else
      {
        v197 = v250;
        if (v120)
        {
          v194 = 1;
          v198 = v193 + 64;
          v200 = v120;
          v199 = v248;
          v129 = v249;
          v195 = v251;
          v196 = v252;
          LOBYTE(v118) = v247;
          goto LABEL_87;
        }

        sub_1AADA61DC(v248, v251, v56, 0);
        sub_1AACD7304(v197, v249, v247 & 1);

        v204 = 0;
        v206 = 0;
        v209 = 0;
      }

      swift_setDeallocating();
      sub_1AAF20A28(0, &qword_1ED9B2B78, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
      v235[1] = v210;
      swift_arrayDestroy();
      swift_deallocClassInstance();
      *(v192 + 32) = v204;
      *(v192 + 40) = v206;
      *(v192 + 48) = v120;
      *(v192 + 56) = v209;
      v212 = v256;
      v211 = v257;
      *(v192 + 64) = v257;
      *(v192 + 72) = v212;
      v213 = v242;
      v214 = v244;
      *(v192 + 80) = v242;
      *(v192 + 88) = v214;
      v215 = v246;
      *(v192 + 96) = v254;
      *(v192 + 104) = v215;
      v216 = v239;
      v217 = v240;
      *(v192 + 112) = v239;
      *(v192 + 120) = v217;
      v218 = *(v192 + 16);
      v256 = v212;
      v257 = v211;
      if (v218)
      {
        v219 = 0;
        v220 = (v192 + 56);
        while (1)
        {
          v221 = *v220;
          if (*v220)
          {
            break;
          }

          ++v219;
          v220 += 4;
          if (v218 == v219)
          {
            goto LABEL_92;
          }
        }

        v246 = v215;
        v240 = v217;
        v224 = v216;
        v225 = *(v220 - 1);
        v236 = *(v220 - 2);
        v237 = v225;
        v226 = *(v220 - 3);
        sub_1AADA61DC(v211, v212, v213, v214);
        sub_1AADA61DC(v254, v215, v224, v217);

        v227 = v226;
        v228 = v226;
        v216 = v224;
        v230 = v236;
        v229 = v237;
        sub_1AADA61DC(v227, v236, v237, v221);
        v231 = v229 & 1;
        v217 = v240;
        v232 = v228;
        v215 = v246;
        sub_1AAD04750(v232, v230, v231);

        v233 = sub_1AAF1161C(8236, 0xE200000000000000, 0, MEMORY[0x1E69E7CC0], v192, v219);
        v236 = v234;
        v237 = v233;

        v223 = v214;
        v222 = v254;
      }

      else
      {
LABEL_92:
        sub_1AADA61DC(v211, v212, v213, v214);
        v222 = v254;
        sub_1AADA61DC(v254, v215, v216, v217);
        v236 = 0;
        v237 = 0;
        v223 = v214;
      }

      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_1AADA6198(v222, v215, v216, v217);
      sub_1AADA6198(v257, v256, v213, v223);
      sub_1AAD04750(v250, v249, v247 & 1);

      sub_1AADA6198(v248, v251, v253, v252);
      sub_1AADA6198(v243, v241, v245, v255);
      v184 = v237;
      goto LABEL_95;
    }

    goto LABEL_100;
  }

LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
  return result;
}