uint64_t sub_1AAD1B5D0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1AAD9B074();
  result = sub_1AAF903A4();
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    sub_1AAD1125C(*(v4 + 56) + 776 * v16, __src);
    memcpy(__dst, __src, sizeof(__dst));
    result = sub_1AAF90684();
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
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    result = memcpy((*(v9 + 56) + 776 * v21), __dst, 0x301uLL);
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

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
      v10 = (v15 - 1) & v15;
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

uint64_t sub_1AAD1B888(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

void sub_1AAD1B8B8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 104);
  if (v3 != 2 && (v3 & 1) != 0)
  {
    v5 = *(a1 + 144);
    v6 = *(a1 + 120);
    v24 = *(a1 + 128);
    v7 = *(a1 + 8);
    v8 = *(a1 + 24);
    v9 = *(a1 + 88);
    v10 = *(a1 + 96);
    v12 = *(a1 + 16) - *(a1 + 32) * v10;
    v26.origin.x = v7 - v8 * v9;
    v26.origin.y = v12;
    v26.size.width = v9;
    v26.size.height = v10;
    if (CGRectIsEmpty(v26))
    {
      goto LABEL_24;
    }

    v23 = v5;
    v13 = *a3;

    v27.origin.x = v7 - v8 * v9;
    v27.origin.y = v12;
    v27.size.width = v9;
    v27.size.height = v10;
    MinY = CGRectGetMinY(v27);
    v28.origin.x = v7 - v8 * v9;
    v28.origin.y = v12;
    v28.size.width = v9;
    v28.size.height = v10;
    MaxY = CGRectGetMaxY(v28);
    if (MinY > MaxY)
    {
      __break(1u);
      return;
    }

    v16 = sub_1AAD1BA64(v13, v7, MinY, MaxY, v6);
    v18 = v17;

    v19 = v23;
    if (v16 > v24)
    {
      v20 = v16;
    }

    else
    {
      v20 = v24;
    }

    if (v23 >= v18)
    {
      v19 = v18;
    }

    if (v20 >= v19)
    {
      goto LABEL_24;
    }

    if (v8 > 0.0)
    {
      v21 = (v7 - v20) / v8;
      if (v21 < 0.0)
      {
        v21 = 0.0;
      }

      if (v21 < v9)
      {
        v9 = v21;
      }

      *(a1 + 88) = v9;
    }

    if (v8 < 1.0)
    {
      v22 = (v7 - v19) / (v8 + -1.0);
      if (v22 < 0.0)
      {
        v22 = 0.0;
      }

      if (v22 < v9)
      {
        v9 = v22;
      }

      *(a1 + 88) = v9;
    }

    if (v9 < 2.22044605e-16)
    {
LABEL_24:
      sub_1AACCB044(&v25, *a1);
    }
  }
}

double sub_1AAD1BA64(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v8 = (a1 + 56);
    v9 = -INFINITY;
    v10 = INFINITY;
    do
    {
      v12 = *(v8 - 1);
      v11 = *v8;
      v13 = *(v8 - 3);
      v14 = *(v8 - 2);
      v20.origin.x = v13;
      v20.origin.y = v14;
      v20.size.width = v12;
      v20.size.height = *v8;
      if (CGRectGetMaxY(v20) > a3)
      {
        v21.origin.x = v13;
        v21.origin.y = v14;
        v21.size.width = v12;
        v21.size.height = v11;
        if (CGRectGetMinY(v21) < a4)
        {
          v22.origin.x = v13;
          v22.origin.y = v14;
          v22.size.width = v12;
          v22.size.height = v11;
          if (CGRectGetMaxX(v22) + a5 < a2)
          {
            v23.origin.x = v13;
            v23.origin.y = v14;
            v23.size.width = v12;
            v23.size.height = v11;
            v15 = CGRectGetMaxX(v23) + a5;
            if (v9 <= v15)
            {
              v9 = v15;
            }
          }

          v24.origin.x = v13;
          v24.origin.y = v14;
          v24.size.width = v12;
          v24.size.height = v11;
          if (CGRectGetMinX(v24) - a5 > a2)
          {
            v25.origin.x = v13;
            v25.origin.y = v14;
            v25.size.width = v12;
            v25.size.height = v11;
            v16 = CGRectGetMinX(v25) - a5;
            if (v16 < v10)
            {
              v10 = v16;
            }
          }

          if (v10 < v9)
          {
            return a2;
          }
        }
      }

      v8 += 4;
      --v5;
    }

    while (v5);
    if (v9 <= v10)
    {
      return v9;
    }

    __break(1u);
  }

  return -INFINITY;
}

uint64_t sub_1AAD1BBF4(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = sub_1AAD1BCB8(*a1);
  v6 = sub_1AAD1BCB8(v4);
  LOBYTE(v4) = sub_1AAD1BE80(v5, v6);

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v7 = *(type metadata accessor for SgCanvasRenderer(0) + 28);
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 32);
  v10 = (a2 + v7);
  x_low = LOBYTE(v10[1].origin.x);
  result = v9 & x_low;
  if ((v9 & 1) == 0 && (x_low & 1) == 0)
  {
    return CGRectEqualToRect(*v8, *v10);
  }

  return result;
}

uint64_t sub_1AAD1BCB8(uint64_t a1)
{
  sub_1AAD1BE20();
  result = sub_1AAF90384();
  v3 = result;
  v4 = 0;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = result + 64;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = *(*(a1 + 48) + 8 * v13);
      sub_1AAD1125C(*(a1 + 56) + 776 * v13, v19);
      v15 = v19[0];
      result = sub_1AAD11338(v19);
      *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(v3[6] + 8 * v13) = v14;
      *(v3[7] + 8 * v13) = v15;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        break;
      }

      v3[2] = v18;
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return v3;
      }

      v12 = *(a1 + 64 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1AAD1BE20()
{
  if (!qword_1ED9B2908)
  {
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2908);
    }
  }
}

uint64_t sub_1AAD1BE80(uint64_t result, uint64_t a2)
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
    result = sub_1AACC9B78(*(*(v3 + 48) + 8 * v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v13)
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

double sub_1AAD1BF88()
{
  sub_1AAF8D914();
  result = *&v1;
  xmmword_1ED9C34C0 = v1;
  *&qword_1ED9C34D0 = v2;
  qword_1ED9C34E0 = v3;
  return result;
}

void *sub_1AAD1BFE4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1AAD1C070();
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x5397829CBC14E5E1) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 8) + (v7 >> 63));
  return result;
}

void sub_1AAD1C070()
{
  if (!qword_1ED9B0618)
  {
    sub_1AAD0D184(255, &qword_1ED9B0608);
    v0 = sub_1AAF90484();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B0618);
    }
  }
}

void *sub_1AAD1C0E8(void *result, char *a2, uint64_t a3, uint64_t a4)
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
    v22 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = v17 | (v12 << 6);
      v19 = *(*(a4 + 48) + 8 * v18);
      sub_1AAD1125C(*(a4 + 56) + 776 * v18, &__src[1]);
      __src[0] = v19;
      memcpy(__dst, __src, sizeof(__dst));
      memcpy(v11, __dst, 0x309uLL);
      if (v14 == v10)
      {
        goto LABEL_23;
      }

      v11 += 784;
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
    if (v13 <= v12 + 1)
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = v13;
    }

    v12 = v21 - 1;
    v10 = result;
LABEL_23:
    v7 = v22;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1AAD1C270(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AADAB4F8(v2);
  }

  v3 = v2[2];
  v5[0] = v2 + 4;
  v5[1] = v3;
  result = sub_1AAD1C2DC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1AAD1C2DC(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_1AAF90464();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1AAD1A1A0();
        v5 = sub_1AAF8F8A4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1AAF4DF34(v7, v8, a1, v4);
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
    return sub_1AAD1C460(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1AAD1C3D8()
{
  v0 = sub_1AAF8E244();
  sub_1AAD1C614(v0, qword_1ED9C3498);
  v1 = sub_1AAD0F5D8(v0, qword_1ED9C3498);
  v2 = *MEMORY[0x1E697F468];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_1AAD1C460(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v15 = a2;
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 784 * a3 - 784;
    v7 = result - a3;
LABEL_5:
    v8 = v7;
    v9 = v6;
    while (1)
    {
      sub_1AAD1C5AC(v9 + 784, __dst, sub_1AAD1A1A0);
      sub_1AAD1C5AC(v9, v13, sub_1AAD1A1A0);
      v10 = __dst[0];
      v11 = v13[0];
      sub_1AAF502C0(v13, sub_1AAD1A1A0);
      result = sub_1AAF502C0(__dst, sub_1AAD1A1A0);
      if (v10 >= v11)
      {
LABEL_4:
        ++v4;
        v6 += 784;
        --v7;
        if (v4 == v15)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      memcpy(__dst, (v9 + 784), 0x309uLL);
      memcpy((v9 + 784), v9, 0x310uLL);
      result = memcpy(v9, __dst, 0x309uLL);
      v9 -= 784;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1AAD1C5AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t *sub_1AAD1C614(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

char *sub_1AAD1C678(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD469FC(0, &qword_1ED9B0640, &type metadata for SgScales, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 712);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[712 * v8])
    {
      memmove(v12, v13, 712 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD1C7B8(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD1C678(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double sub_1AAD1C7D8@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1AAF8E934();
  sub_1AAF8E8A4();
  sub_1AAF8E8D4();
  v32[0] = v14;
  v32[1] = v15;
  v33 = v16;
  v4 = *(type metadata accessor for SgRule(0) + 36);
  v5 = v1 + v4;
  if (*(v1 + v4 + 72))
  {
    v6 = *(v5 + 80);
    v7 = (v5 + 48);
    v8 = *(v5 + 64);
    v9 = *(v2 + v4 + 72);
    v10 = *(v5 + 56);
    v11 = *(v5 + 60);
  }

  else
  {
    v7 = &v17;
    sub_1AAF8D914();
    v10 = v18;
    v11 = v19;
    v8 = v20;
    v9 = v21;
    v6 = v22;
  }

  v26 = *v7;
  v27 = v10;
  v28 = v11;
  v29 = v8;
  v30 = v9;
  v31 = v6;

  sub_1AAF8E854();

  sub_1AAD12C10(v32);
  result = *&v23;
  v13 = v24;
  *a1 = v23;
  *(a1 + 16) = v13;
  *(a1 + 32) = v25;
  return result;
}

uint64_t sub_1AAD1C920(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  a2();
  sub_1AACDAF30(a1, v25, &qword_1ED9B3AF8, &type metadata for AxisCompositingLayer);
  swift_unownedRetainStrong();
  swift_beginAccess();
  sub_1AACDAFB0(a4 + 40, v24, sub_1AAD1CD14);

  sub_1AACDAFB0(v25, v19, sub_1AAD1CD14);
  sub_1AACDAFB0(v24, &v21, sub_1AAD1CD14);
  if (v20 != 1)
  {
    sub_1AACDAFB0(v19, v18, sub_1AAD1CD14);
    if (*(&v22 + 1) == 1)
    {
      sub_1AACD8D78(v24, sub_1AAD1CD14);
      sub_1AACD8D78(v25, sub_1AAD1CD14);
      sub_1AACDD030(v18, &qword_1ED9B3AF8, &type metadata for AxisCompositingLayer);
      v7 = 0;
      v8 = sub_1AAD1CD90;
LABEL_18:
      v6 = v8;
      goto LABEL_19;
    }

    sub_1AACDAF30(v18, v13, &qword_1ED9B3AF8, &type metadata for AxisCompositingLayer);
    v15 = v21;
    v16 = v22;
    v17 = v23;
    if (v14)
    {
      sub_1AACDAF30(v13, v12, &qword_1ED9B3AF8, &type metadata for AxisCompositingLayer);
      if (*(&v16 + 1))
      {
        v10[0] = v15;
        v10[1] = v16;
        v11 = v17;
        sub_1AAD45E1C(0, &qword_1ED9B2EF0);
        v7 = AGCompareValues();
        sub_1AADDA608(v10);
        sub_1AACD8D78(v24, sub_1AAD1CD14);
        sub_1AACD8D78(v25, sub_1AAD1CD14);
        sub_1AADDA608(v12);
        sub_1AACDD030(v13, &qword_1ED9B3AF8, &type metadata for AxisCompositingLayer);
LABEL_17:
        sub_1AACDD030(v18, &qword_1ED9B3AF8, &type metadata for AxisCompositingLayer);
        v8 = sub_1AAD1CD14;
        goto LABEL_18;
      }

      sub_1AACD8D78(v24, sub_1AAD1CD14);
      sub_1AACD8D78(v25, sub_1AAD1CD14);
      sub_1AADDA608(v12);
    }

    else
    {
      sub_1AACD8D78(v24, sub_1AAD1CD14);
      sub_1AACD8D78(v25, sub_1AAD1CD14);
      if (!*(&v16 + 1))
      {
        sub_1AACDD030(v13, &qword_1ED9B3AF8, &type metadata for AxisCompositingLayer);
        v7 = 1;
        goto LABEL_17;
      }
    }

    sub_1AACE1350(v13, &qword_1EB424C48, &qword_1ED9B3AF8, &type metadata for AxisCompositingLayer, sub_1AAEB0198);
    v7 = 0;
    goto LABEL_17;
  }

  sub_1AACD8D78(v24, sub_1AAD1CD14);
  sub_1AACD8D78(v25, sub_1AAD1CD14);
  if (*(&v22 + 1) == 1)
  {
    v6 = sub_1AAD1CD14;
  }

  else
  {
    v6 = sub_1AAD1CD90;
  }

  if (*(&v22 + 1) == 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = 0;
  }

LABEL_19:
  sub_1AACD8D78(v19, v6);
  return v7 & 1;
}

double sub_1AAD1CD04@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void sub_1AAD1CD14()
{
  if (!qword_1ED9B1B18)
  {
    sub_1AACC9BB0(255, &qword_1ED9B3AF8, &type metadata for AxisCompositingLayer, MEMORY[0x1E69E6720]);
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B1B18);
    }
  }
}

void sub_1AAD1CD90()
{
  if (!qword_1ED9B1B10)
  {
    sub_1AAD1CD14();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED9B1B10);
    }
  }
}

uint64_t sub_1AAD1CDF4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = sub_1AAD1CE64(*a1);
  v4 = sub_1AAD1CE64(v2);
  v5 = sub_1AAD1BE80(v3, v4);

  return v5 & 1;
}

uint64_t sub_1AAD1CE94()
{
  result = type metadata accessor for SgShapeStyle();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AAD1CF20(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();
  result = type metadata accessor for SgShapeStyle();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AAD1D04C()
{
  result = type metadata accessor for SgShapeStyle();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1AAD1D0E4()
{
  sub_1AAF8E244();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SgShapeStyle();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGPoint(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1AAD1D1C4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  sub_1AAD1D234(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1AAD1D234(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (!*a2)
  {
    type metadata accessor for AxisMarkRenderContext();
    sub_1AACC9C1C(255, a3, a4, MEMORY[0x1E69E7DE0], type metadata accessor for ConcreteScale);
    type metadata accessor for CGSize(255);
    sub_1AACE49D8();
    sub_1AACC9BB0(255, a5, a4, type metadata accessor for MarksDescriptor);
    sub_1AACC9BB0(255, &qword_1ED9B3AF8, &type metadata for AxisCompositingLayer, MEMORY[0x1E69E6720]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v10)
    {
      atomic_store(TupleTypeMetadata, a2);
    }
  }
}

unint64_t sub_1AAD1D374@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_1AAD1B218(a1);
  *a2 = result;
  return result;
}

void sub_1AAD1D39C(unint64_t a1, char **a2)
{
  v4 = type metadata accessor for SgGroup(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = a1 >> 60;
  if ((a1 >> 60) <= 0xE)
  {
    if (((1 << v7) & 0x7BF8) != 0)
    {
      return;
    }

    if (v7 == 2)
    {
      sub_1AAD117A0((a1 & 0xFFFFFFFFFFFFFFFLL) + 16, v32);
      v8 = *(*(&v32[0] + 1) + 16);
      if (v8)
      {
        v9 = (*(&v32[0] + 1) + 32);
        do
        {
          v10 = *v9++;

          sub_1AAD1D39C(v10, a2);

          --v8;
        }

        while (v8);
      }

      sub_1AAF14C40(v32);
      return;
    }

    if (v7 == 10)
    {
      v11 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x90);
      v32[7] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x80);
      v32[8] = v11;
      v12 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0xB0);
      v32[9] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0xA0);
      v32[10] = v12;
      v13 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
      v32[3] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      v32[4] = v13;
      v14 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
      v32[5] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
      v32[6] = v14;
      v15 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v32[0] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v32[1] = v15;
      v32[2] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      sub_1AAD1B82C(v32, v31);
      sub_1AAD1D658(v32, a2, v16);
      sub_1AAD1C8F0(v32);
      return;
    }
  }

  if (!v7)
  {
    v17 = swift_projectBox();
    sub_1AACE3CA8(v17, v6, type metadata accessor for SgGroup);
    v18 = *(v6 + 1);
    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = (v18 + 32);
      do
      {
        v21 = *v20++;

        sub_1AAD1D39C(v21, a2);

        --v19;
      }

      while (v19);
    }

    sub_1AACE40B8(v6, type metadata accessor for SgGroup);
    return;
  }

  v22 = a1 & 0xFFFFFFFFFFFFFFFLL;
  v24 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  v23 = *(v22 + 32);
  v25 = *(v24 + 16);
  if (v25)
  {

    v26 = 32;
    do
    {
      v27 = *(v24 + v26);

      sub_1AAD1D39C(v27, a2);

      v26 += 8;
      --v25;
    }

    while (v25);

    v28 = *(v23 + 16);
    if (!v28)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  v28 = *(v23 + 16);
  if (v28)
  {
LABEL_21:
    v29 = 32;
    do
    {
      v30 = *(v23 + v29);

      sub_1AAD1D39C(v30, a2);

      v29 += 8;
      --v28;
    }

    while (v28);
  }

LABEL_23:
}

__n128 sub_1AAD1D658(uint64_t a1, char **a2, __n128 result)
{
  v3 = *(a1 + 104);
  if (v3 != 2 && (v3 & 1) == 0)
  {
    v4 = *(a1 + 112);
    v29 = *(a1 + 136);
    v30 = *(a1 + 120);
    v5 = *(a1 + 152);
    v26 = *(a1 + 8);
    v28 = *(a1 + 88);
    v24 = vmulq_f64(*(a1 + 24), v28);
    v7 = *a2;
    v8 = *(*a2 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v7;
    if (isUniquelyReferenced_nonNull_native)
    {
      v11 = a2;
    }

    else
    {
      v19 = sub_1AAD1D7AC(0, *(v7 + 2) + 1, 1, v7);
      v11 = a2;
      v7 = v19;
      *a2 = v19;
    }

    v12 = vsubq_f64(v26, v24);
    v13 = *(v7 + 2);
    v14 = *(v7 + 3);
    v15 = v13 + 1;
    if (v13 >= v14 >> 1)
    {
      v20 = v11;
      v27 = v13 + 1;
      v21 = v7;
      v22 = *(v7 + 2);
      v25 = v12;
      v23 = sub_1AAD1D7AC((v14 > 1), v13 + 1, 1, v21);
      v12 = v25;
      v13 = v22;
      v15 = v27;
      v7 = v23;
      v16 = a1;
      *v20 = v23;
    }

    else
    {
      v16 = a1;
    }

    v17 = *v16;
    *(v7 + 2) = v15;
    v18 = &v7[96 * v13];
    *(v18 + 4) = v4;
    *(v18 + 5) = v8;
    *(v18 + 6) = v17;
    *(v18 + 56) = v12;
    *(v18 + 72) = v28;
    result = v29;
    *(v18 + 88) = v30;
    *(v18 + 104) = v29;
    *(v18 + 15) = v5;
  }

  return result;
}

char *sub_1AAD1D7AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6CF88(0, &qword_1ED9B0628, sub_1AAD46094, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 96 * v8);
  }

  return v10;
}

uint64_t sub_1AAD1D900(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1AAF90464();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1AAD46094(0);
        v5 = sub_1AAF8F8A4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1AAF50718(v7, v8, a1, v4);
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
    return sub_1AAF50640(0, v2, 1, a1);
  }

  return result;
}

void *sub_1AAD1DA20(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1AAD6D1F0(0, a3, a4, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  v7 = j__malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 25;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 3);
  return result;
}

char *sub_1AAD1DAB4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD6CF88(0, &qword_1ED9B1180, type metadata accessor for CGRect, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

uint64_t *sub_1AAD1DBF0(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_15:
    a3 = 0;
LABEL_16:
    v8 = a4;
LABEL_19:
    *result = a4;
    result[1] = a5;
    result[2] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    if (a5 <= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a5;
    }

    v7 = a4 - v6;
    while (1)
    {
      if (!(a4 - a5 + v5))
      {
        v8 = a5;
        a3 = a5 - a4;
        goto LABEL_19;
      }

      if (a5 < a4)
      {
        break;
      }

      if (!(v7 + v5))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v5) = a4 + v5;
      if (a3 - 1 == v5)
      {
        v8 = a4 + v5 + 1;
        goto LABEL_19;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1AAD1DC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v244 = a3;
  v227 = type metadata accessor for SgPath(0);
  v241 = *(v227 - 8);
  MEMORY[0x1EEE9AC00](v227);
  v240 = &v220 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = type metadata accessor for SgArea(0);
  v239 = *(v226 - 8);
  MEMORY[0x1EEE9AC00](v226);
  v238 = &v220 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = type metadata accessor for SgLine(0);
  v237 = *(v225 - 8);
  MEMORY[0x1EEE9AC00](v225);
  v236 = &v220 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = type metadata accessor for SgRule(0);
  v235 = *(v224 - 8);
  MEMORY[0x1EEE9AC00](v224);
  v234 = &v220 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = type metadata accessor for SgPoint(0);
  v233 = *(v223 - 8);
  MEMORY[0x1EEE9AC00](v223);
  v232 = &v220 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = type metadata accessor for SgSector(0);
  v231 = *(v222 - 8);
  MEMORY[0x1EEE9AC00](v222);
  v13 = &v220 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = type metadata accessor for AnyVectorizedRenderer(0);
  v230 = *(v221 - 8);
  MEMORY[0x1EEE9AC00](v221);
  v15 = &v220 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = type metadata accessor for SgRectangle(0);
  v229 = *(v220 - 8);
  MEMORY[0x1EEE9AC00](v220);
  v17 = &v220 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = type metadata accessor for SgClipRect(0);
  v248 = *(v250 - 8);
  MEMORY[0x1EEE9AC00](v250);
  v247 = &v220 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD1F8C0(0, &qword_1ED9B67A0, type metadata accessor for SgClipRect, MEMORY[0x1E69E6720]);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v243 = &v220 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v228 = &v220 - v22;
  v251 = type metadata accessor for SgGroup(0);
  v23 = *(v251 - 8);
  v24 = MEMORY[0x1EEE9AC00](v251);
  v249 = (&v220 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = MEMORY[0x1EEE9AC00](v24);
  v246 = &v220 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v220 - v28;
  v30 = *(a1 + 16);
  if (v30 != *(a2 + 16))
  {
    __break(1u);
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (!v30)
  {
    return 0xE000000000000000;
  }

  v242 = a2;
  v31 = (a1 + 32);
  v245 = *(a1 + 32);
  v32 = sub_1AAD1F9C0(v245);
  v33 = 0;
  while (2)
  {
    v35 = a1 + 8 * v33++;
    v34 = *(v35 + 32);
    switch(v34 >> 60)
    {
      case 1uLL:
        LODWORD(v34) = v32;
        if (v32 != 1)
        {
          goto LABEL_34;
        }

        goto LABEL_5;
      case 2uLL:
        LODWORD(v34) = v32;
        if (v32 != 2)
        {
          goto LABEL_34;
        }

        goto LABEL_5;
      case 3uLL:
        LODWORD(v34) = v32;
        if (v32 != 3)
        {
          goto LABEL_34;
        }

        goto LABEL_5;
      case 4uLL:
        LODWORD(v34) = v32;
        if (v32 != 4)
        {
          goto LABEL_34;
        }

        goto LABEL_5;
      case 5uLL:
        LODWORD(v34) = v32;
        if (v32 != 6)
        {
          goto LABEL_34;
        }

        goto LABEL_5;
      case 6uLL:
        LODWORD(v34) = v32;
        if (v32 != 7)
        {
          goto LABEL_34;
        }

        goto LABEL_5;
      case 7uLL:
        LODWORD(v34) = v32;
        if (v32 != 8)
        {
          goto LABEL_34;
        }

        goto LABEL_5;
      case 8uLL:
        LODWORD(v34) = v32;
        if (v32 != 9)
        {
          goto LABEL_34;
        }

        goto LABEL_5;
      case 9uLL:
        LODWORD(v34) = v32;
        if (v32 != 10)
        {
          goto LABEL_34;
        }

        goto LABEL_5;
      case 0xAuLL:
        LODWORD(v34) = v32;
        if (v32 != 11)
        {
          goto LABEL_34;
        }

        goto LABEL_5;
      case 0xBuLL:
        LODWORD(v34) = v32;
        if (v32 != 12)
        {
          goto LABEL_34;
        }

        goto LABEL_5;
      case 0xCuLL:
        LODWORD(v34) = v32;
        if (v32 != 13)
        {
          goto LABEL_34;
        }

        goto LABEL_5;
      case 0xDuLL:
        LODWORD(v34) = v32;
        if (v32 != 5)
        {
          goto LABEL_34;
        }

        goto LABEL_5;
      case 0xEuLL:
        LODWORD(v34) = v32;
        if (v32 == 14)
        {
          goto LABEL_5;
        }

        goto LABEL_34;
      default:
        if (!v32)
        {
LABEL_5:
          if (v30 == v33)
          {
            v41 = 0xE000000000000000;
            switch(v34)
            {
              case 1:
                v240 = a4;
                *&v265 = MEMORY[0x1E69E7CC0];

                sub_1AAD41D04(0, v30, 0);
                v93 = v265;
                do
                {
                  v95 = *v31++;
                  v94 = v95;
                  if (v95 >> 60 != 1)
                  {
                    goto LABEL_142;
                  }

                  v96 = (v94 & 0xFFFFFFFFFFFFFFFLL);
                  v98 = v96[2];
                  v97 = v96[3];
                  v99 = v96[4];
                  v100 = v96[5];
                  *&v265 = v93;
                  v101 = *(v93 + 16);
                  v102 = *(v93 + 24);

                  if (v101 >= v102 >> 1)
                  {
                    sub_1AAD41D04((v102 > 1), v101 + 1, 1);
                    v93 = v265;
                  }

                  *(v93 + 16) = v101 + 1;
                  v103 = (v93 + 32 * v101);
                  v103[4] = v98;
                  v103[5] = v97;
                  v103[6] = v99;
                  v103[7] = v100;
                  --v30;
                }

                while (v30);
                v168 = v242;
                v169 = v244;
                v170 = sub_1AAF4644C(v93, v242, v244);
                v171 = sub_1AAF467F8(v93, v168, v169);

                v172 = swift_allocObject();
                *(v172 + 16) = 0;
                *(v172 + 24) = v170;
                *(v172 + 32) = v171;
                *(v172 + 40) = 0;
                return v172 | 0x1000000000000000;
              case 2:
                *&v253 = MEMORY[0x1E69E7CC0];

                sub_1AAD0C0D0(0, v30, 0);
                v104 = v253;
                do
                {
                  v106 = *v31++;
                  v105 = v106;
                  if (v106 >> 60 != 2)
                  {
                    goto LABEL_143;
                  }

                  sub_1AAD117A0((v105 & 0xFFFFFFFFFFFFFFFLL) + 16, &v265);
                  *&v253 = v104;
                  v108 = v104[2];
                  v107 = v104[3];
                  if (v108 >= v107 >> 1)
                  {
                    sub_1AAD0C0D0((v107 > 1), v108 + 1, 1);
                    v104 = v253;
                  }

                  v104[2] = v108 + 1;
                  v109 = &v104[8 * v108 + 4];
                  v110 = v265;
                  v111 = v266;
                  v112 = v268;
                  v109[2] = v267;
                  v109[3] = v112;
                  *v109 = v110;
                  v109[1] = v111;
                  --v30;
                }

                while (v30);
                v173 = sub_1AAF46BA0(v104, v242, v244);
                v174 = swift_allocObject();
                if (!v104[2])
                {
                  goto LABEL_136;
                }

                v175 = v174;
                v176 = v104[4];
                sub_1AAD117A0((v104 + 4), &v265);

                sub_1AAD14CD4(&v266, v175 + 32);
                sub_1AAF14C40(&v265);
                *(v175 + 16) = v176;
                *(v175 + 24) = v173;
                v41 = v175 | 0x2000000000000000;
                *(v175 + 72) = 0;
                return v41;
              case 3:
                v52 = a4;
                *&v265 = MEMORY[0x1E69E7CC0];

                sub_1AAD41BC4(0, v30, 0);
                v53 = v265;
                v55 = v232;
                v54 = v233;
                do
                {
                  v56 = *v31++;
                  if (v56 >> 60 != 3)
                  {
                    goto LABEL_140;
                  }

                  v57 = swift_projectBox();
                  sub_1AAD1C5AC(v57, v55, type metadata accessor for SgPoint);
                  *&v265 = v53;
                  v59 = *(v53 + 16);
                  v58 = *(v53 + 24);
                  if (v59 >= v58 >> 1)
                  {
                    sub_1AAD41BC4(v58 > 1, v59 + 1, 1);
                    v53 = v265;
                  }

                  *(v53 + 16) = v59 + 1;
                  sub_1AAD1FA8C(v55, v53 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v59, type metadata accessor for SgPoint);
                  --v30;
                }

                while (v30);
                v158 = swift_allocBox();
                sub_1AAF48770(v53, v242, v244, v52, v159);

                return v158 | 0x3000000000000000;
              case 4:
                v127 = a4;
                *&v265 = MEMORY[0x1E69E7CC0];

                sub_1AAD41CB4(0, v30, 0);
                v128 = v265;
                v129 = v229;
                do
                {
                  v130 = *v31++;
                  if (v130 >> 60 != 4)
                  {
                    goto LABEL_146;
                  }

                  v131 = swift_projectBox();
                  sub_1AAD1C5AC(v131, v17, type metadata accessor for SgRectangle);
                  *&v265 = v128;
                  v133 = *(v128 + 16);
                  v132 = *(v128 + 24);
                  if (v133 >= v132 >> 1)
                  {
                    sub_1AAD41CB4(v132 > 1, v133 + 1, 1);
                    v128 = v265;
                  }

                  *(v128 + 16) = v133 + 1;
                  sub_1AAD1FA8C(v17, v128 + ((*(v129 + 80) + 32) & ~*(v129 + 80)) + *(v129 + 72) * v133, type metadata accessor for SgRectangle);
                  --v30;
                }

                while (v30);
                v197 = swift_allocBox();
                sub_1AAF46F94(v128, v242, v244, v127, v198);

                return v197 | 0x4000000000000000;
              case 5:
                *&v265 = MEMORY[0x1E69E7CC0];

                sub_1AAD41C64(0, v30, 0);
                v134 = v265;
                v135 = v230;
                do
                {
                  v136 = *v31++;
                  if (v136 >> 60 != 13)
                  {
                    goto LABEL_147;
                  }

                  v137 = swift_projectBox();
                  sub_1AAD1C5AC(v137, v15, type metadata accessor for AnyVectorizedRenderer);
                  *&v265 = v134;
                  v139 = *(v134 + 16);
                  v138 = *(v134 + 24);
                  if (v139 >= v138 >> 1)
                  {
                    sub_1AAD41C64(v138 > 1, v139 + 1, 1);
                    v134 = v265;
                  }

                  *(v134 + 16) = v139 + 1;
                  sub_1AAD1FA8C(v15, v134 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v139, type metadata accessor for AnyVectorizedRenderer);
                  --v30;
                }

                while (v30);
                v199 = swift_allocBox();
                sub_1AAF478B0(v134, v242, v200);

                return v199 | 0xD000000000000000;
              case 6:
                v113 = a4;
                *&v265 = MEMORY[0x1E69E7CC0];

                sub_1AAD41C14(0, v30, 0);
                v114 = v265;
                v115 = v231;
                do
                {
                  v116 = *v31++;
                  if (v116 >> 60 != 5)
                  {
                    goto LABEL_144;
                  }

                  v117 = swift_projectBox();
                  sub_1AAD1C5AC(v117, v13, type metadata accessor for SgSector);
                  *&v265 = v114;
                  v119 = *(v114 + 16);
                  v118 = *(v114 + 24);
                  if (v119 >= v118 >> 1)
                  {
                    sub_1AAD41C14(v118 > 1, v119 + 1, 1);
                    v114 = v265;
                  }

                  *(v114 + 16) = v119 + 1;
                  sub_1AAD1FA8C(v13, v114 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v119, type metadata accessor for SgSector);
                  --v30;
                }

                while (v30);
                v177 = swift_allocBox();
                sub_1AAF47B8C(v114, v242, v244, v113, v178);

                return v177 | 0x5000000000000000;
              case 7:
                v148 = a4;
                *&v265 = MEMORY[0x1E69E7CC0];

                sub_1AAD21840(0, v30, 0);
                v149 = v265;
                v151 = v234;
                v150 = v235;
                do
                {
                  v152 = *v31++;
                  if (v152 >> 60 != 6)
                  {
                    goto LABEL_149;
                  }

                  v153 = swift_projectBox();
                  sub_1AAD1C5AC(v153, v151, type metadata accessor for SgRule);
                  *&v265 = v149;
                  v155 = *(v149 + 16);
                  v154 = *(v149 + 24);
                  if (v155 >= v154 >> 1)
                  {
                    sub_1AAD21840(v154 > 1, v155 + 1, 1);
                    v149 = v265;
                  }

                  *(v149 + 16) = v155 + 1;
                  sub_1AAD1FA8C(v151, v149 + ((*(v150 + 80) + 32) & ~*(v150 + 80)) + *(v150 + 72) * v155, type metadata accessor for SgRule);
                  --v30;
                }

                while (v30);
                v203 = swift_allocBox();
                sub_1AAD21890(v149, v242, v244, v148, v204);

                return v203 | 0x6000000000000000;
              case 8:
                v85 = a4;
                *&v265 = MEMORY[0x1E69E7CC0];

                sub_1AAD41B74(0, v30, 0);
                v86 = v265;
                v88 = v236;
                v87 = v237;
                do
                {
                  v89 = *v31++;
                  if (v89 >> 60 != 7)
                  {
                    goto LABEL_141;
                  }

                  v90 = swift_projectBox();
                  sub_1AAD1C5AC(v90, v88, type metadata accessor for SgLine);
                  *&v265 = v86;
                  v92 = *(v86 + 16);
                  v91 = *(v86 + 24);
                  if (v92 >= v91 >> 1)
                  {
                    sub_1AAD41B74(v91 > 1, v92 + 1, 1);
                    v86 = v265;
                  }

                  *(v86 + 16) = v92 + 1;
                  sub_1AAD1FA8C(v88, v86 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v92, type metadata accessor for SgLine);
                  --v30;
                }

                while (v30);
                v166 = swift_allocBox();
                sub_1AAF48D38(v86, v242, v244, v85, v167);

                return v166 | 0x7000000000000000;
              case 9:
                v140 = a4;
                *&v265 = MEMORY[0x1E69E7CC0];

                sub_1AAD41B24(0, v30, 0);
                v141 = v265;
                v143 = v238;
                v142 = v239;
                do
                {
                  v144 = *v31++;
                  if (v144 >> 60 != 8)
                  {
                    goto LABEL_148;
                  }

                  v145 = swift_projectBox();
                  sub_1AAD1C5AC(v145, v143, type metadata accessor for SgArea);
                  *&v265 = v141;
                  v147 = *(v141 + 16);
                  v146 = *(v141 + 24);
                  if (v147 >= v146 >> 1)
                  {
                    sub_1AAD41B24(v146 > 1, v147 + 1, 1);
                    v141 = v265;
                  }

                  *(v141 + 16) = v147 + 1;
                  sub_1AAD1FA8C(v143, v141 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v147, type metadata accessor for SgArea);
                  --v30;
                }

                while (v30);
                v201 = swift_allocBox();
                sub_1AAF4A5A4(v141, v242, v244, v140, v202);

                return v201 | 0x8000000000000000;
              case 10:
                v44 = a4;
                *&v265 = MEMORY[0x1E69E7CC0];

                sub_1AAD41AD4(0, v30, 0);
                v45 = v265;
                v47 = v240;
                v46 = v241;
                do
                {
                  v48 = *v31++;
                  if (v48 >> 60 != 9)
                  {
                    goto LABEL_139;
                  }

                  v49 = swift_projectBox();
                  sub_1AAD1C5AC(v49, v47, type metadata accessor for SgPath);
                  *&v265 = v45;
                  v51 = *(v45 + 16);
                  v50 = *(v45 + 24);
                  if (v51 >= v50 >> 1)
                  {
                    sub_1AAD41AD4(v50 > 1, v51 + 1, 1);
                    v45 = v265;
                  }

                  *(v45 + 16) = v51 + 1;
                  sub_1AAD1FA8C(v47, v45 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v51, type metadata accessor for SgPath);
                  --v30;
                }

                while (v30);
                v156 = swift_allocBox();
                sub_1AAF4B194(v45, v242, v244, v44, v157);

                return v156 | 0x9000000000000000;
              case 11:
                v60 = a4;
                v264 = MEMORY[0x1E69E7CC0];

                sub_1AAD2537C(0, v30, 0);
                v61 = *v31;
                v62 = *v31 >> 60;
                v63 = v242;
                if (v62 != 10)
                {
                  goto LABEL_150;
                }

                v64 = v264;
                v65 = (a1 + 40);
                v66 = v30 - 1;
                while (1)
                {
                  v67 = (v61 & 0xFFFFFFFFFFFFFFFLL);
                  v68 = v67[9];
                  v260 = v67[8];
                  v261 = v68;
                  v69 = v67[11];
                  v262 = v67[10];
                  v263 = v69;
                  v70 = v67[5];
                  v256 = v67[4];
                  v257 = v70;
                  v71 = v67[7];
                  v258 = v67[6];
                  v259 = v71;
                  v72 = v67[2];
                  v253 = v67[1];
                  v254 = v72;
                  v255 = v67[3];
                  sub_1AAD1B82C(&v253, &v265);
                  v264 = v64;
                  v74 = *(v64 + 16);
                  v73 = *(v64 + 24);
                  if (v74 >= v73 >> 1)
                  {
                    sub_1AAD2537C((v73 > 1), v74 + 1, 1);
                    v64 = v264;
                  }

                  *(v64 + 16) = v74 + 1;
                  v75 = (v64 + 176 * v74);
                  v76 = v253;
                  v77 = v255;
                  v75[3] = v254;
                  v75[4] = v77;
                  v75[2] = v76;
                  v78 = v256;
                  v79 = v257;
                  v80 = v259;
                  v75[7] = v258;
                  v75[8] = v80;
                  v75[5] = v78;
                  v75[6] = v79;
                  v81 = v260;
                  v82 = v261;
                  v83 = v263;
                  v75[11] = v262;
                  v75[12] = v83;
                  v75[9] = v81;
                  v75[10] = v82;
                  if (!v66)
                  {
                    break;
                  }

                  v84 = *v65++;
                  v61 = v84;
                  --v66;
                  if (v84 >> 60 != 10)
                  {
                    goto LABEL_150;
                  }
                }

                v160 = swift_allocObject();
                sub_1AAD254DC(v64, v63, v244, v60, &v265);
                sub_1AAD1B82C(&v265, &v252);

                v161 = v274;
                *(v160 + 144) = v273;
                *(v160 + 160) = v161;
                *(v160 + 176) = v275;
                v162 = v270;
                *(v160 + 80) = v269;
                *(v160 + 96) = v162;
                v163 = v272;
                *(v160 + 112) = v271;
                *(v160 + 128) = v163;
                v164 = v266;
                *(v160 + 16) = v265;
                *(v160 + 32) = v164;
                v165 = v268;
                v41 = v160 | 0xA000000000000000;
                *(v160 + 48) = v267;
                *(v160 + 64) = v165;
                return v41;
              case 12:
              case 13:
                v43 = v31[v30 - 1];

                return v43;
              case 14:
                return v41;
              default:
                v240 = a4;
                v241 = v23;
                *&v265 = MEMORY[0x1E69E7CC0];

                sub_1AAD1FA1C(0, v30, 0);
                v120 = v265;
                break;
            }

            do
            {
              v121 = *v31++;
              if (v121 >> 60)
              {
                goto LABEL_145;
              }

              v122 = swift_projectBox();
              sub_1AAD1C5AC(v122, v29, type metadata accessor for SgGroup);
              *&v265 = v120;
              v124 = *(v120 + 16);
              v123 = *(v120 + 24);
              if (v124 >= v123 >> 1)
              {
                sub_1AAD1FA1C(v123 > 1, v124 + 1, 1);
                v120 = v265;
              }

              *(v120 + 16) = v124 + 1;
              v125 = (*(v241 + 80) + 32) & ~*(v241 + 80);
              v126 = *(v241 + 72);
              sub_1AAD1FA8C(v29, v120 + v125 + v126 * v124, type metadata accessor for SgGroup);
              --v30;
            }

            while (v30);
            *&v265 = MEMORY[0x1E69E7CC0];
            v179 = v120 + v125;
            v239 = v124 + 1;
            sub_1AAD1FAF4(0, v124 + 1, 0);
            v180 = v265;
            v181 = v124 + 1;
            v237 = v120 + v125;
            v182 = v242;
            do
            {
              v183 = v249;
              sub_1AAD1C5AC(v179, v249, type metadata accessor for SgGroup);
              v184 = *(v183 + *(v251 + 28));
              sub_1AAF502C0(v183, type metadata accessor for SgGroup);
              *&v265 = v180;
              v186 = *(v180 + 16);
              v185 = *(v180 + 24);
              if (v186 >= v185 >> 1)
              {
                sub_1AAD1FAF4((v185 > 1), v186 + 1, 1);
                v180 = v265;
              }

              *(v180 + 16) = v186 + 1;
              *(v180 + 8 * v186 + 32) = v184;
              v179 += v126;
              --v181;
            }

            while (v181);
            sub_1AAD1FF48(v180, v182);
            v188 = v187;

            v189 = *(v120 + 16);
            v238 = v189;
            if (v189)
            {
              v241 = *(v251 + 24);
              v190 = (v248 + 48);
              v191 = v120 + v125;
              v192 = MEMORY[0x1E69E7CC0];
              v193 = v243;
              do
              {
                v194 = v246;
                sub_1AAD1C5AC(v191, v246, type metadata accessor for SgGroup);
                sub_1AAF4FE94(v194 + v241, v193, &qword_1ED9B67A0, type metadata accessor for SgClipRect);
                sub_1AAF502C0(v194, type metadata accessor for SgGroup);
                if ((*v190)(v193, 1, v250) == 1)
                {
                  sub_1AAD200D0(v193, &qword_1ED9B67A0, type metadata accessor for SgClipRect);
                }

                else
                {
                  sub_1AAD1FA8C(v193, v247, type metadata accessor for SgClipRect);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v192 = sub_1AAD6BF74(0, v192[2] + 1, 1, v192);
                  }

                  v196 = v192[2];
                  v195 = v192[3];
                  if (v196 >= v195 >> 1)
                  {
                    v192 = sub_1AAD6BF74(v195 > 1, v196 + 1, 1, v192);
                  }

                  v192[2] = v196 + 1;
                  sub_1AAD1FA8C(v247, v192 + ((*(v248 + 80) + 32) & ~*(v248 + 80)) + *(v248 + 72) * v196, type metadata accessor for SgClipRect);
                  v193 = v243;
                }

                v191 += v126;
                --v189;
              }

              while (v189);
            }

            else
            {
              v192 = MEMORY[0x1E69E7CC0];
            }

            if (v192[2] == v239)
            {
              v205 = v228;
              v206 = v242;
              v207 = v244;
              v208 = v240;
              sub_1AAF45D64(v192, v242, v244, v240, v228);
              v209 = 0;
            }

            else
            {
              v209 = 1;
              v208 = v240;
              v206 = v242;
              v207 = v244;
              v205 = v228;
            }

            (*(v248 + 56))(v205, v209, 1, v250);
            v210 = sub_1AAD20140(v120, v206, v207, v208);
            if (v238)
            {
              if (*(v120 + 16))
              {
                v211 = v210;
                v212 = v249;
                sub_1AAD1C5AC(v237, v249, type metadata accessor for SgGroup);

                v213 = v251;
                v214 = swift_allocBox();
                v216 = v215;
                v217 = *v212;
                v218 = *(v212 + v213[9]);
                v219 = *(v212 + v213[10]);

                sub_1AAF502C0(v212, type metadata accessor for SgGroup);
                *v216 = v217;
                v216[1] = v211;
                sub_1AAF4FF14(v205, v216 + v213[6], &qword_1ED9B67A0, type metadata accessor for SgClipRect);
                v41 = v214;
                *(v216 + v213[7]) = v188;
                *(v216 + v213[8]) = 0;
                *(v216 + v213[9]) = v218;
                *(v216 + v213[10]) = v219;
                return v41;
              }

LABEL_138:
              __break(1u);
LABEL_139:
              __break(1u);
LABEL_140:
              __break(1u);
LABEL_141:
              __break(1u);
LABEL_142:
              __break(1u);
LABEL_143:
              __break(1u);
LABEL_144:
              __break(1u);
LABEL_145:
              __break(1u);
LABEL_146:
              __break(1u);
LABEL_147:
              __break(1u);
LABEL_148:
              __break(1u);
LABEL_149:
              __break(1u);
LABEL_150:
              __break(1u);
              JUMPOUT(0x1AAD1F770);
            }

LABEL_137:
            __break(1u);
            goto LABEL_138;
          }

          continue;
        }

LABEL_34:
        v36 = v251;
        v37 = swift_allocBox();
        v39 = v38;

        v40 = sub_1AAF44A24(a1, v242);
        (*(v248 + 56))(&v39[v36[6]], 1, 1, v250);

        v41 = v37;
        *v39 = 0;
        *(v39 + 1) = v40;
        *&v39[v36[7]] = 0x3FF0000000000000;
        *&v39[v36[8]] = 0;
        *&v39[v36[9]] = MEMORY[0x1E69E7CC0];
        v39[v36[10]] = 0;
        return v41;
    }
  }
}

uint64_t sub_1AAD1F7E8()
{
  sub_1AACE56EC(v0[7], v0[8], v0[9]);

  return MEMORY[0x1EEE6BDD0](v0, 192, 7);
}

uint64_t sub_1AAD1F828()
{

  if (*(v0 + 56))
  {
    sub_1AACB634C(v0 + 32);
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AAD1F870()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_1AAD1F8C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1AAD1F924()
{
  type metadata accessor for CGRect(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      sub_1AAF8DF14();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

size_t sub_1AAD1FA1C(size_t a1, int64_t a2, char a3)
{
  result = sub_1AAD45470(a1, a2, a3, *v3, &qword_1ED9B0648, type metadata accessor for SgGroup, type metadata accessor for SgGroup);
  *v3 = result;
  return result;
}

uint64_t sub_1AAD1FA8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

char *sub_1AAD1FAF4(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD1FBC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1AAD1FB14()
{
  result = qword_1ED9B4540;
  if (!qword_1ED9B4540)
  {
    sub_1AAD0C190();
    sub_1AAD0ACD8(&qword_1ED9B5588, sub_1AAD110E8);
    sub_1AAD20060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B4540);
  }

  return result;
}

char *sub_1AAD1FBC4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD469FC(0, &qword_1ED9B2900, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);
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

uint64_t sub_1AAD1FCE0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v27 = MEMORY[0x1E69E7CC0];
  sub_1AAD1FAF4(0, v6, 0);
  result = v27;
  v26 = v4;
  v24 = a1;
  v25 = a2;
  if (v6)
  {
    v8 = (a1 + 32);
    v9 = (a2 + 32);
    v10 = v6;
    v11 = v5;
    v12 = v5;
    while (v4)
    {
      if (!v11)
      {
        goto LABEL_23;
      }

      v13 = *v8;
      v14 = *v9;
      v28 = result;
      v16 = *(result + 16);
      v15 = *(result + 24);
      if (v16 >= v15 >> 1)
      {
        v23 = v12;
        sub_1AAD1FAF4((v15 > 1), v16 + 1, 1);
        v12 = v23;
        result = v28;
      }

      --v11;
      *(result + 16) = v16 + 1;
      *(result + 8 * v16 + 32) = v13 * v14;
      --v4;
      ++v9;
      ++v8;
      if (!--v10)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v12 = v5;
LABEL_13:
  if (v26 > v12)
  {
    while (v6 < v26)
    {
      v17 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_25;
      }

      if (v12 != v6)
      {
        if (v6 >= v12)
        {
          goto LABEL_26;
        }

        v18 = *(v24 + 32 + 8 * v6);
        v19 = *(v25 + 32 + 8 * v6);
        v29 = result;
        v21 = *(result + 16);
        v20 = *(result + 24);
        if (v21 >= v20 >> 1)
        {
          v22 = v12;
          sub_1AAD1FAF4((v20 > 1), v21 + 1, 1);
          v12 = v22;
          result = v29;
        }

        *(result + 16) = v21 + 1;
        *(result + 8 * v21 + 32) = v18 * v19;
        ++v6;
        if (v17 != v26)
        {
          continue;
        }
      }

      return result;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

void sub_1AAD1FEBC()
{
  if (!qword_1ED9B2B10)
  {
    sub_1AAD1169C();
    sub_1AAD116F4();
    v0 = sub_1AAF8EFE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2B10);
    }
  }
}

uint64_t sub_1AAD1FF48(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AAD1FCE0(a1, a2);
  v3 = *(v2 + 16);
  v4 = 0.0;
  if (v3)
  {
    if (v3 <= 3)
    {
      v5 = 0;
LABEL_7:
      v8 = v3 - v5;
      v9 = (v2 + 8 * v5 + 32);
      do
      {
        v10 = *v9++;
        v4 = v4 + v10;
        --v8;
      }

      while (v8);
    }

    v5 = v3 & 0x7FFFFFFFFFFFFFFCLL;
    v6 = (v2 + 48);
    v7 = v3 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v4 = v4 + *(v6 - 2) + *(v6 - 1) + *v6 + v6[1];
      v6 += 4;
      v7 -= 4;
    }

    while (v7);
    if (v3 != v5)
    {
      goto LABEL_7;
    }
  }
}

unint64_t sub_1AAD2000C()
{
  result = qword_1ED9B4498;
  if (!qword_1ED9B4498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B4498);
  }

  return result;
}

unint64_t sub_1AAD20060()
{
  result = qword_1ED9B44B8;
  if (!qword_1ED9B44B8)
  {
    sub_1AAD1FEBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B44B8);
  }

  return result;
}

uint64_t sub_1AAD200D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1AAD1F8C0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AAD20140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v5 = type metadata accessor for SgGroup(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAF4FD58(0, &qword_1ED9B0698, &qword_1ED9B06A0, type metadata accessor for SgGroup, sub_1AAD20998);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v57 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v56 = (&v51 - v11);
  v12 = MEMORY[0x1E69E7CC0];
  v13 = sub_1AAD20690(MEMORY[0x1E69E7CC0]);
  v64 = 0;
  v65 = v13;
  v62 = a1;
  v63 = 0;

  v14 = 0;
  for (i = v7; ; sub_1AAF502C0(i, type metadata accessor for SgGroup))
  {
    v15 = v57;
    sub_1AAD2078C(v57);
    v16 = v56;
    sub_1AAF501F8(v15, v56, &qword_1ED9B0698, &qword_1ED9B06A0, type metadata accessor for SgGroup);
    sub_1AAD20998(0, &qword_1ED9B06A0, type metadata accessor for SgGroup);
    v18 = v17;
    if ((*(*(v17 - 8) + 48))(v16, 1, v17) == 1)
    {

      v47 = v52;

      v48 = v53;

      v49 = sub_1AAD21128(v12, &v65, v47, v48);

      sub_1AACB4A98(v14);
      return v49;
    }

    v60 = *v16;
    sub_1AAD1FA8C(v16 + *(v18 + 48), v7, type metadata accessor for SgGroup);
    v19 = *(v7 + 1);
    v20 = *(v19 + 16);

    v59 = v20;
    if (v20)
    {
      break;
    }

LABEL_2:

    v7 = i;
  }

  v21 = 0;
  v58 = v19 + 32;
  while (v21 < *(v19 + 16))
  {
    v22 = *(v58 + 8 * v21);

    v23 = sub_1AACAB6D8(v22);
    v24 = v21 + 0x8000000000000000;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = v24;
    }

    if (!v13[2] || (sub_1AACC9B78(v25), (v26 & 1) == 0))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1AAD20B88(0, *(v12 + 2) + 1, 1, v12);
      }

      v28 = *(v12 + 2);
      v27 = *(v12 + 3);
      if (v28 >= v27 >> 1)
      {
        v12 = sub_1AAD20B88((v27 > 1), v28 + 1, 1, v12);
      }

      *(v12 + 2) = v28 + 1;
      *&v12[8 * v28 + 32] = v25;
    }

    sub_1AACB4A98(v14);
    v13 = v65;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = v13;
    v31 = sub_1AACC9B78(v25);
    v32 = v13[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      goto LABEL_36;
    }

    v35 = v30;
    if (v13[3] >= v34)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v65 = v13;
        if (v30)
        {
          goto LABEL_26;
        }
      }

      else
      {
        sub_1AAD99628();
        v13 = v61;
        v65 = v61;
        if (v35)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      sub_1AAD20B9C(v34, isUniquelyReferenced_nonNull_native);
      v13 = v61;
      v36 = sub_1AACC9B78(v25);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_38;
      }

      v31 = v36;
      v65 = v13;
      if (v35)
      {
        goto LABEL_26;
      }
    }

    v13[(v31 >> 6) + 8] |= 1 << v31;
    *(v13[6] + 8 * v31) = v25;
    *(v13[7] + 8 * v31) = MEMORY[0x1E69E7CC0];
    v38 = v13[2];
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (v39)
    {
      goto LABEL_37;
    }

    v13[2] = v40;
LABEL_26:
    v41 = v13[7];
    v42 = *(v41 + 8 * v31);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    *(v41 + 8 * v31) = v42;
    if ((v43 & 1) == 0)
    {
      v42 = sub_1AAD20E80(0, v42[2] + 1, 1, v42);
      *(v41 + 8 * v31) = v42;
    }

    v45 = v42[2];
    v44 = v42[3];
    if (v45 >= v44 >> 1)
    {
      v42 = sub_1AAD20E80((v44 > 1), v45 + 1, 1, v42);
      *(v41 + 8 * v31) = v42;
    }

    v42[2] = v45 + 1;
    v46 = &v42[2 * v45];
    v46[4] = v60;
    v46[5] = v22;
    v21 = v24 - 0x7FFFFFFFFFFFFFFFLL;
    v14 = sub_1AACAEEC4;
    if (v21 == v59)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_1AAF905B4();
  __break(1u);
  return result;
}

void *sub_1AAD20690(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1AAD20E00();
  v3 = sub_1AAF903A4();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1AACC9B78(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_1AACC9B78(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAD2078C@<X0>(uint64_t a1@<X8>)
{
  sub_1AAD20998(0, &qword_1ED9B06A0, type metadata accessor for SgGroup);
  v4 = v3;
  result = MEMORY[0x1EEE9AC00](v3);
  v8 = (&v17 - v7);
  v10 = *v1;
  v9 = v1[1];
  v11 = *(*v1 + 16);
  if (v9 == v11)
  {
    v12 = *(v6 + 56);

    return v12(a1, 1, 1, v4);
  }

  else
  {
    if (v9 >= v11)
    {
      __break(1u);
    }

    else
    {
      v18 = v6;
      v13 = *(type metadata accessor for SgGroup(0) - 8);
      v14 = v10 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v9;
      v1[1] = v9 + 1;
      v15 = *(v4 + 48);
      v16 = v1[2];
      *v8 = v16;
      result = sub_1AAD1C5AC(v14, v8 + v15, type metadata accessor for SgGroup);
      if (!__OFADD__(v16, 1))
      {
        v1[2] = v16 + 1;
        sub_1AAF4FE28(v8, a1, &qword_1ED9B06A0, type metadata accessor for SgGroup);
        return (*(v18 + 56))(a1, 0, 1, v4);
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1AAD20998(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1AAD20A00()
{
  sub_1AACCCCDC(0);
  v1 = v0;
  sub_1AAD1C614(v0, qword_1ED9C3938);
  v2 = sub_1AAD0F5D8(v1, qword_1ED9C3938);
  v3 = type metadata accessor for ChartModel.Scenegraph();
  v4 = *(*(v3 - 8) + 56);

  return v4(v2, 1, 1, v3);
}

uint64_t sub_1AAD20AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1AAD0DA28(0, &qword_1ED9B67A0, type metadata accessor for SgClipRect, MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1AAD20B9C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AAD20E00();
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
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
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

    if ((a2 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
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

void sub_1AAD20E00()
{
  if (!qword_1ED9B0680)
  {
    sub_1AAD216A8(255, &qword_1ED9B06B8, &qword_1ED9B06A8);
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B0680);
    }
  }
}

void sub_1AAD20EA8()
{
  if (!qword_1ED9B0620)
  {
    sub_1AAD0D184(255, &qword_1ED9B06A8);
    v0 = sub_1AAF90484();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B0620);
    }
  }
}

uint64_t sub_1AAD20F34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1AAD0DA28(0, &qword_1ED9B67A0, type metadata accessor for SgClipRect, MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1AAD21008(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v19 = MEMORY[0x1E69E7CC0];
  sub_1AAD0F6F0(0, v5, 0);
  v6 = v19;
  v11 = (a1 + 32);
  while (1)
  {
    v12 = *v11++;
    v17 = v12;
    sub_1AAD21190(&v17, a2, a3, a4, &v18);
    if (v4)
    {
      break;
    }

    v13 = v18;
    v19 = v6;
    v15 = *(v6 + 16);
    v14 = *(v6 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1AAD0F6F0((v14 > 1), v15 + 1, 1);
      v6 = v19;
    }

    *(v6 + 16) = v15 + 1;
    *(v6 + 8 * v15 + 32) = v13;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAD21128(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1AAD21008(a1, a2, a3, a4);
  if (v4)
  {

    __break(1u);
  }

  else
  {
    v6 = v5;

    return v6;
  }

  return result;
}

uint64_t sub_1AAD21190@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = *a2;
  if (!*(*a2 + 16))
  {
    __break(1u);
    goto LABEL_19;
  }

  result = sub_1AACC9B78(*result);
  if ((v9 & 1) == 0)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v32 = a5;
  v10 = *(*(v6 + 56) + 8 * result);
  v11 = *(v10 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v33 = MEMORY[0x1E69E7CC0];

    sub_1AAD214F4(0, v11, 0);
    v13 = v33;
    v14 = (v10 + 32);
    v15 = *(v33 + 16);
    v16 = v11;
    do
    {
      v18 = *v14;
      v14 += 2;
      v17 = v18;
      v19 = *(v33 + 24);
      if (v15 >= v19 >> 1)
      {
        sub_1AAD214F4((v19 > 1), v15 + 1, 1);
      }

      *(v33 + 16) = v15 + 1;
      *(v33 + 8 * v15++ + 32) = v17;
      --v16;
    }

    while (v16);
    v12 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
  }

  v20 = sub_1AAD21514(v13, a3, a4);
  v22 = v21;
  v24 = v23;

  if (v11)
  {
    v31 = v24;
    sub_1AAD0F6F0(0, v11, 0);
    v25 = v12;
    v26 = *(v12 + 16);
    v27 = 40;
    do
    {
      v28 = *(v10 + v27);
      v29 = *(v25 + 24);

      if (v26 >= v29 >> 1)
      {
        sub_1AAD0F6F0((v29 > 1), v26 + 1, 1);
      }

      *(v25 + 16) = v26 + 1;
      *(v25 + 8 * v26 + 32) = v28;
      v27 += 16;
      ++v26;
      --v11;
    }

    while (v11);

    v24 = v31;
  }

  else
  {

    v25 = MEMORY[0x1E69E7CC0];
  }

  v30 = sub_1AAD1DC8C(v25, v20, v22, v24);

  *v32 = v30;
  return result;
}

char *sub_1AAD213D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD469FC(0, &qword_1ED9B28B0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6F90]);
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

char *sub_1AAD214F4(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD213D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD21514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v23 = MEMORY[0x1E69E7CC0];
    result = sub_1AACEF664(0, v3, 0);
    v8 = 0;
    v9 = v23;
    v10 = (a1 + 32);
    v11 = *(a2 + 16);
    do
    {
      v12 = v10[v8];
      if (v12 >= v11)
      {
        __break(1u);
        goto LABEL_16;
      }

      v13 = *(a2 + 32 + 8 * v12);
      v15 = *(v23 + 16);
      v14 = *(v23 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_1AACEF664((v14 > 1), v15 + 1, 1);
      }

      ++v8;
      *(v23 + 16) = v15 + 1;
      *(v23 + 8 * v15 + 32) = v13;
    }

    while (v3 != v8);
    result = sub_1AAD214F4(0, v3, 0);
    v16 = *(a3 + 16);
    while (1)
    {
      v18 = *v10++;
      v17 = v18;
      if (v18 >= v16)
      {
        break;
      }

      v19 = *(a3 + 32 + 8 * v17);
      v21 = *(v4 + 16);
      v20 = *(v4 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_1AAD214F4((v20 > 1), v21 + 1, 1);
      }

      *(v4 + 16) = v21 + 1;
      *(v4 + 8 * v21 + 32) = v19;
      if (!--v3)
      {
        return v9;
      }
    }

LABEL_16:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void sub_1AAD216A8(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1AAD9C0CC(255, a3);
    v4 = sub_1AAF8F914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1AAD21700()
{
  sub_1AAD0DA28(319, &qword_1ED9B2A80, type metadata accessor for AnyVectorizedRenderer, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1AACC7228(319, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for AnyVectorizedRenderer(319);
      if (v2 <= 0x3F)
      {
        sub_1AACC7228(319, &qword_1ED9B37E8, &type metadata for _ChartContentRenderInputs, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

size_t sub_1AAD21840(size_t a1, int64_t a2, char a3)
{
  result = sub_1AAD45470(a1, a2, a3, *v3, &qword_1ED9AEE80, type metadata accessor for SgRule, type metadata accessor for SgRule);
  *v3 = result;
  return result;
}

uint64_t sub_1AAD21890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v69 = a3;
  v70 = a4;
  v65 = a2;
  v66 = a5;
  v6 = type metadata accessor for SgShapeStyle();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v63 - v11;
  v71 = type metadata accessor for SgRule(0);
  v12 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v14 = (&v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(a1 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  v67 = v12;
  v68 = a1;
  if (v15)
  {
    v72 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v15, 0);
    v16 = v72;
    v17 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v18 = *(v12 + 72);
    v19 = v15;
    do
    {
      sub_1AAD1C5AC(v17, v14, type metadata accessor for SgRule);
      v20 = v14[1];
      sub_1AAF502C0(v14, type metadata accessor for SgRule);
      v72 = v16;
      v22 = *(v16 + 16);
      v21 = *(v16 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1AAD1FAF4((v21 > 1), v22 + 1, 1);
        v16 = v72;
      }

      *(v16 + 16) = v22 + 1;
      *(v16 + 8 * v22 + 32) = v20;
      v17 += v18;
      --v19;
    }

    while (v19);
    v12 = v67;
    a1 = v68;
  }

  sub_1AAD21FF8(v16, v69, v70, sub_1AAD22150);
  v24 = v23;

  v25 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v72 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v15, 0);
    v25 = v72;
    v26 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v27 = *(v12 + 72);
    v28 = v15;
    do
    {
      sub_1AAD1C5AC(v26, v14, type metadata accessor for SgRule);
      v29 = v14[3];
      sub_1AAF502C0(v14, type metadata accessor for SgRule);
      v72 = v25;
      v31 = *(v25 + 16);
      v30 = *(v25 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1AAD1FAF4((v30 > 1), v31 + 1, 1);
        v25 = v72;
      }

      *(v25 + 16) = v31 + 1;
      *(v25 + 8 * v31 + 32) = v29;
      v26 += v27;
      --v28;
    }

    while (v28);
    v12 = v67;
    a1 = v68;
  }

  sub_1AAD21FF8(v25, v69, v70, sub_1AAD22150);
  v33 = v32;

  v34 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v72 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v15, 0);
    v34 = v72;
    v35 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v36 = *(v12 + 72);
    v37 = v15;
    do
    {
      sub_1AAD1C5AC(v35, v14, type metadata accessor for SgRule);
      v38 = v14[2];
      sub_1AAF502C0(v14, type metadata accessor for SgRule);
      v72 = v34;
      v40 = *(v34 + 16);
      v39 = *(v34 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_1AAD1FAF4((v39 > 1), v40 + 1, 1);
        v34 = v72;
      }

      *(v34 + 16) = v40 + 1;
      *(v34 + 8 * v40 + 32) = v38;
      v35 += v36;
      --v37;
    }

    while (v37);
    v12 = v67;
    a1 = v68;
  }

  sub_1AAD21FF8(v34, v69, v70, sub_1AAD22AF0);
  v42 = v41;

  v43 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v72 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v15, 0);
    v44 = v72;
    v45 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v46 = *(v12 + 72);
    v47 = v15;
    do
    {
      sub_1AAD1C5AC(v45, v14, type metadata accessor for SgRule);
      v48 = v14[4];
      sub_1AAF502C0(v14, type metadata accessor for SgRule);
      v72 = v44;
      v50 = *(v44 + 16);
      v49 = *(v44 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_1AAD1FAF4((v49 > 1), v50 + 1, 1);
        v44 = v72;
      }

      *(v44 + 16) = v50 + 1;
      *(v44 + 8 * v50 + 32) = v48;
      v45 += v46;
      --v47;
    }

    while (v47);
    v12 = v67;
    a1 = v68;
    v43 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v44 = MEMORY[0x1E69E7CC0];
  }

  sub_1AAD21FF8(v44, v69, v70, sub_1AAD22AF0);
  v52 = v51;

  if (v15)
  {
    v54 = (a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80)));
    v55 = *v54;
    v72 = v43;
    sub_1AAD23694(0, v15, 0);
    v56 = v72;
    v57 = *(v12 + 72);
    do
    {
      sub_1AAD1C5AC(v54, v14, type metadata accessor for SgRule);
      sub_1AAD1C5AC(v14 + *(v71 + 36), v10, type metadata accessor for SgShapeStyle);
      sub_1AAF502C0(v14, type metadata accessor for SgRule);
      v72 = v56;
      v59 = *(v56 + 16);
      v58 = *(v56 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_1AAD23694(v58 > 1, v59 + 1, 1);
        v56 = v72;
      }

      *(v56 + 16) = v59 + 1;
      sub_1AAD1FA8C(v10, v56 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v59, type metadata accessor for SgShapeStyle);
      v54 = (v54 + v57);
      --v15;
    }

    while (v15);
    v60 = v64;
    sub_1AAD236E4(v56, v65, v69, v70, v64);

    v61 = v66;
    *v66 = v55;
    v61[1] = v24;
    v61[2] = v42;
    v61[3] = v33;
    v61[4] = v52;
    v62 = v71;
    result = sub_1AAD1FA8C(v60, v61 + *(v71 + 36), type metadata accessor for SgShapeStyle);
    *(v61 + *(v62 + 40)) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AAD21F8C()
{
  result = type metadata accessor for AnyVectorizedRenderer.MarkRenderer(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1AAD21FF8(uint64_t a1, uint64_t a2, uint64_t a3, double (*a4)(void, double))
{
  v6 = *(a3 + 24);
  v7 = *(v6 + 16);

  v21 = v7;
  if (!v7)
  {
LABEL_16:

    return;
  }

  v8 = 0;
  v9 = 0;
  v10 = *(a2 + 16);
  v11 = a1 + 32;
  v12 = *(a1 + 16);
  v13 = a2 + 32;
  v14 = a2 + 40;
  v15 = 0.0;
  while (2)
  {
    if (v9 >= *(v6 + 16))
    {
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
    }

    else
    {
      v17 = v9 + 1;
      if (v10 <= v8 + 1)
      {
        v18 = v8 + 1;
      }

      else
      {
        v18 = v10;
      }

      v19 = v18 - 1;
      while (v8 + 1 < v10)
      {
        if (v8 < -1)
        {
          __break(1u);
          goto LABEL_19;
        }

        v20 = *(v14 + 8 * v8++);
        if (v9 < v20)
        {
          --v8;
          goto LABEL_13;
        }
      }

      v8 = v19;
LABEL_13:
      if (v8 >= v12)
      {
        goto LABEL_20;
      }

      if (v8 < v10)
      {
        v16 = *(v6 + 32 + 8 * v9);
        v15 = v15 + v16 * a4(*(v13 + 8 * v8), *(v11 + 8 * v8));
        v9 = v17;
        if (v17 != v21)
        {
          continue;
        }

        goto LABEL_16;
      }
    }

    break;
  }

  __break(1u);
}

unint64_t sub_1AAD22150(unint64_t result, unint64_t a2, uint64_t a3, double a4)
{
  if (result == a2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_59;
  }

  v5 = *(a3 + 16);
  if (*(v5 + 16) <= result)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v4 = a4;
  sub_1AAD050BC(v5 + 32 + 712 * result, &v68);
  v76 = v71;
  v77 = v72;
  *v78 = v73[0];
  *&v78[9] = *(v73 + 9);
  v74[0] = v68;
  v74[1] = v69;
  v75 = v70;
  sub_1AAD1C5AC(v74, &v62, sub_1AACCF364);
  result = sub_1AAD09944(&v68);
  v7 = v78[24];
  if (v78[24] == 255)
  {
    return result;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_64;
  }

  if (*(v5 + 16) <= a2)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v8 = *&v74[0];
  v9 = v75;
  v60 = v76;
  sub_1AAD050BC(v5 + 32 + 712 * a2, &v68);
  v65 = v71;
  v66 = v72;
  *v67 = v73[0];
  *&v67[9] = *(v73 + 9);
  v62 = v68;
  v63 = v69;
  v64 = v70;
  sub_1AAD1C5AC(&v62, v61, sub_1AACCF364);
  sub_1AAD09944(&v68);
  if (v67[24] == 255)
  {
    return sub_1AAF502C0(v74, sub_1AACCF364);
  }

  v10 = v62;
  if ((v7 & 1) == 0)
  {
    if ((v67[24] & 1) != 0 || !v9)
    {
      goto LABEL_21;
    }

    *v61 = v4;
    sub_1AAD1C5AC(v74, &v68, sub_1AACCF364);
    sub_1AACBD93C(v9);
    v9(&v68, v61);
    sub_1AACB4A98(v9);
    if (BYTE8(v68))
    {
      goto LABEL_34;
    }

    v61[0] = v68;
    v10(&v68, v61);
    sub_1AAF502C0(v74, sub_1AACCF364);
    sub_1AAF502C0(v74, sub_1AACCF364);
    result = sub_1AAF502C0(&v62, sub_1AACCF364);
    if (v4 + -100.0 <= v4 + 100.0)
    {
      return result;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if ((v67[24] & 1) == 0 || !v9)
  {
LABEL_21:
    v17 = &v62;
LABEL_22:
    sub_1AAF502C0(v17, sub_1AACCF364);
    return sub_1AAF502C0(v74, sub_1AACCF364);
  }

  v57 = *(&v62 + 1);
  v11 = v63;
  v52 = *(&v65 + 1);
  v12 = v65;
  v55 = v66;
  v56 = BYTE8(v63);
  *v61 = v4;
  sub_1AAD1C5AC(v74, &v68, sub_1AACCF364);
  sub_1AACBD93C(v9);
  v9(&v68, v61);
  sub_1AACB4A98(v9);
  v13 = *(&v68 + 1);
  if (!*(&v68 + 1))
  {
LABEL_34:
    sub_1AAF502C0(&v62, sub_1AACCF364);
    v17 = v74;
    goto LABEL_22;
  }

  v53 = v11;
  v54 = v10;
  v14 = v68;
  v15 = v8(v61, &v68);
  *&v68 = v14;
  *(&v68 + 1) = v13;
  MEMORY[0x1EEE9AC00](v15);
  v48 = &v68;

  v16 = sub_1AAF4BCE4(sub_1AAF5038C, v47, v12);

  if (v16)
  {
    *&v68 = v14;
    *(&v68 + 1) = v13;
    v54(v61, &v68);
    sub_1AAF502C0(v74, sub_1AACCF364);
    sub_1AAF502C0(v74, sub_1AACCF364);

    result = sub_1AAF502C0(&v62, sub_1AACCF364);
    if (v4 + -100.0 <= v4 + 100.0)
    {
      return result;
    }

    goto LABEL_66;
  }

  v59 = v12;
  v18 = v60;
  v19 = *(v60 + 16);
  if (!v19)
  {
LABEL_33:

    goto LABEL_34;
  }

  v20 = 0;
  v21 = 0;
  v51 = v60 + 32;
  while (1)
  {
    v22 = v18 + v20;
    v23 = *(v18 + v20 + 32) == v14 && v13 == *(v18 + v20 + 40);
    if (v23 || (sub_1AAF904F4() & 1) != 0)
    {
      break;
    }

    v21 = (v21 + 1);
    v20 += 16;
    if (v19 == v21)
    {
      goto LABEL_33;
    }
  }

  if (*(v18 + 16) < v21)
  {
    goto LABEL_67;
  }

  v24 = (v22 + 24);
  v25 = (v22 + 56);
  v50 = v21 + 1;

  v27 = v21;
  v28 = v59;
  do
  {
    v29 = v27;
    if (!v27)
    {
      break;
    }

    v58 = &v49;
    v27 = (v27 - 1);
    v30 = *v24;
    *&v68 = *(v24 - 1);
    *(&v68 + 1) = v30;
    MEMORY[0x1EEE9AC00](v26);
    v48 = &v68;

    v31 = sub_1AAF4BCE4(sub_1AAF5038C, v47, v28);

    v24 -= 2;
  }

  while ((v31 & 1) == 0);
  v49 = v29;
  v58 = v27;
  v32 = v60;

  if (*(v32 + 16) < v21 + 1)
  {
    goto LABEL_68;
  }

  v33 = *(v32 + 16);

  v35 = v50;
  v36 = v59;
  while (1)
  {
    if (v33 == v35)
    {
      goto LABEL_46;
    }

    v37 = *v25;
    *&v68 = *(v25 - 1);
    *(&v68 + 1) = v37;
    MEMORY[0x1EEE9AC00](v34);
    v48 = &v68;

    v38 = sub_1AAF4BCE4(sub_1AAF5038C, v47, v36);

    if (v38)
    {
      break;
    }

    v25 += 2;
    if (__OFADD__(v35++, 1))
    {
      __break(1u);
LABEL_46:
      v40 = 0;
      goto LABEL_48;
    }
  }

  v40 = v35;
LABEL_48:
  v41 = v60;

  if (!v49)
  {
    if (v55 != 255)
    {
      goto LABEL_51;
    }

    if (v33 != v35)
    {
      goto LABEL_55;
    }

LABEL_60:
    sub_1AAF502C0(v74, sub_1AACCF364);
    sub_1AAF502C0(v74, sub_1AACCF364);
    result = sub_1AAF502C0(&v62, sub_1AACCF364);
    goto LABEL_61;
  }

  if (v58 >= *(v41 + 16))
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v42 = (v51 + 16 * v58);
  v43 = v42[1];
  *&v68 = *v42;
  *(&v68 + 1) = v43;

  v54(v61, &v68);

LABEL_51:
  if (v33 == v35)
  {
    goto LABEL_60;
  }

LABEL_55:
  v44 = v54;
  if ((v40 & 0x8000000000000000) != 0)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v40 >= *(v41 + 16))
  {
LABEL_72:
    __break(1u);
    return result;
  }

  v45 = (v51 + 16 * v40);
  v46 = v45[1];
  *&v68 = *v45;
  *(&v68 + 1) = v46;

  v44(v61, &v68);
  sub_1AAF502C0(v74, sub_1AACCF364);
  sub_1AAF502C0(v74, sub_1AACCF364);

  result = sub_1AAF502C0(&v62, sub_1AACCF364);
LABEL_61:
  if (v4 + -100.0 > v4 + 100.0)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  return result;
}

unint64_t sub_1AAD22AF0(unint64_t result, unint64_t a2, uint64_t a3, double a4)
{
  if (result == a2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_59;
  }

  v5 = *(a3 + 16);
  if (*(v5 + 16) <= result)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v4 = a4;
  sub_1AAD050BC(v5 + 32 + 712 * result, &v67);
  v79 = v73;
  *v80 = v74[0];
  *&v80[9] = *(v74 + 9);
  v75 = v69;
  v76 = v70;
  v77 = v71;
  v78 = v72;
  sub_1AAD1C5AC(&v75, &v61, sub_1AACCF364);
  result = sub_1AAD09944(&v67);
  v7 = v80[24];
  if (v80[24] == 255)
  {
    return result;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_64;
  }

  if (*(v5 + 16) <= a2)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v8 = v75;
  LODWORD(v59) = BYTE8(v76);
  v9 = v77;
  v10 = v5 + 32 + 712 * a2;
  v11 = v78;
  sub_1AAD050BC(v10, &v67);
  v64 = v72;
  v65 = v73;
  *v66 = v74[0];
  *&v66[9] = *(v74 + 9);
  v61 = v69;
  v62 = v70;
  v63 = v71;
  sub_1AAD1C5AC(&v61, v60, sub_1AACCF364);
  sub_1AAD09944(&v67);
  if (v66[24] == 255)
  {
    return sub_1AAF502C0(&v75, sub_1AACCF364);
  }

  v58 = v11;
  v12 = v61;
  if ((v7 & 1) == 0)
  {
    if ((v66[24] & 1) != 0 || !v9)
    {
      goto LABEL_21;
    }

    *v60 = v4;
    sub_1AAD1C5AC(&v75, &v67, sub_1AACCF364);
    sub_1AACBD93C(v9);
    v9(&v67, v60);
    sub_1AACB4A98(v9);
    if (v68)
    {
      goto LABEL_34;
    }

    v60[0] = v67;
    (v12)(&v67, v60);
    sub_1AAF502C0(&v75, sub_1AACCF364);
    sub_1AAF502C0(&v75, sub_1AACCF364);
    result = sub_1AAF502C0(&v61, sub_1AACCF364);
    if (v4 + -100.0 <= v4 + 100.0)
    {
      return result;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if ((v66[24] & 1) == 0 || !v9)
  {
LABEL_21:
    v19 = &v61;
LABEL_22:
    sub_1AAF502C0(v19, sub_1AACCF364);
    return sub_1AAF502C0(&v75, sub_1AACCF364);
  }

  v13 = v62;
  v53 = *(&v64 + 1);
  v14 = v64;
  v55 = v65;
  v56 = BYTE8(v62);
  *v60 = v4;
  sub_1AAD1C5AC(&v75, &v67, sub_1AACCF364);
  sub_1AACBD93C(v9);
  v9(&v67, v60);
  sub_1AACB4A98(v9);
  v15 = v68;
  if (!v68)
  {
LABEL_34:
    sub_1AAF502C0(&v61, sub_1AACCF364);
    v19 = &v75;
    goto LABEL_22;
  }

  v54 = v12;
  v16 = v67;
  v17 = v8(v60, &v67);
  v67 = v16;
  v68 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v49 = &v67;

  v18 = sub_1AAF4BCE4(sub_1AAF4FDB4, v48, v14);
  v57 = v14;

  if (v18)
  {
    v67 = v16;
    v68 = v15;
    (v54)(v60, &v67);
    sub_1AAF502C0(&v75, sub_1AACCF364);
    sub_1AAF502C0(&v75, sub_1AACCF364);

    result = sub_1AAF502C0(&v61, sub_1AACCF364);
    if (v4 + -100.0 <= v4 + 100.0)
    {
      return result;
    }

    goto LABEL_66;
  }

  v20 = *(v58 + 16);
  if (!v20)
  {
LABEL_33:

    goto LABEL_34;
  }

  v21 = 0;
  v22 = 0;
  v52 = v58 + 32;
  while (1)
  {
    v23 = v58 + v21;
    v24 = *(v58 + v21 + 32) == v16 && v15 == *(v58 + v21 + 40);
    if (v24 || (sub_1AAF904F4() & 1) != 0)
    {
      break;
    }

    ++v22;
    v21 += 16;
    if (v20 == v22)
    {
      goto LABEL_33;
    }
  }

  v50[1] = v13;

  result = v58;
  if (*(v58 + 16) < v22)
  {
    goto LABEL_67;
  }

  v25 = (v23 + 24);
  v26 = (v23 + 56);
  v51 = v22 + 1;

  v28 = v22;
  do
  {
    v29 = v28;
    if (!v28)
    {
      break;
    }

    v59 = v50;
    v30 = *v25;
    v67 = *(v25 - 1);
    v68 = v30;
    MEMORY[0x1EEE9AC00](v27);
    v49 = &v67;
    v31 = v57;

    v32 = sub_1AAF4BCE4(sub_1AAF5038C, v48, v31);

    v28 = v29 - 1;

    v25 -= 2;
  }

  while ((v32 & 1) == 0);
  v50[0] = v29;
  v33 = v58;

  if (*(v33 + 16) < (v22 + 1))
  {
    goto LABEL_68;
  }

  v34 = *(v33 + 16);

  v36 = v57;
  v37 = v51;
  while (1)
  {
    if (v34 == v37)
    {
      goto LABEL_46;
    }

    v38 = *v26;
    v67 = *(v26 - 1);
    v68 = v38;
    MEMORY[0x1EEE9AC00](v35);
    v49 = &v67;

    v39 = sub_1AAF4BCE4(sub_1AAF5038C, v48, v36);

    if (v39)
    {
      break;
    }

    v26 += 2;
    if (__OFADD__(v37++, 1))
    {
      __break(1u);
LABEL_46:
      v41 = 0;
      goto LABEL_48;
    }
  }

  v41 = v37;
LABEL_48:
  v42 = v58;

  v43 = v52;
  if (!v50[0])
  {
    if (v55 != 255)
    {
      goto LABEL_51;
    }

    if (v34 != v37)
    {
      goto LABEL_55;
    }

LABEL_60:
    sub_1AAF502C0(&v75, sub_1AACCF364);
    sub_1AAF502C0(&v75, sub_1AACCF364);
    result = sub_1AAF502C0(&v61, sub_1AACCF364);
    goto LABEL_61;
  }

  if (v28 >= *(v42 + 16))
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v44 = (v52 + 16 * v28);
  v45 = v44[1];
  v67 = *v44;
  v68 = v45;

  (v54)(v60, &v67);

LABEL_51:
  if (v34 == v37)
  {
    goto LABEL_60;
  }

LABEL_55:
  if ((v41 & 0x8000000000000000) != 0)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v41 >= *(v58 + 16))
  {
LABEL_72:
    __break(1u);
    return result;
  }

  v46 = (v43 + 16 * v41);
  v47 = v46[1];
  v67 = *v46;
  v68 = v47;

  (v54)(v60, &v67);
  sub_1AAF502C0(&v75, sub_1AACCF364);
  sub_1AAF502C0(&v75, sub_1AACCF364);

  result = sub_1AAF502C0(&v61, sub_1AACCF364);
LABEL_61:
  if (v4 + -100.0 > v4 + 100.0)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  return result;
}

uint64_t sub_1AAD23494()
{
  result = type metadata accessor for RectanglesRenderer(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PointsRenderer(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for RulesRenderer(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1AAD23528()
{
  sub_1AAD45E1C(319, qword_1ED9B3A28);
  if (v0 <= 0x3F)
  {
    sub_1AACC7228(319, &qword_1ED9B37E8, &type metadata for _ChartContentRenderInputs, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1AAD0DA28(319, qword_1ED9B4960, type metadata accessor for ChartContentRenderContext.Environment, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1AACC7228(319, &qword_1ED9B2BF8, MEMORY[0x1E697FA58], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1AAF8E244();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

size_t sub_1AAD23694(size_t a1, int64_t a2, char a3)
{
  result = sub_1AAD45470(a1, a2, a3, *v3, &qword_1ED9B0670, type metadata accessor for SgShapeStyle, type metadata accessor for SgShapeStyle);
  *v3 = result;
  return result;
}

uint64_t sub_1AAD236E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1AAD1F8C0(0, &qword_1ED9B54F8, MEMORY[0x1E6981E38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v53 - v11;
  v13 = type metadata accessor for SgShapeStyle();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 16);
  v57 = v17;
  v56 = a1;
  v58 = a2;
  v55 = v14;
  if (v17)
  {
    *&v59 = a3;
    *&v60 = a4;
    v53 = v13;
    v54 = v12;
    *&v64[0] = MEMORY[0x1E69E7CC0];
    sub_1AAD23E34(0, v17, 0);
    v18 = *&v64[0];
    v19 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v20 = *(v14 + 72);
    v21 = v17;
    v22 = v19;
    do
    {
      sub_1AAD1C5AC(v22, v16, type metadata accessor for SgShapeStyle);
      sub_1AACAD248(v16, &v62);
      sub_1AAF502C0(v16, type metadata accessor for SgShapeStyle);
      *&v64[0] = v18;
      v24 = *(v18 + 16);
      v23 = *(v18 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1AAD23E34((v23 > 1), v24 + 1, 1);
        v18 = *&v64[0];
      }

      *(v18 + 16) = v24 + 1;
      v25 = (v18 + 48 * v24);
      v26 = v62;
      v27 = v63[0];
      *(v25 + 57) = *(v63 + 9);
      v25[2] = v26;
      v25[3] = v27;
      v22 += v20;
      --v21;
    }

    while (v21);
    sub_1AAD23F7C(v18, v58, v59, &v62);

    *&v64[0] = MEMORY[0x1E69E7CC0];
    v28 = v57;
    sub_1AAD246F8(0, v57, 0);
    v29 = *&v64[0];
    do
    {
      sub_1AAD1C5AC(v19, v16, type metadata accessor for SgShapeStyle);
      v30 = *(v16 + 3);
      v59 = *(v16 + 4);
      v60 = v30;
      v31 = *(v16 + 10);

      sub_1AAF502C0(v16, type metadata accessor for SgShapeStyle);
      *&v64[0] = v29;
      v33 = v29[2];
      v32 = v29[3];
      if (v33 >= v32 >> 1)
      {
        sub_1AAD246F8((v32 > 1), v33 + 1, 1);
        v29 = *&v64[0];
      }

      v29[2] = v33 + 1;
      v34 = &v29[5 * v33];
      v35 = v59;
      *(v34 + 2) = v60;
      *(v34 + 3) = v35;
      v34[8] = v31;
      v19 += v20;
      --v28;
    }

    while (v28);
    v12 = v54;
    v13 = v53;
    a1 = v56;
    v17 = v57;
    a2 = v58;
    v14 = v55;
  }

  else
  {
    v29 = MEMORY[0x1E69E7CC0];
    sub_1AAD23F7C(MEMORY[0x1E69E7CC0], a2, a3, &v62);
  }

  sub_1AAD24794(v29, a2, v64);

  v36 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v61 = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v17, 0);
    v36 = v61;
    v37 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v38 = *(v14 + 72);
    do
    {
      sub_1AAD1C5AC(v37, v16, type metadata accessor for SgShapeStyle);
      v39 = *(v16 + 11);
      sub_1AAF502C0(v16, type metadata accessor for SgShapeStyle);
      v61 = v36;
      v41 = *(v36 + 16);
      v40 = *(v36 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_1AAD1FAF4((v40 > 1), v41 + 1, 1);
        v36 = v61;
      }

      *(v36 + 16) = v41 + 1;
      *(v36 + 8 * v41 + 32) = v39;
      v37 += v38;
      --v17;
    }

    while (v17);
    a1 = v56;
    v17 = v57;
    a2 = v58;
    v14 = v55;
  }

  sub_1AAD1FF48(v36, a2);
  v43 = v42;

  if (v17)
  {
    v44 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    sub_1AAF4FE94(v44 + *(v13 + 32), v12, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
    v45 = (v44 + *(v13 + 36));
    v46 = *v45;
    v47 = *(v45 + 4);
  }

  else
  {
    v48 = sub_1AAF8F154();
    (*(*(v48 - 8) + 56))(v12, 1, 1, v48);
    v46 = 0;
    v47 = 0;
  }

  v49 = v63[0];
  *a5 = v62;
  *(a5 + 16) = v49;
  *(a5 + 25) = *(v63 + 9);
  *(a5 + 41) = 0;
  v50 = v64[1];
  *(a5 + 48) = v64[0];
  *(a5 + 64) = v50;
  *(a5 + 80) = v65;
  *(a5 + 88) = v43;
  result = sub_1AAF4FF14(v12, a5 + *(v13 + 32), &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
  v52 = a5 + *(v13 + 36);
  *v52 = v46;
  *(v52 + 8) = v47;
  return result;
}

void sub_1AAD23CA4()
{
  sub_1AAD45E1C(319, qword_1ED9B3A28);
  if (v0 <= 0x3F)
  {
    sub_1AACC7228(319, &qword_1ED9B37E8, &type metadata for _ChartContentRenderInputs, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1AAD0DA28(319, qword_1ED9B4960, type metadata accessor for ChartContentRenderContext.Environment, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1AACC7228(319, qword_1ED9B3000, &type metadata for SgSymbol, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1AACC7228(319, qword_1ED9B4178, &type metadata for SgSymbolSize, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

char *sub_1AAD23E34(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD44D1C(a1, a2, a3, *v3, &qword_1ED9B0678, &type metadata for SgShapeStyle.Shading);
  *v3 = result;
  return result;
}

void sub_1AAD23E64()
{
  sub_1AAD45E1C(319, qword_1ED9B3A28);
  if (v0 <= 0x3F)
  {
    sub_1AACC7228(319, &qword_1ED9B37E8, &type metadata for _ChartContentRenderInputs, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1AAD0DA28(319, qword_1ED9B4960, type metadata accessor for ChartContentRenderContext.Environment, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1AAD23F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = sub_1AAF8F044();
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x1E69E7CC0];
  v10 = *(a1 + 16);
  if (v10)
  {
    v47 = a3;
    v46 = v8;
    v11 = 0;
    v12 = a1 + 32;
    v50 = a2 + 32;
    v13 = 1;
    v14 = 0.0;
    v15 = MEMORY[0x1E69E7CC0];
    v16 = MEMORY[0x1E69E7CC0];
LABEL_3:
    LODWORD(v49) = v13;
LABEL_4:
    v17 = v12;
    v18 = v12 + 48 * v11;
    v19 = v11;
    while (1)
    {
      if (v19 >= v10)
      {
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      sub_1AACAD248(v18, &v55);
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_56;
      }

      v20 = *(a2 + 16);
      if (v19 == v20)
      {
        break;
      }

      if (v19 >= v20)
      {
        goto LABEL_57;
      }

      v21 = *(a2 + 8 * v19 + 32);
      *&v57[25] = *&v56[9];
      *v57 = v55;
      *&v57[16] = *v56;
      *&v56[9] = *&v57[25];
      *v56 = *&v57[16];
      if (v57[40])
      {
        sub_1AACBB198(&v55, v53);
        sub_1AAD45E1C(0, &qword_1ED9B2778);
        if (swift_dynamicCast())
        {
          v22 = v54;
        }

        else
        {
          v22 = 0;
        }

        if (!v22)
        {
LABEL_35:
          sub_1AACAD248(v17, &v55);
          v33 = *v56;
          *a4 = v55;
          *(a4 + 16) = v33;
          v32 = *&v56[9];
          goto LABEL_36;
        }
      }

      else if (!v55)
      {
        goto LABEL_35;
      }

      if (v21 > 0.0)
      {

        MEMORY[0x1AC598430](v23);
        if (*(v58 + 16) >= *(v58 + 24) >> 1)
        {
          sub_1AAF8F874();
        }

        sub_1AAF8F8C4();
        v24 = v58;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1AAD67B50(0, *(v15 + 2) + 1, 1, v15);
        }

        v26 = *(v15 + 2);
        v25 = *(v15 + 3);
        if (v26 >= v25 >> 1)
        {
          v15 = sub_1AAD67B50((v25 > 1), v26 + 1, 1, v15);
        }

        v14 = fmin(v14 + v21, 1.0);
        *(v15 + 2) = v26 + 1;
        *&v15[8 * v26 + 32] = v14;
        v16 = v24;
        if (*(v24 + 16))
        {

          v27 = sub_1AAF8EC64();

          v13 = v27 & v49;
          v12 = v17;
          if (v11 != v10)
          {
            goto LABEL_3;
          }
        }

        else
        {

          v12 = v17;
          if (v11 != v10)
          {
            goto LABEL_4;
          }

LABEL_37:
          LOBYTE(v13) = v49;
        }

        if ((v13 & 1) == 0)
        {
LABEL_39:
          v11 = *(v15 + 2);
          if (!v11)
          {
            goto LABEL_62;
          }

          v34 = *&v15[8 * v11 + 24];
          v44 = a4;
          if (v34 == 1.0)
          {
            goto LABEL_44;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            goto LABEL_64;
          }

          while (v11 <= *(v15 + 2))
          {
            *&v15[8 * v11 + 24] = 0x3FF0000000000000;
LABEL_44:
            v36 = *(v16 + 16);
            v37 = v36 != 0;
            if (v36)
            {
              v49 = v16;
              v38 = *(v16 + 32);
              v48 = v16 + 32;
              swift_retain_n();

              v45 = v38;
              if (v36 == 1)
              {
LABEL_53:

                v42 = v44;
                *v44 = v38;
                *(v42 + 40) = 0;
                goto LABEL_54;
              }

              v16 = v46 + 8;
              while (v36 != v37)
              {
                if (v37 >= *(v49 + 16))
                {
                  goto LABEL_59;
                }

                if (v37 >= *(a2 + 16))
                {
                  goto LABEL_60;
                }

                if (v37 >= *(v15 + 2))
                {
                  goto LABEL_61;
                }

                v11 = v15;
                v39 = v37 + 1;

                v40 = v51;
                sub_1AAF8F034();
                v38 = sub_1AAF8EC74();

                (*v16)(v40, v52);

                v37 = v39;
                v41 = v36 == v39;
                v15 = v11;
                if (v41)
                {
                  goto LABEL_53;
                }
              }

LABEL_58:
              __break(1u);
LABEL_59:
              __break(1u);
LABEL_60:
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
            }

            __break(1u);
LABEL_64:
            result = sub_1AADB8144(v15);
            v15 = result;
          }

          __break(1u);
          return result;
        }

LABEL_34:
        sub_1AACAD248(v12, v57);
        v31 = *&v57[16];
        *a4 = *v57;
        *(a4 + 16) = v31;
        v32 = *&v57[25];
LABEL_36:
        *(a4 + 25) = v32;
        goto LABEL_54;
      }

      ++v19;
      v18 += 48;
      if (v11 == v10)
      {
        v12 = v17;
        goto LABEL_37;
      }
    }

    sub_1AAE9C090(&v55);
    v12 = v17;
    if ((v49 & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_34;
  }

  v28 = MEMORY[0x1E69815C0];
  memset(v57, 0, 40);
  v57[40] = -1;
  v29 = sub_1AAF8ECE4();
  v30 = MEMORY[0x1E6981568];
  *(a4 + 24) = v28;
  *(a4 + 32) = v30;
  *a4 = v29;
  *(a4 + 40) = 1;
  if (v57[40] != 255)
  {
    sub_1AAD19258(v57, qword_1ED9B52F0, &type metadata for SgShapeStyle.Shading);
  }

LABEL_54:
}

void *sub_1AAD245A4(void *result, int64_t a2, char a3, void *a4)
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
    sub_1AAD24718();
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
    sub_1AAD469FC(0, &qword_1ED9B2F20, MEMORY[0x1E697DD48], MEMORY[0x1E69E6720]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1AAD246F8(void *a1, int64_t a2, char a3)
{
  result = sub_1AAD245A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1AAD24718()
{
  if (!qword_1ED9B0638)
  {
    sub_1AAD469FC(255, &qword_1ED9B2F20, MEMORY[0x1E697DD48], MEMORY[0x1E69E6720]);
    v0 = sub_1AAF90484();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B0638);
    }
  }
}

void *sub_1AAD24794@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = result;
  v5 = result[2];
  v6 = result + 7;
  v7 = v5 + 1;
  do
  {
    if (!--v7)
    {
      if (v5)
      {
        if (result[7])
        {
          v64 = MEMORY[0x1E69E7CC0];

          result = sub_1AAD1FAF4(0, v5, 0);
          v14 = v3 + 7;
          v15 = v5;
          v16 = v3 + 7;
          do
          {
            v17 = *v16;
            v16 += 5;
            if (!v17)
            {
              goto LABEL_57;
            }

            v18 = *(v14 - 3);
            v20 = *(v64 + 16);
            v19 = *(v64 + 24);
            if (v20 >= v19 >> 1)
            {
              result = sub_1AAD1FAF4((v19 > 1), v20 + 1, 1);
            }

            *(v64 + 16) = v20 + 1;
            *(v64 + 8 * v20 + 32) = v18;
            v14 = v16;
            --v15;
          }

          while (v15);
          v62 = a3;
          v21 = sub_1AAD1FCE0(v64, a2);
          v22 = *(v21 + 16);
          if (v22)
          {
            if (v22 >= 4)
            {
              v23 = v22 & 0x7FFFFFFFFFFFFFFCLL;
              v25 = (v21 + 48);
              v24 = 0.0;
              v26 = v22 & 0x7FFFFFFFFFFFFFFCLL;
              do
              {
                v24 = v24 + *(v25 - 2) + *(v25 - 1) + *v25 + v25[1];
                v25 += 4;
                v26 -= 4;
              }

              while (v26);
              if (v22 == v23)
              {
                goto LABEL_21;
              }
            }

            else
            {
              v23 = 0;
              v24 = 0.0;
            }

            v27 = v22 - v23;
            v28 = (v21 + 8 * v23 + 32);
            do
            {
              v29 = *v28++;
              v24 = v24 + v29;
              --v27;
            }

            while (v27);
          }

LABEL_21:

          v65 = MEMORY[0x1E69E7CC0];
          result = sub_1AAD1FAF4(0, v5, 0);
          v30 = v3 + 7;
          v31 = v5;
          do
          {
            if (!*v30)
            {
              goto LABEL_58;
            }

            v32 = *(v30 - 1);
            v34 = *(v65 + 16);
            v33 = *(v65 + 24);
            if (v34 >= v33 >> 1)
            {
              result = sub_1AAD1FAF4((v33 > 1), v34 + 1, 1);
            }

            *(v65 + 16) = v34 + 1;
            *(v65 + 8 * v34 + 32) = v32;
            v30 += 5;
            --v31;
          }

          while (v31);
          v35 = sub_1AAD1FCE0(v65, a2);
          v36 = *(v35 + 16);
          if (v36)
          {
            if (v36 >= 4)
            {
              v37 = v36 & 0x7FFFFFFFFFFFFFFCLL;
              v39 = (v35 + 48);
              v38 = 0.0;
              v40 = v36 & 0x7FFFFFFFFFFFFFFCLL;
              do
              {
                v38 = v38 + *(v39 - 2) + *(v39 - 1) + *v39 + v39[1];
                v39 += 4;
                v40 -= 4;
              }

              while (v40);
              if (v36 == v37)
              {
                goto LABEL_35;
              }
            }

            else
            {
              v37 = 0;
              v38 = 0.0;
            }

            v41 = v36 - v37;
            v42 = (v35 + 8 * v37 + 32);
            do
            {
              v43 = *v42++;
              v38 = v38 + v43;
              --v41;
            }

            while (v41);
          }

LABEL_35:

          v66 = MEMORY[0x1E69E7CC0];
          result = sub_1AAD24CF8(0, v5, 0);
          v44 = v3 + 7;
          v45 = v5;
          do
          {
            v46 = *v44;
            if (!*v44)
            {
              goto LABEL_59;
            }

            v48 = *(v66 + 16);
            v47 = *(v66 + 24);

            if (v48 >= v47 >> 1)
            {
              result = sub_1AAD24CF8((v47 > 1), v48 + 1, 1);
            }

            *(v66 + 16) = v48 + 1;
            *(v66 + 8 * v48 + 32) = v46;
            v44 += 5;
            --v45;
          }

          while (v45);
          sub_1AAD24F88(v66, a2);

          v67 = MEMORY[0x1E69E7CC0];
          result = sub_1AAD1FAF4(0, v5, 0);
          v49 = v3 + 8;
          do
          {
            if (!*(v49 - 1))
            {
              goto LABEL_60;
            }

            v50 = *v49;
            v52 = *(v67 + 16);
            v51 = *(v67 + 24);
            if (v52 >= v51 >> 1)
            {
              result = sub_1AAD1FAF4((v51 > 1), v52 + 1, 1);
            }

            *(v67 + 16) = v52 + 1;
            *(v67 + 8 * v52 + 32) = v50;
            v49 += 5;
            --v5;
          }

          while (v5);
          v53 = sub_1AAD1FCE0(v67, a2);
          v54 = *(v53 + 16);
          if (v54)
          {
            if (v54 > 3)
            {
              v55 = v54 & 0x7FFFFFFFFFFFFFFCLL;
              v57 = (v53 + 48);
              v56 = 0.0;
              v58 = v54 & 0x7FFFFFFFFFFFFFFCLL;
              do
              {
                v56 = v56 + *(v57 - 2) + *(v57 - 1) + *v57 + v57[1];
                v57 += 4;
                v58 -= 4;
              }

              while (v58);
              if (v54 == v55)
              {
                goto LABEL_54;
              }
            }

            else
            {
              v55 = 0;
              v56 = 0.0;
            }

            v59 = v54 - v55;
            v60 = (v53 + 8 * v55 + 32);
            do
            {
              v61 = *v60++;
              v56 = v56 + v61;
              --v59;
            }

            while (v59);
          }

LABEL_54:

          sub_1AAF8D914();
          v9 = v67;
          v10 = v68;
          v12 = v69;
          v11 = v70;
          v13 = v71;

          a3 = v62;
          goto LABEL_55;
        }
      }

      else
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
      }

      __break(1u);
      return result;
    }

    v8 = *v6;
    v6 += 5;
  }

  while (v8);
  v9 = result[4];
  v10 = result[5];
  v12 = result[6];
  v11 = result[7];
  v13 = result[8];

LABEL_55:
  *a3 = v9;
  a3[1] = v10;
  a3[2] = v12;
  a3[3] = v11;
  a3[4] = v13;
  return result;
}

void *sub_1AAD24CF8(void *a1, int64_t a2, char a3)
{
  result = sub_1AAD24DC0(a1, a2, a3, *v3, sub_1AAD24F0C, &qword_1ED9B2A88, MEMORY[0x1E69E7DE0]);
  *v3 = result;
  return result;
}

void sub_1AAD24D3C()
{
  type metadata accessor for CGSize(319);
  if (v0 <= 0x3F)
  {
    sub_1AAF8DF14();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void *sub_1AAD24DC0(void *result, int64_t a2, char a3, void *a4, void (*a5)(void), unint64_t *a6, uint64_t a7)
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    a5(0);
    v15 = swift_allocObject();
    v16 = j__malloc_size(v15);
    v17 = v16 - 32;
    if (v16 < 32)
    {
      v17 = v16 - 25;
    }

    v15[2] = v13;
    v15[3] = 2 * (v17 >> 3);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  if (v10)
  {
    if (v15 != a4 || v15 + 4 >= &a4[v13 + 4])
    {
      memmove(v15 + 4, a4 + 4, 8 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1AAD469FC(0, a6, a7, MEMORY[0x1E69E62F8]);
    swift_arrayInitWithCopy();
  }

  return v15;
}

void sub_1AAD24F0C()
{
  if (!qword_1ED9B0630)
  {
    sub_1AAD469FC(255, &qword_1ED9B2A88, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
    v0 = sub_1AAF90484();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B0630);
    }
  }
}

char *sub_1AAD24F88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = 0;
  v5 = a1 + 32;
  v4 = *(a1 + 32);
  while (v2 != v3)
  {
    v6 = *(v5 + 8 * v3++);
    if (*(v6 + 16) != *(v4 + 16))
    {
    }
  }

  v8 = *(v4 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v49 = MEMORY[0x1E69E7CC0];
  sub_1AAD1FAF4(0, v8, 0);
  v11 = 0;
  result = v49;
  v12 = *(a2 + 16);
  v13 = a2 + 32;
  v43 = v5;
  v44 = v8;
  v45 = v2;
  while (2)
  {
    v46 = v11 + 1;
    v47 = result;
    result = sub_1AAD1FAF4(0, v2, 0);
    v14 = v9;
    v15 = v5;
    v16 = v2;
    do
    {
      if (v11 >= *(*v15 + 16))
      {
        __break(1u);
        goto LABEL_54;
      }

      v17 = *(*v15 + 8 * v11 + 32);
      v19 = *(v14 + 16);
      v18 = *(v14 + 24);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        result = sub_1AAD1FAF4((v18 > 1), v19 + 1, 1);
      }

      *(v14 + 16) = v20;
      *(v14 + 8 * v19 + 32) = v17;
      v15 += 8;
      --v16;
    }

    while (v16);
    if (v12 < v20)
    {
      v20 = v12;
    }

    v48 = MEMORY[0x1E69E7CC0];
    result = sub_1AAD1FAF4(0, v20, 0);
    if (v12)
    {
      v21 = 0;
      v22 = *(v14 + 16);
      while (v20 != v21)
      {
        if (v22 == v21)
        {
          goto LABEL_55;
        }

        if (v21 >= *(v14 + 16))
        {
          goto LABEL_56;
        }

        if (v12 == v21)
        {
          goto LABEL_57;
        }

        v23 = *(v14 + 32 + 8 * v21);
        v24 = *(v13 + 8 * v21);
        v26 = *(v48 + 16);
        v25 = *(v48 + 24);
        if (v26 >= v25 >> 1)
        {
          result = sub_1AAD1FAF4((v25 > 1), v26 + 1, 1);
        }

        ++v21;
        *(v48 + 16) = v26 + 1;
        *(v48 + 8 * v26 + 32) = v23 * v24;
        if (v20 == v21)
        {
          v5 = v43;
          goto LABEL_27;
        }
      }

LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      return result;
    }

    v20 = 0;
LABEL_27:
    v27 = *(v14 + 16);
    if (v20 != v27)
    {
      if (v20 <= v12)
      {
        v31 = v12;
      }

      else
      {
        v31 = v20;
      }

      while (v20 < v27)
      {
        if (v12 == v20)
        {
          goto LABEL_28;
        }

        if (v31 == v20)
        {
          goto LABEL_59;
        }

        v32 = *(v14 + 32 + 8 * v20);
        v33 = *(v13 + 8 * v20);
        v35 = *(v48 + 16);
        v34 = *(v48 + 24);
        if (v35 >= v34 >> 1)
        {
          result = sub_1AAD1FAF4((v34 > 1), v35 + 1, 1);
        }

        ++v20;
        *(v48 + 16) = v35 + 1;
        *(v48 + 8 * v35 + 32) = v32 * v33;
        v27 = *(v14 + 16);
        if (v20 == v27)
        {
          goto LABEL_28;
        }
      }

      goto LABEL_58;
    }

LABEL_28:
    v28 = *(v48 + 16);
    if (!v28)
    {

      v30 = 0.0;
      v2 = v45;
      v9 = MEMORY[0x1E69E7CC0];
      goto LABEL_48;
    }

    v2 = v45;
    if (v28 > 3)
    {
      v29 = v28 & 0x7FFFFFFFFFFFFFFCLL;
      v36 = (v48 + 48);
      v30 = 0.0;
      v37 = v28 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v30 = v30 + *(v36 - 2) + *(v36 - 1) + *v36 + v36[1];
        v36 += 4;
        v37 -= 4;
      }

      while (v37);
      v9 = MEMORY[0x1E69E7CC0];
      if (v28 == v29)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v29 = 0;
      v30 = 0.0;
      v9 = MEMORY[0x1E69E7CC0];
    }

    v38 = v28 - v29;
    v39 = (v48 + 8 * v29 + 32);
    do
    {
      v40 = *v39++;
      v30 = v30 + v40;
      --v38;
    }

    while (v38);
LABEL_47:

LABEL_48:

    result = v47;
    v42 = *(v47 + 2);
    v41 = *(v47 + 3);
    if (v42 >= v41 >> 1)
    {
      sub_1AAD1FAF4((v41 > 1), v42 + 1, 1);
      result = v47;
    }

    *(result + 2) = v42 + 1;
    *&result[8 * v42 + 32] = v30;
    ++v11;
    if (v46 != v44)
    {
      continue;
    }

    return result;
  }
}

char *sub_1AAD2537C(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD2539C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AAD2539C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD469FC(0, &qword_1ED9AEEC0, &type metadata for SgAnnotation, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 176);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[176 * v8])
    {
      memmove(v12, v13, 176 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1AAD254DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v43[0] = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v9, 0);
    v10 = v43[0];
    v11 = *(v43[0] + 16);
    v12 = (a1 + 40);
    v13 = v9;
    do
    {
      v14 = *v12;
      v43[0] = v10;
      v15 = *(v10 + 24);
      if (v11 >= v15 >> 1)
      {
        sub_1AAD1FAF4((v15 > 1), v11 + 1, 1);
        v10 = v43[0];
      }

      *(v10 + 16) = v11 + 1;
      *(v10 + 8 * v11 + 32) = v14;
      v12 += 22;
      ++v11;
      --v13;
    }

    while (v13);
  }

  sub_1AAD21FF8(v10, a3, a4, sub_1AAD22150);
  v17 = v16;

  v18 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v43[0] = MEMORY[0x1E69E7CC0];
    sub_1AAD1FAF4(0, v9, 0);
    v18 = v43[0];
    v19 = *(v43[0] + 16);
    v20 = (a1 + 48);
    v21 = v9;
    do
    {
      v22 = *v20;
      v43[0] = v18;
      v23 = *(v18 + 24);
      if (v19 >= v23 >> 1)
      {
        sub_1AAD1FAF4((v23 > 1), v19 + 1, 1);
        v18 = v43[0];
      }

      *(v18 + 16) = v19 + 1;
      *(v18 + 8 * v19 + 32) = v22;
      v20 += 22;
      ++v19;
      --v21;
    }

    while (v21);
  }

  sub_1AAD21FF8(v18, a3, a4, sub_1AAD22AF0);
  v25 = v24;

  v26 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v43[0] = MEMORY[0x1E69E7CC0];
    sub_1AAD25AB8(0, v9, 0);
    v26 = v43[0];
    v27 = *(v43[0] + 16) + 1;
    v28 = (a1 + 120);
    v29 = v9;
    do
    {
      v30 = *(v28 - 4);
      v31 = *v28;
      v43[0] = v26;
      v32 = *(v26 + 24);
      if (v27 - 1 >= v32 >> 1)
      {
        v39 = v31;
        v40 = v30;
        sub_1AAD25AB8((v32 > 1), v27, 1);
        v31 = v39;
        v30 = v40;
        v26 = v43[0];
      }

      *(v26 + 16) = v27;
      v33 = (v26 + 32 * v27);
      *v33 = v30;
      v33[1] = v31;
      ++v27;
      v28 += 11;
      --v29;
    }

    while (v29);
  }

  v43[0] = 1;
  memset(&v43[1], 0, 24);
  v44 = 1;
  sub_1AAD25CF0(v26, a2, v43);

  swift_getKeyPath();
  swift_getAtKeyPath();

  swift_getKeyPath();
  swift_getAtKeyPath();

  swift_getKeyPath();
  swift_getAtKeyPath();

  swift_getKeyPath();
  swift_getAtKeyPath();

  swift_getKeyPath();
  swift_getAtKeyPath();

  swift_getKeyPath();
  swift_getAtKeyPath();

  if (v9)
  {
    v35 = a1 + 32 + 176 * v9;
    v36 = *(v35 - 104);
    v37 = *(v35 - 96);
    v38 = *(v35 - 24);
    *a5 = *(a1 + 32);
    *(a5 + 8) = v17;
    *(a5 + 16) = v25;
    *(a5 + 24) = v42;
    *(a5 + 32) = v42;
    *(a5 + 40) = *(v35 - 136);
    *(a5 + 56) = *(v35 - 120);
    *(a5 + 72) = v36;
    *(a5 + 80) = v37;
    *(a5 + 84) = v42 >> 24;
    *(a5 + 81) = v42;
    *(a5 + 88) = v42;
    *(a5 + 96) = v42;
    *(a5 + 104) = *(v35 - 72);
    *(a5 + 120) = *(v35 - 56);
    *(a5 + 136) = *(v35 - 40);
    *(a5 + 152) = v38;
    *(a5 + 160) = 6;
    *(a5 + 162) = v42;
    *(a5 + 166) = WORD2(v42);
    *(a5 + 168) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_1AAD25960@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_1AAD2596C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_1AAD25978@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[1];
  *a2 = result;
  return result;
}

__n128 sub_1AAD25984(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1] = *a1;
  return result;
}

char *sub_1AAD25990(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD45848(0, &qword_1ED9B0660, sub_1AAD458AC, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_1AAD25AB8(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD25990(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1AAD25AD8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v42 = MEMORY[0x1E69E7CC0];
  sub_1AAD25AB8(0, v6, 0);
  result = v42;
  v41 = v4;
  v39 = a2;
  v37 = a1;
  if (v6)
  {
    v10 = a1 + 32;
    v11 = (a2 + 32);
    v12 = v6;
    v13 = v5;
    v14 = v5;
    while (v4)
    {
      if (!v13)
      {
        goto LABEL_24;
      }

      v15 = *v10;
      *&v7 = *v11;
      v16.f64[0] = *(v10 + 16);
      *&v8 = *(v10 + 24);
      v43 = result;
      v18 = *(result + 16);
      v17 = *(result + 24);
      if (v18 >= v17 >> 1)
      {
        v35 = v14;
        v33 = v7;
        v34 = *v10;
        v31 = v8;
        v32 = *(v10 + 16);
        sub_1AAD25AB8((v17 > 1), v18 + 1, 1);
        v8 = v31;
        v16.f64[0] = v32;
        v7 = v33;
        v15 = v34;
        v14 = v35;
        result = v43;
      }

      *&v16.f64[1] = v8;
      *(result + 16) = v18 + 1;
      v19 = (result + 32 * v18);
      --v13;
      v19[2] = vmulq_n_f64(v15, *&v7);
      v19[3] = vmulq_n_f64(v16, *&v7);
      --v4;
      ++v11;
      v10 += 32;
      if (!--v12)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v14 = v5;
LABEL_13:
  if (v41 > v14)
  {
    v20 = v37 + 32;
    v21 = v39 + 32;
    while (v6 < v41)
    {
      v22 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_26;
      }

      if (v14 != v6)
      {
        if (v6 >= v14)
        {
          goto LABEL_27;
        }

        v23 = (v20 + 32 * v6);
        v24 = *(v21 + 8 * v6);
        v26 = *v23;
        v25 = v23[1];
        v44 = result;
        v28 = *(result + 16);
        v27 = *(result + 24);
        if (v28 >= v27 >> 1)
        {
          v30 = v14;
          v38 = v26;
          v40 = *(v21 + 8 * v6);
          v36 = v25;
          sub_1AAD25AB8((v27 > 1), v28 + 1, 1);
          v25 = v36;
          v26 = v38;
          v24 = v40;
          v14 = v30;
          result = v44;
        }

        *(result + 16) = v28 + 1;
        v29 = (result + 32 * v28);
        v29[2] = vmulq_n_f64(v26, v24);
        v29[3] = vmulq_n_f64(v25, v24);
        ++v6;
        if (v22 != v41)
        {
          continue;
        }
      }

      return result;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

float64_t sub_1AAD25CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  v8 = *(a3 + 16);
  v7 = *(a3 + 24);
  v9 = sub_1AAD25AD8(a1, a2);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = (v9 + 32);
    v12 = 0uLL;
    v13 = 0uLL;
    do
    {
      v14 = *v11;
      v15 = v11[1];
      v11 += 2;
      v13 = vaddq_f64(v13, v15);
      v12 = vaddq_f64(v12, v14);
      --v10;
    }

    while (v10);
  }

  else
  {
    v12 = 0uLL;
  }

  v35 = v12;

  if ((*(a3 + 32) & 1) == 0)
  {
    v19.f64[1] = v6;
    v20 = *(a2 + 16);
    if (v20)
    {
      if (v20 > 3)
      {
        v21 = v20 & 0x7FFFFFFFFFFFFFFCLL;
        v25 = (a2 + 48);
        v22 = 0.0;
        v26 = v20 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v22 = v22 + *(v25 - 2) + *(v25 - 1) + *v25 + v25[1];
          v25 += 4;
          v26 -= 4;
        }

        while (v26);
        v23 = v35;
        if (v20 == v21)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v21 = 0;
        v22 = 0.0;
        v23 = v35;
      }

      v27 = v20 - v21;
      v28 = (a2 + 8 * v21 + 32);
      do
      {
        v29 = *v28++;
        v22 = v22 + v29;
        --v27;
      }

      while (v27);
    }

    else
    {
      v22 = 0.0;
      v23 = v35;
    }

LABEL_21:
    v19.f64[0] = v5;
    *&result = *&vaddq_f64(v23, vmulq_n_f64(v19, 1.0 - v22));
    return result;
  }

  if (!(v8 | *&v6 | *&v5 | v7))
  {
    return v35.f64[0];
  }

  v16 = *(a2 + 16);
  if (v16)
  {
    if (v16 > 3)
    {
      v17 = v16 & 0x7FFFFFFFFFFFFFFCLL;
      v30 = (a2 + 48);
      v18 = 0.0;
      v31 = v16 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v18 = v18 + *(v30 - 2) + *(v30 - 1) + *v30 + v30[1];
        v30 += 4;
        v31 -= 4;
      }

      while (v31);
      if (v16 == v17)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v17 = 0;
      v18 = 0.0;
    }

    v32 = v16 - v17;
    v33 = (a2 + 8 * v17 + 32);
    do
    {
      v34 = *v33++;
      v18 = v18 + v34;
      --v32;
    }

    while (v32);
  }

  else
  {
    v18 = 0.0;
  }

LABEL_28:
  *&result = *&vmulq_n_f64(v35, 1.0 / v18);
  return result;
}

unint64_t sub_1AAD25F24()
{
  result = qword_1ED9B2C08;
  if (!qword_1ED9B2C08)
  {
    sub_1AAD00D70(255, &qword_1ED9B2C00, sub_1AAD0D614, sub_1AAD0D514, MEMORY[0x1E697F960]);
    sub_1AAD0D65C();
    sub_1AAD12568();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B2C08);
  }

  return result;
}

void sub_1AAD26050()
{
  if (!qword_1ED9B2C58)
  {
    sub_1AAD16B84(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED9B2C58);
    }
  }
}

unint64_t sub_1AAD260B4()
{
  result = qword_1ED9B4530;
  if (!qword_1ED9B4530)
  {
    sub_1AAD26008(255);
    sub_1AACDCA40(&qword_1ED9B6180, type metadata accessor for SgCanvasRenderer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B4530);
  }

  return result;
}

unint64_t sub_1AAD26164()
{
  result = qword_1ED9B2C68;
  if (!qword_1ED9B2C68)
  {
    sub_1AAD16B84(255);
    sub_1AACBE068(&unk_1ED9B4510, sub_1AAD25FE8, sub_1AAD260B4, sub_1AACCFB08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B2C68);
  }

  return result;
}

char *sub_1AAD26228(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD45848(0, &qword_1ED9B0668, sub_1AAD459C8, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1AAD26350(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD26228(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1AAD26370(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v33 = MEMORY[0x1E69E7CC0];
  sub_1AAD26350(0, v6, 0);
  result = v33;
  v32 = v4;
  v30 = a2;
  v28 = a1;
  if (v6)
  {
    v9 = (a1 + 32);
    v10 = (a2 + 32);
    v11 = v6;
    v12 = v5;
    v13 = v5;
    while (v4)
    {
      if (!v12)
      {
        goto LABEL_24;
      }

      v14 = *v10;
      v15 = *v9;
      v16 = v9[1];
      v34 = result;
      v18 = *(result + 16);
      v17 = *(result + 24);
      if (v18 >= v17 >> 1)
      {
        v27 = v13;
        sub_1AAD26350((v17 > 1), v18 + 1, 1);
        v13 = v27;
        result = v34;
      }

      *&v19 = v14 * v15;
      *(&v19 + 1) = v14 * v16;
      --v12;
      *(result + 16) = v18 + 1;
      *(result + 16 * v18 + 32) = v19;
      --v4;
      ++v10;
      v9 += 2;
      if (!--v11)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v13 = v5;
LABEL_13:
  if (v32 > v13)
  {
    v20 = v28 + 32;
    v21 = v30 + 32;
    while (v6 < v32)
    {
      v22 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_26;
      }

      if (v13 != v6)
      {
        if (v6 >= v13)
        {
          goto LABEL_27;
        }

        v23 = *(v20 + 16 * v6);
        *&v7 = *(v21 + 8 * v6);
        v35 = result;
        v25 = *(result + 16);
        v24 = *(result + 24);
        if (v25 >= v24 >> 1)
        {
          v26 = v13;
          v29 = v7;
          v31 = *(v20 + 16 * v6);
          sub_1AAD26350((v24 > 1), v25 + 1, 1);
          v7 = v29;
          v23 = v31;
          v13 = v26;
          result = v35;
        }

        *(result + 16) = v25 + 1;
        *(result + 16 * v25 + 32) = vmulq_n_f64(v23, *&v7);
        ++v6;
        if (v22 != v32)
        {
          continue;
        }
      }

      return result;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

double sub_1AAD2656C()
{
  swift_getKeyPath();
  swift_getAtKeyPath();

  swift_getKeyPath();
  swift_getAtKeyPath();

  swift_getKeyPath();
  swift_getAtKeyPath();

  swift_getKeyPath();
  swift_getAtKeyPath();

  return v1;
}

double sub_1AAD26684@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_1AAD26690(double *a1, void *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_1AAD2669C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

double sub_1AAD266A8(double *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 8) = *a1;
  return result;
}

double sub_1AAD266B4@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 16);
  *a2 = result;
  return result;
}

double sub_1AAD266C0(double *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 16) = *a1;
  return result;
}

double sub_1AAD266CC@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 24);
  *a2 = result;
  return result;
}

double sub_1AAD266D8(double *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 24) = *a1;
  return result;
}

uint64_t sub_1AAD266E4()
{

  return swift_deallocClassInstance();
}

void sub_1AAD26724(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void sub_1AAD26778(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t sub_1AAD267CC()
{
  result = qword_1ED9B2770;
  if (!qword_1ED9B2770)
  {
    sub_1AAED9FD0(255, &qword_1ED9B1720, MEMORY[0x1E6981910], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B2770);
  }

  return result;
}

unint64_t sub_1AAD26870(uint64_t a1, uint64_t a2, char a3)
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
      sub_1AAD269BC(v14, a3 & 1);
      result = sub_1AACC9B78(a2);
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
      sub_1AAD99C04();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
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

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_1AAD269BC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1AAD9ACC4();
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
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
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

    if ((a2 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
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

void *sub_1AAD26C20(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1AAD26C98();
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void sub_1AAD26C98()
{
  if (!qword_1ED9B1680)
  {
    sub_1AAD0D184(255, &qword_1ED9B2890);
    v0 = sub_1AAF90484();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B1680);
    }
  }
}

void *sub_1AAD26D10(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
      v18 = *(*(a4 + 56) + v17);
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + v17);
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

char *sub_1AAD26E68(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD469FC(0, &qword_1ED9B16A0, &type metadata for SgNode.ViewContent, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AAD26F8C(char *a1, int64_t a2, char a3)
{
  result = sub_1AAD26E68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1AAD26FAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1AAD26FF4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1AAD2705C()
{
  if (sub_1AAF8C1AC(2, 26, 0, 0))
  {
    sub_1AAF8E604();

    return sub_1AAF8DF74();
  }

  else
  {
    sub_1AAF8E034();
    swift_getWitnessTable();
    sub_1AAF8E4E4();
    sub_1AAF8DF74();
    sub_1AAF8FE74();
    swift_getWitnessTable();
    sub_1AAF8E034();
    swift_getWitnessTable();
    sub_1AAF8E4E4();
    return sub_1AAF8DF74();
  }
}

uint64_t sub_1AAD271C0()
{
  if (sub_1AAF8C1AC(2, 26, 0, 0))
  {
    sub_1AAF8E604();
    sub_1AAF8DF74();
  }

  else
  {
    sub_1AAF8E034();
    swift_getWitnessTable();
    sub_1AAF8E4E4();
    sub_1AAF8DF74();
    sub_1AAF8FE74();
    swift_getWitnessTable();
    sub_1AAF8E034();
    swift_getWitnessTable();
    sub_1AAF8E4E4();
    sub_1AAF8DF74();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t getEnumTagSinglePayload for MakeCanonicalScale3D(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AAD273E0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for _Chart3DContentInputs();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[13];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for _Chart3DContentOutputs();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[14];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[15]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_1AAD274E8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for _Chart3DContentInputs();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[13];
  }

  else
  {
    result = type metadata accessor for _Chart3DContentOutputs();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[15]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[14];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1AAD27600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for BuilderTuple();
  v6 = sub_1AAF8D954();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for _Chart3DContentInputs();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 44);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 52));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1AAD2771C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for BuilderTuple();
  v8 = sub_1AAF8D954();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for _Chart3DContentInputs();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 52)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 44);
  }

  return v11(v12, a2, a2, v10);
}

__n128 sub_1AAD27844(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_1AAD27860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for _Chart3DContentInputs();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 68);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 72));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1AAD27920(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for _Chart3DContentInputs();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 68);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 72)) = (a2 - 1);
  }

  return result;
}

__n128 sub_1AAD27A28@<Q0>(uint64_t a1@<X8>)
{
  sub_1AAD594B0();
  sub_1AAF8E144();
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  result = v4;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

double sub_1AAD27B14@<D0>(double *a1@<X8>)
{
  sub_1AAD593B4();
  sub_1AAF8E144();
  result = v3;
  *a1 = v3;
  return result;
}

double sub_1AAD27BF4@<D0>(uint64_t a1@<X8>)
{
  sub_1AAD592B8();
  sub_1AAF8E144();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

float sub_1AAD27CA0@<S0>(float *a1@<X8>)
{
  sub_1AAD59264();
  sub_1AAF8E144();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1AAD27D3C(uint64_t a1)
{
  sub_1AAD59558();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AAD27EC0()
{
  sub_1AAF8DF74();
  v1 = sub_1AAF8D954();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

__n128 sub_1AAD28010@<Q0>(__n128 *a1@<X8>)
{
  sub_1AAD66584();
  sub_1AAF8E144();
  result = v3;
  a1[1].n128_u64[0] = v4;
  a1[1].n128_u64[1] = v5;
  *a1 = v3;
  return result;
}

uint64_t sub_1AAD280BC@<X0>(_BYTE *a1@<X8>)
{
  sub_1AAD66530();
  result = sub_1AAF8E144();
  *a1 = v3;
  return result;
}

uint64_t sub_1AAD28158@<X0>(_BYTE *a1@<X8>)
{
  sub_1AAD664DC();
  result = sub_1AAF8E144();
  *a1 = v3;
  return result;
}

uint64_t sub_1AAD281F4()
{
  sub_1AAF8DF74();
  sub_1AAD64D3C();
  return swift_getWitnessTable();
}

void sub_1AAD282BC(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t sub_1AAD282CC()
{
  sub_1AAD65B98(0, &qword_1EB423998, sub_1AAD64D3C, &type metadata for Chart3DPoseModifer, MEMORY[0x1E697FDE8]);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 144, v3 | 0xF);
}

uint64_t sub_1AAD28430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AAD6EA44();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1AAD2856C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AAD6EEF4(&qword_1EB423BC8, sub_1AAD58FE8, sub_1AAD6EEAC);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1AAD28624()
{
  sub_1AAD6EDD8(255, &qword_1EB423BC0, sub_1AAD58FE8, type metadata accessor for _EnvironmentKeyWritingChart3DContentModifier);
  sub_1AAF8DF74();
  return swift_getWitnessTable();
}

uint64_t sub_1AAD286DC()
{
  sub_1AAD6F7D4(255, &qword_1EB423BE0);
  sub_1AAF8DF74();
  return swift_getWitnessTable();
}

uint64_t sub_1AAD2875C()
{
  sub_1AAD6F770(255, &qword_1EB423BE8, sub_1AAD6F73C, type metadata accessor for _EnvironmentKeyWritingChart3DContentModifier);
  sub_1AAF8DF74();
  return swift_getWitnessTable();
}

uint64_t sub_1AAD287F8()
{
  sub_1AAD6F7D4(255, &qword_1EB423BF0);
  sub_1AAF8DF74();
  return swift_getWitnessTable();
}

uint64_t sub_1AAD28878()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for Chart3D() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(*(v1 - 8) + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AAD2894C()
{
  type metadata accessor for Chart3DRenderer();
  sub_1AAD70150();
  sub_1AAF8DF74();
  swift_getWitnessTable();
  sub_1AAD72A1C(qword_1EB423C10, sub_1AAD70150);
  swift_getWitnessTable();
  sub_1AAF8DC24();
  return swift_getWitnessTable();
}

double sub_1AAD28A50@<D0>(_OWORD *a1@<X8>)
{
  sub_1AAD65B44();
  sub_1AAF8E144();
  result = *&v3;
  *a1 = v3;
  return result;
}

__n128 sub_1AAD28AF0@<Q0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1AAD6F920(*a2, *a1, v6);
  v4 = v6[3];
  *(a3 + 32) = v6[2];
  *(a3 + 48) = v4;
  *(a3 + 64) = v7;
  result = v6[1];
  *a3 = v6[0];
  *(a3 + 16) = result;
  return result;
}

uint64_t sub_1AAD28BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AAF8F194();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1AAF8E3C4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1AAD28C9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1AAF8F194();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1AAF8E3C4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1AAD28D98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AAF8E4B4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AAD28E04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AAF8E4B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AAD28EA8()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AAD28F00()
{
  swift_unknownObjectRelease();
  sub_1AACB634C((v0 + 4));
  if (v0[31])
  {
    sub_1AACB634C((v0 + 28));
  }

  if (v0[36])
  {
    sub_1AACB634C((v0 + 33));
  }

  if (v0[41])
  {
    sub_1AACB634C((v0 + 38));
  }

  if (v0[45])
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 385, 15);
}

uint64_t sub_1AAD28F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1AAD2900C()
{
  swift_getWitnessTable();

  return sub_1AAF8FAE4();
}

uint64_t sub_1AAD29090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1AAD2911C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

float sub_1AAD29154@<S0>(void *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = v3 == 1;
    v5 = a1 + 19;
    v6 = (a1 + 9);
    v7 = a1 + 8;
    v8 = a1 + 7;
    v9 = a1 + 6;
    v10 = a1 + 29;
    v11 = (a1 + 14);
    v12 = a1 + 13;
    v13 = a1 + 12;
    v14 = a1 + 11;
    if (v3 == 1)
    {
      a1 += 5;
    }

    else
    {
      a1 += 10;
    }

    if (v3 == 1)
    {
      v15 = v9;
    }

    else
    {
      v15 = v14;
    }

    if (!v4)
    {
      v8 = v13;
      v7 = v12;
      v6 = v11;
      v5 = v10;
    }
  }

  else
  {
    v15 = a1 + 1;
    v8 = a1 + 2;
    v7 = a1 + 3;
    v6 = (a1 + 4);
    v5 = a1 + 9;
  }

  result = *v5;
  v17 = *v6;
  v18 = *v7;
  v19 = *v8;
  v20 = *v15;
  *a3 = *a1;
  *(a3 + 8) = v20;
  *(a3 + 16) = v19;
  *(a3 + 24) = v18;
  *(a3 + 32) = v17;
  *(a3 + 36) = result;
  return result;
}

uint64_t sub_1AAD29208@<X0>(uint64_t result@<X0>, double *a2@<X8>)
{
  v2 = *(result + 16);
  v3 = *(result + 24);
  if (v2 > v3)
  {
    __break(1u);
  }

  else
  {
    *a2 = v2;
    a2[1] = v3;
  }

  return result;
}

uint64_t sub_1AAD29220@<X0>(uint64_t result@<X0>, double *a2@<X8>)
{
  v2 = *(result + 16);
  v3 = *(result + 24);
  v4 = vabdd_f64(v3, v2) * 0.04;
  v5 = v2 + v4;
  v6 = v3 - v4;
  if (v5 > v6)
  {
    v5 = (v5 + v6) * 0.5;
    v6 = v5;
  }

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_1AAD29268()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

double sub_1AAD292A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(*a1 + 16))
  {
    sub_1AAD81760(*a1 + 32, a2);
  }

  else
  {
    *(a2 + 112) = 0;
    result = 0.0;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t sub_1AAD29328()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AAD29360()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AAD293A4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AAD293F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AAD2943C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AAD294A4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AAD294E8()
{
  MEMORY[0x1AC59A1D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AAD29520()
{
  sub_1AADCD1F4(0, &qword_1EB424B50, sub_1AADCD25C, &type metadata for MetalViewRepresentable, MEMORY[0x1E697CA58]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1AAD2962C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AAD29674()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1AAD296EC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AAD29754()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AAD2979C()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AAD297E0()
{
  sub_1AADCDCE8();
  sub_1AAF8DF74();
  sub_1AADCDD38();
  return swift_getWitnessTable();
}

uint64_t sub_1AAD298A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AAD298D8()
{

  if (!v0[330] && (v0[329] != 1 || v0[328] <= 2u))
  {
    sub_1AACB634C((v0 + 288));
  }

  return MEMORY[0x1EEE6BDD0](v0, 331, 7);
}

uint64_t sub_1AAD29940(uint64_t a1, uint64_t a2)
{
  sub_1AACAF184(0, &qword_1ED9B63B8, type metadata accessor for AxisMarkValues.Storage, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AAD299DC(uint64_t a1, uint64_t a2)
{
  sub_1AACAF184(0, &qword_1ED9B63B8, type metadata accessor for AxisMarkValues.Storage, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AAD29A80()
{
  sub_1AAF8DF74();
  sub_1AACAA2F8();
  return swift_getWitnessTable();
}

uint64_t sub_1AAD29AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AACAF1E8(0, &qword_1ED9B63B8, type metadata accessor for AxisMarkValues.Storage, MEMORY[0x1E69E6720]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

void sub_1AAD29BE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1AACAF1E8(0, &qword_1ED9B63B8, type metadata accessor for AxisMarkValues.Storage, MEMORY[0x1E69E6720]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 24) = a2;
  }
}

uint64_t sub_1AAD29CD8()
{
  sub_1AAD04750(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AAD29D2C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AAD29DB4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1AAF8CB94();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_1AAF8CA64();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_1AAF8CBA4();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1AAD29F08(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1AAF8CB94();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1AAF8CA64();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      result = sub_1AAF8CBA4();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1AAD2A070(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateBins.Storage(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AAD2A0DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateBins.Storage(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AAD2A1B0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1AAD2A1BC()
{
  if (*(v0 + 40))
  {

    if (*(v0 + 72) != 1)
    {
    }

    if (*(v0 + 120) != 1)
    {
    }

    if (*(v0 + 168) != 1)
    {
    }

    if (*(v0 + 216) != 1)
    {
    }

    if (*(v0 + 264) != 1)
    {
    }

    if (*(v0 + 312) != 1)
    {
    }

    if (*(v0 + 360) != 1)
    {
    }

    if (*(v0 + 408) != 1)
    {
    }

    if (*(v0 + 456) != 1)
    {
    }

    if (*(v0 + 504) != 1)
    {
    }

    v1 = *(v0 + 560);
    if (v1)
    {
      if (v1 == 1)
      {
        goto LABEL_33;
      }

      sub_1AACB634C(v0 + 536);
    }

    if (*(v0 + 616))
    {
      sub_1AACB634C(v0 + 592);
    }

    if (*(v0 + 672))
    {
      sub_1AACB634C(v0 + 648);
    }

    if (*(v0 + 728))
    {
      sub_1AACB634C(v0 + 704);
    }

    if (*(v0 + 808))
    {
      sub_1AACB634C(v0 + 784);
    }
  }

LABEL_33:

  v2 = *(v0 + 960);
  if (v2 != 255)
  {
    sub_1AADF9B38(*(v0 + 944), *(v0 + 952), v2);
  }

  if (*(v0 + 968))
  {
  }

  v3 = *(v0 + 1000);
  if (v3 != 255)
  {
    sub_1AACAA2EC(*(v0 + 984), *(v0 + 992), v3 & 1);
  }

  if (*(v0 + 1032) != 1)
  {
    sub_1AACAA2EC(*(v0 + 1008), *(v0 + 1016), *(v0 + 1024));
  }

  return MEMORY[0x1EEE6BDD0](v0, 1080, 7);
}

uint64_t sub_1AAD2A3FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AAD2A434()
{
  v1 = sub_1AAF8DA74();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 48, v3 | 7);
}

uint64_t sub_1AAD2A4F8()
{
  v1 = type metadata accessor for AGChartRendererContent(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  if (*(v0 + 40))
  {

    if (*(v0 + 72) != 1)
    {
    }

    if (*(v0 + 120) != 1)
    {
    }

    if (*(v0 + 168) != 1)
    {
    }

    if (*(v0 + 216) != 1)
    {
    }

    if (*(v0 + 264) != 1)
    {
    }

    if (*(v0 + 312) != 1)
    {
    }

    if (*(v0 + 360) != 1)
    {
    }

    if (*(v0 + 408) != 1)
    {
    }

    if (*(v0 + 456) != 1)
    {
    }

    if (*(v0 + 504) != 1)
    {
    }

    v4 = *(v0 + 560);
    if (v4)
    {
      if (v4 == 1)
      {
        goto LABEL_33;
      }

      sub_1AACB634C(v0 + 536);
    }

    if (*(v0 + 616))
    {
      sub_1AACB634C(v0 + 592);
    }

    if (*(v0 + 672))
    {
      sub_1AACB634C(v0 + 648);
    }

    if (*(v0 + 728))
    {
      sub_1AACB634C(v0 + 704);
    }

    if (*(v0 + 808))
    {
      sub_1AACB634C(v0 + 784);
    }
  }

LABEL_33:

  v5 = *(v0 + 960);
  if (v5 != 255)
  {
    sub_1AADF9B38(*(v0 + 944), *(v0 + 952), v5);
  }

  if (*(v0 + 968))
  {
  }

  v6 = *(v0 + 1000);
  if (v6 != 255)
  {
    sub_1AACAA2EC(*(v0 + 984), *(v0 + 992), v6 & 1);
  }

  v7 = (v2 + 1080) & ~v2;
  if (*(v0 + 1032) != 1)
  {
    sub_1AACAA2EC(*(v0 + 1008), *(v0 + 1016), *(v0 + 1024));
  }

  v8 = v0 + v7;
  type metadata accessor for CollectedChartContent(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
    {
      goto LABEL_47;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_48;
      }

LABEL_47:

      goto LABEL_48;
    }

    sub_1AADF9F2C(*(v8 + 16), *(v8 + 24), *(v8 + 32), *(v8 + 40), *(v8 + 48), *(v8 + 56), *(v8 + 64), *(v8 + 72), *(v8 + 80), *(v8 + 88), *(v8 + 96), *(v8 + 104), *(v8 + 112), *(v8 + 120), *(v8 + 128), *(v8 + 136), *(v8 + 144), *(v8 + 152));
    sub_1AADF9F2C(*(v8 + 160), *(v8 + 168), *(v8 + 176), *(v8 + 184), *(v8 + 192), *(v8 + 200), *(v8 + 208), *(v8 + 216), *(v8 + 224), *(v8 + 232), *(v8 + 240), *(v8 + 248), *(v8 + 256), *(v8 + 264), *(v8 + 272), *(v8 + 280), *(v8 + 288), *(v8 + 296));
    if (*(v8 + 320) != 1)
    {
    }

    v15 = HIBYTE(*(v8 + 400));
    if (v15 <= 0xFE)
    {
      switch(v15)
      {
        case 2u:
          sub_1AAD04750(*(v8 + 344), *(v8 + 352), *(v8 + 360));

          sub_1AADB3124(*(v8 + 376), *(v8 + 384), *(v8 + 392), *(v8 + 400));
          break;
        case 1u:
          sub_1AACB634C(v8 + 336);
          break;
        case 0u:

          break;
      }
    }

    v16 = HIBYTE(*(v8 + 488));
    if (v16 <= 0xFE)
    {
      switch(v16)
      {
        case 2u:
          sub_1AAD04750(*(v8 + 432), *(v8 + 440), *(v8 + 448));

          sub_1AADB3124(*(v8 + 464), *(v8 + 472), *(v8 + 480), *(v8 + 488));
          break;
        case 1u:

          break;
        case 0u:
          sub_1AACB634C(v8 + 424);
          break;
      }
    }

    v17 = *(v8 + 520);
    if (v17 >> 1 != 0xFFFFFFFF || (*(v8 + 560) & 0x7C) != 0)
    {
      sub_1AADFA10C(*(v8 + 496), *(v8 + 504), *(v8 + 512), v17, *(v8 + 528), *(v8 + 536), *(v8 + 544), *(v8 + 552), *(v8 + 560));
    }

    if ((~*(v8 + 632) & 0x7C) != 0)
    {
      sub_1AADFA1A8(*(v8 + 568), *(v8 + 576), *(v8 + 584), *(v8 + 592), *(v8 + 600), *(v8 + 608), *(v8 + 616), *(v8 + 624), *(v8 + 632));
    }

    v18 = type metadata accessor for CollectedChartContent.Primitive(0);
    v19 = *(v18 + 72);
    v20 = sub_1AAF8E244();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(v8 + v19, 1, v20))
    {
      (*(v21 + 8))(v8 + v19, v20);
    }

    v22 = v8 + *(v18 + 84);
    v23 = *(v22 + 24);
    if (v23)
    {
      if (v23 == 1)
      {
        goto LABEL_48;
      }

      sub_1AAD04750(*v22, *(v22 + 8), *(v22 + 16));
    }

    if (*(v22 + 56))
    {
      sub_1AAD04750(*(v22 + 32), *(v22 + 40), *(v22 + 48));
    }
  }

LABEL_48:

  v10 = v8 + *(v1 + 28);

  if (*(v10 + 176))
  {

    if (*(v10 + 208))
    {
    }

    v11 = *(v10 + 240);
    if (v11 != 255)
    {
      sub_1AACE40AC(*(v10 + 232), v11 & 1);
    }
  }

  if (*(v10 + 280))
  {

    if (*(v10 + 312))
    {
    }

    v12 = *(v10 + 344);
    if (v12 != 255)
    {
      sub_1AACE40AC(*(v10 + 336), v12 & 1);
    }
  }

  v13 = *(v10 + 400);
  if (v13 != 255)
  {
    sub_1AADF9B38(*(v10 + 384), *(v10 + 392), v13);
  }

  if (*(v10 + 408))
  {
  }

  v14 = *(v10 + 440);
  if (v14 != 255)
  {
    sub_1AACAA2EC(*(v10 + 424), *(v10 + 432), v14 & 1);
  }

  if (*(v10 + 472) != 1)
  {
    sub_1AACAA2EC(*(v10 + 448), *(v10 + 456), *(v10 + 464));
  }

  return MEMORY[0x1EEE6BDD0](v0, v7 + v3, v2 | 7);
}

uint64_t sub_1AAD2AE0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AAF8E704();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for ChartProxy();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1AAD2AEFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1AAF8E704();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for ChartProxy();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1AAD2AFF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MajorValueAlignmentStorage(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AAD2B064(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MajorValueAlignmentStorage(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AAD2B0D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ValueAlignment(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for MajorValueAlignmentStorage(0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 32));
      if (v14 >= 3)
      {
        return v14 - 2;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1AAD2B1DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ValueAlignment(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for MajorValueAlignmentStorage(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1AAD2B2E4()
{
  sub_1AACCB8F0(255, &qword_1ED9ADA20, &type metadata for ChartScrollZoomConfiguration, MEMORY[0x1E6980B20]);
  sub_1AAF8DF74();
  sub_1AAE04248(&qword_1ED9ADA28, &qword_1ED9ADA20, &type metadata for ChartScrollZoomConfiguration);
  return swift_getWitnessTable();
}

uint64_t sub_1AAD2B3CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 252)
  {
    v4 = *(a1 + 1);
    if (v4 <= 3)
    {
      v5 = 3;
    }

    else
    {
      v5 = *(a1 + 1);
    }

    v6 = v5 - 3;
    if (v4 >= 3)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1AACCF570(0, &qword_1ED9B2F30, sub_1AACCB9E0, MEMORY[0x1E697DCC0]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1AAD2B4B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 252)
  {
    *(result + 1) = a2 + 3;
  }

  else
  {
    sub_1AACCF570(0, &qword_1ED9B2F30, sub_1AACCB9E0, MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1AAD2B580(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ValueAlignment(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AAD2B5EC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for ValueAlignment(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1AAD2B774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 72);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    sub_1AACAE0E8(0, &qword_1ED9B5558, MEMORY[0x1E697F488]);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 44);

      return v12(v13, a2, v11);
    }

    else
    {
      sub_1AACAE0E8(0, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
      v15 = v14;
      v16 = *(*(v14 - 8) + 48);
      v17 = a1 + *(a3 + 56);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t sub_1AAD2B8DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 72) = a2;
  }

  else
  {
    sub_1AACAE0E8(0, &qword_1ED9B5558, MEMORY[0x1E697F488]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1AACAE0E8(0, &qword_1ED9B54F8, MEMORY[0x1E6981E38]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 56);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1AAD2BA88@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  result = sub_1AAE0CAE0(*(a1 + a2 - 24));
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

__n128 sub_1AAD2BAD8(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1AAD2BC70()
{
  sub_1AACE56EC(v0[7], v0[8], v0[9]);

  return MEMORY[0x1EEE6BDD0](v0, 192, 7);
}

uint64_t sub_1AAD2BCB0()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AAD2BD00()
{

  if (*(v0 + 56))
  {
    sub_1AACB634C(v0 + 32);
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AAD2BD68()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AAD2C0B8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1AAD2C0D4(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a4 != 1)
  {
    sub_1AADA6198(result, a2, a3, a4);

    return sub_1AAD2C0B8(a5, a6, a7);
  }

  return result;
}

uint64_t sub_1AAD2C188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for BuilderPair();
  v6 = sub_1AAF8D954();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for _ChartContentInputs(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 52);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 60));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1AAD2C2A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for BuilderPair();
  v8 = sub_1AAF8D954();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for _ChartContentInputs(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 60)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 52);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1AAD2C3BC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for _ChartContentInputs(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[13];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for _ChartContentOutputs(0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[14];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[15]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_1AAD2C4C4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for _ChartContentInputs(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[13];
  }

  else
  {
    result = type metadata accessor for _ChartContentOutputs(0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[15]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[14];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1AAD2C5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for _ChartContentCollectInputs(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1AAD2C688(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for _ChartContentCollectInputs(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1AAD2C744()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AAD2C780()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}