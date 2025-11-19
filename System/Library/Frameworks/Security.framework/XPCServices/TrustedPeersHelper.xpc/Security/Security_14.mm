unint64_t sub_100188FB0(uint64_t a1, uint64_t a2)
{
  sub_100216DB4(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = sub_100216E64();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_100189034(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  v5 = 8 * v4;
  if ((v3 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v24 = v4;
    v25 = v1;
    v23 = &v23;
    __chkstk_darwin(a1, v5);
    v7 = &v23 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v7, v6);
    v8 = 0;
    v9 = 0;
    v10 = 1 << *(v2 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v2 + 56);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v4 = v14 | (v9 << 6);
      if ([*(*(v2 + 48) + 8 * v4) status] == 1)
      {
        *&v7[(v4 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v4;
        if (__OFADD__(v8++, 1))
        {
          __break(1u);
          return sub_10018AD50(v7, v24, v8, v2, &qword_10029D598, &qword_1002264E8);
        }
      }
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v13)
      {
        return sub_10018AD50(v7, v24, v8, v2, &qword_10029D598, &qword_1002264E8);
      }

      v16 = *(v2 + 56 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:
    v19 = v1;
    v20 = v5;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v5 = v20;
    v1 = v19;
  }

  v21 = swift_slowAlloc();
  v22 = sub_10018A9C8(v21, v4, v2, sub_10018A7DC);

  return v22;
}

uint64_t sub_10018929C(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  v5 = 8 * v4;
  if ((v3 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v24 = v4;
    v25 = v1;
    v23 = &v23;
    __chkstk_darwin(a1, v5);
    v7 = &v23 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v7, v6);
    v8 = 0;
    v9 = 0;
    v10 = 1 << *(v2 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v2 + 56);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v4 = v14 | (v9 << 6);
      if ([*(*(v2 + 48) + 8 * v4) status] == 2)
      {
        *&v7[(v4 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v4;
        if (__OFADD__(v8++, 1))
        {
          __break(1u);
          return sub_10018AD50(v7, v24, v8, v2, &qword_10029D598, &qword_1002264E8);
        }
      }
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v13)
      {
        return sub_10018AD50(v7, v24, v8, v2, &qword_10029D598, &qword_1002264E8);
      }

      v16 = *(v2 + 56 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:
    v19 = v1;
    v20 = v5;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v5 = v20;
    v1 = v19;
  }

  v21 = swift_slowAlloc();
  v22 = sub_10018A9C8(v21, v4, v2, sub_10018A694);

  return v22;
}

uint64_t sub_100189504(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  v5 = 8 * v4;
  if ((v3 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v24 = v4;
    v25 = v1;
    v23 = &v23;
    __chkstk_darwin(a1, v5);
    v7 = &v23 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v7, v6);
    v8 = 0;
    v9 = 0;
    v10 = 1 << *(v2 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v2 + 56);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v4 = v14 | (v9 << 6);
      if ([*(*(v2 + 48) + 8 * v4) status] == 5)
      {
        *&v7[(v4 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v4;
        if (__OFADD__(v8++, 1))
        {
          __break(1u);
          return sub_10018AD50(v7, v24, v8, v2, &qword_10029D598, &qword_1002264E8);
        }
      }
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v13)
      {
        return sub_10018AD50(v7, v24, v8, v2, &qword_10029D598, &qword_1002264E8);
      }

      v16 = *(v2 + 56 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:
    v19 = v1;
    v20 = v5;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v5 = v20;
    v1 = v19;
  }

  v21 = swift_slowAlloc();
  v22 = sub_10018A9C8(v21, v4, v2, sub_10018A54C);

  return v22;
}

uint64_t sub_10018976C(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  v5 = 8 * v4;
  if ((v3 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v24 = v4;
    v25 = v1;
    v23 = &v23;
    __chkstk_darwin(a1, v5);
    v7 = &v23 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v7, v6);
    v8 = 0;
    v9 = 0;
    v10 = 1 << *(v2 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v2 + 56);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v4 = v14 | (v9 << 6);
      if ([*(*(v2 + 48) + 8 * v4) status] == 3)
      {
        *&v7[(v4 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v4;
        if (__OFADD__(v8++, 1))
        {
          __break(1u);
          return sub_10018AD50(v7, v24, v8, v2, &qword_10029D598, &qword_1002264E8);
        }
      }
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v13)
      {
        return sub_10018AD50(v7, v24, v8, v2, &qword_10029D598, &qword_1002264E8);
      }

      v16 = *(v2 + 56 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:
    v19 = v1;
    v20 = v5;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v5 = v20;
    v1 = v19;
  }

  v21 = swift_slowAlloc();
  v22 = sub_10018A9C8(v21, v4, v2, sub_10018A404);

  return v22;
}

uint64_t sub_1001899D4(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  v5 = 8 * v4;
  if ((v3 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v24 = v4;
    v25 = v1;
    v23 = &v23;
    __chkstk_darwin(a1, v5);
    v7 = &v23 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v7, v6);
    v8 = 0;
    v9 = 0;
    v10 = 1 << *(v2 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v2 + 56);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v4 = v14 | (v9 << 6);
      if ([*(*(v2 + 48) + 8 * v4) status] == 4)
      {
        *&v7[(v4 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v4;
        if (__OFADD__(v8++, 1))
        {
          __break(1u);
          return sub_10018AD50(v7, v24, v8, v2, &qword_10029D598, &qword_1002264E8);
        }
      }
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v13)
      {
        return sub_10018AD50(v7, v24, v8, v2, &qword_10029D598, &qword_1002264E8);
      }

      v16 = *(v2 + 56 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:
    v19 = v1;
    v20 = v5;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v5 = v20;
    v1 = v19;
  }

  v21 = swift_slowAlloc();
  v22 = sub_10018A9C8(v21, v4, v2, sub_10018A2BC);

  return v22;
}

uint64_t sub_100189C3C(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  v5 = 8 * v4;
  if ((v3 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v24 = v4;
    v25 = v1;
    v23 = &v23;
    __chkstk_darwin(a1, v5);
    v7 = &v23 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v7, v6);
    v8 = 0;
    v9 = 0;
    v10 = 1 << *(v2 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v2 + 56);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v4 = v14 | (v9 << 6);
      if (![*(*(v2 + 48) + 8 * v4) status])
      {
        *&v7[(v4 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v4;
        if (__OFADD__(v8++, 1))
        {
          __break(1u);
          return sub_10018AD50(v7, v24, v8, v2, &qword_10029D598, &qword_1002264E8);
        }
      }
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v13)
      {
        return sub_10018AD50(v7, v24, v8, v2, &qword_10029D598, &qword_1002264E8);
      }

      v16 = *(v2 + 56 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:
    v19 = v1;
    v20 = v5;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v5 = v20;
    v1 = v19;
  }

  v21 = swift_slowAlloc();
  v22 = sub_10018A9C8(v21, v4, v2, sub_10018A178);

  return v22;
}

uint64_t sub_100189EA0(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void *, uint64_t, uint64_t))
{
  v7 = a3;
  v41 = a1;
  v9 = *(a3 + 32);
  v10 = ((1 << v9) + 63) >> 6;
  v11 = 8 * v10;
  if ((v9 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v35 = v10;
    v36 = a4;
    v37 = a5;
    v42 = v6;
    v39 = &v35;
    __chkstk_darwin(a1, v11);
    v38 = &v35 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v38, v12);
    v40 = 0;
    v13 = 0;
    v14 = v7 + 56;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 56);
    v18 = (v15 + 63) >> 6;
    while (v17)
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_12:
      v10 = v19 | (v13 << 6);
      v22 = v7;
      v43 = *(*(v7 + 48) + 8 * v10);
      v23 = v43;
      v6 = v42;
      v24 = v41(&v43);
      v42 = v6;
      if (v6)
      {

        return swift_willThrow();
      }

      v25 = v24;

      v7 = v22;
      if (v25)
      {
        *&v38[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
        if (__OFADD__(v40++, 1))
        {
          __break(1u);
          return sub_10018AD50(v38, v35, v40, v7, v36, v37);
        }
      }
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        return sub_10018AD50(v38, v35, v40, v7, v36, v37);
      }

      v21 = *(v14 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    v28 = a4;
    v29 = a5;
    v30 = v6;
    v31 = a6;
    v32 = v11;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v11 = v32;
    v6 = v30;
    a5 = v29;
    a4 = v28;
  }

  v33 = swift_slowAlloc();
  v34 = sub_10018AA50(v33, v10, v7, v41, a2, v31);

  if (!v30)
  {
    return v34;
  }

  return result;
}

unint64_t *sub_10018A178(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    result = [*(*(a3 + 48) + 8 * v15) status];
    if (!result)
    {
      *(v4 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_10018AD50(v4, a2, v5, a3, &qword_10029D598, &qword_1002264E8);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_15;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_10018A2BC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    result = [*(*(a3 + 48) + 8 * v15) status];
    if (result == 4)
    {
      *(v4 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_10018AD50(v4, a2, v5, a3, &qword_10029D598, &qword_1002264E8);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_15;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_10018A404(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    result = [*(*(a3 + 48) + 8 * v15) status];
    if (result == 3)
    {
      *(v4 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_10018AD50(v4, a2, v5, a3, &qword_10029D598, &qword_1002264E8);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_15;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_10018A54C(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    result = [*(*(a3 + 48) + 8 * v15) status];
    if (result == 5)
    {
      *(v4 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_10018AD50(v4, a2, v5, a3, &qword_10029D598, &qword_1002264E8);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_15;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_10018A694(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    result = [*(*(a3 + 48) + 8 * v15) status];
    if (result == 2)
    {
      *(v4 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_10018AD50(v4, a2, v5, a3, &qword_10029D598, &qword_1002264E8);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_15;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_10018A7DC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    result = [*(*(a3 + 48) + 8 * v15) status];
    if (result == 1)
    {
      *(v4 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_10018AD50(v4, a2, v5, a3, &qword_10029D598, &qword_1002264E8);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_15;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_10018A924(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1001A5590(v9, a2, a3, a4, a5);
    v11 = v10;
    swift_bridgeObjectRelease_n();

    return v11;
  }

  return result;
}

void *sub_10018A9C8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

void *sub_10018AA50(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a6(result, a2, a3);

    return v10;
  }

  return result;
}

uint64_t sub_10018AB04(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_10001148C(&qword_10029D5A8, &qword_1002264F8);
  result = sub_100216FB4();
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
    sub_100217264();

    sub_1002169C4();
    result = sub_100217284();
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

uint64_t sub_10018AD50(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = &_swiftEmptySetSingleton;
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  sub_10001148C(a5, a6);
  result = sub_100216FB4();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = v11[5];
    v19 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    result = sub_100216DB4(v18);
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
        v27 = *(v14 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(v11[6] + 8 * v23) = v19;
    ++v11[2];
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
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

uint64_t sub_10018AF3C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1002170F4();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_100217024();
  *v1 = result;
  return result;
}

uint64_t sub_10018B000(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_100217264();
  sub_1002169C4();
  v9 = sub_100217284();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1002171A4() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_10018BC54(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10018B150(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_100216F54(*(*v2 + 40));
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_100019390(*(v6 + 48) + 40 * v9, v17);
      v11 = sub_100216F64();
      sub_1000193EC(v17);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1000193EC(a2);
    sub_100019390(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    v12 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100019390(a2, v17);
    v16 = *v3;
    sub_10018BDD4(v17, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v16;
    v14 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v14;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_10018B29C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_100216EF4();

    if (v9)
    {

      type metadata accessor for PolicyMO();
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = sub_100216ED4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_10018BA5C(v7, result + 1, &qword_10029D600, &qword_100226540, type metadata accessor for PolicyMO);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_100188D90(v21 + 1, &qword_10029D600, &qword_100226540);
    }

    v19 = v8;
    sub_100188FB0(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  type metadata accessor for PolicyMO();
  v11 = sub_100216DB4(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_10018BF4C(v19, v13, isUniquelyReferenced_nonNull_native, &qword_10029D600, &qword_100226540, type metadata accessor for PolicyMO);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_100216DC4();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

uint64_t sub_10018B50C(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_100217254();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_10018C0D0(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10018B5EC(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_100216EF4();

    if (v9)
    {

      type metadata accessor for MachineMO();
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = sub_100216ED4();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_10018BA5C(v7, result + 1, &qword_10029D598, &qword_1002264E8, type metadata accessor for MachineMO);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_100188D90(v21 + 1, &qword_10029D598, &qword_1002264E8);
    }

    v19 = v8;
    sub_100188FB0(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  type metadata accessor for MachineMO();
  v11 = sub_100216DB4(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_10018BF4C(v19, v13, isUniquelyReferenced_nonNull_native, &qword_10029D598, &qword_1002264E8, type metadata accessor for MachineMO);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_100216DC4();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

Swift::Int sub_10018B85C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    sub_10001148C(a3, a4);
    v10 = sub_100216FA4();
    v23 = v10;
    sub_100216E84();
    if (sub_100216F14())
    {
      sub_10000200C(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_100188D90(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = sub_100216DB4(*(v23 + 40));
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_100216F14());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v10;
}

Swift::Int sub_10018BA5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (a2)
  {
    sub_10001148C(a3, a4);
    v8 = sub_100216FA4();
    v21 = v8;
    sub_100216E84();
    if (sub_100216F14())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v15 = *(v8 + 16);
        if (*(v8 + 24) <= v15)
        {
          sub_100188D90(v15 + 1, a3, a4);
        }

        v8 = v21;
        result = sub_100216DB4(*(v21 + 40));
        v10 = v21 + 56;
        v11 = -1 << *(v21 + 32);
        v12 = result & ~v11;
        v13 = v12 >> 6;
        if (((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6))) != 0)
        {
          v14 = __clz(__rbit64((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = 0;
          v17 = (63 - v11) >> 6;
          do
          {
            if (++v13 == v17 && (v16 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v18 = v13 == v17;
            if (v13 == v17)
            {
              v13 = 0;
            }

            v16 |= v18;
            v19 = *(v10 + 8 * v13);
          }

          while (v19 == -1);
          v14 = __clz(__rbit64(~v19)) + (v13 << 6);
        }

        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        *(*(v21 + 48) + 8 * v14) = v20;
        ++*(v21 + 16);
      }

      while (sub_100216F14());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v8;
}

Swift::Int sub_10018BC54(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100188698(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10018C1F0();
      goto LABEL_16;
    }

    sub_10018C744(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_100217264();
  sub_1002169C4();
  result = sub_100217284();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1002171A4();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1002171B4();
  __break(1u);
  return result;
}

Swift::Int sub_10018BDD4(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1001888F8(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_10018C34C();
      goto LABEL_12;
    }

    sub_10018C97C(v7 + 1);
  }

  v9 = *v3;
  result = sub_100216F54(*(*v3 + 40));
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      sub_100019390(*(v9 + 48) + 40 * a2, v19);
      v12 = sub_100216F64();
      result = sub_1000193EC(v19);
      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v14 = *(v13 + 48) + 40 * a2;
  v15 = *(v6 + 16);
  *v14 = *v6;
  *(v14 + 16) = v15;
  *(v14 + 32) = *(v6 + 32);
  v16 = *(v13 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v13 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1002171B4();
  __break(1u);
  return result;
}

void sub_10018BF4C(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_100188D90(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      sub_10018C604(a4, a5);
      goto LABEL_12;
    }

    v11 = a6;
    sub_10000595C(v9 + 1, a4, a5);
  }

  v12 = *v6;
  v13 = sub_100216DB4(*(*v6 + 40));
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v11(0);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = sub_100216DC4();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1002171B4();
  __break(1u);
}

uint64_t sub_10018C0D0(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100188B6C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_10018C4C4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_10018CBA8(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_100217254();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1002171B4();
  __break(1u);
  return result;
}

void *sub_10018C1F0()
{
  v1 = v0;
  sub_10001148C(&qword_10029D5A8, &qword_1002264F8);
  v2 = *v0;
  v3 = sub_100216F84();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

void *sub_10018C34C()
{
  v1 = v0;
  sub_10001148C(&qword_10029D8F8, &qword_100226698);
  v2 = *v0;
  v3 = sub_100216F84();
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
        v17 = 40 * (v14 | (v8 << 6));
        result = sub_100019390(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
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

void *sub_10018C4C4()
{
  v1 = v0;
  sub_10001148C(&qword_10029D5F8, &qword_100226538);
  v2 = *v0;
  v3 = sub_100216F84();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

id sub_10018C604(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10001148C(a1, a2);
  v4 = *v2;
  v5 = sub_100216F84();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_10018C744(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10001148C(&qword_10029D5A8, &qword_1002264F8);
  result = sub_100216F94();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_100217264();

      sub_1002169C4();
      result = sub_100217284();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10018C97C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10001148C(&qword_10029D8F8, &qword_100226698);
  result = sub_100216F94();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      sub_100019390(*(v3 + 48) + 40 * (v17 | (v7 << 6)), v28);
      result = sub_100216F54(*(v6 + 40));
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 40 * v13;
      v15 = v28[0];
      v16 = v28[1];
      *(v14 + 32) = v29;
      *v14 = v15;
      *(v14 + 16) = v16;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10018CBA8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10001148C(&qword_10029D5F8, &qword_100226538);
  result = sub_100216F94();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_100217254();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_10018CD98(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1002170F4();
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
      result = sub_1002170F4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1001AC36C(&qword_10029D7E0, &qword_10029D7D8, &qword_100226608);
          for (i = 0; i != v6; ++i)
          {
            sub_10001148C(&qword_10029D7D8, &qword_100226608);
            v9 = sub_10018CF4C(v13, i, a3);
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
        sub_10000200C(0, &qword_100297F68, CKRecord_ptr);
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

void (*sub_10018CF4C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100217014();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10018CFCC;
  }

  __break(1u);
  return result;
}

Swift::Int sub_10018CFD4()
{
  if (sub_1002170B4())
  {
    sub_10001148C(&unk_10029D800, &unk_100226620);
    v0 = sub_100217144();
  }

  else
  {
    v0 = &_swiftEmptyDictionarySingleton;
  }

  v22 = v0;
  sub_1002170A4();
  swift_unknownObjectRetain();
  v1 = sub_1002170D4();
  if (v1)
  {
    v2 = v1;
    sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
    v3 = v2;
    do
    {
      v20 = v3;
      swift_dynamicCast();
      sub_10000200C(0, &unk_10029D810, TPPolicyDocument_ptr);
      swift_dynamicCast();
      v11 = [v20 protobuf];
      v12 = sub_100216224();
      v14 = v13;

      v15 = v0[2];
      if (v0[3] <= v15)
      {
        sub_100184310(v15 + 1, 1);
      }

      v0 = v22;
      result = sub_100216DB4(v22[5]);
      v5 = (v22 + 8);
      v6 = -1 << *(v22 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~v22[(v7 >> 6) + 8]) != 0)
      {
        v9 = __clz(__rbit64((-1 << v7) & ~v22[(v7 >> 6) + 8])) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v16 = 0;
        v17 = (63 - v6) >> 6;
        do
        {
          if (++v8 == v17 && (v16 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v18 = v8 == v17;
          if (v8 == v17)
          {
            v8 = 0;
          }

          v16 |= v18;
          v19 = *&v5[8 * v8];
        }

        while (v19 == -1);
        v9 = __clz(__rbit64(~v19)) + (v8 << 6);
      }

      *&v5[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
      *(v22[6] + 8 * v9) = v21;
      v10 = (v22[7] + 16 * v9);
      *v10 = v12;
      v10[1] = v14;
      ++v22[2];
      v3 = sub_1002170D4();
    }

    while (v3);
  }

  return v0;
}

uint64_t sub_10018D25C(uint64_t (*a1)(id *, id *), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1001EFED4(v6);
    *v3 = v6;
  }

  v9 = *(v6 + 16);
  sub_10018D2F4(a1, a2);
  return sub_100217054();
}

void sub_10018D2F4(uint64_t (*a1)(id *, id *), uint64_t a2)
{
  v5 = *(v2 + 8);
  v6 = sub_100217164(v5);
  if (v6 < v5)
  {
    if (v5 >= -1)
    {
      v7 = v6;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
        v9 = sub_100216B54();
        *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFF8;
      v11[0] = ((v9 & 0xFFFFFFFFFFFFFF8) + 32);
      v11[1] = v8;
      sub_10018D518(v11, v12, v2, a1, a2, v7);
      *(v10 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    sub_10018D418(0, v5, 1, a1);
  }
}

void sub_10018D418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void **, void **))
{
  if (a3 != a2)
  {
    v7 = *v4;
    v8 = (*v4 + 8 * a3 - 8);
    v9 = a1 - a3;
LABEL_4:
    v19 = v8;
    v20 = a3;
    v10 = *(v7 + 8 * a3);
    v18 = v9;
    while (1)
    {
      v22 = v10;
      v21 = *v8;
      v11 = v21;
      v12 = v10;
      v13 = v11;
      v14 = a4(&v22, &v21);

      if (v5)
      {
        break;
      }

      if (v14)
      {
        if (!v7)
        {
          __break(1u);
          return;
        }

        v15 = *v8;
        v10 = v8[1];
        *v8 = v10;
        v8[1] = v15;
        --v8;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      a3 = v20 + 1;
      v8 = v19 + 1;
      v9 = v18 - 1;
      if (v20 + 1 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_10018D518(void ***a1, uint64_t a2, void **a3, uint64_t (*a4)(id *, id *), uint64_t a5, uint64_t a6)
{
  v9 = a3;
  v10 = a3[1];
  if (v10 < 1)
  {
    v12 = _swiftEmptyArrayStorage;
LABEL_90:
    v7 = v9;
    v9 = *a1;
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

  v11 = 0;
  v12 = _swiftEmptyArrayStorage;
  while (1)
  {
    v13 = v11 + 1;
    if (v11 + 1 < v10)
    {
      v97 = v10;
      v7 = *v9;
      v14 = *(*v9 + v13);
      v105 = *(*v9 + v11);
      v15 = v105;
      v106 = v14;
      v16 = v14;
      v17 = v15;
      v100 = a4(&v106, &v105);
      if (v6)
      {

        return;
      }

      v18 = 8 * v11;
      v19 = &v7[v11 + 2];
      v95 = v11;
      while (v97 - 2 != v11)
      {
        v20 = *v19;
        v105 = *(v19 - 1);
        v21 = v105;
        v106 = v20;
        v22 = v20;
        v7 = v21;
        LODWORD(v21) = a4(&v106, &v105);

        ++v11;
        ++v19;
        if ((v100 ^ v21))
        {
          v13 = v11 + 1;
          goto LABEL_11;
        }
      }

      v11 = v97 - 1;
      v13 = v97;
LABEL_11:
      v9 = a3;
      if (v100)
      {
        if (v13 < v95)
        {
          goto LABEL_124;
        }

        v23 = v95 <= v11;
        v11 = v95;
        if (v23)
        {
          v24 = 8 * v13 - 8;
          v25 = v13;
          v26 = v95;
          do
          {
            if (v26 != --v25)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_128;
              }

              v28 = *&v27[v18];
              *&v27[v18] = *&v27[v24];
              *&v27[v24] = v28;
            }

            ++v26;
            v24 -= 8;
            v18 += 8;
          }

          while (v26 < v25);
        }
      }

      else
      {
        v11 = v95;
      }
    }

    v29 = v9[1];
    if (v13 >= v29)
    {
      goto LABEL_133;
    }

    if (__OFSUB__(v13, v11))
    {
      goto LABEL_120;
    }

    if (v13 - v11 >= a6)
    {
      goto LABEL_133;
    }

    v30 = (v11 + a6);
    if (__OFADD__(v11, a6))
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

    if (v30 >= v29)
    {
      v30 = v9[1];
    }

    if (v30 < v11)
    {
      goto LABEL_123;
    }

    if (v13 == v30)
    {
LABEL_133:
      if (v13 < v11)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v77 = a5;
      v78 = *v9;
      v7 = (*v9 + 8 * v13 - 8);
      v96 = v11;
      v79 = v11 - v13;
      v92 = v30;
      do
      {
        v101 = v7;
        v103 = v13;
        v80 = v78[v13];
        v98 = v79;
        do
        {
          v105 = *v7;
          v81 = v105;
          v106 = v80;
          v82 = v80;
          v83 = v81;
          v84 = a4(&v106, &v105);
          if (v6)
          {

            return;
          }

          v85 = v84;

          if ((v85 & 1) == 0)
          {
            break;
          }

          if (!v78)
          {
            goto LABEL_126;
          }

          v86 = *v7;
          v80 = v7[1];
          *v7 = v80;
          v7[1] = v86;
          --v7;
        }

        while (!__CFADD__(v79++, 1));
        v13 = v103 + 1;
        v7 = v101 + 1;
        v79 = v98 - 1;
      }

      while ((v103 + 1) != v92);
      v13 = v92;
      a5 = v77;
      v9 = a3;
      v11 = v96;
      if (v92 < v96)
      {
        goto LABEL_119;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_100182E9C(0, *(v12 + 2) + 1, 1, v12);
    }

    v32 = *(v12 + 2);
    v31 = *(v12 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      v12 = sub_100182E9C((v31 > 1), v32 + 1, 1, v12);
    }

    *(v12 + 2) = v33;
    v34 = &v12[16 * v32];
    *(v34 + 4) = v11;
    *(v34 + 5) = v13;
    v102 = v13;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (v32)
    {
      break;
    }

LABEL_3:
    v10 = v9[1];
    v11 = v102;
    if (v102 >= v10)
    {
      goto LABEL_90;
    }
  }

  while (1)
  {
    v35 = v33 - 1;
    if (v33 >= 4)
    {
      v40 = &v12[16 * v33 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_106;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_107;
      }

      v47 = &v12[16 * v33];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_109;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_112;
      }

      if (v51 >= v43)
      {
        v69 = &v12[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_118;
        }

        if (v38 < v72)
        {
          v35 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

    if (v33 == 3)
    {
      v36 = *(v12 + 4);
      v37 = *(v12 + 5);
      v46 = __OFSUB__(v37, v36);
      v38 = v37 - v36;
      v39 = v46;
LABEL_49:
      if (v39)
      {
        goto LABEL_108;
      }

      v52 = &v12[16 * v33];
      v54 = *v52;
      v53 = *(v52 + 1);
      v55 = __OFSUB__(v53, v54);
      v56 = v53 - v54;
      v57 = v55;
      if (v55)
      {
        goto LABEL_111;
      }

      v58 = &v12[16 * v35 + 32];
      v60 = *v58;
      v59 = *(v58 + 1);
      v46 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v46)
      {
        goto LABEL_114;
      }

      if (__OFADD__(v56, v61))
      {
        goto LABEL_115;
      }

      if (v56 + v61 >= v38)
      {
        if (v38 < v61)
        {
          v35 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_63;
    }

    v62 = &v12[16 * v33];
    v64 = *v62;
    v63 = *(v62 + 1);
    v46 = __OFSUB__(v63, v64);
    v56 = v63 - v64;
    v57 = v46;
LABEL_63:
    if (v57)
    {
      goto LABEL_110;
    }

    v65 = &v12[16 * v35];
    v67 = *(v65 + 4);
    v66 = *(v65 + 5);
    v46 = __OFSUB__(v66, v67);
    v68 = v66 - v67;
    if (v46)
    {
      goto LABEL_113;
    }

    if (v68 < v56)
    {
      goto LABEL_3;
    }

LABEL_70:
    v73 = v35 - 1;
    if (v35 - 1 >= v33)
    {
      break;
    }

    if (!*v9)
    {
      goto LABEL_125;
    }

    v74 = *&v12[16 * v73 + 32];
    v75 = *&v12[16 * v35 + 40];
    sub_10018DBE4(*v9 + v74, *v9 + *&v12[16 * v35 + 32], *v9 + v75, v7, a4);
    if (v6)
    {
      goto LABEL_100;
    }

    if (v75 < v74)
    {
      goto LABEL_104;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1001EFD00(v12);
    }

    if (v73 >= *(v12 + 2))
    {
      goto LABEL_105;
    }

    v76 = &v12[16 * v73];
    *(v76 + 4) = v74;
    *(v76 + 5) = v75;
    v107 = v12;
    sub_1001EFC74(v35);
    v12 = v107;
    v33 = *(v107 + 2);
    if (v33 <= 1)
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
  v12 = sub_1001EFD00(v12);
LABEL_92:
  v107 = v12;
  v88 = *(v12 + 2);
  if (v88 < 2)
  {
LABEL_100:
  }

  else
  {
    while (*v7)
    {
      v89 = *&v12[16 * v88];
      v90 = *&v12[16 * v88 + 24];
      sub_10018DBE4(*v7 + v89, *v7 + *&v12[16 * v88 + 16], *v7 + v90, v9, a4);
      if (v6)
      {
        goto LABEL_100;
      }

      if (v90 < v89)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1001EFD00(v12);
      }

      if (v88 - 2 >= *(v12 + 2))
      {
        goto LABEL_117;
      }

      v91 = &v12[16 * v88];
      *v91 = v89;
      *(v91 + 1) = v90;
      v107 = v12;
      sub_1001EFC74(v88 - 1);
      v12 = v107;
      v88 = *(v107 + 2);
      if (v88 <= 1)
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

uint64_t sub_10018DBE4(id *__src, id *a2, id *a3, uint64_t __dst, uint64_t (*a5)(id *, id *))
{
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    v14 = __dst;
    if (__dst != __src || &__src[v10] <= __dst)
    {
      memmove(__dst, __src, 8 * v10);
    }

    v52 = &v14[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_51;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = v6;
      v54 = *v6;
      v17 = v14;
      v53 = *v14;
      v18 = v53;
      v19 = v54;
      v20 = v18;
      v21 = a5(&v54, &v53);
      if (__dsta)
      {

        v43 = &v52[-v17 + 7];
        if (&v52[-v17] >= 0)
        {
          v43 = &v52[-v17];
        }

        if (v7 < v17 || v7 >= v17 + (v43 & 0xFFFFFFFFFFFFFFF8) || v7 != v17)
        {
          v42 = 8 * (v43 >> 3);
          v41 = v7;
          v40 = v17;
          goto LABEL_57;
        }

        return 1;
      }

      v22 = v21;

      __dsta = 0;
      if (v22)
      {
        break;
      }

      v15 = v17;
      v14 = (v17 + 8);
      v6 = v16;
      if (v7 != v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v14 >= v52)
      {
        goto LABEL_10;
      }
    }

    v15 = v16;
    v6 = v16 + 1;
    v14 = v17;
    if (v7 == v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (__dst != a2 || &a2[v13] <= __dst)
  {
    v23 = __dst;
    memmove(__dst, a2, 8 * v13);
    __dst = v23;
  }

  __srca = __dst;
  v52 = (__dst + 8 * v13);
  if (v11 < 8)
  {
    v14 = __dst;
  }

  else
  {
    v24 = __dsta;
    if (v6 <= v7)
    {
      v14 = __dst;
    }

    else
    {
      v25 = -__dst;
      v46 = -__dst;
      v47 = v7;
      while (2)
      {
        v26 = v24;
        __dstb = v6;
        v27 = v6 - 1;
        v28 = v52;
        v29 = &v52[v25];
        --v5;
        while (1)
        {
          v30 = *--v28;
          v54 = v30;
          v31 = v27;
          v53 = *v27;
          v32 = v53;
          v33 = v30;
          v34 = v32;
          v35 = a5(&v54, &v53);
          if (v26)
          {

            if (v29 >= 0)
            {
              v38 = v29;
            }

            else
            {
              v38 = v29 + 7;
            }

            v39 = v38 >> 3;
            v40 = __srca;
            v41 = __dstb;
            if (__dstb < __srca || __dstb >= (__srca + (v38 & 0xFFFFFFFFFFFFFFF8)))
            {
              memmove(__dstb, __srca, 8 * v39);
              return 1;
            }

            if (__dstb == __srca)
            {
              return 1;
            }

            v42 = 8 * v39;
            goto LABEL_57;
          }

          v36 = v35;

          v37 = (v5 + 1);
          if (v36)
          {
            break;
          }

          v27 = v31;
          if (v37 != v52)
          {
            *v5 = *v28;
          }

          v29 -= 8;
          --v5;
          v52 = v28;
          if (v28 <= __srca)
          {
            v52 = v28;
            v6 = __dstb;
            v14 = __srca;
            goto LABEL_51;
          }
        }

        v6 = v31;
        if (v37 != __dstb)
        {
          *v5 = *v31;
        }

        v14 = __srca;
        v24 = 0;
        if (v52 > __srca)
        {
          v25 = v46;
          if (v31 > v47)
          {
            continue;
          }
        }

        break;
      }
    }
  }

LABEL_51:
  v44 = v52 - v14 + 7;
  if (v52 - v14 >= 0)
  {
    v44 = v52 - v14;
  }

  if (v6 < v14 || v6 >= &v14[v44 & 0xFFFFFFFFFFFFFFF8] || v6 != v14)
  {
    v42 = 8 * (v44 >> 3);
    v41 = v6;
    v40 = v14;
LABEL_57:
    memmove(v41, v40, v42);
  }

  return 1;
}

uint64_t sub_10018DFAC(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = sub_100216F24();

    if (v7)
    {
      v8 = sub_10018E40C();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
  v11 = sub_100216DB4(*(v3 + 40));
  v12 = -1 << *(v3 + 32);
  v13 = v11 & ~v12;
  if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v3 + 48) + 8 * v13);
    v16 = sub_100216DC4();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  v17 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v10;
  v21 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10018C604(&qword_10029D838, &qword_100226630);
    v19 = v21;
  }

  v20 = *(*(v19 + 48) + 8 * v13);
  sub_10018E594(v13);
  result = v20;
  *v10 = v21;
  return result;
}

uint64_t sub_10018E154(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_100217264();
  sub_1002169C4();
  v7 = sub_100217284();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1002171A4() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10018C1F0();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_10018E734(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_10018E290()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_100216ED4();
  v4 = swift_unknownObjectRetain();
  v5 = sub_10018BA5C(v4, v3, &qword_10029D908, &unk_1002266A8, type metadata accessor for BottleMO);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_100216DB4(v6);
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    type metadata accessor for BottleMO();
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_100216DC4();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_10018E594(v9);
  result = sub_100216DC4();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10018E40C()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_100216ED4();
  v4 = swift_unknownObjectRetain();
  v5 = sub_10018B85C(v4, v3, &qword_10029D838, &qword_100226630, &qword_100297D68, TPPolicyVersion_ptr);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_100216DB4(v6);
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_100216DC4();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_10018E594(v9);
  result = sub_100216DC4();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10018E594(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_100216E54();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_100216DB4(v11);

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_10018E734(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_100216E54();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_100217264();

        sub_1002169C4();
        v15 = sub_100217284();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_10018E8F8(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_10018E154(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void *sub_10018EA24(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v56 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v60 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v64 = a2 + 7;

  v15 = 0;
  v62 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v63 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = v5[5];
    sub_100217264();

    sub_1002169C4();
    v24 = sub_100217284();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v62;
    v15 = v63;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (v5[6] + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (sub_1002171A4() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v62;
  v28 = v63;
  v66 = v60;
  v67 = v63;
  v68 = v11;
  v65[0] = v62;
  v65[1] = v7;

  v31 = *(v5 + 32);
  v57 = ((1 << v31) + 63) >> 6;
  v14 = 8 * v57;
  if ((v31 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v58 = &v56;
    __chkstk_darwin(v29, v30);
    v2 = &v56 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v64, v32);
    v33 = *(v2 + 8 * v8) & ~v4;
    v34 = v5[2];
    v61 = v2;
    *(v2 + 8 * v8) = v33;
    v35 = v34 - 1;
LABEL_23:
    v59 = v35;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v37 = v28;
    while (1)
    {
      v38 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v38 >= v12)
      {
        v5 = sub_10018AB04(v61, v57, v59, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v38);
      ++v37;
      if (v11)
      {
        v28 = v38;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v39 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v40 = *(v3 + 48);
            v63 = v28;
            v41 = (v40 + ((v28 << 10) | (16 * v39)));
            v42 = *v41;
            v4 = v41[1];
            v43 = v5[5];
            sub_100217264();

            sub_1002169C4();
            v44 = sub_100217284();
            v45 = -1 << *(v5 + 32);
            v8 = v44 & ~v45;
            v2 = v8 >> 6;
            v46 = 1 << v8;
            if (((1 << v8) & v64[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v63;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v47 = (v5[6] + 16 * v8);
          if (*v47 != v42 || v47[1] != v4)
          {
            v49 = ~v45;
            while ((sub_1002171A4() & 1) == 0)
            {
              v8 = (v8 + 1) & v49;
              v2 = v8 >> 6;
              v46 = 1 << v8;
              if (((1 << v8) & v64[v8 >> 6]) == 0)
              {
                v3 = v62;
                goto LABEL_45;
              }

              v50 = (v5[6] + 16 * v8);
              if (*v50 == v42 && v50[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v62;
          v36 = v61[v2];
          v61[v2] = v36 & ~v46;
          v27 = (v36 & v46) == 0;
          v28 = v63;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v35 = v59 - 1;
        if (__OFSUB__(v59, 1))
        {
          __break(1u);
        }

        if (v59 == 1)
        {

          v5 = &_swiftEmptySetSingleton;
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v52 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v63;
  }

  v53 = swift_slowAlloc();
  memcpy(v53, v64, v52);
  v54 = v56;
  v55 = sub_10018F314(v53, v57, v5, v2, v65);

  if (!v54)
  {

    v60 = v66;
    v5 = v55;
LABEL_52:
    sub_10000D778();
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_10018EF94(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  v8 = 8 * (v6 >> 6);
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), v8 = v13, (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe, v8);
    v10 = &v16 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    v11 = sub_10018F134(v10, v7, v3, a2);
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_1001AB81C(v15, v7, v18);
    v11 = v18[0];
  }

  return v11;
}

uint64_t sub_10018F134(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v28 = a3 + 32;
  v8 = a4 + 56;
  v26 = result;
  v27 = v7;
  while (2)
  {
    v25 = v5;
    if (v6 != v7)
    {
      while (1)
      {
        while (1)
        {
          if (v6 >= v7)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return result;
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          v10 = (v28 + 16 * v6);
          v12 = *v10;
          v11 = v10[1];
          v13 = *(a4 + 40);
          sub_100217264();

          sub_1002169C4();
          v14 = sub_100217284();
          v15 = -1 << *(a4 + 32);
          v16 = v14 & ~v15;
          v17 = v16 >> 6;
          v18 = 1 << v16;
          if (((1 << v16) & *(v8 + 8 * (v16 >> 6))) != 0)
          {
            break;
          }

LABEL_5:
          v6 = v9;

          if (v9 == v7)
          {
            goto LABEL_24;
          }
        }

        v19 = (*(a4 + 48) + 16 * v16);
        if (*v19 != v12 || v19[1] != v11)
        {
          v21 = ~v15;
          while ((sub_1002171A4() & 1) == 0)
          {
            v16 = (v16 + 1) & v21;
            v17 = v16 >> 6;
            v18 = 1 << v16;
            if (((1 << v16) & *(v8 + 8 * (v16 >> 6))) == 0)
            {
              v7 = v27;
              goto LABEL_5;
            }

            v22 = (*(a4 + 48) + 16 * v16);
            if (*v22 == v12 && v22[1] == v11)
            {
              break;
            }
          }
        }

        v23 = v26[v17];
        v26[v17] = v23 | v18;
        if ((v23 & v18) == 0)
        {
          break;
        }

        v7 = v27;
        v6 = v9;
        if (v9 == v27)
        {
          goto LABEL_24;
        }
      }

      v5 = v25 + 1;
      v7 = v27;
      v6 = v9;
      if (!__OFADD__(v25, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_24:

  return sub_10018AB04(v26, a2, v25, a4);
}

unint64_t *sub_10018F314(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
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

          return sub_10018AB04(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        sub_100217264();

        sub_1002169C4();
        v20 = sub_100217284();
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
        while ((sub_1002171A4() & 1) == 0)
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

      return &_swiftEmptySetSingleton;
    }

    return result;
  }
}

void sub_10018F54C(unint64_t a1, void *a2, char a3)
{
  if ((*v3 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (*v3 < 0)
      {
        v5 = *v3;
      }

      sub_100216EE4();
      type metadata accessor for BottleMO();

      swift_dynamicCast();
      sub_10018E290();

      return;
    }

LABEL_25:
    __break(1u);
    return;
  }

  v7 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  if (a3)
  {
    v11 = v3;
    type metadata accessor for BottleMO();
    if (sub_100216EB4() != *(v10 + 36))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    sub_100216EC4();
    swift_dynamicCast();
    a2 = v17;
    v3 = v17;
    v12 = sub_100216DB4(*(v10 + 40));
    v13 = -1 << *(v10 + 32);
    a1 = v12 & ~v13;
    if ((*(v10 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(v10 + 48) + 8 * a1);
        v3 = sub_100216DC4();

        if (v3)
        {
          goto LABEL_18;
        }

        a1 = (a1 + 1) & v14;
      }

      while (((*(v10 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(v10 + 32) <= a1)
  {
    goto LABEL_23;
  }

  if (((*(v10 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v11 = v3;
  if (*(v10 + 36) != a2)
  {
    __break(1u);
LABEL_18:
  }

  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10018C604(&qword_10029D908, &unk_1002266A8);
  }

  v16 = *(*(v10 + 48) + 8 * a1);
  sub_10018E594(a1);
  *v11 = v10;
}

void sub_10018F7B0(unint64_t a1, int a2, char a3, uint64_t a4, void (*a5)(void))
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_100216F04();
      a5(0);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    a5(0);
    if (sub_100216EB4() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_100216EC4();
    swift_dynamicCast();
    v5 = v16;
    v9 = sub_100216DB4(*(a4 + 40));
    v10 = -1 << *(a4 + 32);
    a1 = v9 & ~v10;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * a1);
        v13 = sub_100216DC4();

        if (v13)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v11;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v14 = *(*(a4 + 48) + 8 * a1);

  v15 = v14;
}

void sub_10018F9BC(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_100216F04();
      sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
    if (sub_100216EB4() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_100216EC4();
    swift_dynamicCast();
    v4 = v14;
    v7 = sub_100216DB4(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = sub_100216DC4();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

void *sub_10018FBE0(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_10018FD34(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    v23 = v7;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v7 = 0;
    goto LABEL_32;
  }

  sub_100216E84();
  sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
  sub_1001A9AB8(&qword_100297E88, &qword_100297D68, TPPolicyVersion_ptr);
  result = sub_100216C04();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  v23 = v7;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v7 = 0;
    goto LABEL_32;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v7 = 0;
  v22 = v9;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_100216F14())
      {
        goto LABEL_30;
      }

      sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v13 == a3)
    {
      v7 = a3;
      goto LABEL_30;
    }

    ++a2;
    v7 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v12 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v12;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
LABEL_32:
  *v23 = v4;
  v23[1] = v8;
  v23[2] = v9;
  v23[3] = v10;
  v23[4] = v11;
  return v7;
}

void *sub_10018FF74(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_100190100(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      if (v8)
      {
        v10 = __clz(__rbit64(v8));
        v56 = (v8 - 1) & v8;
        goto LABEL_13;
      }

      v11 = v4;
      do
      {
        v4 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
          goto LABEL_78;
        }

        if (v4 >= v9)
        {
          return 1;
        }

        v12 = *(v5 + 8 * v4);
        ++v11;
      }

      while (!v12);
      v10 = __clz(__rbit64(v12));
      v56 = (v12 - 1) & v12;
LABEL_13:
      v13 = 16 * (v10 | (v4 << 6));
      v14 = (*(v3 + 48) + v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = (*(v3 + 56) + v13);
      v19 = *v17;
      v18 = v17[1];

      sub_100012558(v19, v18);
      v20 = v16 == 0;
      if (!v16)
      {
        return v20;
      }

      v21 = sub_100015A28(v15, v16);
      v23 = v22;

      if ((v23 & 1) == 0)
      {
        goto LABEL_74;
      }

      v24 = (*(v2 + 56) + 16 * v21);
      v26 = *v24;
      v25 = v24[1];
      v27 = v25 >> 62;
      v28 = v18 >> 62;
      if (v25 >> 62 == 3)
      {
        if (v26)
        {
          v29 = 0;
        }

        else
        {
          v29 = v25 == 0xC000000000000000;
        }

        v30 = 0;
        v31 = v29 && v18 >> 62 == 3;
        if (v31 && !v19 && v18 == 0xC000000000000000)
        {
          v32 = 0;
          v33 = 0xC000000000000000;
          goto LABEL_49;
        }

LABEL_36:
        if (v28 <= 1)
        {
LABEL_37:
          if (!v28)
          {
            v37 = BYTE6(v18);
            goto LABEL_43;
          }

          LODWORD(v37) = HIDWORD(v19) - v19;
          if (!__OFSUB__(HIDWORD(v19), v19))
          {
            v37 = v37;
            goto LABEL_43;
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
        }
      }

      else if (v27 > 1)
      {
        if (v27 == 2)
        {
          v39 = *(v26 + 16);
          v38 = *(v26 + 24);
          v36 = __OFSUB__(v38, v39);
          v30 = v38 - v39;
          if (!v36)
          {
            goto LABEL_36;
          }

          goto LABEL_81;
        }

        v30 = 0;
        if (v28 <= 1)
        {
          goto LABEL_37;
        }
      }

      else if (v27)
      {
        LODWORD(v30) = HIDWORD(v26) - v26;
        if (__OFSUB__(HIDWORD(v26), v26))
        {
          goto LABEL_80;
        }

        v30 = v30;
        if (v28 <= 1)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v30 = BYTE6(v25);
        if (v28 <= 1)
        {
          goto LABEL_37;
        }
      }

      if (v28 == 2)
      {
        break;
      }

      if (v30)
      {
        goto LABEL_74;
      }

LABEL_48:
      v32 = v19;
      v33 = v18;
LABEL_49:
      sub_100002BF0(v32, v33);
      v3 = a1;
      v8 = v56;
    }

    v35 = *(v19 + 16);
    v34 = *(v19 + 24);
    v36 = __OFSUB__(v34, v35);
    v37 = v34 - v35;
    if (v36)
    {
      goto LABEL_79;
    }

LABEL_43:
    if (v30 != v37)
    {
      break;
    }

    if (v30 < 1)
    {
      goto LABEL_48;
    }

    if (v27 > 1)
    {
      if (v27 != 2)
      {
        memset(v58, 0, 14);
        sub_100012558(v26, v25);
        goto LABEL_64;
      }

      v51 = *(v26 + 24);
      v53 = *(v26 + 16);
      sub_100012558(v26, v25);
      v40 = sub_100216034();
      if (v40)
      {
        v41 = v40;
        v42 = sub_100216064();
        v43 = v53;
        if (__OFSUB__(v53, v42))
        {
          goto LABEL_84;
        }

        v50 = v53 - v42 + v41;
      }

      else
      {
        v50 = 0;
        v43 = v53;
      }

      if (__OFSUB__(v51, v43))
      {
        goto LABEL_83;
      }

      sub_100216054();
      v48 = v50;
LABEL_70:
      sub_10018257C(v48, v19, v18, v58);
      sub_100002BF0(v26, v25);
      sub_100002BF0(v19, v18);
      v47 = v58[0];
      goto LABEL_71;
    }

    if (v27)
    {
      if (v26 >> 32 < v26)
      {
        goto LABEL_82;
      }

      sub_100012558(v26, v25);
      v44 = sub_100216034();
      if (v44)
      {
        v52 = v44;
        v45 = sub_100216064();
        if (__OFSUB__(v26, v45))
        {
          goto LABEL_85;
        }

        v46 = v26 - v45 + v52;
      }

      else
      {
        v46 = 0;
      }

      sub_100216054();
      v48 = v46;
      goto LABEL_70;
    }

    v58[0] = v26;
    LOWORD(v58[1]) = v25;
    BYTE2(v58[1]) = BYTE2(v25);
    BYTE3(v58[1]) = BYTE3(v25);
    BYTE4(v58[1]) = BYTE4(v25);
    BYTE5(v58[1]) = BYTE5(v25);
    sub_100012558(v26, v25);
LABEL_64:
    sub_10018257C(v58, v19, v18, &v57);
    sub_100002BF0(v26, v25);
    sub_100002BF0(v19, v18);
    v47 = v57;
LABEL_71:
    v2 = a2;
    v3 = a1;
    v8 = v56;
    if ((v47 & 1) == 0)
    {
      return v20;
    }
  }

LABEL_74:
  sub_100002BF0(v19, v18);
  return 0;
}

id sub_1001905FC()
{
  isa = sub_100216204().super.isa;
  v6 = 0;
  v2 = [v0 initForReadingFromData:isa error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    sub_100216154();

    swift_willThrow();
  }

  return v2;
}

unint64_t sub_1001906BC(void *a1)
{
  v38 = sub_100019860(_swiftEmptyArrayStorage);
  v2 = [a1 bottleID];
  if (v2)
  {
    v3 = v2;
    v4 = sub_100216974();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  sub_100108000(v4, v6, 0x4449656C74746F62, 0xE800000000000000);
  v7 = [a1 peerID];
  if (v7)
  {
    v8 = v7;
    v9 = sub_100216974();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  sub_100108000(v9, v11, 0x444972656570, 0xE600000000000000);
  v12 = [a1 escrowedSigningSPKI];
  if (v12)
  {
    v13 = v12;
    v14 = sub_100216224();
    v16 = v15;

    v17 = sub_100216214(0);
    v19 = v18;
    sub_100002BF0(v14, v16);
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  sub_100108000(v17, v19, 0x53676E696E676973, 0xEB00000000494B50);
  v20 = [a1 signatureUsingPeerKey];
  if (v20)
  {
    v21 = v20;
    v22 = sub_100216224();
    v24 = v23;

    v25 = sub_100216214(0);
    v27 = v26;
    sub_100002BF0(v22, v24);
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  sub_100108000(v25, v27, 0xD000000000000015, 0x800000010023D2F0);
  v28 = [a1 signatureUsingEscrowKey];
  if (v28)
  {
    v29 = v28;
    v30 = sub_100216224();
    v32 = v31;

    v33 = sub_100216214(0);
    v35 = v34;
    sub_100002BF0(v30, v32);
  }

  else
  {
    v33 = 0;
    v35 = 0;
  }

  sub_100108000(v33, v35, 0xD000000000000012, 0x800000010023D310);
  v36 = sub_1001ACFD8(v38);

  return v36;
}

void sub_10019097C(uint64_t a1, void *a2, char **a3)
{
  v5 = v3;
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  if (v10)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = (*(a1 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v10)))));
      v16 = *v14;
      v15 = v14[1];

      v4 = objc_autoreleasePoolPush();
      sub_10010DCB0(a2, v16, v15, a3);
      if (v5)
      {
        break;
      }

      v5 = 0;
      v10 &= v10 - 1;
      objc_autoreleasePoolPop(v4);

      v12 = v13;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v11)
      {

        return;
      }

      v10 = *(v7 + 8 * v13);
      ++v12;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  objc_autoreleasePoolPop(v4);
  __break(1u);
}

void sub_100190AB8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = v4;
  v8 = a1 + 56;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  if (v11)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = (*(a1 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v11)))));
      v17 = *v15;
      v16 = v15[1];

      v5 = objc_autoreleasePoolPush();
      sub_10011A724(a2, v17, v16, a3, a4);
      if (v6)
      {
        break;
      }

      v6 = 0;
      v11 &= v11 - 1;
      objc_autoreleasePoolPop(v5);

      v13 = v14;
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v12)
      {

        return;
      }

      v11 = *(v8 + 8 * v14);
      ++v13;
      if (v11)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  objc_autoreleasePoolPop(v5);
  __break(1u);
}

Swift::Int sub_100190BF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10001148C(&qword_10029D5A8, &qword_1002264F8);
    v3 = sub_100216FB4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_100217264();

      sub_1002169C4();
      result = sub_100217284();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_1002171A4();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return _swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_100190D5C(uint64_t a1, char *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  PolicyDocumentsRequest = type metadata accessor for FetchPolicyDocumentsRequest(0);
  v13 = *(*(PolicyDocumentsRequest - 8) + 64);
  __chkstk_darwin(PolicyDocumentsRequest, v14);
  v54 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v53 = a3;
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = a6;
  v17 = swift_allocObject();
  v56 = v17;
  *(v17 + 16) = a1;
  v18 = (v17 + 16);
  v19 = swift_allocObject();

  v52 = a5;
  v51 = a6;

  v20 = v19;
  *(v19 + 16) = sub_100019440(_swiftEmptyArrayStorage);
  v21 = *&a2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v22 = swift_allocObject();
  v22[2] = v18;
  v22[3] = a2;
  v22[4] = v19 + 16;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1001ACE80;
  *(v23 + 24) = v22;
  v55 = v22;
  v61 = sub_1001ACCC0;
  v62 = v23;
  aBlock = _NSConcreteStackBlock;
  v58 = 1107296256;
  v59 = sub_100109050;
  v60 = &unk_100283788;
  v24 = _Block_copy(&aBlock);
  v25 = a2;

  [v21 performBlockAndWait:v24];
  _Block_release(v24);
  LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

  if (v24)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v28 = *v18;
  if ((*v18 & 0xC000000000000001) != 0)
  {
    if (v28 < 0)
    {
      v29 = *v18;
    }

    v30 = *v18;

    v31 = sub_100216ED4();

    if (v31)
    {
      goto LABEL_6;
    }
  }

  else if (*(v28 + 16))
  {
LABEL_6:
    __chkstk_darwin(result, v27);
    *(&v50 - 2) = v18;
    sub_1001A13C4(&qword_100297E78, type metadata accessor for FetchPolicyDocumentsRequest);
    v32 = v16;
    v33 = v54;
    sub_100216654();
    v34 = *&v25[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
    v35 = *&v25[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
    v53 = sub_100006484(&v25[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v34);
    v36 = swift_allocObject();
    v36[2] = v25;
    v36[3] = sub_1001AA600;
    v37 = v56;
    v36[4] = v32;
    v36[5] = v37;
    v36[6] = v20;
    v38 = *(v35 + 16);
    v39 = *(v38 + 80);
    v40 = v25;

    v39(v33, sub_1001ACE2C, v36, v34, v38);

    sub_1001AC1E4(v33, type metadata accessor for FetchPolicyDocumentsRequest);
  }

  v41 = *(v20 + 16);
  v42 = v52;
  v54 = *&v52[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v43 = swift_allocObject();
  v44 = v53;
  v43[2] = v42;
  v43[3] = v44;
  v45 = v51;
  v43[4] = a4;
  v43[5] = v45;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_100060940;
  *(v46 + 24) = v43;
  v61 = sub_1001ACCC0;
  v62 = v46;
  aBlock = _NSConcreteStackBlock;
  v58 = 1107296256;
  v59 = sub_100109050;
  v60 = &unk_100283828;
  v47 = _Block_copy(&aBlock);

  v48 = v42;
  v49 = v45;

  [v54 performBlockAndWait:v47];
  _Block_release(v47);
  LOBYTE(v47) = swift_isEscapingClosureAtFileLocation();

  if (v47)
  {
    goto LABEL_11;
  }

  return result;
}

unint64_t sub_10019131C(unint64_t result)
{
  if (result >= 7)
  {
    sub_100216FD4(24);
    v1._object = 0x800000010023CCE0;
    v1._countAndFlagsBits = 0xD000000000000016;
    sub_100216A14(v1);
    type metadata accessor for CuttlefishResetReason(0);
    sub_100217094();
    result = sub_1002170E4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001913E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void (*a7)(void, void, void *, void, uint64_t), uint64_t a8, void *a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, unint64_t a20, uint64_t a21, unint64_t a22, uint64_t a23, unint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  v32 = a6;
  v211 = a8;

  v33 = a9;

  v207 = a11;

  v34 = a15;
  v197 = objc_opt_self();

  v35 = v32;
  swift_retain_n();
  v36 = v33;
  swift_bridgeObjectRetain_n();
  v37 = v207;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v38 = v34;
  v199 = v35;
  v202 = v36;
  v204 = v37;
  v208 = v38;
  sub_100012558(a17, a18);
  sub_100012558(a19, a20);
  sub_100012558(a21, a22);
  sub_100012558(a23, a24);

  sub_100012558(a17, a18);
  sub_100012558(a19, a20);
  sub_100012558(a21, a22);
  sub_100012558(a23, a24);

  sub_100012558(a17, a18);
  sub_100012558(a19, a20);
  sub_100012558(a21, a22);
  sub_100012558(a23, a24);

  v182 = v199;

  v200 = v202;

  v205 = v204;

  v209 = v208;

  sub_100012558(a17, a18);
  sub_100012558(a19, a20);
  sub_100012558(a21, a22);
  sub_100012558(a23, a24);

  v203 = v182;

  v201 = v200;

  v206 = v205;

  v210 = v209;

  sub_100012558(a17, a18);
  sub_100012558(a19, a20);
  sub_100012558(a21, a22);
  sub_100012558(a23, a24);

  v39 = [v197 defaultManager];
  v40 = sub_100216964();
  v41 = [v39 identityForIdentifier:v40];

  v198 = v39;
  if (v41)
  {
    v42 = [v41 resultType];
    v194 = v41;
    if (v42)
    {
      if (v42 == 1)
      {
        sub_1000561D0();
        v71 = swift_allocError();
        *v72 = xmmword_100225F90;
        *(v72 + 16) = 13;
        v190 = v203;

        v185 = v201;

        v180 = v206;

        v174 = v210;

        sub_100012558(a17, a18);
        sub_100012558(a19, a20);
        sub_100012558(a21, a22);
        sub_100012558(a23, a24);
        v73 = qword_100297520;

        if (v73 != -1)
        {
          swift_once();
        }

        v74 = sub_100216774();
        sub_100002648(v74, qword_10029D160);
        swift_errorRetain();
        v75 = sub_100216754();
        v76 = sub_100216C74();

        if (os_log_type_enabled(v75, v76))
        {
          v77 = v71;
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          aBlock[0] = v79;
          *v78 = 136446210;
          v213 = v77;
          swift_errorRetain();
          sub_10001148C(&qword_100297E80, &unk_1002265A0);
          v80 = sub_100216994();
          v82 = sub_100005FB0(v80, v81, aBlock);

          *(v78 + 4) = v82;
          _os_log_impl(&_mh_execute_header, v75, v76, "Unable to load encryption key: %{public}s", v78, 0xCu);
          sub_100006128(v79);

          v71 = v77;
        }

        swift_errorRetain();
        v83 = sub_100216754();
        v84 = sub_100216C74();

        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          aBlock[0] = v86;
          *v85 = 136446210;
          v213 = v71;
          swift_errorRetain();
          sub_10001148C(&qword_100297E80, &unk_1002265A0);
          v87 = sub_100216994();
          v89 = v71;
          v90 = sub_100005FB0(v87, v88, aBlock);

          *(v85 + 4) = v90;
          _os_log_impl(&_mh_execute_header, v83, v84, "Don't have my own peer keys; can't establish: %{public}s", v85, 0xCu);
          sub_100006128(v86);

          v91 = a21;
        }

        else
        {

          v91 = a21;
          v89 = v71;
        }

        v69 = a20;
        v110 = sub_100216144();
        [v190 sendMetricWithResult:0 error:v110];

        a7(0, 0, _swiftEmptyArrayStorage, 0, v89);

        sub_100002BF0(a23, a24);
        v70 = v91;
        sub_100002BF0(v91, a22);
        sub_100002BF0(a19, a20);
        sub_100002BF0(a17, a18);
      }

      else if (v42 == 2)
      {
        v43 = [v41 error];
        v188 = v203;

        v183 = v201;

        v178 = v206;

        v173 = v210;

        sub_100012558(a17, a18);
        sub_100012558(a19, a20);
        sub_100012558(a21, a22);
        sub_100012558(a23, a24);
        v44 = qword_100297520;

        if (v44 != -1)
        {
          swift_once();
        }

        v45 = sub_100216774();
        sub_100002648(v45, qword_10029D160);
        swift_errorRetain();
        v46 = sub_100216754();
        v47 = sub_100216C74();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          aBlock[0] = v49;
          *v48 = 136446210;
          v213 = v43;
          swift_errorRetain();
          sub_10001148C(&qword_100297E80, &unk_1002265A0);
          v50 = sub_100216994();
          v52 = sub_100005FB0(v50, v51, aBlock);

          *(v48 + 4) = v52;
          _os_log_impl(&_mh_execute_header, v46, v47, "Unable to load encryption key: %{public}s", v48, 0xCu);
          sub_100006128(v49);
        }

        swift_errorRetain();
        v111 = sub_100216754();
        v112 = sub_100216C74();

        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          aBlock[0] = v114;
          *v113 = 136446210;
          v213 = v43;
          swift_errorRetain();
          sub_10001148C(&qword_100297E80, &unk_1002265A0);
          v115 = sub_100216994();
          v117 = sub_100005FB0(v115, v116, aBlock);

          *(v113 + 4) = v117;
          _os_log_impl(&_mh_execute_header, v111, v112, "Don't have my own peer keys; can't establish: %{public}s", v113, 0xCu);
          sub_100006128(v114);
        }

        v70 = a21;
        v69 = a20;
        if (v43)
        {
          v118 = sub_100216144();
        }

        else
        {
          v118 = 0;
        }

        [v188 sendMetricWithResult:0 error:v118];

        a7(0, 0, _swiftEmptyArrayStorage, 0, v43);

        sub_100002BF0(a23, a24);
        sub_100002BF0(a21, a22);
        sub_100002BF0(a19, a20);
        sub_100002BF0(a17, a18);
      }

      else
      {
        sub_1000561D0();
        v99 = swift_allocError();
        *v100 = xmmword_100225FA0;
        *(v100 + 16) = 13;
        v192 = v203;

        v187 = v201;

        v181 = v206;

        v175 = v210;

        sub_100012558(a17, a18);
        sub_100012558(a19, a20);
        sub_100012558(a21, a22);
        sub_100012558(a23, a24);
        v101 = qword_100297520;

        if (v101 != -1)
        {
          swift_once();
        }

        v102 = sub_100216774();
        sub_100002648(v102, qword_10029D160);
        swift_errorRetain();
        v103 = sub_100216754();
        v104 = sub_100216C74();

        if (os_log_type_enabled(v103, v104))
        {
          v105 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          aBlock[0] = v106;
          *v105 = 136446210;
          v213 = v99;
          swift_errorRetain();
          sub_10001148C(&qword_100297E80, &unk_1002265A0);
          v107 = sub_100216994();
          v109 = sub_100005FB0(v107, v108, aBlock);

          *(v105 + 4) = v109;
          _os_log_impl(&_mh_execute_header, v103, v104, "Unable to load encryption key: %{public}s", v105, 0xCu);
          sub_100006128(v106);
        }

        swift_errorRetain();
        v119 = sub_100216754();
        v120 = sub_100216C74();

        if (os_log_type_enabled(v119, v120))
        {
          v121 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          aBlock[0] = v122;
          *v121 = 136446210;
          v213 = v99;
          swift_errorRetain();
          sub_10001148C(&qword_100297E80, &unk_1002265A0);
          v123 = sub_100216994();
          v125 = sub_100005FB0(v123, v124, aBlock);

          *(v121 + 4) = v125;
          _os_log_impl(&_mh_execute_header, v119, v120, "Don't have my own peer keys; can't establish: %{public}s", v121, 0xCu);
          sub_100006128(v122);
        }

        v69 = a20;
        v126 = sub_100216144();
        [v192 sendMetricWithResult:0 error:v126];

        a7(0, 0, _swiftEmptyArrayStorage, 0, v99);

        sub_100002BF0(a23, a24);
        v70 = a21;
        sub_100002BF0(a21, a22);
        sub_100002BF0(a19, a20);
        sub_100002BF0(a17, a18);
      }

      goto LABEL_51;
    }

    v92 = [v41 value];
    if (v92)
    {
      v93 = v92;
      v94 = [v92 keyPair];

      if (v94)
      {
        objc_opt_self();
        v95 = swift_dynamicCastObjCClass();
        if (v95)
        {
          v96 = v95;
          v97 = objc_allocWithZone(type metadata accessor for OctagonSelfPeerKeys());
          v98 = v94;
          v191 = v203;

          v168 = v201;

          v169 = v206;

          v167 = v210;

          sub_100012558(a17, a18);
          sub_100012558(a19, a20);
          sub_100012558(a21, a22);
          sub_100012558(a23, a24);

          v186 = v98;

          bufa = sub_1000576E4(a3, a4, a5, v96);
          v176 = *&v168[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
          v154 = swift_allocObject();
          *(v154 + 16) = a10;
          *(v154 + 24) = bufa;
          *(v154 + 32) = v169;
          *(v154 + 40) = a12;
          *(v154 + 48) = v191;
          *(v154 + 56) = a7;
          *(v154 + 64) = v211;
          *(v154 + 72) = v168;
          *(v154 + 80) = a13;
          *(v154 + 88) = a14;
          *(v154 + 96) = v167;
          *(v154 + 104) = a16;
          *(v154 + 112) = a17;
          *(v154 + 120) = a18;
          *(v154 + 128) = a19;
          *(v154 + 136) = a20;
          *(v154 + 144) = a21;
          *(v154 + 152) = a22;
          *(v154 + 160) = a23;
          *(v154 + 168) = a24;
          *(v154 + 176) = a25;
          *(v154 + 184) = a26;
          *(v154 + 192) = a27;
          *(v154 + 200) = a28;
          *(v154 + 208) = a29;
          *(v154 + 216) = a30;
          *(v154 + 224) = a31 & 1;
          v155 = swift_allocObject();
          *(v155 + 16) = sub_1001AA938;
          *(v155 + 24) = v154;
          aBlock[4] = sub_1001ACCC0;
          aBlock[5] = v155;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100109050;
          aBlock[3] = &unk_100283BE8;
          v156 = _Block_copy(aBlock);
          v157 = bufa;
          v158 = v191;

          v159 = v168;

          v160 = v169;

          v161 = v167;

          sub_100012558(a17, a18);
          sub_100012558(a19, a20);
          sub_100012558(a21, a22);
          sub_100012558(a23, a24);

          v162 = v157;

          [v176 performBlockAndWait:v156];

          v163 = a20;
          _Block_release(v156);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          sub_100002BF0(a23, a24);
          v165 = a21;
          sub_100002BF0(a21, a22);
          v151 = a17;
          v147 = a18;
          v152 = v198;
          v148 = v96;
          if ((isEscapingClosureAtFileLocation & 1) == 0)
          {
            goto LABEL_50;
          }

          __break(1u);

          v147 = a18;
          v166 = sub_100216144();
          [v191 sendMetricWithResult:0 error:v166];

          a7(0, 0, _swiftEmptyArrayStorage, 0, a17);

          v150 = a22;
          v149 = a17;
          v141 = a24;
LABEL_49:

          sub_100002BF0(a23, v141);
          v165 = isEscapingClosureAtFileLocation;
          sub_100002BF0(isEscapingClosureAtFileLocation, v150);
          v151 = v149;
          v152 = v198;
LABEL_50:
          sub_100002BF0(a19, v163);
          sub_100002BF0(v151, v147);

          v69 = v163;
          v70 = v165;
          goto LABEL_51;
        }
      }
    }

    v193 = v203;

    v127 = v201;

    v128 = v206;

    v129 = v210;

    sub_100012558(a17, a18);
    sub_100012558(a19, a20);
    sub_100012558(a21, a22);
    sub_100012558(a23, a24);
    v130 = qword_100297520;

    if (v130 != -1)
    {
      swift_once();
    }

    v131 = sub_100216774();
    sub_100002648(v131, qword_10029D160);
    v132 = sub_100216754();
    v133 = sub_100216C74();
    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      aBlock[0] = v135;
      *v134 = 136446210;
      v213 = 0;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v136 = sub_100216994();
      v138 = sub_100005FB0(v136, v137, aBlock);

      *(v134 + 4) = v138;
      _os_log_impl(&_mh_execute_header, v132, v133, "Unable to load encryption key: %{public}s", v134, 0xCu);
      sub_100006128(v135);
    }

    v139 = sub_100216754();
    v140 = sub_100216C74();
    v141 = a24;
    if (os_log_type_enabled(v139, v140))
    {
      v142 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      aBlock[0] = v143;
      *v142 = 136446210;
      v213 = 0;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v144 = sub_100216994();
      v146 = sub_100005FB0(v144, v145, aBlock);

      *(v142 + 4) = v146;
      _os_log_impl(&_mh_execute_header, v139, v140, "Don't have my own peer keys; can't establish: %{public}s", v142, 0xCu);
      sub_100006128(v143);
    }

    isEscapingClosureAtFileLocation = a21;
    v163 = a20;
    v147 = a18;
    [v193 sendMetricWithResult:0 error:0];
    a7(0, 0, _swiftEmptyArrayStorage, 0, 0);
    v148 = 0;
    v149 = a17;
    v150 = a22;
    goto LABEL_49;
  }

  v195 = v203;

  v189 = v201;

  v184 = v206;

  v179 = v210;

  sub_100012558(a17, a18);
  sub_100012558(a19, a20);
  sub_100012558(a21, a22);
  sub_100012558(a23, a24);
  v53 = qword_100297520;

  if (v53 != -1)
  {
    swift_once();
  }

  v54 = sub_100216774();
  sub_100002648(v54, qword_10029D160);
  v55 = sub_100216754();
  v56 = sub_100216C74();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock[0] = v58;
    *v57 = 136446210;
    v213 = 0;
    sub_10001148C(&qword_100297E80, &unk_1002265A0);
    v59 = sub_100216994();
    v61 = sub_100005FB0(v59, v60, aBlock);

    *(v57 + 4) = v61;
    _os_log_impl(&_mh_execute_header, v55, v56, "Unable to load encryption key: %{public}s", v57, 0xCu);
    sub_100006128(v58);
  }

  v62 = sub_100216754();
  v63 = sub_100216C74();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    aBlock[0] = v65;
    *v64 = 136446210;
    v213 = 0;
    sub_10001148C(&qword_100297E80, &unk_1002265A0);
    v66 = sub_100216994();
    v68 = sub_100005FB0(v66, v67, aBlock);

    *(v64 + 4) = v68;
    _os_log_impl(&_mh_execute_header, v62, v63, "Don't have my own peer keys; can't establish: %{public}s", v64, 0xCu);
    sub_100006128(v65);
  }

  v69 = a20;
  [v195 sendMetricWithResult:0 error:0];
  a7(0, 0, _swiftEmptyArrayStorage, 0, 0);

  sub_100002BF0(a23, a24);
  sub_100002BF0(a21, a22);
  sub_100002BF0(a19, a20);
  sub_100002BF0(a17, a18);

  v70 = a21;
LABEL_51:

  sub_100002BF0(a17, a18);
  sub_100002BF0(a19, v69);
  sub_100002BF0(v70, a22);
  sub_100002BF0(a23, a24);

  sub_100002BF0(a17, a18);
  sub_100002BF0(a19, a20);
  sub_100002BF0(v70, a22);
  sub_100002BF0(a23, a24);

  sub_100002BF0(a17, a18);
  sub_100002BF0(a19, a20);
  sub_100002BF0(a21, a22);
  sub_100002BF0(a23, a24);

  sub_100002BF0(a17, a18);
  sub_100002BF0(a19, a20);
  sub_100002BF0(a21, a22);
  sub_100002BF0(a23, a24);

  sub_100002BF0(a17, a18);
  sub_100002BF0(a19, a20);
  sub_100002BF0(a21, a22);
  sub_100002BF0(a23, a24);
}

uint64_t sub_10019361C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void, uint64_t), uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{

  v15 = a8;

  v16 = a13;
  v17 = objc_opt_self();
  swift_retain_n();
  v18 = v15;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v19 = v16;
  v20 = v18;
  v21 = v19;
  v22 = v20;
  v23 = v21;
  v24 = v22;
  v25 = v23;
  v26 = [v17 defaultManager];
  v27 = sub_100216964();
  v153 = v26;
  v28 = [v26 identityForIdentifier:v27];

  if (!v28)
  {
    v48 = qword_100297520;

    v152 = v24;

    v144 = v25;
    if (v48 != -1)
    {
      swift_once();
    }

    v49 = sub_100216774();
    sub_100002648(v49, qword_10029D160);
    v50 = sub_100216754();
    v51 = sub_100216C74();
    v52 = v25;
    if (os_log_type_enabled(v50, v51))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      aBlock[0] = v54;
      *v53 = 136446210;
      v157 = 0;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v55 = sub_100216994();
      v57 = sub_100005FB0(v55, v56, aBlock);

      *(v53 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v50, v51, "Unable to load encryption key: %{public}s", v53, 0xCu);
      sub_100006128(v54);
    }

    v58 = sub_100216754();
    v59 = sub_100216C74();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      aBlock[0] = v61;
      *v60 = 136446210;
      v157 = 0;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v62 = sub_100216994();
      v64 = sub_100005FB0(v62, v63, aBlock);

      *(v60 + 4) = v64;
      _os_log_impl(&_mh_execute_header, v58, v59, "Don't have my own peer keys; can't upload new TLKs: %{public}s", v60, 0xCu);
      sub_100006128(v61);
    }

    v25 = v52;
    a6(0, 0);

    v47 = v152;
    goto LABEL_19;
  }

  v29 = [v28 resultType];
  v151 = v25;
  if (v29)
  {
    if (v29 == 1)
    {
      sub_1000561D0();
      v65 = swift_allocError();
      *v66 = xmmword_100225F90;
      *(v66 + 16) = 13;
      v67 = qword_100297520;

      v149 = v24;

      v145 = v25;
      if (v67 != -1)
      {
        swift_once();
      }

      v68 = sub_100216774();
      sub_100002648(v68, qword_10029D160);
      swift_errorRetain();
      v69 = sub_100216754();
      v70 = sub_100216C74();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        aBlock[0] = v72;
        *v71 = 136446210;
        v157 = v65;
        swift_errorRetain();
        sub_10001148C(&qword_100297E80, &unk_1002265A0);
        v73 = sub_100216994();
        v75 = sub_100005FB0(v73, v74, aBlock);

        *(v71 + 4) = v75;
        _os_log_impl(&_mh_execute_header, v69, v70, "Unable to load encryption key: %{public}s", v71, 0xCu);
        sub_100006128(v72);
      }

      swift_errorRetain();
      v76 = sub_100216754();
      v77 = sub_100216C74();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        aBlock[0] = v79;
        *v78 = 136446210;
        v157 = v65;
        swift_errorRetain();
        sub_10001148C(&qword_100297E80, &unk_1002265A0);
        v80 = sub_100216994();
        v82 = sub_100005FB0(v80, v81, aBlock);

        *(v78 + 4) = v82;
        _os_log_impl(&_mh_execute_header, v76, v77, "Don't have my own peer keys; can't upload new TLKs: %{public}s", v78, 0xCu);
        sub_100006128(v79);
      }

      v25 = v151;
      a6(0, v65);

      v83 = v149;

      v84 = v145;
    }

    else
    {
      if (v29 == 2)
      {
        v30 = [v28 error];
        v31 = qword_100297520;

        v148 = v24;

        v144 = v25;
        if (v31 != -1)
        {
          swift_once();
        }

        v32 = sub_100216774();
        sub_100002648(v32, qword_10029D160);
        swift_errorRetain();
        v33 = sub_100216754();
        v34 = sub_100216C74();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          aBlock[0] = v36;
          *v35 = 136446210;
          v157 = v30;
          swift_errorRetain();
          sub_10001148C(&qword_100297E80, &unk_1002265A0);
          v37 = sub_100216994();
          v39 = sub_100005FB0(v37, v38, aBlock);

          *(v35 + 4) = v39;
          _os_log_impl(&_mh_execute_header, v33, v34, "Unable to load encryption key: %{public}s", v35, 0xCu);
          sub_100006128(v36);
        }

        swift_errorRetain();
        v40 = sub_100216754();
        v41 = sub_100216C74();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          aBlock[0] = v43;
          *v42 = 136446210;
          v157 = v30;
          swift_errorRetain();
          sub_10001148C(&qword_100297E80, &unk_1002265A0);
          v44 = sub_100216994();
          v46 = sub_100005FB0(v44, v45, aBlock);

          *(v42 + 4) = v46;
          _os_log_impl(&_mh_execute_header, v40, v41, "Don't have my own peer keys; can't upload new TLKs: %{public}s", v42, 0xCu);
          sub_100006128(v43);
        }

        v25 = v151;
        a6(0, v30);

        v47 = v148;
LABEL_19:

LABEL_47:

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        return swift_bridgeObjectRelease_n();
      }

      sub_1000561D0();
      v94 = swift_allocError();
      *v95 = xmmword_100225FA0;
      *(v95 + 16) = 13;
      v96 = qword_100297520;

      v146 = v24;

      v142 = v25;
      if (v96 != -1)
      {
        swift_once();
      }

      v97 = sub_100216774();
      sub_100002648(v97, qword_10029D160);
      swift_errorRetain();
      v98 = sub_100216754();
      v99 = sub_100216C74();

      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        aBlock[0] = v101;
        *v100 = 136446210;
        v157 = v94;
        swift_errorRetain();
        sub_10001148C(&qword_100297E80, &unk_1002265A0);
        v102 = sub_100216994();
        v104 = sub_100005FB0(v102, v103, aBlock);

        *(v100 + 4) = v104;
        _os_log_impl(&_mh_execute_header, v98, v99, "Unable to load encryption key: %{public}s", v100, 0xCu);
        sub_100006128(v101);
      }

      swift_errorRetain();
      v105 = sub_100216754();
      v106 = sub_100216C74();

      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        aBlock[0] = v108;
        *v107 = 136446210;
        v157 = v94;
        swift_errorRetain();
        sub_10001148C(&qword_100297E80, &unk_1002265A0);
        v109 = sub_100216994();
        v111 = sub_100005FB0(v109, v110, aBlock);

        *(v107 + 4) = v111;
        _os_log_impl(&_mh_execute_header, v105, v106, "Don't have my own peer keys; can't upload new TLKs: %{public}s", v107, 0xCu);
        sub_100006128(v108);
      }

      v25 = v151;
      a6(0, v94);

      v83 = v146;

      v84 = v142;
    }

    goto LABEL_47;
  }

  v85 = [v28 value];
  v86 = a7;
  if (!v85 || (v87 = v85, v88 = [v85 keyPair], v87, !v88))
  {
LABEL_40:
    v112 = qword_100297520;

    v113 = v24;

    v114 = v25;
    if (v112 != -1)
    {
      swift_once();
    }

    v115 = sub_100216774();
    sub_100002648(v115, qword_10029D160);
    v116 = sub_100216754();
    v117 = sub_100216C74();
    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      aBlock[0] = v119;
      *v118 = 136446210;
      v157 = 0;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v120 = sub_100216994();
      v122 = sub_100005FB0(v120, v121, aBlock);

      *(v118 + 4) = v122;
      _os_log_impl(&_mh_execute_header, v116, v117, "Unable to load encryption key: %{public}s", v118, 0xCu);
      sub_100006128(v119);
    }

    v123 = sub_100216754();
    v124 = sub_100216C74();
    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      aBlock[0] = v126;
      *v125 = 136446210;
      v157 = 0;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v127 = sub_100216994();
      v129 = sub_100005FB0(v127, v128, aBlock);

      *(v125 + 4) = v129;
      _os_log_impl(&_mh_execute_header, v123, v124, "Don't have my own peer keys; can't upload new TLKs: %{public}s", v125, 0xCu);
      sub_100006128(v126);
    }

    v25 = v151;
    a6(0, 0);

    goto LABEL_47;
  }

  objc_opt_self();
  v89 = swift_dynamicCastObjCClass();
  if (!v89)
  {

    goto LABEL_40;
  }

  v90 = v89;
  v91 = objc_allocWithZone(type metadata accessor for OctagonSelfPeerKeys());
  v92 = v88;

  v93 = v24;

  v139 = v25;
  v140 = v92;

  v130 = sub_1000576E4(a3, a4, a5, v90);
  v150 = *&v93[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v131 = swift_allocObject();
  v131[2] = v93;
  v131[3] = a9;
  v131[4] = a10;
  v131[5] = a6;
  v131[6] = v86;
  v131[7] = a11;
  v131[8] = a12;
  v131[9] = v130;
  v131[10] = v139;
  v132 = swift_allocObject();
  *(v132 + 16) = sub_1001AAA80;
  *(v132 + 24) = v131;
  aBlock[4] = sub_1001ACCC0;
  aBlock[5] = v132;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100109050;
  aBlock[3] = &unk_100283E68;
  v133 = _Block_copy(aBlock);
  v134 = v130;

  v135 = v93;

  v155 = v139;
  v136 = v134;

  [v150 performBlockAndWait:v133];

  _Block_release(v133);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {

    goto LABEL_47;
  }

  __break(1u);
  return result;
}

void sub_100194B04(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = [objc_opt_self() defaultManager];
  v12 = sub_100216964();
  v13 = [v11 identityForIdentifier:v12];

  if (v13)
  {
    v14 = [v13 resultType];
    if (v14)
    {
      if (v14 == 1)
      {
        sub_1000561D0();
        v32 = swift_allocError();
        *v33 = xmmword_100225F90;
        *(v33 + 16) = 13;
        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v34 = sub_100216774();
        sub_100002648(v34, qword_10029D160);
        swift_errorRetain();
        v35 = sub_100216754();
        v36 = sub_100216C74();

        if (!os_log_type_enabled(v35, v36))
        {
          goto LABEL_28;
        }

        v37 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v64 = v63;
        *v37 = 136446210;
        swift_errorRetain();
        sub_10001148C(&qword_100297E80, &unk_1002265A0);
        v38 = sub_100216994();
        v40 = sub_100005FB0(v38, v39, &v64);

        *(v37 + 4) = v40;
      }

      else
      {
        if (v14 == 2)
        {
          v15 = [v13 error];
          if (qword_100297520 != -1)
          {
            swift_once();
          }

          v16 = sub_100216774();
          sub_100002648(v16, qword_10029D160);
          swift_errorRetain();
          v17 = sub_100216754();
          v18 = sub_100216C74();

          if (os_log_type_enabled(v17, v18))
          {
            v19 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            v64 = v62;
            *v19 = 136446210;
            swift_errorRetain();
            sub_10001148C(&qword_100297E80, &unk_1002265A0);
            v20 = sub_100216994();
            v22 = a3;
            v23 = sub_100005FB0(v20, v21, &v64);

            *(v19 + 4) = v23;
            a3 = v22;
            _os_log_impl(&_mh_execute_header, v17, v18, "Unable to load encryption key: %{public}s", v19, 0xCu);
            sub_100006128(v62);
          }

          a3(0, v15);
          return;
        }

        sub_1000561D0();
        v32 = swift_allocError();
        *v47 = xmmword_100225FA0;
        *(v47 + 16) = 13;
        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v48 = sub_100216774();
        sub_100002648(v48, qword_10029D160);
        swift_errorRetain();
        v35 = sub_100216754();
        v36 = sub_100216C74();

        if (!os_log_type_enabled(v35, v36))
        {
LABEL_28:

          a3(0, v32);

          return;
        }

        v37 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v64 = v63;
        *v37 = 136446210;
        swift_errorRetain();
        sub_10001148C(&qword_100297E80, &unk_1002265A0);
        v49 = sub_100216994();
        v51 = a3;
        v52 = sub_100005FB0(v49, v50, &v64);

        *(v37 + 4) = v52;
        a3 = v51;
      }

      _os_log_impl(&_mh_execute_header, v35, v36, "Unable to load encryption key: %{public}s", v37, 0xCu);
      sub_100006128(v63);

      goto LABEL_28;
    }

    v41 = [v13 value];
    if (v41)
    {
      v42 = v41;
      v43 = [v41 keyPair];

      if (v43)
      {
        objc_opt_self();
        v44 = swift_dynamicCastObjCClass();
        if (v44)
        {
          v45 = v44;
          objc_allocWithZone(type metadata accessor for OctagonSelfPeerKeys());
          v46 = v43;

          v61 = sub_1000576E4(a5, a6, a7, v45);
          a3(v61, 0);

LABEL_35:
          return;
        }
      }
    }

    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v53 = sub_100216774();
    sub_100002648(v53, qword_10029D160);
    v54 = sub_100216754();
    v55 = sub_100216C74();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v64 = v57;
      *v56 = 136446210;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v58 = sub_100216994();
      v60 = sub_100005FB0(v58, v59, &v64);

      *(v56 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v54, v55, "Unable to load encryption key: %{public}s", v56, 0xCu);
      sub_100006128(v57);
    }

    a3(0, 0);
    v45 = 0;
    goto LABEL_35;
  }

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v24 = sub_100216774();
  sub_100002648(v24, qword_10029D160);
  v25 = sub_100216754();
  v26 = sub_100216C74();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v64 = v28;
    *v27 = 136446210;
    sub_10001148C(&qword_100297E80, &unk_1002265A0);
    v29 = sub_100216994();
    v31 = sub_100005FB0(v29, v30, &v64);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v25, v26, "Unable to load encryption key: %{public}s", v27, 0xCu);
    sub_100006128(v28);
  }

  a3(0, 0);
}

uint64_t sub_1001953F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void (*a6)(void, void, void *, void, uint64_t), uint64_t a7, void *a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, unint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20, unint64_t a21, uint64_t a22, unint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  v159._countAndFlagsBits = a3;
  v159._object = a4;
  v32 = a5;
  v221 = a7;

  v33 = a8;

  v34 = a10;

  v35 = a14;
  v194 = objc_opt_self();

  v36 = v32;
  swift_retain_n();
  v37 = v33;
  swift_bridgeObjectRetain_n();
  v38 = v34;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v39 = v35;
  v211 = v36;
  v214 = v37;
  v217 = v38;
  v219 = v39;
  sub_100012558(a16, a17);
  sub_100012558(a18, a19);
  sub_100012558(a20, a21);
  sub_100012558(a22, a23);

  sub_100012558(a16, a17);
  sub_100012558(a18, a19);
  sub_100012558(a20, a21);
  sub_100012558(a22, a23);

  sub_100012558(a16, a17);
  sub_100012558(a18, a19);
  sub_100012558(a20, a21);
  sub_100012558(a22, a23);

  v169 = v211;

  v181 = v214;

  v212 = v217;

  v215 = v219;

  sub_100012558(a16, a17);
  sub_100012558(a18, a19);
  sub_100012558(a20, a21);
  sub_100012558(a22, a23);

  v218 = v169;

  v220 = v181;

  v40 = v212;

  v216 = v215;

  sub_100012558(a16, a17);
  sub_100012558(a18, a19);
  sub_100012558(a20, a21);
  sub_100012558(a22, a23);

  v41 = [v194 defaultManager];
  v42 = sub_100216964();
  v210 = v41;
  v43 = [v41 identityForIdentifier:v42];

  v213 = v40;
  if (!v43)
  {
    v207 = v218;

    v197 = v220;

    v184 = v40;

    v172 = v216;

    sub_100012558(a16, a17);
    sub_100012558(a18, a19);
    sub_100012558(a20, a21);
    sub_100012558(a22, a23);

    v208 = v207;

    v198 = v197;

    v185 = v184;

    v171 = v172;

    sub_100012558(a16, a17);
    sub_100012558(a18, a19);
    sub_100012558(a20, a21);
    sub_100012558(a22, a23);
    v64 = qword_100297520;

    if (v64 != -1)
    {
      swift_once();
    }

    v65 = sub_100216774();
    sub_100002648(v65, qword_10029D160);
    v66 = sub_100216754();
    v67 = sub_100216C74();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v222[0] = v69;
      *v68 = 136446210;
      v223 = 0;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v70 = sub_100216994();
      v72 = sub_100005FB0(v70, v71, v222);

      *(v68 + 4) = v72;
      v62 = a19;
      _os_log_impl(&_mh_execute_header, v66, v67, "Unable to load signing key: %{public}s", v68, 0xCu);
      sub_100006128(v69);
    }

    else
    {

      v62 = a19;
    }

    v73 = sub_100216754();
    v74 = sub_100216C74();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v222[0] = v76;
      *v75 = 136446210;
      v223 = 0;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v77 = sub_100216994();
      v79 = sub_100005FB0(v77, v78, v222);

      *(v75 + 4) = v79;
      _os_log_impl(&_mh_execute_header, v73, v74, "Don't have my own peer keys; can't establish: %{public}s", v75, 0xCu);
      sub_100006128(v76);
    }

    [v208 sendMetricWithResult:0 error:0];
    a6(0, 0, _swiftEmptyArrayStorage, 0, 0);

    sub_100002BF0(a16, a17);
    sub_100002BF0(a18, v62);
    sub_100002BF0(a20, a21);
    sub_100002BF0(a22, a23);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    sub_100002BF0(a22, a23);
    v80 = a21;
    sub_100002BF0(a20, a21);
    sub_100002BF0(a18, v62);
    sub_100002BF0(a16, a17);

    goto LABEL_42;
  }

  v44 = [v43 resultType];
  v206 = v43;
  if (!v44)
  {
    v102 = [v43 value];
    if (v102)
    {
      v103 = v102;
      v104 = [v102 keyPair];

      if (v104)
      {
        objc_opt_self();
        v201 = swift_dynamicCastObjCClass();
        if (v201)
        {
          v222[0] = 0x6974707972636E65;
          v222[1] = 0xEF2079656B2D6E6FLL;
          v188 = v218;

          v175 = v220;

          v157 = v40;

          v155 = v216;

          sub_100012558(a16, a17);
          sub_100012558(a18, a19);
          sub_100012558(a20, a21);
          sub_100012558(a22, a23);

          v189 = v188;

          v176 = v175;

          v153 = v157;

          v151 = v155;

          sub_100012558(a16, a17);
          sub_100012558(a18, a19);
          sub_100012558(a20, a21);
          sub_100012558(a22, a23);

          v150 = v104;
          sub_100216A14(v159);
          v158 = v189;

          v190 = v176;

          v177 = v153;

          v154 = v151;

          sub_100012558(a16, a17);
          sub_100012558(a18, a19);
          sub_100012558(a20, a21);
          sub_100012558(a22, a23);

          v152 = v150;

          sub_1001913E4(0x6974707972636E65, 0xEF2079656B2D6E6FLL, v159._countAndFlagsBits, v159._object, v201, v158, a6, v221, v190, a9, v177, a11, a12, a13, v154, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30 & 1);

          sub_100002BF0(a22, a23);
          v105 = a21;
          sub_100002BF0(a20, a21);
          sub_100002BF0(a18, a19);
          sub_100002BF0(a16, a17);

          v106 = a18;
          v107 = a16;
          v108 = v216;

LABEL_51:

          sub_100002BF0(v107, a17);
          v148 = v107;
          sub_100002BF0(v106, a19);
          sub_100002BF0(a20, v105);
          sub_100002BF0(a22, a23);
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          sub_100002BF0(a22, a23);
          v80 = v105;
          sub_100002BF0(a20, v105);
          sub_100002BF0(v106, a19);
          sub_100002BF0(v148, a17);

          v128 = v216;

          v62 = a19;

          goto LABEL_52;
        }
      }
    }

    v204 = v218;

    v193 = v220;

    v180 = v40;

    v168 = v216;

    sub_100012558(a16, a17);
    sub_100012558(a18, a19);
    sub_100012558(a20, a21);
    sub_100012558(a22, a23);

    v205 = v204;

    v129 = v193;

    v130 = v180;

    v131 = v168;

    sub_100012558(a16, a17);
    sub_100012558(a18, a19);
    sub_100012558(a20, a21);
    sub_100012558(a22, a23);
    v132 = qword_100297520;

    if (v132 != -1)
    {
      swift_once();
    }

    v133 = sub_100216774();
    sub_100002648(v133, qword_10029D160);
    v134 = sub_100216754();
    v135 = sub_100216C74();
    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v222[0] = v137;
      *v136 = 136446210;
      v223 = 0;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v138 = sub_100216994();
      v140 = sub_100005FB0(v138, v139, v222);

      *(v136 + 4) = v140;
      _os_log_impl(&_mh_execute_header, v134, v135, "Unable to load signing key: %{public}s", v136, 0xCu);
      sub_100006128(v137);
    }

    v107 = a16;
    v141 = sub_100216754();
    v142 = sub_100216C74();
    if (os_log_type_enabled(v141, v142))
    {
      v143 = swift_slowAlloc();
      v144 = swift_slowAlloc();
      v222[0] = v144;
      *v143 = 136446210;
      v223 = 0;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v145 = sub_100216994();
      v147 = sub_100005FB0(v145, v146, v222);

      *(v143 + 4) = v147;
      _os_log_impl(&_mh_execute_header, v141, v142, "Don't have my own peer keys; can't establish: %{public}s", v143, 0xCu);
      sub_100006128(v144);
    }

    v105 = a21;
    v108 = v216;
    [v205 sendMetricWithResult:0 error:0];
    a6(0, 0, _swiftEmptyArrayStorage, 0, 0);

    v201 = 0;
    v106 = a18;
    goto LABEL_51;
  }

  if (v44 == 1)
  {
    sub_1000561D0();
    v161 = swift_allocError();
    *v81 = xmmword_100225F90;
    *(v81 + 16) = 13;
    v199 = v218;

    v186 = v220;

    v173 = v40;

    v164 = v216;

    sub_100012558(a16, a17);
    sub_100012558(a18, a19);
    sub_100012558(a20, a21);
    sub_100012558(a22, a23);

    v200 = v199;

    v187 = v186;

    v174 = v173;

    v165 = v164;

    sub_100012558(a16, a17);
    sub_100012558(a18, a19);
    sub_100012558(a20, a21);
    sub_100012558(a22, a23);
    v82 = qword_100297520;

    if (v82 != -1)
    {
      swift_once();
    }

    v83 = sub_100216774();
    sub_100002648(v83, qword_10029D160);
    swift_errorRetain();
    v84 = sub_100216754();
    v85 = sub_100216C74();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v222[0] = v87;
      *v86 = 136446210;
      v223 = v161;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v88 = sub_100216994();
      v90 = sub_100005FB0(v88, v89, v222);

      *(v86 + 4) = v90;
      _os_log_impl(&_mh_execute_header, v84, v85, "Unable to load signing key: %{public}s", v86, 0xCu);
      sub_100006128(v87);
    }

    v91 = a18;
    v92 = a16;
    swift_errorRetain();
    v93 = sub_100216754();
    v94 = sub_100216C74();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v222[0] = v96;
      *v95 = 136446210;
      v223 = v161;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v97 = sub_100216994();
      v99 = sub_100005FB0(v97, v98, v222);

      *(v95 + 4) = v99;
      _os_log_impl(&_mh_execute_header, v93, v94, "Don't have my own peer keys; can't establish: %{public}s", v95, 0xCu);
      sub_100006128(v96);
      v91 = a18;
      v92 = a16;
    }

    v100 = sub_100216144();
    [v200 sendMetricWithResult:0 error:v100];

    a6(0, 0, _swiftEmptyArrayStorage, 0, v161);

    sub_100002BF0(v92, a17);
    sub_100002BF0(v91, a19);
    sub_100002BF0(a20, a21);
    sub_100002BF0(a22, a23);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    sub_100002BF0(a22, a23);
    v80 = a21;
    sub_100002BF0(a20, a21);
    sub_100002BF0(a18, a19);
    sub_100002BF0(v92, a17);

    v101 = v200;

    v62 = a19;
  }

  else
  {
    if (v44 == 2)
    {
      v163 = [v43 error];
      v195 = v218;

      v182 = v220;

      v170 = v40;

      v156 = v216;

      sub_100012558(a16, a17);
      sub_100012558(a18, a19);
      sub_100012558(a20, a21);
      sub_100012558(a22, a23);

      v160 = v195;

      v196 = v182;

      v183 = v170;

      v171 = v156;

      sub_100012558(a16, a17);
      sub_100012558(a18, a19);
      sub_100012558(a20, a21);
      sub_100012558(a22, a23);
      v45 = qword_100297520;

      if (v45 != -1)
      {
        swift_once();
      }

      v46 = sub_100216774();
      sub_100002648(v46, qword_10029D160);
      swift_errorRetain();
      v47 = sub_100216754();
      v48 = sub_100216C74();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v222[0] = v50;
        *v49 = 136446210;
        v223 = v163;
        swift_errorRetain();
        sub_10001148C(&qword_100297E80, &unk_1002265A0);
        v51 = sub_100216994();
        v53 = sub_100005FB0(v51, v52, v222);

        *(v49 + 4) = v53;
        _os_log_impl(&_mh_execute_header, v47, v48, "Unable to load signing key: %{public}s", v49, 0xCu);
        sub_100006128(v50);
      }

      v54 = a16;
      swift_errorRetain();
      v55 = sub_100216754();
      v56 = sub_100216C74();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v222[0] = v58;
        *v57 = 136446210;
        v223 = v163;
        swift_errorRetain();
        sub_10001148C(&qword_100297E80, &unk_1002265A0);
        v59 = sub_100216994();
        v61 = sub_100005FB0(v59, v60, v222);

        *(v57 + 4) = v61;
        _os_log_impl(&_mh_execute_header, v55, v56, "Don't have my own peer keys; can't establish: %{public}s", v57, 0xCu);
        sub_100006128(v58);
        v54 = a16;
      }

      v62 = a19;
      if (v163)
      {
        v63 = sub_100216144();
      }

      else
      {
        v63 = 0;
      }

      [v160 sendMetricWithResult:0 error:v63];

      a6(0, 0, _swiftEmptyArrayStorage, 0, v163);

      sub_100002BF0(v54, a17);
      sub_100002BF0(a18, a19);
      sub_100002BF0(a20, a21);
      sub_100002BF0(a22, a23);
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      sub_100002BF0(a22, a23);
      v80 = a21;
      sub_100002BF0(a20, a21);
      sub_100002BF0(a18, a19);
      sub_100002BF0(a16, a17);

LABEL_42:

      v128 = v216;
      goto LABEL_52;
    }

    sub_1000561D0();
    v162 = swift_allocError();
    *v109 = xmmword_100225FA0;
    *(v109 + 16) = 13;
    v202 = v218;

    v191 = v220;

    v178 = v40;

    v166 = v216;

    sub_100012558(a16, a17);
    sub_100012558(a18, a19);
    sub_100012558(a20, a21);
    sub_100012558(a22, a23);

    v203 = v202;

    v192 = v191;

    v179 = v178;

    v167 = v166;

    sub_100012558(a16, a17);
    sub_100012558(a18, a19);
    sub_100012558(a20, a21);
    sub_100012558(a22, a23);
    v110 = qword_100297520;

    if (v110 != -1)
    {
      swift_once();
    }

    v111 = sub_100216774();
    sub_100002648(v111, qword_10029D160);
    swift_errorRetain();
    v112 = sub_100216754();
    v113 = sub_100216C74();

    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v222[0] = v115;
      *v114 = 136446210;
      v223 = v162;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v116 = sub_100216994();
      v118 = sub_100005FB0(v116, v117, v222);

      *(v114 + 4) = v118;
      _os_log_impl(&_mh_execute_header, v112, v113, "Unable to load signing key: %{public}s", v114, 0xCu);
      sub_100006128(v115);
    }

    v119 = a17;
    swift_errorRetain();
    v120 = sub_100216754();
    v121 = sub_100216C74();

    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v222[0] = v123;
      *v122 = 136446210;
      v223 = v162;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v124 = sub_100216994();
      v126 = sub_100005FB0(v124, v125, v222);

      *(v122 + 4) = v126;
      _os_log_impl(&_mh_execute_header, v120, v121, "Don't have my own peer keys; can't establish: %{public}s", v122, 0xCu);
      sub_100006128(v123);
      v119 = a17;
    }

    v127 = sub_100216144();
    [v203 sendMetricWithResult:0 error:v127];

    a6(0, 0, _swiftEmptyArrayStorage, 0, v162);

    sub_100002BF0(a16, v119);
    sub_100002BF0(a18, a19);
    sub_100002BF0(a20, a21);
    sub_100002BF0(a22, a23);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    sub_100002BF0(a22, a23);
    v80 = a21;
    sub_100002BF0(a20, a21);
    sub_100002BF0(a18, a19);
    sub_100002BF0(a16, a17);

    v101 = v203;

    v62 = a19;
  }

  v128 = v216;
LABEL_52:

  sub_100002BF0(a16, a17);
  sub_100002BF0(a18, v62);
  sub_100002BF0(a20, v80);
  sub_100002BF0(a22, a23);

  sub_100002BF0(a16, a17);
  sub_100002BF0(a18, a19);
  sub_100002BF0(a20, v80);
  sub_100002BF0(a22, a23);

  sub_100002BF0(a16, a17);
  sub_100002BF0(a18, a19);
  sub_100002BF0(a20, v80);
  sub_100002BF0(a22, a23);

  sub_100002BF0(a16, a17);
  sub_100002BF0(a18, a19);
  sub_100002BF0(a20, a21);
  sub_100002BF0(a22, a23);

  sub_100002BF0(a16, a17);
  sub_100002BF0(a18, a19);
  sub_100002BF0(a20, a21);
  sub_100002BF0(a22, a23);
}

uint64_t sub_100197B58(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void, uint64_t), uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{

  v14 = a7;

  v15 = a12;
  v16 = objc_opt_self();
  swift_retain_n();
  v17 = v14;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v18 = v15;
  v19 = v17;
  v20 = v18;
  v21 = v19;
  v22 = v20;
  v23 = v21;
  v24 = v22;
  v25 = [v16 defaultManager];
  v26 = sub_100216964();
  v150 = v25;
  v27 = [v25 identityForIdentifier:v26];

  v152 = v24;
  v153 = a6;
  if (!v27)
  {
    v49 = qword_100297520;
    swift_retain_n();
    v50 = v23;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v51 = v24;
    v52 = v50;
    v53 = v51;
    if (v49 != -1)
    {
      swift_once();
    }

    v54 = sub_100216774();
    sub_100002648(v54, qword_10029D160);
    v55 = sub_100216754();
    v56 = sub_100216C74();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v154[0] = v58;
      *v57 = 136446210;
      v155 = 0;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v59 = sub_100216994();
      v61 = sub_100005FB0(v59, v60, v154);

      *(v57 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v55, v56, "Unable to load signing key: %{public}s", v57, 0xCu);
      sub_100006128(v58);
    }

    v62 = sub_100216754();
    v63 = sub_100216C74();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v154[0] = v65;
      *v64 = 136446210;
      v155 = 0;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v66 = sub_100216994();
      v68 = sub_100005FB0(v66, v67, v154);

      *(v64 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v62, v63, "Don't have my own peer keys; can't upload new TLKs: %{public}s", v64, 0xCu);
      sub_100006128(v65);
    }

    v48 = v23;
    a5(0, 0);

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    goto LABEL_19;
  }

  v28 = [v27 resultType];
  v149 = v27;
  if (!v28)
  {
    v89 = [v27 value];
    if (v89)
    {
      v90 = v89;
      v91 = [v89 keyPair];

      if (v91)
      {
        objc_opt_self();
        v92 = swift_dynamicCastObjCClass();
        if (v92)
        {
          v93 = v92;
          v154[0] = 0x6974707972636E65;
          v154[1] = 0xEF2079656B2D6E6FLL;
          swift_retain_n();
          v94 = v23;
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          v95 = v24;
          v140 = v94;
          v96 = v95;
          v141 = v91;
          v156._countAndFlagsBits = a3;
          v156._object = a4;
          sub_100216A14(v156);

          v97 = v140;

          v98 = v96;
          v99 = v141;

          sub_10019361C(0x6974707972636E65, 0xEF2079656B2D6E6FLL, a3, a4, v93, a5, v153, v97, a8, a9, a10, a11, v98);
          v48 = v23;

          v100 = v149;

LABEL_46:

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          goto LABEL_47;
        }
      }
    }

    v119 = qword_100297520;
    swift_retain_n();
    v120 = v23;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v121 = v24;
    v122 = v120;
    v123 = v121;
    if (v119 != -1)
    {
      swift_once();
    }

    v124 = sub_100216774();
    sub_100002648(v124, qword_10029D160);
    v125 = sub_100216754();
    v126 = sub_100216C74();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v154[0] = v128;
      *v127 = 136446210;
      v155 = 0;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v129 = sub_100216994();
      v131 = sub_100005FB0(v129, v130, v154);

      *(v127 + 4) = v131;
      _os_log_impl(&_mh_execute_header, v125, v126, "Unable to load signing key: %{public}s", v127, 0xCu);
      sub_100006128(v128);
    }

    v132 = sub_100216754();
    v133 = sub_100216C74();
    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v154[0] = v135;
      *v134 = 136446210;
      v155 = 0;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v136 = sub_100216994();
      v138 = sub_100005FB0(v136, v137, v154);

      *(v134 + 4) = v138;
      _os_log_impl(&_mh_execute_header, v132, v133, "Don't have my own peer keys; can't upload new TLKs: %{public}s", v134, 0xCu);
      sub_100006128(v135);
    }

    v48 = v23;
    v100 = v149;
    a5(0, 0);

    v93 = 0;
    goto LABEL_46;
  }

  if (v28 == 1)
  {
    sub_1000561D0();
    v69 = swift_allocError();
    *v70 = xmmword_100225F90;
    *(v70 + 16) = 13;
    v71 = qword_100297520;
    swift_retain_n();
    v72 = v23;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v73 = v24;
    v148 = v72;
    v145 = v73;
    if (v71 != -1)
    {
      swift_once();
    }

    v74 = sub_100216774();
    sub_100002648(v74, qword_10029D160);
    swift_errorRetain();
    v75 = sub_100216754();
    v76 = sub_100216C74();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v154[0] = v78;
      *v77 = 136446210;
      v155 = v69;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v79 = sub_100216994();
      v81 = sub_100005FB0(v79, v80, v154);

      *(v77 + 4) = v81;
      _os_log_impl(&_mh_execute_header, v75, v76, "Unable to load signing key: %{public}s", v77, 0xCu);
      sub_100006128(v78);
    }

    swift_errorRetain();
    v82 = sub_100216754();
    v83 = sub_100216C74();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v154[0] = v85;
      *v84 = 136446210;
      v155 = v69;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v86 = sub_100216994();
      v88 = sub_100005FB0(v86, v87, v154);

      *(v84 + 4) = v88;
      _os_log_impl(&_mh_execute_header, v82, v83, "Don't have my own peer keys; can't upload new TLKs: %{public}s", v84, 0xCu);
      sub_100006128(v85);
    }

    goto LABEL_37;
  }

  if (v28 != 2)
  {
    sub_1000561D0();
    v69 = swift_allocError();
    *v101 = xmmword_100225FA0;
    *(v101 + 16) = 13;
    v102 = qword_100297520;
    swift_retain_n();
    v103 = v23;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v104 = v24;
    v148 = v103;
    v145 = v104;
    if (v102 != -1)
    {
      swift_once();
    }

    v105 = sub_100216774();
    sub_100002648(v105, qword_10029D160);
    swift_errorRetain();
    v106 = sub_100216754();
    v107 = sub_100216C74();

    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v154[0] = v109;
      *v108 = 136446210;
      v155 = v69;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v110 = sub_100216994();
      v112 = sub_100005FB0(v110, v111, v154);

      *(v108 + 4) = v112;
      _os_log_impl(&_mh_execute_header, v106, v107, "Unable to load signing key: %{public}s", v108, 0xCu);
      sub_100006128(v109);
    }

    swift_errorRetain();
    v82 = sub_100216754();
    v113 = sub_100216C74();

    if (os_log_type_enabled(v82, v113))
    {
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v154[0] = v115;
      *v114 = 136446210;
      v155 = v69;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v116 = sub_100216994();
      v118 = sub_100005FB0(v116, v117, v154);

      *(v114 + 4) = v118;
      _os_log_impl(&_mh_execute_header, v82, v113, "Don't have my own peer keys; can't upload new TLKs: %{public}s", v114, 0xCu);
      sub_100006128(v115);
    }

LABEL_37:

    v48 = v23;
    a5(0, v69);

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    goto LABEL_47;
  }

  v29 = [v27 error];
  v30 = qword_100297520;
  swift_retain_n();
  v31 = v23;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v32 = v24;
  v147 = v31;
  v144 = v32;
  if (v30 != -1)
  {
    swift_once();
  }

  v33 = sub_100216774();
  sub_100002648(v33, qword_10029D160);
  swift_errorRetain();
  v34 = sub_100216754();
  v35 = sub_100216C74();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v154[0] = v37;
    *v36 = 136446210;
    v155 = v29;
    swift_errorRetain();
    sub_10001148C(&qword_100297E80, &unk_1002265A0);
    v38 = sub_100216994();
    v40 = sub_100005FB0(v38, v39, v154);

    *(v36 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v34, v35, "Unable to load signing key: %{public}s", v36, 0xCu);
    sub_100006128(v37);
  }

  swift_errorRetain();
  v41 = sub_100216754();
  v42 = sub_100216C74();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v154[0] = v44;
    *v43 = 136446210;
    v155 = v29;
    swift_errorRetain();
    sub_10001148C(&qword_100297E80, &unk_1002265A0);
    v45 = sub_100216994();
    v47 = sub_100005FB0(v45, v46, v154);

    *(v43 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v41, v42, "Don't have my own peer keys; can't upload new TLKs: %{public}s", v43, 0xCu);
    sub_100006128(v44);
  }

  v48 = v23;
  a5(0, v29);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

LABEL_19:

LABEL_47:

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  return swift_bridgeObjectRelease_n();
}

void sub_100198E8C(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t), uint64_t a4, uint64_t a5, void *a6)
{
  v22 = [objc_opt_self() defaultManager];
  v10 = sub_100216964();
  v21 = [v22 identityForIdentifier:v10];

  if (!v21)
  {
    sub_10010BA8C(0, 0, a3, a4, a5, a6);
    v13 = v22;
    goto LABEL_14;
  }

  v11 = [v21 resultType];
  if (!v11)
  {
    v17 = [v21 value];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 keyPair];

      if (!v19)
      {
LABEL_12:
        v17 = 0;
        goto LABEL_13;
      }

      objc_opt_self();
      v17 = swift_dynamicCastObjCClass();
      if (!v17)
      {

        goto LABEL_12;
      }
    }

LABEL_13:
    v20 = v17;
    sub_10010BA8C(v17, 0, a3, a4, a5, a6);

    v13 = v20;
    goto LABEL_14;
  }

  if (v11 == 1)
  {
    sub_1000561D0();
    v15 = swift_allocError();
    v16 = xmmword_100225F90;
  }

  else
  {
    if (v11 == 2)
    {
      v12 = [v21 error];
      sub_10010BA8C(0, v12, a3, a4, a5, a6);

      v13 = v21;
LABEL_14:

      return;
    }

    sub_1000561D0();
    v15 = swift_allocError();
    v16 = xmmword_100225FA0;
  }

  *v14 = v16;
  *(v14 + 16) = 13;
  sub_10010BA8C(0, v15, a3, a4, a5, a6);
}

void sub_100199120(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9, void *a10, void (*a11)(id), uint64_t a12)
{
  v14 = a7;

  v15 = a10;

  v16 = objc_opt_self();
  v17 = v14;
  swift_bridgeObjectRetain_n();
  v18 = v15;
  swift_retain_n();
  v19 = v17;
  v20 = v18;
  v21 = v19;
  v22 = v20;
  v23 = v21;
  v24 = v22;
  v25 = [v16 defaultManager];
  v26 = sub_100216964();
  v130 = v25;
  v27 = [v25 identityForIdentifier:v26];

  v131 = v23;
  if (!v27)
  {
    v45 = v23;
    v46 = qword_100297520;
    v47 = v45;
    swift_bridgeObjectRetain_n();
    v48 = v24;
    swift_retain_n();
    v49 = v47;
    v50 = v48;
    if (v46 != -1)
    {
      swift_once();
    }

    v51 = sub_100216774();
    sub_100002648(v51, qword_10029D160);
    v52 = sub_100216754();
    v53 = sub_100216C74();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      aBlock = v55;
      *v54 = 136446210;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v56 = sub_100216994();
      v58 = sub_100005FB0(v56, v57, &aBlock);

      *(v54 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v52, v53, "No longer have signing key pair; can't sign distrust: %{public}s", v54, 0xCu);
      sub_100006128(v55);
    }

    v59 = *&v49[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v60 = swift_allocObject();
    v60[2] = v49;
    v60[3] = a8;
    v61 = a9;
    v60[4] = a9;
    v60[5] = v50;
    v62 = swift_allocObject();
    *(v62 + 16) = sub_1001A948C;
    *(v62 + 24) = v60;
    v136 = sub_1001ACCC0;
    v137 = v62;
    aBlock = _NSConcreteStackBlock;
    v133 = 1107296256;
    v134 = sub_100109050;
    v135 = &unk_1002827E8;
    v63 = _Block_copy(&aBlock);
    v27 = v49;

    v64 = v50;

    [v59 performBlockAndWait:v63];
    _Block_release(v63);
    LOBYTE(v63) = swift_isEscapingClosureAtFileLocation();

    if (v63)
    {
      __break(1u);
      goto LABEL_44;
    }

    a11(0);

    swift_bridgeObjectRelease_n();

    goto LABEL_40;
  }

  v28 = [v27 resultType];
  if (v28)
  {
    if (v28 == 1)
    {
      sub_1000561D0();
      v62 = swift_allocError();
      v66 = xmmword_100225F90;
    }

    else
    {
      if (v28 == 2)
      {
        v29 = [v27 error];
        v30 = qword_100297520;
        v31 = v23;
        swift_bridgeObjectRetain_n();
        v32 = v24;
        swift_retain_n();
        v33 = v31;
        v34 = v32;
        if (v30 != -1)
        {
          swift_once();
        }

        v35 = sub_100216774();
        sub_100002648(v35, qword_10029D160);
        swift_errorRetain();
        v36 = sub_100216754();
        v37 = sub_100216C74();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v121 = v27;
          v39 = swift_slowAlloc();
          aBlock = v39;
          *v38 = 136446210;
          swift_errorRetain();
          sub_10001148C(&qword_100297E80, &unk_1002265A0);
          v40 = sub_100216994();
          v42 = sub_100005FB0(v40, v41, &aBlock);

          *(v38 + 4) = v42;
          _os_log_impl(&_mh_execute_header, v36, v37, "No longer have signing key pair; can't sign distrust: %{public}s", v38, 0xCu);
          sub_100006128(v39);
          v27 = v121;
        }

        v43 = v131;
        if (v29)
        {
          v44 = 0;
LABEL_31:
          a11(v29);
          sub_100186C6C(v44);

          swift_bridgeObjectRelease_n();

LABEL_42:
          swift_bridgeObjectRelease_n();

          return;
        }

        v126 = *&v33[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
        v95 = swift_allocObject();
        v95[2] = v33;
        v95[3] = a8;
        v95[4] = a9;
        v95[5] = v34;
        v96 = swift_allocObject();
        v44 = sub_1001ACE74;
        *(v96 + 16) = sub_1001ACE74;
        *(v96 + 24) = v95;
        v136 = sub_1001ACCC0;
        v137 = v96;
        aBlock = _NSConcreteStackBlock;
        v133 = 1107296256;
        v134 = sub_100109050;
        v135 = &unk_100282860;
        v97 = _Block_copy(&aBlock);
        v98 = v33;

        v99 = v34;

        [v126 performBlockAndWait:v97];
        _Block_release(v97);
        LOBYTE(v97) = swift_isEscapingClosureAtFileLocation();

        if ((v97 & 1) == 0)
        {
          v43 = v131;
          goto LABEL_31;
        }

        goto LABEL_46;
      }

      sub_1000561D0();
      v62 = swift_allocError();
      v66 = xmmword_100225FA0;
    }

    *v65 = v66;
    *(v65 + 16) = 13;
    v84 = qword_100297520;
    v85 = v23;
    swift_bridgeObjectRetain_n();
    v86 = v24;
    swift_retain_n();
    v64 = v85;
    v61 = v86;
    if (v84 == -1)
    {
LABEL_25:
      v87 = sub_100216774();
      sub_100002648(v87, qword_10029D160);
      swift_errorRetain();
      v88 = sub_100216754();
      v89 = sub_100216C74();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v123 = v27;
        v91 = swift_slowAlloc();
        aBlock = v91;
        *v90 = 136446210;
        swift_errorRetain();
        sub_10001148C(&qword_100297E80, &unk_1002265A0);
        v92 = sub_100216994();
        v94 = sub_100005FB0(v92, v93, &aBlock);

        *(v90 + 4) = v94;
        _os_log_impl(&_mh_execute_header, v88, v89, "No longer have signing key pair; can't sign distrust: %{public}s", v90, 0xCu);
        sub_100006128(v91);
        v27 = v123;
      }

      v43 = v131;
      a11(v62);

      swift_bridgeObjectRelease_n();

      goto LABEL_42;
    }

LABEL_44:
    swift_once();
    goto LABEL_25;
  }

  v67 = [v27 value];
  v122 = v27;
  if (!v67)
  {
LABEL_34:
    v100 = swift_allocObject();
    v100[2] = v23;
    v100[3] = a8;
    v100[4] = a9;
    v100[5] = v24;
    v100[6] = a11;
    v100[7] = a12;
    v101 = qword_100297520;
    v102 = v23;
    swift_bridgeObjectRetain_n();
    v103 = v24;
    swift_retain_n();
    v104 = v102;
    v127 = v103;
    if (v101 != -1)
    {
      swift_once();
    }

    v105 = sub_100216774();
    sub_100002648(v105, qword_10029D160);
    v106 = sub_100216754();
    v107 = sub_100216C74();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      aBlock = v109;
      *v108 = 136446210;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v110 = sub_100216994();
      v112 = sub_100005FB0(v110, v111, &aBlock);

      *(v108 + 4) = v112;
      _os_log_impl(&_mh_execute_header, v106, v107, "No longer have signing key pair; can't sign distrust: %{public}s", v108, 0xCu);
      sub_100006128(v109);
    }

    v113 = *&v104[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v114 = swift_allocObject();
    v114[2] = v104;
    v114[3] = a8;
    v114[4] = a9;
    v114[5] = v127;
    v115 = swift_allocObject();
    *(v115 + 16) = sub_1001ACE74;
    *(v115 + 24) = v114;
    v136 = sub_1001ACCC0;
    v137 = v115;
    aBlock = _NSConcreteStackBlock;
    v133 = 1107296256;
    v134 = sub_100109050;
    v135 = &unk_100282900;
    v116 = _Block_copy(&aBlock);
    v117 = v104;

    v118 = v127;

    [v113 performBlockAndWait:v116];
    _Block_release(v116);
    LOBYTE(v116) = swift_isEscapingClosureAtFileLocation();

    if (v116)
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    a11(0);

    swift_bridgeObjectRelease_n();

LABEL_40:

    goto LABEL_41;
  }

  v68 = v67;
  v69 = [v67 keyPair];

  if (!v69)
  {
    v23 = v131;
    goto LABEL_34;
  }

  objc_opt_self();
  v70 = swift_dynamicCastObjCClass();
  v23 = v131;
  if (!v70)
  {

    goto LABEL_34;
  }

  v71 = v70;
  v72 = swift_allocObject();
  v72[2] = v131;
  v72[3] = a8;
  v72[4] = a9;
  v72[5] = v24;
  v72[6] = a11;
  v72[7] = a12;
  v73 = v72;
  v129 = *&a3[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v74 = swift_allocObject();
  v74[2] = a3;
  v74[3] = a4;
  v74[4] = a5;
  v74[5] = a6;
  v74[6] = v71;
  v74[7] = sub_1001A94E8;
  v74[8] = v73;
  v75 = v74;
  v76 = swift_allocObject();
  *(v76 + 16) = sub_1001A9500;
  *(v76 + 24) = v75;
  v136 = sub_1001ACCC0;
  v137 = v76;
  aBlock = _NSConcreteStackBlock;
  v133 = 1107296256;
  v134 = sub_100109050;
  v135 = &unk_1002829C8;
  v119 = _Block_copy(&aBlock);
  v77 = v131;
  swift_bridgeObjectRetain_n();
  v78 = v24;
  swift_retain_n();
  v79 = v69;
  v80 = v77;
  v120 = v78;
  v81 = v79;
  v82 = a3;
  v83 = v80;

  [v129 performBlockAndWait:v119];

  _Block_release(v119);
  LOBYTE(v80) = swift_isEscapingClosureAtFileLocation();

  if ((v80 & 1) == 0)
  {

LABEL_41:
    v43 = v131;
    goto LABEL_42;
  }

LABEL_47:
  __break(1u);
}

void sub_10019A168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = [objc_opt_self() defaultManager];
  v15 = sub_100216964();
  v16 = [v14 identityForIdentifier:v15];

  if (!v16)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v27 = sub_100216774();
    sub_100002648(v27, qword_10029D160);
    v28 = sub_100216754();
    v29 = sub_100216C74();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      aBlock[0] = v31;
      *v30 = 136446210;
      v68 = 0;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v32 = sub_100216994();
      v34 = sub_100005FB0(v32, v33, aBlock);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "No longer have signing key pair; can't sign distrust: %{public}s", v30, 0xCu);
      sub_100006128(v31);
    }

    (a3)(0);
    goto LABEL_33;
  }

  v17 = [v16 resultType];
  if (!v17)
  {
    v38 = [v16 value];
    if (v38)
    {
      v39 = v38;
      v40 = [v38 keyPair];

      if (v40)
      {
        objc_opt_self();
        v41 = swift_dynamicCastObjCClass();
        if (v41)
        {
          v42 = v41;
          v66 = *&a5[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
          v43 = swift_allocObject();
          v44 = a4;
          v45 = v43;
          v43[2] = a5;
          v43[3] = a6;
          v43[4] = a7;
          v43[5] = a8;
          v43[6] = v42;
          v43[7] = a3;
          v43[8] = v44;
          a3 = swift_allocObject();
          *(a3 + 16) = sub_1001ACBD4;
          *(a3 + 24) = v45;
          aBlock[4] = sub_1001ACCC0;
          aBlock[5] = a3;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100109050;
          aBlock[3] = &unk_100285600;
          v46 = _Block_copy(aBlock);
          v47 = v40;
          v48 = a5;

          [v66 performBlockAndWait:v46];

          _Block_release(v46);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if ((isEscapingClosureAtFileLocation & 1) == 0)
          {
            return;
          }

          __break(1u);
LABEL_21:
          sub_1000561D0();
          v36 = swift_allocError();
          v37 = xmmword_100225FA0;
          goto LABEL_22;
        }
      }
    }

    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v58 = sub_100216774();
    sub_100002648(v58, qword_10029D160);
    v59 = sub_100216754();
    v60 = sub_100216C74();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      aBlock[0] = v62;
      *v61 = 136446210;
      v68 = 0;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v63 = sub_100216994();
      v65 = sub_100005FB0(v63, v64, aBlock);

      *(v61 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v59, v60, "No longer have signing key pair; can't sign distrust: %{public}s", v61, 0xCu);
      sub_100006128(v62);
    }

    (a3)(0);
LABEL_33:

    return;
  }

  if (v17 != 1)
  {
    if (v17 == 2)
    {
      v18 = [v16 error];
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v19 = sub_100216774();
      sub_100002648(v19, qword_10029D160);
      swift_errorRetain();
      v20 = sub_100216754();
      v21 = sub_100216C74();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        v23 = aBlock[0];
        *v22 = 136446210;
        v68 = v18;
        swift_errorRetain();
        sub_10001148C(&qword_100297E80, &unk_1002265A0);
        v24 = sub_100216994();
        v26 = sub_100005FB0(v24, v25, aBlock);

        *(v22 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v20, v21, "No longer have signing key pair; can't sign distrust: %{public}s", v22, 0xCu);
        sub_100006128(v23);
      }

      (a3)(v18);
      return;
    }

    goto LABEL_21;
  }

  sub_1000561D0();
  v36 = swift_allocError();
  v37 = xmmword_100225F90;
LABEL_22:
  *v35 = v37;
  *(v35 + 16) = 13;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v50 = sub_100216774();
  sub_100002648(v50, qword_10029D160);
  swift_errorRetain();
  v51 = sub_100216754();
  v52 = sub_100216C74();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    v54 = aBlock[0];
    *v53 = 136446210;
    v68 = v36;
    swift_errorRetain();
    sub_10001148C(&qword_100297E80, &unk_1002265A0);
    v55 = sub_100216994();
    v57 = sub_100005FB0(v55, v56, aBlock);

    *(v53 + 4) = v57;
    _os_log_impl(&_mh_execute_header, v51, v52, "No longer have signing key pair; can't sign distrust: %{public}s", v53, 0xCu);
    sub_100006128(v54);
  }

  (a3)(v36);
}

void sub_10019A9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = [objc_opt_self() defaultManager];
  v15 = sub_100216964();
  v16 = [v14 identityForIdentifier:v15];

  if (!v16)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v29 = sub_100216774();
    sub_100002648(v29, qword_10029D160);
    v30 = sub_100216754();
    v31 = sub_100216C74();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      aBlock[0] = v33;
      *v32 = 136446210;
      v74 = 0;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v34 = sub_100216994();
      v36 = sub_100005FB0(v34, v35, aBlock);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v30, v31, "setPreapprovedKeys: no signing key pair: %{public}s", v32, 0xCu);
      sub_100006128(v33);
    }

    sub_1000561D0();
    v37 = swift_allocError();
    *v38 = 0;
    *(v38 + 8) = 0;
    *(v38 + 16) = 13;
    (a3)(0, v37);

    goto LABEL_35;
  }

  v17 = [v16 resultType];
  if (!v17)
  {
    v42 = [v16 value];
    if (v42)
    {
      v43 = v42;
      v44 = [v42 keyPair];

      if (v44)
      {
        objc_opt_self();
        v45 = swift_dynamicCastObjCClass();
        if (v45)
        {
          v46 = v45;
          v72 = *&a5[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
          v47 = swift_allocObject();
          v48 = a4;
          v49 = v47;
          v47[2] = a5;
          v47[3] = a6;
          v47[4] = a7;
          v47[5] = a8;
          v47[6] = v46;
          v47[7] = a3;
          v47[8] = v48;
          a3 = swift_allocObject();
          *(a3 + 16) = sub_1001A9B88;
          *(a3 + 24) = v49;
          aBlock[4] = sub_1001ACCC0;
          aBlock[5] = a3;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100109050;
          aBlock[3] = &unk_100282EA0;
          v50 = _Block_copy(aBlock);
          v51 = v44;
          v52 = a5;

          [v72 performBlockAndWait:v50];

          _Block_release(v50);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if ((isEscapingClosureAtFileLocation & 1) == 0)
          {
            return;
          }

          __break(1u);
LABEL_23:
          sub_1000561D0();
          v40 = swift_allocError();
          v41 = xmmword_100225FA0;
          goto LABEL_24;
        }
      }
    }

    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v62 = sub_100216774();
    sub_100002648(v62, qword_10029D160);
    v63 = sub_100216754();
    v64 = sub_100216C74();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      aBlock[0] = v66;
      *v65 = 136446210;
      v74 = 0;
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v67 = sub_100216994();
      v69 = sub_100005FB0(v67, v68, aBlock);

      *(v65 + 4) = v69;
      _os_log_impl(&_mh_execute_header, v63, v64, "setPreapprovedKeys: no signing key pair: %{public}s", v65, 0xCu);
      sub_100006128(v66);
    }

    sub_1000561D0();
    v70 = swift_allocError();
    *v71 = 0;
    *(v71 + 8) = 0;
    *(v71 + 16) = 13;
    (a3)(0, v70);

LABEL_35:
    return;
  }

  if (v17 != 1)
  {
    if (v17 == 2)
    {
      v18 = [v16 error];
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v19 = sub_100216774();
      sub_100002648(v19, qword_10029D160);
      swift_errorRetain();
      v20 = sub_100216754();
      v21 = sub_100216C74();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        v23 = aBlock[0];
        *v22 = 136446210;
        v74 = v18;
        swift_errorRetain();
        sub_10001148C(&qword_100297E80, &unk_1002265A0);
        v24 = sub_100216994();
        v26 = sub_100005FB0(v24, v25, aBlock);

        *(v22 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v20, v21, "setPreapprovedKeys: no signing key pair: %{public}s", v22, 0xCu);
        sub_100006128(v23);
      }

      v27 = v18;
      if (!v18)
      {
        sub_1000561D0();
        v27 = swift_allocError();
        *v28 = 0;
        *(v28 + 8) = 0;
        *(v28 + 16) = 13;
      }

      swift_errorRetain();
      (a3)(0, v27);

      return;
    }

    goto LABEL_23;
  }

  sub_1000561D0();
  v40 = swift_allocError();
  v41 = xmmword_100225F90;
LABEL_24:
  *v39 = v41;
  *(v39 + 16) = 13;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v54 = sub_100216774();
  sub_100002648(v54, qword_10029D160);
  swift_errorRetain();
  v55 = sub_100216754();
  v56 = sub_100216C74();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    v58 = aBlock[0];
    *v57 = 136446210;
    v74 = v40;
    swift_errorRetain();
    sub_10001148C(&qword_100297E80, &unk_1002265A0);
    v59 = sub_100216994();
    v61 = sub_100005FB0(v59, v60, aBlock);

    *(v57 + 4) = v61;
    _os_log_impl(&_mh_execute_header, v55, v56, "setPreapprovedKeys: no signing key pair: %{public}s", v57, 0xCu);
    sub_100006128(v58);
  }

  swift_errorRetain();
  (a3)(0, v40);
}