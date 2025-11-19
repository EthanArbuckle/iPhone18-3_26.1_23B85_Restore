unint64_t sub_18211467C@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  *a2 = sub_1820E2CC0();
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  *a3 = sub_1820E2CC0();
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  *(a4 + 32) = sub_1820E2CC0();
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  *(a4 + 40) = sub_1820E2CC0();
  v16 = *(a1 + 24);
  v17 = *(a1 + 32);
  result = sub_1820E2CC0();
  *a5 = result;
  v19 = *(a1 + 24);
  v20 = *(a1 + 32);
  if (v10 == 1)
  {
    v21 = v11;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21 | v13 & (v12 == 1) | v15 & (v14 == 1) | v17 & (v16 == 1);
  if (v22)
  {
    v19 = 1;
  }

  *a6 = v19;
  *(a6 + 8) = (v22 | v20) & 1;
  return result;
}

uint64_t sub_18211477C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_182104788(*a2, *(a2 + 8));
  InPlaceSerializer.vle(_:)(v8, &v65);
  InPlaceSerializer.vle(_:)(*a3, &v63);
  InPlaceSerializer.vle(_:)(*(a2 + 32), &v61);
  InPlaceSerializer.vle(_:)(*(a2 + 40), &v59);
  v9 = *(a2 + 48);
  v10 = v9[2];
  sub_1821065FC(v10 - 1, &v57);
  if (!v10)
  {
    goto LABEL_125;
  }

  v54 = a4;
  InPlaceSerializer.vle(_:)(v9[5], &v55);
  v11 = v10 - 1;
  if (v10 == 1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    v13 = *(MEMORY[0x1E69E7CC0] + 16);
LABEL_4:
    v14 = 0;
    v15 = 1;
    v16 = 1;
LABEL_5:
    while (2)
    {
      v17 = &v12[16 * v14 + 40];
      v18 = v14;
      do
      {
        if (v13 == v18)
        {
          v19 = v15;
          goto LABEL_84;
        }

        if (v18 >= v13)
        {
          __break(1u);
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        v14 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_122;
        }

        v19 = *(v17 - 1);
        if (*v17 != 1)
        {
          v15 = *(v17 - 1);
          v16 = *v17;
          goto LABEL_5;
        }

        v17 += 16;
        ++v18;
      }

      while (v19 == 1);
      v15 = v19;
      v16 = 1;
      if (!v19)
      {
        continue;
      }

      break;
    }

    v16 = 1;
LABEL_84:

    v44 = v65;
    v45 = v66;
    if (v66 == 1 && v65 > 1)
    {
      goto LABEL_113;
    }

    if ((v64 & (v63 == 1)) == 0)
    {
      v44 = v63;
      v45 = v64;
    }

    if (v45 && v44 > 1)
    {
      goto LABEL_113;
    }

    if ((v62 & (v61 == 1)) == 0)
    {
      v44 = v61;
      v45 = v62;
    }

    if (v45 && v44 > 1)
    {
      goto LABEL_113;
    }

    if ((v60 & (v59 == 1)) == 0)
    {
      v44 = v59;
      v45 = v60;
    }

    if (v45 && v44 > 1)
    {
      goto LABEL_113;
    }

    if ((v58 & (v57 == 1)) == 0)
    {
      v44 = v57;
      v45 = v58;
    }

    if (v45 && v44 > 1 || ((v49 = v55, (v56 & (v55 == 1)) == 0) ? (v50 = v56) : (v49 = v44, v50 = v45), v50 && v49 > 1))
    {
LABEL_113:
      LOBYTE(v50) = 1;
      v51 = 2;
    }

    else
    {
      v52 = v19 == 1;
      v53 = (v16 & v52) == 0;
      if ((v16 & v52) != 0)
      {
        v51 = v49;
      }

      else
      {
        v51 = v19;
      }

      if (v53)
      {
        LOBYTE(v50) = v16;
      }
    }

    *v54 = v51;
    *(v54 + 8) = v50 & 1;
    return result;
  }

  v20 = v9 + 7;
  v12 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v21 = *(v20 - 1);
    if (v21 < 0x40)
    {
      v22 = 1;
    }

    else if (v21 < 0x4000)
    {
      v22 = 2;
    }

    else if (v21 >> 30)
    {
      if (v21 >> 62)
      {
        goto LABEL_126;
      }

      v22 = 8;
    }

    else
    {
      v22 = 4;
    }

    v23 = *a1;
    v24 = a1[1];
    v25 = a1[2];
    if (*(a1 + 32) == 1 && a1[3] > 1)
    {
      goto LABEL_30;
    }

    v26 = v24 - v23;
    if (!v23)
    {
      v26 = 0;
    }

    v27 = __OFSUB__(v26, v25);
    v28 = v26 - v25;
    if (v27)
    {
      break;
    }

    if (v28 >= v22)
    {
      if (v21 < 0x40)
      {
        if (v23)
        {
          *(v23 + v25) = v21;
        }
      }

      else if (v21 >> 14)
      {
        if (v21 >> 30)
        {
          if (v23)
          {
            *(v23 + v25) = bswap64(v21 | 0xC000000000000000);
          }
        }

        else if (v23)
        {
          *(v23 + v25) = bswap32(v21 | 0x80000000);
        }
      }

      else if (v23)
      {
        *(v23 + v25) = bswap32(v21 | 0x4000) >> 16;
      }

      v25 += v22;
      a1[2] = v25;
      v30 = a1[3];
      v29 = *(a1 + 32);
      goto LABEL_43;
    }

LABEL_30:
    a1[3] = 2;
    v29 = 1;
    *(a1 + 32) = 1;
    v30 = 2;
LABEL_43:
    v31 = *v20;
    if (*v20 <= 0x3F)
    {
      v32 = 1;
    }

    else if (v31 < 0x4000)
    {
      v32 = 2;
    }

    else if (v31 >> 30)
    {
      if (v31 >> 62)
      {
        goto LABEL_126;
      }

      v32 = 8;
    }

    else
    {
      v32 = 4;
    }

    if (v30 > 1)
    {
      v33 = v29;
    }

    else
    {
      v33 = 0;
    }

    if (v33)
    {
      goto LABEL_59;
    }

    v34 = v24 - v23;
    if (!v23)
    {
      v34 = 0;
    }

    v27 = __OFSUB__(v34, v25);
    v35 = v34 - v25;
    if (v27)
    {
      goto LABEL_124;
    }

    if (v35 < v32)
    {
LABEL_59:
      a1[3] = 2;
      v36 = 1;
      *(a1 + 32) = 1;
      v37 = 2;
    }

    else
    {
      if (v31 < 0x40)
      {
        if (v23)
        {
          *(v23 + v25) = v31;
        }
      }

      else if (v31 >> 14)
      {
        if (v31 >> 30)
        {
          if (v23)
          {
            *(v23 + v25) = bswap64(v31 | 0xC000000000000000);
          }
        }

        else if (v23)
        {
          *(v23 + v25) = bswap32(v31 | 0x80000000);
        }
      }

      else if (v23)
      {
        *(v23 + v25) = bswap32(v31 | 0x4000) >> 16;
      }

      a1[2] = v32 + v25;
      v37 = a1[3];
      v36 = *(a1 + 32);
    }

    if ((v36 & (v37 == 1)) != 0)
    {
      v37 = v30;
      v38 = v29;
    }

    else
    {
      v38 = v36;
    }

    if (v33)
    {
      v39 = 2;
    }

    else
    {
      v39 = v37;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_181F5AC70(0, *(v12 + 2) + 1, 1, v12);
    }

    v41 = *(v12 + 2);
    v40 = *(v12 + 3);
    v13 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      v12 = sub_181F5AC70((v40 > 1), v41 + 1, 1, v12);
    }

    *(v12 + 2) = v13;
    v42 = &v12[16 * v41];
    *(v42 + 4) = v39;
    v42[40] = (v33 | v38) & 1;
    v20 += 2;
    if (!--v11)
    {
      goto LABEL_4;
    }
  }

LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  result = sub_182AD3EA8();
  __break(1u);
  return result;
}

unint64_t sub_182114CCC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X8>)
{
  v6 = a2[6];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  a2[6] = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_42;
  }

  if (!*(v6 + 16))
  {
    goto LABEL_43;
  }

  while (1)
  {
    *(v6 + 40) = sub_1820E2CC0();
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    v6 = a2[6];
    v45 = *(v6 + 16);
    if (v45 < 2)
    {
      break;
    }

    v10 = swift_isUniquelyReferenced_nonNull_native();
    a2[6] = v6;
    v43 = v8;
    v44 = a3;
    v42 = v9;
    if ((v10 & 1) == 0)
    {
      goto LABEL_46;
    }

LABEL_5:
    v11 = 0;
    a2[6] = v6;
    v6 = MEMORY[0x1E69E7CC0];
    v12 = 1;
    while (1)
    {
      v13 = a2[6];
      v14 = swift_isUniquelyReferenced_nonNull_native();
      a2[6] = v13;
      if ((v14 & 1) == 0)
      {
        v13 = sub_1820835FC(v13);
        a2[6] = v13;
      }

      if (v12 >= *(v13 + 2))
      {
        break;
      }

      *&v13[v11 + 48] = sub_1820E2CC0();
      v15 = a2[6];
      if (v12 >= *(v15 + 16))
      {
        goto LABEL_41;
      }

      v16 = *(a1 + 24);
      v17 = *(a1 + 32);
      *(v15 + v11 + 56) = sub_1820E2CC0();
      v18 = *(a1 + 32);
      v19 = v16 == 1;
      v20 = v17 & v19;
      if ((v17 & v19) != 0)
      {
        v21 = 1;
      }

      else
      {
        v21 = *(a1 + 24);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_181F5A68C(0, *(v6 + 16) + 1, 1, v6);
      }

      a3 = *(v6 + 16);
      v22 = *(v6 + 24);
      v23 = a3 + 1;
      if (a3 >= v22 >> 1)
      {
        v6 = sub_181F5A68C((v22 > 1), a3 + 1, 1, v6);
      }

      ++v12;
      *(v6 + 16) = v23;
      v24 = v6 + 32 + 16 * a3;
      *v24 = v21;
      *(v24 + 8) = (v20 | v18) & 1;
      v11 += 16;
      if (v45 == v12)
      {
        v25 = a3 + 1;
        v26 = (v6 + 40);
        v8 = v43;
        a3 = v44;
        v9 = v42;
        while (1)
        {
          if (*v26 == 1)
          {
            v27 = *(v26 - 1);
            if (v27)
            {
              break;
            }
          }

          v26 += 16;
          if (!--v25)
          {
            v29 = v6 + 32 + 16 * v23;
            v30 = *(v29 - 16);
            v31 = *(v29 - 8);

            if (v30 == 1)
            {
              v6 = v31;
            }

            else
            {
              v6 = 0;
            }

            v28 = sub_1820E2CC0();
            if ((v28 & 0x8000000000000000) == 0)
            {
              goto LABEL_32;
            }

            goto LABEL_29;
          }
        }

        if (v27 != 1)
        {
          goto LABEL_30;
        }

        v6 = 1;
        v28 = sub_1820E2CC0();
        if ((v28 & 0x8000000000000000) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    v6 = sub_1820835FC(v6);
    a2[6] = v6;
    if (!*(v6 + 16))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }
  }

  while (1)
  {
    v6 = 0;
    v28 = sub_1820E2CC0();
    if ((v28 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_29:
    __break(1u);
LABEL_30:
  }

LABEL_32:
  a2[7] = v28;
  v32 = *(a1 + 24);
  v33 = *(a1 + 32);
  v34 = sub_1820E2CC0();
  if ((v34 & 0x8000000000000000) != 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  a2[8] = v34;
  v35 = *(a1 + 24);
  v36 = *(a1 + 32);
  result = sub_1820E2CC0();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    v6 = sub_1820835FC(v6);
    goto LABEL_5;
  }

  a2[9] = result;
  v38 = *(a1 + 24);
  v39 = *(a1 + 32);
  if (v8 == 1)
  {
    v40 = v9;
  }

  else
  {
    v40 = 0;
  }

  v41 = v40 | v33 & (v32 == 1) | v6 | v36 & (v35 == 1);
  if (v41)
  {
    v38 = 1;
  }

  *a3 = v38;
  *(a3 + 8) = (v41 | v39) & 1;
  return result;
}

uint64_t sub_182114FD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, unint64_t a4@<X8>)
{
  v8 = sub_182104788(*a2, *(a2 + 8));
  InPlaceSerializer.vle(_:)(v8, &v65);
  InPlaceSerializer.vle(_:)(*a3, &v63);
  InPlaceSerializer.vle(_:)(*(a2 + 32), &v61);
  InPlaceSerializer.vle(_:)(*(a2 + 40), &v59);
  v9 = *(a2 + 48);
  v10 = v9[2];
  sub_1821065FC(v10 - 1, &v57);
  if (!v10)
  {
    __break(1u);
LABEL_134:
    result = sub_182AD3EA8();
    __break(1u);
    return result;
  }

  v47 = a4;
  v48 = a2;
  result = InPlaceSerializer.vle(_:)(v9[5], &v55);
  v12 = v10 - 1;
  if (v10 == 1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    v14 = *(MEMORY[0x1E69E7CC0] + 16);
LABEL_4:
    v15 = 0;
    v16 = v13 + 40;
    v17 = 1;
    v18 = 1;
LABEL_5:
    while (2)
    {
      v19 = (v16 + 16 * v15);
      v20 = v15;
      do
      {
        if (v14 == v20)
        {
          v21 = v17;
          goto LABEL_84;
        }

        if (v20 >= v14)
        {
          __break(1u);
LABEL_117:
          __break(1u);
          goto LABEL_118;
        }

        v15 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_117;
        }

        v21 = *(v19 - 1);
        if (*v19 != 1)
        {
          v17 = *(v19 - 1);
          v18 = *v19;
          goto LABEL_5;
        }

        v19 += 16;
        ++v20;
      }

      while (v21 == 1);
      v17 = v21;
      v18 = 1;
      if (!v21)
      {
        continue;
      }

      break;
    }

    v18 = 1;
LABEL_84:

    v42 = v48[8];
    v43 = v48[9];
    sub_1821065FC(v48[7], &v53);
    sub_1821065FC(v42, &v51);
    result = sub_1821065FC(v43, &v49);
    v16 = v65;
    LODWORD(v17) = v66;
    if (v66 == 1 && v65 > 1)
    {
      goto LABEL_114;
    }

    if ((v64 & (v63 == 1)) == 0)
    {
      v16 = v63;
      LODWORD(v17) = v64;
    }

    if (v17 && v16 > 1)
    {
      goto LABEL_114;
    }

    if ((v62 & (v61 == 1)) == 0)
    {
      v16 = v61;
      LODWORD(v17) = v62;
    }

    if (v17 && v16 > 1)
    {
      goto LABEL_114;
    }

    if ((v60 & (v59 == 1)) == 0)
    {
      v16 = v59;
      LODWORD(v17) = v60;
    }

    if (v17 && v16 > 1)
    {
      goto LABEL_114;
    }

    if ((v58 & (v57 == 1)) == 0)
    {
      v16 = v57;
      LODWORD(v17) = v58;
    }

    if (v17 && v16 > 1)
    {
      goto LABEL_114;
    }

    if ((v56 & (v55 == 1)) == 0)
    {
      v16 = v55;
      LODWORD(v17) = v56;
    }

    if (v17 && v16 > 1)
    {
      goto LABEL_114;
    }

    if ((v18 & (v21 == 1)) == 0)
    {
      v16 = v21;
      LOBYTE(v17) = v18;
    }

    if ((v17 & 1) != 0 && v16 > 1)
    {
LABEL_114:
      LOBYTE(v16) = 1;
      v46 = 2;
      v29 = v47;
      goto LABEL_115;
    }

LABEL_118:
    if ((v54 & (v53 == 1)) == 0)
    {
      v16 = v53;
      LOBYTE(v17) = v54;
    }

    v29 = v47;
    if ((v17 & 1) == 0 || v16 <= 1)
    {
      v23 = v51;
      if ((v52 & (v51 == 1)) != 0)
      {
        v23 = v16;
        LOBYTE(v16) = v17;
      }

      else
      {
        LOBYTE(v16) = v52;
      }

      if ((v16 & 1) == 0 || v23 <= 1)
      {
        goto LABEL_130;
      }
    }

    LOBYTE(v16) = 1;
    v46 = 2;
    goto LABEL_115;
  }

  v22 = v9 + 7;
  v13 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v23 = *(v22 - 1);
    if (v23 < 0x40)
    {
      v24 = 1;
    }

    else if (v23 < 0x4000)
    {
      v24 = 2;
    }

    else if (v23 >> 30)
    {
      if (v23 >> 62)
      {
        goto LABEL_134;
      }

      v24 = 8;
    }

    else
    {
      v24 = 4;
    }

    v25 = *a1;
    v26 = a1[1];
    v16 = a1[2];
    if (*(a1 + 32) == 1 && a1[3] > 1)
    {
      goto LABEL_30;
    }

    v27 = v26 - v25;
    if (!v25)
    {
      v27 = 0;
    }

    v28 = __OFSUB__(v27, v16);
    v29 = v27 - v16;
    if (v28)
    {
      break;
    }

    if (v29 >= v24)
    {
      if (v23 < 0x40)
      {
        if (v25)
        {
          *(v25 + v16) = v23;
        }
      }

      else if (v23 >> 14)
      {
        if (v23 >> 30)
        {
          if (v25)
          {
            *(v25 + v16) = bswap64(v23 | 0xC000000000000000);
          }
        }

        else if (v25)
        {
          *(v25 + v16) = bswap32(v23 | 0x80000000);
        }
      }

      else if (v25)
      {
        *(v25 + v16) = bswap32(v23 | 0x4000) >> 16;
      }

      v16 += v24;
      a1[2] = v16;
      v30 = a1[3];
      v23 = *(a1 + 32);
      goto LABEL_43;
    }

LABEL_30:
    a1[3] = 2;
    v23 = 1;
    *(a1 + 32) = 1;
    v30 = 2;
LABEL_43:
    v29 = *v22;
    if (*v22 <= 0x3F)
    {
      v31 = 1;
    }

    else if (v29 < 0x4000)
    {
      v31 = 2;
    }

    else if (v29 >> 30)
    {
      if (v29 >> 62)
      {
        goto LABEL_134;
      }

      v31 = 8;
    }

    else
    {
      v31 = 4;
    }

    if (v30 > 1)
    {
      v32 = v23;
    }

    else
    {
      v32 = 0;
    }

    if (v32)
    {
      goto LABEL_59;
    }

    v33 = v26 - v25;
    if (!v25)
    {
      v33 = 0;
    }

    v28 = __OFSUB__(v33, v16);
    v34 = v33 - v16;
    if (v28)
    {
      goto LABEL_129;
    }

    if (v34 < v31)
    {
LABEL_59:
      a1[3] = 2;
      v35 = 1;
      *(a1 + 32) = 1;
      v36 = 2;
    }

    else
    {
      if (v29 < 0x40)
      {
        if (v25)
        {
          *(v25 + v16) = v29;
        }
      }

      else if (v29 >> 14)
      {
        if (v29 >> 30)
        {
          if (v25)
          {
            *(v25 + v16) = bswap64(v29 | 0xC000000000000000);
          }
        }

        else if (v25)
        {
          *(v25 + v16) = bswap32(v29 | 0x80000000);
        }
      }

      else if (v25)
      {
        *(v25 + v16) = bswap32(v29 | 0x4000) >> 16;
      }

      a1[2] = v31 + v16;
      v36 = a1[3];
      v35 = *(a1 + 32);
    }

    if ((v35 & (v36 == 1)) != 0)
    {
      v36 = v30;
      v37 = v23;
    }

    else
    {
      v37 = v35;
    }

    if (v32)
    {
      v38 = 2;
    }

    else
    {
      v38 = v36;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_181F5AC70(0, *(v13 + 16) + 1, 1, v13);
      v13 = result;
    }

    v40 = *(v13 + 16);
    v39 = *(v13 + 24);
    v14 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_181F5AC70((v39 > 1), v40 + 1, 1, v13);
      v13 = result;
    }

    *(v13 + 16) = v14;
    v41 = v13 + 16 * v40;
    *(v41 + 32) = v38;
    *(v41 + 40) = (v32 | v37) & 1;
    v22 += 2;
    if (!--v12)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  v46 = v49;
  if ((v50 & (v49 == 1)) != 0)
  {
    v46 = v23;
  }

  else
  {
    LOBYTE(v16) = v50;
  }

LABEL_115:
  *v29 = v46;
  *(v29 + 8) = v16 & 1;
  return result;
}

unint64_t sub_1821155D8(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = a2;
  v5 = sub_182104788(*a2, *(a2 + 8));
  if (v5 < 0x40)
  {
    v11 = *a3;
    if (*a3 <= 0x3F)
    {
      v19 = v4[4];
      if (v19 < 0x40)
      {
        v28 = v4[5];
        if (v28 < 0x40)
        {
          v9 = 1;
          v10 = 1;
        }

        else if (v28 < 0x4000)
        {
          v10 = 1;
          v9 = 2;
        }

        else if (v28 >> 30)
        {
          if (v28 >> 62)
          {
            goto LABEL_916;
          }

          v10 = 1;
          v9 = 8;
        }

        else
        {
          v10 = 1;
          v9 = 4;
        }
      }

      else
      {
        if (v19 < 0x4000)
        {
          v33 = v4[5];
          if (v33 < 0x40)
          {
            v15 = 1;
            v9 = 1;
          }

          else
          {
            if (v33 >= 0x4000)
            {
              if (v33 >> 30)
              {
                if (v33 >> 62)
                {
                  goto LABEL_916;
                }

                v14 = 1;
                v9 = 8;
                goto LABEL_445;
              }

              v14 = 1;
              goto LABEL_325;
            }

            v15 = 1;
            v9 = 2;
          }

          v10 = 2;
          v14 = 1;
          goto LABEL_681;
        }

        if (v19 >> 30)
        {
          if (v19 >> 62)
          {
            goto LABEL_916;
          }

          v20 = v4[5];
          if (v20 >= 0x40)
          {
            if (v20 >= 0x4000)
            {
              if (v20 >> 30)
              {
                if (v20 >> 62)
                {
                  goto LABEL_916;
                }

                v15 = 1;
                v9 = 8;
                v10 = 8;
                v14 = 1;
                goto LABEL_681;
              }

              v15 = 1;
              v10 = 8;
              goto LABEL_462;
            }

            v15 = 1;
            v10 = 8;
            goto LABEL_374;
          }

          v10 = 8;
        }

        else
        {
          v42 = v4[5];
          if (v42 >= 0x40)
          {
            if (v42 >= 0x4000)
            {
              if (!(v42 >> 30))
              {
                v15 = 1;
                v9 = 4;
                v10 = 4;
                v14 = 1;
                goto LABEL_681;
              }

              if (v42 >> 62)
              {
                goto LABEL_916;
              }

              v15 = 1;
              v10 = 4;
LABEL_184:
              v9 = 8;
              v14 = 1;
              goto LABEL_681;
            }

            v15 = 1;
            v10 = 4;
            goto LABEL_374;
          }

          v10 = 4;
        }

        v9 = 1;
      }

      v15 = 1;
      v14 = 1;
      goto LABEL_681;
    }

    if (v11 >> 14)
    {
      if (v11 >> 30)
      {
        if (v11 >> 62)
        {
          goto LABEL_916;
        }

        v12 = v4[4];
        if (v12 > 0x3F)
        {
          if (!(v12 >> 14))
          {
            v65 = v4[5];
            if (v65 >= 0x40)
            {
              if (v65 < 0x4000)
              {
                v14 = 1;
                v15 = 8;
                goto LABEL_618;
              }

              if (v65 >> 30)
              {
                if (v65 >> 62)
                {
                  goto LABEL_916;
                }

                v14 = 1;
                goto LABEL_468;
              }

              v14 = 1;
              v15 = 8;
              goto LABEL_559;
            }

            v15 = 8;
            v14 = 1;
LABEL_572:
            v9 = 1;
            v10 = 2;
            goto LABEL_681;
          }

          if (!(v12 >> 30))
          {
            v75 = v4[5];
            if (v75 < 0x40)
            {
              v15 = 8;
              v14 = 1;
              v9 = 1;
              v10 = 4;
              goto LABEL_681;
            }

            if (v75 < 0x4000)
            {
              v14 = 1;
              v15 = 8;
              v9 = 2;
              v10 = 4;
              goto LABEL_681;
            }

            if (v75 >> 30)
            {
              if (v75 >> 62)
              {
                goto LABEL_916;
              }

              v14 = 1;
              v15 = 8;
              v9 = 8;
              v10 = 4;
              goto LABEL_681;
            }

            v14 = 1;
            goto LABEL_648;
          }

          if (v12 >> 62)
          {
            goto LABEL_916;
          }

          v13 = v4[5];
          if (v13 < 0x40)
          {
            v15 = 8;
            v14 = 1;
            v9 = 1;
            v10 = 8;
            goto LABEL_681;
          }

          if (v13 < 0x4000)
          {
            v14 = 1;
            v15 = 8;
            v9 = 2;
            v10 = 8;
            goto LABEL_681;
          }

          if (!(v13 >> 30))
          {
            v14 = 1;
            v15 = 8;
            v9 = 4;
            v10 = 8;
            goto LABEL_681;
          }

          if (v13 >> 62)
          {
            goto LABEL_916;
          }

          v14 = 1;
          v15 = 8;
          goto LABEL_152;
        }

        v52 = v4[5];
        if (v52 >= 0x40)
        {
          if (v52 >= 0x4000)
          {
            if (v52 >> 30)
            {
              if (v52 >> 62)
              {
                goto LABEL_916;
              }

              v14 = 1;
              goto LABEL_380;
            }

            v15 = 8;
            v14 = 1;
            goto LABEL_607;
          }

          v15 = 8;
          v14 = 1;
          goto LABEL_396;
        }

        v15 = 8;
        v10 = 1;
LABEL_383:
        v9 = 1;
        v14 = 1;
        goto LABEL_681;
      }

      v29 = v4[4];
      if (v29 > 0x3F)
      {
        if (v29 >> 14)
        {
          if (!(v29 >> 30))
          {
            v69 = v4[5];
            if (v69 < 0x40)
            {
              v10 = 4;
              v14 = 1;
LABEL_624:
              v9 = 1;
              v15 = 4;
              goto LABEL_681;
            }

            if (v69 < 0x4000)
            {
              v14 = 1;
              v10 = 4;
              goto LABEL_657;
            }

            if (!(v69 >> 30))
            {
              v14 = 1;
              v10 = 4;
              goto LABEL_654;
            }

            if (v69 >> 62)
            {
              goto LABEL_916;
            }

            v14 = 1;
            goto LABEL_418;
          }

          if (v29 >> 62)
          {
            goto LABEL_916;
          }

          v30 = v4[5];
          if (v30 >= 0x40)
          {
            if (v30 < 0x4000)
            {
              v14 = 1;
              v15 = 4;
              goto LABEL_549;
            }

            if (v30 >> 30)
            {
              if (v30 >> 62)
              {
                goto LABEL_916;
              }

              v14 = 1;
              v15 = 4;
              v10 = 8;
              v9 = 8;
              goto LABEL_681;
            }

            v14 = 1;
            v10 = 8;
LABEL_612:
            v15 = 4;
            v9 = 4;
            goto LABEL_681;
          }

          v15 = 4;
          v10 = 8;
        }

        else
        {
          v58 = v4[5];
          if (v58 >= 0x40)
          {
            if (v58 < 0x4000)
            {
              v14 = 1;
              v15 = 4;
              v10 = 2;
              v9 = 2;
              goto LABEL_681;
            }

            if (v58 >> 30)
            {
              if (v58 >> 62)
              {
                goto LABEL_916;
              }

              v14 = 1;
              v15 = 4;
              v10 = 2;
              v9 = 8;
              goto LABEL_681;
            }

            v14 = 1;
            v10 = 2;
            goto LABEL_612;
          }

          v15 = 4;
          v10 = 2;
        }

        v14 = 1;
        v9 = 1;
        goto LABEL_681;
      }

      v47 = v4[5];
      if (v47 >= 0x40)
      {
        if (v47 >= 0x4000)
        {
          if (v47 >> 30)
          {
            if (v47 >> 62)
            {
              goto LABEL_916;
            }

            v15 = 4;
LABEL_183:
            v10 = 1;
            goto LABEL_184;
          }

          v10 = 1;
          v15 = 4;
          goto LABEL_462;
        }

        v15 = 4;
        v10 = 1;
LABEL_374:
        v9 = 2;
        v14 = 1;
        goto LABEL_681;
      }

      v15 = 4;
LABEL_274:
      v9 = 1;
      v10 = 1;
      v14 = 1;
      goto LABEL_681;
    }

    v24 = v4[4];
    if (v24 < 0x40)
    {
      v36 = v4[5];
      if (v36 < 0x40)
      {
        v15 = 2;
        goto LABEL_274;
      }

      if (v36 >= 0x4000)
      {
        if (v36 >> 30)
        {
          if (v36 >> 62)
          {
            goto LABEL_916;
          }

          v15 = 2;
          goto LABEL_183;
        }

        v15 = 2;
        v10 = 1;
LABEL_462:
        v9 = 4;
        v14 = 1;
        goto LABEL_681;
      }

      v10 = 1;
      v9 = 2;
    }

    else
    {
      if (v24 >= 0x4000)
      {
        if (v24 >> 30)
        {
          if (v24 >> 62)
          {
            goto LABEL_916;
          }

          v25 = v4[5];
          if (v25 >= 0x40)
          {
            if (v25 >= 0x4000)
            {
              if (!(v25 >> 30))
              {
                v14 = 1;
                v15 = 2;
                v10 = 8;
                v9 = 4;
                goto LABEL_681;
              }

              if (v25 >> 62)
              {
                goto LABEL_916;
              }

              v14 = 1;
              goto LABEL_76;
            }

            v14 = 1;
LABEL_471:
            v10 = 8;
            goto LABEL_472;
          }

          v15 = 2;
          v10 = 8;
        }

        else
        {
          v56 = v4[5];
          if (v56 >= 0x40)
          {
            if (v56 >= 0x4000)
            {
              if (v56 >> 30)
              {
                if (v56 >> 62)
                {
                  goto LABEL_916;
                }

                v14 = 1;
                v15 = 2;
                v10 = 4;
                v9 = 8;
                goto LABEL_681;
              }

              v14 = 1;
              v15 = 2;
LABEL_649:
              v9 = 4;
              v10 = 4;
              goto LABEL_681;
            }

            v14 = 1;
            v10 = 4;
            goto LABEL_472;
          }

          v15 = 2;
          v10 = 4;
        }

        goto LABEL_383;
      }

      v45 = v4[5];
      if (v45 >= 0x40)
      {
        if (v45 >= 0x4000)
        {
          if (v45 >> 30)
          {
            if (v45 >> 62)
            {
              goto LABEL_916;
            }

            v14 = 1;
            v10 = 2;
            v9 = 8;
            v15 = 2;
            goto LABEL_681;
          }

          v14 = 1;
          goto LABEL_427;
        }

        v14 = 1;
        goto LABEL_345;
      }

      v10 = 2;
      v9 = 1;
    }

    v15 = 2;
    v14 = 1;
    goto LABEL_681;
  }

  if (v5 < 0x4000)
  {
    v16 = *a3;
    if (*a3 < 0x40)
    {
      v26 = v4[4];
      if (v26 > 0x3F)
      {
        if (v26 >> 14)
        {
          if (v26 >> 30)
          {
            if (v26 >> 62)
            {
              goto LABEL_916;
            }

            v27 = v4[5];
            if (v27 < 0x40)
            {
              v14 = 2;
              v9 = 1;
            }

            else if (v27 < 0x4000)
            {
              v14 = 2;
              v9 = 2;
            }

            else if (v27 >> 30)
            {
              if (v27 >> 62)
              {
                goto LABEL_916;
              }

              v14 = 2;
              v9 = 8;
            }

            else
            {
              v14 = 2;
              v9 = 4;
            }

            v10 = 8;
            v15 = 1;
          }

          else
          {
            v57 = v4[5];
            if (v57 < 0x40)
            {
              v14 = 2;
              v9 = 1;
            }

            else if (v57 < 0x4000)
            {
              v14 = 2;
              v9 = 2;
            }

            else if (v57 >> 30)
            {
              if (v57 >> 62)
              {
                goto LABEL_916;
              }

              v14 = 2;
              v9 = 8;
            }

            else
            {
              v14 = 2;
              v9 = 4;
            }

            v10 = 4;
            v15 = 1;
          }

          goto LABEL_681;
        }

        v46 = v4[5];
        if (v46 < 0x40)
        {
          v14 = 2;
          v15 = 1;
          goto LABEL_572;
        }

        if (v46 < 0x4000)
        {
          v15 = 1;
          v14 = 2;
          goto LABEL_618;
        }

        if (v46 >> 30)
        {
          if (v46 >> 62)
          {
            goto LABEL_916;
          }

          v15 = 1;
          v14 = 2;
          goto LABEL_469;
        }

        v15 = 1;
        goto LABEL_429;
      }

      v37 = v4[5];
      if (v37 < 0x40)
      {
        v14 = 2;
        v15 = 1;
        goto LABEL_499;
      }

      if (v37 >= 0x4000)
      {
        if (v37 >> 30)
        {
          if (v37 >> 62)
          {
            goto LABEL_916;
          }

          v14 = 2;
          v15 = 1;
          goto LABEL_381;
        }

        v14 = 2;
        v15 = 1;
        goto LABEL_607;
      }

      v15 = 1;
LABEL_257:
      v14 = 2;
      goto LABEL_396;
    }

    if (v16 >= 0x4000)
    {
      if (v16 >> 30)
      {
        if (v16 >> 62)
        {
          goto LABEL_916;
        }

        v17 = v4[4];
        if (v17 >= 0x40)
        {
          if (v17 >= 0x4000)
          {
            if (v17 >> 30)
            {
              if (v17 >> 62)
              {
                goto LABEL_916;
              }

              v18 = v4[5];
              if (v18 >= 0x40)
              {
                if (v18 < 0x4000)
                {
                  v10 = 8;
                  v9 = 2;
                  v15 = 8;
                  v14 = 2;
                  goto LABEL_681;
                }

                if (!(v18 >> 30))
                {
                  v14 = 2;
                  v10 = 8;
                  v9 = 4;
                  v15 = 8;
                  goto LABEL_681;
                }

                if (v18 >> 62)
                {
                  goto LABEL_916;
                }

                v14 = 2;
LABEL_66:
                v9 = 8;
                v10 = 8;
                v15 = 8;
                goto LABEL_681;
              }

              v14 = 2;
              goto LABEL_628;
            }

            v85 = v4[5];
            if (v85 < 0x40)
            {
              v14 = 2;
              v15 = 8;
              v10 = 4;
              v9 = 1;
              goto LABEL_681;
            }

            if (v85 >= 0x4000)
            {
              if (v85 >> 30)
              {
                if (v85 >> 62)
                {
                  goto LABEL_916;
                }

                v14 = 2;
                v10 = 4;
                v9 = 8;
                v15 = 8;
                goto LABEL_681;
              }

              v14 = 2;
LABEL_648:
              v15 = 8;
              goto LABEL_649;
            }

            v15 = 8;
            v10 = 4;
LABEL_614:
            v9 = 2;
            v14 = 2;
            goto LABEL_681;
          }

          v76 = v4[5];
          if (v76 < 0x40)
          {
            v15 = 8;
            v14 = 2;
            goto LABEL_572;
          }

          if (v76 < 0x4000)
          {
            v15 = 8;
            v14 = 2;
            goto LABEL_618;
          }

          if (v76 >> 30)
          {
            if (v76 >> 62)
            {
              goto LABEL_916;
            }

            v14 = 2;
            goto LABEL_468;
          }

          v15 = 8;
LABEL_429:
          v14 = 2;
          goto LABEL_559;
        }

        v66 = v4[5];
        if (v66 < 0x40)
        {
          v14 = 2;
LABEL_498:
          v15 = 8;
          goto LABEL_499;
        }

        if (v66 >= 0x4000)
        {
          if (v66 >> 30)
          {
            if (v66 >> 62)
            {
              goto LABEL_916;
            }

            v14 = 2;
            goto LABEL_380;
          }

          v14 = 2;
          v15 = 8;
LABEL_607:
          v9 = 4;
          v10 = 1;
          goto LABEL_681;
        }

        v15 = 8;
        goto LABEL_257;
      }

      v40 = v4[4];
      if (v40 < 0x40)
      {
        v61 = v4[5];
        if (v61 < 0x40)
        {
          v14 = 2;
          goto LABEL_504;
        }

        if (v61 < 0x4000)
        {
          v15 = 4;
          v10 = 1;
          v14 = 2;
          v9 = 2;
          goto LABEL_681;
        }

        if (!(v61 >> 30))
        {
          v14 = 2;
LABEL_611:
          v10 = 1;
          goto LABEL_612;
        }

        if (v61 >> 62)
        {
          goto LABEL_916;
        }

        v14 = 2;
        v15 = 4;
        goto LABEL_269;
      }

      if (v40 < 0x4000)
      {
        v72 = v4[5];
        if (v72 < 0x40)
        {
          v14 = 2;
          v9 = 1;
        }

        else if (v72 < 0x4000)
        {
          v14 = 2;
          v9 = 2;
        }

        else if (v72 >> 30)
        {
          if (v72 >> 62)
          {
            goto LABEL_916;
          }

          v14 = 2;
          v9 = 8;
        }

        else
        {
          v14 = 2;
          v9 = 4;
        }

        v10 = 2;
        v15 = 4;
        goto LABEL_681;
      }

      if (v40 >> 30)
      {
        if (v40 >> 62)
        {
          goto LABEL_916;
        }

        v41 = v4[5];
        if (v41 < 0x40)
        {
          v14 = 2;
          v15 = 4;
          goto LABEL_552;
        }

        if (v41 < 0x4000)
        {
          v15 = 4;
          v10 = 8;
          goto LABEL_614;
        }

        if (!(v41 >> 30))
        {
          v14 = 2;
          v10 = 8;
          goto LABEL_654;
        }

        if (v41 >> 62)
        {
          goto LABEL_916;
        }

        v14 = 2;
        v15 = 4;
LABEL_152:
        v9 = 8;
        v10 = 8;
        goto LABEL_681;
      }

      v82 = v4[5];
      if (v82 < 0x40)
      {
        v14 = 2;
LABEL_623:
        v10 = 4;
        goto LABEL_624;
      }

      if (v82 < 0x4000)
      {
        v10 = 4;
        v14 = 2;
        goto LABEL_657;
      }

      if (!(v82 >> 30))
      {
        v14 = 2;
        v10 = 4;
        goto LABEL_654;
      }

      if (v82 >> 62)
      {
        goto LABEL_916;
      }

      v14 = 2;
LABEL_418:
      v10 = 4;
      v9 = 8;
      v15 = 4;
      goto LABEL_681;
    }

    v31 = v4[4];
    if (v31 <= 0x3F)
    {
      v48 = v4[5];
      if (v48 < 0x40)
      {
        v15 = 2;
        v9 = 1;
        v10 = 1;
        v14 = 2;
        goto LABEL_681;
      }

      if (v48 >= 0x4000)
      {
        if (!(v48 >> 30))
        {
          v15 = 2;
          v10 = 1;
          goto LABEL_432;
        }

        if (v48 >> 62)
        {
          goto LABEL_916;
        }

        v15 = 2;
        v10 = 1;
LABEL_190:
        v9 = 8;
        v14 = 2;
        goto LABEL_681;
      }

      v10 = 1;
    }

    else
    {
      if (!(v31 >> 14))
      {
        v59 = v4[5];
        if (v59 < 0x40)
        {
          v10 = 2;
          v9 = 1;
        }

        else if (v59 < 0x4000)
        {
          v9 = 2;
          v10 = 2;
        }

        else if (v59 >> 30)
        {
          if (v59 >> 62)
          {
            goto LABEL_916;
          }

          v10 = 2;
          v9 = 8;
        }

        else
        {
          v10 = 2;
          v9 = 4;
        }

        goto LABEL_523;
      }

      if (v31 >> 30)
      {
        if (v31 >> 62)
        {
          goto LABEL_916;
        }

        v32 = v4[5];
        if (v32 >= 0x40)
        {
          if (v32 >= 0x4000)
          {
            if (v32 >> 30)
            {
              if (v32 >> 62)
              {
                goto LABEL_916;
              }

              v15 = 2;
              v9 = 8;
              v10 = 8;
              v14 = 2;
              goto LABEL_681;
            }

            v15 = 2;
            v10 = 8;
LABEL_432:
            v9 = 4;
            v14 = 2;
            goto LABEL_681;
          }

          v10 = 8;
          goto LABEL_349;
        }

        v15 = 2;
        v10 = 8;
LABEL_477:
        v9 = 1;
        v14 = 2;
        goto LABEL_681;
      }

      v70 = v4[5];
      if (v70 < 0x40)
      {
        v15 = 2;
        v10 = 4;
        goto LABEL_477;
      }

      if (v70 >= 0x4000)
      {
        if (!(v70 >> 30))
        {
          v15 = 2;
          v9 = 4;
          v10 = 4;
          v14 = 2;
          goto LABEL_681;
        }

        if (v70 >> 62)
        {
          goto LABEL_916;
        }

        v15 = 2;
        v10 = 4;
        goto LABEL_190;
      }

      v10 = 4;
    }

LABEL_349:
    v9 = 2;
LABEL_523:
    v15 = 2;
    v14 = 2;
    goto LABEL_681;
  }

  if (!(v5 >> 30))
  {
    v21 = *a3;
    if (*a3 >= 0x40)
    {
      if (v21 >= 0x4000)
      {
        if (v21 >> 30)
        {
          if (v21 >> 62)
          {
            goto LABEL_916;
          }

          v22 = v4[4];
          if (v22 >= 0x40)
          {
            if (v22 >= 0x4000)
            {
              if (v22 >> 30)
              {
                if (v22 >> 62)
                {
                  goto LABEL_916;
                }

                v23 = v4[5];
                if (v23 >= 0x40)
                {
                  if (v23 < 0x4000)
                  {
                    v14 = 4;
                    v10 = 8;
                    v9 = 2;
                    v15 = 8;
                    goto LABEL_681;
                  }

                  if (v23 >> 30)
                  {
                    if (v23 >> 62)
                    {
                      goto LABEL_916;
                    }

                    v14 = 4;
                    goto LABEL_66;
                  }

                  v10 = 8;
                  v9 = 4;
LABEL_675:
                  v15 = 8;
                  v14 = 4;
                  goto LABEL_681;
                }

                v14 = 4;
LABEL_628:
                v10 = 8;
                v9 = 1;
                v15 = 8;
                goto LABEL_681;
              }

              v91 = v4[5];
              if (v91 >= 0x40)
              {
                if (v91 >= 0x4000)
                {
                  if (v91 >> 30)
                  {
                    if (v91 >> 62)
                    {
                      goto LABEL_916;
                    }

                    v10 = 4;
                    v9 = 8;
                    goto LABEL_675;
                  }

                  v15 = 8;
LABEL_672:
                  v9 = 4;
                  v10 = 4;
                  v14 = 4;
                  goto LABEL_681;
                }

                v15 = 8;
                goto LABEL_530;
              }

              v15 = 8;
              goto LABEL_620;
            }

            v86 = v4[5];
            if (v86 >= 0x40)
            {
              if (v86 < 0x4000)
              {
                v14 = 4;
                v15 = 8;
                goto LABEL_618;
              }

              if (v86 >> 30)
              {
                if (v86 >> 62)
                {
                  goto LABEL_916;
                }

                v14 = 4;
LABEL_468:
                v15 = 8;
LABEL_469:
                v9 = 8;
                v10 = 2;
                goto LABEL_681;
              }

              v15 = 8;
              v14 = 4;
LABEL_559:
              v9 = 4;
              v10 = 2;
              goto LABEL_681;
            }

            v14 = 4;
            v15 = 8;
            goto LABEL_572;
          }

          v77 = v4[5];
          if (v77 >= 0x40)
          {
            if (v77 >= 0x4000)
            {
              if (v77 >> 30)
              {
                if (v77 >> 62)
                {
                  goto LABEL_916;
                }

                v14 = 4;
LABEL_380:
                v15 = 8;
LABEL_381:
                v9 = 8;
                v10 = 1;
                goto LABEL_681;
              }

              v15 = 8;
              v14 = 4;
              goto LABEL_607;
            }

            v14 = 4;
            v15 = 8;
LABEL_396:
            v9 = 2;
            v10 = 1;
            goto LABEL_681;
          }

          v14 = 4;
          goto LABEL_498;
        }

        v54 = v4[4];
        if (v54 >= 0x40)
        {
          if (v54 >= 0x4000)
          {
            if (!(v54 >> 30))
            {
              v90 = v4[5];
              if (v90 < 0x40)
              {
                v10 = 4;
                v9 = 1;
              }

              else if (v90 < 0x4000)
              {
                v10 = 4;
                v9 = 2;
              }

              else if (v90 >> 30)
              {
                if (v90 >> 62)
                {
                  goto LABEL_916;
                }

                v10 = 4;
                v9 = 8;
              }

              else
              {
                v9 = 4;
                v10 = 4;
              }

              goto LABEL_670;
            }

            if (v54 >> 62)
            {
              goto LABEL_916;
            }

            v55 = v4[5];
            if (v55 >= 0x40)
            {
              if (v55 < 0x4000)
              {
                v15 = 4;
                v10 = 8;
                goto LABEL_534;
              }

              if (v55 >> 30)
              {
                if (v55 >> 62)
                {
                  goto LABEL_916;
                }

                v15 = 4;
                v9 = 8;
                v10 = 8;
                v14 = 4;
                goto LABEL_681;
              }

              v10 = 8;
              goto LABEL_669;
            }

            v15 = 4;
            v10 = 8;
LABEL_621:
            v9 = 1;
            v14 = 4;
            goto LABEL_681;
          }

          v84 = v4[5];
          if (v84 < 0x40)
          {
            v15 = 4;
            v10 = 2;
            goto LABEL_621;
          }

          if (v84 < 0x4000)
          {
            v15 = 4;
            v9 = 2;
            v10 = 2;
            v14 = 4;
            goto LABEL_681;
          }

          if (!(v84 >> 30))
          {
            v10 = 2;
LABEL_669:
            v9 = 4;
LABEL_670:
            v15 = 4;
            v14 = 4;
            goto LABEL_681;
          }

          if (v84 >> 62)
          {
            goto LABEL_916;
          }

          v15 = 4;
          v10 = 2;
LABEL_439:
          v9 = 8;
          v14 = 4;
          goto LABEL_681;
        }

        v74 = v4[5];
        if (v74 < 0x40)
        {
          v15 = 4;
          v10 = 1;
          goto LABEL_621;
        }

        if (v74 < 0x4000)
        {
          v15 = 4;
          v10 = 1;
          goto LABEL_534;
        }

        if (v74 >> 30)
        {
          if (v74 >> 62)
          {
            goto LABEL_916;
          }

          v15 = 4;
          v10 = 1;
          goto LABEL_439;
        }

        v10 = 1;
        v15 = 4;
LABEL_645:
        v9 = 4;
        v14 = 4;
        goto LABEL_681;
      }

      v43 = v4[4];
      if (v43 >= 0x40)
      {
        if (v43 < 0x4000)
        {
          v73 = v4[5];
          if (v73 < 0x40)
          {
            v14 = 4;
            v9 = 1;
            goto LABEL_454;
          }

          if (v73 >= 0x4000)
          {
            if (v73 >> 30)
            {
              if (v73 >> 62)
              {
                goto LABEL_916;
              }

              v14 = 4;
              v9 = 8;
            }

            else
            {
              v14 = 4;
              v9 = 4;
            }

            goto LABEL_454;
          }

          v14 = 4;
LABEL_345:
          v9 = 2;
LABEL_454:
          v10 = 2;
          v15 = 2;
          goto LABEL_681;
        }

        if (v43 >> 30)
        {
          if (v43 >> 62)
          {
            goto LABEL_916;
          }

          v44 = v4[5];
          if (v44 >= 0x40)
          {
            if (v44 >= 0x4000)
            {
              if (v44 >> 30)
              {
                if (v44 >> 62)
                {
                  goto LABEL_916;
                }

                v14 = 4;
LABEL_76:
                v15 = 2;
                goto LABEL_152;
              }

              v15 = 2;
LABEL_644:
              v10 = 8;
              goto LABEL_645;
            }

            v14 = 4;
            goto LABEL_471;
          }

          v14 = 4;
          v15 = 2;
LABEL_552:
          v10 = 8;
          v9 = 1;
          goto LABEL_681;
        }

        v83 = v4[5];
        if (v83 < 0x40)
        {
          v15 = 2;
LABEL_620:
          v10 = 4;
          goto LABEL_621;
        }

        if (v83 < 0x4000)
        {
          v10 = 4;
          v9 = 2;
          v15 = 2;
          v14 = 4;
          goto LABEL_681;
        }

        if (!(v83 >> 30))
        {
          v15 = 2;
          goto LABEL_672;
        }

        if (v83 >> 62)
        {
          goto LABEL_916;
        }

        v15 = 2;
LABEL_425:
        v10 = 4;
        goto LABEL_439;
      }

      v62 = v4[5];
      if (v62 >= 0x40)
      {
        if (v62 >= 0x4000)
        {
          if (!(v62 >> 30))
          {
            v15 = 2;
            v10 = 1;
            goto LABEL_645;
          }

          if (v62 >> 62)
          {
            goto LABEL_916;
          }

          v14 = 4;
          v15 = 2;
LABEL_269:
          v10 = 1;
          v9 = 8;
          goto LABEL_681;
        }

        v14 = 4;
        v10 = 1;
LABEL_472:
        v9 = 2;
        v15 = 2;
        goto LABEL_681;
      }

      v14 = 4;
      v15 = 2;
LABEL_499:
      v9 = 1;
      v10 = 1;
      goto LABEL_681;
    }

    v34 = v4[4];
    if (v34 < 0x40)
    {
      v49 = v4[5];
      if (v49 < 0x40)
      {
        v14 = 4;
        goto LABEL_313;
      }

      if (v49 < 0x4000)
      {
        v14 = 4;
        goto LABEL_398;
      }

      if (v49 >> 30)
      {
        if (v49 >> 62)
        {
          goto LABEL_916;
        }

        v14 = 4;
        v10 = 1;
        v9 = 8;
        v15 = 1;
        goto LABEL_681;
      }

      v10 = 1;
      v9 = 4;
      goto LABEL_451;
    }

    if (v34 >= 0x4000)
    {
      if (v34 >> 30)
      {
        if (v34 >> 62)
        {
          goto LABEL_916;
        }

        v35 = v4[5];
        if (v35 < 0x40)
        {
          v14 = 4;
          v10 = 8;
          goto LABEL_501;
        }

        if (v35 >= 0x4000)
        {
          if (v35 >> 30)
          {
            if (v35 >> 62)
            {
              goto LABEL_916;
            }

            v14 = 4;
            v15 = 1;
            goto LABEL_152;
          }

          v15 = 1;
          goto LABEL_644;
        }

        v14 = 4;
        v15 = 1;
LABEL_549:
        v10 = 8;
        v9 = 2;
        goto LABEL_681;
      }

      v71 = v4[5];
      if (v71 >= 0x40)
      {
        if (v71 < 0x4000)
        {
          v15 = 1;
LABEL_530:
          v10 = 4;
LABEL_534:
          v9 = 2;
          v14 = 4;
          goto LABEL_681;
        }

        if (!(v71 >> 30))
        {
          v15 = 1;
          goto LABEL_672;
        }

        if (v71 >> 62)
        {
          goto LABEL_916;
        }

        v15 = 1;
        goto LABEL_425;
      }

      v10 = 4;
      v9 = 1;
LABEL_451:
      v15 = 1;
      v14 = 4;
      goto LABEL_681;
    }

    v60 = v4[5];
    if (v60 < 0x40)
    {
      v14 = 4;
      v9 = 1;
      goto LABEL_445;
    }

    if (v60 < 0x4000)
    {
      v14 = 4;
      v9 = 2;
      goto LABEL_445;
    }

    if (v60 >> 30)
    {
      if (v60 >> 62)
      {
        goto LABEL_916;
      }

      v14 = 4;
      v9 = 8;
      goto LABEL_445;
    }

    v14 = 4;
LABEL_325:
    v9 = 4;
LABEL_445:
    v10 = 2;
    v15 = 1;
    goto LABEL_681;
  }

  if (v5 >> 62)
  {
    goto LABEL_916;
  }

  v6 = *a3;
  if (*a3 < 0x40)
  {
    v38 = v4[4];
    if (v38 >= 0x40)
    {
      if (v38 < 0x4000)
      {
        v67 = v4[5];
        if (v67 >= 0x40)
        {
          if (v67 >= 0x4000)
          {
            if (!(v67 >> 30))
            {
              v14 = 8;
              v15 = 1;
              v10 = 2;
              v9 = 4;
              goto LABEL_681;
            }

            if (v67 >> 62)
            {
              goto LABEL_916;
            }

            v15 = 1;
            goto LABEL_305;
          }

          v14 = 8;
          v15 = 1;
          goto LABEL_618;
        }

        v14 = 8;
        v10 = 2;
      }

      else
      {
        if (v38 >> 30)
        {
          if (v38 >> 62)
          {
            goto LABEL_916;
          }

          v39 = v4[5];
          if (v39 < 0x40)
          {
            v10 = 8;
            v9 = 1;
            v15 = 1;
            goto LABEL_680;
          }

          if (v39 < 0x4000)
          {
            v15 = 1;
            goto LABEL_583;
          }

          if (v39 >> 30)
          {
            if (v39 >> 62)
            {
              goto LABEL_916;
            }

            v15 = 1;
            goto LABEL_286;
          }

          v15 = 1;
LABEL_661:
          v10 = 8;
          v9 = 4;
          goto LABEL_680;
        }

        v78 = v4[5];
        if (v78 >= 0x40)
        {
          if (v78 < 0x4000)
          {
            v14 = 8;
            v15 = 1;
            v10 = 4;
            v9 = 2;
            goto LABEL_681;
          }

          if (v78 >> 30)
          {
            if (v78 >> 62)
            {
              goto LABEL_916;
            }

            v15 = 1;
            v10 = 4;
            v9 = 8;
            goto LABEL_680;
          }

          v14 = 8;
          v15 = 1;
          goto LABEL_649;
        }

        v14 = 8;
        v10 = 4;
      }

LABEL_501:
      v9 = 1;
      v15 = 1;
      goto LABEL_681;
    }

    v53 = v4[5];
    if (v53 >= 0x40)
    {
      if (v53 >= 0x4000)
      {
        if (!(v53 >> 30))
        {
          v14 = 8;
          v10 = 1;
          v9 = 4;
          v15 = 1;
          goto LABEL_681;
        }

        if (v53 >> 62)
        {
          goto LABEL_916;
        }

        v10 = 1;
        v9 = 8;
        v15 = 1;
        goto LABEL_680;
      }

      v14 = 8;
LABEL_398:
      v10 = 1;
      v9 = 2;
      v15 = 1;
      goto LABEL_681;
    }

    v14 = 8;
LABEL_313:
    v9 = 1;
    v10 = 1;
    v15 = 1;
    goto LABEL_681;
  }

  if (v6 < 0x4000)
  {
    v50 = v4[4];
    if (v50 < 0x40)
    {
      v68 = v4[5];
      if (v68 < 0x40)
      {
        v14 = 8;
        v9 = 1;
      }

      else if (v68 < 0x4000)
      {
        v14 = 8;
        v9 = 2;
      }

      else
      {
        if (v68 >> 30)
        {
          if (v68 >> 62)
          {
            goto LABEL_916;
          }

          v9 = 8;
          v10 = 1;
          goto LABEL_631;
        }

        v14 = 8;
        v9 = 4;
      }

      v10 = 1;
      v15 = 2;
      goto LABEL_681;
    }

    if (v50 >= 0x4000)
    {
      if (!(v50 >> 30))
      {
        v87 = v4[5];
        if (v87 < 0x40)
        {
          v14 = 8;
          v9 = 1;
        }

        else if (v87 < 0x4000)
        {
          v14 = 8;
          v9 = 2;
        }

        else if (v87 >> 30)
        {
          if (v87 >> 62)
          {
            goto LABEL_916;
          }

          v14 = 8;
          v9 = 8;
        }

        else
        {
          v14 = 8;
          v9 = 4;
        }

        v10 = 4;
        v15 = 2;
        goto LABEL_681;
      }

      if (v50 >> 62)
      {
        goto LABEL_916;
      }

      v51 = v4[5];
      if (v51 < 0x40)
      {
        v15 = 2;
        goto LABEL_633;
      }

      if (v51 >= 0x4000)
      {
        if (v51 >> 30)
        {
          if (v51 >> 62)
          {
            goto LABEL_916;
          }

          v15 = 2;
LABEL_286:
          v9 = 8;
          v10 = 8;
          goto LABEL_680;
        }

        v15 = 2;
        goto LABEL_661;
      }

      v10 = 8;
      v9 = 2;
LABEL_631:
      v15 = 2;
      goto LABEL_680;
    }

    v79 = v4[5];
    if (v79 < 0x40)
    {
      v14 = 8;
      v10 = 2;
      v9 = 1;
      v15 = 2;
      goto LABEL_681;
    }

    if (v79 >= 0x4000)
    {
      if (v79 >> 30)
      {
        if (v79 >> 62)
        {
          goto LABEL_916;
        }

        v10 = 2;
        v9 = 8;
        goto LABEL_631;
      }

      v14 = 8;
LABEL_427:
      v10 = 2;
      v9 = 4;
      v15 = 2;
      goto LABEL_681;
    }

    v14 = 8;
    goto LABEL_345;
  }

  if (!(v6 >> 30))
  {
    v63 = v4[4];
    if (v63 >= 0x40)
    {
      if (v63 >= 0x4000)
      {
        if (v63 >> 30)
        {
          if (v63 >> 62)
          {
            goto LABEL_916;
          }

          v64 = v4[5];
          if (v64 >= 0x40)
          {
            if (v64 >= 0x4000)
            {
              if (!(v64 >> 30))
              {
                v10 = 8;
                v9 = 4;
                v15 = 4;
                goto LABEL_680;
              }

              if (v64 >> 62)
              {
                goto LABEL_916;
              }

              v15 = 4;
              goto LABEL_286;
            }

            v15 = 4;
LABEL_583:
            v10 = 8;
            v9 = 2;
            goto LABEL_680;
          }

          v15 = 4;
LABEL_633:
          v10 = 8;
          v9 = 1;
          goto LABEL_680;
        }

        v92 = v4[5];
        if (v92 >= 0x40)
        {
          if (v92 >= 0x4000)
          {
            if (!(v92 >> 30))
            {
              v14 = 8;
              v9 = 4;
              v10 = 4;
              v15 = 4;
              goto LABEL_681;
            }

            if (v92 >> 62)
            {
              goto LABEL_916;
            }

            v10 = 4;
            v9 = 8;
            v15 = 4;
            goto LABEL_680;
          }

          v14 = 8;
          v10 = 4;
LABEL_657:
          v9 = 2;
          v15 = 4;
          goto LABEL_681;
        }

        v14 = 8;
        goto LABEL_623;
      }

      v88 = v4[5];
      if (v88 < 0x40)
      {
        v14 = 8;
        v15 = 4;
        v10 = 2;
        v9 = 1;
        goto LABEL_681;
      }

      if (v88 >= 0x4000)
      {
        if (v88 >> 30)
        {
          if (v88 >> 62)
          {
            goto LABEL_916;
          }

          v15 = 4;
LABEL_305:
          v10 = 2;
          v9 = 8;
          goto LABEL_680;
        }

        v14 = 8;
        v10 = 2;
LABEL_654:
        v9 = 4;
        v15 = 4;
        goto LABEL_681;
      }

      v14 = 8;
      v15 = 4;
LABEL_618:
      v9 = 2;
      v10 = 2;
      goto LABEL_681;
    }

    v80 = v4[5];
    if (v80 >= 0x40)
    {
      if (v80 < 0x4000)
      {
        v14 = 8;
        v15 = 4;
        v10 = 1;
        v9 = 2;
        goto LABEL_681;
      }

      if (v80 >> 30)
      {
        if (v80 >> 62)
        {
          goto LABEL_916;
        }

        v15 = 4;
        v10 = 1;
        v14 = 8;
        v9 = 8;
        goto LABEL_681;
      }

      v14 = 8;
      goto LABEL_611;
    }

    v14 = 8;
LABEL_504:
    v15 = 4;
    v10 = 1;
    v9 = 1;
    goto LABEL_681;
  }

  if (v6 >> 62)
  {
    goto LABEL_916;
  }

  v7 = v4[4];
  if (v7 < 0x40)
  {
    v81 = v4[5];
    if (v81 < 0x40)
    {
      v15 = 8;
      v9 = 1;
      v10 = 1;
    }

    else if (v81 < 0x4000)
    {
      v15 = 8;
      v9 = 2;
      v10 = 1;
    }

    else if (v81 >> 30)
    {
      if (v81 >> 62)
      {
        goto LABEL_916;
      }

      v15 = 8;
      v9 = 8;
      v10 = 1;
    }

    else
    {
      v15 = 8;
      v9 = 4;
      v10 = 1;
    }

    goto LABEL_680;
  }

  if (v7 >= 0x4000)
  {
    if (v7 >> 30)
    {
      if (v7 >> 62)
      {
        goto LABEL_916;
      }

      v8 = v4[5];
      if (v8 < 0x40)
      {
        v10 = 8;
        v9 = 1;
      }

      else if (v8 < 0x4000)
      {
        v10 = 8;
        v9 = 2;
      }

      else if (v8 >> 30)
      {
        if (v8 >> 62)
        {
          goto LABEL_916;
        }

        v9 = 8;
        v10 = 8;
      }

      else
      {
        v10 = 8;
        v9 = 4;
      }

      goto LABEL_679;
    }

    v93 = v4[5];
    if (v93 < 0x40)
    {
      v15 = 8;
      v10 = 4;
      v9 = 1;
    }

    else if (v93 < 0x4000)
    {
      v15 = 8;
      v10 = 4;
      v9 = 2;
    }

    else
    {
      if (v93 >> 30)
      {
        if (v93 >> 62)
        {
          goto LABEL_916;
        }

        v10 = 4;
        v9 = 8;
LABEL_679:
        v15 = 8;
        goto LABEL_680;
      }

      v15 = 8;
      v9 = 4;
      v10 = 4;
    }

LABEL_680:
    v14 = 8;
    goto LABEL_681;
  }

  v89 = v4[5];
  if (v89 < 0x40)
  {
    v14 = 8;
    v9 = 1;
  }

  else if (v89 < 0x4000)
  {
    v14 = 8;
    v9 = 2;
  }

  else if (v89 >> 30)
  {
    if (v89 >> 62)
    {
      goto LABEL_916;
    }

    v14 = 8;
    v9 = 8;
  }

  else
  {
    v14 = 8;
    v9 = 4;
  }

  v10 = 2;
  v15 = 8;
LABEL_681:
  v94 = v4[6];
  v95 = sub_182296F2C(v94);
  v97 = v95 - 1;
  if (__OFSUB__(v95, 1))
  {
    __break(1u);
LABEL_909:
    __break(1u);
    goto LABEL_910;
  }

  v98 = v95;
  if (v97 < 64)
  {
    v99 = 1;
  }

  else if (v97 < 0x4000)
  {
    v99 = 2;
  }

  else
  {
    v96 = v97 >> 30;
    if (v97 >> 30)
    {
      if (v97 >> 62)
      {
        goto LABEL_916;
      }

      v99 = 8;
    }

    else
    {
      v99 = 4;
    }
  }

  v126 = v99;
  if (!*(v94 + 16))
  {
    goto LABEL_909;
  }

  v100 = *(v94 + 40);
  if (v100 < 0x40)
  {
    v101 = 1;
  }

  else if (v100 < 0x4000)
  {
    v101 = 2;
  }

  else
  {
    v96 = v100 >> 30;
    if (v100 >> 30)
    {
      if (v100 >> 62)
      {
        goto LABEL_916;
      }

      v101 = 8;
    }

    else
    {
      v101 = 4;
    }
  }

  v125 = v101;
  v127 = MEMORY[0x1E69E7CC0];
  if (v95 < 1)
  {
LABEL_910:
    __break(1u);
LABEL_911:
    __break(1u);
    goto LABEL_912;
  }

  if (v95 == 1)
  {
    v102 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v122 = v9;
    v123 = v10;
    v124 = v4;
    v103 = v14;
    v14 = v15;
    v10 = v94 + 56;
    v9 = 1;
    do
    {
      if (v98 == v9)
      {
        goto LABEL_873;
      }

      if (*(v94 + 16) <= v9)
      {
        goto LABEL_874;
      }

      v106 = *(v10 - 8);
      if (v106 < 0x40)
      {
        v107 = 1;
      }

      else if (v106 < 0x4000)
      {
        v107 = 2;
      }

      else if (v106 >> 30)
      {
        if (v106 >> 62)
        {
          goto LABEL_916;
        }

        v107 = 8;
      }

      else
      {
        v107 = 4;
      }

      v108 = *v10;
      if (*v10 < 0x40uLL)
      {
        v104 = 1;
      }

      else if (v108 < 0x4000)
      {
        v104 = 2;
      }

      else if (v108 >> 30)
      {
        if (v108 >> 62)
        {
          goto LABEL_916;
        }

        v104 = 8;
      }

      else
      {
        v104 = 4;
      }

      ++v9;
      sub_18208A574();
      v15 = *(v127 + 16);
      sub_18208A5C0(v15);
      v105 = sub_18208A604(v15, v104 + v107);
      nullsub_41(v105);
      v10 += 16;
    }

    while (v98 != v9);
    v102 = v127;
    v15 = v14;
    v14 = v103;
    v10 = v123;
    v4 = v124;
    v9 = v122;
  }

  v109 = sub_182296F2C(v102);
  if (!v109)
  {

    v112 = v4[7];
    v113 = v4[8];
    v114 = v4[9];
    if (v112 >= 64)
    {
      if (v112 >= 0x4000)
      {
        if (!(v112 >> 30))
        {
          if (v113 >= 64)
          {
            if (v113 >= 0x4000)
            {
              if (!(v113 >> 30))
              {
                if (v114 >= 64)
                {
                  if (v114 < 0x4000)
                  {
                    v94 = 0;
                    goto LABEL_907;
                  }

                  v94 = 0;
LABEL_879:
                  v96 = 4;
                  v115 = 4;
                  v116 = 4;
                  if (!(v114 >> 30))
                  {
                    goto LABEL_896;
                  }

                  goto LABEL_856;
                }

                v94 = 0;
LABEL_905:
                v96 = 4;
                v116 = 1;
                v115 = 4;
                goto LABEL_896;
              }

              v94 = 0;
              goto LABEL_783;
            }

            if (v114 >= 64)
            {
              if (v114 < 0x4000)
              {
                v94 = 0;
                v115 = 4;
                goto LABEL_860;
              }

              v94 = 0;
LABEL_854:
              v115 = 4;
              v96 = 2;
LABEL_855:
              v116 = 4;
              if (!(v114 >> 30))
              {
                goto LABEL_896;
              }

              goto LABEL_856;
            }

            v94 = 0;
            goto LABEL_894;
          }

          if (v114 >= 64)
          {
            if (v114 < 0x4000)
            {
              v94 = 0;
LABEL_888:
              v115 = 4;
LABEL_889:
              v96 = 1;
              v116 = 2;
              goto LABEL_896;
            }

            v94 = 0;
LABEL_833:
            v115 = 4;
            v96 = 1;
            goto LABEL_855;
          }

          v94 = 0;
          goto LABEL_870;
        }

        v94 = 0;
LABEL_741:
        if (v112 >> 62)
        {
          goto LABEL_916;
        }

        if (v113 >= 64)
        {
          if (v113 >= 0x4000)
          {
            if (v113 >> 30)
            {
              v115 = 8;
              goto LABEL_784;
            }

            v115 = 8;
            if (v114 >= 64)
            {
              if (v114 < 0x4000)
              {
                goto LABEL_883;
              }

LABEL_850:
              v96 = 4;
              goto LABEL_855;
            }

LABEL_892:
            v96 = 4;
            v116 = 1;
            goto LABEL_896;
          }

          v115 = 8;
          if (v114 < 64)
          {
LABEL_895:
            v96 = 2;
            v116 = 1;
            goto LABEL_896;
          }

          if (v114 < 0x4000)
          {
LABEL_860:
            v116 = 2;
            v96 = 2;
            goto LABEL_896;
          }

          goto LABEL_794;
        }

        v115 = 8;
        if (v114 >= 64)
        {
          if (v114 < 0x4000)
          {
            goto LABEL_889;
          }

          goto LABEL_800;
        }

LABEL_871:
        v116 = 1;
        v96 = 1;
        goto LABEL_896;
      }

      if (v113 >= 64)
      {
        if (v113 >= 0x4000)
        {
          if (v113 >> 30)
          {
            v94 = 0;
            v115 = 2;
            goto LABEL_784;
          }

          if (v114 >= 64)
          {
            if (v114 < 0x4000)
            {
              v94 = 0;
LABEL_902:
              v96 = 4;
              goto LABEL_863;
            }

            v94 = 0;
LABEL_849:
            v115 = 2;
            goto LABEL_850;
          }

          v94 = 0;
LABEL_891:
          v115 = 2;
          goto LABEL_892;
        }

        if (v114 >= 64)
        {
          if (v114 >= 0x4000)
          {
            v94 = 0;
            goto LABEL_826;
          }

          v94 = 0;
LABEL_885:
          v116 = 2;
          v96 = 2;
          goto LABEL_886;
        }

        v94 = 0;
LABEL_868:
        v96 = 2;
        v116 = 1;
        goto LABEL_886;
      }

      if (v114 < 64)
      {
        v94 = 0;
        v115 = 2;
        goto LABEL_871;
      }

      if (v114 < 0x4000)
      {
        v94 = 0;
        goto LABEL_862;
      }

      v94 = 0;
LABEL_799:
      v115 = 2;
LABEL_800:
      v96 = 1;
      if (!(v114 >> 30))
      {
        goto LABEL_801;
      }

      goto LABEL_856;
    }

    if (v113 >= 64)
    {
      if (v113 >= 0x4000)
      {
        if (v113 >> 30)
        {
          v94 = 0;
          v115 = 1;
          goto LABEL_784;
        }

        if (v114 >= 64)
        {
          if (v114 < 0x4000)
          {
            v94 = 0;
LABEL_882:
            v115 = 1;
LABEL_883:
            v96 = 4;
            v116 = 2;
            goto LABEL_896;
          }

          v94 = 0;
LABEL_822:
          v115 = 1;
          goto LABEL_850;
        }

        v94 = 0;
        goto LABEL_865;
      }

      if (v114 >= 64)
      {
        if (v114 >= 0x4000)
        {
          v94 = 0;
LABEL_793:
          v115 = 1;
LABEL_794:
          v96 = 2;
          if (!(v114 >> 30))
          {
            goto LABEL_801;
          }

LABEL_856:
          if (!(v114 >> 62))
          {
            v116 = 8;
            goto LABEL_896;
          }

          while (1)
          {
LABEL_916:
            sub_182AD3EA8();
            __break(1u);
          }
        }

        v94 = 0;
LABEL_859:
        v115 = 1;
        goto LABEL_860;
      }

      v94 = 0;
LABEL_835:
      v96 = 2;
LABEL_866:
      v116 = 1;
      v115 = 1;
      goto LABEL_896;
    }

    if (v114 >= 64)
    {
      if (v114 < 0x4000)
      {
        v94 = 0;
LABEL_829:
        v96 = 1;
        v116 = 2;
        v115 = 1;
        goto LABEL_896;
      }

      v94 = 0;
LABEL_768:
      v96 = 1;
      if (!(v114 >> 30))
      {
        v116 = 4;
        v115 = 1;
        goto LABEL_896;
      }

      v115 = 1;
      goto LABEL_856;
    }

    v94 = 0;
LABEL_803:
    v116 = 1;
    v96 = 1;
    v115 = 1;
    goto LABEL_896;
  }

  if (v109 < 1)
  {
LABEL_915:
    __break(1u);
    goto LABEL_916;
  }

  v94 = 0;
  v110 = 32;
  do
  {
    v96 = *(v102 + v110);
    v111 = __OFADD__(v94, v96);
    v94 += v96;
    if (v111)
    {
      __break(1u);
LABEL_873:
      __break(1u);
LABEL_874:
      __break(1u);
LABEL_875:
      v116 = 4;
      goto LABEL_886;
    }

    v110 += 8;
    --v109;
  }

  while (v109);

  v112 = v4[7];
  v113 = v4[8];
  v114 = v4[9];
  if (v112 <= 63)
  {
    if (v113 > 63)
    {
      if (v113 >> 14)
      {
        if (v113 >> 30)
        {
          v115 = 1;
          goto LABEL_784;
        }

        if (v114 >= 64)
        {
          if (v114 < 0x4000)
          {
            goto LABEL_882;
          }

          goto LABEL_822;
        }

LABEL_865:
        v96 = 4;
        goto LABEL_866;
      }

      if (v114 >= 64)
      {
        if (v114 >= 0x4000)
        {
          goto LABEL_793;
        }

        goto LABEL_859;
      }

      goto LABEL_835;
    }

    if (v114 >= 64)
    {
      if (v114 < 0x4000)
      {
        goto LABEL_829;
      }

      goto LABEL_768;
    }

    goto LABEL_803;
  }

  if (v112 < 0x4000)
  {
    if (v113 >= 64)
    {
      if (v113 >= 0x4000)
      {
        if (v113 >> 30)
        {
          v115 = 2;
          goto LABEL_784;
        }

        if (v114 >= 64)
        {
          if (v114 < 0x4000)
          {
            goto LABEL_902;
          }

          goto LABEL_849;
        }

        goto LABEL_891;
      }

      if (v114 >= 64)
      {
        if (v114 >= 0x4000)
        {
LABEL_826:
          v96 = 2;
          if (v114 >> 30)
          {
            v115 = 2;
            goto LABEL_856;
          }

          goto LABEL_875;
        }

        goto LABEL_885;
      }

      goto LABEL_868;
    }

    if (v114 < 64)
    {
      v115 = 2;
      goto LABEL_871;
    }

    if (v114 < 0x4000)
    {
LABEL_862:
      v96 = 1;
LABEL_863:
      v116 = 2;
LABEL_886:
      v115 = 2;
      goto LABEL_896;
    }

    goto LABEL_799;
  }

  if (v112 >> 30)
  {
    goto LABEL_741;
  }

  if (v113 < 64)
  {
    if (v114 >= 64)
    {
      if (v114 < 0x4000)
      {
        goto LABEL_888;
      }

      goto LABEL_833;
    }

LABEL_870:
    v115 = 4;
    goto LABEL_871;
  }

  if (v113 < 0x4000)
  {
    if (v114 >= 64)
    {
      if (v114 < 0x4000)
      {
        v115 = 4;
        goto LABEL_860;
      }

      goto LABEL_854;
    }

LABEL_894:
    v115 = 4;
    goto LABEL_895;
  }

  if (v113 >> 30)
  {
LABEL_783:
    v115 = 4;
LABEL_784:
    if (v113 >> 62)
    {
      goto LABEL_916;
    }

    v96 = 8;
    if (v114 < 64)
    {
      v116 = 1;
      goto LABEL_896;
    }

    if (v114 < 0x4000)
    {
      v116 = 2;
      goto LABEL_896;
    }

    if (v114 >> 30)
    {
      goto LABEL_856;
    }

LABEL_801:
    v116 = 4;
    goto LABEL_896;
  }

  if (v114 < 64)
  {
    goto LABEL_905;
  }

  if (v114 >= 0x4000)
  {
    goto LABEL_879;
  }

LABEL_907:
  v96 = 4;
  v116 = 2;
  v115 = 4;
LABEL_896:
  v117 = v10 + v9 + v15 + v14 + v126 + v125;
  v111 = __OFADD__(v117, v94);
  v118 = v117 + v94;
  if (v111)
  {
    goto LABEL_911;
  }

  v111 = __OFADD__(v118, v115);
  v119 = v118 + v115;
  if (v111)
  {
LABEL_912:
    __break(1u);
    goto LABEL_913;
  }

  v111 = __OFADD__(v119, v96);
  v120 = v119 + v96;
  if (v111)
  {
LABEL_913:
    __break(1u);
    goto LABEL_914;
  }

  result = v120 + v116;
  if (__OFADD__(v120, v116))
  {
LABEL_914:
    __break(1u);
    goto LABEL_915;
  }

  return result;
}

uint64_t sub_1821178A0(uint64_t a1, unint64_t a2, char a3, unint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    v5 = a2 + 8;
    if (a2 >= 0xFFFFFFFFFFFFFFF8)
    {
      __break(1u);
      goto LABEL_55;
    }

    if (v5 >= 0x40)
    {
      if (v5 < 0x4000)
      {
        goto LABEL_24;
      }

      if (v5 >> 30)
      {
        if (v5 >> 62)
        {
          goto LABEL_55;
        }

        if (a4 < 0x40)
        {
          v7 = 8;
          v6 = 1;
          goto LABEL_44;
        }

        if (a4 < 0x4000)
        {
          v7 = 8;
          v6 = 2;
          goto LABEL_44;
        }

        if (a4 >> 30)
        {
          if (a4 >> 62)
          {
            goto LABEL_55;
          }

          v6 = 8;
          v7 = 8;
          goto LABEL_44;
        }

        v7 = 8;
        goto LABEL_30;
      }

LABEL_31:
      if (a4 < 0x40)
      {
        v7 = 4;
        v6 = 1;
        goto LABEL_44;
      }

      if (a4 < 0x4000)
      {
        v7 = 4;
        v6 = 2;
        goto LABEL_44;
      }

      if (!(a4 >> 30))
      {
        v6 = 4;
        v7 = 4;
        goto LABEL_44;
      }

      if (a4 >> 62)
      {
        goto LABEL_55;
      }

      v7 = 4;
      goto LABEL_21;
    }

LABEL_16:
    if (a4 < 0x40)
    {
      v6 = 1;
      v7 = 1;
      goto LABEL_44;
    }

    if (a4 < 0x4000)
    {
      v7 = 1;
      v6 = 2;
      goto LABEL_44;
    }

    if (a4 >> 30)
    {
      if (a4 >> 62)
      {
        goto LABEL_55;
      }

      v7 = 1;
      goto LABEL_21;
    }

    v7 = 1;
LABEL_30:
    v6 = 4;
    goto LABEL_44;
  }

  if (a3 == 1 || a2 < 0x17)
  {
    goto LABEL_16;
  }

  if (a2 - 25 < 4)
  {
    goto LABEL_31;
  }

LABEL_24:
  if (a4 < 0x40)
  {
    v7 = 2;
    v6 = 1;
    goto LABEL_44;
  }

  if (a4 < 0x4000)
  {
    v6 = 2;
    v7 = 2;
    goto LABEL_44;
  }

  if (!(a4 >> 30))
  {
    v7 = 2;
    goto LABEL_30;
  }

  if (a4 >> 62)
  {
    goto LABEL_55;
  }

  v7 = 2;
LABEL_21:
  v6 = 8;
LABEL_44:
  v8 = *(a5 + 16);
  if (v8 < 0x40)
  {
    v9 = 1;
    return v7 + v6 + v9 + v8;
  }

  if (v8 < 0x4000)
  {
    v9 = 2;
    return v7 + v6 + v9 + v8;
  }

  if (!(v8 >> 30))
  {
    v9 = 4;
    return v7 + v6 + v9 + v8;
  }

  if (!(v8 >> 62))
  {
    v9 = 8;
    return v7 + v6 + v9 + v8;
  }

LABEL_55:
  result = sub_182AD3EA8();
  __break(1u);
  return result;
}

uint64_t sub_182117AEC(uint64_t a1, unint64_t *a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = *a2;
  if (*a2 < 0x40)
  {
    if (a3 > 0x3F)
    {
      if (a3 >> 14)
      {
        if (a3 >> 30)
        {
          if (a3 >> 62)
          {
            goto LABEL_573;
          }

          if (!a4)
          {
            if (a5 >= 64)
            {
              if (a5 < 0x4000)
              {
                v6 = 0;
                v8 = 1;
                goto LABEL_339;
              }

              v6 = 0;
              v8 = 1;
              goto LABEL_260;
            }

            v6 = 0;
            v7 = 8;
            goto LABEL_481;
          }

          if (a4 > 0x3F)
          {
            if (a4 >> 14)
            {
              if (a4 >> 30)
              {
                if (a4 >> 62)
                {
                  goto LABEL_573;
                }

                if (a5 < 64)
                {
                  v6 = 8;
                  v9 = 1;
                  v7 = 8;
                  v8 = 1;
                  return v6 + v9 + v7 + v8;
                }

                v8 = 1;
                if (a5 < 0x4000)
                {
                  goto LABEL_29;
                }

                goto LABEL_42;
              }

              if (a5 >= 64)
              {
                v8 = 1;
                if (a5 < 0x4000)
                {
                  v7 = 8;
                  v6 = 4;
                  v9 = 2;
                  return v6 + v9 + v7 + v8;
                }

                goto LABEL_456;
              }

              v7 = 8;
              goto LABEL_480;
            }

            if (a5 >= 64)
            {
              v8 = 1;
              if (a5 >= 0x4000)
              {
                v7 = 8;
                goto LABEL_315;
              }

LABEL_464:
              v7 = 8;
              goto LABEL_465;
            }

            v7 = 8;
            v6 = 2;
            goto LABEL_481;
          }

          v7 = 8;
          if (a5 >= 64)
          {
            if (a5 >= 0x4000)
            {
LABEL_222:
              v6 = 1;
              if (!(a5 >> 30))
              {
                goto LABEL_223;
              }

              goto LABEL_137;
            }

            goto LABEL_302;
          }

LABEL_224:
          v9 = 1;
          v6 = 1;
          v8 = 1;
          return v6 + v9 + v7 + v8;
        }

        if (!a4)
        {
          if (a5 >= 64)
          {
            if (a5 < 0x4000)
            {
              v6 = 0;
              v8 = 1;
              goto LABEL_327;
            }

            v6 = 0;
            v8 = 1;
            goto LABEL_345;
          }

          v6 = 0;
          v7 = 4;
          goto LABEL_481;
        }

        if (a4 >= 0x40)
        {
          if (a4 < 0x4000)
          {
            if (a5 >= 64)
            {
              v8 = 1;
              if (a5 >= 0x4000)
              {
LABEL_276:
                v7 = 4;
LABEL_286:
                v6 = 2;
                goto LABEL_457;
              }

              v7 = 4;
LABEL_465:
              v9 = 2;
              v6 = 2;
              return v6 + v9 + v7 + v8;
            }

            v7 = 4;
            v6 = 2;
          }

          else
          {
            if (!(a4 >> 30))
            {
              if (a5 < 64)
              {
                v6 = 4;
                v9 = 1;
                v7 = 4;
                v8 = 1;
                return v6 + v9 + v7 + v8;
              }

              v8 = 1;
              if (a5 >= 0x4000)
              {
                goto LABEL_519;
              }

              v6 = 4;
              goto LABEL_521;
            }

            if (a4 >> 62)
            {
              goto LABEL_573;
            }

            if (a5 >= 64)
            {
              v8 = 1;
              if (a5 < 0x4000)
              {
                v7 = 4;
                v6 = 8;
                v9 = 2;
                return v6 + v9 + v7 + v8;
              }

              goto LABEL_154;
            }

            v7 = 4;
            v6 = 8;
          }

          goto LABEL_481;
        }

        v7 = 4;
        if (a5 < 64)
        {
          goto LABEL_224;
        }

        if (a5 < 0x4000)
        {
LABEL_302:
          v6 = 1;
          goto LABEL_303;
        }

        v6 = 1;
LABEL_209:
        v10 = a5 >> 30;
        v8 = 1;
        goto LABEL_458;
      }

      if (a4)
      {
        if (a4 >= 0x40)
        {
          if (a4 >= 0x4000)
          {
            if (!(a4 >> 30))
            {
              if (a5 >= 64)
              {
                v8 = 1;
LABEL_270:
                if (a5 >= 0x4000)
                {
                  v7 = 2;
                  v6 = 4;
                  goto LABEL_457;
                }

                v6 = 4;
LABEL_467:
                v9 = 2;
                v7 = 2;
                return v6 + v9 + v7 + v8;
              }

              v7 = 2;
LABEL_480:
              v6 = 4;
              goto LABEL_481;
            }

            if (a4 >> 62)
            {
              goto LABEL_573;
            }

            if (a5 >= 64)
            {
              v8 = 1;
              if (a5 < 0x4000)
              {
                v6 = 8;
                goto LABEL_467;
              }

              v7 = 2;
              goto LABEL_81;
            }

            v7 = 2;
            v6 = 8;
LABEL_481:
            v9 = 1;
            v8 = 1;
            return v6 + v9 + v7 + v8;
          }

          if (a5 >= 64)
          {
            v8 = 1;
            if (a5 >= 0x4000)
            {
              goto LABEL_197;
            }

            goto LABEL_405;
          }

          v6 = 2;
          goto LABEL_298;
        }

        if (a5 < 64)
        {
          v7 = 2;
          goto LABEL_224;
        }

        if (a5 >= 0x4000)
        {
          v7 = 2;
          goto LABEL_222;
        }

        v6 = 1;
        v9 = 2;
      }

      else
      {
        if (a5 < 64)
        {
          v6 = 0;
LABEL_298:
          v9 = 1;
          goto LABEL_299;
        }

        if (a5 >= 0x4000)
        {
          v6 = 0;
          v8 = 1;
          goto LABEL_127;
        }

        v6 = 0;
        v9 = 2;
      }

LABEL_299:
      v7 = 2;
      v8 = 1;
      return v6 + v9 + v7 + v8;
    }

    if (a4)
    {
      if (a4 < 0x40)
      {
        if (a5 < 64)
        {
          v9 = 1;
          v6 = 1;
        }

        else
        {
          v6 = 1;
          if (a5 < 0x4000)
          {
            v9 = 2;
          }

          else
          {
            if (a5 >> 30)
            {
              v7 = 1;
              goto LABEL_137;
            }

            v9 = 4;
          }
        }
      }

      else
      {
        if (a4 < 0x4000)
        {
          if (a5 < 64)
          {
            v8 = 1;
            goto LABEL_317;
          }

          if (a5 < 0x4000)
          {
            v8 = 1;
            v9 = 2;
LABEL_318:
            v6 = 2;
            v7 = 1;
            return v6 + v9 + v7 + v8;
          }

          v7 = 1;
          v6 = 2;
LABEL_136:
          if (!(a5 >> 30))
          {
LABEL_223:
            v9 = 4;
            v8 = 1;
            return v6 + v9 + v7 + v8;
          }

LABEL_137:
          v8 = 1;
          if (a5 >> 62)
          {
            goto LABEL_573;
          }

          goto LABEL_460;
        }

        if (!(a4 >> 30))
        {
          if (a5 < 64)
          {
            v8 = 1;
            goto LABEL_448;
          }

          if (a5 < 0x4000)
          {
            v8 = 1;
            v9 = 2;
            goto LABEL_449;
          }

          v7 = 1;
          v6 = 4;
          goto LABEL_209;
        }

        if (a4 >> 62)
        {
          goto LABEL_573;
        }

        if (a5 < 64)
        {
          v9 = 1;
        }

        else
        {
          if (a5 >= 0x4000)
          {
            v7 = 1;
            v6 = 8;
            goto LABEL_136;
          }

          v9 = 2;
        }

        v6 = 8;
      }
    }

    else
    {
      if (a5 >= 64)
      {
        if (a5 >= 0x4000)
        {
          v6 = 0;
          v7 = 1;
          if (!(a5 >> 30))
          {
            goto LABEL_223;
          }

          goto LABEL_137;
        }

        v6 = 0;
        v7 = 1;
LABEL_303:
        v9 = 2;
        v8 = 1;
        return v6 + v9 + v7 + v8;
      }

      v6 = 0;
      v9 = 1;
    }

    v7 = 1;
    v8 = 1;
    return v6 + v9 + v7 + v8;
  }

  if (v5 < 0x4000)
  {
    if (a3 >= 0x40)
    {
      if (a3 >= 0x4000)
      {
        if (a3 >> 30)
        {
          if (a3 >> 62)
          {
            goto LABEL_573;
          }

          if (a4)
          {
            if (a4 >= 0x40)
            {
              if (a4 >= 0x4000)
              {
                if (a4 >> 30)
                {
                  if (a4 >> 62)
                  {
                    goto LABEL_573;
                  }

                  if (a5 < 64)
                  {
                    v8 = 2;
                    goto LABEL_532;
                  }

                  if (a5 < 0x4000)
                  {
                    v6 = 8;
                    v9 = 2;
                    v7 = 8;
                    v8 = 2;
                    return v6 + v9 + v7 + v8;
                  }

                  v8 = 2;
LABEL_42:
                  v6 = 8;
                  if (!(a5 >> 30))
                  {
                    v9 = 4;
                    v7 = 8;
                    return v6 + v9 + v7 + v8;
                  }

                  v7 = 8;
                  if (!(a5 >> 62))
                  {
                    goto LABEL_460;
                  }

                  goto LABEL_573;
                }

                if (a5 < 64)
                {
                  v8 = 2;
                  v7 = 8;
                  goto LABEL_523;
                }

                if (a5 >= 0x4000)
                {
                  v8 = 2;
LABEL_456:
                  v7 = 8;
                  v6 = 4;
                  goto LABEL_457;
                }

                v7 = 8;
                v6 = 4;
LABEL_478:
                v9 = 2;
                v8 = 2;
                return v6 + v9 + v7 + v8;
              }

              v7 = 8;
              if (a5 >= 64)
              {
                if (a5 < 0x4000)
                {
                  goto LABEL_390;
                }

LABEL_203:
                v6 = 2;
                if (!(a5 >> 30))
                {
                  goto LABEL_213;
                }

LABEL_281:
                v8 = 2;
                if (a5 >> 62)
                {
                  goto LABEL_573;
                }

                goto LABEL_460;
              }

              goto LABEL_391;
            }

            if (a5 < 64)
            {
              v8 = 2;
              goto LABEL_412;
            }

            if (a5 >= 0x4000)
            {
              v8 = 2;
              v7 = 8;
              goto LABEL_322;
            }

            v7 = 8;
LABEL_477:
            v6 = 1;
            goto LABEL_478;
          }

          if (a5 < 64)
          {
            v6 = 0;
            v8 = 2;
            goto LABEL_429;
          }

          if (a5 < 0x4000)
          {
            v6 = 0;
            v7 = 8;
            goto LABEL_478;
          }

          v6 = 0;
          v8 = 2;
LABEL_260:
          v7 = 8;
          if (!(a5 >> 30))
          {
            goto LABEL_323;
          }

LABEL_459:
          if (a5 >> 62)
          {
            goto LABEL_573;
          }

LABEL_460:
          v9 = 8;
          return v6 + v9 + v7 + v8;
        }

        if (a4)
        {
          if (a4 <= 0x3F)
          {
            if (a5 < 64)
            {
              v8 = 2;
              v7 = 4;
              goto LABEL_414;
            }

            if (a5 >= 0x4000)
            {
              v8 = 2;
LABEL_408:
              v7 = 4;
LABEL_409:
              v6 = 1;
              goto LABEL_457;
            }

            v7 = 4;
            goto LABEL_477;
          }

          if (a4 >> 14)
          {
            if (!(a4 >> 30))
            {
              if (a5 >= 64)
              {
                if (a5 < 0x4000)
                {
                  v6 = 4;
                  v9 = 2;
                  v7 = 4;
                  v8 = 2;
                  return v6 + v9 + v7 + v8;
                }

                v8 = 2;
                goto LABEL_519;
              }

              v8 = 2;
              v6 = 4;
              goto LABEL_507;
            }

            if (a4 >> 62)
            {
              goto LABEL_573;
            }

            if (a5 < 64)
            {
              v8 = 2;
              v7 = 4;
              v6 = 8;
              v9 = 1;
              return v6 + v9 + v7 + v8;
            }

            if (a5 < 0x4000)
            {
              v7 = 4;
              v6 = 8;
              goto LABEL_478;
            }

            v8 = 2;
LABEL_154:
            v7 = 4;
            v6 = 8;
            goto LABEL_457;
          }

          v7 = 4;
          if (a5 < 64)
          {
LABEL_391:
            v6 = 2;
            goto LABEL_470;
          }

          if (a5 < 0x4000)
          {
LABEL_390:
            v9 = 2;
            v6 = 2;
            v8 = 2;
            return v6 + v9 + v7 + v8;
          }

          v6 = 2;
LABEL_366:
          v10 = a5 >> 30;
          v8 = 2;
          goto LABEL_458;
        }

        if (a5 < 64)
        {
          v6 = 0;
          v8 = 2;
          goto LABEL_431;
        }

        if (a5 < 0x4000)
        {
          v6 = 0;
          v7 = 4;
          goto LABEL_478;
        }

        v6 = 0;
        v8 = 2;
LABEL_345:
        v7 = 4;
        goto LABEL_457;
      }

      if (a4)
      {
        if (a4 >= 0x40)
        {
          if (a4 < 0x4000)
          {
            if (a5 < 64)
            {
              v6 = 2;
              v9 = 1;
            }

            else if (a5 < 0x4000)
            {
              v9 = 2;
              v6 = 2;
            }

            else
            {
              v6 = 2;
              if (a5 >> 30)
              {
                v7 = 2;
                goto LABEL_281;
              }

              v9 = 4;
            }

LABEL_503:
            v7 = 2;
            v8 = 2;
            return v6 + v9 + v7 + v8;
          }

          if (a4 >> 30)
          {
            if (a4 >> 62)
            {
              goto LABEL_573;
            }

            if (a5 < 64)
            {
              v7 = 2;
              v6 = 8;
              goto LABEL_470;
            }

            if (a5 >= 0x4000)
            {
              v7 = 2;
              v6 = 8;
              if (a5 >> 30)
              {
                goto LABEL_281;
              }

              goto LABEL_213;
            }

            v6 = 8;
          }

          else
          {
            if (a5 < 64)
            {
              v7 = 2;
              v6 = 4;
              goto LABEL_470;
            }

            if (a5 >= 0x4000)
            {
              v7 = 2;
              v6 = 4;
              goto LABEL_366;
            }

            v6 = 4;
          }

LABEL_374:
          v9 = 2;
          goto LABEL_503;
        }

        if (a5 < 64)
        {
          v7 = 2;
          v9 = 1;
          v6 = 1;
          v8 = 2;
          return v6 + v9 + v7 + v8;
        }

        if (a5 < 0x4000)
        {
          v6 = 1;
          goto LABEL_374;
        }

        v7 = 2;
        v6 = 1;
        if (a5 >> 30)
        {
          goto LABEL_281;
        }
      }

      else
      {
        if (a5 < 64)
        {
          v6 = 0;
          v7 = 2;
LABEL_470:
          v9 = 1;
          v8 = 2;
          return v6 + v9 + v7 + v8;
        }

        if (a5 < 0x4000)
        {
          v6 = 0;
          goto LABEL_374;
        }

        v6 = 0;
        v7 = 2;
        if (a5 >> 30)
        {
          goto LABEL_281;
        }
      }

LABEL_213:
      v9 = 4;
      v8 = 2;
      return v6 + v9 + v7 + v8;
    }

    if (!a4)
    {
      if (a5 < 64)
      {
        v6 = 0;
        v8 = 2;
        goto LABEL_267;
      }

      if (a5 >= 0x4000)
      {
        v6 = 0;
        v8 = 2;
        goto LABEL_190;
      }

      v6 = 0;
      v7 = 1;
      goto LABEL_478;
    }

    if (a4 <= 0x3F)
    {
      if (a5 >= 64)
      {
        if (a5 < 0x4000)
        {
          v6 = 1;
          v9 = 2;
          v7 = 1;
          v8 = 2;
          return v6 + v9 + v7 + v8;
        }

        v8 = 2;
        goto LABEL_227;
      }

      v8 = 2;
      goto LABEL_230;
    }

    if (!(a4 >> 14))
    {
      if (a5 < 64)
      {
        v8 = 2;
        goto LABEL_317;
      }

      if (a5 < 0x4000)
      {
        v8 = 2;
LABEL_372:
        v9 = 2;
        goto LABEL_318;
      }

      v7 = 1;
      goto LABEL_203;
    }

    if (!(a4 >> 30))
    {
      v8 = 2;
      goto LABEL_400;
    }

    if (a4 >> 62)
    {
      goto LABEL_573;
    }

    v8 = 2;
    if (a5 < 64)
    {
      goto LABEL_325;
    }

    if (a5 < 0x4000)
    {
LABEL_419:
      v9 = 2;
      goto LABEL_420;
    }

    v7 = 1;
LABEL_81:
    v6 = 8;
    if (a5 >> 30)
    {
      goto LABEL_459;
    }

    goto LABEL_323;
  }

  if (!(v5 >> 30))
  {
    if (a3 >= 0x40)
    {
      if (a3 >= 0x4000)
      {
        if (!(a3 >> 30))
        {
          if (a4)
          {
            if (a4 < 0x40)
            {
              v7 = 4;
              if (a5 < 64)
              {
                v9 = 1;
                v6 = 1;
                v8 = 4;
                return v6 + v9 + v7 + v8;
              }

              v6 = 1;
            }

            else
            {
              if (a4 < 0x4000)
              {
                v7 = 4;
                if (a5 >= 64)
                {
                  if (a5 < 0x4000)
                  {
                    v9 = 2;
                    v6 = 2;
                    v8 = 4;
                    return v6 + v9 + v7 + v8;
                  }

                  v6 = 2;
                  goto LABEL_513;
                }

                v6 = 2;
                goto LABEL_550;
              }

              if (!(a4 >> 30))
              {
                v6 = 4;
                if (a5 < 64)
                {
                  v9 = 1;
                }

                else
                {
                  if (a5 >= 0x4000)
                  {
                    v10 = a5 >> 30;
                    v7 = 4;
                    v8 = 4;
                    goto LABEL_458;
                  }

                  v9 = 2;
                }

                v7 = 4;
                v8 = 4;
                return v6 + v9 + v7 + v8;
              }

              if (a4 >> 62)
              {
                goto LABEL_573;
              }

              v7 = 4;
              v6 = 8;
              if (a5 < 64)
              {
                goto LABEL_550;
              }
            }

            if (a5 >= 0x4000)
            {
              goto LABEL_513;
            }

            goto LABEL_495;
          }

          if (a5 >= 64)
          {
            if (a5 >= 0x4000)
            {
              v6 = 0;
              v7 = 4;
LABEL_513:
              v10 = a5 >> 30;
              v8 = 4;
              goto LABEL_458;
            }

            v6 = 0;
            v7 = 4;
            goto LABEL_495;
          }

          v6 = 0;
          v7 = 4;
LABEL_550:
          v9 = 1;
          v8 = 4;
          return v6 + v9 + v7 + v8;
        }

        if (a3 >> 62)
        {
          goto LABEL_573;
        }

        if (a4)
        {
          if (a4 >= 0x40)
          {
            if (a4 >= 0x4000)
            {
              if (a4 >> 30)
              {
                if (a4 >> 62)
                {
                  goto LABEL_573;
                }

                v8 = 4;
                if (a5 >= 64)
                {
                  if (a5 >= 0x4000)
                  {
                    v6 = 8;
                    v10 = a5 >> 30;
                    v7 = 8;
                    goto LABEL_458;
                  }

LABEL_29:
                  v6 = 8;
                  v9 = 2;
                  v7 = 8;
                  return v6 + v9 + v7 + v8;
                }

LABEL_532:
                v6 = 8;
                v9 = 1;
                v7 = 8;
                return v6 + v9 + v7 + v8;
              }

              v7 = 8;
              if (a5 >= 64)
              {
                if (a5 >= 0x4000)
                {
                  goto LABEL_512;
                }

                v6 = 4;
LABEL_495:
                v9 = 2;
                v8 = 4;
                return v6 + v9 + v7 + v8;
              }

              v6 = 4;
              goto LABEL_550;
            }

            v8 = 4;
            if (a5 < 64)
            {
              v7 = 8;
              v6 = 2;
              v9 = 1;
              return v6 + v9 + v7 + v8;
            }

            if (a5 >= 0x4000)
            {
              v7 = 8;
              goto LABEL_286;
            }

            goto LABEL_464;
          }

          v8 = 4;
          if (a5 >= 64)
          {
            v7 = 8;
            if (a5 < 0x4000)
            {
              v6 = 1;
              v9 = 2;
              return v6 + v9 + v7 + v8;
            }

            goto LABEL_409;
          }

LABEL_412:
          v7 = 8;
          goto LABEL_414;
        }

        if (a5 >= 64)
        {
          if (a5 >= 0x4000)
          {
            v6 = 0;
            v8 = 4;
            v7 = 8;
            goto LABEL_457;
          }

          v6 = 0;
          v8 = 4;
LABEL_339:
          v7 = 8;
          v9 = 2;
          return v6 + v9 + v7 + v8;
        }

        v6 = 0;
        v8 = 4;
LABEL_429:
        v7 = 8;
        v9 = 1;
        return v6 + v9 + v7 + v8;
      }

      if (a4)
      {
        if (a4 < 0x40)
        {
          v8 = 4;
          if (a5 < 64)
          {
            v6 = 1;
            goto LABEL_483;
          }

          if (a5 >= 0x4000)
          {
            v7 = 2;
            v6 = 1;
            goto LABEL_457;
          }

          goto LABEL_384;
        }

        if (a4 >= 0x4000)
        {
          if (!(a4 >> 30))
          {
            if (a5 < 64)
            {
              v8 = 4;
              v9 = 1;
            }

            else
            {
              if (a5 >= 0x4000)
              {
                v7 = 2;
LABEL_512:
                v6 = 4;
                goto LABEL_513;
              }

              v8 = 4;
              v9 = 2;
            }

            v6 = 4;
            v7 = 2;
            return v6 + v9 + v7 + v8;
          }

          if (a4 >> 62)
          {
            goto LABEL_573;
          }

          if (a5 < 64)
          {
            v9 = 1;
          }

          else
          {
            if (a5 >= 0x4000)
            {
              v8 = 4;
              v7 = 2;
              v6 = 8;
              goto LABEL_457;
            }

            v9 = 2;
          }

          v6 = 8;
          v7 = 2;
          v8 = 4;
          return v6 + v9 + v7 + v8;
        }

        v8 = 4;
        if (a5 < 64)
        {
          v9 = 1;
          goto LABEL_451;
        }

        if (a5 >= 0x4000)
        {
          v6 = 2;
          v10 = a5 >> 30;
          v7 = 2;
          goto LABEL_458;
        }

LABEL_405:
        v9 = 2;
LABEL_451:
        v6 = 2;
        v7 = 2;
        return v6 + v9 + v7 + v8;
      }

      if (a5 < 64)
      {
        v6 = 0;
        v8 = 4;
        goto LABEL_348;
      }

      if (a5 < 0x4000)
      {
        v6 = 0;
        v8 = 4;
        goto LABEL_467;
      }

      v6 = 0;
      v8 = 4;
      v7 = 2;
LABEL_457:
      v10 = a5 >> 30;
      goto LABEL_458;
    }

    if (!a4)
    {
      if (a5 < 64)
      {
        v6 = 0;
        v8 = 4;
        goto LABEL_267;
      }

      if (a5 < 0x4000)
      {
        v6 = 0;
        v8 = 4;
        goto LABEL_341;
      }

      v6 = 0;
      v8 = 4;
      v7 = 1;
      goto LABEL_457;
    }

    if (a4 < 0x40)
    {
      v8 = 4;
      if (a5 >= 64)
      {
        if (a5 >= 0x4000)
        {
          v6 = 1;
          v10 = a5 >> 30;
          v7 = 1;
          goto LABEL_458;
        }

        goto LABEL_304;
      }

LABEL_230:
      v9 = 1;
      v6 = 1;
      v7 = 1;
      return v6 + v9 + v7 + v8;
    }

    if (a4 >= 0x4000)
    {
      if (!(a4 >> 30))
      {
        if (a5 < 64)
        {
          v8 = 4;
          goto LABEL_448;
        }

        if (a5 < 0x4000)
        {
          v8 = 4;
          v9 = 2;
          goto LABEL_449;
        }

        v7 = 1;
        goto LABEL_512;
      }

      if (a4 >> 62)
      {
        goto LABEL_573;
      }

      v8 = 4;
      if (a5 >= 64)
      {
        if (a5 >= 0x4000)
        {
          v7 = 1;
          v6 = 8;
          goto LABEL_457;
        }

        goto LABEL_419;
      }

LABEL_325:
      v9 = 1;
LABEL_420:
      v6 = 8;
      v7 = 1;
      return v6 + v9 + v7 + v8;
    }

    v8 = 4;
    if (a5 >= 64)
    {
      if (a5 >= 0x4000)
      {
        v7 = 1;
        goto LABEL_286;
      }

      goto LABEL_372;
    }

LABEL_317:
    v9 = 1;
    goto LABEL_318;
  }

  if (v5 >> 62)
  {
    goto LABEL_573;
  }

  if (a3 < 0x40)
  {
    if (a4)
    {
      if (a4 >= 0x40)
      {
        if (a4 >= 0x4000)
        {
          if (a4 >> 30)
          {
            if (a4 >> 62)
            {
              goto LABEL_573;
            }

            if (a5 < 64)
            {
              v9 = 1;
            }

            else
            {
              if (a5 >= 0x4000)
              {
                v7 = 1;
                v6 = 8;
                goto LABEL_488;
              }

              v9 = 2;
            }

            v6 = 8;
            v7 = 1;
            goto LABEL_571;
          }

          v8 = 8;
LABEL_400:
          if (a5 >= 64)
          {
            if (a5 >= 0x4000)
            {
              v7 = 1;
              v6 = 4;
              goto LABEL_457;
            }

            v9 = 2;
LABEL_449:
            v6 = 4;
            v7 = 1;
            return v6 + v9 + v7 + v8;
          }

LABEL_448:
          v9 = 1;
          goto LABEL_449;
        }

        v8 = 8;
        if (a5 >= 64)
        {
          if (a5 >= 0x4000)
          {
            v7 = 1;
LABEL_315:
            v6 = 2;
            if (!(a5 >> 30))
            {
              goto LABEL_323;
            }

            goto LABEL_459;
          }

          goto LABEL_372;
        }

        goto LABEL_317;
      }

      v8 = 8;
      if (a5 >= 64)
      {
        if (a5 >= 0x4000)
        {
LABEL_227:
          v6 = 1;
          if (a5 >> 30)
          {
            v7 = 1;
            if (a5 >> 62)
            {
              goto LABEL_573;
            }

            goto LABEL_460;
          }

          v9 = 4;
          v7 = 1;
          return v6 + v9 + v7 + v8;
        }

LABEL_304:
        v6 = 1;
        v9 = 2;
        v7 = 1;
        return v6 + v9 + v7 + v8;
      }

      goto LABEL_230;
    }

    if (a5 >= 64)
    {
      if (a5 >= 0x4000)
      {
        v6 = 0;
        v8 = 8;
LABEL_190:
        v7 = 1;
        if (a5 >> 30)
        {
          goto LABEL_459;
        }

        goto LABEL_323;
      }

      v6 = 0;
      v8 = 8;
LABEL_341:
      v7 = 1;
      v9 = 2;
      return v6 + v9 + v7 + v8;
    }

    v6 = 0;
    v8 = 8;
LABEL_267:
    v9 = 1;
    v7 = 1;
    return v6 + v9 + v7 + v8;
  }

  if (a3 < 0x4000)
  {
    if (a4)
    {
      if (a4 > 0x3F)
      {
        if (a4 >> 14)
        {
          if (a4 >> 30)
          {
            if (a4 >> 62)
            {
              goto LABEL_573;
            }

            if (a5 >= 64)
            {
              if (a5 < 0x4000)
              {
                v6 = 8;
                v9 = 2;
                v7 = 2;
                goto LABEL_571;
              }

              v7 = 2;
              v6 = 8;
LABEL_352:
              if (a5 >> 30)
              {
                goto LABEL_489;
              }

LABEL_353:
              v9 = 4;
              goto LABEL_571;
            }

            v7 = 2;
            v6 = 8;
LABEL_536:
            v9 = 1;
            goto LABEL_571;
          }

          v8 = 8;
          if (a5 < 64)
          {
            v7 = 2;
LABEL_523:
            v6 = 4;
            v9 = 1;
            return v6 + v9 + v7 + v8;
          }

          goto LABEL_270;
        }

        v8 = 8;
        if (a5 >= 64)
        {
          if (a5 < 0x4000)
          {
            goto LABEL_405;
          }

LABEL_197:
          v6 = 2;
          if (a5 >> 30)
          {
            v7 = 2;
            if (a5 >> 62)
            {
              goto LABEL_573;
            }

            goto LABEL_460;
          }

          v9 = 4;
          v7 = 2;
          return v6 + v9 + v7 + v8;
        }

        v6 = 2;
LABEL_483:
        v9 = 1;
        v7 = 2;
        return v6 + v9 + v7 + v8;
      }

      v8 = 8;
      if (a5 >= 64)
      {
        if (a5 >= 0x4000)
        {
          v7 = 2;
LABEL_322:
          v6 = 1;
          if (a5 >> 30)
          {
            goto LABEL_459;
          }

          goto LABEL_323;
        }

LABEL_384:
        v6 = 1;
        goto LABEL_467;
      }

      v7 = 2;
LABEL_414:
      v9 = 1;
      v6 = 1;
      return v6 + v9 + v7 + v8;
    }

    if (a5 >= 64)
    {
      if (a5 < 0x4000)
      {
        v6 = 0;
        v8 = 8;
        goto LABEL_467;
      }

      v6 = 0;
      v8 = 8;
LABEL_127:
      v7 = 2;
      if (a5 >> 30)
      {
        goto LABEL_459;
      }

LABEL_323:
      v9 = 4;
      return v6 + v9 + v7 + v8;
    }

    v6 = 0;
    v8 = 8;
LABEL_348:
    v7 = 2;
    v9 = 1;
    return v6 + v9 + v7 + v8;
  }

  if (!(a3 >> 30))
  {
    if (a4)
    {
      if (a4 >= 0x40)
      {
        if (a4 >= 0x4000)
        {
          if (a4 >> 30)
          {
            if (a4 >> 62)
            {
              goto LABEL_573;
            }

            if (a5 < 64)
            {
              v9 = 1;
            }

            else
            {
              if (a5 >= 0x4000)
              {
                v7 = 4;
                v6 = 8;
LABEL_530:
                v10 = a5 >> 30;
                v8 = 8;
LABEL_458:
                v9 = 4;
                if (v10)
                {
                  goto LABEL_459;
                }

                return v6 + v9 + v7 + v8;
              }

              v9 = 2;
            }

            v6 = 8;
            v7 = 4;
LABEL_571:
            v8 = 8;
            return v6 + v9 + v7 + v8;
          }

          v8 = 8;
          if (a5 < 64)
          {
            v9 = 1;
          }

          else
          {
            if (a5 >= 0x4000)
            {
LABEL_519:
              v6 = 4;
              v10 = a5 >> 30;
              v7 = 4;
              goto LABEL_458;
            }

            v9 = 2;
          }

          v6 = 4;
          v7 = 4;
          return v6 + v9 + v7 + v8;
        }

        v8 = 8;
        if (a5 < 64)
        {
          v9 = 1;
          goto LABEL_526;
        }

        if (a5 < 0x4000)
        {
          v9 = 2;
LABEL_526:
          v6 = 2;
          v7 = 4;
          return v6 + v9 + v7 + v8;
        }

        goto LABEL_276;
      }

      v8 = 8;
      if (a5 >= 64)
      {
        if (a5 >= 0x4000)
        {
          goto LABEL_408;
        }

        v6 = 1;
LABEL_521:
        v9 = 2;
        v7 = 4;
        return v6 + v9 + v7 + v8;
      }

      v6 = 1;
LABEL_507:
      v9 = 1;
      v7 = 4;
      return v6 + v9 + v7 + v8;
    }

    if (a5 >= 64)
    {
      if (a5 >= 0x4000)
      {
        v6 = 0;
        v8 = 8;
        goto LABEL_345;
      }

      v6 = 0;
      v8 = 8;
LABEL_327:
      v7 = 4;
      v9 = 2;
      return v6 + v9 + v7 + v8;
    }

    v6 = 0;
    v8 = 8;
LABEL_431:
    v7 = 4;
    v9 = 1;
    return v6 + v9 + v7 + v8;
  }

  if (a3 >> 62)
  {
    goto LABEL_573;
  }

  if (!a4)
  {
    if (a5 >= 64)
    {
      if (a5 < 0x4000)
      {
        v6 = 0;
        v7 = 8;
        v9 = 2;
        goto LABEL_571;
      }

      v6 = 0;
      v7 = 8;
      goto LABEL_352;
    }

    v6 = 0;
    v7 = 8;
    goto LABEL_536;
  }

  if (a4 < 0x40)
  {
    if (a5 < 64)
    {
      v9 = 1;
      v6 = 1;
      goto LABEL_570;
    }

    if (a5 < 0x4000)
    {
      v9 = 2;
      v6 = 1;
      goto LABEL_570;
    }

    v7 = 8;
    v6 = 1;
LABEL_488:
    if (a5 >> 30)
    {
LABEL_489:
      v8 = 8;
      if (a5 >> 62)
      {
        goto LABEL_573;
      }

      goto LABEL_460;
    }

    goto LABEL_353;
  }

  if (a4 < 0x4000)
  {
    if (a5 < 64)
    {
      v8 = 8;
      v9 = 1;
    }

    else
    {
      if (a5 >= 0x4000)
      {
        v7 = 8;
        v6 = 2;
        goto LABEL_488;
      }

      v8 = 8;
      v9 = 2;
    }

    v6 = 2;
    v7 = 8;
    return v6 + v9 + v7 + v8;
  }

  if (!(a4 >> 30))
  {
    if (a5 < 64)
    {
      v9 = 1;
    }

    else
    {
      if (a5 >= 0x4000)
      {
        v7 = 8;
        v6 = 4;
        goto LABEL_530;
      }

      v9 = 2;
    }

    v6 = 4;
LABEL_570:
    v7 = 8;
    goto LABEL_571;
  }

  if (!(a4 >> 62))
  {
    if (a5 < 64)
    {
      v9 = 1;
      v6 = 8;
    }

    else if (a5 < 0x4000)
    {
      v9 = 2;
      v6 = 8;
    }

    else
    {
      v6 = 8;
      if (a5 >> 30)
      {
        v7 = 8;
        goto LABEL_489;
      }

      v9 = 4;
    }

    goto LABEL_570;
  }

LABEL_573:
  result = sub_182AD3EA8();
  __break(1u);
  return result;
}

uint64_t sub_182118FAC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  if (a2 < 0x40)
  {
    v5 = 1;
    if ((*(a3 + 24) & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

  if (a2 < 0x4000)
  {
    v5 = 2;
    if ((*(a3 + 24) & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

  if (!(a2 >> 30))
  {
    v5 = 4;
    if ((*(a3 + 24) & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (a2 >> 62)
  {
    goto LABEL_215;
  }

  v5 = 8;
  if (*(a3 + 24))
  {
    goto LABEL_33;
  }

LABEL_8:
  v6 = *(a3 + 16);
  if (v6 >= 0x40)
  {
    if (v6 < 0x4000)
    {
LABEL_34:
      if (!a4)
      {
        if (a5 >= 0x40)
        {
          if (a5 >= 0x4000)
          {
            v8 = a5 >> 30;
            if (!(a5 >> 30))
            {
              v9 = 2;
              v7 = 4;
              return v7 + v5 + v8 + v9;
            }

            v8 = a5 >> 62;
            if (!(a5 >> 62))
            {
              v9 = 2;
              v7 = 8;
              return v7 + v5 + v8 + v9;
            }

            goto LABEL_215;
          }

          v8 = 0;
          goto LABEL_140;
        }

        v8 = 0;
        v9 = 2;
LABEL_197:
        v7 = 1;
        return v7 + v5 + v8 + v9;
      }

      if (a4 >= 0x40)
      {
        if (a4 < 0x4000)
        {
          if (a5 < 0x40)
          {
            v8 = 2;
            v7 = 1;
            v9 = 2;
            return v7 + v5 + v8 + v9;
          }

          if (a5 < 0x4000)
          {
            v7 = 2;
            v8 = 2;
            v9 = 2;
            return v7 + v5 + v8 + v9;
          }

          if (!(a5 >> 30))
          {
            v8 = 2;
            v7 = 4;
            v9 = 2;
            return v7 + v5 + v8 + v9;
          }

          if (!(a5 >> 62))
          {
            v8 = 2;
            v7 = 8;
            v9 = 2;
            return v7 + v5 + v8 + v9;
          }

          goto LABEL_215;
        }

        if (a4 >> 30)
        {
          if (a4 >> 62)
          {
            goto LABEL_215;
          }

          if (a5 >= 0x40)
          {
            if (a5 >= 0x4000)
            {
              if (a5 >> 30)
              {
                if (!(a5 >> 62))
                {
                  v9 = 2;
                  goto LABEL_66;
                }

                goto LABEL_215;
              }

              v9 = 2;
LABEL_204:
              v8 = 8;
              v7 = 4;
              return v7 + v5 + v8 + v9;
            }

            v8 = 8;
LABEL_140:
            v7 = 2;
            v9 = 2;
            return v7 + v5 + v8 + v9;
          }

          v9 = 2;
          v8 = 8;
          goto LABEL_197;
        }

        if (a5 >= 0x40)
        {
          if (a5 < 0x4000)
          {
            v8 = 4;
            goto LABEL_140;
          }

          if (a5 >> 30)
          {
            if (a5 >> 62)
            {
              goto LABEL_215;
            }

            v9 = 2;
            goto LABEL_130;
          }

          v9 = 2;
          goto LABEL_213;
        }

        v9 = 2;
LABEL_196:
        v8 = 4;
        goto LABEL_197;
      }

      if (a5 >= 0x40)
      {
        if (a5 < 0x4000)
        {
          v8 = 1;
          goto LABEL_140;
        }

        if (a5 >> 30)
        {
          if (a5 >> 62)
          {
            goto LABEL_215;
          }

          v9 = 2;
LABEL_113:
          v8 = 1;
          v7 = 8;
          return v7 + v5 + v8 + v9;
        }

        v9 = 2;
LABEL_193:
        v8 = 1;
        v7 = 4;
        return v7 + v5 + v8 + v9;
      }

      v9 = 2;
LABEL_152:
      v7 = 1;
      v8 = 1;
      return v7 + v5 + v8 + v9;
    }

    if (v6 >> 30)
    {
      if (v6 >> 62)
      {
        goto LABEL_215;
      }

      if (!a4)
      {
        if (a5 < 0x40)
        {
          v8 = 0;
          v9 = 8;
          goto LABEL_197;
        }

        if (a5 < 0x4000)
        {
          v8 = 0;
          v9 = 8;
          v7 = 2;
          return v7 + v5 + v8 + v9;
        }

        v8 = a5 >> 30;
        if (!(a5 >> 30))
        {
          v9 = 8;
          v7 = 4;
          return v7 + v5 + v8 + v9;
        }

        v8 = a5 >> 62;
        if (a5 >> 62)
        {
          goto LABEL_215;
        }

        goto LABEL_175;
      }

      if (a4 >= 0x40)
      {
        if (a4 >= 0x4000)
        {
          if (a4 >> 30)
          {
            if (a4 >> 62)
            {
              goto LABEL_215;
            }

            if (a5 < 0x40)
            {
              v8 = 8;
              v7 = 1;
              v9 = 8;
              return v7 + v5 + v8 + v9;
            }

            if (a5 < 0x4000)
            {
              v8 = 8;
              v7 = 2;
              v9 = 8;
              return v7 + v5 + v8 + v9;
            }

            if (!(a5 >> 30))
            {
              v8 = 8;
              v7 = 4;
              v9 = 8;
              return v7 + v5 + v8 + v9;
            }

            if (a5 >> 62)
            {
              goto LABEL_215;
            }

            v7 = 8;
            v8 = 8;
            v9 = 8;
            return v7 + v5 + v8 + v9;
          }

          if (a5 < 0x40)
          {
            v9 = 8;
            goto LABEL_196;
          }

          if (a5 >= 0x4000)
          {
            if (!(a5 >> 30))
            {
              v9 = 8;
              goto LABEL_213;
            }

            if (a5 >> 62)
            {
              goto LABEL_215;
            }

            v8 = 4;
            goto LABEL_175;
          }

          v9 = 8;
LABEL_165:
          v8 = 4;
          v7 = 2;
          return v7 + v5 + v8 + v9;
        }

        if (a5 < 0x40)
        {
          v9 = 8;
          v8 = 2;
          goto LABEL_197;
        }

        if (a5 >= 0x4000)
        {
          if (a5 >> 30)
          {
            if (a5 >> 62)
            {
              goto LABEL_215;
            }

            v8 = 2;
            goto LABEL_175;
          }

          v9 = 8;
LABEL_162:
          v8 = 2;
          v7 = 4;
          return v7 + v5 + v8 + v9;
        }

        v9 = 8;
LABEL_138:
        v7 = 2;
        v8 = 2;
        return v7 + v5 + v8 + v9;
      }

      if (a5 < 0x40)
      {
        v9 = 8;
        goto LABEL_152;
      }

      if (a5 >= 0x4000)
      {
        if (!(a5 >> 30))
        {
          v9 = 8;
          goto LABEL_193;
        }

        if (a5 >> 62)
        {
          goto LABEL_215;
        }

        v8 = 1;
LABEL_175:
        v7 = 8;
        v9 = 8;
        return v7 + v5 + v8 + v9;
      }

      v9 = 8;
LABEL_180:
      v8 = 1;
      v7 = 2;
      return v7 + v5 + v8 + v9;
    }

    if (a4)
    {
      if (a4 >= 0x40)
      {
        if (a4 >= 0x4000)
        {
          if (!(a4 >> 30))
          {
            if (a5 < 0x40)
            {
              v8 = 4;
              v7 = 1;
              v9 = 4;
              return v7 + v5 + v8 + v9;
            }

            if (a5 < 0x4000)
            {
              v8 = 4;
              v7 = 2;
              v9 = 4;
              return v7 + v5 + v8 + v9;
            }

            if (!(a5 >> 30))
            {
              v7 = 4;
              v8 = 4;
              v9 = 4;
              return v7 + v5 + v8 + v9;
            }

            if (!(a5 >> 62))
            {
              v8 = 4;
              v7 = 8;
              v9 = 4;
              return v7 + v5 + v8 + v9;
            }

            goto LABEL_215;
          }

          if (a4 >> 62)
          {
            goto LABEL_215;
          }

          if (a5 < 0x40)
          {
            v9 = 4;
            v8 = 8;
            goto LABEL_197;
          }

          if (a5 >= 0x4000)
          {
            if (a5 >> 30)
            {
              if (!(a5 >> 62))
              {
                v9 = 4;
                goto LABEL_66;
              }

              goto LABEL_215;
            }

            v8 = 8;
            goto LABEL_211;
          }

          v9 = 4;
LABEL_177:
          v8 = 8;
          v7 = 2;
          return v7 + v5 + v8 + v9;
        }

        if (a5 < 0x40)
        {
          v9 = 4;
          v8 = 2;
          goto LABEL_197;
        }

        if (a5 < 0x4000)
        {
          v9 = 4;
          goto LABEL_138;
        }

        if (!(a5 >> 30))
        {
          v8 = 2;
          goto LABEL_211;
        }

        if (a5 >> 62)
        {
          goto LABEL_215;
        }

        v9 = 4;
LABEL_78:
        v8 = 2;
        v7 = 8;
        return v7 + v5 + v8 + v9;
      }

      if (a5 < 0x40)
      {
        v9 = 4;
        goto LABEL_152;
      }

      if (a5 < 0x4000)
      {
        v9 = 4;
        goto LABEL_180;
      }

      if (a5 >> 30)
      {
        if (a5 >> 62)
        {
          goto LABEL_215;
        }

        v9 = 4;
        goto LABEL_113;
      }

      v8 = 1;
    }

    else
    {
      if (a5 < 0x40)
      {
        v8 = 0;
        v9 = 4;
        goto LABEL_197;
      }

      if (a5 < 0x4000)
      {
        v8 = 0;
        v9 = 4;
        v7 = 2;
        return v7 + v5 + v8 + v9;
      }

      v8 = a5 >> 30;
      if (a5 >> 30)
      {
        v8 = a5 >> 62;
        if (!(a5 >> 62))
        {
          v9 = 4;
          v7 = 8;
          return v7 + v5 + v8 + v9;
        }

        goto LABEL_215;
      }
    }

LABEL_211:
    v7 = 4;
    v9 = 4;
    return v7 + v5 + v8 + v9;
  }

  if (!a4)
  {
    if (a5 < 0x40)
    {
      v8 = 0;
      goto LABEL_150;
    }

    if (a5 < 0x4000)
    {
      v8 = 0;
      v9 = 1;
      v7 = 2;
      return v7 + v5 + v8 + v9;
    }

    v8 = a5 >> 30;
    if (!(a5 >> 30))
    {
      v9 = 1;
      v7 = 4;
      return v7 + v5 + v8 + v9;
    }

    v8 = a5 >> 62;
    if (a5 >> 62)
    {
      goto LABEL_215;
    }

    v9 = 1;
    v7 = 8;
    return v7 + v5 + v8 + v9;
  }

  if (a4 <= 0x3F)
  {
    if (a5 < 0x40)
    {
      v7 = 1;
      v8 = 1;
      v9 = 1;
      return v7 + v5 + v8 + v9;
    }

    if (a5 < 0x4000)
    {
      v8 = 1;
      v7 = 2;
      v9 = 1;
      return v7 + v5 + v8 + v9;
    }

    if (!(a5 >> 30))
    {
      v8 = 1;
      v7 = 4;
      v9 = 1;
      return v7 + v5 + v8 + v9;
    }

    if (a5 >> 62)
    {
      goto LABEL_215;
    }

    v8 = 1;
    v7 = 8;
    v9 = 1;
    return v7 + v5 + v8 + v9;
  }

  if (!(a4 >> 14))
  {
    if (a5 >= 0x40)
    {
      if (a5 < 0x4000)
      {
        v9 = 1;
        goto LABEL_138;
      }

      if (!(a5 >> 30))
      {
        v9 = 1;
        goto LABEL_162;
      }

      if (a5 >> 62)
      {
        goto LABEL_215;
      }

      v9 = 1;
      goto LABEL_78;
    }

    v8 = 2;
LABEL_150:
    v7 = 1;
    v9 = 1;
    return v7 + v5 + v8 + v9;
  }

  if (!(a4 >> 30))
  {
    if (a5 >= 0x40)
    {
      if (a5 >= 0x4000)
      {
        if (a5 >> 30)
        {
          if (a5 >> 62)
          {
            goto LABEL_215;
          }

          v9 = 1;
LABEL_130:
          v8 = 4;
          v7 = 8;
          return v7 + v5 + v8 + v9;
        }

        v9 = 1;
LABEL_213:
        v7 = 4;
        v8 = 4;
        return v7 + v5 + v8 + v9;
      }

      v9 = 1;
      goto LABEL_165;
    }

    v8 = 4;
    goto LABEL_150;
  }

  if (a4 >> 62)
  {
    goto LABEL_215;
  }

  if (a5 < 0x40)
  {
    v8 = 8;
    goto LABEL_150;
  }

  if (a5 < 0x4000)
  {
    v9 = 1;
    goto LABEL_177;
  }

  if (!(a5 >> 30))
  {
    v9 = 1;
    goto LABEL_204;
  }

  if (!(a5 >> 62))
  {
    v9 = 1;
LABEL_66:
    v7 = 8;
    v8 = 8;
    return v7 + v5 + v8 + v9;
  }

LABEL_215:
  result = sub_182AD3EA8();
  __break(1u);
  return result;
}

BOOL sub_18211977C(unint64_t a1, char a2)
{
  if (!a2)
  {
    v2 = a1 + 8;
    if (a1 < 0xFFFFFFFFFFFFFFF8)
    {
      return v2 == 49;
    }

    __break(1u);
LABEL_8:
    v2 = qword_182AF7938[a1];
    return v2 == 49;
  }

  if (a2 != 1)
  {
    goto LABEL_8;
  }

  v2 = 48;
  if (a1)
  {
    v2 = 49;
  }

  return v2 == 49;
}

uint64_t sub_1821197C0(uint64_t a1, uint64_t a2, char a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v9 = sub_182104788(a2, a3);
  if (v9 < 0x40)
  {
    if (a4 > 0x3F)
    {
      if (!(a4 >> 14))
      {
        if (a5 >= 0x40)
        {
          if (a5 < 0x4000)
          {
            if (a6 >= 0x40)
            {
              if (a6 < 0x4000)
              {
                v12 = 1;
                v11 = 3;
              }

              else if (a6 >> 30)
              {
                if (a6 >> 62)
                {
                  goto LABEL_698;
                }

                v12 = 1;
                v11 = 9;
              }

              else
              {
                v12 = 1;
                v11 = 5;
              }

              goto LABEL_434;
            }

            v12 = 1;
LABEL_269:
            v11 = 2;
LABEL_434:
            v10 = 2;
            v13 = 2;
            return v11 + v10 + v13 + v12;
          }

          if (!(a5 >> 30))
          {
            if (a6 >= 0x40)
            {
              if (a6 >= 0x4000)
              {
                if (a6 >> 30)
                {
                  if (a6 >> 62)
                  {
                    goto LABEL_698;
                  }

                  v12 = 1;
                  goto LABEL_232;
                }

                v12 = 1;
                goto LABEL_530;
              }

              v12 = 1;
              goto LABEL_446;
            }

            v12 = 1;
            v10 = 4;
LABEL_416:
            v11 = 2;
            v13 = 2;
            return v11 + v10 + v13 + v12;
          }

          if (a5 >> 62)
          {
            goto LABEL_698;
          }

          if (a6 >= 0x40)
          {
            if (a6 >= 0x4000)
            {
              if (a6 >> 30)
              {
                if (a6 >> 62)
                {
                  goto LABEL_698;
                }

                v12 = 1;
                goto LABEL_76;
              }

              v12 = 1;
              goto LABEL_556;
            }

            v12 = 1;
            goto LABEL_480;
          }

          v12 = 1;
LABEL_387:
          v10 = 8;
          goto LABEL_416;
        }

        if (a6 < 0x40)
        {
          v12 = 1;
          v11 = 2;
        }

        else if (a6 < 0x4000)
        {
          v12 = 1;
          v11 = 3;
        }

        else
        {
          if (a6 >> 30)
          {
            if (a6 >> 62)
            {
              goto LABEL_698;
            }

            v11 = 9;
            v10 = 1;
            v13 = 2;
            goto LABEL_472;
          }

          v12 = 1;
          v11 = 5;
        }

        v10 = 1;
        v13 = 2;
        return v11 + v10 + v13 + v12;
      }

      if (a4 >> 30)
      {
        if (a4 >> 62)
        {
          goto LABEL_698;
        }

        if (a5 <= 0x3F)
        {
          if (a6 >= 0x40)
          {
            if (a6 >= 0x4000)
            {
              if (a6 >> 30)
              {
                if (a6 >> 62)
                {
                  goto LABEL_698;
                }

                v13 = 8;
                v12 = 1;
                goto LABEL_409;
              }

              v13 = 8;
              v12 = 1;
              goto LABEL_634;
            }

            v13 = 8;
            v12 = 1;
LABEL_588:
            v11 = 3;
            v10 = 1;
            return v11 + v10 + v13 + v12;
          }

          v13 = 8;
          v12 = 1;
LABEL_313:
          v11 = 2;
          v10 = 1;
          return v11 + v10 + v13 + v12;
        }

        if (!(a5 >> 14))
        {
          if (a6 < 0x40)
          {
            v12 = 1;
            v13 = 8;
            goto LABEL_413;
          }

          if (a6 >= 0x4000)
          {
            if (a6 >> 30)
            {
              if (a6 >> 62)
              {
                goto LABEL_698;
              }

              v12 = 1;
              goto LABEL_292;
            }

            v12 = 1;
            goto LABEL_571;
          }

          v12 = 1;
          goto LABEL_500;
        }

        if (!(a5 >> 30))
        {
          if (a6 < 0x40)
          {
            v12 = 1;
            v13 = 8;
            v11 = 2;
            v10 = 4;
            return v11 + v10 + v13 + v12;
          }

          if (a6 >= 0x4000)
          {
            if (a6 >> 30)
            {
              if (a6 >> 62)
              {
                goto LABEL_698;
              }

              v12 = 1;
              goto LABEL_469;
            }

            v12 = 1;
LABEL_666:
            v13 = 8;
            v11 = 5;
            v10 = 4;
            return v11 + v10 + v13 + v12;
          }

          v12 = 1;
LABEL_636:
          v13 = 8;
          v11 = 3;
          v10 = 4;
          return v11 + v10 + v13 + v12;
        }

        if (a5 >> 62)
        {
          goto LABEL_698;
        }

        if (a6 < 0x40)
        {
          v12 = 1;
          v13 = 8;
          v11 = 2;
          v10 = 8;
        }

        else if (a6 < 0x4000)
        {
          v12 = 1;
          v13 = 8;
          v11 = 3;
          v10 = 8;
        }

        else if (a6 >> 30)
        {
          if (a6 >> 62)
          {
            goto LABEL_698;
          }

          v12 = 1;
          v13 = 8;
          v11 = 9;
          v10 = 8;
        }

        else
        {
          v12 = 1;
          v13 = 8;
          v11 = 5;
          v10 = 8;
        }

        return v11 + v10 + v13 + v12;
      }

      if (a5 >= 0x40)
      {
        if (a5 < 0x4000)
        {
          if (a6 >= 0x40)
          {
            if (a6 >= 0x4000)
            {
              if (a6 >> 30)
              {
                if (a6 >> 62)
                {
                  goto LABEL_698;
                }

                v12 = 1;
                v13 = 4;
                goto LABEL_304;
              }

              v12 = 1;
              v13 = 4;
              goto LABEL_574;
            }

            v12 = 1;
            v13 = 4;
            goto LABEL_503;
          }

          v12 = 1;
          v13 = 4;
          goto LABEL_413;
        }

        if (!(a5 >> 30))
        {
          if (a6 >= 0x40)
          {
            if (a6 >= 0x4000)
            {
              if (a6 >> 30)
              {
                if (a6 >> 62)
                {
                  goto LABEL_698;
                }

                v12 = 1;
                goto LABEL_569;
              }

              v12 = 1;
              goto LABEL_689;
            }

            v12 = 1;
            goto LABEL_672;
          }

          v12 = 1;
          goto LABEL_456;
        }

        if (a5 >> 62)
        {
          goto LABEL_698;
        }

        if (a6 < 0x40)
        {
          v12 = 1;
          v13 = 4;
          goto LABEL_485;
        }

        if (a6 >= 0x4000)
        {
          if (a6 >> 30)
          {
            if (a6 >> 62)
            {
              goto LABEL_698;
            }

            v12 = 1;
            goto LABEL_152;
          }

          v12 = 1;
LABEL_661:
          v13 = 4;
          goto LABEL_662;
        }

        v12 = 1;
LABEL_620:
        v13 = 4;
        goto LABEL_621;
      }

      if (a6 < 0x40)
      {
        v13 = 4;
        v10 = 1;
        v11 = 2;
      }

      else
      {
        if (a6 >= 0x4000)
        {
          if (a6 >> 30)
          {
            if (a6 >> 62)
            {
              goto LABEL_698;
            }

            v13 = 4;
            v10 = 1;
            v11 = 9;
            goto LABEL_472;
          }

          v13 = 4;
          v10 = 1;
          goto LABEL_471;
        }

        v13 = 4;
        v10 = 1;
        v11 = 3;
      }

LABEL_472:
      v12 = 1;
      return v11 + v10 + v13 + v12;
    }

    if (a5 < 0x40)
    {
      if (a6 < 0x40)
      {
        v10 = 1;
        v11 = 2;
        v13 = 1;
      }

      else if (a6 < 0x4000)
      {
        v10 = 1;
        v11 = 3;
        v13 = 1;
      }

      else if (a6 >> 30)
      {
        if (a6 >> 62)
        {
          goto LABEL_698;
        }

        v10 = 1;
        v11 = 9;
        v13 = 1;
      }

      else
      {
        v10 = 1;
        v11 = 5;
        v13 = 1;
      }

      goto LABEL_472;
    }

    if (a5 < 0x4000)
    {
      if (a6 < 0x40)
      {
        v13 = 1;
        v11 = 2;
        v10 = 2;
        goto LABEL_472;
      }

      if (a6 < 0x4000)
      {
        v13 = 1;
        v10 = 2;
        v11 = 3;
        goto LABEL_472;
      }

      if (a6 >> 30)
      {
        if (a6 >> 62)
        {
          goto LABEL_698;
        }

        v13 = 1;
        v10 = 2;
        v11 = 9;
        goto LABEL_472;
      }

      v13 = 1;
      v10 = 2;
    }

    else if (a5 >> 30)
    {
      if (a5 >> 62)
      {
        goto LABEL_698;
      }

      if (a6 < 0x40)
      {
        v13 = 1;
        v10 = 8;
        v11 = 2;
        goto LABEL_472;
      }

      if (a6 < 0x4000)
      {
        v13 = 1;
        v10 = 8;
        v11 = 3;
        goto LABEL_472;
      }

      if (a6 >> 30)
      {
        if (a6 >> 62)
        {
          goto LABEL_698;
        }

        v13 = 1;
        v10 = 8;
        v11 = 9;
        goto LABEL_472;
      }

      v13 = 1;
      v10 = 8;
    }

    else
    {
      if (a6 < 0x40)
      {
        v13 = 1;
        v10 = 4;
        v11 = 2;
        goto LABEL_472;
      }

      if (a6 < 0x4000)
      {
        v13 = 1;
        v10 = 4;
        v11 = 3;
        goto LABEL_472;
      }

      if (a6 >> 30)
      {
        if (a6 >> 62)
        {
          goto LABEL_698;
        }

        v13 = 1;
        v10 = 4;
        v11 = 9;
        goto LABEL_472;
      }

      v13 = 1;
      v10 = 4;
    }

LABEL_471:
    v11 = 5;
    goto LABEL_472;
  }

  if (v9 < 0x4000)
  {
    if (a4 >= 0x40)
    {
      if (a4 >= 0x4000)
      {
        if (a4 >> 30)
        {
          if (a4 >> 62)
          {
            goto LABEL_698;
          }

          if (a5 < 0x40)
          {
            if (a6 < 0x40)
            {
              v13 = 8;
              v11 = 2;
              v10 = 1;
              v12 = 2;
              return v11 + v10 + v13 + v12;
            }

            if (a6 >= 0x4000)
            {
              if (a6 >> 30)
              {
                if (a6 >> 62)
                {
                  goto LABEL_698;
                }

                v12 = 2;
                goto LABEL_385;
              }

              v12 = 2;
LABEL_628:
              v13 = 8;
              goto LABEL_634;
            }

            v12 = 2;
LABEL_582:
            v13 = 8;
            goto LABEL_588;
          }

          if (a5 >= 0x4000)
          {
            if (a5 >> 30)
            {
              if (a5 >> 62)
              {
                goto LABEL_698;
              }

              if (a6 < 0x40)
              {
                v10 = 8;
                v11 = 2;
                v13 = 8;
                v12 = 2;
                return v11 + v10 + v13 + v12;
              }

              if (a6 >= 0x4000)
              {
                if (a6 >> 30)
                {
                  if (a6 >> 62)
                  {
                    goto LABEL_698;
                  }

                  v12 = 2;
                  goto LABEL_66;
                }

                v12 = 2;
LABEL_691:
                v10 = 8;
                v11 = 5;
                v13 = 8;
                return v11 + v10 + v13 + v12;
              }

              v12 = 2;
LABEL_675:
              v10 = 8;
              v11 = 3;
              v13 = 8;
              return v11 + v10 + v13 + v12;
            }

            if (a6 < 0x40)
            {
              v13 = 8;
              v11 = 2;
              v10 = 4;
              v12 = 2;
              return v11 + v10 + v13 + v12;
            }

            if (a6 >= 0x4000)
            {
              if (a6 >> 30)
              {
                if (a6 >> 62)
                {
                  goto LABEL_698;
                }

                v12 = 2;
LABEL_469:
                v13 = 8;
                v11 = 9;
                v10 = 4;
                return v11 + v10 + v13 + v12;
              }

              v12 = 2;
              goto LABEL_666;
            }

            v12 = 2;
            goto LABEL_636;
          }

          if (a6 >= 0x40)
          {
            if (a6 >= 0x4000)
            {
              if (a6 >> 30)
              {
                if (a6 >> 62)
                {
                  goto LABEL_698;
                }

                v13 = 8;
                v12 = 2;
                goto LABEL_378;
              }

              v13 = 8;
              v12 = 2;
LABEL_626:
              v11 = 5;
              v10 = 2;
              return v11 + v10 + v13 + v12;
            }

            v13 = 8;
            v12 = 2;
LABEL_580:
            v11 = 3;
            v10 = 2;
            return v11 + v10 + v13 + v12;
          }

          v13 = 8;
LABEL_509:
          v11 = 2;
          v10 = 2;
          v12 = 2;
          return v11 + v10 + v13 + v12;
        }

        if (a5 <= 0x3F)
        {
          if (a6 >= 0x40)
          {
            if (a6 >= 0x4000)
            {
              if (a6 >> 30)
              {
                if (a6 >> 62)
                {
                  goto LABEL_698;
                }

                v12 = 2;
                v13 = 4;
                goto LABEL_311;
              }

              v12 = 2;
              v13 = 4;
LABEL_577:
              v10 = 1;
              v11 = 5;
              return v11 + v10 + v13 + v12;
            }

            v12 = 2;
            v13 = 4;
LABEL_506:
            v10 = 1;
            v11 = 3;
            return v11 + v10 + v13 + v12;
          }

          v13 = 4;
          v10 = 1;
          goto LABEL_366;
        }

        if (a5 >> 14)
        {
          if (!(a5 >> 30))
          {
            if (a6 < 0x40)
            {
              v10 = 4;
              v11 = 2;
              v13 = 4;
              v12 = 2;
              return v11 + v10 + v13 + v12;
            }

            if (a6 >= 0x4000)
            {
              if (a6 >> 30)
              {
                if (a6 >> 62)
                {
                  goto LABEL_698;
                }

                v12 = 2;
                goto LABEL_569;
              }

              v12 = 2;
LABEL_689:
              v10 = 4;
              v11 = 5;
              v13 = 4;
              return v11 + v10 + v13 + v12;
            }

            v12 = 2;
LABEL_672:
            v10 = 4;
            v11 = 3;
            v13 = 4;
            return v11 + v10 + v13 + v12;
          }

          if (a5 >> 62)
          {
            goto LABEL_698;
          }

          if (a6 >= 0x40)
          {
            if (a6 >= 0x4000)
            {
              if (a6 >> 30)
              {
                if (a6 >> 62)
                {
                  goto LABEL_698;
                }

                v12 = 2;
LABEL_152:
                v13 = 4;
                goto LABEL_153;
              }

              v12 = 2;
              goto LABEL_661;
            }

            v12 = 2;
            goto LABEL_620;
          }

          v13 = 4;
          v10 = 8;
LABEL_366:
          v11 = 2;
          v12 = 2;
          return v11 + v10 + v13 + v12;
        }

        if (a6 < 0x40)
        {
          v13 = 4;
          goto LABEL_509;
        }

        if (a6 >= 0x4000)
        {
          if (a6 >> 30)
          {
            if (a6 >> 62)
            {
              goto LABEL_698;
            }

            v13 = 4;
            v10 = 2;
LABEL_189:
            v11 = 9;
            v12 = 2;
            return v11 + v10 + v13 + v12;
          }

          v13 = 4;
          v10 = 2;
          goto LABEL_438;
        }

        v13 = 4;
        v10 = 2;
        goto LABEL_352;
      }

      if (a5 < 0x40)
      {
        if (a6 >= 0x40)
        {
          if (a6 >= 0x4000)
          {
            if (a6 >> 30)
            {
              if (a6 >> 62)
              {
                goto LABEL_698;
              }

              v13 = 2;
              v10 = 1;
              goto LABEL_189;
            }

            v13 = 2;
            v10 = 1;
            goto LABEL_438;
          }

          v13 = 2;
          v10 = 1;
          goto LABEL_352;
        }

        v10 = 1;
      }

      else
      {
        if (a5 < 0x4000)
        {
          if (a6 < 0x40)
          {
            v11 = 2;
            v10 = 2;
          }

          else if (a6 < 0x4000)
          {
            v10 = 2;
            v11 = 3;
          }

          else if (a6 >> 30)
          {
            if (a6 >> 62)
            {
              goto LABEL_698;
            }

            v10 = 2;
            v11 = 9;
          }

          else
          {
            v10 = 2;
            v11 = 5;
          }

          goto LABEL_535;
        }

        if (a5 >> 30)
        {
          if (a5 >> 62)
          {
            goto LABEL_698;
          }

          if (a6 >= 0x40)
          {
            if (a6 >= 0x4000)
            {
              if (a6 >> 30)
              {
                if (a6 >> 62)
                {
                  goto LABEL_698;
                }

                v13 = 2;
                v10 = 8;
                goto LABEL_189;
              }

              v13 = 2;
              v10 = 8;
              goto LABEL_438;
            }

            v13 = 2;
            v10 = 8;
            goto LABEL_352;
          }

          v10 = 8;
        }

        else
        {
          if (a6 >= 0x40)
          {
            if (a6 >= 0x4000)
            {
              if (a6 >> 30)
              {
                if (a6 >> 62)
                {
                  goto LABEL_698;
                }

                v13 = 2;
                v10 = 4;
                goto LABEL_189;
              }

              v13 = 2;
              v10 = 4;
LABEL_438:
              v11 = 5;
              v12 = 2;
              return v11 + v10 + v13 + v12;
            }

            v13 = 2;
            v10 = 4;
LABEL_352:
            v11 = 3;
            v12 = 2;
            return v11 + v10 + v13 + v12;
          }

          v10 = 4;
        }
      }

      v11 = 2;
LABEL_535:
      v13 = 2;
      v12 = 2;
      return v11 + v10 + v13 + v12;
    }

    if (a5 <= 0x3F)
    {
      if (a6 >= 0x40)
      {
        if (a6 < 0x4000)
        {
          v12 = 2;
          v11 = 3;
        }

        else if (a6 >> 30)
        {
          if (a6 >> 62)
          {
            goto LABEL_698;
          }

          v12 = 2;
          v11 = 9;
        }

        else
        {
          v12 = 2;
          v11 = 5;
        }

        v10 = 1;
        v13 = 1;
        return v11 + v10 + v13 + v12;
      }

      v11 = 2;
      v10 = 1;
    }

    else
    {
      if (a5 >> 14)
      {
        if (a5 >> 30)
        {
          if (a5 >> 62)
          {
            goto LABEL_698;
          }

          if (a6 < 0x40)
          {
            v12 = 2;
            v11 = 2;
          }

          else if (a6 < 0x4000)
          {
            v12 = 2;
            v11 = 3;
          }

          else if (a6 >> 30)
          {
            if (a6 >> 62)
            {
              goto LABEL_698;
            }

            v12 = 2;
            v11 = 9;
          }

          else
          {
            v12 = 2;
            v11 = 5;
          }

          v10 = 8;
          v13 = 1;
        }

        else
        {
          if (a6 < 0x40)
          {
            v12 = 2;
            v11 = 2;
          }

          else if (a6 < 0x4000)
          {
            v12 = 2;
            v11 = 3;
          }

          else if (a6 >> 30)
          {
            if (a6 >> 62)
            {
              goto LABEL_698;
            }

            v12 = 2;
            v11 = 9;
          }

          else
          {
            v12 = 2;
            v11 = 5;
          }

          v10 = 4;
          v13 = 1;
        }

        return v11 + v10 + v13 + v12;
      }

      if (a6 >= 0x40)
      {
        if (a6 >= 0x4000)
        {
          if (a6 >> 30)
          {
            if (a6 >> 62)
            {
              goto LABEL_698;
            }

            v12 = 2;
            v11 = 9;
          }

          else
          {
            v12 = 2;
            v11 = 5;
          }

          goto LABEL_452;
        }

        v12 = 2;
        goto LABEL_451;
      }

      v11 = 2;
      v10 = 2;
    }

    v13 = 1;
    v12 = 2;
    return v11 + v10 + v13 + v12;
  }

  if (!(v9 >> 30))
  {
    if (a4 >= 0x40)
    {
      if (a4 >= 0x4000)
      {
        if (!(a4 >> 30))
        {
          if (a5 < 0x40)
          {
            if (a6 < 0x40)
            {
              v13 = 4;
              v10 = 1;
              goto LABEL_463;
            }

            if (a6 < 0x4000)
            {
              v13 = 4;
              v10 = 1;
              goto LABEL_546;
            }

            if (a6 >> 30)
            {
              if (a6 >> 62)
              {
                goto LABEL_698;
              }

              v13 = 4;
              v10 = 1;
              goto LABEL_359;
            }

            v13 = 4;
            v10 = 1;
          }

          else
          {
            if (a5 < 0x4000)
            {
              if (a6 < 0x40)
              {
                v12 = 4;
                v11 = 2;
              }

              else if (a6 < 0x4000)
              {
                v12 = 4;
                v11 = 3;
              }

              else if (a6 >> 30)
              {
                if (a6 >> 62)
                {
                  goto LABEL_698;
                }

                v12 = 4;
                v11 = 9;
              }

              else
              {
                v12 = 4;
                v11 = 5;
              }

              v10 = 2;
              v13 = 4;
              return v11 + v10 + v13 + v12;
            }

            if (!(a5 >> 30))
            {
              if (a6 < 0x40)
              {
                v10 = 4;
                v11 = 2;
              }

              else
              {
                if (a6 >= 0x4000)
                {
                  if (a6 >> 30)
                  {
                    if (a6 >> 62)
                    {
                      goto LABEL_698;
                    }

                    v13 = 4;
                    v11 = 9;
                  }

                  else
                  {
                    v13 = 4;
                    v11 = 5;
                  }

                  v10 = 4;
                  v12 = 4;
                  return v11 + v10 + v13 + v12;
                }

                v10 = 4;
                v11 = 3;
              }

              v13 = 4;
              v12 = 4;
              return v11 + v10 + v13 + v12;
            }

            if (a5 >> 62)
            {
              goto LABEL_698;
            }

            if (a6 < 0x40)
            {
              v13 = 4;
              v10 = 8;
              goto LABEL_463;
            }

            if (a6 < 0x4000)
            {
              v13 = 4;
              v10 = 8;
              goto LABEL_546;
            }

            if (a6 >> 30)
            {
              if (a6 >> 62)
              {
                goto LABEL_698;
              }

              v13 = 4;
              v10 = 8;
              goto LABEL_359;
            }

            v13 = 4;
            v10 = 8;
          }

LABEL_611:
          v11 = 5;
          v12 = 4;
          return v11 + v10 + v13 + v12;
        }

        if (a4 >> 62)
        {
          goto LABEL_698;
        }

        if (a5 >= 0x40)
        {
          if (a5 >= 0x4000)
          {
            if (a5 >> 30)
            {
              if (a5 >> 62)
              {
                goto LABEL_698;
              }

              if (a6 < 0x40)
              {
                v12 = 4;
                v10 = 8;
                v11 = 2;
                v13 = 8;
                return v11 + v10 + v13 + v12;
              }

              if (a6 >= 0x4000)
              {
                if (a6 >> 30)
                {
                  if (a6 >> 62)
                  {
                    goto LABEL_698;
                  }

                  v12 = 4;
LABEL_66:
                  v10 = 8;
                  v11 = 9;
                  v13 = 8;
                  return v11 + v10 + v13 + v12;
                }

                v12 = 4;
                goto LABEL_691;
              }

              v12 = 4;
              goto LABEL_675;
            }

            if (a6 >= 0x40)
            {
              if (a6 >= 0x4000)
              {
                if (a6 >> 30)
                {
                  if (a6 >> 62)
                  {
                    goto LABEL_698;
                  }

                  v13 = 8;
LABEL_332:
                  v10 = 4;
LABEL_359:
                  v11 = 9;
                  v12 = 4;
                  return v11 + v10 + v13 + v12;
                }

                v13 = 8;
LABEL_607:
                v10 = 4;
                goto LABEL_611;
              }

              v13 = 8;
LABEL_542:
              v10 = 4;
LABEL_546:
              v11 = 3;
              v12 = 4;
              return v11 + v10 + v13 + v12;
            }

            v13 = 8;
LABEL_459:
            v10 = 4;
LABEL_463:
            v11 = 2;
            v12 = 4;
            return v11 + v10 + v13 + v12;
          }

          if (a6 < 0x40)
          {
            v12 = 4;
            v13 = 8;
            goto LABEL_413;
          }

          if (a6 >= 0x4000)
          {
            if (a6 >> 30)
            {
              if (a6 >> 62)
              {
                goto LABEL_698;
              }

              v12 = 4;
LABEL_292:
              v13 = 8;
LABEL_378:
              v11 = 9;
              v10 = 2;
              return v11 + v10 + v13 + v12;
            }

            v12 = 4;
LABEL_571:
            v13 = 8;
            goto LABEL_626;
          }

          v12 = 4;
LABEL_500:
          v13 = 8;
          goto LABEL_580;
        }

        if (a6 < 0x40)
        {
          v12 = 4;
          v13 = 8;
          goto LABEL_313;
        }

        if (a6 >= 0x4000)
        {
          if (a6 >> 30)
          {
            if (a6 >> 62)
            {
              goto LABEL_698;
            }

            v12 = 4;
LABEL_385:
            v13 = 8;
LABEL_409:
            v11 = 9;
            v10 = 1;
            return v11 + v10 + v13 + v12;
          }

          v12 = 4;
          goto LABEL_628;
        }

        v12 = 4;
        goto LABEL_582;
      }

      if (a5 < 0x40)
      {
        if (a6 >= 0x40)
        {
          if (a6 >= 0x4000)
          {
            if (a6 >> 30)
            {
              if (a6 >> 62)
              {
                goto LABEL_698;
              }

              v12 = 4;
              goto LABEL_310;
            }

            v12 = 4;
            goto LABEL_576;
          }

          v12 = 4;
          goto LABEL_505;
        }

        v12 = 4;
LABEL_415:
        v10 = 1;
        goto LABEL_416;
      }

      if (a5 < 0x4000)
      {
        if (a6 >= 0x40)
        {
          if (a6 >= 0x4000)
          {
            if (a6 >> 30)
            {
              if (a6 >> 62)
              {
                goto LABEL_698;
              }

              v12 = 4;
              goto LABEL_400;
            }

            v12 = 4;
LABEL_632:
            v10 = 2;
            v11 = 5;
            v13 = 2;
            return v11 + v10 + v13 + v12;
          }

          v12 = 4;
LABEL_586:
          v10 = 2;
          v11 = 3;
          v13 = 2;
          return v11 + v10 + v13 + v12;
        }

        v12 = 4;
        goto LABEL_269;
      }

      if (!(a5 >> 30))
      {
        if (a6 < 0x40)
        {
          v12 = 4;
          v11 = 2;
        }

        else if (a6 < 0x4000)
        {
          v12 = 4;
          v11 = 3;
        }

        else if (a6 >> 30)
        {
          if (a6 >> 62)
          {
            goto LABEL_698;
          }

          v12 = 4;
          v11 = 9;
        }

        else
        {
          v12 = 4;
          v11 = 5;
        }

        v10 = 4;
        v13 = 2;
        return v11 + v10 + v13 + v12;
      }

      if (a5 >> 62)
      {
        goto LABEL_698;
      }

      if (a6 >= 0x40)
      {
        if (a6 >= 0x4000)
        {
          if (a6 >> 30)
          {
            if (a6 >> 62)
            {
              goto LABEL_698;
            }

            v12 = 4;
LABEL_76:
            v13 = 2;
LABEL_153:
            v10 = 8;
            v11 = 9;
            return v11 + v10 + v13 + v12;
          }

          v12 = 4;
LABEL_556:
          v13 = 2;
          goto LABEL_662;
        }

        v12 = 4;
LABEL_480:
        v13 = 2;
        goto LABEL_621;
      }

      v12 = 4;
      goto LABEL_387;
    }

    if (a5 < 0x40)
    {
      if (a6 >= 0x40)
      {
        if (a6 >= 0x4000)
        {
          if (a6 >> 30)
          {
            if (a6 >> 62)
            {
              goto LABEL_698;
            }

            v12 = 4;
            goto LABEL_217;
          }

          v12 = 4;
LABEL_493:
          v10 = 1;
          v11 = 5;
          v13 = 1;
          return v11 + v10 + v13 + v12;
        }

        v12 = 4;
LABEL_403:
        v10 = 1;
        v11 = 3;
        v13 = 1;
        return v11 + v10 + v13 + v12;
      }

      v12 = 4;
LABEL_315:
      v10 = 1;
      v11 = 2;
      v13 = 1;
      return v11 + v10 + v13 + v12;
    }

    if (a5 >= 0x4000)
    {
      if (!(a5 >> 30))
      {
        if (a6 >= 0x40)
        {
          if (a6 >= 0x4000)
          {
            if (a6 >> 30)
            {
              if (a6 >> 62)
              {
                goto LABEL_698;
              }

              v13 = 1;
              goto LABEL_332;
            }

            v13 = 1;
            goto LABEL_607;
          }

          v13 = 1;
          goto LABEL_542;
        }

        v13 = 1;
        goto LABEL_459;
      }

      if (a5 >> 62)
      {
        goto LABEL_698;
      }

      if (a6 >= 0x40)
      {
        if (a6 >= 0x4000)
        {
          if (a6 >> 30)
          {
            if (a6 >> 62)
            {
              goto LABEL_698;
            }

            v12 = 4;
            v13 = 1;
            goto LABEL_153;
          }

          v12 = 4;
          v13 = 1;
LABEL_662:
          v10 = 8;
          v11 = 5;
          return v11 + v10 + v13 + v12;
        }

        v12 = 4;
        v13 = 1;
LABEL_621:
        v10 = 8;
        v11 = 3;
        return v11 + v10 + v13 + v12;
      }

      v12 = 4;
      v13 = 1;
LABEL_485:
      v10 = 8;
      v11 = 2;
      return v11 + v10 + v13 + v12;
    }

    if (a6 < 0x40)
    {
      v12 = 4;
      v11 = 2;
LABEL_452:
      v10 = 2;
      v13 = 1;
      return v11 + v10 + v13 + v12;
    }

    if (a6 >= 0x4000)
    {
      if (a6 >> 30)
      {
        if (a6 >> 62)
        {
          goto LABEL_698;
        }

        v12 = 4;
        v11 = 9;
      }

      else
      {
        v12 = 4;
        v11 = 5;
      }

      goto LABEL_452;
    }

    v12 = 4;
LABEL_451:
    v11 = 3;
    goto LABEL_452;
  }

  if (v9 >> 62)
  {
    goto LABEL_698;
  }

  if (a4 < 0x40)
  {
    if (a5 >= 0x40)
    {
      if (a5 < 0x4000)
      {
        if (a6 >= 0x40)
        {
          if (a6 >= 0x4000)
          {
            if (a6 >> 30)
            {
              if (a6 >> 62)
              {
                goto LABEL_698;
              }

              v12 = 8;
              v13 = 1;
              goto LABEL_304;
            }

            v12 = 8;
            v13 = 1;
LABEL_574:
            v10 = 2;
            v11 = 5;
            return v11 + v10 + v13 + v12;
          }

          v12 = 8;
          v13 = 1;
LABEL_503:
          v10 = 2;
          v11 = 3;
          return v11 + v10 + v13 + v12;
        }

        v12 = 8;
        v13 = 1;
LABEL_413:
        v11 = 2;
        v10 = 2;
        return v11 + v10 + v13 + v12;
      }

      if (a5 >> 30)
      {
        if (a5 >> 62)
        {
          goto LABEL_698;
        }

        if (a6 >= 0x40)
        {
          if (a6 >= 0x4000)
          {
            if (a6 >> 30)
            {
              if (a6 >> 62)
              {
                goto LABEL_698;
              }

              v13 = 1;
              goto LABEL_285;
            }

            v13 = 1;
            goto LABEL_693;
          }

          v13 = 1;
          goto LABEL_678;
        }

        v13 = 1;
        goto LABEL_521;
      }

      if (a6 < 0x40)
      {
        v12 = 8;
        v13 = 1;
        v10 = 4;
        v11 = 2;
        return v11 + v10 + v13 + v12;
      }

      if (a6 >= 0x4000)
      {
        if (a6 >> 30)
        {
          if (a6 >> 62)
          {
            goto LABEL_698;
          }

          v12 = 8;
          v13 = 1;
          goto LABEL_394;
        }

        v12 = 8;
        v13 = 1;
LABEL_630:
        v10 = 4;
        v11 = 5;
        return v11 + v10 + v13 + v12;
      }

      v12 = 8;
      v13 = 1;
LABEL_584:
      v10 = 4;
      v11 = 3;
      return v11 + v10 + v13 + v12;
    }

    if (a6 >= 0x40)
    {
      if (a6 >= 0x4000)
      {
        if (a6 >> 30)
        {
          if (a6 >> 62)
          {
            goto LABEL_698;
          }

          v12 = 8;
LABEL_217:
          v10 = 1;
          v11 = 9;
          v13 = 1;
          return v11 + v10 + v13 + v12;
        }

        v12 = 8;
        goto LABEL_493;
      }

      v12 = 8;
      goto LABEL_403;
    }

    v12 = 8;
    goto LABEL_315;
  }

  if (a4 < 0x4000)
  {
    if (a5 > 0x3F)
    {
      if (a5 >> 14)
      {
        if (a5 >> 30)
        {
          if (a5 >> 62)
          {
            goto LABEL_698;
          }

          if (a6 < 0x40)
          {
            v10 = 8;
            v11 = 2;
            v13 = 2;
            v12 = 8;
            return v11 + v10 + v13 + v12;
          }

          if (a6 >= 0x4000)
          {
            if (a6 >> 30)
            {
              if (a6 >> 62)
              {
                goto LABEL_698;
              }

              v13 = 2;
              goto LABEL_285;
            }

            v13 = 2;
LABEL_693:
            v10 = 8;
            goto LABEL_694;
          }

          v13 = 2;
LABEL_678:
          v10 = 8;
          goto LABEL_679;
        }

        if (a6 >= 0x40)
        {
          if (a6 >= 0x4000)
          {
            if (a6 >> 30)
            {
              if (a6 >> 62)
              {
                goto LABEL_698;
              }

              v12 = 8;
LABEL_232:
              v13 = 2;
LABEL_394:
              v10 = 4;
              v11 = 9;
              return v11 + v10 + v13 + v12;
            }

            v12 = 8;
LABEL_530:
            v13 = 2;
            goto LABEL_630;
          }

          v12 = 8;
LABEL_446:
          v13 = 2;
          goto LABEL_584;
        }

        v12 = 8;
        v10 = 4;
        goto LABEL_416;
      }

      if (a6 >= 0x40)
      {
        if (a6 >= 0x4000)
        {
          if (a6 >> 30)
          {
            if (a6 >> 62)
            {
              goto LABEL_698;
            }

            v12 = 8;
LABEL_400:
            v10 = 2;
            v11 = 9;
            v13 = 2;
            return v11 + v10 + v13 + v12;
          }

          v12 = 8;
          goto LABEL_632;
        }

        v12 = 8;
        goto LABEL_586;
      }

      v12 = 8;
      goto LABEL_269;
    }

    if (a6 >= 0x40)
    {
      if (a6 >= 0x4000)
      {
        if (a6 >> 30)
        {
          if (a6 >> 62)
          {
            goto LABEL_698;
          }

          v12 = 8;
LABEL_310:
          v13 = 2;
LABEL_311:
          v10 = 1;
          v11 = 9;
          return v11 + v10 + v13 + v12;
        }

        v12 = 8;
LABEL_576:
        v13 = 2;
        goto LABEL_577;
      }

      v12 = 8;
LABEL_505:
      v13 = 2;
      goto LABEL_506;
    }

    v12 = 8;
    goto LABEL_415;
  }

  if (!(a4 >> 30))
  {
    if (a5 >= 0x40)
    {
      if (a5 >= 0x4000)
      {
        if (a5 >> 30)
        {
          if (a5 >> 62)
          {
            goto LABEL_698;
          }

          if (a6 >= 0x40)
          {
            if (a6 >= 0x4000)
            {
              if (a6 >> 30)
              {
                if (a6 >> 62)
                {
                  goto LABEL_698;
                }

                v13 = 4;
LABEL_285:
                v10 = 8;
LABEL_286:
                v11 = 9;
                v12 = 8;
                return v11 + v10 + v13 + v12;
              }

              v13 = 4;
              goto LABEL_693;
            }

            v13 = 4;
            goto LABEL_678;
          }

          v13 = 4;
LABEL_521:
          v10 = 8;
          goto LABEL_522;
        }

        if (a6 >= 0x40)
        {
          if (a6 >= 0x4000)
          {
            if (a6 >> 30)
            {
              if (a6 >> 62)
              {
                goto LABEL_698;
              }

              v12 = 8;
LABEL_569:
              v10 = 4;
              v11 = 9;
              v13 = 4;
              return v11 + v10 + v13 + v12;
            }

            v12 = 8;
            goto LABEL_689;
          }

          v12 = 8;
          goto LABEL_672;
        }

        v12 = 8;
LABEL_456:
        v10 = 4;
        v11 = 2;
        v13 = 4;
        return v11 + v10 + v13 + v12;
      }

      if (a6 >= 0x40)
      {
        if (a6 >= 0x4000)
        {
          if (a6 >> 30)
          {
            if (a6 >> 62)
            {
              goto LABEL_698;
            }

            v12 = 8;
            v13 = 4;
LABEL_304:
            v10 = 2;
            v11 = 9;
            return v11 + v10 + v13 + v12;
          }

          v12 = 8;
          v13 = 4;
          goto LABEL_574;
        }

        v12 = 8;
        v13 = 4;
        goto LABEL_503;
      }

      v12 = 8;
      v13 = 4;
      goto LABEL_413;
    }

    if (a6 >= 0x40)
    {
      if (a6 >= 0x4000)
      {
        if (a6 >> 30)
        {
          if (a6 >> 62)
          {
            goto LABEL_698;
          }

          v12 = 8;
          v13 = 4;
          goto LABEL_409;
        }

        v12 = 8;
        v13 = 4;
LABEL_634:
        v11 = 5;
        v10 = 1;
        return v11 + v10 + v13 + v12;
      }

      v12 = 8;
      v13 = 4;
      goto LABEL_588;
    }

    v12 = 8;
    v13 = 4;
    goto LABEL_313;
  }

  if (a4 >> 62)
  {
    goto LABEL_698;
  }

  if (a5 < 0x40)
  {
    if (a6 < 0x40)
    {
      v13 = 8;
      v11 = 2;
    }

    else if (a6 < 0x4000)
    {
      v13 = 8;
      v11 = 3;
    }

    else if (a6 >> 30)
    {
      if (a6 >> 62)
      {
        goto LABEL_698;
      }

      v13 = 8;
      v11 = 9;
    }

    else
    {
      v13 = 8;
      v11 = 5;
    }

    v10 = 1;
    v12 = 8;
    return v11 + v10 + v13 + v12;
  }

  if (a5 < 0x4000)
  {
    if (a6 < 0x40)
    {
      v12 = 8;
      v11 = 2;
    }

    else if (a6 < 0x4000)
    {
      v12 = 8;
      v11 = 3;
    }

    else if (a6 >> 30)
    {
      if (a6 >> 62)
      {
        goto LABEL_698;
      }

      v12 = 8;
      v11 = 9;
    }

    else
    {
      v12 = 8;
      v11 = 5;
    }

    v10 = 2;
    v13 = 8;
    return v11 + v10 + v13 + v12;
  }

  if (!(a5 >> 30))
  {
    if (a6 >= 0x40)
    {
      if (a6 >= 0x4000)
      {
        if (a6 >> 30)
        {
          if (a6 >> 62)
          {
            goto LABEL_698;
          }

          v13 = 8;
          v10 = 4;
          goto LABEL_286;
        }

        v13 = 8;
        v10 = 4;
LABEL_694:
        v11 = 5;
        v12 = 8;
        return v11 + v10 + v13 + v12;
      }

      v13 = 8;
      v10 = 4;
LABEL_679:
      v11 = 3;
      v12 = 8;
      return v11 + v10 + v13 + v12;
    }

    v13 = 8;
    v10 = 4;
LABEL_522:
    v11 = 2;
    v12 = 8;
    return v11 + v10 + v13 + v12;
  }

  if (!(a5 >> 62))
  {
    if (a6 < 0x40)
    {
      v10 = 8;
      v11 = 2;
      goto LABEL_697;
    }

    if (a6 < 0x4000)
    {
      v10 = 8;
      v11 = 3;
      goto LABEL_697;
    }

    if (!(a6 >> 30))
    {
      v10 = 8;
      v11 = 5;
      goto LABEL_697;
    }

    if (!(a6 >> 62))
    {
      v10 = 8;
      v11 = 9;
LABEL_697:
      v13 = 8;
      v12 = 8;
      return v11 + v10 + v13 + v12;
    }
  }

LABEL_698:
  result = sub_182AD3EA8();
  __break(1u);
  return result;
}