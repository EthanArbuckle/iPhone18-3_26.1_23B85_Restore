uint64_t sub_1D95AD630(uint64_t result, uint64_t a2, unsigned __int8 a3, unint64_t a4, char a5)
{
  v10 = result;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_53;
  }

  if (a5)
  {
    sub_1D95ACDCC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      result = sub_1D95ADCF4();
      goto LABEL_53;
    }

    sub_1D95AE49C(v11 + 1);
  }

  v13 = *v5;
  v14 = *(*v5 + 40);
  sub_1D95C051C();
  if (a3 <= 0xFCu)
  {
    if (a3 == 251)
    {
      v15 = 5;
      goto LABEL_19;
    }

    if (a3 == 252)
    {
      v15 = 4;
      goto LABEL_19;
    }
  }

  else
  {
    switch(a3)
    {
      case 0xFDu:
        v15 = 3;
        goto LABEL_19;
      case 0xFEu:
        v15 = 1;
        goto LABEL_19;
      case 0xFFu:
        v15 = 0;
LABEL_19:
        MEMORY[0x1DA732B80](v15);
        goto LABEL_20;
    }
  }

  MEMORY[0x1DA732B80](2);
  if (a3)
  {
    MEMORY[0x1DA732B80](1);
    sub_1D95BFE1C();
  }

  else
  {
    MEMORY[0x1DA732B80](0);
    MEMORY[0x1DA732BA0](v10);
  }

LABEL_20:
  v5 = &v31;
  result = sub_1D95C055C();
  v16 = -1 << *(v13 + 32);
  a4 = result & ~v16;
  if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v17 = ~v16;
    do
    {
      v18 = *(v13 + 48) + 24 * a4;
      v5 = *v18;
      v6 = *(v18 + 8);
      LODWORD(v18) = *(v18 + 16);
      if (v18 <= 252)
      {
        if (v18 == 251)
        {
          if (a3 == 251)
          {
            goto LABEL_59;
          }

          sub_1D95B19D0(v10, a2, a3);
          v19 = -5;
        }

        else if (v18 == 252)
        {
          if (a3 == 252)
          {
            goto LABEL_59;
          }

          sub_1D95B19D0(v10, a2, a3);
          v19 = -4;
        }

        else
        {
          if (a3 <= 0xFAu)
          {
            if ((v18 & 1) == 0)
            {
              v23 = v18;
              sub_1D95B19D0(v10, a2, a3);
              sub_1D95B19D0(v5, v6, v23);
              v24 = v23;
              v21 = 24;
              sub_1D95B19E8(v5, v6, v24);
              result = sub_1D95B19E8(v10, a2, a3);
              if ((a3 & 1) == 0 && v5 == v10)
              {
                goto LABEL_61;
              }

              goto LABEL_40;
            }

            if (a3)
            {
              v21 = v18;
              if (v5 == v10 && v6 == a2)
              {
                goto LABEL_62;
              }

              v29 = sub_1D95C041C();
              sub_1D95B19D0(v10, a2, a3);
              sub_1D95B19D0(v5, v6, v21);
              sub_1D95B19E8(v5, v6, v21);
              result = sub_1D95B19E8(v10, a2, a3);
              v21 = 24;
              if (v29)
              {
                goto LABEL_61;
              }

              goto LABEL_40;
            }
          }

          v20 = v18;
          sub_1D95B19D0(v10, a2, a3);
          sub_1D95B19D0(v5, v6, v20);
          v19 = v20;
        }
      }

      else if (v18 == 253)
      {
        if (a3 == 253)
        {
          goto LABEL_59;
        }

        sub_1D95B19D0(v10, a2, a3);
        v19 = -3;
      }

      else if (v18 == 254)
      {
        if (a3 == 254)
        {
          goto LABEL_59;
        }

        sub_1D95B19D0(v10, a2, a3);
        v19 = -2;
      }

      else
      {
        if (a3 == 0xFF)
        {
          goto LABEL_59;
        }

        sub_1D95B19D0(v10, a2, a3);
        v19 = -1;
      }

      sub_1D95B19E8(v5, v6, v19);
      result = sub_1D95B19E8(v10, a2, a3);
LABEL_40:
      a4 = (a4 + 1) & v17;
    }

    while (((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_53:
  v18 = *v30;
  *(*v30 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v25 = *(v18 + 48) + 24 * a4;
  *v25 = v10;
  *(v25 + 8) = a2;
  *(v25 + 16) = a3;
  v26 = *(v18 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
LABEL_59:
    v21 = v18;
    a3 = v18;
    while (1)
    {
      sub_1D95B19E8(v5, v6, v21);
      sub_1D95B19E8(v10, a2, a3);
LABEL_61:
      sub_1D95C04AC();
      __break(1u);
LABEL_62:
      sub_1D95B19D0(v10, a2, a3);
      sub_1D95B19D0(v10, a2, v21);
      v6 = a2;
      v5 = v10;
    }
  }

  *(v18 + 16) = v28;
  return result;
}

void *sub_1D95ADAC8(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v13 = *v4;
  v14 = sub_1D95C016C();
  v15 = v14;
  if (*(v13 + 16))
  {
    v29 = v7;
    result = (v14 + 56);
    v17 = ((1 << *(v15 + 32)) + 63) >> 6;
    if (v15 != v13 || result >= v13 + 56 + 8 * v17)
    {
      result = memmove(result, (v13 + 56), 8 * v17);
    }

    v19 = 0;
    *(v15 + 16) = *(v13 + 16);
    v20 = 1 << *(v13 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v13 + 56);
    v23 = (v20 + 63) >> 6;
    v30 = v9 + 32;
    for (i = v9 + 16; v22; result = (*(v9 + 32))(*(v15 + 48) + v27, v12, v8))
    {
      v24 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v27 = *(v9 + 72) * (v24 | (v19 << 6));
      (*(v9 + 16))(v12, *(v13 + 48) + v27, v8);
    }

    v25 = v19;
    while (1)
    {
      v19 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v19 >= v23)
      {

        v7 = v29;
        goto LABEL_21;
      }

      v26 = *(v13 + 56 + 8 * v19);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v22 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v15;
  }

  return result;
}

void *sub_1D95ADCF4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07AE8, &qword_1D95CD410);
  v2 = *v0;
  v3 = sub_1D95C016C();
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
        result = sub_1D95B19D0(v19, v20, v22);
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

uint64_t sub_1D95ADE5C(uint64_t a1)
{
  v2 = v1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07098, &unk_1D95C9360);
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - v6;
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07B38, &qword_1D95CD458);
  v10 = sub_1D95C017C();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_1D9547F60(&qword_1ECB07B28, &qword_1ECB07098, &unk_1D95C9360);
      result = sub_1D95BFD3C();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1D95AE17C(uint64_t a1)
{
  v2 = v1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07130, &qword_1D95C95F0);
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - v6;
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07B20, &qword_1D95CD450);
  v10 = sub_1D95C017C();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_1D9547F60(&qword_1ECB07B10, &qword_1ECB07130, &qword_1D95C95F0);
      result = sub_1D95BFD3C();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

unint64_t sub_1D95AE49C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07AE8, &qword_1D95CD410);
  result = sub_1D95C017C();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v3 + 56);
    for (i = (v8 + 63) >> 6; v10; result = sub_1D95ACF3C(v16, v17, v18, v6))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_13:
      v15 = *(v3 + 48) + 24 * (v12 | (v7 << 6));
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      sub_1D95B19D0(*v15, v17, v18);
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= i)
      {
        goto LABEL_15;
      }

      v14 = *(v3 + 56 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1D95AE5F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07098, &unk_1D95C9360);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - v8;
  v10 = *v2;
  v11 = *(*v2 + 40);
  sub_1D9547F60(&qword_1ECB07B28, &qword_1ECB07098, &unk_1D95C9360);
  v34 = a1;
  v12 = sub_1D95BFD3C();
  v32 = v10 + 56;
  v33 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v29 = v2;
    v30 = v6;
    v31 = a2;
    v15 = ~v13;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    while (1)
    {
      v20 = v19 * v14;
      v16(v9, *(v33 + 48) + v19 * v14, v5);
      sub_1D9547F60(&qword_1ECB07B30, &qword_1ECB07098, &unk_1D95C9360);
      v21 = sub_1D95BFD5C();
      (*(v17 - 8))(v9, v5);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v32 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v22 = 1;
        v6 = v30;
        a2 = v31;
        return (*(v6 + 56))(a2, v22, 1, v5);
      }
    }

    v23 = v29;
    v24 = *v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v23;
    v35 = *v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D95ADAC8(&qword_1ECB07098, &unk_1D95C9360, &qword_1ECB07B38, &qword_1D95CD458);
      v26 = v35;
    }

    v6 = v30;
    a2 = v31;
    (*(v30 + 32))(v31, *(v26 + 48) + v20, v5);
    sub_1D95AF058(v14, &qword_1ECB07098, &unk_1D95C9360, &qword_1ECB07B28);
    v22 = 0;
    *v23 = v35;
  }

  else
  {
    v22 = 1;
  }

  return (*(v6 + 56))(a2, v22, 1, v5);
}

uint64_t sub_1D95AE8D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07130, &qword_1D95C95F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - v8;
  v10 = *v2;
  v11 = *(*v2 + 40);
  sub_1D9547F60(&qword_1ECB07B10, &qword_1ECB07130, &qword_1D95C95F0);
  v34 = a1;
  v12 = sub_1D95BFD3C();
  v32 = v10 + 56;
  v33 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v29 = v2;
    v30 = v6;
    v31 = a2;
    v15 = ~v13;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    while (1)
    {
      v20 = v19 * v14;
      v16(v9, *(v33 + 48) + v19 * v14, v5);
      sub_1D9547F60(&qword_1ECB07B18, &qword_1ECB07130, &qword_1D95C95F0);
      v21 = sub_1D95BFD5C();
      (*(v17 - 8))(v9, v5);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v32 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v22 = 1;
        v6 = v30;
        a2 = v31;
        return (*(v6 + 56))(a2, v22, 1, v5);
      }
    }

    v23 = v29;
    v24 = *v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v23;
    v35 = *v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D95ADAC8(&qword_1ECB07130, &qword_1D95C95F0, &qword_1ECB07B20, &qword_1D95CD450);
      v26 = v35;
    }

    v6 = v30;
    a2 = v31;
    (*(v30 + 32))(v31, *(v26 + 48) + v20, v5);
    sub_1D95AF058(v14, &qword_1ECB07130, &qword_1D95C95F0, &qword_1ECB07B10);
    v22 = 0;
    *v23 = v35;
  }

  else
  {
    v22 = 1;
  }

  return (*(v6 + 56))(a2, v22, 1, v5);
}

unint64_t sub_1D95AEBB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v31 = *v4;
  v9 = *(*v4 + 40);
  sub_1D95C051C();
  v30 = v4;
  if (a3 <= 0xFCu)
  {
    if (a3 == 251)
    {
      v10 = 5;
      goto LABEL_12;
    }

    if (a3 == 252)
    {
      v10 = 4;
      goto LABEL_12;
    }

LABEL_48:
    MEMORY[0x1DA732B80](2);
    if (a3)
    {
      MEMORY[0x1DA732B80](1);
      sub_1D95BFE1C();
    }

    else
    {
      MEMORY[0x1DA732B80](0);
      MEMORY[0x1DA732BA0](a1);
    }

    goto LABEL_13;
  }

  if (a3 == 253)
  {
    v10 = 3;
    goto LABEL_12;
  }

  if (a3 == 254)
  {
    v10 = 1;
    goto LABEL_12;
  }

  if (a3 != 255)
  {
    goto LABEL_48;
  }

  v10 = 0;
LABEL_12:
  MEMORY[0x1DA732B80](v10);
LABEL_13:
  result = sub_1D95C055C();
  v12 = -1 << *(v31 + 32);
  v13 = result & ~v12;
  if (((*(v31 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_47:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = -6;
    return result;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(v31 + 48) + 24 * v13;
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    if (v18 <= 0xFC)
    {
      if (v18 == 251)
      {
        if (a3 == 251)
        {
          a3 = -5;
          v21 = *v15;
          v22 = *(v15 + 8);
          v23 = -5;
          goto LABEL_56;
        }

        sub_1D95B19D0(a1, a2, a3);
        v19 = -5;
        goto LABEL_33;
      }

      if (v18 == 252)
      {
        if (a3 == 252)
        {
          a3 = -4;
          v21 = *v15;
          v22 = *(v15 + 8);
          v23 = -4;
          goto LABEL_56;
        }

        sub_1D95B19D0(a1, a2, a3);
        v19 = -4;
        goto LABEL_33;
      }
    }

    else
    {
      switch(v18)
      {
        case 0xFDu:
          if (a3 == 253)
          {
            a3 = -3;
            v21 = *v15;
            v22 = *(v15 + 8);
            v23 = -3;
            goto LABEL_56;
          }

          sub_1D95B19D0(a1, a2, a3);
          v19 = -3;
          goto LABEL_33;
        case 0xFEu:
          if (a3 == 254)
          {
            a3 = -2;
            v21 = *v15;
            v22 = *(v15 + 8);
            v23 = -2;
            goto LABEL_56;
          }

          sub_1D95B19D0(a1, a2, a3);
          v19 = -2;
          goto LABEL_33;
        case 0xFFu:
          if (a3 == 0xFF)
          {
            a3 = -1;
            v21 = *v15;
            v22 = *(v15 + 8);
            v23 = -1;
            goto LABEL_56;
          }

          sub_1D95B19D0(a1, a2, a3);
          v19 = -1;
          goto LABEL_33;
      }
    }

    if (a3 > 0xFAu)
    {
      goto LABEL_32;
    }

    if (v18)
    {
      break;
    }

    sub_1D95B19D0(a1, a2, a3);
    sub_1D95B19D0(v16, v17, v18);
    sub_1D95B19E8(v16, v17, v18);
    result = sub_1D95B19E8(a1, a2, a3);
    if ((a3 & 1) == 0 && v16 == a1)
    {
      goto LABEL_57;
    }

LABEL_34:
    v13 = (v13 + 1) & v14;
    if (((*(v31 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  if ((a3 & 1) == 0)
  {
LABEL_32:
    sub_1D95B19D0(a1, a2, a3);
    sub_1D95B19D0(v16, v17, v18);
    v19 = v18;
LABEL_33:
    sub_1D95B19E8(v16, v17, v19);
    result = sub_1D95B19E8(a1, a2, a3);
    goto LABEL_34;
  }

  if (v16 != a1 || v17 != a2)
  {
    v29 = sub_1D95C041C();
    sub_1D95B19D0(a1, a2, a3);
    sub_1D95B19D0(v16, v17, v18);
    sub_1D95B19E8(v16, v17, v18);
    result = sub_1D95B19E8(a1, a2, a3);
    if (v29)
    {
      goto LABEL_57;
    }

    goto LABEL_34;
  }

  sub_1D95B19D0(a1, a2, a3);
  sub_1D95B19D0(a1, a2, v18);
  v21 = a1;
  v22 = a2;
  v23 = v18;
LABEL_56:
  sub_1D95B19E8(v21, v22, v23);
  sub_1D95B19E8(a1, a2, a3);
LABEL_57:
  v24 = *v30;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v30;
  v32 = *v30;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D95ADCF4();
    v26 = v32;
  }

  v27 = *(v26 + 48) + 24 * v13;
  v28 = *(v27 + 16);
  *a4 = *v27;
  *(a4 + 16) = v28;
  result = sub_1D95AF368(v13);
  *v30 = v32;
  return result;
}

uint64_t sub_1D95AF058(int64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v44 = a3;
  v45 = a4;
  v43 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = v7[8];
  result = MEMORY[0x1EEE9AC00](v6);
  v11 = &v39 - v10;
  v12 = *v4;
  v13 = *v4 + 56;
  v14 = -1 << *(*v4 + 32);
  v15 = (a1 + 1) & ~v14;
  if (((1 << v15) & *(v13 + 8 * (v15 >> 6))) != 0)
  {
    v16 = ~v14;
    v17 = *v4;

    v18 = sub_1D95C011C();
    if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) != 0)
    {
      v41 = (v18 + 1) & v16;
      v40 = v7[2];
      v46 = v7[9];
      v42 = v7 + 2;
      v19 = (v7 + 1);
      v20 = v12;
      v21 = v16;
      while (1)
      {
        v22 = v13;
        v23 = v46 * v15;
        v24 = v21;
        v40(v11, *(v20 + 48) + v46 * v15, v6);
        v25 = v20;
        v26 = *(v20 + 40);
        sub_1D9547F60(v45, v43, v44);
        v27 = sub_1D95BFD3C();
        (*v19)(v11, v6);
        v21 = v24;
        v28 = v27 & v24;
        if (a1 >= v41)
        {
          if (v28 < v41 || a1 < v28)
          {
LABEL_4:
            v20 = v25;
            goto LABEL_5;
          }
        }

        else if (v28 < v41 && a1 < v28)
        {
          goto LABEL_4;
        }

        v20 = v25;
        v31 = *(v25 + 48);
        v32 = v46 * a1;
        v33 = v31 + v46 * a1;
        v34 = v31 + v23 + v46;
        if (v46 * a1 < v23 || v33 >= v34)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_24:
          v21 = v24;
          a1 = v15;
          goto LABEL_5;
        }

        a1 = v15;
        if (v32 != v23)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_24;
        }

LABEL_5:
        v15 = (v15 + 1) & v21;
        v13 = v22;
        if (((*(v22 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v20 = v12;
LABEL_28:
    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v20 = v12;
  }

  v36 = *(v20 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v38;
    ++*(v20 + 36);
  }

  return result;
}

unint64_t sub_1D95AF368(unint64_t result)
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

    v9 = sub_1D95C011C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v26 = (v9 + 1) & v7;
      while (1)
      {
        v11 = 24 * v6;
        v12 = *(v3 + 40);
        v13 = *(v3 + 48) + 24 * v6;
        v14 = *v13;
        v15 = *(v13 + 8);
        v16 = *(v13 + 16);
        sub_1D95C051C();
        if (v16 > 252)
        {
          if (v16 == 253)
          {
            v17 = 3;
          }

          else
          {
            v17 = v16 == 254;
          }

          goto LABEL_14;
        }

        if (v16 == 251)
        {
          break;
        }

        if (v16 == 252)
        {
          v17 = 4;
LABEL_14:
          MEMORY[0x1DA732B80](v17);
          goto LABEL_15;
        }

        MEMORY[0x1DA732B80](2);
        if (v16)
        {
          MEMORY[0x1DA732B80](1);
          sub_1D953FCA8(v14, v15, 1);
          sub_1D95BFE1C();
        }

        else
        {
          MEMORY[0x1DA732B80](0);
          MEMORY[0x1DA732BA0](v14);
        }

LABEL_15:
        v18 = sub_1D95C055C();
        sub_1D95B19E8(v14, v15, v16);
        v19 = v18 & v7;
        if (v2 >= v26)
        {
          if (v19 < v26)
          {
            goto LABEL_5;
          }
        }

        else if (v19 >= v26)
        {
          goto LABEL_20;
        }

        if (v2 >= v19)
        {
LABEL_20:
          v20 = *(v3 + 48);
          v21 = v20 + 24 * v2;
          v22 = (v20 + v11);
          if (24 * v2 < v11 || v21 >= v22 + 24 || v2 != v6)
          {
            v10 = *v22;
            *(v21 + 16) = *(v22 + 2);
            *v21 = v10;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
        if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      v17 = 5;
      goto LABEL_14;
    }

LABEL_27:

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1D95AF614(uint64_t result)
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
        sub_1D95B19D0(*v11, v13, v14);
        sub_1D95AEBB4(v12, v13, v14, v15);
        sub_1D95B19E8(v12, v13, v14);
        result = sub_1D95B1A00(v15[0], v15[1], v16);
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

uint64_t sub_1D95AF774(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v92 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    v2 = MEMORY[0x1E69E7CD0];
    goto LABEL_136;
  }

  v72 = 0;
  v4 = a1 + 56;
  v3 = *(a1 + 56);
  v5 = -1 << *(a1 + 32);
  v77 = ~v5;
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v3;
  v8 = (63 - v5) >> 6;
  v85 = (a2 + 56);
  v10 = v87;
  v9 = v88;
  v11 = v89;
  v12 = v90;
  v13 = v91;

  v16 = 0;
  v80 = v14;
  v79 = v4;
  for (i = v8; ; v8 = i)
  {
    if (v7)
    {
      v17 = v16;
    }

    else
    {
      v18 = v16;
      do
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_140;
        }

        if (v19 >= v8)
        {
          v87 = v10;
          v88 = v9;
          v89 = v11;
          v90 = v12;
          v91 = v13;
          goto LABEL_135;
        }

        v7 = *(v4 + 8 * v19);
        ++v18;
      }

      while (!v7);
      v17 = v19;
    }

    v20 = *(v14 + 48) + 24 * (__clz(__rbit64(v7)) | (v17 << 6));
    v9 = *v20;
    v21 = *(v20 + 8);
    v22 = *(v20 + 16);
    v23 = *(v2 + 40);
    sub_1D95C051C();
    v82 = v17;
    if (v22 > 252)
    {
      if (v22 == 253)
      {
        v24 = 3;
      }

      else
      {
        v24 = v22 == 254;
      }

      goto LABEL_22;
    }

    if (v22 == 251)
    {
      v24 = 5;
      goto LABEL_22;
    }

    if (v22 == 252)
    {
      v24 = 4;
LABEL_22:
      MEMORY[0x1DA732B80](v24);
      goto LABEL_23;
    }

    MEMORY[0x1DA732B80](2);
    if (v22)
    {
      MEMORY[0x1DA732B80](1);
      sub_1D95B19D0(v9, v21, v22);
      sub_1D95BFE1C();
    }

    else
    {
      MEMORY[0x1DA732B80](0);
      MEMORY[0x1DA732BA0](v9);
    }

LABEL_23:
    v81 = (v7 - 1) & v7;
    v25 = sub_1D95C055C();
    v26 = -1 << *(v2 + 32);
    v11 = v25 & ~v26;
    v13 = v11 >> 6;
    v7 = 1 << v11;
    if (((1 << v11) & v85[v11 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_1D95B19E8(v9, v21, v22);
    v11 = v77;
    v4 = v79;
    v9 = v79;
    v14 = v80;
    v10 = v80;
    v13 = v81;
    v12 = v82;
    v16 = v82;
    v7 = v81;
  }

  v83 = ~v26;
  while (1)
  {
    v27 = *(v2 + 48) + 24 * v11;
    v29 = *v27;
    v28 = *(v27 + 8);
    v30 = *(v27 + 16);
    if (v30 > 0xFC)
    {
      if (v30 == 253)
      {
        if (v22 != 253)
        {
          sub_1D95B19D0(v9, v21, v22);
          LOBYTE(v30) = -3;
          goto LABEL_42;
        }

        v87 = v80;
        v88 = v79;
        v89 = v77;
        v90 = v82;
        v91 = v81;
        v34 = v29;
        v8 = v80;
        v35 = v28;
        v12 = v79;
        v36 = -3;
      }

      else if (v30 == 254)
      {
        if (v22 != 254)
        {
          sub_1D95B19D0(v9, v21, v22);
          LOBYTE(v30) = -2;
          goto LABEL_42;
        }

        v87 = v80;
        v88 = v79;
        v89 = v77;
        v90 = v82;
        v91 = v81;
        v34 = v29;
        v8 = v80;
        v35 = v28;
        v12 = v79;
        v36 = -2;
      }

      else
      {
        if (v22 != 255)
        {
          sub_1D95B19D0(v9, v21, v22);
          LOBYTE(v30) = -1;
LABEL_42:
          sub_1D95B19E8(v29, v28, v30);
          sub_1D95B19E8(v9, v21, v22);
          goto LABEL_43;
        }

        v87 = v80;
        v88 = v79;
        v89 = v77;
        v90 = v82;
        v91 = v81;
        v34 = v29;
        v8 = v80;
        v35 = v28;
        v12 = v79;
        v36 = -1;
      }

      goto LABEL_66;
    }

    if (v30 == 251)
    {
      if (v22 != 251)
      {
        sub_1D95B19D0(v9, v21, v22);
        LOBYTE(v30) = -5;
        goto LABEL_42;
      }

      v87 = v80;
      v88 = v79;
      v89 = v77;
      v90 = v82;
      v91 = v81;
      v34 = v29;
      v8 = v80;
      v35 = v28;
      v12 = v79;
      v36 = -5;
      goto LABEL_66;
    }

    if (v30 == 252)
    {
      if (v22 != 252)
      {
        sub_1D95B19D0(v9, v21, v22);
        LOBYTE(v30) = -4;
        goto LABEL_42;
      }

      v87 = v80;
      v88 = v79;
      v89 = v77;
      v90 = v82;
      v91 = v81;
      v34 = v29;
      v8 = v80;
      v35 = v28;
      v12 = v79;
      v36 = -4;
LABEL_66:
      sub_1D95B19E8(v34, v35, v36);
      goto LABEL_67;
    }

    if (v22 > 0xFA)
    {
      goto LABEL_41;
    }

    if ((v30 & 1) == 0)
    {
      break;
    }

    if ((v22 & 1) == 0)
    {
LABEL_41:
      sub_1D95B19D0(v9, v21, v22);
      sub_1D95B19D0(v29, v28, v30);
      goto LABEL_42;
    }

    v31 = v29 == v9 && v28 == v21;
    if (v31)
    {
      v8 = v80;
      v12 = v79;
      v87 = v80;
      v88 = v79;
      v89 = v77;
      v90 = v82;
      v91 = v81;
      sub_1D953FCA8(v9, v21, 1);
      v34 = v9;
      v35 = v21;
      v36 = v30;
      goto LABEL_66;
    }

    v32 = *v27;
    v33 = *(v27 + 8);
    LODWORD(v76) = sub_1D95C041C();
    sub_1D95B19D0(v9, v21, v22);
    sub_1D95B19D0(v29, v28, v30);
    sub_1D95B19E8(v29, v28, v30);
    sub_1D95B19E8(v9, v21, v22);
    if (v76)
    {
      goto LABEL_137;
    }

LABEL_43:
    v11 = (v11 + 1) & v83;
    v13 = v11 >> 6;
    v7 = 1 << v11;
    if ((v85[v11 >> 6] & (1 << v11)) == 0)
    {
      goto LABEL_6;
    }
  }

  sub_1D95B19D0(v9, v21, v22);
  sub_1D95B19D0(v29, v28, v30);
  sub_1D95B19E8(v29, v28, v30);
  sub_1D95B19E8(v9, v21, v22);
  if ((v22 & 1) != 0 || v29 != v9)
  {
    goto LABEL_43;
  }

LABEL_137:
  v8 = v80;
  v12 = v79;
  v87 = v80;
  v88 = v79;
  v89 = v77;
  v90 = v82;
  v91 = v81;
LABEL_67:
  v37 = sub_1D95B19E8(v9, v21, v22);
  v38 = *(v2 + 32);
  v74 = ((1 << v38) + 63) >> 6;
  v15 = 8 * v74;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_141;
  }

  while (2)
  {
    v75 = &v71;
    MEMORY[0x1EEE9AC00](v37);
    v11 = &v71 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v11, v85, v39);
    v40 = *(v11 + 8 * v13) & ~v7;
    v83 = v11;
    *(v11 + 8 * v13) = v40;
    v41 = *(v2 + 16) - 1;
    v10 = v81;
    v7 = v82;
    v42 = i;
    v84 = v2;
LABEL_69:
    v76 = v41;
LABEL_71:
    while (2)
    {
      if (v10)
      {
LABEL_77:
        v45 = *(v8 + 48) + 24 * (__clz(__rbit64(v10)) | (v7 << 6));
        v9 = *v45;
        v46 = *(v45 + 8);
        v47 = *(v45 + 16);
        v48 = *(v2 + 40);
        sub_1D95C051C();
        if (v47 <= 252)
        {
          if (v47 == 251)
          {
            v11 = v86;
            v49 = 5;
          }

          else
          {
            if (v47 != 252)
            {
              v11 = v86;
              MEMORY[0x1DA732B80](2);
              if (v47)
              {
                MEMORY[0x1DA732B80](1);
                sub_1D95B19D0(v9, v46, v47);
                sub_1D95BFE1C();
              }

              else
              {
                MEMORY[0x1DA732B80](0);
                MEMORY[0x1DA732BA0](v9);
              }

              goto LABEL_86;
            }

            v11 = v86;
            v49 = 4;
          }
        }

        else
        {
          v11 = v86;
          if (v47 == 253)
          {
            v49 = 3;
          }

          else
          {
            v49 = v47 == 254;
          }
        }

        MEMORY[0x1DA732B80](v49);
LABEL_86:
        v81 = (v10 - 1) & v10;
        v82 = v7;
        v50 = sub_1D95C055C();
        v51 = -1 << *(v2 + 32);
        v52 = v50 & ~v51;
        v53 = v52 >> 6;
        v54 = 1 << v52;
        if (((1 << v52) & v85[v52 >> 6]) == 0)
        {
LABEL_70:
          sub_1D95B19E8(v9, v46, v47);
          v2 = v84;
          v8 = v80;
          v12 = v79;
          v10 = v81;
          v7 = v82;
          v42 = i;
          continue;
        }

        v13 = ~v51;
        while (1)
        {
          v55 = *(v84 + 48) + 24 * v52;
          v11 = *v55;
          v56 = *(v55 + 8);
          v57 = *(v55 + 16);
          if (v57 > 0xFC)
          {
            if (v57 == 253)
            {
              if (v47 == 253)
              {
                v62 = *v55;
                v63 = *(v55 + 8);
                v64 = -3;
                goto LABEL_127;
              }

              sub_1D95B19D0(v9, v46, v47);
              v58 = -3;
            }

            else if (v57 == 254)
            {
              if (v47 == 254)
              {
                v62 = *v55;
                v63 = *(v55 + 8);
                v64 = -2;
                goto LABEL_127;
              }

              sub_1D95B19D0(v9, v46, v47);
              v58 = -2;
            }

            else
            {
              if (v47 == 255)
              {
                v62 = *v55;
                v63 = *(v55 + 8);
                v64 = -1;
                goto LABEL_127;
              }

              sub_1D95B19D0(v9, v46, v47);
              v58 = -1;
            }

            goto LABEL_105;
          }

          if (v57 == 251)
          {
            break;
          }

          if (v57 == 252)
          {
            if (v47 == 252)
            {
              v62 = *v55;
              v63 = *(v55 + 8);
              v64 = -4;
              goto LABEL_127;
            }

            sub_1D95B19D0(v9, v46, v47);
            v58 = -4;
            goto LABEL_105;
          }

          if (v47 > 0xFA)
          {
            goto LABEL_104;
          }

          if (v57)
          {
            if ((v47 & 1) == 0)
            {
LABEL_104:
              sub_1D95B19D0(v9, v46, v47);
              sub_1D95B19D0(v11, v56, v57);
              v58 = v57;
LABEL_105:
              sub_1D95B19E8(v11, v56, v58);
              sub_1D95B19E8(v9, v46, v47);
              goto LABEL_106;
            }

            if (v11 == v9 && v56 == v46)
            {
              sub_1D953FCA8(v9, v46, 1);
              v62 = v9;
              v63 = v46;
              v64 = v57;
LABEL_127:
              sub_1D95B19E8(v62, v63, v64);
LABEL_128:
              sub_1D95B19E8(v9, v46, v47);
              v7 = v82;
              v65 = *(v83 + 8 * v53);
              *(v83 + 8 * v53) = v65 & ~v54;
              v31 = (v65 & v54) == 0;
              v2 = v84;
              v8 = v80;
              v12 = v79;
              v42 = i;
              v10 = v81;
              if (!v31)
              {
                v41 = v76 - 1;
                if (__OFSUB__(v76, 1))
                {
                  __break(1u);
                }

                if (v76 == 1)
                {

                  v2 = MEMORY[0x1E69E7CD0];
                  goto LABEL_135;
                }

                goto LABEL_69;
              }

              goto LABEL_71;
            }

            v60 = *v55;
            v61 = *(v55 + 8);
            v73 = sub_1D95C041C();
            sub_1D95B19D0(v9, v46, v47);
            sub_1D95B19D0(v11, v56, v57);
            sub_1D95B19E8(v11, v56, v57);
            sub_1D95B19E8(v9, v46, v47);
            if (v73)
            {
              goto LABEL_128;
            }
          }

          else
          {
            sub_1D95B19D0(v9, v46, v47);
            sub_1D95B19D0(v11, v56, v57);
            sub_1D95B19E8(v11, v56, v57);
            sub_1D95B19E8(v9, v46, v47);
            if ((v47 & 1) == 0 && v11 == v9)
            {
              goto LABEL_128;
            }
          }

LABEL_106:
          v52 = (v52 + 1) & v13;
          v53 = v52 >> 6;
          v54 = 1 << v52;
          if ((v85[v52 >> 6] & (1 << v52)) == 0)
          {
            goto LABEL_70;
          }
        }

        if (v47 == 251)
        {
          v62 = *v55;
          v63 = *(v55 + 8);
          v64 = -5;
          goto LABEL_127;
        }

        sub_1D95B19D0(v9, v46, v47);
        v58 = -5;
        goto LABEL_105;
      }

      break;
    }

    v43 = v7;
    while (1)
    {
      v44 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v44 >= v42)
      {
        v2 = sub_1D95B09F0(v83, v74, v76, v2);
        goto LABEL_135;
      }

      v10 = *(v12 + 8 * v44);
      ++v43;
      if (v10)
      {
        v7 = v44;
        goto LABEL_77;
      }
    }

    __break(1u);
LABEL_140:
    v87 = v10;
    v88 = v9;
    v89 = v11;
    v90 = v12;
    v91 = v13;
    __break(1u);
LABEL_141:
    v9 = v15;

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v68 = swift_slowAlloc();
  memcpy(v68, v85, v9);
  v69 = v72;
  v70 = sub_1D95B04B4(v68, v74, v2, v11, &v87);

  if (v69)
  {

    result = MEMORY[0x1DA733200](v68, -1, -1);
    __break(1u);
  }

  else
  {

    MEMORY[0x1DA733200](v68, -1, -1);
    v77 = v89;
    v2 = v70;
LABEL_135:
    sub_1D95B1A6C();
LABEL_136:
    v66 = *MEMORY[0x1E69E9840];
    return v2;
  }

  return result;
}

unint64_t sub_1D95B04B4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = *(a3 + 16);
  v38 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v6 = v5 - 1;
  v41 = a3 + 56;
  v39 = a5;
LABEL_2:
  v37 = v6;
LABEL_4:
  while (2)
  {
    v7 = a5[3];
    v8 = a5[4];
    if (v8)
    {
      v9 = a5[3];
LABEL_10:
      v12 = *(*a5 + 48) + 24 * (__clz(__rbit64(v8)) | (v9 << 6));
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      a5[3] = v9;
      a5[4] = (v8 - 1) & v8;
      v16 = *(a3 + 40);
      sub_1D95C051C();
      if (v15 <= 252)
      {
        if (v15 == 251)
        {
          v17 = 5;
        }

        else
        {
          if (v15 != 252)
          {
            MEMORY[0x1DA732B80](2);
            if (v15)
            {
              MEMORY[0x1DA732B80](1);
              sub_1D95B19D0(v13, v14, v15);
              sub_1D95BFE1C();
            }

            else
            {
              MEMORY[0x1DA732B80](0);
              MEMORY[0x1DA732BA0](v13);
            }

            goto LABEL_19;
          }

          v17 = 4;
        }
      }

      else if (v15 == 253)
      {
        v17 = 3;
      }

      else
      {
        v17 = v15 == 254;
      }

      MEMORY[0x1DA732B80](v17);
LABEL_19:
      v18 = sub_1D95C055C();
      v19 = -1 << *(a3 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = 1 << v20;
      if (((1 << v20) & *(v41 + 8 * (v20 >> 6))) == 0)
      {
LABEL_3:
        result = sub_1D95B19E8(v13, v14, v15);
        a5 = v39;
        continue;
      }

      v40 = ~v19;
      while (1)
      {
        v23 = *(a3 + 48) + 24 * v20;
        v24 = *v23;
        v25 = *(v23 + 8);
        v26 = *(v23 + 16);
        if (v26 <= 0xFC)
        {
          if (v26 == 251)
          {
            if (v15 == 251)
            {
              v30 = *v23;
              v31 = *(v23 + 8);
              v32 = -5;
              goto LABEL_61;
            }

            sub_1D95B19D0(v13, v14, v15);
            LOBYTE(v26) = -5;
            goto LABEL_39;
          }

          if (v26 == 252)
          {
            if (v15 == 252)
            {
              v30 = *v23;
              v31 = *(v23 + 8);
              v32 = -4;
              goto LABEL_61;
            }

            sub_1D95B19D0(v13, v14, v15);
            LOBYTE(v26) = -4;
            goto LABEL_39;
          }
        }

        else
        {
          switch(v26)
          {
            case 0xFDu:
              if (v15 == 253)
              {
                v30 = *v23;
                v31 = *(v23 + 8);
                v32 = -3;
                goto LABEL_61;
              }

              sub_1D95B19D0(v13, v14, v15);
              LOBYTE(v26) = -3;
              goto LABEL_39;
            case 0xFEu:
              if (v15 == 254)
              {
                v30 = *v23;
                v31 = *(v23 + 8);
                v32 = -2;
                goto LABEL_61;
              }

              sub_1D95B19D0(v13, v14, v15);
              LOBYTE(v26) = -2;
              goto LABEL_39;
            case 0xFFu:
              if (v15 == 255)
              {
                v30 = *v23;
                v31 = *(v23 + 8);
                v32 = -1;
                goto LABEL_61;
              }

              sub_1D95B19D0(v13, v14, v15);
              LOBYTE(v26) = -1;
              goto LABEL_39;
          }
        }

        if (v15 > 0xFA)
        {
          goto LABEL_38;
        }

        if (v26)
        {
          if ((v15 & 1) == 0)
          {
LABEL_38:
            sub_1D95B19D0(v13, v14, v15);
            sub_1D95B19D0(v24, v25, v26);
LABEL_39:
            sub_1D95B19E8(v24, v25, v26);
            sub_1D95B19E8(v13, v14, v15);
            goto LABEL_40;
          }

          if (v24 == v13 && v25 == v14)
          {
            sub_1D953FCA8(v13, v14, 1);
            v30 = v13;
            v31 = v14;
            v32 = v26;
LABEL_61:
            sub_1D95B19E8(v30, v31, v32);
LABEL_62:
            result = sub_1D95B19E8(v13, v14, v15);
            a5 = v39;
            v33 = v38[v21];
            v38[v21] = v33 & ~v22;
            if ((v33 & v22) != 0)
            {
              v6 = v37 - 1;
              if (__OFSUB__(v37, 1))
              {
LABEL_73:
                __break(1u);
                return result;
              }

              if (v37 == 1)
              {
                return MEMORY[0x1E69E7CD0];
              }

              goto LABEL_2;
            }

            goto LABEL_4;
          }

          v28 = *v23;
          v29 = *(v23 + 8);
          v35 = sub_1D95C041C();
          sub_1D95B19D0(v13, v14, v15);
          sub_1D95B19D0(v24, v25, v26);
          sub_1D95B19E8(v24, v25, v26);
          sub_1D95B19E8(v13, v14, v15);
          if (v35)
          {
            goto LABEL_62;
          }
        }

        else
        {
          sub_1D95B19D0(v13, v14, v15);
          sub_1D95B19D0(v24, v25, v26);
          sub_1D95B19E8(v24, v25, v26);
          sub_1D95B19E8(v13, v14, v15);
          if ((v15 & 1) == 0 && v24 == v13)
          {
            goto LABEL_62;
          }
        }

LABEL_40:
        v20 = (v20 + 1) & v40;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if ((*(v41 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    break;
  }

  v10 = (a5[2] + 64) >> 6;
  v11 = a5[3];
  while (1)
  {
    v9 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_73;
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
    v34 = v7 + 1;
  }

  else
  {
    v34 = (a5[2] + 64) >> 6;
  }

  a5[3] = v34 - 1;
  a5[4] = 0;

  return sub_1D95B09F0(v38, a2, v37, a3);
}

unint64_t sub_1D95B09F0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07AE8, &qword_1D95CD410);
  result = sub_1D95C018C();
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
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v15 = *(a4 + 48) + 24 * (v12 | (v11 << 6));
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    sub_1D95B19D0(*v15, v17, v18);
    result = sub_1D95ACF3C(v16, v17, v18, v6);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_21;
    }

    if (!v5)
    {
LABEL_18:

      return v6;
    }
  }

  v13 = v11;
  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_18;
    }

    v14 = a1[v11];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_1D95B0B48(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x1E69E9840];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_1D95B0CE8(v9, v7, v3, a2);
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_1D95B2068(v15, v7, v18);
    v10 = v18[0];

    MEMORY[0x1DA733200](v15, -1, -1);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

unint64_t sub_1D95B0CE8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = result;
  v4 = 0;
  v5 = 0;
  v6 = *(a3 + 16);
  v35 = a3 + 32;
  v39 = a4 + 56;
  v36 = v6;
LABEL_2:
  v32 = v4;
  if (v5 == v6)
  {
LABEL_66:

    return sub_1D95B09F0(v33, a2, v32, a4);
  }

  v7 = v5;
LABEL_6:
  if (v7 < v6)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_68;
    }

    v9 = v35 + 24 * v7;
    v10 = *v9;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    v13 = *(a4 + 40);
    sub_1D95C051C();
    v37 = v8;
    if (v12 <= 252)
    {
      if (v12 == 251)
      {
        v14 = 5;
      }

      else
      {
        if (v12 != 252)
        {
          MEMORY[0x1DA732B80](2);
          if (v12)
          {
            MEMORY[0x1DA732B80](1);
            sub_1D953FCA8(v10, v11, 1);
            sub_1D95BFE1C();
          }

          else
          {
            MEMORY[0x1DA732B80](0);
            MEMORY[0x1DA732BA0](v10);
          }

          goto LABEL_17;
        }

        v14 = 4;
      }
    }

    else if (v12 == 253)
    {
      v14 = 3;
    }

    else
    {
      v14 = v12 == 254;
    }

    MEMORY[0x1DA732B80](v14);
LABEL_17:
    v15 = sub_1D95C055C();
    v16 = -1 << *(a4 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    v19 = 1 << v17;
    if (((1 << v17) & *(v39 + 8 * (v17 >> 6))) == 0)
    {
LABEL_4:
      result = sub_1D95B19E8(v10, v11, v12);
      goto LABEL_5;
    }

    v38 = ~v16;
    while (1)
    {
      v20 = *(a4 + 48) + 24 * v17;
      v22 = *v20;
      v21 = *(v20 + 8);
      v23 = *(v20 + 16);
      if (v23 <= 0xFC)
      {
        if (v23 == 251)
        {
          if (v12 == 251)
          {
            v27 = *v20;
            v28 = *(v20 + 8);
            v29 = -5;
            goto LABEL_59;
          }

          sub_1D95B19D0(v10, v11, v12);
          LOBYTE(v23) = -5;
          goto LABEL_37;
        }

        if (v23 == 252)
        {
          if (v12 == 252)
          {
            v27 = *v20;
            v28 = *(v20 + 8);
            v29 = -4;
            goto LABEL_59;
          }

          sub_1D95B19D0(v10, v11, v12);
          LOBYTE(v23) = -4;
          goto LABEL_37;
        }
      }

      else
      {
        switch(v23)
        {
          case 0xFDu:
            if (v12 == 253)
            {
              v27 = *v20;
              v28 = *(v20 + 8);
              v29 = -3;
              goto LABEL_59;
            }

            sub_1D95B19D0(v10, v11, v12);
            LOBYTE(v23) = -3;
            goto LABEL_37;
          case 0xFEu:
            if (v12 == 254)
            {
              v27 = *v20;
              v28 = *(v20 + 8);
              v29 = -2;
              goto LABEL_59;
            }

            sub_1D95B19D0(v10, v11, v12);
            LOBYTE(v23) = -2;
            goto LABEL_37;
          case 0xFFu:
            if (v12 == 255)
            {
              v27 = *v20;
              v28 = *(v20 + 8);
              v29 = -1;
              goto LABEL_59;
            }

            sub_1D95B19D0(v10, v11, v12);
            LOBYTE(v23) = -1;
            goto LABEL_37;
        }
      }

      if (v12 > 0xFA)
      {
        goto LABEL_36;
      }

      if (v23)
      {
        if ((v12 & 1) == 0)
        {
LABEL_36:
          sub_1D95B19D0(v10, v11, v12);
          sub_1D95B19D0(v22, v21, v23);
LABEL_37:
          sub_1D95B19E8(v22, v21, v23);
          sub_1D95B19E8(v10, v11, v12);
          goto LABEL_38;
        }

        if (v22 == v10 && v21 == v11)
        {
          sub_1D953FCA8(v10, v11, 1);
          v27 = v10;
          v28 = v11;
          v29 = v23;
LABEL_59:
          sub_1D95B19E8(v27, v28, v29);
LABEL_60:
          result = sub_1D95B19E8(v10, v11, v12);
          v30 = v33[v18];
          v33[v18] = v30 | v19;
          if ((v30 & v19) == 0)
          {
            v4 = v32 + 1;
            v6 = v36;
            v5 = v37;
            if (!__OFADD__(v32, 1))
            {
              goto LABEL_2;
            }

            __break(1u);
            goto LABEL_66;
          }

LABEL_5:
          v6 = v36;
          v7 = v37;
          if (v37 == v36)
          {
            goto LABEL_66;
          }

          goto LABEL_6;
        }

        v25 = *v20;
        v26 = *(v20 + 8);
        v34 = sub_1D95C041C();
        sub_1D95B19D0(v10, v11, v12);
        sub_1D95B19D0(v22, v21, v23);
        sub_1D95B19E8(v22, v21, v23);
        sub_1D95B19E8(v10, v11, v12);
        if (v34)
        {
          goto LABEL_60;
        }
      }

      else
      {
        sub_1D95B19D0(v10, v11, v12);
        sub_1D95B19D0(v22, v21, v23);
        sub_1D95B19E8(v22, v21, v23);
        sub_1D95B19E8(v10, v11, v12);
        if ((v12 & 1) == 0 && v22 == v10)
        {
          goto LABEL_60;
        }
      }

LABEL_38:
      v17 = (v17 + 1) & v38;
      v18 = v17 >> 6;
      v19 = 1 << v17;
      if ((*(v39 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
      {
        goto LABEL_4;
      }
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
  return result;
}

uint64_t (*sub_1D95B11C8(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1DA732820](a2, a3);
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
    *v3 = v5;
    return sub_1D95B1248;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D95B1250(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v5 = (a5 >> 3) & 7;
  if (v5 > 1)
  {
    if (v5 != 2 && v5 != 3)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (v5)
  {
LABEL_6:
  }

  v7 = a5;
  sub_1D9564D80(result);

  return sub_1D958FFD0(a2, a3, a4, v7);
}

uint64_t sub_1D95B1308(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

unint64_t sub_1D95B1334(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v5 = (a5 >> 3) & 7;
  if (v5 > 1)
  {
    if (v5 != 2 && v5 != 3)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (v5)
  {
LABEL_6:
  }

  v7 = a5;
  sub_1D953FCB8(result);

  return sub_1D95B13EC(a2, a3, a4, v7);
}

uint64_t sub_1D95B13EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 0x80) == 0)
  {
  }

  return result;
}

unint64_t sub_1D95B147C()
{
  result = qword_1ECB07AD8;
  if (!qword_1ECB07AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07AD8);
  }

  return result;
}

unint64_t sub_1D95B14D4()
{
  result = qword_1EDCFA2E8;
  if (!qword_1EDCFA2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA2E8);
  }

  return result;
}

unint64_t sub_1D95B152C()
{
  result = qword_1EDCFA2F0;
  if (!qword_1EDCFA2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA2F0);
  }

  return result;
}

uint64_t sub_1D95B1580(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1D95C022C();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_1D95C01DC();
}

unint64_t sub_1D95B1600()
{
  result = qword_1EDCFA190;
  if (!qword_1EDCFA190)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCFA190);
  }

  return result;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D95B1688(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D955C654;

  return sub_1D95A96E0(a1, v4, v5, v6);
}

uint64_t sub_1D95B173C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D955C654;

  return sub_1D95A80F4(a1, v4, v5, v6, v7, v8, v10, v9);
}

unint64_t sub_1D95B1818()
{
  result = qword_1EDCFA410;
  if (!qword_1EDCFA410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA410);
  }

  return result;
}

void sub_1D95B18C0(uint64_t *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  sub_1D95A8BBC(v3, a1);
}

uint64_t sub_1D95B18F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D955BACC;

  return sub_1D95A80F4(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_1D95B19D0(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFAu)
  {
    return sub_1D953FCA8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1D95B19E8(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFAu)
  {
    return sub_1D953FCF0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1D95B1A00(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 250)
  {
    return sub_1D95B19E8(result, a2, a3);
  }

  return result;
}

uint64_t objectdestroy_21Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  if (*(v0 + 56))
  {
    v3 = *(v0 + 64);
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D95B1B2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CD0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07AE8, &qword_1D95CD410);
  v3 = sub_1D95C018C();
  v4 = 0;
  v5 = v3 + 56;
  v34 = v1;
  v35 = a1 + 32;
  while (2)
  {
    v9 = v35 + 24 * v4;
    v11 = *v9;
    v10 = *(v9 + 8);
    v12 = *(v9 + 16);
    v13 = *(v3 + 40);
    sub_1D95C051C();
    v36 = v4;
    if (v12 > 252)
    {
      if (v12 == 253)
      {
        v14 = 3;
      }

      else
      {
        v14 = v12 == 254;
      }

      goto LABEL_14;
    }

    if (v12 == 251)
    {
      v14 = 5;
      goto LABEL_14;
    }

    if (v12 == 252)
    {
      v14 = 4;
LABEL_14:
      MEMORY[0x1DA732B80](v14);
      goto LABEL_15;
    }

    MEMORY[0x1DA732B80](2);
    if (v12)
    {
      MEMORY[0x1DA732B80](1);
      sub_1D953FCA8(v11, v10, 1);
      sub_1D95BFE1C();
    }

    else
    {
      MEMORY[0x1DA732B80](0);
      MEMORY[0x1DA732BA0](v11);
    }

LABEL_15:
    result = sub_1D95C055C();
    v16 = ~(-1 << *(v3 + 32));
    v17 = result & v16;
    v18 = (result & v16) >> 6;
    v19 = *(v5 + 8 * v18);
    v20 = 1 << (result & v16);
    if ((v20 & v19) == 0)
    {
      goto LABEL_48;
    }

    do
    {
      v21 = *(v3 + 48) + 24 * v17;
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      if (v24 <= 0xFC)
      {
        if (v24 == 251)
        {
          if (v12 == 251)
          {
            sub_1D95B19E8(*v21, *(v21 + 8), 0xFBu);
            v6 = v11;
            v7 = v10;
            v8 = -5;
            goto LABEL_4;
          }

          sub_1D95B19D0(v11, v10, v12);
          v25 = -5;
          goto LABEL_34;
        }

        if (v24 == 252)
        {
          if (v12 == 252)
          {
            sub_1D95B19E8(*v21, *(v21 + 8), 0xFCu);
            v6 = v11;
            v7 = v10;
            v8 = -4;
            goto LABEL_4;
          }

          sub_1D95B19D0(v11, v10, v12);
          v25 = -4;
          goto LABEL_34;
        }
      }

      else
      {
        switch(v24)
        {
          case 0xFDu:
            if (v12 == 253)
            {
              sub_1D95B19E8(*v21, *(v21 + 8), 0xFDu);
              v6 = v11;
              v7 = v10;
              v8 = -3;
              goto LABEL_4;
            }

            sub_1D95B19D0(v11, v10, v12);
            v25 = -3;
            goto LABEL_34;
          case 0xFEu:
            if (v12 == 254)
            {
              sub_1D95B19E8(*v21, *(v21 + 8), 0xFEu);
              v6 = v11;
              v7 = v10;
              v8 = -2;
              goto LABEL_4;
            }

            sub_1D95B19D0(v11, v10, v12);
            v25 = -2;
            goto LABEL_34;
          case 0xFFu:
            if (v12 == 255)
            {
              sub_1D95B19E8(*v21, *(v21 + 8), 0xFFu);
              v6 = v11;
              v7 = v10;
              v8 = -1;
              goto LABEL_4;
            }

            sub_1D95B19D0(v11, v10, v12);
            v25 = -1;
            goto LABEL_34;
        }
      }

      if (v12 > 0xFA)
      {
        goto LABEL_33;
      }

      if (v24)
      {
        if ((v12 & 1) == 0)
        {
LABEL_33:
          sub_1D95B19D0(v11, v10, v12);
          sub_1D95B19D0(v22, v23, v24);
          v25 = v24;
LABEL_34:
          sub_1D95B19E8(v22, v23, v25);
          result = sub_1D95B19E8(v11, v10, v12);
          goto LABEL_35;
        }

        if (v22 == v11 && v23 == v10)
        {
          sub_1D953FCA8(v11, v10, 1);
          sub_1D95B19E8(v11, v10, v24);
LABEL_58:
          v6 = v11;
          v7 = v10;
          v8 = v12;
LABEL_4:
          sub_1D95B19E8(v6, v7, v8);
          v1 = v34;
          goto LABEL_5;
        }

        v27 = *v21;
        v28 = *(v21 + 8);
        v33 = sub_1D95C041C();
        sub_1D95B19D0(v11, v10, v12);
        sub_1D95B19D0(v22, v23, v24);
        sub_1D95B19E8(v22, v23, v24);
        result = sub_1D95B19E8(v11, v10, v12);
        if (v33)
        {
          goto LABEL_58;
        }
      }

      else
      {
        sub_1D95B19D0(v11, v10, v12);
        sub_1D95B19D0(v22, v23, v24);
        sub_1D95B19E8(v22, v23, v24);
        result = sub_1D95B19E8(v11, v10, v12);
        if ((v12 & 1) == 0 && v22 == v11)
        {
          goto LABEL_58;
        }
      }

LABEL_35:
      v17 = (v17 + 1) & v16;
      v18 = v17 >> 6;
      v19 = *(v5 + 8 * (v17 >> 6));
      v20 = 1 << v17;
    }

    while ((v19 & (1 << v17)) != 0);
    v1 = v34;
LABEL_48:
    *(v5 + 8 * v18) = v19 | v20;
    v29 = *(v3 + 48) + 24 * v17;
    *v29 = v11;
    *(v29 + 8) = v10;
    *(v29 + 16) = v12;
    v30 = *(v3 + 16);
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (!v31)
    {
      *(v3 + 16) = v32;
LABEL_5:
      v4 = v36 + 1;
      if (v36 + 1 == v1)
      {
        return v3;
      }

      continue;
    }

    break;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D95B2068@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = sub_1D95B0CE8(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1D95B209C(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = sub_1D95B23A8(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_1D95C022C();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_1D95C022C())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v19 = MEMORY[0x1DA732820](v11, v7);
    swift_unknownObjectRelease();
    if (v19 != a2)
    {
      if (v10 != v11)
      {
        v3 = MEMORY[0x1DA732820](v10, v7);
        v16 = MEMORY[0x1DA732820](v11, v7);
        goto LABEL_21;
      }

LABEL_9:
      v14 = __OFADD__(v10++, 1);
      if (v14)
      {
        goto LABEL_42;
      }
    }

LABEL_10:
    v14 = __OFADD__(v11++, 1);
    if (v14)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v15)
    {
      goto LABEL_40;
    }

    v16 = *(v7 + 32 + 8 * v11);
    if (v16 != a2)
    {
      if (v10 != v11)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v10 >= v15)
        {
          goto LABEL_44;
        }

        v3 = *(v7 + 32 + 8 * v10);

LABEL_21:
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_1D95B1580(v7);
          v17 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v17) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        v18 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v16;

        if ((v7 & 0x8000000000000000) != 0 || v17)
        {
          v7 = sub_1D95B1580(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        v12 = v4 + 8 * v11;
        v13 = *(v12 + 32);
        *(v12 + 32) = v3;

        *a1 = v7;
      }

      goto LABEL_9;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return sub_1D95C022C();
}

uint64_t sub_1D95B22C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a4;
    v6 = a3;
    v7 = a2;
    v8 = a1;
    v9 = *v5;
    v10 = *v5 >> 62;
    if (!v10)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_1D95C022C();
  if (result < v7)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v7, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v8 - v7;
  if (__OFSUB__(0, v7 - v8))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10)
  {
    v13 = sub_1D95C022C();
  }

  else
  {
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (!v14)
  {
    sub_1D95ABBF8(result);
    return sub_1D95B24AC(v8, v7, 0, v6, v4);
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_1D95B23A8(unint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = sub_1D95C022C();
    a2 = v12;
    v3 = v13;
    a1 = v11;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = MEMORY[0x1DA732820](v4, a1);
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == v8)
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(a1 + 8 * v4 + 32) == a2)
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t sub_1D95B24AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v5 = a3;
  v8 = a2;
  v12 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v9 = v6 + 4;
  v7 = &v6[a1 + 4];
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v5, v11);
  v11 = v5 - v11;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    result = v6[2];
    v15 = result - v8;
    if (!__OFSUB__(result, v8))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1D95C022C();
  v15 = result - v8;
  if (__OFSUB__(result, v8))
  {
    goto LABEL_23;
  }

LABEL_6:
  v16 = (v7 + 8 * v5);
  v17 = &v9[v8];
  if (v16 != v17 || v16 >= &v17[8 * v15])
  {
    memmove(v16, v17, 8 * v15);
  }

  if (v10)
  {
    result = sub_1D95C022C();
  }

  else
  {
    result = v6[2];
  }

  if (__OFADD__(result, v11))
  {
    goto LABEL_24;
  }

  v6[2] = result + v11;
LABEL_17:
  if (v5 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_1D95B25B8(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1D9564D80(result);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1D95B25F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D95B2638(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D95B2704(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0xD000000000000012;
    }

    else
    {
      v4 = 0x6C62616C69617661;
    }

    if (v2)
    {
      v3 = 0x80000001D95CFE70;
    }

    else
    {
      v3 = 0xE900000000000065;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x80000001D95CFE90;
    v4 = 0xD000000000000017;
  }

  else if (a1 == 3)
  {
    v3 = 0xE800000000000000;
    v4 = 0x676E697461647075;
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x64656C696166;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v6 = 0x6C62616C69617661;
    }

    if (a2)
    {
      v5 = 0x80000001D95CFE70;
    }

    else
    {
      v5 = 0xE900000000000065;
    }

    if (v4 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0x80000001D95CFE90;
    if (v4 != 0xD000000000000017)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE800000000000000;
    if (v4 != 0x676E697461647075)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    if (v4 != 0x64656C696166)
    {
LABEL_31:
      v7 = sub_1D95C041C();
      goto LABEL_32;
    }
  }

  if (v3 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_1D95B28B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE800000000000000;
    v12 = 0xD000000000000013;
    v13 = 0x80000001D95CFC90;
    if (a1 != 2)
    {
      v12 = 0x64616F6C6E776F64;
      v13 = 0xEB00000000676E69;
    }

    v14 = 0x646575657571;
    if (a1)
    {
      v11 = 0xE600000000000000;
    }

    else
    {
      v14 = 0x6C616E6F6974706FLL;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v13;
    }
  }

  else
  {
    v3 = 0x6E69726961706572;
    v4 = 0xE900000000000067;
    v5 = 0x6C6174736E696E75;
    v6 = 0xEC000000676E696CLL;
    if (a1 != 7)
    {
      v5 = 0x64656C696166;
      v6 = 0xE600000000000000;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0x696C6C6174736E69;
    v8 = 0xEA0000000000676ELL;
    if (a1 != 4)
    {
      v7 = 0x656C6C6174736E69;
      v8 = 0xE900000000000064;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0x80000001D95CFC90;
        if (v9 != 0xD000000000000013)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xEB00000000676E69;
        if (v9 != 0x64616F6C6E776F64)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_50;
    }

    if (!a2)
    {
      v15 = 0xE800000000000000;
      if (v9 != 0x6C616E6F6974706FLL)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

    v15 = 0xE600000000000000;
    v16 = 1969583473;
    goto LABEL_47;
  }

  if (a2 > 5u)
  {
    if (a2 == 6)
    {
      v15 = 0xE900000000000067;
      if (v9 != 0x6E69726961706572)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

    if (a2 == 7)
    {
      v15 = 0xEC000000676E696CLL;
      if (v9 != 0x6C6174736E696E75)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

    v15 = 0xE600000000000000;
    v16 = 1818845542;
LABEL_47:
    if (v9 != (v16 & 0xFFFF0000FFFFFFFFLL | 0x646500000000))
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  if (a2 == 4)
  {
    v15 = 0xEA0000000000676ELL;
    if (v9 != 0x696C6C6174736E69)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v15 = 0xE900000000000064;
    if (v9 != 0x656C6C6174736E69)
    {
LABEL_52:
      v17 = sub_1D95C041C();
      goto LABEL_53;
    }
  }

LABEL_50:
  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v17 = 1;
LABEL_53:

  return v17 & 1;
}

uint64_t sub_1D95B2BA4()
{
  sub_1D95BFE1C();
}

uint64_t ManagedPackageStatus.declarationIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ManagedPackageStatus.declarationIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ManagedPackageStatus.declarationKey.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ManagedPackageStatus.declarationKey.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ManagedPackageStatus.reasons.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t ManagedPackageStatus.name.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t ManagedPackageStatus.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t ManagedPackageStatus.packageIdentifier.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t ManagedPackageStatus.packageIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t ManagedPackageStatus.packageVersion.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t ManagedPackageStatus.packageVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

__n128 ManagedPackageStatus.init(declarationIdentifier:declarationKey:state:reasons:name:packageIdentifier:packageVersion:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unsigned __int8 *a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, unint64_t a12)
{
  result = a10;
  v13 = *a5;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u8[0] = v13;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u64[1] = a12;
  return result;
}

uint64_t ManagedPackageStatus.State.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D95C026C();

  v4 = 9;
  if (v2 < 9)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t ManagedPackageStatus.State.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x6C616E6F6974706FLL;
    v7 = 0xD000000000000013;
    if (v1 != 2)
    {
      v7 = 0x64616F6C6E776F64;
    }

    if (*v0)
    {
      v6 = 0x646575657571;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x6E69726961706572;
    v3 = 0x6C6174736E696E75;
    if (v1 != 7)
    {
      v3 = 0x64656C696166;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x696C6C6174736E69;
    if (v1 != 4)
    {
      v4 = 0x656C6C6174736E69;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D95B3210()
{
  v1 = *v0;
  sub_1D95C051C();
  sub_1D95B2BA4();
  return sub_1D95C055C();
}

uint64_t sub_1D95B3260()
{
  v1 = *v0;
  sub_1D95C051C();
  sub_1D95B2BA4();
  return sub_1D95C055C();
}

uint64_t sub_1D95B32A4@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return ManagedPackageStatus.State.init(rawValue:)(a1);
}

unint64_t sub_1D95B32B0@<X0>(unint64_t *a1@<X8>)
{
  result = ManagedPackageStatus.State.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ManagedPackageStatus.Reason.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D95C026C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t ManagedPackageStatus.Reason.rawValue.getter()
{
  if (*v0)
  {
    result = 0x466C6C6174736E69;
  }

  else
  {
    result = 0x64616F6C6E776F64;
  }

  *v0;
  return result;
}

uint64_t sub_1D95B3390(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x466C6C6174736E69;
  }

  else
  {
    v4 = 0x64616F6C6E776F64;
  }

  if (v3)
  {
    v5 = 0xEE0064656C696146;
  }

  else
  {
    v5 = 0xED000064656C6961;
  }

  if (*a2)
  {
    v6 = 0x466C6C6174736E69;
  }

  else
  {
    v6 = 0x64616F6C6E776F64;
  }

  if (*a2)
  {
    v7 = 0xED000064656C6961;
  }

  else
  {
    v7 = 0xEE0064656C696146;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D95C041C();
  }

  return v9 & 1;
}

uint64_t sub_1D95B3450()
{
  v1 = *v0;
  sub_1D95C051C();
  sub_1D95BFE1C();

  return sub_1D95C055C();
}

uint64_t sub_1D95B34EC()
{
  *v0;
  sub_1D95BFE1C();
}

uint64_t sub_1D95B3574()
{
  v1 = *v0;
  sub_1D95C051C();
  sub_1D95BFE1C();

  return sub_1D95C055C();
}

uint64_t sub_1D95B360C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1D95C026C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1D95B366C(uint64_t *a1@<X8>)
{
  v2 = 0x64616F6C6E776F64;
  if (*v1)
  {
    v2 = 0x466C6C6174736E69;
  }

  v3 = 0xEE0064656C696146;
  if (*v1)
  {
    v3 = 0xED000064656C6961;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1D95B36C4()
{
  v1 = *v0;
  v2 = 0x746172616C636564;
  v3 = 0x566567616B636170;
  if (v1 == 5)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x736E6F73616572;
  if (v1 != 3)
  {
    v4 = 1701667182;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x6574617473;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000015;
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

uint64_t sub_1D95B37B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D95B47B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D95B37D8(uint64_t a1)
{
  v2 = sub_1D95B3B70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95B3814(uint64_t a1)
{
  v2 = sub_1D95B3B70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedPackageStatus.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07B50, "N[");
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v20 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v22 = v1[3];
  v23 = v10;
  v26 = *(v1 + 32);
  v11 = v1[5];
  v20[6] = v1[6];
  v21 = v11;
  v12 = v1[7];
  v13 = v1[8];
  v14 = v1[10];
  v20[4] = v1[9];
  v20[5] = v12;
  v20[1] = v14;
  v20[2] = v1[11];
  v20[3] = v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95B3B70();
  sub_1D95C05BC();
  LOBYTE(v25) = 0;
  v16 = v24;
  sub_1D95C038C();
  if (v16)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v18 = v26;
  v19 = v21;
  LOBYTE(v25) = 1;
  sub_1D95C038C();
  LOBYTE(v25) = v18;
  v27 = 2;
  sub_1D95B3BC4();
  sub_1D95C03CC();
  v25 = v19;
  v27 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07B68, &qword_1D95CD528);
  sub_1D95B4240(&qword_1ECB07B70, sub_1D95B3C18);
  sub_1D95C03CC();
  LOBYTE(v25) = 4;
  sub_1D95C038C();
  LOBYTE(v25) = 5;
  sub_1D95C038C();
  LOBYTE(v25) = 6;
  sub_1D95C038C();
  return MEMORY[8](v7, v3);
}

unint64_t sub_1D95B3B70()
{
  result = qword_1ECB07B58;
  if (!qword_1ECB07B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07B58);
  }

  return result;
}

unint64_t sub_1D95B3BC4()
{
  result = qword_1ECB07B60;
  if (!qword_1ECB07B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07B60);
  }

  return result;
}

unint64_t sub_1D95B3C18()
{
  result = qword_1ECB07B78;
  if (!qword_1ECB07B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07B78);
  }

  return result;
}

uint64_t ManagedPackageStatus.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07B80, &qword_1D95CD530);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95B3B70();
  sub_1D95C059C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v42[0]) = 0;
  v11 = sub_1D95C02CC();
  v13 = v12;
  v35 = v11;
  LOBYTE(v42[0]) = 1;
  *&v34 = sub_1D95C02CC();
  *(&v34 + 1) = v14;
  LOBYTE(v36) = 2;
  sub_1D95B41EC();
  sub_1D95C030C();
  v15 = v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07B68, &qword_1D95CD528);
  LOBYTE(v36) = 3;
  sub_1D95B4240(&qword_1ECB07B90, sub_1D95B42B8);
  sub_1D95C030C();
  v33 = v42[0];
  LOBYTE(v42[0]) = 4;
  v32 = 0;
  v29 = sub_1D95C02CC();
  v31 = v16;
  LOBYTE(v42[0]) = 5;
  v28 = sub_1D95C02CC();
  v30 = v17;
  v52 = 6;
  v18 = sub_1D95C02CC();
  v19 = v9;
  v21 = v20;
  (*(v6 + 8))(v19, v5);
  v22 = v35;
  *&v36 = v35;
  *(&v36 + 1) = v13;
  v37 = v34;
  LOBYTE(v38) = v15;
  v23 = v33;
  *(&v38 + 1) = v33;
  *&v39 = v29;
  *(&v39 + 1) = v31;
  *&v40 = v28;
  *(&v40 + 1) = v30;
  *&v41 = v18;
  *(&v41 + 1) = v21;
  v24 = v39;
  a2[2] = v38;
  a2[3] = v24;
  v25 = v41;
  a2[4] = v40;
  a2[5] = v25;
  v26 = v37;
  *a2 = v36;
  a2[1] = v26;
  sub_1D95B430C(&v36, v42);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v42[0] = v22;
  v42[1] = v13;
  v43 = v34;
  v44 = v15;
  v45 = v23;
  v46 = v29;
  v47 = v31;
  v48 = v28;
  v49 = v30;
  v50 = v18;
  v51 = v21;
  return sub_1D95B4344(v42);
}

unint64_t sub_1D95B41EC()
{
  result = qword_1ECB07B88;
  if (!qword_1ECB07B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07B88);
  }

  return result;
}

uint64_t sub_1D95B4240(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB07B68, &qword_1D95CD528);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D95B42B8()
{
  result = qword_1ECB07B98;
  if (!qword_1ECB07B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07B98);
  }

  return result;
}

unint64_t sub_1D95B4378()
{
  result = qword_1ECB07BA0;
  if (!qword_1ECB07BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07BA0);
  }

  return result;
}

unint64_t sub_1D95B43D0()
{
  result = qword_1ECB07BA8;
  if (!qword_1ECB07BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07BA8);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1D95B45D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1D95B4618(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1D95B46B4()
{
  result = qword_1ECB07BB0;
  if (!qword_1ECB07BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07BB0);
  }

  return result;
}

unint64_t sub_1D95B470C()
{
  result = qword_1ECB07BB8;
  if (!qword_1ECB07BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07BB8);
  }

  return result;
}

unint64_t sub_1D95B4764()
{
  result = qword_1ECB07BC0;
  if (!qword_1ECB07BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07BC0);
  }

  return result;
}

uint64_t sub_1D95B47B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000001D95D0210 == a2;
  if (v3 || (sub_1D95C041C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746172616C636564 && a2 == 0xEE0079654B6E6F69 || (sub_1D95C041C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736E6F73616572 && a2 == 0xE700000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D95D0E00 == a2 || (sub_1D95C041C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x566567616B636170 && a2 == 0xEE006E6F69737265)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D95C041C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_1D95B4A1C()
{
  result = qword_1ECB07BC8;
  if (!qword_1ECB07BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07BC8);
  }

  return result;
}

unint64_t sub_1D95B4A70()
{
  result = qword_1ECB07BD0;
  if (!qword_1ECB07BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07BD0);
  }

  return result;
}

__n128 AppProgress.init(state:identifier:)@<Q0>(void *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2[1].n128_u64[0];
  v4 = a2[1].n128_u8[8];
  *a3 = *a1;
  result = *a2;
  *(a3 + 8) = *a2;
  *(a3 + 24) = v3;
  *(a3 + 32) = v4;
  return result;
}

uint64_t MessageRegistration.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v3 <= 0xFC)
  {
    if (v3 == 251)
    {
      return 0xD000000000000017;
    }

    if (v3 == 252)
    {
      return 0x676E6967676F4CLL;
    }
  }

  else
  {
    switch(v3)
    {
      case 0xFDu:
        return 0xD000000000000013;
      case 0xFEu:
        return 0xD000000000000019;
      case 0xFFu:
        return 0xD000000000000013;
    }
  }

  sub_1D95C01BC();

  if (v3)
  {
  }

  else
  {
    sub_1D959EFAC();
    v2 = sub_1D95C00DC();
    v1 = v5;
  }

  MEMORY[0x1DA732490](v2, v1);

  return 0xD000000000000013;
}

uint64_t sub_1D95B4C60(uint64_t a1)
{
  v2 = sub_1D95B9274();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95B4C9C(uint64_t a1)
{
  v2 = sub_1D95B9274();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95B4CD8(uint64_t a1)
{
  v2 = sub_1D95B92C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95B4D14(uint64_t a1)
{
  v2 = sub_1D95B92C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95B4D50(uint64_t a1)
{
  v2 = sub_1D95B9220();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95B4D8C(uint64_t a1)
{
  v2 = sub_1D95B9220();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D95B4DC8()
{
  v1 = *v0;
  v2 = 0x6C61746143707061;
  v3 = 0xD000000000000011;
  v4 = 0x676E6967676F6CLL;
  if (v1 != 4)
  {
    v4 = 0x436567616B636170;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E69746152656761;
  if (v1 != 1)
  {
    v5 = 0x6574617453707061;
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

uint64_t sub_1D95B4EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D95BACF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D95B4ED0(uint64_t a1)
{
  v2 = sub_1D95B90D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95B4F0C(uint64_t a1)
{
  v2 = sub_1D95B90D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95B4F48(uint64_t a1)
{
  v2 = sub_1D95B91CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95B4F84(uint64_t a1)
{
  v2 = sub_1D95B91CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95B4FC0(uint64_t a1)
{
  v2 = sub_1D95B9178();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95B4FFC(uint64_t a1)
{
  v2 = sub_1D95B9178();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95B5038(uint64_t a1)
{
  v2 = sub_1D95B9124();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95B5074(uint64_t a1)
{
  v2 = sub_1D95B9124();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MessageRegistration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07BD8, &qword_1D95CD940);
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v57 = &v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07BE0, &qword_1D95CD948);
  v55 = *(v6 - 8);
  v56 = v6;
  v7 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v42 - v8;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07BE8, &qword_1D95CD950);
  v49 = *(v51 - 8);
  v9 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v48 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07BF0, &qword_1D95CD958);
  v52 = *(v11 - 8);
  v53 = v11;
  v12 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v50 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07BF8, &qword_1D95CD960);
  v46 = *(v14 - 8);
  v47 = v14;
  v15 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v42 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07C00, &qword_1D95CD968);
  v45 = *(v18 - 8);
  v19 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v42 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07C08, &qword_1D95CD970);
  v60 = *(v22 - 8);
  v61 = v22;
  v23 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v42 - v24;
  v26 = v1[1];
  v44 = *v1;
  v43 = v26;
  v27 = *(v1 + 16);
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95B90D0();
  sub_1D95C05BC();
  if (v27 > 252)
  {
    if (v27 == 253)
    {
      LOBYTE(v62) = 3;
      sub_1D95B91CC();
      v36 = v48;
      v29 = v61;
      sub_1D95C034C();
      (*(v49 + 8))(v36, v51);
    }

    else if (v27 == 254)
    {
      LOBYTE(v62) = 1;
      sub_1D95B9274();
      v29 = v61;
      sub_1D95C034C();
      (*(v46 + 8))(v17, v47);
    }

    else
    {
      LOBYTE(v62) = 0;
      sub_1D95B92C8();
      v29 = v61;
      sub_1D95C034C();
      (*(v45 + 8))(v21, v18);
    }

    return (*(v60 + 8))(v25, v29);
  }

  v30 = v54;
  v31 = v55;
  v33 = v56;
  v32 = v57;
  v35 = v58;
  v34 = v59;
  if (v27 == 251)
  {
    LOBYTE(v62) = 5;
    sub_1D95B9124();
    v37 = v32;
    v29 = v61;
    sub_1D95C034C();
    (*(v35 + 8))(v37, v34);
    return (*(v60 + 8))(v25, v29);
  }

  if (v27 == 252)
  {
    LOBYTE(v62) = 4;
    sub_1D95B9178();
    v29 = v61;
    sub_1D95C034C();
    (*(v31 + 8))(v30, v33);
    return (*(v60 + 8))(v25, v29);
  }

  LOBYTE(v62) = 2;
  sub_1D95B9220();
  v39 = v50;
  v40 = v61;
  sub_1D95C034C();
  v62 = v44;
  v63 = v43;
  v64 = v27 & 1;
  sub_1D959D508();
  v41 = v53;
  sub_1D95C03CC();
  (*(v52 + 8))(v39, v41);
  return (*(v60 + 8))(v25, v40);
}

uint64_t MessageRegistration.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  if (v3 > 0xFC)
  {
    if (v3 == 253)
    {
      v4 = 3;
    }

    else
    {
      v4 = v3 == 254;
    }

    return MEMORY[0x1DA732B80](v4);
  }

  if (v3 == 251)
  {
    v4 = 5;
    return MEMORY[0x1DA732B80](v4);
  }

  if (v3 == 252)
  {
    v4 = 4;
    return MEMORY[0x1DA732B80](v4);
  }

  MEMORY[0x1DA732B80](2);
  if (v3)
  {
    MEMORY[0x1DA732B80](1);

    return sub_1D95BFE1C();
  }

  else
  {
    MEMORY[0x1DA732B80](0);
    return MEMORY[0x1DA732BA0](v1);
  }
}

uint64_t MessageRegistration.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1D95C051C();
  if (v3 > 252)
  {
    if (v3 == 253)
    {
      v4 = 3;
    }

    else
    {
      v4 = v3 == 254;
    }

    goto LABEL_9;
  }

  if (v3 == 251)
  {
    v4 = 5;
    goto LABEL_9;
  }

  if (v3 == 252)
  {
    v4 = 4;
LABEL_9:
    MEMORY[0x1DA732B80](v4);
    return sub_1D95C055C();
  }

  MEMORY[0x1DA732B80](2);
  if (v3)
  {
    MEMORY[0x1DA732B80](1);
    sub_1D95BFE1C();
  }

  else
  {
    MEMORY[0x1DA732B80](0);
    MEMORY[0x1DA732BA0](v1);
  }

  return sub_1D95C055C();
}

uint64_t MessageRegistration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07C38, &qword_1D95CD978);
  v60 = *(v3 - 8);
  v61 = v3;
  v4 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v63 = &v50 - v5;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07C40, &qword_1D95CD980);
  v59 = *(v54 - 8);
  v6 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v62 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07C48, &qword_1D95CD988);
  v9 = *(v8 - 8);
  v55 = v8;
  v56 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v50 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07C50, &qword_1D95CD990);
  v57 = *(v12 - 8);
  v58 = v12;
  v13 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v65 = &v50 - v14;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07C58, &qword_1D95CD998);
  v52 = *(v53 - 8);
  v15 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v17 = &v50 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07C60, &qword_1D95CD9A0);
  v51 = *(v18 - 8);
  v19 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v50 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07C68, &unk_1D95CD9A8);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v50 - v25;
  v27 = a1[3];
  v28 = a1[4];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v27);
  sub_1D95B90D0();
  v29 = v67;
  sub_1D95C059C();
  if (!v29)
  {
    v30 = v21;
    v50 = v18;
    v32 = v65;
    v31 = v66;
    v67 = v23;
    v33 = v26;
    v34 = sub_1D95C032C();
    v35 = (2 * *(v34 + 16)) | 1;
    v70 = v34;
    v71 = v34 + 32;
    v72 = 0;
    v73 = v35;
    v36 = sub_1D954A274();
    if (v36 == 6 || v72 != v73 >> 1)
    {
      v41 = sub_1D95C01FC();
      swift_allocError();
      v43 = v42;
      v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D48, &qword_1D95C4250) + 48);
      *v43 = &type metadata for MessageRegistration;
      sub_1D95C028C();
      sub_1D95C01EC();
      (*(*(v41 - 8) + 104))(v43, *MEMORY[0x1E69E6AF8], v41);
      swift_willThrow();
      (*(v67 + 8))(v26, v22);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v36 > 2u)
      {
        v40 = v64;
        if (v36 == 3)
        {
          LOBYTE(v68) = 3;
          sub_1D95B91CC();
          sub_1D95C027C();
          (*(v56 + 8))(v31, v55);
          (*(v67 + 8))(v33, v22);
          swift_unknownObjectRelease();
          v38 = 0uLL;
          v39 = -3;
        }

        else if (v36 == 4)
        {
          LOBYTE(v68) = 4;
          sub_1D95B9178();
          v46 = v62;
          sub_1D95C027C();
          (*(v59 + 8))(v46, v54);
          (*(v67 + 8))(v33, v22);
          swift_unknownObjectRelease();
          v38 = 0uLL;
          v39 = -4;
        }

        else
        {
          LOBYTE(v68) = 5;
          sub_1D95B9124();
          v49 = v63;
          sub_1D95C027C();
          (*(v60 + 8))(v49, v61);
          (*(v67 + 8))(v33, v22);
          swift_unknownObjectRelease();
          v38 = 0uLL;
          v39 = -5;
        }
      }

      else if (v36)
      {
        if (v36 == 1)
        {
          LOBYTE(v68) = 1;
          sub_1D95B9274();
          sub_1D95C027C();
          v37 = v67;
          (*(v52 + 8))(v17, v53);
          (*(v37 + 8))(v26, v22);
          swift_unknownObjectRelease();
          v38 = 0uLL;
          v39 = -2;
          v40 = v64;
        }

        else
        {
          LOBYTE(v68) = 2;
          sub_1D95B9220();
          v47 = v26;
          sub_1D95C027C();
          v40 = v64;
          sub_1D959D64C();
          v48 = v58;
          sub_1D95C030C();
          (*(v57 + 8))(v32, v48);
          (*(v67 + 8))(v47, v22);
          swift_unknownObjectRelease();
          v38 = v68;
          v39 = v69;
        }
      }

      else
      {
        LOBYTE(v68) = 0;
        sub_1D95B92C8();
        sub_1D95C027C();
        (*(v51 + 8))(v30, v50);
        (*(v67 + 8))(v26, v22);
        swift_unknownObjectRelease();
        v38 = 0uLL;
        v39 = -1;
        v40 = v64;
      }

      *v40 = v38;
      *(v40 + 16) = v39;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v74);
}

uint64_t sub_1D95B62B8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1D95C051C();
  if (v3 > 252)
  {
    if (v3 == 253)
    {
      v4 = 3;
    }

    else
    {
      v4 = v3 == 254;
    }

    goto LABEL_9;
  }

  if (v3 == 251)
  {
    v4 = 5;
    goto LABEL_9;
  }

  if (v3 == 252)
  {
    v4 = 4;
LABEL_9:
    MEMORY[0x1DA732B80](v4);
    return sub_1D95C055C();
  }

  MEMORY[0x1DA732B80](2);
  if (v3)
  {
    MEMORY[0x1DA732B80](1);
    sub_1D95BFE1C();
  }

  else
  {
    MEMORY[0x1DA732B80](0);
    MEMORY[0x1DA732BA0](v1);
  }

  return sub_1D95C055C();
}

unint64_t AppProgress.state.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_1D953FCB8(v2);
}

uint64_t AppProgress.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 32);
  *(a1 + 24) = v5;
  return sub_1D95B13EC(v2, v3, v4, v5);
}

uint64_t sub_1D95B63E0()
{
  if (*v0)
  {
    result = 0x696669746E656469;
  }

  else
  {
    result = 0x6574617473;
  }

  *v0;
  return result;
}

uint64_t sub_1D95B641C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D95C041C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D95C041C();

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

uint64_t sub_1D95B64FC(uint64_t a1)
{
  v2 = sub_1D95B931C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95B6538(uint64_t a1)
{
  v2 = sub_1D95B931C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppProgress.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07C70, &qword_1D95CD9B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v10 = *v1;
  v9 = *(v1 + 8);
  v11 = *(v1 + 24);
  v16 = *(v1 + 16);
  v17 = v9;
  v15 = v11;
  v22 = *(v1 + 32);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D953FCB8(v10);
  sub_1D95B931C();
  sub_1D95C05BC();
  v18 = v10;
  v23 = 0;
  sub_1D9566C4C();
  sub_1D95C03CC();
  sub_1D9564D80(v18);
  if (!v2)
  {
    v18 = v17;
    v19 = v16;
    v20 = v15;
    v21 = v22;
    v23 = 1;
    sub_1D95B13EC(v17, v16, v15, v22);
    sub_1D95B9370();
    sub_1D95C03CC();
    sub_1D958FFD0(v18, v19, v20, v21);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t AppProgress.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07C88, &qword_1D95CD9C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95B931C();
  sub_1D95C059C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = 0;
  sub_1D9566DF0();
  sub_1D95C030C();
  v11 = v17[0];
  v19 = 1;
  sub_1D95B93C4();
  sub_1D95C030C();
  (*(v6 + 8))(v9, v5);
  v12 = v17[0];
  v13 = v17[1];
  v14 = v17[2];
  v15 = v18;
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  sub_1D953FCB8(v11);
  sub_1D95B13EC(v12, v13, v14, v15);
  __swift_destroy_boxed_opaque_existential_0(a1);
  sub_1D9564D80(v11);
  return sub_1D958FFD0(v12, v13, v14, v15);
}

uint64_t sub_1D95B69BC(uint64_t a1)
{
  v2 = sub_1D95B946C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95B69F8(uint64_t a1)
{
  v2 = sub_1D95B946C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95B6A34(uint64_t a1)
{
  v2 = sub_1D95B94C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95B6A70(uint64_t a1)
{
  v2 = sub_1D95B94C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95B6AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73736572676F7270 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D95C041C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D95B6B4C(uint64_t a1)
{
  v2 = sub_1D95B96EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95B6B88(uint64_t a1)
{
  v2 = sub_1D95B96EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D95B6BC4()
{
  v1 = *v0;
  v2 = 0x72676F7250707061;
  v3 = 0x6C61746143707061;
  if (v1 != 4)
  {
    v3 = 0x6E69746152656761;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0xD000000000000015;
  if (v1 != 1)
  {
    v4 = 6778732;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_1D95B6C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D95BAF1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D95B6CB4(uint64_t a1)
{
  v2 = sub_1D95B9418();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95B6CF0(uint64_t a1)
{
  v2 = sub_1D95B9418();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95B6D2C(uint64_t a1)
{
  v2 = sub_1D95B9698();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95B6D68(uint64_t a1)
{
  v2 = sub_1D95B9698();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95B6DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 6778732 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D95C041C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D95B6E3C(uint64_t a1)
{
  v2 = sub_1D95B9644();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95B6E78(uint64_t a1)
{
  v2 = sub_1D95B9644();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95B6EB4()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1D95B6ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1D95C041C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D95C041C();

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

uint64_t sub_1D95B6F9C(uint64_t a1)
{
  v2 = sub_1D95B9568();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95B6FD8(uint64_t a1)
{
  v2 = sub_1D95B9568();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t XPCClientMessage.MessageType.encode(to:)(void *a1)
{
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07C98, &qword_1D95CD9C8);
  v52 = *(v55 - 8);
  v3 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v49 = &v40 - v4;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07CA0, &qword_1D95CD9D0);
  v51 = *(v53 - 8);
  v5 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v48 = &v40 - v6;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07CA8, &qword_1D95CD9D8);
  v54 = *(v56 - 8);
  v7 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v50 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07CB0, &qword_1D95CD9E0);
  v46 = *(v9 - 8);
  v47 = v9;
  v10 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v40 - v11;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07CB8, &qword_1D95CD9E8);
  v43 = *(v44 - 8);
  v12 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v14 = &v40 - v13;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07CC0, &qword_1D95CD9F0);
  v41 = *(v42 - 8);
  v15 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v17 = &v40 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07CC8, &qword_1D95CD9F8);
  v57 = *(v18 - 8);
  v19 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v40 - v20;
  v22 = *v1;
  v40 = v1[1];
  v59 = v22;
  v23 = *(v1 + 32);
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95B9418();
  sub_1D95C05BC();
  v25 = (v23 >> 3) & 7;
  if (v25 > 2)
  {
    if (v25 == 3)
    {
      LOBYTE(v60) = 4;
      sub_1D95B94C0();
      v32 = v48;
      v31 = v21;
      sub_1D95C034C();
      *&v60 = v59;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07CD8, &qword_1D95CDA00);
      sub_1D95B9794(&qword_1EDCF9B10, sub_1D95B9514);
      v33 = v53;
      sub_1D95C03CC();
      v34 = v51;
    }

    else
    {
      v31 = v21;
      if (v25 != 4)
      {
        LOBYTE(v60) = 1;
        sub_1D95B9698();
        sub_1D95C034C();
        (*(v43 + 8))(v14, v44);
        return (*(v57 + 8))(v21, v18);
      }

      LOBYTE(v60) = 5;
      sub_1D95B946C();
      v32 = v49;
      sub_1D95C034C();
      v33 = v55;
      sub_1D95C03BC();
      v34 = v52;
    }

    (*(v34 + 8))(v32, v33);
    return (*(v57 + 8))(v31, v18);
  }

  if (!v25)
  {
    LOBYTE(v60) = 0;
    sub_1D95B96EC();
    v31 = v21;
    sub_1D95C034C();
    v60 = v59;
    v61 = v40;
    v62 = v23;
    sub_1D95B9740();
    v35 = v42;
    sub_1D95C03CC();
    (*(v41 + 8))(v17, v35);
    return (*(v57 + 8))(v31, v18);
  }

  v26 = v18;
  if (v25 == 1)
  {
    LOBYTE(v60) = 2;
    sub_1D95B9644();
    v27 = v45;
    sub_1D95C034C();
    v28 = v47;
    sub_1D95C038C();
    (*(v46 + 8))(v27, v28);
    v29 = *(v57 + 8);
    v30 = v21;
  }

  else
  {
    LOBYTE(v60) = 3;
    sub_1D95B9568();
    v37 = v50;
    sub_1D95C034C();
    *&v60 = v59;
    v63 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07CE8, &qword_1D95CDA08);
    sub_1D95B95BC(&qword_1ECB07CF0, &qword_1ECB07CF8);
    v38 = v56;
    v39 = v58;
    sub_1D95C036C();
    if (!v39)
    {
      LOBYTE(v60) = BYTE8(v59);
      v63 = 1;
      sub_1D9590C68();
      sub_1D95C036C();
    }

    (*(v54 + 8))(v37, v38);
    v29 = *(v57 + 8);
    v30 = v21;
  }

  return v29(v30, v26);
}

uint64_t XPCClientMessage.MessageType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07D10, &qword_1D95CDA10);
  v67 = *(v64 - 8);
  v3 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v70 = &v56 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07D18, &qword_1D95CDA18);
  v6 = *(v5 - 8);
  v65 = v5;
  v66 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v72 = &v56 - v8;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07D20, &qword_1D95CDA20);
  v68 = *(v62 - 8);
  v9 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v71 = &v56 - v10;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07D28, &qword_1D95CDA28);
  v63 = *(v58 - 8);
  v11 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v69 = &v56 - v12;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07D30, &qword_1D95CDA30);
  v60 = *(v61 - 8);
  v13 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v15 = &v56 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07D38, &qword_1D95CDA38);
  v59 = *(v16 - 8);
  v17 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v56 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07D40, &qword_1D95CDA40);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v56 - v23;
  v25 = a1[3];
  v26 = a1[4];
  v75 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v25);
  sub_1D95B9418();
  v27 = v74;
  sub_1D95C059C();
  v28 = v27;
  if (v27)
  {
    return __swift_destroy_boxed_opaque_existential_0(v75);
  }

  v29 = v19;
  v57 = v16;
  v31 = v71;
  v30 = v72;
  v74 = v21;
  v32 = v73;
  v33 = sub_1D95C032C();
  v34 = (2 * *(v33 + 16)) | 1;
  v80 = v33;
  v81 = v33 + 32;
  v82 = 0;
  v83 = v34;
  v35 = sub_1D954A274();
  if (v35 == 6 || v82 != v83 >> 1)
  {
    v39 = sub_1D95C01FC();
    swift_allocError();
    v41 = v40;
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D48, &qword_1D95C4250) + 48);
    *v41 = &type metadata for XPCClientMessage.MessageType;
    sub_1D95C028C();
    sub_1D95C01EC();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v39);
    swift_willThrow();
    (*(v74 + 8))(v24, v20);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v75);
  }

  if (v35 > 2u)
  {
    if (v35 == 3)
    {
      LOBYTE(v76) = 3;
      sub_1D95B9568();
      sub_1D95C027C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07CE8, &qword_1D95CDA08);
      v85 = 0;
      sub_1D95B95BC(&qword_1ECB07D48, &qword_1ECB07D50);
      v47 = v62;
      sub_1D95C02AC();
      v28 = v76;
      v84 = 1;
      sub_1D9591498();
      sub_1D95C02AC();
      v59 = 0;
      (*(v68 + 8))(v31, v47);
      (*(v74 + 8))(v24, v20);
      swift_unknownObjectRelease();
      v36 = v85;
      v37 = 0uLL;
      v38 = 16;
    }

    else if (v35 == 4)
    {
      LOBYTE(v76) = 4;
      sub_1D95B94C0();
      sub_1D95C027C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07CD8, &qword_1D95CDA00);
      sub_1D95B9794(&qword_1EDCFA178, sub_1D95B980C);
      v44 = v65;
      sub_1D95C030C();
      v59 = 0;
      (*(v66 + 8))(v30, v44);
      (*(v74 + 8))(v24, v20);
      swift_unknownObjectRelease();
      v36 = 0;
      v28 = v76;
      v37 = 0uLL;
      v38 = 24;
    }

    else
    {
      LOBYTE(v76) = 5;
      sub_1D95B946C();
      v52 = v70;
      sub_1D95C027C();
      v53 = v64;
      v54 = sub_1D95C02FC();
      v59 = 0;
      v28 = v54;
      (*(v67 + 8))(v52, v53);
      (*(v74 + 8))(v24, v20);
      swift_unknownObjectRelease();
      v36 = 0;
      v37 = 0uLL;
      v38 = 32;
    }
  }

  else if (v35)
  {
    if (v35 == 1)
    {
      LOBYTE(v76) = 1;
      sub_1D95B9698();
      sub_1D95C027C();
      v59 = 0;
      (*(v60 + 8))(v15, v61);
      (*(v74 + 8))(v24, v20);
      swift_unknownObjectRelease();
      v36 = 0;
      v37 = 0uLL;
      v38 = 40;
    }

    else
    {
      LOBYTE(v76) = 2;
      sub_1D95B9644();
      v48 = v69;
      sub_1D95C027C();
      v49 = v58;
      v50 = sub_1D95C02CC();
      v51 = v74;
      v59 = 0;
      v28 = v50;
      v36 = v55;
      (*(v63 + 8))(v48, v49);
      (*(v51 + 8))(v24, v20);
      swift_unknownObjectRelease();
      v37 = 0uLL;
      v38 = 8;
    }
  }

  else
  {
    LOBYTE(v76) = 0;
    sub_1D95B96EC();
    v45 = v29;
    sub_1D95C027C();
    sub_1D95B98A4();
    v46 = v57;
    sub_1D95C030C();
    (*(v59 + 8))(v45, v46);
    (*(v74 + 8))(v24, v20);
    swift_unknownObjectRelease();
    v59 = 0;
    v28 = v76;
    v36 = v77;
    v37 = v78;
    v38 = v79;
  }

  *v32 = v28;
  *(v32 + 8) = v36;
  *(v32 + 16) = v37;
  *(v32 + 32) = v38;
  return __swift_destroy_boxed_opaque_existential_0(v75);
}

unint64_t XPCClientMessage.type.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 32);
  *(a1 + 32) = v6;
  return sub_1D95B1334(v2, v3, v4, v5, v6);
}

double static XPCClientMessage.connectionEstablished.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 40;
  return result;
}

uint64_t static XPCClientMessage.appCatalog(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 24;
}

uint64_t static XPCClientMessage.ageRating(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 32;
  return result;
}

uint64_t static XPCClientMessage.appProgress(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  v6 = *(a1 + 32);
  *(a2 + 32) = v6;
  sub_1D953FCB8(v2);

  return sub_1D95B13EC(v3, v4, v5, v6);
}

uint64_t static XPCClientMessage.managedAppCatalog(apps:error:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = a1;
  *(a3 + 8) = v3;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 16;
}

uint64_t sub_1D95B8598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D95C041C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D95B8620(uint64_t a1)
{
  v2 = sub_1D95B98F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95B865C(uint64_t a1)
{
  v2 = sub_1D95B98F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t XPCClientMessage.encode(to:)(void *a1)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07D60, &qword_1D95CDA48);
  v21 = *(v15 - 8);
  v3 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v5 = &v14 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = a1[3];
  v14 = a1[4];
  v11 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1Tm(a1, v10);
  sub_1D95B1334(v6, v7, v8, v9, v11);
  sub_1D95B98F8();
  sub_1D95C05BC();
  v16 = v6;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v20 = v11;
  sub_1D95B994C();
  v12 = v15;
  sub_1D95C03CC();
  sub_1D95B1250(v16, v17, v18, v19, v20);
  return (*(v21 + 8))(v5, v12);
}

uint64_t XPCClientMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07D68, &qword_1D95CDA50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95B98F8();
  sub_1D95C059C();
  if (!v2)
  {
    sub_1D95B99A0();
    sub_1D95C030C();
    (*(v6 + 8))(v9, v5);
    v11 = v15;
    v12 = v14[1];
    *a2 = v14[0];
    *(a2 + 16) = v12;
    *(a2 + 32) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t XPCClientProtocol.handleMessage(_:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07D70, &qword_1D95CDA58);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D95C2A10;
  *(v6 + 32) = v1;
  *(v6 + 40) = v2;
  *(v6 + 48) = v3;
  *(v6 + 56) = v4;
  *(v6 + 64) = v5;
  sub_1D95B1334(v1, v2, v3, v4, v5);
  XPCClientProtocol.handleMessages(_:)(v6);
}

Swift::Void __swiftcall XPCClientProtocol.handleMessages(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v3 = sub_1D95BFADC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1D95BFACC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07AC8, &qword_1D95CDA60);
  sub_1D95B99F4();
  v6 = sub_1D95BFABC();
  v8 = v7;

  v9 = sub_1D95BFBBC();
  [v2 handleMessages_];

  sub_1D955AA18(v6, v8);
}

Swift::Void __swiftcall XPCClientProtocol.logMessage(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = a1;
  v4 = 0;
  v5 = 0;
  v6 = 8;

  XPCClientProtocol.handleMessage(_:)(&v3);

  sub_1D95B1250(countAndFlagsBits, object, 0, 0, 8u);
}

uint64_t _s22ManagedAppDistribution19MessageRegistrationO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 <= 0xFC)
  {
    if (v4 == 251)
    {
      if (v7 == 251)
      {
        sub_1D95B19E8(*a1, v3, 0xFBu);
        v8 = v5;
        v9 = v6;
        v10 = -5;
        goto LABEL_17;
      }

      goto LABEL_19;
    }

    if (v4 == 252)
    {
      if (v7 == 252)
      {
        sub_1D95B19E8(*a1, v3, 0xFCu);
        v8 = v5;
        v9 = v6;
        v10 = -4;
        goto LABEL_17;
      }

      goto LABEL_19;
    }
  }

  else
  {
    switch(v4)
    {
      case 0xFDu:
        if (v7 == 253)
        {
          sub_1D95B19E8(*a1, v3, 0xFDu);
          v8 = v5;
          v9 = v6;
          v10 = -3;
          goto LABEL_17;
        }

        goto LABEL_19;
      case 0xFEu:
        if (v7 == 254)
        {
          sub_1D95B19E8(*a1, v3, 0xFEu);
          v8 = v5;
          v9 = v6;
          v10 = -2;
          goto LABEL_17;
        }

        goto LABEL_19;
      case 0xFFu:
        if (v7 == 255)
        {
          sub_1D95B19E8(*a1, v3, 0xFFu);
          v8 = v5;
          v9 = v6;
          v10 = -1;
LABEL_17:
          sub_1D95B19E8(v8, v9, v10);
          return 1;
        }

        goto LABEL_19;
    }
  }

  if (v7 > 0xFA)
  {
LABEL_19:
    sub_1D95B19D0(*a2, *(a2 + 8), v7);
    sub_1D95B19D0(v2, v3, v4);
    sub_1D95B19E8(v2, v3, v4);
    sub_1D95B19E8(v5, v6, v7);
    return 0;
  }

  if (v4)
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_19;
    }

    if (v2 == v5 && v3 == v6)
    {
      sub_1D95B19D0(*a1, v3, v7);
      sub_1D95B19D0(v2, v3, v4);
      sub_1D95B19E8(v2, v3, v4);
      v8 = v2;
      v9 = v3;
      v10 = v7;
      goto LABEL_17;
    }

    v12 = *a1;
    v13 = sub_1D95C041C();
    sub_1D95B19D0(v5, v6, v7);
    sub_1D95B19D0(v2, v3, v4);
    sub_1D95B19E8(v2, v3, v4);
    sub_1D95B19E8(v5, v6, v7);
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    sub_1D95B19D0(*a2, *(a2 + 8), v7);
    sub_1D95B19D0(v2, v3, v4);
    sub_1D95B19E8(v2, v3, v4);
    sub_1D95B19E8(v5, v6, v7);
    if ((v7 & 1) != 0 || v2 != v5)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_1D95B90D0()
{
  result = qword_1EDCFA450;
  if (!qword_1EDCFA450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA450);
  }

  return result;
}

unint64_t sub_1D95B9124()
{
  result = qword_1ECB07C10;
  if (!qword_1ECB07C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07C10);
  }

  return result;
}

unint64_t sub_1D95B9178()
{
  result = qword_1EDCFA438;
  if (!qword_1EDCFA438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA438);
  }

  return result;
}

unint64_t sub_1D95B91CC()
{
  result = qword_1ECB07C18;
  if (!qword_1ECB07C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07C18);
  }

  return result;
}

unint64_t sub_1D95B9220()
{
  result = qword_1ECB07C20;
  if (!qword_1ECB07C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07C20);
  }

  return result;
}

unint64_t sub_1D95B9274()
{
  result = qword_1ECB07C28;
  if (!qword_1ECB07C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07C28);
  }

  return result;
}

unint64_t sub_1D95B92C8()
{
  result = qword_1ECB07C30;
  if (!qword_1ECB07C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07C30);
  }

  return result;
}

unint64_t sub_1D95B931C()
{
  result = qword_1ECB07C78;
  if (!qword_1ECB07C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07C78);
  }

  return result;
}

unint64_t sub_1D95B9370()
{
  result = qword_1ECB07C80;
  if (!qword_1ECB07C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07C80);
  }

  return result;
}

unint64_t sub_1D95B93C4()
{
  result = qword_1ECB07C90;
  if (!qword_1ECB07C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07C90);
  }

  return result;
}

unint64_t sub_1D95B9418()
{
  result = qword_1EDCFA4D8;
  if (!qword_1EDCFA4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA4D8);
  }

  return result;
}

unint64_t sub_1D95B946C()
{
  result = qword_1ECB07CD0;
  if (!qword_1ECB07CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07CD0);
  }

  return result;
}

unint64_t sub_1D95B94C0()
{
  result = qword_1EDCFA290;
  if (!qword_1EDCFA290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA290);
  }

  return result;
}

unint64_t sub_1D95B9514()
{
  result = qword_1EDCF9CA8;
  if (!qword_1EDCF9CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF9CA8);
  }

  return result;
}

unint64_t sub_1D95B9568()
{
  result = qword_1ECB07CE0;
  if (!qword_1ECB07CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07CE0);
  }

  return result;
}

uint64_t sub_1D95B95BC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB07CE8, &qword_1D95CDA08);
    sub_1D95B9860(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D95B9644()
{
  result = qword_1EDCF9CC0;
  if (!qword_1EDCF9CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF9CC0);
  }

  return result;
}

unint64_t sub_1D95B9698()
{
  result = qword_1EDCFA4B0;
  if (!qword_1EDCFA4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA4B0);
  }

  return result;
}

unint64_t sub_1D95B96EC()
{
  result = qword_1ECB07D00;
  if (!qword_1ECB07D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07D00);
  }

  return result;
}

unint64_t sub_1D95B9740()
{
  result = qword_1ECB07D08;
  if (!qword_1ECB07D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07D08);
  }

  return result;
}

uint64_t sub_1D95B9794(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB07CD8, &qword_1D95CDA00);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D95B980C()
{
  result = qword_1EDCFA180;
  if (!qword_1EDCFA180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA180);
  }

  return result;
}

uint64_t sub_1D95B9860(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ManagedApp();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D95B98A4()
{
  result = qword_1ECB07D58;
  if (!qword_1ECB07D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07D58);
  }

  return result;
}

unint64_t sub_1D95B98F8()
{
  result = qword_1EDCFA498;
  if (!qword_1EDCFA498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA498);
  }

  return result;
}

unint64_t sub_1D95B994C()
{
  result = qword_1EDCF9CB8;
  if (!qword_1EDCF9CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF9CB8);
  }

  return result;
}

unint64_t sub_1D95B99A0()
{
  result = qword_1EDCFA288;
  if (!qword_1EDCFA288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA288);
  }

  return result;
}

unint64_t sub_1D95B99F4()
{
  result = qword_1EDCF9C98;
  if (!qword_1EDCF9C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB07AC8, &qword_1D95CDA60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCF9C98);
  }

  return result;
}

unint64_t sub_1D95B9A5C()
{
  result = qword_1EDCFA408;
  if (!qword_1EDCFA408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA408);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22ManagedAppDistribution19MessageRegistrationO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D95B9AC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 > 1)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 6)
  {
    return v4 - 5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D95B9B0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -5 - a2;
    }
  }

  return result;
}

uint64_t sub_1D95B9B58(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 16) = -a2;
  }

  return result;
}

uint64_t sub_1D95B9B9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 33))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 32) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 32) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D95B9BF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 32) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22ManagedAppDistribution16XPCClientMessageV0E4TypeO(uint64_t a1)
{
  v1 = (*(a1 + 32) >> 3) & 7;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1D95B9C88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1B && *(a1 + 33))
  {
    return (*a1 + 27);
  }

  v3 = ((4 * *(a1 + 32)) & 0x18 | (*(a1 + 32) >> 3) & 7) ^ 0x1F;
  if (v3 >= 0x1A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D95B9CDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1A)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 27;
    *(result + 8) = 0;
    if (a3 >= 0x1B)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1B)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * ((((-a2 >> 3) & 3) - 4 * a2) & 0x1F);
    }
  }

  return result;
}

uint64_t sub_1D95B9D48(uint64_t result, unsigned int a2)
{
  if (a2 < 5)
  {
    *(result + 32) = *(result + 32) & 0xC1 | (8 * a2);
  }

  else
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 40;
  }

  return result;
}

unint64_t sub_1D95B9E8C()
{
  result = qword_1ECB07D78;
  if (!qword_1ECB07D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07D78);
  }

  return result;
}

unint64_t sub_1D95B9EE4()
{
  result = qword_1ECB07D80;
  if (!qword_1ECB07D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07D80);
  }

  return result;
}

unint64_t sub_1D95B9F3C()
{
  result = qword_1ECB07D88;
  if (!qword_1ECB07D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07D88);
  }

  return result;
}

unint64_t sub_1D95B9F94()
{
  result = qword_1ECB07D90;
  if (!qword_1ECB07D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07D90);
  }

  return result;
}

unint64_t sub_1D95B9FEC()
{
  result = qword_1ECB07D98;
  if (!qword_1ECB07D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07D98);
  }

  return result;
}

unint64_t sub_1D95BA044()
{
  result = qword_1ECB07DA0;
  if (!qword_1ECB07DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07DA0);
  }

  return result;
}

unint64_t sub_1D95BA09C()
{
  result = qword_1ECB07DA8;
  if (!qword_1ECB07DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07DA8);
  }

  return result;
}

unint64_t sub_1D95BA0F4()
{
  result = qword_1ECB07DB0;
  if (!qword_1ECB07DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07DB0);
  }

  return result;
}

unint64_t sub_1D95BA14C()
{
  result = qword_1ECB07DB8;
  if (!qword_1ECB07DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07DB8);
  }

  return result;
}

unint64_t sub_1D95BA1A4()
{
  result = qword_1ECB07DC0;
  if (!qword_1ECB07DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07DC0);
  }

  return result;
}

unint64_t sub_1D95BA1FC()
{
  result = qword_1EDCFA488;
  if (!qword_1EDCFA488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA488);
  }

  return result;
}

unint64_t sub_1D95BA254()
{
  result = qword_1EDCFA490;
  if (!qword_1EDCFA490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA490);
  }

  return result;
}

unint64_t sub_1D95BA2AC()
{
  result = qword_1EDCFA4F0;
  if (!qword_1EDCFA4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA4F0);
  }

  return result;
}

unint64_t sub_1D95BA304()
{
  result = qword_1EDCFA4F8;
  if (!qword_1EDCFA4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA4F8);
  }

  return result;
}

unint64_t sub_1D95BA35C()
{
  result = qword_1EDCFA4A0;
  if (!qword_1EDCFA4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA4A0);
  }

  return result;
}

unint64_t sub_1D95BA3B4()
{
  result = qword_1EDCFA4A8;
  if (!qword_1EDCFA4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA4A8);
  }

  return result;
}

unint64_t sub_1D95BA40C()
{
  result = qword_1EDCFA4B8;
  if (!qword_1EDCFA4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA4B8);
  }

  return result;
}

unint64_t sub_1D95BA464()
{
  result = qword_1EDCFA4C0;
  if (!qword_1EDCFA4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA4C0);
  }

  return result;
}

unint64_t sub_1D95BA4BC()
{
  result = qword_1EDCFA4E0;
  if (!qword_1EDCFA4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA4E0);
  }

  return result;
}

unint64_t sub_1D95BA514()
{
  result = qword_1EDCFA4E8;
  if (!qword_1EDCFA4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA4E8);
  }

  return result;
}

unint64_t sub_1D95BA56C()
{
  result = qword_1EDCFA500;
  if (!qword_1EDCFA500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA500);
  }

  return result;
}

unint64_t sub_1D95BA5C4()
{
  result = qword_1EDCFA508[0];
  if (!qword_1EDCFA508[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCFA508);
  }

  return result;
}

unint64_t sub_1D95BA61C()
{
  result = qword_1EDCFA160;
  if (!qword_1EDCFA160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA160);
  }

  return result;
}

unint64_t sub_1D95BA674()
{
  result = qword_1EDCFA168;
  if (!qword_1EDCFA168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA168);
  }

  return result;
}

unint64_t sub_1D95BA6CC()
{
  result = qword_1EDCFA4C8;
  if (!qword_1EDCFA4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA4C8);
  }

  return result;
}

unint64_t sub_1D95BA724()
{
  result = qword_1EDCFA4D0;
  if (!qword_1EDCFA4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA4D0);
  }

  return result;
}

unint64_t sub_1D95BA77C()
{
  result = qword_1ECB07DC8;
  if (!qword_1ECB07DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07DC8);
  }

  return result;
}

unint64_t sub_1D95BA7D4()
{
  result = qword_1ECB07DD0;
  if (!qword_1ECB07DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07DD0);
  }

  return result;
}

unint64_t sub_1D95BA82C()
{
  result = qword_1EDCFA468;
  if (!qword_1EDCFA468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA468);
  }

  return result;
}

unint64_t sub_1D95BA884()
{
  result = qword_1EDCFA470;
  if (!qword_1EDCFA470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA470);
  }

  return result;
}

unint64_t sub_1D95BA8DC()
{
  result = qword_1EDCFA150;
  if (!qword_1EDCFA150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA150);
  }

  return result;
}

unint64_t sub_1D95BA934()
{
  result = qword_1EDCFA158;
  if (!qword_1EDCFA158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA158);
  }

  return result;
}

unint64_t sub_1D95BA98C()
{
  result = qword_1EDCFA458;
  if (!qword_1EDCFA458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA458);
  }

  return result;
}

unint64_t sub_1D95BA9E4()
{
  result = qword_1EDCFA460;
  if (!qword_1EDCFA460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA460);
  }

  return result;
}

unint64_t sub_1D95BAA3C()
{
  result = qword_1EDCFA478;
  if (!qword_1EDCFA478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA478);
  }

  return result;
}

unint64_t sub_1D95BAA94()
{
  result = qword_1EDCFA480;
  if (!qword_1EDCFA480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA480);
  }

  return result;
}

unint64_t sub_1D95BAAEC()
{
  result = qword_1EDCFA428;
  if (!qword_1EDCFA428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA428);
  }

  return result;
}

unint64_t sub_1D95BAB44()
{
  result = qword_1EDCFA430;
  if (!qword_1EDCFA430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA430);
  }

  return result;
}

unint64_t sub_1D95BAB9C()
{
  result = qword_1EDCFA418;
  if (!qword_1EDCFA418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA418);
  }

  return result;
}

unint64_t sub_1D95BABF4()
{
  result = qword_1EDCFA420;
  if (!qword_1EDCFA420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA420);
  }

  return result;
}

unint64_t sub_1D95BAC4C()
{
  result = qword_1EDCFA440;
  if (!qword_1EDCFA440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA440);
  }

  return result;
}

unint64_t sub_1D95BACA4()
{
  result = qword_1EDCFA448;
  if (!qword_1EDCFA448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA448);
  }

  return result;
}

uint64_t sub_1D95BACF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61746143707061 && a2 == 0xEA0000000000676FLL;
  if (v4 || (sub_1D95C041C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69746152656761 && a2 == 0xE900000000000067 || (sub_1D95C041C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574617453707061 && a2 == 0xEE0065676E616843 || (sub_1D95C041C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D95D0EC0 == a2 || (sub_1D95C041C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E6967676F6CLL && a2 == 0xE700000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x436567616B636170 && a2 == 0xEE00676F6C617461)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D95C041C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1D95BAF1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72676F7250707061 && a2 == 0xEB00000000737365;
  if (v4 || (sub_1D95C041C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D95D0EE0 == a2 || (sub_1D95C041C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6778732 && a2 == 0xE300000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D95D0F00 == a2 || (sub_1D95C041C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C61746143707061 && a2 == 0xEA0000000000676FLL || (sub_1D95C041C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E69746152656761 && a2 == 0xE900000000000067)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D95C041C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t OAuthAuthorizeRequest.endpointURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D95BFBAC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for OAuthAuthorizeRequest()
{
  result = qword_1ECB07DF0;
  if (!qword_1ECB07DF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OAuthAuthorizeRequest.init(endpointURL:isUpdate:isMarketplace:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_1D95BFBAC();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for OAuthAuthorizeRequest();
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t sub_1D95BB2EC()
{
  if (qword_1EDCFA278 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1D95870D8;
  v2 = *(v0 + 16);

  return sub_1D9554A98(1, v2, sub_1D95BB3E4, 0);
}

void sub_1D95BB3E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D95BFBBC();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D95A3C64;
  v10[3] = &block_descriptor_18;
  v9 = _Block_copy(v10);

  [a1 oauthAuthorize:v8 reply:v9];
  _Block_release(v9);
}

uint64_t sub_1D95BB4C0()
{
  v1 = 0x6574616470557369;
  if (*v0 != 1)
  {
    v1 = 0x74656B72614D7369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E696F70646E65;
  }
}

uint64_t sub_1D95BB530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D95BBE0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D95BB558(uint64_t a1)
{
  v2 = sub_1D95BB7A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95BB594(uint64_t a1)
{
  v2 = sub_1D95BB7A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OAuthAuthorizeRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07DD8, &qword_1D95CF0D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95BB7A4();
  sub_1D95C05BC();
  v15[15] = 0;
  sub_1D95BFBAC();
  sub_1D956C888(&qword_1ECB05E10);
  sub_1D95C03CC();
  if (!v2)
  {
    v11 = type metadata accessor for OAuthAuthorizeRequest();
    v12 = *(v3 + *(v11 + 20));
    v15[14] = 1;
    sub_1D95C039C();
    v13 = *(v3 + *(v11 + 24));
    v15[13] = 2;
    sub_1D95C039C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D95BB7A4()
{
  result = qword_1ECB07DE0;
  if (!qword_1ECB07DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07DE0);
  }

  return result;
}

uint64_t OAuthAuthorizeRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_1D95BFBAC();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07DE8, &qword_1D95CF0E0);
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = type metadata accessor for OAuthAuthorizeRequest();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95BB7A4();
  sub_1D95C059C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v16 = v14;
  v17 = v25;
  v31 = 0;
  sub_1D956C888(&qword_1ECB05E88);
  v18 = v27;
  sub_1D95C030C();
  v19 = *(v17 + 32);
  v20 = v28;
  v28 = v4;
  v19(v16, v20, v4);
  v30 = 1;
  *(v16 + *(v11 + 20)) = sub_1D95C02DC() & 1;
  v29 = 2;
  v21 = sub_1D95C02DC();
  (*(v26 + 8))(v10, v18);
  *(v16 + *(v11 + 24)) = v21 & 1;
  sub_1D95BBB60(v16, v24);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1D95BBBC4(v16);
}

uint64_t sub_1D95BBB60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OAuthAuthorizeRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D95BBBC4(uint64_t a1)
{
  v2 = type metadata accessor for OAuthAuthorizeRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D95BBC78()
{
  result = sub_1D95BFBAC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D95BBD08()
{
  result = qword_1ECB07E00;
  if (!qword_1ECB07E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07E00);
  }

  return result;
}

unint64_t sub_1D95BBD60()
{
  result = qword_1ECB07E08;
  if (!qword_1ECB07E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07E08);
  }

  return result;
}

unint64_t sub_1D95BBDB8()
{
  result = qword_1ECB07E10;
  if (!qword_1ECB07E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07E10);
  }

  return result;
}

uint64_t sub_1D95BBE0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E696F70646E65 && a2 == 0xEB000000004C5255;
  if (v4 || (sub_1D95C041C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574616470557369 && a2 == 0xE800000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74656B72614D7369 && a2 == 0xED00006563616C70)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D95C041C();

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

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D95BBF48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedAppDeclaration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D95BBFAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedAppDeclaration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t DDMAppOrUpdateManagedAppRequest.request()()
{
  *(v1 + 16) = v0;
  v2 = *(*(type metadata accessor for DDMAddOrUpdateManagedAppRequest(0) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D95BC0C0, 0, 0);
}

uint64_t sub_1D95BC0C0()
{
  sub_1D95BBF48(v0[2], v0[3]);
  if (qword_1EDCFA278 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1D95BC1C0;
  v2 = v0[3];

  return sub_1D9555268(1, v2, sub_1D95BCA60, 0);
}

uint64_t sub_1D95BC1C0()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_1D95BC344;
  }

  else
  {
    v3 = sub_1D95BC2D4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D95BC2D4()
{
  sub_1D95BCA6C(*(v0 + 24));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D95BC344()
{
  sub_1D95BCA6C(v0[3]);

  v1 = v0[1];
  v2 = v0[5];

  return v1();
}

uint64_t DDMAddOrUpdateManagedAppRequest.send(to:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 32) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D95BC408, 0, 0);
}

uint64_t sub_1D95BC408()
{
  if (*(v0 + 32))
  {
    __break(1u);
  }

  else if (qword_1EDCFA278 == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1D95870D8;
  v2 = *(v0 + 16);

  return sub_1D9555268(1, v2, sub_1D95BCA60, 0);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DDMAppOrUpdateManagedAppRequest.request()()
{
  updated = type metadata accessor for DDMAddOrUpdateManagedAppRequest(0);
  v2 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated - 8);
  v4 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D95BBF48(v0, v4);
  if (qword_1EDCFA278 != -1)
  {
    swift_once();
  }

  sub_1D95741A4(1, v4, sub_1D95BCAC8, 0);
  sub_1D95BCA6C(v4);
}

void DDMAddOrUpdateManagedAppRequest.send(to:)(char a1)
{
  if (a1)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (qword_1EDCFA278 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D95741A4(1, v1, sub_1D95BCAC8, 0);
}

uint64_t sub_1D95BC6B4(uint64_t a1)
{
  v2 = sub_1D95BCBAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95BC6F0(uint64_t a1)
{
  v2 = sub_1D95BCBAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DDMAppOrUpdateManagedAppRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for ManagedAppDeclaration(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07E30, &qword_1D95CF298);
  v19 = *(v7 - 8);
  v8 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  updated = type metadata accessor for DDMAppOrUpdateManagedAppRequest(0);
  v12 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95BCBAC();
  sub_1D95C059C();
  if (!v2)
  {
    v16 = v20;
    sub_1D95BCC20(&qword_1ECB07E38);
    v17 = v21;
    sub_1D95C030C();
    (*(v19 + 8))(v10, v7);
    sub_1D95BCC64(v17, v14, type metadata accessor for ManagedAppDeclaration);
    sub_1D95BCC64(v14, v16, type metadata accessor for DDMAppOrUpdateManagedAppRequest);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1D95BCA6C(uint64_t a1)
{
  updated = type metadata accessor for DDMAddOrUpdateManagedAppRequest(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

void sub_1D95BCAD4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1D95BFBBC();
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D95A3C64;
  v12[3] = a6;
  v11 = _Block_copy(v12);

  [a1 addOrUpdateManagedApp:v10 reply:v11];
  _Block_release(v11);
}

unint64_t sub_1D95BCBAC()
{
  result = qword_1ECB07E20;
  if (!qword_1ECB07E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07E20);
  }

  return result;
}

uint64_t sub_1D95BCC20(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ManagedAppDeclaration(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D95BCC64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D95BCCCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7368801 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D95C041C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D95BCD54(uint64_t a1)
{
  v2 = sub_1D95BCF7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95BCD90(uint64_t a1)
{
  v2 = sub_1D95BCF7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95BCE10(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  a4();
  sub_1D95C05BC();
  type metadata accessor for ManagedAppDeclaration(0);
  sub_1D95BCC20(&qword_1ECB07E28);
  sub_1D95C03CC();
  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D95BCF7C()
{
  result = qword_1ECB07E48;
  if (!qword_1ECB07E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07E48);
  }

  return result;
}

uint64_t DDMAddOrUpdateManagedAppRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for ManagedAppDeclaration(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07E50, &qword_1D95CF2A8);
  v19 = *(v7 - 8);
  v8 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  updated = type metadata accessor for DDMAddOrUpdateManagedAppRequest(0);
  v12 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95BCF7C();
  sub_1D95C059C();
  if (!v2)
  {
    v16 = v20;
    sub_1D95BCC20(&qword_1ECB07E38);
    v17 = v21;
    sub_1D95C030C();
    (*(v19 + 8))(v10, v7);
    sub_1D95BCC64(v17, v14, type metadata accessor for ManagedAppDeclaration);
    sub_1D95BCC64(v14, v16, type metadata accessor for DDMAddOrUpdateManagedAppRequest);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1D95BD28C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  a6();
  sub_1D95C05BC();
  type metadata accessor for ManagedAppDeclaration(0);
  sub_1D95BCC20(&qword_1ECB07E28);
  sub_1D95C03CC();
  return (*(v9 + 8))(v12, v8);
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedAppDeclaration(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedAppDeclaration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D95BD524()
{
  result = type metadata accessor for ManagedAppDeclaration(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D95BD5B4()
{
  result = qword_1ECB07E78;
  if (!qword_1ECB07E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07E78);
  }

  return result;
}

unint64_t sub_1D95BD60C()
{
  result = qword_1ECB07E80;
  if (!qword_1ECB07E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07E80);
  }

  return result;
}

unint64_t sub_1D95BD664()
{
  result = qword_1ECB07E88;
  if (!qword_1ECB07E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07E88);
  }

  return result;
}

unint64_t sub_1D95BD6BC()
{
  result = qword_1ECB07E90;
  if (!qword_1ECB07E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07E90);
  }

  return result;
}

unint64_t sub_1D95BD714()
{
  result = qword_1ECB07E98;
  if (!qword_1ECB07E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07E98);
  }

  return result;
}

unint64_t sub_1D95BD76C()
{
  result = qword_1ECB07EA0;
  if (!qword_1ECB07EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07EA0);
  }

  return result;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *AppStateUpdateIdentifier.appStateIdentifiers.getter()
{
  v1 = *v0;
  v2 = *(v0 + 24);
  if (v2 >= 0x40)
  {
    v18[0] = -1;
    if ((v2 & 0xC0) == 0x80)
    {
      v4 = 0;
      goto LABEL_7;
    }

LABEL_6:
    v1 = 0;
    v4 = -1;
    goto LABEL_7;
  }

  v3 = *(v0 + 16);
  v16 = *v0;
  v17 = *(v0 + 8);
  v18[0] = 1;
  sub_1D95B13EC(v1, v17, v3, v2);
  if (v2)
  {
    goto LABEL_6;
  }

  v4 = 0;
  v1 = v3;
LABEL_7:
  v5 = 0;
  v19 = v1;
  v20 = 0;
  v21 = v4;
  v6 = MEMORY[0x1E69E7CC0];
LABEL_8:
  v7 = &v18[24 * v5];
  while (++v5 != 3)
  {
    v8 = v7 + 24;
    v9 = *v7;
    v7 += 24;
    if (v9 != 255)
    {
      v10 = *(v8 - 5);
      v11 = *(v8 - 4);
      sub_1D953FCA8(v10, v11, v9 & 1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1D9547430(0, *(v6 + 2) + 1, 1, v6);
      }

      v13 = *(v6 + 2);
      v12 = *(v6 + 3);
      if (v13 >= v12 >> 1)
      {
        v6 = sub_1D9547430((v12 > 1), v13 + 1, 1, v6);
      }

      *(v6 + 2) = v13 + 1;
      v14 = &v6[24 * v13];
      *(v14 + 4) = v10;
      *(v14 + 5) = v11;
      v14[48] = v9 & 1;
      goto LABEL_8;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07EA8, &qword_1D95CF5C0);
  swift_arrayDestroy();
  return v6;
}

uint64_t AppStateUpdateIdentifier.description.getter()
{
  v1 = *(v0 + 24);
  if (v1 >> 6)
  {
    if (v1 >> 6 != 1)
    {
      v6 = *v0;
      return sub_1D95C040C();
    }

    goto LABEL_5;
  }

  if (v1)
  {
LABEL_5:
    v3 = *v0;
    v4 = *(v0 + 8);

    return v3;
  }

  v7 = *v0;
  sub_1D95B13EC(*v0, *(v0 + 8), *(v0 + 16), v1);
  MEMORY[0x1DA732490](58, 0xE100000000000000);
  v5 = sub_1D95C040C();
  MEMORY[0x1DA732490](v5);

  return v7;
}

uint64_t AppStateUpdateIdentifier.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if ((a3 & 1) == 0)
  {
    a2 = 0;
  }

  *a4 = result;
  *(a4 + 8) = a2;
  if (a3)
  {
    v5 = 1;
  }

  else
  {
    v5 = 0x80;
  }

  *(a4 + 16) = 0;
  *(a4 + 24) = v5;
  return result;
}

unint64_t sub_1D95BDA88()
{
  v1 = 0x6C7074656B72616DLL;
  if (*v0 == 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_1D95BDAF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D95BF82C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D95BDB1C(uint64_t a1)
{
  v2 = sub_1D95BF12C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95BDB58(uint64_t a1)
{
  v2 = sub_1D95BF12C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95BDB94()
{
  if (*v0)
  {
    result = 0x44496D657469;
  }

  else
  {
    result = 0x4449656C646E7562;
  }

  *v0;
  return result;
}

uint64_t sub_1D95BDBCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v6 || (sub_1D95C041C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x44496D657469 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D95C041C();

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

uint64_t sub_1D95BDCA4(uint64_t a1)
{
  v2 = sub_1D95BF228();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95BDCE0(uint64_t a1)
{
  v2 = sub_1D95BF228();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95BDD40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746172616C636564 && a2 == 0xED000044496E6F69)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D95C041C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D95BDDD0(uint64_t a1)
{
  v2 = sub_1D95BF1D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95BDE0C(uint64_t a1)
{
  v2 = sub_1D95BF1D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95BDE68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x657449656C707061 && a2 == 0xEB0000000044496DLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D95C041C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D95BDEF4(uint64_t a1)
{
  v2 = sub_1D95BF180();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95BDF30(uint64_t a1)
{
  v2 = sub_1D95BF180();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppStateUpdateIdentifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07EB0, &qword_1D95CF5C8);
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v31 = &v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07EB8, &qword_1D95CF5D0);
  v32 = *(v6 - 8);
  v33 = v6;
  v7 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - v8;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07EC0, &qword_1D95CF5D8);
  v30 = *(v34 - 8);
  v10 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07EC8, &qword_1D95CF5E0);
  v39 = *(v13 - 8);
  v40 = v13;
  v14 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - v15;
  v17 = *v1;
  v37 = v1[1];
  v38 = v17;
  v18 = v1[2];
  v19 = *(v1 + 24);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95BF12C();
  sub_1D95C05BC();
  if (v19 >> 6)
  {
    if (v19 >> 6 == 1)
    {
      v45 = 1;
      sub_1D95BF1D4();
      v21 = v40;
      sub_1D95C034C();
      v22 = v33;
      sub_1D95C038C();
      (*(v32 + 8))(v9, v22);
      return (*(v39 + 8))(v16, v21);
    }

    v46 = 2;
    sub_1D95BF180();
    v28 = v31;
    v25 = v40;
    sub_1D95C034C();
    v29 = v36;
    sub_1D95C03DC();
    (*(v35 + 8))(v28, v29);
  }

  else
  {
    v24 = v30;
    v44 = 0;
    sub_1D95BF228();
    v25 = v40;
    sub_1D95C034C();
    v43 = 0;
    v26 = v34;
    v27 = v41;
    sub_1D95C038C();
    if (!v27)
    {
      v42 = 1;
      sub_1D95C037C();
    }

    (*(v24 + 8))(v12, v26);
  }

  return (*(v39 + 8))(v16, v25);
}

uint64_t AppStateUpdateIdentifier.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 24);
  if (!(v3 >> 6))
  {
    v5 = v0[2];
    MEMORY[0x1DA732B80](0);
    sub_1D95BFE1C();
    if (v3)
    {
      return sub_1D95C053C();
    }

    sub_1D95C053C();
    v6 = v5;
    return MEMORY[0x1DA732BA0](v6);
  }

  if (v3 >> 6 != 1)
  {
    MEMORY[0x1DA732B80](2);
    v6 = v1;
    return MEMORY[0x1DA732BA0](v6);
  }

  MEMORY[0x1DA732B80](1);

  return sub_1D95BFE1C();
}

uint64_t AppStateUpdateIdentifier.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_1D95C051C();
  if (!(v4 >> 6))
  {
    MEMORY[0x1DA732B80](0);
    sub_1D95BFE1C();
    if (v4)
    {
      sub_1D95C053C();
      return sub_1D95C055C();
    }

    sub_1D95C053C();
    v5 = v3;
LABEL_8:
    MEMORY[0x1DA732BA0](v5);
    return sub_1D95C055C();
  }

  if (v4 >> 6 != 1)
  {
    MEMORY[0x1DA732B80](2);
    v5 = v1;
    goto LABEL_8;
  }

  MEMORY[0x1DA732B80](1);
  sub_1D95BFE1C();
  return sub_1D95C055C();
}

uint64_t AppStateUpdateIdentifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07EF0, &qword_1D95CF5E8);
  v54 = *(v52 - 8);
  v3 = *(v54 + 8);
  MEMORY[0x1EEE9AC00](v52);
  v56 = &v49 - v4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07EF8, &qword_1D95CF5F0);
  v53 = *(v51 - 8);
  v5 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v7 = &v49 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07F00, &qword_1D95CF5F8);
  v50 = *(v8 - 8);
  v9 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v49 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB07F08, &unk_1D95CF600);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v49 - v15;
  v17 = a1[3];
  v18 = a1[4];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v17);
  sub_1D95BF12C();
  v19 = v57;
  sub_1D95C059C();
  if (!v19)
  {
    v20 = v7;
    v21 = v56;
    v57 = v13;
    v22 = sub_1D95C032C();
    v23 = (2 * *(v22 + 16)) | 1;
    v59 = v22;
    v60 = v22 + 32;
    v61 = 0;
    v62 = v23;
    v24 = sub_1D954A26C();
    if (v24 != 3 && v61 == v62 >> 1)
    {
      if (v24)
      {
        if (v24 == 1)
        {
          v63 = 1;
          sub_1D95BF1D4();
          sub_1D95C027C();
          v25 = v51;
          v39 = sub_1D95C02CC();
          v41 = v40;
          (*(v53 + 8))(v20, v25);
          (*(v57 + 8))(v16, v12);
          swift_unknownObjectRelease();
          v42 = 0;
          v43 = 64;
          v44 = v55;
LABEL_12:
          *v44 = v39;
          *(v44 + 8) = v41;
          *(v44 + 16) = v42;
          *(v44 + 24) = v43;
          return __swift_destroy_boxed_opaque_existential_0(v58);
        }

        v63 = 2;
        sub_1D95BF180();
        sub_1D95C027C();
        v36 = v52;
        v37 = sub_1D95C031C();
        v38 = v57;
        v46 = *(v54 + 1);
        v53 = v37;
        v46(v21, v36);
        (*(v38 + 8))(v16, v12);
        swift_unknownObjectRelease();
        v41 = 0;
        v42 = 0;
        v43 = 0x80;
        v44 = v55;
      }

      else
      {
        v63 = 0;
        sub_1D95BF228();
        v32 = v11;
        sub_1D95C027C();
        v44 = v55;
        v54 = v16;
        v56 = v12;
        v63 = 0;
        v33 = v8;
        v34 = sub_1D95C02CC();
        v35 = v57;
        v41 = v45;
        v53 = v34;
        v63 = 1;
        v42 = sub_1D95C02BC();
        v48 = v47;
        (*(v50 + 8))(v32, v33);
        (*(v35 + 8))(v54, v56);
        swift_unknownObjectRelease();
        v43 = v48 & 1;
      }

      v39 = v53;
      goto LABEL_12;
    }

    v26 = sub_1D95C01FC();
    swift_allocError();
    v27 = v16;
    v29 = v28;
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D48, &qword_1D95C4250) + 48);
    *v29 = &type metadata for AppStateUpdateIdentifier;
    sub_1D95C028C();
    sub_1D95C01EC();
    (*(*(v26 - 8) + 104))(v29, *MEMORY[0x1E69E6AF8], v26);
    swift_willThrow();
    (*(v57 + 8))(v27, v12);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v58);
}

uint64_t sub_1D95BEC94()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 24);
  if (!(v3 >> 6))
  {
    v5 = v0[2];
    MEMORY[0x1DA732B80](0);
    sub_1D95BFE1C();
    if (v3)
    {
      return sub_1D95C053C();
    }

    sub_1D95C053C();
    v6 = v5;
    return MEMORY[0x1DA732BA0](v6);
  }

  if (v3 >> 6 != 1)
  {
    MEMORY[0x1DA732B80](2);
    v6 = v1;
    return MEMORY[0x1DA732BA0](v6);
  }

  MEMORY[0x1DA732B80](1);

  return sub_1D95BFE1C();
}

uint64_t sub_1D95BED64()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_1D95C051C();
  if (!(v4 >> 6))
  {
    MEMORY[0x1DA732B80](0);
    sub_1D95BFE1C();
    if (v4)
    {
      sub_1D95C053C();
      return sub_1D95C055C();
    }

    sub_1D95C053C();
    v5 = v3;
LABEL_8:
    MEMORY[0x1DA732BA0](v5);
    return sub_1D95C055C();
  }

  if (v4 >> 6 != 1)
  {
    MEMORY[0x1DA732B80](2);
    v5 = v1;
    goto LABEL_8;
  }

  MEMORY[0x1DA732B80](1);
  sub_1D95BFE1C();
  return sub_1D95C055C();
}

uint64_t _s22ManagedAppDistribution0B21StateUpdateIdentifierO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (!(v5 >> 6))
  {
    if (v9 >= 0x40)
    {
      goto LABEL_18;
    }

    v14 = *a1;
    if (v2 == v6 && v3 == v7)
    {
      sub_1D95B13EC(v14, v3, v8, v9);
      sub_1D95B13EC(v2, v3, v4, v5);
      sub_1D958FFD0(v2, v3, v4, v5);
      sub_1D958FFD0(v2, v3, v8, v9);
      if (v5)
      {
        return (v9 & 1) != 0;
      }
    }

    else
    {
      v16 = sub_1D95C041C();
      sub_1D95B13EC(v6, v7, v8, v9);
      sub_1D95B13EC(v2, v3, v4, v5);
      sub_1D958FFD0(v2, v3, v4, v5);
      sub_1D958FFD0(v6, v7, v8, v9);
      result = 0;
      if ((v16 & 1) == 0)
      {
        return result;
      }

      if (v5)
      {
        return (v9 & 1) != 0;
      }
    }

    return (v9 & 1) == 0 && v4 == v8;
  }

  if (v5 >> 6 != 1)
  {
    if ((v9 & 0xC0) == 0x80)
    {
      sub_1D958FFD0(*a1, v3, v4, v5);
      sub_1D958FFD0(v6, v7, v8, v9);
      return v2 == v6;
    }

    goto LABEL_21;
  }

  if ((v9 & 0xC0) != 0x40)
  {
LABEL_18:
    v17 = *(a1 + 8);

LABEL_21:
    sub_1D95B13EC(v6, v7, v8, v9);
    sub_1D958FFD0(v2, v3, v4, v5);
    sub_1D958FFD0(v6, v7, v8, v9);
    return 0;
  }

  v10 = *a1;
  if (v2 == v6 && v3 == v7)
  {
    sub_1D95B13EC(v10, v3, v8, v9);
    sub_1D95B13EC(v2, v3, v4, v5);
    sub_1D958FFD0(v2, v3, v4, v5);
    sub_1D958FFD0(v2, v3, v8, v9);
    return 1;
  }

  else
  {
    v12 = sub_1D95C041C();
    sub_1D95B13EC(v6, v7, v8, v9);
    sub_1D95B13EC(v2, v3, v4, v5);
    sub_1D958FFD0(v2, v3, v4, v5);
    sub_1D958FFD0(v6, v7, v8, v9);
    return v12 & 1;
  }
}

unint64_t sub_1D95BF12C()
{
  result = qword_1ECB07ED0;
  if (!qword_1ECB07ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07ED0);
  }

  return result;
}

unint64_t sub_1D95BF180()
{
  result = qword_1ECB07ED8;
  if (!qword_1ECB07ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07ED8);
  }

  return result;
}

unint64_t sub_1D95BF1D4()
{
  result = qword_1ECB07EE0;
  if (!qword_1ECB07EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07EE0);
  }

  return result;
}

unint64_t sub_1D95BF228()
{
  result = qword_1ECB07EE8;
  if (!qword_1ECB07EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07EE8);
  }

  return result;
}

unint64_t sub_1D95BF280()
{
  result = qword_1ECB07F10;
  if (!qword_1ECB07F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07F10);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1D95BF2E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 25))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 24) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 24) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D95BF33C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

unint64_t sub_1D95BF410()
{
  result = qword_1ECB07F18;
  if (!qword_1ECB07F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07F18);
  }

  return result;
}

unint64_t sub_1D95BF468()
{
  result = qword_1ECB07F20;
  if (!qword_1ECB07F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07F20);
  }

  return result;
}

unint64_t sub_1D95BF4C0()
{
  result = qword_1ECB07F28;
  if (!qword_1ECB07F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07F28);
  }

  return result;
}

unint64_t sub_1D95BF518()
{
  result = qword_1ECB07F30;
  if (!qword_1ECB07F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07F30);
  }

  return result;
}

unint64_t sub_1D95BF570()
{
  result = qword_1ECB07F38;
  if (!qword_1ECB07F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07F38);
  }

  return result;
}

unint64_t sub_1D95BF5C8()
{
  result = qword_1ECB07F40;
  if (!qword_1ECB07F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07F40);
  }

  return result;
}

unint64_t sub_1D95BF620()
{
  result = qword_1ECB07F48;
  if (!qword_1ECB07F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07F48);
  }

  return result;
}

unint64_t sub_1D95BF678()
{
  result = qword_1ECB07F50;
  if (!qword_1ECB07F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07F50);
  }

  return result;
}

unint64_t sub_1D95BF6D0()
{
  result = qword_1ECB07F58;
  if (!qword_1ECB07F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07F58);
  }

  return result;
}

unint64_t sub_1D95BF728()
{
  result = qword_1ECB07F60;
  if (!qword_1ECB07F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07F60);
  }

  return result;
}

unint64_t sub_1D95BF780()
{
  result = qword_1ECB07F68;
  if (!qword_1ECB07F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07F68);
  }

  return result;
}

unint64_t sub_1D95BF7D8()
{
  result = qword_1ECB07F70;
  if (!qword_1ECB07F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB07F70);
  }

  return result;
}

uint64_t sub_1D95BF82C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000016 && 0x80000001D95D0F20 == a2 || (sub_1D95C041C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D95D0F40 == a2 || (sub_1D95C041C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C7074656B72616DLL && a2 == 0xEE0074694B656361)
  {

    return 2;
  }

  else
  {
    v5 = sub_1D95C041C();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D95BF990()
{
  v0 = sub_1D95BFAFC();
  __swift_allocate_value_buffer(v0, qword_1ECB07F78);
  v1 = __swift_project_value_buffer(v0, qword_1ECB07F78);
  *v1 = type metadata accessor for ResourceBundleClass();
  v2 = *MEMORY[0x1E6968E00];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}