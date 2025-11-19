unint64_t *sub_3C66C(uint64_t a1, void *a2)
{
  v2 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v59[0] = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v50 = 0;
  v6 = v4 + 32;
  v7 = v2 + 7;
  v55 = v4;
  v56 = v4 + 32;
  while (1)
  {
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v53 = v5 + 1;
    v11 = v2[5];
    sub_1B57F4();

    sub_1B4884();
    v12 = sub_1B5844();
    v13 = -1 << *(v2 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    v16 = 1 << v14;
    if (((1 << v14) & v7[v14 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v53;
    if (v53 == v3)
    {
      goto LABEL_42;
    }
  }

  v17 = (v2[6] + 16 * v14);
  if (*v17 != v10 || v17[1] != v9)
  {
    v19 = ~v13;
    while ((sub_1B5604() & 1) == 0)
    {
      v14 = (v14 + 1) & v19;
      v15 = v14 >> 6;
      v16 = 1 << v14;
      if (((1 << v14) & v7[v14 >> 6]) == 0)
      {
        v6 = v56;
        goto LABEL_6;
      }

      v20 = (v2[6] + 16 * v14);
      if (*v20 == v10 && v20[1] == v9)
      {
        break;
      }
    }
  }

  v59[1] = v53;

  v22 = *(v2 + 32);
  v51 = ((1 << v22) + 63) >> 6;
  v23 = 8 * v51;
  v24 = v56;
  if ((v22 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

LABEL_46:
  v44 = v23;

  v45 = v44;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v52 = &v49;
    __chkstk_darwin(v21);
    v14 = &v49 - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0);
    v58 = v7;
    memcpy(v14, v7, v25);
    v57 = v2;
    v26 = v2[2];
    v27 = *(v14 + 8 * v15) & ~v16;
    v54 = v14;
    *(v14 + 8 * v15) = v27;
    v28 = v26 - 1;
    v29 = v55;
    v7 = *(v55 + 16);
    v30 = v53;
    while (1)
    {
      v53 = v28;
      if (v30 == v7)
      {
LABEL_41:
        v2 = sub_3D158(v54, v51, v53, v57);
LABEL_42:

        return v2;
      }

      v15 = v30;
      while (1)
      {
        if (v30 < 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v15 >= *(v29 + 16))
        {
          goto LABEL_45;
        }

        v32 = (v24 + 16 * v15);
        v33 = *v32;
        v16 = v32[1];
        ++v15;
        v2 = v57;
        v34 = v57[5];
        sub_1B57F4();

        sub_1B4884();
        v35 = sub_1B5844();
        v36 = -1 << *(v2 + 32);
        v37 = v35 & ~v36;
        v14 = v37 >> 6;
        v38 = 1 << v37;
        if (((1 << v37) & v58[v37 >> 6]) != 0)
        {
          break;
        }

LABEL_37:

LABEL_22:
        v24 = v56;
        if (v15 == v7)
        {
          goto LABEL_41;
        }
      }

      v39 = (v2[6] + 16 * v37);
      if (*v39 != v33 || v39[1] != v16)
      {
        v41 = ~v36;
        v2 = (&dword_0 + 1);
        while ((sub_1B5604() & 1) == 0)
        {
          v37 = (v37 + 1) & v41;
          v14 = v37 >> 6;
          v38 = 1 << v37;
          if (((1 << v37) & v58[v37 >> 6]) == 0)
          {
            v29 = v55;
            goto LABEL_37;
          }

          v42 = (v57[6] + 16 * v37);
          if (*v42 == v33 && v42[1] == v16)
          {
            break;
          }
        }
      }

      v29 = v55;
      v31 = v54[v14];
      v54[v14] = v31 & ~v38;
      if ((v31 & v38) == 0)
      {
        goto LABEL_22;
      }

      v28 = v53 - 1;
      v24 = v56;
      if (__OFSUB__(v53, 1))
      {
        __break(1u);
      }

      v30 = v15;
      if (v53 == 1)
      {

        v2 = &_swiftEmptySetSingleton;
        goto LABEL_42;
      }
    }
  }

  v46 = swift_slowAlloc();
  memcpy(v46, v7, v45);
  v47 = v50;
  v48 = sub_3CD50(v46, v51, v2, v14, v59);

  if (!v47)
  {

    return v48;
  }

  __break(1u);
  return result;
}

unint64_t *sub_3CB18(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_3CF34(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        sub_1B57F4();

        sub_1B4884();
        v20 = sub_1B5844();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((sub_1B5604() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return _swiftEmptySetSingleton;
    }

    return result;
  }
}

unint64_t *sub_3CD50(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v28 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v27 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          return sub_3D158(v28, a2, v27, a3);
        }

        if (v11 >= v12)
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = *a5 + 16 * v11;
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
        a5[1] = v11 + 1;
        v16 = *(a3 + 40);
        sub_1B57F4();

        sub_1B4884();
        v17 = sub_1B5844();
        v18 = -1 << *(a3 + 32);
        v19 = v17 & ~v18;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v9 + 8 * (v19 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
      }

      v22 = (*(a3 + 48) + 16 * v19);
      if (*v22 != v15 || v22[1] != v14)
      {
        v24 = ~v18;
        while ((sub_1B5604() & 1) == 0)
        {
          v19 = (v19 + 1) & v24;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if (((1 << v19) & *(v9 + 8 * (v19 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v25 = (*(a3 + 48) + 16 * v19);
          if (*v25 == v15 && v25[1] == v14)
          {
            break;
          }
        }
      }

      v10 = v28[v20];
      v28[v20] = v10 & ~v21;
    }

    while ((v10 & v21) == 0);
    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    if (v27 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

uint64_t sub_3CF34(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = _swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_2B0C(&qword_229260, &qword_1BC340);
  result = sub_1B5054();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v9[5];
    sub_1B57F4();

    sub_1B4884();
    result = sub_1B5844();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (v9[6] + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_3D158(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_2B0C(&qword_229550, &unk_1BC5C0);
  result = sub_1B5054();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v9[5];
    sub_1B57F4();

    sub_1B4884();
    result = sub_1B5844();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (v9[6] + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_3D37C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return _swiftEmptySetSingleton;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_2B0C(&qword_2293D0, &qword_1BC470);
  result = sub_1B5054();
  v6 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    memcpy(__dst, (*(a4 + 48) + 568 * (v13 | (v11 << 6))), 0x231uLL);
    v16 = *(v6 + 40);
    sub_1B57F4();
    sub_1B5834(*&__dst[0]);
    v27[2] = *(&__dst[2] + 8);
    v27[3] = *(&__dst[3] + 8);
    v27[4] = *(&__dst[4] + 8);
    *&v27[5] = *(&__dst[5] + 1);
    v27[0] = *(__dst + 8);
    v27[1] = *(&__dst[1] + 8);
    sub_4299C(__dst, v33);
    Book.Metadata.hash(into:)(v34);
    if (*&__dst[9] >> 1 == 0xFFFFFFFFLL)
    {
      sub_1B5814(0);
    }

    else
    {
      v27[2] = __dst[8];
      v27[3] = __dst[9];
      *&v27[4] = *&__dst[10];
      v27[0] = __dst[6];
      v27[1] = __dst[7];
      v30 = __dst[8];
      v31 = __dst[9];
      v32 = *&__dst[10];
      v28 = __dst[6];
      v29 = __dst[7];
      sub_1B5814(1u);
      sub_42CD4(v27, v33);
      InternalAffinitySource.hash(into:)(v34);
      v33[2] = v30;
      v33[3] = v31;
      *&v33[4] = v32;
      v33[0] = v28;
      v33[1] = v29;
      sub_42D30(v33);
    }

    memcpy(v33, &__dst[10] + 8, 0x179uLL);
    if (sub_42D84(v33) == 1)
    {
      sub_1B5814(0);
    }

    else
    {
      memcpy(v27, &__dst[10] + 8, 0x179uLL);
      sub_1B5814(1u);
      BookHistory.hash(into:)();
    }

    v17 = LOBYTE(__dst[35]);
    sub_12CC70(v34, *(&__dst[34] + 1));
    if (v17 == 12)
    {
      sub_1B5814(0);
    }

    else
    {
      LOBYTE(v27[0]) = v17;
      sub_1B5814(1u);
      PositiveAffinitySource.hash(into:)();
    }

    result = sub_1B5844();
    v18 = -1 << *(v6 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_35;
        }
      }

      goto LABEL_40;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_35:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    result = memcpy((*(v6 + 48) + 568 * v21), __dst, 0x231uLL);
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_41;
    }

    if (!v5)
    {
LABEL_37:

      return v6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_37;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_3D71C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = _swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_2B0C(&qword_2292D0, &qword_1BC390);
  result = sub_1B5054();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    v17 = v9[5];
    result = sub_1B57E4();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v16;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_3D908(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v8 = _swiftEmptySetSingleton;
LABEL_6:

    return v8;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_2B0C(&qword_229418, &qword_1BC4B8);
  result = sub_1B5054();
  v8 = result;
  if (a2 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a1;
  }

  v10 = 0;
  v11 = result + 56;
  v33 = v4;
  v34 = result;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v35 = (v9 - 1) & v9;
LABEL_17:
    v15 = *(v4 + 48) + 40 * (v12 | (v10 << 6));
    v17 = *v15;
    v16 = *(v15 + 8);
    v18 = *(v15 + 16);
    v19 = *(v15 + 24);
    v20 = *(v15 + 32);
    v21 = v8[5];
    sub_1B57F4();
    sub_1B5804(v17);
    sub_1B5834(v16);
    sub_1B5814(v18);
    if (v20 == 1)
    {
      sub_1B5814(0);
    }

    else
    {
      sub_1B5814(1u);
      sub_1B5834(v19);
    }

    result = sub_1B5844();
    v8 = v34;
    v22 = -1 << *(v34 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v11 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v11 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_30;
        }
      }

      goto LABEL_34;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_30:
    *(v11 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = *(v34 + 48) + 40 * v25;
    *v30 = v17;
    *(v30 + 8) = v16;
    *(v30 + 16) = v18;
    *(v30 + 24) = v19;
    *(v30 + 32) = v20;
    ++*(v34 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_35;
    }

    v4 = v33;
    v9 = v35;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v13 = v10;
  while (1)
  {
    v10 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v10 >= a2)
    {
      goto LABEL_6;
    }

    v14 = a1[v10];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v35 = (v14 - 1) & v14;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

unsigned __int8 *sub_3DBA4(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_1B4954();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_3E6B4();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1B5154();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unsigned __int8 *sub_3E128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1B4954();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_3E6B4();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1B5154();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_3E6B4()
{
  v0 = sub_1B4964();
  v4 = sub_3E734(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_3E734(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1B4874();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1B4EC4();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_35594(v9, 0, &qword_2291E8, &qword_1BC2C8);
  v12 = sub_3E89C(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1B4874();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1B5154();
LABEL_4:

  return sub_1B4874();
}

unint64_t sub_3E89C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_3EABC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1B4914();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1B5154();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_3EABC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1B48F4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_3EABC(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1B4924();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_1B4904();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void *sub_3EB38(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_3EC90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_2B0C(&qword_2293C8, &qword_1D07B0);
  v37 = *(v40 - 8);
  v8 = *(v37 + 64);
  v9 = __chkstk_darwin(v40);
  v39 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v38 = (&v33 - v12);
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v23 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v23;
    a1[4] = v16;
    return a3;
  }

  if (!a3)
  {
    v23 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v19 = 1;
    v36 = a3;
    while (v16)
    {
LABEL_14:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v17;
      v24 = v22 | (v17 << 6);
      v25 = *(a4 + 56);
      v26 = a4;
      v27 = *(*(a4 + 48) + v24);
      v28 = v25 + *(*(type metadata accessor for AttributeAffinityResult() - 8) + 72) * v24;
      v29 = v39;
      sub_42C00(v28, &v39[*(v40 + 48)]);
      *v29 = v27;
      v30 = v29;
      a1 = v38;
      sub_42C64(v30, v38);
      sub_42C64(a1, a2);
      a3 = v36;
      if (v19 == v36)
      {
        a1 = v35;
        a4 = v26;
        goto LABEL_23;
      }

      a2 += *(v37 + 72);
      result = v19;
      v31 = __OFADD__(v19++, 1);
      a4 = v26;
      v17 = v23;
      if (v31)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v17 = v21;
        goto LABEL_14;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v32 = v17 + 1;
    }

    else
    {
      v32 = v18;
    }

    v23 = v32 - 1;
    a3 = result;
    a1 = v35;
LABEL_23:
    v14 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_3EF0C(void *result, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v21 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 568 * (v17 | (v12 << 6)));
      memcpy(__dst, v18, 0x231uLL);
      memmove(v11, v18, 0x231uLL);
      if (v14 == v10)
      {
        sub_4299C(__dst, v22);
        goto LABEL_23;
      }

      v11 += 568;
      sub_4299C(__dst, v22);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = v13;
    }

    v12 = v20 - 1;
    v10 = result;
LABEL_23:
    v7 = v21;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_3F09C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_3F1A0(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v27 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 136 * (v17 | (v12 << 6)));
      v29[0] = *v18;
      v19 = v18[4];
      v21 = v18[1];
      v20 = v18[2];
      v29[3] = v18[3];
      v29[4] = v19;
      v29[1] = v21;
      v29[2] = v20;
      v23 = v18[6];
      v22 = v18[7];
      v24 = v18[5];
      v30 = *(v18 + 128);
      v29[6] = v23;
      v29[7] = v22;
      v29[5] = v24;
      memmove(v11, v18, 0x81uLL);
      if (v14 == v10)
      {
        sub_429F8(v29, v28);
        goto LABEL_23;
      }

      v11 += 136;
      sub_429F8(v29, v28);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v26 = v12 + 1;
    }

    else
    {
      v26 = v13;
    }

    v12 = v26 - 1;
    v10 = result;
LABEL_23:
    v7 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_3F350(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      memmove(v11, (*(a4 + 56) + 384 * (v17 | (v12 << 6))), 0x179uLL);
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 384;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_3F4A0(void *result, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v21 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 568 * (v17 | (v12 << 6)));
      memcpy(__dst, v18, 0x231uLL);
      memmove(v11, v18, 0x231uLL);
      if (v14 == v10)
      {
        sub_4299C(__dst, v22);
        goto LABEL_23;
      }

      v11 += 568;
      sub_4299C(__dst, v22);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = v13;
    }

    v12 = v20 - 1;
    v10 = result;
LABEL_23:
    v7 = v21;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_3F630(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v25 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(a4 + 56) + 40 * (v17 | (v12 << 6));
      v19 = *(v18 + 8);
      v21 = *(v18 + 16);
      v20 = *(v18 + 24);
      v22 = *(v18 + 32);
      *v11 = *v18;
      *(v11 + 8) = v19;
      *(v11 + 16) = v21;
      *(v11 + 24) = v20;
      *(v11 + 32) = v22;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 40;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v24 = v12 + 1;
    }

    else
    {
      v24 = v13;
    }

    v12 = v24 - 1;
    v10 = result;
LABEL_23:
    v7 = v25;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_3F7C0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!a2)
  {
    v16 = *(a4 + 16);
    v6 = 0;
LABEL_14:
    *v5 = a4;
    v5[1] = v16;
    return v6;
  }

  if (!a3)
  {
    v16 = *(a4 + 16);
LABEL_13:
    v6 = a3;
    goto LABEL_14;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v6)
    {
      v8 = a2;
      v9 = 0;
      v10 = a3 - 1;
      v11 = (a4 + 40 * v6 + 24);
      while (v6 + v9 <= *(a4 + 16))
      {
        v12 = *(v11 - 24);
        v14 = *(v11 - 2);
        v13 = *(v11 - 1);
        v15 = *v11;
        *v8 = *(v11 - 4);
        *(v8 + 8) = v12;
        *(v8 + 16) = v14;
        *(v8 + 24) = v13;
        *(v8 + 32) = v15;
        if (!(v10 + v9))
        {

          v16 = v6 + v9 - 1;
          goto LABEL_13;
        }

        --v9;
        v11 -= 5;
        v8 += 40;
        v16 = v6 + v9;
        if (!(v6 + v9))
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    v16 = 0;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void *sub_3F8D4(void *result, char *__dst, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v8 = result;
  v9 = a7 >> 1;
  if (!__dst)
  {
LABEL_11:
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    *v8 = a4;
    v8[1] = a5;
    v8[2] = a6;
    v8[3] = a7;
    v8[4] = v9;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v10 = __dst;
    v21 = a4;
    v22 = a5;
    v23 = a7;
    v11 = 0;
    v12 = v9 - a6;
    v19 = a3;
    v20 = a7 >> 1;
    v13 = a3 - 1;
    v14 = (a5 + 136 * v9 - 136);
    while (1)
    {
      if (v12 == v11)
      {
        v9 = a6;
        a3 = v12;
        a5 = v22;
        a7 = v23;
        a4 = v21;
        goto LABEL_13;
      }

      if (v9 <= a6)
      {
        break;
      }

      v15 = *(v14 + 7);
      v25[6] = *(v14 + 6);
      v25[7] = v15;
      v26 = v14[128];
      v16 = *(v14 + 3);
      v25[2] = *(v14 + 2);
      v25[3] = v16;
      v17 = *(v14 + 5);
      v25[4] = *(v14 + 4);
      v25[5] = v17;
      v18 = *(v14 + 1);
      v25[0] = *v14;
      v25[1] = v18;
      memmove(v10, v14, 0x81uLL);
      if (v13 == v11)
      {
        sub_429F8(v25, v24);
        a4 = v21;
        v9 = ~v11 + v20;
        a5 = v22;
        a7 = v23;
        a3 = v19;
        goto LABEL_13;
      }

      v10 += 136;
      result = sub_429F8(v25, v24);
      ++v11;
      v14 -= 136;
      --v9;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_3FA2C(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!__dst)
  {
    v15 = *(a4 + 16);
    v6 = 0;
LABEL_14:
    *v5 = a4;
    v5[1] = v15;
    return v6;
  }

  if (!a3)
  {
    v15 = *(a4 + 16);
LABEL_13:
    v6 = a3;
    goto LABEL_14;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v6)
    {
      v8 = __dst;
      v9 = 0;
      v10 = (a4 + 136 * v6 - 104);
      while (v6 + v9 <= *(a4 + 16))
      {
        v11 = *(v10 + 7);
        v17[6] = *(v10 + 6);
        v17[7] = v11;
        v18 = v10[128];
        v12 = *(v10 + 3);
        v17[2] = *(v10 + 2);
        v17[3] = v12;
        v13 = *(v10 + 5);
        v17[4] = *(v10 + 4);
        v17[5] = v13;
        v14 = *(v10 + 1);
        v17[0] = *v10;
        v17[1] = v14;
        memmove(v8, v10, 0x81uLL);
        if (a3 + v9 == 1)
        {
          sub_429F8(v17, v16);
          v15 = v6 + v9 - 1;
          goto LABEL_13;
        }

        v8 += 136;
        sub_429F8(v17, v16);
        --v9;
        v10 -= 136;
        v15 = v6 + v9;
        if (!(v6 + v9))
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    v15 = 0;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void *sub_3FB64(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = *(a4 + 48) + 40 * (v14 | (v9 << 6));
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      v18 = *(v15 + 32);
      *a2 = *v15;
      *(a2 + 16) = v16;
      *(a2 + 24) = v17;
      *(a2 + 32) = v18;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 40;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v20 = v9 + 1;
    }

    else
    {
      v20 = (63 - v6) >> 6;
    }

    v9 = v20 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_3FC80(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = (v9 << 9) | (8 * __clz(__rbit64(v7)));
      v15 = *(*(a4 + 56) + v14);
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + v14);
      a2[1] = v15;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v17 = v9 + 1;
    }

    else
    {
      v17 = (63 - v6) >> 6;
    }

    v9 = v17 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_3FD8C(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_3FE88(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_3FF88(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + ((v12 << 12) | (v17 << 6)));
      v19 = v18[3];
      v21 = *v18;
      v20 = v18[1];
      v28[2] = v18[2];
      v28[3] = v19;
      v28[0] = v21;
      v28[1] = v20;
      v22 = *v18;
      v23 = v18[1];
      v24 = v18[3];
      v11[2] = v18[2];
      v11[3] = v24;
      *v11 = v22;
      v11[1] = v23;
      if (v14 == v10)
      {
        sub_42BA4(v28, v27);
        goto LABEL_24;
      }

      v11 += 4;
      sub_42BA4(v28, v27);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v26 = v12 + 1;
    }

    else
    {
      v26 = (63 - v7) >> 6;
    }

    v12 = v26 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_40110(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_40174(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_4025C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1B4CC4();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_111A38(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_402F4()
{
  result = qword_229008;
  if (!qword_229008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229008);
  }

  return result;
}

uint64_t sub_40348(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_229010, &unk_1D15F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_403B8()
{
  result = qword_229030;
  if (!qword_229030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229030);
  }

  return result;
}

uint64_t sub_40474(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_404C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_40528(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_4058C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1CC1C(&qword_229038, &qword_1BB430);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_40610()
{
  result = qword_229088;
  if (!qword_229088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229088);
  }

  return result;
}

uint64_t sub_40664(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1CC1C(&qword_229020, &qword_1BB428);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_40710(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v6 = *(a1 + 16);
  a2();
  result = sub_1B4CC4();
  v11 = result;
  if (v6)
  {
    v8 = (a1 + 32);
    do
    {
      v9 = *v8++;
      a4(&v10, v9);
      --v6;
    }

    while (v6);
    return v11;
  }

  return result;
}

uint64_t sub_40790(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 1;
  result = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  result = sub_1B4CC4();
  v14 = result;
  v7 = v4 - a2;
  if (v4 != a2)
  {
    if (a2 <= v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = a2;
    }

    v9 = v8 - a2;
    v10 = (a1 + 16 * a2 + 8);
    while (v9)
    {
      v12 = *(v10 - 1);
      v11 = *v10;

      sub_111A38(&v13, v12, v11);

      --v9;
      v10 += 2;
      if (!--v7)
      {
        return v14;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_40854(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1B4CC4();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_111CE0(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t _s20BooksPersonalization24AnyCodableArrayContainerV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  v5 = *a1;

  v7 = 0;
  for (i = 32; ; i += 40)
  {
    if (v4 == v7)
    {

      return 1;
    }

    if (v7 >= *(v2 + 16))
    {
      break;
    }

    result = sub_43050(v2 + i, &v14, &qword_229010, &unk_1D15F0);
    v9 = *(v3 + 16);
    if (v7 == v9)
    {

      sub_42F48(&v14, &qword_229010, &unk_1D15F0);
      return 1;
    }

    if (v7++ >= v9)
    {
      goto LABEL_15;
    }

    v17[0] = v14;
    v17[1] = v15;
    v18 = v16;
    sub_43050(v3 + i, v19, &qword_229010, &unk_1D15F0);
    sub_43050(v17, v12, &qword_229010, &unk_1D15F0);
    v14 = 0u;
    v15 = 0u;
    v16 = 0;
    sub_40348(v12, &v14);
    sub_43050(v19, v11, &qword_229010, &unk_1D15F0);
    memset(v12, 0, sizeof(v12));
    v13 = 0;
    sub_40348(v11, v12);
    v10 = static AnyCodableContainer.== infix(_:_:)(&v14, v12);
    sub_40444(v12);
    sub_40444(&v14);
    result = sub_42F48(v17, &qword_229098, &qword_1BB460);
    if ((v10 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

unint64_t _s20BooksPersonalization25AnyCodableObjectContainerV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(*a1 + 16) != *(*a2 + 16))
  {
    return 0;
  }

  v4 = *a1;

  v6 = sub_2A284(v5);

  v8 = sub_2A284(v7);
  v9 = sub_2DF24(v6, v8);

  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = 1 << *(v2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v2 + 64);
  v13 = (v10 + 63) >> 6;

  v15 = 0;
  do
  {
    if (!v12)
    {
      do
      {
        v24 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
          goto LABEL_23;
        }

        if (v24 >= v13)
        {
          v25 = 1;
          goto LABEL_20;
        }

        v12 = *(v2 + 64 + 8 * v24);
        ++v15;
      }

      while (!v12);
      v15 = v24;
      if (*(v2 + 16))
      {
        goto LABEL_8;
      }

LABEL_17:
      __break(1u);
      return 0;
    }

    if (!*(v2 + 16))
    {
      goto LABEL_17;
    }

LABEL_8:
    v16 = (*(v2 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v12)))));
    v18 = *v16;
    v17 = v16[1];

    result = sub_3A678(v18, v17);
    if ((v19 & 1) == 0)
    {
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    }

    sub_43050(*(v2 + 56) + 40 * result, v27, &qword_229010, &unk_1D15F0);
    memset(v29, 0, sizeof(v29));
    v30 = 0;
    result = sub_40348(v27, v29);
    if (!*(v3 + 16))
    {
      goto LABEL_24;
    }

    v20 = sub_3A678(v18, v17);
    v22 = v21;

    if ((v22 & 1) == 0)
    {
      goto LABEL_25;
    }

    v12 &= v12 - 1;
    sub_43050(*(v3 + 56) + 40 * v20, v26, &qword_229010, &unk_1D15F0);
    memset(v27, 0, sizeof(v27));
    v28 = 0;
    sub_40348(v26, v27);
    v23 = static AnyCodableContainer.== infix(_:_:)(v29, v27);
    sub_40444(v27);
    result = sub_40444(v29);
  }

  while ((v23 & 1) != 0);
  v25 = 0;
LABEL_20:

  return v25;
}

uint64_t sub_40D04(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_42AA8();
  result = sub_1B4CC4();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      memcpy(__dst, v4, 0x231uLL);
      sub_4299C(__dst, v6);
      sub_111DC0(v5, __dst);
      memcpy(v6, v5, 0x231uLL);
      sub_2601C(v6);
      v4 += 568;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_40DB0(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_42FFC();
  result = sub_1B4CC4();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_112174(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_40EB0(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v6 = *(a1 + 16);
  a2();
  result = sub_1B4CC4();
  v11 = result;
  if (v6)
  {
    v8 = (a1 + 32);
    do
    {
      v9 = *v8++;
      a4(&v10, v9);
      --v6;
    }

    while (v6);
    return v11;
  }

  return result;
}

uint64_t sub_40F30(uint64_t a1)
{
  v2 = sub_1B4414();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_42FA8(&qword_229448, &type metadata accessor for FeatureKey);
  result = sub_1B4CC4();
  v18 = result;
  if (v10)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v7, v15, v2);
      sub_1124D0(v9, v7);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

uint64_t sub_410CC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 1;
  result = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_1B4CC4();
  v12 = result;
  v7 = __OFSUB__(v4, a2);
  v8 = v4 - a2;
  if (!v8)
  {
    return result;
  }

  if ((v8 < 0) ^ v7 | (v8 == 0))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v9 = (a1 + 8 * a2);
  do
  {
    v10 = *v9++;
    sub_111CE0(&v11, v10);
    --v8;
  }

  while (v8);
  return v12;
}

uint64_t sub_41158(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  if (__OFSUB__(a3 >> 1, a2))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v5 = result;
  sub_42AA8();
  result = sub_1B4CC4();
  v12 = result;
  v6 = v3 - a2;
  if (v3 != a2)
  {
    if (a2 <= v3)
    {
      v7 = v3;
    }

    else
    {
      v7 = a2;
    }

    v8 = v7 - a2;
    v9 = (v5 + 568 * a2);
    while (v8)
    {
      memcpy(__dst, v9, 0x231uLL);
      sub_4299C(__dst, v11);
      sub_111DC0(v10, __dst);
      memcpy(v11, v10, 0x231uLL);
      result = sub_2601C(v11);
      --v8;
      v9 += 568;
      if (!--v6)
      {
        return v12;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_4123C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1B48B4();

    return sub_1B4964();
  }

  return result;
}

uint64_t sub_412D8(uint64_t a1)
{
  sub_2B0C(&qword_2290B8, &qword_1BB480);
  result = sub_1B5294();
  v3 = 0;
  v26 = result;
  v27 = a1;
  v6 = *(a1 + 64);
  v5 = a1 + 64;
  v4 = v6;
  v7 = 1 << *(v5 - 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;
  v25 = result + 64;
  if (v9)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v28 = (v9 - 1) & v9;
LABEL_10:
      v14 = v11 | (v3 << 6);
      v15 = (*(v27 + 48) + 16 * v14);
      v16 = *v15;
      v17 = v15[1];
      sub_43050(*(v27 + 56) + 32 * v14, v31, &qword_229018, &qword_1BB420);

      v18 = v32;
      sub_2C010(v31, v29);
      sub_42F48(v31, &qword_229018, &qword_1BB420);
      v32 = v18;
      if (v18)
      {
        break;
      }

      result = v26;
      *(v25 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v19 = (v26[6] + 16 * v14);
      *v19 = v16;
      v19[1] = v17;
      v20 = v26[7] + 40 * v14;
      v21 = v29[1];
      *v20 = v29[0];
      *(v20 + 16) = v21;
      *(v20 + 32) = v30;
      v22 = v26[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_17;
      }

      v26[2] = v24;
      v9 = v28;
      if (!v28)
      {
        goto LABEL_5;
      }
    }

    return v26;
  }

  else
  {
LABEL_5:
    v12 = v3;
    while (1)
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v3 >= v10)
      {
        return result;
      }

      v13 = *(v5 + 8 * v3);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v28 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

void *sub_414C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v15 = _swiftEmptyArrayStorage;
    sub_374F4(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    for (i = a1 + 32; ; i += 32)
    {
      sub_43050(i, v12, &qword_229018, &qword_1BB420);
      sub_2C010(v12, v13);
      if (v1)
      {
        break;
      }

      sub_42F48(v12, &qword_229018, &qword_1BB420);
      v15 = v3;
      v7 = v3[2];
      v6 = v3[3];
      if (v7 >= v6 >> 1)
      {
        sub_374F4((v6 > 1), v7 + 1, 1);
        v3 = v15;
      }

      v3[2] = v7 + 1;
      v8 = &v3[5 * v7];
      v9 = v13[0];
      v10 = v13[1];
      v8[8] = v14;
      *(v8 + 2) = v9;
      *(v8 + 3) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    sub_42F48(v12, &qword_229018, &qword_1BB420);
  }

  return v3;
}

uint64_t sub_4161C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_41670(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_416C4(uint64_t result, unint64_t a2, unsigned __int8 a3)
{
  if (a3 > 2u)
  {
    if (a3 != 3 && a3 != 4 && a3 != 5)
    {
      return result;
    }
  }

  switch(a3)
  {
    case 0u:

    case 1u:
      return sub_41670(result, a2);
    case 2u:
  }

  return result;
}

unint64_t sub_41710()
{
  result = qword_2290C0;
  if (!qword_2290C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2290C0);
  }

  return result;
}

unint64_t sub_41764()
{
  result = qword_2290D0;
  if (!qword_2290D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2290D0);
  }

  return result;
}

uint64_t sub_417E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_30C38(a1, a2);
}

uint64_t sub_41800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1B4B54())
  {
    sub_1B52C4();
    v13 = sub_1B52B4();
  }

  else
  {
    v13 = &_swiftEmptyDictionarySingleton;
  }

  result = sub_1B4B84();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1B4B44())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1B50A4();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_15B790(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_41AEC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = *a3;
  v3._countAndFlagsBits = 0x2D746E65746E6F63;
  v3._object = 0xEC00000065707974;
  v5 = CommonCurrency.Headers.firstValue(name:)(v3);
  result = v5.value._countAndFlagsBits;
  if (v5.value._object)
  {
    result = sub_1B55D4();
    if (v9)
    {
      sub_402F4();
      if (sub_1B4F24())
      {
      }

      else
      {
        sub_41710();
        swift_allocError();
        *v6 = v8;
        *(v6 + 8) = v9;
        *(v6 + 16) = 5;
        return swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t sub_41BF8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_41C08(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t type metadata accessor for DateConfiguration.EncoderInput()
{
  result = qword_229198;
  if (!qword_229198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_41C80(uint64_t a1)
{
  v2 = type metadata accessor for DateConfiguration.EncoderInput();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_41D44()
{
  v1 = sub_1B4014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_41E68()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  if (v0[4])
  {
    v2 = v0[5];
  }

  v3 = v0[7];

  v4 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

unint64_t sub_41EE8()
{
  result = qword_2290F8;
  if (!qword_2290F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2290F8);
  }

  return result;
}

unint64_t sub_41F40()
{
  result = qword_229100;
  if (!qword_229100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229100);
  }

  return result;
}

unint64_t sub_41F98()
{
  result = qword_229108;
  if (!qword_229108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229108);
  }

  return result;
}

uint64_t sub_41FEC(uint64_t a1)
{
  result = sub_42094(&qword_229110, &qword_229058, &qword_1BB440);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_42040(uint64_t a1)
{
  result = sub_42094(&qword_229118, &qword_229048, &qword_1BB438);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_42094(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1CC1C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_420E0()
{
  result = qword_229120;
  if (!qword_229120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229120);
  }

  return result;
}

unint64_t sub_42144()
{
  result = qword_229128;
  if (!qword_229128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229128);
  }

  return result;
}

unint64_t sub_421CC()
{
  result = qword_229130;
  if (!qword_229130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229130);
  }

  return result;
}

unint64_t sub_42224()
{
  result = qword_229138;
  if (!qword_229138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229138);
  }

  return result;
}

uint64_t sub_4228C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  if (v3)
  {
    v4 = *(a1 + 24);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v3;
  a2[1] = v4;
  return sub_41BF8(v3);
}

uint64_t sub_422A4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v5 = a1[1];
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  sub_41BF8(*a1);
  result = sub_41C08(v6);
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  return result;
}

uint64_t sub_42348(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_42360(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_42374(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_423D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_4245C(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 initializeBufferWithCopyOfBuffer for BookHistory.Errors(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_42498(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_424E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t sub_4254C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_425A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B40C4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_42620(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B40C4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_42690()
{
  result = sub_1B40C4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_4270C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_42754(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

__n128 sub_427B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_427D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_42818(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

unint64_t sub_42890()
{
  result = qword_2291D0;
  if (!qword_2291D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2291D0);
  }

  return result;
}

unint64_t sub_428EC()
{
  result = qword_2291D8;
  if (!qword_2291D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2291D8);
  }

  return result;
}

unint64_t sub_42944()
{
  result = qword_2291E0;
  if (!qword_2291E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2291E0);
  }

  return result;
}

unint64_t sub_42A54()
{
  result = qword_229278;
  if (!qword_229278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229278);
  }

  return result;
}

unint64_t sub_42AA8()
{
  result = qword_2292B0;
  if (!qword_2292B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2292B0);
  }

  return result;
}

unint64_t sub_42AFC()
{
  result = qword_2292D8;
  if (!qword_2292D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2292D8);
  }

  return result;
}

unint64_t sub_42B50()
{
  result = qword_229308;
  if (!qword_229308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229308);
  }

  return result;
}

uint64_t sub_42C00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributeAffinityResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_42C64(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_2293C8, &qword_1D07B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_42D84(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 <= 1)
  {
    return 0;
  }

  else
  {
    return v1 ^ 0xFF;
  }
}

void *sub_42D98()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  result = v2(&v5);
  if (!v1)
  {
    return v5;
  }

  return result;
}

uint64_t sub_42DD8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_42E10@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4();
  if (!v2)
  {
    *a1 = result;
    a1[1] = v7;
  }

  return result;
}

unint64_t sub_42EA0()
{
  result = qword_2294F0;
  if (!qword_2294F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2294F0);
  }

  return result;
}

unint64_t sub_42EF4()
{
  result = qword_229520;
  if (!qword_229520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229520);
  }

  return result;
}

uint64_t sub_42F48(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2B0C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_42FA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_42FF0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_42FFC()
{
  result = qword_229558;
  if (!qword_229558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229558);
  }

  return result;
}

uint64_t sub_43050(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2B0C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_430B8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_430C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_43188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a3;
  v25 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a1;
  v30 = a2;
  v12 = *(*(a6 + 8) + 8);
  v13 = sub_FDC10(sub_435D0, v26, a5, &type metadata for Double, &type metadata for Never, v12, &protocol witness table for Never, a8);
  v14 = sub_176828(v13);
  v16 = v15;

  if ((v16 & 1) != 0 || (v14 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v22 = *(v12 + 8);
    swift_getAssociatedTypeWitness();
    return sub_1B4B24();
  }

  else
  {
    __chkstk_darwin(v17);
    v23[2] = a5;
    v23[3] = a6;
    v23[4] = a1;
    v23[5] = a2;
    v23[6] = v14;
    v23[7] = v24;
    v23[8] = v25;
    v18 = *(v12 + 8);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    return sub_FDC10(sub_43614, v23, a5, AssociatedTypeWitness, &type metadata for Never, v12, &protocol witness table for Never, v20);
  }
}

uint64_t RandomAccessCollection<>.normalized()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return sub_43188(sub_43354, 0, sub_4335C, 0, a1, a2, a7, a8);
}

{
  return sub_43188(sub_4343C, 0, sub_43444, 0, a1, a2, a7, a8);
}

uint64_t sub_4335C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  v8 = *(a1 + 24);
  *(a2 + 24) = v8;
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = v7;
  *(a2 + 56) = a3;
  sub_43688(v4, v8);
}

uint64_t RandomAccessCollection<>.filter(allowNegativeScores:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_434B4(a1, a2, a3);
}

{
  return sub_434B4(a1, a2, a3);
}

uint64_t sub_43444@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = a1[2];
  v5 = a1[3];
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  *(a2 + 32) = a3;
}

uint64_t sub_434B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(*(a2 - 8) + 64);
  __chkstk_darwin(a1);
  (*(v8 + 16))(&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9, a2);
  v10 = *(*(*(a3 + 8) + 8) + 8);
  if (v5)
  {
    return sub_1B4BA4();
  }

  else
  {
    return sub_1B49E4();
  }
}

double sub_435D0@<D0>(double *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  result = fabs(v3());
  *a1 = result;
  return result;
}

uint64_t sub_43614(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v6 = *(v1 + 56);
  v5 = *(v1 + 64);
  v7 = (*(v1 + 32))();
  return v6(a1, v7 / v4);
}

uint64_t sub_43688(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

uint64_t ScoredBook.copyWith(score:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  v6 = *(v2 + 32);
  v5 = *(v2 + 40);
  v7 = *(v2 + 48);
  *a1 = *v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v8 = *(v2 + 24);
  *(a1 + 24) = v8;
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  *(a1 + 48) = v7;
  *(a1 + 56) = a2;
  sub_43688(v4, v8);
}

uint64_t ScoredBook.book.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v6 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  v7 = *(v1 + 24);
  *(a1 + 24) = v7;
  *(a1 + 32) = v5;
  *(a1 + 40) = v4;
  *(a1 + 48) = v6;
  sub_43688(v3, v7);
}

uint64_t ScoredBook.init(book:score:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *(result + 8);
  v4 = *(result + 16);
  v5 = *(result + 24);
  v6 = *(result + 32);
  *a2 = *result;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = *(result + 40);
  *(a2 + 56) = a3;
  return result;
}

Swift::Int EventType.hashValue.getter()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B5804(v1);
  return sub_1B5844();
}

Swift::Int sub_43860()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B5804(v1);
  return sub_1B5844();
}

uint64_t sub_438A4()
{
  if (*v0)
  {
    result = 0x65726F6373;
  }

  else
  {
    result = 1802465122;
  }

  *v0;
  return result;
}

uint64_t sub_438D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1802465122 && a2 == 0xE400000000000000;
  if (v5 || (sub_1B5604() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B5604();

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

uint64_t sub_439AC(uint64_t a1)
{
  v2 = sub_43C38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_439E8(uint64_t a1)
{
  v2 = sub_43C38();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ScoredBook.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_229590, &qword_1BC600);
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  __chkstk_darwin(v3);
  v6 = &v21 - v5;
  v7 = *v1;
  v22 = *(v1 + 8);
  v8 = v1[2];
  v10 = v1[4];
  v9 = v1[5];
  v23 = v7;
  v24 = v9;
  v11 = v1[6];
  v12 = v1[7];
  v14 = a1[3];
  v13 = a1[4];
  v15 = *(v1 + 24);
  v16 = a1;
  v18 = v17;
  sub_2698(v16, v14);
  sub_43688(v8, v15);
  sub_43C38();

  sub_1B5884();
  v28 = v23;
  v29 = v22;
  v30 = v8;
  v31 = v15;
  v32 = v10;
  v33 = v24;
  v34 = v11;
  v27 = 0;
  sub_43C8C();
  v19 = v25;
  sub_1B5544();
  sub_43CE0(v30, v31);

  if (!v19)
  {
    LOBYTE(v28) = 1;
    sub_1B5514();
  }

  return (*(v26 + 8))(v6, v18);
}

unint64_t sub_43C38()
{
  result = qword_229598;
  if (!qword_229598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229598);
  }

  return result;
}

unint64_t sub_43C8C()
{
  result = qword_2295A0;
  if (!qword_2295A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2295A0);
  }

  return result;
}

uint64_t sub_43CE0(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

uint64_t ScoredBook.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_2B0C(&qword_2295A8, &qword_1BC608);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_43C38();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(a1);
  }

  LOBYTE(v30) = 0;
  sub_43FA0();
  sub_1B5404();
  v26 = v34;
  v25 = v35;
  v11 = v36;
  v12 = v37;
  v27 = v39;
  v28 = v38;
  v29 = v40;
  v42 = 1;
  sub_1B53D4();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  v15 = v26;
  *&v30 = v26;
  v16 = v25;
  BYTE8(v30) = v25;
  v17 = v11;
  *&v31 = v11;
  v18 = v12;
  BYTE8(v31) = v12;
  v19 = v28;
  *&v32 = v28;
  *(&v32 + 1) = v27;
  v20 = v29;
  *&v33 = v29;
  *(&v33 + 1) = v14;
  v21 = v31;
  *a2 = v30;
  a2[1] = v21;
  v22 = v33;
  a2[2] = v32;
  a2[3] = v22;
  sub_42BA4(&v30, &v34);
  sub_2BF8(a1);
  v34 = v15;
  v35 = v16;
  v36 = v17;
  v37 = v18;
  v38 = v19;
  v39 = v27;
  v40 = v20;
  v41 = v14;
  return sub_43FF4(&v34);
}

unint64_t sub_43FA0()
{
  result = qword_2295B0;
  if (!qword_2295B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2295B0);
  }

  return result;
}

uint64_t sub_44060(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t dispatch thunk of BookScorerType.score(_:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_441B4;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_441B4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

unint64_t sub_442C4()
{
  result = qword_2295B8;
  if (!qword_2295B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2295B8);
  }

  return result;
}

unint64_t sub_4431C()
{
  result = qword_2295C0;
  if (!qword_2295C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2295C0);
  }

  return result;
}

unint64_t sub_44374()
{
  result = qword_2295C8;
  if (!qword_2295C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2295C8);
  }

  return result;
}

_BYTE *ForYouOptions.init(mediaType:excludedStoreIDs:hydratedBooksFetchLimit:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t sub_443E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_4442C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of ForYouServiceType.fetchBooks(with:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_441B4;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_445C0()
{
  v1 = 0x6F6874754178616DLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65726E654778616DLL;
  }
}

uint64_t sub_44630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_44C98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_44658(uint64_t a1)
{
  v2 = sub_4488C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_44694(uint64_t a1)
{
  v2 = sub_4488C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WorkServiceConfiguration.BookScoringConfiguration.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_2295D0, &qword_1BC8C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v14 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v14[2] = v1[2];
  v14[3] = v9;
  v14[1] = v11;
  v12 = a1[4];
  sub_2698(a1, a1[3]);
  sub_4488C();
  sub_1B5884();
  v17 = 0;
  sub_1B5534();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v16 = 1;
  sub_1B5534();
  v15 = 2;
  sub_1B54F4();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_4488C()
{
  result = qword_2295D8;
  if (!qword_2295D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2295D8);
  }

  return result;
}

uint64_t WorkServiceConfiguration.BookScoringConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_2B0C(&qword_2295E0, &qword_1BC8C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_4488C();
  sub_1B5864();
  if (!v2)
  {
    v21 = 0;
    v11 = sub_1B53F4();
    v20 = 1;
    v18 = sub_1B53F4();
    v19 = 2;
    v13 = sub_1B53B4();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    v16 = v18;
    *a2 = v11;
    a2[1] = v16;
    a2[2] = v13;
    a2[3] = v15;
  }

  return sub_2BF8(a1);
}

uint64_t sub_44AE8(uint64_t a1, int a2)
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

uint64_t sub_44B30(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_44B94()
{
  result = qword_2295E8;
  if (!qword_2295E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2295E8);
  }

  return result;
}

unint64_t sub_44BEC()
{
  result = qword_2295F0;
  if (!qword_2295F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2295F0);
  }

  return result;
}

unint64_t sub_44C44()
{
  result = qword_2295F8;
  if (!qword_2295F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2295F8);
  }

  return result;
}

uint64_t sub_44C98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65726E654778616DLL && a2 == 0xEB00000000734449;
  if (v4 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6874754178616DLL && a2 == 0xEC00000073444972 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000000001D5820 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B5604();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_44DC0(uint64_t a1)
{
  v2 = v1;
  v74 = sub_2B0C(&qword_229720, &unk_1BCB70);
  v4 = *(*(v74 - 8) + 64);
  v5 = __chkstk_darwin(v74);
  v66 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v65 = &v57 - v8;
  v9 = __chkstk_darwin(v7);
  v64 = &v57 - v10;
  __chkstk_darwin(v9);
  v63 = &v57 - v11;
  v12 = type metadata accessor for CollectionRecommendation(0);
  v61 = *(v12 - 8);
  v62 = v12;
  v13 = *(v61 + 64);
  __chkstk_darwin(v12);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  v76 = _swiftEmptyArrayStorage;
  if (!v16)
  {
    return v76;
  }

  v82 = _swiftEmptyArrayStorage;
  sub_375B4(0, v16, 0);
  v76 = v82;
  v17 = a1 + 64;
  v18 = -1 << *(a1 + 32);
  result = sub_1B4F84();
  if (result < 0 || result >= 1 << *(a1 + 32))
  {
LABEL_24:
    __break(1u);
  }

  else
  {
    v57 = a1 + 72;
    v58 = v16;
    v75 = *(a1 + 36);
    v20 = 1;
    v59 = a1;
    v60 = a1 + 64;
    v73 = v15;
    while ((*(v17 + 8 * (result >> 6)) & (1 << result)) != 0)
    {
      if (v75 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v68 = 1 << result;
      v69 = result >> 6;
      v67 = v20;
      v21 = v74;
      v22 = *(v74 + 48);
      v23 = (*(a1 + 48) + 568 * result);
      v24 = result;
      v72 = result;
      memcpy(v79, v23, 0x231uLL);
      v25 = v63;
      memmove(v63, v23, 0x231uLL);
      v26 = *(a1 + 56);
      v77 = v2;
      v27 = (sub_2B0C(&qword_229728, &unk_1D14A0) - 8);
      sub_43050(v26 + *(*v27 + 72) * v24, &v25[v22], &qword_229728, &unk_1D14A0);
      v28 = v64;
      memcpy(v64, v25, 0x231uLL);
      sub_5ED18(&v25[v22], v28 + *(v21 + 48), &qword_229728, &unk_1D14A0);
      v29 = sub_2B0C(&qword_228F40, &unk_1BB360);
      v30 = *(v29 + 48);
      v71 = *(v29 + 64);
      v31 = v27[14];
      sub_4299C(v79, &v78);
      v32 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
      v33 = v73;
      v34 = v77;
      sub_1B4364();
      v77 = v34;
      v35 = v65;
      sub_43050(v28, v65, &qword_229720, &unk_1BCB70);
      memcpy(v80, v35, sizeof(v80));
      v36 = v74;
      v37 = &v35[*(v74 + 48)];
      v38 = *v37;

      v70 = v27[14];
      v39 = (v33 + v30);
      v40 = v33;
      memcpy(v39, v80, 0x231uLL);
      v41 = v66;
      sub_43050(v28, v66, &qword_229720, &unk_1BCB70);
      memcpy(v81, v41, 0x231uLL);
      sub_2601C(v81);
      v42 = &v41[*(v36 + 48)];
      v43 = v27[14];
      *(v40 + v71) = *v42;
      swift_storeEnumTagMultiPayload();
      v44 = *(*(v32 - 8) + 8);
      v44(&v42[v43], v32);
      v44(&v37[v70], v32);
      v45 = v76;
      sub_42F48(v28, &qword_229720, &unk_1BCB70);
      v82 = v45;
      v47 = v45[2];
      v46 = v45[3];
      v76 = v45;
      if (v47 >= v46 >> 1)
      {
        sub_375B4(v46 > 1, v47 + 1, 1);
        v76 = v82;
      }

      v48 = v76;
      v76[2] = v47 + 1;
      sub_5EB94(v73, v48 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v47, type metadata accessor for CollectionRecommendation);
      a1 = v59;
      v17 = v60;
      v49 = 1 << *(v59 + 32);
      result = v72;
      if (v72 >= v49)
      {
        goto LABEL_27;
      }

      v50 = *(v60 + 8 * v69);
      if ((v50 & v68) == 0)
      {
        goto LABEL_28;
      }

      if (v75 != *(v59 + 36))
      {
        goto LABEL_29;
      }

      v51 = v50 & (-2 << (v72 & 0x3F));
      if (v51)
      {
        result = __clz(__rbit64(v51)) | v72 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v52 = v69 << 6;
        v53 = v69 + 1;
        v54 = (v57 + 8 * v69);
        while (v53 < (v49 + 63) >> 6)
        {
          v56 = *v54++;
          v55 = v56;
          v52 += 64;
          ++v53;
          if (v56)
          {
            sub_42FF0(v72, v75, 0);
            result = __clz(__rbit64(v55)) + v52;
            goto LABEL_19;
          }
        }

        sub_42FF0(v72, v75, 0);
        result = v49;
      }

LABEL_19:
      v2 = v77;
      if (v67 == v58)
      {
        return v76;
      }

      if ((result & 0x8000000000000000) == 0)
      {
        v20 = v67 + 1;
        if (result < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_453FC(uint64_t a1)
{
  v60 = sub_2B0C(&qword_229728, &unk_1D14A0);
  v54 = *(v60 - 8);
  v3 = *(v54 + 64);
  v4 = __chkstk_darwin(v60);
  v53 = (v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v52 = (v44 - v6);
  v51 = sub_2B0C(&qword_229720, &unk_1BCB70);
  v7 = *(*(v51 - 8) + 64);
  v8 = __chkstk_darwin(v51);
  v50 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v49 = v44 - v10;
  v11 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (!v11)
  {
    return v12;
  }

  v44[1] = v1;
  v66 = _swiftEmptyArrayStorage;
  sub_37618(0, v11, 0);
  v12 = v66;
  v13 = a1 + 64;
  v14 = -1 << *(a1 + 32);
  result = sub_1B4F84();
  if (result < 0 || (v16 = result, result >= 1 << *(a1 + 32)))
  {
LABEL_24:
    __break(1u);
  }

  else
  {
    v45 = a1 + 72;
    v46 = v11;
    v61 = *(a1 + 36);
    v17 = 1;
    v47 = a1 + 64;
    v48 = a1;
    while ((*(v13 + 8 * (v16 >> 6)) & (1 << v16)) != 0)
    {
      if (v61 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v56 = 1 << v16;
      v57 = v16 >> 6;
      v55 = v17;
      v18 = v51;
      v19 = *(v51 + 48);
      v20 = (*(a1 + 48) + 568 * v16);
      memcpy(v63, v20, 0x231uLL);
      v59 = v12;
      v21 = v49;
      memmove(v49, v20, 0x231uLL);
      sub_43050(*(a1 + 56) + *(v54 + 72) * v16, &v21[v19], &qword_229728, &unk_1D14A0);
      v58 = v16;
      v22 = v50;
      memcpy(v50, v21, 0x231uLL);
      v23 = &v22[*(v18 + 48)];
      sub_5ED18(&v21[v19], v23, &qword_229728, &unk_1D14A0);
      v24 = *v23;
      v25 = *(v60 + 48);
      memcpy(v64, v22, 0x231uLL);
      v26 = v52;
      *v52 = v24;
      v27 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
      v28 = *(v27 - 8);
      (*(v28 + 16))(v26 + v25, &v23[v25], v27);
      memcpy(v65, v64, 0x231uLL);
      v29 = v53;
      sub_43050(v26, v53, &qword_229728, &unk_1D14A0);
      v30 = *v29;
      sub_4299C(v63, v62);

      sub_4299C(v64, v62);

      v31 = *(v60 + 48);
      v32 = sub_1B4374();
      sub_42F48(v26, &qword_229728, &unk_1D14A0);
      v33 = v29 + v31;
      v12 = v59;
      (*(v28 + 8))(v33, v27);
      sub_42F48(v22, &qword_229720, &unk_1BCB70);
      v66 = v12;
      v35 = v12[2];
      v34 = v12[3];
      if (v35 >= v34 >> 1)
      {
        sub_37618((v34 > 1), v35 + 1, 1);
        v12 = v66;
      }

      v12[2] = v35 + 1;
      v36 = &v12[72 * v35];
      memcpy(v36 + 4, v65, 0x238uLL);
      v36[75] = v32;
      a1 = v48;
      v16 = 1 << *(v48 + 32);
      result = v58;
      if (v58 >= v16)
      {
        goto LABEL_27;
      }

      v13 = v47;
      v37 = *(v47 + 8 * v57);
      if ((v37 & v56) == 0)
      {
        goto LABEL_28;
      }

      if (v61 != *(v48 + 36))
      {
        goto LABEL_29;
      }

      v38 = v37 & (-2 << (v58 & 0x3F));
      if (v38)
      {
        v16 = __clz(__rbit64(v38)) | v58 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v39 = v57 << 6;
        v40 = v57 + 1;
        v41 = (v45 + 8 * v57);
        while (v40 < (v16 + 63) >> 6)
        {
          v43 = *v41++;
          v42 = v43;
          v39 += 64;
          ++v40;
          if (v43)
          {
            result = sub_42FF0(v58, v61, 0);
            v16 = __clz(__rbit64(v42)) + v39;
            goto LABEL_19;
          }
        }

        result = sub_42FF0(v58, v61, 0);
      }

LABEL_19:
      if (v55 == v46)
      {
        return v12;
      }

      if ((v16 & 0x8000000000000000) == 0)
      {
        v17 = v55 + 1;
        if (v16 < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_45970()
{
  v0 = sub_1B4644();
  sub_5EA10(v0, qword_229600);
  sub_50E58(v0, qword_229600);
  return sub_1B4634();
}

uint64_t sub_459F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v408 = a2;
  v404 = type metadata accessor for CollectionRecommendation(0);
  v406 = *(v404 - 8);
  v4 = *(v406 + 64);
  v5 = __chkstk_darwin(v404);
  v410 = &v400 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v409 = &v400 - v8;
  v9 = __chkstk_darwin(v7);
  v415 = (&v400 - v10);
  __chkstk_darwin(v9);
  v411 = (&v400 - v11);
  *&v431 = sub_2B0C(&qword_2296B8, &unk_1BCAF0);
  *&v426 = *(v431 - 8);
  v12 = *(v426 + 64);
  v13 = __chkstk_darwin(v431);
  v424 = &v400 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v430 = &v400 - v15;
  v16 = sub_2B0C(&qword_2296C0, &qword_1C3800);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v400 - v18;
  v20 = *a1;
  v21 = *(a1 + 1152);
  v454 = *(a1 + 1136);
  v455 = v21;
  v456 = *(a1 + 1168);
  v457 = *(a1 + 1184);
  v432 = &v454;
  sub_50C90();
  v22 = sub_1B46C4();
  v428 = 0;
  v417 = v454;
  v418 = v22;
  v416 = *(&v454 + 1);
  v23 = *(&v455 + 1);
  v419 = *(&v456 + 1);
  v24 = v456;
  v420 = v457;
  v459 = *(&v456 + 1);
  v460[0] = *(&v455 + 1);
  v458 = v457;
  v25 = swift_allocObject();
  *(v25 + 16) = &_swiftEmptyDictionarySingleton;
  v427 = (v25 + 16);
  sub_43050(v460, v441, &qword_2292C8, &unk_1BCB00);
  sub_43050(&v459, v441, &qword_2296D0, &unk_1D3D50);
  sub_43050(&v458, v441, &qword_2296D8, &qword_1BCB10);

  v26 = dispatch_semaphore_create(0);
  v27 = sub_1B4C54();
  (*(*(v27 - 8) + 56))(v19, 1, 1, v27);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = v2;
  v28[5] = v20;
  v28[6] = sub_50D1C;
  v28[7] = v25;
  v28[8] = v26;

  v407 = v25;

  v29 = v26;
  sub_4903C(0, 0, v19, &unk_1BCB20, v28);

  v405 = v29;
  sub_1B4DF4();
  if (qword_228290 != -1)
  {
    goto LABEL_272;
  }

  while (1)
  {
    v30 = sub_1B4644();
    v31 = sub_50E58(v30, qword_229600);
    swift_bridgeObjectRetain_n();
    v403 = v31;
    v32 = sub_1B4624();
    v33 = sub_1B4DB4();
    v34 = os_log_type_enabled(v32, v33);
    v412 = v24;
    v413 = v23;
    if (!v34)
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_52;
    }

    LODWORD(v429) = v33;
    v35 = swift_slowAlloc();
    *v35 = 134218752;
    v23 = *(v20 + 16);
    *(v35 + 4) = v23;
    *(v35 + 12) = 2048;
    if (v23)
    {
      v36 = 0;
      v24 = (v20 + 32);
      v425 = v23 - 1;
      v37 = _swiftEmptyArrayStorage;
      do
      {
        v38 = &v24[136 * v36];
        v39 = v36;
        while (1)
        {
          if (v39 >= *(v20 + 16))
          {
LABEL_268:
            __break(1u);
            goto LABEL_269;
          }

          *v441 = *v38;
          v40 = *(v38 + 1);
          v41 = *(v38 + 2);
          v42 = *(v38 + 4);
          *&v441[48] = *(v38 + 3);
          *&v441[64] = v42;
          *&v441[16] = v40;
          *&v441[32] = v41;
          v43 = *(v38 + 5);
          v44 = *(v38 + 6);
          v45 = *(v38 + 7);
          v441[128] = v38[128];
          *&v441[96] = v44;
          *&v441[112] = v45;
          *&v441[80] = v43;
          if ((v441[8] & 1) == 0)
          {
            break;
          }

          v46 = sub_1B5604();
          sub_429F8(v441, &v450);

          if (v46)
          {
            goto LABEL_12;
          }

          ++v39;
          sub_5C740(v441);
          v38 += 136;
          if (v23 == v39)
          {
            goto LABEL_20;
          }
        }

        sub_429F8(v441, &v450);

LABEL_12:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v433 = v37;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_37574(0, v37[2] + 1, 1);
          v37 = v433;
        }

        v49 = v37[2];
        v48 = v37[3];
        if (v49 >= v48 >> 1)
        {
          sub_37574((v48 > 1), v49 + 1, 1);
          v37 = v433;
        }

        v36 = v39 + 1;
        v37[2] = v49 + 1;
        v50 = &v37[17 * v49];
        *(v50 + 2) = *v441;
        v51 = *&v441[16];
        v52 = *&v441[32];
        v53 = *&v441[64];
        *(v50 + 5) = *&v441[48];
        *(v50 + 6) = v53;
        *(v50 + 3) = v51;
        *(v50 + 4) = v52;
        v54 = *&v441[80];
        v55 = *&v441[96];
        v56 = *&v441[112];
        *(v50 + 160) = v441[128];
        *(v50 + 8) = v55;
        *(v50 + 9) = v56;
        *(v50 + 7) = v54;
      }

      while (v425 != v39);
    }

    else
    {
      v37 = _swiftEmptyArrayStorage;
    }

LABEL_20:
    v57 = v37[2];

    *(v35 + 14) = v57;

    *(v35 + 22) = 2048;
    v58 = *(v20 + 16);
    if (v58)
    {
      v59 = 0;
      v23 = v20 + 32;
      v425 = (v58 - 1);
      v60 = _swiftEmptyArrayStorage;
LABEL_22:
      v61 = v23 + 136 * v59;
      v24 = v59;
      while (v24 < *(v20 + 16))
      {
        *v441 = *v61;
        v62 = *(v61 + 16);
        v63 = *(v61 + 32);
        v64 = *(v61 + 64);
        *&v441[48] = *(v61 + 48);
        *&v441[64] = v64;
        *&v441[16] = v62;
        *&v441[32] = v63;
        v65 = *(v61 + 80);
        v66 = *(v61 + 96);
        v67 = *(v61 + 112);
        v441[128] = *(v61 + 128);
        *&v441[96] = v66;
        *&v441[112] = v67;
        *&v441[80] = v65;
        if (v441[8])
        {
          sub_429F8(v441, &v450);

LABEL_29:
          v69 = swift_isUniquelyReferenced_nonNull_native();
          *&v433 = v60;
          if ((v69 & 1) == 0)
          {
            sub_37574(0, v60[2] + 1, 1);
            v60 = v433;
          }

          v71 = v60[2];
          v70 = v60[3];
          if (v71 >= v70 >> 1)
          {
            sub_37574((v70 > 1), v71 + 1, 1);
            v60 = v433;
          }

          v59 = v24 + 1;
          v60[2] = v71 + 1;
          v72 = &v60[17 * v71];
          *(v72 + 2) = *v441;
          v73 = *&v441[16];
          v74 = *&v441[32];
          v75 = *&v441[64];
          *(v72 + 5) = *&v441[48];
          *(v72 + 6) = v75;
          *(v72 + 3) = v73;
          *(v72 + 4) = v74;
          v76 = *&v441[80];
          v77 = *&v441[96];
          v78 = *&v441[112];
          *(v72 + 160) = v441[128];
          *(v72 + 8) = v77;
          *(v72 + 9) = v78;
          *(v72 + 7) = v76;
          if (v425 != v24)
          {
            goto LABEL_22;
          }

          goto LABEL_36;
        }

        v68 = sub_1B5604();
        sub_429F8(v441, &v450);

        if (v68)
        {
          goto LABEL_29;
        }

        ++v24;
        sub_5C740(v441);
        v61 += 136;
        if (v58 == v24)
        {
          goto LABEL_36;
        }
      }

LABEL_269:
      __break(1u);
      goto LABEL_270;
    }

    v60 = _swiftEmptyArrayStorage;
LABEL_36:
    v79 = v60[2];

    *(v35 + 24) = v79;

    *(v35 + 32) = 2048;
    v80 = *(v20 + 16);
    if (!v80)
    {
      break;
    }

    v24 = 0;
    v81 = v20 + 32;
    v82 = v80 - 1;
    v83 = _swiftEmptyArrayStorage;
LABEL_38:
    v84 = *(v20 + 16);
    v85 = v81 + 136 * v24;
    v23 = v24;
    while (v23 < v84)
    {
      *v441 = *v85;
      v86 = *(v85 + 16);
      v87 = *(v85 + 32);
      v88 = *(v85 + 64);
      *&v441[48] = *(v85 + 48);
      *&v441[64] = v88;
      *&v441[16] = v86;
      *&v441[32] = v87;
      v89 = *(v85 + 80);
      v90 = *(v85 + 96);
      v91 = *(v85 + 112);
      v441[128] = *(v85 + 128);
      *&v441[96] = v90;
      *&v441[112] = v91;
      *&v441[80] = v89;
      v24 = (v23 + 1);
      if (v91 != 2)
      {
        v425 = v32;
        sub_429F8(v441, &v450);
        v92 = swift_isUniquelyReferenced_nonNull_native();
        *&v433 = v83;
        v423 = v81;
        v93 = v82;
        if ((v92 & 1) == 0)
        {
          sub_37574(0, v83[2] + 1, 1);
          v83 = v433;
        }

        v95 = v83[2];
        v94 = v83[3];
        if (v95 >= v94 >> 1)
        {
          sub_37574((v94 > 1), v95 + 1, 1);
          v83 = v433;
        }

        v83[2] = v95 + 1;
        v96 = &v83[17 * v95];
        *(v96 + 2) = *v441;
        v97 = *&v441[16];
        v98 = *&v441[32];
        v99 = *&v441[64];
        *(v96 + 5) = *&v441[48];
        *(v96 + 6) = v99;
        *(v96 + 3) = v97;
        *(v96 + 4) = v98;
        v100 = *&v441[80];
        v101 = *&v441[96];
        v102 = *&v441[112];
        *(v96 + 160) = v441[128];
        *(v96 + 8) = v101;
        *(v96 + 9) = v102;
        *(v96 + 7) = v100;
        v82 = v93;
        v103 = v93 == v23;
        v81 = v423;
        v32 = v425;
        if (v103)
        {
          goto LABEL_51;
        }

        goto LABEL_38;
      }

      v85 += 136;
      ++v23;
      if (v80 == v24)
      {
        goto LABEL_51;
      }
    }

LABEL_270:
    __break(1u);
LABEL_271:
    __break(1u);
LABEL_272:
    swift_once();
  }

  v83 = _swiftEmptyArrayStorage;
LABEL_51:
  v104 = v83[2];

  *(v35 + 34) = v104;

  _os_log_impl(&dword_0, v32, v429, "AllCollectionTypesFillingClusteringService clustering %ld books books=%ld audiobooks=%ld seriesBooks=%ld", v35, 0x2Au);

  v24 = v412;
  v23 = v413;
LABEL_52:
  v105 = v431;
  *v441 = v417;
  *&v441[8] = v416;
  *&v441[16] = v418;
  *&v441[24] = v23;
  *&v441[32] = v24;
  *&v441[40] = v419;
  *&v441[48] = v420;
  v106 = sub_5C00C(v20, v441);
  v401 = v107;
  v402 = v106;
  v109 = sub_158D88(v108);

  sub_2B0C(&qword_2296E0, &unk_1D1490);
  v110 = sub_1B5294();
  v111 = v110;
  v23 = 0;
  v112 = *(v109 + 64);
  v421 = (v109 + 64);
  v425 = v109;
  v113 = 1 << *(v109 + 32);
  v114 = -1;
  if (v113 < 64)
  {
    v114 = ~(-1 << v113);
  }

  v115 = v114 & v112;
  v116 = (v113 + 63) >> 6;
  v422 = (v426 + 8);
  v423 = (v426 + 16);
  *&v431 = v110 + 64;
  v24 = v430;
  v429 = v110;
  if (v115)
  {
    while (1)
    {
      v117 = __clz(__rbit64(v115));
      v430 = ((v115 - 1) & v115);
LABEL_61:
      v120 = v117 | (v23 << 6);
      v121 = *(*(v425 + 48) + v120);
      v122 = *(v426 + 16);
      v20 = v105;
      v122(v24, *(v425 + 56) + *(v426 + 72) * v120, v105);
      v122(v424, v24, v105);
      sub_42094(&qword_2296E8, &qword_2296B8, &unk_1BCAF0);
      *v441 = sub_1B49B4();
      v123 = v428;
      sub_507C4(v441);
      v428 = v123;
      if (v123)
      {
        break;
      }

      (*v422)(v24, v20);
      v124 = *v441;
      *(v431 + ((v120 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v120;
      v111 = v429;
      *(*(v429 + 48) + v120) = v121;
      *(*(v111 + 56) + 8 * v120) = v124;
      v125 = *(v111 + 16);
      v126 = __OFADD__(v125, 1);
      v127 = v125 + 1;
      if (v126)
      {
        goto LABEL_271;
      }

      v105 = v20;
      *(v111 + 16) = v127;
      v115 = v430;
      if (!v430)
      {
        goto LABEL_56;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_56:
    v118 = v23;
    while (1)
    {
      v23 = v118 + 1;
      if (__OFADD__(v118, 1))
      {
        __break(1u);
LABEL_267:
        __break(1u);
        goto LABEL_268;
      }

      if (v23 >= v116)
      {
        break;
      }

      v119 = *&v421[8 * v23];
      ++v118;
      if (v119)
      {
        v117 = __clz(__rbit64(v119));
        v430 = ((v119 - 1) & v119);
        goto LABEL_61;
      }
    }

    v128 = 0;
    v129 = 1 << *(v111 + 32);
    v130 = -1;
    if (v129 < 64)
    {
      v130 = ~(-1 << v129);
    }

    v20 = v130 & *(v111 + 64);
    v23 = (v129 + 63) >> 6;
    v131 = _swiftEmptyArrayStorage;
    v430 = _swiftEmptyArrayStorage;
    *&v426 = _swiftEmptyArrayStorage;
    v424 = _swiftEmptyArrayStorage;
    v24 = _swiftEmptyArrayStorage;
    v132 = _swiftEmptyArrayStorage;
    v414 = _swiftEmptyArrayStorage;
    v421 = _swiftEmptyArrayStorage;
LABEL_70:
    if (v20)
    {
      goto LABEL_75;
    }

    while (1)
    {
      v134 = v128 + 1;
      if (__OFADD__(v128, 1))
      {
        goto LABEL_267;
      }

      if (v134 >= v23)
      {
        break;
      }

      v20 = *(v431 + 8 * v134);
      ++v128;
      if (v20)
      {
        v128 = v134;
LABEL_75:
        v135 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
        v136 = v135 | (v128 << 6);
        v137 = *(v429 + 56);
        v138 = *(v137 + 8 * v136);
        if (*(*(v429 + 48) + v136))
        {
          v139 = sub_1B5604();

          if (v139)
          {
            v140 = *(v138 + 16);
            if (v140)
            {
              goto LABEL_80;
            }
          }

          else
          {
            v133 = *(v138 + 16);
            if (v133)
            {
              v179 = v133 - 1;
              for (i = 32; ; i = (v423 + 17))
              {
                *v441 = *(v138 + i);
                v181 = *(v138 + i + 16);
                v182 = *(v138 + i + 32);
                v183 = *(v138 + i + 64);
                *&v441[48] = *(v138 + i + 48);
                *&v441[64] = v183;
                *&v441[16] = v181;
                *&v441[32] = v182;
                v184 = *(v138 + i + 80);
                v185 = *(v138 + i + 96);
                v186 = *(v138 + i + 112);
                v441[128] = *(v138 + i + 128);
                *&v441[96] = v185;
                *&v441[112] = v186;
                *&v441[80] = v184;
                v425 = v179;
                v423 = i;
                if (v186 == 2)
                {
                  v187 = *(v131 + 2);
                  if (v187 > 2)
                  {
                    sub_429F8(v441, &v450);
                    sub_42BA4(v441, &v450);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v132 = sub_3349C(0, *(v132 + 2) + 1, 1, v132);
                    }

                    v209 = *(v132 + 2);
                    v208 = *(v132 + 3);
                    if (v209 >= v208 >> 1)
                    {
                      v132 = sub_3349C((v208 > 1), v209 + 1, 1, v132);
                    }

                    *(v132 + 2) = v209 + 1;
                    v190 = &v132[64 * v209];
                  }

                  else
                  {
                    sub_429F8(v441, &v450);
                    sub_42BA4(v441, &v450);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v131 = sub_3349C(0, v187 + 1, 1, v131);
                    }

                    v189 = *(v131 + 2);
                    v188 = *(v131 + 3);
                    if (v189 >= v188 >> 1)
                    {
                      v131 = sub_3349C((v188 > 1), v189 + 1, 1, v131);
                    }

                    *(v131 + 2) = v189 + 1;
                    v190 = &v131[64 * v189];
                  }

                  v210 = *v441;
                  v211 = *&v441[16];
                  v212 = *&v441[48];
                  *(v190 + 4) = *&v441[32];
                  *(v190 + 5) = v212;
                  *(v190 + 2) = v210;
                  *(v190 + 3) = v211;
                  sub_5C740(v441);
                }

                else
                {
                  sub_429F8(v441, &v450);
                  sub_42BA4(v441, &v450);
                  if (swift_isUniquelyReferenced_nonNull_native())
                  {
                    v191 = v421;
                  }

                  else
                  {
                    v191 = sub_3349C(0, *(v421 + 2) + 1, 1, v421);
                  }

                  v193 = *(v191 + 2);
                  v192 = *(v191 + 3);
                  if (v193 >= v192 >> 1)
                  {
                    v191 = sub_3349C((v192 > 1), v193 + 1, 1, v191);
                  }

                  *(v191 + 2) = v193 + 1;
                  v421 = v191;
                  v194 = &v191[64 * v193];
                  v195 = *v441;
                  v196 = *&v441[16];
                  v197 = *&v441[48];
                  *(v194 + 4) = *&v441[32];
                  *(v194 + 5) = v197;
                  *(v194 + 2) = v195;
                  *(v194 + 3) = v196;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v414 = sub_33358(0, *(v414 + 2) + 1, 1, v414);
                  }

                  v199 = *(v414 + 2);
                  v198 = *(v414 + 3);
                  if (v199 >= v198 >> 1)
                  {
                    v414 = sub_33358((v198 > 1), v199 + 1, 1, v414);
                  }

                  v200 = v414;
                  *(v414 + 2) = v199 + 1;
                  v201 = &v200[136 * v199];
                  *(v201 + 2) = *v441;
                  v202 = *&v441[16];
                  v203 = *&v441[32];
                  v204 = *&v441[64];
                  *(v201 + 5) = *&v441[48];
                  *(v201 + 6) = v204;
                  *(v201 + 3) = v202;
                  *(v201 + 4) = v203;
                  v205 = *&v441[80];
                  v206 = *&v441[96];
                  v207 = *&v441[112];
                  v201[160] = v441[128];
                  *(v201 + 8) = v206;
                  *(v201 + 9) = v207;
                  *(v201 + 7) = v205;
                }

                if (!v425)
                {
                  break;
                }

                v179 = v425 - 1;
              }
            }
          }
        }

        else
        {
          v141 = *(v137 + 8 * v136);

          v140 = *(v138 + 16);
          if (v140)
          {
LABEL_80:
            v142 = (v140 - 1);
            for (j = 32; ; j = (v173 + 17))
            {
              *v441 = *(v138 + j);
              v144 = *(v138 + j + 16);
              v145 = *(v138 + j + 32);
              v146 = *(v138 + j + 64);
              *&v441[48] = *(v138 + j + 48);
              *&v441[64] = v146;
              *&v441[16] = v144;
              *&v441[32] = v145;
              v147 = *(v138 + j + 80);
              v148 = *(v138 + j + 96);
              v149 = *(v138 + j + 112);
              v441[128] = *(v138 + j + 128);
              *&v441[96] = v148;
              *&v441[112] = v149;
              *&v441[80] = v147;
              v422 = j;
              v423 = v142;
              if (v149 == 2)
              {
                v150 = *(v430 + 2);
                if (v150 > 2)
                {
                  sub_429F8(v441, &v450);
                  sub_42BA4(v441, &v450);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v24 = sub_3349C(0, *(v24 + 2) + 1, 1, v24);
                  }

                  v175 = *(v24 + 2);
                  v174 = *(v24 + 3);
                  if (v175 >= v174 >> 1)
                  {
                    v24 = sub_3349C((v174 > 1), v175 + 1, 1, v24);
                  }

                  *(v24 + 2) = v175 + 1;
                  v154 = &v24[64 * v175];
                }

                else
                {
                  sub_429F8(v441, &v450);
                  sub_42BA4(v441, &v450);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v430 = sub_3349C(0, v150 + 1, 1, v430);
                  }

                  v152 = *(v430 + 2);
                  v151 = *(v430 + 3);
                  if (v152 >= v151 >> 1)
                  {
                    v430 = sub_3349C((v151 > 1), v152 + 1, 1, v430);
                  }

                  v153 = v430;
                  *(v430 + 2) = v152 + 1;
                  v154 = &v153[64 * v152];
                }

                v176 = *v441;
                v177 = *&v441[16];
                v178 = *&v441[48];
                *(v154 + 4) = *&v441[32];
                *(v154 + 5) = v178;
                *(v154 + 2) = v176;
                *(v154 + 3) = v177;
                sub_5C740(v441);
                v173 = v422;
                v172 = v423;
                if (!v423)
                {
                  break;
                }
              }

              else
              {
                sub_429F8(v441, &v450);
                sub_42BA4(v441, &v450);
                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  v155 = v426;
                }

                else
                {
                  v155 = sub_3349C(0, *(v426 + 16) + 1, 1, v426);
                }

                v157 = *(v155 + 2);
                v156 = *(v155 + 3);
                if (v157 >= v156 >> 1)
                {
                  v155 = sub_3349C((v156 > 1), v157 + 1, 1, v155);
                }

                *(v155 + 2) = v157 + 1;
                *&v426 = v155;
                v158 = &v155[64 * v157];
                v159 = *v441;
                v160 = *&v441[16];
                v161 = *&v441[48];
                *(v158 + 4) = *&v441[32];
                *(v158 + 5) = v161;
                *(v158 + 2) = v159;
                *(v158 + 3) = v160;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v424 = sub_33358(0, *(v424 + 2) + 1, 1, v424);
                }

                v163 = *(v424 + 2);
                v162 = *(v424 + 3);
                if (v163 >= v162 >> 1)
                {
                  v424 = sub_33358((v162 > 1), v163 + 1, 1, v424);
                }

                v164 = v424;
                *(v424 + 2) = v163 + 1;
                v165 = &v164[136 * v163];
                *(v165 + 2) = *v441;
                v166 = *&v441[16];
                v167 = *&v441[32];
                v168 = *&v441[64];
                *(v165 + 5) = *&v441[48];
                *(v165 + 6) = v168;
                *(v165 + 3) = v166;
                *(v165 + 4) = v167;
                v169 = *&v441[80];
                v170 = *&v441[96];
                v171 = *&v441[112];
                v165[160] = v441[128];
                *(v165 + 8) = v170;
                *(v165 + 9) = v171;
                *(v165 + 7) = v169;
                v173 = v422;
                v172 = v423;
                if (!v423)
                {
                  break;
                }
              }

              v142 = (v172 - 1);
            }
          }
        }

        goto LABEL_70;
      }
    }

    v213 = v427;
    swift_beginAccess();
    v214 = *v213;
    v449 = v132;
    v215 = *(v24 + 2);

    v425 = v131;
    if (v215 <= 5)
    {
      while (1)
      {
        v132 = v449;
        v216 = *(v449 + 2);
        if (v216 <= 6)
        {
          break;
        }

        if (sub_1B5604())
        {
          v217 = 0;
          v218 = (v132 + 32);
        }

        else
        {
          *&v431 = v215;
          v217 = 0;
          v219 = *(v214 + 16);
          v220 = 32;
          while (1)
          {
            if (v219)
            {
              v221 = *&v132[v220];
              sub_43124(v221);
              if (v222)
              {
                break;
              }
            }

            ++v217;
            v220 += 64;
            if (v216 == v217)
            {

              v131 = v425;
              goto LABEL_150;
            }
          }

          v223 = sub_43124(v221);
          v131 = v425;
          if ((v224 & 1) == 0)
          {
            break;
          }

          v218 = (*(v214 + 56) + (v223 << 6));
          v215 = v431;
        }

        v225 = *v218;
        v226 = v218[1];
        v227 = v218[3];
        *&v441[32] = v218[2];
        *&v441[48] = v227;
        *v441 = v225;
        *&v441[16] = v226;
        sub_42BA4(v441, &v450);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_3349C(0, v215 + 1, 1, v24);
        }

        v229 = *(v24 + 2);
        v228 = *(v24 + 3);
        if (v229 >= v228 >> 1)
        {
          v24 = sub_3349C((v228 > 1), v229 + 1, 1, v24);
        }

        *(v24 + 2) = v229 + 1;
        v230 = &v24[64 * v229];
        v231 = *v441;
        v232 = *&v441[16];
        v233 = *&v441[48];
        *(v230 + 4) = *&v441[32];
        *(v230 + 5) = v233;
        *(v230 + 2) = v231;
        *(v230 + 3) = v232;
        sub_496C8(v217, &v433);
        v450 = v433;
        v451 = v434;
        v452 = v435;
        v453 = v436;
        sub_43FF4(&v450);
        v215 = *(v24 + 2);
        if (v215 >= 6)
        {
          v132 = v449;
          break;
        }
      }
    }

LABEL_150:
    v234 = *v427;
    v449 = v24;
    v235 = *(v132 + 2);

    if (v235 > 5)
    {
LABEL_169:
      v244 = v430;
LABEL_170:
    }

    else
    {
      while (1)
      {
        v24 = v449;
        v236 = *(v449 + 2);
        if (v236 <= 6)
        {
          break;
        }

        if (sub_1B5604())
        {
          v237 = 0;
          v238 = (v24 + 32);
        }

        else
        {
          *&v431 = v235;
          v237 = 0;
          v239 = *(v234 + 16);
          v240 = 32;
          while (1)
          {
            if (v239)
            {
              v241 = *&v24[v240];
              sub_43124(v241);
              if (v242)
              {
                break;
              }
            }

            ++v237;
            v240 += 64;
            if (v236 == v237)
            {

              v131 = v425;
              goto LABEL_167;
            }
          }

          v243 = sub_43124(v241);
          v131 = v425;
          v244 = v430;
          if ((v245 & 1) == 0)
          {
            goto LABEL_170;
          }

          v238 = (*(v234 + 56) + (v243 << 6));
          v235 = v431;
        }

        v246 = *v238;
        v247 = v238[1];
        v248 = v238[3];
        *&v441[32] = v238[2];
        *&v441[48] = v248;
        *v441 = v246;
        *&v441[16] = v247;
        sub_42BA4(v441, &v450);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v132 = sub_3349C(0, v235 + 1, 1, v132);
        }

        v250 = *(v132 + 2);
        v249 = *(v132 + 3);
        if (v250 >= v249 >> 1)
        {
          v132 = sub_3349C((v249 > 1), v250 + 1, 1, v132);
        }

        *(v132 + 2) = v250 + 1;
        v251 = &v132[64 * v250];
        v252 = *v441;
        v253 = *&v441[16];
        v254 = *&v441[48];
        *(v251 + 4) = *&v441[32];
        *(v251 + 5) = v254;
        *(v251 + 2) = v252;
        *(v251 + 3) = v253;
        sub_496C8(v237, &v433);
        v450 = v433;
        v451 = v434;
        v452 = v435;
        v453 = v436;
        sub_43FF4(&v450);
        v235 = *(v132 + 2);
        if (v235 >= 6)
        {
          v24 = v449;
          goto LABEL_169;
        }
      }

LABEL_167:
      v244 = v430;
    }

    v255 = *v427;
    v449 = v24;
    v256 = *(v244 + 2);

    if (v256 <= 2)
    {
      while (1)
      {
        v24 = v449;
        if (*(v449 + 2) <= 3uLL)
        {
          break;
        }

        v257 = *(v449 + 3);
        *v441 = *(v449 + 2);
        *&v441[16] = v257;
        v258 = *(v449 + 5);
        *&v441[32] = *(v449 + 4);
        *&v441[48] = v258;
        sub_42BA4(v441, &v450);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v244 = sub_3349C(0, v256 + 1, 1, v244);
        }

        v260 = *(v244 + 2);
        v259 = *(v244 + 3);
        if (v260 >= v259 >> 1)
        {
          v244 = sub_3349C((v259 > 1), v260 + 1, 1, v244);
        }

        *(v244 + 2) = v260 + 1;
        v261 = &v244[64 * v260];
        v262 = *v441;
        v263 = *&v441[16];
        v264 = *&v441[48];
        *(v261 + 4) = *&v441[32];
        *(v261 + 5) = v264;
        *(v261 + 2) = v262;
        *(v261 + 3) = v263;
        sub_496C8(0, &v433);
        v450 = v433;
        v451 = v434;
        v452 = v435;
        v453 = v436;
        sub_43FF4(&v450);
        v256 = *(v244 + 2);
        if (v256 >= 3)
        {
          v24 = v449;
          break;
        }
      }
    }

    v265 = *v427;
    v449 = v132;
    v267 = v131 + 16;
    v266 = *(v131 + 2);

    if (v266 <= 2)
    {
      while (1)
      {
        v132 = v449;
        if (*(v449 + 2) <= 3uLL)
        {
          break;
        }

        v268 = *(v449 + 3);
        *v441 = *(v449 + 2);
        *&v441[16] = v268;
        v269 = *(v449 + 5);
        *&v441[32] = *(v449 + 4);
        *&v441[48] = v269;
        sub_42BA4(v441, &v450);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v131 = sub_3349C(0, *v267 + 1, 1, v131);
        }

        v271 = *(v131 + 2);
        v270 = *(v131 + 3);
        if (v271 >= v270 >> 1)
        {
          v131 = sub_3349C((v270 > 1), v271 + 1, 1, v131);
        }

        *(v131 + 2) = v271 + 1;
        v267 = v131 + 16;
        v272 = &v131[64 * v271];
        v273 = *v441;
        v274 = *&v441[16];
        v275 = *&v441[48];
        *(v272 + 4) = *&v441[32];
        *(v272 + 5) = v275;
        *(v272 + 2) = v273;
        *(v272 + 3) = v274;
        sub_496C8(0, &v433);
        v450 = v433;
        v451 = v434;
        v452 = v435;
        v453 = v436;
        sub_43FF4(&v450);
        if (*(v131 + 2) >= 3uLL)
        {
          v132 = v449;
          break;
        }
      }
    }

    v276 = *v427;
    v449 = v132;
    v278 = v244 + 16;
    v277 = *(v244 + 2);

    if (v277 > 2)
    {
LABEL_207:
    }

    else
    {
      v425 = v131;
      while (1)
      {
        v430 = v244;
        v279 = v449;
        v280 = *(v449 + 2);
        if (v280 <= 3)
        {
          break;
        }

        v281 = 0;
        if (sub_1B5604())
        {
          v282 = (v279 + 32);
          v244 = v430;
        }

        else
        {
          v283 = v276;
          v284 = *(v276 + 16);
          v285 = 32;
          while (1)
          {
            if (v284)
            {
              v286 = *&v279[v285];
              sub_43124(v286);
              if (v287)
              {
                break;
              }
            }

            ++v281;
            v285 += 64;
            if (v280 == v281)
            {

              v131 = v425;
              goto LABEL_205;
            }
          }

          v276 = v283;
          v288 = sub_43124(v286);
          v131 = v425;
          v244 = v430;
          if ((v289 & 1) == 0)
          {
            goto LABEL_207;
          }

          v282 = (*(v283 + 56) + (v288 << 6));
        }

        v290 = *v282;
        v291 = v282[1];
        v292 = v282[3];
        *&v441[32] = v282[2];
        *&v441[48] = v292;
        *v441 = v290;
        *&v441[16] = v291;
        sub_42BA4(v441, &v450);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v244 = sub_3349C(0, *v278 + 1, 1, v244);
        }

        v294 = *(v244 + 2);
        v293 = *(v244 + 3);
        if (v294 >= v293 >> 1)
        {
          v244 = sub_3349C((v293 > 1), v294 + 1, 1, v244);
        }

        *(v244 + 2) = v294 + 1;
        v278 = v244 + 16;
        v295 = &v244[64 * v294];
        v296 = *v441;
        v297 = *&v441[16];
        v298 = *&v441[48];
        *(v295 + 4) = *&v441[32];
        *(v295 + 5) = v298;
        *(v295 + 2) = v296;
        *(v295 + 3) = v297;
        sub_496C8(v281, &v433);
        v450 = v433;
        v451 = v434;
        v452 = v435;
        v453 = v436;
        sub_43FF4(&v450);
        if (*(v244 + 2) >= 3uLL)
        {
          goto LABEL_207;
        }
      }

LABEL_205:
      v244 = v430;
    }

    v299 = *v427;
    v449 = v24;
    v301 = v131 + 16;
    v300 = *(v131 + 2);

    if (v300 > 2)
    {
LABEL_228:
    }

    else
    {
      v430 = v244;
      while (1)
      {
        v302 = v449;
        v303 = *(v449 + 2);
        if (v303 <= 3)
        {
          break;
        }

        if (sub_1B5604())
        {
          v304 = 0;
          v305 = (v302 + 32);
          v244 = v430;
        }

        else
        {
          v425 = v131;
          v304 = 0;
          v306 = *(v299 + 16);
          v307 = 32;
          while (1)
          {
            if (v306)
            {
              v308 = *&v302[v307];
              sub_43124(v308);
              if (v309)
              {
                break;
              }
            }

            ++v304;
            v307 += 64;
            if (v303 == v304)
            {

              v131 = v425;
              goto LABEL_226;
            }
          }

          v310 = sub_43124(v308);
          v131 = v425;
          v244 = v430;
          if ((v311 & 1) == 0)
          {
            goto LABEL_228;
          }

          v305 = (*(v299 + 56) + (v310 << 6));
        }

        v312 = *v305;
        v313 = v305[1];
        v314 = v305[3];
        *&v441[32] = v305[2];
        *&v441[48] = v314;
        *v441 = v312;
        *&v441[16] = v313;
        sub_42BA4(v441, &v450);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v131 = sub_3349C(0, *v301 + 1, 1, v131);
        }

        v316 = *(v131 + 2);
        v315 = *(v131 + 3);
        if (v316 >= v315 >> 1)
        {
          v131 = sub_3349C((v315 > 1), v316 + 1, 1, v131);
        }

        *(v131 + 2) = v316 + 1;
        v301 = v131 + 16;
        v317 = &v131[64 * v316];
        v318 = *v441;
        v319 = *&v441[16];
        v320 = *&v441[48];
        *(v317 + 4) = *&v441[32];
        *(v317 + 5) = v320;
        *(v317 + 2) = v318;
        *(v317 + 3) = v319;
        sub_496C8(v304, &v433);
        v450 = v433;
        v451 = v434;
        v452 = v435;
        v453 = v436;
        sub_43FF4(&v450);
        if (*(v131 + 2) >= 3uLL)
        {
          goto LABEL_228;
        }
      }

LABEL_226:
      v244 = v430;
    }

    v321 = *v427;
    v322 = v426;
    v449 = v426;
    v324 = v244 + 16;
    v323 = *(v244 + 2);
    swift_bridgeObjectRetain_n();

    if (v323 <= 2)
    {
      while (1)
      {
        v322 = v449;
        if (*(v449 + 2) <= 3uLL)
        {
          break;
        }

        v325 = *(v449 + 3);
        *v441 = *(v449 + 2);
        *&v441[16] = v325;
        v326 = *(v449 + 5);
        *&v441[32] = *(v449 + 4);
        *&v441[48] = v326;
        sub_42BA4(v441, &v450);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v244 = sub_3349C(0, *v324 + 1, 1, v244);
        }

        v328 = *(v244 + 2);
        v327 = *(v244 + 3);
        if (v328 >= v327 >> 1)
        {
          v244 = sub_3349C((v327 > 1), v328 + 1, 1, v244);
        }

        *(v244 + 2) = v328 + 1;
        v324 = v244 + 16;
        v329 = &v244[64 * v328];
        v330 = *v441;
        v331 = *&v441[16];
        v332 = *&v441[48];
        *(v329 + 4) = *&v441[32];
        *(v329 + 5) = v332;
        *(v329 + 2) = v330;
        *(v329 + 3) = v331;
        sub_496C8(0, &v433);
        v450 = v433;
        v451 = v434;
        v452 = v435;
        v453 = v436;
        sub_43FF4(&v450);
        if (*(v244 + 2) >= 3uLL)
        {
          v322 = v449;
          break;
        }
      }
    }

    v429 = v322;

    v333 = *v427;
    v334 = v421;
    v449 = v421;
    v335 = *(v131 + 2);
    swift_bridgeObjectRetain_n();

    if (v335 > 2)
    {
      v336 = v334;
    }

    else
    {
      while (1)
      {
        v336 = v449;
        if (*(v449 + 2) <= 3uLL)
        {
          break;
        }

        v337 = *(v449 + 3);
        *v441 = *(v449 + 2);
        *&v441[16] = v337;
        v338 = *(v449 + 5);
        *&v441[32] = *(v449 + 4);
        *&v441[48] = v338;
        sub_42BA4(v441, &v450);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v131 = sub_3349C(0, v335 + 1, 1, v131);
        }

        v340 = *(v131 + 2);
        v339 = *(v131 + 3);
        if (v340 >= v339 >> 1)
        {
          v131 = sub_3349C((v339 > 1), v340 + 1, 1, v131);
        }

        *(v131 + 2) = v340 + 1;
        v341 = &v131[64 * v340];
        v342 = *v441;
        v343 = *&v441[16];
        v344 = *&v441[48];
        *(v341 + 4) = *&v441[32];
        *(v341 + 5) = v344;
        *(v341 + 2) = v342;
        *(v341 + 3) = v343;
        sub_496C8(0, &v433);
        v450 = v433;
        v451 = v434;
        v452 = v435;
        v453 = v436;
        sub_43FF4(&v450);
        v335 = *(v131 + 2);
        if (v335 >= 3)
        {
          v336 = v449;
          break;
        }
      }

      v334 = v421;
    }

    sub_2B0C(&qword_2294F8, &unk_1BCB30);
    v345 = swift_allocObject();
    v345[4] = v244;
    *&v431 = v345 + 4;
    v346 = v426;
    v345[5] = v131;
    v345[6] = v346;
    v345[7] = v334;
    v345[8] = v336;
    v423 = v345;
    v345[9] = v429;
    v449 = _swiftEmptyArrayStorage;
    v425 = v131;
    swift_bridgeObjectRetain_n();
    v430 = v244;

    v427 = v336;

    for (k = 0; k != 6; ++k)
    {
      v348 = *(v431 + 8 * k);
      v349 = *(v348 + 16);
      if (v349)
      {
        *v441 = _swiftEmptyArrayStorage;

        sub_9ACAC(v349);
        v350 = *v441;
        v351 = 32;
        do
        {
          v352 = *(v348 + v351);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_3741C(0, v350[2] + 1, 1);
            v350 = *v441;
          }

          v354 = v350[2];
          v353 = v350[3];
          if (v354 >= v353 >> 1)
          {
            sub_3741C((v353 > 1), v354 + 1, 1);
            v350 = *v441;
          }

          v350[2] = v354 + 1;
          v350[v354 + 4] = v352;
          v351 += 64;
          --v349;
        }

        while (v349);
      }

      else
      {
        v350 = _swiftEmptyArrayStorage;
      }

      sub_5F33C(v350);
    }

    swift_setDeallocating();
    sub_2B0C(&qword_229500, &unk_1BC580);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v355 = v449;

    v356 = sub_40854(v355);

    *&v433 = v356;
    sub_492E8(v401);
    v357 = v430;

    *v441 = v417;
    v358 = v417;
    *&v441[8] = v416;
    v359 = v416;
    *&v441[16] = v418;
    v360 = v418;
    *&v441[24] = v413;
    v361 = v413;
    *&v441[32] = v412;
    v362 = v412;
    *&v441[40] = v419;
    v363 = v419;
    *&v441[48] = v420;
    v364 = v420;
    LOBYTE(v450) = 0;
    v428 = sub_5C794(v357, v441, &v450);
    v365 = v425;

    *v441 = v358;
    *&v441[8] = v359;
    *&v441[16] = v360;
    *&v441[24] = v361;
    *&v441[32] = v362;
    *&v441[40] = v363;
    *&v441[48] = v364;
    LOBYTE(v450) = 1;
    v430 = sub_5C794(v365, v441, &v450);

    sub_2B0C(&qword_229348, &unk_1BCB40);
    v366 = swift_allocObject();
    v431 = xmmword_1BCA80;
    *(v366 + 16) = xmmword_1BCA80;
    *(v366 + 32) = 0;
    sub_2B0C(&qword_229218, &unk_1C0210);
    v367 = swift_allocObject();
    *(v367 + 16) = v431;
    LOBYTE(v450) = 1;
    *(v367 + 32) = 1037193578;
    *(v367 + 40) = 0;
    *(v367 + 41) = *v440;
    *(v367 + 44) = *&v440[3];
    *(v367 + 48) = _swiftEmptyArrayStorage;
    *(v367 + 56) = _swiftEmptySetSingleton;
    *(v367 + 64) = 0;
    *(v367 + 72) = 1;
    *(v367 + 73) = *v439;
    *(v367 + 76) = *&v439[3];
    *(v367 + 80) = 0;
    *(v367 + 88) = 0;
    v426 = xmmword_1BCA90;
    *(v367 + 96) = xmmword_1BCA90;
    *(v367 + 112) = 0;
    *(v367 + 113) = *v438;
    *(v367 + 116) = *&v438[3];
    *(v367 + 120) = 0;
    sub_5CB94(v441);
    memcpy((v367 + 200), v441, 0x179uLL);
    *(v367 + 128) = 0u;
    *(v367 + 144) = 0u;
    *(v367 + 160) = 0u;
    *(v367 + 184) = 0;
    *(v367 + 192) = 0;
    *(v367 + 176) = 0x1FFFFFFFELL;
    *(v367 + 584) = sub_12DBA0(_swiftEmptyArrayStorage);
    *(v367 + 592) = 7;
    *(v366 + 40) = v367;
    v368 = sub_130214(v366);
    swift_setDeallocating();
    sub_42F48(v366 + 32, &qword_229350, &qword_1BC3F0);
    swift_deallocClassInstance();
    v369 = v411;
    *v411 = 1037196655;
    *(v369 + 8) = 0;
    *(v369 + 9) = *v443;
    *(v369 + 3) = *&v443[3];
    v369[2] = 0;
    *(v369 + 24) = -1;
    *(v369 + 25) = *v442;
    *(v369 + 7) = *&v442[3];
    v369[4] = _swiftEmptyArrayStorage;
    v369[5] = 0x3FF0000000000000;
    v369[6] = v368;
    v369[7] = 0x3FF0000000000000;
    swift_storeEnumTagMultiPayload();
    v370 = swift_allocObject();
    *(v370 + 16) = v431;
    *(v370 + 32) = 0;
    v371 = swift_allocObject();
    *(v371 + 16) = v431;
    LOBYTE(v450) = 1;
    *(v371 + 32) = 1037193578;
    *(v371 + 40) = 0;
    *(v371 + 41) = *v446;
    *(v371 + 44) = *&v446[3];
    *(v371 + 48) = _swiftEmptyArrayStorage;
    *(v371 + 56) = _swiftEmptySetSingleton;
    *(v371 + 64) = 0;
    *(v371 + 72) = 1;
    *(v371 + 73) = *v445;
    *(v371 + 76) = *&v445[3];
    *(v371 + 80) = 0;
    *(v371 + 88) = 0;
    *(v371 + 96) = v426;
    *(v371 + 112) = 0;
    *(v371 + 113) = *v444;
    *(v371 + 116) = *&v444[3];
    *(v371 + 120) = 0;
    memcpy((v371 + 200), v441, 0x179uLL);
    *(v371 + 128) = 0u;
    *(v371 + 144) = 0u;
    *(v371 + 160) = 0u;
    *(v371 + 184) = 0;
    *(v371 + 192) = 0;
    *(v371 + 176) = 0x1FFFFFFFELL;
    *(v371 + 584) = sub_12DBA0(_swiftEmptyArrayStorage);
    *(v371 + 592) = 7;
    *(v370 + 40) = v371;
    v372 = sub_130214(v370);
    swift_setDeallocating();
    sub_42F48(v370 + 32, &qword_229350, &qword_1BC3F0);
    swift_deallocClassInstance();
    v373 = v415;
    *v415 = 1485946454;
    *(v373 + 8) = 0;
    *(v373 + 9) = *v448;
    *(v373 + 3) = *&v448[3];
    v373[2] = 0;
    *(v373 + 24) = -1;
    *(v373 + 25) = *v447;
    *(v373 + 7) = *&v447[3];
    v373[4] = _swiftEmptyArrayStorage;
    v373[5] = 0x3FF0000000000000;
    v373[6] = v372;
    v373[7] = 0x3FF0000000000000;
    swift_storeEnumTagMultiPayload();
    v375 = v416;
    v374 = v417;
    *&v450 = v417;
    *(&v450 + 1) = v416;
    v377 = v418;
    v376 = v419;
    *&v451 = v418;
    v378 = v412;
    v379 = v413;
    *(&v451 + 1) = v413;
    *&v452 = v412;
    *(&v452 + 1) = v419;
    v380 = v420;
    *&v453 = v420;
    LOBYTE(v437) = 0;
    *&v431 = sub_5CBF0(v424, &v450, &v437);

    *&v450 = v374;
    *(&v450 + 1) = v375;
    *&v451 = v377;
    *(&v451 + 1) = v379;
    *&v452 = v378;
    *(&v452 + 1) = v376;
    *&v453 = v380;
    LOBYTE(v437) = 1;
    *&v426 = sub_5CBF0(v414, &v450, &v437);

    *&v450 = v374;
    *(&v450 + 1) = v375;
    *&v451 = v377;
    *(&v451 + 1) = v379;
    *&v452 = v378;
    *(&v452 + 1) = v376;
    *&v453 = v380;
    v381 = sub_5D0F4(v427, v429, &v450);

    sub_5EB2C(v369, v409, type metadata accessor for CollectionRecommendation);
    v382 = sub_33474(0, 1, 1, _swiftEmptyArrayStorage);
    v384 = v382[2];
    v383 = v382[3];
    if (v384 >= v383 >> 1)
    {
      v382 = sub_33474(v383 > 1, v384 + 1, 1, v382);
    }

    v382[2] = v384 + 1;
    v385 = (*(v406 + 80) + 32) & ~*(v406 + 80);
    v386 = *(v406 + 72);
    sub_5EB94(v409, v382 + v385 + v386 * v384, type metadata accessor for CollectionRecommendation);
    sub_5EB2C(v415, v410, type metadata accessor for CollectionRecommendation);
    v388 = v382[2];
    v387 = v382[3];
    if (v388 >= v387 >> 1)
    {
      v382 = sub_33474(v387 > 1, v388 + 1, 1, v382);
    }

    v382[2] = v388 + 1;
    sub_5EB94(v410, v382 + v385 + v388 * v386, type metadata accessor for CollectionRecommendation);
    *&v450 = v382;
    sub_5F428(v428);
    sub_5F428(v430);
    sub_5F428(v431);
    sub_5F428(v426);
    sub_5F428(v381);
    sub_5F428(v402);
    v389 = v450;
    swift_bridgeObjectRetain_n();
    v390 = sub_1B4624();
    v391 = sub_1B4DB4();

    if (os_log_type_enabled(v390, v391))
    {
      v392 = swift_slowAlloc();
      v393 = swift_slowAlloc();
      v437 = v393;
      *v392 = 136315138;
      v394 = sub_1AB48C(v389);
      v396 = sub_60FF4(v394, v395, &v437);

      *(v392 + 4) = v396;

      _os_log_impl(&dword_0, v390, v391, "Clustered: %s", v392, 0xCu);
      sub_2BF8(v393);

      sub_5DC0C(v415);
      sub_5DC0C(v411);
    }

    else
    {

      sub_5DC0C(v415);
      sub_5DC0C(v411);
    }

    v398 = v408;
    v399 = v433;
    *v408 = v389;
    v398[1] = v399;
  }

  return result;
}

uint64_t sub_482CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  v4 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + 16);
  *(a2 + 16) = 0x8000000000000000;
  sub_5DD24(a1, sub_57DD8, 0, isUniquelyReferenced_nonNull_native, &v7);

  *(a2 + 16) = v7;
  return swift_endAccess();
}

uint64_t sub_48390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = a7;
  v8[22] = a8;
  v8[19] = a5;
  v8[20] = a6;
  v8[18] = a4;
  return _swift_task_switch(sub_483B8, 0, 0);
}

uint64_t sub_483B8()
{
  v1 = *(v0 + 152);
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_375F8(0, v2, 0);
    v3 = (v1 + 32);
    do
    {
      v4 = *v3;
      v5 = v3[1];
      v6 = v3[3];
      *(v0 + 48) = v3[2];
      *(v0 + 64) = v6;
      *(v0 + 16) = v4;
      *(v0 + 32) = v5;
      sub_42BA4(v0 + 16, v0 + 80);
      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        sub_375F8((v7 > 1), v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      v9 = &_swiftEmptyArrayStorage[8 * v8];
      v10 = *(v0 + 16);
      v11 = *(v0 + 32);
      v12 = *(v0 + 64);
      v9[4] = *(v0 + 48);
      v9[5] = v12;
      v9[2] = v10;
      v9[3] = v11;
      v3 = (v3 + 136);
      --v2;
    }

    while (v2);
  }

  *(v0 + 184) = _swiftEmptyArrayStorage;
  v13 = swift_task_alloc();
  *(v0 + 192) = v13;
  *v13 = v0;
  v13[1] = sub_48514;
  v14 = *(v0 + 144);

  return sub_48734(_swiftEmptyArrayStorage);
}

uint64_t sub_48514(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v7 = sub_486D0;
  }

  else
  {
    v8 = *(v4 + 184);

    *(v4 + 208) = a1;
    v7 = sub_48644;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_48644()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  (*(v0 + 160))(*(v0 + 208));

  sub_1B4E04();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_486D0()
{
  v1 = v0[23];

  v2 = v0[1];
  v3 = v0[25];

  return v2();
}

uint64_t sub_48734(uint64_t a1)
{
  *(v2 + 536) = v1;
  *(v2 + 528) = a1;
  return _swift_task_switch(sub_48758, 0, 0);
}

unint64_t sub_48758()
{
  v1 = *(v0 + 528);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = &_swiftEmptyDictionarySingleton;
    v5 = *(v1 + 16);
    while (1)
    {
      v13 = v3[3];
      v15 = *v3;
      v14 = v3[1];
      *(v0 + 48) = v3[2];
      *(v0 + 64) = v13;
      *(v0 + 16) = v15;
      *(v0 + 32) = v14;
      v16 = *(v0 + 16);
      sub_42BA4(v0 + 16, v0 + 80);
      sub_42BA4(v0 + 16, v0 + 144);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = v4;
      result = sub_43124(v16);
      v20 = v4[2];
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        __break(1u);
LABEL_28:
        __break(1u);
        return result;
      }

      v24 = v19;
      if (v4[3] < v23)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      v32 = result;
      sub_1858C4();
      result = v32;
      if ((v24 & 1) == 0)
      {
LABEL_11:
        v4 = v46;
        v46[(result >> 6) + 8] |= 1 << result;
        *(v46[6] + 8 * result) = v16;
        v26 = (v46[7] + (result << 6));
        v28 = *(v0 + 48);
        v27 = *(v0 + 64);
        v29 = *(v0 + 32);
        *v26 = *(v0 + 16);
        v26[1] = v29;
        v26[2] = v28;
        v26[3] = v27;
        result = sub_43FF4(v0 + 16);
        v30 = v46[2];
        v22 = __OFADD__(v30, 1);
        v31 = v30 + 1;
        if (v22)
        {
          goto LABEL_28;
        }

        v46[2] = v31;
        goto LABEL_4;
      }

LABEL_3:
      v4 = v46;
      v6 = (v46[7] + (result << 6));
      v7 = v6[3];
      v9 = *v6;
      v8 = v6[1];
      *(v0 + 240) = v6[2];
      *(v0 + 256) = v7;
      *(v0 + 208) = v9;
      *(v0 + 224) = v8;
      v10 = *(v0 + 16);
      v11 = *(v0 + 32);
      v12 = *(v0 + 64);
      v6[2] = *(v0 + 48);
      v6[3] = v12;
      *v6 = v10;
      v6[1] = v11;
      sub_43FF4(v0 + 208);
      sub_43FF4(v0 + 16);
LABEL_4:
      v3 += 4;
      if (!--v5)
      {
        v33 = *(v0 + 528);
        sub_3741C(0, v2, 0);
        v34 = (v33 + 32);
        v35 = _swiftEmptyArrayStorage[2];
        do
        {
          v37 = *v34;
          v34 += 8;
          v36 = v37;
          v38 = _swiftEmptyArrayStorage[3];
          if (v35 >= v38 >> 1)
          {
            sub_3741C((v38 > 1), v35 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v35 + 1;
          _swiftEmptyArrayStorage[v35++ + 4] = v36;
          --v2;
        }

        while (v2);
        goto LABEL_21;
      }
    }

    sub_17E550(v23, isUniquelyReferenced_nonNull_native);
    result = sub_43124(v16);
    if ((v24 & 1) != (v25 & 1))
    {

      return sub_1B5784();
    }

LABEL_10:
    if ((v24 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_3;
  }

  v4 = &_swiftEmptyDictionarySingleton;
LABEL_21:
  *(v0 + 552) = _swiftEmptyArrayStorage;
  *(v0 + 544) = v4;
  v39 = *(v0 + 536);
  v40 = v39[5];
  v41 = v39[6];
  sub_2698(v39 + 2, v40);
  v42 = *(v41 + 16);
  v45 = (v42 + *v42);
  v43 = v42[1];
  v44 = swift_task_alloc();
  *(v0 + 560) = v44;
  *v44 = v0;
  v44[1] = sub_48AF0;

  return (v45)(_swiftEmptyArrayStorage, v40, v41);
}

uint64_t sub_48AF0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 560);
  v6 = *v2;
  *(*v2 + 568) = a1;

  v7 = *(v3 + 552);
  if (v1)
  {
    v8 = *(v4 + 544);

    v9 = *(v6 + 8);

    return v9();
  }

  else
  {

    return _swift_task_switch(sub_48C64, 0, 0);
  }
}

unint64_t sub_48C64()
{
  v1 = 0;
  v2 = *(v0 + 568);
  v3 = *(v0 + 544);
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);
  v51 = &_swiftEmptyDictionarySingleton;
  v54 = *(v0 + 544);
  v7 = (63 - v5) >> 6;
  while (v6)
  {
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = v9 | (v1 << 6);
    v11 = (*(v2 + 56) + 88 * v10);
    if ((v11[32] & 1) == 0)
    {
      if (*(v3 + 16))
      {
        v12 = *(*(v2 + 48) + 8 * v10);
        v13 = *v11;
        v14 = *(v11 + 3);
        v15 = *(v0 + 544);
        v16 = sub_43124(v12);
        v3 = v54;
        if (v17)
        {
          v48 = v14;
          v18 = (*(v54 + 56) + (v16 << 6));
          v19 = *v18;
          v20 = v18[1];
          v21 = v18[3];
          *(v0 + 304) = v18[2];
          *(v0 + 320) = v21;
          *(v0 + 272) = v19;
          *(v0 + 288) = v20;
          if (v13)
          {
            v46 = sub_1B5604();
            v22 = v0 + 336;
          }

          else
          {
            v46 = 1;
            v22 = v0 + 464;
          }

          sub_42BA4(v0 + 272, v22);

          v23 = *(v0 + 304);
          v47 = *(v0 + 312);
          v24 = *(v0 + 320);

          sub_43FF4(v0 + 272);
          v25 = *(v0 + 328);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v55 = v51;
          result = sub_43124(v12);
          v28 = v51[2];
          v29 = (v27 & 1) == 0;
          v30 = __OFADD__(v28, v29);
          v31 = v28 + v29;
          if (v30)
          {
            __break(1u);
LABEL_34:
            __break(1u);
            return result;
          }

          if (v51[3] >= v31)
          {
            v34 = v48;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v50 = result;
              v53 = v27;
              sub_1858C4();
              v27 = v53;
              v34 = v48;
              result = v50;
            }
          }

          else
          {
            v52 = v27;
            sub_17E550(v31, isUniquelyReferenced_nonNull_native);
            result = sub_43124(v12);
            v33 = v32 & 1;
            v27 = v52;
            if ((v52 & 1) != v33)
            {
LABEL_30:

              return sub_1B5784();
            }

            v34 = v48;
          }

          v35 = v46 & 1;
          if (v27)
          {
            v51 = v55;
            v36 = v55[7] + (result << 6);
            v37 = *(v36 + 48);
            v39 = *v36;
            v38 = *(v36 + 16);
            *(v0 + 432) = *(v36 + 32);
            *(v0 + 448) = v37;
            *(v0 + 400) = v39;
            *(v0 + 416) = v38;
            *v36 = v34;
            *(v36 + 8) = v35;
            *(v36 + 16) = 0;
            *(v36 + 24) = -1;
            *(v36 + 32) = v23;
            *(v36 + 40) = v47;
            *(v36 + 48) = v24;
            *(v36 + 56) = v25;
            sub_43FF4(v0 + 400);
          }

          else
          {
            v55[(result >> 6) + 8] |= 1 << result;
            *(v55[6] + 8 * result) = v12;
            v40 = v55[7] + (result << 6);
            *v40 = v34;
            *(v40 + 8) = v35;
            *(v40 + 16) = 0;
            *(v40 + 24) = -1;
            *(v40 + 32) = v23;
            *(v40 + 40) = v47;
            *(v40 + 48) = v24;
            *(v40 + 56) = v25;
            v41 = v55[2];
            v30 = __OFADD__(v41, 1);
            v42 = v41 + 1;
            if (v30)
            {
              goto LABEL_34;
            }

            v51 = v55;
            v55[2] = v42;
          }

          v3 = v54;
        }
      }
    }
  }

  while (1)
  {
    v8 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v2 + 64 + 8 * v8);
    ++v1;
    if (v6)
    {
      v1 = v8;
      goto LABEL_9;
    }
  }

  v43 = *(v0 + 568);
  v44 = *(v0 + 544);

  v45 = *(v0 + 8);

  return v45(v51);
}

uint64_t sub_4903C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_2B0C(&qword_2296C0, &qword_1C3800);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_43050(a3, v24 - v10, &qword_2296C0, &qword_1C3800);
  v12 = sub_1B4C54();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_42F48(v11, &qword_2296C0, &qword_1C3800);
  }

  else
  {
    sub_1B4C44();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1B4BC4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1B4854() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_42F48(a3, &qword_2296C0, &qword_1C3800);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_42F48(a3, &qword_2296C0, &qword_1C3800);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_492E8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_111CE0(&v10, *(*(v1 + 48) + ((v8 << 9) | (8 * v9))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}