Swift::Int sub_10002D8DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100017538(&qword_10009A010);
    v2 = sub_100060BCC();
    v14 = v2;
    sub_100060B4C();
    if (sub_100060B7C())
    {
      type metadata accessor for MessageID(0);
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_10002DF8C();
        }

        v2 = v14;
        result = sub_100060ACC(*(v14 + 40));
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_100060B7C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

void *sub_10002DABC(unint64_t a1, void *a2)
{
  v2 = a2;
  if (a2[2])
  {
    v53[0] = a1;
    v44 = a1 >> 62;
    if (a1 >> 62)
    {
LABEL_47:
      v35 = a1;
      v3 = sub_100060CFC();
      a1 = v35;
    }

    else
    {
      v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v49 = a1;

    if (v3)
    {
      v4 = 0;
      v50 = v49 & 0xC000000000000001;
      v48 = v49 & 0xFFFFFFFFFFFFFF8;
      v46 = v49 + 32;
      v52 = v2 + 7;
      while (1)
      {
        if (v50)
        {
          a1 = sub_100060C0C();
        }

        else
        {
          if (v4 >= *(v48 + 16))
          {
            goto LABEL_46;
          }

          a1 = *(v46 + 8 * v4);
        }

        v51 = a1;
        v5 = __OFADD__(v4++, 1);
        if (v5)
        {
          goto LABEL_45;
        }

        v6 = sub_100060ACC(v2[5]);
        v7 = -1 << *(v2 + 32);
        v8 = v6 & ~v7;
        v9 = v8 >> 6;
        v10 = 1 << v8;
        if (((1 << v8) & v52[v8 >> 6]) != 0)
        {
          break;
        }

LABEL_6:

        if (v4 == v3)
        {
          goto LABEL_40;
        }
      }

      v11 = ~v7;
      type metadata accessor for MessageID(0);
      while (1)
      {
        v12 = *(v2[6] + 8 * v8);
        v13 = sub_100060ADC();

        if (v13)
        {
          break;
        }

        v8 = (v8 + 1) & v11;
        v9 = v8 >> 6;
        v10 = 1 << v8;
        if (((1 << v8) & v52[v8 >> 6]) == 0)
        {
          goto LABEL_6;
        }
      }

      v53[1] = v4;

      v15 = *(v2 + 32);
      v16 = v15 & 0x3F;
      v17 = ((1 << v15) + 63) >> 6;
      v42 = v17;
      if (v16 <= 0xD)
      {
LABEL_19:
        v43 = &v41;
        __chkstk_darwin(v14);
        v19 = &v41 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0);
        a1 = memcpy(v19, v52, v18);
        v20 = v2[2];
        v21 = *&v19[8 * v9] & ~v10;
        v47 = v19;
        *&v19[8 * v9] = v21;
        v45 = v20 - 1;
        if (v44)
        {
          a1 = sub_100060CFC();
          v51 = a1;
        }

        else
        {
          v51 = *(v48 + 16);
        }

        while (1)
        {
          if (v4 == v51)
          {
            v2 = sub_10002E468(v47, v42, v45, v2);
            goto LABEL_40;
          }

          if (v50)
          {
            a1 = sub_100060C0C();
          }

          else
          {
            if ((v4 & 0x8000000000000000) != 0)
            {
              goto LABEL_43;
            }

            if (v4 >= *(v48 + 16))
            {
              goto LABEL_44;
            }

            a1 = *(v46 + 8 * v4);
          }

          v22 = a1;
          v5 = __OFADD__(v4++, 1);
          if (v5)
          {
            break;
          }

          v23 = sub_100060ACC(v2[5]);
          v24 = v2;
          v25 = -1 << *(v2 + 32);
          v26 = v23 & ~v25;
          v27 = v26 >> 6;
          v28 = 1 << v26;
          if (((1 << v26) & v52[v26 >> 6]) != 0)
          {
            v29 = ~v25;
            while (1)
            {
              v30 = *(v24[6] + 8 * v26);
              v31 = sub_100060ADC();

              if (v31)
              {
                break;
              }

              v26 = (v26 + 1) & v29;
              v27 = v26 >> 6;
              v28 = 1 << v26;
              if (((1 << v26) & v52[v26 >> 6]) == 0)
              {
                goto LABEL_22;
              }
            }

            v32 = v47[v27];
            v47[v27] = v32 & ~v28;
            v2 = v24;
            if ((v32 & v28) != 0)
            {
              v33 = v45 - 1;
              if (__OFSUB__(v45, 1))
              {
                __break(1u);
              }

              --v45;
              if (!v33)
              {

                v2 = &_swiftEmptySetSingleton;
                goto LABEL_40;
              }
            }
          }

          else
          {
LABEL_22:

            v2 = v24;
          }
        }

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

      v36 = 8 * v17;

      v37 = v2;
      v38 = v36;
      if (swift_stdlib_isStackAllocationSafe())
      {

        v2 = v37;
        goto LABEL_19;
      }

      v39 = swift_slowAlloc();
      memcpy(v39, v52, v38);
      sub_10002E238(v39, v42, v37, v8, v53);
      v2 = v40;
    }

LABEL_40:
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_10002DF8C()
{
  v1 = v0;
  v2 = *v0;
  sub_100017538(&qword_10009A010);
  result = sub_100060BBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_100060ACC(*(v4 + 40));
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_10002E1B4(uint64_t a1, void *a2)
{
  sub_100060ACC(a2[5]);
  result = sub_100060B3C();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_10002E238(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v29 = a3 + 56;
  while (2)
  {
    v26 = v8;
    do
    {
      while (1)
      {
        if (*v5 >> 62)
        {
          v9 = sub_100060CFC();
        }

        else
        {
          v9 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v10 = v5[1];
        if (v10 == v9)
        {

          sub_10002E468(a1, a2, v26, a3);
          return;
        }

        v11 = *v5;
        if ((*v5 & 0xC000000000000001) != 0)
        {
          v12 = sub_100060C0C();
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
            return;
          }

          if (v10 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v12 = *(v11 + 8 * v10 + 32);
        }

        v13 = v12;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_26;
        }

        v5[1] = v10 + 1;
        v14 = sub_100060ACC(*(a3 + 40));
        v15 = -1 << *(a3 + 32);
        v16 = v14 & ~v15;
        v17 = v16 >> 6;
        v18 = 1 << v16;
        if (((1 << v16) & *(v29 + 8 * (v16 >> 6))) != 0)
        {
          break;
        }

LABEL_3:

        v5 = a5;
      }

      type metadata accessor for MessageID(0);
      v19 = *(*(a3 + 48) + 8 * v16);
      v20 = sub_100060ADC();

      if ((v20 & 1) == 0)
      {
        v21 = ~v15;
        do
        {
          v16 = (v16 + 1) & v21;
          v17 = v16 >> 6;
          v18 = 1 << v16;
          if (((1 << v16) & *(v29 + 8 * (v16 >> 6))) == 0)
          {
            goto LABEL_3;
          }

          v22 = *(*(a3 + 48) + 8 * v16);
          v23 = sub_100060ADC();
        }

        while ((v23 & 1) == 0);
      }

      v5 = a5;

      v24 = a1[v17];
      a1[v17] = v24 & ~v18;
    }

    while ((v24 & v18) == 0);
    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_28;
    }

    if (v26 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_10002E468(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_100017538(&qword_10009A010);
  result = sub_100060BDC();
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
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_100060ACC(v16);
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
    *(v9[6] + 8 * v21) = v17;
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

void sub_10002E65C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10002DF8C();
  }

  else
  {
    if (v7 > v6)
    {
      sub_10002E7BC();
      goto LABEL_12;
    }

    sub_10002E90C();
  }

  v8 = *v3;
  v9 = sub_100060ACC(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for MessageID(0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_100060ADC();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_100060E3C();
  __break(1u);
}

id sub_10002E7BC()
{
  v1 = v0;
  sub_100017538(&qword_10009A010);
  v2 = *v0;
  v3 = sub_100060BAC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10002E90C()
{
  v1 = v0;
  v2 = *v0;
  sub_100017538(&qword_10009A010);
  result = sub_100060BBC();
  v4 = result;
  if (*(v2 + 16))
  {
    v24 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(v4 + 40);
      v16 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_100060ACC(v15);
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v10 + 8 * v19);
          if (v23 != -1)
          {
            v11 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v16;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v24;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_10002EB20(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = result;
  if (!a2)
  {
    v10 = 0;
    goto LABEL_12;
  }

  v10 = a3;
  if (!a3)
  {
LABEL_12:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = v10;
    return v10;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = *(a6 + 16);
    if (v11)
    {
      v13 = 0;
      v14 = a3 - 1;
      while (v13 < *(a6 + 16))
      {
        *(a2 + 8 * v13) = *(a6 + 32 + 8 * v13);
        if (v14 == v13)
        {
          swift_unknownObjectRetain();
          goto LABEL_12;
        }

        result = swift_unknownObjectRetain();
        if (v11 == ++v13)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_9:
    v10 = v11;
    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
  return result;
}

id sub_10002EBE8@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

void sub_10002EC00(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, id *))
{
  v4 = a1;
  if (!a2)
  {
    v6 = _swiftEmptyArrayStorage;
    v11 = 0;
    goto LABEL_31;
  }

  if (a2 <= 0)
  {
    v6 = _swiftEmptyArrayStorage;
    v9 = _swiftEmptyArrayStorage[3];
    if (a1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_100017538(&qword_100099B38);
    v6 = swift_allocObject();
    v7 = j__malloc_size(v6);
    v8 = v7 - 32;
    if (v7 < 32)
    {
      v8 = v7 - 25;
    }

    v9 = (2 * (v8 >> 3)) | 1;
    v6[2] = a2;
    v6[3] = v9;
    if (v4)
    {
LABEL_6:
      if ((a2 & 0x8000000000000000) == 0)
      {
        v10 = v4 + 16 * a2;
        if (v4)
        {
          goto LABEL_8;
        }

LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
      }

LABEL_41:
      __break(1u);
      goto LABEL_42;
    }
  }

  if (a2 < 0)
  {
    goto LABEL_41;
  }

  v10 = 0;
  if (!v4)
  {
    goto LABEL_38;
  }

LABEL_8:
  v11 = (v9 >> 1) - a2;
  v12 = a2 - 1;
  v13 = v6 + 5;
  if (v4 == v10)
  {
LABEL_11:
    __break(1u);
  }

  else
  {
    while (1)
    {
      v14 = *(v4 + 8);
      v36 = *v4;
      v37 = v14;
      v15 = v36;
      swift_unknownObjectRetain();
      a3(&v35, &v36);
      swift_unknownObjectRelease();

      *(v13 - 1) = v35;
      if (!v12)
      {
        break;
      }

      --v12;
      ++v13;
      v4 += 16;
      if (v4 == v10)
      {
        goto LABEL_11;
      }
    }
  }

  v16 = v4 + 16;
  if (v16 != v10)
  {
    v34 = a3;
    do
    {
      v17 = *(v16 + 8);
      v36 = *v16;
      v37 = v17;
      v18 = v36;
      swift_unknownObjectRetain();
      v34(&v35, &v36);
      swift_unknownObjectRelease();

      v19 = v35;
      if (!v11)
      {
        v20 = v6[3];
        if (((v20 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_40;
        }

        v21 = v20 & 0xFFFFFFFFFFFFFFFELL;
        if (v21 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v21;
        }

        sub_100017538(&qword_100099B38);
        v23 = swift_allocObject();
        v24 = j__malloc_size(v23);
        v25 = v24 - 32;
        if (v24 < 32)
        {
          v25 = v24 - 25;
        }

        v26 = v25 >> 3;
        v23[2] = v22;
        v23[3] = (2 * (v25 >> 3)) | 1;
        v27 = (v23 + 4);
        v28 = v6[3] >> 1;
        if (v6[2])
        {
          v29 = v6 + 4;
          if (v23 != v6 || v27 >= v29 + 8 * v28)
          {
            memmove(v23 + 4, v29, 8 * v28);
          }

          v6[2] = 0;
        }

        v13 = (v27 + 8 * v28);
        v11 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - v28;

        v6 = v23;
      }

      v30 = __OFSUB__(v11--, 1);
      if (v30)
      {
        goto LABEL_39;
      }

      v16 += 16;
      *v13++ = v19;
    }

    while (v16 != v10);
  }

LABEL_31:
  v31 = v6[3];
  if (v31 < 2)
  {
    return;
  }

  v32 = v31 >> 1;
  v30 = __OFSUB__(v32, v11);
  v33 = v32 - v11;
  if (v30)
  {
LABEL_42:
    __break(1u);
    return;
  }

  v6[2] = v33;
}

void sub_10002EEB8(uint64_t a1)
{
  v21 = 0;
  v22 = sub_10002BDE0(_swiftEmptyArrayStorage, sub_10004A57C);
  sub_10002BDE0(_swiftEmptyArrayStorage, sub_10004A3E0);
  v2 = *(a1 + 16);
  sub_10002C230(v2, 0);
  sub_100060C5C();
  v20 = v2;
  if (!v2)
  {
    return;
  }

  v3 = 0;
  while (1)
  {
    v7 = *(a1 + 32 + 16 * v3);
    v8 = (v22 + 4);
    v9 = v22[2];
    if (!v21)
    {
      break;
    }

    v10 = v7;
    swift_unknownObjectRetain();

    sub_100046E2C(v10, v8, v9, (v21 + 16));
    LOBYTE(v10) = v11;

    if ((v10 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_15:
    v15 = v7;
    sub_100060C3C();
    sub_100060C6C();
    sub_100060C7C();
    sub_100060C4C();
    v16 = v22[2];
    if (v21)
    {
      swift_beginAccess();
      if (sub_10006045C() >= v16)
      {
        v18 = v21;
        if ((swift_isUniquelyReferenced_native() & 1) == 0)
        {
          v19 = sub_10006047C();

          v21 = v19;
          v18 = v19;
        }

        if (!v18)
        {
          goto LABEL_28;
        }

        sub_10006041C();
      }

      else
      {
        v17 = *(v21 + 24) & 0x3FLL;
        if (v16 > 0xF || v17)
        {
          goto LABEL_3;
        }

        v21 = 0;
      }
    }

    else if (v16 > 0xF)
    {
      v17 = 0;
LABEL_3:
      v4 = sub_10006048C();
      if (v17 <= v4)
      {
        v5 = v4;
      }

      else
      {
        v5 = v17;
      }

      v6 = sub_10002C054(v22, v5, 0, v17);

      v21 = v6;
    }

    ++v3;
    swift_unknownObjectRetain();
    sub_100060C3C();
    sub_100060C6C();
    sub_100060C7C();
    sub_100060C4C();
    swift_unknownObjectRelease();

    if (v3 == v20)
    {
      return;
    }
  }

  v12 = v7;
  swift_unknownObjectRetain();
  if (!v9)
  {
    goto LABEL_15;
  }

  type metadata accessor for MessageID(0);
  while (1)
  {
    v13 = *v8;
    v14 = sub_100060ADC();

    if (v14)
    {
      break;
    }

    ++v8;
    if (!--v9)
    {
      goto LABEL_15;
    }
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  __break(1u);
}

uint64_t sub_10002F1F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    sub_100017538(&qword_10009A000);
    v6 = swift_allocObject();
    v7 = j__malloc_size(v6);
    v8 = v7 - 32;
    if (v7 < 32)
    {
      v8 = v7 - 17;
    }

    v9 = v8 >> 4;
    v6[2] = v4;
    v6[3] = 2 * v9;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = (a1 + 32);
      v12 = (a2 + 32);
      v2 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - v4;
      v13 = v4 - 1;
      v14 = 4;
      while (1)
      {
        v15 = &v6[v14];
        v9 = *v11;
        v16 = *v12;
        *v15 = *v11;
        v15[1] = v16;
        if (!v13)
        {
          break;
        }

        v17 = v9;
        swift_unknownObjectRetain();
        v14 += 2;
        ++v11;
        ++v12;
        --v13;
        if (!--v10)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      __break(1u);
    }

    v18 = v9;
    swift_unknownObjectRetain();
  }

  else
  {
    v2 = 0;
    v6 = _swiftEmptyArrayStorage;
  }

  v20 = v6[3];
  if (v20 < 2)
  {
    return v6;
  }

  v21 = v20 >> 1;
  v22 = __OFSUB__(v21, v2);
  v23 = v21 - v2;
  if (!v22)
  {
    v6[2] = v23;
    return v6;
  }

  __break(1u);
  return result;
}

void sub_10002F328(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void **, uint64_t *, void **, uint64_t *))
{
  v6 = v5;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v11 = _swiftEmptyArrayStorage;
LABEL_90:
    v10 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_92;
    }

    goto LABEL_130;
  }

  v9 = a4;
  v10 = 0;
  v11 = _swiftEmptyArrayStorage;
  while (1)
  {
    v12 = v10;
    if (v10 + 1 >= v8)
    {
      v25 = v10 + 1;
    }

    else
    {
      v109 = v8;
      v13 = *v7;
      v14 = *v7 + 16 * (v10 + 1);
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = v13 + 16 * v10;
      v18 = *v17;
      v19 = *(v17 + 8);
      v115 = v16;
      v116 = v15;
      v113 = v19;
      v114 = v18;
      v20 = v15;
      swift_unknownObjectRetain();
      v10 = v18;
      swift_unknownObjectRetain();
      v107 = a5(&v116, &v115, &v114, &v113);
      if (v6)
      {
LABEL_101:

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      v21 = v12;
      v22 = v12 + 2;
      v103 = v21;
      v23 = 16 * v21;
      v24 = (v13 + 16 * v21 + 24);
      while (1)
      {
        v25 = v109;
        if (v109 == v22)
        {
          break;
        }

        v26 = v24[1];
        v27 = *(v24 - 1);
        v28 = *v24;
        v115 = v24[2];
        v116 = v26;
        v113 = v28;
        v114 = v27;
        v29 = v26;
        swift_unknownObjectRetain();
        v10 = v27;
        swift_unknownObjectRetain();
        LODWORD(v27) = a5(&v116, &v115, &v114, &v113);
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        ++v22;
        v24 += 2;
        if ((v107 ^ v27))
        {
          v25 = v22 - 1;
          break;
        }
      }

      v7 = a3;
      v12 = v103;
      v9 = a4;
      if (v107)
      {
        if (v25 < v103)
        {
          goto LABEL_124;
        }

        if (v103 < v25)
        {
          v30 = 16 * v25 - 16;
          v31 = v25;
          v32 = v103;
          do
          {
            if (v32 != --v31)
            {
              v33 = *a3;
              if (!*a3)
              {
                goto LABEL_128;
              }

              v34 = *(v33 + v23);
              *(v33 + v23) = *(v33 + v30);
              *(v33 + v30) = v34;
            }

            ++v32;
            v30 -= 16;
            v23 += 16;
          }

          while (v32 < v31);
        }
      }

      v6 = 0;
    }

    v35 = v7[1];
    if (v25 >= v35)
    {
      goto LABEL_29;
    }

    if (__OFSUB__(v25, v12))
    {
      goto LABEL_120;
    }

    if (v25 - v12 >= v9)
    {
      goto LABEL_29;
    }

    if (__OFADD__(v12, v9))
    {
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v12 + v9 >= v35)
    {
      v36 = v7[1];
    }

    else
    {
      v36 = v12 + v9;
    }

    if (v36 < v12)
    {
      goto LABEL_123;
    }

    if (v25 == v36)
    {
LABEL_29:
      v37 = v25;
      if (v25 < v12)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v99 = v11;
      v100 = v36;
      v112 = v6;
      v85 = *v7;
      v86 = *v7 + 16 * v25 - 16;
      v104 = v12;
      v87 = v12 - v25;
      do
      {
        v108 = v86;
        v110 = v25;
        v88 = *(v85 + 16 * v25);
        v101 = v87;
        do
        {
          v89 = *v86;
          v90 = *(v86 + 8);
          v115 = *(&v88 + 1);
          v116 = v88;
          v113 = v90;
          v114 = v89;
          v20 = v88;
          swift_unknownObjectRetain();
          v10 = v89;
          swift_unknownObjectRetain();
          v91 = a5(&v116, &v115, &v114, &v113);
          if (v112)
          {
            goto LABEL_101;
          }

          v92 = v91;
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          if ((v92 & 1) == 0)
          {
            break;
          }

          if (!v85)
          {
            goto LABEL_126;
          }

          v93 = *v86;
          v88 = *(v86 + 16);
          *v86 = v88;
          *(v86 + 16) = v93;
          v86 -= 16;
        }

        while (!__CFADD__(v87++, 1));
        v25 = v110 + 1;
        v86 = v108 + 16;
        v37 = v100;
        v87 = v101 - 1;
      }

      while (v110 + 1 != v100);
      v6 = 0;
      v7 = a3;
      v12 = v104;
      v11 = v99;
      if (v100 < v104)
      {
        goto LABEL_119;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_10002D5C0(0, *(v11 + 2) + 1, 1, v11);
    }

    v39 = *(v11 + 2);
    v38 = *(v11 + 3);
    v40 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      v11 = sub_10002D5C0((v38 > 1), v39 + 1, 1, v11);
    }

    *(v11 + 2) = v40;
    v41 = &v11[16 * v39];
    *(v41 + 4) = v12;
    *(v41 + 5) = v37;
    v42 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    v10 = v37;
    if (v39)
    {
      break;
    }

LABEL_3:
    v8 = v7[1];
    v9 = a4;
    if (v10 >= v8)
    {
      goto LABEL_90;
    }
  }

  while (1)
  {
    v43 = v40 - 1;
    if (v40 >= 4)
    {
      v48 = &v11[16 * v40 + 32];
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_106;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_107;
      }

      v55 = &v11[16 * v40];
      v57 = *v55;
      v56 = *(v55 + 1);
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_109;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_112;
      }

      if (v59 >= v51)
      {
        v77 = &v11[16 * v43 + 32];
        v79 = *v77;
        v78 = *(v77 + 1);
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_118;
        }

        if (v46 < v80)
        {
          v43 = v40 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

    if (v40 == 3)
    {
      v44 = *(v11 + 4);
      v45 = *(v11 + 5);
      v54 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      v47 = v54;
LABEL_49:
      if (v47)
      {
        goto LABEL_108;
      }

      v60 = &v11[16 * v40];
      v62 = *v60;
      v61 = *(v60 + 1);
      v63 = __OFSUB__(v61, v62);
      v64 = v61 - v62;
      v65 = v63;
      if (v63)
      {
        goto LABEL_111;
      }

      v66 = &v11[16 * v43 + 32];
      v68 = *v66;
      v67 = *(v66 + 1);
      v54 = __OFSUB__(v67, v68);
      v69 = v67 - v68;
      if (v54)
      {
        goto LABEL_114;
      }

      if (__OFADD__(v64, v69))
      {
        goto LABEL_115;
      }

      if (v64 + v69 >= v46)
      {
        if (v46 < v69)
        {
          v43 = v40 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_63;
    }

    v70 = &v11[16 * v40];
    v72 = *v70;
    v71 = *(v70 + 1);
    v54 = __OFSUB__(v71, v72);
    v64 = v71 - v72;
    v65 = v54;
LABEL_63:
    if (v65)
    {
      goto LABEL_110;
    }

    v73 = &v11[16 * v43];
    v75 = *(v73 + 4);
    v74 = *(v73 + 5);
    v54 = __OFSUB__(v74, v75);
    v76 = v74 - v75;
    if (v54)
    {
      goto LABEL_113;
    }

    if (v76 < v64)
    {
      goto LABEL_3;
    }

LABEL_70:
    v81 = v43 - 1;
    if (v43 - 1 >= v40)
    {
      break;
    }

    if (!*v7)
    {
      goto LABEL_125;
    }

    v82 = *&v11[16 * v81 + 32];
    v83 = *&v11[16 * v43 + 40];
    sub_10002D0BC((*v7 + 16 * v82), (*v7 + 16 * *&v11[16 * v43 + 32]), (*v7 + 16 * v83), v42, a5);
    if (v6)
    {
      goto LABEL_100;
    }

    if (v83 < v82)
    {
      goto LABEL_104;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_10002D5AC(v11);
    }

    if (v81 >= *(v11 + 2))
    {
      goto LABEL_105;
    }

    v84 = &v11[16 * v81];
    *(v84 + 4) = v82;
    *(v84 + 5) = v83;
    v117 = v11;
    sub_10002D520(v43);
    v11 = v117;
    v40 = *(v117 + 2);
    if (v40 <= 1)
    {
      goto LABEL_3;
    }
  }

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
  v11 = sub_10002D5AC(v11);
LABEL_92:
  v117 = v11;
  v95 = *(v11 + 2);
  if (v95 < 2)
  {
LABEL_100:
  }

  else
  {
    while (*v7)
    {
      v96 = *&v11[16 * v95];
      v97 = *&v11[16 * v95 + 24];
      sub_10002D0BC((*v7 + 16 * v96), (*v7 + 16 * *&v11[16 * v95 + 16]), (*v7 + 16 * v97), v10, a5);
      if (v6)
      {
        goto LABEL_100;
      }

      if (v97 < v96)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_10002D5AC(v11);
      }

      if (v95 - 2 >= *(v11 + 2))
      {
        goto LABEL_117;
      }

      v98 = &v11[16 * v95];
      *v98 = v96;
      *(v98 + 1) = v97;
      v117 = v11;
      sub_10002D520(v95 - 1);
      v11 = v117;
      v95 = *(v117 + 2);
      if (v95 <= 1)
      {
        goto LABEL_100;
      }
    }

LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
  }
}

void sub_10002FA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t *, uint64_t *, void **, uint64_t *))
{
  v6 = v5;
  if (a3 != a2)
  {
    v7 = *a4;
    v8 = *a4 + 16 * a3 - 16;
    v9 = a1 - a3;
LABEL_3:
    v20 = v8;
    v21 = a3;
    v10 = *(v7 + 16 * a3);
    v19 = v9;
    while (1)
    {
      v11 = *v8;
      v12 = *(v8 + 8);
      v26 = *(&v10 + 1);
      v27 = v10;
      v24 = v12;
      v25 = v11;
      v23 = v10;
      swift_unknownObjectRetain();
      v13 = v11;
      swift_unknownObjectRetain();
      v14 = v6;
      v15 = a5(&v27, &v26, &v25, &v24);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      if (v14)
      {
        break;
      }

      if ((v15 & 1) == 0)
      {
        v6 = 0;
LABEL_11:
        a3 = v21 + 1;
        v8 = v20 + 16;
        v9 = v19 - 1;
        if (v21 + 1 != a2)
        {
          goto LABEL_3;
        }

        return;
      }

      if (!v7)
      {
        __break(1u);
        return;
      }

      v16 = *v8;
      v10 = *(v8 + 16);
      *v8 = v10;
      *(v8 + 16) = v16;
      v8 -= 16;
      v17 = __CFADD__(v9++, 1);
      v6 = 0;
      if (v17)
      {
        goto LABEL_11;
      }
    }
  }
}

void sub_10002FBE8(uint64_t *a1, uint64_t (*a2)(void **, uint64_t *, void **, uint64_t *))
{
  v4 = a1[1];
  v5 = sub_100060DEC(v4);
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      if (v4 <= 1)
      {
        v7 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100017538(&qword_100099FF0);
        v7 = sub_1000608FC();
        v7[2] = v4 / 2;
      }

      v9[0] = (v7 + 4);
      v9[1] = v4 / 2;
      v8 = v7;
      sub_10002F328(v9, v10, a1, v6, a2);
      v8[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_10002FA98(0, v4, 1, a1, a2);
  }
}

void sub_10002FD10(void **a1, uint64_t (*a2)(void **, uint64_t *, void **, uint64_t *))
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_10002C990(v4);
  }

  v5 = v4[2];
  v6[0] = (v4 + 4);
  v6[1] = v5;
  sub_10002FBE8(v6, a2);
  *a1 = v4;
}

uint64_t sub_10002FD98()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002FDD8()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10002FE3C()
{
  result = qword_10009A008;
  if (!qword_10009A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009A008);
  }

  return result;
}

uint64_t *sub_10002FE90(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void *sub_10002FEF4(unint64_t a1, char a2)
{
  LOBYTE(v5) = a2;
  v6 = a1;
  if (a1 >> 62)
  {
    goto LABEL_115;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100060CFC())
  {
    v8 = _swiftEmptyArrayStorage;
    v106 = v6;
    v105 = v5;
    if (i)
    {
      v111[0] = _swiftEmptyArrayStorage;
      sub_100046838(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
LABEL_117:
        swift_once();
        goto LABEL_63;
      }

      v2 = 0;
      v8 = v111[0];
      v9 = v6 & 0xC000000000000001;
      do
      {
        if (v9)
        {
          v5 = sub_100060C0C();
        }

        else
        {
          v5 = *(v6 + 8 * v2 + 32);
          swift_unknownObjectRetain();
        }

        v10 = [v5 identifier];
        v111[0] = v8;
        v4 = v8[2];
        v11 = v8[3];
        if (v4 >= v11 >> 1)
        {
          v13 = v10;
          sub_100046838((v11 > 1), v4 + 1, 1);
          v10 = v13;
          v6 = v106;
          v8 = v111[0];
        }

        ++v2;
        v8[2] = v4 + 1;
        v12 = &v8[2 * v4];
        v12[4] = v10;
        v12[5] = v5;
      }

      while (i != v2);
    }

    v3 = sub_100047BE8(_swiftEmptyArrayStorage);
    v110 = v8[2];
    if (v110)
    {
      break;
    }

LABEL_44:
    v4 = v3 + 64;
    v45 = 1 << *(v3 + 32);
    v46 = -1;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    v6 = v46 & *(v3 + 64);
    v47 = (v45 + 63) >> 6;
    v2 = v3;

    v48 = 0;
    v110 = 0;
    v3 = _swiftEmptyArrayStorage;
    while (v6)
    {
LABEL_52:
      v50 = (v48 << 9) | (8 * __clz(__rbit64(v6)));
      v5 = *(*(v2 + 48) + v50);
      v51 = *(*(v2 + 56) + v50);
      if (v51 >> 62)
      {
        v52 = sub_100060CFC();
      }

      else
      {
        v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v6 &= v6 - 1;
      if (v52 > 1)
      {
        v108 = v5;

        v5 = v8;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_10005155C(0, *(v3 + 16) + 1, 1, v3);
        }

        v54 = *(v3 + 16);
        v53 = *(v3 + 24);
        if (v54 >= v53 >> 1)
        {
          v3 = sub_10005155C((v53 > 1), v54 + 1, 1, v3);
        }

        *(v3 + 16) = v54 + 1;
        v55 = v3 + 16 * v54;
        *(v55 + 32) = v108;
        *(v55 + 40) = v51;
        v8 = v5;
      }
    }

    while (1)
    {
      v49 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        __break(1u);
        goto LABEL_109;
      }

      if (v49 >= v47)
      {
        break;
      }

      v6 = *(v4 + 8 * v49);
      ++v48;
      if (v6)
      {
        v48 = v49;
        goto LABEL_52;
      }
    }

    if (!*(v3 + 16))
    {

      if (qword_100099400 == -1)
      {
        goto LABEL_69;
      }

      goto LABEL_119;
    }

    if (qword_100099400 != -1)
    {
      goto LABEL_117;
    }

LABEL_63:
    v56 = sub_10006074C();
    sub_10001762C(v56, qword_100099E80);

    v57 = sub_10006072C();
    LOBYTE(v5) = sub_100060A3C();

    if (os_log_type_enabled(v57, v5))
    {
      v107 = v5;
      v58 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v111[0] = v104;
      *v58 = 136315394;
      v59 = *(v3 + 16);
      v109 = v58;
      if (v59)
      {
        v112 = _swiftEmptyArrayStorage;
        sub_100060C5C();
        v60 = (v3 + 32);
        v61 = v59;
        do
        {
          v62 = *v60;
          v60 += 2;
          v63 = v62;
          sub_100060C3C();
          sub_100060C6C();
          sub_100060C7C();
          sub_100060C4C();
          --v61;
        }

        while (v61);
        v58 = v109;
      }

      type metadata accessor for MessageID(0);
      v68 = sub_1000608DC();
      v6 = v69;

      v70 = sub_100046270(v68, v6, v111);

      *(v58 + 4) = v70;
      *(v58 + 12) = 2080;
      if (v59)
      {
        v103 = v57;
        v112 = _swiftEmptyArrayStorage;
        sub_100046878(0, v59, 0);
        v71 = 40;
        v72 = v112;
        do
        {
          v73 = *(v3 + v71);
          v112 = v72;
          v75 = v72[2];
          v74 = v72[3];
          v6 = v75 + 1;

          if (v75 >= v74 >> 1)
          {
            sub_100046878((v74 > 1), v75 + 1, 1);
            v72 = v112;
          }

          v72[2] = v6;
          v72[v75 + 4] = v73;
          v71 += 16;
          --v59;
        }

        while (v59);

        v57 = v103;
        v58 = v109;
      }

      else
      {
      }

      sub_100017538(&qword_10009A020);
      v76 = sub_1000608DC();
      v78 = v77;

      v5 = sub_100046270(v76, v78, v111);

      *(v58 + 14) = v5;
      _os_log_impl(&_mh_execute_header, v57, v107, "CachedVoicemailManager.Cache.init(voicemails:) with duplicate keys: %s, voicemails: %s", v58, 0x16u);
      LOBYTE(v5) = v104;
      swift_arrayDestroy();
    }

    else
    {
    }

    v79 = 1 << *(v2 + 32);
    v80 = -1;
    if (v79 < 64)
    {
      v80 = ~(-1 << v79);
    }

    v3 = v80 & *(v2 + 64);
    v81 = (v79 + 63) >> 6;

    v82 = 0;
    v8 = _swiftEmptyArrayStorage;
    while (v3)
    {
LABEL_89:
      v84 = (v82 << 9) | (8 * __clz(__rbit64(v3)));
      v6 = *(*(v2 + 48) + v84);
      v85 = *(*(v2 + 56) + v84);
      if (v85 >> 62)
      {
        v86 = sub_100060CFC();
      }

      else
      {
        v86 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v3 &= v3 - 1;
      if (v86)
      {
        if ((v85 & 0xC000000000000001) != 0)
        {
          v92 = v6;

          v87 = sub_100060C0C();
        }

        else
        {
          if (!*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_121;
          }

          v87 = *(v85 + 32);
          v88 = v6;
          swift_unknownObjectRetain();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100051428(0, v8[2] + 1, 1, v8);
        }

        v90 = v8[2];
        v89 = v8[3];
        v5 = v90 + 1;
        if (v90 >= v89 >> 1)
        {
          v8 = sub_100051428((v89 > 1), v90 + 1, 1, v8);
        }

        v8[2] = v5;
        v91 = &v8[2 * v90];
        v91[4] = v6;
        v91[5] = v87;
      }
    }

    while (1)
    {
      v83 = v82 + 1;
      if (__OFADD__(v82, 1))
      {
        break;
      }

      if (v83 >= v81)
      {

        while (1)
        {
          sub_10002EEB8(v8);
          v94 = v93;
          v96 = v95;
          v98 = v97;

          type metadata accessor for CachedVoicemailManager.Cache();
          result = swift_allocObject();
          result[2] = v94;
          v100 = result + 2;
          result[3] = v96;
          result[4] = v98;
          if ((v105 & 1) == 0)
          {
            return result;
          }

          v101 = result;
          swift_beginAccess();
          v112 = sub_10002F1F0(v96, v98);
          sub_10002FD10(&v112, sub_100028474);
          if (v110)
          {
            goto LABEL_122;
          }

          v102 = v112[2];
          if (v102 == *(v98 + 16))
          {
            sub_10002CFDC((v112 + 4), v102, v100);

            swift_endAccess();
            return v101;
          }

          __break(1u);
LABEL_119:
          swift_once();
LABEL_69:
          v64 = sub_10006074C();
          sub_10001762C(v64, qword_100099E80);
          v65 = sub_10006072C();
          v66 = sub_100060A4C();
          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            *v67 = 0;
            _os_log_impl(&_mh_execute_header, v65, v66, "CachedVoicemailManager.Cache.init(voicemails:) without duplicate keys", v67, 2u);
          }
        }
      }

      v3 = *(v4 + 8 * v83);
      ++v82;
      if (v3)
      {
        v82 = v83;
        goto LABEL_89;
      }
    }

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
    ;
  }

  v14 = 0;
  v15 = v8 + 5;
  while (1)
  {
    if (v14 >= v8[2])
    {
LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

    v4 = *v15;
    v17 = *(v3 + 16);
    v5 = *(v15 - 1);
    swift_unknownObjectRetain_n();
    v18 = v5;
    v6 = v18;
    if (v17)
    {
      v19 = sub_100046F54(v18);
      if (v20)
      {
        v5 = *(*(v3 + 56) + 8 * v19);
        v111[0] = v5;
        swift_unknownObjectRetain();

        sub_1000608AC();
        v2 = v3;
        if (*((v111[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v111[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v5 = *((v111[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1000608EC();
        }

        sub_10006090C();
        v3 = v111[0];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v112 = v2;
        v22 = sub_100046F54(v6);
        v24 = *(v2 + 16);
        v25 = (v23 & 1) == 0;
        v26 = __OFADD__(v24, v25);
        v27 = v24 + v25;
        if (v26)
        {
          goto LABEL_113;
        }

        LOBYTE(v5) = v23;
        if (*(v2 + 24) >= v27)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v42 = v22;
            sub_10002C640();
            v22 = v42;
            v40 = v112;
            if (v5)
            {
              goto LABEL_37;
            }

            goto LABEL_41;
          }
        }

        else
        {
          sub_10002C3D0(v27, isUniquelyReferenced_nonNull_native);
          v22 = sub_100046F54(v6);
          if ((v5 & 1) != (v28 & 1))
          {
            goto LABEL_121;
          }
        }

        v40 = v112;
        if (v5)
        {
LABEL_37:
          v41 = v40[7];
          v5 = *(v41 + 8 * v22);
          *(v41 + 8 * v22) = v3;
          swift_unknownObjectRelease();

          v3 = v40;
LABEL_43:
          swift_unknownObjectRelease();
          goto LABEL_16;
        }

LABEL_41:
        v40[(v22 >> 6) + 8] |= 1 << v22;
        *(v40[6] + 8 * v22) = v6;
        *(v40[7] + 8 * v22) = v3;
        v43 = v40[2];
        v26 = __OFADD__(v43, 1);
        v44 = v43 + 1;
        if (v26)
        {
          goto LABEL_114;
        }

        v3 = v40;
        v40[2] = v44;

        swift_unknownObjectRelease();
        goto LABEL_43;
      }
    }

    v2 = v8;
    sub_100017538(&qword_100099B38);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_100079AA0;
    *(v29 + 32) = v4;
    v30 = v3;
    v3 = swift_isUniquelyReferenced_nonNull_native();
    v111[0] = v30;
    v32 = sub_100046F54(v6);
    v33 = *(v30 + 16);
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      goto LABEL_111;
    }

    LOBYTE(v5) = v31;
    if (*(v30 + 24) < v35)
    {
      break;
    }

    if (v3)
    {
      v3 = v111[0];
      if ((v31 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      sub_10002C640();
      v3 = v111[0];
      if ((v5 & 1) == 0)
      {
LABEL_33:
        *(v3 + 8 * (v32 >> 6) + 64) |= 1 << v32;
        *(*(v3 + 48) + 8 * v32) = v6;
        *(*(v3 + 56) + 8 * v32) = v29;
        v38 = *(v3 + 16);
        v26 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v26)
        {
          goto LABEL_112;
        }

        *(v3 + 16) = v39;
        swift_unknownObjectRelease();

        goto LABEL_15;
      }
    }

LABEL_14:
    v16 = *(v3 + 56);
    v5 = *(v16 + 8 * v32);
    *(v16 + 8 * v32) = v29;
    swift_unknownObjectRelease();

LABEL_15:
    v8 = v2;
LABEL_16:
    ++v14;
    v15 += 2;
    if (v110 == v14)
    {
      goto LABEL_44;
    }
  }

  sub_10002C3D0(v35, v3);
  v36 = sub_100046F54(v6);
  if ((v5 & 1) == (v37 & 1))
  {
    v32 = v36;
    v3 = v111[0];
    if ((v5 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_14;
  }

LABEL_121:
  type metadata accessor for MessageID(0);
  sub_100060E4C();
  __break(1u);
LABEL_122:

  __break(1u);
  return result;
}

void sub_100030B40(unint64_t a1, uint64_t a2, void *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100060CFC())
  {
    v5 = 0;
    v24 = i;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_100060C0C();
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v6 = *(a1 + 32 + 8 * v5);
      }

      v7 = v6;
      if (__OFADD__(v5++, 1))
      {
        break;
      }

      swift_beginAccess();
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
      v11 = v9 + 32;
      v12 = *(v9 + 16);
      if (v10)
      {

        v13 = sub_100046E2C(v7, v11, v12, (v10 + 16));
        v15 = v14;
        v17 = v16;

        if ((v15 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      else if (v12)
      {
        type metadata accessor for MessageID(0);
        v13 = 0;
        while (1)
        {
          v18 = *(v11 + 8 * v13);
          v19 = sub_100060ADC();

          if (v19)
          {
            break;
          }

          if (v12 == ++v13)
          {
            goto LABEL_4;
          }
        }

        v17 = 0;
LABEL_19:
        sub_10002C7A4(v13, v17);

        sub_10002C904(v13);
        swift_endAccess();
        swift_unknownObjectRelease();
        v21 = v7;
        sub_1000608AC();
        if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1000608EC();
        }

        sub_10006090C();
        goto LABEL_5;
      }

LABEL_4:
      swift_endAccess();
LABEL_5:

      if (v5 == v24)
      {
        return;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }
}

uint64_t sub_100030D74(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    type metadata accessor for MessageID(0);
    sub_100030EDC(&qword_10009A018, type metadata accessor for MessageID);
    result = sub_100060A0C();
    v9 = result;
    if (i)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_100060C0C();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_10002D6C4(&v8, v6);

      if (v7 == v4)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    sub_100060CFC();
  }

  v5 = result;
  v4 = sub_100060CFC();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100030EDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100030F24()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100030F5C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100030F9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000183D4;

  return sub_100029BA8(a1, v4, v5, v6);
}

uint64_t sub_100031050()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100031098()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001BE64;

  return sub_10002ADA8(v2, v3, v4);
}

uint64_t sub_100031150()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001BE64;

  return sub_10005E0F8(v2, v3, v4);
}

uint64_t sub_100031210()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100031250()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001BE64;

  return sub_10002A4C4(v2, v3);
}

uint64_t sub_1000312FC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003133C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001BE64;

  return sub_10005E1E0(a1, v4, v5, v6);
}

uint64_t sub_100031408(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100031420(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100031474(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1000314D0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_100031510(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_100017538(&qword_1000998B8);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000315AC, 0, 0);
}

uint64_t sub_1000315AC()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension26VoicemailDelegateDecorator_onUpdate);
  if (qword_1000993B0 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v3 = qword_10009BE50;
  v4 = sub_10006036C();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v8 = (v1 + *v1);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_100033A04;
  v6 = v0[3];

  return v8(v3, v6);
}

uint64_t sub_10003175C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_100017538(&qword_1000998B8);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000317F8, 0, 0);
}

uint64_t sub_1000317F8()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension26VoicemailDelegateDecorator_onUpdate);
  if (qword_1000993B8 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v3 = qword_10009BE58;
  v4 = sub_10006036C();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v8 = (v1 + *v1);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_100033A04;
  v6 = v0[3];

  return v8(v3, v6);
}

void sub_1000319A8(char *a1, uint64_t a2, const char *a3)
{
  v4 = &a1[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension26VoicemailDelegateDecorator_lastTask];
  v6 = a1;
  os_unfair_lock_lock(v4);
  sub_100032FA0(v4 + 1, v6, v5, a3);
  os_unfair_lock_unlock(v4);
}

uint64_t sub_100031A3C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_100017538(&qword_1000998B8);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100031AD8, 0, 0);
}

uint64_t sub_100031AD8()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension26VoicemailDelegateDecorator_onUpdate);
  if (qword_1000993C0 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v3 = qword_10009BE60;
  v4 = sub_10006036C();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v8 = (v1 + *v1);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_100033A04;
  v6 = v0[3];

  return v8(v3, v6);
}

uint64_t sub_100031C88(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_100017538(&qword_1000998B8);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100031D24, 0, 0);
}

uint64_t sub_100031D24()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension26VoicemailDelegateDecorator_onUpdate);
  if (qword_1000993C8 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v3 = qword_10009BE68;
  v4 = sub_10006036C();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v8 = (v1 + *v1);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_100033A04;
  v6 = v0[3];

  return v8(v3, v6);
}

uint64_t sub_100031ED4(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_100017538(&qword_1000998B8);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100031F70, 0, 0);
}

uint64_t sub_100031F70()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension26VoicemailDelegateDecorator_onUpdate);
  if (qword_1000993D0 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v3 = qword_10009BE70;
  v4 = sub_10006036C();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v8 = (v1 + *v1);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_100033A04;
  v6 = v0[3];

  return v8(v3, v6);
}

uint64_t sub_100032120(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_100017538(&qword_1000998B8);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000321BC, 0, 0);
}

uint64_t sub_1000321BC()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension26VoicemailDelegateDecorator_onUpdate);
  if (qword_1000993D8 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v3 = qword_10009BE78;
  v4 = sub_10006036C();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v8 = (v1 + *v1);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_100033A04;
  v6 = v0[3];

  return v8(v3, v6);
}

uint64_t sub_10003236C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_100017538(&qword_1000998B8);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100032408, 0, 0);
}

uint64_t sub_100032408()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension26VoicemailDelegateDecorator_onUpdate);
  if (qword_1000993E0 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v3 = qword_10009BE80;
  v4 = sub_10006036C();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v8 = (v1 + *v1);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_100032590;
  v6 = v0[3];

  return v8(v3, v6);
}

uint64_t sub_100032590()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  sub_100020850(v1, &qword_1000998B8);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000326E0(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = sub_10006036C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);

  v9 = sub_10006072C();
  v10 = sub_100060A4C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v18 = a1;
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "VoicemailDelegateDecorator: received greetingDidChange", v11, 2u);
    a1 = v18;
  }

  (*(v7 + 16))(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  (*(v7 + 32))(v13 + v12, &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v14 = a2;
  v15 = sub_10006037C();

  *a1 = v15;
  return result;
}

uint64_t sub_1000328E0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_100017538(&qword_1000998B8);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_10003297C, 0, 0);
}

uint64_t sub_10003297C()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension26VoicemailDelegateDecorator_onUpdate);
  if (qword_1000993E8 != -1)
  {
    swift_once();
  }

  v3 = v0[3];
  v2 = v0[4];
  v4 = qword_10009BE88;
  v5 = sub_10006036C();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v2, v3, v5);
  (*(v6 + 56))(v2, 0, 1, v5);
  v10 = (v1 + *v1);
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_100032B44;
  v8 = v0[4];

  return v10(v4, v8);
}

uint64_t sub_100032B44()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  sub_100020850(v1, &qword_1000998B8);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t type metadata accessor for VoicemailDelegateDecorator()
{
  result = qword_10009A070;
  if (!qword_10009A070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100032EB8()
{
  result = sub_10006074C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_100032F70()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100017538(&unk_10009A080);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_100032FA0(uint64_t *a1, void *a2, uint64_t a3, const char *a4)
{

  v7 = sub_10006072C();
  v8 = sub_100060A4C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a4, v9, 2u);
  }

  *(swift_allocObject() + 16) = a2;
  v10 = a2;
  v11 = sub_10006037C();

  *a1 = v11;
  return result;
}

uint64_t sub_1000330B8(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_100017538(&qword_1000998B8);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100033154, 0, 0);
}

uint64_t sub_100033154()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension26VoicemailDelegateDecorator_onUpdate);
  if (qword_1000993F0 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v3 = qword_10009BE90;
  v4 = sub_10006036C();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v8 = (v1 + *v1);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_100033A04;
  v6 = v0[3];

  return v8(v3, v6);
}

uint64_t sub_100033374()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000333AC()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001BE64;

  return sub_1000330B8(v2);
}

uint64_t sub_100033440()
{
  v1 = sub_10006036C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100033504()
{
  v2 = *(sub_10006036C() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001BE64;

  return sub_1000328E0(v4, v0 + v3);
}

uint64_t sub_1000335DC()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000183D4;

  return sub_10003236C(v2);
}

uint64_t sub_100033670()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001BE64;

  return sub_100032120(v2);
}

uint64_t sub_100033704()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001BE64;

  return sub_100031ED4(v2);
}

uint64_t sub_100033798()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001BE64;

  return sub_100031C88(v2);
}

uint64_t sub_10003382C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001BE64;

  return sub_100031A3C(v2);
}

uint64_t sub_1000338C0()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001BE64;

  return sub_10003175C(v2);
}

uint64_t sub_100033954()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001BE64;

  return sub_100031510(v2);
}

uint64_t sub_100033A08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  if (v5)
  {
    v6 = a1[1];
    *a3 = v5;
    a3[1] = v6;
    return swift_unknownObjectRetain();
  }

  else
  {
    v9 = sub_10006072C();
    v10 = sub_100060A4C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "VoicemailAccountManagerDecorator: Creating VMD", v11, 2u);
    }

    v12 = *(a2 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_vmdFactory);
    v13 = sub_100033B9C();
    v14 = v12();
    v16 = v15;

    v17 = sub_10006072C();
    v18 = sub_100060A4C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "VoicemailAccountManagerDecorator: Created VMD", v19, 2u);
    }

    *a1 = v14;
    a1[1] = v16;
    *a3 = v14;
    a3[1] = v16;
    return swift_unknownObjectRetain();
  }
}

id sub_100033B9C()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = type metadata accessor for VoicemailDelegateDecorator();
  v3 = objc_allocWithZone(v2);
  v4 = OBJC_IVAR____TtC37VoicemailMessageNotificationExtension26VoicemailDelegateDecorator_queue;
  sub_1000603AC();
  v5 = v0;
  *&v3[v4] = sub_10006039C();
  v6 = &v3[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension26VoicemailDelegateDecorator_lastTask];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = OBJC_IVAR____TtC37VoicemailMessageNotificationExtension26VoicemailDelegateDecorator_logger;
  if (qword_100099408 != -1)
  {
    swift_once();
  }

  v8 = sub_10006074C();
  v9 = sub_10001762C(v8, qword_10009BED0);
  (*(*(v8 - 8) + 16))(&v3[v7], v9, v8);
  v10 = &v3[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension26VoicemailDelegateDecorator_onUpdate];
  *v10 = &unk_100079FF0;
  *(v10 + 1) = v1;
  v21.receiver = v3;
  v21.super_class = v2;
  v11 = objc_msgSendSuper2(&v21, "init");
  v12 = &v5[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_cancellables];
  os_unfair_lock_lock(&v5[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_cancellables]);
  v20 = v2;
  *&v19 = v11;
  v13 = *(v12 + 1);
  v14 = v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v12 + 1) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_100051318(0, *(v13 + 2) + 1, 1, v13);
    *(v12 + 1) = v13;
  }

  v17 = *(v13 + 2);
  v16 = *(v13 + 3);
  if (v17 >= v16 >> 1)
  {
    v13 = sub_100051318((v16 > 1), v17 + 1, 1, v13);
    *(v12 + 1) = v13;
  }

  *(v13 + 2) = v17 + 1;
  sub_10001BD04(&v19, &v13[32 * v17 + 32]);
  os_unfair_lock_unlock(v12);
  return v14;
}

uint64_t sub_100033DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = sub_100017538(&qword_1000998B0);
  v3[6] = swift_task_alloc();
  v3[7] = sub_100017538(&qword_1000998B8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_100033EAC, 0, 0);
}

uint64_t sub_100033EAC()
{
  v21 = v0;
  v1 = v0[2];
  sub_10001BD14(v0[3], v0[9]);
  v2 = v1;
  v3 = sub_10006072C();
  v4 = sub_100060A4C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[9];
  if (v5)
  {
    v7 = v0[8];
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2080;
    sub_10001BD14(v6, v7);
    v12 = v8;
    v13 = sub_10006082C();
    v15 = v14;
    sub_100020850(v6, &qword_1000998B8);
    v16 = sub_100046270(v13, v15, &v20);

    *(v9 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "VoicemailAccountManagerDecorator: processing update %@, uuid: %s", v9, 0x16u);
    sub_100020850(v10, &unk_10009A710);

    sub_100018230(v11);
  }

  else
  {

    sub_100020850(v6, &qword_1000998B8);
  }

  v0[10] = OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_updatesPublisher;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10001B6F0();
  v18 = sub_10006091C();

  return _swift_task_switch(sub_100034104, v18, v17);
}

uint64_t sub_100034130()
{
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(v0[5] + 48);
  *v1 = v3;
  sub_10001BD14(v2, v1 + v4);
  v5 = v3;
  sub_10006077C();
  sub_100020850(v1, &qword_1000998B0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100034264()
{
  v1 = &v0[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd];
  os_unfair_lock_lock(&v0[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd]);
  sub_100033A08(v1 + 1, v0, &v16);
  os_unfair_lock_unlock(v1);
  v2 = *(&v16 + 1);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 40))(ObjectType, v2);
  swift_unknownObjectRelease();
  if (qword_100099408 != -1)
  {
    swift_once();
  }

  v5 = sub_10006074C();
  sub_10001762C(v5, qword_10009BED0);
  v6 = v0;
  v7 = sub_10006072C();
  v8 = sub_100060A4C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315394;
    os_unfair_lock_lock(v1);
    sub_100033A08(v1 + 1, v6, &v16);
    os_unfair_lock_unlock(v1);
    sub_100017538(&qword_1000998C0);
    v11 = sub_10006083C();
    v13 = sub_100046270(v11, v12, &v15);

    *(v9 + 4) = v13;
    *(v9 + 12) = 1024;
    *(v9 + 14) = v4 & 1;
    _os_log_impl(&_mh_execute_header, v7, v8, "VMD(%s) online: %{BOOL}d", v9, 0x12u);
    sub_100018230(v10);
  }

  return v4 & 1;
}

uint64_t sub_1000344B8(const char *a1)
{
  v3 = &v1[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd];
  os_unfair_lock_lock(&v1[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd]);
  sub_100033A08(v3 + 1, v1, &v18);
  os_unfair_lock_unlock(v3);
  v4 = *(&v18 + 1);
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 32))(ObjectType, v4);
  swift_unknownObjectRelease();
  if (qword_100099408 != -1)
  {
    swift_once();
  }

  v7 = sub_10006074C();
  sub_10001762C(v7, qword_10009BED0);
  v8 = v1;
  v9 = sub_10006072C();
  v10 = sub_100060A4C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315394;
    os_unfair_lock_lock(v3);
    sub_100033A08(v3 + 1, v8, &v18);
    os_unfair_lock_unlock(v3);
    sub_100017538(&qword_1000998C0);
    v13 = sub_10006083C();
    v15 = sub_100046270(v13, v14, &v17);

    *(v11 + 4) = v15;
    *(v11 + 12) = 1024;
    *(v11 + 14) = v6 & 1;
    _os_log_impl(&_mh_execute_header, v9, v10, a1, v11, 0x12u);
    sub_100018230(v12);
  }

  return v6 & 1;
}

uint64_t sub_10003470C()
{
  v1 = &v0[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd];
  os_unfair_lock_lock(&v0[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd]);
  sub_100033A08(v1 + 1, v0, &v16);
  os_unfair_lock_unlock(v1);
  v2 = *(&v16 + 1);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 56))(ObjectType, v2);
  swift_unknownObjectRelease();
  if (qword_100099408 != -1)
  {
    swift_once();
  }

  v5 = sub_10006074C();
  sub_10001762C(v5, qword_10009BED0);
  v6 = v0;
  v7 = sub_10006072C();
  v8 = sub_100060A4C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315394;
    os_unfair_lock_lock(v1);
    sub_100033A08(v1 + 1, v6, &v16);
    os_unfair_lock_unlock(v1);
    sub_100017538(&qword_1000998C0);
    v11 = sub_10006083C();
    v13 = sub_100046270(v11, v12, &v15);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2048;
    *(v9 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v7, v8, "VMD(%s) storageUsage: %lu", v9, 0x16u);
    sub_100018230(v10);
  }

  return v4;
}

uint64_t sub_100034954()
{
  v1 = &v0[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd];
  os_unfair_lock_lock(&v0[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd]);
  sub_100033A08(v1 + 1, v0, &v17);
  os_unfair_lock_unlock(v1);
  v2 = *(&v17 + 1);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 64))(ObjectType, v2);
  swift_unknownObjectRelease();
  if (v4 >> 62)
  {
    v5 = sub_100060CFC();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (qword_100099408 != -1)
  {
    swift_once();
  }

  v6 = sub_10006074C();
  sub_10001762C(v6, qword_10009BED0);
  v7 = v0;
  v8 = sub_10006072C();
  v9 = sub_100060A4C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315394;
    os_unfair_lock_lock(v1);
    sub_100033A08(v1 + 1, v7, &v17);
    os_unfair_lock_unlock(v1);
    sub_100017538(&qword_1000998C0);
    v12 = sub_10006083C();
    v14 = sub_100046270(v12, v13, &v16);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v5;
    _os_log_impl(&_mh_execute_header, v8, v9, "VMD(%s) estimatedAccountCount: %ld", v10, 0x16u);
    sub_100018230(v11);
  }

  return v5;
}

void *sub_100034C08()
{
  v66 = sub_10006036C();
  v1 = *(v66 - 8);
  v2 = __chkstk_darwin(v66);
  v65 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v64 = &v55 - v5;
  v6 = __chkstk_darwin(v4);
  v63 = &v55 - v7;
  __chkstk_darwin(v6);
  v62 = &v55 - v8;
  v9 = v0 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd;
  os_unfair_lock_lock((v0 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd));
  v67 = v0;
  v10 = 0;
  sub_100033A08((v9 + 8), v0, &v75);
  v61 = v9;
  os_unfair_lock_unlock(v9);
  v11 = v76;
  ObjectType = swift_getObjectType();
  v13 = (*(v11 + 64))(ObjectType, v11);
  swift_unknownObjectRelease();
  v14 = v13;
  if (v13 >> 62)
  {
    goto LABEL_19;
  }

  v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v15)
  {
    while (1)
    {
      v16 = v14;
      v74 = _swiftEmptyArrayStorage;
      result = sub_100060C5C();
      if (v15 < 0)
      {
        break;
      }

      v14 = 0;
      v18 = v16;
      v60 = v16 & 0xC000000000000001;
      v55 = v16 & 0xFFFFFFFFFFFFFF8;
      v57 = v1 + 8;
      v56 = (v1 + 32);
      v58 = v16;
      v59 = v15;
      v19 = v61;
      v20 = (v1 + 8);
      while (!__OFADD__(v14, 1))
      {
        v71 = v14 + 1;
        v72 = v14;
        if (v60)
        {
          v21 = sub_100060C0C();
        }

        else
        {
          if (v14 >= *(v55 + 16))
          {
            goto LABEL_18;
          }

          v21 = *(v18 + 8 * v14 + 32);
        }

        v22 = v21;
        v23 = [v21 UUID];
        v24 = v62;
        sub_10006035C();

        os_unfair_lock_lock(v19);
        v25 = v67;
        sub_100033A08((v19 + 8), v67, &v75);
        os_unfair_lock_unlock(v19);
        v26 = v76;
        v27 = swift_getObjectType();
        v69 = (*(v26 + 88))(v24, v27, v26);
        swift_unknownObjectRelease();
        v28 = *v20;
        v29 = v66;
        (*v20)(v24, v66);
        v30 = [v22 UUID];
        v31 = v63;
        sub_10006035C();

        os_unfair_lock_lock(v19);
        sub_100033A08((v19 + 8), v25, &v75);
        os_unfair_lock_unlock(v19);
        v32 = v76;
        v33 = swift_getObjectType();
        v68 = (*(v32 + 96))(v31, v33, v32);
        swift_unknownObjectRelease();
        v28(v31, v29);
        v34 = [v22 UUID];
        v35 = v64;
        sub_10006035C();

        os_unfair_lock_lock(v19);
        sub_100033A08((v19 + 8), v25, &v75);
        v70 = v10;
        os_unfair_lock_unlock(v19);
        v36 = v76;
        v37 = swift_getObjectType();
        v38 = (*(v36 + 104))(v35, v37, v36);
        swift_unknownObjectRelease();
        v28(v35, v29);
        v39 = type metadata accessor for VoicemailAccount();
        v40 = objc_allocWithZone(v39);
        v41 = [v22 UUID];
        v42 = v65;
        sub_10006035C();

        (*v56)(&v40[OBJC_IVAR___MPVoicemailAccount_uuid], v42, v29);
        v43 = [v22 accountDescription];
        if (v43)
        {
          v44 = v43;
          v45 = sub_10006081C();
          v47 = v46;
        }

        else
        {
          v45 = 0;
          v47 = 0;
        }

        v48 = v59;
        v49 = v71;
        v50 = &v40[OBJC_IVAR___MPVoicemailAccount_accountDescription];
        *v50 = v45;
        v50[1] = v47;
        v40[OBJC_IVAR___MPVoicemailAccount_callVoicemailSupported] = v69 & 1;
        v40[OBJC_IVAR___MPVoicemailAccount_subscribed] = v68 & 1;
        v40[OBJC_IVAR___MPVoicemailAccount_greetingChangeSupported] = v38 & 1;
        v51 = [v22 isProvisioned];
        v40[OBJC_IVAR___MPVoicemailAccount_provisioned] = v51;
        v52 = [v22 handle];
        v53 = v52;
        if (v52)
        {
        }

        v40[OBJC_IVAR___MPVoicemailAccount_hasHandle] = v53 != 0;
        v73.receiver = v40;
        v73.super_class = v39;
        v1 = objc_msgSendSuper2(&v73, "init");

        sub_100060C3C();
        sub_100060C6C();
        sub_100060C7C();
        sub_100060C4C();
        v14 = v72 + 1;
        v18 = v58;
        v10 = v70;
        if (v49 == v48)
        {

          return v74;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      v54 = v14;
      v15 = sub_100060CFC();
      v14 = v54;
      if (!v15)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:

    return _swiftEmptyArrayStorage;
  }

  return result;
}

id sub_100035380(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = &v2[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator__vmd];
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  v8 = OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_logger;
  if (qword_100099408 != -1)
  {
    swift_once();
  }

  v9 = sub_10006074C();
  v10 = sub_10001762C(v9, qword_10009BED0);
  (*(*(v9 - 8) + 16))(&v3[v8], v10, v9);
  v11 = OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_updatesPublisher;
  sub_100017538(&qword_1000998A0);
  swift_allocObject();
  *&v3[v11] = sub_10006078C();
  v12 = &v3[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_cancellables];
  *v12 = 0;
  *(v12 + 1) = &_swiftEmptyArrayStorage;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = &v3[OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_vmdFactory];
  *v14 = sub_1000371B4;
  v14[1] = v13;
  v16.receiver = v3;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, "init");
}

uint64_t sub_1000363C4(uint64_t a1, uint64_t a2)
{
  v5 = sub_10006074C();
  v23 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100017538(&unk_1000995C0);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = sub_10006099C();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  (*(v6 + 16))(v8, v2 + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_logger, v5);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v15 = sub_10001B6F0();
  v16 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v17 = (v7 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 2) = inited;
  *(v18 + 3) = v15;
  *(v18 + 4) = v2;
  (*(v6 + 32))(&v18[v16], v8, v23);
  *&v18[v17] = v12;
  v19 = v2;

  sub_100037848(0, 0, v11, &unk_100079FE0, v18);
  sub_10006075C();
  swift_allocObject();
  v20 = sub_10006076C();

  return v20;
}

uint64_t sub_100036650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a1;
  v6[4] = a4;
  v7 = sub_10006074C();
  v6[7] = v7;
  v8 = *(v7 - 8);
  v6[8] = v8;
  v6[9] = *(v8 + 64);
  v6[10] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10001B6F0();
  v10 = sub_10006091C();

  return _swift_task_switch(sub_100036750, v10, v9);
}

uint64_t sub_100036750()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v13 = v0[3];
  v0[2] = *(v0[4] + OBJC_IVAR___MPVoicemailAccountManagerWithDelegateDecorator_updatesPublisher);
  (*(v4 + 16))(v1, v5, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = (v2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + v7, v1, v3);
  *(v9 + v8) = v6;

  sub_100017538(&qword_1000998A0);
  sub_10001B89C();
  v10 = sub_10006079C();

  *v13 = v10;

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000368D0(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10006072C();
  v6 = sub_100060A4C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "VoicemailAccountManagerDecorator: processing listener.", v7, 2u);
  }

  swift_beginAccess();
  v8 = *(a3 + 16);
  v9 = *a1;
  v10 = *(sub_100017538(&qword_1000998B0) + 48);

  v8(v9, &a1[v10]);
}

uint64_t type metadata accessor for VoicemailAccountManagerWithDelegateDecorator()
{
  result = qword_10009A0E8;
  if (!qword_10009A0E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100036BBC()
{
  result = sub_10006074C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_100036C7C()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100017538(&qword_10009A0F8);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_100036CAC()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100017538(&qword_10009A100);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_100036CDC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100036D14()
{
  v1 = sub_10006074C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100036DF4(uint64_t a1)
{
  v4 = *(sub_10006074C() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000183D4;

  return sub_100036650(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_100036F24()
{
  v1 = sub_10006074C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100036FC0(char *a1)
{
  v3 = *(sub_10006074C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000368D0(a1, v1 + v4, v5);
}

uint64_t sub_10003705C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100037094(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001BE64;

  return sub_100033DC0(a1, a2, v6);
}

id sub_100037140()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t sub_10003717C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000371F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (qword_100099390 != -1)
  {
    swift_once();
  }

  v6 = *(qword_10009BDF0 + OBJC_IVAR___NotificationApplicationServices_voicemailManager + 8);
  ObjectType = swift_getObjectType();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(v6 + 16);
  v10 = *(v9 + 8);
  swift_unknownObjectRetain();

  v11 = v10(sub_100037530, v8, ObjectType, v9);
  swift_unknownObjectRelease();

  result = sub_10006075C();
  a3[3] = result;
  *a3 = v11;
  return result;
}

uint64_t sub_1000374B0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000374F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100037558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100017538(&unk_1000995C0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100046010(a3, v25 - v10);
  v12 = sub_10006099C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100020850(v11, &unk_1000995C0);
  }

  else
  {
    sub_10006098C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_10006091C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10006084C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100020850(a3, &unk_1000995C0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100020850(a3, &unk_1000995C0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100037848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100017538(&unk_1000995C0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100046010(a3, v25 - v10);
  v12 = sub_10006099C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100020850(v11, &unk_1000995C0);
  }

  else
  {
    sub_10006098C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_10006091C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25[0] = a3;
      v19 = sub_10006084C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_10006075C();

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100020850(v25[0], &unk_1000995C0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100020850(a3, &unk_1000995C0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  sub_10006075C();
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100037B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100017538(&unk_1000995C0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100046010(a3, v25 - v10);
  v12 = sub_10006099C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100020850(v11, &unk_1000995C0);
  }

  else
  {
    sub_10006098C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_10006091C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25[0] = a3;
      v19 = sub_10006084C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      type metadata accessor for CachedVoicemailManager.Cache();

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100020850(v25[0], &unk_1000995C0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100020850(a3, &unk_1000995C0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  type metadata accessor for CachedVoicemailManager.Cache();
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_100037E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3 + 32;
  v7 = *(a3 + 16);
  if (a2)
  {

    v9 = sub_100046E2C(a1, v6, v7, (a2 + 16));
    v11 = v10;

    if ((v11 & 1) == 0)
    {
      if ((v9 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_12:
        __break(1u);
        return;
      }

LABEL_4:
      if (v9 < *(a4 + 16))
      {
        swift_unknownObjectRetain();
        return;
      }

      goto LABEL_12;
    }
  }

  else if (v7)
  {
    type metadata accessor for MessageID(0);
    v9 = 0;
    while (1)
    {
      v12 = *(v6 + 8 * v9);
      v13 = sub_100060ADC();

      if (v13)
      {
        break;
      }

      if (v7 == ++v9)
      {
        return;
      }
    }

    goto LABEL_4;
  }
}

void sub_100037F2C(void **a1, uint64_t a2, void **a3)
{

  v6 = sub_10006072C();
  v7 = sub_100060A4C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock = a1;
    *v8 = 136315394;
    v20 = a2;

    v9 = sub_10006083C();
    v11 = sub_100046270(v9, v10, &v18);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    aBlock = a3;

    sub_100017538(&qword_10009A310);
    v12 = sub_10006083C();
    v14 = sub_100046270(v12, v13, &v18);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "VoiceMailAnalyticsLogger: logging core analytics for event of %s with dictionary %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v15 = sub_1000607EC();
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  v23 = sub_10004921C;
  v24 = v16;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_10003818C;
  v22 = &unk_10008B140;
  v17 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v17);
}

Class sub_10003818C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_100027E44(0, &qword_10009A318);
    v4.super.isa = sub_1000607CC().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

uint64_t sub_100038228@<X0>(uint64_t *a1@<X8>)
{
  v3 = swift_allocObject();
  sub_100017538(&qword_10009A378);
  v4 = sub_1000606CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10007A020;
  v9 = (v8 + v7);
  v10 = swift_allocObject();
  *(v10 + 16) = *(v1 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_providers);
  *v9 = v10;
  v11 = *(v5 + 104);
  v11(v9, enum case for MessageStoreQuery.providers(_:), v4);
  v12 = swift_allocObject();
  *(v12 + 16) = *(v1 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_messageTypes);
  *(v9 + v6) = v12;
  v11((v9 + v6), enum case for MessageStoreQuery.types(_:), v4);
  *(v3 + 16) = v8;
  *a1 = v3;
  v11(a1, enum case for MessageStoreQuery.and(_:), v4);
}

uint64_t sub_1000383F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_1000492F8(&qword_1000995D0, type metadata accessor for VoicemailActor);
  v6 = sub_10006091C();

  return _swift_task_switch(sub_1000384B8, v6, v5);
}

uint64_t sub_1000384B8()
{
  swift_unknownObjectWeakAssign();
  sub_10003BFFC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003852C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_1000492F8(&qword_1000995D0, type metadata accessor for VoicemailActor);
  v6 = sub_10006091C();

  return _swift_task_switch(sub_1000496F8, v6, v5);
}

uint64_t sub_1000385F4()
{
  v1 = OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_logger;
  v2 = sub_10006074C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100049244(v0 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_analyticsReporter);
  sub_1000492A0(*(v0 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_onVoicemailsChanged));
  sub_100018230(v0 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_messageStoreController);
}

id sub_1000386E0()
{
  ObjectType = swift_getObjectType();
  sub_1000184C8(&v0[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_messageStoreController], *&v0[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_messageStoreController + 24]);

  sub_10006065C();

  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10003890C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a1;
  v6[4] = a4;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_1000492F8(&qword_1000995D0, type metadata accessor for VoicemailActor);
  v8 = sub_10006091C();

  return _swift_task_switch(sub_1000389D8, v8, v7);
}

uint64_t sub_1000389D8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v0[2] = *(v0[4] + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_messagesChangedPublisher);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;

  sub_100017538(&unk_10009A6F0);
  sub_1000492B0(&qword_10009A2E0, &unk_10009A6F0);
  v5 = sub_10006079C();

  *v3 = v5;
  v6 = v0[1];

  return v6();
}

uint64_t sub_100038B14(uint64_t a1, unsigned __int8 a2)
{

  v4 = sub_10006072C();
  v5 = sub_100060A4C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v8 = sub_10001CE34(a1, a2);
    v10 = sub_100046270(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "FaceTimeVoicemailManager: Is notifying listeners of messageChanges: %s", v6, 0xCu);
    sub_100018230(v7);
  }

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  *(v12 + 32) = a2;

  sub_10006037C();
}

uint64_t sub_100038CE0(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 49) = a3;
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_1000492F8(&qword_1000995D0, type metadata accessor for VoicemailActor);
  v5 = sub_10006091C();

  return _swift_task_switch(sub_100038DAC, v5, v4);
}

uint64_t sub_100038DAC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_onVoicemailsChanged);
    if (v3)
    {
      v3();
    }

    v4 = *(v0 + 49);
    *(v0 + 40) = *(v0 + 64);
    *(v0 + 48) = v4;
    sub_10006077C();
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100038E74()
{
  v1[99] = v0;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_1000492F8(&qword_1000995D0, type metadata accessor for VoicemailActor);
  v3 = sub_10006091C();
  v1[100] = v3;
  v1[101] = v2;

  return _swift_task_switch(sub_100038F40, v3, v2);
}

uint64_t sub_100038F40()
{
  v0[102] = OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_logger;
  v1 = sub_10006072C();
  v2 = sub_100060A4C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Fetching Messages from FTMS", v3, 2u);
  }

  v4 = v0[99];

  v5 = swift_allocObject();
  v0[103] = v5;
  *(v5 + 16) = v4;
  v6 = v4;
  sub_100017538(&qword_10009A360);
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 2, v0 + 87, sub_100039094, v0 + 82);
}

uint64_t sub_100039094()
{
  v1 = v0[87];
  v0[104] = v1;

  v2 = swift_task_alloc();
  v0[105] = v2;
  v3 = sub_100017538(&qword_10009A368);
  v4 = sub_100017538(&qword_10009A370);
  *v2 = v0;
  v2[1] = sub_100039188;

  return Task.value.getter(v0 + 93, v1, v3, v4, &protocol self-conformance witness table for Error);
}

uint64_t sub_100039188()
{
  v2 = *v1;
  *(*v1 + 848) = v0;

  v3 = *(v2 + 808);
  v4 = *(v2 + 800);
  if (v0)
  {
    v5 = sub_1000395C4;
  }

  else
  {
    v5 = sub_1000392E0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000392E0()
{
  v13 = v0;
  v2 = *(v0 + 744);

  v3 = sub_10006072C();
  LOBYTE(v4) = sub_100060A4C();
  v5 = (v2 >> 62);
  if (os_log_type_enabled(v3, v4))
  {
    v1 = swift_slowAlloc();
    *v1 = 134349056;
    if (v5)
    {
      goto LABEL_25;
    }

    v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    *(v1 + 4) = v6;

    _os_log_impl(&_mh_execute_header, v3, v4, "Fetched %{public}ld message(s) from FTMS", v1, 0xCu);
  }

  else
  {
  }

  if (v5)
  {
    goto LABEL_19;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
LABEL_8:
    v12 = _swiftEmptyArrayStorage;
    v3 = &v12;
    sub_100060C5C();
    if (v4 < 0)
    {
      __break(1u);
LABEL_25:
      v6 = sub_100060CFC();
      goto LABEL_4;
    }

    v1 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = sub_100060C0C();
      }

      else
      {
        if ((v1 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_18:
          __break(1u);
LABEL_19:
          v4 = sub_100060CFC();
          if (!v4)
          {
            break;
          }

          goto LABEL_8;
        }

        if (v1 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(v2 + 8 * v1 + 32);
      }

      v8 = v7;
      ++v1;
      v9 = objc_allocWithZone(type metadata accessor for FTMessage());
      v5 = sub_100024EF0(v8);
      sub_100060C3C();
      sub_100060C6C();
      sub_100060C7C();
      sub_100060C4C();
      if (v4 == v1)
      {

        v10 = v12;
        goto LABEL_21;
      }
    }
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_21:
  *(v0 + 856) = v10;

  return _swift_asyncLet_finish(v0 + 16, v0 + 696, sub_100039540, v0 + 752);
}

uint64_t sub_10003955C()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 856);

  return v1(v2);
}

uint64_t sub_100039600()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100039664(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_100017538(&unk_1000995C0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_100039700, 0, 0);
}

uint64_t sub_100039700()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_10006095C();
  v4 = sub_10006099C();
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v2;
  v6 = v2;
  *v3 = sub_10004AF68(0, 0, v1, &unk_10007A470, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10003980C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  v4[5] = sub_1000605DC();
  v4[6] = swift_task_alloc();
  v5 = sub_10006069C();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  sub_1000606CC();
  v4[10] = swift_task_alloc();
  v6 = sub_1000606BC();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_100039984, 0, 0);
}

uint64_t sub_100039984()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v7 = *(v0 + 32);
  sub_100038228(*(v0 + 80));
  (*(v2 + 104))(v1, enum case for MessageStoreFetchRequest.QuerySearchType.unsorted(_:), v3);
  *(v0 + 16) = _swiftEmptyArrayStorage;
  sub_1000492F8(&qword_10009A340, &type metadata accessor for MessageFetchOptions);
  sub_100017538(&qword_10009A348);
  sub_1000492B0(&qword_10009A350, &qword_10009A348);
  sub_100060B2C();
  sub_1000606AC();
  sub_1000184C8((v7 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_messageStoreController), *(v7 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_messageStoreController + 24));
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *v4 = v0;
  v4[1] = sub_100039B70;
  v5 = *(v0 + 104);

  return MessageStoreController.getMessages(fetchRequest:)(v5);
}

uint64_t sub_100039B70(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = sub_100039E24;
  }

  else
  {
    v4 = sub_100039C84;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100039C84()
{

  v1 = sub_10006072C();
  v2 = sub_100060A4C();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[15];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    if (v4 >> 62)
    {
      v12 = v5;
      v6 = sub_100060CFC();
      v5 = v12;
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v5 + 4) = v6;
    v7 = v5;

    _os_log_impl(&_mh_execute_header, v1, v2, "Loading FTMessages gave us %{public}ld message(s).", v7, 0xCu);
  }

  else
  {
  }

  v8 = v0[15];
  v9 = v0[3];
  (*(v0[12] + 8))(v0[13], v0[11]);
  *v9 = v8;

  v10 = v0[1];

  return v10();
}

uint64_t sub_100039E24()
{
  (*(v0[12] + 8))(v0[13], v0[11]);
  swift_errorRetain();
  v1 = sub_10006072C();
  v2 = sub_100060A2C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error loading FTMessages %@", v3, 0xCu);
    sub_100020850(v4, &unk_10009A710);
  }

  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_100039FD0(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_1000606CC();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_10006036C();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = type metadata accessor for MessageID.Value(0);
  v2[18] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_1000492F8(&qword_1000995D0, type metadata accessor for VoicemailActor);
  v6 = sub_10006091C();
  v2[19] = v6;
  v2[20] = v5;

  return _swift_task_switch(sub_10003A180, v6, v5);
}

uint64_t sub_10003A180()
{
  v1 = *(v0[10] + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension22CachedVoicemailManager_state);
  v0[21] = v1;
  if (!(v1 >> 62))
  {

    v23 = swift_task_alloc();
    v0[22] = v23;
    v24 = type metadata accessor for CachedVoicemailManager.Cache();
    *v23 = v0;
    v23[1] = sub_10003A5A4;
    v25 = (v0 + 8);
    v26 = v1;

    return Task<>.value.getter(v25, v26, v24);
  }

  if (v1 >> 62 == 1)
  {
    v2 = v0[9];
    swift_beginAccess();
    v3 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v4 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v5 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);

    sub_100037E40(v2, v3, v4, v5);
    v7 = v6;

    if (v7)
    {

      v8 = v0[1];

      return v8(v7);
    }
  }

  sub_100020780(v0[9] + OBJC_IVAR___MPMessageID_value, v0[18]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = v0[18];
  if (EnumCaseMultiPayload != 1)
  {
    v27 = *v11;
    v28 = swift_allocObject();
    sub_100017538(&qword_10009A330);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_10007A030;
    if (!(v27 >> 31))
    {
      v30 = v0[12];
      v29 = v0[13];
      v31 = v0[11];
      *(v25 + 32) = v27;
      *(v28 + 16) = v25;
      *v29 = v28;
      (*(v30 + 104))(v29, enum case for MessageStoreQuery.voicemailID(_:), v31);
      v21 = swift_task_alloc();
      v0[25] = v21;
      *v21 = v0;
      v22 = sub_10003AC58;
      goto LABEL_14;
    }

    __break(1u);
    return Task<>.value.getter(v25, v26, v24);
  }

  v13 = v0[15];
  v12 = v0[16];
  v14 = v0[13];
  v15 = v0[14];
  v16 = v0[11];
  v17 = v0[12];
  (*(v13 + 32))(v12, v11, v15);
  v18 = swift_allocObject();
  sub_100017538(&qword_10009A2F0);
  v19 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10007A030;
  (*(v13 + 16))(v20 + v19, v12, v15);
  *(v18 + 16) = v20;
  *v14 = v18;
  (*(v17 + 104))(v14, enum case for MessageStoreQuery.recordUUID(_:), v16);
  v21 = swift_task_alloc();
  v0[23] = v21;
  *v21 = v0;
  v22 = sub_10003AA2C;
LABEL_14:
  v21[1] = v22;
  v32 = v0[13];

  return sub_10003AE6C(v32);
}

uint64_t sub_10003A5A4()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return _swift_task_switch(sub_10003A6C4, v3, v2);
}

uint64_t sub_10003A6C4()
{
  v1 = v0[8];
  v2 = v0[9];
  swift_beginAccess();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];

  sub_100037E40(v2, v3, v4, v5);
  v7 = v6;

  if (v7)
  {

    v8 = v0[1];

    return v8(v7);
  }

  else
  {
    sub_100020780(v0[9] + OBJC_IVAR___MPMessageID_value, v0[18]);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v11 = v0[18];
    if (EnumCaseMultiPayload == 1)
    {
      v13 = v0[15];
      v12 = v0[16];
      v14 = v0[13];
      v15 = v0[14];
      v16 = v0[11];
      v17 = v0[12];
      (*(v13 + 32))(v12, v11, v15);
      v18 = swift_allocObject();
      sub_100017538(&qword_10009A2F0);
      v19 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_10007A030;
      (*(v13 + 16))(v20 + v19, v12, v15);
      *(v18 + 16) = v20;
      *v14 = v18;
      (*(v17 + 104))(v14, enum case for MessageStoreQuery.recordUUID(_:), v16);
      v21 = swift_task_alloc();
      v0[23] = v21;
      *v21 = v0;
      v22 = sub_10003AA2C;
    }

    else
    {
      v23 = *v11;
      v24 = swift_allocObject();
      sub_100017538(&qword_10009A330);
      result = swift_allocObject();
      *(result + 16) = xmmword_10007A030;
      if (v23 >> 31)
      {
        __break(1u);
        return result;
      }

      v26 = v0[12];
      v25 = v0[13];
      v27 = v0[11];
      *(result + 32) = v23;
      *(v24 + 16) = result;
      *v25 = v24;
      (*(v26 + 104))(v25, enum case for MessageStoreQuery.voicemailID(_:), v27);
      v21 = swift_task_alloc();
      v0[25] = v21;
      *v21 = v0;
      v22 = sub_10003AC58;
    }

    v21[1] = v22;
    v28 = v0[13];

    return sub_10003AE6C(v28);
  }
}

uint64_t sub_10003AA2C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  *(*v1 + 192) = a1;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 160);
  v7 = *(v2 + 152);

  return _swift_task_switch(sub_10003ABB8, v7, v6);
}

uint64_t sub_10003ABB8()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[24];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_10003AC58(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  *(*v1 + 208) = a1;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 160);
  v7 = *(v2 + 152);

  return _swift_task_switch(sub_10003ADE4, v7, v6);
}

uint64_t sub_10003ADE4()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10003AE6C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_10006069C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_1000605DC();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_1000606CC();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v6 = sub_1000606BC();
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_1000492F8(&qword_1000995D0, type metadata accessor for VoicemailActor);
  v8 = sub_10006091C();
  v2[18] = v8;
  v2[19] = v7;

  return _swift_task_switch(sub_10003B0B0, v8, v7);
}

uint64_t sub_10003B0B0()
{
  v1 = v0[12];
  v2 = v0[7];
  v3 = v0[6];
  v9 = v0[5];
  v10 = v0[4];
  v4 = *(v1 + 16);
  v0[20] = v4;
  v0[21] = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v4();
  sub_100017538(&qword_10009A338);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10007A030;
  sub_1000605CC();
  v0[2] = v5;
  sub_1000492F8(&qword_10009A340, &type metadata accessor for MessageFetchOptions);
  sub_100017538(&qword_10009A348);
  sub_1000492B0(&qword_10009A350, &qword_10009A348);
  sub_100060B2C();
  (*(v3 + 104))(v2, enum case for MessageStoreFetchRequest.QuerySearchType.unsorted(_:), v9);
  sub_1000606AC();
  sub_1000184C8((v10 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_messageStoreController), *(v10 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_messageStoreController + 24));
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_10003B2FC;
  v7 = v0[17];

  return MessageStoreController.getMessages(fetchRequest:)(v7);
}

uint64_t sub_10003B2FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 184) = a1;
  *(v4 + 192) = v1;

  v5 = *(v3 + 152);
  v6 = *(v3 + 144);
  if (v1)
  {
    v7 = sub_10003B618;
  }

  else
  {
    v7 = sub_10003B440;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10003B440()
{
  v1 = v0[23];
  (*(v0[16] + 8))(v0[17], v0[15]);
  if (v1 >> 62)
  {
    result = sub_100060CFC();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    v7 = 0;
    goto LABEL_11;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = sub_100060C0C();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[23] + 32);
  }

  v4 = v0[4];

  v5 = objc_allocWithZone(type metadata accessor for FTMessage());
  v6 = v3;
  v7 = sub_100024EF0(v6);
  v8 = *(v4 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_messageTypes);
  v9 = sub_10006050C();
  if (sub_10003BCB0(v9, v8))
  {
    sub_100017538(&qword_100099B38);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100079AA0;
    *(v10 + 32) = v7;
    v11 = v7;
    sub_10003BD18(v10);
  }

LABEL_11:

  v12 = v0[1];

  return v12(v7);
}

uint64_t sub_10003B618()
{
  v22 = v0;
  v1 = v0[20];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[3];
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1(v2, v4, v3);
  swift_errorRetain();
  v5 = sub_10006072C();
  v6 = sub_100060A4C();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[12];
  v8 = v0[13];
  v10 = v0[11];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = v20;
    *v11 = 136446466;
    sub_1000492F8(&qword_10009A358, &type metadata accessor for MessageStoreQuery);
    v12 = sub_100060DFC();
    v14 = v13;
    (*(v9 + 8))(v8, v10);
    v15 = sub_100046270(v12, v14, &v21);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v16;
    *v19 = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "FaceTimeVoiceMailManager failed to retrieve message for query %{public}s because the message store threw an error %@", v11, 0x16u);
    sub_100020850(v19, &unk_10009A710);

    sub_100018230(v20);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v17 = v0[1];

  return v17(0);
}

uint64_t sub_10003BA60()
{
  result = sub_10006074C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10003BB28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_1000492F8(&qword_1000995D0, type metadata accessor for VoicemailActor);
  v5 = sub_10006091C();

  return _swift_task_switch(sub_10003BBF4, v5, v4);
}

uint64_t sub_10003BBF4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  v3 = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_10002AF30;
  v6 = *(v0 + 16);

  return sub_100039FD0(v6);
}

BOOL sub_10003BCB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 32;
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v3 += 2;
    v6 = sub_1000605EC();
  }

  while (v6 != sub_1000605EC());
  return v4 != 0;
}

uint64_t sub_10003BD18(unint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension22CachedVoicemailManager_state) >> 62;
  if (!v3)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    v10 = OBJC_IVAR____TtC37VoicemailMessageNotificationExtension22CachedVoicemailManager_deferredOperationsQueue;
    swift_beginAccess();
    v11 = *(v1 + v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_100051690(0, v11[2] + 1, 1, v11);
      *(v1 + v10) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_100051690((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    v15 = &v11[2 * v14];
    v15[4] = sub_10004923C;
    v15[5] = v9;
    *(v1 + v10) = v11;
    swift_endAccess();
    goto LABEL_16;
  }

  if (v3 != 1)
  {
LABEL_16:
    sub_10002FE3C();
    return swift_willThrowTypedImpl();
  }

  sub_1000285E4(a1, 1);

  if (a1 >> 62)
  {
    v4 = sub_100060CFC();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    result = sub_100060C5C();
    if (v4 < 0)
    {
      __break(1u);
      return result;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = 0;
      do
      {
        v7 = v6 + 1;
        v8 = [sub_100060C0C() identifier];
        swift_unknownObjectRelease();
        sub_100060C3C();
        sub_100060C6C();
        sub_100060C7C();
        sub_100060C4C();
        v6 = v7;
      }

      while (v4 != v7);
    }

    else
    {
      v16 = (a1 + 32);
      do
      {
        v17 = *v16++;
        v18 = [v17 identifier];
        sub_100060C3C();
        sub_100060C6C();
        sub_100060C7C();
        sub_100060C4C();
        --v4;
      }

      while (v4);
    }
  }

  sub_100038B14(_swiftEmptyArrayStorage, 1u);
}

void sub_10003BFFC()
{
  v1 = v0;
  v2 = sub_10006074C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  if (*(v0 + 24) >= 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;

      v7 = sub_10006072C();
      v8 = sub_100060A2C();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 134217984;
        *(v9 + 4) = *(v1 + 24);

        _os_log_impl(&_mh_execute_header, v7, v8, "Calling requires refetch on manager because %ld delegate calls were missed", v9, 0xCu);
      }

      else
      {
      }

      v10 = OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_logger;
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      (*(v3 + 16))(&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), &v6[v10], v2);
      v12 = (*(v3 + 80) + 24) & ~*(v3 + 80);
      v13 = swift_allocObject();
      *(v13 + 16) = v11;
      (*(v3 + 32))(v13 + v12, &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);

      sub_10006037C();
    }
  }
}

uint64_t sub_10003C25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_10006074C();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v5[6] = *(v7 + 64);
  v5[7] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_1000492F8(&qword_1000995D0, type metadata accessor for VoicemailActor);
  v9 = sub_10006091C();

  return _swift_task_switch(sub_10003C388, v9, v8);
}

void sub_10003C388()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = v0[6];
    v2 = v0[7];
    v4 = v0[4];
    v5 = v0[5];
    v6 = v0[3];
    v7 = OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_logger;
    v8 = Strong;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v5 + 16))(v2, &v8[v7], v4);
    v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v11 = (v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    (*(v5 + 32))(v12 + v10, v2, v4);
    *(v12 + v11) = v6;

    sub_10006037C();
  }

  else
  {
    v13 = sub_10006072C();
    v14 = sub_100060A2C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "MessageStoreDelegate called with nil manager", v15, 2u);
    }

    v16 = v0[2];

    v17 = *(v16 + 24);
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      __break(1u);
      return;
    }

    *(v16 + 24) = v19;
  }

  v20 = v0[1];

  v20();
}

uint64_t sub_10003C5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_10006074C();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v5[6] = *(v7 + 64);
  v5[7] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_1000492F8(&qword_1000995D0, type metadata accessor for VoicemailActor);
  v9 = sub_10006091C();

  return _swift_task_switch(sub_10003C724, v9, v8);
}

void sub_10003C724()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = v0[6];
    v2 = v0[7];
    v4 = v0[4];
    v5 = v0[5];
    v6 = v0[3];
    v7 = OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_logger;
    v8 = Strong;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v5 + 16))(v2, &v8[v7], v4);
    v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v11 = (v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    (*(v5 + 32))(v12 + v10, v2, v4);
    *(v12 + v11) = v6;

    sub_10006037C();
  }

  else
  {
    v13 = sub_10006072C();
    v14 = sub_100060A2C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "MessageStoreDelegate called with nil manager", v15, 2u);
    }

    v16 = v0[2];

    v17 = *(v16 + 24);
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      __break(1u);
      return;
    }

    *(v16 + 24) = v19;
  }

  v20 = v0[1];

  v20();
}

uint64_t sub_10003C994(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  v9 = sub_100017538(&unk_1000995C0);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  a4(0);
  v12 = sub_1000608CC();
  v13 = sub_10006099C();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v15 = sub_1000492F8(&qword_1000995D0, type metadata accessor for VoicemailActor);
  v16 = swift_allocObject();
  v16[2] = inited;
  v16[3] = v15;
  v16[4] = a1;
  v16[5] = v12;

  sub_100037558(0, 0, v11, a6, v16);
}

uint64_t sub_10003CB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_10006074C();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v5[6] = *(v7 + 64);
  v5[7] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_1000492F8(&qword_1000995D0, type metadata accessor for VoicemailActor);
  v9 = sub_10006091C();

  return _swift_task_switch(sub_10003CC44, v9, v8);
}

void sub_10003CC44()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = v0[6];
    v2 = v0[7];
    v4 = v0[4];
    v5 = v0[5];
    v6 = v0[3];
    v7 = OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_logger;
    v8 = Strong;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v5 + 16))(v2, &v8[v7], v4);
    v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v11 = (v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    (*(v5 + 32))(v12 + v10, v2, v4);
    *(v12 + v11) = v6;

    sub_10006037C();
  }

  else
  {
    v13 = sub_10006072C();
    v14 = sub_100060A2C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "MessageStoreDelegate called with nil manager", v15, 2u);
    }

    v16 = v0[2];

    v17 = *(v16 + 24);
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      __break(1u);
      return;
    }

    *(v16 + 24) = v19;
  }

  v20 = v0[1];

  v20();
}

uint64_t sub_10003CEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_10006074C();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v5[6] = *(v7 + 64);
  v5[7] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_1000492F8(&qword_1000995D0, type metadata accessor for VoicemailActor);
  v9 = sub_10006091C();

  return _swift_task_switch(sub_10003CFE0, v9, v8);
}

void sub_10003CFE0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = v0[6];
    v2 = v0[7];
    v4 = v0[4];
    v5 = v0[5];
    v6 = v0[3];
    v7 = OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_logger;
    v8 = Strong;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v5 + 16))(v2, &v8[v7], v4);
    v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v11 = (v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    (*(v5 + 32))(v12 + v10, v2, v4);
    *(v12 + v11) = v6;

    sub_10006037C();
  }

  else
  {
    v13 = sub_10006072C();
    v14 = sub_100060A2C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "MessageStoreDelegate called with nil manager", v15, 2u);
    }

    v16 = v0[2];

    v17 = *(v16 + 24);
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      __break(1u);
      return;
    }

    *(v16 + 24) = v19;
  }

  v20 = v0[1];

  v20();
}

uint64_t sub_10003D250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_10006074C();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v4[5] = *(v6 + 64);
  v4[6] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_1000492F8(&qword_1000995D0, type metadata accessor for VoicemailActor);
  v8 = sub_10006091C();

  return _swift_task_switch(sub_10003D37C, v8, v7);
}

void sub_10003D37C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = v0[6];
    v3 = v0[3];
    v4 = v0[4];
    v5 = OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_logger;
    v6 = Strong;
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v4 + 16))(v2, &v6[v5], v3);
    v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    (*(v4 + 32))(v9 + v8, v2, v3);

    sub_10006037C();
  }

  else
  {
    v10 = sub_10006072C();
    v11 = sub_100060A2C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "MessageStoreDelegate called with nil manager", v12, 2u);
    }

    v13 = v0[2];

    v14 = *(v13 + 24);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      __break(1u);
      return;
    }

    *(v13 + 24) = v16;
  }

  v17 = v0[1];

  v17();
}

uint64_t sub_10003D5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_10006074C();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v4[5] = *(v6 + 64);
  v4[6] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_1000492F8(&qword_1000995D0, type metadata accessor for VoicemailActor);
  v8 = sub_10006091C();

  return _swift_task_switch(sub_10003D6D8, v8, v7);
}

void sub_10003D6D8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = v0[6];
    v3 = v0[3];
    v4 = v0[4];
    v5 = OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_logger;
    v6 = Strong;
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v4 + 16))(v2, &v6[v5], v3);
    v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    (*(v4 + 32))(v9 + v8, v2, v3);

    sub_10006037C();
  }

  else
  {
    v10 = sub_10006072C();
    v11 = sub_100060A2C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "MessageStoreDelegate called with nil manager", v12, 2u);
    }

    v13 = v0[2];

    v14 = *(v13 + 24);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      __break(1u);
      return;
    }

    *(v13 + 24) = v16;
  }

  v17 = v0[1];

  v17();
}

uint64_t sub_10003D908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100017538(&unk_1000995C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_10006099C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v11 = sub_1000492F8(&qword_1000995D0, type metadata accessor for VoicemailActor);
  v12 = swift_allocObject();
  v12[2] = inited;
  v12[3] = v11;
  v12[4] = a1;

  sub_100037558(0, 0, v8, a4, v12);
}

uint64_t sub_10003DA60()
{
  swift_unknownObjectWeakDestroy();
  v1 = OBJC_IVAR____TtC37VoicemailMessageNotificationExtensionP33_8025293584B3B4CB1E2F1298DE5F5F7E20MessageStoreDelegate_logger;
  v2 = sub_10006074C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_10003DB2C()
{
  result = sub_10006074C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10003DBD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  v3[21] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_1000492F8(&qword_1000995D0, type metadata accessor for VoicemailActor);
  v5 = sub_10006091C();

  return _swift_task_switch(sub_10003DCA0, v5, v4);
}

uint64_t sub_10003DCA0()
{
  v63 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  v2 = sub_10006072C();
  if (!Strong)
  {
    LOBYTE(v9) = sub_100060A2C();
    v19 = os_log_type_enabled(v2, v9);
    v20 = *(v0 + 184);
    if (!v19)
    {

      goto LABEL_36;
    }

    v21 = swift_slowAlloc();
    *v21 = 134217984;
    if (!(v20 >> 62))
    {
      v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_21:
      *(v21 + 4) = v22;
      v23 = v21;

      _os_log_impl(&_mh_execute_header, v2, v9, "ignoring %ld added messages, no more self", v23, 0xCu);

LABEL_36:
      Strong = v2;
      goto LABEL_58;
    }

LABEL_65:
    v58 = v21;
    v22 = sub_100060CFC();
    v21 = v58;
    goto LABEL_21;
  }

  v3 = sub_100060A4C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v62 = v5;
    *v4 = 136315138;
    sub_1000605BC();
    v6 = sub_1000608DC();
    v8 = sub_100046270(v6, v7, &v62);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "messageStoreDidAddMessages: %s", v4, 0xCu);
    sub_100018230(v5);
  }

  v2 = *(v0 + 184);
  v9 = *(Strong + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_messageTypes);
  v62 = _swiftEmptyArrayStorage;
  if (v2 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100060CFC())
  {

    v60 = Strong;
    v61 = v0;
    if (!i)
    {
      break;
    }

    v11 = 0;
    v12 = *(v0 + 184);
    v0 = v2 & 0xC000000000000001;
    v13 = v2 & 0xFFFFFFFFFFFFFF8;
    Strong = (v12 + 32);
    while (1)
    {
      if (v0)
      {
        v14 = sub_100060C0C();
      }

      else
      {
        if (v11 >= *(v13 + 16))
        {
          goto LABEL_38;
        }

        v14 = Strong[v11];
      }

      v15 = v14;
      v16 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v2 = v14;
      v17 = sub_10006050C();
      if (sub_10003BCB0(v17, v9))
      {
        sub_100060C3C();
        sub_100060C6C();
        sub_100060C7C();
        v2 = &v62;
        sub_100060C4C();
      }

      else
      {
      }

      ++v11;
      if (v16 == i)
      {
        v18 = v62;
        Strong = v60;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_23:

  v24 = (v18 >> 62) & 1;
  if (v18 < 0)
  {
    LODWORD(v24) = 1;
  }

  v59 = v24;
  if (v24 == 1)
  {
    v21 = sub_100060CFC();
    v25 = v21;
    v0 = v61;
    if (!v21)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v25 = *(v18 + 16);
    v0 = v61;
    if (!v25)
    {
      goto LABEL_41;
    }
  }

  if (v25 < 1)
  {
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v26 = 0;
  v27 = v18 & 0xC000000000000001;
  do
  {
    if (v27)
    {
      v28 = sub_100060C0C();
    }

    else
    {
      v28 = *(v18 + 8 * v26 + 32);
    }

    v29 = v28;
    v30 = sub_10006058C();
    if ((v31 & 1) == 0)
    {
      v32 = v30;
      sub_100017538(&qword_10009A2F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10007A040;
      *(inited + 32) = 0x6D766C5F7369;
      *(inited + 40) = 0xE600000000000000;
      sub_100027E44(0, &qword_10009A300);
      sub_10006050C();
      v34 = sub_1000605EC();
      v35 = v34 == sub_1000605EC();
      *(inited + 48) = sub_100060ABC(v35);
      *(inited + 56) = 0x6D76765F7369;
      *(inited + 64) = 0xE600000000000000;
      sub_10006050C();
      v36 = sub_1000605EC();
      v37 = v36 == sub_1000605EC();
      *(inited + 72) = sub_100060ABC(v37);
      *(inited + 80) = 0x6E6F697461727564;
      *(inited + 88) = 0xE800000000000000;
      sub_10006057C();
      *(inited + 96) = [objc_allocWithZone(NSNumber) initWithDouble:round(v38)];
      *(inited + 104) = 0xD000000000000011;
      *(inited + 112) = 0x8000000100076640;
      *(inited + 120) = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v32];
      v39 = sub_100047CE0(inited);
      Strong = v60;
      v0 = v61;
      swift_setDeallocating();
      sub_100017538(&qword_10009A308);
      v27 = v18 & 0xC000000000000001;
      swift_arrayDestroy();
      sub_10003E52C(v39);
      v41 = v40;

      sub_100037F2C(0xD00000000000002DLL, 0x8000000100076660, v41);
    }

    ++v26;
  }

  while (v25 != v26);
LABEL_41:

  v42 = sub_10006072C();
  v43 = sub_100060A4C();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = v25;
    v46 = swift_slowAlloc();
    v62 = v46;
    *v44 = 136315138;
    sub_1000605BC();
    v47 = sub_1000608DC();
    v49 = sub_100046270(v47, v48, &v62);

    *(v44 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v42, v43, "messageStoreDidAddMessages(filtered): %s", v44, 0xCu);
    sub_100018230(v46);
    v25 = v45;
  }

  if (!v25)
  {

    goto LABEL_58;
  }

  if (v59)
  {
    v9 = sub_100060CFC();
  }

  else
  {
    v9 = *(v18 + 16);
  }

  if (v9)
  {
    v62 = _swiftEmptyArrayStorage;
    v2 = &v62;
    v21 = sub_100060C5C();
    if ((v9 & 0x8000000000000000) == 0)
    {
      v50 = 0;
      do
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v51 = sub_100060C0C();
        }

        else
        {
          v51 = *(v18 + 8 * v50 + 32);
        }

        v52 = v51;
        ++v50;
        v53 = objc_allocWithZone(type metadata accessor for FTMessage());
        sub_100024EF0(v52);
        sub_100060C3C();
        sub_100060C6C();
        sub_100060C7C();
        sub_100060C4C();
      }

      while (v9 != v50);

      v54 = v62;
      if (!(v62 >> 62))
      {
        goto LABEL_56;
      }

LABEL_62:

      sub_100017538(&qword_10009A700);
      v55 = sub_100060CEC();

      goto LABEL_57;
    }

    goto LABEL_64;
  }

  v54 = _swiftEmptyArrayStorage;
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_62;
  }

LABEL_56:

  sub_100060E2C();
  v55 = v54;
LABEL_57:

  sub_10003BD18(v55);

LABEL_58:

  v56 = *(v0 + 8);

  return v56();
}

void sub_10003E52C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100017538(&qword_10009A320);
    v2 = sub_100060D2C();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);

        v19 = v18;
        v20 = sub_100046F98(v17, v16);
        if (v21)
        {
          v8 = (v2[6] + 16 * v20);
          *v8 = v17;
          v8[1] = v16;
          v9 = v20;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v19;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
          v22 = (v2[6] + 16 * v20);
          *v22 = v17;
          v22[1] = v16;
          *(v2[7] + 8 * v20) = v19;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_10003E70C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_1000492F8(&qword_1000995D0, type metadata accessor for VoicemailActor);
  v5 = sub_10006091C();

  return _swift_task_switch(sub_10003E7D8, v5, v4);
}

uint64_t sub_10003E7D8()
{
  v47 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  v2 = sub_10006072C();
  if (!Strong)
  {
    v19 = sub_100060A2C();
    v20 = os_log_type_enabled(v2, v19);
    v21 = *(v0 + 56);
    if (v20)
    {
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      if (v21 >> 62)
      {
        v42 = v22;
        v23 = sub_100060CFC();
        v22 = v42;
      }

      else
      {
        v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v22 + 4) = v23;
      v24 = v22;

      _os_log_impl(&_mh_execute_header, v2, v19, "ignoring %ld updated messages, no more self", v24, 0xCu);

      goto LABEL_46;
    }

    goto LABEL_37;
  }

  v3 = sub_100060A4C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v46 = v5;
    *v4 = 136315138;
    sub_1000605BC();
    v6 = sub_1000608DC();
    v8 = sub_100046270(v6, v7, &v46);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "messageStoreDidUpdateMessages: %s", v4, 0xCu);
    sub_100018230(v5);
  }

  v9 = *(v0 + 56);
  v45 = *(Strong + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_messageTypes);
  v46 = _swiftEmptyArrayStorage;
  if (v9 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100060CFC())
  {
    v44 = Strong;

    if (!i)
    {
      break;
    }

    v11 = 0;
    v43 = v0;
    v12 = v9 & 0xC000000000000001;
    v13 = v9 & 0xFFFFFFFFFFFFFF8;
    Strong = *(v0 + 56) + 32;
    v0 = v45;
    while (1)
    {
      if (v12)
      {
        v14 = sub_100060C0C();
      }

      else
      {
        if (v11 >= *(v13 + 16))
        {
          goto LABEL_39;
        }

        v14 = *(Strong + 8 * v11);
      }

      v15 = v14;
      v16 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v9 = v14;
      v17 = sub_10006050C();
      if (sub_10003BCB0(v17, v45))
      {
        sub_100060C3C();
        sub_100060C6C();
        sub_100060C7C();
        v9 = &v46;
        sub_100060C4C();
      }

      else
      {
      }

      ++v11;
      if (v16 == i)
      {
        v18 = v46;
        v0 = v43;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_23:

  v25 = sub_10006072C();
  v26 = sub_100060A4C();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v46 = v28;
    *v27 = 136315138;
    sub_1000605BC();
    v29 = sub_1000608DC();
    v31 = sub_100046270(v29, v30, &v46);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v25, v26, "messageStoreDidUpdateMessages(filtered): %s", v27, 0xCu);
    sub_100018230(v28);
  }

  v2 = v44;
  if ((v18 & 0x8000000000000000) != 0 || (v18 & 0x4000000000000000) != 0)
  {
    if (sub_100060CFC())
    {
      v39 = sub_100060CFC();
      if (!v39)
      {

        v37 = _swiftEmptyArrayStorage;
        if (!(_swiftEmptyArrayStorage >> 62))
        {
LABEL_35:

          sub_100060E2C();
          v38 = v37;
LABEL_36:

          sub_10003EDD8(v38);
LABEL_37:

          goto LABEL_46;
        }

LABEL_51:

        sub_100017538(&qword_10009A700);
        v38 = sub_100060CEC();

        goto LABEL_36;
      }

      v32 = v39;
      v46 = _swiftEmptyArrayStorage;
      sub_100060C5C();
      if ((v32 & 0x8000000000000000) == 0)
      {
LABEL_29:
        v33 = 0;
        do
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v34 = sub_100060C0C();
          }

          else
          {
            v34 = *(v18 + 8 * v33 + 32);
          }

          v35 = v34;
          ++v33;
          v36 = objc_allocWithZone(type metadata accessor for FTMessage());
          sub_100024EF0(v35);
          sub_100060C3C();
          sub_100060C6C();
          sub_100060C7C();
          sub_100060C4C();
        }

        while (v32 != v33);

        v37 = v46;
        if (!(v46 >> 62))
        {
          goto LABEL_35;
        }

        goto LABEL_51;
      }

      __break(1u);
    }
  }

  else
  {
    v32 = *(v18 + 16);
    if (v32)
    {
      v46 = _swiftEmptyArrayStorage;
      sub_100060C5C();
      goto LABEL_29;
    }
  }

LABEL_46:

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_10003EDD8(unint64_t a1)
{
  sub_10002B4C8(a1);
  if (a1 >> 62)
  {
    v2 = sub_100060CFC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v11 = _swiftEmptyArrayStorage;
    result = sub_100060C5C();
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = v5 + 1;
        v7 = [sub_100060C0C() identifier];
        swift_unknownObjectRelease();
        sub_100060C3C();
        sub_100060C6C();
        sub_100060C7C();
        sub_100060C4C();
        v5 = v6;
      }

      while (v2 != v6);
    }

    else
    {
      v8 = (a1 + 32);
      do
      {
        v9 = *v8++;
        v10 = [v9 identifier];
        sub_100060C3C();
        sub_100060C6C();
        sub_100060C7C();
        sub_100060C4C();
        --v2;
      }

      while (v2);
    }

    v3 = v11;
  }

  sub_100038B14(v3, 2u);
}

uint64_t sub_10003F0D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_1000492F8(&qword_1000995D0, type metadata accessor for VoicemailActor);
  v5 = sub_10006091C();

  return _swift_task_switch(sub_10003F1A0, v5, v4);
}

uint64_t sub_10003F1A0()
{
  v47 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  v2 = sub_10006072C();
  if (!Strong)
  {
    v19 = sub_100060A2C();
    v20 = os_log_type_enabled(v2, v19);
    v21 = *(v0 + 56);
    if (v20)
    {
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      if (v21 >> 62)
      {
        v42 = v22;
        v23 = sub_100060CFC();
        v22 = v42;
      }

      else
      {
        v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v22 + 4) = v23;
      v24 = v22;

      _os_log_impl(&_mh_execute_header, v2, v19, "ignoring %ld deleted messages, no more self", v24, 0xCu);

      goto LABEL_46;
    }

    goto LABEL_37;
  }

  v3 = sub_100060A4C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v46 = v5;
    *v4 = 136315138;
    sub_1000605BC();
    v6 = sub_1000608DC();
    v8 = sub_100046270(v6, v7, &v46);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "messageStoreDidMoveToTrashMessages: %s", v4, 0xCu);
    sub_100018230(v5);
  }

  v9 = *(v0 + 56);
  v45 = *(Strong + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_messageTypes);
  v46 = _swiftEmptyArrayStorage;
  if (v9 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100060CFC())
  {
    v44 = Strong;

    if (!i)
    {
      break;
    }

    v11 = 0;
    v43 = v0;
    v12 = v9 & 0xC000000000000001;
    v13 = v9 & 0xFFFFFFFFFFFFFF8;
    Strong = *(v0 + 56) + 32;
    v0 = v45;
    while (1)
    {
      if (v12)
      {
        v14 = sub_100060C0C();
      }

      else
      {
        if (v11 >= *(v13 + 16))
        {
          goto LABEL_39;
        }

        v14 = *(Strong + 8 * v11);
      }

      v15 = v14;
      v16 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v9 = v14;
      v17 = sub_10006050C();
      if (sub_10003BCB0(v17, v45))
      {
        sub_100060C3C();
        sub_100060C6C();
        sub_100060C7C();
        v9 = &v46;
        sub_100060C4C();
      }

      else
      {
      }

      ++v11;
      if (v16 == i)
      {
        v18 = v46;
        v0 = v43;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_23:

  v25 = sub_10006072C();
  v26 = sub_100060A4C();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v46 = v28;
    *v27 = 136315138;
    sub_1000605BC();
    v29 = sub_1000608DC();
    v31 = sub_100046270(v29, v30, &v46);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v25, v26, "messageStoreDidMoveToTrashMessages(filtered): %s", v27, 0xCu);
    sub_100018230(v28);
  }

  v2 = v44;
  if ((v18 & 0x8000000000000000) != 0 || (v18 & 0x4000000000000000) != 0)
  {
    if (sub_100060CFC())
    {
      v39 = sub_100060CFC();
      if (!v39)
      {

        v37 = _swiftEmptyArrayStorage;
        if (!(_swiftEmptyArrayStorage >> 62))
        {
LABEL_35:

          sub_100060E2C();
          v38 = v37;
LABEL_36:

          sub_10003EDD8(v38);
LABEL_37:

          goto LABEL_46;
        }

LABEL_51:

        sub_100017538(&qword_10009A700);
        v38 = sub_100060CEC();

        goto LABEL_36;
      }

      v32 = v39;
      v46 = _swiftEmptyArrayStorage;
      sub_100060C5C();
      if ((v32 & 0x8000000000000000) == 0)
      {
LABEL_29:
        v33 = 0;
        do
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v34 = sub_100060C0C();
          }

          else
          {
            v34 = *(v18 + 8 * v33 + 32);
          }

          v35 = v34;
          ++v33;
          v36 = objc_allocWithZone(type metadata accessor for FTMessage());
          sub_100024EF0(v35);
          sub_100060C3C();
          sub_100060C6C();
          sub_100060C7C();
          sub_100060C4C();
        }

        while (v32 != v33);

        v37 = v46;
        if (!(v46 >> 62))
        {
          goto LABEL_35;
        }

        goto LABEL_51;
      }

      __break(1u);
    }
  }

  else
  {
    v32 = *(v18 + 16);
    if (v32)
    {
      v46 = _swiftEmptyArrayStorage;
      sub_100060C5C();
      goto LABEL_29;
    }
  }

LABEL_46:

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_10003F7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_10006036C();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_1000492F8(&qword_1000995D0, type metadata accessor for VoicemailActor);
  v6 = sub_10006091C();

  return _swift_task_switch(sub_10003F8D4, v6, v5);
}

uint64_t sub_10003F8D4()
{
  v32 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  v2 = sub_10006072C();
  if (Strong)
  {
    v3 = sub_100060A4C();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v31 = v5;
      *v4 = 136315138;
      v6 = sub_1000608DC();
      v8 = sub_100046270(v6, v7, &v31);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "messageStoreDidDeleteMessagesWithUUIDs: %s", v4, 0xCu);
      sub_100018230(v5);
    }

    v9 = *(v0 + 72);
    v10 = *(v9 + 16);
    v11 = _swiftEmptyArrayStorage;
    if (v10)
    {
      v27 = Strong;
      v12 = *(v0 + 88);
      v31 = _swiftEmptyArrayStorage;
      sub_100060C5C();
      v13 = *(v12 + 16);
      v12 += 16;
      v14 = v9 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
      v29 = *(v12 + 56);
      v30 = v13;
      v28 = (v12 - 8);
      do
      {
        v16 = *(v0 + 96);
        v15 = *(v0 + 104);
        v17 = *(v0 + 80);
        v30(v15, v14, v17);
        v30(v16, v15, v17);
        v18 = type metadata accessor for MessageID(0);
        v19 = objc_allocWithZone(v18);
        v30(&v19[OBJC_IVAR___MPMessageID_value], v16, v17);
        type metadata accessor for MessageID.Value(0);
        swift_storeEnumTagMultiPayload();
        *(v0 + 40) = v19;
        *(v0 + 48) = v18;
        objc_msgSendSuper2((v0 + 40), "init");
        v20 = *v28;
        (*v28)(v16, v17);
        v20(v15, v17);
        sub_100060C3C();
        sub_100060C6C();
        sub_100060C7C();
        sub_100060C4C();
        v14 += v29;
        --v10;
      }

      while (v10);
      v11 = v31;
      Strong = v27;
    }

    sub_10003FC98(v11);
  }

  else
  {
    v21 = sub_100060A2C();
    v22 = os_log_type_enabled(v2, v21);
    v23 = *(v0 + 72);
    if (v22)
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = *(v23 + 16);

      _os_log_impl(&_mh_execute_header, v2, v21, "ignoring %ld deleted messageUUIDs, no more self", v24, 0xCu);
    }

    else
    {
    }

    Strong = v2;
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_10003FC98(unint64_t a1)
{
  v1 = sub_10002B0C4(a1);

  v2 = sub_10006072C();
  v3 = sub_100060A4C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    type metadata accessor for MessageID(0);
    v6 = sub_1000608DC();
    v8 = sub_100046270(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "FaceTimeVoicemailManager did remove: %s", v4, 0xCu);
    sub_100018230(v5);
  }

  if (!(v1 >> 62))
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (sub_100060CFC())
  {
LABEL_5:
    sub_100038B14(v1, 0);
  }

LABEL_6:
}

uint64_t sub_10003FFBC(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_1000492F8(&qword_1000995D0, type metadata accessor for VoicemailActor);
  v4 = sub_10006091C();

  return _swift_task_switch(sub_100040084, v4, v3);
}

uint64_t sub_100040084()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    *(Strong + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension22CachedVoicemailManager_state) = 0x8000000000000000;

    v3 = sub_10006072C();
    v4 = sub_100060A4C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "messageStoreDidReconnect(), triggering onVoicemailsChanged().", v5, 2u);
    }

    sub_100038B14(0, 3u);
  }

  else
  {
    v2 = sub_10006072C();
    v6 = sub_100060A2C();
    if (os_log_type_enabled(v2, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v2, v6, "ignoring messageStoreDidReconnect(), no more self", v7, 2u);
    }
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100040218(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_1000492F8(&qword_1000995D0, type metadata accessor for VoicemailActor);
  v4 = sub_10006091C();

  return _swift_task_switch(sub_1000402E0, v4, v3);
}

uint64_t sub_1000402E0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    *(Strong + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension22CachedVoicemailManager_state) = 0x8000000000000000;

    v3 = sub_10006072C();
    v4 = sub_100060A4C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "messageStoreRequiresRefetch(), triggering onVoicemailsChanged().", v5, 2u);
    }

    sub_100038B14(0, 3u);
  }

  else
  {
    v2 = sub_10006072C();
    v6 = sub_100060A2C();
    if (os_log_type_enabled(v2, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v2, v6, "ignoring messageStoreRequiresRefetch(), no more self", v7, 2u);
    }
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000404D8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1000606CC();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = sub_10006036C();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_1000492F8(&qword_1000995D0, type metadata accessor for VoicemailActor);
  v6 = sub_10006091C();
  v2[17] = v6;
  v2[18] = v5;

  return _swift_task_switch(sub_100040670, v6, v5);
}

uint64_t sub_100040670()
{
  v11 = v0;
  v1 = sub_100058B48(v0[7]);
  if (!v1)
  {

    v2 = sub_10006072C();
    v3 = sub_100060A2C();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v10 = v5;
      *v4 = 136446210;
      *(v4 + 4) = sub_100046270(0x654D3C7961727241, 0xEE003E6567617373, &v10);
      _os_log_impl(&_mh_execute_header, v2, v3, "FaceTimeVoicemailManager received the incorrect type %{public}s when it expected a FTMessage", v4, 0xCu);
      sub_100018230(v5);
    }

    v1 = _swiftEmptyArrayStorage;
  }

  v0[19] = v1;
  if (v1 >> 62)
  {
    v7 = sub_100060CFC();
    v0[20] = v7;
    if (v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[20] = v6;
    if (v6)
    {
LABEL_7:

      return _swift_task_switch(sub_100040888, 0, 0);
    }
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_100040888()
{
  sub_10006094C();
  *(v0 + 168) = sub_10006093C();
  v2 = sub_10006091C();

  return _swift_task_switch(sub_10004091C, v2, v1);
}

uint64_t sub_10004091C()
{
  v1 = v0[20];

  if (v1 < 1)
  {
    __break(1u);
  }

  else
  {
    v5 = 0;
    v6 = v0[19];
    v7 = v6 & 0xC000000000000001;
    v8 = v6 + 32;
    do
    {
      v9 = v0[20];
      v10 = v5 + 1;
      if (v7)
      {
        atomic_store(1u, (sub_100060C0C() + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension9FTMessage_dirtyIsDeleted));
        swift_unknownObjectRelease();
      }

      else
      {
        atomic_store(1u, (*(v8 + 8 * v5) + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension9FTMessage_dirtyIsDeleted));
      }

      v5 = v10;
    }

    while (v10 != v9);
    v3 = v0[17];
    v4 = v0[18];
    v2 = sub_1000409FC;
  }

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_1000409FC()
{
  v1 = *(v0 + 152);
  if (v1 >> 62)
  {
    v2 = sub_100060CFC();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_18:
    sub_100038B14(_swiftEmptyArrayStorage, 0);

    goto LABEL_19;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_18;
  }

LABEL_3:
  v3 = sub_100060C5C();
  if (v2 < 0)
  {
    __break(1u);
    return MessageStoreController.deleteMessages(query:)(v3);
  }

  v4 = 0;
  v5 = *(v0 + 104);
  v31 = (v5 + 8);
  v32 = (v5 + 16);
  do
  {
    v14 = *(v0 + 152);
    if ((v14 & 0xC000000000000001) != 0)
    {
      v6 = sub_100060C0C();
    }

    else
    {
      v6 = *(v14 + 8 * v4 + 32);
    }

    v8 = *(v0 + 120);
    v7 = *(v0 + 128);
    v9 = *(v0 + 96);
    ++v4;
    v33 = v6;
    sub_1000604BC();
    v10 = *v32;
    (*v32)(v8, v7, v9);
    v11 = type metadata accessor for MessageID(0);
    v12 = objc_allocWithZone(v11);
    v10(&v12[OBJC_IVAR___MPMessageID_value], v8, v9);
    type metadata accessor for MessageID.Value(0);
    swift_storeEnumTagMultiPayload();
    *(v0 + 40) = v12;
    *(v0 + 48) = v11;
    objc_msgSendSuper2((v0 + 40), "init");
    v13 = *v31;
    (*v31)(v8, v9);
    v13(v7, v9);

    sub_100060C3C();
    sub_100060C6C();
    sub_100060C7C();
    sub_100060C4C();
  }

  while (v2 != v4);
  v15 = *(v0 + 104);
  sub_100038B14(_swiftEmptyArrayStorage, 0);

  sub_100046898(0, v2, 0);
  for (i = 0; i != v2; ++i)
  {
    v17 = *(v0 + 152);
    if ((v17 & 0xC000000000000001) != 0)
    {
      v18 = sub_100060C0C();
    }

    else
    {
      v18 = *(v17 + 8 * i + 32);
    }

    v19 = v18;
    swift_beginAccess();
    v20 = v19;
    sub_1000604BC();
    swift_endAccess();

    v22 = _swiftEmptyArrayStorage[2];
    v21 = _swiftEmptyArrayStorage[3];
    if (v22 >= v21 >> 1)
    {
      sub_100046898(v21 > 1, v22 + 1, 1);
    }

    v23 = *(v0 + 112);
    v24 = *(v0 + 96);
    _swiftEmptyArrayStorage[2] = v22 + 1;
    (*(v15 + 32))(_swiftEmptyArrayStorage + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v22, v23, v24);
  }

LABEL_19:

  *(v0 + 176) = _swiftEmptyArrayStorage;
  v26 = *(v0 + 80);
  v25 = *(v0 + 88);
  v27 = *(v0 + 72);
  sub_1000184C8((*(v0 + 64) + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_messageStoreController), *(*(v0 + 64) + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_messageStoreController + 24));
  v28 = swift_allocObject();
  *(v28 + 16) = _swiftEmptyArrayStorage;
  *v25 = v28;
  (*(v26 + 104))(v25, enum case for MessageStoreQuery.recordUUID(_:), v27);

  v29 = swift_task_alloc();
  *(v0 + 184) = v29;
  *v29 = v0;
  v29[1] = sub_100040E50;
  v3 = *(v0 + 88);

  return MessageStoreController.deleteMessages(query:)(v3);
}

uint64_t sub_100040E50()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *v1;
  v5[24] = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v6 = v5[17];
    v7 = v5[18];

    return _swift_task_switch(sub_10004101C, v6, v7);
  }

  else
  {

    v8 = v5[1];

    return v8();
  }
}

uint64_t sub_10004101C()
{
  v14 = v0;

  swift_errorRetain();
  v1 = sub_10006072C();
  v2 = sub_100060A2C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v3 = 136315394;
    v6 = sub_1000608DC();
    v8 = v7;

    v9 = sub_100046270(v6, v8, &v13);

    *(v3 + 4) = v9;
    *(v3 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v10;
    *v4 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "FaceTimeVoicemailManager failed to delete messages with recordUUIDs %s with error: %@", v3, 0x16u);
    sub_100020850(v4, &unk_10009A710);

    sub_100018230(v5);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1000413DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_1000492F8(&qword_1000995D0, type metadata accessor for VoicemailActor);
  v5 = sub_10006091C();

  return _swift_task_switch(sub_1000414A8, v5, v4);
}

uint64_t sub_1000414A8()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  sub_100017538(&qword_10009A700);
  v2 = sub_1000608CC();
  *(v0 + 48) = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_100049798;

  return sub_1000404D8(v2);
}

uint64_t sub_100041584(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  sub_100017538(&qword_100099E18);
  v2[6] = swift_task_alloc();
  sub_100017538(&qword_1000998B8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = sub_10006036C();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_1000492F8(&qword_1000995D0, type metadata accessor for VoicemailActor);
  v5 = sub_10006091C();
  v2[13] = v5;
  v2[14] = v4;

  return _swift_task_switch(sub_100041730, v5, v4);
}

uint64_t sub_100041730()
{
  v17 = v0;
  v0[15] = OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_logger;

  v1 = sub_10006072C();
  v2 = sub_100060A4C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v3 = 136315394;
    *(v3 + 4) = sub_100046270(0x655273416B72616DLL, 0xEE00293A5F286461, &v16);
    *(v3 + 12) = 2080;
    sub_100017538(&qword_10009A700);
    v4 = sub_1000608DC();
    v6 = sub_100046270(v4, v5, &v16);

    *(v3 + 14) = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s: Setting messages as read %s", v3, 0x16u);
    swift_arrayDestroy();
  }

  v7 = sub_100058B48(v0[4]);
  if (!v7)
  {

    v8 = sub_10006072C();
    v9 = sub_100060A2C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_100046270(0x654D3C7961727241, 0xEE003E6567617373, &v16);
      _os_log_impl(&_mh_execute_header, v8, v9, "FaceTimeVoicemailManager received the incorrect type %{public}s when it expected a FTMessage", v10, 0xCu);
      sub_100018230(v11);
    }

    v7 = _swiftEmptyArrayStorage;
  }

  v0[16] = v7;
  if (v7 >> 62)
  {
    v13 = sub_100060CFC();
    v0[17] = v13;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[17] = v12;
    if (v12)
    {
LABEL_9:

      return _swift_task_switch(sub_100041AA8, 0, 0);
    }
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_100041AA8()
{
  sub_10006094C();
  *(v0 + 144) = sub_10006093C();
  v2 = sub_10006091C();

  return _swift_task_switch(sub_100041B3C, v2, v1);
}

uint64_t sub_100041B3C()
{
  v1 = v0[17];

  if (v1 < 1)
  {
    __break(1u);
  }

  else
  {
    v5 = 0;
    v6 = v0[16];
    v7 = v6 & 0xC000000000000001;
    v8 = v6 + 32;
    do
    {
      if (v7)
      {
        v9 = sub_100060C0C();
      }

      else
      {
        v9 = *(v8 + 8 * v5);
      }

      v10 = v9;
      v11 = v0[17];
      ++v5;
      v12 = &v9[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension9FTMessage_dirtyRead];
      os_unfair_lock_lock(&v9[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension9FTMessage_dirtyRead]);
      LOBYTE(v12[1]._os_unfair_lock_opaque) = 1;
      os_unfair_lock_unlock(v12);
    }

    while (v5 != v11);
    v3 = v0[13];
    v4 = v0[14];
    v2 = sub_100041C30;
  }

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_100041C30()
{
  v42 = v0;
  receiver = v0[8].receiver;
  if (receiver >> 62)
  {
    v2 = sub_100060CFC();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_16:
    v28 = _swiftEmptyArrayStorage;
    sub_100038B14(_swiftEmptyArrayStorage, 2u);

    goto LABEL_17;
  }

  v2 = *((receiver & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_16;
  }

LABEL_3:
  v41 = _swiftEmptyArrayStorage;
  v3 = sub_100060C5C();
  if (v2 < 0)
  {
    __break(1u);
    return MessageStoreController.updateMessages(_:)(v3);
  }

  v4 = 0;
  v5 = v0[5].receiver;
  v37 = (v5 + 8);
  v38 = (v5 + 16);
  v40 = v2;
  do
  {
    v14 = v0[8].receiver;
    if ((v14 & 0xC000000000000001) != 0)
    {
      v6 = sub_100060C0C();
    }

    else
    {
      v6 = *(v14 + v4 + 4);
    }

    super_class = v0[5].super_class;
    v7 = v0[6].receiver;
    v9 = v0[4].super_class;
    ++v4;
    v39 = v6;
    sub_1000604BC();
    v10 = *v38;
    (*v38)(super_class, v7, v9);
    v11 = type metadata accessor for MessageID(0);
    v12 = objc_allocWithZone(v11);
    v10(&v12[OBJC_IVAR___MPMessageID_value], super_class, v9);
    type metadata accessor for MessageID.Value(0);
    swift_storeEnumTagMultiPayload();
    v0[1].receiver = v12;
    v0[1].super_class = v11;
    objc_msgSendSuper2(v0 + 1, "init");
    v13 = *v37;
    (*v37)(super_class, v9);
    v13(v7, v9);

    sub_100060C3C();
    sub_100060C6C();
    sub_100060C7C();
    sub_100060C4C();
  }

  while (v40 != v4);
  v15 = v0[5].receiver;
  sub_100038B14(v41, 2u);

  v41 = _swiftEmptyArrayStorage;
  sub_100060C5C();
  v16 = 0;
  v17 = (v15 + 56);
  do
  {
    v27 = v0[8].receiver;
    if ((v27 & 0xC000000000000001) != 0)
    {
      v18 = sub_100060C0C();
    }

    else
    {
      v18 = *(v27 + v16 + 4);
    }

    v19 = v18;
    v20 = v0[4].receiver;
    v21 = v0[4].super_class;
    v23 = v0[3].receiver;
    v22 = v0[3].super_class;
    ++v16;
    sub_1000604BC();
    v24 = *v17;
    (*v17)(v20, 1, 1, v21);
    v24(v22, 1, 1, v21);
    v25 = sub_10006029C();
    (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
    v26 = objc_allocWithZone(sub_10006061C());
    sub_1000605FC();

    sub_100060C3C();
    sub_100060C6C();
    sub_100060C7C();
    sub_100060C4C();
  }

  while (v40 != v16);
  v28 = v41;
LABEL_17:
  v0[9].super_class = v28;

  v29 = sub_10006072C();
  v30 = sub_100060A4C();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v31 = 136315394;
    *(v31 + 4) = sub_100046270(0x655273416B72616DLL, 0xEE00293A5F286461, &v41);
    *(v31 + 12) = 2080;
    type metadata accessor for FTMessage();
    v32 = sub_1000608DC();
    v34 = sub_100046270(v32, v33, &v41);

    *(v31 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v29, v30, "%s: Updating Messages with read: %s", v31, 0x16u);
    swift_arrayDestroy();
  }

  sub_1000184C8((v0[2].super_class + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_messageStoreController), *(v0[2].super_class + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_messageStoreController + 24));
  v35 = swift_task_alloc();
  v0[10].receiver = v35;
  *v35 = v0;
  v35[1] = sub_1000421C8;
  v3 = v28;

  return MessageStoreController.updateMessages(_:)(v3);
}

uint64_t sub_1000421C8()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {

    v4 = *(v2 + 104);
    v5 = *(v2 + 112);

    return _swift_task_switch(sub_100042360, v4, v5);
  }

  else
  {

    v6 = *(v3 + 8);

    return v6();
  }
}

uint64_t sub_100042360()
{
  v14 = v0;

  swift_errorRetain();
  v1 = sub_10006072C();
  v2 = sub_100060A2C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v3 = 136315394;
    type metadata accessor for FTMessage();
    v6 = sub_1000608DC();
    v8 = v7;

    v9 = sub_100046270(v6, v8, &v13);

    *(v3 + 4) = v9;
    *(v3 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v10;
    *v4 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "FaceTimeVoicemailManager failed to set messages %s as read with error: %@", v3, 0x16u);
    sub_100020850(v4, &unk_10009A710);

    sub_100018230(v5);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100042724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_1000492F8(&qword_1000995D0, type metadata accessor for VoicemailActor);
  v5 = sub_10006091C();

  return _swift_task_switch(sub_1000427F0, v5, v4);
}

uint64_t sub_1000427F0()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  sub_100017538(&qword_10009A700);
  v2 = sub_1000608CC();
  *(v0 + 48) = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1000428CC;

  return sub_100041584(v2);
}

uint64_t sub_1000428CC()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100042A28(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  sub_100017538(&qword_100099E18);
  v2[6] = swift_task_alloc();
  sub_100017538(&qword_1000998B8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = sub_10006036C();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_1000492F8(&qword_1000995D0, type metadata accessor for VoicemailActor);
  v5 = sub_10006091C();
  v2[15] = v5;
  v2[16] = v4;

  return _swift_task_switch(sub_100042BEC, v5, v4);
}

uint64_t sub_100042BEC()
{
  v11 = v0;
  v1 = sub_100058B48(v0[4]);
  if (!v1)
  {

    v2 = sub_10006072C();
    v3 = sub_100060A2C();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v10 = v5;
      *v4 = 136446210;
      *(v4 + 4) = sub_100046270(0x654D3C7961727241, 0xEE003E6567617373, &v10);
      _os_log_impl(&_mh_execute_header, v2, v3, "FaceTimeVoicemailManager received the incorrect type %{public}s when it expected a FTMessage", v4, 0xCu);
      sub_100018230(v5);
    }

    v1 = _swiftEmptyArrayStorage;
  }

  v0[17] = v1;
  if (v1 >> 62)
  {
    v7 = sub_100060CFC();
    v0[18] = v7;
    if (v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[18] = v6;
    if (v6)
    {
LABEL_7:

      return _swift_task_switch(sub_100042E2C, 0, 0);
    }
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_100042E2C()
{
  sub_10006094C();
  *(v0 + 152) = sub_10006093C();
  v2 = sub_10006091C();

  return _swift_task_switch(sub_100042EC0, v2, v1);
}

uint64_t sub_100042EC0()
{
  v1 = v0[18];

  if (v1 < 1)
  {
    __break(1u);
  }

  else
  {
    v5 = 0;
    v6 = v0[17];
    v7 = v6 & 0xC000000000000001;
    v8 = v6 + 32;
    do
    {
      if (v7)
      {
        v9 = sub_100060C0C();
      }

      else
      {
        v9 = *(v8 + 8 * v5);
      }

      v10 = v9;
      v11 = v0[18];
      ++v5;
      v12 = &v9[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension9FTMessage_dirtyFolder];
      os_unfair_lock_lock(&v9[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension9FTMessage_dirtyFolder]);
      *(v12 + 1) = 2;
      v12[16] = 0;
      os_unfair_lock_unlock(v12);
    }

    while (v5 != v11);
    v3 = v0[15];
    v4 = v0[16];
    v2 = sub_100042FB8;
  }

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_100042FB8()
{
  v44 = v0;
  super_class = v0[8].super_class;
  if (super_class >> 62)
  {
    v2 = sub_100060CFC();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_16:
    v28 = _swiftEmptyArrayStorage;
    sub_100038B14(_swiftEmptyArrayStorage, 2u);

    goto LABEL_17;
  }

  v2 = *((super_class & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_16;
  }

LABEL_3:
  v43 = _swiftEmptyArrayStorage;
  v3 = sub_100060C5C();
  if (v2 < 0)
  {
    __break(1u);
    return MessageStoreController.updateMessages(_:)(v3);
  }

  v4 = 0;
  receiver = v0[5].receiver;
  v39 = (receiver + 8);
  v40 = (receiver + 16);
  v42 = v2;
  do
  {
    v14 = v0[8].super_class;
    if ((v14 & 0xC000000000000001) != 0)
    {
      v6 = sub_100060C0C();
    }

    else
    {
      v6 = *(v14 + v4 + 4);
    }

    v8 = v0[6].super_class;
    v7 = v0[7].receiver;
    v9 = v0[4].super_class;
    ++v4;
    v41 = v6;
    sub_1000604BC();
    v10 = *v40;
    (*v40)(v8, v7, v9);
    v11 = type metadata accessor for MessageID(0);
    v12 = objc_allocWithZone(v11);
    v10(&v12[OBJC_IVAR___MPMessageID_value], v8, v9);
    type metadata accessor for MessageID.Value(0);
    swift_storeEnumTagMultiPayload();
    v0[1].receiver = v12;
    v0[1].super_class = v11;
    objc_msgSendSuper2(v0 + 1, "init");
    v13 = *v39;
    (*v39)(v8, v9);
    v13(v7, v9);

    sub_100060C3C();
    sub_100060C6C();
    sub_100060C7C();
    sub_100060C4C();
  }

  while (v42 != v4);
  v15 = v0[5].receiver;
  sub_100038B14(v43, 2u);

  v43 = _swiftEmptyArrayStorage;
  sub_100060C5C();
  v16 = 0;
  v17 = (v15 + 56);
  do
  {
    v27 = v0[8].super_class;
    if ((v27 & 0xC000000000000001) != 0)
    {
      v18 = sub_100060C0C();
    }

    else
    {
      v18 = *(v27 + v16 + 4);
    }

    v19 = v18;
    v20 = v0[4].receiver;
    v21 = v0[4].super_class;
    v23 = v0[3].receiver;
    v22 = v0[3].super_class;
    ++v16;
    sub_1000604BC();
    v24 = *v17;
    (*v17)(v20, 1, 1, v21);
    v24(v22, 1, 1, v21);
    v25 = sub_10006029C();
    (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
    v26 = objc_allocWithZone(sub_10006061C());
    sub_1000605FC();

    sub_100060C3C();
    sub_100060C6C();
    sub_100060C7C();
    sub_100060C4C();
  }

  while (v42 != v16);

  v28 = v43;
LABEL_17:
  v29 = OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_logger;
  v0[10].receiver = v28;
  v0[10].super_class = v29;

  v30 = sub_10006072C();
  v31 = sub_100060A2C();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v43 = v33;
    *v32 = 136315138;
    sub_10006061C();
    v34 = sub_1000608DC();
    v36 = sub_100046270(v34, v35, &v43);

    *(v32 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v30, v31, "[moveToTrash] Updating messages in FaceTimeVoicemailManager - Updates: %s", v32, 0xCu);
    sub_100018230(v33);
  }

  sub_1000184C8((v0[2].super_class + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_messageStoreController), *(v0[2].super_class + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_messageStoreController + 24));
  v37 = swift_task_alloc();
  v0[11].receiver = v37;
  *v37 = v0;
  v37[1] = sub_100043520;
  v3 = v28;

  return MessageStoreController.updateMessages(_:)(v3);
}

uint64_t sub_100043520()
{
  v2 = *v1;
  v2[23] = v0;

  if (v0)
  {
    v3 = v2[15];
    v4 = v2[16];

    return _swift_task_switch(sub_1000436B4, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

size_t sub_1000436B4()
{
  v35 = v0;

  swift_errorRetain();
  v1 = sub_10006072C();
  v2 = sub_100060A2C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[20];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v33 = v6;
    *v4 = 136315394;
    if (v3 >> 62)
    {
      v7 = sub_100060CFC();
      v32 = v5;
      if (v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v32 = v5;
      if (v7)
      {
LABEL_4:
        v34 = _swiftEmptyArrayStorage;
        result = sub_100046898(0, v7 & ~(v7 >> 63), 0);
        if (v7 < 0)
        {
          __break(1u);
          return result;
        }

        v29 = v6;
        v30 = v2;
        v31 = v1;
        v9 = v34;
        if ((v3 & 0xC000000000000001) != 0)
        {
          v10 = 0;
          v11 = v0[10];
          do
          {
            sub_100060C0C();
            sub_10006060C();
            swift_unknownObjectRelease();
            v34 = v9;
            v13 = v9[2];
            v12 = v9[3];
            if (v13 >= v12 >> 1)
            {
              sub_100046898(v12 > 1, v13 + 1, 1);
              v9 = v34;
            }

            v14 = v0[12];
            v15 = v0[9];
            ++v10;
            v9[2] = v13 + 1;
            (*(v11 + 32))(v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v13, v14, v15);
          }

          while (v7 != v10);
        }

        else
        {
          v16 = v0[10];
          v17 = (v0[20] + 32);
          do
          {
            v18 = *v17;
            sub_10006060C();

            v34 = v9;
            v20 = v9[2];
            v19 = v9[3];
            if (v20 >= v19 >> 1)
            {
              sub_100046898(v19 > 1, v20 + 1, 1);
              v9 = v34;
            }

            v21 = v0[11];
            v22 = v0[9];
            v9[2] = v20 + 1;
            (*(v16 + 32))(v9 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v20, v21, v22);
            ++v17;
            --v7;
          }

          while (v7);
        }

        v1 = v31;
        v2 = v30;
        v6 = v29;
        goto LABEL_19;
      }
    }

LABEL_19:
    v23 = sub_1000608DC();
    v25 = v24;

    v26 = sub_100046270(v23, v25, &v33);

    *(v4 + 4) = v26;
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v27;
    *v32 = v27;
    _os_log_impl(&_mh_execute_header, v1, v2, "FaceTimeVoicemailManager failed to set messages %s as deleted with error: %@", v4, 0x16u);
    sub_100020850(v32, &unk_10009A710);

    sub_100018230(v6);

    goto LABEL_20;
  }

LABEL_20:

  v28 = v0[1];

  return v28();
}

uint64_t sub_100043C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_1000492F8(&qword_1000995D0, type metadata accessor for VoicemailActor);
  v5 = sub_10006091C();

  return _swift_task_switch(sub_100043D50, v5, v4);
}

uint64_t sub_100043D50()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  sub_100017538(&qword_10009A700);
  v2 = sub_1000608CC();
  *(v0 + 48) = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_100049798;

  return sub_100042A28(v2);
}

uint64_t sub_100043E2C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  sub_100017538(&qword_100099E18);
  v2[6] = swift_task_alloc();
  sub_100017538(&qword_1000998B8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = sub_10006036C();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_1000492F8(&qword_1000995D0, type metadata accessor for VoicemailActor);
  v5 = sub_10006091C();
  v2[14] = v5;
  v2[15] = v4;

  return _swift_task_switch(sub_100043FE4, v5, v4);
}

uint64_t sub_100043FE4()
{
  v11 = v0;
  v1 = sub_100058B48(v0[4]);
  if (!v1)
  {

    v2 = sub_10006072C();
    v3 = sub_100060A2C();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v10 = v5;
      *v4 = 136446210;
      *(v4 + 4) = sub_100046270(0x654D3C7961727241, 0xEE003E6567617373, &v10);
      _os_log_impl(&_mh_execute_header, v2, v3, "FaceTimeVoicemailManager received the incorrect type %{public}s when it expected a FTMessage", v4, 0xCu);
      sub_100018230(v5);
    }

    v1 = _swiftEmptyArrayStorage;
  }

  v0[16] = v1;
  if (v1 >> 62)
  {
    v7 = sub_100060CFC();
    v0[17] = v7;
    if (v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[17] = v6;
    if (v6)
    {
LABEL_7:

      return _swift_task_switch(sub_100044210, 0, 0);
    }
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_100044210()
{
  sub_10006094C();
  *(v0 + 144) = sub_10006093C();
  v2 = sub_10006091C();

  return _swift_task_switch(sub_1000442A4, v2, v1);
}

uint64_t sub_1000442A4()
{
  v1 = v0[17];

  if (v1 < 1)
  {
    __break(1u);
  }

  else
  {
    v5 = 0;
    v6 = v0[16];
    v7 = v6 & 0xC000000000000001;
    v8 = v6 + 32;
    do
    {
      if (v7)
      {
        v9 = sub_100060C0C();
      }

      else
      {
        v9 = *(v8 + 8 * v5);
      }

      v10 = v9;
      v11 = v0[17];
      ++v5;
      v12 = &v9[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension9FTMessage_dirtyFolder];
      os_unfair_lock_lock(&v9[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension9FTMessage_dirtyFolder]);
      *(v12 + 1) = 1;
      v12[16] = 0;
      os_unfair_lock_unlock(v12);
    }

    while (v5 != v11);
    v3 = v0[14];
    v4 = v0[15];
    v2 = sub_10004439C;
  }

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_10004439C()
{
  v44 = v0;
  receiver = v0[8].receiver;
  if (receiver >> 62)
  {
    v2 = sub_100060CFC();
    v0[9].super_class = v2;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_16:
    v28 = _swiftEmptyArrayStorage;
    sub_100038B14(_swiftEmptyArrayStorage, 2u);

    goto LABEL_17;
  }

  v2 = *((receiver & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[9].super_class = v2;
  if (!v2)
  {
    goto LABEL_16;
  }

LABEL_3:
  v43 = _swiftEmptyArrayStorage;
  v3 = sub_100060C5C();
  if (v2 < 0)
  {
    __break(1u);
    return MessageStoreController.updateMessages(_:)(v3);
  }

  v4 = 0;
  v5 = v0[5].receiver;
  v39 = (v5 + 8);
  v40 = (v5 + 16);
  v42 = v2;
  do
  {
    v14 = v0[8].receiver;
    if ((v14 & 0xC000000000000001) != 0)
    {
      v6 = sub_100060C0C();
    }

    else
    {
      v6 = *(v14 + v4 + 4);
    }

    v8 = v0[6].receiver;
    super_class = v0[6].super_class;
    v9 = v0[4].super_class;
    ++v4;
    v41 = v6;
    sub_1000604BC();
    v10 = *v40;
    (*v40)(v8, super_class, v9);
    v11 = type metadata accessor for MessageID(0);
    v12 = objc_allocWithZone(v11);
    v10(&v12[OBJC_IVAR___MPMessageID_value], v8, v9);
    type metadata accessor for MessageID.Value(0);
    swift_storeEnumTagMultiPayload();
    v0[1].receiver = v12;
    v0[1].super_class = v11;
    objc_msgSendSuper2(v0 + 1, "init");
    v13 = *v39;
    (*v39)(v8, v9);
    v13(super_class, v9);

    sub_100060C3C();
    sub_100060C6C();
    sub_100060C7C();
    sub_100060C4C();
  }

  while (v42 != v4);
  v15 = v0[5].receiver;
  sub_100038B14(v43, 2u);

  v43 = _swiftEmptyArrayStorage;
  sub_100060C5C();
  v16 = 0;
  v17 = (v15 + 56);
  do
  {
    v27 = v0[8].receiver;
    if ((v27 & 0xC000000000000001) != 0)
    {
      v18 = sub_100060C0C();
    }

    else
    {
      v18 = *(v27 + v16 + 4);
    }

    v19 = v18;
    v20 = v0[4].receiver;
    v21 = v0[4].super_class;
    v23 = v0[3].receiver;
    v22 = v0[3].super_class;
    ++v16;
    sub_1000604BC();
    v24 = *v17;
    (*v17)(v20, 1, 1, v21);
    v24(v22, 1, 1, v21);
    v25 = sub_10006029C();
    (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
    v26 = objc_allocWithZone(sub_10006061C());
    sub_1000605FC();

    sub_100060C3C();
    sub_100060C6C();
    sub_100060C7C();
    sub_100060C4C();
  }

  while (v42 != v16);
  v28 = v43;
LABEL_17:
  v29 = OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_logger;
  v0[10].receiver = v28;
  v0[10].super_class = v29;

  v30 = sub_10006072C();
  v31 = sub_100060A2C();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v43 = v33;
    *v32 = 136315138;
    sub_10006061C();
    v34 = sub_1000608DC();
    v36 = sub_100046270(v34, v35, &v43);

    *(v32 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v30, v31, "[removeFromTrash] Updating messages in FaceTimeVoicemailManager - Updates: %s", v32, 0xCu);
    sub_100018230(v33);
  }

  sub_1000184C8((v0[2].super_class + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_messageStoreController), *(v0[2].super_class + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_messageStoreController + 24));
  v37 = swift_task_alloc();
  v0[11].receiver = v37;
  *v37 = v0;
  v37[1] = sub_1000448F8;
  v3 = v28;

  return MessageStoreController.updateMessages(_:)(v3);
}

uint64_t sub_1000448F8()
{
  v2 = *v1;
  v2[23] = v0;

  if (v0)
  {
    v3 = v2[14];
    v4 = v2[15];

    return _swift_task_switch(sub_100044AA0, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

size_t sub_100044AA0()
{
  v30 = v0;

  swift_errorRetain();
  v1 = sub_10006072C();
  v2 = sub_100060A2C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[19];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v28 = v6;
    *v4 = 136315394;
    if (v3)
    {
      v27 = v5;
      v7 = v0[19];
      v29 = _swiftEmptyArrayStorage;
      result = sub_100046898(0, v7 & ~(v7 >> 63), 0);
      if (v7 < 0)
      {
        __break(1u);
        return result;
      }

      v26 = v6;
      v9 = 0;
      v10 = v0[10];
      v11 = v29;
      do
      {
        v12 = v0[16];
        if ((v12 & 0xC000000000000001) != 0)
        {
          v13 = sub_100060C0C();
        }

        else
        {
          v13 = *(v12 + 8 * v9 + 32);
        }

        v14 = v13;
        sub_1000604BC();

        v29 = v11;
        v16 = v11[2];
        v15 = v11[3];
        if (v16 >= v15 >> 1)
        {
          sub_100046898(v15 > 1, v16 + 1, 1);
          v11 = v29;
        }

        v17 = v0[19];
        v18 = v0[11];
        v19 = v0[9];
        ++v9;
        v11[2] = v16 + 1;
        (*(v10 + 32))(v11 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v16, v18, v19);
      }

      while (v9 != v17);

      v5 = v27;
      v6 = v26;
    }

    else
    {
    }

    v20 = sub_1000608DC();
    v22 = v21;

    v23 = sub_100046270(v20, v22, &v28);

    *(v4 + 4) = v23;
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v24;
    *v5 = v24;
    _os_log_impl(&_mh_execute_header, v1, v2, "FaceTimeVoicemailManager failed to set messages %s as undeleted with error: %@", v4, 0x16u);
    sub_100020850(v5, &unk_10009A710);

    sub_100018230(v6);
  }

  else
  {
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_100044FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_1000492F8(&qword_1000995D0, type metadata accessor for VoicemailActor);
  v5 = sub_10006091C();

  return _swift_task_switch(sub_100045078, v5, v4);
}

uint64_t sub_100045078()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  sub_100017538(&qword_10009A700);
  v2 = sub_1000608CC();
  *(v0 + 48) = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_100049798;

  return sub_100043E2C(v2);
}

uint64_t sub_1000452E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_1000492F8(&qword_1000995D0, type metadata accessor for VoicemailActor);
  v5 = sub_10006091C();

  return _swift_task_switch(sub_1000453B0, v5, v4);
}

uint64_t sub_1000453B0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = _Block_copy(*(v0 + 16));
  *(v0 + 40) = v3;
  *(v0 + 48) = _Block_copy(v1);
  _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_100045494;
  v6 = *(v0 + 32);

  return sub_100047DE4(v6, v3);
}

uint64_t sub_100045494()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v7 = *v0;

  _Block_release(v2);
  _Block_release(v2);

  sub_100017538(&qword_10009A700);
  isa = sub_1000608BC().super.isa;

  (v1)[2](v1, isa);

  _Block_release(v1);
  v5 = *(v7 + 8);

  return v5();
}