uint64_t sub_1000C15E8(uint64_t a1)
{
  sub_1000C61CC();
  result = sub_1000E9B64();
  v3 = 0;
  v4 = *(a1 + 64);
  v17 = result;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v4;
  v8 = (v5 + 63) >> 6;
  if ((v6 & v4) != 0)
  {
    do
    {
      v9 = v3;
LABEL_9:
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v11 = *(a1 + 48) + 24 * (v10 | (v9 << 6));
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      sub_1000A1DD4(*v11, v13, v14);
      sub_1000C215C(v15, v12, v13, v14);
      result = sub_1000A1DF8(v15[0], v15[1], v16);
    }

    while (v7);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return v17;
    }

    v7 = *(a1 + 64 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

double sub_1000C1724()
{
  xmmword_10013DCA0 = xmmword_1000EC8E0;
  *algn_10013DCB0 = xmmword_1000EC910;
  result = 0.0;
  xmmword_10013DCC0 = xmmword_1000F4730;
  unk_10013DCD0 = xmmword_1000ED260;
  return result;
}

double sub_1000C1758()
{
  xmmword_10013DCE0 = xmmword_1000EC8E0;
  *algn_10013DCF0 = xmmword_1000EC910;
  result = 0.0;
  xmmword_10013DD00 = xmmword_1000F4730;
  return result;
}

uint64_t sub_1000C1784(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1000E9F74() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1000C1814(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[1].i64[0];
  if (v2 != a2[1].i64[0])
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 2;
  v4 = a2 + 2;
  do
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = vminv_u16(vmovn_s32(vceqq_f32(v6, v7)));
    if ((v8 & 1) == 0)
    {
      break;
    }

    --v2;
  }

  while (v2);
  return v8 & 1;
}

uint64_t sub_1000C1888(uint64_t a1)
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

  sub_1000E9E64();
LABEL_9:
  result = sub_1000E9D84();
  *v1 = result;
  return result;
}

uint64_t sub_1000C1A10(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v9 = &v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_1000C1D64(v12, v7, v5, a3);

  if (!v3)
  {
    return v13;
  }

  return result;
}

unint64_t *sub_1000C1B80(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  while (v8)
  {
    v9 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v10 = v9 | (v5 << 6);
LABEL_11:
    if ((*(*(a3 + 56) + 192 * v10 + 139) & 1) == 0)
    {
      *(result + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_1000C1E7C(result, a2, v4, a3);
      }
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= ((v6 + 63) >> 6))
    {
      return sub_1000C1E7C(result, a2, v4, a3);
    }

    v12 = *(a3 + 64 + 8 * v5);
    ++v11;
    if (v12)
    {
      v8 = (v12 - 1) & v12;
      v10 = __clz(__rbit64(v12)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1000C1C70(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  while (v8)
  {
    v9 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v10 = v9 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 192 * v10 + 139) == 1)
    {
      *(result + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_1000C1E7C(result, a2, v4, a3);
      }
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= ((v6 + 63) >> 6))
    {
      return sub_1000C1E7C(result, a2, v4, a3);
    }

    v12 = *(a3 + 64 + 8 * v5);
    ++v11;
    if (v12)
    {
      v8 = (v12 - 1) & v12;
      v10 = __clz(__rbit64(v12)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1000C1D64(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
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

void *sub_1000C1DEC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_1000C4458(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1000C1E7C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1000125FC(&unk_1001320A0);
  result = sub_1000E9EA4();
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
  v12 = result + 64;
  v52 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v53 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = *(v4 + 48) + 24 * v16;
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    v22 = (v17 + 192 * v16);
    v24 = *v22;
    v23 = v22[1];
    v25 = v22[3];
    v58 = v22[2];
    v59 = v25;
    v26 = v22[7];
    v28 = v22[4];
    v27 = v22[5];
    v62 = v22[6];
    v63 = v26;
    v60 = v28;
    v61 = v27;
    v30 = v22[9];
    v29 = v22[10];
    v31 = v22[8];
    v67 = *(v22 + 22);
    v65 = v30;
    v66 = v29;
    v64 = v31;
    v56 = v24;
    v57 = v23;
    sub_1000EA024();
    sub_1000A1DD4(v19, v20, v21);
    sub_1000B89BC(&v56, v54);
    sub_1000BB81C(v55, v19, v20, v21);
    result = sub_1000EA064();
    v32 = -1 << *(v9 + 32);
    v33 = result & ~v32;
    v34 = v33 >> 6;
    if (((-1 << v33) & ~*(v12 + 8 * (v33 >> 6))) == 0)
    {
      v36 = 0;
      v37 = (63 - v32) >> 6;
      while (++v34 != v37 || (v36 & 1) == 0)
      {
        v38 = v34 == v37;
        if (v34 == v37)
        {
          v34 = 0;
        }

        v36 |= v38;
        v39 = *(v12 + 8 * v34);
        if (v39 != -1)
        {
          v35 = __clz(__rbit64(~v39)) + (v34 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v35 = __clz(__rbit64((-1 << v33) & ~*(v12 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
    v40 = *(v9 + 48) + 24 * v35;
    *v40 = v19;
    *(v40 + 8) = v20;
    *(v40 + 16) = v21;
    v41 = *(v9 + 56) + 192 * v35;
    v42 = v56;
    v43 = v57;
    v44 = v59;
    *(v41 + 32) = v58;
    *(v41 + 48) = v44;
    *v41 = v42;
    *(v41 + 16) = v43;
    v45 = v60;
    v46 = v61;
    v47 = v63;
    *(v41 + 96) = v62;
    *(v41 + 112) = v47;
    *(v41 + 64) = v45;
    *(v41 + 80) = v46;
    v48 = v64;
    v49 = v65;
    v50 = v66;
    *(v41 + 176) = v67;
    *(v41 + 144) = v49;
    *(v41 + 160) = v50;
    *(v41 + 128) = v48;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v52;
    v10 = v53;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v53 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1000C215C(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v8 = *v4;
  sub_1000EA024();
  v26 = a3;
  sub_1000BB81C(v27, a2, a3, a4);
  v9 = sub_1000EA064();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = *(v8 + 48) + 24 * v11;
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      sub_1000A1DD4(*v13, v15, v16);
      v17 = sub_1000BB58C(v14, v15, v16, a2, v26, a4);
      sub_1000A1DF8(v14, v15, v16);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1000A1DF8(a2, v26, a4);
    v20 = *(v8 + 48) + 24 * v11;
    v21 = *v20;
    v22 = *(v20 + 8);
    *a1 = *v20;
    *(a1 + 8) = v22;
    v23 = *(v20 + 16);
    *(a1 + 16) = v23;
    sub_1000A1DD4(v21, v22, v23);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27[0] = *v24;
    sub_1000A1DD4(a2, v26, a4);
    sub_1000C2954(a2, v26, a4, v11, isUniquelyReferenced_nonNull_native);
    *v24 = v27[0];
    *a1 = a2;
    *(a1 + 8) = v26;
    *(a1 + 16) = a4;
    return 1;
  }
}

uint64_t sub_1000C232C(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  sub_1000EA024();
  sub_1000E9974();
  v8 = sub_1000EA064();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1000E9F74() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1000C2B14(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1000C247C()
{
  v1 = v0;
  v2 = *v0;
  sub_1000125FC(&qword_1001333B0);
  result = sub_1000E9D34();
  v4 = result;
  if (*(v2 + 16))
  {
    v29 = v2;
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
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 24 * (v14 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      sub_1000EA024();
      sub_1000BB81C(v30, v18, v19, v20);
      result = sub_1000EA064();
      v21 = -1 << *(v4 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 24 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      *(v13 + 16) = v20;
      ++*(v4 + 16);
      v2 = v29;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v2 + 32);
    if (v28 >= 64)
    {
      bzero(v6, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v28;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1000C26F4()
{
  v1 = v0;
  v2 = *v0;
  sub_1000125FC(&qword_1001333C8);
  result = sub_1000E9D34();
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
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1000EA024();
      sub_1000E9974();
      result = sub_1000EA064();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

Swift::Int sub_1000C2954(Swift::Int result, uint64_t a2, char a3, unint64_t a4, char a5)
{
  v8 = result;
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 > v9 && (a5 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a5)
  {
    sub_1000C247C();
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_1000C2C94();
      goto LABEL_12;
    }

    sub_1000C2F58();
  }

  v11 = *v5;
  sub_1000EA024();
  sub_1000BB81C(v26, v8, a2, a3);
  result = sub_1000EA064();
  v12 = -1 << *(v11 + 32);
  a4 = result & ~v12;
  if ((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v13 = ~v12;
    do
    {
      v14 = *(v11 + 48) + 24 * a4;
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = *(v14 + 16);
      sub_1000A1DD4(*v14, v16, v17);
      v18 = sub_1000BB58C(v15, v16, v17, v8, a2, a3);
      result = sub_1000A1DF8(v15, v16, v17);
      if (v18)
      {
        goto LABEL_15;
      }

      a4 = (a4 + 1) & v13;
    }

    while (((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_12:
  v19 = *v24;
  *(*v24 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v20 = *(v19 + 48) + 24 * a4;
  *v20 = v8;
  *(v20 + 8) = a2;
  *(v20 + 16) = a3;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v19 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1000E9F94();
  __break(1u);
  return result;
}

Swift::Int sub_1000C2B14(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_1000C26F4();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1000C2DFC();
      goto LABEL_16;
    }

    sub_1000C31B0();
  }

  v10 = *v4;
  sub_1000EA024();
  sub_1000E9974();
  result = sub_1000EA064();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1000E9F74();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1000E9F94();
  __break(1u);
  return result;
}

void *sub_1000C2C94()
{
  v1 = v0;
  sub_1000125FC(&qword_1001333B0);
  v2 = *v0;
  v3 = sub_1000E9D24();
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v4 + 48) + v17;
        v22 = *(v18 + 16);
        *v21 = *v18;
        *(v21 + 8) = v20;
        *(v21 + 16) = v22;
        result = sub_1000A1DD4(v19, v20, v22);
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

void *sub_1000C2DFC()
{
  v1 = v0;
  sub_1000125FC(&qword_1001333C8);
  v2 = *v0;
  v3 = sub_1000E9D24();
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

uint64_t sub_1000C2F58()
{
  v1 = v0;
  v2 = *v0;
  sub_1000125FC(&qword_1001333B0);
  result = sub_1000E9D34();
  v4 = result;
  if (*(v2 + 16))
  {
    v28 = v2;
    v5 = 0;
    v6 = v2 + 56;
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
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 24 * (v14 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      sub_1000EA024();
      sub_1000A1DD4(v18, v19, v20);
      sub_1000BB81C(v29, v18, v19, v20);
      result = sub_1000EA064();
      v21 = -1 << *(v4 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 24 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      *(v13 + 16) = v20;
      ++*(v4 + 16);
      v2 = v28;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v16 = *(v6 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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

uint64_t sub_1000C31B0()
{
  v1 = v0;
  v2 = *v0;
  sub_1000125FC(&qword_1001333C8);
  result = sub_1000E9D34();
  v4 = result;
  if (*(v2 + 16))
  {
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
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_1000EA024();

      sub_1000E9974();
      result = sub_1000EA064();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
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

uint64_t sub_1000C33E8(unint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v4;
  sub_1000EA024();
  v22 = a1;
  v23 = a2;
  sub_1000BB81C(v24, a1, a2, a3);
  v9 = sub_1000EA064();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(v8 + 48) + 24 * v11;
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(v13 + 16);
    sub_1000A1DD4(*v13, v15, v16);
    v17 = sub_1000BB58C(v14, v15, v16, v22, v23, a3);
    sub_1000A1DF8(v14, v15, v16);
    if (v17)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v4;
  v24[0] = *v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000C2C94();
    v20 = v24[0];
  }

  v21 = *(*(v20 + 48) + 24 * v11);
  sub_1000C36B8(v11);
  result = v21;
  *v4 = v24[0];
  return result;
}

uint64_t sub_1000C357C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1000EA024();
  sub_1000E9974();
  v6 = sub_1000EA064();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1000E9F74() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000C2DFC();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1000C38F4(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_1000C36B8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1000E9CE4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      v28 = v4;
      do
      {
        v10 = 24 * v6;
        v11 = v3;
        v12 = *(v3 + 48) + 24 * v6;
        v13 = *v12;
        v14 = *(v12 + 8);
        v15 = v2;
        v16 = *(v12 + 16);
        v17 = v9;
        sub_1000EA024();
        sub_1000A1DD4(v13, v14, v16);
        sub_1000BB81C(v29, v13, v14, v16);
        v18 = sub_1000EA064();
        v19 = v16;
        v2 = v15;
        sub_1000A1DF8(v13, v14, v19);
        v9 = v17;
        v20 = v18 & v7;
        if (v15 >= v17)
        {
          if (v20 < v17)
          {
            v4 = v28;
            v3 = v11;
          }

          else
          {
            v4 = v28;
            v3 = v11;
            if (v2 >= v20)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
          v4 = v28;
          v3 = v11;
          if (v20 >= v9 || v2 >= v20)
          {
LABEL_12:
            v21 = *(v3 + 48);
            v22 = v21 + 24 * v2;
            v23 = (v21 + v10);
            if (24 * v2 < v10 || v22 >= v23 + 24 || v2 != v6)
            {
              v24 = *v23;
              *(v22 + 16) = *(v23 + 2);
              *v22 = v24;
              v2 = v6;
            }
          }
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

  v25 = *(v3 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v27;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1000C38F4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1000E9CE4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1000EA024();

        sub_1000E9974();
        v10 = sub_1000EA064();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
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

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1000C3AB8(uint64_t result)
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
        v11 = *(v2 + 48) + 24 * (v10 | (v9 << 6));
        v12 = *v11;
        v13 = *(v11 + 8);
        v14 = *(v11 + 16);
        sub_1000A1DD4(*v11, v13, v14);
        v15 = sub_1000C33E8(v12, v13, v14);
        sub_1000C61B8(v15, v16, v17);
        result = sub_1000A1DF8(v12, v13, v14);
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

_BYTE *sub_1000C3C00(uint64_t a1, void *a2)
{
  v6 = a2;
  if (a2[2])
  {
    v60 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v65 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v73 = a2 + 7;

    v15 = 0;
    v67 = v8;
    v66 = v12;
    v72 = v6;
    v68 = v13;
    while (1)
    {
      if (!v11)
      {
        v16 = v15;
        while (1)
        {
          v17 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_42;
          }

          if (v17 >= v12)
          {
            goto LABEL_39;
          }

          v11 = *(v8 + 8 * v17);
          ++v16;
          if (v11)
          {
            v15 = v17;
            break;
          }
        }
      }

      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v69 = v15;
      v19 = *(v13 + 48) + 24 * (v18 | (v15 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      sub_1000EA024();
      sub_1000A1DD4(v20, v21, v22);
      v23 = v20;
      v71 = v21;
      v70 = v22;
      sub_1000BB81C(v74, v20, v21, v22);
      v24 = sub_1000EA064();
      v25 = -1 << v6[32];
      v8 = v24 & ~v25;
      v4 = v8 >> 6;
      v12 = 1 << v8;
      if (((1 << v8) & v73[v8 >> 6]) != 0)
      {
        break;
      }

LABEL_6:
      sub_1000A1DF8(v23, v71, v70);
      v13 = v68;
      v8 = v67;
      v15 = v69;
      v12 = v66;
    }

    v2 = ~v25;
    while (1)
    {
      v26 = *(v6 + 6) + 24 * v8;
      v5 = *v26;
      v3 = *(v26 + 8);
      v27 = *(v26 + 16);
      sub_1000A1DD4(*v26, v3, v27);
      v28 = sub_1000BB58C(v5, v3, v27, v23, v71, v70);
      sub_1000A1DF8(v5, v3, v27);
      if (v28)
      {
        break;
      }

      v8 = (v8 + 1) & v2;
      v4 = v8 >> 6;
      v6 = v72;
      v12 = 1 << v8;
      if (((1 << v8) & v73[v8 >> 6]) == 0)
      {
        goto LABEL_6;
      }
    }

    v29 = v69;
    v76 = v65;
    v77 = v69;
    v78 = v11;
    v5 = v67;
    v2 = v68;
    v75[0] = v68;
    v75[1] = v67;
    v30 = sub_1000A1DF8(v23, v71, v70);
    v3 = v72;
    v31 = v72[32];
    v61 = ((1 << v31) + 63) >> 6;
    v14 = 8 * v61;
    if ((v31 & 0x3Fu) > 0xD)
    {
      goto LABEL_43;
    }

    while (1)
    {
      v62 = &v59;
      __chkstk_darwin(v30);
      v33 = &v59 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v33, v73, v32);
      v34 = *&v33[8 * v4] & ~v12;
      v64 = v33;
      *&v33[8 * v4] = v34;
      v35 = *(v3 + 16) - 1;
      v36 = v66;
LABEL_21:
      v63 = v35;
      while (v11)
      {
LABEL_29:
        v39 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v69 = v29;
        v40 = *(v2 + 48) + 24 * (v39 | (v29 << 6));
        v41 = *v40;
        v42 = *(v40 + 8);
        v43 = *(v40 + 16);
        sub_1000EA024();
        sub_1000A1DD4(v41, v42, v43);
        v44 = v41;
        v71 = v42;
        v70 = v43;
        sub_1000BB81C(v74, v41, v42, v43);
        v8 = v74;
        v45 = sub_1000EA064();
        v46 = -1 << *(v3 + 32);
        v12 = v45 & ~v46;
        v4 = v12 >> 6;
        v47 = 1 << v12;
        if (((1 << v12) & v73[v12 >> 6]) != 0)
        {
          v48 = ~v46;
          while (1)
          {
            v49 = *(v3 + 48) + 24 * v12;
            v50 = *v49;
            v8 = *(v49 + 8);
            v51 = *(v49 + 16);
            sub_1000A1DD4(*v49, v8, v51);
            v52 = sub_1000BB58C(v50, v8, v51, v44, v71, v70);
            sub_1000A1DF8(v50, v8, v51);
            if (v52)
            {
              break;
            }

            v12 = (v12 + 1) & v48;
            v4 = v12 >> 6;
            v3 = v72;
            v47 = 1 << v12;
            if (((1 << v12) & v73[v12 >> 6]) == 0)
            {
              goto LABEL_22;
            }
          }

          sub_1000A1DF8(v44, v71, v70);
          v53 = v64[v4];
          v64[v4] = v53 & ~v47;
          v54 = (v53 & v47) == 0;
          v3 = v72;
          v2 = v68;
          v5 = v67;
          v29 = v69;
          v36 = v66;
          if (!v54)
          {
            v35 = v63 - 1;
            if (__OFSUB__(v63, 1))
            {
              __break(1u);
            }

            if (v63 == 1)
            {

              v6 = &_swiftEmptySetSingleton;
              goto LABEL_39;
            }

            goto LABEL_21;
          }
        }

        else
        {
LABEL_22:
          sub_1000A1DF8(v44, v71, v70);
          v2 = v68;
          v5 = v67;
          v29 = v69;
          v36 = v66;
        }
      }

      v37 = v29;
      while (1)
      {
        v38 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        if (v38 >= v36)
        {
          v6 = sub_1000C48F0(v64, v61, v63, v3);
          goto LABEL_39;
        }

        v11 = *(v5 + 8 * v38);
        ++v37;
        if (v11)
        {
          v29 = v38;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      v56 = v14;

      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }

      v29 = v69;
    }

    v57 = swift_slowAlloc();
    memcpy(v57, v73, v56);
    v58 = v60;
    v6 = sub_1000C4B38(v57, v61, v3, v8, v75);

    if (!v58)
    {

      v65 = v76;
LABEL_39:
      sub_1000258DC();
      return v6;
    }

    __break(1u);
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_1000C4294(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    bzero(&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_1000C4458(&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_1000C1DEC(v11, v6, a2, a1);
  }

  return v9;
}

uint64_t sub_1000C4458(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v55 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_22:
    v29 = 0;
    v54 = v5 + 56;
    v30 = 1 << *(v5 + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v32 = v31 & *(v5 + 56);
    v33 = (v30 + 63) >> 6;
    v66 = v4 + 56;
    v57 = v33;
    v58 = 0;
    while (1)
    {
      v5 = a3;
      if (!v32)
      {
        break;
      }

      v34 = __clz(__rbit64(v32));
      v64 = (v32 - 1) & v32;
LABEL_34:
      v60 = v34 | (v29 << 6);
      v37 = *(a3 + 48) + 24 * v60;
      v38 = *v37;
      v39 = *(v37 + 8);
      v40 = *(v37 + 16);
      sub_1000EA024();
      sub_1000A1DD4(v38, v39, v40);
      v41 = v38;
      v42 = v39;
      LODWORD(v68) = v40;
      sub_1000BB81C(v67, v38, v39, v40);
      v43 = sub_1000EA064();
      v44 = -1 << *(v4 + 32);
      v45 = v43 & ~v44;
      if ((*(v66 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
      {
        v46 = ~v44;
        while (1)
        {
          v47 = *(v4 + 48) + 24 * v45;
          v48 = *v47;
          v5 = *(v47 + 8);
          v49 = *(v47 + 16);
          sub_1000A1DD4(*v47, v5, v49);
          v50 = sub_1000BB58C(v48, v5, v49, v41, v42, v68);
          sub_1000A1DF8(v48, v5, v49);
          if (v50)
          {
            break;
          }

          v45 = (v45 + 1) & v46;
          v4 = a4;
          if (((*(v66 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        result = sub_1000A1DF8(v41, v42, v68);
        v4 = a4;
        *(v55 + ((v60 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v60;
        v33 = v57;
        v28 = __OFADD__(v58++, 1);
        v32 = v64;
        if (v28)
        {
          __break(1u);
          goto LABEL_42;
        }
      }

      else
      {
LABEL_26:
        result = sub_1000A1DF8(v41, v42, v68);
        v33 = v57;
        v32 = v64;
      }
    }

    v35 = v29;
    while (1)
    {
      v29 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v29 >= v33)
      {
        goto LABEL_42;
      }

      v36 = *(v54 + 8 * v29);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v64 = (v36 - 1) & v36;
        goto LABEL_34;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = 0;
    v51 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v58 = 0;
    v59 = a3 + 56;
    v53 = v10;
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v56 = (v9 - 1) & v9;
LABEL_14:
      v14 = *(a4 + 48) + 24 * (v11 | (v6 << 6));
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = *(v14 + 16);
      sub_1000EA024();
      sub_1000A1DD4(v15, v16, v17);
      v68 = v15;
      v65 = v16;
      v63 = v17;
      sub_1000BB81C(v67, v15, v16, v17);
      v18 = sub_1000EA064();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = 1 << v20;
      if (((1 << v20) & *(v59 + 8 * (v20 >> 6))) != 0)
      {
        v23 = ~v19;
        while (1)
        {
          v24 = *(v5 + 48) + 24 * v20;
          v25 = *v24;
          v26 = *(v24 + 8);
          v4 = *(v24 + 16);
          sub_1000A1DD4(*v24, v26, *(v24 + 16));
          v27 = sub_1000BB58C(v25, v26, v4, v68, v65, v63);
          sub_1000A1DF8(v25, v26, v4);
          if (v27)
          {
            break;
          }

          v20 = (v20 + 1) & v23;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          v5 = a3;
          if (((1 << v20) & *(v59 + 8 * (v20 >> 6))) == 0)
          {
            goto LABEL_6;
          }
        }

        result = sub_1000A1DF8(v68, v65, v63);
        v10 = v53;
        v55[v21] |= v22;
        v9 = v56;
        v28 = __OFADD__(v58++, 1);
        v5 = a3;
        if (v28)
        {
          __break(1u);
          goto LABEL_22;
        }
      }

      else
      {
LABEL_6:
        result = sub_1000A1DF8(v68, v65, v63);
        v10 = v53;
        v9 = v56;
      }
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
LABEL_42:

        return sub_1000C48F0(v55, a2, v58, v5);
      }

      v13 = *(v51 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v56 = (v13 - 1) & v13;
        goto LABEL_14;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000C48F0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_1000125FC(&qword_1001333B0);
  result = sub_1000E9D44();
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
    v31 = (v10 - 1) & v10;
LABEL_17:
    v16 = *(v4 + 48) + 24 * (v13 | (v11 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    sub_1000EA024();
    sub_1000A1DD4(v17, v18, v19);
    sub_1000BB81C(v32, v17, v18, v19);
    result = sub_1000EA064();
    v20 = -1 << v9[32];
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
    v28 = *(v9 + 6) + 24 * v23;
    *v28 = v17;
    *(v28 + 8) = v18;
    *(v28 + 16) = v19;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    v10 = v31;
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
      v31 = (v15 - 1) & v15;
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

unint64_t *sub_1000C4B38(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = *(a3 + 16);
  v32 = result;
  v33 = a5;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v6 = v5 - 1;
  v34 = a3 + 56;
  while (2)
  {
    v31 = v6;
    do
    {
      while (1)
      {
        v7 = a5[3];
        v8 = a5[4];
        if (!v8)
        {
          v10 = (a5[2] + 64) >> 6;
          v11 = a5[3];
          while (1)
          {
            v9 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              __break(1u);
              goto LABEL_24;
            }

            if (v9 >= v10)
            {
              break;
            }

            v8 = *(a5[1] + 8 * v9);
            ++v11;
            if (v8)
            {
              goto LABEL_10;
            }
          }

          if (v10 <= v7 + 1)
          {
            v29 = v7 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_1000C48F0(v32, a2, v31, a3);
        }

        v9 = a5[3];
LABEL_10:
        v12 = *(*a5 + 48) + 24 * (__clz(__rbit64(v8)) | (v9 << 6));
        v13 = *v12;
        v14 = *(v12 + 8);
        v15 = *(v12 + 16);
        a5[3] = v9;
        a5[4] = (v8 - 1) & v8;
        sub_1000EA024();
        sub_1000A1DD4(v13, v14, v15);
        v16 = v13;
        v38 = v14;
        v36 = v15;
        sub_1000BB81C(v37, v13, v14, v15);
        v17 = sub_1000EA064();
        v18 = -1 << *(a3 + 32);
        v19 = v17 & ~v18;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v34 + 8 * (v19 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        result = sub_1000A1DF8(v16, v38, v36);
        a5 = v33;
      }

      v22 = ~v18;
      while (1)
      {
        v23 = *(a3 + 48) + 24 * v19;
        v24 = *v23;
        v25 = *(v23 + 8);
        v26 = *(v23 + 16);
        sub_1000A1DD4(*v23, v25, v26);
        v27 = sub_1000BB58C(v24, v25, v26, v16, v38, v36);
        sub_1000A1DF8(v24, v25, v26);
        if (v27)
        {
          break;
        }

        v19 = (v19 + 1) & v22;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v34 + 8 * (v19 >> 6))) == 0)
        {
          goto LABEL_3;
        }
      }

      result = sub_1000A1DF8(v16, v38, v36);
      a5 = v33;
      v28 = v32[v20];
      v32[v20] = v28 & ~v21;
    }

    while ((v28 & v21) == 0);
    v6 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_24:
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

uint64_t sub_1000C4DB8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1000E9E64();
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
      result = sub_1000E9E64();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000C62B4();
          for (i = 0; i != v6; ++i)
          {
            sub_1000125FC(&qword_1001333D0);
            v9 = sub_100025228(v13, i, a3);
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
        sub_1000250A8();
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

uint64_t sub_1000C4F38(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  v4 = 0;
  if (vminv_u16(vmovn_s32(vceqq_f32(a1, a3))))
  {
    v5 = vmovn_s32(vceqq_f32(a2, a4));
    if (v5.i8[0] & 1) != 0 && (v5.i8[2] & 1) != 0 && (v5.i8[4])
    {
      v4 = v5.i8[6];
    }
  }

  return v4 & 1;
}

BOOL sub_1000C4F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (BYTE4(a2))
  {
    if (BYTE4(a2) == 1)
    {
      v4 = *&a2 == *&a4;
      if (*(&a1 + 1) != *(&a3 + 1))
      {
        v4 = 0;
      }

      if (*&a1 != *&a3)
      {
        v4 = 0;
      }

      return BYTE4(a4) == 1 && v4;
    }

    else
    {
      v6 = *(&a1 + 1) == *(&a3 + 1);
      if (*&a1 != *&a3)
      {
        v6 = 0;
      }

      return BYTE4(a4) == 2 && v6;
    }
  }

  else if (BYTE4(a4))
  {
    return 0;
  }

  else
  {
    return *&a1 == *&a3 && *(&a1 + 1) == *(&a3 + 1) && *&a2 == *&a4;
  }
}

BOOL sub_1000C5054(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    if (!a6)
    {
      return *&a1 == *&a4 && *(&a1 + 1) == *(&a4 + 1) && *&a2 == *&a5;
    }

    return 0;
  }

  if (a3 == 1)
  {
    return a6 == 1 && *&a1 == *&a4;
  }

  if (a6 != 2)
  {
    return 0;
  }

  v8 = *(&a2 + 1) == *(&a5 + 1);
  if (*&a2 != *&a5)
  {
    v8 = 0;
  }

  if (*(&a1 + 1) != *(&a4 + 1))
  {
    v8 = 0;
  }

  return *&a1 == *&a4 && v8;
}

BOOL sub_1000C5130(float32x4_t *a1, float32x4_t *a2)
{
  v3 = a1->f32[0];
  v2 = a1->f32[1];
  v5 = a2->f32[0];
  v4 = a2->f32[1];
  v6 = a2->u8[12];
  if (a1->i8[12])
  {
    if (a1->i8[12] != 1)
    {
      if (v6 != 2)
      {
        return 0;
      }

      if (v3 != v5 || v2 != v4)
      {
        return 0;
      }

      goto LABEL_21;
    }

    if (v6 != 1)
    {
      return 0;
    }
  }

  else if (a2->i8[12])
  {
    return 0;
  }

  if (v3 != v5 || v2 != v4 || a1->f32[2] != a2->f32[2])
  {
    return 0;
  }

LABEL_21:
  v10 = a1[5];
  v11 = a2[5];
  v12 = a2[6].u8[0];
  if (a1[6].i8[0])
  {
    if (a1[6].i8[0] == 1)
    {
      v13 = 0;
      if (v12 != 1 || (vmovn_s32(vceqq_f32(v10, v11)).u8[0] & 1) == 0)
      {
        return v13;
      }
    }

    else
    {
      v13 = 0;
      if (v12 != 2 || (~vaddvq_s32(vandq_s8(vceqq_f32(v10, v11), xmmword_1000F1F70)) & 0xF) != 0)
      {
        return v13;
      }
    }
  }

  else
  {
    v13 = 0;
    if (a2[6].i8[0])
    {
      return v13;
    }

    v14 = vmovn_s32(vceqq_f32(v10, v11));
    if ((v14.i8[0] & 1) == 0 || (v14.i8[2] & 1) == 0 || (v14.i8[4] & 1) == 0)
    {
      return v13;
    }
  }

  if (a1[6].f32[1] != a2[6].f32[1] || a1[6].f32[3] != a2[6].f32[3])
  {
    return 0;
  }

  if (a1[8].i8[8])
  {
    if (a2[8].i8[8])
    {
LABEL_45:
      if (((a1[8].u8[11] ^ a2[8].u8[11]) & 1) != 0 || a1[11].f32[0] != a2[11].f32[0])
      {
        return 0;
      }

      return a1[11].f32[1] == a2[11].f32[1];
    }
  }

  else if ((a2[8].i8[8] & 1) == 0)
  {
    v13 = 0;
    v15 = a1[7].i64[0];
    v16 = a2[7].i64[0];
    if (*&v15 != *&v16)
    {
      return v13;
    }

    if (*(&v15 + 1) != *(&v16 + 1))
    {
      return v13;
    }

    v17 = a1[7].i64[1];
    v18 = a2[7].i64[1];
    if (*&v17 != *&v18)
    {
      return v13;
    }

    if (*(&v17 + 1) != *(&v18 + 1))
    {
      return v13;
    }

    v19 = a1[8].i64[0];
    v20 = a2[8].i64[0];
    if (*&v19 != *&v20 || *(&v19 + 1) != *(&v20 + 1))
    {
      return v13;
    }

    goto LABEL_45;
  }

  return 0;
}

uint64_t sub_1000C5334(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10011EEB0;
  v6._object = a2;
  v4 = sub_1000E9EC4(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000C5380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 0)
  {
  }

  else
  {
  }
}

uint64_t sub_1000C538C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 0)
  {
  }

  else
  {
  }
}

void sub_1000C539C(__n128 *a1@<X0>, double *a2@<X1>, _OWORD *a3@<X8>)
{
  *&v5 = (*(v3 + 16))(*a1, a1[1], a1[2], a1[3], *a2);
  *a3 = v5;
  a3[1] = v6;
  a3[2] = v7;
  a3[3] = v8;
}

uint64_t sub_1000C53DC@<X0>(uint64_t result@<X0>, char **a2@<X8>)
{
  v2 = 0;
  v50 = result;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = _swiftEmptyArrayStorage;
  v8 = (v4 + 63) >> 6;
  v48 = _swiftEmptyArrayStorage;
  v49 = _swiftEmptyArrayStorage;
  v47 = _swiftEmptyArrayStorage;
  if (v6)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v9 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_39;
    }

    if (v9 >= v8)
    {
      break;
    }

    v6 = *(v3 + 8 * v9);
    ++v2;
    if (v6)
    {
      v2 = v9;
      do
      {
LABEL_8:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = v10 | (v2 << 6);
        v12 = *(v50 + 48) + 24 * v11;
        v14 = *v12;
        v13 = *(v12 + 8);
        v15 = *(v12 + 16);
        v16 = *(v50 + 56) + 192 * v11;
        v17 = *(v16 + 48);
        v19 = *v16;
        v18 = *(v16 + 16);
        v52[2] = *(v16 + 32);
        v52[3] = v17;
        v52[0] = v19;
        v52[1] = v18;
        v20 = *(v16 + 112);
        v22 = *(v16 + 64);
        v21 = *(v16 + 80);
        v52[6] = *(v16 + 96);
        v52[7] = v20;
        v52[4] = v22;
        v52[5] = v21;
        v24 = *(v16 + 144);
        v23 = *(v16 + 160);
        v25 = *(v16 + 128);
        v53 = *(v16 + 176);
        v52[9] = v24;
        v52[10] = v23;
        v52[8] = v25;
        v26 = BYTE9(v25);
        sub_1000A1DD4(v14, v13, v15);
        if (v26 == 3)
        {
          sub_1000B89BC(v52, v51);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_1000A36B4(0, *(v7 + 2) + 1, 1, v7);
          }

          v28 = *(v7 + 2);
          v27 = *(v7 + 3);
          if (v28 >= v27 >> 1)
          {
            v7 = sub_1000A36B4((v27 > 1), v28 + 1, 1, v7);
          }

          result = sub_1000C5E5C(v52);
          *(v7 + 2) = v28 + 1;
          v29 = &v7[24 * v28];
        }

        else
        {
          if (v26)
          {
            if (v26 == 1)
            {
              sub_1000B89BC(v52, v51);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v48 = sub_1000A36B4(0, *(v48 + 2) + 1, 1, v48);
              }

              v31 = *(v48 + 2);
              v30 = *(v48 + 3);
              v32 = v31 + 1;
              if (v31 >= v30 >> 1)
              {
                v48 = sub_1000A36B4((v30 > 1), v31 + 1, 1, v48);
              }

              result = sub_1000C5E5C(v52);
              v33 = v48;
            }

            else
            {
              sub_1000B89BC(v52, v51);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v47 = sub_1000A36B4(0, *(v47 + 2) + 1, 1, v47);
              }

              v31 = *(v47 + 2);
              v35 = *(v47 + 3);
              v32 = v31 + 1;
              if (v31 >= v35 >> 1)
              {
                v47 = sub_1000A36B4((v35 > 1), v31 + 1, 1, v47);
              }

              result = sub_1000C5E5C(v52);
              v33 = v47;
            }
          }

          else
          {
            sub_1000B89BC(v52, v51);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v49 = sub_1000A36B4(0, *(v49 + 2) + 1, 1, v49);
            }

            v31 = *(v49 + 2);
            v34 = *(v49 + 3);
            v32 = v31 + 1;
            if (v31 >= v34 >> 1)
            {
              v49 = sub_1000A36B4((v34 > 1), v31 + 1, 1, v49);
            }

            result = sub_1000C5E5C(v52);
            v33 = v49;
          }

          *(v33 + 2) = v32;
          v29 = &v33[24 * v31];
        }

        *(v29 + 4) = v14;
        *(v29 + 5) = v13;
        v29[48] = v15;
      }

      while (v6);
    }
  }

  v36 = *(v7 + 2);
  v37 = *(v49 + 2);
  v38 = __OFADD__(v36, v37);
  v39 = v36 + v37;
  if (v38)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v40 = *(v48 + 2);
  v38 = __OFADD__(v39, v40);
  v41 = v39 + v40;
  if (v38)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v42 = *(v47 + 2);
  v38 = __OFADD__(v41, v42);
  v43 = v41 + v42;
  if (!v38)
  {
    v44 = v43 & ~(v43 >> 63);

    *&v52[0] = sub_1000A36B4(0, v44, 0, _swiftEmptyArrayStorage);
    sub_1000BA27C(v7);
    sub_1000BA27C(v49);
    sub_1000BA27C(v48);
    result = sub_1000BA27C(v47);
    v45 = *&v52[0];
    *a2 = v7;
    a2[1] = v49;
    a2[2] = v48;
    a2[3] = v47;
    a2[4] = v45;
    return result;
  }

LABEL_41:
  __break(1u);
  return result;
}

void *sub_1000C57EC@<X0>(char a1@<W0>, char a2@<W1>, unsigned __int8 a3@<W2>, void *a4@<X8>)
{
  if (a3 > 3u)
  {
    if (a3 > 5u)
    {
      if (a3 == 6)
      {
        if (a1)
        {
          if (a2)
          {
            if (qword_10012F5F0 != -1)
            {
              swift_once();
            }

            v5 = &xmmword_10013C940;
          }

          else
          {
            if (qword_10012F5E8 != -1)
            {
              swift_once();
            }

            v5 = &xmmword_10013C730;
          }
        }

        else
        {
          if (qword_10012F590 != -1)
          {
            swift_once();
          }

          v5 = &xmmword_10013B080;
        }
      }

      else if (a1)
      {
        if (a2)
        {
          if (qword_10012F600 != -1)
          {
            swift_once();
          }

          v5 = &xmmword_10013CD60;
        }

        else
        {
          if (qword_10012F5F8 != -1)
          {
            swift_once();
          }

          v5 = &xmmword_10013CB50;
        }
      }

      else
      {
        if (qword_10012F598 != -1)
        {
          swift_once();
        }

        v5 = &xmmword_10013B290;
      }
    }

    else if (a3 == 4)
    {
      if (a1)
      {
        if (a2)
        {
          if (qword_10012F620 != -1)
          {
            swift_once();
          }

          v5 = &xmmword_10013D5A0;
        }

        else
        {
          if (qword_10012F618 != -1)
          {
            swift_once();
          }

          v5 = &xmmword_10013D390;
        }
      }

      else
      {
        if (qword_10012F5A0 != -1)
        {
          swift_once();
        }

        v5 = &xmmword_10013B4A0;
      }
    }

    else if (a1)
    {
      if (a2)
      {
        if (qword_10012F610 != -1)
        {
          swift_once();
        }

        v5 = &xmmword_10013D180;
      }

      else
      {
        if (qword_10012F608 != -1)
        {
          swift_once();
        }

        v5 = &xmmword_10013CF70;
      }
    }

    else
    {
      if (qword_10012F588 != -1)
      {
        swift_once();
      }

      v5 = &xmmword_10013AE70;
    }
  }

  else if (a3 > 1u)
  {
    if (a3 == 2)
    {
      if (a1)
      {
        if (a2)
        {
          if (qword_10012F630 != -1)
          {
            swift_once();
          }

          v5 = &xmmword_10013D9C0;
        }

        else
        {
          if (qword_10012F628 != -1)
          {
            swift_once();
          }

          v5 = &xmmword_10013D7B0;
        }
      }

      else
      {
        if (qword_10012F5A8 != -1)
        {
          swift_once();
        }

        v5 = &xmmword_10013B6B0;
      }
    }

    else if (a1)
    {
      if (a2)
      {
        if (qword_10012F5C8 != -1)
        {
          swift_once();
        }

        v5 = &xmmword_10013BEF0;
      }

      else
      {
        if (qword_10012F5B8 != -1)
        {
          swift_once();
        }

        v5 = &xmmword_10013BAD0;
      }
    }

    else
    {
      if (qword_10012F578 != -1)
      {
        swift_once();
      }

      v5 = &xmmword_10013AA50;
    }
  }

  else if (a3)
  {
    if (a1)
    {
      if (a2)
      {
        if (qword_10012F5D0 != -1)
        {
          swift_once();
        }

        v5 = &xmmword_10013C100;
      }

      else
      {
        if (qword_10012F5C0 != -1)
        {
          swift_once();
        }

        v5 = &xmmword_10013BCE0;
      }
    }

    else
    {
      if (qword_10012F580 != -1)
      {
        swift_once();
      }

      v5 = &xmmword_10013AC60;
    }
  }

  else if (a1)
  {
    if (a2)
    {
      if (qword_10012F5E0 != -1)
      {
        swift_once();
      }

      v5 = &xmmword_10013C520;
    }

    else
    {
      if (qword_10012F5D8 != -1)
      {
        swift_once();
      }

      v5 = &xmmword_10013C310;
    }
  }

  else
  {
    if (qword_10012F5B0 != -1)
    {
      swift_once();
    }

    v5 = &xmmword_10013B8C0;
  }

  memcpy(v10, v5, sizeof(v10));
  _MTLPackedFloat3.init(_:_:_:)(v6, v7, v8);
  memcpy(__dst, v10, sizeof(__dst));
  return memcpy(a4, __dst, 0x208uLL);
}

double sub_1000C5E8C(int8x16_t a1, int8x16_t a2, __n128 a3)
{
  v3 = a3.n128_f32[2] + (*a1.i32 + *&a2.i32[1]);
  if (v3 >= 0.0)
  {
    v10 = sqrtf(v3 + 1.0);
    v11 = vrecpe_f32(COERCE_UNSIGNED_INT(v10 + v10));
    v12 = vmul_f32(v11, vrecps_f32(COERCE_UNSIGNED_INT(v10 + v10), v11));
    v22 = vmul_n_f32(vsub_f32(vzip1_s32(*&vextq_s8(a2, a2, 8uLL), a3.n128_u64[0]), vext_s8(a3.n128_u64[0], *&vextq_s8(a1, a1, 8uLL), 4uLL)), vmul_f32(v12, vrecps_f32(COERCE_UNSIGNED_INT(v10 + v10), v12)).f32[0]);
  }

  else if (*a1.i32 < *&a2.i32[1] || *a1.i32 < a3.n128_f32[2])
  {
    v5 = 1.0 - *a1.i32;
    if (*&a2.i32[1] >= a3.n128_f32[2])
    {
      v23 = sqrtf(*&a2.i32[1] + (v5 - a3.n128_f32[2]));
      *&v24 = v23 + v23;
      v25 = vrecpe_f32(v24);
      v26 = vmul_f32(v25, vrecps_f32(v24, v25));
      v27.i32[0] = vmul_f32(v26, vrecps_f32(v24, v26)).u32[0];
      v26.f32[0] = *&a1.i32[1] + *a2.i32;
      v26.i32[1] = v24;
      v27.i32[1] = 0.25;
      v22 = vmul_f32(v26, v27);
    }

    else
    {
      v6 = sqrtf(a3.n128_f32[2] + (v5 - *&a2.i32[1]));
      v7 = vrecpe_f32(COERCE_UNSIGNED_INT(v6 + v6));
      v8 = vmul_f32(v7, vrecps_f32(COERCE_UNSIGNED_INT(v6 + v6), v7));
      v22 = vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(a1, a1, 8uLL), *&vextq_s8(a2, a2, 8uLL)), a3.n128_u64[0]), vmul_f32(v8, vrecps_f32(COERCE_UNSIGNED_INT(v6 + v6), v8)).f32[0]);
      __asm { FMOV            V0.2S, #0.25 }
    }
  }

  else
  {
    v13 = sqrtf(*a1.i32 + ((1.0 - *&a2.i32[1]) - a3.n128_f32[2]));
    v14.f32[0] = v13 + v13;
    v15 = vrecpe_f32(v14.u32[0]);
    v16 = vmul_f32(v15, vrecps_f32(v14.u32[0], v15));
    v17 = vmul_f32(v16, vrecps_f32(v14.u32[0], v16)).u32[0];
    v14.f32[1] = *&a1.i32[1] + *a2.i32;
    __asm { FMOV            V5.2S, #0.25 }

    _D5.i32[1] = v17;
    v22 = vmul_f32(v14, _D5);
  }

  return *&v22;
}

void sub_1000C604C(float32x4_t a1, float32x4_t a2, float a3)
{
  v3 = vmulq_f32(a1, a2);
  v4 = vextq_s8(v3, v3, 8uLL);
  *v3.f32 = vadd_f32(*v3.f32, *v4.f32);
  v3.f32[0] = vaddv_f32(*v3.f32);
  v4.i64[0] = 0;
  sub_1000C6AA4(a1, vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v3, v4)), 0), vnegq_f32(a2), a2), a3);
}

uint64_t sub_1000C6078(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x800000000000) != 0)
  {
  }

  else
  {
  }
}

double sub_1000C6084(float a1)
{
  v7 = *(v1 + 1064);
  *v3.i64 = (*(v1 + 280))(a1);
  v6 = v3;
  *v4.i64 = (*(v1 + 808))(a1);
  *&result = vaddq_f32(v6, vmulq_n_f32(vsubq_f32(v4, v6), v7)).u64[0];
  return result;
}

uint64_t sub_1000C61B8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1000A1DF8(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_1000C61CC()
{
  result = qword_1001333B8;
  if (!qword_1001333B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001333B8);
  }

  return result;
}

uint64_t sub_1000C6220(uint64_t a1)
{
  v2 = sub_1000125FC(&qword_1001333C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000C62B4()
{
  result = qword_1001333D8;
  if (!qword_1001333D8)
  {
    sub_100019048(&qword_1001333D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001333D8);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for SpaceScene.UnlockAdjustment.Movement(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SpaceScene.UnlockAdjustment.Movement(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SpaceScene.UnlockAdjustment.Movement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

__n128 sub_1000C640C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000C6428(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1000C6470(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000C64CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 > 0x80000000FFFFFFFFLL)
  {
    v3 = ~HIDWORD(v2);
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1000C651C(uint64_t result, int a2, int a3)
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
      *(result + 16) = -a2 << 32;
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

uint64_t sub_1000C6584(uint64_t result, uint64_t a2)
{
  *(result + 16) = *(result + 16);
  *(result + 24) = a2 << 63;
  return result;
}

uint64_t sub_1000C65B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000C65FC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1000C6654(uint64_t a1)
{
  if ((*(a1 + 16) & 0xFu) <= 8)
  {
    return *(a1 + 16) & 0xF;
  }

  else
  {
    return (*a1 + 9);
  }
}

uint64_t sub_1000C6670(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 17))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 16);
  if (v3 <= 9)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000C66B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 16) = 0;
    *result = a2 - 247;
    *(result + 8) = 0;
    if (a3 >= 0xF7)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
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

uint64_t sub_1000C66FC(uint64_t result, unsigned int a2)
{
  if (a2 >= 9)
  {
    *result = a2 - 9;
    *(result + 8) = 0;
    LOBYTE(a2) = 9;
  }

  *(result + 16) = a2;
  return result;
}

__n128 sub_1000C6724(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_1000C6738(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 28))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000C6758(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 28) = v3;
  return result;
}

__n128 sub_1000C6798(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 sub_1000C67BC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for SpaceScene.Light.Gobo.MaskGradient(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for SpaceScene.Light.Color(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SpaceScene.Light.Color(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for SpaceScene.Light.Color(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

void *initializeBufferWithCopyOfBuffer for SpaceScene.Light.Kind(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SpaceScene.Light.Kind(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 13))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 12);
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

uint64_t storeEnumTagSinglePayload for SpaceScene.Light.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      *(result + 12) = -a2;
    }
  }

  return result;
}

unint64_t sub_1000C6994()
{
  result = qword_1001333E0;
  if (!qword_1001333E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001333E0);
  }

  return result;
}

unint64_t sub_1000C69EC()
{
  result = qword_1001333E8;
  if (!qword_1001333E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001333E8);
  }

  return result;
}

unint64_t sub_1000C6A50()
{
  result = qword_1001333F0;
  if (!qword_1001333F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001333F0);
  }

  return result;
}

void sub_1000C6AA4(float32x4_t a1, float32x4_t a2, float a3)
{
  v5 = 1.0 - a3;
  v6 = vsubq_f32(a1, a2);
  v7 = vmulq_f32(v6, v6);
  v8 = vaddq_f32(a1, a2);
  v9 = vmulq_f32(v8, v8);
  v10 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v9.i8, *&vextq_s8(v9, v9, 8uLL)))));
  v11 = v10 + v10;
  if ((v10 + v10) != 0.0)
  {
    sinf(v11);
  }

  if ((v5 * v11) != 0.0)
  {
    sinf(v5 * v11);
  }

  v12 = v11 * a3;
  if (v12 != 0.0)
  {
    sinf(v12);
  }
}

void sub_1000C6C28()
{
  v0 = kCGColorSpaceDisplayP3;
  v1 = CGColorSpaceCreateWithName(v0);

  qword_10013DD10 = v1;
}

uint64_t sub_1000C6C6C(uint64_t result)
{
  v2 = *(v1 + 112);
  if (v2 != 4)
  {
    if (result == 4 || (result = sub_10009E380(*(v1 + 112), result), (result & 1) == 0) && (v2 = *(v1 + 112), v2 != 4))
    {
      v3 = [objc_allocWithZone(MTLComputePipelineDescriptor) init];
      v4 = *(v1 + 80);
      v5 = sub_1000E98E4();

      v6 = [v4 newFunctionWithName:v5];

      [v3 setComputeFunction:v6];
      swift_unknownObjectRelease();
      [v3 setThreadGroupSizeIsMultipleOfThreadExecutionWidth:1];
      v7 = *(v1 + 72);
      v18 = 0;
      v8 = [v7 newComputePipelineStateWithDescriptor:v3 options:0 reflection:0 error:&v18];
      if (v8)
      {
        v9 = v18;
      }

      else
      {
        v10 = v18;
        sub_1000E92E4();

        swift_willThrow();
      }

      *(v1 + 64) = v8;
      swift_unknownObjectRelease();
      v11 = 0xD000000000000012;
      v12 = "RampsTwo-D93-D94";
      if (v2 == 2)
      {
        v11 = 0xD000000000000010;
        v12 = "RampsFour-D93-D94";
      }

      v13 = "shippou::one::compute";
      if (v2)
      {
        v14 = 0xD000000000000011;
      }

      else
      {
        v14 = 0xD000000000000010;
      }

      if (v2)
      {
        v13 = "RampsOne-D93-D94";
      }

      if (v2 <= 1)
      {
        v15 = v14;
      }

      else
      {
        v15 = v11;
      }

      if (v2 <= 1)
      {
        v16 = v13;
      }

      else
      {
        v16 = v12;
      }

      v17 = sub_1000C7580(v7, v15, (v16 | 0x8000000000000000), 6711668, 0xE300000000000000, 4);

      *(v1 + 104) = v17;
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t ShippouRenderer.__allocating_init(device:identifier:pixelWidth:pixelHeight:commandBuffer:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 96) = a3;
  *(v7 + 104) = 0;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0;
  *(v7 + 112) = 4;
  *(v7 + 88) = a2;
  *(v7 + 64) = 0;
  *(v7 + 72) = a1;
  v8 = [swift_unknownObjectRetain() newDefaultLibrary];
  v9 = v8;
  if (v8)
  {
    *(v7 + 80) = v8;
    type metadata accessor for ShippouScene();
    swift_allocObject();
    swift_unknownObjectRetain();
    v10 = ShippouScene.init(device:)(a1);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (!v3)
    {
      *(v7 + 56) = v10;
      return v7;
    }

    v11 = 0;
  }

  else
  {
    sub_1000C71D0();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v11 = *(v7 + 16);
  }

  sub_1000056DC(v11);
  sub_1000056DC(*(v7 + 32));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v9)
  {
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  swift_deallocPartialClassInstance();
  return v7;
}

unint64_t sub_1000C71D0()
{
  result = qword_100133400;
  if (!qword_100133400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133400);
  }

  return result;
}

uint64_t sub_1000C7224(float64_t a1, float64_t a2)
{
  sub_1000125FC(&qword_100132540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000EC880;
  v3 = objc_opt_self();
  v4 = [v3 mainScreen];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v40.origin.x = v6;
  v40.origin.y = v8;
  v40.size.width = v10;
  v40.size.height = v12;
  v13 = CGRectGetWidth(v40) * 0.5;
  *(inited + 32) = v13;
  v14 = [v3 mainScreen];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v41.origin.x = v16;
  v41.origin.y = v18;
  v41.size.width = v20;
  v41.size.height = v22;
  v23 = CGRectGetHeight(v41) * 0.5;
  *(inited + 36) = v23;
  sub_1000AB4A4(inited);
  v25 = v24;
  swift_setDeallocating();
  v26 = swift_initStackObject();
  v27.f64[0] = a1;
  *(v26 + 16) = xmmword_1000EC880;
  v27.f64[1] = a2;
  *(v26 + 32) = vsub_f32(vcvt_f32_f64(v27), v25);
  sub_1000AB4A4(v26);
  v29 = v28;
  swift_setDeallocating();
  swift_beginAccess();
  sub_1000AB4A4(&off_100121FB0);
  __asm { FMOV            V1.2S, #1.0 }

  v36 = vminnm_f32(vmaxnm_f32(vdiv_f32(v29, v25), v30), _D1);

  ShippouScene.tap(at:)(v36);
}

uint64_t ShippouRenderer.deinit()
{
  sub_1000056DC(*(v0 + 16));
  sub_1000056DC(*(v0 + 32));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t ShippouRenderer.__deallocating_deinit()
{
  ShippouRenderer.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1000C7498()
{
  if (qword_10012F6F8 != -1)
  {
    swift_once();
  }

  v0 = qword_10013DD10;
  v1 = qword_10013DD10;
  return v0;
}

int64_t sub_1000C7580(CGImage *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v67 = a6;
  v65 = a1;
  v7 = sub_1000E93B4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v13 = (&v55 - v12);
  v14 = [objc_opt_self() mainBundle];
  v64 = a3;
  v15 = sub_1000E98E4();
  v16 = sub_1000E98E4();
  v17 = [v14 URLForResource:v15 withExtension:v16];

  if (!v17)
  {
    sub_1000C71D0();
    swift_allocError();
    *v49 = 1;
    swift_willThrow();
    return v10;
  }

  sub_1000E9364();

  (*(v8 + 32))(v13, v10, v7);
  v10 = v13;
  sub_1000E9384();
  v18 = sub_1000E98E4();

  v19 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, v18, kCFURLPOSIXPathStyle, 0);
  v20 = v13;
  if (!v19)
  {
    goto LABEL_21;
  }

  v21 = v19;
  v22 = CGImageSourceCreateWithURL(v19, 0);
  if (!v22)
  {
    v10 = v21;
LABEL_20:

LABEL_21:
    sub_1000C71D0();
    swift_allocError();
    *v50 = 1;
    swift_willThrow();

LABEL_22:
    (*(v8 + 8))(v20, v7);
    return v10;
  }

  v10 = v22;
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v22, 0, 0);
  if (!ImageAtIndex)
  {

    goto LABEL_20;
  }

  v24 = ImageAtIndex;
  v25 = CGColorSpaceCreateWithName(kCGColorSpaceExtendedLinearSRGB);
  if (!v25)
  {
    sub_1000C71D0();
    swift_allocError();
    *v51 = 1;
    swift_willThrow();

    goto LABEL_22;
  }

  v62 = v7;
  v63 = v25;
  v59 = v10;
  v60 = v8;
  v61 = v20;
  Width = CGImageGetWidth(v24);
  Height = CGImageGetHeight(v24);
  BitsPerComponent = CGImageGetBitsPerComponent(v24);
  result = CGImageGetWidth(v24);
  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v30 = v67;
  v31 = 2 * result * v67;
  if ((2 * result * v67) >> 64 != v31 >> 63)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v32 = BitsPerComponent;
  v10 = v63;
  v33 = sub_1000C8264(Width, Height, v32, v31, v63);
  if (!v33)
  {
    sub_1000C71D0();
    swift_allocError();
    *v52 = 1;
    swift_willThrow();

LABEL_28:
    (*(v60 + 8))(v61, v62);
    return v10;
  }

  v34 = v33;
  CGImageGetWidth(v24);
  CGImageGetHeight(v24);
  v10 = v34;
  sub_1000E9B74();
  Data = CGBitmapContextGetData(v34);
  v36 = v62;
  if (!Data)
  {
    sub_1000C71D0();
    swift_allocError();
    *v53 = 1;
    swift_willThrow();

    (*(v60 + 8))(v61, v36);
    return v10;
  }

  v37 = Data;
  v58 = v10;
  v38 = [objc_allocWithZone(MTLTextureDescriptor) init];
  [v38 setTextureType:2];
  [v38 setPixelFormat:115];
  [v38 setWidth:CGImageGetWidth(v24)];
  [v38 setHeight:CGImageGetHeight(v24)];
  [v38 setUsage:1];
  v39 = [(CGImage *)v65 newTextureWithDescriptor:v38];
  if (!v39)
  {
    sub_1000C71D0();
    v10 = v24;
    swift_allocError();
    *v54 = 1;
    swift_willThrow();

    goto LABEL_28;
  }

  v10 = v39;
  v57 = v37;
  v65 = v24;
  v40 = sub_1000E98E4();
  [(CGColorSpace *)v10 setLabel:v40];

  v64 = [v38 width];
  v56 = [v38 height];
  v41 = v38;
  result = [v38 width];
  if (result + 0x4000000000000000 < 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v42 = 2 * result * v30;
  if ((2 * result * v30) >> 64 != v42 >> 63)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v43 = [v38 width];
  result = [v38 height];
  v44 = v43 * result;
  if ((v43 * result) >> 64 != (v43 * result) >> 63)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v46 = v61;
  v45 = v62;
  v47 = v60;
  v48 = v63;
  if (v44 + 0x4000000000000000 < 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if ((2 * v44 * v67) >> 64 == (2 * v44 * v67) >> 63)
  {
    memset(v66, 0, 24);
    v66[3] = v64;
    v66[4] = v56;
    v66[5] = 1;
    [(CGColorSpace *)v10 replaceRegion:v66 mipmapLevel:0 slice:0 withBytes:v57 bytesPerRow:v42 bytesPerImage:?];

    (*(v47 + 8))(v46, v45);
    return v10;
  }

LABEL_35:
  __break(1u);
  return result;
}

char *sub_1000C7C84(char *result, void *a2, void *a3)
{
  if (result[52])
  {
    return result;
  }

  v4 = v3;
  v7 = *(result + 2);
  v8 = *(result + 3);
  v9 = result;

  v10 = sub_100099E60(v7, v8);
  if (v10 == 4)
  {
    goto LABEL_3;
  }

  v13 = v10;
  v14 = sub_1000997F8();
  v16 = v15;
  if (*(v4 + 112) == 4)
  {

LABEL_7:
    v12 = *(v4 + 112);
    *(v4 + 112) = v13;
    goto LABEL_8;
  }

  if (v14 == sub_1000997F8() && v16 == v33)
  {
  }

  else
  {
    v35 = sub_1000E9F74();

    if ((v35 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

LABEL_3:
  if (*(v4 + 112) != 4)
  {
    goto LABEL_9;
  }

  v11 = sub_100099CF8();
  v12 = *(v4 + 112);
  *(v4 + 112) = v11;
LABEL_8:
  sub_1000C6C6C(v12);
LABEL_9:
  swift_beginAccess();

  ShippouScene.update(state:size:isSnapshotting:)(v9, *(v4 + 49), [a2 width], objc_msgSend(a2, "height"));

  sub_100013B98(32, 32, &v42);
  v17 = v42;
  v18 = v43;
  v19 = v44;
  result = [a2 width];
  v20 = &result[v17];
  if (__OFADD__(result, v17))
  {
    __break(1u);
    goto LABEL_33;
  }

  v21 = v20 - 1;
  if (__OFSUB__(v20, 1))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (!v17)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v20 == 0x8000000000000001 && v17 == -1)
  {
    goto LABEL_38;
  }

  result = [a2 height];
  v22 = &result[v18];
  if (__OFADD__(result, v18))
  {
    goto LABEL_35;
  }

  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (!v18)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    return result;
  }

  if (v24 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_39;
  }

  sub_100013B98(v21 / v17, v24 / v18, &v42);
  v25 = *(v4 + 64);
  if (v25)
  {
    v27 = v42;
    v26 = v43;
    v39 = v44;
    swift_unknownObjectRetain();
    v28 = [a3 computeCommandEncoder];
    if (v28)
    {
      v29 = v28;
      v37 = v26;
      v38 = v19;
      v30 = *(v4 + 56);
      v31 = *(v30 + 24);
      swift_beginAccess();
      [v29 setBuffer:v31 offset:*(v30 + 32) atIndex:0];
      v32 = *(v4 + 56);
      swift_beginAccess();
      [v29 setBuffer:*(v32 + 16) offset:0 atIndex:1];
      [v29 setTexture:a2 atIndex:0];
      [v29 setTexture:*(v4 + 104) atIndex:1];
      [v29 setComputePipelineState:v25];
      v41[0] = v27;
      v41[1] = v37;
      v41[2] = v39;
      v40[0] = v17;
      v40[1] = v18;
      v40[2] = v38;
      [v29 dispatchThreadgroups:v41 threadsPerThreadgroup:v40];
      [v29 endEncoding];
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  sub_1000C71D0();
  swift_allocError();
  *v36 = 2;
  return swift_willThrow();
}

uint64_t sub_1000C804C(void *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 96) = a3;
  *(v3 + 104) = 0;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0;
  *(v3 + 112) = 4;
  *(v3 + 88) = a2;
  *(v3 + 64) = 0;
  *(v3 + 72) = a1;
  v6 = [swift_unknownObjectRetain() newDefaultLibrary];
  v7 = v6;
  if (v6)
  {
    *(v3 + 80) = v6;
    type metadata accessor for ShippouScene();
    swift_allocObject();
    swift_unknownObjectRetain();
    v8 = ShippouScene.init(device:)(a1);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (!v4)
    {
      *(v3 + 56) = v8;
      return v3;
    }
  }

  else
  {
    sub_1000C71D0();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  sub_1000056DC(*(v3 + 16));
  sub_1000056DC(*(v3 + 32));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v7)
  {
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  swift_deallocPartialClassInstance();
  return v3;
}

unint64_t sub_1000C8210()
{
  result = qword_1001334F8;
  if (!qword_1001334F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001334F8);
  }

  return result;
}

MercuryPosterExtension::ToriLight::LightType_optional __swiftcall ToriLight.LightType.init(rawValue:)(Swift::Int32 rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

Swift::Int sub_1000C829C()
{
  v1 = *v0;
  sub_1000EA024();
  sub_1000EA054(v1);
  return sub_1000EA064();
}

Swift::Int sub_1000C8310()
{
  v1 = *v0;
  sub_1000EA024();
  sub_1000EA054(v1);
  return sub_1000EA064();
}

int *sub_1000C8354@<X0>(int *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t ToriLight.customDistance.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

uint64_t ToriLight.spotBlend.setter(float a1)
{
  result = swift_beginAccess();
  *(v1 + 52) = a1;
  return result;
}

uint64_t ToriLight.applyNormal.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 56) = a1;
  return result;
}

uint64_t ToriLight.softFalloff.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 57) = a1;
  return result;
}

uint64_t ToriLight.animationKeys.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;
}

uint64_t sub_1000C8670@<X0>(uint64_t a1@<X8>, double a2@<D0>, float a3@<S1>)
{
  sub_1000AB384(&off_10011EDC0);
  sub_1000AB384(&off_10011EDF0);
  sub_1000AB384(&off_10011EE20);
  result = swift_beginAccess();
  v8 = *(v3 + 64);
  v9 = *(v8 + 16);
  if (!v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v9 == 1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v9 < 3)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  *v7.i32 = 1.0 - a3;
  v10 = 1.0 - (1.0 - a3);
  v11 = (*(v8 + 224) * *&a2) + ((1.0 - *&a2) * ((v10 * *(v8 + 64)) + ((1.0 - a3) * *(v8 + 144))));
  v55 = *(v8 + 160);
  v56 = *(v8 + 80);
  v57 = *(v8 + 240);
  v53 = *(v8 + 116);
  v54 = *(v8 + 36);
  v52 = *(v8 + 196);
  v12 = (*(v8 + 192) * *&a2) + ((1.0 - *&a2) * ((v10 * *(v8 + 32)) + (*v7.i32 * *(v8 + 112))));
  v13 = *(v8 + 48);
  v14 = vsubq_f32(*(v8 + 128), v13);
  v15 = COERCE_FLOAT(*(v8 + 56)) + vmuls_lane_f32(*v7.i32, v14, 2);
  *v13.f32 = vadd_f32(*v13.f32, vmul_n_f32(*v14.f32, *v7.i32));
  v67 = vadd_f32(*v13.f32, vmul_n_f32(vsub_f32(*(v8 + 208), *v13.f32), *&a2));
  v16 = v15 + ((COERCE_FLOAT(*(v8 + 216)) - v15) * *&a2);
  v50 = *(v8 + 96);
  v51 = *(v8 + 256);
  v59 = 1.0 - *&a2;
  v60 = v10;
  v17 = *(v8 + 176);
  v58 = v7;
  v18 = (*(v8 + 260) * *&a2) + ((1.0 - *&a2) * ((v10 * *(v8 + 100)) + (*v7.i32 * *(v8 + 180))));
  swift_beginAccess();
  v19 = v67.f32[1];
  if (v67.f32[1] <= v16)
  {
    v19 = v16;
  }

  if (v67.f32[0] > v19)
  {
    v19 = v67.f32[0];
  }

  v20 = sqrtf(fmaxf((fabsf(v12 / 100.0) * v19) / 0.01, 1.0e-16));
  if (*(v3 + 48))
  {
    v21 = v18;
  }

  else
  {
    v21 = v20;
  }

  v64 = matrix_identity_float4x4.columns[0];
  v22 = __sincosf_stret(v11);
  sub_1000125FC(&qword_100132540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000ED250;
  *(inited + 32) = matrix_identity_float4x4.columns[1].i32[0];
  *(inited + 36) = v22.__cosval;
  *(inited + 40) = v22.__sinval;
  sub_1000AB384(inited);
  v71 = v24;
  swift_setDeallocating();
  v25 = vmulq_f32(v71, v71);
  *&v26 = v25.f32[2] + vaddv_f32(*v25.f32);
  *v25.f32 = vrsqrte_f32(v26);
  *v25.f32 = vmul_f32(*v25.f32, vrsqrts_f32(v26, vmul_f32(*v25.f32, *v25.f32)));
  v72 = vmulq_n_f32(v71, vmul_f32(*v25.f32, vrsqrts_f32(v26, vmul_f32(*v25.f32, *v25.f32))).f32[0]);
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_1000ED250;
  *(v27 + 32) = v64.i64[0];
  *(v27 + 40) = v64.i32[2];
  sub_1000AB384(v27);
  v65 = v28;
  swift_setDeallocating();
  v29 = vmulq_f32(v65, v65);
  *&v30 = v29.f32[2] + vaddv_f32(*v29.f32);
  *v29.f32 = vrsqrte_f32(v30);
  *v29.f32 = vmul_f32(*v29.f32, vrsqrts_f32(v30, vmul_f32(*v29.f32, *v29.f32)));
  v66 = vmulq_n_f32(v65, vmul_f32(*v29.f32, vrsqrts_f32(v30, vmul_f32(*v29.f32, *v29.f32))).f32[0]);
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_1000ED250;
  *(v31 + 32) = matrix_identity_float4x4.columns[2].i32[0];
  *(v31 + 36) = -v22.__sinval;
  *(v31 + 40) = v22.__cosval;
  sub_1000AB384(v31);
  v62 = v32;
  swift_setDeallocating();
  v33 = vmulq_f32(v62, v62);
  *&v34 = v33.f32[2] + vaddv_f32(*v33.f32);
  *v33.f32 = vrsqrte_f32(v34);
  *v33.f32 = vmul_f32(*v33.f32, vrsqrts_f32(v34, vmul_f32(*v33.f32, *v33.f32)));
  v63 = vmulq_n_f32(v62, vmul_f32(*v33.f32, vrsqrts_f32(v34, vmul_f32(*v33.f32, *v33.f32))).f32[0]);
  v35 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v63, v63), v63, 0xCuLL), vnegq_f32(v66)), v63, vextq_s8(vuzp1q_s32(v66, v66), v66, 0xCuLL));
  v36 = vextq_s8(v35, v35, 8uLL);
  v36.i32[1] = v35.i32[0];
  v37.i64[1] = v72.i64[1];
  if ((vmuls_lane_f32(v72.f32[2], *v35.i8, 1) + vaddv_f32(vmul_f32(*v72.f32, *v36.f32))) < 0.0)
  {
    *v38.f32 = vsub_f32(0, *v72.f32);
    v38.f32[2] = 0.0 - v72.f32[2];
    v38.i32[3] = 0;
    v72 = v38;
  }

  v39 = 1.0 / fmaxf(v21 * v21, 1.0e-14);
  v40 = (v51 * *&a2) + (v59 * ((v60 * v50) + (*v58.i32 * v17)));
  v41 = (v52 * *&a2) + (v59 * ((v60 * v54) + (*v58.i32 * v53)));
  *v36.f32 = vdup_lane_s32(*&a2, 0);
  *v37.f32 = vdup_lane_s32(v58, 0);
  *&v42 = vaddq_f32(vmulq_f32(v57, v36), vmulq_n_f32(vaddq_f32(vmulq_n_f32(v56, v60), vmulq_f32(v37, v55)), v59)).u64[0];
  *(&v42 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(*&a2, v57, 2) + (v59 * vaddv_f32(vmul_f32(__PAIR64__(v58.u32[0], LODWORD(v60)), vzip1_s32(*&vextq_s8(v56, v56, 8uLL), *&vextq_s8(v55, v55, 8uLL))))));
  v70 = v42;
  swift_beginAccess();
  v61 = *(v3 + 32);
  v43 = cosf(v41 * 0.5);
  swift_beginAccess();
  v44 = fminf((1.0 - v43) * *(v3 + 52), 1.0);
  v45 = fmaxf(v40, 0.001);
  v46 = v12 * (1.0 / (((v45 * v45) * 12.566) * 3.1416));
  *&v47 = vmul_n_f32(v67, v46);
  *(&v47 + 1) = COERCE_UNSIGNED_INT(v16 * v46);
  v68 = v47;
  swift_beginAccess();
  v48 = *(v3 + 56);
  result = swift_beginAccess();
  v49 = *(v3 + 57);
  *a1 = v70;
  *(a1 + 16) = v39;
  *(a1 + 32) = v68;
  *(a1 + 48) = v43;
  *(a1 + 52) = v44;
  *(a1 + 56) = v45;
  *(a1 + 60) = v48;
  *(a1 + 61) = v49;
  *(a1 + 64) = v66;
  *(a1 + 80) = vdiv_f32(*v61.i8, vdup_laneq_s32(v61, 2));
  *(a1 + 96) = v72;
  *(a1 + 112) = v63;
  return result;
}

uint64_t ToriLight.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1000C8CC8()
{
  result = qword_100133500;
  if (!qword_100133500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133500);
  }

  return result;
}

__n128 sub_1000C8D1C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1000C8D40(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000C8D60(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 128) = v3;
  return result;
}

__n128 sub_1000C8DBC(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000C8DE0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000C8E00(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
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

  *(result + 72) = v3;
  return result;
}

uint64_t sub_1000C8E80(void *a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      sub_1000E2A84();
    }

    else
    {
      sub_1000C8F84();
    }
  }

  else if (a2 == 2)
  {
    sub_1000E51CC();
  }

  else if (a2 == 3)
  {
    sub_10009A7E0();
  }

  else
  {
    sub_1000D17B0();
  }

  swift_beginAccess();
  v4 = *(v2 + 144);
  if (v4 >> 62)
  {
    result = sub_1000E9E64();
  }

  else
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((result - 0x100000000000000) >> 57 == 127)
  {
    result = [a1 newBufferWithLength:result << 7 options:0];
    if (result)
    {
      v6 = result;
      swift_beginAccess();
      *(v2 + 24) = v6;
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000C8F84()
{
  sub_1000AB384(&off_10011C1E0);
  v340 = v0;
  type metadata accessor for ToriLight();
  v1 = swift_allocObject();
  *(v1 + 48) = 0;
  *(v1 + 52) = 0;
  *(v1 + 56) = 257;
  *(v1 + 64) = _swiftEmptyArrayStorage;
  v325 = (v1 + 64);
  *(v1 + 16) = 2;
  *(v1 + 32) = v340;
  swift_beginAccess();
  *(v1 + 48) = 1;
  swift_beginAccess();
  *(v1 + 52) = 1065353216;
  swift_beginAccess();
  *(v1 + 56) = 0;
  swift_beginAccess();
  v304 = v1;
  *(v1 + 57) = 1;
  sub_1000AB384(&off_10011C210);
  v341 = v2;
  v3 = swift_allocObject();
  *(v3 + 48) = 0;
  *(v3 + 52) = 0;
  *(v3 + 56) = 257;
  *(v3 + 64) = _swiftEmptyArrayStorage;
  v293 = (v3 + 64);
  *(v3 + 16) = 2;
  *(v3 + 32) = v341;
  swift_beginAccess();
  *(v3 + 48) = 1;
  swift_beginAccess();
  *(v3 + 52) = 1065353216;
  swift_beginAccess();
  *(v3 + 56) = 0;
  swift_beginAccess();
  v303 = v3;
  *(v3 + 57) = 1;
  sub_1000AB384(&off_10011C240);
  v342 = v4;
  v5 = swift_allocObject();
  *(v5 + 48) = 0;
  *(v5 + 52) = 0;
  *(v5 + 56) = 257;
  *(v5 + 64) = _swiftEmptyArrayStorage;
  v323 = (v5 + 64);
  *(v5 + 16) = 2;
  *(v5 + 32) = v342;
  swift_beginAccess();
  *(v5 + 48) = 0;
  swift_beginAccess();
  *(v5 + 52) = 1065353216;
  swift_beginAccess();
  *(v5 + 56) = 0;
  swift_beginAccess();
  *(v5 + 57) = 1;
  sub_1000AB384(&off_10011C270);
  v343 = v6;
  v7 = swift_allocObject();
  *(v7 + 48) = 0;
  *(v7 + 52) = 0;
  *(v7 + 56) = 257;
  *(v7 + 64) = _swiftEmptyArrayStorage;
  v329 = (v7 + 64);
  *(v7 + 16) = 2;
  *(v7 + 32) = v343;
  swift_beginAccess();
  *(v7 + 48) = 1;
  swift_beginAccess();
  *(v7 + 52) = 1065353216;
  swift_beginAccess();
  *(v7 + 56) = 0;
  swift_beginAccess();
  v302 = v7;
  *(v7 + 57) = 1;
  sub_1000AB384(&off_10011C2A0);
  v344 = v8;
  v9 = swift_allocObject();
  *(v9 + 48) = 0;
  *(v9 + 52) = 0;
  *(v9 + 56) = 257;
  *(v9 + 64) = _swiftEmptyArrayStorage;
  v334 = (v9 + 64);
  *(v9 + 16) = 2;
  *(v9 + 32) = v344;
  swift_beginAccess();
  *(v9 + 48) = 0;
  swift_beginAccess();
  *(v9 + 52) = 1065353216;
  swift_beginAccess();
  *(v9 + 56) = 0;
  swift_beginAccess();
  v301 = v9;
  *(v9 + 57) = 1;
  sub_1000AB384(&off_10011C2D0);
  v345 = v10;
  v11 = swift_allocObject();
  *(v11 + 48) = 0;
  *(v11 + 52) = 0;
  *(v11 + 56) = 257;
  *(v11 + 64) = _swiftEmptyArrayStorage;
  v295 = (v11 + 64);
  *(v11 + 16) = 2;
  *(v11 + 32) = v345;
  swift_beginAccess();
  *(v11 + 48) = 1;
  swift_beginAccess();
  *(v11 + 52) = 1065353216;
  swift_beginAccess();
  *(v11 + 56) = 0;
  swift_beginAccess();
  v300 = v11;
  *(v11 + 57) = 1;
  sub_1000AB384(&off_10011C300);
  v346 = v12;
  v13 = swift_allocObject();
  *(v13 + 48) = 0;
  *(v13 + 52) = 0;
  *(v13 + 56) = 257;
  *(v13 + 64) = _swiftEmptyArrayStorage;
  v332 = (v13 + 64);
  *(v13 + 16) = 2;
  *(v13 + 32) = v346;
  swift_beginAccess();
  *(v13 + 48) = 0;
  swift_beginAccess();
  *(v13 + 52) = 1065353216;
  swift_beginAccess();
  *(v13 + 56) = 0;
  swift_beginAccess();
  *(v13 + 57) = 1;
  sub_1000AB384(&off_10011C330);
  v321 = v14;
  v15 = swift_allocObject();
  *(v15 + 48) = 0;
  *(v15 + 52) = 0;
  *(v15 + 56) = 257;
  *(v15 + 64) = _swiftEmptyArrayStorage;
  v347 = (v15 + 64);
  *(v15 + 16) = 2;
  *(v15 + 32) = v321;
  swift_beginAccess();
  *(v15 + 48) = 1;
  swift_beginAccess();
  *(v15 + 52) = 1065353216;
  swift_beginAccess();
  *(v15 + 56) = 0;
  swift_beginAccess();
  v299 = v15;
  *(v15 + 57) = 1;
  sub_1000AB384(&off_10011C360);
  v314 = v16;
  v17 = swift_allocObject();
  *(v17 + 48) = 0;
  *(v17 + 52) = 0;
  *(v17 + 56) = 257;
  *(v17 + 64) = _swiftEmptyArrayStorage;
  v322 = (v17 + 64);
  *(v17 + 16) = 2;
  *(v17 + 32) = v314;
  swift_beginAccess();
  *(v17 + 48) = 0;
  swift_beginAccess();
  *(v17 + 52) = 1065353216;
  swift_beginAccess();
  *(v17 + 56) = 0;
  swift_beginAccess();
  v298 = v17;
  *(v17 + 57) = 1;
  sub_1000AB384(&off_10011C390);
  v315 = v18;
  v19 = swift_allocObject();
  *(v19 + 48) = 0;
  *(v19 + 52) = 0;
  *(v19 + 56) = 257;
  *(v19 + 64) = _swiftEmptyArrayStorage;
  v292 = (v19 + 64);
  *(v19 + 16) = 2;
  *(v19 + 32) = v315;
  swift_beginAccess();
  *(v19 + 48) = 1;
  swift_beginAccess();
  *(v19 + 52) = 1065353216;
  swift_beginAccess();
  *(v19 + 56) = 0;
  swift_beginAccess();
  *(v19 + 57) = 1;
  sub_1000AB384(&off_10011C3C0);
  v316 = v20;
  v21 = swift_allocObject();
  *(v21 + 48) = 0;
  *(v21 + 52) = 0;
  *(v21 + 56) = 257;
  *(v21 + 64) = _swiftEmptyArrayStorage;
  v22 = (v21 + 64);
  *(v21 + 16) = 2;
  *(v21 + 32) = v316;
  swift_beginAccess();
  *(v21 + 48) = 1;
  swift_beginAccess();
  *(v21 + 52) = 1065353216;
  swift_beginAccess();
  *(v21 + 56) = 0;
  swift_beginAccess();
  *(v21 + 57) = 1;
  sub_1000AB384(&off_10011C3F0);
  v317 = v23;
  sub_1000AB384(&off_10011C420);
  v311 = v24;
  swift_beginAccess();
  v25 = *v293;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v293 = v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v25 = sub_1000A35A4(0, *(v25 + 2) + 1, 1, v25);
    *v293 = v25;
  }

  v28 = *(v25 + 2);
  v27 = *(v25 + 3);
  if (v28 >= v27 >> 1)
  {
    v25 = sub_1000A35A4((v27 > 1), v28 + 1, 1, v25);
  }

  *(v25 + 2) = v28 + 1;
  v29 = &v25[80 * v28];
  *(v29 + 4) = 0x40490FDA44E10000;
  *(v29 + 3) = v317;
  *(v29 + 16) = 1071898308;
  *(v29 + 5) = v311;
  *(v29 + 12) = 0x3F63D72C3E4CCCCDLL;
  *v293 = v25;
  swift_endAccess();
  sub_1000AB384(&off_10011C450);
  v312 = v30;
  sub_1000AB384(&off_10011C480);
  v306 = v31;
  swift_beginAccess();
  v32 = *v295;
  v33 = swift_isUniquelyReferenced_nonNull_native();
  *v295 = v32;
  if ((v33 & 1) == 0)
  {
    v32 = sub_1000A35A4(0, *(v32 + 2) + 1, 1, v32);
    *v295 = v32;
  }

  v35 = *(v32 + 2);
  v34 = *(v32 + 3);
  if (v35 >= v34 >> 1)
  {
    v32 = sub_1000A35A4((v34 > 1), v35 + 1, 1, v32);
  }

  *(v32 + 2) = v35 + 1;
  v36 = &v32[80 * v35];
  *(v36 + 4) = 0x40490FDA00000000;
  *(v36 + 3) = v312;
  *(v36 + 16) = 1083873825;
  *(v36 + 5) = v306;
  *(v36 + 12) = 0x3F6E149C3E4CCCCDLL;
  *v295 = v32;
  swift_endAccess();
  sub_1000AB384(&off_10011C4B0);
  v307 = v37;
  sub_1000AB384(&off_10011C4E0);
  v296 = v38;
  swift_beginAccess();
  v39 = *v325;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  *v325 = v39;
  if ((v40 & 1) == 0)
  {
    v39 = sub_1000A35A4(0, *(v39 + 2) + 1, 1, v39);
    *v325 = v39;
  }

  v42 = *(v39 + 2);
  v41 = *(v39 + 3);
  if (v42 >= v41 >> 1)
  {
    v39 = sub_1000A35A4((v41 > 1), v42 + 1, 1, v39);
  }

  *(v39 + 2) = v42 + 1;
  v43 = &v39[80 * v42];
  *(v43 + 4) = 0x4041E9BA459C4000;
  *(v43 + 3) = v307;
  *(v43 + 16) = 1083673012;
  *(v43 + 5) = v296;
  *(v43 + 12) = 0x401E148300000000;
  *v325 = v39;
  swift_endAccess();
  sub_1000AB384(&off_10011C510);
  v308 = v44;
  sub_1000AB384(&off_10011C540);
  v297 = v45;
  swift_beginAccess();
  v46 = *v323;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  *v323 = v46;
  if ((v47 & 1) == 0)
  {
    v46 = sub_1000A35A4(0, *(v46 + 2) + 1, 1, v46);
    *v323 = v46;
  }

  v49 = *(v46 + 2);
  v48 = *(v46 + 3);
  if (v49 >= v48 >> 1)
  {
    v46 = sub_1000A35A4((v48 > 1), v49 + 1, 1, v46);
  }

  *(v46 + 2) = v49 + 1;
  v50 = &v46[80 * v49];
  *(v50 + 4) = 0x40489D7942C80000;
  *(v50 + 3) = v308;
  *(v50 + 16) = 1080915779;
  *(v50 + 5) = v297;
  *(v50 + 12) = 0x4220000000000000;
  *v323 = v46;
  swift_endAccess();
  sub_1000AB384(&off_10011C570);
  v309 = v51;
  sub_1000AB384(&off_10011C5A0);
  v273 = v52;
  swift_beginAccess();
  v53 = *v329;
  v54 = swift_isUniquelyReferenced_nonNull_native();
  *v329 = v53;
  if ((v54 & 1) == 0)
  {
    v53 = sub_1000A35A4(0, *(v53 + 2) + 1, 1, v53);
    *v329 = v53;
  }

  v56 = *(v53 + 2);
  v55 = *(v53 + 3);
  if (v56 >= v55 >> 1)
  {
    v53 = sub_1000A35A4((v55 > 1), v56 + 1, 1, v53);
  }

  *(v53 + 2) = v56 + 1;
  v57 = &v53[80 * v56];
  *(v57 + 4) = 0x40197A2F00000000;
  *(v57 + 3) = v309;
  *(v57 + 16) = 1078027366;
  *(v57 + 5) = v273;
  *(v57 + 12) = 0x3F4A3D603E851EB8;
  *v329 = v53;
  swift_endAccess();
  sub_1000AB384(&off_10011C5D0);
  v310 = v58;
  sub_1000AB384(&off_10011C600);
  v274 = v59;
  swift_beginAccess();
  v60 = *v334;
  v61 = swift_isUniquelyReferenced_nonNull_native();
  *v334 = v60;
  if ((v61 & 1) == 0)
  {
    v60 = sub_1000A35A4(0, *(v60 + 2) + 1, 1, v60);
    *v334 = v60;
  }

  v63 = *(v60 + 2);
  v62 = *(v60 + 3);
  if (v63 >= v62 >> 1)
  {
    v60 = sub_1000A35A4((v62 > 1), v63 + 1, 1, v60);
  }

  *(v60 + 2) = v63 + 1;
  v64 = &v60[80 * v63];
  *(v64 + 4) = 0x4004EC9C00000000;
  *(v64 + 3) = v310;
  *(v64 + 16) = 1084793531;
  *(v64 + 5) = v274;
  *(v64 + 12) = 0x3FEA3D813EC28F5CLL;
  *v334 = v60;
  swift_endAccess();
  sub_1000AB384(&off_10011C630);
  v275 = v65;
  sub_1000AB384(&off_10011C660);
  v256 = v66;
  swift_beginAccess();
  v67 = *v332;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  *v332 = v67;
  if ((v68 & 1) == 0)
  {
    v67 = sub_1000A35A4(0, *(v67 + 2) + 1, 1, v67);
    *v332 = v67;
  }

  v70 = *(v67 + 2);
  v69 = *(v67 + 3);
  if (v70 >= v69 >> 1)
  {
    v67 = sub_1000A35A4((v69 > 1), v70 + 1, 1, v67);
  }

  *(v67 + 2) = v70 + 1;
  v71 = &v67[80 * v70];
  *(v71 + 4) = 0x3C8EFA3500000000;
  *(v71 + 3) = v275;
  *(v71 + 16) = 1077963460;
  *(v71 + 5) = v256;
  *(v71 + 12) = 0x3F65E3763FC51EB8;
  *v332 = v67;
  swift_endAccess();
  sub_1000AB384(&off_10011C690);
  v276 = v72;
  sub_1000AB384(&off_10011C6C0);
  v257 = v73;
  swift_beginAccess();
  v74 = *v347;
  v75 = swift_isUniquelyReferenced_nonNull_native();
  *v347 = v74;
  if ((v75 & 1) == 0)
  {
    v74 = sub_1000A35A4(0, *(v74 + 2) + 1, 1, v74);
    *v347 = v74;
  }

  v77 = *(v74 + 2);
  v76 = *(v74 + 3);
  if (v77 >= v76 >> 1)
  {
    v74 = sub_1000A35A4((v76 > 1), v77 + 1, 1, v74);
  }

  *(v74 + 2) = v77 + 1;
  v78 = &v74[80 * v77];
  *(v78 + 4) = 0x40319ACE457A0000;
  *(v78 + 3) = v276;
  *(v78 + 16) = 1079994098;
  *(v78 + 5) = v257;
  *(v78 + 12) = 0x3F8000003FA3126FLL;
  *v347 = v74;
  swift_endAccess();
  sub_1000AB384(&off_10011C6F0);
  v277 = v79;
  sub_1000AB384(&off_10011C720);
  v258 = v80;
  swift_beginAccess();
  v81 = *v322;
  v82 = swift_isUniquelyReferenced_nonNull_native();
  *v322 = v81;
  if ((v82 & 1) == 0)
  {
    v81 = sub_1000A35A4(0, *(v81 + 2) + 1, 1, v81);
    *v322 = v81;
  }

  v84 = *(v81 + 2);
  v83 = *(v81 + 3);
  if (v84 >= v83 >> 1)
  {
    v81 = sub_1000A35A4((v83 > 1), v84 + 1, 1, v81);
  }

  *(v81 + 2) = v84 + 1;
  v85 = &v81[80 * v84];
  *(v85 + 4) = 0x3C8EFA3500000000;
  *(v85 + 3) = v277;
  *(v85 + 16) = 1079113166;
  *(v85 + 5) = v258;
  *(v85 + 12) = 0x41DCE14800000000;
  *v322 = v81;
  swift_endAccess();
  sub_1000AB384(&off_10011C750);
  v278 = v86;
  sub_1000AB384(&off_10011C780);
  v259 = v87;
  swift_beginAccess();
  v88 = *v292;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  *v292 = v88;
  if ((v89 & 1) == 0)
  {
    v88 = sub_1000A35A4(0, *(v88 + 2) + 1, 1, v88);
    *v292 = v88;
  }

  v91 = *(v88 + 2);
  v90 = *(v88 + 3);
  if (v91 >= v90 >> 1)
  {
    v88 = sub_1000A35A4((v90 > 1), v91 + 1, 1, v88);
  }

  *(v88 + 2) = v91 + 1;
  v92 = &v88[80 * v91];
  *(v92 + 4) = 0x40197A2F00000000;
  *(v92 + 3) = v278;
  *(v92 + 16) = 1075112759;
  *(v92 + 5) = v259;
  *(v92 + 12) = 0x3F4A3D603EBB5BD5;
  *v292 = v88;
  swift_endAccess();
  sub_1000AB384(&off_10011C7B0);
  v279 = v93;
  sub_1000AB384(&off_10011C7E0);
  v260 = v94;
  swift_beginAccess();
  v95 = *v22;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  *v22 = v95;
  if ((v96 & 1) == 0)
  {
    v95 = sub_1000A35A4(0, *(v95 + 2) + 1, 1, v95);
    *v22 = v95;
  }

  v98 = *(v95 + 2);
  v97 = *(v95 + 3);
  if (v98 >= v97 >> 1)
  {
    v95 = sub_1000A35A4((v97 > 1), v98 + 1, 1, v95);
  }

  *(v95 + 2) = v98 + 1;
  v99 = &v95[80 * v98];
  *(v99 + 4) = 0x4021BE3F00000000;
  *(v99 + 3) = v279;
  *(v99 + 16) = 1084229951;
  *(v99 + 5) = v260;
  *(v99 + 12) = 0x3FECCCDE3EC28F5CLL;
  *v22 = v95;
  swift_endAccess();
  sub_1000AB384(&off_10011C810);
  v280 = v100;
  sub_1000AB384(&off_10011C840);
  v261 = v101;
  swift_beginAccess();
  v102 = *v329;
  v103 = swift_isUniquelyReferenced_nonNull_native();
  *v329 = v102;
  if ((v103 & 1) == 0)
  {
    v102 = sub_1000A35A4(0, *(v102 + 2) + 1, 1, v102);
    *v329 = v102;
  }

  v105 = *(v102 + 2);
  v104 = *(v102 + 3);
  if (v105 >= v104 >> 1)
  {
    v102 = sub_1000A35A4((v104 > 1), v105 + 1, 1, v102);
  }

  *(v102 + 2) = v105 + 1;
  v106 = &v102[80 * v105];
  *(v106 + 4) = 0x40197A2F44138000;
  *(v106 + 3) = v280;
  *(v106 + 16) = 1073781512;
  *(v106 + 5) = v261;
  *(v106 + 12) = 0x3F4A3D603E851EB8;
  *v329 = v102;
  swift_endAccess();
  sub_1000AB384(&off_10011C870);
  v281 = v107;
  sub_1000AB384(&off_10011C8A0);
  v262 = v108;
  swift_beginAccess();
  v109 = *v325;
  v110 = swift_isUniquelyReferenced_nonNull_native();
  *v325 = v109;
  if ((v110 & 1) == 0)
  {
    v109 = sub_1000A35A4(0, *(v109 + 2) + 1, 1, v109);
    *v325 = v109;
  }

  v112 = *(v109 + 2);
  v111 = *(v109 + 3);
  if (v112 >= v111 >> 1)
  {
    v109 = sub_1000A35A4((v111 > 1), v112 + 1, 1, v109);
  }

  *(v109 + 2) = v112 + 1;
  v113 = &v109[80 * v112];
  *(v113 + 4) = 0x4041E9BA461C4000;
  *(v113 + 3) = v281;
  *(v113 + 16) = 1083673012;
  *(v113 + 5) = v262;
  *(v113 + 12) = 0x401E148300000000;
  *v325 = v109;
  swift_endAccess();
  sub_1000AB384(&off_10011C8D0);
  v282 = v114;
  sub_1000AB384(&off_10011C900);
  v263 = v115;
  swift_beginAccess();
  v116 = *v334;
  v117 = swift_isUniquelyReferenced_nonNull_native();
  *v334 = v116;
  if ((v117 & 1) == 0)
  {
    v116 = sub_1000A35A4(0, *(v116 + 2) + 1, 1, v116);
    *v334 = v116;
  }

  v119 = *(v116 + 2);
  v118 = *(v116 + 3);
  if (v119 >= v118 >> 1)
  {
    v116 = sub_1000A35A4((v118 > 1), v119 + 1, 1, v116);
  }

  *(v116 + 2) = v119 + 1;
  v120 = &v116[80 * v119];
  *(v120 + 4) = 0x3FEF437F44B40000;
  *(v120 + 3) = v282;
  *(v120 + 16) = 1082329924;
  *(v120 + 5) = v263;
  *(v120 + 12) = 0x3FEA3D813EC28F5CLL;
  *v334 = v116;
  swift_endAccess();
  sub_1000AB384(&off_10011C930);
  v283 = v121;
  sub_1000AB384(&off_10011C960);
  v264 = v122;
  swift_beginAccess();
  v123 = *v293;
  v124 = swift_isUniquelyReferenced_nonNull_native();
  *v293 = v123;
  if ((v124 & 1) == 0)
  {
    v123 = sub_1000A35A4(0, *(v123 + 2) + 1, 1, v123);
    *v293 = v123;
  }

  v126 = *(v123 + 2);
  v125 = *(v123 + 3);
  if (v126 >= v125 >> 1)
  {
    v123 = sub_1000A35A4((v125 > 1), v126 + 1, 1, v123);
  }

  *(v123 + 2) = v126 + 1;
  v127 = &v123[80 * v126];
  *(v127 + 4) = 0x40490FDA4528C000;
  *(v127 + 3) = v283;
  *(v127 + 16) = 1070141402;
  *(v127 + 5) = v264;
  *(v127 + 12) = 0x3F63D72C3E4CCCCDLL;
  *v293 = v123;
  swift_endAccess();
  sub_1000AB384(&off_10011C990);
  v284 = v128;
  sub_1000AB384(&off_10011C9C0);
  v265 = v129;
  swift_beginAccess();
  v130 = *v295;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  *v295 = v130;
  if ((v131 & 1) == 0)
  {
    v130 = sub_1000A35A4(0, *(v130 + 2) + 1, 1, v130);
    *v295 = v130;
  }

  v133 = *(v130 + 2);
  v132 = *(v130 + 3);
  if (v133 >= v132 >> 1)
  {
    v130 = sub_1000A35A4((v132 > 1), v133 + 1, 1, v130);
  }

  *(v130 + 2) = v133 + 1;
  v134 = &v130[80 * v133];
  *(v134 + 4) = 0x40490FDA44BB8000;
  *(v134 + 3) = v284;
  *(v134 + 16) = 1083873825;
  *(v134 + 5) = v265;
  *(v134 + 12) = 0x3F6E149C3E4CCCCDLL;
  *v295 = v130;
  swift_endAccess();
  sub_1000AB384(&off_10011C9F0);
  v285 = v135;
  sub_1000AB384(&off_10011CA20);
  v266 = v136;
  swift_beginAccess();
  v137 = *v332;
  v138 = swift_isUniquelyReferenced_nonNull_native();
  *v332 = v137;
  if ((v138 & 1) == 0)
  {
    v137 = sub_1000A35A4(0, *(v137 + 2) + 1, 1, v137);
    *v332 = v137;
  }

  v140 = *(v137 + 2);
  v139 = *(v137 + 3);
  if (v140 >= v139 >> 1)
  {
    v137 = sub_1000A35A4((v139 > 1), v140 + 1, 1, v137);
  }

  *(v137 + 2) = v140 + 1;
  v141 = &v137[80 * v140];
  *(v141 + 4) = 0x40490FDA453B8000;
  *(v141 + 3) = v285;
  *(v141 + 16) = 1075738667;
  *(v141 + 5) = v266;
  *(v141 + 12) = 0x3F65E37600000000;
  *v332 = v137;
  swift_endAccess();
  sub_1000AB384(&off_10011CA50);
  v286 = v142;
  sub_1000AB384(&off_10011CA80);
  v267 = v143;
  swift_beginAccess();
  v144 = *v347;
  v145 = swift_isUniquelyReferenced_nonNull_native();
  *v347 = v144;
  if ((v145 & 1) == 0)
  {
    v144 = sub_1000A35A4(0, *(v144 + 2) + 1, 1, v144);
    *v347 = v144;
  }

  v147 = *(v144 + 2);
  v146 = *(v144 + 3);
  if (v147 >= v146 >> 1)
  {
    v144 = sub_1000A35A4((v146 > 1), v147 + 1, 1, v144);
  }

  *(v144 + 2) = v147 + 1;
  v148 = &v144[80 * v147];
  *(v148 + 4) = 0x40490FDA468CA000;
  *(v148 + 3) = v286;
  *(v148 + 16) = 1076037070;
  *(v148 + 5) = v267;
  *(v148 + 12) = 0x3F828F753FA3126FLL;
  *v347 = v144;
  swift_endAccess();
  sub_1000AB384(&off_10011CAB0);
  v287 = v149;
  sub_1000AB384(&off_10011CAE0);
  v268 = v150;
  swift_beginAccess();
  v151 = *v323;
  v152 = swift_isUniquelyReferenced_nonNull_native();
  *v323 = v151;
  if ((v152 & 1) == 0)
  {
    v151 = sub_1000A35A4(0, *(v151 + 2) + 1, 1, v151);
    *v323 = v151;
  }

  v154 = *(v151 + 2);
  v153 = *(v151 + 3);
  if (v154 >= v153 >> 1)
  {
    v151 = sub_1000A35A4((v153 > 1), v154 + 1, 1, v151);
  }

  *(v151 + 2) = v154 + 1;
  v155 = &v151[80 * v154];
  *(v155 + 4) = 0x40489D7942C80000;
  *(v155 + 3) = v287;
  *(v155 + 16) = 1080915779;
  *(v155 + 5) = v268;
  *(v155 + 12) = 0x4220000000000000;
  *v323 = v151;
  swift_endAccess();
  sub_1000AB384(&off_10011CB10);
  v288 = v156;
  sub_1000AB384(&off_10011CB40);
  v269 = v157;
  swift_beginAccess();
  v158 = *v322;
  v159 = swift_isUniquelyReferenced_nonNull_native();
  *v322 = v158;
  if ((v159 & 1) == 0)
  {
    v158 = sub_1000A35A4(0, *(v158 + 2) + 1, 1, v158);
    *v322 = v158;
  }

  v161 = *(v158 + 2);
  v160 = *(v158 + 3);
  if (v161 >= v160 >> 1)
  {
    v158 = sub_1000A35A4((v160 > 1), v161 + 1, 1, v158);
  }

  *(v158 + 2) = v161 + 1;
  v162 = &v158[80 * v161];
  *(v162 + 4) = 0x3FF86C57C2480000;
  *(v162 + 3) = v288;
  *(v162 + 16) = 1077207371;
  *(v162 + 5) = v269;
  *(v162 + 12) = 0x41DCE14800000000;
  *v322 = v158;
  swift_endAccess();
  sub_1000AB384(&off_10011CB70);
  v289 = v163;
  sub_1000AB384(&off_10011CBA0);
  v270 = v164;
  swift_beginAccess();
  v165 = *v292;
  v166 = swift_isUniquelyReferenced_nonNull_native();
  *v292 = v165;
  if ((v166 & 1) == 0)
  {
    v165 = sub_1000A35A4(0, *(v165 + 2) + 1, 1, v165);
    *v292 = v165;
  }

  v168 = *(v165 + 2);
  v167 = *(v165 + 3);
  if (v168 >= v167 >> 1)
  {
    v165 = sub_1000A35A4((v167 > 1), v168 + 1, 1, v165);
  }

  *(v165 + 2) = v168 + 1;
  v169 = &v165[80 * v168];
  *(v169 + 4) = 0x40197A2F00000000;
  *(v169 + 3) = v289;
  *(v169 + 16) = 1075112759;
  *(v169 + 5) = v270;
  *(v169 + 12) = 0x3F4A3D603EBB5BD5;
  *v292 = v165;
  swift_endAccess();
  sub_1000AB384(&off_10011CBD0);
  v290 = v170;
  sub_1000AB384(&off_10011CC00);
  v271 = v171;
  swift_beginAccess();
  v172 = *v22;
  v173 = swift_isUniquelyReferenced_nonNull_native();
  *v22 = v172;
  if ((v173 & 1) == 0)
  {
    v172 = sub_1000A35A4(0, *(v172 + 2) + 1, 1, v172);
    *v22 = v172;
  }

  v175 = *(v172 + 2);
  v174 = *(v172 + 3);
  if (v175 >= v174 >> 1)
  {
    v172 = sub_1000A35A4((v174 > 1), v175 + 1, 1, v172);
  }

  *(v172 + 2) = v175 + 1;
  v176 = &v172[80 * v175];
  *(v176 + 4) = 0x4021BE3F00000000;
  *(v176 + 3) = v290;
  *(v176 + 16) = 1084229951;
  *(v176 + 5) = v271;
  *(v176 + 12) = 0x3FECCCDE3EC28F5CLL;
  *v22 = v172;
  swift_endAccess();
  sub_1000AB384(&off_10011CC30);
  v291 = v177;
  sub_1000AB384(&off_10011CC60);
  v272 = v178;
  swift_beginAccess();
  v179 = *v293;
  v180 = swift_isUniquelyReferenced_nonNull_native();
  *v293 = v179;
  if ((v180 & 1) == 0)
  {
    v179 = sub_1000A35A4(0, *(v179 + 2) + 1, 1, v179);
    *v293 = v179;
  }

  v182 = *(v179 + 2);
  v181 = *(v179 + 3);
  if (v182 >= v181 >> 1)
  {
    v179 = sub_1000A35A4((v181 > 1), v182 + 1, 1, v179);
  }

  *(v179 + 2) = v182 + 1;
  v183 = &v179[80 * v182];
  *(v183 + 4) = 0x40490FDA442F0000;
  *(v183 + 3) = v291;
  *(v183 + 16) = 1070141402;
  *(v183 + 5) = v272;
  *(v183 + 12) = 0x3F63D72C3E4CCCCDLL;
  *v293 = v179;
  swift_endAccess();
  sub_1000AB384(&off_10011CC90);
  v318 = v184;
  sub_1000AB384(&off_10011CCC0);
  v294 = v185;
  swift_beginAccess();
  v186 = *v295;
  v187 = swift_isUniquelyReferenced_nonNull_native();
  *v295 = v186;
  if ((v187 & 1) == 0)
  {
    v186 = sub_1000A35A4(0, *(v186 + 2) + 1, 1, v186);
    *v295 = v186;
  }

  v189 = *(v186 + 2);
  v188 = *(v186 + 3);
  if (v189 >= v188 >> 1)
  {
    v186 = sub_1000A35A4((v188 > 1), v189 + 1, 1, v186);
  }

  *(v186 + 2) = v189 + 1;
  v190 = &v186[80 * v189];
  *(v190 + 4) = 0x40490FDA42C80000;
  *(v190 + 3) = v318;
  *(v190 + 16) = 1083873825;
  *(v190 + 5) = v294;
  *(v190 + 12) = 0x3F6E149C3E4CCCCDLL;
  *v295 = v186;
  swift_endAccess();
  sub_1000AB384(&off_10011CCF0);
  v319 = v191;
  sub_1000AB384(&off_10011CD20);
  v313 = v192;
  swift_beginAccess();
  v193 = *v325;
  v194 = swift_isUniquelyReferenced_nonNull_native();
  *v325 = v193;
  if ((v194 & 1) == 0)
  {
    v193 = sub_1000A35A4(0, *(v193 + 2) + 1, 1, v193);
    *v325 = v193;
  }

  v196 = *(v193 + 2);
  v195 = *(v193 + 3);
  if (v196 >= v195 >> 1)
  {
    v193 = sub_1000A35A4((v195 > 1), v196 + 1, 1, v193);
  }

  *(v193 + 2) = v196 + 1;
  v197 = &v193[80 * v196];
  *(v197 + 4) = 0x4041E9BA457A0000;
  *(v197 + 3) = v319;
  *(v197 + 16) = 1083673012;
  *(v197 + 5) = v313;
  *(v197 + 12) = 0x401E14833F000000;
  *v325 = v193;
  swift_endAccess();
  sub_1000AB384(&off_10011CD50);
  v326 = v198;
  sub_1000AB384(&off_10011CD80);
  v320 = v199;
  swift_beginAccess();
  v200 = *v323;
  v201 = swift_isUniquelyReferenced_nonNull_native();
  *v323 = v200;
  if ((v201 & 1) == 0)
  {
    v200 = sub_1000A35A4(0, *(v200 + 2) + 1, 1, v200);
    *v323 = v200;
  }

  v203 = *(v200 + 2);
  v202 = *(v200 + 3);
  if (v203 >= v202 >> 1)
  {
    v200 = sub_1000A35A4((v202 > 1), v203 + 1, 1, v200);
  }

  *(v200 + 2) = v203 + 1;
  v204 = &v200[80 * v203];
  *(v204 + 4) = 0x40489D7900000000;
  *(v204 + 3) = v326;
  *(v204 + 16) = 1080915779;
  *(v204 + 5) = v320;
  *(v204 + 12) = 0x4220000000000000;
  *v323 = v200;
  swift_endAccess();
  sub_1000AB384(&off_10011CDB0);
  v327 = v205;
  sub_1000AB384(&off_10011CDE0);
  v324 = v206;
  swift_beginAccess();
  v207 = *v329;
  v208 = swift_isUniquelyReferenced_nonNull_native();
  *v329 = v207;
  if ((v208 & 1) == 0)
  {
    v207 = sub_1000A35A4(0, *(v207 + 2) + 1, 1, v207);
    *v329 = v207;
  }

  v210 = *(v207 + 2);
  v209 = *(v207 + 3);
  if (v210 >= v209 >> 1)
  {
    v207 = sub_1000A35A4((v209 > 1), v210 + 1, 1, v207);
  }

  *(v207 + 2) = v210 + 1;
  v211 = &v207[80 * v210];
  *(v211 + 4) = 0x40490FDA00000000;
  *(v211 + 3) = v327;
  *(v211 + 16) = 1050858016;
  *(v211 + 5) = v324;
  *(v211 + 12) = 0x3F4A3D603F8A3D71;
  *v329 = v207;
  swift_endAccess();
  sub_1000AB384(&off_10011CE10);
  v330 = v212;
  sub_1000AB384(&off_10011CE40);
  v328 = v213;
  swift_beginAccess();
  v214 = *v334;
  v215 = swift_isUniquelyReferenced_nonNull_native();
  *v334 = v214;
  if ((v215 & 1) == 0)
  {
    v214 = sub_1000A35A4(0, *(v214 + 2) + 1, 1, v214);
    *v334 = v214;
  }

  v217 = *(v214 + 2);
  v216 = *(v214 + 3);
  if (v217 >= v216 >> 1)
  {
    v214 = sub_1000A35A4((v216 > 1), v217 + 1, 1, v214);
  }

  *(v214 + 2) = v217 + 1;
  v218 = &v214[80 * v217];
  *(v218 + 4) = 0x3FF5BE0A00000000;
  *(v218 + 3) = v330;
  *(v218 + 16) = 1080635442;
  *(v218 + 5) = v328;
  *(v218 + 12) = 0x3FEA3D813EC28F5CLL;
  *v334 = v214;
  swift_endAccess();
  sub_1000AB384(&off_10011CE70);
  v335 = v219;
  sub_1000AB384(&off_10011CEA0);
  v331 = v220;
  swift_beginAccess();
  v221 = *v332;
  v222 = swift_isUniquelyReferenced_nonNull_native();
  *v332 = v221;
  if ((v222 & 1) == 0)
  {
    v221 = sub_1000A35A4(0, *(v221 + 2) + 1, 1, v221);
    *v332 = v221;
  }

  v224 = *(v221 + 2);
  v223 = *(v221 + 3);
  if (v224 >= v223 >> 1)
  {
    v221 = sub_1000A35A4((v223 > 1), v224 + 1, 1, v221);
  }

  *(v221 + 2) = v224 + 1;
  v225 = &v221[80 * v224];
  *(v225 + 4) = 0x40490FDA43FA0000;
  *(v225 + 3) = v335;
  *(v225 + 16) = 1075738667;
  *(v225 + 5) = v331;
  *(v225 + 12) = 0x3F65E37600000000;
  *v332 = v221;
  swift_endAccess();
  sub_1000AB384(&off_10011CED0);
  v336 = v226;
  sub_1000AB384(&off_10011CF00);
  v333 = v227;
  swift_beginAccess();
  v228 = *v347;
  v229 = swift_isUniquelyReferenced_nonNull_native();
  *v347 = v228;
  if ((v229 & 1) == 0)
  {
    v228 = sub_1000A35A4(0, *(v228 + 2) + 1, 1, v228);
    *v347 = v228;
  }

  v231 = *(v228 + 2);
  v230 = *(v228 + 3);
  if (v231 >= v230 >> 1)
  {
    v228 = sub_1000A35A4((v230 > 1), v231 + 1, 1, v228);
  }

  *(v228 + 2) = v231 + 1;
  v232 = &v228[80 * v231];
  *(v232 + 4) = 0x40490FDA45FA0000;
  *(v232 + 3) = v336;
  *(v232 + 16) = 1076037070;
  *(v232 + 5) = v333;
  *(v232 + 12) = 0x3F828F753FA3126FLL;
  *v347 = v228;
  swift_endAccess();
  sub_1000AB384(&off_10011CF30);
  v348 = v233;
  sub_1000AB384(&off_10011CF60);
  v337 = v234;
  swift_beginAccess();
  v235 = *v322;
  v236 = swift_isUniquelyReferenced_nonNull_native();
  *v322 = v235;
  if ((v236 & 1) == 0)
  {
    v235 = sub_1000A35A4(0, *(v235 + 2) + 1, 1, v235);
    *v322 = v235;
  }

  v238 = *(v235 + 2);
  v237 = *(v235 + 3);
  if (v238 >= v237 >> 1)
  {
    v235 = sub_1000A35A4((v237 > 1), v238 + 1, 1, v235);
  }

  *(v235 + 2) = v238 + 1;
  v239 = &v235[80 * v238];
  *(v239 + 4) = 0x3FF86C57C1980000;
  *(v239 + 3) = v348;
  *(v239 + 16) = 1077207371;
  *(v239 + 5) = v337;
  *(v239 + 12) = 0x41DCE14800000000;
  *v322 = v235;
  swift_endAccess();
  sub_1000AB384(&off_10011CF90);
  v349 = v240;
  sub_1000AB384(&off_10011CFC0);
  v338 = v241;
  swift_beginAccess();
  v242 = *v292;
  v243 = swift_isUniquelyReferenced_nonNull_native();
  *v292 = v242;
  if ((v243 & 1) == 0)
  {
    v242 = sub_1000A35A4(0, *(v242 + 2) + 1, 1, v242);
    *v292 = v242;
  }

  v245 = *(v242 + 2);
  v244 = *(v242 + 3);
  if (v245 >= v244 >> 1)
  {
    v242 = sub_1000A35A4((v244 > 1), v245 + 1, 1, v242);
  }

  *(v242 + 2) = v245 + 1;
  v246 = &v242[80 * v245];
  *(v246 + 4) = 0x40197A2F437A0000;
  *(v246 + 3) = v349;
  *(v246 + 16) = 1073781512;
  *(v246 + 5) = v338;
  *(v246 + 12) = 0x3F4A3D603EBB5BD5;
  *v292 = v242;
  swift_endAccess();
  sub_1000AB384(&off_10011CFF0);
  v350 = v247;
  sub_1000AB384(&off_10011D020);
  v339 = v248;
  swift_beginAccess();
  v249 = *v22;
  v250 = swift_isUniquelyReferenced_nonNull_native();
  *v22 = v249;
  if ((v250 & 1) == 0)
  {
    v249 = sub_1000A35A4(0, *(v249 + 2) + 1, 1, v249);
    *v22 = v249;
  }

  v252 = *(v249 + 2);
  v251 = *(v249 + 3);
  if (v252 >= v251 >> 1)
  {
    v249 = sub_1000A35A4((v251 > 1), v252 + 1, 1, v249);
  }

  *(v249 + 2) = v252 + 1;
  v253 = &v249[80 * v252];
  *(v253 + 4) = 0x4004EC9C43480000;
  *(v253 + 3) = v350;
  *(v253 + 16) = 1082377768;
  *(v253 + 5) = v339;
  *(v253 + 12) = 0x3FECCCDE3EC28F5CLL;
  *(v21 + 64) = v249;
  swift_endAccess();
  sub_1000125FC(&qword_1001303F0);
  v254 = swift_allocObject();
  *(v254 + 16) = xmmword_1000F3150;
  *(v254 + 32) = v302;
  *(v254 + 40) = v19;
  *(v254 + 48) = v13;
  *(v254 + 56) = v299;
  *(v254 + 64) = v300;
  *(v254 + 72) = v298;
  *(v254 + 80) = v301;
  *(v254 + 88) = v21;
  *(v254 + 96) = v304;
  *(v254 + 104) = v5;
  *(v254 + 112) = v303;
  swift_beginAccess();
  *(v305 + 144) = v254;
}

uint64_t ToriScene.__allocating_init(device:)(void *a1)
{
  v2 = swift_allocObject();
  ToriScene.init(device:)(a1);
  return v2;
}

__n128 sub_1000CB6FC()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[7];
  v4 = 1.0 / tanf(((v0[4] / 180.0) * 3.1416) * 0.5);
  sub_1000125FC(&qword_100132540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000EDAA0;
  *(inited + 32) = v4 / v1;
  *(inited + 36) = 0;
  *(inited + 44) = 0;
  sub_1000AB448(inited);
  v10 = v6;
  swift_setDeallocating();
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1000EDAA0;
  *(v7 + 32) = 0;
  *(v7 + 36) = v4;
  *(v7 + 40) = 0;
  sub_1000AB448(v7);
  swift_setDeallocating();
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_1000EDAA0;
  *(v8 + 32) = 0;
  *(v8 + 40) = v3 / (v3 - v2);
  *(v8 + 44) = 1065353216;
  sub_1000AB448(v8);
  swift_setDeallocating();
  sub_1000AB448(&off_10011EE50);
  return v10;
}

uint64_t ToriScene.lightBuffer.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
  return swift_unknownObjectRelease();
}

uint64_t ToriScene.lights.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 144) = a1;
}

void *ToriScene.init(device:)(void *a1)
{
  v3 = v1;
  v1[3] = 0;
  v1[5] = 0;
  v1[6] = 0;
  _s22MercuryPosterExtension9ToriSceneC9startTimeSdvpfi_0();
  v1[7] = v5;
  type metadata accessor for ToriCamera();
  v6 = swift_allocObject();
  v6[1] = xmmword_1000EC930;
  if (qword_10012F4E0 != -1)
  {
    v29 = v6;
    swift_once();
    v6 = v29;
  }

  v7 = xmmword_10013A960;
  v8 = *algn_10013A970;
  v9 = xmmword_10013A980;
  v10 = unk_10013A990;
  v6[2] = xmmword_10013A960;
  v6[3] = v8;
  v6[4] = v9;
  v6[5] = v10;
  v3[8] = v6;
  *(v3 + 5) = v7;
  *(v3 + 6) = v8;
  *(v3 + 7) = v9;
  *(v3 + 8) = v10;
  v3[18] = _swiftEmptyArrayStorage;
  *(v3 + 76) = 0;
  v11 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v12) = 0.5;
  LODWORD(v13) = 1.0;
  LODWORD(v14) = 0.5;
  v3[20] = [v11 initWithControlPoints:v12 :0.0 :v13 :v14];
  v15 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v16) = 1055119114;
  LODWORD(v17) = 1028443341;
  LODWORD(v18) = 1057803469;
  LODWORD(v19) = 1064514355;
  v3[21] = [v15 initWithControlPoints:v16 :v17 :v18 :v19];
  v3[22] = 0x3FF0000000000000;
  type metadata accessor for ToriMesh();
  *(v3 + 23) = 0u;
  *(v3 + 25) = 0u;
  *(v3 + 27) = 0u;
  *(v3 + 29) = 0u;
  *(v3 + 31) = 0u;
  *(v3 + 33) = 0u;
  swift_allocObject();
  v20 = swift_unknownObjectRetain();
  v21 = sub_1000AD2B8(v20);
  if (v2)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v3[2] = v21;
    v22 = [a1 newBufferWithLength:768 options:0];
    if (v22)
    {
      v3[4] = v22;
      v23 = v3[2];
      sub_1000AB384(&off_100121528);
      HIDWORD(v24) = 1.0;
      v33 = v24;
      swift_beginAccess();
      v23[2] = xmmword_1000EC8E0;
      v23[3] = xmmword_1000EC910;
      v23[4] = xmmword_1000EC920;
      v23[5] = v33;
      v25 = v3[8];
      sub_1000AB384(&off_100121558);
      v26.i32[3] = 1.0;
      v34 = vmlaq_laneq_f32(vaddq_f32(vmlaq_lane_f32(xmmword_1000F56E0, xmmword_1000EC910, *matrix_identity_float4x4.columns[0].f32, 1), xmmword_1000F56F0), v26, matrix_identity_float4x4.columns[0], 3);
      v31 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1000EC8E0, COERCE_FLOAT(*&matrix_identity_float4x4.columns[1])), xmmword_1000EC910, *matrix_identity_float4x4.columns[1].f32, 1), xmmword_1000EC920, matrix_identity_float4x4.columns[1], 2), v26, matrix_identity_float4x4.columns[1], 3);
      v30 = vmlaq_laneq_f32(vaddq_f32(vmlaq_lane_f32(xmmword_1000F5700, xmmword_1000EC910, *matrix_identity_float4x4.columns[2].f32, 1), xmmword_1000F5710), v26, matrix_identity_float4x4.columns[2], 3);
      v32 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1000EC8E0, COERCE_FLOAT(*&matrix_identity_float4x4.columns[3])), xmmword_1000EC910, *matrix_identity_float4x4.columns[3].f32, 1), xmmword_1000EC920, matrix_identity_float4x4.columns[3], 2), v26, matrix_identity_float4x4.columns[3], 3);

      swift_unknownObjectRelease();
      v25[2] = v34;
      v25[3] = v31;
      v25[4] = v30;
      v25[5] = v32;

      return v3;
    }

    sub_1000CBE00();
    swift_allocError();
    *v28 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  type metadata accessor for ToriScene();
  swift_deallocPartialClassInstance();
  return v3;
}

unint64_t sub_1000CBE00()
{
  result = qword_100133680;
  if (!qword_100133680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133680);
  }

  return result;
}

char *sub_1000CBE54(float a1, float a2)
{
  swift_beginAccess();
  v6 = *(v2 + 24);
  if (!v6)
  {
    sub_1000CBE00();
    swift_allocError();
    *v21 = 1;
    return swift_willThrow();
  }

  swift_beginAccess();
  v7 = *(v2 + 144);
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_15:
    swift_unknownObjectRetain();
LABEL_16:
    v22 = [swift_unknownObjectRetain() contents];
    memcpy(v22, &_swiftEmptyArrayStorage[4], [v6 length]);
    swift_unknownObjectRelease();
  }

  v8 = sub_1000E9E64();
  if (!v8)
  {
    goto LABEL_15;
  }

LABEL_4:
  swift_unknownObjectRetain();

  result = sub_1000AA428(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v23 = v6;
    v25 = v3;
    v10 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        sub_1000E9D74();
      }

      else
      {
      }

      *&v11 = a1;
      sub_1000C8670(v24, v11, a2);

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        sub_1000AA428((v12 > 1), v13 + 1, 1);
      }

      ++v10;
      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[16 * v13];
      v15 = v24[0];
      v16 = v24[1];
      v17 = v24[3];
      v14[4] = v24[2];
      v14[5] = v17;
      v14[2] = v15;
      v14[3] = v16;
      v18 = v24[4];
      v19 = v24[5];
      v20 = v24[7];
      v14[8] = v24[6];
      v14[9] = v20;
      v14[6] = v18;
      v14[7] = v19;
    }

    while (v8 != v10);

    v6 = v23;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

unint64_t ToriScene.update(state:size:isSnapshotting:)(float *a1, char a2, double a3, double a4)
{
  v7 = v4;
  v10 = a3;
  v11 = *a1;
  v12 = a1[1];
  if (*a1 <= 1.0)
  {
    v13 = *a1;
  }

  else
  {
    v13 = 1.0;
  }

  if (v13 < 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v13;
  }

  if (v12 <= 1.0)
  {
    *&a3 = a1[1];
  }

  else
  {
    *&a3 = 1.0;
  }

  if (*&a3 < 0.0)
  {
    *&a3 = 0.0;
  }

  [*(v4 + 160) _solveForInput:a3];
  v16 = v15;
  *&v17 = v14;
  [*(v4 + 168) _solveForInput:v17];
  v19 = v18;
  v20 = v16;
  if (sub_1000CC3F8())
  {
    v21 = 1.0 - v12;
    if ((1.0 - v11) < (1.0 - v12))
    {
      v21 = 1.0 - v11;
    }

    v20 = v16 + ((v21 * *(v4 + 228)) * 0.108);
  }

  result = sub_1000CBE54(v19, v16);
  if (!v5)
  {
    swift_beginAccess();
    v23 = *(v4 + 48);
    if ((v23 - 0x80000000000000) >> 56 == 255)
    {
      v24 = v23 << 8;
      swift_beginAccess();
      *(v7 + 40) = v24;
      v25 = *(v7 + 32);
      v26 = [swift_unknownObjectRetain() contents];
      v27 = v25;
      v28 = *(v7 + 40);
      v29 = *(v7 + 64);
      v30 = v10 / a4;
      v29[2].f32[1] = v30;
      v31 = *(v7 + 80);
      v32 = *(v7 + 96);
      v33 = *(v7 + 112);
      v34 = *(v7 + 128);
      v44.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v31, COERCE_FLOAT(*v29[4].f32)), v32, v29[4], 1), v33, *v29[4].f32, 2), v34, *v29[4].f32, 3);
      v44.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v31, COERCE_FLOAT(*v29[6].f32)), v32, v29[6], 1), v33, *v29[6].f32, 2), v34, *v29[6].f32, 3);
      v44.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v31, COERCE_FLOAT(*v29[8].f32)), v32, v29[8], 1), v33, *v29[8].f32, 2), v34, *v29[8].f32, 3);
      v44.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v31, COERCE_FLOAT(*v29[10].f32)), v32, v29[10], 1), v33, *v29[10].f32, 2), v34, *v29[10].f32, 3);
      v6 = &v26[v28];
      *(v6 + 96) = __invert_f4(v44);
      *(v6 + 2) = sub_1000CB6FC();
      *(v6 + 3) = v35;
      *(v6 + 4) = v36;
      *(v6 + 5) = v37;
      swift_beginAccess();
      v38 = *(v7 + 144);
      if (!(v38 >> 62))
      {
        result = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_20;
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_1000E9E64();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_33;
    }

LABEL_20:
    if (!HIDWORD(result))
    {
      *(v6 + 3) = result;
      sub_1000AB384(&off_10011EE80);
      *(v6 + 1) = v39;
      result = _s22MercuryPosterExtension9ToriSceneC9startTimeSdvpfi_0();
      *&v40 = v40 - *(v7 + 56);
      *(v6 + 2) = LODWORD(v40);
      *(v6 + 41) = v19;
      *(v6 + 42) = v20;
      *(v6 + 40) = 0;
      v6[172] = (a2 & 1) == 0;
      if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v10 > -1.0)
        {
          if (v10 < 4294967300.0)
          {
            *v6 = v10;
            if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (a4 > -1.0)
              {
                if (a4 < 4294967300.0)
                {
                  *(v6 + 1) = a4;
                  v41 = *(v7 + 48);
                  v42 = __OFADD__(v41, 1);
                  v43 = v41 + 1;
                  if (!v42)
                  {
                    *(v7 + 48) = v43 % 3;
                    return result;
                  }

LABEL_40:
                  __break(1u);
                  return result;
                }

LABEL_39:
                __break(1u);
                goto LABEL_40;
              }

LABEL_38:
              __break(1u);
              goto LABEL_39;
            }

LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  return result;
}

uint64_t sub_1000CC3F8()
{
  v1 = v0;
  v2 = sub_1000E9784();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s22MercuryPosterExtension9ToriSceneC9startTimeSdvpfi_0();
  v7 = *(v1 + 184);
  if (v7 <= 0.0 || (v8 = v6 - v7, v9 = *(v1 + 176) * 0.16 * 2.8, v6 - v7 >= v9 + 2.8 - v9))
  {
    result = 0;
    *(v1 + 224) = 0u;
    *(v1 + 240) = 0u;
    *(v1 + 208) = 0u;
    *(v1 + 272) = v6;
  }

  else
  {
    v24 = *(v1 + 224);
    sub_1000E9774();
    if (v8 >= v9)
    {
      v14 = v1;
      v23 = vaddq_f32(*(v1 + 192), *(v1 + 208));
      v18 = v23.f32[2];
      v25 = 0;
      v26 = 1065353216;
      sub_1000E9764();
      (*(v3 + 8))(v5, v2);
      *v16.f32 = vsub_f32(*v23.f32, vmul_n_f32(*v23.f32, v27));
      v16.f32[2] = v18 - vmuls_lane_f32(v27, v23, 2);
    }

    else
    {
      v23 = *(v1 + 192);
      sub_1000125FC(&qword_100132540);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000ED250;
      v11 = *(v1 + 208);
      v26 = 1065353216;
      v25 = *(v1 + 256);
      sub_1000E9764();
      *(inited + 32) = v11 * v27;
      v12 = *(v1 + 212);
      v26 = 1065353216;
      v25 = *(v1 + 260);
      sub_1000E9764();
      *(inited + 36) = v12 * v27;
      v13 = *(v1 + 216);
      v26 = 1065353216;
      v14 = v1;
      v25 = *(v1 + 264);
      sub_1000E9764();
      *(inited + 40) = v13 * v27;
      sub_1000AB384(inited);
      v22 = v15;
      swift_setDeallocating();
      (*(v3 + 8))(v5, v2);
      v16 = vaddq_f32(v23, v22);
    }

    v16.i32[3] = 0;
    v19 = vsubq_f32(v16, v24);
    v20 = 1.0 / v8;
    *&v21 = vmulq_n_f32(v19, v20).u64[0];
    *(&v21 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(v20, v19, 2));
    *(v14 + 224) = v16;
    *(v14 + 240) = v21;
    return 1;
  }

  return result;
}

uint64_t ToriScene.tap(at:)(double a1, double a2, double a3, int8x16_t a4, int8x16_t a5)
{
  a4.i32[0] = HIDWORD(a1);
  v24 = LODWORD(a1);
  a5.i32[0] = 1.0;
  v6.i64[0] = 0x8000000080000000;
  v6.i64[1] = 0x8000000080000000;
  LODWORD(v7) = vbslq_s8(v6, a5, a4).u32[0];
  if (*(&a1 + 1) == 0.0)
  {
    v7 = 0.0;
  }

  v8 = v7 * (1.0 - powf(1.0 - fabsf(*(&a1 + 1)), 60.0));
  v9 = *(v5 + 224);
  *(v5 + 256) = *(v5 + 240);
  *(v5 + 192) = v9;
  sub_1000125FC(&qword_100132540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000ED250;
  *(inited + 32) = v24;
  *(inited + 36) = v8;
  *(inited + 40) = 0;
  sub_1000AB384(inited);
  v25 = v11;
  swift_setDeallocating();
  v12 = fabsf(*(v5 + 196));
  if (v12 <= 1.5)
  {
    v13 = 1.0;
    v14 = 1.2;
  }

  else
  {
    v13 = 1.0 - fmin((v12 + -1.5) + (v12 + -1.5), 0.9);
    v14 = 0.16;
  }

  *(v5 + 176) = v13;
  v15.i64[0] = vmulq_n_f32(v25, v14).u64[0];
  v15.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(v14, v25, 2));
  v26 = v15;
  *(v5 + 208) = v15;
  sub_1000AB384(&off_100121EC8);
  v23 = v16;
  sub_1000AB384(&off_100121EF8);
  v18 = v23;
  v17 = v26;
  v17.i32[3] = 0;
  v18.i32[3] = 0;
  v19 = vmaxnmq_f32(v17, v18);
  v19.i32[3] = 0;
  v20.i32[3] = 0;
  *(v5 + 208) = vminnmq_f32(v19, v20);
  result = _s22MercuryPosterExtension9ToriSceneC9startTimeSdvpfi_0();
  *(v5 + 184) = v22;
  return result;
}

uint64_t ToriScene.deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t ToriScene.__deallocating_deinit()
{
  ToriScene.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1000CC920()
{
  result = qword_100133AD8;
  if (!qword_100133AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133AD8);
  }

  return result;
}

unint64_t SyncTextureLoaderError.errorDescription.getter(uint64_t a1, void *a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      sub_1000E9D64(26);

      v5 = 0xD000000000000018;
    }

    else
    {
      sub_1000E9D64(33);

      v5 = 0xD00000000000001FLL;
    }
  }

  else if (a3)
  {
    sub_1000E9D64(20);

    v5 = 0xD000000000000012;
  }

  else
  {
    sub_1000E9D64(18);

    v5 = 0xD000000000000010;
  }

  v7 = v5;
  v8._countAndFlagsBits = a1;
  v8._object = a2;
  sub_1000E99A4(v8);
  return v7;
}

uint64_t sub_1000CCAC0()
{
  sub_1000190E4(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1000CCAF8()
{
  v0 = sub_1000E96A4();
  sub_100011C54(v0, qword_100133AE0);
  sub_100007488(v0, qword_100133AE0);
  return sub_1000E9694();
}

uint64_t sub_1000CCB98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

void *static SyncTextureLoader.debugCompareWithMTKTextureLoader(from:on:options:commandBuffer:)(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v9 = [objc_allocWithZone(MTKTextureLoader) initWithDevice:a2];
  Current = CFAbsoluteTimeGetCurrent();
  sub_1000E9344(v11);
  v13 = v12;
  type metadata accessor for Option(0);
  sub_1000A1E1C(&qword_10012F9E0, type metadata accessor for Option);
  isa = sub_1000E9894().super.isa;
  v63 = 0;
  v15 = [v9 newTextureWithContentsOfURL:v13 options:isa error:&v63];

  if (v15)
  {
    v16 = v63;
    v17 = CFAbsoluteTimeGetCurrent();
    v18 = CFAbsoluteTimeGetCurrent();
    v19 = sub_1000CF4A0(a1, a2, a3, a4);
    if (v4)
    {
      if (qword_10012F700 != -1)
      {
        swift_once();
      }

      v20 = sub_1000E96A4();
      sub_100007488(v20, qword_100133AE0);
      swift_errorRetain();
      v21 = sub_1000E9684();
      v22 = sub_1000E9BA4();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = v15;
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        swift_errorRetain();
        v26 = _swift_stdlib_bridgeErrorToNSError();
        *(v24 + 4) = v26;
        *v25 = v26;
        _os_log_impl(&_mh_execute_header, v21, v22, "❌ SyncTextureLoader failed: %@", v24, 0xCu);
        sub_100012644(v25);

        return v23;
      }

      else
      {

        return v15;
      }
    }

    else
    {
      a4 = v19;
      v61 = v9;
      v62 = v15;
      v33 = CFAbsoluteTimeGetCurrent() - v18;
      sub_1000125FC(&unk_100131D80);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1000EC870;
      *(v34 + 56) = &type metadata for Double;
      *(v34 + 64) = &protocol witness table for Double;
      *(v34 + 32) = (v17 - Current) * 1000.0;
      v59 = sub_1000E9924();
      v36 = v35;
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1000EC870;
      *(v37 + 56) = &type metadata for Double;
      *(v37 + 64) = &protocol witness table for Double;
      *(v37 + 32) = v33 * 1000.0;
      v38 = sub_1000E9924();
      v40 = v39;
      if (qword_10012F700 != -1)
      {
        swift_once();
      }

      v41 = sub_1000E96A4();
      sub_100007488(v41, qword_100133AE0);

      v42 = sub_1000E9684();
      v43 = sub_1000E9B84();

      if (os_log_type_enabled(v42, v43))
      {
        v58 = v38;
        v44 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *v44 = 136315394;
        v45 = sub_100093A3C(v59, v36, &v63);
        v60 = a4;
        v46 = v45;

        *(v44 + 4) = v46;
        *(v44 + 12) = 2080;
        v47 = sub_100093A3C(v58, v40, &v63);

        *(v44 + 14) = v47;
        a4 = v60;
        _os_log_impl(&_mh_execute_header, v42, v43, "⏱️ Timing - MTK: %sms, Sync: %sms", v44, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v48 = [a4 pixelFormat];
      if ((v48 - 70) <= 0xB && ((1 << (v48 - 70)) & 0xC03) != 0)
      {
        sub_1000D101C(v62, a4);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRetain();
        v49 = sub_1000E9684();
        v50 = sub_1000E9B84();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = a4;
          v53 = swift_slowAlloc();
          v63 = v53;
          *v51 = 136315138;
          [v52 pixelFormat];
          type metadata accessor for MTLPixelFormat(0);
          v54 = sub_1000E9944();
          v56 = sub_100093A3C(v54, v55, &v63);

          *(v51 + 4) = v56;
          _os_log_impl(&_mh_execute_header, v49, v50, "🔍 Skipping pixel comparison for format %s - not yet verified safe", v51, 0xCu);
          sub_100012710(v53);
          a4 = v52;
        }

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    v27 = v63;
    sub_1000E92E4();

    swift_willThrow();
    if (qword_10012F700 != -1)
    {
      swift_once();
    }

    v28 = sub_1000E96A4();
    sub_100007488(v28, qword_100133AE0);
    swift_errorRetain();
    v29 = sub_1000E9684();
    v30 = sub_1000E9BA4();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      a4 = swift_slowAlloc();
      *v31 = 138412290;
      swift_errorRetain();
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v32;
      *a4 = v32;
      _os_log_impl(&_mh_execute_header, v29, v30, "❌ MTKTextureLoader failed: %@", v31, 0xCu);
      sub_100012644(a4);
    }

    swift_willThrow();
  }

  return a4;
}

uint64_t sub_1000CD548(uint64_t a1)
{
  if (*(a1 + 16) && (v2 = sub_10009F59C(MTKTextureLoaderOptionTextureUsage), (v3 & 1) != 0) && (sub_100012898(*(a1 + 56) + 32 * v2, v21), sub_1000D1748(), (swift_dynamicCast() & 1) != 0))
  {
    v4 = [v19 unsignedIntegerValue];

    if (!*(a1 + 16))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 1;
    if (!*(a1 + 16))
    {
      goto LABEL_11;
    }
  }

  v5 = sub_10009F59C(MTKTextureLoaderOptionTextureStorageMode);
  if ((v6 & 1) == 0 || (sub_100012898(*(a1 + 56) + 32 * v5, v21), sub_1000D1748(), (swift_dynamicCast() & 1) == 0))
  {
LABEL_11:
    if (!*(a1 + 16))
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  [v19 unsignedIntegerValue];

  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

LABEL_12:
  v7 = sub_10009F59C(MTKTextureLoaderOptionGenerateMipmaps);
  if ((v8 & 1) == 0 || (sub_100012898(*(a1 + 56) + 32 * v7, v21), sub_1000D1748(), (swift_dynamicCast() & 1) == 0))
  {
LABEL_16:
    if (!*(a1 + 16))
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  [v19 BOOLValue];

  if (!*(a1 + 16))
  {
    goto LABEL_21;
  }

LABEL_17:
  v9 = sub_10009F59C(MTKTextureLoaderOptionSRGB);
  if ((v10 & 1) == 0 || (sub_100012898(*(a1 + 56) + 32 * v9, v21), sub_1000D1748(), (swift_dynamicCast() & 1) == 0))
  {
LABEL_21:
    if (!*(a1 + 16))
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  [v19 BOOLValue];

  if (!*(a1 + 16))
  {
    goto LABEL_29;
  }

LABEL_22:
  v11 = sub_10009F59C(MTKTextureLoaderOptionOrigin);
  if ((v12 & 1) == 0 || (sub_100012898(*(a1 + 56) + 32 * v11, v21), (swift_dynamicCast() & 1) == 0))
  {
LABEL_29:
    if (!*(a1 + 16))
    {
      return v4;
    }

    goto LABEL_30;
  }

  if (v19 == sub_1000E9914() && v20 == v13)
  {
  }

  else
  {
    v15 = sub_1000E9F74();

    if ((v15 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  if (!*(a1 + 16))
  {
    return v4;
  }

LABEL_30:
  v16 = sub_10009F59C(MTKTextureLoaderOptionAllocateMipmaps);
  if (v17)
  {
    sub_100012898(*(a1 + 56) + 32 * v16, v21);
    sub_1000D1748();
    if (swift_dynamicCast())
    {
      [v19 BOOLValue];
    }
  }

  return v4;
}

void sub_1000CD910(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unsigned int a6, void *a7)
{
  isa = sub_1000E93F4().super.isa;
  v13 = CGImageSourceCreateWithData(isa, 0);

  if (!v13)
  {
    sub_1000D16D4();
    swift_allocError();
    *v24 = 0xD00000000000001DLL;
    *(v24 + 8) = 0x80000001000F9E00;
    *(v24 + 16) = 1;
    swift_willThrow();
    return;
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v13, 0, 0);
  if (!ImageAtIndex)
  {
    sub_1000D16D4();
    swift_allocError();
    *v25 = 0xD00000000000002CLL;
    *(v25 + 8) = 0x80000001000F9E20;
    *(v25 + 16) = 1;
    swift_willThrow();

    return;
  }

  v15 = ImageAtIndex;
  v94 = a7;
  Width = CGImageGetWidth(ImageAtIndex);
  Height = CGImageGetHeight(v15);
  if (CGImageGetBitsPerComponent(v15) != 16 && CGImageGetBitsPerComponent(v15) != 8)
  {
    sub_1000E9D64(30);

    v103 = 0xD00000000000001BLL;
    v104 = 0x80000001000F9E50;
    v102[0] = CGImageGetBitsPerComponent(v15);
    v109._countAndFlagsBits = sub_1000E9F54();
    sub_1000E99A4(v109);

    v110._countAndFlagsBits = 41;
    v110._object = 0xE100000000000000;
    sub_1000E99A4(v110);
    sub_1000D16D4();
    swift_allocError();
    *v29 = 0xD00000000000001BLL;
    *(v29 + 8) = 0x80000001000F9E50;
    *(v29 + 16) = 1;
    swift_willThrow();

LABEL_71:
    return;
  }

  v98 = a3;
  BitsPerComponent = CGImageGetBitsPerComponent(v15);
  BitsPerPixel = CGImageGetBitsPerPixel(v15);
  v19 = CGImageGetBitsPerComponent(v15);
  if (v19)
  {
    v97 = v13;
    if (BitsPerPixel == 0x8000000000000000 && v19 == -1)
    {
      goto LABEL_96;
    }

    v20 = BitsPerPixel / v19;
    v21 = Width;
    if (BitsPerPixel / v19 == 1)
    {
      v22 = a5;
      v91 = 1;
      if (BitsPerComponent == 16)
      {
        v23 = 25;
      }

      else
      {
        v23 = 11;
      }

      if (BitsPerComponent != 16 && (a6 & 0x100) == 0)
      {
        v23 = 10;
      }
    }

    else
    {
      v91 = v20 == 2;
      v22 = a5;
      if (BitsPerComponent == 16)
      {
        v26 = v20 == 2;
        v27 = 115;
        v28 = 25;
      }

      else
      {
        v26 = v20 == 2;
        if ((a6 & 0x100) != 0)
        {
          v27 = 71;
          v28 = 11;
        }

        else
        {
          v27 = 70;
          v28 = 10;
        }
      }

      if (v26)
      {
        v23 = v28;
      }

      else
      {
        v23 = v27;
      }
    }

    v99 = a6;
    v30 = [objc_opt_self() texture2DDescriptorWithPixelFormat:v23 width:v21 height:Height mipmapped:(a6 | HIBYTE(a6)) & 1];
    [v30 setUsage:a4];
    [v30 setStorageMode:v22];
    v31 = [v98 newTextureWithDescriptor:v30];
    if (!v31)
    {
      sub_1000D16D4();
      swift_allocError();
      *v48 = 0xD000000000000024;
      *(v48 + 8) = 0x80000001000F9E70;
      *(v48 + 16) = 3;
      swift_willThrow();

LABEL_70:
      goto LABEL_71;
    }

    v32 = v31;
    v86 = v23;
    v33 = sub_1000130C0(v23);
    v34 = v21 * v33;
    if ((v21 * v33) >> 64 == (v21 * v33) >> 63)
    {
      v89 = v21 * v33;
      if ((Height * v34) >> 64 == (Height * v34) >> 63)
      {
        v35 = v22;
        v96 = v32;
        __n = Height * v34;
        v36 = malloc(Height * v34);
        if (!v36)
        {
          sub_1000D16D4();
          swift_allocError();
          *v50 = 0xD000000000000028;
          *(v50 + 8) = 0x80000001000F9EA0;
          *(v50 + 16) = 3;
          swift_willThrow();

          goto LABEL_69;
        }

        v37 = v21;
        __src = v36;
        v88 = v30;
        v38 = CGImageGetColorSpace(v15);
        v84 = v35;
        if (!v38 || (v39 = v38, v40 = CGColorSpaceCopyName(v38), v39, !v40))
        {
          v43 = Height;
          if (v91)
          {
            v46 = v88;
            if ((a6 & 0x100) != 0)
            {
              v49 = &kCGColorSpaceGenericGrayGamma2_2;
            }

            else
            {
              v49 = &kCGColorSpaceLinearGray;
            }
          }

          else
          {
            v46 = v88;
            if ((a6 & 0x100) != 0)
            {
              v49 = &kCGColorSpaceSRGB;
            }

            else
            {
              v49 = &kCGColorSpaceLinearSRGB;
            }
          }

          v51 = *v49;
          v41 = 0;
          goto LABEL_59;
        }

        v82 = v21;
        type metadata accessor for CFString(0);
        sub_1000A1E1C(&qword_1001320D8, type metadata accessor for CFString);
        v41 = v40;
        v42 = sub_1000E95E4();

        v43 = Height;
        if (v42 & 1) != 0 || (v44 = v41, v45 = sub_1000E95E4(), v44, (v45))
        {
          v46 = v88;
          if ((a6 & 0x100) != 0)
          {
            v47 = kCGColorSpaceDisplayP3;
          }

          else
          {
            v47 = kCGColorSpaceLinearDisplayP3;
          }

          v51 = v47;

          v37 = v82;
          goto LABEL_59;
        }

        v41 = v44;
        v52 = sub_1000E95E4();

        v46 = v88;
        if (v52 & 1) != 0 || (v53 = v41, v54 = sub_1000E95E4(), v53, (v54))
        {
          v55 = kCGColorSpaceGenericGrayGamma2_2;
          v37 = v82;
          a6 = v99;
          if ((v99 & 0x100) == 0)
          {
            v56 = &kCGColorSpaceLinearGray;
LABEL_57:
            v55 = *v56;
          }
        }

        else
        {
          v41 = v53;
          v57 = sub_1000E95E4();

          v37 = v82;
          a6 = v99;
          if ((v57 & 1) == 0)
          {
            v92 = v41;
            v58 = v41;
            sub_1000E95E4();

            v41 = v92;
            v46 = v88;
          }

          if ((v99 & 0x100) == 0)
          {
            v56 = &kCGColorSpaceLinearSRGB;
            goto LABEL_57;
          }

          v55 = kCGColorSpaceSRGB;
        }

        v51 = v55;

LABEL_59:
        v59 = CGColorSpaceCreateWithName(v51);
        if (v59)
        {
          v60 = v59;
          v83 = v51;
          v93 = v41;
          if (BitsPerComponent == 16)
          {
            v61 = 16;
          }

          else
          {
            v61 = 8;
          }

          v62 = sub_1000131E4(v86);
          v63 = CGBitmapContextCreate(__src, v37, v43, v61, v89, v60, v62);
          if (v63)
          {
            v64 = v63;
            if ((a6 & 0x10000) != 0)
            {
              CGContextScaleCTM(v63, 1.0, -1.0);
              CGContextTranslateCTM(v64, 0.0, -v43);
            }

            sub_1000E9B74();
            sub_100098A34(v37, v43, &v103);
            v87 = v103;
            v101 = v104;
            v69 = v105;
            v68 = v106;
            v70 = v107;
            v81 = v108;
            if (v84 != 2 && ((v99 & 1) == 0 || [v96 mipmapLevelCount] < 2))
            {
              v95 = v60;
              v72 = 0;
              v73 = v97;
              goto LABEL_81;
            }

            v71 = [v94 blitCommandEncoder];
            if (v71)
            {
              v72 = v71;
              v95 = v60;
              v73 = v97;
              if (v84 != 2)
              {
LABEL_81:
                v103 = v87;
                v104 = v101;
                v105 = v69;
                v106 = v68;
                v107 = v70;
                v108 = v81;
                [v96 replaceRegion:&v103 mipmapLevel:0 withBytes:__src bytesPerRow:v89];
                goto LABEL_82;
              }

              v74 = [v98 newBufferWithLength:__n options:0];
              if (v74)
              {
                v75 = v74;
                v76 = sub_1000E98E4();
                [v75 setLabel:v76];

                v77 = [swift_unknownObjectRetain() contents];
                v78 = v75;
                memcpy(v77, __src, __n);
                v103 = v68;
                v104 = v70;
                v105 = v81;
                v102[0] = v87;
                v102[1] = v101;
                v102[2] = v69;
                [v72 copyFromBuffer:v75 sourceOffset:0 sourceBytesPerRow:v89 sourceBytesPerImage:0 sourceSize:&v103 toTexture:v96 destinationSlice:0 destinationLevel:0 destinationOrigin:v102];
                swift_unknownObjectRelease();
                v73 = v97;
LABEL_82:
                if ((v99 & 1) != 0 && [v96 mipmapLevelCount] >= 2)
                {
                  if (v72)
                  {
                    [v72 generateMipmapsForTexture:v96];
LABEL_87:
                    [v72 endEncoding];

                    swift_unknownObjectRelease();
LABEL_89:

                    free(__src);
                    return;
                  }
                }

                else if (v72)
                {
                  goto LABEL_87;
                }

                goto LABEL_89;
              }

              sub_1000D16D4();
              swift_allocError();
              *v80 = 0xD000000000000028;
              *(v80 + 8) = 0x80000001000F9F70;
              *(v80 + 16) = 3;
              swift_willThrow();
              [v72 endEncoding];

              swift_unknownObjectRelease();
            }

            else
            {
              sub_1000D16D4();
              swift_allocError();
              *v79 = 0xD000000000000026;
              *(v79 + 8) = 0x80000001000F9F40;
              *(v79 + 16) = 3;
              swift_willThrow();
            }

            free(__src);

            goto LABEL_69;
          }

          sub_1000D16D4();
          swift_allocError();
          *v67 = 0xD000000000000023;
          *(v67 + 8) = 0x80000001000F9F10;
          *(v67 + 16) = 3;
          swift_willThrow();

          v66 = __src;
        }

        else
        {
          sub_1000D16D4();
          swift_allocError();
          *v65 = 0x1000000000000035;
          *(v65 + 8) = 0x80000001000F9ED0;
          *(v65 + 16) = 3;
          swift_willThrow();

          v66 = __src;
        }

        free(v66);

LABEL_69:
        swift_unknownObjectRelease();
        goto LABEL_70;
      }

      goto LABEL_95;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
}

uint64_t sub_1000CE548(int a1)
{
  if (a1 <= 36283)
  {
    if (a1 <= 33775)
    {
      if (a1 > 32858)
      {
        v1 = a1 - 33189;
        v2 = a1;
        result = 10;
        switch(v1)
        {
          case 0:
            result = 250;
            break;
          case 1:
            return 252;
          case 2:
          case 3:
          case 4:
          case 5:
          case 6:
          case 7:
          case 8:
          case 9:
          case 10:
          case 11:
          case 12:
          case 13:
          case 14:
          case 15:
          case 16:
          case 17:
          case 18:
          case 19:
          case 20:
          case 21:
          case 22:
          case 23:
          case 24:
          case 25:
          case 26:
          case 27:
          case 28:
          case 29:
          case 30:
          case 31:
          case 32:
          case 33:
          case 34:
          case 35:
          case 36:
          case 37:
          case 38:
          case 39:
          case 40:
          case 41:
          case 42:
          case 43:
          case 44:
          case 45:
          case 46:
          case 47:
          case 48:
          case 49:
          case 50:
          case 51:
          case 52:
          case 53:
          case 54:
          case 55:
          case 56:
          case 57:
          case 58:
          case 59:
          case 60:
          case 61:
          case 62:
          case 63:
          case 64:
          case 65:
          case 66:
          case 67:
          case 68:
          case 69:
          case 70:
          case 71:
          case 72:
          case 73:
          case 74:
          case 75:
          case 76:
          case 77:
          case 78:
          case 79:
          case 80:
          case 81:
          case 82:
          case 83:
          case 84:
          case 85:
          case 86:
          case 87:
          case 88:
          case 89:
          case 90:
          case 91:
          case 92:
          case 93:
          case 94:
          case 95:
          case 96:
          case 97:
          case 98:
          case 99:
          case 100:
          case 101:
          case 102:
          case 103:
          case 104:
          case 105:
          case 106:
          case 107:
          case 108:
          case 109:
          case 110:
          case 111:
          case 112:
          case 113:
          case 114:
          case 115:
          case 116:
          case 117:
          case 118:
          case 119:
          case 120:
          case 121:
          case 122:
          case 123:
          case 124:
          case 125:
          case 126:
          case 127:
          case 128:
          case 129:
          case 130:
          case 131:
            goto LABEL_90;
          case 132:
            return result;
          case 133:
            result = 20;
            break;
          case 134:
            result = 30;
            break;
          case 135:
            result = 60;
            break;
          case 136:
            result = 25;
            break;
          case 137:
            result = 55;
            break;
          case 138:
            result = 65;
            break;
          case 139:
            result = 105;
            break;
          case 140:
            result = 14;
            break;
          case 141:
            result = 13;
            break;
          case 142:
            result = 24;
            break;
          case 143:
            result = 23;
            break;
          case 144:
            result = 53;
            break;
          case 145:
            result = 54;
            break;
          case 146:
            result = 34;
            break;
          case 147:
            result = 33;
            break;
          case 148:
            result = 64;
            break;
          case 149:
            result = 63;
            break;
          case 150:
            result = 103;
            break;
          case 151:
            result = 104;
            break;
          default:
            v2 = 10;
            goto LABEL_90;
        }

        return result;
      }

      if (a1 <= 32855)
      {
        if (a1 == 32847)
        {
          return 110;
        }

        v2 = a1;
        if (a1 != 32849)
        {
          goto LABEL_90;
        }

        return 70;
      }

      if (a1 == 32856)
      {
        return 70;
      }

      v2 = a1;
      if (a1 == 32857)
      {
        return 90;
      }

LABEL_90:
      sub_1000125FC(&unk_100131D80);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1000EC870;
      *(v4 + 56) = &type metadata for UInt32;
      *(v4 + 64) = &protocol witness table for UInt32;
      *(v4 + 32) = v2;
      v5 = sub_1000E9924();
      v7 = v6;
      if (qword_10012F700 != -1)
      {
        swift_once();
      }

      v8 = sub_1000E96A4();
      sub_100007488(v8, qword_100133AE0);

      v9 = sub_1000E9684();
      v10 = sub_1000E9BA4();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v16 = v12;
        *v11 = 136315138;
        *(v11 + 4) = sub_100093A3C(v5, v7, &v16);
        _os_log_impl(&_mh_execute_header, v9, v10, "Unsupported GL internal format: %s", v11, 0xCu);
        sub_100012710(v12);
      }

      v16 = 0;
      v17 = 0xE000000000000000;
      sub_1000E9D64(39);

      v16 = 0xD000000000000013;
      v17 = 0x80000001000F9DC0;
      v18._countAndFlagsBits = v5;
      v18._object = v7;
      sub_1000E99A4(v18);

      v19._object = 0x80000001000F9DE0;
      v19._countAndFlagsBits = 0xD000000000000012;
      sub_1000E99A4(v19);
      v13 = v16;
      v14 = v17;
      sub_1000D16D4();
      swift_allocError();
      *v15 = v13;
      *(v15 + 8) = v14;
      *(v15 + 16) = 2;
      swift_willThrow();
      return 0;
    }

    if (a1 > 35916)
    {
      if (a1 > 36219)
      {
        if (a1 > 36229)
        {
          if (a1 == 36230)
          {
            return 114;
          }

          if (a1 == 36232)
          {
            return 113;
          }

          v2 = a1;
          if (a1 == 36283)
          {
            return 140;
          }
        }

        else
        {
          if (a1 == 36220)
          {
            return 73;
          }

          if (a1 == 36223)
          {
            return 74;
          }

          v2 = a1;
          if (a1 == 36226)
          {
            return 124;
          }
        }

        goto LABEL_90;
      }

      if (a1 > 36011)
      {
        if (a1 == 36012)
        {
          return 252;
        }

        if (a1 != 36013)
        {
          v2 = a1;
          if (a1 == 36208)
          {
            return 123;
          }

          goto LABEL_90;
        }

        return 260;
      }

      if (a1 != 35917)
      {
        if (a1 == 35918)
        {
          return 133;
        }

        v2 = a1;
        if (a1 == 35919)
        {
          return 135;
        }

        goto LABEL_90;
      }
    }

    else
    {
      if (a1 <= 34841)
      {
        if (a1 <= 33778)
        {
          if (a1 == 33776 || a1 == 33777)
          {
            return 130;
          }

          else
          {
            return 132;
          }
        }

        if (a1 == 33779)
        {
          return 134;
        }

        if (a1 != 34041)
        {
          v2 = a1;
          if (a1 == 34836)
          {
            return 125;
          }

          goto LABEL_90;
        }

        return 260;
      }

      if (a1 <= 35904)
      {
        if (a1 == 34842)
        {
          return 115;
        }

        if (a1 == 35898)
        {
          return 92;
        }

        v2 = a1;
        if (a1 == 35901)
        {
          return 93;
        }

        goto LABEL_90;
      }

      if (a1 == 35905 || a1 == 35907)
      {
        return 71;
      }

      v2 = a1;
      if (a1 != 35916)
      {
        goto LABEL_90;
      }
    }

    return 131;
  }

  if (a1 <= 36762)
  {
    if (a1 > 36494)
    {
      if (a1 > 36758)
      {
        if (a1 == 36759)
        {
          return 72;
        }

        if (a1 == 36760)
        {
          return 22;
        }

        v2 = a1;
        if (a1 == 36761)
        {
          return 62;
        }
      }

      else
      {
        if (a1 == 36495)
        {
          return 151;
        }

        if (a1 == 36756)
        {
          return 12;
        }

        v2 = a1;
        if (a1 == 36757)
        {
          return 32;
        }
      }
    }

    else
    {
      if (a1 > 36491)
      {
        if (a1 == 36492)
        {
          return 152;
        }

        if (a1 == 36493)
        {
          return 153;
        }

        return 150;
      }

      if (a1 == 36284)
      {
        return 141;
      }

      if (a1 == 36285)
      {
        return 142;
      }

      v2 = a1;
      if (a1 == 36286)
      {
        return 143;
      }
    }

    goto LABEL_90;
  }

  v2 = a1;
  switch(a1)
  {
    case 37488:
      return 170;
    case 37489:
      return 172;
    case 37490:
      return 174;
    case 37491:
      return 176;
    case 37492:
      return 180;
    case 37493:
      return 181;
    case 37494:
      return 182;
    case 37495:
      return 183;
    case 37496:
      return 178;
    case 37497:
      return 179;
    case 37498:
    case 37499:
    case 37500:
    case 37501:
    case 37502:
    case 37503:
    case 37504:
    case 37505:
    case 37506:
    case 37507:
    case 37508:
    case 37509:
    case 37510:
    case 37511:
    case 37512:
    case 37513:
    case 37514:
    case 37515:
    case 37516:
    case 37517:
    case 37518:
    case 37519:
    case 37520:
    case 37521:
    case 37522:
    case 37523:
    case 37524:
    case 37525:
    case 37526:
    case 37527:
    case 37528:
    case 37529:
    case 37530:
    case 37531:
    case 37532:
    case 37533:
    case 37534:
    case 37535:
    case 37536:
    case 37537:
    case 37538:
    case 37539:
    case 37540:
    case 37541:
    case 37542:
    case 37543:
    case 37544:
    case 37545:
    case 37546:
    case 37547:
    case 37548:
    case 37549:
    case 37550:
    case 37551:
    case 37552:
    case 37553:
    case 37554:
    case 37555:
    case 37556:
    case 37557:
    case 37558:
    case 37559:
    case 37560:
    case 37561:
    case 37562:
    case 37563:
    case 37564:
    case 37565:
    case 37566:
    case 37567:
    case 37568:
    case 37569:
    case 37570:
    case 37571:
    case 37572:
    case 37573:
    case 37574:
    case 37575:
    case 37576:
    case 37577:
    case 37578:
    case 37579:
    case 37580:
    case 37581:
    case 37582:
    case 37583:
    case 37584:
    case 37585:
    case 37586:
    case 37587:
    case 37588:
    case 37589:
    case 37590:
    case 37591:
    case 37592:
    case 37593:
    case 37594:
    case 37595:
    case 37596:
    case 37597:
    case 37598:
    case 37599:
    case 37600:
    case 37601:
    case 37602:
    case 37603:
    case 37604:
    case 37605:
    case 37606:
    case 37607:
    case 37608:
    case 37609:
    case 37610:
    case 37611:
    case 37612:
    case 37613:
    case 37614:
    case 37615:
    case 37616:
    case 37617:
    case 37618:
    case 37619:
    case 37620:
    case 37621:
    case 37622:
    case 37623:
    case 37624:
    case 37625:
    case 37626:
    case 37627:
    case 37628:
    case 37629:
    case 37630:
    case 37631:
    case 37632:
    case 37633:
    case 37634:
    case 37635:
    case 37636:
    case 37637:
    case 37638:
    case 37639:
    case 37640:
    case 37641:
    case 37642:
    case 37643:
    case 37644:
    case 37645:
    case 37646:
    case 37647:
    case 37648:
    case 37649:
    case 37650:
    case 37651:
    case 37652:
    case 37653:
    case 37654:
    case 37655:
    case 37656:
    case 37657:
    case 37658:
    case 37659:
    case 37660:
    case 37661:
    case 37662:
    case 37663:
    case 37664:
    case 37665:
    case 37666:
    case 37667:
    case 37668:
    case 37669:
    case 37670:
    case 37671:
    case 37672:
    case 37673:
    case 37674:
    case 37675:
    case 37676:
    case 37677:
    case 37678:
    case 37679:
    case 37680:
    case 37681:
    case 37682:
    case 37683:
    case 37684:
    case 37685:
    case 37686:
    case 37687:
    case 37688:
    case 37689:
    case 37690:
    case 37691:
    case 37692:
    case 37693:
    case 37694:
    case 37695:
    case 37696:
    case 37697:
    case 37698:
    case 37699:
    case 37700:
    case 37701:
    case 37702:
    case 37703:
    case 37704:
    case 37705:
    case 37706:
    case 37707:
    case 37708:
    case 37709:
    case 37710:
    case 37711:
    case 37712:
    case 37713:
    case 37714:
    case 37715:
    case 37716:
    case 37717:
    case 37718:
    case 37719:
    case 37720:
    case 37721:
    case 37722:
    case 37723:
    case 37724:
    case 37725:
    case 37726:
    case 37727:
    case 37728:
    case 37729:
    case 37730:
    case 37731:
    case 37732:
    case 37733:
    case 37734:
    case 37735:
    case 37736:
    case 37737:
    case 37738:
    case 37739:
    case 37740:
    case 37741:
    case 37742:
    case 37743:
    case 37744:
    case 37745:
    case 37746:
    case 37747:
    case 37748:
    case 37749:
    case 37750:
    case 37751:
    case 37752:
    case 37753:
    case 37754:
    case 37755:
    case 37756:
    case 37757:
    case 37758:
    case 37759:
    case 37760:
    case 37761:
    case 37762:
    case 37763:
    case 37764:
    case 37765:
    case 37766:
    case 37767:
    case 37768:
    case 37769:
    case 37770:
    case 37771:
    case 37772:
    case 37773:
    case 37774:
    case 37775:
    case 37776:
    case 37777:
    case 37778:
    case 37779:
    case 37780:
    case 37781:
    case 37782:
    case 37783:
    case 37784:
    case 37785:
    case 37786:
    case 37787:
    case 37788:
    case 37789:
    case 37790:
    case 37791:
    case 37792:
    case 37793:
    case 37794:
    case 37795:
    case 37796:
    case 37797:
    case 37798:
    case 37799:
    case 37800:
    case 37801:
    case 37802:
    case 37803:
    case 37804:
    case 37805:
    case 37806:
    case 37807:
    case 37822:
    case 37823:
    case 37824:
    case 37825:
    case 37826:
    case 37827:
    case 37828:
    case 37829:
    case 37830:
    case 37831:
    case 37832:
    case 37833:
    case 37834:
    case 37835:
    case 37836:
    case 37837:
    case 37838:
    case 37839:
      goto LABEL_90;
    case 37808:
      return 204;
    case 37809:
      return 205;
    case 37810:
      return 206;
    case 37811:
      return 207;
    case 37812:
      return 208;
    case 37813:
      return 210;
    case 37814:
      return 211;
    case 37815:
      return 212;
    case 37816:
      return 213;
    case 37817:
      return 214;
    case 37818:
      return 215;
    case 37819:
      return 216;
    case 37820:
      return 217;
    case 37821:
      return 218;
    case 37840:
      return 186;
    case 37841:
      return 187;
    case 37842:
      return 188;
    case 37843:
      return 189;
    case 37844:
      return 190;
    case 37845:
      return 192;
    case 37846:
      return 193;
    case 37847:
      return 194;
    case 37848:
      return 195;
    case 37849:
      return 196;
    case 37850:
      return 197;
    case 37851:
      return 198;
    case 37852:
      return 199;
    case 37853:
      return 200;
    default:
      if (a1 == 36763)
      {
        result = 112;
      }

      else
      {
        v2 = a1;
        if (a1 != 36975)
        {
          goto LABEL_90;
        }

        result = 91;
      }

      break;
  }

  return result;
}

uint64_t sub_1000CEE10(uint64_t a1)
{
  v2 = a1 - 70;
  result = 71;
  switch(v2)
  {
    case 0:
      return result;
    case 10:
      result = 81;
      break;
    case 60:
      result = 131;
      break;
    case 62:
      result = 133;
      break;
    case 64:
      result = 135;
      break;
    case 82:
      result = 153;
      break;
    case 108:
      result = 179;
      break;
    case 110:
      result = 181;
      break;
    case 112:
      result = 183;
      break;
    case 134:
      result = 186;
      break;
    case 135:
      result = 187;
      break;
    case 136:
      result = 188;
      break;
    case 137:
      result = 189;
      break;
    case 138:
      result = 190;
      break;
    case 140:
      result = 192;
      break;
    case 141:
      result = 193;
      break;
    case 142:
      result = 194;
      break;
    case 143:
      result = 195;
      break;
    case 144:
      result = 196;
      break;
    case 145:
      result = 197;
      break;
    case 146:
      result = 198;
      break;
    case 147:
      result = 199;
      break;
    case 148:
      result = 200;
      break;
    default:
      result = a1;
      break;
  }

  return result;
}

uint64_t sub_1000CEEFC(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v11 != 2)
    {
      v26 = a5 >> 62;
      memset(v41, 0, 14);
      if ((a5 >> 62) <= 1)
      {
        if (v26)
        {
          if (__OFSUB__(HIDWORD(a4), a4))
          {
LABEL_61:
            __break(1u);
            goto LABEL_62;
          }

          v13 = HIDWORD(a4) - a4;
        }

        else
        {
          v13 = BYTE6(a5);
        }

LABEL_43:
        v32 = swift_allocObject();
        *(v32 + 16) = a6;
        v46 = sub_1000D17A0;
        v47 = v32;
        aBlock = _NSConcreteStackBlock;
        v43 = 1107296256;
        v33 = &unk_100127848;
LABEL_46:
        v44 = sub_1000CCB98;
        v45 = v33;
        v35 = _Block_copy(&aBlock);
        swift_unknownObjectRetain();
        sub_100031E2C(a4, a5);
        swift_unknownObjectRetain();
        sub_100031E2C(a4, a5);

        v36 = [a3 newBufferWithBytesNoCopy:v41 length:v13 options:0 deallocator:v35];
LABEL_56:
        v40 = v36;
        _Block_release(v35);
        swift_unknownObjectRelease();
        sub_1000190E4(a4, a5);
        swift_unknownObjectRelease();
        sub_1000190E4(a4, a5);
        return v40;
      }

      goto LABEL_27;
    }

    v14 = *(a1 + 16);
    swift_unknownObjectRetain();
    sub_100031E2C(a4, a5);
    swift_unknownObjectRetain();
    sub_100031E2C(a4, a5);
    v15 = sub_1000E9214();
    if (v15)
    {
      v16 = v15;
      v17 = sub_1000E9244();
      if (__OFSUB__(v14, v17))
      {
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v6 = v14 - v17 + v16;
      sub_1000E9234();
      if (v6)
      {
        v18 = a5 >> 62;
        if ((a5 >> 62) <= 1)
        {
          if (v18)
          {
            if (__OFSUB__(HIDWORD(a4), a4))
            {
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
            }

            v19 = HIDWORD(a4) - a4;
          }

          else
          {
            v19 = BYTE6(a5);
          }

          goto LABEL_50;
        }

        goto LABEL_31;
      }
    }

    else
    {
      sub_1000E9234();
    }

    __break(1u);
    goto LABEL_66;
  }

  if (!v11)
  {
    v41[0] = a1;
    LOWORD(v41[1]) = a2;
    BYTE2(v41[1]) = BYTE2(a2);
    BYTE3(v41[1]) = BYTE3(a2);
    BYTE4(v41[1]) = BYTE4(a2);
    v12 = a5 >> 62;
    BYTE5(v41[1]) = BYTE5(a2);
    if ((a5 >> 62) <= 1)
    {
      if (!v12)
      {
        v13 = BYTE6(a5);
LABEL_45:
        v34 = swift_allocObject();
        *(v34 + 16) = a6;
        v46 = sub_1000D17A0;
        v47 = v34;
        aBlock = _NSConcreteStackBlock;
        v43 = 1107296256;
        v33 = &unk_1001277F8;
        goto LABEL_46;
      }

      goto LABEL_39;
    }

    if (v12 != 2)
    {
      v13 = 0;
      goto LABEL_45;
    }

    v27 = *(a4 + 16);
    v26 = *(a4 + 24);
    v13 = v26 - v27;
    if (!__OFSUB__(v26, v27))
    {
      goto LABEL_45;
    }

    __break(1u);
LABEL_27:
    v13 = 0;
    if (v26 != 2)
    {
      goto LABEL_43;
    }

    v28 = *(a4 + 16);
    v18 = *(a4 + 24);
    v13 = v18 - v28;
    if (!__OFSUB__(v18, v28))
    {
      goto LABEL_43;
    }

    __break(1u);
LABEL_31:
    if (v18 != 2)
    {
      v19 = 0;
LABEL_50:
      v37 = swift_allocObject();
      *(v37 + 16) = a6;
      v46 = sub_1000D1728;
      v47 = v37;
      aBlock = _NSConcreteStackBlock;
      v43 = 1107296256;
      v38 = &unk_100127758;
LABEL_55:
      v44 = sub_1000CCB98;
      v45 = v38;
      v35 = _Block_copy(&aBlock);

      v36 = [a3 newBufferWithBytesNoCopy:v6 length:v19 options:0 deallocator:v35];
      goto LABEL_56;
    }

    v29 = *(a4 + 16);
    v25 = *(a4 + 24);
    v19 = v25 - v29;
    if (!__OFSUB__(v25, v29))
    {
      goto LABEL_50;
    }

    __break(1u);
    goto LABEL_35;
  }

  v20 = a1;
  if (a1 > a1 >> 32)
  {
    __break(1u);
    goto LABEL_58;
  }

  swift_unknownObjectRetain();
  sub_100031E2C(a4, a5);
  swift_unknownObjectRetain();
  sub_100031E2C(a4, a5);
  v21 = sub_1000E9214();
  if (!v21)
  {
LABEL_66:
    result = sub_1000E9234();
    goto LABEL_67;
  }

  v22 = v21;
  v23 = sub_1000E9244();
  if (__OFSUB__(v20, v23))
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v6 = v20 - v23 + v22;
  result = sub_1000E9234();
  if (v6)
  {
    v25 = a5 >> 62;
    if ((a5 >> 62) <= 1)
    {
      if (v25)
      {
        if (__OFSUB__(HIDWORD(a4), a4))
        {
          goto LABEL_63;
        }

        v19 = HIDWORD(a4) - a4;
      }

      else
      {
        v19 = BYTE6(a5);
      }

LABEL_54:
      v39 = swift_allocObject();
      *(v39 + 16) = a6;
      v46 = sub_1000D17A0;
      v47 = v39;
      aBlock = _NSConcreteStackBlock;
      v43 = 1107296256;
      v38 = &unk_1001277A8;
      goto LABEL_55;
    }

LABEL_35:
    if (v25 == 2)
    {
      v31 = *(a4 + 16);
      v30 = *(a4 + 24);
      v19 = v30 - v31;
      if (__OFSUB__(v30, v31))
      {
        __break(1u);
LABEL_39:
        if (!__OFSUB__(HIDWORD(a4), a4))
        {
          v13 = HIDWORD(a4) - a4;
          goto LABEL_45;
        }

        goto LABEL_60;
      }
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_54;
  }

LABEL_67:
  __break(1u);
  return result;
}

id sub_1000CF4A0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v215 = a4;
  v8 = sub_1000E93B4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v185 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000CD548(a3);
  p_name = v13;
  v16 = v15;
  v17 = sub_1000E93D4();
  v216 = v4;
  if (v4)
  {
    if (qword_10012F700 != -1)
    {
      swift_once();
    }

    v20 = sub_1000E96A4();
    sub_100007488(v20, qword_100133AE0);
    (*(v9 + 16))(v11, a1, v8);
    swift_errorRetain();
    v21 = sub_1000E9684();
    v22 = sub_1000E9BA4();

    if (os_log_type_enabled(v21, v22))
    {
      p_name = swift_slowAlloc();
      v219 = swift_slowAlloc();
      *p_name = 136315394;
      v23 = sub_1000E9384();
      v25 = v24;
      (*(v9 + 8))(v11, v8);
      v26 = sub_100093A3C(v23, v25, &v219);

      *(p_name + 4) = v26;
      *(p_name + 12) = 2080;
      swift_getErrorValue();
      v27 = sub_1000E9FB4();
      v29 = sub_100093A3C(v27, v28, &v219);

      *(p_name + 14) = v29;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed to read file at URL %s: %s", p_name, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }

    v219 = 0;
    v220 = 0xE000000000000000;
    sub_1000E9D64(32);

    v219 = 0xD00000000000001ELL;
    v220 = 0x80000001000F9B70;
    swift_getErrorValue();
    v225._countAndFlagsBits = sub_1000E9FB4();
    sub_1000E99A4(v225);

    v32 = v219;
    v33 = v220;
    sub_1000D16D4();
    swift_allocError();
    *v34 = v32;
    *(v34 + 8) = v33;
    *(v34 + 16) = 0;
    swift_willThrow();

    return p_name;
  }

  v30 = v18;
  LODWORD(v212) = v16;
  v213 = v12;
  v214 = a2;
  v31 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    if (v31 != 2)
    {
      goto LABEL_15;
    }

    v36 = *(v17 + 16);
    v35 = *(v17 + 24);
    v37 = __OFSUB__(v35, v36);
    v38 = v35 - v36;
    if (v37)
    {
      goto LABEL_293;
    }

    if (v38 < 64)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (!v31)
    {
      if (BYTE6(v18) >= 0x40uLL)
      {
        goto LABEL_22;
      }

LABEL_15:
      p_name = 0x80000001000F9D80;
      v39 = v17;
      sub_1000D16D4();
      swift_allocError();
      v41 = 0xD000000000000027;
LABEL_16:
      *v40 = v41;
      *(v40 + 8) = p_name;
      v42 = 1;
LABEL_17:
      *(v40 + 16) = v42;
      swift_willThrow();
      v43 = v39;
      goto LABEL_18;
    }

    if (__OFSUB__(HIDWORD(v17), v17))
    {
      goto LABEL_294;
    }

    if (HIDWORD(v17) - v17 < 64)
    {
      goto LABEL_15;
    }
  }

LABEL_22:
  v210 = v18 >> 62;
  v211 = p_name;
  if (v31 != 2)
  {
    if (v31 != 1)
    {
      v69 = 0;
      v56 = BYTE1(v17);
      v57 = BYTE2(v17);
      v55 = v17;
      v58 = BYTE3(v17);
      v59 = BYTE4(v17);
      v60 = BYTE5(v17);
      v61 = BYTE6(v17);
      v62 = HIBYTE(v17);
      v64 = v18 >> 8;
      v65 = v18 >> 16;
      v66 = v18 >> 24;
      v67 = HIDWORD(v30);
      v63 = v30;
      v68 = v30 >> 40;
      goto LABEL_34;
    }

    v45 = v17;
    if (v17 > v17 >> 32)
    {
      goto LABEL_299;
    }

    v46 = v17;
    v47 = sub_1000E9214();
    if (!v47)
    {
LABEL_327:
      sub_1000E9234();
      __break(1u);
LABEL_328:
      sub_1000E9234();
LABEL_329:
      __break(1u);
LABEL_330:
      sub_1000E9234();
LABEL_331:
      __break(1u);
LABEL_332:
      result = sub_1000E9E44();
      __break(1u);
      return result;
    }

    v48 = v47;
    v49 = sub_1000E9244();
    if (__OFSUB__(v45, v49))
    {
      goto LABEL_301;
    }

    v50 = (v45 - v49 + v48);
    v17 = sub_1000E9234();
    if (v50)
    {
      goto LABEL_32;
    }

    __break(1u);
  }

  v46 = v17;
  v51 = *(v17 + 16);
  v52 = sub_1000E9214();
  if (!v52)
  {
    sub_1000E9234();
LABEL_326:
    __break(1u);
    goto LABEL_327;
  }

  v53 = v52;
  v54 = sub_1000E9244();
  if (__OFSUB__(v51, v54))
  {
    goto LABEL_300;
  }

  v50 = (v51 - v54 + v53);
  sub_1000E9234();
  if (!v50)
  {
    goto LABEL_326;
  }

LABEL_32:
  v55 = *v50;
  v56 = v50[1];
  v57 = v50[2];
  v58 = v50[3];
  v59 = v50[4];
  v60 = v50[5];
  v61 = v50[6];
  LODWORD(v62) = v50[7];
  v63 = v50[8];
  LOBYTE(v64) = v50[9];
  LOBYTE(v65) = v50[10];
  LOBYTE(v66) = v50[11];
  LODWORD(v67) = *(v50 + 3);
  LODWORD(v208) = *(v50 + 7);
  v19 = *(v50 + 10);
  LODWORD(v207) = *(v50 + 9);
  p_name = *(v50 + 11);
  LODWORD(v12) = *(v50 + 12);
  LODWORD(v11) = *(v50 + 13);
  LODWORD(a2) = *(v50 + 14);
  LODWORD(v68) = v67 >> 8;
  v69 = v67 & 0xFFFF0000;
  LODWORD(v206) = *(v50 + 15);
  v17 = v46;
LABEL_34:
  for (i = 0; i != 12; ++i)
  {
    LOBYTE(v219) = v55;
    BYTE1(v219) = v56;
    BYTE2(v219) = v57;
    BYTE3(v219) = v58;
    BYTE4(v219) = v59;
    BYTE5(v219) = v60;
    BYTE6(v219) = v61;
    HIBYTE(v219) = v62;
    LOBYTE(v220) = v63;
    BYTE1(v220) = v64;
    BYTE2(v220) = v65;
    BYTE3(v220) = v66;
    v71 = *(&v219 + i);
    *&v217 = 0xBB31312058544BABLL;
    DWORD2(v217) = 169478669;
    if (v71 != *(&v217 + i))
    {
      if (v55 == 137 && v56 == 80 && v57 == 78 && v58 == 71 && v59 == 13 && v60 == 10 && v61 == 26 && v62 == 10)
      {
        v75 = v17;
        sub_1000CD910(v17, v30, v214, v213, v211, v212 & 0x1010101, v215);
        p_name = v76;
        sub_1000190E4(v75, v30);
        return p_name;
      }

      p_name = 0x80000001000F9B90;
      v39 = v17;
      sub_1000D16D4();
      swift_allocError();
      v41 = 0xD000000000000028;
      goto LABEL_16;
    }
  }

  if ((v69 | v67 | (v68 << 8)) != 0x4030201)
  {
    p_name = 0x80000001000F9BC0;
    v39 = v17;
    sub_1000D16D4();
    swift_allocError();
    *v40 = 0xD000000000000045;
    *(v40 + 8) = 0x80000001000F9BC0;
    v42 = 2;
    goto LABEL_17;
  }

  v205 = v17;
  if (v19)
  {
    v209 = v19;
    v72 = v211;
    v73 = v213;
    LOWORD(v74) = v212;
    if (p_name)
    {
      if (v12 <= 1)
      {
        LODWORD(v12) = 1;
      }

      if (a2 <= 1)
      {
        LODWORD(a2) = 1;
      }

LABEL_61:
      v77 = v216;
      goto LABEL_62;
    }

    v77 = v216;
    v79 = v208;
    if (a2)
    {
      if (v12 <= 1)
      {
        LODWORD(v12) = 1;
      }

      goto LABEL_75;
    }

    if (!v12)
    {
      LODWORD(v12) = 1;
    }
  }

  else
  {
    v72 = v211;
    v73 = v213;
    LOWORD(v74) = v212;
    if (p_name)
    {
      if (v12 <= 1)
      {
        LODWORD(v12) = 1;
      }

      if (a2 <= 1)
      {
        LODWORD(a2) = 1;
      }

      v209 = 1;
      goto LABEL_61;
    }

    v77 = v216;
    if (a2)
    {
      if (v12 <= 1)
      {
        LODWORD(v12) = 1;
      }

      p_name = 1;
      v209 = 1;
      goto LABEL_62;
    }

    v209 = 1;
    if (!v12)
    {
      goto LABEL_273;
    }

    v79 = v208;
  }

  LODWORD(a2) = 1;
LABEL_75:
  p_name = 1;
  v78 = v79;
LABEL_76:
  v80 = sub_1000CE548(v78);
  if (v77)
  {
    goto LABEL_77;
  }

  v212 = v207;
  v216 = a2;
  v207 = v12;
  if ((v74 & 0x100) != 0)
  {
    v80 = sub_1000CEE10(v80);
  }

  v81 = v80;
  v82 = [objc_allocWithZone(MTLTextureDescriptor) init];
  [v82 setPixelFormat:v81];
  [v82 setWidth:v212];
  [v82 setHeight:v209];
  [v82 setDepth:p_name];
  [v82 setMipmapLevelCount:v216];
  [v82 setUsage:v73];
  [v82 setStorageMode:v72];
  v83 = v214;
  v213 = v82;
  v203 = p_name;
  if (v11 == 6)
  {
    v84 = v207;
    if (v207 <= 1)
    {
      v85 = 5;
    }

    else
    {
      v85 = 6;
    }

    [v82 setTextureType:v85];
    v86 = 6 * v84;
    v87 = &selRef_setArrayLength_;
  }

  else if (p_name <= 1)
  {
    if (v209 < 2)
    {
      v88 = v207;
      v89 = v207 > 1;
    }

    else
    {
      v88 = v207;
      if (v207 <= 1)
      {
        v89 = 2;
      }

      else
      {
        v89 = 3;
      }
    }

    v82 = v213;
    [v213 setTextureType:v89];
    v87 = &selRef_setArrayLength_;
    v86 = v88;
  }

  else
  {
    v87 = &selRef_setTextureType_;
    v86 = 7;
    v82 = v213;
  }

  [v82 *v87];
  v90 = [v83 newTextureWithDescriptor:v82];
  a2 = v81;
  if (!v90)
  {
    if (qword_10012F700 != -1)
    {
      goto LABEL_310;
    }

    goto LABEL_136;
  }

  v201 = v90;
  v91 = 0;
  v74 = _swiftEmptyArrayStorage;
  while (2)
  {
    if (v91 < -64)
    {
      v92 = 1;
      v93 = 1;
      goto LABEL_107;
    }

    if (v91 < 64)
    {
      v93 = v212 >> v91;
      if (v212 >> v91)
      {
        goto LABEL_103;
      }
    }

    if (v91 <= 64)
    {
      v93 = 1;
      v92 = 1;
      if (v91 == 64)
      {
        goto LABEL_107;
      }

LABEL_103:
      v94 = v209 >> (v91 & 0x3F);
      goto LABEL_104;
    }

    v94 = 0;
    v93 = 1;
LABEL_104:
    if (v94 <= 1)
    {
      v92 = 1;
    }

    else
    {
      v92 = v94;
    }

LABEL_107:
    MTLPixelFormatGetInfoForDevice();
    if ((v220 & 0x400) == 0)
    {
      v95 = v93 * v222;
      if ((v93 * v222) >> 64 != (v93 * v222) >> 63)
      {
        goto LABEL_282;
      }

      if (__OFADD__(v95, 3))
      {
        goto LABEL_285;
      }

      v96 = (v95 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v97 = v96 * v92;
      if ((v96 * v92) >> 64 != (v96 * v92) >> 63)
      {
        goto LABEL_287;
      }

      goto LABEL_124;
    }

    v98 = v93 + v223;
    if (__OFADD__(v93, v223))
    {
      goto LABEL_283;
    }

    v37 = __OFSUB__(v98, 1);
    v99 = v98 - 1;
    if (!v37)
    {
      if (!v223)
      {
        goto LABEL_286;
      }

      if (v99 == 0x8000000000000000 && v223 == -1)
      {
        goto LABEL_297;
      }

      v100 = v92 + v224;
      if (__OFADD__(v92, v224))
      {
        goto LABEL_288;
      }

      v37 = __OFSUB__(v100, 1);
      v101 = v100 - 1;
      if (v37)
      {
        goto LABEL_289;
      }

      if (!v224)
      {
        goto LABEL_290;
      }

      if (v101 == 0x8000000000000000 && v224 == -1)
      {
        goto LABEL_298;
      }

      v102 = v99 / v223;
      v103 = v102 * v222;
      if ((v102 * v222) >> 64 != (v102 * v222) >> 63)
      {
        goto LABEL_291;
      }

      v97 = v103 * (v101 / v224);
      if ((v103 * (v101 / v224)) >> 64 != v97 >> 63)
      {
        goto LABEL_292;
      }

LABEL_124:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v74 = sub_1000A39E8(0, *(v74 + 2) + 1, 1, v74);
      }

      v105 = *(v74 + 2);
      v104 = *(v74 + 3);
      if (v105 >= v104 >> 1)
      {
        v74 = sub_1000A39E8((v104 > 1), v105 + 1, 1, v74);
      }

      *(v74 + 2) = v105 + 1;
      *&v74[8 * v105 + 32] = v97;
      v106 = v74 + 32;
      if (v11 != 6)
      {
        [v213 textureType];
      }

      if (v216 != ++v91)
      {
        continue;
      }

      v202 = a2;
      if (v211 == 2)
      {
        v188 = v74 + 32;
        type metadata accessor for SyncTextureLoader.SyncLoadingContext();
        v107 = swift_allocObject();
        v108 = v205;
        *(v107 + 16) = v205;
        *(v107 + 24) = v30;
        sub_100031E2C(v108, v30);
        sub_100031E2C(v108, v30);
        v109 = v214;
        swift_unknownObjectRetain();

        v208 = v107;
        v110 = sub_1000CEEFC(v108, v30, v109, v108, v30, v107);
        sub_1000190E4(v108, v30);
        swift_unknownObjectRelease();
        a2 = v203;
        if (v110)
        {
          v111 = sub_1000E98E4();
          p_name = &stru_10012CFF8.name;
          [v110 setLabel:v111];

          v112 = [v215 blitCommandEncoder];
          if (v112)
          {
            v113 = v112;
            v114 = sub_1000E98E4();
            [v113 setLabel:v114];

            v106 = v188;
            v115 = v110;
            v72 = v113;
            v128 = v115;
            goto LABEL_139;
          }

          sub_1000D16D4();
          swift_allocError();
          *v184 = 0xD000000000000038;
          *(v184 + 8) = 0x80000001000F9D10;
          *(v184 + 16) = 3;
          swift_willThrow();

          swift_unknownObjectRelease();
        }

        else
        {
LABEL_269:

          p_name = 0x80000001000F9CC0;
          sub_1000D16D4();
          swift_allocError();
          *v183 = 0xD00000000000001FLL;
          *(v183 + 8) = 0x80000001000F9CC0;
          *(v183 + 16) = 3;
          swift_willThrow();
        }

        swift_unknownObjectRelease();
        sub_1000190E4(v205, v30);

        return p_name;
      }

      v72 = 0;
      v128 = 0;
      a2 = v203;
LABEL_139:
      v129 = 0;
      v199 = v206 + 64;
      v190 = 6 * v207;
      if (v11 == 6)
      {
        v130 = 6 * v207;
      }

      else
      {
        v130 = v207;
      }

      v200 = v130;
      v189 = v205;
      v186 = v205 >> 32;
      if (v128)
      {
        v131 = v72 == 0;
      }

      else
      {
        v131 = 1;
      }

      v132 = v131;
      v191 = v132;
      v133 = v216;
      while (1)
      {
        if (v129 == v133)
        {
          goto LABEL_309;
        }

        v134 = v212 >> v129;
        if ((v212 >> v129) <= 1)
        {
          v134 = 1;
        }

        v135 = v209 >> v129;
        if ((v209 >> v129) <= 1)
        {
          v135 = 1;
        }

        v136 = a2 >> v129;
        if ((a2 >> v129) <= 1)
        {
          v136 = 1;
        }

        v215 = v129;
        v137 = v129 > 0x3F ? 1 : v134;
        v138 = v129 > 0x3F ? 1 : v135;
        v208 = v138;
        v139 = v129 > 0x3F ? 1 : v136;
        v204 = v139;
        MTLPixelFormatGetInfoForDevice();
        if ((v220 & 0x400) != 0)
        {
          v141 = v137 + v223;
          if (__OFADD__(v137, v223))
          {
            goto LABEL_315;
          }

          v37 = __OFSUB__(v141, 1);
          v142 = v141 - 1;
          if (v37)
          {
            goto LABEL_317;
          }

          if (!v223)
          {
            goto LABEL_319;
          }

          if (v142 == 0x8000000000000000 && v223 == -1)
          {
            goto LABEL_324;
          }

          v198 = v142 / v223 * v222;
          if ((v142 / v223 * v222) >> 64 != v198 >> 63)
          {
            goto LABEL_320;
          }
        }

        else
        {
          v140 = v137 * v222;
          if ((v137 * v222) >> 64 != (v137 * v222) >> 63)
          {
            goto LABEL_316;
          }

          if (__OFADD__(v140, 3))
          {
            goto LABEL_318;
          }

          v198 = (v140 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        }

        sub_100098A34(v137, v208, &v219);
        v197 = v219;
        v196 = v220;
        v195 = v221;
        v194 = v222;
        v143 = v190;
        v193 = v223;
        v192 = v224;
        if (v11 != 6)
        {
          v144 = [v213 textureType];
          v143 = v207;
          if (v144 == 7)
          {
            break;
          }
        }

        v204 = v143;
        if (v143)
        {
          break;
        }

        v146 = v215;
LABEL_263:
        v129 = v146 + 1;
        v133 = v216;
        if (v129 == v216)
        {
          if (v72)
          {
            [v72 endEncoding];
            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
          sub_1000190E4(v205, v30);

          return v201;
        }
      }

      v73 = 0;
LABEL_181:
      v208 = v73;
      if (v11 == 6)
      {
        v147 = v73;
        v73 /= 6uLL;
        v206 = (v147 - 6 * v73);
      }

      else
      {
        v206 = 0;
      }

      if ([v213 textureType] == 7)
      {
        v148 = v215;
        v149 = v200;
        if (v215 >= *(v74 + 2))
        {
          goto LABEL_302;
        }

        v150 = *&v106[8 * v215];
        v151 = v205;
      }

      else
      {
        v150 = 0;
        v151 = v205;
        v148 = v215;
        v149 = v200;
      }

      if (v211 == 2)
      {
        if (v191)
        {
          goto LABEL_332;
        }

        if (v148)
        {
          v152 = 0;
          v153 = v199;
          while (1)
          {
            v37 = __OFADD__(v153, 4);
            v154 = v153 + 4;
            if (v37)
            {
              goto LABEL_276;
            }

            if (v152 == *(v74 + 2))
            {
              goto LABEL_279;
            }

            if (v149)
            {
              v155 = *&v106[8 * v152];
              v156 = v149;
              while (1)
              {
                v37 = __OFADD__(v154, v155);
                v154 += v155;
                if (v37)
                {
                  break;
                }

                if (v11 == 6)
                {
                  v37 = __OFADD__(v154, 3);
                  v157 = v154 + 3;
                  if (v37)
                  {
                    goto LABEL_272;
                  }

                  v154 = v157 & 0xFFFFFFFFFFFFFFFCLL;
                }

                if (!--v156)
                {
                  goto LABEL_201;
                }
              }

              __break(1u);
              goto LABEL_268;
            }

LABEL_201:
            v37 = __OFADD__(v154, 3);
            v158 = v154 + 3;
            if (v37)
            {
              goto LABEL_281;
            }

            ++v152;
            v153 = v158 & 0xFFFFFFFFFFFFFFFCLL;
            if (v152 == v148)
            {
              goto LABEL_241;
            }
          }
        }

        v153 = v199;
LABEL_241:
        v175 = v153 + 4;
        if (__OFADD__(v153, 4))
        {
          goto LABEL_303;
        }

        if (v148 >= *(v74 + 2))
        {
          goto LABEL_305;
        }

        v176 = *&v106[8 * v148];
        if (v11 == 6)
        {
          v177 = 6 * v73;
          if ((v73 * 6) >> 64 != (6 * v73) >> 63)
          {
            goto LABEL_312;
          }

          v73 = v206 + v177;
          if (__OFADD__(v177, v206))
          {
            goto LABEL_314;
          }

          if (v73 < 0)
          {
            goto LABEL_308;
          }
        }

        if (v73)
        {
          while (1)
          {
            v37 = __OFADD__(v175, v176);
            v175 += v176;
            if (v37)
            {
              break;
            }

            if (v11 == 6)
            {
              if (__OFADD__(v175, 3))
              {
                goto LABEL_296;
              }

              v175 = (v175 + 3) & 0xFFFFFFFFFFFFFFFCLL;
            }

            if (!--v73)
            {
              goto LABEL_179;
            }
          }

          __break(1u);
          goto LABEL_275;
        }

LABEL_179:
        v219 = v194;
        v220 = v193;
        v221 = v192;
        *&v217 = v197;
        *(&v217 + 1) = v196;
        v218 = v195;
        v145 = v208;
        [v72 copyFromBuffer:v128 sourceOffset:v208 sourceBytesPerRow:v148 sourceBytesPerImage:&v217 sourceSize:? toTexture:? destinationSlice:? destinationLevel:? destinationOrigin:?];
        goto LABEL_180;
      }

      if (v148)
      {
        v159 = 0;
        v160 = v199;
        while (1)
        {
          v37 = __OFADD__(v160, 4);
          v161 = v160 + 4;
          if (v37)
          {
            goto LABEL_277;
          }

          if (v159 == *(v74 + 2))
          {
            goto LABEL_278;
          }

          if (v149)
          {
            break;
          }

LABEL_216:
          v37 = __OFADD__(v161, 3);
          v165 = v161 + 3;
          if (v37)
          {
            goto LABEL_280;
          }

          ++v159;
          v160 = v165 & 0xFFFFFFFFFFFFFFFCLL;
          if (v159 == v148)
          {
            goto LABEL_220;
          }
        }

        v162 = *&v106[8 * v159];
        v163 = v149;
        while (2)
        {
          v37 = __OFADD__(v161, v162);
          v161 += v162;
          if (v37)
          {
LABEL_268:
            __break(1u);
            goto LABEL_269;
          }

          if (v11 != 6)
          {
LABEL_210:
            if (!--v163)
            {
              goto LABEL_216;
            }

            continue;
          }

          break;
        }

        v37 = __OFADD__(v161, 3);
        v164 = v161 + 3;
        if (!v37)
        {
          v161 = v164 & 0xFFFFFFFFFFFFFFFCLL;
          goto LABEL_210;
        }

        __break(1u);
LABEL_272:
        __break(1u);
LABEL_273:
        LODWORD(v12) = 1;
        LODWORD(a2) = 1;
        p_name = 1;
LABEL_62:
        v78 = v208;
        goto LABEL_76;
      }

      v160 = v199;
LABEL_220:
      a2 = v160 + 4;
      if (__OFADD__(v160, 4))
      {
        goto LABEL_304;
      }

      v166 = v210;
      if (v148 >= *(v74 + 2))
      {
        goto LABEL_306;
      }

      v167 = *&v106[8 * v148];
      if (v11 == 6)
      {
        v168 = 6 * v73;
        if ((v73 * 6) >> 64 != (6 * v73) >> 63)
        {
          __break(1u);
LABEL_312:
          __break(1u);
LABEL_313:
          __break(1u);
LABEL_314:
          __break(1u);
LABEL_315:
          __break(1u);
LABEL_316:
          __break(1u);
LABEL_317:
          __break(1u);
LABEL_318:
          __break(1u);
LABEL_319:
          __break(1u);
LABEL_320:
          __break(1u);
LABEL_321:
          __break(1u);
LABEL_322:
          __break(1u);
LABEL_323:
          __break(1u);
LABEL_324:
          __break(1u);
        }

        v73 = v206 + v168;
        v166 = v210;
        if (__OFADD__(v168, v206))
        {
          goto LABEL_313;
        }

        if (v73 < 0)
        {
          goto LABEL_307;
        }
      }

      if (v73)
      {
        while (1)
        {
          v37 = __OFADD__(a2, v167);
          a2 += v167;
          if (v37)
          {
            break;
          }

          if (v11 == 6)
          {
            if (__OFADD__(a2, 3))
            {
              goto LABEL_295;
            }

            a2 = (a2 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          }

          if (!--v73)
          {
            goto LABEL_227;
          }
        }

LABEL_275:
        __break(1u);
LABEL_276:
        __break(1u);
LABEL_277:
        __break(1u);
LABEL_278:
        __break(1u);
LABEL_279:
        __break(1u);
LABEL_280:
        __break(1u);
LABEL_281:
        __break(1u);
LABEL_282:
        __break(1u);
LABEL_283:
        __break(1u);
        break;
      }

LABEL_227:
      if (v166 > 1)
      {
        if (v166 == 2)
        {
          v206 = v72;
          v169 = v150;
          v187 = v128;
          v188 = v106;
          v170 = *(v151 + 16);
          v171 = sub_1000E9214();
          if (!v171)
          {
            goto LABEL_330;
          }

          v172 = v171;
          v173 = sub_1000E9244();
          if (__OFSUB__(v170, v173))
          {
            goto LABEL_322;
          }

          v174 = v170 - v173 + v172;
          sub_1000E9234();
          if (!v174)
          {
            goto LABEL_331;
          }

          v219 = v197;
          v220 = v196;
          v221 = v195;
          v222 = v194;
          v223 = v193;
          v224 = v192;
          v145 = v208;
          [v201 replaceRegion:&v219 mipmapLevel:v215 slice:v208 withBytes:v174 + a2 bytesPerRow:v198 bytesPerImage:v169];
          a2 = v203;
          v106 = v188;
          goto LABEL_259;
        }

        *(&v217 + 6) = 0;
        *&v217 = 0;
        v219 = v197;
        v220 = v196;
        v221 = v195;
        v222 = v194;
        v223 = v193;
        v224 = v192;
        v145 = v208;
        [v201 replaceRegion:&v219 mipmapLevel:v148 slice:v208 withBytes:&v217 + a2 bytesPerRow:v198 bytesPerImage:v150];
LABEL_261:
        a2 = v203;
      }

      else
      {
        v145 = v208;
        if (!v166)
        {
          *&v217 = v151;
          WORD4(v217) = v30;
          BYTE10(v217) = BYTE2(v30);
          BYTE11(v217) = BYTE3(v30);
          BYTE12(v217) = BYTE4(v30);
          BYTE13(v217) = BYTE5(v30);
          v219 = v197;
          v220 = v196;
          v221 = v195;
          v222 = v194;
          v223 = v193;
          v224 = v192;
          [v201 replaceRegion:&v219 mipmapLevel:v148 slice:v208 withBytes:&v217 + a2 bytesPerRow:v198 bytesPerImage:v150];
          goto LABEL_261;
        }

        v188 = v150;
        v206 = v72;
        if (v186 < v189)
        {
          goto LABEL_321;
        }

        v187 = v128;
        v178 = sub_1000E9214();
        if (!v178)
        {
          goto LABEL_328;
        }

        v179 = v178;
        v180 = v106;
        v181 = sub_1000E9244();
        if (__OFSUB__(v189, v181))
        {
          goto LABEL_323;
        }

        v182 = v189 - v181 + v179;
        sub_1000E9234();
        if (!v182)
        {
          goto LABEL_329;
        }

        v219 = v197;
        v220 = v196;
        v221 = v195;
        v222 = v194;
        v223 = v193;
        v224 = v192;
        v145 = v208;
        [v201 replaceRegion:&v219 mipmapLevel:v215 slice:v208 withBytes:v182 + a2 bytesPerRow:v198 bytesPerImage:v188];
        a2 = v203;
        v106 = v180;
LABEL_259:
        v128 = v187;
        v72 = v206;
      }

LABEL_180:
      v73 = v145 + 1;
      v146 = v215;
      if (v73 == v204)
      {
        goto LABEL_263;
      }

      goto LABEL_181;
    }

    break;
  }

  __break(1u);
LABEL_285:
  __break(1u);
LABEL_286:
  __break(1u);
LABEL_287:
  __break(1u);
LABEL_288:
  __break(1u);
LABEL_289:
  __break(1u);
LABEL_290:
  __break(1u);
LABEL_291:
  __break(1u);
LABEL_292:
  __break(1u);
LABEL_293:
  __break(1u);
LABEL_294:
  __break(1u);
LABEL_295:
  __break(1u);
LABEL_296:
  __break(1u);
LABEL_297:
  __break(1u);
LABEL_298:
  __break(1u);
LABEL_299:
  __break(1u);
LABEL_300:
  __break(1u);
LABEL_301:
  __break(1u);
LABEL_302:
  __break(1u);
LABEL_303:
  __break(1u);
LABEL_304:
  __break(1u);
LABEL_305:
  __break(1u);
LABEL_306:
  __break(1u);
LABEL_307:
  __break(1u);
LABEL_308:
  __break(1u);
LABEL_309:
  __break(1u);
LABEL_310:
  swift_once();
LABEL_136:
  v116 = sub_1000E96A4();
  sub_100007488(v116, qword_100133AE0);
  v117 = sub_1000E9684();
  v118 = sub_1000E9BA4();
  v119 = os_log_type_enabled(v117, v118);
  v120 = v213;
  if (v119)
  {
    v121 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    v219 = v122;
    *v121 = 136315138;
    *&v217 = a2;
    type metadata accessor for MTLPixelFormat(0);
    v123 = sub_1000E9944();
    v125 = sub_100093A3C(v123, v124, &v219);

    *(v121 + 4) = v125;
    _os_log_impl(&_mh_execute_header, v117, v118, "Failed to create MTLTexture with pixel format %s", v121, 0xCu);
    sub_100012710(v122);
  }

  v219 = 0;
  v220 = 0xE000000000000000;
  sub_1000E9D64(43);
  v226._object = 0x80000001000F9C10;
  v226._countAndFlagsBits = 0xD000000000000028;
  sub_1000E99A4(v226);
  *&v217 = a2;
  type metadata accessor for MTLPixelFormat(0);
  sub_1000E9DF4();
  v227._countAndFlagsBits = 46;
  v227._object = 0xE100000000000000;
  sub_1000E99A4(v227);
  v126 = v219;
  p_name = v220;
  sub_1000D16D4();
  swift_allocError();
  *v127 = v126;
  *(v127 + 8) = p_name;
  *(v127 + 16) = 3;
  swift_willThrow();

LABEL_77:
  v43 = v205;
LABEL_18:
  sub_1000190E4(v43, v30);
  return p_name;
}

void sub_1000D101C(void *a1, void *a2)
{
  sub_1000E9334();

  p_name = &stru_10012CFF8.name;
  v6 = [a1 pixelFormat];
  if (v6 == [a2 pixelFormat] && (v7 = objc_msgSend(a1, "width"), v7 == objc_msgSend(a2, "width")) && (v8 = objc_msgSend(a1, "height"), v8 == objc_msgSend(a2, "height")))
  {
    [a1 pixelFormat];
    MTLPixelFormatGetInfo();
    if ((v63 & 0x400) == 0)
    {
      v9 = v65;
      v10 = [a1 width];
      v11 = [a1 height];
      v12 = v10 * v11;
      if ((v10 * v11) >> 64 == (v10 * v11) >> 63)
      {
        if (v12 >= 16)
        {
          v2 = 16;
        }

        else
        {
          v2 = v10 * v11;
        }

        if ((v2 * v65) >> 64 == (v2 * v65) >> 63)
        {
          v59 = v2 * v65;
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v13 = [a1 width];
          p_name = 16;
          if (v13 >= 16)
          {
            v14 = 16;
          }

          else
          {
            v14 = v13;
          }

          v15 = [a1 width];
          if (v15 >= 16)
          {
            v16 = 16;
          }

          else
          {
            v16 = v15;
          }

          if (v15)
          {
            if (v12 == 0x8000000000000000 && v15 == -1)
            {
              goto LABEL_64;
            }

            v17 = v2 / v16;
            if (v17 <= 1)
            {
              v18 = 1;
            }

            else
            {
              v18 = v17;
            }

            sub_100098A34(v14, v18, &v62);
            v19 = v62;
            v2 = v63;
            p_name = v64;
            v20 = v65;
            v57 = v67;
            v58 = v66;
            v21 = [a1 width];
            v22 = 16;
            if (v21 < 16)
            {
              v22 = v21;
            }

            v23 = v22 * v9;
            if ((v22 * v9) >> 64 == (v22 * v9) >> 63)
            {
              v62 = v19;
              v63 = v2;
              v64 = p_name;
              v65 = v20;
              v9 = p_name;
              v66 = v58;
              v67 = v57;
              [a1 getBytes:v60 bytesPerRow:v23 fromRegion:&v62 mipmapLevel:0];
              v62 = v19;
              v63 = v2;
              v64 = p_name;
              v65 = v20;
              v66 = v58;
              v67 = v57;
              [a2 getBytes:v61 bytesPerRow:v23 fromRegion:&v62 mipmapLevel:0];
              p_name = v59;
              if ((v59 & 0x8000000000000000) == 0)
              {
                a2 = v60;
                if (!v59)
                {
LABEL_57:

                  return;
                }

                v24 = 0;
                v9 = 0;
                v25 = v60;
                v26 = v61;
                v27 = v59;
                do
                {
                  v29 = *v25++;
                  v28 = v29;
                  v31 = *v26++;
                  v30 = v31;
                  if (v28 != v31)
                  {
                    v32 = __OFADD__(v9++, 1);
                    if (v32)
                    {
                      __break(1u);
                      goto LABEL_59;
                    }

                    v33 = v28 - v30;
                    if (v33 < 0)
                    {
                      v33 = -v33;
                    }

                    v32 = __OFADD__(v24, v33);
                    v24 += v33;
                    if (v32)
                    {
                      __break(1u);
                      goto LABEL_36;
                    }
                  }

                  --v27;
                }

                while (v27);
                if (!v9)
                {
                  goto LABEL_57;
                }

                v38 = v24 / v9;
                sub_1000125FC(&unk_100131D80);
                v39 = swift_allocObject();
                *(v39 + 16) = xmmword_1000EC870;
                *(v39 + 56) = &type metadata for Float;
                *(v39 + 64) = &protocol witness table for Float;
                *(v39 + 32) = v38;
                v2 = sub_1000E9924();
                a2 = v40;
                if (qword_10012F700 == -1)
                {
LABEL_44:
                  v41 = sub_1000E96A4();
                  sub_100007488(v41, qword_100133AE0);

                  v42 = sub_1000E9684();
                  v43 = sub_1000E9BA4();

                  if (os_log_type_enabled(v42, v43))
                  {
                    v44 = swift_slowAlloc();
                    v45 = swift_slowAlloc();
                    v62 = v45;
                    *v44 = 134218498;
                    *(v44 + 4) = v9;
                    *(v44 + 12) = 2048;
                    *(v44 + 14) = p_name;
                    *(v44 + 22) = 2080;
                    v46 = sub_100093A3C(v2, a2, &v62);
                    v47 = v43;
                    v48 = v46;

                    *(v44 + 24) = v48;
                    _os_log_impl(&_mh_execute_header, v42, v47, "  ❌ %ld/%ld bytes differ (avg diff: %s)", v44, 0x20u);
                    sub_100012710(v45);
                  }

                  else
                  {
                  }

                  v49 = 0;
                  v50 = 0;
                  if (v9 >= 8)
                  {
                    v51 = 8;
                  }

                  else
                  {
                    v51 = v9;
                  }

                  v52 = v60;
                  do
                  {
                    if (v49 < v51 && *(v52 + v50) != *(v61 + v50))
                    {
                      v53 = sub_1000E9684();
                      v54 = sub_1000E9BA4();
                      if (os_log_type_enabled(v53, v54))
                      {
                        v55 = swift_slowAlloc();
                        *v55 = 134218496;
                        *(v55 + 4) = v50;
                        v56 = *(v60 + v50);
                        *(v55 + 12) = 256;
                        *(v55 + 14) = v56;
                        *(v55 + 15) = 256;
                        *(v55 + 17) = *(v61 + v50);
                        _os_log_impl(&_mh_execute_header, v53, v54, "    Byte %ld: MTK=%hhu, Sync=%hhu", v55, 0x12u);
                        v52 = v60;
                      }

                      ++v49;
                    }

                    ++v50;
                  }

                  while (p_name != v50);
                  goto LABEL_57;
                }

LABEL_65:
                swift_once();
                goto LABEL_44;
              }

              goto LABEL_63;
            }

LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
            goto LABEL_65;
          }

LABEL_61:
          __break(1u);
          goto LABEL_62;
        }
      }

      else
      {
LABEL_59:
        __break(1u);
      }

      __break(1u);
      goto LABEL_61;
    }
  }

  else
  {
LABEL_36:
    if (qword_10012F700 != -1)
    {
      swift_once();
    }

    v34 = sub_1000E96A4();
    sub_100007488(v34, qword_100133AE0);
    v35 = sub_1000E9684();
    v36 = sub_1000E9BA4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "⚠️ Cannot compare pixel data - textures have different properties", v37, 2u);
    }
  }
}

unint64_t sub_1000D16D4()
{
  result = qword_100133B98;
  if (!qword_100133B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133B98);
  }

  return result;
}

uint64_t sub_1000D1730(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000D1748()
{
  result = qword_100133BA0;
  if (!qword_100133BA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100133BA0);
  }

  return result;
}

uint64_t sub_1000D17B0()
{
  sub_1000AB384(&off_10011A440);
  v354 = v0;
  type metadata accessor for ToriLight();
  v1 = swift_allocObject();
  *(v1 + 48) = 0;
  *(v1 + 52) = 0;
  *(v1 + 56) = 257;
  *(v1 + 64) = _swiftEmptyArrayStorage;
  *(v1 + 16) = 2;
  *(v1 + 32) = v354;
  swift_beginAccess();
  *(v1 + 48) = 1;
  swift_beginAccess();
  *(v1 + 52) = 1065353216;
  swift_beginAccess();
  *(v1 + 56) = 0;
  swift_beginAccess();
  *(v1 + 57) = 1;
  sub_1000AB384(&off_10011A470);
  v355 = v2;
  v3 = swift_allocObject();
  *(v3 + 48) = 0;
  *(v3 + 52) = 0;
  *(v3 + 56) = 257;
  *(v3 + 64) = _swiftEmptyArrayStorage;
  v289 = (v3 + 64);
  *(v3 + 16) = 2;
  *(v3 + 32) = v355;
  swift_beginAccess();
  *(v3 + 48) = 1;
  swift_beginAccess();
  *(v3 + 52) = 1065353216;
  swift_beginAccess();
  *(v3 + 56) = 1;
  swift_beginAccess();
  v298 = v3;
  *(v3 + 57) = 0;
  sub_1000AB384(&off_10011A4A0);
  v356 = v4;
  v5 = swift_allocObject();
  *(v5 + 48) = 0;
  *(v5 + 52) = 0;
  *(v5 + 56) = 257;
  *(v5 + 64) = _swiftEmptyArrayStorage;
  v295 = (v5 + 64);
  *(v5 + 16) = 2;
  *(v5 + 32) = v356;
  swift_beginAccess();
  *(v5 + 48) = 1;
  swift_beginAccess();
  *(v5 + 52) = 1065353216;
  swift_beginAccess();
  *(v5 + 56) = 1;
  swift_beginAccess();
  *(v5 + 57) = 1;
  sub_1000AB384(&off_10011A4D0);
  v357 = v6;
  v7 = swift_allocObject();
  *(v7 + 48) = 0;
  *(v7 + 52) = 0;
  *(v7 + 56) = 257;
  *(v7 + 64) = _swiftEmptyArrayStorage;
  v288 = (v7 + 64);
  *(v7 + 16) = 2;
  *(v7 + 32) = v357;
  swift_beginAccess();
  *(v7 + 48) = 0;
  swift_beginAccess();
  *(v7 + 52) = 1065353216;
  swift_beginAccess();
  *(v7 + 56) = 1;
  swift_beginAccess();
  *(v7 + 57) = 1;
  sub_1000AB384(&off_10011A500);
  v358 = v8;
  v9 = swift_allocObject();
  *(v9 + 48) = 0;
  *(v9 + 52) = 0;
  *(v9 + 56) = 257;
  *(v9 + 64) = _swiftEmptyArrayStorage;
  v290 = (v9 + 64);
  *(v9 + 16) = 2;
  *(v9 + 32) = v358;
  swift_beginAccess();
  *(v9 + 48) = 1;
  swift_beginAccess();
  *(v9 + 52) = 1065353216;
  swift_beginAccess();
  *(v9 + 56) = 1;
  swift_beginAccess();
  v297 = v9;
  *(v9 + 57) = 1;
  sub_1000AB384(&off_10011A530);
  v359 = v10;
  v11 = swift_allocObject();
  *(v11 + 48) = 0;
  *(v11 + 52) = 0;
  *(v11 + 56) = 257;
  *(v11 + 64) = _swiftEmptyArrayStorage;
  v291 = (v11 + 64);
  *(v11 + 16) = 2;
  *(v11 + 32) = v359;
  swift_beginAccess();
  *(v11 + 48) = 1;
  swift_beginAccess();
  *(v11 + 52) = 1065353216;
  swift_beginAccess();
  *(v11 + 56) = 1;
  swift_beginAccess();
  *(v11 + 57) = 1;
  sub_1000AB384(&off_10011A560);
  v360 = v12;
  v13 = swift_allocObject();
  *(v13 + 48) = 0;
  *(v13 + 52) = 0;
  *(v13 + 56) = 257;
  *(v13 + 64) = _swiftEmptyArrayStorage;
  v343 = (v13 + 64);
  *(v13 + 16) = 2;
  *(v13 + 32) = v360;
  swift_beginAccess();
  *(v13 + 48) = 1;
  swift_beginAccess();
  *(v13 + 52) = 1065353216;
  swift_beginAccess();
  *(v13 + 56) = 1;
  swift_beginAccess();
  v296 = v13;
  *(v13 + 57) = 1;
  sub_1000AB384(&off_10011A590);
  v361 = v14;
  v15 = swift_allocObject();
  *(v15 + 48) = 0;
  *(v15 + 52) = 0;
  *(v15 + 56) = 257;
  *(v15 + 64) = _swiftEmptyArrayStorage;
  v347 = (v15 + 64);
  *(v15 + 16) = 2;
  *(v15 + 32) = v361;
  swift_beginAccess();
  *(v15 + 48) = 1;
  swift_beginAccess();
  *(v15 + 52) = 1065353216;
  swift_beginAccess();
  *(v15 + 56) = 0;
  swift_beginAccess();
  v294 = v15;
  *(v15 + 57) = 1;
  sub_1000AB384(&off_10011A5C0);
  v362 = v16;
  v17 = swift_allocObject();
  *(v17 + 48) = 0;
  *(v17 + 52) = 0;
  *(v17 + 56) = 257;
  *(v17 + 64) = _swiftEmptyArrayStorage;
  v351 = (v17 + 64);
  *(v17 + 16) = 2;
  *(v17 + 32) = v362;
  swift_beginAccess();
  *(v17 + 48) = 1;
  swift_beginAccess();
  *(v17 + 52) = 1065353216;
  swift_beginAccess();
  *(v17 + 56) = 1;
  swift_beginAccess();
  *(v17 + 57) = 1;
  sub_1000AB384(&off_10011A5F0);
  v334 = v18;
  v19 = swift_allocObject();
  *(v19 + 48) = 0;
  *(v19 + 52) = 0;
  *(v19 + 56) = 257;
  *(v19 + 64) = _swiftEmptyArrayStorage;
  v363 = (v19 + 64);
  *(v19 + 16) = 2;
  *(v19 + 32) = v334;
  swift_beginAccess();
  *(v19 + 48) = 1;
  swift_beginAccess();
  *(v19 + 52) = 1065353216;
  swift_beginAccess();
  *(v19 + 56) = 1;
  swift_beginAccess();
  v293 = v19;
  *(v19 + 57) = 1;
  sub_1000AB384(&off_10011A620);
  v335 = v20;
  v292 = swift_allocObject();
  *(v292 + 48) = 0;
  *(v292 + 52) = 0;
  *(v292 + 56) = 257;
  *(v292 + 64) = _swiftEmptyArrayStorage;
  v21 = (v292 + 64);
  *(v292 + 16) = 2;
  *(v292 + 32) = v335;
  swift_beginAccess();
  *(v292 + 48) = 1;
  swift_beginAccess();
  *(v292 + 52) = 1065353216;
  swift_beginAccess();
  *(v292 + 56) = 1;
  swift_beginAccess();
  *(v292 + 57) = 1;
  sub_1000AB384(&off_10011A650);
  v336 = v22;
  sub_1000AB384(&off_10011A680);
  v328 = v23;
  swift_beginAccess();
  v24 = *(v1 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = (v1 + 64);
  *(v1 + 64) = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = sub_1000A35A4(0, *(v24 + 2) + 1, 1, v24);
    *(v1 + 64) = v24;
  }

  v28 = *(v24 + 2);
  v27 = *(v24 + 3);
  if (v28 >= v27 >> 1)
  {
    v24 = sub_1000A35A4((v27 > 1), v28 + 1, 1, v24);
  }

  *(v24 + 2) = v28 + 1;
  v29 = &v24[80 * v28];
  *(v29 + 4) = 0x4041E9BF00000000;
  *(v29 + 3) = v336;
  *(v29 + 16) = 1082501756;
  *(v29 + 5) = v328;
  *(v29 + 12) = 0x401E147B00000000;
  *v26 = v24;
  swift_endAccess();
  sub_1000AB384(&off_10011A6B0);
  v329 = v30;
  sub_1000AB384(&off_10011A6E0);
  v326 = v31;
  swift_beginAccess();
  v32 = *v289;
  v33 = swift_isUniquelyReferenced_nonNull_native();
  *v289 = v32;
  if ((v33 & 1) == 0)
  {
    v32 = sub_1000A35A4(0, *(v32 + 2) + 1, 1, v32);
    *v289 = v32;
  }

  v35 = *(v32 + 2);
  v34 = *(v32 + 3);
  if (v35 >= v34 >> 1)
  {
    v32 = sub_1000A35A4((v34 > 1), v35 + 1, 1, v32);
  }

  *(v32 + 2) = v35 + 1;
  v36 = &v32[80 * v35];
  *(v36 + 4) = 0x40490FDA00000000;
  *(v36 + 3) = v329;
  *(v36 + 16) = 1078649407;
  *(v36 + 5) = v326;
  *(v36 + 12) = 0x3F3AE14800000000;
  *v289 = v32;
  swift_endAccess();
  sub_1000AB384(&off_10011A710);
  v327 = v37;
  sub_1000AB384(&off_10011A740);
  v300 = v38;
  swift_beginAccess();
  v39 = *v288;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  *v288 = v39;
  if ((v40 & 1) == 0)
  {
    v39 = sub_1000A35A4(0, *(v39 + 2) + 1, 1, v39);
    *v288 = v39;
  }

  v42 = *(v39 + 2);
  v41 = *(v39 + 3);
  if (v42 >= v41 >> 1)
  {
    v39 = sub_1000A35A4((v41 > 1), v42 + 1, 1, v39);
  }

  *(v39 + 2) = v42 + 1;
  v43 = &v39[80 * v42];
  *(v43 + 4) = 0x3C8EFA3500000000;
  *(v43 + 3) = v327;
  *(v43 + 16) = 1078234704;
  *(v43 + 5) = v300;
  *(v43 + 12) = 0x41DCE14800000000;
  *v288 = v39;
  swift_endAccess();
  sub_1000AB384(&off_10011A770);
  v301 = v44;
  sub_1000AB384(&off_10011A7A0);
  v268 = v45;
  swift_beginAccess();
  v46 = *v290;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  *v290 = v46;
  if ((v47 & 1) == 0)
  {
    v46 = sub_1000A35A4(0, *(v46 + 2) + 1, 1, v46);
    *v290 = v46;
  }

  v49 = *(v46 + 2);
  v48 = *(v46 + 3);
  if (v49 >= v48 >> 1)
  {
    v46 = sub_1000A35A4((v48 > 1), v49 + 1, 1, v46);
  }

  *(v46 + 2) = v49 + 1;
  v50 = &v46[80 * v49];
  *(v50 + 4) = 0x40197A2E00000000;
  *(v50 + 3) = v301;
  *(v50 + 16) = 1078027389;
  *(v50 + 5) = v268;
  *(v50 + 12) = 0x3F4A3D713EBB645ALL;
  *v290 = v46;
  swift_endAccess();
  sub_1000AB384(&off_10011A7D0);
  v302 = v51;
  sub_1000AB384(&off_10011A800);
  v269 = v52;
  swift_beginAccess();
  v53 = *v291;
  v54 = swift_isUniquelyReferenced_nonNull_native();
  *v291 = v53;
  if ((v54 & 1) == 0)
  {
    v53 = sub_1000A35A4(0, *(v53 + 2) + 1, 1, v53);
    *v291 = v53;
  }

  v56 = *(v53 + 2);
  v55 = *(v53 + 3);
  if (v56 >= v55 >> 1)
  {
    v53 = sub_1000A35A4((v55 > 1), v56 + 1, 1, v53);
  }

  *(v53 + 2) = v56 + 1;
  v57 = &v53[80 * v56];
  *(v57 + 4) = 0x40197A2E00000000;
  *(v57 + 3) = v302;
  *(v57 + 16) = 1075112755;
  *(v57 + 5) = v269;
  *(v57 + 12) = 0x3F4A3D713EBB645ALL;
  *v291 = v53;
  swift_endAccess();
  sub_1000AB384(&off_10011A830);
  v303 = v58;
  sub_1000AB384(&off_10011A860);
  v270 = v59;
  swift_beginAccess();
  v60 = *v343;
  v61 = swift_isUniquelyReferenced_nonNull_native();
  *v343 = v60;
  if ((v61 & 1) == 0)
  {
    v60 = sub_1000A35A4(0, *(v60 + 2) + 1, 1, v60);
    *v343 = v60;
  }

  v63 = *(v60 + 2);
  v62 = *(v60 + 3);
  if (v63 >= v62 >> 1)
  {
    v60 = sub_1000A35A4((v62 > 1), v63 + 1, 1, v60);
  }

  *(v60 + 2) = v63 + 1;
  v64 = &v60[80 * v63];
  *(v64 + 4) = 0x4004EC9D00000000;
  *(v64 + 3) = v303;
  *(v64 + 16) = 1084793530;
  *(v64 + 5) = v270;
  *(v64 + 12) = 0x3FECCCCD3EC28F5CLL;
  *v343 = v60;
  swift_endAccess();
  sub_1000AB384(&off_10011A890);
  v304 = v65;
  sub_1000AB384(&off_10011A8C0);
  v271 = v66;
  swift_beginAccess();
  v67 = *v347;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  *v347 = v67;
  if ((v68 & 1) == 0)
  {
    v67 = sub_1000A35A4(0, *(v67 + 2) + 1, 1, v67);
    *v347 = v67;
  }

  v70 = *(v67 + 2);
  v69 = *(v67 + 3);
  if (v70 >= v69 >> 1)
  {
    v67 = sub_1000A35A4((v69 > 1), v70 + 1, 1, v67);
  }

  *(v67 + 2) = v70 + 1;
  v71 = &v67[80 * v70];
  *(v71 + 4) = 0x4021BE3F00000000;
  *(v71 + 3) = v304;
  *(v71 + 16) = 1072563590;
  *(v71 + 5) = v271;
  *(v71 + 12) = 0x3FECCCCD3EC28F5CLL;
  *v347 = v67;
  swift_endAccess();
  sub_1000AB384(&off_10011A8F0);
  v305 = v72;
  sub_1000AB384(&off_10011A920);
  v272 = v73;
  swift_beginAccess();
  v74 = *v295;
  v75 = swift_isUniquelyReferenced_nonNull_native();
  *v295 = v74;
  if ((v75 & 1) == 0)
  {
    v74 = sub_1000A35A4(0, *(v74 + 2) + 1, 1, v74);
    *v295 = v74;
  }

  v77 = *(v74 + 2);
  v76 = *(v74 + 3);
  if (v77 >= v76 >> 1)
  {
    v74 = sub_1000A35A4((v76 > 1), v77 + 1, 1, v74);
  }

  *(v74 + 2) = v77 + 1;
  v78 = &v74[80 * v77];
  *(v78 + 4) = 0x40490FDA00000000;
  *(v78 + 3) = v305;
  *(v78 + 16) = 1071898308;
  *(v78 + 5) = v272;
  *(v78 + 12) = 0x3F63D70A3E4CCCCDLL;
  *v295 = v74;
  swift_endAccess();
  sub_1000AB384(&off_10011A950);
  v306 = v79;
  sub_1000AB384(&off_10011A980);
  v273 = v80;
  swift_beginAccess();
  v81 = *v351;
  v82 = swift_isUniquelyReferenced_nonNull_native();
  *v351 = v81;
  if ((v82 & 1) == 0)
  {
    v81 = sub_1000A35A4(0, *(v81 + 2) + 1, 1, v81);
    *v351 = v81;
  }

  v84 = *(v81 + 2);
  v83 = *(v81 + 3);
  if (v84 >= v83 >> 1)
  {
    v81 = sub_1000A35A4((v83 > 1), v84 + 1, 1, v81);
  }

  *(v81 + 2) = v84 + 1;
  v85 = &v81[80 * v84];
  *(v85 + 4) = 0x4042CE8100000000;
  *(v85 + 3) = v306;
  *(v85 + 16) = -1078339876;
  *(v85 + 5) = v273;
  *(v85 + 12) = 0x3FA7AE143F84BC6ALL;
  *v351 = v81;
  swift_endAccess();
  sub_1000AB384(&off_10011A9B0);
  v307 = v86;
  sub_1000AB384(&off_10011A9E0);
  v274 = v87;
  swift_beginAccess();
  v88 = *v363;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  *v363 = v88;
  if ((v89 & 1) == 0)
  {
    v88 = sub_1000A35A4(0, *(v88 + 2) + 1, 1, v88);
    *v363 = v88;
  }

  v91 = *(v88 + 2);
  v90 = *(v88 + 3);
  if (v91 >= v90 >> 1)
  {
    v88 = sub_1000A35A4((v90 > 1), v91 + 1, 1, v88);
  }

  *(v88 + 2) = v91 + 1;
  v92 = &v88[80 * v91];
  *(v92 + 4) = 0x4031D3FE467C204DLL;
  *(v92 + 3) = v307;
  *(v92 + 16) = 1087650662;
  *(v92 + 5) = v274;
  *(v92 + 12) = 0x3F828F5C3F800000;
  *v363 = v88;
  swift_endAccess();
  sub_1000AB384(&off_10011AA10);
  v308 = v93;
  sub_1000AB384(&off_10011AA40);
  v275 = v94;
  swift_beginAccess();
  v95 = *v21;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  *v21 = v95;
  if (v96)
  {
    v97 = (v292 + 64);
  }

  else
  {
    v262 = sub_1000A35A4(0, *(v95 + 2) + 1, 1, v95);
    v97 = (v292 + 64);
    v95 = v262;
    *v21 = v262;
  }

  v99 = *(v95 + 2);
  v98 = *(v95 + 3);
  if (v99 >= v98 >> 1)
  {
    v263 = sub_1000A35A4((v98 > 1), v99 + 1, 1, v95);
    v97 = (v292 + 64);
    v95 = v263;
  }

  *(v95 + 2) = v99 + 1;
  v100 = &v95[80 * v99];
  *(v100 + 4) = 0x3C8EFA3500000000;
  *(v100 + 3) = v308;
  *(v100 + 16) = 1077963482;
  *(v100 + 5) = v275;
  *(v100 + 12) = 0x3F65E35400000000;
  *v97 = v95;
  swift_endAccess();
  sub_1000AB384(&off_10011AA70);
  v309 = v101;
  sub_1000AB384(&off_10011AAA0);
  v276 = v102;
  swift_beginAccess();
  v103 = *v290;
  v104 = swift_isUniquelyReferenced_nonNull_native();
  *v290 = v103;
  if ((v104 & 1) == 0)
  {
    v103 = sub_1000A35A4(0, *(v103 + 2) + 1, 1, v103);
    *v290 = v103;
  }

  v106 = *(v103 + 2);
  v105 = *(v103 + 3);
  if (v106 >= v105 >> 1)
  {
    v103 = sub_1000A35A4((v105 > 1), v106 + 1, 1, v103);
  }

  *(v103 + 2) = v106 + 1;
  v107 = &v103[80 * v106];
  *(v107 + 4) = 0x40197A2E43FA0000;
  *(v107 + 3) = v309;
  *(v107 + 16) = 1073781533;
  *(v107 + 5) = v276;
  *(v107 + 12) = 0x3F4A3D713EBB645ALL;
  *v290 = v103;
  swift_endAccess();
  sub_1000AB384(&off_10011AAD0);
  v310 = v108;
  sub_1000AB384(&off_10011AB00);
  v277 = v109;
  swift_beginAccess();
  v110 = *v21;
  v111 = swift_isUniquelyReferenced_nonNull_native();
  *v21 = v110;
  if (v111)
  {
    v112 = (v292 + 64);
  }

  else
  {
    v264 = sub_1000A35A4(0, *(v110 + 2) + 1, 1, v110);
    v112 = (v292 + 64);
    v110 = v264;
    *v21 = v264;
  }

  v114 = *(v110 + 2);
  v113 = *(v110 + 3);
  if (v114 >= v113 >> 1)
  {
    v265 = sub_1000A35A4((v113 > 1), v114 + 1, 1, v110);
    v112 = (v292 + 64);
    v110 = v265;
  }

  *(v110 + 2) = v114 + 1;
  v115 = &v110[80 * v114];
  *(v115 + 4) = 0x40490FDA452F0000;
  *(v115 + 3) = v310;
  *(v115 + 16) = 1075738653;
  *(v115 + 5) = v277;
  *(v115 + 12) = 0x3F65E35400000000;
  *v112 = v110;
  swift_endAccess();
  sub_1000AB384(&off_10011AB30);
  v311 = v116;
  sub_1000AB384(&off_10011AB60);
  v278 = v117;
  swift_beginAccess();
  v118 = *v288;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  *v288 = v118;
  if ((v119 & 1) == 0)
  {
    v118 = sub_1000A35A4(0, *(v118 + 2) + 1, 1, v118);
    *v288 = v118;
  }

  v121 = *(v118 + 2);
  v120 = *(v118 + 3);
  if (v121 >= v120 >> 1)
  {
    v118 = sub_1000A35A4((v120 > 1), v121 + 1, 1, v118);
  }

  *(v118 + 2) = v121 + 1;
  v122 = &v118[80 * v121];
  *(v122 + 4) = 0x3FF86C54C422599ALL;
  *(v122 + 3) = v311;
  *(v122 + 16) = 1077207353;
  *(v122 + 5) = v278;
  *(v122 + 12) = 0x41DCE14800000000;
  *v288 = v118;
  swift_endAccess();
  sub_1000AB384(&off_10011AB90);
  v312 = v123;
  sub_1000AB384(&off_10011ABC0);
  v279 = v124;
  swift_beginAccess();
  v125 = *v26;
  v126 = swift_isUniquelyReferenced_nonNull_native();
  *v26 = v125;
  if ((v126 & 1) == 0)
  {
    v125 = sub_1000A35A4(0, *(v125 + 2) + 1, 1, v125);
    *v26 = v125;
  }

  v128 = *(v125 + 2);
  v127 = *(v125 + 3);
  if (v128 >= v127 >> 1)
  {
    v125 = sub_1000A35A4((v127 > 1), v128 + 1, 1, v125);
  }

  *(v125 + 2) = v128 + 1;
  v129 = &v125[80 * v128];
  *(v129 + 4) = 0x4041E9BF459C3C3DLL;
  *(v129 + 3) = v312;
  *(v129 + 16) = 1083673028;
  *(v129 + 5) = v279;
  *(v129 + 12) = 0x401E147B00000000;
  *v26 = v125;
  swift_endAccess();
  sub_1000AB384(&off_10011ABF0);
  v313 = v130;
  sub_1000AB384(&off_10011AC20);
  v280 = v131;
  swift_beginAccess();
  v132 = *v289;
  v133 = swift_isUniquelyReferenced_nonNull_native();
  *v289 = v132;
  if ((v133 & 1) == 0)
  {
    v132 = sub_1000A35A4(0, *(v132 + 2) + 1, 1, v132);
    *v289 = v132;
  }

  v135 = *(v132 + 2);
  v134 = *(v132 + 3);
  if (v135 >= v134 >> 1)
  {
    v132 = sub_1000A35A4((v134 > 1), v135 + 1, 1, v132);
  }

  *(v132 + 2) = v135 + 1;
  v136 = &v132[80 * v135];
  *(v136 + 4) = 0x40490FDA455AC000;
  *(v136 + 3) = v313;
  *(v136 + 16) = 1079841540;
  *(v136 + 5) = v280;
  *(v136 + 12) = 0x3F3AE14800000000;
  *v289 = v132;
  swift_endAccess();
  sub_1000AB384(&off_10011AC50);
  v314 = v137;
  sub_1000AB384(&off_10011AC80);
  v315 = vaddq_f32(v314, v138);
  sub_1000AB384(&off_10011ACB0);
  v281 = v139;
  swift_beginAccess();
  v140 = *v343;
  v141 = swift_isUniquelyReferenced_nonNull_native();
  *v343 = v140;
  if ((v141 & 1) == 0)
  {
    v140 = sub_1000A35A4(0, *(v140 + 2) + 1, 1, v140);
    *v343 = v140;
  }

  v142 = v315;
  v142.i32[3] = 0;
  v144 = *(v140 + 2);
  v143 = *(v140 + 3);
  if (v144 >= v143 >> 1)
  {
    v324 = v142;
    v266 = sub_1000A35A4((v143 > 1), v144 + 1, 1, v140);
    v142 = v324;
    v140 = v266;
  }

  *(v140 + 2) = v144 + 1;
  v145 = &v140[80 * v144];
  *(v145 + 4) = 0x4004EC9D44898000;
  *(v145 + 3) = v142;
  *(v145 + 16) = 1082377785;
  *(v145 + 5) = v281;
  *(v145 + 12) = 0x3FECCCCD3EC28F5CLL;
  *v343 = v140;
  swift_endAccess();
  sub_1000AB384(&off_10011ACE0);
  v316 = v146;
  sub_1000AB384(&off_10011AD10);
  v317 = vaddq_f32(v316, v147);
  sub_1000AB384(&off_10011AD40);
  v282 = v148;
  swift_beginAccess();
  v149 = *v295;
  v150 = swift_isUniquelyReferenced_nonNull_native();
  *v295 = v149;
  if ((v150 & 1) == 0)
  {
    v149 = sub_1000A35A4(0, *(v149 + 2) + 1, 1, v149);
    *v295 = v149;
  }

  v151 = v317;
  v151.i32[3] = 0;
  v153 = *(v149 + 2);
  v152 = *(v149 + 3);
  if (v153 >= v152 >> 1)
  {
    v325 = v151;
    v267 = sub_1000A35A4((v152 > 1), v153 + 1, 1, v149);
    v151 = v325;
    v149 = v267;
  }

  *(v149 + 2) = v153 + 1;
  v154 = &v149[80 * v153];
  *(v154 + 4) = 0x40490FDA45834000;
  *(v154 + 3) = v151;
  *(v154 + 16) = 1070141402;
  *(v154 + 5) = v282;
  *(v154 + 12) = 0x3F63D70A3E4CCCCDLL;
  *v295 = v149;
  swift_endAccess();
  sub_1000AB384(&off_10011AD70);
  v318 = v155;
  sub_1000AB384(&off_10011ADA0);
  v283 = v156;
  swift_beginAccess();
  v157 = *v351;
  v158 = swift_isUniquelyReferenced_nonNull_native();
  *v351 = v157;
  if ((v158 & 1) == 0)
  {
    v157 = sub_1000A35A4(0, *(v157 + 2) + 1, 1, v157);
    *v351 = v157;
  }

  v160 = *(v157 + 2);
  v159 = *(v157 + 3);
  if (v160 >= v159 >> 1)
  {
    v157 = sub_1000A35A4((v159 > 1), v160 + 1, 1, v157);
  }

  *(v157 + 2) = v160 + 1;
  v161 = &v157[80 * v160];
  *(v161 + 4) = 0x4042CE8145A8C000;
  *(v161 + 3) = v318;
  *(v161 + 16) = -1078339876;
  *(v161 + 5) = v283;
  *(v161 + 12) = 0x3FA7AE143F84BC6ALL;
  *v351 = v157;
  swift_endAccess();
  sub_1000AB384(&off_10011ADD0);
  v319 = v162;
  sub_1000AB384(&off_10011AE00);
  v284 = v163;
  swift_beginAccess();
  v164 = *v291;
  v165 = swift_isUniquelyReferenced_nonNull_native();
  *v291 = v164;
  if ((v165 & 1) == 0)
  {
    v164 = sub_1000A35A4(0, *(v164 + 2) + 1, 1, v164);
    *v291 = v164;
  }

  v167 = *(v164 + 2);
  v166 = *(v164 + 3);
  if (v167 >= v166 >> 1)
  {
    v164 = sub_1000A35A4((v166 > 1), v167 + 1, 1, v164);
  }

  *(v164 + 2) = v167 + 1;
  v168 = &v164[80 * v167];
  *(v168 + 4) = 0x40197A2E00000000;
  *(v168 + 3) = v319;
  *(v168 + 16) = 1075112755;
  *(v168 + 5) = v284;
  *(v168 + 12) = 0x3F4A3D713EBB645ALL;
  *v291 = v164;
  swift_endAccess();
  sub_1000AB384(&off_10011AE30);
  v320 = v169;
  sub_1000AB384(&off_10011AE60);
  v285 = v170;
  swift_beginAccess();
  v171 = *v347;
  v172 = swift_isUniquelyReferenced_nonNull_native();
  *v347 = v171;
  if ((v172 & 1) == 0)
  {
    v171 = sub_1000A35A4(0, *(v171 + 2) + 1, 1, v171);
    *v347 = v171;
  }

  v174 = *(v171 + 2);
  v173 = *(v171 + 3);
  if (v174 >= v173 >> 1)
  {
    v171 = sub_1000A35A4((v173 > 1), v174 + 1, 1, v171);
  }

  *(v171 + 2) = v174 + 1;
  v175 = &v171[80 * v174];
  *(v175 + 4) = 0x4021BE3F00000000;
  *(v175 + 3) = v320;
  *(v175 + 16) = 1084229967;
  *(v175 + 5) = v285;
  *(v175 + 12) = 0x3FECCCCD3EC28F5CLL;
  *v347 = v171;
  swift_endAccess();
  sub_1000AB384(&off_10011AE90);
  v321 = v176;
  sub_1000AB384(&off_10011AEC0);
  v286 = v177;
  swift_beginAccess();
  v178 = *v363;
  v179 = swift_isUniquelyReferenced_nonNull_native();
  *v363 = v178;
  if ((v179 & 1) == 0)
  {
    v178 = sub_1000A35A4(0, *(v178 + 2) + 1, 1, v178);
    *v363 = v178;
  }

  v181 = *(v178 + 2);
  v180 = *(v178 + 3);
  if (v181 >= v180 >> 1)
  {
    v178 = sub_1000A35A4((v180 > 1), v181 + 1, 1, v178);
  }

  *(v178 + 2) = v181 + 1;
  v182 = &v178[80 * v181];
  *(v182 + 4) = 0x40490FDA46CA7734;
  *(v182 + 3) = v321;
  *(v182 + 16) = 1076037070;
  *(v182 + 5) = v286;
  *(v182 + 12) = 0x3F828F5C3F800000;
  *v363 = v178;
  swift_endAccess();
  sub_1000AB384(&off_10011AEF0);
  v322 = v183;
  sub_1000AB384(&off_10011AF20);
  v287 = v184;
  swift_beginAccess();
  v185 = *v26;
  v186 = swift_isUniquelyReferenced_nonNull_native();
  *v26 = v185;
  if ((v186 & 1) == 0)
  {
    v185 = sub_1000A35A4(0, *(v185 + 2) + 1, 1, v185);
    *v26 = v185;
  }

  v188 = *(v185 + 2);
  v187 = *(v185 + 3);
  if (v188 >= v187 >> 1)
  {
    v185 = sub_1000A35A4((v187 > 1), v188 + 1, 1, v185);
  }

  *(v185 + 2) = v188 + 1;
  v189 = &v185[80 * v188];
  *(v189 + 4) = 0x4041E9BF454E4000;
  *(v189 + 3) = v322;
  *(v189 + 16) = 1083673028;
  *(v189 + 5) = v287;
  *(v189 + 12) = 0x401E147B00000000;
  *v26 = v185;
  swift_endAccess();
  sub_1000AB384(&off_10011AF50);
  v337 = v190;
  sub_1000AB384(&off_10011AF80);
  v323 = v191;
  swift_beginAccess();
  v192 = *v289;
  v193 = swift_isUniquelyReferenced_nonNull_native();
  *v289 = v192;
  if ((v193 & 1) == 0)
  {
    v192 = sub_1000A35A4(0, *(v192 + 2) + 1, 1, v192);
    *v289 = v192;
  }

  v195 = *(v192 + 2);
  v194 = *(v192 + 3);
  if (v195 >= v194 >> 1)
  {
    v192 = sub_1000A35A4((v194 > 1), v195 + 1, 1, v192);
  }

  *(v192 + 2) = v195 + 1;
  v196 = &v192[80 * v195];
  *(v196 + 4) = 0x40490FDA43960000;
  *(v196 + 3) = v337;
  *(v196 + 16) = 1079841540;
  *(v196 + 5) = v323;
  *(v196 + 12) = 0x3F3AE14800000000;
  *v289 = v192;
  swift_endAccess();
  sub_1000AB384(&off_10011AFB0);
  v338 = v197;
  sub_1000AB384(&off_10011AFE0);
  v330 = v198;
  swift_beginAccess();
  v199 = *v288;
  v200 = swift_isUniquelyReferenced_nonNull_native();
  *v288 = v199;
  if ((v200 & 1) == 0)
  {
    v199 = sub_1000A35A4(0, *(v199 + 2) + 1, 1, v199);
    *v288 = v199;
  }

  v202 = *(v199 + 2);
  v201 = *(v199 + 3);
  if (v202 >= v201 >> 1)
  {
    v199 = sub_1000A35A4((v201 > 1), v202 + 1, 1, v199);
  }

  *(v199 + 2) = v202 + 1;
  v203 = &v199[80 * v202];
  *(v203 + 4) = 0x3FF86C54C3160000;
  *(v203 + 3) = v338;
  *(v203 + 16) = 1077207353;
  *(v203 + 5) = v330;
  *(v203 + 12) = 0x41DCE14800000000;
  *v288 = v199;
  swift_endAccess();
  sub_1000AB384(&off_10011B010);
  v339 = v204;
  sub_1000AB384(&off_10011B040);
  v331 = v205;
  swift_beginAccess();
  v206 = *v290;
  v207 = swift_isUniquelyReferenced_nonNull_native();
  *v290 = v206;
  if ((v207 & 1) == 0)
  {
    v206 = sub_1000A35A4(0, *(v206 + 2) + 1, 1, v206);
    *v290 = v206;
  }

  v209 = *(v206 + 2);
  v208 = *(v206 + 3);
  if (v209 >= v208 >> 1)
  {
    v206 = sub_1000A35A4((v208 > 1), v209 + 1, 1, v206);
  }

  *(v206 + 2) = v209 + 1;
  v210 = &v206[80 * v209];
  *(v210 + 4) = 0x40490FDA00000000;
  *(v210 + 3) = v339;
  *(v210 + 16) = 1050858253;
  *(v210 + 5) = v331;
  *(v210 + 12) = 0x3F4A3D713EBB645ALL;
  *v290 = v206;
  swift_endAccess();
  sub_1000AB384(&off_10011B070);
  v340 = v211;
  sub_1000AB384(&off_10011B0A0);
  v332 = v212;
  swift_beginAccess();
  v213 = *v291;
  v214 = swift_isUniquelyReferenced_nonNull_native();
  *v291 = v213;
  if ((v214 & 1) == 0)
  {
    v213 = sub_1000A35A4(0, *(v213 + 2) + 1, 1, v213);
    *v291 = v213;
  }

  v216 = *(v213 + 2);
  v215 = *(v213 + 3);
  if (v216 >= v215 >> 1)
  {
    v213 = sub_1000A35A4((v215 > 1), v216 + 1, 1, v213);
  }

  *(v213 + 2) = v216 + 1;
  v217 = &v213[80 * v216];
  *(v217 + 4) = 0x40197A2E43E10000;
  *(v217 + 3) = v340;
  *(v217 + 16) = 1073781533;
  *(v217 + 5) = v332;
  *(v217 + 12) = 0x3F4A3D713EBB645ALL;
  *v291 = v213;
  swift_endAccess();
  sub_1000AB384(&off_10011B0D0);
  v341 = v218;
  sub_1000AB384(&off_10011B100);
  v333 = v219;
  swift_beginAccess();
  v220 = *v343;
  v221 = swift_isUniquelyReferenced_nonNull_native();
  *v343 = v220;
  if ((v221 & 1) == 0)
  {
    v220 = sub_1000A35A4(0, *(v220 + 2) + 1, 1, v220);
    *v343 = v220;
  }

  v223 = *(v220 + 2);
  v222 = *(v220 + 3);
  if (v223 >= v222 >> 1)
  {
    v220 = sub_1000A35A4((v222 > 1), v223 + 1, 1, v220);
  }

  *(v220 + 2) = v223 + 1;
  v224 = &v220[80 * v223];
  *(v224 + 4) = 0x3FFCCC2100000000;
  *(v224 + 3) = v341;
  *(v224 + 16) = 1079550919;
  *(v224 + 5) = v333;
  *(v224 + 12) = 0x3FECCCCD3EC28F5CLL;
  *v343 = v220;
  swift_endAccess();
  sub_1000AB384(&off_10011B130);
  v344 = v225;
  sub_1000AB384(&off_10011B160);
  v342 = v226;
  swift_beginAccess();
  v227 = *v347;
  v228 = swift_isUniquelyReferenced_nonNull_native();
  *v347 = v227;
  if ((v228 & 1) == 0)
  {
    v227 = sub_1000A35A4(0, *(v227 + 2) + 1, 1, v227);
    *v347 = v227;
  }

  v230 = *(v227 + 2);
  v229 = *(v227 + 3);
  if (v230 >= v229 >> 1)
  {
    v227 = sub_1000A35A4((v229 > 1), v230 + 1, 1, v227);
  }

  *(v227 + 2) = v230 + 1;
  v231 = &v227[80 * v230];
  *(v231 + 4) = 0x4004EC9D43480000;
  *(v231 + 3) = v344;
  *(v231 + 16) = 1082377785;
  *(v231 + 5) = v342;
  *(v231 + 12) = 0x3FECCCCD3EC28F5CLL;
  *v347 = v227;
  swift_endAccess();
  sub_1000AB384(&off_10011B190);
  v348 = v232;
  sub_1000AB384(&off_10011B1C0);
  v345 = v233;
  swift_beginAccess();
  v234 = *v295;
  v235 = swift_isUniquelyReferenced_nonNull_native();
  *v295 = v234;
  if ((v235 & 1) == 0)
  {
    v234 = sub_1000A35A4(0, *(v234 + 2) + 1, 1, v234);
    *v295 = v234;
  }

  v237 = *(v234 + 2);
  v236 = *(v234 + 3);
  if (v237 >= v236 >> 1)
  {
    v234 = sub_1000A35A4((v236 > 1), v237 + 1, 1, v234);
  }

  *(v234 + 2) = v237 + 1;
  v238 = &v234[80 * v237];
  *(v238 + 4) = 0x40490FDA450A2000;
  *(v238 + 3) = v348;
  *(v238 + 16) = 1070141402;
  *(v238 + 5) = v345;
  *(v238 + 12) = 0x3F63D70A3E4CCCCDLL;
  *v295 = v234;
  swift_endAccess();
  sub_1000AB384(&off_10011B1F0);
  v349 = v239;
  sub_1000AB384(&off_10011B220);
  v346 = v240;
  swift_beginAccess();
  v241 = *v351;
  v242 = swift_isUniquelyReferenced_nonNull_native();
  *v351 = v241;
  if ((v242 & 1) == 0)
  {
    v241 = sub_1000A35A4(0, *(v241 + 2) + 1, 1, v241);
    *v351 = v241;
  }

  v244 = *(v241 + 2);
  v243 = *(v241 + 3);
  if (v244 >= v243 >> 1)
  {
    v241 = sub_1000A35A4((v243 > 1), v244 + 1, 1, v241);
  }

  *(v241 + 2) = v244 + 1;
  v245 = &v241[80 * v244];
  *(v245 + 4) = 0x4042CE8144228000;
  *(v245 + 3) = v349;
  *(v245 + 16) = -1078339876;
  *(v245 + 5) = v346;
  *(v245 + 12) = 0x3FA7AE143F84BC6ALL;
  *v351 = v241;
  swift_endAccess();
  sub_1000AB384(&off_10011B250);
  v352 = v246;
  sub_1000AB384(&off_10011B280);
  v350 = v247;
  swift_beginAccess();
  v248 = *v363;
  v249 = swift_isUniquelyReferenced_nonNull_native();
  *v363 = v248;
  if ((v249 & 1) == 0)
  {
    v248 = sub_1000A35A4(0, *(v248 + 2) + 1, 1, v248);
    *v363 = v248;
  }

  v251 = *(v248 + 2);
  v250 = *(v248 + 3);
  if (v251 >= v250 >> 1)
  {
    v248 = sub_1000A35A4((v250 > 1), v251 + 1, 1, v248);
  }

  *(v248 + 2) = v251 + 1;
  v252 = &v248[80 * v251];
  *(v252 + 4) = 0x40490FDA45FA0000;
  *(v252 + 3) = v352;
  *(v252 + 16) = 1076037070;
  *(v252 + 5) = v350;
  *(v252 + 12) = 0x3F828F5C3F800000;
  *v363 = v248;
  swift_endAccess();
  sub_1000AB384(&off_10011B2B0);
  v364 = v253;
  sub_1000AB384(&off_10011B2E0);
  v353 = v254;
  swift_beginAccess();
  v255 = *v21;
  v256 = swift_isUniquelyReferenced_nonNull_native();
  *v21 = v255;
  if ((v256 & 1) == 0)
  {
    v255 = sub_1000A35A4(0, *(v255 + 2) + 1, 1, v255);
    *v21 = v255;
  }

  v258 = *(v255 + 2);
  v257 = *(v255 + 3);
  if (v258 >= v257 >> 1)
  {
    v255 = sub_1000A35A4((v257 > 1), v258 + 1, 1, v255);
  }

  *(v255 + 2) = v258 + 1;
  v259 = &v255[80 * v258];
  *(v259 + 4) = 0x40490FDA44480000;
  *(v259 + 3) = v364;
  *(v259 + 16) = 1075738667;
  *(v259 + 5) = v353;
  *(v259 + 12) = 0x3F65E35400000000;
  *(v292 + 64) = v255;
  swift_endAccess();
  sub_1000125FC(&qword_1001303F0);
  v260 = swift_allocObject();
  *(v260 + 16) = xmmword_1000F3150;
  *(v260 + 32) = v1;
  *(v260 + 40) = v298;
  *(v260 + 48) = v292;
  *(v260 + 56) = v293;
  *(v260 + 64) = v297;
  *(v260 + 72) = v11;
  *(v260 + 80) = v17;
  *(v260 + 88) = v7;
  *(v260 + 96) = v296;
  *(v260 + 104) = v294;
  *(v260 + 112) = v5;
  swift_beginAccess();
  *(v299 + 144) = v260;
}

uint64_t getEnumTagSinglePayload for CommonError(unsigned __int8 *a1, unsigned int a2)
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
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CommonError(uint64_t result, unsigned int a2, unsigned int a3)
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

Swift::Int sub_1000D4018()
{
  sub_1000EA024();
  sub_1000E9974();

  return sub_1000EA064();
}

uint64_t sub_1000D4150()
{
  sub_1000E9974();
}

uint64_t sub_1000D4264@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000D44A0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1000D4294(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB0000000064656CLL;
  v4 = 0x6961467075746573;
  v5 = 0x80000001000F6680;
  v6 = 0xD000000000000016;
  v7 = 0xEC00000064656C69;
  v8 = 0x6146657461647075;
  if (v2 != 4)
  {
    v8 = 0x6C69614677617264;
    v7 = 0xEA00000000006465;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x7465737341646162;
  if (v2 != 1)
  {
    v10 = 0xD000000000000016;
    v9 = 0x80000001000F6660;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_1000D4370()
{
  v1 = *v0;
  v2 = 0x6961467075746573;
  v3 = 0xD000000000000016;
  v4 = 0x6146657461647075;
  if (v1 != 4)
  {
    v4 = 0x6C69614677617264;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7465737341646162;
  if (v1 != 1)
  {
    v5 = 0xD000000000000016;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000D444C()
{
  result = qword_100133BA8;
  if (!qword_100133BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133BA8);
  }

  return result;
}

uint64_t sub_1000D44A0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100122188;
  v6._object = a2;
  v4 = sub_1000E9EC4(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

void sub_1000D44EC()
{
  v0 = kCGColorSpaceSRGB;
  v1 = CGColorSpaceCreateWithName(v0);

  qword_10013DD18 = v1;
}

void sub_1000D4530()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    v2 = 3;
  }

  else
  {
    v2 = 2;
  }

  byte_10013DD20 = v2;
}

uint64_t sub_1000D4598()
{
  v0 = sub_1000E96A4();
  sub_100011C54(v0, qword_100133BB0);
  v1 = sub_100007488(v0, qword_100133BB0);
  if (qword_10012F780 != -1)
  {
    swift_once();
  }

  v2 = sub_100007488(v0, qword_10013DE48);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_1000D4660(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = v1;
  v468 = v4;
  v6 = v5;
  v464 = *v3;
  v7 = sub_1000E93B4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v6);
  v463 = &v458 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[3] = 0;
  *(v3 + 32) = 0;
  *(v3 + 7) = 0u;
  *(v3 + 5) = 0u;
  *(v3 + 9) = 0u;
  *(v3 + 11) = 0u;
  *(v3 + 13) = 0u;
  v3[15] = 0;
  v3[40] = 1;
  v535 = v3;
  v467 = v3 + 7;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = MTLCreateSystemDefaultDevice();
    v9 = 0;
    if (!v11)
    {
LABEL_8:
      sub_10001B6F8();
      v17 = swift_allocError();
      *v18 = 0;
      v469 = v17;
      swift_willThrow();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v19 = 0;
      v20 = 0;
      v21 = 0;
      LODWORD(v534) = 0;
      v22 = 0;
      LODWORD(v533) = 0;
      v23 = 0;
      LODWORD(v24) = 0;
      LODWORD(isa) = 0;
      LODWORD(v530) = 0;
      LODWORD(v532) = 0;
      LODWORD(v531) = 0;
      v466 = 0;
      goto LABEL_142;
    }
  }

  v465 = v9;
  swift_unknownObjectRetain();
  v12 = [v11 newDefaultLibrary];
  if (!v12)
  {
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v13 = v12;
  v14 = [objc_opt_self() currentDevice];
  v15 = [v14 userInterfaceIdiom];

  v3[2] = v11;
  *(v3 + 312) = v15 == 1;
  type metadata accessor for VariableBlurrer();
  swift_allocObject();
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain();
  v16 = sub_10001A5E0(v11, v13);
  v466 = v2 == 0;
  v469 = v2;
  if (v2)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_140:
    swift_unknownObjectRelease();
    v19 = 0;
    v20 = 0;
    v21 = 0;
    LODWORD(v534) = 0;
    v22 = 0;
    LODWORD(v533) = 0;
    v23 = 0;
    LODWORD(v24) = 0;
    LODWORD(isa) = 0;
    LODWORD(v530) = 0;
    LODWORD(v532) = 0;
    LODWORD(v531) = 0;
    goto LABEL_141;
  }

  v26 = v3;
  v459 = v8;
  v460 = v7;
  v461 = v13;
  v462 = v11;
  v27 = 0;
  v26[38] = v16;
  *&v533 = &v567[20] + 8;
  v532 = &v566[20] + 4;
  v24 = _swiftEmptyArrayStorage;
  v534 = v15;
  do
  {
    v42 = *(&off_100121588 + v27 + 32);
    if (v15 == 1)
    {
      if (*(&off_100121588 + v27 + 32) > 3u)
      {
        if (*(&off_100121588 + v27 + 32) > 5u)
        {
          if (v42 == 6)
          {
            if (qword_10012F5E8 != -1)
            {
              swift_once();
            }

            memcpy(v566, &xmmword_10013C730, 0x208uLL);
            sub_1000C6110(v566, v565);
            if (qword_10012F5F0 != -1)
            {
              swift_once();
            }

            v43 = &xmmword_10013C940;
          }

          else
          {
            if (qword_10012F5F8 != -1)
            {
              swift_once();
            }

            memcpy(v566, &xmmword_10013CB50, 0x208uLL);
            sub_1000C6110(v566, v565);
            if (qword_10012F600 != -1)
            {
              swift_once();
            }

            v43 = &xmmword_10013CD60;
          }
        }

        else if (v42 == 4)
        {
          if (qword_10012F618 != -1)
          {
            swift_once();
          }

          memcpy(v566, &xmmword_10013D390, 0x208uLL);
          sub_1000C6110(v566, v565);
          if (qword_10012F620 != -1)
          {
            swift_once();
          }

          v43 = &xmmword_10013D5A0;
        }

        else
        {
          if (qword_10012F608 != -1)
          {
            swift_once();
          }

          memcpy(v566, &xmmword_10013CF70, 0x208uLL);
          sub_1000C6110(v566, v565);
          if (qword_10012F610 != -1)
          {
            swift_once();
          }

          v43 = &xmmword_10013D180;
        }
      }

      else if (*(&off_100121588 + v27 + 32) > 1u)
      {
        if (v42 == 2)
        {
          if (qword_10012F628 != -1)
          {
            swift_once();
          }

          memcpy(v566, &xmmword_10013D7B0, 0x208uLL);
          sub_1000C6110(v566, v565);
          if (qword_10012F630 != -1)
          {
            swift_once();
          }

          v43 = &xmmword_10013D9C0;
        }

        else
        {
          if (qword_10012F5B8 != -1)
          {
            swift_once();
          }

          memcpy(v566, &xmmword_10013BAD0, 0x208uLL);
          sub_1000C6110(v566, v565);
          if (qword_10012F5C8 != -1)
          {
            swift_once();
          }

          v43 = &xmmword_10013BEF0;
        }
      }

      else if (*(&off_100121588 + v27 + 32))
      {
        if (qword_10012F5C0 != -1)
        {
          swift_once();
        }

        memcpy(v566, &xmmword_10013BCE0, 0x208uLL);
        sub_1000C6110(v566, v565);
        if (qword_10012F5D0 != -1)
        {
          swift_once();
        }

        v43 = &xmmword_10013C100;
      }

      else
      {
        if (qword_10012F5D8 != -1)
        {
          swift_once();
        }

        memcpy(v566, &xmmword_10013C310, 0x208uLL);
        sub_1000C6110(v566, v565);
        if (qword_10012F5E0 != -1)
        {
          swift_once();
        }

        v43 = &xmmword_10013C520;
      }

      memcpy(v567, v43, 0x208uLL);
      v531 = v566[28];
      v529 = v566[26];
      v530 = v566[27];
      v527 = v566[23];
      v528 = v566[25];
      v525 = v566[22];
      v526 = v566[24];
      v523 = v566[21];
      *&v524 = *&v566[20];
      v45 = *v532 | (v532[2] << 32);
      v520 = v566[19];
      v521 = v566[18];
      *&v522 = *&v566[17];
      v518 = v566[16];
      v519 = v566[15];
      v516 = v566[13];
      v517 = v566[14];
      v514 = v566[11];
      v515 = v566[12];
      *&v513 = *(&v566[10] + 1);
      LODWORD(v512) = v566[10];
      v510 = v566[9];
      v511 = v566[8];
      v509 = v566[6];
      *&v508 = *&v566[7];
      v506 = v566[4];
      v507 = v566[3];
      v505 = *&v566[5];
      v504 = DWORD2(v566[5]);
      v500 = v566[1];
      v501 = v566[0];
      v499 = *&v566[2];
      v498 = DWORD2(v566[2]);
      v503 = *&v566[32];
      v502 = v566[31];
      v46 = *&v567[20];
      v47 = *v533 | (*(v533 + 4) << 32);
      v48 = *&v567[17];
      v496 = v566[29];
      v497 = v566[30];
      v494 = v567[27];
      v495 = v567[28];
      v492 = v567[25];
      v493 = v567[26];
      v490 = v567[24];
      v491 = v567[23];
      v488 = v567[21];
      v489 = v567[22];
      v486 = v567[19];
      v487 = v567[18];
      v484 = v567[16];
      v485 = v567[15];
      v482 = v567[13];
      v483 = v567[14];
      v480 = v567[11];
      v481 = v567[12];
      v49 = *(&v567[10] + 1);
      v50 = v567[10];
      v478 = v567[9];
      v479 = v567[8];
      v51 = *&v567[7];
      v476 = v567[3];
      v477 = v567[6];
      v52 = *&v567[5];
      v53 = DWORD2(v567[5]);
      v474 = v567[0];
      v475 = v567[4];
      v54 = *&v567[2];
      v55 = DWORD2(v567[2]);
      v56 = *&v567[32];
      v472 = v567[1];
      v473 = v567[31];
      v470 = v567[29];
      v471 = v567[30];
      sub_1000C6110(v567, v565);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1000A3B08(0, *(v24 + 16) + 1, 1, v24);
      }

      v59 = *(v24 + 16);
      v58 = *(v24 + 24);
      if (v59 >= v58 >> 1)
      {
        v24 = sub_1000A3B08((v58 > 1), v59 + 1, 1, v24);
      }

      v566[0] = v474;
      v566[1] = v472;
      *&v566[2] = v54;
      DWORD2(v566[2]) = v55;
      v566[3] = v476;
      v566[4] = v475;
      *&v566[5] = v52;
      DWORD2(v566[5]) = v53;
      v566[6] = v477;
      *&v566[7] = v51;
      v566[8] = v479;
      v566[9] = v478;
      LODWORD(v566[10]) = v50;
      *(&v566[10] + 1) = v49;
      v566[11] = v480;
      v566[12] = v481;
      v566[13] = v482;
      v566[14] = v483;
      v566[15] = v485;
      v566[16] = v484;
      *&v566[17] = v48;
      v566[18] = v487;
      v566[19] = v486;
      *&v566[20] = v46;
      v28 = v532;
      v532[2] = WORD2(v47);
      *v28 = v47;
      v566[21] = v488;
      v566[22] = v489;
      v566[23] = v491;
      v566[24] = v490;
      v566[25] = v492;
      v566[26] = v493;
      v566[27] = v494;
      v566[28] = v495;
      v566[29] = v470;
      v566[30] = v471;
      v566[31] = v473;
      *&v566[32] = v56;
      _MTLPackedFloat3.init(_:_:_:)(*&v473, *&v470, v57);
      memcpy(v567 + 8, v566, 0x208uLL);
      v29 = (v24 + 1056 * v59);
      v30 = v500;
      *(v29 + 2) = v501;
      *(v29 + 3) = v30;
      v29[8] = v499;
      *(v29 + 18) = v498;
      v31 = v506;
      *(v29 + 5) = v507;
      *(v29 + 6) = v31;
      v29[14] = v505;
      *(v29 + 30) = v504;
      *(v29 + 8) = v509;
      v29[18] = v508;
      v32 = v510;
      *(v29 + 10) = v511;
      *(v29 + 11) = v32;
      *(v29 + 48) = v512;
      v29[25] = v513;
      v33 = v515;
      *(v29 + 13) = v514;
      *(v29 + 14) = v33;
      v34 = v517;
      *(v29 + 15) = v516;
      *(v29 + 16) = v34;
      v35 = v518;
      *(v29 + 17) = v519;
      *(v29 + 18) = v35;
      v36 = v520;
      *(v29 + 20) = v521;
      *(v29 + 21) = v36;
      v37 = v525;
      *(v29 + 23) = v523;
      *(v29 + 24) = v37;
      v38 = v526;
      *(v29 + 25) = v527;
      *(v29 + 26) = v38;
      v39 = v529;
      *(v29 + 27) = v528;
      *(v29 + 28) = v39;
      v40 = v531;
      *(v29 + 29) = v530;
      *(v29 + 30) = v40;
      v41 = v497;
      *(v29 + 31) = v496;
      *(v29 + 32) = v41;
      *(v29 + 33) = v502;
      v29[68] = v503;
      *(v24 + 16) = v59 + 1;
      v29[38] = v522;
      v29[44] = v524;
      *(v29 + 182) = WORD2(v45);
      *(v29 + 90) = v45;
    }

    else
    {
      if (*(&off_100121588 + v27 + 32) > 3u)
      {
        if (*(&off_100121588 + v27 + 32) > 5u)
        {
          if (v42 == 6)
          {
            if (qword_10012F590 != -1)
            {
              swift_once();
            }

            v44 = &xmmword_10013B080;
          }

          else
          {
            if (qword_10012F598 != -1)
            {
              swift_once();
            }

            v44 = &xmmword_10013B290;
          }
        }

        else if (v42 == 4)
        {
          if (qword_10012F5A0 != -1)
          {
            swift_once();
          }

          v44 = &xmmword_10013B4A0;
        }

        else
        {
          if (qword_10012F588 != -1)
          {
            swift_once();
          }

          v44 = &xmmword_10013AE70;
        }
      }

      else if (*(&off_100121588 + v27 + 32) > 1u)
      {
        if (v42 == 2)
        {
          if (qword_10012F5A8 != -1)
          {
            swift_once();
          }

          v44 = &xmmword_10013B6B0;
        }

        else
        {
          if (qword_10012F578 != -1)
          {
            swift_once();
          }

          v44 = &xmmword_10013AA50;
        }
      }

      else if (*(&off_100121588 + v27 + 32))
      {
        if (qword_10012F580 != -1)
        {
          swift_once();
        }

        v44 = &xmmword_10013AC60;
      }

      else
      {
        if (qword_10012F5B0 != -1)
        {
          swift_once();
        }

        v44 = &xmmword_10013B8C0;
      }

      memcpy(v567, v44, 0x208uLL);
      v531 = v567[28];
      v529 = v567[26];
      v530 = v567[27];
      v527 = v567[23];
      v528 = v567[25];
      v525 = v567[22];
      v526 = v567[24];
      v60 = *&v567[20];
      v61 = *v533 | (*(v533 + 4) << 32);
      v523 = v567[18];
      v524 = v567[21];
      v62 = *&v567[17];
      v521 = v567[15];
      v522 = v567[19];
      v519 = v567[14];
      v520 = v567[16];
      v517 = v567[12];
      v518 = v567[13];
      v63 = *(&v567[10] + 1);
      v64 = v567[10];
      v515 = v567[8];
      v516 = v567[11];
      v513 = v567[6];
      v514 = v567[9];
      v65 = *&v567[7];
      v511 = v567[4];
      v512 = v567[3];
      v66 = *&v567[5];
      v67 = DWORD2(v567[5]);
      v508 = v567[1];
      v509 = v567[0];
      v68 = *&v567[2];
      v69 = DWORD2(v567[2]);
      v70 = *&v567[32];
      v510 = v567[31];
      v506 = v567[29];
      v507 = v567[30];
      sub_1000C6110(v567, v566);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1000A3B08(0, *(v24 + 16) + 1, 1, v24);
      }

      v72 = *(v24 + 16);
      v71 = *(v24 + 24);
      v73 = v24;
      if (v72 >= v71 >> 1)
      {
        v73 = sub_1000A3B08((v71 > 1), v72 + 1, 1, v24);
      }

      sub_1000E29EC(v566);
      memcpy(v567 + 8, v566, 0x208uLL);
      v29 = &v73[132 * v72];
      v24 = v73;
      v74 = v508;
      *(v29 + 2) = v509;
      *(v29 + 3) = v74;
      v29[8] = v68;
      *(v29 + 18) = v69;
      v75 = v511;
      *(v29 + 5) = v512;
      *(v29 + 6) = v75;
      v29[14] = v66;
      *(v29 + 30) = v67;
      *(v29 + 8) = v513;
      v29[18] = v65;
      v76 = v514;
      *(v29 + 10) = v515;
      *(v29 + 11) = v76;
      *(v29 + 48) = v64;
      v29[25] = v63;
      v77 = v517;
      *(v29 + 13) = v516;
      *(v29 + 14) = v77;
      v78 = v519;
      *(v29 + 15) = v518;
      *(v29 + 16) = v78;
      v79 = v520;
      *(v29 + 17) = v521;
      *(v29 + 18) = v79;
      v80 = v522;
      *(v29 + 20) = v523;
      *(v29 + 21) = v80;
      v81 = v525;
      *(v29 + 23) = v524;
      *(v29 + 24) = v81;
      v82 = v526;
      *(v29 + 25) = v527;
      *(v29 + 26) = v82;
      v83 = v529;
      *(v29 + 27) = v528;
      *(v29 + 28) = v83;
      v84 = v531;
      *(v29 + 29) = v530;
      *(v29 + 30) = v84;
      v85 = v507;
      *(v29 + 31) = v506;
      *(v29 + 32) = v85;
      *(v29 + 33) = v510;
      v29[68] = v70;
      v73[2] = v72 + 1;
      v29[38] = v62;
      v29[44] = v60;
      *(v29 + 182) = WORD2(v61);
      *(v29 + 90) = v61;
    }

    memcpy(v29 + 69, v567, 0x210uLL);
    ++v27;
    v15 = v534;
  }

  while (v27 != 8);
  v86 = *(v24 + 16);
  if (v86)
  {
    *&v531 = v24;
    v87 = (v24 + 32);
    v88 = _swiftEmptyArrayStorage;
    p_name = &unk_1000F5E90;
    v533 = xmmword_1000EC870;
    while (1)
    {
      memcpy(v567, v87, 0x418uLL);
      sub_1000125FC(&qword_1001322E8);
      v90 = swift_allocObject();
      *(v90 + 1) = v533;
      memcpy(v569, v567, 0x208uLL);
      sub_1000299EC(v567, v566, &qword_100132300);
      sub_1000D9D20(v569, v90 + 4);
      memcpy(v566, &v567[33], 0x208uLL);
      if (sub_1000DFDF0(v566) != 1)
      {
        memcpy(v568, v566, 0x208uLL);
        memcpy(v565, &v567[33], 0x208uLL);
        sub_1000C6110(v565, v564);
        sub_1000D9D20(v568, v564);
        v91 = v564[0];
        v90 = sub_1000A3C54(1, 2, 1, v90);
        sub_1000047C4(&v567[33], &unk_100133DB0);
        v90[2] = 2;
        v90[5] = v91;
      }

      sub_1000047C4(v567, &qword_100132300);
      v92 = v90[2];
      isa = v88[2].isa;
      v93 = (isa + v92);
      if (__OFADD__(isa, v92))
      {
        __break(1u);
LABEL_247:
        __break(1u);
        goto LABEL_248;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v95 = v88[3].isa >> 1, v95 < v93))
      {
        if (isa <= v93)
        {
          v96 = isa + v92;
        }

        else
        {
          v96 = isa;
        }

        v88 = sub_1000A3C54(isUniquelyReferenced_nonNull_native, v96, 1, v88);
        v95 = v88[3].isa >> 1;
      }

      v24 = v567;
      if (v90[2])
      {
        if ((v95 - v88[2].isa) < v92)
        {
          __break(1u);
LABEL_304:
          __break(1u);
          goto LABEL_305;
        }

        sub_1000125FC(&qword_1001322F0);
        swift_arrayInitWithCopy();

        if (v92)
        {
          v97 = v88[2].isa;
          v98 = __OFADD__(v97, v92);
          v99 = (v97 + v92);
          if (v98)
          {
            __break(1u);
LABEL_309:
            __break(1u);
LABEL_310:
            __break(1u);
LABEL_311:
            __break(1u);
LABEL_312:
            __break(1u);
LABEL_318:
            v320 = v86;
            v321 = sub_1000E92E4();

            v469 = v321;
            swift_willThrow();
            swift_unknownObjectRelease();

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            sub_1000047C4(&v563, &unk_100133DC0);

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            LODWORD(v534) = 0;
            LODWORD(v533) = 0;
            LODWORD(v24) = 0;
            LODWORD(isa) = 0;
            LODWORD(v530) = 0;
            LODWORD(v532) = 0;
            LODWORD(v531) = 0;
            v19 = 1;
            v20 = 1;
            v21 = 1;
            v22 = 1;
            v23 = 1;
            goto LABEL_141;
          }

          v88[2].isa = v99;
        }
      }

      else
      {

        if (v92)
        {
          goto LABEL_247;
        }
      }

      v87 += 1056;
      v86 = (v86 - 1);
      if (!v86)
      {
        goto LABEL_119;
      }
    }
  }

  *&v531 = v24;
  v88 = _swiftEmptyArrayStorage;
LABEL_119:
  v86 = v88[2].isa;
  if (v86)
  {
    v100 = 0;
    *&v533 = v88 + 4;
    p_name = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v100 >= v88[2].isa)
      {
        __break(1u);
LABEL_300:
        __break(1u);
LABEL_301:
        __break(1u);
LABEL_302:
        v316 = v86;
        v317 = sub_1000E92E4();

        v469 = v317;
        swift_willThrow();
        swift_unknownObjectRelease();

LABEL_306:
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        sub_1000047C4(&v563, &unk_100133DC0);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
LABEL_307:
        swift_unknownObjectRelease();
        LODWORD(v534) = 0;
        LODWORD(v533) = 0;
        v23 = 0;
        LODWORD(v24) = 0;
        LODWORD(isa) = 0;
        LODWORD(v530) = 0;
        LODWORD(v532) = 0;
        LODWORD(v531) = 0;
        v19 = 1;
        v20 = 1;
        v21 = 1;
        v22 = 1;
        goto LABEL_141;
      }

      v102 = *(v533 + 8 * v100);
      v103 = *(v102 + 16);
      v104 = *(p_name + 16);
      v24 = v104 + v103;
      if (__OFADD__(v104, v103))
      {
        goto LABEL_300;
      }

      v105 = swift_isUniquelyReferenced_nonNull_native();
      if (v105 && v24 <= *(p_name + 24) >> 1)
      {
        if (!*(v102 + 16))
        {
          goto LABEL_121;
        }
      }

      else
      {
        if (v104 <= v24)
        {
          v106 = v104 + v103;
        }

        else
        {
          v106 = v104;
        }

        p_name = sub_1000A37D0(v105, v106, 1, p_name);
        if (!*(v102 + 16))
        {
LABEL_121:

          v101 = v535;
          if (v103)
          {
            goto LABEL_301;
          }

          goto LABEL_122;
        }
      }

      v107 = *(p_name + 16);
      if ((*(p_name + 24) >> 1) - v107 < v103)
      {
        goto LABEL_304;
      }

      memcpy((p_name + v107 + 32), (v102 + 32), v103);

      v101 = v535;
      if (v103)
      {
        v108 = *(p_name + 16);
        v98 = __OFADD__(v108, v103);
        v109 = v108 + v103;
        if (v98)
        {
          goto LABEL_309;
        }

        *(p_name + 16) = v109;
      }

LABEL_122:
      v100 = (v100 + 1);
      if (v86 == v100)
      {
        goto LABEL_138;
      }
    }
  }

  p_name = _swiftEmptyArrayStorage;
  v101 = v535;
LABEL_138:

  v110 = v468;
  swift_unknownObjectRetain();
  v111 = v462;
  swift_unknownObjectRetain();

  v112 = v469;
  sub_1000DFE08(v111, p_name, v110, v536);
  v469 = v112;
  if (v112)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_140;
  }

  *&v525 = p_name;
  v117 = v537;
  v118 = v538;
  v101[34] = v537;
  v563 = v118;
  v101[16] = v118;
  v24 = v531;
  v119 = *(v531 + 16);
  *&v524 = v117;
  swift_unknownObjectRetain();
  v86 = v567;
  sub_1000299EC(&v563, v567, &unk_100133DC0);
  if (v119)
  {
    v120 = (v24 + 32);
    *&v530 = &v567[20] + 8;
    v121 = _swiftEmptyArrayStorage;
    *&v528 = &v565[41];
    v529 = xmmword_1000EC870;
    while (1)
    {
      v532 = v119;
      *&v533 = v121;
      *&v531 = v24;
      memcpy(v567, v120, 0x418uLL);
      sub_1000125FC(&qword_1001322E0);
      v122 = swift_allocObject();
      *(v122 + 16) = v529;
      v123 = *&v567[20];
      v124 = *(v530 + 4);
      v125 = *v530;
      v126 = v125 | (v124 << 32);
      *(v122 + 32) = *&v567[20];
      *(v122 + 44) = v124;
      *(v122 + 40) = v125;
      memcpy(v565, &v567[33], 0x208uLL);
      if (sub_1000DFDF0(v565) == 1)
      {
        sub_1000815EC(v123, v126);
      }

      else
      {
        v127 = v565[40];
        v128 = *(v528 + 4);
        v129 = *v528;
        sub_1000815EC(v123, v126);
        sub_1000299EC(v567, v566, &qword_100132300);
        sub_1000299EC(&v567[33], v566, &unk_100133DB0);
        sub_1000815EC(v127, v129 | (v128 << 32));
        v122 = sub_1000A3AEC(1, 2, 1, v122);
        sub_1000047C4(&v567[33], &unk_100133DB0);
        *(v122 + 16) = 2;
        *(v122 + 48) = v127;
        *(v122 + 60) = v128;
        *(v122 + 56) = v129;
        v101 = v535;
        sub_1000047C4(v567, &qword_100132300);
      }

      v130 = *(v122 + 16);
      v121 = v533;
      v131 = *(v533 + 16);
      v86 = (v131 + v130);
      v24 = v531;
      if (__OFADD__(v131, v130))
      {
        goto LABEL_311;
      }

      v132 = swift_isUniquelyReferenced_nonNull_native();
      if (v132 && (v133 = *(v121 + 3) >> 1, v133 >= v86))
      {
        if (!*(v122 + 16))
        {
          goto LABEL_175;
        }
      }

      else
      {
        if (v131 <= v86)
        {
          v134 = v131 + v130;
        }

        else
        {
          v134 = v131;
        }

        v121 = sub_1000A3AEC(v132, v134, 1, v121);
        v133 = *(v121 + 3) >> 1;
        if (!*(v122 + 16))
        {
LABEL_175:

          if (v130)
          {
            goto LABEL_312;
          }

          goto LABEL_176;
        }
      }

      if (v133 - *(v121 + 2) < v130)
      {
        __break(1u);
        goto LABEL_318;
      }

      swift_arrayInitWithCopy();

      if (v130)
      {
        v135 = *(v121 + 2);
        v98 = __OFADD__(v135, v130);
        v136 = v135 + v130;
        if (v98)
        {
          __break(1u);
LABEL_317:
          __break(1u);
          goto LABEL_318;
        }

        *(v121 + 2) = v136;
      }

LABEL_176:
      v120 += 1056;
      v119 = v532 - 1;
      if (v532 == 1)
      {
        goto LABEL_194;
      }
    }
  }

  v121 = _swiftEmptyArrayStorage;
LABEL_194:
  v137 = v24;
  v24 = *(v121 + 2);
  v138 = _swiftEmptyArrayStorage;
  *&v531 = v137;
  if (!v24)
  {
    goto LABEL_202;
  }

  *&v567[0] = _swiftEmptyArrayStorage;
  v139 = sub_1000AA4C8(0, v24, 0);
  v140 = 0;
  v138 = *&v567[0];
  v141 = v121;
  p_name = (v121 + 40);
  do
  {
    if (v140 >= *(v141 + 2))
    {
      goto LABEL_310;
    }

    if (((*p_name | (*(p_name + 4) << 32)) & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_348;
    }

    v86 = *(p_name - 8);
    *&v567[0] = v138;
    v137 = v138[2];
    v142 = v138[3];

    if (v137 >= v142 >> 1)
    {
      v139 = sub_1000AA4C8((v142 > 1), v137 + 1, 1);
      v138 = *&v567[0];
    }

    v140 = (v140 + 1);
    v138[2] = v137 + 1;
    v138[v137 + 4] = v86;
    p_name += 16;
  }

  while (v24 != v140);
  v101 = v535;
  v121 = v141;
LABEL_202:
  v143 = v469;
  sub_1000AF920(v138, 0x40uLL, v462);
  v469 = v143;
  if (v143)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1000047C4(&v563, &unk_100133DC0);

    v20 = 0;
    v21 = 0;
    LODWORD(v534) = 0;
    v22 = 0;
    LODWORD(v533) = 0;
    v23 = 0;
    LODWORD(v24) = 0;
    LODWORD(isa) = 0;
    LODWORD(v530) = 0;
    LODWORD(v532) = 0;
    LODWORD(v531) = 0;
    v19 = 1;
    goto LABEL_141;
  }

  v145 = v144;

  v101[17] = v145;
  v146 = sub_1000A11E4(_swiftEmptyArrayStorage);
  v148 = *(v121 + 2);
  if (!v148)
  {
    v152 = v146;
    goto LABEL_238;
  }

  v149 = 0;
  v150 = v24;
  v151 = v121 + 40;
  *&v522 = v148 - 1;
  *&v147 = 136446210;
  v526 = v147;
  v86 = v468;
  v152 = v146;
  *&v533 = v121;
  *&v523 = v121 + 40;
  while (2)
  {
    v153 = &v151[16 * v149];
    v24 = v149;
    *&v528 = v152;
    while (2)
    {
      if (v24 >= *(v533 + 16))
      {
        goto LABEL_317;
      }

      v154 = *(v153 - 1);
      v155 = *v153 | (*(v153 + 2) << 32);
      v532 = v155;
      *&v530 = v154;
      if ((v155 & 0x8000000000000000) != 0)
      {
        v169 = qword_10012F718;

        if (v169 != -1)
        {
          swift_once();
        }

        v170 = sub_1000E96A4();
        sub_100007488(v170, qword_100133BB0);
        v171 = sub_1000E9684();
        v172 = sub_1000E9BA4();
        if (os_log_type_enabled(v171, v172))
        {
          v173 = swift_slowAlloc();
          *v173 = 0;
          v86 = v468;
        }

        sub_1000C6078(v530, v532);

LABEL_208:
        ++v24;
        v153 += 16;
        v152 = v528;
        if (v148 == v24)
        {
          goto LABEL_238;
        }

        continue;
      }

      break;
    }

    *&v529 = v24;
    v24 = v148;
    v140 = WORD2(v155);
    v156 = v152[2];
    v137 = (v155 >> 40) & 1;
    v157 = ((v155 & 0xFFFF00000000) >> 32) | (((v155 >> 40) & 1) << 8);

    if (v156)
    {
      sub_10009F3BC(((v155 & 0xFFFF00000000) >> 32) | (((HIDWORD(v155) >> 8) & 1) << 8));
      if (v158)
      {
        if (qword_10012F718 != -1)
        {
          swift_once();
        }

        v159 = sub_1000E96A4();
        sub_100007488(v159, qword_100133BB0);
        v160 = sub_1000E9684();
        LOBYTE(v155) = sub_1000E9BA4();
        if (os_log_type_enabled(v160, v155))
        {
          v161 = swift_slowAlloc();
          v162 = swift_slowAlloc();
          *&v527 = v160;
          v163 = v162;
          *&v567[0] = v162;
          *v161 = v526;
          LOBYTE(v566[0]) = BYTE4(v155);
          BYTE1(v566[0]) = v137;
          v164 = sub_1000E9944();
          v166 = sub_100093A3C(v164, v165, v567);

          *(v161 + 4) = v166;
          v86 = v468;
          v167 = v155;
          v168 = v527;
          _os_log_impl(&_mh_execute_header, v527, v167, "duplicate gradient lookup key for %{public}s", v161, 0xCu);
          sub_100012710(v163);

          sub_1000C6078(v530, v532);
        }

        else
        {
          sub_1000C6078(v530, v532);
        }

        v101 = v535;
        v148 = v24;
        v24 = v529;
        goto LABEL_208;
      }
    }

    v174 = swift_isUniquelyReferenced_nonNull_native();
    *&v567[0] = v152;
    v175 = sub_10009F3BC(((v155 & 0xFFFF00000000) >> 32) | (((HIDWORD(v155) >> 8) & 1) << 8));
    v178 = v152[2];
    v179 = (v176 & 1) == 0;
    v98 = __OFADD__(v178, v179);
    v180 = v178 + v179;
    if (v98)
    {
      __break(1u);
      goto LABEL_324;
    }

    KeyPath = v176;
    if (v152[3] < v180)
    {
      sub_1000B2E78(v180, v174);
      v175 = sub_10009F3BC(v157);
      if ((KeyPath & 1) == (v182 & 1))
      {
        v86 = v468;
        v148 = v24;
        goto LABEL_230;
      }

LABEL_461:
      result = sub_1000E9FA4();
      __break(1u);
LABEL_462:
      __break(1u);
      goto LABEL_463;
    }

    v148 = v24;
    if ((v174 & 1) == 0)
    {
      v190 = v175;
      sub_1000B62AC();
      v175 = v190;
    }

    v86 = v468;
LABEL_230:
    v183 = (v529 + 0.5) / v150;
    v152 = *&v567[0];
    if (KeyPath)
    {
      *(*(*&v567[0] + 56) + 4 * v175) = v183;
      sub_1000C6078(v530, v532);
    }

    else
    {
      *(*&v567[0] + 8 * (v175 >> 6) + 64) |= 1 << v175;
      v184 = (v152[6] + 2 * v175);
      *v184 = v140;
      v184[1] = v137;
      *(v152[7] + 4 * v175) = v183;
      v185 = sub_1000C6078(v530, v532);
      v188 = v152[2];
      v98 = __OFADD__(v188, 1);
      v189 = v188 + 1;
      if (v98)
      {
        __break(1u);
        goto LABEL_328;
      }

      v152[2] = v189;
    }

    v101 = v535;
    v149 = v529 + 1;
    v151 = v523;
    if (v522 != v529)
    {
      continue;
    }

    break;
  }

LABEL_238:

  v101[18] = v152;

  v191 = sub_1000E98E4();
  isa = [v461 newFunctionWithName:v191];

  if (!isa)
  {

    sub_10001B6F8();
    v201 = swift_allocError();
    *v202 = 0;
    v469 = v201;
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1000047C4(&v563, &unk_100133DC0);

    swift_unknownObjectRelease();
    v21 = 0;
    LODWORD(v534) = 0;
    v22 = 0;
    LODWORD(v533) = 0;
    v23 = 0;
    LODWORD(v24) = 0;
LABEL_296:
    LODWORD(v530) = 0;
    LODWORD(v532) = 0;
    LODWORD(v531) = 0;
    v19 = 1;
    v20 = 1;
    goto LABEL_141;
  }

  *&v528 = v152;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v193 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v194 = sub_1000E98E4();
  v195 = sub_1000E98E4();
  v196 = [v193 URLForResource:v194 withExtension:v195];

  p_name = &stru_10012CFF8.name;
  if (v196)
  {
    v86 = v463;
    sub_1000E9364();

    v90 = [objc_allocWithZone(MTLBinaryArchiveDescriptor) init];
    sub_1000E9344(v197);
    v199 = v198;
    [v90 setUrl:v198];

    *&v567[0] = 0;
    v196 = [v462 newBinaryArchiveWithDescriptor:v90 error:v567];
    v200 = *&v567[0];
    if (!v196)
    {
      v203 = v200;
      sub_1000E92E4();

      swift_willThrow();
      if (qword_10012F718 != -1)
      {
        goto LABEL_346;
      }

      goto LABEL_244;
    }

    (*(v459 + 8))(v86, v460);
  }

  while (2)
  {
    v213 = [objc_allocWithZone(MTLComputePipelineDescriptor) *(p_name + 1624)];
    [v213 setComputeFunction:isa];
    if (v196)
    {
      sub_1000125FC(&qword_1001303F0);
      v214 = swift_allocObject();
      *(v214 + 16) = xmmword_1000EC860;
      *(v214 + 32) = v196;
      swift_unknownObjectRetain_n();
      sub_1000125FC(&qword_100133DE8);
      v215 = sub_1000E9A74().super.isa;

      [v213 setBinaryArchives:v215];
      swift_unknownObjectRelease();
    }

    *&v567[0] = 0;
    v216 = v462;
    v217 = [v462 newComputePipelineStateWithDescriptor:v213 options:0 reflection:0 error:v567];
    v218 = *&v567[0];
    if (!v217)
    {
      v310 = *&v567[0];

      v311 = sub_1000E92E4();

      v469 = v311;
      swift_willThrow();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_1000047C4(&v563, &unk_100133DC0);

      swift_unknownObjectRelease();
      v21 = 0;
      LODWORD(v534) = 0;
      v22 = 0;
      LODWORD(v533) = 0;
      v23 = 0;
      LODWORD(v24) = 0;
      LODWORD(isa) = 0;
      goto LABEL_296;
    }

    *&v533 = v213;
    v219 = v535;
    v535[25] = v217;
    v220 = objc_allocWithZone(MTLDepthStencilDescriptor);
    v221 = v218;
    v222 = [v220 init];
    [v222 setDepthWriteEnabled:1];
    [v222 setDepthCompareFunction:4];
    v223 = [v216 newDepthStencilStateWithDescriptor:v222];
    v24 = v223;
    if (!v223)
    {

      sub_10001B6F8();
      v312 = swift_allocError();
      *v313 = 2;
      v469 = v312;
      swift_willThrow();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_1000047C4(&v563, &unk_100133DC0);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v21 = 0;
      LODWORD(v534) = 0;
      LODWORD(v533) = 0;
      v23 = 0;
      LODWORD(isa) = 0;
      LODWORD(v530) = 0;
      LODWORD(v532) = 0;
      LODWORD(v531) = 0;
      v19 = 1;
      v20 = 1;
      v22 = 1;
      goto LABEL_141;
    }

    *&v529 = v222;
    v219[19] = v223;
    v224 = objc_allocWithZone(MTLRenderPipelineDescriptor);
    swift_unknownObjectRetain();
    v225 = [v224 init];
    [v225 setRasterSampleCount:4];
    v226 = [v225 colorAttachments];
    v227 = [v226 objectAtIndexedSubscript:0];

    if (!v227)
    {
      __break(1u);
      goto LABEL_423;
    }

    *&v527 = v24;

    [v227 setPixelFormat:81];

    [v225 setDepthAttachmentPixelFormat:250];
    v228 = v531;
    if (v196)
    {
      sub_1000125FC(&qword_1001303F0);
      v229 = swift_allocObject();
      *(v229 + 16) = xmmword_1000EC860;
      *(v229 + 32) = v196;
      swift_unknownObjectRetain_n();
      sub_1000125FC(&qword_100133DE8);
      v230 = sub_1000E9A74().super.isa;

      [v225 setBinaryArchives:v230];
      swift_unknownObjectRelease();
    }

    v532 = v225;
    swift_getKeyPath();
    sub_1000E1A24(v228);

    *&v526 = v539;
    v24 = [objc_allocWithZone(MTLFunctionDescriptor) init];
    if (v196)
    {
      sub_1000125FC(&qword_1001303F0);
      v231 = swift_allocObject();
      *(v231 + 16) = xmmword_1000EC860;
      *(v231 + 32) = v196;
      swift_unknownObjectRetain_n();
      sub_1000125FC(&qword_100133DE8);
      v232 = sub_1000E9A74().super.isa;

      [v24 setBinaryArchives:v232];
      swift_unknownObjectRelease();
    }

    *&v530 = v196;
    *&v523 = "inderVertexPositions";
    v233 = sub_1000E98E4();
    [v24 setName:v233];

    v234 = [objc_allocWithZone(MTLFunctionConstantValues) init];
    LOWORD(v567[0]) = 0;
    [v234 setConstantValue:v567 type:37 atIndex:1];
    [v24 setConstantValues:v234];

    *&v567[0] = 0;
    v235 = [v461 newFunctionWithDescriptor:v24 error:v567];
    v86 = *&v567[0];
    p_name = 0xD00000000000001ALL;
    if (!v235)
    {
      v314 = *&v567[0];
      v315 = sub_1000E92E4();

      v469 = v315;
      swift_willThrow();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_1000047C4(&v563, &unk_100133DC0);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_307;
    }

    v236 = v235;
    v237 = *&v567[0];
    [v532 setVertexFunction:v236];
    swift_unknownObjectRelease();
    v238 = "space::rasterizeMeshVertex";
    v90 = sub_1000E98E4();
    [v24 setName:v90];

    v239 = [objc_allocWithZone(MTLFunctionConstantValues) init];
    if (v526 < -32768)
    {
      __break(1u);
      goto LABEL_345;
    }

    *&v525 = isa;
    v140 = &stru_10012CFF8.name;
    if (v526 >= 0x8000)
    {
LABEL_345:
      __break(1u);
LABEL_346:
      swift_once();
LABEL_244:
      v204 = sub_1000E96A4();
      sub_100007488(v204, qword_100133BB0);
      swift_errorRetain();
      v88 = sub_1000E9684();
      v205 = sub_1000E9BA4();

      if (os_log_type_enabled(v88, v205))
      {
        v206 = swift_slowAlloc();
        v207 = swift_slowAlloc();
        *&v567[0] = v207;
        *v206 = 136315138;
        swift_getErrorValue();
        *&v533 = v88;
        v208 = sub_1000E9FB4();
        v210 = isa;
        v211 = sub_100093A3C(v208, v209, v567);

        *(v206 + 4) = v211;
        isa = v210;
        v212 = v533;
        _os_log_impl(&_mh_execute_header, v533, v205, "Unable to create MTLBinaryArchive. Error: %s", v206, 0xCu);
        sub_100012710(v207);

        p_name = 0x10012D000;

        (*(v459 + 8))(v463, v460);
      }

      else
      {
LABEL_248:

        (*(v459 + 8))(v86, v460);
      }

      v196 = 0;
      v469 = 0;
      continue;
    }

    break;
  }

  v240 = v239;
  LOWORD(v567[0]) = v526;
  [v239 setConstantValue:v567 type:37 atIndex:0];
  LOBYTE(v567[0]) = 0;
  [v240 setConstantValue:v567 type:53 atIndex:2];
  LOBYTE(v567[0]) = 0;
  [v240 setConstantValue:v567 type:53 atIndex:3];
  [v24 setConstantValues:v240];

  *&v567[0] = 0;
  v137 = v461;
  v241 = [v461 newFunctionWithDescriptor:v24 error:v567];
  v86 = *&v567[0];
  if (!v241)
  {
    goto LABEL_302;
  }

  v242 = v241;
  v243 = *&v567[0];
  p_name = v532;
  [v532 setFragmentFunction:v242];
  swift_unknownObjectRelease();
  v244 = sub_1000E98E4();
  [p_name setLabel:v244];

  v245 = [v137 device];
  *&v567[0] = 0;
  v246 = [v245 newRenderPipelineStateWithDescriptor:p_name error:v567];
  swift_unknownObjectRelease();
  v86 = *&v567[0];
  if (!v246)
  {
LABEL_305:
    v318 = v86;
    v319 = sub_1000E92E4();

    v469 = v319;
    swift_willThrow();
    swift_unknownObjectRelease();

    goto LABEL_306;
  }

  v247 = *&v567[0];

  v535[30] = v246;
  if (__OFADD__(v541, v542))
  {
    __break(1u);
LABEL_366:
    __break(1u);
    goto LABEL_367;
  }

  *&v522 = v541 + v542;
  v24 = [objc_allocWithZone(MTLFunctionDescriptor) init];
  v249 = v530;
  if (v530)
  {
    sub_1000125FC(&qword_1001303F0);
    v250 = swift_allocObject();
    *(v250 + 16) = xmmword_1000EC860;
    *(v250 + 32) = v249;
    swift_unknownObjectRetain_n();
    sub_1000125FC(&qword_100133DE8);
    v251 = sub_1000E9A74().super.isa;

    [v24 setBinaryArchives:v251];
    swift_unknownObjectRelease();
  }

  v252 = sub_1000E98E4();
  [v24 setName:v252];

  v140 = &kCGColorSpaceSRGB_ptr;
  p_name = &stru_10012CFF8.name;
  v253 = [objc_allocWithZone(MTLFunctionConstantValues) init];
  LOWORD(v567[0]) = 0;
  [v253 setConstantValue:v567 type:37 atIndex:1];
  [v24 setConstantValues:v253];

  *&v567[0] = 0;
  v137 = v461;
  v254 = [v461 newFunctionWithDescriptor:v24 error:v567];
  v86 = *&v567[0];
  if (!v254)
  {
    goto LABEL_318;
  }

  v255 = v254;
  v256 = *&v567[0];
  [v532 setVertexFunction:v255];
  swift_unknownObjectRelease();
  v257 = sub_1000E98E4();
  [v24 setName:v257];

  v248 = [objc_allocWithZone(MTLFunctionConstantValues) init];
  if (v522 < -32768)
  {
    goto LABEL_366;
  }

  v137 = v525;
  v140 = &stru_10012CFF8.name;
  if (v522 >= 0x8000)
  {
LABEL_367:
    __break(1u);
    goto LABEL_368;
  }

  v258 = v248;
  LOWORD(v567[0]) = v522;
  [v248 setConstantValue:v567 type:37 atIndex:0];
  LOBYTE(v567[0]) = 0;
  [v258 setConstantValue:v567 type:53 atIndex:2];
  LOBYTE(v567[0]) = 1;
  [v258 setConstantValue:v567 type:53 atIndex:3];
  [v24 setConstantValues:v258];

  *&v567[0] = 0;
  v259 = v461;
  v260 = [v461 newFunctionWithDescriptor:v24 error:v567];
  v86 = *&v567[0];
  v261 = v530;
  if (!v260)
  {
    goto LABEL_318;
  }

  v262 = v260;
  v263 = *&v567[0];
  v264 = v532;
  [v532 setFragmentFunction:v262];
  swift_unknownObjectRelease();
  v265 = sub_1000E98E4();
  [v264 setLabel:v265];

  v266 = [v259 device];
  *&v567[0] = 0;
  v267 = [v266 newRenderPipelineStateWithDescriptor:v264 error:v567];
  swift_unknownObjectRelease();
  v86 = *&v567[0];
  if (!v267)
  {
    goto LABEL_318;
  }

  v268 = *&v567[0];

  v535[31] = v267;
  swift_getKeyPath();
  sub_1000E1A24(v531);

  *&v521 = v545;
  v24 = [objc_allocWithZone(MTLFunctionDescriptor) init];
  if (v261)
  {
    sub_1000125FC(&qword_1001303F0);
    v269 = swift_allocObject();
    *(v269 + 16) = xmmword_1000EC860;
    *(v269 + 32) = v261;
    swift_unknownObjectRetain_n();
    sub_1000125FC(&qword_100133DE8);
    v270 = sub_1000E9A74().super.isa;

    [v24 setBinaryArchives:v270];
    swift_unknownObjectRelease();
  }

  *&v520 = "space::rasterizeArcFragment";
  v271 = sub_1000E98E4();
  [v24 setName:v271];

  v272 = [objc_allocWithZone(MTLFunctionConstantValues) init];
  LOWORD(v567[0]) = 0;
  [v272 setConstantValue:v567 type:37 atIndex:1];
  [v24 setConstantValues:v272];

  *&v567[0] = 0;
  v273 = [v461 newFunctionWithDescriptor:v24 error:v567];
  if (!v273)
  {
LABEL_322:
    v324 = *&v567[0];
    v325 = sub_1000E92E4();

    v469 = v325;
    swift_willThrow();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1000047C4(&v563, &unk_100133DC0);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    LODWORD(v534) = 0;
    LODWORD(v533) = 0;
    LODWORD(isa) = 0;
    LODWORD(v530) = 0;
    LODWORD(v532) = 0;
    LODWORD(v531) = 0;
    v19 = 1;
    v20 = 1;
    v21 = 1;
    v22 = 1;
    v23 = 1;
    LODWORD(v24) = 1;
    goto LABEL_141;
  }

  v274 = v273;
  v275 = *&v567[0];
  [v532 setVertexFunction:v274];
  swift_unknownObjectRelease();
  v276 = sub_1000E98E4();
  [v24 setName:v276];

  v277 = [objc_allocWithZone(MTLFunctionConstantValues) init];
  if (v521 < -32768)
  {
    __break(1u);
    goto LABEL_394;
  }

  *&v519 = "BackgroundVertex";
  if (v521 >= 0x8000)
  {
LABEL_394:
    __break(1u);
    goto LABEL_395;
  }

  v278 = v277;
  LOWORD(v567[0]) = v521;
  [v277 setConstantValue:v567 type:37 atIndex:0];
  LOBYTE(v567[0]) = 0;
  [v278 setConstantValue:v567 type:53 atIndex:2];
  LOBYTE(v567[0]) = 0;
  [v278 setConstantValue:v567 type:53 atIndex:3];
  [v24 setConstantValues:v278];

  *&v567[0] = 0;
  v279 = v461;
  v280 = [v461 newFunctionWithDescriptor:v24 error:v567];
  if (!v280)
  {
    goto LABEL_322;
  }

  v281 = v280;
  v282 = *&v567[0];
  v283 = v532;
  [v532 setFragmentFunction:v281];
  swift_unknownObjectRelease();
  v284 = sub_1000E98E4();
  [v283 setLabel:v284];

  v285 = [v279 device];
  *&v567[0] = 0;
  v286 = [v285 newRenderPipelineStateWithDescriptor:v283 error:v567];
  swift_unknownObjectRelease();
  v287 = *&v567[0];
  if (!v286)
  {
    goto LABEL_322;
  }

  v288 = *&v567[0];

  v535[32] = v286;
  *&v518 = v547 + v548;
  if (__OFADD__(v547, v548))
  {
    __break(1u);
LABEL_399:
    __break(1u);
    goto LABEL_400;
  }

  v24 = [objc_allocWithZone(MTLFunctionDescriptor) init];
  if (v530)
  {
    sub_1000125FC(&qword_1001303F0);
    v289 = swift_allocObject();
    *(v289 + 16) = xmmword_1000EC860;
    *(v289 + 32) = v530;
    swift_unknownObjectRetain_n();
    sub_1000125FC(&qword_100133DE8);
    v290 = sub_1000E9A74().super.isa;

    [v24 setBinaryArchives:v290];
    swift_unknownObjectRelease();
  }

  v291 = sub_1000E98E4();
  [v24 setName:v291];

  v292 = [objc_allocWithZone(MTLFunctionConstantValues) init];
  LOWORD(v567[0]) = 0;
  [v292 setConstantValue:v567 type:37 atIndex:1];
  [v24 setConstantValues:v292];

  *&v567[0] = 0;
  v293 = [v461 newFunctionWithDescriptor:v24 error:v567];
  v287 = *&v567[0];
  if (!v293)
  {
    goto LABEL_321;
  }

  v294 = v293;
  v295 = *&v567[0];
  [v532 setVertexFunction:v294];
  swift_unknownObjectRelease();
  v137 = 0xD00000000000001ALL;
  v296 = sub_1000E98E4();
  [v24 setName:v296];

  v297 = [objc_allocWithZone(MTLFunctionConstantValues) init];
  if (v518 < -32768)
  {
    goto LABEL_399;
  }

  if (v518 >= 0x8000)
  {
LABEL_400:
    __break(1u);
LABEL_401:
    v406 = v287;
    swift_unknownObjectRelease();
    v407 = sub_1000E92E4();

    v469 = v407;
    goto LABEL_396;
  }

  v298 = v297;
  LOWORD(v567[0]) = v518;
  v140 = &stru_10012CFF8.name;
  [v297 setConstantValue:v567 type:37 atIndex:0];
  LOBYTE(v567[0]) = 0;
  [v298 setConstantValue:v567 type:53 atIndex:2];
  LOBYTE(v567[0]) = 1;
  [v298 setConstantValue:v567 type:53 atIndex:3];
  [v24 setConstantValues:v298];

  *&v567[0] = 0;
  v299 = [v461 newFunctionWithDescriptor:v24 error:v567];
  v287 = *&v567[0];
  if (!v299 || (v300 = v299, v301 = *&v567[0], v302 = v532, [v532 setFragmentFunction:v300], swift_unknownObjectRelease(), v303 = sub_1000E98E4(), objc_msgSend(v302, "setLabel:", v303), v303, v304 = objc_msgSend(v461, "device"), *&v567[0] = 0, v305 = objc_msgSend(v304, "newRenderPipelineStateWithDescriptor:error:", v302, v567), swift_unknownObjectRelease(), v287 = *&v567[0], !v305))
  {
LABEL_321:
    v322 = v287;
    v323 = sub_1000E92E4();

    v469 = v323;
    swift_willThrow();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1000047C4(&v563, &unk_100133DC0);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    LODWORD(v534) = 0;
    LODWORD(v533) = 0;
    LODWORD(v530) = 0;
    LODWORD(v532) = 0;
    LODWORD(v531) = 0;
    v19 = 1;
    v20 = 1;
    v21 = 1;
    v22 = 1;
    v23 = 1;
    LODWORD(v24) = 1;
    LODWORD(isa) = 1;
    goto LABEL_141;
  }

  v306 = *&v567[0];

  v535[33] = v305;
  if (v534 == 1)
  {
    v307 = 12;
  }

  else
  {
    v307 = 8;
  }

  if (v534 == 1)
  {
    v308 = 180;
  }

  else
  {
    v308 = 120;
  }

  v309 = v469;
  v175 = sub_100032D44(1065353216, 7, 0, v308, 1, v307, v462, 50.0, 100.0);
  v469 = v309;
  if (v309)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1000047C4(&v563, &unk_100133DC0);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    LODWORD(v534) = 0;
    LODWORD(v533) = 0;
    LODWORD(v532) = 0;
    LODWORD(v531) = 0;
    v19 = 1;
    v20 = 1;
    v21 = 1;
    v22 = 1;
    v23 = 1;
    LODWORD(v24) = 1;
    LODWORD(isa) = 1;
    LODWORD(v530) = 1;
    goto LABEL_141;
  }

LABEL_324:
  v326 = v535;
  v535[20] = v175;
  v326[21] = v176;
  v326[22] = v177;
  KeyPath = &stru_10012CFF8.name;
  v326[23] = [v175 length] / 12;
  v326[24] = [v326[22] length] / 2;
  v534 = [v326[20] length];
  if (!*(v531 + 16))
  {
    __break(1u);
LABEL_426:
    __break(1u);
    goto LABEL_427;
  }

  v327 = v469;
  sub_100034308(160, 5uLL, v462, *(v531 + 176), *(v531 + 176) + 2.0, *(v531 + 180), *(v531 + 184), -1.8, 1.0);
  v469 = v327;
  if (v327)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1000047C4(&v563, &unk_100133DC0);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    LODWORD(v533) = 0;
    LODWORD(v532) = 0;
    LODWORD(v531) = 0;
    v19 = 1;
    v20 = 1;
    v21 = 1;
    LODWORD(v534) = 1;
    v22 = 1;
    goto LABEL_343;
  }

LABEL_328:
  v328 = v535;
  v535[26] = v185;
  v328[27] = v186;
  v328[28] = v187;
  v328[29] = [v187 *(KeyPath + 2080)] / 2;
  swift_getKeyPath();
  v329 = v531;
  sub_1000E1A24(v531);

  KeyPath = swift_getKeyPath();
  sub_1000E1A24(v329);

  v24 = v551;
  *&v520 = v557;
  v330 = v551 + v557;
  if (__OFADD__(v551, v557))
  {
    goto LABEL_426;
  }

  v98 = __OFADD__(v330, v526);
  v331 = v330 + v526;
  if (v98)
  {
LABEL_427:
    __break(1u);
    goto LABEL_428;
  }

  v98 = __OFADD__(v331, v521);
  v332 = v331 + v521;
  if (v98)
  {
LABEL_428:
    __break(1u);
    goto LABEL_429;
  }

  p_name = v553 + v554;
  if (__OFADD__(v553, v554))
  {
LABEL_429:
    __break(1u);
    goto LABEL_430;
  }

  *&v526 = v559 + v560;
  if (__OFADD__(v559, v560))
  {
LABEL_430:
    __break(1u);
    goto LABEL_431;
  }

  v333 = p_name + v526;
  if (__OFADD__(p_name, v526))
  {
LABEL_431:
    __break(1u);
    goto LABEL_432;
  }

  v98 = __OFADD__(v333, v522);
  v334 = v333 + v522;
  if (v98)
  {
LABEL_432:
    __break(1u);
    goto LABEL_433;
  }

  v98 = __OFADD__(v334, v518);
  v335 = v334 + v518;
  if (v98)
  {
LABEL_433:
    __break(1u);
LABEL_434:
    __break(1u);
    goto LABEL_435;
  }

  if (v335 > v332)
  {
    v332 = v335;
  }

  if (v332 > 0xFFFFFFFFFFFFFFLL)
  {
    goto LABEL_434;
  }

  if (v332 <= 1)
  {
    v332 = 1;
  }

  v336 = v332 << 7;
  *&v522 = sub_1000125FC(&qword_100133DD0);
  v337 = swift_allocObject();
  v86 = v462;
  swift_unknownObjectRetain();
  v338 = v337;
  v339 = v469;
  v139 = sub_1000B8C98(10, v338, v86, v336);
  v469 = v339;
  if (!v339)
  {
LABEL_348:
    v340 = v139;
    swift_unknownObjectRelease();
    v535[35] = v340;
    v238 = v552;
    *&v517 = v558;
    v341 = v552 + v558;
    if (__OFADD__(v552, v558))
    {
      __break(1u);
    }

    else
    {
      v98 = __OFADD__(v341, v540);
      v342 = v341 + v540;
      if (!v98)
      {
        v98 = __OFADD__(v342, v546);
        v343 = v342 + v546;
        if (!v98)
        {
          *&v521 = v555 + v556;
          if (!__OFADD__(v555, v556))
          {
            *&v518 = v561 + v562;
            if (!__OFADD__(v561, v562))
            {
              v344 = v521 + v518;
              if (!__OFADD__(v521, v518))
              {
                v345 = v543 + v544;
                if (!__OFADD__(v543, v544))
                {
                  v98 = __OFADD__(v344, v345);
                  v346 = v344 + v345;
                  if (!v98)
                  {
                    v347 = v549 + v550;
                    if (!__OFADD__(v549, v550))
                    {
                      v98 = __OFADD__(v346, v347);
                      v348 = v346 + v347;
                      if (!v98)
                      {
                        if (v348 > v343)
                        {
                          v343 = v348;
                        }

                        if (v343 <= 0xFFFFFFFFFFFFFFLL)
                        {
                          if (v343 <= 1)
                          {
                            v343 = 1;
                          }

                          v349 = v343 << 7;
                          v350 = swift_allocObject();
                          v86 = v462;
                          swift_unknownObjectRetain();
                          v351 = v350;
                          v352 = v469;
                          v248 = sub_1000B8ECC(10, v351, v86, v349);
                          v469 = v352;
                          if (v352)
                          {
                            swift_unknownObjectRelease();
                            swift_unknownObjectRelease();
                            swift_unknownObjectRelease();

                            swift_unknownObjectRelease();
                            swift_unknownObjectRelease();
                            swift_unknownObjectRelease_n();
                            swift_unknownObjectRelease();
                            swift_unknownObjectRelease();
                            swift_unknownObjectRelease();
                            swift_unknownObjectRelease();
                            sub_1000047C4(&v563, &unk_100133DC0);

                            swift_unknownObjectRelease();
                            LODWORD(v531) = 0;
                            v19 = 1;
                            v20 = 1;
                            v21 = 1;
                            LODWORD(v534) = 1;
                            v22 = 1;
                            LODWORD(v533) = 1;
                            v23 = 1;
                            LODWORD(v24) = 1;
                            LODWORD(isa) = 1;
                            LODWORD(v530) = 1;
                            LODWORD(v532) = 1;
                            goto LABEL_141;
                          }

LABEL_368:
                          v353 = v248;
                          swift_unknownObjectRelease();
                          v535[36] = v353;
                          sub_1000125FC(&unk_100133DD8);
                          *&v516 = swift_allocObject();
                          *(v516 + 16) = xmmword_1000EC880;
                          *&v519 = [objc_allocWithZone(MTLFunctionDescriptor) init];
                          if (v530)
                          {
                            sub_1000125FC(&qword_1001303F0);
                            v354 = swift_allocObject();
                            *(v354 + 16) = xmmword_1000EC860;
                            *(v354 + 32) = v530;
                            swift_unknownObjectRetain_n();
                            sub_1000125FC(&qword_100133DE8);
                            v86 = sub_1000E9A74().super.isa;

                            [v519 setBinaryArchives:v86];
                            swift_unknownObjectRelease();
                          }

                          v355 = sub_1000E98E4();
                          [v519 setName:v355];

                          v356 = [objc_allocWithZone(MTLFunctionConstantValues) init];
                          if (v238 < -32768)
                          {
                            __break(1u);
                          }

                          else if (v238 < 0x8000)
                          {
                            v357 = v356;
                            LOWORD(v567[0]) = v238;
                            [v356 setConstantValue:v567 type:37 atIndex:1];
                            v358 = v519;
                            [v519 setConstantValues:v357];

                            *&v567[0] = 0;
                            v359 = [v461 newFunctionWithDescriptor:v358 error:v567];
                            v360 = *&v567[0];
                            if (!v359)
                            {
                              goto LABEL_388;
                            }

                            v361 = v359;
                            v362 = *&v567[0];
                            [v532 setVertexFunction:v361];
                            swift_unknownObjectRelease();
                            *&v515 = "background fading";
                            v363 = sub_1000E98E4();
                            [v519 setName:v363];

                            v364 = [objc_allocWithZone(MTLFunctionConstantValues) init];
                            if (v24 < -32768)
                            {
                              __break(1u);
                            }

                            else if (v24 < 0x8000)
                            {
                              v365 = v364;
                              LOWORD(v567[0]) = v24;
                              [v364 v140[226]];
                              LOBYTE(v567[0]) = 1;
                              [v365 v140[226]];
                              LOBYTE(v567[0]) = 0;
                              [v365 v140[226]];
                              v366 = v519;
                              [v519 setConstantValues:v365];

                              *&v567[0] = 0;
                              v367 = [v461 newFunctionWithDescriptor:v366 error:v567];
                              v360 = *&v567[0];
                              if (v367)
                              {
                                v368 = v367;
                                v369 = *&v567[0];
                                v370 = v532;
                                [v532 setFragmentFunction:v368];
                                swift_unknownObjectRelease();
                                *&v513 = v137 - 10;
                                v371 = sub_1000E98E4();
                                [v370 setLabel:v371];

                                v372 = [v461 device];
                                *&v567[0] = 0;
                                v373 = [v372 newRenderPipelineStateWithDescriptor:v370 error:v567];
                                swift_unknownObjectRelease();
                                *&v514 = v373;
                                if (v373)
                                {
                                  v374 = *&v567[0];

                                  v24 = [objc_allocWithZone(MTLFunctionDescriptor) init];
                                  if (v530)
                                  {
                                    sub_1000125FC(&qword_1001303F0);
                                    v375 = swift_allocObject();
                                    *(v375 + 16) = xmmword_1000EC860;
                                    *(v375 + 32) = v530;
                                    swift_unknownObjectRetain_n();
                                    sub_1000125FC(&qword_100133DE8);
                                    v376 = sub_1000E9A74().super.isa;

                                    [v24 setBinaryArchives:v376];
                                    swift_unknownObjectRelease();
                                  }

                                  v377 = sub_1000E98E4();
                                  [v24 setName:v377];

                                  v378 = [objc_allocWithZone(MTLFunctionConstantValues) init];
                                  if (v521 >= -32768)
                                  {
                                    if (v521 < 0x8000)
                                    {
                                      v379 = v378;
                                      LOWORD(v567[0]) = v521;
                                      [v378 setConstantValue:v567 type:37 atIndex:1];
                                      [v24 setConstantValues:v379];

                                      *&v567[0] = 0;
                                      v380 = [v461 newFunctionWithDescriptor:v24 error:v567];
                                      v276 = *&v567[0];
                                      if (!v380)
                                      {
                                        goto LABEL_395;
                                      }

                                      v381 = v380;
                                      v382 = *&v567[0];
                                      [v532 setVertexFunction:v381];
                                      swift_unknownObjectRelease();
                                      v383 = sub_1000E98E4();
                                      [v24 setName:v383];

                                      v384 = [objc_allocWithZone(MTLFunctionConstantValues) init];
                                      if (p_name >= -32768)
                                      {
                                        if (p_name < 0x8000)
                                        {
                                          v385 = v384;
                                          LOWORD(v567[0]) = p_name;
                                          [v384 v140[226]];
                                          LOBYTE(v567[0]) = 1;
                                          [v385 v140[226]];
                                          LOBYTE(v567[0]) = 1;
                                          [v385 v140[226]];
                                          [v24 setConstantValues:v385];

                                          *&v567[0] = 0;
                                          v386 = [v461 newFunctionWithDescriptor:v24 error:v567];
                                          v276 = *&v567[0];
                                          if (v386)
                                          {
                                            v387 = v386;
                                            v388 = *&v567[0];
                                            v389 = v532;
                                            [v532 setFragmentFunction:v387];
                                            swift_unknownObjectRelease();
                                            v390 = sub_1000E98E4();
                                            [v389 setLabel:v390];

                                            v391 = [v461 device];
                                            *&v567[0] = 0;
                                            v392 = [v391 newRenderPipelineStateWithDescriptor:v389 error:v567];
                                            swift_unknownObjectRelease();
                                            v287 = *&v567[0];
                                            if (v392)
                                            {
                                              v393 = *&v567[0];

                                              v394 = swift_getKeyPath();
                                              v395 = swift_allocObject();
                                              v396 = v462;
                                              swift_unknownObjectRetain();
                                              v397 = v395;
                                              v398 = v469;
                                              v399 = sub_1000B911C(10, v397, v396, v534);
                                              v469 = v398;
                                              if (v398)
                                              {

                                                swift_unknownObjectRelease();
                                                swift_unknownObjectRelease();
                                                swift_unknownObjectRelease();
                                                swift_unknownObjectRelease();
                                                swift_unknownObjectRelease();
                                                sub_1000047C4(&v563, &unk_100133DC0);
                                                swift_unknownObjectRelease();
                                                swift_unknownObjectRelease();

                                                swift_unknownObjectRelease();
                                                swift_unknownObjectRelease();
LABEL_391:
                                                swift_unknownObjectRelease();
                                                swift_unknownObjectRelease();
                                                swift_unknownObjectRelease();
                                                swift_unknownObjectRelease();
                                                swift_unknownObjectRelease();
                                                *(v516 + 16) = 0;

LABEL_392:

                                                v19 = 1;
                                                v20 = 1;
                                                v21 = 1;
                                                LODWORD(v534) = 1;
                                                v22 = 1;
                                                LODWORD(v533) = 1;
                                                v23 = 1;
                                                LODWORD(v24) = 1;
                                                LODWORD(isa) = 1;
                                                LODWORD(v530) = 1;
                                                LODWORD(v532) = 1;
                                                LODWORD(v531) = 1;
                                                goto LABEL_141;
                                              }

                                              v408 = v399;
                                              swift_unknownObjectRelease();
                                              v409 = v536[0];
                                              v410 = v536[1];
                                              v411 = v516;
                                              *(v516 + 32) = 0;
                                              v411[5] = v514;
                                              v411[6] = v392;
                                              v411[7] = v394;
                                              v411[8] = v408;
                                              v411[9] = v409;
                                              v411[10] = v410;
                                              v412 = objc_allocWithZone(MTLFunctionDescriptor);
                                              *&v521 = v409;
                                              swift_unknownObjectRetain();
                                              *&v519 = v410;
                                              swift_unknownObjectRetain();
                                              v24 = [v412 init];
                                              if (v530)
                                              {
                                                sub_1000125FC(&qword_1001303F0);
                                                v413 = swift_allocObject();
                                                *(v413 + 16) = xmmword_1000EC860;
                                                *(v413 + 32) = v530;
                                                swift_unknownObjectRetain_n();
                                                sub_1000125FC(&qword_100133DE8);
                                                v414 = sub_1000E9A74().super.isa;

                                                [v24 setBinaryArchives:v414];
                                                swift_unknownObjectRelease();
                                              }

                                              v415 = sub_1000E98E4();
                                              [v24 setName:v415];

                                              result = [objc_allocWithZone(MTLFunctionConstantValues) init];
                                              if (v517 < -32768)
                                              {
                                                goto LABEL_462;
                                              }

                                              if (v517 >= 0x8000)
                                              {
LABEL_463:
                                                __break(1u);
                                              }

                                              else
                                              {
                                                v416 = result;
                                                LOWORD(v567[0]) = v517;
                                                [result setConstantValue:v567 type:37 atIndex:1];
                                                [v24 setConstantValues:v416];

                                                *&v567[0] = 0;
                                                v417 = [v461 newFunctionWithDescriptor:v24 error:v567];
                                                v226 = *&v567[0];
                                                if (!v417)
                                                {
                                                  goto LABEL_423;
                                                }

                                                v418 = v417;
                                                v419 = *&v567[0];
                                                [v532 setVertexFunction:v418];
                                                swift_unknownObjectRelease();
                                                v420 = sub_1000E98E4();
                                                [v24 setName:v420];

                                                result = [objc_allocWithZone(MTLFunctionConstantValues) init];
                                                if (v520 >= -32768)
                                                {
                                                  if (v520 < 0x8000)
                                                  {
                                                    v421 = result;
                                                    LOWORD(v567[0]) = v520;
                                                    [result setConstantValue:v567 type:37 atIndex:0];
                                                    LOBYTE(v567[0]) = 0;
                                                    [v421 setConstantValue:v567 type:53 atIndex:2];
                                                    LOBYTE(v567[0]) = 0;
                                                    [v421 setConstantValue:v567 type:53 atIndex:3];
                                                    [v24 setConstantValues:v421];

                                                    *&v567[0] = 0;
                                                    v422 = [v461 newFunctionWithDescriptor:v24 error:v567];
                                                    v226 = *&v567[0];
                                                    if (v422)
                                                    {
                                                      v423 = v422;
                                                      v424 = *&v567[0];
                                                      v425 = v532;
                                                      [v532 setFragmentFunction:v423];
                                                      swift_unknownObjectRelease();
                                                      v426 = sub_1000E98E4();
                                                      [v425 setLabel:v426];

                                                      v427 = [v461 device];
                                                      *&v567[0] = 0;
                                                      v428 = [v427 newRenderPipelineStateWithDescriptor:v425 error:v567];
                                                      swift_unknownObjectRelease();
                                                      *&v520 = v428;
                                                      if (!v428)
                                                      {
                                                        v452 = *&v567[0];
                                                        goto LABEL_437;
                                                      }

                                                      v429 = *&v567[0];

                                                      v24 = [objc_allocWithZone(MTLFunctionDescriptor) init];
                                                      if (v530)
                                                      {
                                                        sub_1000125FC(&qword_1001303F0);
                                                        v430 = swift_allocObject();
                                                        *(v430 + 16) = xmmword_1000EC860;
                                                        *(v430 + 32) = v530;
                                                        swift_unknownObjectRetain_n();
                                                        sub_1000125FC(&qword_100133DE8);
                                                        v431 = sub_1000E9A74().super.isa;

                                                        [v24 setBinaryArchives:v431];
                                                        swift_unknownObjectRelease();
                                                      }

                                                      v432 = sub_1000E98E4();
                                                      [v24 setName:v432];

                                                      result = [objc_allocWithZone(MTLFunctionConstantValues) init];
                                                      if (v518 >= -32768)
                                                      {
                                                        if (v518 < 0x8000)
                                                        {
                                                          v433 = result;
                                                          LOWORD(v567[0]) = v518;
                                                          [result setConstantValue:v567 type:37 atIndex:1];
                                                          [v24 setConstantValues:v433];

                                                          *&v567[0] = 0;
                                                          v434 = [v461 newFunctionWithDescriptor:v24 error:v567];
                                                          KeyPath = *&v567[0];
                                                          if (v434)
                                                          {
                                                            v435 = v434;
                                                            v436 = *&v567[0];
                                                            [v532 setVertexFunction:v435];
                                                            swift_unknownObjectRelease();
                                                            v437 = sub_1000E98E4();
                                                            [v24 setName:v437];

                                                            result = [objc_allocWithZone(MTLFunctionConstantValues) init];
                                                            if (v526 >= -32768)
                                                            {
                                                              if (v526 < 0x8000)
                                                              {
                                                                v438 = result;
                                                                LOWORD(v567[0]) = v526;
                                                                [result setConstantValue:v567 type:37 atIndex:0];
                                                                LOBYTE(v567[0]) = 0;
                                                                [v438 setConstantValue:v567 type:53 atIndex:2];
                                                                LOBYTE(v567[0]) = 1;
                                                                [v438 setConstantValue:v567 type:53 atIndex:3];
                                                                [v24 setConstantValues:v438];

                                                                *&v567[0] = 0;
                                                                v439 = [v461 newFunctionWithDescriptor:v24 error:v567];
                                                                KeyPath = *&v567[0];
                                                                if (v439)
                                                                {
                                                                  v440 = v439;
                                                                  v441 = *&v567[0];
                                                                  v442 = v532;
                                                                  [v532 setFragmentFunction:v440];
                                                                  swift_unknownObjectRelease();
                                                                  v443 = sub_1000E98E4();
                                                                  [v442 setLabel:v443];

                                                                  v444 = [v461 device];
                                                                  *&v567[0] = 0;
                                                                  v355 = [v444 newRenderPipelineStateWithDescriptor:v442 error:v567];
                                                                  swift_unknownObjectRelease();
                                                                  v86 = *&v567[0];
                                                                  if (v355)
                                                                  {
                                                                    v445 = *&v567[0];

                                                                    v86 = swift_getKeyPath();
                                                                    v446 = swift_allocObject();
                                                                    v447 = v462;
                                                                    swift_unknownObjectRetain();
                                                                    v448 = v446;
                                                                    v449 = v469;
                                                                    v356 = sub_1000B92F4(10, v448, v447, v534);
                                                                    v469 = v449;
                                                                    if (v449)
                                                                    {
                                                                      swift_unknownObjectRelease();
                                                                      swift_unknownObjectRelease();
                                                                      swift_unknownObjectRelease();
                                                                      swift_unknownObjectRelease();
                                                                      swift_unknownObjectRelease();

                                                                      swift_unknownObjectRelease();
                                                                      swift_unknownObjectRelease();
                                                                      swift_unknownObjectRelease();
                                                                      swift_unknownObjectRelease();
                                                                      swift_unknownObjectRelease();
                                                                      swift_unknownObjectRelease();
                                                                      sub_1000047C4(&v563, &unk_100133DC0);
                                                                      swift_unknownObjectRelease();
                                                                      swift_unknownObjectRelease();

LABEL_439:
                                                                      swift_unknownObjectRelease();
                                                                      v454 = v516;

                                                                      swift_unknownObjectRelease();
                                                                      swift_unknownObjectRelease();
                                                                      swift_unknownObjectRelease();
                                                                      swift_unknownObjectRelease();
                                                                      *(v454 + 16) = 0;

                                                                      goto LABEL_392;
                                                                    }

LABEL_454:
                                                                    v455 = v356;
                                                                    swift_unknownObjectRelease();
                                                                    v456 = v536[2];
                                                                    v457 = v516;
                                                                    *(v516 + 88) = 1;
                                                                    v457[12] = v520;
                                                                    v457[13] = v355;
                                                                    v457[14] = v86;
                                                                    v457[15] = v455;
                                                                    v457[16] = 0;
                                                                    v457[17] = v456;
                                                                    swift_unknownObjectRelease();
                                                                    swift_unknownObjectRelease();
                                                                    swift_unknownObjectRelease();
                                                                    swift_unknownObjectRelease();
                                                                    swift_unknownObjectRelease();
                                                                    swift_unknownObjectRelease();

                                                                    swift_unknownObjectRelease();
                                                                    swift_unknownObjectRelease();
                                                                    sub_1000047C4(&v563, &unk_100133DC0);
                                                                    swift_unknownObjectRelease();
                                                                    swift_unknownObjectRelease();
                                                                    v115 = v535;
                                                                    v535[37] = v457;

                                                                    return v115;
                                                                  }

                                                                  goto LABEL_451;
                                                                }

                                                                goto LABEL_435;
                                                              }

LABEL_469:
                                                              __break(1u);
                                                              return result;
                                                            }

LABEL_468:
                                                            __break(1u);
                                                            goto LABEL_469;
                                                          }

LABEL_435:
                                                          v452 = KeyPath;
                                                          swift_unknownObjectRelease();
LABEL_437:
                                                          v453 = sub_1000E92E4();

                                                          v469 = v453;
                                                          goto LABEL_438;
                                                        }

LABEL_467:
                                                        __break(1u);
                                                        goto LABEL_468;
                                                      }

LABEL_466:
                                                      __break(1u);
                                                      goto LABEL_467;
                                                    }

LABEL_423:
                                                    v450 = v226;
LABEL_424:
                                                    v451 = sub_1000E92E4();

                                                    v469 = v451;
LABEL_438:
                                                    swift_willThrow();
                                                    swift_unknownObjectRelease();
                                                    swift_unknownObjectRelease();
                                                    swift_unknownObjectRelease();
                                                    swift_unknownObjectRelease();

                                                    swift_unknownObjectRelease();
                                                    swift_unknownObjectRelease();
                                                    swift_unknownObjectRelease();
                                                    swift_unknownObjectRelease();
                                                    swift_unknownObjectRelease();
                                                    sub_1000047C4(&v563, &unk_100133DC0);

                                                    swift_unknownObjectRelease();
                                                    goto LABEL_439;
                                                  }

LABEL_465:
                                                  __break(1u);
                                                  goto LABEL_466;
                                                }
                                              }

                                              __break(1u);
                                              goto LABEL_465;
                                            }

                                            goto LABEL_401;
                                          }

LABEL_395:
                                          v402 = v276;
                                          swift_unknownObjectRelease();
                                          v403 = sub_1000E92E4();

                                          v469 = v403;
LABEL_396:
                                          swift_willThrow();
                                          swift_unknownObjectRelease();

                                          swift_unknownObjectRelease();
                                          swift_unknownObjectRelease();
                                          swift_unknownObjectRelease();
                                          swift_unknownObjectRelease();
                                          sub_1000047C4(&v563, &unk_100133DC0);

                                          goto LABEL_390;
                                        }

LABEL_460:
                                        __break(1u);
                                        goto LABEL_461;
                                      }

LABEL_459:
                                      __break(1u);
                                      goto LABEL_460;
                                    }

LABEL_458:
                                    __break(1u);
                                    goto LABEL_459;
                                  }

LABEL_457:
                                  __break(1u);
                                  goto LABEL_458;
                                }

                                v404 = *&v567[0];
                                v405 = sub_1000E92E4();

                                v469 = v405;
LABEL_389:
                                swift_willThrow();
                                swift_unknownObjectRelease();

                                swift_unknownObjectRelease();
                                swift_unknownObjectRelease();
                                swift_unknownObjectRelease();
                                swift_unknownObjectRelease();
                                sub_1000047C4(&v563, &unk_100133DC0);

LABEL_390:
                                swift_unknownObjectRelease();
                                goto LABEL_391;
                              }

LABEL_388:
                              v400 = v360;
                              v401 = sub_1000E92E4();

                              v469 = v401;
                              goto LABEL_389;
                            }

                            __break(1u);
                            goto LABEL_457;
                          }

                          __break(1u);
                          goto LABEL_454;
                        }

LABEL_450:
                        __break(1u);
LABEL_451:
                        v450 = v86;
                        swift_unknownObjectRelease();
                        goto LABEL_424;
                      }

LABEL_449:
                      __break(1u);
                      goto LABEL_450;
                    }

LABEL_448:
                    __break(1u);
                    goto LABEL_449;
                  }

LABEL_447:
                  __break(1u);
                  goto LABEL_448;
                }

LABEL_446:
                __break(1u);
                goto LABEL_447;
              }

LABEL_445:
              __break(1u);
              goto LABEL_446;
            }

LABEL_444:
            __break(1u);
            goto LABEL_445;
          }

LABEL_443:
          __break(1u);
          goto LABEL_444;
        }

LABEL_442:
        __break(1u);
        goto LABEL_443;
      }
    }

    __break(1u);
    goto LABEL_442;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease_n();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1000047C4(&v563, &unk_100133DC0);

  swift_unknownObjectRelease();
  LODWORD(v532) = 0;
  LODWORD(v531) = 0;
  v19 = 1;
  v20 = 1;
  v21 = 1;
  LODWORD(v534) = 1;
  v22 = 1;
  LODWORD(v533) = 1;
LABEL_343:
  v23 = 1;
  LODWORD(v24) = 1;
  LODWORD(isa) = 1;
  LODWORD(v530) = 1;
LABEL_141:
  v3 = v535;
  swift_unknownObjectRelease();
LABEL_142:
  sub_1000056DC(v3[5]);
  v113 = *(v467 + 3);
  v567[2] = *(v467 + 2);
  v567[3] = v113;
  *&v567[4] = v467[8];
  v114 = *v467;
  v567[1] = *(v467 + 1);
  v567[0] = v114;
  sub_1000047C4(v567, &qword_100133DA8);
  if (v19)
  {

    if (!v20)
    {
      goto LABEL_144;
    }

LABEL_158:
    swift_unknownObjectRelease();

    if (!v21)
    {
      goto LABEL_159;
    }

LABEL_145:
    swift_unknownObjectRelease();
    if (!v534)
    {
      goto LABEL_146;
    }

LABEL_160:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (!v22)
    {
      goto LABEL_161;
    }

LABEL_147:
    swift_unknownObjectRelease();
    if (!v533)
    {
      goto LABEL_148;
    }

LABEL_162:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (!v23)
    {
      goto LABEL_163;
    }

LABEL_149:
    swift_unknownObjectRelease();
    v115 = v535;
    if (!v24)
    {
      goto LABEL_150;
    }

LABEL_164:
    swift_unknownObjectRelease();
    if (!isa)
    {
      goto LABEL_165;
    }

LABEL_151:
    swift_unknownObjectRelease();
    if (!v530)
    {
      goto LABEL_152;
    }

LABEL_166:
    swift_unknownObjectRelease();
    if (!v19)
    {
      goto LABEL_167;
    }

LABEL_153:
    swift_unknownObjectRelease();
    if (!v532)
    {
      goto LABEL_154;
    }

LABEL_168:

    if (!v531)
    {
      goto LABEL_169;
    }

LABEL_155:

    if (!v466)
    {
      goto LABEL_171;
    }

LABEL_170:

    goto LABEL_171;
  }

  if (v20)
  {
    goto LABEL_158;
  }

LABEL_144:
  if (v21)
  {
    goto LABEL_145;
  }

LABEL_159:
  if (v534)
  {
    goto LABEL_160;
  }

LABEL_146:
  if (v22)
  {
    goto LABEL_147;
  }

LABEL_161:
  if (v533)
  {
    goto LABEL_162;
  }

LABEL_148:
  if (v23)
  {
    goto LABEL_149;
  }

LABEL_163:
  v115 = v535;
  if (v24)
  {
    goto LABEL_164;
  }

LABEL_150:
  if (isa)
  {
    goto LABEL_151;
  }

LABEL_165:
  if (v530)
  {
    goto LABEL_166;
  }

LABEL_152:
  if (v19)
  {
    goto LABEL_153;
  }

LABEL_167:
  if (v532)
  {
    goto LABEL_168;
  }

LABEL_154:
  if (v531)
  {
    goto LABEL_155;
  }

LABEL_169:
  if (v466)
  {
    goto LABEL_170;
  }

LABEL_171:
  type metadata accessor for SpaceRenderer();
  swift_deallocPartialClassInstance();
  return v115;
}

uint64_t sub_1000D9D20@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v2 = *(a1 + 176);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v30 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v8;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v8 << 6);
    v12 = *(v2 + 48) + 24 * v11;
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v2 + 56) + 192 * v11;
    v16 = *v15;
    v17 = *(v15 + 16);
    v18 = *(v15 + 48);
    v19 = *(v12 + 16);
    v34 = *(v15 + 32);
    v35 = v18;
    v32 = v16;
    v33 = v17;
    v20 = *(v15 + 64);
    v21 = *(v15 + 80);
    v22 = *(v15 + 112);
    v38 = *(v15 + 96);
    v39 = v22;
    v36 = v20;
    v37 = v21;
    v23 = *(v15 + 128);
    v24 = *(v15 + 144);
    v25 = *(v15 + 160);
    v43 = *(v15 + 176);
    v41 = v24;
    v42 = v25;
    v40 = v23;
    v44[0] = v13;
    v44[1] = v14;
    v45 = v19;
    v57 = v43;
    v55 = v24;
    v56 = v25;
    v53 = v22;
    v54 = v23;
    v51 = v37;
    v52 = v38;
    v49 = v35;
    v50 = v36;
    v47 = v33;
    v48 = v34;
    v46 = v32;
    sub_1000B89BC(&v32, v31);
    sub_1000A1DD4(v13, v14, v19);
    result = sub_1000047C4(v44, &unk_100133E00);
    v26 = BYTE8(v38);
    if (BYTE8(v38) - 9 > 4)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1000A37D0(0, *(v30 + 2) + 1, 1, v30);
        v30 = result;
      }

      v28 = *(v30 + 2);
      v27 = *(v30 + 3);
      if (v28 >= v27 >> 1)
      {
        result = sub_1000A37D0((v27 > 1), v28 + 1, 1, v30);
        v30 = result;
      }

      *(v30 + 2) = v28 + 1;
      v30[v28 + 32] = v26;
    }
  }

  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      *a2 = v30;
      return result;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v9;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D9F58(uint64_t a1)
{
  __chkstk_darwin(a1);
  LOBYTE(v3) = v2;
  LOBYTE(v5) = v4;
  isUniquelyReferenced_nonNull_native = v1;
  v7 = v8;
  LODWORD(v8) = v2;
  if (v2 <= 3u)
  {
    goto LABEL_28;
  }

  if (v2 <= 5u)
  {
    goto LABEL_45;
  }

  if (v2 == 6)
  {
    goto LABEL_30;
  }

  if (v2 == 7)
  {
    goto LABEL_5;
  }

  v10 = *(v1 + 12);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  if (*(v1 + 52))
  {
    v13 = *(v1 + 48);
    v15 = *(v1 + 32);
    v14 = *(v1 + 40);

    v16 = sub_1000C5334(v11, v12);
    if (v16 == 8)
    {

      goto LABEL_17;
    }

    v18 = v16;
    v19 = sub_1000C5334(v15, v14);
    if (v19 == 8)
    {
LABEL_17:
      i = 0;
      if (v10)
      {
        LOBYTE(v3) = 1;
      }

      else
      {
        LOBYTE(v3) = 3;
      }

      goto LABEL_48;
    }

    if (v10)
    {
      v3 = 0x707060101010000uLL >> (8 * v18);
      v20 = 0x707060101010000uLL >> (8 * v19);
      if (sub_1000A1E68(v3, v20))
      {
        i = qword_1000F5FD8[v3 & 7];
        goto LABEL_48;
      }
    }

    else
    {
      v3 = v18;
      v20 = v19;
    }

    sub_1000D9F58(__src, isUniquelyReferenced_nonNull_native, v5 & 1, v3);
    sub_1000D9F58(__dst, isUniquelyReferenced_nonNull_native, v5 & 1, v20);
    v21 = v556;
    v22 = v557;
    memcpy(v613, __src, 0x208uLL);
    memcpy(v612, __dst, 0x208uLL);
    v23 = 1;
    v24.i32[0] = v13;
    sub_1000BEBB0(v612, 1, v601, v24);
    sub_1000047C4(__dst, &qword_100133DA0);
    result = sub_1000047C4(__src, &qword_100133DA0);
    if (v22)
    {
      i = 0;
    }

    else
    {
      i = v21;
    }

    v543 = v601[30];
    v549 = v601[29];
    v26 = v601[31];
    v27 = *&v601[32];
    v28 = v601[28];
    v29 = v601[27];
    v30 = v601[26];
    v31 = v601[25];
    v32 = v601[23];
    v33 = v601[24];
    v34 = v601[22];
    v35 = v601[21];
    v36 = *&v601[20];
    v37 = DWORD2(v601[20]) | (WORD6(v601[20]) << 32);
    v38 = v601[18];
    v39 = v601[19];
    v40 = *&v601[17];
    v41 = v601[15];
    v42 = v601[16];
    v43 = v601[14];
    v44 = v601[13];
    v45 = v601[12];
    v46 = v601[11];
    v47 = *(&v601[10] + 1);
    v48 = v601[10];
    v49 = v601[8];
    v50 = v601[9];
    v51 = v601[6];
    v52 = *&v601[7];
    v53 = v601[3];
    v54 = v601[4];
    v55 = *&v601[5];
    v56 = DWORD2(v601[5]);
    v57 = v601[0];
    v58 = v601[1];
    v59 = *&v601[2];
    v60 = DWORD2(v601[2]);
LABEL_152:
    *v7 = v57;
    *(v7 + 16) = v58;
    *(v7 + 32) = v59;
    *(v7 + 40) = v60;
    *(v7 + 48) = v53;
    *(v7 + 64) = v54;
    *(v7 + 80) = v55;
    *(v7 + 88) = v56;
    *(v7 + 96) = v51;
    *(v7 + 112) = v52;
    *(v7 + 128) = v49;
    *(v7 + 144) = v50;
    *(v7 + 160) = v48;
    *(v7 + 168) = v47;
    *(v7 + 176) = v46;
    *(v7 + 192) = v45;
    *(v7 + 208) = v44;
    *(v7 + 224) = v43;
    *(v7 + 240) = v41;
    *(v7 + 256) = v42;
    *(v7 + 272) = v40;
    *(v7 + 288) = v38;
    *(v7 + 304) = v39;
    *(v7 + 320) = v36;
    *(v7 + 332) = WORD2(v37);
    *(v7 + 328) = v37;
    *(v7 + 336) = v35;
    *(v7 + 352) = v34;
    *(v7 + 368) = v32;
    *(v7 + 384) = v33;
    *(v7 + 400) = v31;
    *(v7 + 416) = v30;
    *(v7 + 432) = v29;
    *(v7 + 448) = v28;
    *(v7 + 464) = v549;
    *(v7 + 480) = v543;
    *(v7 + 496) = v26;
    *(v7 + 512) = v27;
    *(v7 + 520) = v23;
    *(v7 + 528) = i;
    *(v7 + 536) = 0;
    return result;
  }

  v17 = sub_1000C5334(v11, v12);
  if (v17 == 8)
  {
    if (v11 == 6647407 && v12 == 0xE300000000000000 || (sub_1000E9F74() & 1) != 0)
    {
      i = 0;
      if (v10)
      {
        LOBYTE(v3) = 0;
      }

      else
      {
        LOBYTE(v3) = 2;
      }

      goto LABEL_48;
    }

    if (v11 == 0x6565726874 && v12 == 0xE500000000000000 || (sub_1000E9F74() & 1) != 0)
    {
      i = 0;
      if (v10)
      {
        LOBYTE(v3) = 6;
      }

      else
      {
        LOBYTE(v3) = 4;
      }

      goto LABEL_48;
    }

    if (v11 == 1920298854 && v12 == 0xE400000000000000 || (sub_1000E9F74() & 1) != 0)
    {
      i = 0;
      if (v10)
      {
        LOBYTE(v3) = 7;
      }

      else
      {
        LOBYTE(v3) = 5;
      }

      goto LABEL_48;
    }

    goto LABEL_17;
  }

  LOBYTE(v3) = v17;
  if ((v10 & 1) == 0)
  {
    LODWORD(v8) = v17;
    if (v17 <= 3u)
    {
LABEL_28:
      if (v8 <= 1)
      {
        if (!v8)
        {
          goto LABEL_30;
        }

        goto LABEL_47;
      }

      if (v8 != 2)
      {
        i = 0x3FC999999999999ALL;
        goto LABEL_48;
      }

      goto LABEL_46;
    }

    if (v17 > 5u)
    {
      goto LABEL_159;
    }

LABEL_45:
    if (v8 != 4)
    {
LABEL_47:
      i = 0x3FD851EB851EB852;
      goto LABEL_48;
    }

LABEL_46:
    i = 0x3FD3333333333333;
    goto LABEL_48;
  }

  if (v17 <= 4u)
  {
    if (v17 - 2 >= 3)
    {
      LOBYTE(v3) = 0;
      goto LABEL_30;
    }

    LOBYTE(v3) = 1;
    goto LABEL_47;
  }

  if (v17 - 6 >= 2)
  {
    LOBYTE(v3) = 6;
    goto LABEL_30;
  }

  LOBYTE(v3) = 7;
  for (i = 0x3FE0000000000000; ; i = 0x3FDC28F5C28F5C29)
  {
LABEL_48:
    v61 = *isUniquelyReferenced_nonNull_native;
    v62 = 0.0;
    if (*isUniquelyReferenced_nonNull_native > 0.0)
    {
      v62 = 1.0;
      if (v61 < 1.0)
      {
        v62 = ((v61 * (v61 * v61)) * 10.0) + (((v61 * (v61 * 6.0)) * (v61 * (v61 * v61))) + ((v61 * -15.0) * (v61 * (v61 * v61))));
      }
    }

    v63.n128_f32[0] = WallpaperState.rotationLandscapeAmount.getter();
    v550 = v63;
    if (v5)
    {
      if (v63.n128_f32[0] < 0.0)
      {
        v64 = 0.0;
      }

      else
      {
        v64 = v63.n128_f32[0];
      }

      if (v63.n128_f32[0] >= 1.0)
      {
        v65 = 3.1416;
      }

      else
      {
        v65 = v64 * 3.1416;
      }

      v66 = ((0.5 - (cosf(v65) * 0.5)) * -0.15075) + 0.54439;
      v67 = 0.20938;
    }

    else
    {
      v67 = 0.34624;
      v66 = 0.56221;
    }

    v68 = *(isUniquelyReferenced_nonNull_native + 208);
    v69 = fminf((v68 - v67) / (v66 - v67), 1.0);
    if (v69 < 0.0)
    {
      v69 = 0.0;
    }

    *&v519 = v62;
    v518 = (1.0 - v62) * (v69 * v69);
    if ((v5 & 1) == 0)
    {
      sub_1000C57EC(0, 0, v3, __src);
      v437 = __src[1];
      v441 = __src[0];
      v109 = *&__src[2];
      v110 = DWORD2(__src[2]);
      v445 = __src[4];
      v450 = __src[3];
      v111 = *&__src[5];
      v112 = DWORD2(__src[5]);
      v113 = *&__src[7];
      v455 = __src[6];
      v460 = __src[9];
      v114 = __src[10];
      v115 = *(&__src[10] + 1);
      v465 = __src[8];
      v470 = __src[11];
      v475 = __src[12];
      v480 = __src[13];
      v485 = __src[14];
      v490 = __src[16];
      v116 = *&__src[17];
      v495 = __src[15];
      v500 = __src[19];
      v117 = *&__src[20];
      v118 = WORD6(__src[20]);
      v119 = DWORD2(__src[20]);
      v515 = __src[22];
      v505 = __src[18];
      v510 = __src[24];
      v522 = __src[21];
      v528 = __src[25];
      v534 = __src[23];
      v539 = __src[26];
      v545 = __src[27];
      v551 = __src[28];
      v420 = __src[29];
      v427 = __src[30];
      v432 = __src[31];
      v120 = *&__src[32];
      memcpy(__dst, __src, 0x208uLL);
      if (sub_1000DFDF0(__dst) == 1)
      {
        if (qword_10012F578 != -1)
        {
          swift_once();
        }

        memcpy(v613, &xmmword_10013AA50, 0x208uLL);
        v546 = v613[27];
        v552 = v613[28];
        v535 = v613[23];
        v540 = v613[26];
        v511 = v613[24];
        v516 = v613[22];
        v523 = v613[21];
        v529 = v613[25];
        v117 = *&v613[20];
        v121 = DWORD2(v613[20]) | (WORD6(v613[20]) << 32);
        v501 = v613[19];
        v506 = v613[18];
        v116 = *&v613[17];
        v491 = v613[16];
        v496 = v613[15];
        v481 = v613[13];
        v486 = v613[14];
        v471 = v613[11];
        v476 = v613[12];
        v115 = *(&v613[10] + 1);
        v114 = v613[10];
        v461 = v613[9];
        v466 = v613[8];
        v122 = *&v613[7];
        v451 = v613[3];
        v456 = v613[6];
        v111 = *&v613[5];
        v112 = DWORD2(v613[5]);
        v441 = v613[0];
        v446 = v613[4];
        v109 = *&v613[2];
        v110 = DWORD2(v613[2]);
        v416 = *&v613[32];
        v433 = v613[31];
        v437 = v613[1];
        v421 = v613[29];
        v428 = v613[30];
        sub_1000C6110(v613, v612);
        v124 = v446;
        v123 = v451;
        v126 = v456;
        v125 = v461;
        v128 = v466;
        v127 = v471;
        v130 = v421;
        v129 = v428;
        v132 = v476;
        v131 = v481;
        v133 = v433;
        v135 = v486;
        v134 = v491;
        v137 = v496;
        v136 = v501;
        v139 = v506;
        v138 = v511;
        v141 = v523;
        v140 = v529;
        v142 = v516;
        v144 = v535;
        v143 = v540;
        v146 = v546;
        v145 = v552;
      }

      else
      {
        v121 = v119 | (v118 << 32);
        v146 = v545;
        v145 = v551;
        v144 = v534;
        v143 = v539;
        v141 = v522;
        v140 = v528;
        v138 = v510;
        v142 = v515;
        v136 = v500;
        v139 = v505;
        v134 = v490;
        v137 = v495;
        v131 = v480;
        v135 = v485;
        v127 = v470;
        v132 = v475;
        v125 = v460;
        v128 = v465;
        v123 = v450;
        v126 = v455;
        v124 = v445;
        v129 = v427;
        v133 = v432;
        v130 = v420;
        v416 = v120;
        v122 = v113;
      }

      v598[0] = v441;
      v598[1] = v437;
      *&v598[2] = v109;
      DWORD2(v598[2]) = v110;
      v598[3] = v123;
      v598[4] = v124;
      *&v598[5] = v111;
      DWORD2(v598[5]) = v112;
      v598[6] = v126;
      *&v598[7] = v122;
      v598[8] = v128;
      v598[9] = v125;
      LODWORD(v598[10]) = v114;
      *(&v598[10] + 1) = v115;
      v598[11] = v127;
      v598[12] = v132;
      v598[13] = v131;
      v598[14] = v135;
      v598[15] = v137;
      v598[16] = v134;
      *&v598[17] = v116;
      v598[18] = v139;
      v598[19] = v136;
      *&v598[20] = v117;
      DWORD2(v598[20]) = v121;
      WORD6(v598[20]) = WORD2(v121);
      v598[21] = v141;
      v598[22] = v142;
      v598[23] = v144;
      v598[24] = v138;
      v598[25] = v140;
      v598[26] = v143;
      v598[27] = v146;
      v598[28] = v145;
      v598[29] = v130;
      v598[30] = v129;
      v598[31] = v133;
      *&v598[32] = v416;
      if (v518 <= 0.0)
      {
        sub_1000299EC(__src, v613, &unk_100133DB0);
        v188 = *&v519;
        if (*&v519 <= 0.0)
        {
LABEL_87:
          if (qword_10012F6B0 != -1)
          {
            swift_once();
          }

          v194 = qword_10013DC30;
          v195 = qword_10013DC38;
          v553 = qword_10013DC40;

          goto LABEL_149;
        }
      }

      else
      {
        sub_1000299EC(__src, v613, &unk_100133DB0);
        v188 = *&v519;
        if (qword_10012F6D0 != -1)
        {
          swift_once();
        }

        v187.n128_f32[0] = v518;
        sub_1000BE738(v598, qword_10013DC80, v187);
        if (*&v519 <= 0.0)
        {
          goto LABEL_87;
        }
      }

      v613[0] = v598[29];
      v613[1] = v598[30];
      v613[2] = v598[31];
      *&v613[3] = *&v598[32];
      sub_1000C6180(v613, v612);
      sub_1000BCC80(v598, v188);
      sub_100081544(v613);
      goto LABEL_87;
    }

    sub_1000C57EC(1, 0, v3, v599);
    v348 = v599[1];
    v349 = v599[0];
    v345 = *&v599[2];
    v70 = DWORD2(v599[2]);
    v71 = *&v599[5];
    v72 = DWORD2(v599[5]);
    v478 = v599[6];
    v483 = v599[3];
    v73 = *&v599[7];
    v351 = v599[8];
    v468 = *&v599[9];
    v473 = v599[4];
    v347 = *(&v599[9] + 1);
    v74 = v599[10];
    v350 = *(&v599[10] + 1);
    v448 = v599[12];
    v453 = v599[11];
    v458 = v599[14];
    v463 = v599[15];
    v439 = v599[16];
    v443 = v599[13];
    v75 = *&v599[17];
    v526 = v599[19];
    v532 = v599[18];
    v76 = *&v599[20];
    v77 = WORD6(v599[20]);
    v78 = DWORD2(v599[20]);
    v79 = v599[21];
    v508 = v599[22];
    v513 = v599[23];
    v498 = v599[25];
    v503 = v599[27];
    v488 = v599[24];
    v493 = v599[26];
    v520 = v599[28];
    v435 = v599[30];
    v425 = v599[29];
    v430 = v599[31];
    v80 = *&v599[32];
    memcpy(v613, v599, 0x208uLL);
    if (sub_1000DFDF0(v613) == 1)
    {
      if (qword_10012F5B8 != -1)
      {
LABEL_171:
        swift_once();
      }

      memcpy(__dst, &xmmword_10013BAD0, 0x208uLL);
      v514 = __dst[23];
      v504 = __dst[27];
      v509 = __dst[22];
      v494 = __dst[26];
      v499 = __dst[25];
      v489 = __dst[24];
      v544 = *(&__dst[21] + 1);
      v538 = *&__dst[21];
      v76 = *&__dst[20];
      v81 = DWORD2(__dst[20]) | (WORD6(__dst[20]) << 32);
      v527 = __dst[19];
      v533 = __dst[18];
      v75 = *&__dst[17];
      v459 = __dst[14];
      v464 = __dst[15];
      v440 = __dst[16];
      v444 = __dst[13];
      v449 = __dst[12];
      v454 = __dst[11];
      v350 = *(&__dst[10] + 1);
      v74 = __dst[10];
      v351 = __dst[8];
      v347 = *(&__dst[9] + 1);
      v469 = *&__dst[9];
      v73 = *&__dst[7];
      v479 = __dst[6];
      v484 = __dst[3];
      v474 = __dst[4];
      v71 = *&__dst[5];
      v72 = DWORD2(__dst[5]);
      v348 = __dst[1];
      v349 = __dst[0];
      v82 = *&__dst[2];
      v83 = DWORD2(__dst[2]);
      v84 = *&__dst[32];
      v431 = __dst[31];
      v436 = __dst[30];
      v521 = __dst[28];
      v426 = __dst[29];
      sub_1000C6110(__dst, __src);
      *&v85 = v469;
      v86 = v474;
      v87 = v479;
      v88 = v484;
      v90 = v426;
      v89 = v431;
      v92 = v521;
      v91 = v527;
      v93 = v449;
      v94 = v454;
      v96 = v436;
      v95 = v440;
      v97 = v444;
      v99 = v538;
      v98 = v544;
      v101 = v459;
      v100 = v464;
      v102 = v533;
      v104 = v489;
      v103 = v494;
      v106 = v499;
      v105 = v504;
      v108 = v509;
      v107 = v514;
    }

    else
    {
      v81 = v78 | (v77 << 32);
      v108 = v508;
      v107 = v513;
      v106 = v498;
      v105 = v503;
      v98 = *(&v79 + 1);
      v99 = v79;
      v91 = v526;
      v102 = v532;
      v104 = v488;
      v103 = v493;
      v87 = v478;
      v88 = v483;
      *&v85 = v468;
      v86 = v473;
      v101 = v458;
      v100 = v463;
      v82 = v345;
      v93 = v448;
      v94 = v453;
      v95 = v439;
      v97 = v443;
      v92 = v520;
      v84 = v80;
      v89 = v430;
      v96 = v435;
      v90 = v425;
      v83 = v70;
    }

    v472 = v85;
    *(&v85 + 1) = v347;
    v597[9] = v85;
    v541 = v99;
    v547 = v98;
    *&v147 = v99;
    *(&v147 + 1) = v98;
    v597[21] = v147;
    v597[8] = v351;
    v608 = v90;
    v609 = v96;
    v610 = v89;
    v611 = v84;
    v597[0] = v349;
    v597[1] = v348;
    v346 = v82;
    *&v597[2] = v82;
    v336 = v83;
    v337 = v72;
    DWORD2(v597[2]) = v83;
    v482 = v87;
    v487 = v88;
    v597[3] = v88;
    v477 = v86;
    v597[4] = v86;
    v334 = v71;
    v335 = v73;
    *&v597[5] = v71;
    DWORD2(v597[5]) = v72;
    v597[6] = v87;
    *&v597[7] = v73;
    v338 = v74;
    LODWORD(v597[10]) = v74;
    *(&v597[10] + 1) = v350;
    v452 = v93;
    v457 = v94;
    v597[11] = v94;
    v597[12] = v93;
    v442 = v95;
    v447 = v97;
    v597[13] = v97;
    v462 = v101;
    v467 = v100;
    v597[14] = v101;
    v597[15] = v100;
    v597[16] = v95;
    *&v597[17] = v75;
    v530 = v91;
    v536 = v102;
    v597[18] = v102;
    v597[19] = v91;
    *&v597[20] = v76;
    DWORD2(v597[20]) = v81;
    WORD6(v597[20]) = WORD2(v81);
    v512 = v108;
    v517 = v107;
    v597[22] = v108;
    v597[23] = v107;
    v492 = v104;
    v497 = v103;
    v597[24] = v104;
    v502 = v106;
    v507 = v105;
    v597[25] = v106;
    v597[26] = v103;
    v597[27] = v105;
    v524 = v92;
    v597[28] = v92;
    v429 = v90;
    v434 = v89;
    v597[29] = v90;
    v438 = v96;
    v597[30] = v96;
    v597[31] = v89;
    v339 = v84;
    *&v597[32] = v84;
    memcpy(__dst, v597, 0x208uLL);
    sub_1000299EC(v599, __src, &unk_100133DB0);
    sub_1000C57EC(1, 1, v3, v600);
    v341 = v600[1];
    v342 = v600[0];
    v148 = *&v600[2];
    v149 = DWORD2(v600[2]);
    v364 = v600[4];
    v367 = v600[3];
    v150 = *&v600[5];
    v151 = DWORD2(v600[5]);
    v370 = v600[6];
    v152 = *&v600[7];
    v379 = *&v600[9];
    v343 = v600[8];
    v344 = *(&v600[9] + 1);
    v153 = v600[10];
    v154 = *(&v600[10] + 1);
    v386 = v600[11];
    v389 = v600[12];
    v395 = v600[13];
    v155 = *&v600[17];
    v373 = v600[19];
    v376 = v600[18];
    v156 = *&v600[20];
    v157 = WORD6(v600[20]);
    v158 = DWORD2(v600[20]);
    v159 = v600[21];
    v413 = v600[15];
    v417 = v600[23];
    v398 = v600[22];
    v401 = v600[14];
    v404 = v600[25];
    v407 = v600[16];
    v392 = v600[24];
    v422 = v600[27];
    v410 = v600[26];
    v352 = v600[28];
    v355 = v600[29];
    v358 = v600[30];
    v361 = v600[31];
    v160 = *&v600[32];
    memcpy(v612, v600, 0x208uLL);
    if (sub_1000DFDF0(v612) == 1)
    {
      if (qword_10012F5C8 != -1)
      {
        swift_once();
      }

      memcpy(__src, &xmmword_10013BEF0, 0x208uLL);
      v411 = __src[26];
      v418 = __src[23];
      v423 = __src[27];
      v399 = __src[22];
      v393 = __src[24];
      v384 = *(&__src[21] + 1);
      v382 = *&__src[21];
      v156 = *&__src[20];
      v161 = DWORD2(__src[20]) | (WORD6(__src[20]) << 32);
      v374 = __src[19];
      v377 = __src[18];
      v155 = *&__src[17];
      v414 = __src[15];
      v405 = __src[25];
      v408 = __src[16];
      v402 = __src[14];
      v396 = __src[13];
      v387 = __src[11];
      v390 = __src[12];
      v340 = *(&__src[10] + 1);
      v153 = __src[10];
      v380 = *&__src[9];
      v343 = __src[8];
      v344 = *(&__src[9] + 1);
      v152 = *&__src[7];
      v368 = __src[3];
      v371 = __src[6];
      v150 = *&__src[5];
      v151 = DWORD2(__src[5]);
      v341 = __src[1];
      v342 = __src[0];
      v148 = *&__src[2];
      v162 = DWORD2(__src[2]);
      v160 = *&__src[32];
      v362 = __src[31];
      v365 = __src[4];
      v353 = __src[28];
      v356 = __src[29];
      v359 = __src[30];
      sub_1000C6110(__src, v601);
      *&v163 = v380;
      v164 = v382;
      v166 = v365;
      v165 = v368;
      v168 = v371;
      v167 = v374;
      v170 = v353;
      v169 = v356;
      v171 = v384;
      v172 = v387;
      v174 = v390;
      v173 = v393;
      v176 = v359;
      v175 = v362;
      v178 = v396;
      v177 = v399;
      v180 = v402;
      v179 = v405;
      v182 = v414;
      v181 = v418;
      v184 = v408;
      v183 = v411;
      v185 = v377;
      v186 = v423;
    }

    else
    {
      v161 = v158 | (v157 << 32);
      v181 = v417;
      v186 = v422;
      v183 = v410;
      v182 = v413;
      v179 = v404;
      v184 = v407;
      v177 = v398;
      v180 = v401;
      v173 = v392;
      v178 = v395;
      v172 = v386;
      v174 = v389;
      v171 = *(&v159 + 1);
      v164 = v159;
      v185 = v376;
      *&v163 = v379;
      v168 = v370;
      v167 = v373;
      v166 = v364;
      v165 = v367;
      v176 = v358;
      v175 = v361;
      v170 = v352;
      v169 = v355;
      v340 = v154;
      v162 = v149;
    }

    v381 = v163;
    v383 = v164;
    *(&v163 + 1) = v344;
    v596[9] = v163;
    *&v189 = v164;
    v385 = v171;
    *(&v189 + 1) = v171;
    v596[21] = v189;
    v596[8] = v343;
    v604 = v169;
    v605 = v176;
    v606 = v175;
    v607 = v160;
    v596[0] = v342;
    v596[1] = v341;
    v333 = v148;
    *&v596[2] = v148;
    v332 = v162;
    DWORD2(v596[2]) = v162;
    v366 = v166;
    v369 = v165;
    v596[3] = v165;
    v596[4] = v166;
    *&v596[5] = v150;
    v190 = v151;
    DWORD2(v596[5]) = v151;
    v372 = v168;
    v596[6] = v168;
    *&v596[7] = v152;
    LODWORD(v596[10]) = v153;
    *(&v596[10] + 1) = v340;
    v388 = v172;
    v391 = v174;
    v596[11] = v172;
    v596[12] = v174;
    v397 = v178;
    v400 = v177;
    v596[13] = v178;
    v403 = v180;
    v406 = v179;
    v596[14] = v180;
    v415 = v182;
    v419 = v181;
    v596[15] = v182;
    v409 = v184;
    v412 = v183;
    v596[16] = v184;
    *&v596[17] = v155;
    v375 = v167;
    v378 = v185;
    v596[18] = v185;
    v596[19] = v167;
    *&v596[20] = v156;
    DWORD2(v596[20]) = v161;
    WORD6(v596[20]) = WORD2(v161);
    v596[22] = v177;
    v596[23] = v181;
    v394 = v173;
    v596[24] = v173;
    v596[25] = v179;
    v596[26] = v183;
    v424 = v186;
    v596[27] = v186;
    v354 = v170;
    v357 = v169;
    v596[28] = v170;
    v596[29] = v169;
    v360 = v176;
    v363 = v175;
    v596[30] = v176;
    v596[31] = v175;
    *&v596[32] = v160;
    memcpy(__src, v596, 0x208uLL);
    if (*(isUniquelyReferenced_nonNull_native + 96))
    {
      if (v550.n128_f32[0] == 0.0)
      {
        memcpy(v598, __dst, 0x208uLL);
        sub_1000299EC(v600, v601, &unk_100133DB0);
        sub_1000C6110(v597, v601);
        v192 = *&v519;
        v193 = v518;
      }

      else
      {
        v192 = *&v519;
        v193 = v518;
        if (v550.n128_f32[0] == 1.0)
        {
          memcpy(v598, v596, 0x208uLL);
          sub_1000299EC(v600, v601, &unk_100133DB0);
          sub_1000C6110(v596, v601);
        }

        else
        {
          sub_1000299EC(v600, v601, &unk_100133DB0);
          sub_1000BEBB0(__src, 0, v601, v550.n128_u64[0]);
          memcpy(v598, v601, 0x208uLL);
        }
      }
    }

    else
    {
      v196 = v152;
      v197 = *(isUniquelyReferenced_nonNull_native + 56);
      sub_1000299EC(v600, v601, &unk_100133DB0);
      if (sub_100019154(v197))
      {
        sub_1000C6110(v597, v601);
        v192 = *&v519;
        v193 = v518;
        v198 = v512;
        v191 = v517;
        v200 = v502;
        v199 = v507;
        v202 = v492;
        v201 = v497;
        v203 = v351;
        v190 = v337;
        v204 = v338;
        v205 = v350;
        v207 = v482;
        v206 = v487;
        v209 = v348;
        v208 = v349;
        v211 = v472;
        v210 = v477;
        v212 = v336;
        v213 = v334;
        v196 = v335;
        v214 = v347;
        v216 = v462;
        v215 = v467;
        v217 = v346;
        v219 = v452;
        v218 = v457;
        v220 = v442;
        v221 = v447;
        v222 = v434;
        v223 = v438;
        v224 = v429;
      }

      else
      {
        sub_1000C6110(v596, v601);
        v209 = v341;
        v208 = v342;
        v212 = v332;
        v210 = v366;
        v206 = v369;
        v203 = v343;
        v214 = v344;
        v204 = v153;
        v205 = v340;
        v75 = v155;
        v211 = v381;
        v207 = v372;
        v530 = v375;
        v536 = v378;
        v76 = v156;
        v81 = v161;
        v524 = v354;
        v213 = v150;
        v217 = v333;
        v541 = v383;
        v218 = v388;
        v547 = v385;
        v339 = v160;
        v221 = v397;
        v198 = v400;
        v191 = v419;
        v199 = v424;
        v219 = v391;
        v202 = v394;
        v216 = v403;
        v200 = v406;
        v201 = v412;
        v215 = v415;
        v220 = v409;
        v224 = v357;
        v223 = v360;
        v222 = v363;
        v192 = *&v519;
        v193 = v518;
      }

      v598[0] = v208;
      v598[1] = v209;
      *&v598[2] = v217;
      DWORD2(v598[2]) = v212;
      v598[3] = v206;
      v598[4] = v210;
      *&v598[5] = v213;
      DWORD2(v598[5]) = v190;
      v598[6] = v207;
      *&v598[7] = v196;
      v598[8] = v203;
      *&v598[9] = v211;
      *(&v598[9] + 1) = v214;
      LODWORD(v598[10]) = v204;
      *(&v598[10] + 1) = v205;
      v598[11] = v218;
      v598[12] = v219;
      v598[13] = v221;
      v598[14] = v216;
      v598[15] = v215;
      v598[16] = v220;
      *&v598[17] = v75;
      v598[18] = v536;
      v598[19] = v530;
      *&v598[20] = v76;
      DWORD2(v598[20]) = v81;
      WORD6(v598[20]) = WORD2(v81);
      *&v598[21] = v541;
      *(&v598[21] + 1) = v547;
      v598[22] = v198;
      v598[23] = v191;
      v598[24] = v202;
      v598[25] = v200;
      v598[26] = v201;
      v598[27] = v199;
      v191.n128_u64[1] = *(&v524 + 1);
      v598[28] = v524;
      v598[29] = v224;
      v598[30] = v223;
      v598[31] = v222;
      v191.n128_u32[1] = HIDWORD(v339);
      *&v598[32] = v339;
    }

    if (v193 > 0.0)
    {
      v225 = v550.n128_f32[0];
      if (qword_10012F6D8 != -1)
      {
        swift_once();
        v225 = v550.n128_f32[0];
      }

      v191.n128_f32[0] = (1.0 - v225) * v193;
      sub_1000BE738(v598, qword_10013DC88, v191);
      if (qword_10012F6E0 != -1)
      {
        swift_once();
      }

      v226 = v550;
      v226.n128_f32[0] = v550.n128_f32[0] * v193;
      sub_1000BE738(v598, qword_10013DC90, v226);
    }

    if (v192 > 0.0)
    {
      if (v550.n128_f32[0] == 0.0 || v550.n128_f32[0] == 1.0)
      {
        v602[0] = v598[29];
        v602[1] = v598[30];
        v602[2] = v598[31];
        v603 = *&v598[32];
        sub_1000C6180(v602, v594);
        sub_1000BCC80(v598, v192);
        sub_100081544(v602);
      }

      else
      {
        sub_1000BCC80(v598, v192 * (1.0 - v550.n128_f32[0]));
        sub_1000BCC80(v598, v192 * v550.n128_f32[0]);
      }
    }

    v227 = v550.n128_f32[0];
    if (v550.n128_f32[0] <= 0.0)
    {
LABEL_141:
      if (v227 <= 0.5)
      {
        if (qword_10012F6B8 != -1)
        {
          swift_once();
        }

        v330 = &qword_10013DC48;
      }

      else
      {
        if (qword_10012F6C0 != -1)
        {
          swift_once();
        }

        v330 = &qword_10013DC60;
      }

      v194 = *v330;
      v195 = v330[1];
      v553 = v330[2];

      sub_1000DFCB4(v596);
      sub_1000DFCB4(v597);
LABEL_149:
      v331 = *(isUniquelyReferenced_nonNull_native + 8);
      if (v331 < 1.0)
      {
        sub_1000BDE14(v598, v194, v195, v331, *&v553, *(&v553 + 1));
      }

      v23 = 0;
      v57 = v598[0];
      v58 = v598[1];
      v59 = *&v598[2];
      v60 = DWORD2(v598[2]);
      v53 = v598[3];
      v54 = v598[4];
      v55 = *&v598[5];
      v56 = DWORD2(v598[5]);
      v51 = v598[6];
      v52 = *&v598[7];
      v49 = v598[8];
      v50 = v598[9];
      v48 = v598[10];
      v47 = *(&v598[10] + 1);
      v46 = v598[11];
      v45 = v598[12];
      v44 = v598[13];
      v43 = v598[14];
      v41 = v598[15];
      v42 = v598[16];
      v40 = *&v598[17];
      v38 = v598[18];
      v39 = v598[19];
      v37 = DWORD2(v598[20]) | (WORD6(v598[20]) << 32);
      v36 = *&v598[20];
      v35 = v598[21];
      v34 = v598[22];
      v32 = v598[23];
      v33 = v598[24];
      v31 = v598[25];
      v30 = v598[26];
      v29 = v598[27];
      v28 = v598[28];
      v543 = v598[30];
      v549 = v598[29];
      v26 = v598[31];
      v27 = *&v598[32];
      goto LABEL_152;
    }

    v519 = i;
    v525 = isUniquelyReferenced_nonNull_native;
    v228 = vmul_n_f32(0xBCA3D70ABCBC6A7FLL, v550.n128_f32[0]);
    v229 = vmul_n_f32(0x3C03126F00000000, v550.n128_f32[0]);
    *&v230 = vadd_f32(v228, *&v598[0]);
    *(&v230 + 2) = v229.f32[0] + *(v598 + 2);
    *&v231 = vadd_f32(v229, *&v598[3]);
    v542 = v229;
    *(&v231 + 2) = v229.f32[0] + *(&v598[3] + 2);
    HIDWORD(v230) = 0;
    HIDWORD(v231) = 0;
    v598[0] = v230;
    v598[3] = v231;
    v232 = *&v598[11];
    v3 = *&v598[11] + 64;
    v233 = 1 << *(*&v598[11] + 32);
    v234 = -1;
    if (v233 < 64)
    {
      v234 = ~(-1 << v233);
    }

    v5 = v234 & *(*&v598[11] + 64);
    v235 = (v233 + 63) >> 6;

    i = 0;
    isUniquelyReferenced_nonNull_native = 24;
    v537 = v232;
    if (v5)
    {
      break;
    }

LABEL_109:
    while (1)
    {
      v8 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v8 >= v235)
      {

        isUniquelyReferenced_nonNull_native = v525;
        i = v519;
        v227 = v550.n128_f32[0];
        goto LABEL_141;
      }

      v5 = *(v3 + 8 * v8);
      ++i;
      if (v5)
      {
        i = v8;
        goto LABEL_113;
      }
    }

    __break(1u);
LABEL_159:
    if (v8 != 6)
    {
LABEL_5:
      i = 0x3FE0000000000000;
      goto LABEL_48;
    }

LABEL_30:
    ;
  }

  while (1)
  {
LABEL_113:
    while (1)
    {
      v236 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v237 = v236 | (i << 6);
      v238 = *(v232 + 48) + 24 * v237;
      v240 = *v238;
      v239 = *(v238 + 8);
      v241 = *(v238 + 16);
      v242 = *(v232 + 56) + 192 * v237;
      v243 = *(v242 + 48);
      v245 = *v242;
      v244 = *(v242 + 16);
      v594[2] = *(v242 + 32);
      v594[0] = v245;
      v594[1] = v244;
      v246 = *(v242 + 96);
      v248 = *(v242 + 64);
      v247 = *(v242 + 80);
      v594[7] = *(v242 + 112);
      v594[6] = v246;
      v594[4] = v248;
      v594[5] = v247;
      v250 = *(v242 + 144);
      v249 = *(v242 + 160);
      v251 = *(v242 + 128);
      v595 = *(v242 + 176);
      v594[10] = v249;
      v594[9] = v250;
      v594[8] = v251;
      v594[3] = v243;
      v252 = *(v242 + 16);
      v590 = *v242;
      v591 = v252;
      v253 = *(v242 + 48);
      v592 = *(v242 + 32);
      v593 = v253;
      v254 = *(v242 + 160);
      v587 = *(v242 + 144);
      v588 = v254;
      v589 = *(v242 + 176);
      v255 = *(v242 + 96);
      v583 = *(v242 + 80);
      v584 = v255;
      v256 = *(v242 + 112);
      v586 = *(v242 + 128);
      v585 = v256;
      if (BYTE9(v251) != 1)
      {
        break;
      }

      *v272.i8 = vadd_f32(v542, *v248.i8);
      v272.i32[3] = vextq_s8(v248, v248, 8uLL).i32[1];
      *&v272.i32[2] = v542.f32[0] + *&v248.i32[2];
      v571 = v590;
      v572 = v591;
      v573 = v592;
      v574 = v593;
      v531 = v272;
      v575 = v272;
      v580 = v587;
      v581 = v588;
      v582 = v589;
      v576 = v583;
      v577 = v584;
      v578 = v585;
      v579 = v586;
      v273 = v241;
      sub_1000A1DD4(v240, v239, v241);
      sub_1000B89BC(v594, &v559);
      sub_1000B89BC(&v571, &v559);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v274 = *&v598[11];
      v558 = *&v598[11];
      v548 = v240;
      v275 = v240;
      v261 = v239;
      v276 = v239;
      v263 = v273;
      v264 = sub_10009F2C8(v275, v276, v273);
      v278 = *(v274 + 16);
      v279 = (v277 & 1) == 0;
      v268 = __OFADD__(v278, v279);
      v280 = v278 + v279;
      if (v268)
      {
        goto LABEL_170;
      }

      v281 = v277;
      if (*(v274 + 24) < v280)
      {
        sub_1000B1E88(v280, isUniquelyReferenced_nonNull_native);
        v264 = sub_10009F2C8(v548, v261, v263);
        if ((v281 & 1) != (v282 & 1))
        {
          goto LABEL_173;
        }

LABEL_131:
        isUniquelyReferenced_nonNull_native = 24;
        if ((v281 & 1) == 0)
        {
          goto LABEL_136;
        }

        goto LABEL_132;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_131;
      }

      v317 = v264;
      sub_1000B5C20();
      v264 = v317;
      isUniquelyReferenced_nonNull_native = 24;
      if ((v281 & 1) == 0)
      {
LABEL_136:
        v283 = v558;
        v558[(v264 >> 6) + 8] |= 1 << v264;
        v318 = v283[6] + 24 * v264;
        *v318 = v548;
        *(v318 + 8) = v261;
        *(v318 + 16) = v263;
        v319 = v283[7] + 192 * v264;
        v320 = v574;
        v321 = v572;
        v322 = v571;
        *(v319 + 32) = v573;
        *(v319 + 48) = v320;
        *v319 = v322;
        *(v319 + 16) = v321;
        v323 = v578;
        v324 = v576;
        v325 = v575;
        *(v319 + 96) = v577;
        *(v319 + 112) = v323;
        *(v319 + 64) = v325;
        *(v319 + 80) = v324;
        v326 = v579;
        v327 = v580;
        v328 = v581;
        *(v319 + 176) = v582;
        *(v319 + 144) = v327;
        *(v319 + 160) = v328;
        *(v319 + 128) = v326;
        v329 = v283[2];
        v268 = __OFADD__(v329, 1);
        v296 = v329 + 1;
        if (v268)
        {
          goto LABEL_172;
        }

        goto LABEL_137;
      }

LABEL_132:
      v283 = v558;
      v297 = v558[7] + 192 * v264;
      v298 = *(v297 + 32);
      v300 = *v297;
      v299 = *(v297 + 16);
      v562 = *(v297 + 48);
      v561 = v298;
      v559 = v300;
      v560 = v299;
      v301 = *(v297 + 96);
      v303 = *(v297 + 64);
      v302 = *(v297 + 80);
      v566 = *(v297 + 112);
      v565 = v301;
      v563 = v303;
      v564 = v302;
      v305 = *(v297 + 144);
      v304 = *(v297 + 160);
      v306 = *(v297 + 128);
      v570 = *(v297 + 176);
      v569 = v304;
      v567 = v306;
      v568 = v305;
      v307 = v571;
      v308 = v572;
      v309 = v574;
      *(v297 + 32) = v573;
      *(v297 + 48) = v309;
      *v297 = v307;
      *(v297 + 16) = v308;
      v310 = v575;
      v311 = v576;
      v312 = v578;
      *(v297 + 96) = v577;
      *(v297 + 112) = v312;
      *(v297 + 64) = v310;
      *(v297 + 80) = v311;
      v313 = v579;
      v314 = v580;
      v315 = v581;
      *(v297 + 176) = v582;
      *(v297 + 144) = v314;
      *(v297 + 160) = v315;
      *(v297 + 128) = v313;
      sub_1000C5E5C(&v559);
      sub_1000A1DF8(v548, v261, v263);
LABEL_138:
      v232 = v537;
      v559 = v590;
      v560 = v591;
      v561 = v592;
      v562 = v593;
      v563 = v531;
      v568 = v587;
      v569 = v588;
      v570 = v589;
      v564 = v583;
      v565 = v584;
      v566 = v585;
      v567 = v586;
      sub_1000C5E5C(&v559);
      *&v598[11] = v283;
      if (!v5)
      {
        goto LABEL_109;
      }
    }

    if (!BYTE9(v251))
    {
      break;
    }

    v571 = v590;
    v572 = v591;
    v573 = v592;
    v574 = v593;
    v575 = v248;
    v580 = v587;
    v581 = v588;
    v582 = v589;
    v576 = v583;
    v577 = v584;
    v578 = v585;
    v579 = v586;
    sub_1000B89BC(v594, &v559);
    sub_1000C5E5C(&v571);
    if (!v5)
    {
      goto LABEL_109;
    }
  }

  *v257.i8 = vadd_f32(v228, *v248.i8);
  v257.i32[3] = vextq_s8(v248, v248, 8uLL).i32[1];
  *&v257.i32[2] = v542.f32[0] + *&v248.i32[2];
  v571 = v590;
  v572 = v591;
  v573 = v592;
  v574 = v593;
  v531 = v257;
  v575 = v257;
  v580 = v587;
  v581 = v588;
  v582 = v589;
  v576 = v583;
  v577 = v584;
  v578 = v585;
  v579 = v586;
  v258 = v241;
  sub_1000A1DD4(v240, v239, v241);
  sub_1000B89BC(v594, &v559);
  sub_1000B89BC(&v571, &v559);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v259 = *&v598[11];
  v558 = *&v598[11];
  v548 = v240;
  v260 = v240;
  v261 = v239;
  v262 = v239;
  v263 = v258;
  v264 = sub_10009F2C8(v260, v262, v258);
  v266 = *(v259 + 16);
  v267 = (v265 & 1) == 0;
  v268 = __OFADD__(v266, v267);
  v269 = v266 + v267;
  if (v268)
  {
    __break(1u);
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  v270 = v265;
  if (*(v259 + 24) < v269)
  {
    sub_1000B1E88(v269, isUniquelyReferenced_nonNull_native);
    v264 = sub_10009F2C8(v548, v261, v263);
    if ((v270 & 1) != (v271 & 1))
    {
      goto LABEL_173;
    }

LABEL_126:
    isUniquelyReferenced_nonNull_native = 24;
    if ((v270 & 1) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_132;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_126;
  }

  v316 = v264;
  sub_1000B5C20();
  v264 = v316;
  isUniquelyReferenced_nonNull_native = 24;
  if (v270)
  {
    goto LABEL_132;
  }

LABEL_127:
  v283 = v558;
  v558[(v264 >> 6) + 8] |= 1 << v264;
  v284 = v283[6] + 24 * v264;
  *v284 = v548;
  *(v284 + 8) = v261;
  *(v284 + 16) = v263;
  v285 = v283[7] + 192 * v264;
  v286 = v574;
  v287 = v572;
  v288 = v571;
  *(v285 + 32) = v573;
  *(v285 + 48) = v286;
  *v285 = v288;
  *(v285 + 16) = v287;
  v289 = v578;
  v290 = v576;
  v291 = v575;
  *(v285 + 96) = v577;
  *(v285 + 112) = v289;
  *(v285 + 64) = v291;
  *(v285 + 80) = v290;
  v292 = v579;
  v293 = v580;
  v294 = v581;
  *(v285 + 176) = v582;
  *(v285 + 144) = v293;
  *(v285 + 160) = v294;
  *(v285 + 128) = v292;
  v295 = v283[2];
  v268 = __OFADD__(v295, 1);
  v296 = v295 + 1;
  if (!v268)
  {
LABEL_137:
    v283[2] = v296;
    goto LABEL_138;
  }

  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  result = sub_1000E9FA4();
  __break(1u);
  return result;
}

uint64_t sub_1000DBFC4()
{
  swift_unknownObjectRelease();
  sub_1000056DC(*(v0 + 40));
  sub_1000E29F4(*(v0 + 56));

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1000DC0C8()
{
  sub_1000DBFC4();

  return swift_deallocClassInstance();
}

uint64_t sub_1000DC120(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1000DC168(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000DC1C4(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000DC1E8(uint64_t *a1, int a2)
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

uint64_t sub_1000DC230(uint64_t result, int a2, int a3)
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

uint64_t sub_1000DC290()
{
  if (qword_10012F708 != -1)
  {
    swift_once();
  }

  v0 = qword_10013DD18;
  v1 = qword_10013DD18;
  return v0;
}

uint64_t sub_1000DC2EC()
{
  if (qword_10012F710 != -1)
  {
    swift_once();
  }

  return byte_10013DD20;
}

uint64_t sub_1000DC380(uint64_t a1, char a2, void *a3)
{
  v36 = *(a1 + 16);
  if (!v36)
  {
  }

  LOBYTE(v5) = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *a3;

  v10 = sub_10009F284(v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1000B3A28(v15, v5 & 1);
    v10 = sub_10009F284(v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_1000E9FA4();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v19 = v10;
  sub_1000B66FC();
  v10 = v19;
  if (v16)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();

    swift_errorRetain();
    sub_1000125FC(&unk_100131DD0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v20 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v20[6] + v10) = v6;
  v21 = (v20[7] + 16 * v10);
  *v21 = v7;
  v21[1] = v8;
  v22 = v20[2];
  v14 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1000E9D64(30);
    v37._object = 0x80000001000F7820;
    v37._countAndFlagsBits = 0xD00000000000001BLL;
    sub_1000E99A4(v37);
    sub_1000E9DF4();
    v38._countAndFlagsBits = 39;
    v38._object = 0xE100000000000000;
    sub_1000E99A4(v38);
    result = sub_1000E9E44();
    __break(1u);
    return result;
  }

  v20[2] = v23;
  if (v36 != 1)
  {
    v5 = (a1 + 72);
    v7 = 1;
    while (v7 < *(a1 + 16))
    {
      v6 = *(v5 - 16);
      v24 = *(v5 - 1);
      v8 = *v5;
      v25 = *a3;

      v26 = sub_10009F284(v6);
      v28 = v25[2];
      v29 = (v27 & 1) == 0;
      v14 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v27;
      if (v25[3] < v30)
      {
        sub_1000B3A28(v30, 1);
        v26 = sub_10009F284(v6);
        if ((v16 & 1) != (v31 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v32 = *a3;
      *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      *(v32[6] + v26) = v6;
      v33 = (v32[7] + 16 * v26);
      *v33 = v24;
      v33[1] = v8;
      v34 = v32[2];
      v14 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v32[2] = v35;
      v5 += 3;
      if (v36 == v7)
      {
      }
    }

    goto LABEL_25;
  }
}

uint64_t sub_1000DC6EC(uint64_t result, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v8)
    {
      goto LABEL_14;
    }

    *&v14 = result;
    WORD4(v14) = a2;
    BYTE10(v14) = BYTE2(a2);
    BYTE11(v14) = BYTE3(a2);
    BYTE12(v14) = BYTE4(a2);
    BYTE13(v14) = BYTE5(a2);
    result = sub_100098A34(a4, a5, &v15);
    if ((a4 - 0x2000000000000000) >> 62 != 3)
    {
      __break(1u);
      goto LABEL_27;
    }

    LODWORD(v8) = 0;
    if (4 * a4 + 0x4000000000000000 >= 0)
    {
LABEL_24:
      [a3 replaceRegion:&v15 mipmapLevel:0 withBytes:&v14 bytesPerRow:{8 * a4, v14}];
      return swift_unknownObjectRelease();
    }

    __break(1u);
  }

  if (v8 != 2)
  {
    *(&v14 + 6) = 0;
    *&v14 = 0;
    sub_100098A34(a4, a5, &v15);
    if ((a4 - 0x2000000000000000) >> 62 != 3)
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (4 * a4 + 0x4000000000000000 < 0)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    goto LABEL_24;
  }

  v9 = *(result + 16);
  v10 = sub_1000E9214();
  if (v10)
  {
    v11 = sub_1000E9244();
    if (__OFSUB__(v9, v11))
    {
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    v10 += v9 - v11;
  }

  sub_1000E9234();
  result = sub_100098A34(a4, a5, &v15);
  if (!v10)
  {
    __break(1u);
    goto LABEL_36;
  }

  if ((a4 - 0x2000000000000000) >> 62 != 3)
  {
    goto LABEL_29;
  }

  if (4 * a4 + 0x4000000000000000 >= 0)
  {
LABEL_21:
    [a3 replaceRegion:&v15 mipmapLevel:0 withBytes:v10 bytesPerRow:{8 * a4, v14}];
    return swift_unknownObjectRelease();
  }

  __break(1u);
LABEL_14:
  v12 = result;
  if (result > result >> 32)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v10 = sub_1000E9214();
  if (v10)
  {
    v13 = sub_1000E9244();
    if (__OFSUB__(v12, v13))
    {
      goto LABEL_34;
    }

    v10 += v12 - v13;
  }

  sub_1000E9234();
  result = sub_100098A34(a4, a5, &v15);
  if (v10)
  {
    if ((a4 - 0x2000000000000000) >> 62 == 3)
    {
      if (4 * a4 + 0x4000000000000000 >= 0)
      {
        goto LABEL_21;
      }

      goto LABEL_32;
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_36:
  __break(1u);
  return result;
}

unint64_t sub_1000DC9C0(uint64_t a1, uint64_t a2)
{
  v2 = a1 == 0x63696D616E7964 && a2 == 0xE700000000000000;
  if (v2 || (sub_1000E9F74() & 1) != 0)
  {
    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    do
    {
      v5 = *(&off_100119FE8 + v3 + 32);
      v6 = 0x7465736E7573;
      if (v5 != 6)
      {
        v6 = 1802728804;
      }

      v7 = 0xE600000000000000;
      if (v5 != 6)
      {
        v7 = 0xE400000000000000;
      }

      v8 = 0x6F6F4E72616C6F73;
      if (v5 != 4)
      {
        v8 = 0x657466416574616CLL;
      }

      v9 = 0xE90000000000006ELL;
      if (v5 != 4)
      {
        v9 = 0xED00006E6F6F6E72;
      }

      if (*(&off_100119FE8 + v3 + 32) <= 5u)
      {
        v6 = v8;
        v7 = v9;
      }

      v10 = 0x657369726E7573;
      if (v5 != 2)
      {
        v10 = 0x696E726F4D64696DLL;
      }

      v11 = 0xE700000000000000;
      if (v5 != 2)
      {
        v11 = 0xEA0000000000676ELL;
      }

      v12 = 0x64694D72616C6F73;
      if (*(&off_100119FE8 + v3 + 32))
      {
        v12 = 1853317476;
      }

      v13 = 0xED0000746867696ELL;
      if (*(&off_100119FE8 + v3 + 32))
      {
        v13 = 0xE400000000000000;
      }

      if (*(&off_100119FE8 + v3 + 32) <= 1u)
      {
        v10 = v12;
        v11 = v13;
      }

      if (*(&off_100119FE8 + v3 + 32) <= 3u)
      {
        v14 = v10;
      }

      else
      {
        v14 = v6;
      }

      if (*(&off_100119FE8 + v3 + 32) <= 3u)
      {
        v15 = v11;
      }

      else
      {
        v15 = v7;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1000A40B4(0, v4[2] + 1, 1, v4);
      }

      v17 = v4[2];
      v16 = v4[3];
      if (v17 >= v16 >> 1)
      {
        v4 = sub_1000A40B4((v16 > 1), v17 + 1, 1, v4);
      }

      v4[2] = v17 + 1;
      v18 = &v4[3 * v17];
      *(v18 + 32) = v5;
      ++v3;
      v18[5] = v14;
      v18[6] = v15;
    }

    while (v3 != 8);
    sub_1000125FC(&qword_100132060);
    v20 = sub_1000E9EA4();
    sub_1000DC380(v4, 1, &v20);
    return v20;
  }

  else
  {

    return sub_1000A1858(_swiftEmptyArrayStorage);
  }
}

void sub_1000DCC68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MTLRenderPassDescriptor) init];
  v7 = [v6 colorAttachments];
  v8 = [v7 objectAtIndexedSubscript:0];

  if (!v8)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = v8;
  [v9 setTexture:a1];
  [v9 setLoadAction:0];
  if (a2)
  {
    swift_unknownObjectRetain();
    [v9 setResolveTexture:a2];
    [v9 setStoreAction:2];
    swift_unknownObjectRelease();
  }

  v10 = [v6 depthAttachment];
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = v10;
  [v10 setTexture:a3];

  v12 = [v6 depthAttachment];
  if (v12)
  {
    v13 = v12;
    [v12 setClearDepth:0.0];

    return;
  }

LABEL_9:
  __break(1u);
}

id sub_1000DCDD8(uint64_t a1, char *a2, const void *a3, unint64_t a4, char a5)
{
  v6 = v5;
  v9 = a2;
  [a2 setDepthStencilState:*(v5 + 152)];
  v139 = *(v5 + 312);
  if (*(v5 + 312))
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  [v9 setCullMode:v10];
  memcpy(__dst, a3, sizeof(__dst));
  [v9 setVertexBytes:__dst length:496 atIndex:0];
  [v9 setFragmentBytes:__dst length:496 atIndex:0];
  v11 = *(v5 + 288);
  v12 = v11[4];
  v13 = v12 - 1;
  if (__OFSUB__(v12, 1))
  {
    goto LABEL_160;
  }

  v14 = v11[2];
  _VF = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (_VF)
  {
    goto LABEL_161;
  }

  if (!v14)
  {
    goto LABEL_162;
  }

  if (v14 == -1 && v16 == 0x8000000000000000)
  {
    goto LABEL_173;
  }

  v18 = v11[3];
  v19 = v16 % v14;
  if ((v18 & 0xC000000000000001) != 0)
  {
    goto LABEL_163;
  }

  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_165;
  }

  if (v19 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_166;
  }

  v20 = *(v18 + 8 * v19 + 32);
  swift_unknownObjectRetain();
  while (1)
  {
    [v9 setVertexBuffer:v20 offset:0 atIndex:1];
    swift_unknownObjectRelease();
    v21 = v6[35];
    v22 = v21[4];
    v23 = v22 - 1;
    if (__OFSUB__(v22, 1))
    {
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      v28 = sub_1000E9D74();
      goto LABEL_24;
    }

    v24 = v21[2];
    _VF = __OFADD__(v23, v24);
    v25 = v23 + v24;
    if (_VF)
    {
      goto LABEL_167;
    }

    if (!v24)
    {
      goto LABEL_168;
    }

    v26 = v21[3];
    if (v24 == -1 && v25 == 0x8000000000000000)
    {
      goto LABEL_174;
    }

    v27 = v25 % v24;
    if ((v26 & 0xC000000000000001) != 0)
    {
      goto LABEL_169;
    }

    if ((v27 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_171:
      swift_once();
      goto LABEL_27;
    }

    if (v27 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      swift_once();
LABEL_35:
      v38 = sub_1000E96A4();
      sub_100007488(v38, qword_100133BB0);
      v39 = sub_1000E9684();
      v40 = sub_1000E9BA4();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        v42 = "couldn’t look up gradient";
LABEL_48:
        _os_log_impl(&_mh_execute_header, v39, v40, v42, v41, 2u);

        goto LABEL_49;
      }

      goto LABEL_49;
    }

    v28 = *(v26 + 8 * v27 + 32);
    swift_unknownObjectRetain();
LABEL_24:
    [v9 setFragmentBuffer:v28 offset:0 atIndex:1];
    swift_unknownObjectRelease();
    [v9 setFragmentTexture:v6[34] atIndex:6];
    v29 = 32;
    if (a5)
    {
      v29 = 33;
    }

    [v9 setRenderPipelineState:v6[v29]];
    v20 = a1;
    v143 = *(a1 + 192);
    v137 = *(*(a1 + 184) + 16);
    v138 = *(a1 + 200);
    sub_1000BAF14(v137, v167, *(a1 + 112), *(a1 + 116));
    v166[8] = v167[8];
    v166[9] = v167[9];
    v166[10] = v167[10];
    v166[11] = v167[11];
    v166[4] = v167[4];
    v166[5] = v167[5];
    v166[6] = v167[6];
    v166[7] = v167[7];
    v166[0] = v167[0];
    v166[1] = v167[1];
    v166[2] = v167[2];
    v166[3] = v167[3];
    [v9 setVertexBytes:v166 length:192 atIndex:2];
    [v9 setFragmentBytes:v166 length:192 atIndex:2];
    v174 = 0;
    v173 = 0;
    if (qword_10012F4F0 != -1)
    {
      goto LABEL_171;
    }

LABEL_27:
    v169 = xmmword_10013A9D0;
    v170 = qword_10013A9E0;
    v171 = xmmword_10013A9D0;
    v172 = qword_10013A9E0;
    v30 = *(v20 + 333);
    if (v30 < 0)
    {
      v43 = *(v20 + 320);
      v44 = *(v43 + 24) | (*(v43 + 28) << 32);
      if ((v44 & 0x8000000000000000) == 0)
      {
        v45 = *(v43 + 40) | (*(v43 + 44) << 32);
        if ((v45 & 0x8000000000000000) == 0)
        {
          v46 = v6[18];
          if (*(v46 + 16))
          {
            v47 = *(v43 + 48);
            v48 = sub_10009F3BC(BYTE4(v44) | (((HIDWORD(v44) >> 8) & 1) << 8));
            if (v49)
            {
              if (*(v46 + 16))
              {
                v50 = *(*(v46 + 56) + 4 * v48);
                v51 = sub_10009F3BC(BYTE4(v45) | (((HIDWORD(v45) >> 8) & 1) << 8));
                if (v52)
                {
                  v53 = *(*(v46 + 56) + 4 * v51);
                  LODWORD(v173) = v50;
                  v54 = __sincosf_stret(*&v44);
                  *&v55 = -v54.__sinval;
                  HIDWORD(v55) = LODWORD(v54.__cosval);
                  *&v169 = __PAIR64__(LODWORD(v54.__sinval), LODWORD(v54.__cosval));
                  *(&v169 + 1) = v55;
                  v170 = 0;
                  HIDWORD(v173) = v53;
                  v56 = __sincosf_stret(*&v45);
                  *&v57 = -v56.__sinval;
                  HIDWORD(v57) = LODWORD(v56.__cosval);
                  *&v171 = __PAIR64__(LODWORD(v56.__sinval), LODWORD(v56.__cosval));
                  *(&v171 + 1) = v57;
                  v172 = 0;
                  LODWORD(v174) = v47;
                  goto LABEL_50;
                }
              }
            }
          }
        }
      }

      if (qword_10012F718 != -1)
      {
        swift_once();
      }

      v58 = sub_1000E96A4();
      sub_100007488(v58, qword_100133BB0);
      v39 = sub_1000E9684();
      v40 = sub_1000E9BA4();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        v42 = "couldn’t look up mixed gradients";
        goto LABEL_48;
      }

LABEL_49:

      goto LABEL_50;
    }

    v31 = v6[18];
    if (!*(v31 + 16) || ((v32 = *(v20 + 328), (v30 & 1) == 0) ? (v33 = 0) : (v33 = 256), v34 = sub_10009F3BC(v33 | *(v20 + 332)), (v35 & 1) == 0))
    {
      if (qword_10012F718 == -1)
      {
        goto LABEL_35;
      }

      goto LABEL_175;
    }

    LODWORD(v173) = *(*(v31 + 56) + 4 * v34);
    HIDWORD(v173) = v173;
    LODWORD(v174) = 0;
    v36 = __sincosf_stret(v32);
    *&v37 = -v36.__sinval;
    HIDWORD(v37) = LODWORD(v36.__cosval);
    *&v169 = __PAIR64__(LODWORD(v36.__sinval), LODWORD(v36.__cosval));
    *(&v169 + 1) = v37;
    v170 = 0;
LABEL_50:
    [v9 setFragmentBytes:&v169 length:64 atIndex:3];
    [v9 setFragmentTexture:v6[17] atIndex:8];
    if (*(a4 + 16) && (v59 = sub_1000A1E74(3), (v60 & 1) != 0))
    {
      v61 = *(*(a4 + 56) + 8 * v59);
      v62 = *(v61 + 16);
      if (v62)
      {
        v63 = v6[16];

        if (*(v63 + 16) && (v64 = sub_1000A1E74(*(v61 + 32)), (v65 & 1) != 0))
        {
          v66 = *(*(v63 + 56) + 8 * v64);
          swift_unknownObjectRetain();
        }

        else
        {
          v66 = 0;
        }

        [v9 setFragmentTexture:v66 atIndex:2];
        swift_unknownObjectRelease();
        if (v62 != 1)
        {
          if (*(v63 + 16) && (v71 = sub_1000A1E74(*(v61 + 33)), (v72 & 1) != 0))
          {
            v73 = *(*(v63 + 56) + 8 * v71);
            swift_unknownObjectRetain();
          }

          else
          {
            v73 = 0;
          }

          [v9 setFragmentTexture:v73 atIndex:3];
          swift_unknownObjectRelease();
          if (v62 != 2)
          {
            if (*(v63 + 16) && (v74 = sub_1000A1E74(*(v61 + 34)), (v75 & 1) != 0))
            {
              v76 = *(*(v63 + 56) + 8 * v74);
              swift_unknownObjectRetain();
            }

            else
            {
              v76 = 0;
            }

            [v9 setFragmentTexture:v76 atIndex:4];
            swift_unknownObjectRelease();
            if (v62 != 3)
            {
              if (*(v63 + 16) && (v77 = sub_1000A1E74(*(v61 + 35)), (v78 & 1) != 0))
              {
                v79 = *(*(v63 + 56) + 8 * v77);
                swift_unknownObjectRetain();
              }

              else
              {
                v79 = 0;
              }

              [v9 setFragmentTexture:v79 atIndex:5];
              swift_unknownObjectRelease();
            }
          }
        }
      }
    }

    else
    {
      v67 = v6[16];
      if (*(v67 + 16) && (v68 = sub_1000A1E74(8), (v69 & 1) != 0))
      {
        v70 = *(*(v67 + 56) + 8 * v68);
        swift_unknownObjectRetain();
      }

      else
      {
        v70 = 0;
      }

      [v9 setFragmentTexture:v70 atIndex:2];
      swift_unknownObjectRelease();
    }

    [v9 drawPrimitives:3 vertexStart:0 vertexCount:6];
    result = [v9 setVertexBuffer:v6[21] offset:0 atIndex:3];
    v131 = v6;
    v140 = v6[37];
    v81 = *(v140 + 16);
    if (!v81)
    {
      return result;
    }

    v82 = 0;
    v133 = v6[24];
    v134 = v6[22];
    v83 = (v140 + 80);
    v132 = v81 - 1;
    __asm { FMOV            V0.2S, #1.0 }

    v136 = HIDWORD(_D0);
    v135 = a4;
    while (1)
    {
      v87 = *(v83 - 48);
      v6 = *(v83 - 3);
      v88 = *(v83 - 2);
      v89 = *(v83 - 1);
      a4 = (a5 & 1) != 0 ? *(v83 - 4) : *(v83 - 5);
      v152 = *v83;
      v153 = v82;
      swift_unknownObjectRetain();
      v90 = v9;
      v9 = "setRenderPipelineState:";
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();
      v91 = v90;
      [v90 setRenderPipelineState:a4];
      v92 = v88[4];
      v93 = v92 - 1;
      if (__OFSUB__(v92, 1))
      {
        break;
      }

      v94 = v88[2];
      _VF = __OFADD__(v93, v94);
      v95 = v93 + v94;
      if (_VF)
      {
        goto LABEL_148;
      }

      if (!v94)
      {
        goto LABEL_149;
      }

      if (v94 == -1 && v95 == 0x8000000000000000)
      {
        goto LABEL_159;
      }

      v97 = v88[3];
      v98 = v95 % v94;
      if ((v97 & 0xC000000000000001) != 0)
      {
        v100 = sub_1000E9D74();
        v99 = a1;
      }

      else
      {
        v99 = a1;
        if ((v98 & 0x8000000000000000) != 0)
        {
          goto LABEL_150;
        }

        if (v98 >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_152;
        }

        v100 = *(v97 + 8 * v98 + 32);
        swift_unknownObjectRetain();
      }

      [v91 setVertexBuffer:v100 offset:0 atIndex:2];
      swift_unknownObjectRelease();
      memcpy(__src, v99, sizeof(__src));
      sub_1000C6110(v99, v176);
      swift_getAtKeyPath();
      memcpy(v176, __src, 0x208uLL);
      sub_1000DFCB4(v176);
      if (v87)
      {
        v101 = 0.7;
      }

      else
      {
        v101 = 0.85;
      }

      v102 = 30;
      if (!v87)
      {
        v102 = 29;
      }

      v103 = v143;
      if (v87)
      {
        v103 = v138;
      }

      a4 = *(v103 + 16);
      v9 = *(v99[v102] + 16);
      if (v87)
      {
        v104 = 0.5;
      }

      else
      {
        v104 = 0.65;
      }

      sub_1000E9BC4();
      v180.columns[0] = sub_100013568(v168);
      v154 = v180.columns[1];
      v156 = v180.columns[0];
      v158 = v180.columns[2];
      v151 = v180.columns[3];
      v150 = __invert_f4(v180);
      v178.columns[1] = v154;
      v178.columns[0] = v156;
      v178.columns[0].i32[3] = 0;
      v178.columns[1].i32[3] = 0;
      v178.columns[2] = v158;
      v178.columns[2].i32[3] = 0;
      v179 = __invert_f3(v178);
      if (v139)
      {
        v105 = v101;
      }

      else
      {
        v105 = v104;
      }

      if (a4 >> 15)
      {
        goto LABEL_151;
      }

      if (v9 >> 15)
      {
        goto LABEL_153;
      }

      LODWORD(v106) = 0;
      *(&v106 + 1) = 0.5 / v159;
      v107.i64[0] = 0;
      v107.i32[3] = 0;
      v107.f32[2] = 1.0 / v160;
      v108 = v179.columns[0];
      v108.i32[3] = v144;
      *&v109 = vzip2q_s32(v179.columns[0], v179.columns[1]).u64[0];
      v179.columns[1].i32[3] = v145;
      v179.columns[0] = v179.columns[2];
      v179.columns[0].i32[3] = v149;
      v179.columns[0] = vzip1q_s32(v108, v179.columns[0]);
      v110 = vzip1q_s32(v179.columns[1], 0);
      v179.columns[1].i64[0] = vzip1q_s32(v179.columns[0], v110).u64[0];
      *&v111 = vzip2q_s32(v179.columns[0], v110).u64[0];
      v179.columns[1].i64[1] = __PAIR64__(v146, vdupq_lane_s32(*(&v179 + 32), 0).u32[2]);
      v110.i32[1] = DWORD1(v147);
      *(&v111 + 1) = __PAIR64__(HIDWORD(v147), vdupq_lane_s32(*(&v179 + 32), 1).u32[2]);
      *(&v109 + 1) = __PAIR64__(v148, v179.columns[2].u32[2]);
      v112.i32[1] = v136;
      v112.f32[0] = v105 / v159;
      v110.i32[0] = 1078530010;
      v110.i32[0] = vdup_lane_s32(*v110.i8, 0).u32[0];
      *&v110.i32[1] = v159;
      v161[0] = v156;
      v161[1] = v154;
      v161[2] = v158;
      v161[3] = v151;
      v161[4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(0.5 / v159), v150.columns[0].f32[0]), v106, *v150.columns[0].f32, 1), v107, v150.columns[0], 2), xmmword_1000ED260, v150.columns[0], 3);
      v161[5] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(0.5 / v159), v150.columns[1].f32[0]), v106, *v150.columns[1].f32, 1), v107, v150.columns[1], 2), xmmword_1000ED260, v150.columns[1], 3);
      v161[6] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(0.5 / v159), v150.columns[2].f32[0]), v106, *v150.columns[2].f32, 1), v107, v150.columns[2], 2), xmmword_1000ED260, v150.columns[2], 3);
      v161[7] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(0.5 / v159), v150.columns[3].f32[0]), v106, *v150.columns[3].f32, 1), v107, v150.columns[3], 2), xmmword_1000ED260, v150.columns[3], 3);
      v155 = v111;
      v157 = v179.columns[1].i32[3];
      v161[8] = v179.columns[1];
      v161[9] = v111;
      v161[10] = v109;
      v162 = v112.i32[0];
      v163 = vdiv_f32(v112, *v110.i8);
      v164 = a4;
      v165 = v9;
      v9 = v91;
      [v91 setVertexBytes:v161 length:192 atIndex:4];
      [v91 setFragmentBytes:v161 length:192 atIndex:2];
      if (v87)
      {
        v113 = *(v143 + 16);
        a4 = v137 + v113;
        if (__OFADD__(v137, v113))
        {
          goto LABEL_157;
        }

        v114 = *(v99[28] + 16);
        v115 = *(v99[29] + 16);
        _VF = __OFADD__(v114, v115);
        v116 = v114 + v115;
        if (_VF)
        {
          goto LABEL_158;
        }
      }

      else
      {
        v116 = *(v99[28] + 16);
        a4 = v137;
      }

      if ((v116 - 0x100000000000000) >> 57 != 127)
      {
        goto LABEL_154;
      }

      [v91 setVertexBufferOffset:v116 << 7 atIndex:1];
      if ((a4 - 0x100000000000000) >> 57 != 127)
      {
        goto LABEL_155;
      }

      [v91 setFragmentBufferOffset:a4 << 7 atIndex:1];
      a4 = v135;
      if (*(v135 + 16))
      {
        v117 = sub_1000A1E74(v87);
        if (v118)
        {
          v119 = *(*(v135 + 56) + 8 * v117);
          v120 = *(v119 + 16);
          if (v120)
          {
            v121 = v131[16];

            if (*(v121 + 16) && (v122 = sub_1000A1E74(*(v119 + 32)), (v123 & 1) != 0))
            {
              a4 = *(*(v121 + 56) + 8 * v122);
              swift_unknownObjectRetain();
            }

            else
            {
              a4 = 0;
            }

            [v91 setFragmentTexture:a4 atIndex:2];
            swift_unknownObjectRelease();
            if (v120 != 1)
            {
              if (*(v121 + 16) && (v124 = sub_1000A1E74(*(v119 + 33)), (v125 & 1) != 0))
              {
                a4 = *(*(v121 + 56) + 8 * v124);
                swift_unknownObjectRetain();
              }

              else
              {
                a4 = 0;
              }

              [v91 setFragmentTexture:a4 atIndex:3];
              swift_unknownObjectRelease();
              if (v120 != 2)
              {
                if (*(v121 + 16) && (v126 = sub_1000A1E74(*(v119 + 34)), (v127 & 1) != 0))
                {
                  a4 = *(*(v121 + 56) + 8 * v126);
                  swift_unknownObjectRetain();
                }

                else
                {
                  a4 = 0;
                }

                [v91 setFragmentTexture:a4 atIndex:4];
                swift_unknownObjectRelease();
                if (v120 != 3)
                {
                  if (*(v121 + 16) && (v128 = sub_1000A1E74(*(v119 + 35)), (v129 & 1) != 0))
                  {
                    v130 = *(*(v121 + 56) + 8 * v128);
                    swift_unknownObjectRetain();
                  }

                  else
                  {
                    v130 = 0;
                  }

                  [v91 setFragmentTexture:v130 atIndex:5];
                  swift_unknownObjectRelease();
                }
              }
            }
          }
        }
      }

      v9 = v91;
      [v91 setFragmentTexture:v89 atIndex:0];
      [v91 setFragmentTexture:v152 atIndex:1];
      [v91 drawIndexedPrimitives:3 indexCount:v133 indexType:0 indexBuffer:v134 indexBufferOffset:0];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      if (v132 == v153)
      {
        return result;
      }

      v82 = v153 + 1;
      v83 += 7;
      v146 = v157;
      v147 = v155;
      if ((v153 + 1) >= *(v140 + 16))
      {
        goto LABEL_156;
      }
    }

    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    v20 = sub_1000E9D74();
  }
}

float sub_1000DDD50@<S0>(__int128 *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, float32x4_t a5@<Q0>, float32x4_t a6@<Q1>, float32x4_t a7@<Q2>, float32x4_t a8@<Q3>)
{
  v14 = *a1;
  v15.i32[3] = 0;
  v15.f32[0] = COERCE_FLOAT(*a1) + 0.0;
  v16 = a1[3];
  *&v35 = *&v16 + 0.0;
  v37 = COERCE_UNSIGNED_INT(*&v16 + 0.0);
  LODWORD(v14) = *(a1 + 8);
  v40 = *(&v16 + 2) + (*(a1 + 21) * 0.5);
  v41 = vadd_f32(*&v14, v15.u32[0]);
  v15.i32[1] = v41.i32[1];
  v15.f32[2] = COERCE_FLOAT(*(a1 + 1)) + (*(a1 + 9) * 0.5);
  LODWORD(v16) = *(a1 + 20);
  v33 = v15.f32[2];
  v34 = v16;
  *v17.i64 = sub_100012EB4(v15, a5, a6, a7, a8);
  v39 = v17;
  *v18.f32 = v41;
  v18.f32[2] = v33 + 0.0;
  v18.i32[3] = 0;
  v42 = v18;
  v36 = vadd_f32(v34, v35);
  v19 = v37;
  v19.i32[1] = v36.i32[1];
  v19.f32[2] = v40;
  *v20.i64 = sub_100012EB4(v19, a5, a6, a7, a8);
  v38 = v20;
  v43 = sub_100012EB4(v42, a5, a6, a7, a8);
  *v21.f32 = v36;
  v21.f32[2] = v40 + 0.0;
  v21.i32[3] = 0;
  v22 = sub_100012EB4(v21, a5, a6, a7, a8);
  v23 = a2;
  v24 = 0.006;
  if (a3)
  {
    v24 = 0.008;
  }

  v25 = 0.012;
  if (a3)
  {
    v25 = 0.01;
  }

  v26 = v25 * v23;
  v27 = a1[19];
  v28 = v24 * v23;
  v29 = *(a1 + 86);
  *a4 = a1[18];
  *(a4 + 16) = v27;
  *(a4 + 32) = vzip1q_s64(v39, v38);
  v30 = vsub_f32(vzip1_s32(*v39.i8, *v38.i8), vzip1_s32(*&v43, *&v22));
  v31 = vsub_f32(vzip2_s32(*v39.i8, *v38.i8), vzip2_s32(*&v43, *&v22));
  *(a4 + 48) = vmul_f32(vsqrt_f32(vadd_f32(vmul_f32(v30, v30), vmul_f32(v31, v31))), 0x3F0000003F000000);
  result = v28 * v29;
  *(a4 + 56) = v26;
  *(a4 + 60) = v28 * v29;
  return result;
}

void sub_1000DDF78(uint64_t a1)
{
  __chkstk_darwin(a1);
  v8 = *(v1 + 72);
  v9 = *(v1 + 104);
  v427 = *(v1 + 88);
  v428 = v9;
  v429 = *(v1 + 120);
  v425 = *(v1 + 56);
  v426 = v8;
  if (!v425)
  {
    return;
  }

  v293 = v7;
  v290 = v6;
  v287 = v2;
  v10 = v5;
  v278 = v428;
  v279 = DWORD2(v427);
  v12 = *(&v428 + 1);
  v11 = v429;
  v13 = *(v1 + 312);
  v274 = v425;
  swift_unknownObjectRetain();
  v273 = *(&v425 + 1);
  swift_unknownObjectRetain();
  v282 = v426;
  swift_unknownObjectRetain();
  v284 = *(&v426 + 1);
  swift_unknownObjectRetain();
  v280 = v427;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v277 = v429;

  v295 = v10;
  v289 = v13;
  v297 = v1;
  sub_1000D9F58(v10);
  memcpy(__dst, __src, 0x219uLL);
  memcpy(v357, __dst, 0x208uLL);
  v14 = BYTE8(__dst[32]);
  v15 = *&__dst[33];
  if (BYTE8(__dst[33]))
  {
    v15 = 0.0;
  }

  v16 = *(v1 + 24);
  v17 = *(v1 + 32);
  *(v1 + 24) = v15;
  *(v1 + 32) = 0;
  if ((v17 & 1) != 0 || v15 != v16)
  {
    v18 = *(v1 + 40);
    if (v18)
    {

      v18(v19);
      sub_1000056DC(v18);
    }
  }

  v20 = *(v10 + 4);
  v275 = WallpaperState.rotationLandscapeAmount.getter();
  v21 = [v293 computeCommandEncoder];
  if (!v21)
  {
    sub_10001B6F8();
    swift_allocError();
    *v177 = 5;
    swift_willThrow();
    sub_1000047C4(__dst, &qword_100133DA0);
    sub_1000047C4(&v425, &qword_100133DA8);
    return;
  }

  v22 = v21;
  v271 = v14;
  v272 = v12;
  v23 = sub_1000E98E4();
  [v22 setLabel:v23];

  [v22 setComputePipelineState:v297[25]];
  v307 = v22;
  [v22 setBuffer:v297[20] offset:0 atIndex:0];
  v24 = v297[37];
  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = v24 + 80;
    v304.i64[0] = v297[23];
    do
    {
      p_name = *(v26 - 40);
      v11 = *(v26 - 24);
      v28 = *(v26 - 16);
      v14 = *v26;
      v29 = v28[3];
      v30 = v28[4];
      if ((v29 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();

        swift_unknownObjectRetain();
        v31 = sub_1000E9D74();
        v38 = v28[4];
        v32 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
LABEL_24:
          __break(1u);
          break;
        }
      }

      else
      {
        if ((v30 & 0x8000000000000000) != 0)
        {
          goto LABEL_145;
        }

        if (v30 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_146;
        }

        v31 = *(v29 + 8 * v30 + 32);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();

        swift_unknownObjectRetain();
        v32 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_24;
        }
      }

      v33 = v28[2];
      if (!v33)
      {
        goto LABEL_147;
      }

      if (v32 == 0x8000000000000000 && v33 == -1)
      {
        goto LABEL_154;
      }

      v26 += 56;
      v28[4] = v32 % v33;
      v315.i64[0] = p_name;
      [v307 setBuffer:v31 offset:0 atIndex:1];
      memcpy(v353, v357, 0x208uLL);
      sub_1000299EC(__dst, __src, &qword_100133DA0);
      swift_getAtKeyPath();
      memcpy(__src, v353, 0x208uLL);
      sub_1000DFCB4(__src);
      *&v35 = v346;
      *(&v35 + 1) = DWORD2(v346);
      v335 = v35;
      [v307 setBytes:&v335 length:16 atIndex:2];
      sub_1000DFCA0(v304.i64[0], v353);
      v308 = v353[0];
      v311.i64[0] = v14;
      v14 = *&v353[1];
      sub_1000DFCA0(32, v353);
      v36 = *&v353[1];
      v37 = v353[0];
      v353[0] = v308;
      *&v353[1] = v14;
      v344 = v37;
      *&v345 = v36;
      [v307 dispatchThreads:v353 threadsPerThreadgroup:&v344];

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      --v25;
    }

    while (v25);
  }

  v20 = 1.0 - v20;
  [v307 endEncoding];
  v291 = vcvt_f32_f64(v295[9]);
  v3 = COERCE_DOUBLE(vrev64_s32(v291));
  v39 = sub_1000A0CC4(_swiftEmptyArrayStorage);
  p_name = (*&__dst[11] + 64);
  v40 = 1 << *(*&__dst[11] + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & *(*&__dst[11] + 64);
  v26 = (v40 + 63) >> 6;
  v315.i64[0] = *&__dst[11];

  v288 = 0;
  v43 = 0;
LABEL_28:
  LODWORD(v25) = 192;
  v44 = v43;
  v298 = v39;
  if (!v42)
  {
    goto LABEL_32;
  }

  do
  {
    while (1)
    {
      v43 = v44;
LABEL_35:
      v45 = __clz(__rbit64(v42));
      v42 &= v42 - 1;
      v46 = *(v315.i64[0] + 56) + 192 * (v45 | (v43 << 6));
      v48 = *(v46 + 32);
      v47 = *(v46 + 48);
      v49 = *(v46 + 16);
      __src[0] = *v46;
      __src[1] = v49;
      __src[2] = v48;
      __src[3] = v47;
      v50 = *(v46 + 64);
      v51 = *(v46 + 80);
      v52 = *(v46 + 96);
      __src[7] = *(v46 + 112);
      __src[6] = v52;
      __src[5] = v51;
      __src[4] = v50;
      v53 = *(v46 + 128);
      v54 = *(v46 + 144);
      v55 = *(v46 + 160);
      *&__src[11] = *(v46 + 176);
      __src[10] = v55;
      __src[9] = v54;
      __src[8] = v53;
      v56 = BYTE8(__src[6]);
      if (BYTE8(__src[6]) - 9 >= 4 && BYTE8(__src[6]) != 13)
      {
        break;
      }

      v44 = v43;
      if (!v42)
      {
        goto LABEL_32;
      }
    }

    v14 = BYTE9(__src[8]);
    if (!v39[2] || (v11 = v39, v57 = sub_1000A1E74(BYTE9(__src[8])), (v58 & 1) == 0))
    {
LABEL_44:
      v312 = v14;
      sub_1000B89BC(__src, v353);
      sub_1000056DC(v288);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v353[0] = v39;
      v11 = sub_1000A1E74(v312);
      v65 = v39[2];
      v66 = (v64 & 1) == 0;
      v67 = v65 + v66;
      if (__OFADD__(v65, v66))
      {
        __break(1u);
LABEL_175:
        __break(1u);
        goto LABEL_176;
      }

      v68 = v64;
      if (v39[3] < v67)
      {
        sub_1000B2958(v67, isUniquelyReferenced_nonNull_native);
        v69 = *&v353[0];
        v70 = sub_1000A1E74(v312);
        if ((v68 & 1) != (v71 & 1))
        {
          sub_1000E9FA4();
          __break(1u);
          return;
        }

        v11 = v70;
        v39 = v69;
        v72 = v312;
        if (v68)
        {
          goto LABEL_53;
        }

LABEL_51:
        v39[(v11 >> 6) + 8] |= 1 << v11;
        *(v39[6] + v11) = v72;
        *(v39[7] + 8 * v11) = _swiftEmptyArrayStorage;
        v73 = v39[2];
        v74 = __OFADD__(v73, 1);
        v75 = v73 + 1;
        if (v74)
        {
          goto LABEL_179;
        }

        v39[2] = v75;
        goto LABEL_53;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v72 = v312;
        if ((v64 & 1) == 0)
        {
          goto LABEL_51;
        }
      }

      else
      {
        sub_1000B6150();
        v39 = *&v353[0];
        v72 = v312;
        if ((v68 & 1) == 0)
        {
          goto LABEL_51;
        }
      }

LABEL_53:
      v299 = v39;
      v14 = v39[7];
      v76 = *(v14 + 8 * v11);
      v77 = swift_isUniquelyReferenced_nonNull_native();
      *(v14 + 8 * v11) = v76;
      if ((v77 & 1) == 0)
      {
        v76 = sub_1000A37D0(0, *(v76 + 2) + 1, 1, v76);
        *(v14 + 8 * v11) = v76;
      }

      v79 = *(v76 + 2);
      v78 = *(v76 + 3);
      v311.i64[0] = v79 + 1;
      if (v79 >= v78 >> 1)
      {
        *(v14 + 8 * v11) = sub_1000A37D0((v78 > 1), v311.i64[0], 1, v76);
      }

      sub_1000C5E5C(__src);
      v80 = *(v14 + 8 * v11);
      *(v80 + 16) = v311.i64[0];
      *(v80 + v79 + 32) = v56;
      v288 = sub_1000DBFB4;
      v39 = v299;
      goto LABEL_28;
    }

    v59 = *(v39[7] + 8 * v57);
    v60 = *(v59 + 16);
    v61 = (v59 + 32);
    do
    {
      if (!v60)
      {
        goto LABEL_44;
      }

      v62 = *v61++;
      --v60;
    }

    while (v62 != v56);
    v44 = v43;
  }

  while (v42);
  while (1)
  {
LABEL_32:
    v43 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
      goto LABEL_148;
    }

    if (v43 >= v26)
    {
      break;
    }

    v42 = p_name[v43];
    ++v44;
    if (v42)
    {
      goto LABEL_35;
    }
  }

  v26 = v297[35];
  v81 = *(v26 + 24);
  v82 = *(v26 + 32);
  if ((v81 & 0xC000000000000001) != 0)
  {
    goto LABEL_155;
  }

  if ((v82 & 0x8000000000000000) != 0)
  {
    goto LABEL_158;
  }

  if (v82 >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_159;
  }

  v292 = *(v81 + 8 * v82 + 32);
  swift_unknownObjectRetain();
  v83 = v82 + 1;
  if (__OFADD__(v82, 1))
  {
    goto LABEL_157;
  }

LABEL_64:
  v84 = *(v26 + 16);
  if (v84)
  {
    if (v83 == 0x8000000000000000 && v84 == -1)
    {
      goto LABEL_171;
    }

    *(v26 + 32) = v83 % v84;
    v26 = v292;
    v308.i64[0] = [swift_unknownObjectRetain() contents];
    v86 = v292;
    v249 = *&__dst[12];
    v250 = *(&__dst[11] + 1);
    v246 = *(&__dst[12] + 1);
    v248 = *&__dst[13];
    v87 = *(*(&__dst[13] + 1) + 16);

    v304.i64[0] = v87;
    if (v87)
    {
      v89 = 0;
      v303.n128_u64[0] = v88 + 32;
      v300 = v88;
      while (v89 < *(v88 + 16))
      {
        if (!*(v315.i64[0] + 16))
        {
          goto LABEL_149;
        }

        v95 = v303.n128_u64[0] + 24 * v89;
        v14 = *v95;
        v25 = *(v95 + 8);
        v96 = *(v95 + 16);
        sub_1000A1DD4(*v95, v25, v96);
        v97 = sub_10009F2C8(v14, v25, v96);
        if ((v98 & 1) == 0)
        {
          goto LABEL_150;
        }

        v99 = *(v315.i64[0] + 56) + 192 * v97;
        v101 = *(v99 + 32);
        v100 = *(v99 + 48);
        v102 = *(v99 + 16);
        v418[0] = *v99;
        v418[1] = v102;
        v418[2] = v101;
        v418[3] = v100;
        v103 = *(v99 + 64);
        v104 = *(v99 + 80);
        v105 = *(v99 + 96);
        v420 = *(v99 + 112);
        v419 = v105;
        v418[5] = v104;
        v418[4] = v103;
        v106 = *(v99 + 128);
        v107 = *(v99 + 144);
        v108 = *(v99 + 160);
        v424 = *(v99 + 176);
        v423 = v108;
        v422 = v107;
        v421 = v106;
        v109 = BYTE8(v419);
        if (BYTE8(v419) - 9 >= 5 && *(v298 + 16) && (v110 = sub_1000A1E74(BYTE9(v421)), (v111 & 1) != 0) && (v112 = *(*(v298 + 56) + 8 * v110), (v113 = *(v112 + 16)) != 0))
        {
          v114 = 0;
          v115 = v112 + 32;
          while (1)
          {
            v116 = *(v115 + v114);
            v11 = v116 != v109;
            if (v116 == v109)
            {
              break;
            }

            if (v113 == ++v114)
            {
              v114 = 0;
              break;
            }
          }
        }

        else
        {
          v114 = 0;
          v11 = 1;
        }

        sub_1000B89BC(v418, __src);
        if (qword_10012F6C8 != -1)
        {
          swift_once();
        }

        v119 = qword_10013DC78;
        v311.i64[0] = v14;
        if (*(qword_10013DC78 + 16) && (v120 = sub_10009F2C8(v14, v25, v96), (v121 & 1) != 0))
        {
          v122 = v120;
          v123 = *(v119 + 56);
          v26 = swift_allocObject();
          *(v26 + 16) = *(v123 + 16 * v122);

          v14 = sub_1000DFD08;
        }

        else
        {
          v14 = 0;
          v26 = 0;
        }

        sub_1000BBC94(v14, v26, v114, v11, v322, v3, v117, v118);
        sub_1000056DC(v14);
        v90 = v322[5];
        v91 = (v308.i64[0] + (v89 << 7));
        v91[4] = v322[4];
        v91[5] = v90;
        v92 = v322[7];
        v91[6] = v322[6];
        v91[7] = v92;
        v93 = v322[1];
        *v91 = v322[0];
        v91[1] = v93;
        v94 = v322[3];
        v91[2] = v322[2];
        v91[3] = v94;
        sub_1000A1DF8(v311.i64[0], v25, v96);
        sub_1000C5E5C(v418);
        p_name = ++v89;
        v88 = v300;
        if (v89 == v87)
        {
          goto LABEL_90;
        }
      }

LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
      goto LABEL_151;
    }

LABEL_90:

    v26 = v297[36];
    v124 = *(v26 + 24);
    v125 = *(v26 + 32);
    if ((v124 & 0xC000000000000001) != 0)
    {
      goto LABEL_161;
    }

    if ((v125 & 0x8000000000000000) != 0)
    {
      goto LABEL_164;
    }

    if (v125 < *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v126 = *(v124 + 8 * v125 + 32);
      swift_unknownObjectRetain();
      v127 = v125 + 1;
      if (!__OFADD__(v125, 1))
      {
        goto LABEL_94;
      }

LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
    }

    __break(1u);
LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

  while (1)
  {
    __break(1u);
LABEL_161:
    v126 = sub_1000E9D74();
    v245 = *(v26 + 32);
    v127 = v245 + 1;
    if (__OFADD__(v245, 1))
    {
      goto LABEL_163;
    }

LABEL_94:
    v128 = *(v26 + 16);
    if (!v128)
    {
      goto LABEL_166;
    }

    if (v127 == 0x8000000000000000 && v128 == -1)
    {
      goto LABEL_172;
    }

    *(v26 + 32) = v127 % v128;
    v14 = [swift_unknownObjectRetain() contents];
    v129 = v126;
    v130 = *(*&__dst[16] + 16);

    v311.i64[0] = v130;
    if (!v130)
    {
      break;
    }

    v132 = 0;
    v25 = (v131 + 48);
    v308.i64[0] = v131;
    while (v132 < *(v131 + 16))
    {
      if (!*(v315.i64[0] + 16))
      {
        goto LABEL_152;
      }

      v137 = *(v25 - 2);
      v11 = *(v25 - 1);
      v138 = *v25;
      sub_1000A1DD4(v137, v11, *v25);
      v139 = sub_10009F2C8(v137, v11, v138);
      if ((v140 & 1) == 0)
      {
        goto LABEL_153;
      }

      v141 = *(v315.i64[0] + 56) + 192 * v139;
      v143 = *(v141 + 32);
      v142 = *(v141 + 48);
      v144 = *(v141 + 16);
      v416[0] = *v141;
      v416[1] = v144;
      v416[2] = v143;
      v416[3] = v142;
      v145 = *(v141 + 64);
      v146 = *(v141 + 80);
      v147 = *(v141 + 96);
      v416[7] = *(v141 + 112);
      v416[6] = v147;
      v416[5] = v146;
      v416[4] = v145;
      v148 = *(v141 + 128);
      v149 = *(v141 + 144);
      v150 = *(v141 + 160);
      v417 = *(v141 + 176);
      v416[10] = v150;
      v416[9] = v149;
      v416[8] = v148;
      sub_1000B89BC(v416, __src);
      if (qword_10012F6C8 != -1)
      {
        swift_once();
      }

      v153 = qword_10013DC78;
      if (*(qword_10013DC78 + 16) && (v154 = sub_10009F2C8(v137, v11, v138), (v155 & 1) != 0))
      {
        v156 = v154;
        v157 = *(v153 + 56);
        v26 = swift_allocObject();
        *(v26 + 16) = *(v157 + 16 * v156);

        p_name = sub_1000E2A80;
      }

      else
      {
        p_name = 0;
        v26 = 0;
      }

      ++v132;
      sub_1000BBC94(p_name, v26, 0, 1, v323, v3, v151, v152);
      sub_1000C5E5C(v416);
      sub_1000056DC(p_name);
      v133 = v323[5];
      *(v14 + 64) = v323[4];
      *(v14 + 80) = v133;
      v134 = v323[7];
      *(v14 + 96) = v323[6];
      *(v14 + 112) = v134;
      v135 = v323[1];
      *v14 = v323[0];
      *(v14 + 16) = v135;
      v136 = v323[3];
      *(v14 + 32) = v323[2];
      *(v14 + 48) = v136;
      sub_1000A1DF8(v137, v11, v138);
      v14 += 128;
      v25 += 24;
      v131 = v308.i64[0];
      if (v130 == v132)
      {
        goto LABEL_109;
      }
    }

LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    v292 = sub_1000E9D74();
    v244 = *(v26 + 32);
    v83 = v244 + 1;
    if (!__OFADD__(v244, 1))
    {
      goto LABEL_64;
    }

LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
  }

LABEL_109:

  p_name = &stru_10012CFF8.name;
  v158 = [v290 width];
  v11 = &stru_10012CFF8.name;
  v159 = [v290 height];
  LODWORD(v25) = v289;
  v160 = 1.0;
  if (v289)
  {
    v160 = -0.5;
  }

  v161 = v160 * vmuls_lane_f32(0.15, v291, 1);
  if (v289)
  {
    v162 = 0.1;
  }

  else
  {
    v162 = 0.2;
  }

  v301 = xmmword_1000EC910;
  sub_10001358C(v319, v161, xmmword_1000EC910);
  v305 = sub_100013568(v319);
  v309 = v163;
  v313 = v164;
  v316 = v165;
  sub_10001358C(v320, v162 * v291.f32[0], xmmword_1000EC8E0);
  v166 = sub_100013568(v320);
  v167 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v305, v166.n128_f32[0]), v309, v166.n128_u64[0], 1), v313, v166, 2), v316, v166, 3);
  v169 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v305, v168.f32[0]), v309, *v168.f32, 1), v313, v168, 2), v316, v168, 3);
  v171 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v305, v170.f32[0]), v309, *v170.f32, 1), v313, v170, 2), v316, v170, 3);
  v173 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v305, v172.f32[0]), v309, *v172.f32, 1), v313, v172, 2), v316, v172, 3);
  v174 = vmulq_f32(v167, 0);
  v175 = vmlaq_f32(vmlaq_f32(vaddq_f32(v169, v174), 0, v171), 0, v173);
  v176 = vmlaq_f32(v174, 0, v169);
  v4 = v158 / v159;
  v291.i32[0] = HIDWORD(__dst[9]);
  v311 = v175;
  v315 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v167, 0, v169), 0, v171), 0, v173);
  v308 = vmlaq_f32(vaddq_f32(v171, v176), 0, v173);
  v303 = xmmword_1000EC920;
  v304 = vaddq_f32(v173, vmlaq_n_f32(v176, v171, *(&__dst[9] + 3)));
  if ((v289 & 1) == 0)
  {
    v14 = v284;
    v26 = v295;
    if (qword_10012F4E0 != -1)
    {
      goto LABEL_173;
    }

    goto LABEL_118;
  }

  v270 = xmmword_1000ED260;
  v268 = xmmword_1000F5C40;
  v269 = xmmword_1000EC920;
  v14 = v284;
  v26 = v295;
  while (2)
  {
    v178 = *(v26 + 72);
    __dst[34] = *(v26 + 56);
    v356[0] = v178;
    *(v356 + 9) = *(v26 + 81);
    v179 = sub_100009DE0();
    sub_10001358C(v321, v179, v303);
    v180 = sub_100013568(v321);
    v267 = v181;
    v285 = v182;
    v183 = *&__dst[10];
    v262 = v180;
    v264 = v184;
    v185 = __invert_f2(v180);
    v256 = *(&__dst[10] + 8);
    v186 = sub_1000DFD5C(v183);
    sub_1000DFD78(__src, v186, v4);
    v251 = __src[0];
    v252 = __src[1];
    v253 = __src[2];
    v254 = __src[3];
    v255 = __src[4];
    if (v25)
    {
      v187 = -1;
    }

    else
    {
      v187 = 0;
    }

    v259 = __src[7];
    v257 = __src[5];
    v258 = __src[6];
    v430.columns[1] = v311;
    v430.columns[0] = v315;
    v430.columns[2] = v308;
    v430.columns[3] = v304;
    v431 = __invert_f4(v430);
    v260 = v431.columns[0];
    v261 = v431.columns[1];
    v263 = v431.columns[2];
    v266 = v431.columns[3];
    v265 = tanf(((v183 * 3.1416) / 180.0) * 0.5);
    v413 = __dst[22];
    v414 = __dst[23];
    v415 = __dst[24];
    sub_1000BC578(&v344);
    v410 = __dst[25];
    v411 = __dst[26];
    v412 = __dst[27];
    sub_1000BC578(v353);
    v188.n128_f64[0] = (*(&__dst[16] + 1))(v20);
    v303 = v188;
    v20 = *&__dst[21];
    v296 = __dst[28];
    v189 = [v14 p_name[276]];
    if ((v189 & 0x8000000000000000) != 0)
    {
LABEL_167:
      __break(1u);
      goto LABEL_168;
    }

    v190 = v189;
    if (v189 >> 16)
    {
LABEL_168:
      __break(1u);
      goto LABEL_169;
    }

    v191 = [v14 *(v11 + 2216)];
    if ((v191 & 0x8000000000000000) != 0)
    {
LABEL_169:
      __break(1u);
      goto LABEL_170;
    }

    v192 = v191;
    if (v191 >> 16)
    {
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      swift_once();
LABEL_118:
      v301 = *algn_10013A970;
      v268 = xmmword_10013A960;
      v269 = xmmword_10013A980;
      v270 = unk_10013A990;
      continue;
    }

    break;
  }

  v341 = v350;
  v342 = v351;
  v343 = v352;
  v337 = v346;
  v338 = v347;
  v340 = v349;
  v339 = v348;
  v336 = v345;
  v335 = v344;
  v332 = v353[6];
  v333 = v353[7];
  v334 = v353[8];
  v328 = v353[2];
  v329 = v353[3];
  v331 = v353[5];
  v330 = v353[4];
  v327 = v353[1];
  v326 = v353[0];
  swift_unknownObjectRetain();
  sub_1000DCC68(v282, v14, v280);
  v194 = v193;
  swift_unknownObjectRelease();
  v195 = [v293 renderCommandEncoderWithDescriptor:v194];

  if (!v195)
  {
    sub_10001B6F8();
    swift_allocError();
    *v226 = 5;
    swift_willThrow();
    sub_1000047C4(&v425, &qword_100133DA8);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1000047C4(__dst, &qword_100133DA0);

    goto LABEL_130;
  }

  v196 = vmla_lane_f32(vmul_n_f32(v185.columns[0], v256.f32[0]), v185.columns[1], v256, 1);
  v197 = *&v251;
  v198 = *(&v251 + 1);
  v199 = *&v252;
  v200 = *(&v252 + 1);
  v201 = *&v253;
  v202 = *(&v253 + 1);
  v203 = *&v254;
  v204 = *(&v254 + 1);
  v205 = *&v255;
  v206 = *(&v255 + 1);
  v207 = *&v257;
  v208 = *(&v257 + 1);
  v209 = (v196.f32[0] + v196.f32[0]) + v205;
  v196.f32[0] = v206 - (v196.f32[1] + v196.f32[1]);
  v210 = v208 + 0.0;
  v211 = *&v258;
  v212 = *(&v258 + 1);
  v213 = *&v259;
  v214 = *(&v259 + 1);
  v215 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v268, v197), v301, v198), v269, v199), v270, v200);
  v216 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v268, v201), v301, v202), v269, v203), v270, v204);
  v217 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v268, v209), v301, v196.f32[0]), v269, v207 + 0.0), v270, v210);
  v218 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v268, v211), v301, v212), v269, v213), v270, v214);
  v219 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v215, v262.f32[0]), v216, *v262.f32, 1), v217, v262, 2), v218, v262, 3);
  v220 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v215, v264.f32[0]), v216, *v264.f32, 1), v217, v264, 2), v218, v264, 3);
  v221 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v215, v267.f32[0]), v216, *v267.f32, 1), v217, v267, 2), v218, v267, 3);
  v222 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v215, v285.f32[0]), v216, *v285.f32, 1), v217, v285, 2), v218, v285, 3);
  v223 = vbsl_s8(vdup_n_s32(v187), vadd_f32(vmul_n_f32(0x3F0000003E4CCCCCLL, v275), 0xBF19999A3E99999ALL), 0xBECCCCCD3D4CCCCDLL);
  v286 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v219, v260.f32[0]), v220, *v260.f32, 1), v221, v260, 2), v222, v260, 3);
  v283 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v219, v261.f32[0]), v220, *v261.f32, 1), v221, v261, 2), v222, v261, 3);
  v281 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v219, v263.f32[0]), v220, *v263.f32, 1), v221, v263, 2), v222, v263, 3);
  v276 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v219, v266.f32[0]), v220, *v266.f32, 1), v221, v266, 2), v222, v266, 3);
  v216.f32[0] = -(v4 * v265);
  v216.f32[1] = v4 * v265;
  v216.f32[2] = v265;
  v216.f32[3] = -v265;
  v302 = v216;
  v224 = v25 ^ 1;
  v225 = sub_1000E98E4();
  [v195 setLabel:v225];

  [v14 width];
  [v14 height];
  v398[14] = v349;
  v398[15] = v350;
  v398[16] = v351;
  v398[17] = v352;
  v398[10] = v345;
  v398[11] = v346;
  v398[0] = v286;
  v398[1] = v283;
  v398[2] = v281;
  v398[3] = v276;
  v398[4] = v315;
  v398[5] = v311;
  v398[6] = v308;
  v398[7] = v304;
  v398[12] = v347;
  v398[13] = v348;
  v398[8] = v302;
  v398[9] = v344;
  v398[24] = v353[6];
  v398[25] = v353[7];
  v398[26] = v353[8];
  v398[20] = v353[2];
  v398[21] = v353[3];
  v398[23] = v353[5];
  v398[22] = v353[4];
  v398[19] = v353[1];
  v398[18] = v353[0];
  v399 = v303.n128_u64[0];
  v400 = v303.n128_u32[2];
  v401 = v20;
  v402 = v223;
  v403 = v291.i32[0];
  v404 = v4;
  v405 = v296;
  v407 = v192;
  v406 = v190;
  v408 = 1;
  v409 = v224;
  sub_1000DCDD8(v357, v195, v398, v298, v271);
  [v195 endEncoding];
  sub_10001A890(v279, v278, v272, v277, v14, v293, 0);
  if (v287)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1000047C4(__dst, &qword_100133DA0);
    swift_unknownObjectRelease();
    sub_1000047C4(&v425, &qword_100133DA8);

    goto LABEL_130;
  }

  v227 = [v290 width];
  if ((v227 & 0x8000000000000000) != 0)
  {
    goto LABEL_175;
  }

  v228 = v227;
  if (v227 >> 16)
  {
LABEL_176:
    __break(1u);
    goto LABEL_177;
  }

  v229 = [v290 height];
  if ((v229 & 0x8000000000000000) != 0)
  {
LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  v230 = v229;
  if (v229 >> 16)
  {
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
    goto LABEL_180;
  }

  sub_1000DCC68(v274, v290, v273);
  v232 = v231;
  v233 = [v293 renderCommandEncoderWithDescriptor:v231];
  if (v233)
  {
    v234 = v233;
    v294 = v232;
    v235 = sub_1000E98E4();
    [v234 setLabel:v235];

    [v290 width];
    [v290 height];
    v358 = v286;
    v359 = v283;
    v360 = v281;
    v361 = v276;
    v362 = v315;
    v363 = v311;
    v364 = v308;
    v365 = v304;
    v372 = v340;
    v373 = v341;
    v374 = v342;
    v375 = v343;
    v368 = v336;
    v369 = v337;
    v370 = v338;
    v371 = v339;
    v366 = v302;
    v367 = v335;
    v382 = v332;
    v383 = v333;
    v384 = v334;
    v378 = v328;
    v379 = v329;
    v381 = v331;
    v380 = v330;
    v377 = v327;
    v376 = v326;
    v385 = v303.n128_u64[0];
    v386 = v303.n128_u32[2];
    v387 = v20;
    v388 = v223;
    v389 = v291.i32[0];
    v390 = v4;
    v391 = v296;
    v393 = v230;
    v392 = v228;
    v394 = 0;
    v395 = v224;
    v396 = v324;
    v397 = v325;
    sub_1000DCDD8(v357, v234, &v358, v298, v271);
    v236 = 30;
    if (v271)
    {
      v236 = 31;
    }

    v314 = v359;
    v317 = v358;
    v310 = v360;
    v306 = v361;
    [v234 setRenderPipelineState:{v297[v236], v246}];
    [v234 setVertexBuffer:v297[26] offset:0 atIndex:2];
    [v234 setVertexBuffer:v297[27] offset:0 atIndex:3];
    sub_1000BADD8(*(v248 + 16), __src, *&__dst[9]);
    [v234 setVertexBytes:__src length:192 atIndex:4];
    [v234 setFragmentBytes:__src length:192 atIndex:2];
    *&v237 = sub_1000DDD50(v357, [v290 height], v289, v318, v317, v314, v310, v306);
    [v234 setFragmentBytes:v318 length:64 atIndex:{3, v237}];
    [v234 setFragmentTexture:v272 atIndex:7];
    v238 = *(v250 + 16);
    v239 = *(v249 + 16);
    v74 = __OFADD__(v238, v239);
    v240 = v238 + v239;
    if (!v74)
    {
      v241 = *(v247 + 16);
      v74 = __OFADD__(v240, v241);
      v242 = v240 + v241;
      if (!v74)
      {
        if ((v242 - 0x100000000000000) >> 57 == 127)
        {
          [v234 setFragmentBufferOffset:v242 << 7 atIndex:1];
          [v234 drawIndexedPrimitives:3 indexCount:v297[29] indexType:0 indexBuffer:v297[28] indexBufferOffset:0];
          [v234 endEncoding];
          swift_unknownObjectRelease();

          sub_1000047C4(&v425, &qword_100133DA8);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          sub_1000047C4(__dst, &qword_100133DA0);

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          sub_1000056DC(v288);
          return;
        }

LABEL_182:
        __break(1u);
      }

LABEL_181:
      __break(1u);
      goto LABEL_182;
    }

LABEL_180:
    __break(1u);
    goto LABEL_181;
  }

  sub_10001B6F8();
  swift_allocError();
  *v243 = 5;
  swift_willThrow();
  sub_1000047C4(&v425, &qword_100133DA8);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1000047C4(__dst, &qword_100133DA0);

  swift_unknownObjectRelease();

LABEL_130:
  swift_unknownObjectRelease();
  sub_1000056DC(v288);
}

int64x2_t sub_1000DFCA0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  result = vdupq_n_s64(1uLL);
  *(a2 + 8) = result;
  return result;
}

double sub_1000DFD0C(__n128 a1, __n128 a2, __n128 a3, __n128 a4, double a5)
{
  v6 = *(v5 + 16);
  v10[0] = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  v9 = a5;
  v6(&v8, v10, &v9);
  return *&v8;
}

double sub_1000DFD78@<D0>(_OWORD *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v5 = tan(a2 * 0.5);
  *&v6 = 0;
  *(&v6 + 1) = 1.0 / v5;
  *a1 = COERCE_UNSIGNED_INT64(1.0 / v5 / a3);
  a1[1] = 0u;
  a1[2] = v6;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = xmmword_1000F5C50;
  result = 15.0;
  a1[6] = 0u;
  a1[7] = xmmword_1000F5C60;
  return result;
}

uint64_t sub_1000DFDF0(uint64_t a1)
{
  v1 = *(a1 + 176);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1000DFE08(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v202 = a2;
  v203 = a3;
  v187 = a4;
  v5 = sub_1000E93B4();
  v201 = *(v5 - 8);
  __chkstk_darwin(v5);
  v190 = &v168 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v191 = &v168 - v8;
  __chkstk_darwin(v9);
  v188 = &v168 - v10;
  __chkstk_darwin(v11);
  v189 = &v168 - v12;
  __chkstk_darwin(v13);
  v192 = &v168 - v14;
  __chkstk_darwin(v15);
  v193 = &v168 - v16;
  __chkstk_darwin(v17);
  v194 = &v168 - v18;
  __chkstk_darwin(v19);
  v195 = &v168 - v20;
  __chkstk_darwin(v21);
  v23 = &v168 - v22;
  __chkstk_darwin(v24);
  v26 = &v168 - v25;
  v27 = [objc_allocWithZone(MTKTextureLoader) initWithDevice:a1];
  v196 = objc_opt_self();
  v28 = [v196 mainBundle];
  v29 = sub_1000E98E4();
  v30 = [v28 URLForResource:v29 withExtension:0];

  if (!v30)
  {

    sub_10001B6F8();
    swift_allocError();
    *v37 = 0;
    swift_willThrow();

    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  v197 = v28;
  v198 = v27;
  v199 = a1;
  sub_1000E9364();

  v31 = v201;
  v32 = v201 + 32;
  v33 = *(v201 + 32);
  v33(v26, v23, v5);
  v34 = v200;
  v35 = sub_1000E93D4();
  if (v34)
  {
    (*(v31 + 8))(v26, v5);
    swift_unknownObjectRelease();

LABEL_5:
    swift_unknownObjectRelease();
    return;
  }

  v186 = v33;
  v200 = v32;
  v38 = v35;
  v39 = v36;
  v40 = [objc_opt_self() texture2DDescriptorWithPixelFormat:115 width:512 height:256 mipmapped:0];
  [v40 setUsage:1];
  [v40 setStorageMode:0];
  v41 = [v199 newTextureWithDescriptor:v40];
  if (!v41)
  {

    sub_10001B6F8();
    swift_allocError();
    *v62 = 3;
    swift_willThrow();

    swift_unknownObjectRelease();
    sub_1000190E4(v38, v39);
    swift_unknownObjectRelease();
    (*(v31 + 8))(v26, v5);
    return;
  }

  v180 = v40;
  v42 = v41;
  v43 = sub_1000E98E4();
  [v42 setLabel:v43];

  swift_unknownObjectRetain();
  v182 = v38;
  v183 = v39;
  v181 = v42;
  sub_1000DC6EC(v38, v39, v42, 512, 256);
  v179 = 0;
  v44 = sub_1000125FC(&unk_100130390);
  inited = swift_initStackObject();
  v46 = MTKTextureLoaderOptionTextureStorageMode;
  *(inited + 32) = MTKTextureLoaderOptionTextureStorageMode;
  v178 = xmmword_1000EC880;
  *(inited + 16) = xmmword_1000EC880;
  *(inited + 40) = 2;
  v47 = MTKTextureLoaderOptionSRGB;
  *(inited + 64) = &type metadata for UInt;
  *(inited + 72) = v47;
  *(inited + 104) = &type metadata for Bool;
  *(inited + 80) = 1;
  v177 = v46;
  v176 = v47;
  v185 = sub_1000A0EDC(inited);
  swift_setDeallocating();
  v48 = sub_1000125FC(&unk_100130CE0);
  swift_arrayDestroy();
  v49 = [v196 mainBundle];
  v50 = sub_1000E98E4();
  v51 = sub_1000E98E4();
  v184 = v49;
  v52 = [v49 URLForResource:v50 withExtension:v51];

  if (!v52)
  {
    sub_10001B6F8();
    v63 = swift_allocError();
    *v64 = 0;
    v200 = v63;
    swift_willThrow();
    v65 = v198;
    (*(v31 + 8))(v26, v5);
LABEL_19:

    sub_1000190E4(v182, v183);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    return;
  }

  v175 = v48;
  v53 = v194;
  sub_1000E9364();

  v54 = v195;
  v186(v195, v53, v5);
  v55 = v203;
  v56 = v198;
  if (!v203)
  {
    sub_10001B6F8();
    v61 = swift_allocError();
    *v66 = 0;
    swift_willThrow();
    goto LABEL_14;
  }

  swift_unknownObjectRetain();
  v57 = [v56 device];
  v58 = v179;
  v59 = sub_1000CF4A0(v54, v57, v185, v55);
  v60 = v54;
  v61 = v58;
  if (v58)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_14:
    if (qword_10012F780 != -1)
    {
      swift_once();
    }

    v67 = sub_1000E96A4();
    sub_100007488(v67, qword_10013DE48);
    swift_errorRetain();
    v68 = sub_1000E9684();
    v69 = sub_1000E9BA4();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v174 = v26;
      v204 = v72;
      *v70 = 136446722;
      *(v70 + 4) = sub_100093A3C(0x612D6F6465626C61, 0xE800000000000000, &v204);
      *(v70 + 12) = 2082;
      *(v70 + 14) = sub_100093A3C(7894123, 0xE300000000000000, &v204);
      *(v70 + 22) = 2114;
      swift_errorRetain();
      v73 = _swift_stdlib_bridgeErrorToNSError();
      *(v70 + 24) = v73;
      *v71 = v73;
      _os_log_impl(&_mh_execute_header, v68, v69, "failed to load texture “%{public}s.%{public}s”: %{public}@", v70, 0x20u);
      sub_1000047C4(v71, &qword_10012FA60);

      swift_arrayDestroy();
      v26 = v174;
    }

    v200 = v61;
    swift_willThrow();
    v74 = *(v201 + 8);
    v74(v195, v5);
    v65 = v198;
    v74(v26, v5);
    goto LABEL_19;
  }

  v174 = v26;
  v75 = v44;
  v76 = v59;
  v77 = v60;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v179 = v76;
  [v76 setLabel:0];
  v79 = *(v31 + 8);
  v78 = v31 + 8;
  v194 = v79;
  (v79)(v77, v5);

  v184 = v75;
  v80 = swift_initStackObject();
  *(v80 + 16) = v178;
  v195 = v5;
  v82 = v176;
  v81 = v177;
  *(v80 + 32) = v177;
  *(v80 + 40) = 2;
  *(v80 + 64) = &type metadata for UInt;
  *(v80 + 72) = v82;
  *(v80 + 104) = &type metadata for Bool;
  *(v80 + 80) = 0;
  v177 = v81;
  v176 = v82;
  v83 = sub_1000A0EDC(v80);
  swift_setDeallocating();
  swift_arrayDestroy();
  v84 = [v196 mainBundle];
  v85 = sub_1000E98E4();
  v86 = sub_1000E98E4();
  v185 = v84;
  v87 = [v84 URLForResource:v85 withExtension:v86];

  if (!v87)
  {
    v200 = v83;
    sub_10001B6F8();
    swift_allocError();
    *v102 = 0;
    swift_willThrow();
    v98 = v198;
    v99 = v174;
    v100 = v194;
    v101 = v195;
LABEL_26:
    v100(v99, v101);

    sub_1000190E4(v182, v183);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    return;
  }

  v88 = v192;
  sub_1000E9364();

  v89 = v193;
  v186(v193, v88, v195);
  swift_unknownObjectRetain();
  v90 = sub_1000CF4A0(v89, [v198 device], v83, v55);
  v91 = v55;
  v201 = v78;
  v103 = v90;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  v104 = sub_1000E98E4();
  [v103 setLabel:v104];
  v173 = v103;
  swift_unknownObjectRelease();

  v105 = v89;
  v106 = v195;
  (v194)(v105, v195);

  v107 = swift_initStackObject();
  *(v107 + 16) = v178;
  v109 = v176;
  v108 = v177;
  *(v107 + 32) = v177;
  *(v107 + 40) = 2;
  *(v107 + 64) = &type metadata for UInt;
  *(v107 + 72) = v109;
  *(v107 + 104) = &type metadata for Bool;
  *(v107 + 80) = 0;
  *&v178 = v108;
  v177 = v109;
  v110 = sub_1000A0EDC(v107);
  swift_setDeallocating();
  swift_arrayDestroy();
  v111 = [v196 mainBundle];
  v112 = sub_1000E98E4();
  v113 = sub_1000E98E4();
  v193 = v111;
  v114 = [v111 URLForResource:v112 withExtension:v113];

  if (!v114)
  {
    sub_10001B6F8();
    swift_allocError();
    *v119 = 0;
    swift_willThrow();
    v120 = v174;
    v121 = v194;
    swift_unknownObjectRelease();

    sub_1000190E4(v182, v183);
    swift_unknownObjectRelease();

    v121(v120, v106);
    swift_unknownObjectRelease();
LABEL_30:
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  v115 = v188;
  sub_1000E9364();

  v116 = v189;
  v186(v189, v115, v106);
  swift_unknownObjectRetain();
  v117 = sub_1000CF4A0(v116, [v198 device], v110, v91);
  v118 = v202;
  v122 = v106;
  v123 = v117;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  v124 = sub_1000E98E4();
  [v123 setLabel:v124];
  v169 = v123;
  swift_unknownObjectRelease();

  (v194)(v116, v122);

  v125 = sub_1000A10D4(_swiftEmptyArrayStorage);
  v176 = *(v118 + 16);
  if (v176)
  {
    v98 = 0;
    v172 = MTKTextureLoaderOptionOrigin;
    v171 = MTKTextureLoaderOriginTopLeft;
    v170 = xmmword_1000ED250;
    v126 = v195;
    while (v98 < *(v118 + 16))
    {
      v130 = v98[v118 + 32];
      if (!*(v125 + 2) || (sub_1000A1E74(v98[v118 + 32]), v131 = v179, (v132 & 1) == 0))
      {
        v185 = v98;
        v189 = v125;
        v133 = 0x6361622D6F626F67;
        if (v130 == 7)
        {
          v133 = 0x622D622D6F626F67;
        }

        v134 = 0xEF646E756F72676BLL;
        if (v130 == 7)
        {
          v134 = 0xEC00000074736F6FLL;
        }

        if (v130 == 6)
        {
          v133 = 0x692D622D6F626F67;
          v134 = 0xEB00000000646170;
        }

        v135 = 0x642D622D6F626F67;
        if (v130 == 4)
        {
          v135 = 0x622D6F626F67;
        }

        v136 = 0xEB000000006B7261;
        if (v130 == 4)
        {
          v136 = 0xE600000000000000;
        }

        if (v130 <= 5)
        {
          v133 = v135;
          v134 = v136;
        }

        v137 = 0x692D612D6F626F67;
        if (v130 == 2)
        {
          v137 = 0x612D612D6F626F67;
        }

        v138 = 0xEC000000322D746CLL;
        if (v130 != 2)
        {
          v138 = 0xEB00000000646170;
        }

        v139 = 0x612D6F626F67;
        if (v130)
        {
          v139 = 0x612D612D6F626F67;
        }

        v140 = 0xEC000000312D746CLL;
        if (!v130)
        {
          v140 = 0xE600000000000000;
        }

        if (v130 <= 1)
        {
          v137 = v139;
          v138 = v140;
        }

        if (v130 <= 3)
        {
          v133 = v137;
        }

        v192 = v133;
        if (v130 <= 3)
        {
          v141 = v138;
        }

        else
        {
          v141 = v134;
        }

        v142 = swift_initStackObject();
        *(v142 + 16) = v170;
        v144 = v177;
        v143 = v178;
        *(v142 + 32) = v178;
        *(v142 + 40) = 2;
        *(v142 + 64) = &type metadata for UInt;
        *(v142 + 72) = v144;
        *(v142 + 80) = 1;
        v145 = v172;
        *(v142 + 104) = &type metadata for Bool;
        *(v142 + 112) = v145;
        v146 = sub_1000E9914();
        *(v142 + 144) = &type metadata for String;
        *(v142 + 120) = v146;
        *(v142 + 128) = v147;
        v148 = v143;
        v149 = v144;
        v150 = v145;
        v151 = sub_1000A0EDC(v142);
        swift_setDeallocating();
        swift_arrayDestroy();
        v152 = [v196 mainBundle];
        v193 = v141;
        v153 = sub_1000E98E4();
        v154 = sub_1000E98E4();
        v188 = v152;
        v155 = [v152 URLForResource:v153 withExtension:v154];

        if (!v155)
        {
          v168 = v151;
          sub_10001B6F8();
          swift_allocError();
          *v164 = 0;
          swift_willThrow();
          v166 = v194;
          v165 = v195;
          v167 = v197;

          swift_unknownObjectRelease();
          sub_1000190E4(v182, v183);
          swift_unknownObjectRelease();
          v166(v174, v165);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          goto LABEL_30;
        }

        v156 = v190;
        sub_1000E9364();

        v157 = v191;
        v158 = v195;
        v186(v191, v156, v195);
        v159 = v203;
        swift_unknownObjectRetain();
        v160 = sub_1000CF4A0(v157, [v198 device], v151, v159);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        [v160 setLabel:0];
        (v194)(v157, v158);

        v98 = v185;
        v126 = v195;
        v127 = sub_1000E98E4();

        [v160 setLabel:v127];

        v128 = v189;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v204 = v128;
        sub_1000B4C14(v160, v130, isUniquelyReferenced_nonNull_native);
        v125 = v204;
        v118 = v202;
        v131 = v179;
      }

      if (v176 == ++v98)
      {
        goto LABEL_67;
      }
    }

    __break(1u);
    swift_once();
    v92 = sub_1000E96A4();
    sub_100007488(v92, qword_10013DE48);
    swift_errorRetain();
    v93 = sub_1000E9684();
    v94 = sub_1000E9BA4();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v204 = swift_slowAlloc();
      *v95 = 136446722;
      *(v95 + 4) = sub_100093A3C(0x2D736C616D726F6ELL, 0xE900000000000061, &v204);
      *(v95 + 12) = 2082;
      *(v95 + 14) = sub_100093A3C(7894123, 0xE300000000000000, &v204);
      *(v95 + 22) = 2114;
      swift_errorRetain();
      v97 = _swift_stdlib_bridgeErrorToNSError();
      *(v95 + 24) = v97;
      *v96 = v97;
      _os_log_impl(&_mh_execute_header, v93, v94, "failed to load texture “%{public}s.%{public}s”: %{public}@", v95, 0x20u);
      sub_1000047C4(v96, &qword_10012FA60);
      v98 = v198;

      swift_arrayDestroy();
    }

    v99 = v174;
    v100 = v194;
    swift_willThrow();
    v101 = v195;
    v100(v193, v195);
    goto LABEL_26;
  }

  v126 = v195;
  v131 = v179;
LABEL_67:

  swift_unknownObjectRelease();

  sub_1000190E4(v182, v183);
  swift_unknownObjectRelease();
  (v194)(v174, v126);
  v161 = v187;
  v162 = v173;
  *v187 = v131;
  v161[1] = v162;
  v163 = v181;
  v161[2] = v169;
  v161[3] = v163;
  v161[4] = v125;
}

void sub_1000E1A24(uint64_t a1)
{
  __chkstk_darwin(a1);
  v30 = v2;
  v3 = *(v1 + 16);
  if (v3)
  {
    v40 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = (v1 + 32);
    v10 = &qword_100132300;
    do
    {
      v34 = v3;
      v35 = v8;
      v36 = v7;
      v37 = v6;
      v38 = v5;
      v39 = v4;
      memcpy(__dst, v9, 0x418uLL);
      v33 = v9;
      memcpy(v74, v9, sizeof(v74));
      v11 = __dst[23];
      v12 = __dst[24];
      v13 = __dst[25];
      v14 = __dst[26];
      v15 = __dst[27];
      sub_1000299EC(__dst, __src, v10);
      sub_1000299EC(__dst, __src, v10);
      sub_1000DFCB4(__dst);
      memcpy(v51, &__dst[66], 0x208uLL);
      if (sub_1000DFDF0(v51) == 1)
      {
        v31 = __dst[28];
        v32 = __dst[29];
        v16 = v10;
        v17 = __dst[30];
        v18 = __dst[31];
        v19 = __dst[32];
        sub_1000299EC(__dst, __src, v16);

        sub_1000DFCB4(__dst);
        __src[0] = v11;
        __src[1] = v12;
        __src[2] = v13;
        __src[3] = v14;
        __src[4] = v15;
        swift_getAtKeyPath();

        v20 = v16;

        v21 = v44;
        sub_1000299EC(__dst, __src, v20);

        sub_1000DFCB4(__dst);
        __src[0] = v31;
        __src[1] = v32;
        __src[2] = v17;
        __src[3] = v18;
        __src[4] = v19;
        swift_getAtKeyPath();

        v22 = v44;
      }

      else
      {
        sub_1000299EC(__dst, __src, v10);
        sub_1000047C4(&__dst[66], &unk_100133DB0);

        sub_1000DFCB4(__dst);
        __src[0] = v11;
        __src[1] = v12;
        __src[2] = v13;
        __src[3] = v14;
        __src[4] = v15;
        swift_getAtKeyPath();

        v23 = v42[0];
        v44 = v51[23];
        v45 = v51[24];
        v46 = v51[25];
        v47 = v51[26];
        v48 = v51[27];

        swift_getAtKeyPath();

        if (v43 <= v23)
        {
          v21 = v23;
        }

        else
        {
          v21 = v43;
        }

        sub_1000299EC(__dst, __src, &qword_100132300);
        sub_1000047C4(&__dst[66], &unk_100133DB0);

        sub_1000DFCB4(__dst);
        __src[0] = v11;
        __src[1] = v12;
        __src[2] = v13;
        __src[3] = v14;
        __src[4] = v15;
        swift_getAtKeyPath();

        v24 = v42[0];
        v44 = v51[28];
        v45 = v51[29];
        v46 = v51[30];
        v47 = v51[31];
        v48 = v51[32];

        swift_getAtKeyPath();
        sub_1000047C4(&__dst[66], &unk_100133DB0);

        v20 = &qword_100132300;

        v22 = v43;
        if (v43 <= v24)
        {
          v22 = v24;
        }
      }

      v6 = v37;
      v5 = v38;
      if (v38 <= v21)
      {
        v25 = v21;
      }

      else
      {
        v25 = v38;
      }

      if (v37 >= v21)
      {
        v5 = v25;
      }

      if (v37 <= v21)
      {
        v6 = v21;
      }

      v26 = v40;
      if (v40 <= v22)
      {
        v27 = v22;
      }

      else
      {
        v27 = v40;
      }

      v4 = v39;
      if (v39 >= v22)
      {
        v26 = v27;
      }

      v40 = v26;
      if (v39 <= v22)
      {
        v4 = v22;
      }

      v8 = v35;
      if (v21 > v35)
      {
        v8 = v21;
      }

      v7 = v36;
      if (v22 > v36)
      {
        v7 = v22;
      }

      sub_1000299EC(__dst, __src, v20);
      sub_1000DFCB4(__dst);
      memcpy(__src, &__dst[66], 0x208uLL);
      if (sub_1000DFDF0(__src) == 1)
      {
        v10 = v20;
        sub_1000047C4(__dst, v20);
      }

      else
      {
        memcpy(v73, __src, 0x208uLL);
        v28.i32[0] = 0.5;
        sub_1000BEBB0(v73, 0, v52, v28);
        v72 = v53;
        v71 = v54;
        v70 = v55;
        v69 = v56;
        v68 = v57;
        v44 = v53;
        v45 = v54;
        v46 = v55;
        v47 = v56;
        v48 = v57;
        sub_1000299EC(&v72, v42, &unk_100133DF0);
        sub_1000299EC(&v71, v42, &unk_100133DF0);
        sub_1000299EC(&v70, v42, &unk_100133DF0);
        sub_1000299EC(&v69, v42, &unk_100133DF0);
        sub_1000299EC(&v68, v42, &unk_100133DF0);
        swift_getAtKeyPath();
        sub_1000047C4(&v72, &unk_100133DF0);
        sub_1000047C4(&v71, &unk_100133DF0);
        sub_1000047C4(&v70, &unk_100133DF0);
        sub_1000047C4(&v69, &unk_100133DF0);
        sub_1000047C4(&v68, &unk_100133DF0);
        v29 = v43;
        v67 = v58;
        v66 = v59;
        v65 = v60;
        v64 = v61;
        v63 = v62;
        v42[0] = v58;
        v42[1] = v59;
        v42[2] = v60;
        v42[3] = v61;
        v42[4] = v62;
        sub_1000299EC(&v67, &v41, &unk_100133DF0);
        sub_1000299EC(&v66, &v41, &unk_100133DF0);
        sub_1000299EC(&v65, &v41, &unk_100133DF0);
        sub_1000299EC(&v64, &v41, &unk_100133DF0);
        sub_1000299EC(&v63, &v41, &unk_100133DF0);
        v10 = &qword_100132300;
        swift_getAtKeyPath();
        sub_1000047C4(&__dst[66], &unk_100133DB0);
        sub_1000DFCB4(v52);
        sub_1000047C4(__dst, &qword_100132300);
        sub_1000047C4(&v67, &unk_100133DF0);
        sub_1000047C4(&v66, &unk_100133DF0);
        sub_1000047C4(&v65, &unk_100133DF0);
        sub_1000047C4(&v64, &unk_100133DF0);
        sub_1000047C4(&v63, &unk_100133DF0);
        if (v29 > v8)
        {
          v8 = v29;
        }

        if (v41 > v7)
        {
          v7 = v41;
        }
      }

      v9 = v33 + 1056;
      v3 = v34 - 1;
    }

    while (v34 != 1);
  }

  else
  {
    v40 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  *v30 = v8;
  v30[1] = v7;
  v30[2] = v6;
  v30[3] = v5;
  v30[4] = v4;
  v30[5] = v40;
}

uint64_t sub_1000E22C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v13 = [objc_opt_self() texture2DDescriptorWithPixelFormat:a4 width:a1 height:a2 mipmapped:0];
  [v13 setTextureType:4];
  [v13 setSampleCount:a5];
  [v13 setStorageMode:3];
  [v13 setUsage:4];
  v14 = [a6 newTextureWithDescriptor:v13];
  if (!v14)
  {
    sub_10001B6F8();
    swift_allocError();
    *v35 = 3;
    swift_willThrow();
LABEL_17:

    return swift_unknownObjectRelease();
  }

  v15 = v14;
  v16 = sub_1000E98E4();
  [v15 setLabel:v16];

  [v13 setPixelFormat:a3];
  v17 = [a6 newTextureWithDescriptor:v13];
  if (!v17)
  {
    sub_10001B6F8();
    swift_allocError();
    *v38 = 3;
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_17;
  }

  v18 = v17;
  v46 = a7;
  v19 = sub_1000E98E4();
  v48 = v18;
  [v18 setLabel:v19];

  [v13 setWidth:{objc_msgSend(v13, "width") / 2}];
  [v13 setHeight:{objc_msgSend(v13, "height") / 2}];
  v20 = [a6 newTextureWithDescriptor:v13];
  v56 = v20;
  if (v20 && (v21 = v20, v22 = sub_1000E98E4(), [v21 setLabel:v22], v22, objc_msgSend(v13, "setPixelFormat:", a4), (v23 = objc_msgSend(a6, "newTextureWithDescriptor:", v13)) != 0))
  {
    v24 = v23;
    swift_unknownObjectRetain();
    v25 = sub_1000E98E4();
    [v24 setLabel:v25];

    v47 = v24;
    swift_unknownObjectRelease();
    [v13 setTextureType:2];
    [v13 setSampleCount:1];
    [v13 setPixelFormat:a3];
    [v13 setStorageMode:2];
    [v13 setUsage:5];
    v26 = [a6 newTextureWithDescriptor:v13];
    if (v26)
    {
      v27 = v26;
      v28 = sub_1000E98E4();
      [v27 setLabel:v28];

      swift_unknownObjectRetain();
      [v13 setUsage:3];
      v29 = sub_10001B130(v27, 0, 1);
      if (!v7)
      {
        v40 = v29;
        v41 = v30;
        v42 = v31;
        v43 = v32;
        swift_unknownObjectRelease();

        *&v50 = v48;
        *(&v50 + 1) = v15;
        *&v51 = v56;
        *(&v51 + 1) = v27;
        *&v52 = v47;
        *(&v52 + 1) = v40;
        *&v53 = v41;
        *(&v53 + 1) = v42;
        v54 = v43;
        v55[0] = v48;
        v55[1] = v15;
        v55[2] = v56;
        v55[3] = v27;
        v55[4] = v47;
        v55[5] = v40;
        v55[6] = v41;
        v55[7] = v42;
        v55[8] = v43;
        sub_1000E2984(&v50, v49);
        result = sub_1000E29BC(v55);
        v44 = v53;
        *(v46 + 32) = v52;
        *(v46 + 48) = v44;
        *(v46 + 64) = v54;
        v45 = v51;
        *v46 = v50;
        *(v46 + 16) = v45;
        return result;
      }

      v33 = 1;
      v34 = 1;
    }

    else
    {
      sub_10001B6F8();
      swift_allocError();
      *v39 = 3;
      swift_willThrow();
      v33 = 0;
      v34 = 1;
    }
  }

  else
  {
    sub_10001B6F8();
    swift_allocError();
    *v36 = 3;
    swift_willThrow();
    v33 = 0;
    v34 = 0;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v56)
  {
    swift_unknownObjectRelease();
  }

  if (v33)
  {
    swift_unknownObjectRelease();
  }

  result = v47;
  if (v34)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000E2830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  type metadata accessor for SpaceRenderer();
  v8 = swift_allocObject();
  swift_unknownObjectRetain();
  v9 = swift_unknownObjectRetain();
  sub_1000D4660(v9);
  if (v5)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = *(v8 + 16);
    swift_unknownObjectRetain();
    sub_1000E22C0(a4, a5, 81, 250, 4, v10, v18);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v12 = *(v8 + 72);
    v13 = *(v8 + 104);
    v16[2] = *(v8 + 88);
    v16[3] = v13;
    v16[0] = *(v8 + 56);
    v16[1] = v12;
    v14 = v18[0];
    *(v8 + 72) = v18[1];
    v15 = v18[3];
    *(v8 + 88) = v18[2];
    *(v8 + 104) = v15;
    v17 = *(v8 + 120);
    *(v8 + 120) = v19;
    *(v8 + 56) = v14;
    sub_1000047C4(v16, &qword_100133DA8);
  }

  return v8;
}

uint64_t sub_1000E29F4(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000E2A84()
{
  sub_1000AB384(&off_10011DF80);
  v338 = v0;
  type metadata accessor for ToriLight();
  v1 = swift_allocObject();
  *(v1 + 48) = 0;
  *(v1 + 52) = 0;
  *(v1 + 56) = 257;
  *(v1 + 64) = _swiftEmptyArrayStorage;
  v323 = (v1 + 64);
  *(v1 + 16) = 2;
  *(v1 + 32) = v338;
  swift_beginAccess();
  *(v1 + 48) = 1;
  swift_beginAccess();
  *(v1 + 52) = 1065353216;
  swift_beginAccess();
  *(v1 + 56) = 0;
  swift_beginAccess();
  v305 = v1;
  *(v1 + 57) = 1;
  sub_1000AB384(&off_10011DFB0);
  v339 = v2;
  v3 = swift_allocObject();
  *(v3 + 48) = 0;
  *(v3 + 52) = 0;
  *(v3 + 56) = 257;
  *(v3 + 64) = _swiftEmptyArrayStorage;
  v287 = (v3 + 64);
  *(v3 + 16) = 2;
  *(v3 + 32) = v339;
  swift_beginAccess();
  *(v3 + 48) = 1;
  swift_beginAccess();
  *(v3 + 52) = 1065353216;
  swift_beginAccess();
  *(v3 + 56) = 1;
  swift_beginAccess();
  v304 = v3;
  *(v3 + 57) = 1;
  sub_1000AB384(&off_10011DFE0);
  v340 = v4;
  v5 = swift_allocObject();
  *(v5 + 48) = 0;
  *(v5 + 52) = 0;
  *(v5 + 56) = 257;
  *(v5 + 64) = _swiftEmptyArrayStorage;
  v321 = (v5 + 64);
  *(v5 + 16) = 2;
  *(v5 + 32) = v340;
  swift_beginAccess();
  *(v5 + 48) = 0;
  swift_beginAccess();
  *(v5 + 52) = 1065353216;
  swift_beginAccess();
  *(v5 + 56) = 1;
  swift_beginAccess();
  *(v5 + 57) = 1;
  sub_1000AB384(&off_10011E010);
  v341 = v6;
  v7 = swift_allocObject();
  *(v7 + 48) = 0;
  *(v7 + 52) = 0;
  *(v7 + 56) = 257;
  *(v7 + 64) = _swiftEmptyArrayStorage;
  v327 = (v7 + 64);
  *(v7 + 16) = 2;
  *(v7 + 32) = v341;
  swift_beginAccess();
  *(v7 + 48) = 1;
  swift_beginAccess();
  *(v7 + 52) = 1065353216;
  swift_beginAccess();
  *(v7 + 56) = 1;
  swift_beginAccess();
  v303 = v7;
  *(v7 + 57) = 1;
  sub_1000AB384(&off_10011E040);
  v342 = v8;
  v9 = swift_allocObject();
  *(v9 + 48) = 0;
  *(v9 + 52) = 0;
  *(v9 + 56) = 257;
  *(v9 + 64) = _swiftEmptyArrayStorage;
  v332 = (v9 + 64);
  *(v9 + 16) = 2;
  *(v9 + 32) = v342;
  swift_beginAccess();
  *(v9 + 48) = 0;
  swift_beginAccess();
  *(v9 + 52) = 1065353216;
  swift_beginAccess();
  *(v9 + 56) = 1;
  swift_beginAccess();
  v302 = v9;
  *(v9 + 57) = 1;
  sub_1000AB384(&off_10011E070);
  v343 = v10;
  v11 = swift_allocObject();
  *(v11 + 48) = 0;
  *(v11 + 52) = 0;
  *(v11 + 56) = 257;
  *(v11 + 64) = _swiftEmptyArrayStorage;
  v289 = (v11 + 64);
  *(v11 + 16) = 2;
  *(v11 + 32) = v343;
  swift_beginAccess();
  *(v11 + 48) = 1;
  swift_beginAccess();
  *(v11 + 52) = 1065353216;
  swift_beginAccess();
  *(v11 + 56) = 1;
  swift_beginAccess();
  v301 = v11;
  *(v11 + 57) = 1;
  sub_1000AB384(&off_10011E0A0);
  v344 = v12;
  v13 = swift_allocObject();
  *(v13 + 48) = 0;
  *(v13 + 52) = 0;
  *(v13 + 56) = 257;
  *(v13 + 64) = _swiftEmptyArrayStorage;
  v330 = (v13 + 64);
  *(v13 + 16) = 2;
  *(v13 + 32) = v344;
  swift_beginAccess();
  *(v13 + 48) = 1;
  swift_beginAccess();
  *(v13 + 52) = 1065353216;
  swift_beginAccess();
  *(v13 + 56) = 1;
  swift_beginAccess();
  *(v13 + 57) = 1;
  sub_1000AB384(&off_10011E0D0);
  v319 = v14;
  v15 = swift_allocObject();
  *(v15 + 48) = 0;
  *(v15 + 52) = 0;
  *(v15 + 56) = 257;
  *(v15 + 64) = _swiftEmptyArrayStorage;
  v345 = (v15 + 64);
  *(v15 + 16) = 2;
  *(v15 + 32) = v319;
  swift_beginAccess();
  *(v15 + 48) = 1;
  swift_beginAccess();
  *(v15 + 52) = 1065353216;
  swift_beginAccess();
  *(v15 + 56) = 1;
  swift_beginAccess();
  v300 = v15;
  *(v15 + 57) = 1;
  sub_1000AB384(&off_10011E100);
  v312 = v16;
  v17 = swift_allocObject();
  *(v17 + 48) = 0;
  *(v17 + 52) = 0;
  *(v17 + 56) = 257;
  *(v17 + 64) = _swiftEmptyArrayStorage;
  v320 = (v17 + 64);
  *(v17 + 16) = 2;
  *(v17 + 32) = v312;
  swift_beginAccess();
  *(v17 + 48) = 1;
  swift_beginAccess();
  *(v17 + 52) = 1065353216;
  swift_beginAccess();
  *(v17 + 56) = 1;
  swift_beginAccess();
  v299 = v17;
  *(v17 + 57) = 1;
  sub_1000AB384(&off_10011E130);
  v313 = v18;
  v19 = swift_allocObject();
  *(v19 + 48) = 0;
  *(v19 + 52) = 0;
  *(v19 + 56) = 257;
  *(v19 + 64) = _swiftEmptyArrayStorage;
  v286 = (v19 + 64);
  *(v19 + 16) = 2;
  *(v19 + 32) = v313;
  swift_beginAccess();
  *(v19 + 48) = 1;
  swift_beginAccess();
  *(v19 + 52) = 1065353216;
  swift_beginAccess();
  *(v19 + 56) = 0;
  swift_beginAccess();
  *(v19 + 57) = 1;
  sub_1000AB384(&off_10011E160);
  v314 = v20;
  v21 = swift_allocObject();
  *(v21 + 48) = 0;
  *(v21 + 52) = 0;
  *(v21 + 56) = 257;
  *(v21 + 64) = _swiftEmptyArrayStorage;
  v22 = (v21 + 64);
  *(v21 + 16) = 2;
  *(v21 + 32) = v314;
  swift_beginAccess();
  *(v21 + 48) = 0;
  swift_beginAccess();
  *(v21 + 52) = 1065353216;
  swift_beginAccess();
  *(v21 + 56) = 1;
  swift_beginAccess();
  *(v21 + 57) = 1;
  sub_1000AB384(&off_10011E190);
  v315 = v23;
  sub_1000AB384(&off_10011E1C0);
  v309 = v24;
  swift_beginAccess();
  v25 = *v287;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v287 = v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v25 = sub_1000A35A4(0, *(v25 + 2) + 1, 1, v25);
    *v287 = v25;
  }

  v28 = *(v25 + 2);
  v27 = *(v25 + 3);
  if (v28 >= v27 >> 1)
  {
    v25 = sub_1000A35A4((v27 > 1), v28 + 1, 1, v25);
  }

  *(v25 + 2) = v28 + 1;
  v29 = &v25[80 * v28];
  *(v29 + 4) = 0x40490FDA44960000;
  *(v29 + 3) = v315;
  *(v29 + 16) = 1071898308;
  *(v29 + 5) = v309;
  *(v29 + 12) = 0x3F63D72C3E4CCCCDLL;
  *v287 = v25;
  swift_endAccess();
  sub_1000AB384(&off_10011E1F0);
  v310 = v30;
  sub_1000AB384(&off_10011E220);
  v307 = v31;
  swift_beginAccess();
  v32 = *v289;
  v33 = swift_isUniquelyReferenced_nonNull_native();
  *v289 = v32;
  if ((v33 & 1) == 0)
  {
    v32 = sub_1000A35A4(0, *(v32 + 2) + 1, 1, v32);
    *v289 = v32;
  }

  v35 = *(v32 + 2);
  v34 = *(v32 + 3);
  if (v35 >= v34 >> 1)
  {
    v32 = sub_1000A35A4((v34 > 1), v35 + 1, 1, v32);
  }

  *(v32 + 2) = v35 + 1;
  v36 = &v32[80 * v35];
  *(v36 + 4) = 0x4042CE8100000000;
  *(v36 + 3) = v310;
  *(v36 + 16) = 1083873825;
  *(v36 + 5) = v307;
  *(v36 + 12) = 0x3FA7AE253E4CCCCDLL;
  *v289 = v32;
  swift_endAccess();
  sub_1000AB384(&off_10011E250);
  v308 = v37;
  sub_1000AB384(&off_10011E280);
  v290 = v38;
  swift_beginAccess();
  v39 = *v323;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  *v323 = v39;
  if ((v40 & 1) == 0)
  {
    v39 = sub_1000A35A4(0, *(v39 + 2) + 1, 1, v39);
    *v323 = v39;
  }

  v42 = *(v39 + 2);
  v41 = *(v39 + 3);
  if (v42 >= v41 >> 1)
  {
    v39 = sub_1000A35A4((v41 > 1), v42 + 1, 1, v39);
  }

  *(v39 + 2) = v42 + 1;
  v43 = &v39[80 * v42];
  *(v43 + 4) = 0x401BEF4645098000;
  *(v43 + 3) = v308;
  *(v43 + 16) = 1083673012;
  *(v43 + 5) = v290;
  *(v43 + 12) = 0x401E148300000000;
  *v323 = v39;
  swift_endAccess();
  sub_1000AB384(&off_10011E2B0);
  v291 = v44;
  sub_1000AB384(&off_10011E2E0);
  v266 = v45;
  swift_beginAccess();
  v46 = *v321;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  *v321 = v46;
  if ((v47 & 1) == 0)
  {
    v46 = sub_1000A35A4(0, *(v46 + 2) + 1, 1, v46);
    *v321 = v46;
  }

  v49 = *(v46 + 2);
  v48 = *(v46 + 3);
  if (v49 >= v48 >> 1)
  {
    v46 = sub_1000A35A4((v48 > 1), v49 + 1, 1, v46);
  }

  *(v46 + 2) = v49 + 1;
  v50 = &v46[80 * v49];
  *(v50 + 4) = 0x40489D7944FA0000;
  *(v50 + 3) = v291;
  *(v50 + 16) = 1081021202;
  *(v50 + 5) = v266;
  *(v50 + 12) = 0x4220000000000000;
  *v321 = v46;
  swift_endAccess();
  sub_1000AB384(&off_10011E310);
  v292 = v51;
  sub_1000AB384(&off_10011E340);
  v267 = v52;
  swift_beginAccess();
  v53 = *v327;
  v54 = swift_isUniquelyReferenced_nonNull_native();
  *v327 = v53;
  if ((v54 & 1) == 0)
  {
    v53 = sub_1000A35A4(0, *(v53 + 2) + 1, 1, v53);
    *v327 = v53;
  }

  v56 = *(v53 + 2);
  v55 = *(v53 + 3);
  if (v56 >= v55 >> 1)
  {
    v53 = sub_1000A35A4((v55 > 1), v56 + 1, 1, v53);
  }

  *(v53 + 2) = v56 + 1;
  v57 = &v53[80 * v56];
  *(v57 + 4) = 0x40197A2F43E28000;
  *(v57 + 3) = v292;
  *(v57 + 16) = 1078027366;
  *(v57 + 5) = v267;
  *(v57 + 12) = 0x404F9DAE3E851EB8;
  *v327 = v53;
  swift_endAccess();
  sub_1000AB384(&off_10011E370);
  v293 = v58;
  sub_1000AB384(&off_10011E3A0);
  v268 = v59;
  swift_beginAccess();
  v60 = *v332;
  v61 = swift_isUniquelyReferenced_nonNull_native();
  *v332 = v60;
  if ((v61 & 1) == 0)
  {
    v60 = sub_1000A35A4(0, *(v60 + 2) + 1, 1, v60);
    *v332 = v60;
  }

  v63 = *(v60 + 2);
  v62 = *(v60 + 3);
  if (v63 >= v62 >> 1)
  {
    v60 = sub_1000A35A4((v62 > 1), v63 + 1, 1, v60);
  }

  *(v60 + 2) = v63 + 1;
  v64 = &v60[80 * v63];
  *(v64 + 4) = 0x4004EC9C00000000;
  *(v64 + 3) = v293;
  *(v64 + 16) = 1084793531;
  *(v64 + 5) = v268;
  *(v64 + 12) = 0x40D6B8563EC28F5CLL;
  *v332 = v60;
  swift_endAccess();
  sub_1000AB384(&off_10011E3D0);
  v294 = v65;
  sub_1000AB384(&off_10011E400);
  v269 = v66;
  swift_beginAccess();
  v67 = *v330;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  *v330 = v67;
  if ((v68 & 1) == 0)
  {
    v67 = sub_1000A35A4(0, *(v67 + 2) + 1, 1, v67);
    *v330 = v67;
  }

  v70 = *(v67 + 2);
  v69 = *(v67 + 3);
  if (v70 >= v69 >> 1)
  {
    v67 = sub_1000A35A4((v69 > 1), v70 + 1, 1, v67);
  }

  *(v67 + 2) = v70 + 1;
  v71 = &v67[80 * v70];
  *(v71 + 4) = 0x40197A2F00000000;
  *(v71 + 3) = v294;
  *(v71 + 16) = 1075112759;
  *(v71 + 5) = v269;
  *(v71 + 12) = 0x3F4A3D603EBB5BD5;
  *v330 = v67;
  swift_endAccess();
  sub_1000AB384(&off_10011E430);
  v295 = v72;
  sub_1000AB384(&off_10011E460);
  v270 = v73;
  swift_beginAccess();
  v74 = *v345;
  v75 = swift_isUniquelyReferenced_nonNull_native();
  *v345 = v74;
  if ((v75 & 1) == 0)
  {
    v74 = sub_1000A35A4(0, *(v74 + 2) + 1, 1, v74);
    *v345 = v74;
  }

  v77 = *(v74 + 2);
  v76 = *(v74 + 3);
  if (v77 >= v76 >> 1)
  {
    v74 = sub_1000A35A4((v76 > 1), v77 + 1, 1, v74);
  }

  *(v74 + 2) = v77 + 1;
  v78 = &v74[80 * v77];
  *(v78 + 4) = 0x4021BE3F00000000;
  *(v78 + 3) = v295;
  *(v78 + 16) = 1084229951;
  *(v78 + 5) = v270;
  *(v78 + 12) = 0x3FECCCDE3EC28F5CLL;
  *v345 = v74;
  swift_endAccess();
  sub_1000AB384(&off_10011E490);
  v296 = v79;
  sub_1000AB384(&off_10011E4C0);
  v271 = v80;
  swift_beginAccess();
  v81 = *v320;
  v82 = swift_isUniquelyReferenced_nonNull_native();
  *v320 = v81;
  if ((v82 & 1) == 0)
  {
    v81 = sub_1000A35A4(0, *(v81 + 2) + 1, 1, v81);
    *v320 = v81;
  }

  v84 = *(v81 + 2);
  v83 = *(v81 + 3);
  if (v84 >= v83 >> 1)
  {
    v81 = sub_1000A35A4((v83 > 1), v84 + 1, 1, v81);
  }

  *(v81 + 2) = v84 + 1;
  v85 = &v81[80 * v84];
  *(v85 + 4) = 0x3C8EFA3500000000;
  *(v85 + 3) = v296;
  *(v85 + 16) = 1077963460;
  *(v85 + 5) = v271;
  *(v85 + 12) = 0x3F65E3763FC51EB8;
  *v320 = v81;
  swift_endAccess();
  sub_1000AB384(&off_10011E4F0);
  v297 = v86;
  sub_1000AB384(&off_10011E520);
  v272 = v87;
  swift_beginAccess();
  v88 = *v286;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  *v286 = v88;
  if ((v89 & 1) == 0)
  {
    v88 = sub_1000A35A4(0, *(v88 + 2) + 1, 1, v88);
    *v286 = v88;
  }

  v91 = *(v88 + 2);
  v90 = *(v88 + 3);
  if (v91 >= v90 >> 1)
  {
    v88 = sub_1000A35A4((v90 > 1), v91 + 1, 1, v88);
  }

  *(v88 + 2) = v91 + 1;
  v92 = &v88[80 * v91];
  *(v92 + 4) = 0x40319ACE467C2066;
  *(v92 + 3) = v297;
  *(v92 + 16) = 1079994098;
  *(v92 + 5) = v272;
  *(v92 + 12) = 0x3F8000003F95C28FLL;
  *v286 = v88;
  swift_endAccess();
  sub_1000AB384(&off_10011E550);
  v298 = v93;
  sub_1000AB384(&off_10011E580);
  v273 = v94;
  swift_beginAccess();
  v95 = *v22;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  *v22 = v95;
  if ((v96 & 1) == 0)
  {
    v95 = sub_1000A35A4(0, *(v95 + 2) + 1, 1, v95);
    *v22 = v95;
  }

  v98 = *(v95 + 2);
  v97 = *(v95 + 3);
  if (v98 >= v97 >> 1)
  {
    v95 = sub_1000A35A4((v97 > 1), v98 + 1, 1, v95);
  }

  *(v95 + 2) = v98 + 1;
  v99 = &v95[80 * v98];
  *(v99 + 4) = 0x3F3793CD4430356ELL;
  *(v99 + 3) = v298;
  *(v99 + 16) = 1083455794;
  *(v99 + 5) = v273;
  *(v99 + 12) = 0x41DCE14800000000;
  *v22 = v95;
  swift_endAccess();
  sub_1000AB384(&off_10011E5B0);
  v274 = v100;
  sub_1000AB384(&off_10011E5E0);
  v255 = v101;
  swift_beginAccess();
  v102 = *v287;
  v103 = swift_isUniquelyReferenced_nonNull_native();
  *v287 = v102;
  if ((v103 & 1) == 0)
  {
    v102 = sub_1000A35A4(0, *(v102 + 2) + 1, 1, v102);
    *v287 = v102;
  }

  v105 = *(v102 + 2);
  v104 = *(v102 + 3);
  if (v105 >= v104 >> 1)
  {
    v102 = sub_1000A35A4((v104 > 1), v105 + 1, 1, v102);
  }

  *(v102 + 2) = v105 + 1;
  v106 = &v102[80 * v105];
  *(v106 + 4) = 0x40490FDA44480000;
  *(v106 + 3) = v274;
  *(v106 + 16) = 1070141402;
  *(v106 + 5) = v255;
  *(v106 + 12) = 0x3F63D72C3E4CCCCDLL;
  *v287 = v102;
  swift_endAccess();
  sub_1000AB384(&off_10011E610);
  v275 = v107;
  sub_1000AB384(&off_10011E640);
  v256 = v108;
  swift_beginAccess();
  v109 = *v289;
  v110 = swift_isUniquelyReferenced_nonNull_native();
  *v289 = v109;
  if ((v110 & 1) == 0)
  {
    v109 = sub_1000A35A4(0, *(v109 + 2) + 1, 1, v109);
    *v289 = v109;
  }

  v112 = *(v109 + 2);
  v111 = *(v109 + 3);
  if (v112 >= v111 >> 1)
  {
    v109 = sub_1000A35A4((v111 > 1), v112 + 1, 1, v109);
  }

  *(v109 + 2) = v112 + 1;
  v113 = &v109[80 * v112];
  *(v113 + 4) = 0x4042CE81442F0000;
  *(v113 + 3) = v275;
  *(v113 + 16) = 1083873825;
  *(v113 + 5) = v256;
  *(v113 + 12) = 0x3FA7AE253E4CCCCDLL;
  *v289 = v109;
  swift_endAccess();
  sub_1000AB384(&off_10011E670);
  v276 = v114;
  sub_1000AB384(&off_10011E6A0);
  v257 = v115;
  swift_beginAccess();
  v116 = *v323;
  v117 = swift_isUniquelyReferenced_nonNull_native();
  *v323 = v116;
  if ((v117 & 1) == 0)
  {
    v116 = sub_1000A35A4(0, *(v116 + 2) + 1, 1, v116);
    *v323 = v116;
  }

  v119 = *(v116 + 2);
  v118 = *(v116 + 3);
  if (v119 >= v118 >> 1)
  {
    v116 = sub_1000A35A4((v118 > 1), v119 + 1, 1, v116);
  }

  *(v116 + 2) = v119 + 1;
  v120 = &v116[80 * v119];
  *(v120 + 4) = 0x401BEF4645098000;
  *(v120 + 3) = v276;
  *(v120 + 16) = 1083673012;
  *(v120 + 5) = v257;
  *(v120 + 12) = 0x401E148300000000;
  *v323 = v116;
  swift_endAccess();
  sub_1000AB384(&off_10011E6D0);
  v277 = v121;
  sub_1000AB384(&off_10011E700);
  v258 = v122;
  swift_beginAccess();
  v123 = *v321;
  v124 = swift_isUniquelyReferenced_nonNull_native();
  *v321 = v123;
  if ((v124 & 1) == 0)
  {
    v123 = sub_1000A35A4(0, *(v123 + 2) + 1, 1, v123);
    *v321 = v123;
  }

  v126 = *(v123 + 2);
  v125 = *(v123 + 3);
  if (v126 >= v125 >> 1)
  {
    v123 = sub_1000A35A4((v125 > 1), v126 + 1, 1, v123);
  }

  *(v123 + 2) = v126 + 1;
  v127 = &v123[80 * v126];
  *(v127 + 4) = 0x40489D79C4610000;
  *(v127 + 3) = v277;
  *(v127 + 16) = 1079674240;
  *(v127 + 5) = v258;
  *(v127 + 12) = 0x4220000000000000;
  *v321 = v123;
  swift_endAccess();
  sub_1000AB384(&off_10011E730);
  v278 = v128;
  swift_beginAccess();
  v129 = *v327;
  v130 = swift_isUniquelyReferenced_nonNull_native();
  *v327 = v129;
  if ((v130 & 1) == 0)
  {
    v129 = sub_1000A35A4(0, *(v129 + 2) + 1, 1, v129);
    *v327 = v129;
  }

  v132 = *(v129 + 2);
  v131 = *(v129 + 3);
  if (v132 >= v131 >> 1)
  {
    v129 = sub_1000A35A4((v131 > 1), v132 + 1, 1, v129);
  }

  *(v129 + 2) = v132 + 1;
  v133 = &v129[80 * v132];
  *(v133 + 4) = 0x40197A2F43050000;
  *(v133 + 3) = xmmword_1000EC900;
  *(v133 + 16) = 1073781512;
  *(v133 + 5) = v278;
  *(v133 + 12) = 0x404F9DAE3E851EB8;
  *v327 = v129;
  swift_endAccess();
  sub_1000AB384(&off_10011E760);
  v279 = v134;
  sub_1000AB384(&off_10011E790);
  v259 = v135;
  swift_beginAccess();
  v136 = *v332;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  *v332 = v136;
  if ((v137 & 1) == 0)
  {
    v136 = sub_1000A35A4(0, *(v136 + 2) + 1, 1, v136);
    *v332 = v136;
  }

  v139 = *(v136 + 2);
  v138 = *(v136 + 3);
  if (v139 >= v138 >> 1)
  {
    v136 = sub_1000A35A4((v138 > 1), v139 + 1, 1, v136);
  }

  *(v136 + 2) = v139 + 1;
  v140 = &v136[80 * v139];
  *(v140 + 4) = 0x4004EC9C43E10000;
  *(v140 + 3) = v279;
  *(v140 + 16) = 1082377768;
  *(v140 + 5) = v259;
  *(v140 + 12) = 0x40D6B8563EC28F5CLL;
  *v332 = v136;
  swift_endAccess();
  sub_1000AB384(&off_10011E7C0);
  v280 = v141;
  sub_1000AB384(&off_10011E7F0);
  v260 = v142;
  swift_beginAccess();
  v143 = *v330;
  v144 = swift_isUniquelyReferenced_nonNull_native();
  *v330 = v143;
  if ((v144 & 1) == 0)
  {
    v143 = sub_1000A35A4(0, *(v143 + 2) + 1, 1, v143);
    *v330 = v143;
  }

  v146 = *(v143 + 2);
  v145 = *(v143 + 3);
  if (v146 >= v145 >> 1)
  {
    v143 = sub_1000A35A4((v145 > 1), v146 + 1, 1, v143);
  }

  *(v143 + 2) = v146 + 1;
  v147 = &v143[80 * v146];
  *(v147 + 4) = 0x40197A2F00000000;
  *(v147 + 3) = v280;
  *(v147 + 16) = 1075112759;
  *(v147 + 5) = v260;
  *(v147 + 12) = 0x3F4A3D603EBB5BD5;
  *v330 = v143;
  swift_endAccess();
  sub_1000AB384(&off_10011E820);
  v281 = v148;
  sub_1000AB384(&off_10011E850);
  v261 = v149;
  swift_beginAccess();
  v150 = *v345;
  v151 = swift_isUniquelyReferenced_nonNull_native();
  *v345 = v150;
  if ((v151 & 1) == 0)
  {
    v150 = sub_1000A35A4(0, *(v150 + 2) + 1, 1, v150);
    *v345 = v150;
  }

  v153 = *(v150 + 2);
  v152 = *(v150 + 3);
  if (v153 >= v152 >> 1)
  {
    v150 = sub_1000A35A4((v152 > 1), v153 + 1, 1, v150);
  }

  *(v150 + 2) = v153 + 1;
  v154 = &v150[80 * v153];
  *(v154 + 4) = 0x4021BE3F00000000;
  *(v154 + 3) = v281;
  *(v154 + 16) = 1084229951;
  *(v154 + 5) = v261;
  *(v154 + 12) = 0x3FECCCDE3EC28F5CLL;
  *v345 = v150;
  swift_endAccess();
  sub_1000AB384(&off_10011E880);
  v282 = v155;
  sub_1000AB384(&off_10011E8B0);
  v262 = v156;
  swift_beginAccess();
  v157 = *v320;
  v158 = swift_isUniquelyReferenced_nonNull_native();
  *v320 = v157;
  if ((v158 & 1) == 0)
  {
    v157 = sub_1000A35A4(0, *(v157 + 2) + 1, 1, v157);
    *v320 = v157;
  }

  v160 = *(v157 + 2);
  v159 = *(v157 + 3);
  if (v160 >= v159 >> 1)
  {
    v157 = sub_1000A35A4((v159 > 1), v160 + 1, 1, v157);
  }

  *(v157 + 2) = v160 + 1;
  v161 = &v157[80 * v160];
  *(v161 + 4) = 0x40490FDA451C4000;
  *(v161 + 3) = v282;
  *(v161 + 16) = 1074084247;
  *(v161 + 5) = v262;
  *(v161 + 12) = 0x3F65E3763EBD70A4;
  *v320 = v157;
  swift_endAccess();
  sub_1000AB384(&off_10011E8E0);
  v283 = v162;
  sub_1000AB384(&off_10011E910);
  v263 = v163;
  swift_beginAccess();
  v164 = *v286;
  v165 = swift_isUniquelyReferenced_nonNull_native();
  *v286 = v164;
  if ((v165 & 1) == 0)
  {
    v164 = sub_1000A35A4(0, *(v164 + 2) + 1, 1, v164);
    *v286 = v164;
  }

  v167 = *(v164 + 2);
  v166 = *(v164 + 3);
  if (v167 >= v166 >> 1)
  {
    v164 = sub_1000A35A4((v166 > 1), v167 + 1, 1, v164);
  }

  *(v164 + 2) = v167 + 1;
  v168 = &v164[80 * v167];
  *(v168 + 4) = 0x40490FDA46BAD600;
  *(v168 + 3) = v283;
  *(v168 + 16) = 1076037070;
  *(v168 + 5) = v263;
  *(v168 + 12) = 0x3F828F753F95C28FLL;
  *v286 = v164;
  swift_endAccess();
  sub_1000AB384(&off_10011E940);
  v284 = v169;
  sub_1000AB384(&off_10011E970);
  v264 = v170;
  swift_beginAccess();
  v171 = *v22;
  v172 = swift_isUniquelyReferenced_nonNull_native();
  *v22 = v171;
  if ((v172 & 1) == 0)
  {
    v171 = sub_1000A35A4(0, *(v171 + 2) + 1, 1, v171);
    *v22 = v171;
  }

  v174 = *(v171 + 2);
  v173 = *(v171 + 3);
  if (v174 >= v173 >> 1)
  {
    v171 = sub_1000A35A4((v173 > 1), v174 + 1, 1, v171);
  }

  *(v171 + 2) = v174 + 1;
  v175 = &v171[80 * v174];
  *(v175 + 4) = 0x400BA057C3FA0000;
  *(v175 + 3) = v284;
  *(v175 + 16) = 1077207371;
  *(v175 + 5) = v264;
  *(v175 + 12) = 0x3F8000003E4CCCCDLL;
  *v22 = v171;
  swift_endAccess();
  sub_1000AB384(&off_10011E9A0);
  v285 = v176;
  sub_1000AB384(&off_10011E9D0);
  v265 = v177;
  swift_beginAccess();
  v178 = *v287;
  v179 = swift_isUniquelyReferenced_nonNull_native();
  *v287 = v178;
  if ((v179 & 1) == 0)
  {
    v178 = sub_1000A35A4(0, *(v178 + 2) + 1, 1, v178);
    *v287 = v178;
  }

  v181 = *(v178 + 2);
  v180 = *(v178 + 3);
  if (v181 >= v180 >> 1)
  {
    v178 = sub_1000A35A4((v180 > 1), v181 + 1, 1, v178);
  }

  *(v178 + 2) = v181 + 1;
  v182 = &v178[80 * v181];
  *(v182 + 4) = 0x40490FDA43C80000;
  *(v182 + 3) = v285;
  *(v182 + 16) = 1070141402;
  *(v182 + 5) = v265;
  *(v182 + 12) = 0x3F63D72C3E4CCCCDLL;
  *v287 = v178;
  swift_endAccess();
  sub_1000AB384(&off_10011EA00);
  v316 = v183;
  sub_1000AB384(&off_10011EA30);
  v288 = v184;
  swift_beginAccess();
  v185 = *v289;
  v186 = swift_isUniquelyReferenced_nonNull_native();
  *v289 = v185;
  if ((v186 & 1) == 0)
  {
    v185 = sub_1000A35A4(0, *(v185 + 2) + 1, 1, v185);
    *v289 = v185;
  }

  v188 = *(v185 + 2);
  v187 = *(v185 + 3);
  if (v188 >= v187 >> 1)
  {
    v185 = sub_1000A35A4((v187 > 1), v188 + 1, 1, v185);
  }

  *(v185 + 2) = v188 + 1;
  v189 = &v185[80 * v188];
  *(v189 + 4) = 0x4042CE8142B40000;
  *(v189 + 3) = v316;
  *(v189 + 16) = 1083873825;
  *(v189 + 5) = v288;
  *(v189 + 12) = 0x3FA7AE253E4CCCCDLL;
  *v289 = v185;
  swift_endAccess();
  sub_1000AB384(&off_10011EA60);
  v317 = v190;
  sub_1000AB384(&off_10011EA90);
  v311 = v191;
  swift_beginAccess();
  v192 = *v323;
  v193 = swift_isUniquelyReferenced_nonNull_native();
  *v323 = v192;
  if ((v193 & 1) == 0)
  {
    v192 = sub_1000A35A4(0, *(v192 + 2) + 1, 1, v192);
    *v323 = v192;
  }

  v195 = *(v192 + 2);
  v194 = *(v192 + 3);
  if (v195 >= v194 >> 1)
  {
    v192 = sub_1000A35A4((v194 > 1), v195 + 1, 1, v192);
  }

  *(v192 + 2) = v195 + 1;
  v196 = &v192[80 * v195];
  *(v196 + 4) = 0x401BEF4644610000;
  *(v196 + 3) = v317;
  *(v196 + 16) = 1083673012;
  *(v196 + 5) = v311;
  *(v196 + 12) = 0x401E148300000000;
  *v323 = v192;
  swift_endAccess();
  sub_1000AB384(&off_10011EAC0);
  v324 = v197;
  sub_1000AB384(&off_10011EAF0);
  v318 = v198;
  swift_beginAccess();
  v199 = *v321;
  v200 = swift_isUniquelyReferenced_nonNull_native();
  *v321 = v199;
  if ((v200 & 1) == 0)
  {
    v199 = sub_1000A35A4(0, *(v199 + 2) + 1, 1, v199);
    *v321 = v199;
  }

  v202 = *(v199 + 2);
  v201 = *(v199 + 3);
  if (v202 >= v201 >> 1)
  {
    v199 = sub_1000A35A4((v201 > 1), v202 + 1, 1, v199);
  }

  *(v199 + 2) = v202 + 1;
  v203 = &v199[80 * v202];
  *(v203 + 4) = 0x40489D7943960000;
  *(v203 + 3) = v324;
  *(v203 + 16) = 1079674240;
  *(v203 + 5) = v318;
  *(v203 + 12) = 0x4220000000000000;
  *v321 = v199;
  swift_endAccess();
  sub_1000AB384(&off_10011EB20);
  v325 = v204;
  sub_1000AB384(&off_10011EB50);
  v322 = v205;
  swift_beginAccess();
  v206 = *v327;
  v207 = swift_isUniquelyReferenced_nonNull_native();
  *v327 = v206;
  if ((v207 & 1) == 0)
  {
    v206 = sub_1000A35A4(0, *(v206 + 2) + 1, 1, v206);
    *v327 = v206;
  }

  v209 = *(v206 + 2);
  v208 = *(v206 + 3);
  if (v209 >= v208 >> 1)
  {
    v206 = sub_1000A35A4((v208 > 1), v209 + 1, 1, v206);
  }

  *(v206 + 2) = v209 + 1;
  v210 = &v206[80 * v209];
  *(v210 + 4) = 0x40490FDA00000000;
  *(v210 + 3) = v325;
  *(v210 + 16) = 1050858016;
  *(v210 + 5) = v322;
  *(v210 + 12) = 0x404F9DAE3F8A3D71;
  *v327 = v206;
  swift_endAccess();
  sub_1000AB384(&off_10011EB80);
  v328 = v211;
  sub_1000AB384(&off_10011EBB0);
  v326 = v212;
  swift_beginAccess();
  v213 = *v332;
  v214 = swift_isUniquelyReferenced_nonNull_native();
  *v332 = v213;
  if ((v214 & 1) == 0)
  {
    v213 = sub_1000A35A4(0, *(v213 + 2) + 1, 1, v213);
    *v332 = v213;
  }

  v216 = *(v213 + 2);
  v215 = *(v213 + 3);
  if (v216 >= v215 >> 1)
  {
    v213 = sub_1000A35A4((v215 > 1), v216 + 1, 1, v213);
  }

  *(v213 + 2) = v216 + 1;
  v217 = &v213[80 * v216];
  *(v217 + 4) = 0x4039A5D100000000;
  *(v217 + 3) = v328;
  *(v217 + 16) = 1080635442;
  *(v217 + 5) = v326;
  *(v217 + 12) = 0x40D6B8563F6B851FLL;
  *v332 = v213;
  swift_endAccess();
  sub_1000AB384(&off_10011EBE0);
  v333 = v218;
  sub_1000AB384(&off_10011EC10);
  v329 = v219;
  swift_beginAccess();
  v220 = *v330;
  v221 = swift_isUniquelyReferenced_nonNull_native();
  *v330 = v220;
  if ((v221 & 1) == 0)
  {
    v220 = sub_1000A35A4(0, *(v220 + 2) + 1, 1, v220);
    *v330 = v220;
  }

  v223 = *(v220 + 2);
  v222 = *(v220 + 3);
  if (v223 >= v222 >> 1)
  {
    v220 = sub_1000A35A4((v222 > 1), v223 + 1, 1, v220);
  }

  *(v220 + 2) = v223 + 1;
  v224 = &v220[80 * v223];
  *(v224 + 4) = 0x40197A2F42480000;
  *(v224 + 3) = v333;
  *(v224 + 16) = 1073781512;
  *(v224 + 5) = v329;
  *(v224 + 12) = 0x3F4A3D603EBB5BD5;
  *v330 = v220;
  swift_endAccess();
  sub_1000AB384(&off_10011EC40);
  v334 = v225;
  sub_1000AB384(&off_10011EC70);
  v331 = v226;
  swift_beginAccess();
  v227 = *v345;
  v228 = swift_isUniquelyReferenced_nonNull_native();
  *v345 = v227;
  if ((v228 & 1) == 0)
  {
    v227 = sub_1000A35A4(0, *(v227 + 2) + 1, 1, v227);
    *v345 = v227;
  }

  v230 = *(v227 + 2);
  v229 = *(v227 + 3);
  if (v230 >= v229 >> 1)
  {
    v227 = sub_1000A35A4((v229 > 1), v230 + 1, 1, v227);
  }

  *(v227 + 2) = v230 + 1;
  v231 = &v227[80 * v230];
  *(v231 + 4) = 0x4004EC9C43160000;
  *(v231 + 3) = v334;
  *(v231 + 16) = 1082377768;
  *(v231 + 5) = v331;
  *(v231 + 12) = 0x3FECCCDE3EC28F5CLL;
  *v345 = v227;
  swift_endAccess();
  sub_1000AB384(&off_10011ECA0);
  v346 = v232;
  sub_1000AB384(&off_10011ECD0);
  v335 = v233;
  swift_beginAccess();
  v234 = *v320;
  v235 = swift_isUniquelyReferenced_nonNull_native();
  *v320 = v234;
  if ((v235 & 1) == 0)
  {
    v234 = sub_1000A35A4(0, *(v234 + 2) + 1, 1, v234);
    *v320 = v234;
  }

  v237 = *(v234 + 2);
  v236 = *(v234 + 3);
  if (v237 >= v236 >> 1)
  {
    v234 = sub_1000A35A4((v236 > 1), v237 + 1, 1, v234);
  }

  *(v234 + 2) = v237 + 1;
  v238 = &v234[80 * v237];
  *(v238 + 4) = 0x40490FDA44098000;
  *(v238 + 3) = v346;
  *(v238 + 16) = 1075738667;
  *(v238 + 5) = v335;
  *(v238 + 12) = 0x3F65E3763EBD70A4;
  *v320 = v234;
  swift_endAccess();
  sub_1000AB384(&off_10011ED00);
  v347 = v239;
  sub_1000AB384(&off_10011ED30);
  v336 = v240;
  swift_beginAccess();
  v241 = *v286;
  v242 = swift_isUniquelyReferenced_nonNull_native();
  *v286 = v241;
  if ((v242 & 1) == 0)
  {
    v241 = sub_1000A35A4(0, *(v241 + 2) + 1, 1, v241);
    *v286 = v241;
  }

  v244 = *(v241 + 2);
  v243 = *(v241 + 3);
  if (v244 >= v243 >> 1)
  {
    v241 = sub_1000A35A4((v243 > 1), v244 + 1, 1, v241);
  }

  *(v241 + 2) = v244 + 1;
  v245 = &v241[80 * v244];
  *(v245 + 4) = 0x40490FDA45FA0000;
  *(v245 + 3) = v347;
  *(v245 + 16) = 1076037070;
  *(v245 + 5) = v336;
  *(v245 + 12) = 0x3F828F753F95C28FLL;
  *v286 = v241;
  swift_endAccess();
  sub_1000AB384(&off_10011ED60);
  v348 = v246;
  sub_1000AB384(&off_10011ED90);
  v337 = v247;
  swift_beginAccess();
  v248 = *v22;
  v249 = swift_isUniquelyReferenced_nonNull_native();
  *v22 = v248;
  if ((v249 & 1) == 0)
  {
    v248 = sub_1000A35A4(0, *(v248 + 2) + 1, 1, v248);
    *v22 = v248;
  }

  v251 = *(v248 + 2);
  v250 = *(v248 + 3);
  if (v251 >= v250 >> 1)
  {
    v248 = sub_1000A35A4((v250 > 1), v251 + 1, 1, v248);
  }

  *(v248 + 2) = v251 + 1;
  v252 = &v248[80 * v251];
  *(v252 + 4) = 0x40060A91C1C80000;
  *(v252 + 3) = v348;
  *(v252 + 16) = 1077207371;
  *(v252 + 5) = v337;
  *(v252 + 12) = 0x41DCE14800000000;
  *(v21 + 64) = v248;
  swift_endAccess();
  sub_1000125FC(&qword_1001303F0);
  v253 = swift_allocObject();
  *(v253 + 16) = xmmword_1000F3150;
  *(v253 + 32) = v303;
  *(v253 + 40) = v13;
  *(v253 + 48) = v299;
  *(v253 + 56) = v19;
  *(v253 + 64) = v301;
  *(v253 + 72) = v21;
  *(v253 + 80) = v302;
  *(v253 + 88) = v300;
  *(v253 + 96) = v305;
  *(v253 + 104) = v5;
  *(v253 + 112) = v304;
  swift_beginAccess();
  *(v306 + 144) = v253;
}

uint64_t sub_1000E51CC()
{
  sub_1000AB384(&off_10011D050);
  v363 = v0;
  type metadata accessor for ToriLight();
  v1 = swift_allocObject();
  *(v1 + 48) = 0;
  *(v1 + 52) = 0;
  *(v1 + 56) = 257;
  *(v1 + 64) = _swiftEmptyArrayStorage;
  v346 = (v1 + 64);
  *(v1 + 16) = 2;
  *(v1 + 32) = v363;
  swift_beginAccess();
  *(v1 + 48) = 1;
  swift_beginAccess();
  *(v1 + 52) = 1065353216;
  swift_beginAccess();
  *(v1 + 56) = 0;
  swift_beginAccess();
  *(v1 + 57) = 1;
  sub_1000AB384(&off_10011D080);
  v364 = v2;
  v3 = swift_allocObject();
  *(v3 + 48) = 0;
  *(v3 + 52) = 0;
  *(v3 + 56) = 257;
  *(v3 + 64) = _swiftEmptyArrayStorage;
  v280 = (v3 + 64);
  *(v3 + 16) = 2;
  *(v3 + 32) = v364;
  swift_beginAccess();
  *(v3 + 48) = 1;
  swift_beginAccess();
  *(v3 + 52) = 1065353216;
  swift_beginAccess();
  *(v3 + 56) = 0;
  swift_beginAccess();
  v300 = v3;
  *(v3 + 57) = 1;
  sub_1000AB384(&off_10011D0B0);
  v365 = v4;
  v5 = swift_allocObject();
  *(v5 + 48) = 0;
  *(v5 + 52) = 0;
  *(v5 + 56) = 257;
  *(v5 + 64) = _swiftEmptyArrayStorage;
  v282 = (v5 + 64);
  *(v5 + 16) = 2;
  *(v5 + 32) = v365;
  swift_beginAccess();
  *(v5 + 48) = 0;
  swift_beginAccess();
  *(v5 + 52) = 1065353216;
  swift_beginAccess();
  *(v5 + 56) = 1;
  swift_beginAccess();
  v299 = v5;
  *(v5 + 57) = 1;
  sub_1000AB384(&off_10011D0E0);
  v366 = v6;
  v7 = swift_allocObject();
  *(v7 + 48) = 0;
  *(v7 + 52) = 0;
  *(v7 + 56) = 257;
  *(v7 + 64) = _swiftEmptyArrayStorage;
  v353 = (v7 + 64);
  *(v7 + 16) = 2;
  *(v7 + 32) = v366;
  swift_beginAccess();
  *(v7 + 48) = 1;
  swift_beginAccess();
  *(v7 + 52) = 1065353216;
  swift_beginAccess();
  *(v7 + 56) = 1;
  swift_beginAccess();
  v298 = v7;
  *(v7 + 57) = 1;
  sub_1000AB384(&off_10011D110);
  v367 = v8;
  v9 = swift_allocObject();
  *(v9 + 48) = 0;
  *(v9 + 52) = 0;
  *(v9 + 56) = 257;
  *(v9 + 64) = _swiftEmptyArrayStorage;
  v281 = (v9 + 64);
  *(v9 + 16) = 2;
  *(v9 + 32) = v367;
  swift_beginAccess();
  *(v9 + 48) = 1;
  swift_beginAccess();
  *(v9 + 52) = 1065353216;
  swift_beginAccess();
  *(v9 + 56) = 1;
  swift_beginAccess();
  *(v9 + 57) = 1;
  sub_1000AB384(&off_10011D140);
  v368 = v10;
  v11 = swift_allocObject();
  *(v11 + 48) = 0;
  *(v11 + 52) = 0;
  *(v11 + 56) = 257;
  *(v11 + 64) = _swiftEmptyArrayStorage;
  v358 = (v11 + 64);
  *(v11 + 16) = 2;
  *(v11 + 32) = v368;
  swift_beginAccess();
  *(v11 + 48) = 1;
  swift_beginAccess();
  *(v11 + 52) = 1065353216;
  swift_beginAccess();
  *(v11 + 56) = 1;
  swift_beginAccess();
  v297 = v11;
  *(v11 + 57) = 1;
  sub_1000AB384(&off_10011D170);
  v344 = v12;
  v13 = swift_allocObject();
  *(v13 + 48) = 0;
  *(v13 + 52) = 0;
  *(v13 + 56) = 257;
  *(v13 + 64) = _swiftEmptyArrayStorage;
  v369 = (v13 + 64);
  *(v13 + 16) = 2;
  *(v13 + 32) = v344;
  swift_beginAccess();
  *(v13 + 48) = 1;
  swift_beginAccess();
  *(v13 + 52) = 1065353216;
  swift_beginAccess();
  *(v13 + 56) = 1;
  swift_beginAccess();
  v296 = v13;
  *(v13 + 57) = 1;
  sub_1000AB384(&off_10011D1A0);
  v342 = v14;
  v15 = swift_allocObject();
  *(v15 + 48) = 0;
  *(v15 + 52) = 0;
  *(v15 + 56) = 257;
  *(v15 + 64) = _swiftEmptyArrayStorage;
  v345 = (v15 + 64);
  *(v15 + 16) = 2;
  *(v15 + 32) = v342;
  swift_beginAccess();
  *(v15 + 48) = 1;
  swift_beginAccess();
  *(v15 + 52) = 1065353216;
  swift_beginAccess();
  *(v15 + 56) = 1;
  swift_beginAccess();
  v295 = v15;
  *(v15 + 57) = 1;
  sub_1000AB384(&off_10011D1D0);
  v335 = v16;
  v17 = swift_allocObject();
  *(v17 + 48) = 0;
  *(v17 + 52) = 0;
  *(v17 + 56) = 257;
  *(v17 + 64) = _swiftEmptyArrayStorage;
  v343 = (v17 + 64);
  *(v17 + 16) = 2;
  *(v17 + 32) = v335;
  swift_beginAccess();
  *(v17 + 48) = 0;
  swift_beginAccess();
  *(v17 + 52) = 1065353216;
  swift_beginAccess();
  *(v17 + 56) = 1;
  swift_beginAccess();
  v294 = v17;
  *(v17 + 57) = 1;
  sub_1000AB384(&off_10011D200);
  v336 = v18;
  v19 = swift_allocObject();
  *(v19 + 48) = 0;
  *(v19 + 52) = 0;
  *(v19 + 56) = 257;
  *(v19 + 64) = _swiftEmptyArrayStorage;
  v279 = (v19 + 64);
  *(v19 + 16) = 2;
  *(v19 + 32) = v336;
  swift_beginAccess();
  *(v19 + 48) = 1;
  swift_beginAccess();
  *(v19 + 52) = 1065353216;
  swift_beginAccess();
  *(v19 + 56) = 0;
  swift_beginAccess();
  *(v19 + 57) = 1;
  sub_1000AB384(&off_10011D230);
  v337 = v20;
  v21 = swift_allocObject();
  *(v21 + 48) = 0;
  *(v21 + 52) = 0;
  *(v21 + 56) = 257;
  *(v21 + 64) = _swiftEmptyArrayStorage;
  v22 = (v21 + 64);
  *(v21 + 16) = 2;
  *(v21 + 32) = v337;
  swift_beginAccess();
  *(v21 + 48) = 1;
  swift_beginAccess();
  *(v21 + 52) = 1065353216;
  swift_beginAccess();
  *(v21 + 56) = 0;
  swift_beginAccess();
  v293 = v21;
  *(v21 + 57) = 1;
  sub_1000AB384(&off_10011D260);
  v338 = v23;
  sub_1000AB384(&off_10011D290);
  v333 = v24;
  swift_beginAccess();
  v25 = *v280;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v280 = v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v25 = sub_1000A35A4(0, *(v25 + 2) + 1, 1, v25);
    *v280 = v25;
  }

  v28 = *(v25 + 2);
  v27 = *(v25 + 3);
  if (v28 >= v27 >> 1)
  {
    v25 = sub_1000A35A4((v27 > 1), v28 + 1, 1, v25);
  }

  *(v25 + 2) = v28 + 1;
  v29 = &v25[80 * v28];
  *(v29 + 4) = 0x40490FDA457A0000;
  *(v29 + 3) = v338;
  *(v29 + 16) = 1071898308;
  *(v29 + 5) = v333;
  *(v29 + 12) = 0x3F63D72C3E4CCCCDLL;
  *v280 = v25;
  swift_endAccess();
  sub_1000AB384(&off_10011D2C0);
  v334 = v30;
  sub_1000AB384(&off_10011D2F0);
  v302 = v31;
  swift_beginAccess();
  v32 = *v281;
  v33 = swift_isUniquelyReferenced_nonNull_native();
  *v281 = v32;
  if ((v33 & 1) == 0)
  {
    v32 = sub_1000A35A4(0, *(v32 + 2) + 1, 1, v32);
    *v281 = v32;
  }

  v35 = *(v32 + 2);
  v34 = *(v32 + 3);
  if (v35 >= v34 >> 1)
  {
    v32 = sub_1000A35A4((v34 > 1), v35 + 1, 1, v32);
  }

  *(v32 + 2) = v35 + 1;
  v36 = &v32[80 * v35];
  *(v36 + 4) = 0x4042CE8100000000;
  *(v36 + 3) = v334;
  *(v36 + 16) = 1083873825;
  *(v36 + 5) = v302;
  *(v36 + 12) = 0x3FA7AE253E4CCCCDLL;
  *v281 = v32;
  swift_endAccess();
  sub_1000AB384(&off_10011D320);
  v303 = v37;
  sub_1000AB384(&off_10011D350);
  v283 = v38;
  swift_beginAccess();
  v39 = *v346;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  *v346 = v39;
  if ((v40 & 1) == 0)
  {
    v39 = sub_1000A35A4(0, *(v39 + 2) + 1, 1, v39);
    *v346 = v39;
  }

  v42 = *(v39 + 2);
  v41 = *(v39 + 3);
  if (v42 >= v41 >> 1)
  {
    v39 = sub_1000A35A4((v41 > 1), v42 + 1, 1, v39);
  }

  *(v39 + 2) = v42 + 1;
  v43 = &v39[80 * v42];
  *(v43 + 4) = 0x4041E9BA45DAC000;
  *(v43 + 3) = v303;
  *(v43 + 16) = 1083673012;
  *(v43 + 5) = v283;
  *(v43 + 12) = 0x401E148300000000;
  *v346 = v39;
  swift_endAccess();
  sub_1000AB384(&off_10011D380);
  v304 = v44;
  sub_1000AB384(&off_10011D3B0);
  v284 = v45;
  swift_beginAccess();
  v46 = *v282;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  *v282 = v46;
  if ((v47 & 1) == 0)
  {
    v46 = sub_1000A35A4(0, *(v46 + 2) + 1, 1, v46);
    *v282 = v46;
  }

  v49 = *(v46 + 2);
  v48 = *(v46 + 3);
  if (v49 >= v48 >> 1)
  {
    v46 = sub_1000A35A4((v48 > 1), v49 + 1, 1, v46);
  }

  *(v46 + 2) = v49 + 1;
  v50 = &v46[80 * v49];
  *(v50 + 4) = 0x40490FDA44960000;
  *(v50 + 3) = v304;
  *(v50 + 16) = 1081552091;
  *(v50 + 5) = v284;
  *(v50 + 12) = 0x4220000000000000;
  *v282 = v46;
  swift_endAccess();
  sub_1000AB384(&off_10011D3E0);
  v305 = v51;
  sub_1000AB384(&off_10011D410);
  v268 = v52;
  swift_beginAccess();
  v53 = *v353;
  v54 = swift_isUniquelyReferenced_nonNull_native();
  *v353 = v53;
  if ((v54 & 1) == 0)
  {
    v53 = sub_1000A35A4(0, *(v53 + 2) + 1, 1, v53);
    *v353 = v53;
  }

  v56 = *(v53 + 2);
  v55 = *(v53 + 3);
  if (v56 >= v55 >> 1)
  {
    v53 = sub_1000A35A4((v55 > 1), v56 + 1, 1, v53);
  }

  *(v53 + 2) = v56 + 1;
  v57 = &v53[80 * v56];
  *(v57 + 4) = 0x40197A2F00000000;
  *(v57 + 3) = v305;
  *(v57 + 16) = 1078027366;
  *(v57 + 5) = v268;
  *(v57 + 12) = 0x3F4A3D603E851EB8;
  *v353 = v53;
  swift_endAccess();
  sub_1000AB384(&off_10011D440);
  v306 = v58;
  sub_1000AB384(&off_10011D470);
  v269 = v59;
  swift_beginAccess();
  v60 = *v358;
  v61 = swift_isUniquelyReferenced_nonNull_native();
  *v358 = v60;
  if ((v61 & 1) == 0)
  {
    v60 = sub_1000A35A4(0, *(v60 + 2) + 1, 1, v60);
    *v358 = v60;
  }

  v63 = *(v60 + 2);
  v62 = *(v60 + 3);
  if (v63 >= v62 >> 1)
  {
    v60 = sub_1000A35A4((v62 > 1), v63 + 1, 1, v60);
  }

  *(v60 + 2) = v63 + 1;
  v64 = &v60[80 * v63];
  *(v64 + 4) = 0x4004EC9C00000000;
  *(v64 + 3) = v306;
  *(v64 + 16) = 1084793531;
  *(v64 + 5) = v269;
  *(v64 + 12) = 0x3FECCCDE3EC28F5CLL;
  *v358 = v60;
  swift_endAccess();
  sub_1000AB384(&off_10011D4A0);
  v307 = v65;
  sub_1000AB384(&off_10011D4D0);
  v270 = v66;
  swift_beginAccess();
  v67 = *v369;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  *v369 = v67;
  if ((v68 & 1) == 0)
  {
    v67 = sub_1000A35A4(0, *(v67 + 2) + 1, 1, v67);
    *v369 = v67;
  }

  v70 = *(v67 + 2);
  v69 = *(v67 + 3);
  if (v70 >= v69 >> 1)
  {
    v67 = sub_1000A35A4((v69 > 1), v70 + 1, 1, v67);
  }

  *(v67 + 2) = v70 + 1;
  v71 = &v67[80 * v70];
  *(v71 + 4) = 0x3C8EFA3500000000;
  *(v71 + 3) = v307;
  *(v71 + 16) = 1077963460;
  *(v71 + 5) = v270;
  *(v71 + 12) = 0x3F65E3763FC51EB8;
  *v369 = v67;
  swift_endAccess();
  sub_1000AB384(&off_10011D500);
  v308 = v72;
  sub_1000AB384(&off_10011D530);
  v271 = v73;
  swift_beginAccess();
  v74 = *v345;
  v75 = swift_isUniquelyReferenced_nonNull_native();
  *v345 = v74;
  if ((v75 & 1) == 0)
  {
    v74 = sub_1000A35A4(0, *(v74 + 2) + 1, 1, v74);
    *v345 = v74;
  }

  v77 = *(v74 + 2);
  v76 = *(v74 + 3);
  if (v77 >= v76 >> 1)
  {
    v74 = sub_1000A35A4((v76 > 1), v77 + 1, 1, v74);
  }

  *(v74 + 2) = v77 + 1;
  v78 = &v74[80 * v77];
  *(v78 + 4) = 0x40319ACE467C2066;
  *(v78 + 3) = v308;
  *(v78 + 16) = 1079994098;
  *(v78 + 5) = v271;
  *(v78 + 12) = 0x3F8000003FA3126FLL;
  *v345 = v74;
  swift_endAccess();
  sub_1000AB384(&off_10011D560);
  v309 = v79;
  sub_1000AB384(&off_10011D590);
  v272 = v80;
  swift_beginAccess();
  v81 = *v343;
  v82 = swift_isUniquelyReferenced_nonNull_native();
  *v343 = v81;
  if ((v82 & 1) == 0)
  {
    v81 = sub_1000A35A4(0, *(v81 + 2) + 1, 1, v81);
    *v343 = v81;
  }

  v84 = *(v81 + 2);
  v83 = *(v81 + 3);
  if (v84 >= v83 >> 1)
  {
    v81 = sub_1000A35A4((v83 > 1), v84 + 1, 1, v81);
  }

  *(v81 + 2) = v84 + 1;
  v85 = &v81[80 * v84];
  *(v85 + 4) = 0x3C8EFA35447A0000;
  *(v85 + 3) = v309;
  *(v85 + 16) = 1079113166;
  *(v85 + 5) = v272;
  *(v85 + 12) = 0x41DCE14800000000;
  *v343 = v81;
  swift_endAccess();
  sub_1000AB384(&off_10011D5C0);
  v310 = v86;
  sub_1000AB384(&off_10011D5F0);
  v273 = v87;
  swift_beginAccess();
  v88 = *v279;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  *v279 = v88;
  if ((v89 & 1) == 0)
  {
    v88 = sub_1000A35A4(0, *(v88 + 2) + 1, 1, v88);
    *v279 = v88;
  }

  v91 = *(v88 + 2);
  v90 = *(v88 + 3);
  if (v91 >= v90 >> 1)
  {
    v88 = sub_1000A35A4((v90 > 1), v91 + 1, 1, v88);
  }

  *(v88 + 2) = v91 + 1;
  v92 = &v88[80 * v91];
  *(v92 + 4) = 0x40197A2F00000000;
  *(v92 + 3) = v310;
  *(v92 + 16) = 1075112759;
  *(v92 + 5) = v273;
  *(v92 + 12) = 0x3F4A3D603EBB5BD5;
  *v279 = v88;
  swift_endAccess();
  sub_1000AB384(&off_10011D620);
  v311 = v93;
  sub_1000AB384(&off_10011D650);
  v274 = v94;
  swift_beginAccess();
  v95 = *v22;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  *v22 = v95;
  if ((v96 & 1) == 0)
  {
    v95 = sub_1000A35A4(0, *(v95 + 2) + 1, 1, v95);
    *v22 = v95;
  }

  v98 = *(v95 + 2);
  v97 = *(v95 + 3);
  if (v98 >= v97 >> 1)
  {
    v95 = sub_1000A35A4((v97 > 1), v98 + 1, 1, v95);
  }

  *(v95 + 2) = v98 + 1;
  v99 = &v95[80 * v98];
  *(v99 + 4) = 0x4021BE3F00000000;
  *(v99 + 3) = v311;
  *(v99 + 16) = 1084229951;
  *(v99 + 5) = v274;
  *(v99 + 12) = 0x3FECCCDE3EC28F5CLL;
  *v22 = v95;
  swift_endAccess();
  sub_1000AB384(&off_10011D680);
  v312 = v100;
  sub_1000AB384(&off_10011D6B0);
  v275 = v101;
  swift_beginAccess();
  v102 = *v280;
  v103 = swift_isUniquelyReferenced_nonNull_native();
  *v280 = v102;
  if ((v103 & 1) == 0)
  {
    v102 = sub_1000A35A4(0, *(v102 + 2) + 1, 1, v102);
    *v280 = v102;
  }

  v105 = *(v102 + 2);
  v104 = *(v102 + 3);
  if (v105 >= v104 >> 1)
  {
    v102 = sub_1000A35A4((v104 > 1), v105 + 1, 1, v102);
  }

  *(v102 + 2) = v105 + 1;
  v106 = &v102[80 * v105];
  *(v106 + 4) = 0x40490FDA457A0000;
  *(v106 + 3) = v312;
  *(v106 + 16) = 1070141402;
  *(v106 + 5) = v275;
  *(v106 + 12) = 0x3F63D72C3E4CCCCDLL;
  *v280 = v102;
  swift_endAccess();
  sub_1000AB384(&off_10011D6E0);
  v313 = v107;
  sub_1000AB384(&off_10011D710);
  v276 = v108;
  swift_beginAccess();
  v109 = *v281;
  v110 = swift_isUniquelyReferenced_nonNull_native();
  *v281 = v109;
  if ((v110 & 1) == 0)
  {
    v109 = sub_1000A35A4(0, *(v109 + 2) + 1, 1, v109);
    *v281 = v109;
  }

  v112 = *(v109 + 2);
  v111 = *(v109 + 3);
  if (v112 >= v111 >> 1)
  {
    v109 = sub_1000A35A4((v111 > 1), v112 + 1, 1, v109);
  }

  *(v109 + 2) = v112 + 1;
  v113 = &v109[80 * v112];
  *(v113 + 4) = 0x4042CE81450FC000;
  *(v113 + 3) = v313;
  *(v113 + 16) = 1083873825;
  *(v113 + 5) = v276;
  *(v113 + 12) = 0x3FA7AE253E4CCCCDLL;
  *v281 = v109;
  swift_endAccess();
  sub_1000AB384(&off_10011D740);
  v314 = v114;
  sub_1000AB384(&off_10011D770);
  v277 = v115;
  swift_beginAccess();
  v116 = *v346;
  v117 = swift_isUniquelyReferenced_nonNull_native();
  *v346 = v116;
  if ((v117 & 1) == 0)
  {
    v116 = sub_1000A35A4(0, *(v116 + 2) + 1, 1, v116);
    *v346 = v116;
  }

  v119 = *(v116 + 2);
  v118 = *(v116 + 3);
  if (v119 >= v118 >> 1)
  {
    v116 = sub_1000A35A4((v118 > 1), v119 + 1, 1, v116);
  }

  *(v116 + 2) = v119 + 1;
  v120 = &v116[80 * v119];
  *(v120 + 4) = 0x4041E9BA45DAC000;
  *(v120 + 3) = v314;
  *(v120 + 16) = 1083673012;
  *(v120 + 5) = v277;
  *(v120 + 12) = 0x401E148300000000;
  *v346 = v116;
  swift_endAccess();
  sub_1000AB384(&off_10011D7A0);
  v315 = v121;
  sub_1000AB384(&off_10011D7D0);
  v316 = vaddq_f32(v315, v122);
  sub_1000AB384(&off_10011D800);
  v278 = v123;
  swift_beginAccess();
  v124 = *v282;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  *v282 = v124;
  if ((v125 & 1) == 0)
  {
    v124 = sub_1000A35A4(0, *(v124 + 2) + 1, 1, v124);
    *v282 = v124;
  }

  v126 = v316;
  v126.i32[3] = 0;
  v128 = *(v124 + 2);
  v127 = *(v124 + 3);
  if (v128 >= v127 >> 1)
  {
    v329 = v126;
    v264 = sub_1000A35A4((v127 > 1), v128 + 1, 1, v124);
    v126 = v329;
    v124 = v264;
  }

  *(v124 + 2) = v128 + 1;
  v129 = &v124[80 * v128];
  *(v129 + 4) = 0x40490FDA447A0000;
  *(v129 + 3) = v126;
  *(v129 + 16) = 1081552091;
  *(v129 + 5) = v278;
  *(v129 + 12) = 0x4220000000000000;
  *v282 = v124;
  swift_endAccess();
  sub_1000AB384(&off_10011D830);
  v317 = v130;
  sub_1000AB384(&off_10011D860);
  v318 = vaddq_f32(v317, v131);
  sub_1000AB384(&off_10011D890);
  v285 = v132;
  swift_beginAccess();
  v133 = *v353;
  v134 = swift_isUniquelyReferenced_nonNull_native();
  *v353 = v133;
  if ((v134 & 1) == 0)
  {
    v133 = sub_1000A35A4(0, *(v133 + 2) + 1, 1, v133);
    *v353 = v133;
  }

  v135 = v318;
  v135.i32[3] = 0;
  v137 = *(v133 + 2);
  v136 = *(v133 + 3);
  if (v137 >= v136 >> 1)
  {
    v330 = v135;
    v265 = sub_1000A35A4((v136 > 1), v137 + 1, 1, v133);
    v135 = v330;
    v133 = v265;
  }

  *(v133 + 2) = v137 + 1;
  v138 = &v133[80 * v137];
  *(v138 + 4) = 0x40197A2E44098000;
  *(v138 + 3) = v135;
  *(v138 + 16) = 1073781512;
  *(v138 + 5) = v285;
  *(v138 + 12) = 0x3F63D6F93E851EB8;
  *v353 = v133;
  swift_endAccess();
  sub_1000AB384(&off_10011D8C0);
  v319 = v139;
  sub_1000AB384(&off_10011D8F0);
  v320 = vaddq_f32(v319, v140);
  sub_1000AB384(&off_10011D920);
  v286 = v141;
  swift_beginAccess();
  v142 = *v358;
  v143 = swift_isUniquelyReferenced_nonNull_native();
  *v358 = v142;
  if ((v143 & 1) == 0)
  {
    v142 = sub_1000A35A4(0, *(v142 + 2) + 1, 1, v142);
    *v358 = v142;
  }

  v144 = v320;
  v144.i32[3] = 0;
  v146 = *(v142 + 2);
  v145 = *(v142 + 3);
  if (v146 >= v145 >> 1)
  {
    v331 = v144;
    v266 = sub_1000A35A4((v145 > 1), v146 + 1, 1, v142);
    v144 = v331;
    v142 = v266;
  }

  *(v142 + 2) = v146 + 1;
  v147 = &v142[80 * v146];
  *(v147 + 4) = 0x4004EC9D44BB8000;
  *(v147 + 3) = v144;
  *(v147 + 16) = 1082377768;
  *(v147 + 5) = v286;
  *(v147 + 12) = 0x400333333EC28F5CLL;
  *v358 = v142;
  swift_endAccess();
  sub_1000AB384(&off_10011D950);
  v321 = v148;
  sub_1000AB384(&off_10011D980);
  v322 = vaddq_f32(v321, v149);
  sub_1000AB384(&off_10011D9B0);
  v287 = v150;
  swift_beginAccess();
  v151 = *v369;
  v152 = swift_isUniquelyReferenced_nonNull_native();
  *v369 = v151;
  if ((v152 & 1) == 0)
  {
    v151 = sub_1000A35A4(0, *(v151 + 2) + 1, 1, v151);
    *v369 = v151;
  }

  v153 = v322;
  v153.i32[3] = 0;
  v155 = *(v151 + 2);
  v154 = *(v151 + 3);
  if (v155 >= v154 >> 1)
  {
    v332 = v153;
    v267 = sub_1000A35A4((v154 > 1), v155 + 1, 1, v151);
    v153 = v332;
    v151 = v267;
  }

  *(v151 + 2) = v155 + 1;
  v156 = &v151[80 * v155];
  *(v156 + 4) = 0x40490FDA44E10000;
  *(v156 + 3) = v153;
  *(v156 + 16) = 1075738667;
  *(v156 + 5) = v287;
  *(v156 + 12) = 0x3F65E3763DCCCCCDLL;
  *v369 = v151;
  swift_endAccess();
  sub_1000AB384(&off_10011D9E0);
  v323 = v157;
  sub_1000AB384(&off_10011DA10);
  v288 = v158;
  swift_beginAccess();
  v159 = *v345;
  v160 = swift_isUniquelyReferenced_nonNull_native();
  *v345 = v159;
  if ((v160 & 1) == 0)
  {
    v159 = sub_1000A35A4(0, *(v159 + 2) + 1, 1, v159);
    *v345 = v159;
  }

  v162 = *(v159 + 2);
  v161 = *(v159 + 3);
  if (v162 >= v161 >> 1)
  {
    v159 = sub_1000A35A4((v161 > 1), v162 + 1, 1, v159);
  }

  *(v159 + 2) = v162 + 1;
  v163 = &v159[80 * v162];
  *(v163 + 4) = 0x40490FDA46596C00;
  *(v163 + 3) = v323;
  *(v163 + 16) = 1076037070;
  *(v163 + 5) = v288;
  *(v163 + 12) = 0x3F828F753FA3126FLL;
  *v345 = v159;
  swift_endAccess();
  sub_1000AB384(&off_10011DA40);
  v324 = v164;
  sub_1000AB384(&off_10011DA70);
  v289 = v165;
  swift_beginAccess();
  v166 = *v343;
  v167 = swift_isUniquelyReferenced_nonNull_native();
  *v343 = v166;
  if ((v167 & 1) == 0)
  {
    v166 = sub_1000A35A4(0, *(v166 + 2) + 1, 1, v166);
    *v343 = v166;
  }

  v169 = *(v166 + 2);
  v168 = *(v166 + 3);
  if (v169 >= v168 >> 1)
  {
    v166 = sub_1000A35A4((v168 > 1), v169 + 1, 1, v166);
  }

  *(v166 + 2) = v169 + 1;
  v170 = &v166[80 * v169];
  *(v170 + 4) = 0x3FF86C5700000000;
  *(v170 + 3) = v324;
  *(v170 + 16) = 1077207371;
  *(v170 + 5) = v289;
  *(v170 + 12) = 0x41DCE14800000000;
  *v343 = v166;
  swift_endAccess();
  sub_1000AB384(&off_10011DAA0);
  v325 = v171;
  sub_1000AB384(&off_10011DAD0);
  v290 = v172;
  swift_beginAccess();
  v173 = *v279;
  v174 = swift_isUniquelyReferenced_nonNull_native();
  *v279 = v173;
  if ((v174 & 1) == 0)
  {
    v173 = sub_1000A35A4(0, *(v173 + 2) + 1, 1, v173);
    *v279 = v173;
  }

  v176 = *(v173 + 2);
  v175 = *(v173 + 3);
  if (v176 >= v175 >> 1)
  {
    v173 = sub_1000A35A4((v175 > 1), v176 + 1, 1, v173);
  }

  *(v173 + 2) = v176 + 1;
  v177 = &v173[80 * v176];
  *(v177 + 4) = 0x40197A2F00000000;
  *(v177 + 3) = v325;
  *(v177 + 16) = 1075112759;
  *(v177 + 5) = v290;
  *(v177 + 12) = 0x3F4A3D603EBB5BD5;
  *v279 = v173;
  swift_endAccess();
  sub_1000AB384(&off_10011DB00);
  v326 = v178;
  sub_1000AB384(&off_10011DB30);
  v291 = v179;
  swift_beginAccess();
  v180 = *v22;
  v181 = swift_isUniquelyReferenced_nonNull_native();
  *v22 = v180;
  if ((v181 & 1) == 0)
  {
    v180 = sub_1000A35A4(0, *(v180 + 2) + 1, 1, v180);
    *v22 = v180;
  }

  v183 = *(v180 + 2);
  v182 = *(v180 + 3);
  if (v183 >= v182 >> 1)
  {
    v180 = sub_1000A35A4((v182 > 1), v183 + 1, 1, v180);
  }

  *(v180 + 2) = v183 + 1;
  v184 = &v180[80 * v183];
  *(v184 + 4) = 0x4021BE3F00000000;
  *(v184 + 3) = v326;
  *(v184 + 16) = 1084229951;
  *(v184 + 5) = v291;
  *(v184 + 12) = 0x3FECCCDE3EC28F5CLL;
  *v22 = v180;
  swift_endAccess();
  sub_1000AB384(&off_10011DB60);
  v327 = v185;
  sub_1000AB384(&off_10011DB90);
  v292 = v186;
  swift_beginAccess();
  v187 = *v346;
  v188 = swift_isUniquelyReferenced_nonNull_native();
  *v346 = v187;
  if ((v188 & 1) == 0)
  {
    v187 = sub_1000A35A4(0, *(v187 + 2) + 1, 1, v187);
    *v346 = v187;
  }

  v190 = *(v187 + 2);
  v189 = *(v187 + 3);
  if (v190 >= v189 >> 1)
  {
    v187 = sub_1000A35A4((v189 > 1), v190 + 1, 1, v187);
  }

  *(v187 + 2) = v190 + 1;
  v191 = &v187[80 * v190];
  *(v191 + 4) = 0x4041E9BA461C4000;
  *(v191 + 3) = v327;
  *(v191 + 16) = 1083673012;
  *(v191 + 5) = v292;
  *(v191 + 12) = 0x401E148300000000;
  *v346 = v187;
  swift_endAccess();
  sub_1000AB384(&off_10011DBC0);
  v347 = v192;
  sub_1000AB384(&off_10011DBF0);
  v328 = v193;
  swift_beginAccess();
  v194 = *v280;
  v195 = swift_isUniquelyReferenced_nonNull_native();
  *v280 = v194;
  if ((v195 & 1) == 0)
  {
    v194 = sub_1000A35A4(0, *(v194 + 2) + 1, 1, v194);
    *v280 = v194;
  }

  v197 = *(v194 + 2);
  v196 = *(v194 + 3);
  if (v197 >= v196 >> 1)
  {
    v194 = sub_1000A35A4((v196 > 1), v197 + 1, 1, v194);
  }

  *(v194 + 2) = v197 + 1;
  v198 = &v194[80 * v197];
  *(v198 + 4) = 0x40490FDA451C4000;
  *(v198 + 3) = v347;
  *(v198 + 16) = 1070141402;
  *(v198 + 5) = v328;
  *(v198 + 12) = 0x3F63D72C3E4CCCCDLL;
  *v280 = v194;
  swift_endAccess();
  sub_1000AB384(&off_10011DC20);
  v348 = v199;
  sub_1000AB384(&off_10011DC50);
  v339 = v200;
  swift_beginAccess();
  v201 = *v281;
  v202 = swift_isUniquelyReferenced_nonNull_native();
  *v281 = v201;
  if ((v202 & 1) == 0)
  {
    v201 = sub_1000A35A4(0, *(v201 + 2) + 1, 1, v201);
    *v281 = v201;
  }

  v204 = *(v201 + 2);
  v203 = *(v201 + 3);
  if (v204 >= v203 >> 1)
  {
    v201 = sub_1000A35A4((v203 > 1), v204 + 1, 1, v201);
  }

  *(v201 + 2) = v204 + 1;
  v205 = &v201[80 * v204];
  *(v205 + 4) = 0x4042CE81442F0000;
  *(v205 + 3) = v348;
  *(v205 + 16) = 1083873825;
  *(v205 + 5) = v339;
  *(v205 + 12) = 0x3FA7AE253E4CCCCDLL;
  *v281 = v201;
  swift_endAccess();
  sub_1000AB384(&off_10011DC80);
  v349 = v206;
  sub_1000AB384(&off_10011DCB0);
  v340 = v207;
  swift_beginAccess();
  v208 = *v282;
  v209 = swift_isUniquelyReferenced_nonNull_native();
  *v282 = v208;
  if ((v209 & 1) == 0)
  {
    v208 = sub_1000A35A4(0, *(v208 + 2) + 1, 1, v208);
    *v282 = v208;
  }

  v211 = *(v208 + 2);
  v210 = *(v208 + 3);
  if (v211 >= v210 >> 1)
  {
    v208 = sub_1000A35A4((v210 > 1), v211 + 1, 1, v208);
  }

  *(v208 + 2) = v211 + 1;
  v212 = &v208[80 * v211];
  *(v212 + 4) = 0x40490FDA43AF0000;
  *(v212 + 3) = v349;
  *(v212 + 16) = 1081552091;
  *(v212 + 5) = v340;
  *(v212 + 12) = 0x4220000000000000;
  *v282 = v208;
  swift_endAccess();
  sub_1000AB384(&off_10011DCE0);
  v350 = v213;
  sub_1000AB384(&off_10011DD10);
  v341 = v214;
  swift_beginAccess();
  v215 = *v353;
  v216 = swift_isUniquelyReferenced_nonNull_native();
  *v353 = v215;
  if ((v216 & 1) == 0)
  {
    v215 = sub_1000A35A4(0, *(v215 + 2) + 1, 1, v215);
    *v353 = v215;
  }

  v218 = *(v215 + 2);
  v217 = *(v215 + 3);
  if (v218 >= v217 >> 1)
  {
    v215 = sub_1000A35A4((v217 > 1), v218 + 1, 1, v215);
  }

  *(v215 + 2) = v218 + 1;
  v219 = &v215[80 * v218];
  *(v219 + 4) = 0x40490FDA00000000;
  *(v219 + 3) = v350;
  *(v219 + 16) = 1050858016;
  *(v219 + 5) = v341;
  *(v219 + 12) = 0x3F4A3D603F89FBE7;
  *v353 = v215;
  swift_endAccess();
  sub_1000AB384(&off_10011DD40);
  v354 = v220;
  sub_1000AB384(&off_10011DD70);
  v351 = v221;
  swift_beginAccess();
  v222 = *v279;
  v223 = swift_isUniquelyReferenced_nonNull_native();
  *v279 = v222;
  if ((v223 & 1) == 0)
  {
    v222 = sub_1000A35A4(0, *(v222 + 2) + 1, 1, v222);
    *v279 = v222;
  }

  v225 = *(v222 + 2);
  v224 = *(v222 + 3);
  if (v225 >= v224 >> 1)
  {
    v222 = sub_1000A35A4((v224 > 1), v225 + 1, 1, v222);
  }

  *(v222 + 2) = v225 + 1;
  v226 = &v222[80 * v225];
  *(v226 + 4) = 0x40197A2F437A0000;
  *(v226 + 3) = v354;
  *(v226 + 16) = 1073781512;
  *(v226 + 5) = v351;
  *(v226 + 12) = 0x3F4A3D603EBB5BD5;
  *v279 = v222;
  swift_endAccess();
  sub_1000AB384(&off_10011DDA0);
  v355 = v227;
  sub_1000AB384(&off_10011DDD0);
  v352 = v228;
  swift_beginAccess();
  v229 = *v358;
  v230 = swift_isUniquelyReferenced_nonNull_native();
  *v358 = v229;
  if ((v230 & 1) == 0)
  {
    v229 = sub_1000A35A4(0, *(v229 + 2) + 1, 1, v229);
    *v358 = v229;
  }

  v232 = *(v229 + 2);
  v231 = *(v229 + 3);
  if (v232 >= v231 >> 1)
  {
    v229 = sub_1000A35A4((v231 > 1), v232 + 1, 1, v229);
  }

  *(v229 + 2) = v232 + 1;
  v233 = &v229[80 * v232];
  *(v233 + 4) = 0x3FF6C88300000000;
  *(v233 + 3) = v355;
  *(v233 + 16) = 1080635406;
  *(v233 + 5) = v352;
  *(v233 + 12) = 0x3FECCCDE3EC28F5CLL;
  *v358 = v229;
  swift_endAccess();
  sub_1000AB384(&off_10011DE00);
  v359 = v234;
  sub_1000AB384(&off_10011DE30);
  v356 = v235;
  swift_beginAccess();
  v236 = *v22;
  v237 = swift_isUniquelyReferenced_nonNull_native();
  *v22 = v236;
  if ((v237 & 1) == 0)
  {
    v236 = sub_1000A35A4(0, *(v236 + 2) + 1, 1, v236);
    *v22 = v236;
  }

  v239 = *(v236 + 2);
  v238 = *(v236 + 3);
  if (v239 >= v238 >> 1)
  {
    v236 = sub_1000A35A4((v238 > 1), v239 + 1, 1, v236);
  }

  *(v236 + 2) = v239 + 1;
  v240 = &v236[80 * v239];
  *(v240 + 4) = 0x4004EC9C43480000;
  *(v240 + 3) = v359;
  *(v240 + 16) = 1082377768;
  *(v240 + 5) = v356;
  *(v240 + 12) = 0x3FECCCDE3EC28F5CLL;
  *v22 = v236;
  swift_endAccess();
  sub_1000AB384(&off_10011DE60);
  v360 = v241;
  sub_1000AB384(&off_10011DE90);
  v357 = v242;
  swift_beginAccess();
  v243 = *v369;
  v244 = swift_isUniquelyReferenced_nonNull_native();
  *v369 = v243;
  if ((v244 & 1) == 0)
  {
    v243 = sub_1000A35A4(0, *(v243 + 2) + 1, 1, v243);
    *v369 = v243;
  }

  v246 = *(v243 + 2);
  v245 = *(v243 + 3);
  if (v246 >= v245 >> 1)
  {
    v243 = sub_1000A35A4((v245 > 1), v246 + 1, 1, v243);
  }

  *(v243 + 2) = v246 + 1;
  v247 = &v243[80 * v246];
  *(v247 + 4) = 0x40490FDA44C80000;
  *(v247 + 3) = v360;
  *(v247 + 16) = 1075738667;
  *(v247 + 5) = v357;
  *(v247 + 12) = 0x3F65E37600000000;
  *v369 = v243;
  swift_endAccess();
  sub_1000AB384(&off_10011DEC0);
  v370 = v248;
  sub_1000AB384(&off_10011DEF0);
  v361 = v249;
  swift_beginAccess();
  v250 = *v345;
  v251 = swift_isUniquelyReferenced_nonNull_native();
  *v345 = v250;
  if ((v251 & 1) == 0)
  {
    v250 = sub_1000A35A4(0, *(v250 + 2) + 1, 1, v250);
    *v345 = v250;
  }

  v253 = *(v250 + 2);
  v252 = *(v250 + 3);
  if (v253 >= v252 >> 1)
  {
    v250 = sub_1000A35A4((v252 > 1), v253 + 1, 1, v250);
  }

  *(v250 + 2) = v253 + 1;
  v254 = &v250[80 * v253];
  *(v254 + 4) = 0x40490FDA45FA0000;
  *(v254 + 3) = v370;
  *(v254 + 16) = 1076037070;
  *(v254 + 5) = v361;
  *(v254 + 12) = 0x3F828F753FA3126FLL;
  *v345 = v250;
  swift_endAccess();
  sub_1000AB384(&off_10011DF20);
  v371 = v255;
  sub_1000AB384(&off_10011DF50);
  v362 = v256;
  swift_beginAccess();
  v257 = *v343;
  v258 = swift_isUniquelyReferenced_nonNull_native();
  *v343 = v257;
  if ((v258 & 1) == 0)
  {
    v257 = sub_1000A35A4(0, *(v257 + 2) + 1, 1, v257);
    *v343 = v257;
  }

  v260 = *(v257 + 2);
  v259 = *(v257 + 3);
  if (v260 >= v259 >> 1)
  {
    v257 = sub_1000A35A4((v259 > 1), v260 + 1, 1, v257);
  }

  *(v257 + 2) = v260 + 1;
  v261 = &v257[80 * v260];
  *(v261 + 4) = 0x3FF86C57C3160000;
  *(v261 + 3) = v371;
  *(v261 + 16) = 1077207371;
  *(v261 + 5) = v362;
  *(v261 + 12) = 0x41DCE14800000000;
  *(v294 + 64) = v257;
  swift_endAccess();
  sub_1000125FC(&qword_1001303F0);
  v262 = swift_allocObject();
  *(v262 + 16) = xmmword_1000F3150;
  *(v262 + 32) = v298;
  *(v262 + 40) = v19;
  *(v262 + 48) = v296;
  *(v262 + 56) = v295;
  *(v262 + 64) = v294;
  *(v262 + 72) = v297;
  *(v262 + 80) = v293;
  *(v262 + 88) = v1;
  *(v262 + 96) = v299;
  *(v262 + 104) = v300;
  *(v262 + 112) = v9;
  swift_beginAccess();
  *(v301 + 144) = v262;
}

int64_t sub_1000E7994(CGImage *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v67 = a6;
  v65 = a1;
  v7 = sub_1000E93B4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v13 = (&v55 - v12);
  v14 = [objc_opt_self() mainBundle];
  v64 = a3;
  v15 = sub_1000E98E4();
  v16 = sub_1000E98E4();
  v17 = [v14 URLForResource:v15 withExtension:v16];

  if (!v17)
  {
    sub_1000AC378();
    swift_allocError();
    *v49 = 1;
    swift_willThrow();
    return v10;
  }

  sub_1000E9364();

  (*(v8 + 32))(v13, v10, v7);
  v10 = v13;
  sub_1000E9384();
  v18 = sub_1000E98E4();

  v19 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, v18, kCFURLPOSIXPathStyle, 0);
  v20 = v13;
  if (!v19)
  {
    goto LABEL_21;
  }

  v21 = v19;
  v22 = CGImageSourceCreateWithURL(v19, 0);
  if (!v22)
  {
    v10 = v21;
LABEL_20:

LABEL_21:
    sub_1000AC378();
    swift_allocError();
    *v50 = 1;
    swift_willThrow();

LABEL_22:
    (*(v8 + 8))(v20, v7);
    return v10;
  }

  v10 = v22;
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v22, 0, 0);
  if (!ImageAtIndex)
  {

    goto LABEL_20;
  }

  v24 = ImageAtIndex;
  v25 = CGColorSpaceCreateWithName(kCGColorSpaceExtendedLinearSRGB);
  if (!v25)
  {
    sub_1000AC378();
    swift_allocError();
    *v51 = 1;
    swift_willThrow();

    goto LABEL_22;
  }

  v62 = v7;
  v63 = v25;
  v59 = v10;
  v60 = v8;
  v61 = v20;
  Width = CGImageGetWidth(v24);
  Height = CGImageGetHeight(v24);
  BitsPerComponent = CGImageGetBitsPerComponent(v24);
  result = CGImageGetWidth(v24);
  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v30 = v67;
  v31 = 2 * result * v67;
  if ((2 * result * v67) >> 64 != v31 >> 63)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v32 = BitsPerComponent;
  v10 = v63;
  v33 = sub_1000E8700(Width, Height, v32, v31, v63, 0x1105u);
  if (!v33)
  {
    sub_1000AC378();
    swift_allocError();
    *v52 = 1;
    swift_willThrow();

LABEL_28:
    (*(v60 + 8))(v61, v62);
    return v10;
  }

  v34 = v33;
  CGImageGetWidth(v24);
  CGImageGetHeight(v24);
  v10 = v34;
  sub_1000E9B74();
  Data = CGBitmapContextGetData(v34);
  v36 = v62;
  if (!Data)
  {
    sub_1000AC378();
    swift_allocError();
    *v53 = 1;
    swift_willThrow();

    (*(v60 + 8))(v61, v36);
    return v10;
  }

  v37 = Data;
  v58 = v10;
  v38 = [objc_allocWithZone(MTLTextureDescriptor) init];
  [v38 setTextureType:2];
  [v38 setPixelFormat:115];
  [v38 setWidth:CGImageGetWidth(v24)];
  [v38 setHeight:CGImageGetHeight(v24)];
  [v38 setUsage:1];
  v39 = [(CGImage *)v65 newTextureWithDescriptor:v38];
  if (!v39)
  {
    sub_1000AC378();
    v10 = v24;
    swift_allocError();
    *v54 = 1;
    swift_willThrow();

    goto LABEL_28;
  }

  v10 = v39;
  v57 = v37;
  v65 = v24;
  v40 = sub_1000E98E4();
  [(CGColorSpace *)v10 setLabel:v40];

  v64 = [v38 width];
  v56 = [v38 height];
  v41 = v38;
  result = [v38 width];
  if (result + 0x4000000000000000 < 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v42 = 2 * result * v30;
  if ((2 * result * v30) >> 64 != v42 >> 63)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v43 = [v38 width];
  result = [v38 height];
  v44 = v43 * result;
  if ((v43 * result) >> 64 != (v43 * result) >> 63)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v46 = v61;
  v45 = v62;
  v47 = v60;
  v48 = v63;
  if (v44 + 0x4000000000000000 < 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if ((2 * v44 * v67) >> 64 == (2 * v44 * v67) >> 63)
  {
    memset(v66, 0, 24);
    v66[3] = v64;
    v66[4] = v56;
    v66[5] = 1;
    [(CGColorSpace *)v10 replaceRegion:v66 mipmapLevel:0 slice:0 withBytes:v57 bytesPerRow:v42 bytesPerImage:?];

    (*(v47 + 8))(v46, v45);
    return v10;
  }

LABEL_35:
  __break(1u);
  return result;
}

void sub_1000E809C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v59 = a7;
  v60 = a8;
  v61 = a1;
  v63 = a6;
  v8 = sub_1000E93B4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v51 - v13;
  v15 = [objc_opt_self() mainBundle];
  v16 = sub_1000E98E4();
  v17 = sub_1000E98E4();
  v18 = [v15 URLForResource:v16 withExtension:v17];

  if (!v18)
  {
    sub_1000AC378();
    swift_allocError();
    *v46 = 1;
    swift_willThrow();
    return;
  }

  sub_1000E9364();

  (*(v9 + 32))(v14, v11, v8);
  sub_1000E9384();
  v19 = sub_1000E98E4();

  v20 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, v19, kCFURLPOSIXPathStyle, 0);
  if (!v20)
  {
    goto LABEL_25;
  }

  v21 = v20;
  v22 = CGImageSourceCreateWithURL(v20, 0);
  if (!v22)
  {
LABEL_24:

LABEL_25:
    sub_1000AC378();
    swift_allocError();
    *v47 = 1;
    swift_willThrow();

    (*(v9 + 8))(v14, v8);
    return;
  }

  v23 = v22;
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v22, 0, 0);
  if (!ImageAtIndex)
  {
    v25 = v23;
LABEL_23:

    v21 = v25;
    goto LABEL_24;
  }

  v25 = ImageAtIndex;
  v58 = CGColorSpaceCreateWithName(kCGColorSpaceExtendedLinearDisplayP3);
  if (!v58)
  {

    v21 = v23;
    goto LABEL_23;
  }

  v54 = v23;
  v55 = v14;
  v53 = v9;
  v56 = v8;
  v26 = CGImageGetBitsPerComponent(v25) / 8;
  if (CGImageGetBitsPerComponent(v25) == 16)
  {
    v27 = 4357;
  }

  else
  {
    v27 = 8453;
  }

  LODWORD(v57) = v27;
  Width = CGImageGetWidth(v25);
  Height = CGImageGetHeight(v25);
  BitsPerComponent = CGImageGetBitsPerComponent(v25);
  v31 = CGImageGetWidth(v25);
  v32 = v31 * v26;
  if ((v31 * v26) >> 64 != (v31 * v26) >> 63)
  {
    __break(1u);
    goto LABEL_31;
  }

  v33 = v26;
  v34 = v63;
  v35 = v58;
  if ((v32 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v36 = sub_1000E8700(Width, Height, BitsPerComponent, 4 * v32, v58, v57);
  if (!v36)
  {
    sub_1000AC378();
    swift_allocError();
    *v48 = 1;
    swift_willThrow();

LABEL_29:
    (*(v53 + 8))(v55, v56);
    return;
  }

  v37 = v36;
  CGImageGetWidth(v25);
  CGImageGetHeight(v25);
  sub_1000E9B74();
  Data = CGBitmapContextGetData(v37);
  if (!Data)
  {
    sub_1000AC378();
    swift_allocError();
    *v49 = 1;
    swift_willThrow();

    goto LABEL_29;
  }

  v52 = Data;
  v57 = v37;
  v39 = [objc_allocWithZone(MTLTextureDescriptor) init];
  [v39 setTextureType:7];
  [v39 setPixelFormat:115];
  [v39 setWidth:v34];
  [v39 setHeight:v34];
  [v39 setDepth:v34];
  [v39 setUsage:1];
  v40 = [v61 newTextureWithDescriptor:v39];
  if (!v40)
  {
    sub_1000AC378();
    swift_allocError();
    *v50 = 1;
    swift_willThrow();

    goto LABEL_29;
  }

  v41 = v40;
  v42 = sub_1000E98E4();
  [v41 setLabel:v42];

  v43 = v34 * v33;
  if ((v34 * v33) >> 64 != (v34 * v33) >> 63)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if ((v43 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v44 = v34 * v34;
  if ((v34 * v34) >> 64 != (v34 * v34) >> 63)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v45 = v44 * v33;
  if ((v44 * v33) >> 64 == (v44 * v33) >> 63)
  {
    if ((v45 - 0x2000000000000000) >> 62 == 3)
    {
      memset(v62, 0, 24);
      v62[3] = v34;
      v62[4] = v34;
      v62[5] = v34;
      [v41 replaceRegion:v62 mipmapLevel:0 slice:0 withBytes:v52 bytesPerRow:4 * v43 bytesPerImage:4 * v45];

      (*(v53 + 8))(v55, v56);
      return;
    }

    goto LABEL_36;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t sub_1000E8720()
{
  v0 = sub_1000E96A4();
  sub_100011C54(v0, qword_10013DD28);
  sub_100007488(v0, qword_10013DD28);
  return sub_1000E9694();
}

uint64_t sub_1000E87A8()
{
  v0 = sub_1000E96A4();
  sub_100011C54(v0, qword_10013DD40);
  sub_100007488(v0, qword_10013DD40);
  return sub_1000E9694();
}

uint64_t sub_1000E8830()
{
  v0 = sub_1000E96A4();
  sub_100011C54(v0, qword_10013DD58);
  sub_100007488(v0, qword_10013DD58);
  return sub_1000E9694();
}

uint64_t sub_1000E88E0()
{
  v0 = sub_1000E96A4();
  sub_100011C54(v0, qword_10013DD88);
  sub_100007488(v0, qword_10013DD88);
  return sub_1000E9694();
}

uint64_t sub_1000E8968()
{
  v0 = sub_1000E96A4();
  sub_100011C54(v0, qword_10013DDA0);
  sub_100007488(v0, qword_10013DDA0);
  return sub_1000E9694();
}

uint64_t sub_1000E89F0()
{
  v0 = sub_1000E96A4();
  sub_100011C54(v0, qword_10013DDB8);
  sub_100007488(v0, qword_10013DDB8);
  return sub_1000E9694();
}

uint64_t sub_1000E8B6C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1000E96A4();
  sub_100011C54(v3, a2);
  sub_100007488(v3, a2);
  return sub_1000E9694();
}

uint64_t sub_1000E8BF0@<X0>(uint64_t *a1@<X8>)
{
  sub_1000E9864();
  swift_allocObject();
  sub_1000E9874();
  sub_1000E9834();
  swift_allocObject();

  sub_1000E9844();
  sub_1000125FC(&qword_100133E30);
  sub_1000E95C4();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000EC880;
  sub_1000E908C(&qword_100133E38, &type metadata accessor for PRRenderingConfiguration);

  sub_1000E95B4();
  sub_1000E908C(&qword_100133E40, &type metadata accessor for PREditingConfiguration);

  sub_1000E95B4();

  *a1 = v2;
  return result;
}

id sub_1000E8E4C(uint64_t (*a1)(void))
{
  v1 = objc_allocWithZone(a1(0));

  return [v1 init];
}

uint64_t sub_1000E8E8C()
{
  [objc_allocWithZone(type metadata accessor for MercuryPosterUpdater()) init];
  sub_1000125FC(&qword_100133E20);
  swift_allocObject();
  sub_1000E9854();
  sub_1000E90D4(&qword_100133E28);
  sub_1000E9634();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000E8FF0();
  sub_1000E90D4(&qword_100133E18);
  sub_1000E9614();
  return 0;
}

unint64_t sub_1000E8FF0()
{
  result = qword_100133E10;
  if (!qword_100133E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133E10);
  }

  return result;
}

uint64_t sub_1000E908C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000E90D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100019048(&qword_100133E20);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

simd_float2x2 __invert_f2(simd_float2x2 a1)
{
  v3 = ___invert_f2(a1);
  v2 = v3.columns[1];
  v1 = v3.columns[0];
  result.columns[1] = v2;
  result.columns[0] = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  v3 = ___sincosf_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}