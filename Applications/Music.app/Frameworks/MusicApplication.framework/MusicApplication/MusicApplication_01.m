uint64_t sub_2047C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8098);
  v3 = sub_ABAD30();
  v4 = v3;
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
    v11 = v3 + 56;
    while (v9)
    {
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v20 = *(*(v2 + 48) + (v17 | (v5 << 6)));
      sub_ABB5C0();
      sub_AB93F0();

      v12 = sub_ABB610();
      v13 = -1 << *(v4 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v11 + 8 * (v14 >> 6))) != 0)
      {
        v16 = __clz(__rbit64((-1 << v14) & ~*(v11 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        do
        {
          if (++v15 == v22 && (v21 & 1) != 0)
          {
            goto LABEL_31;
          }

          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v15);
        }

        while (v24 == -1);
        v16 = __clz(__rbit64(~v24)) + (v15 << 6);
      }

      *(v11 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v4 + 48) + v16) = v20;
      ++*(v4 + 16);
    }

    v18 = v5;
    while (1)
    {
      v5 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        JUMPOUT(0x208A4);
      }

      if (v5 >= v10)
      {
        break;
      }

      v19 = v6[v5];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v9 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero((v2 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_208D8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8118);
  result = sub_ABAD30();
  v4 = result;
  if (*(v2 + 16))
  {
    v32 = v1;
    v33 = v2;
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
    v34 = result;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v35 = (v9 - 1) & v9;
LABEL_15:
      v17 = (*(v2 + 48) + 24 * (v14 | (v5 << 6)));
      v19 = *v17;
      v18 = v17[1];
      v20 = v17[2];
      sub_ABB5C0();
      if (v20 < 0)
      {
        v21 = &off_D17228;
      }

      else
      {
        v21 = &off_D00048;
      }

      v36[4] = v21;
      if (v20 < 0)
      {
        v22 = &_s7LibraryVN;
      }

      else
      {
        v22 = &_s7CatalogVN;
      }

      if (v20 < 0)
      {
        v23 = v20 & 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v20;
      }

      v36[0] = v19;
      v36[1] = v18;
      v36[2] = v23;
      v36[3] = v22;

      __swift_project_boxed_opaque_existential_1(v36, v22);
      (v21[1])(v22, v21);
      __swift_destroy_boxed_opaque_existential_0(v36);
      sub_AB93F0();

      sub_AB93F0();

      result = sub_ABB610();
      v4 = v34;
      v24 = -1 << *(v34 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v11 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v11 + 8 * v26);
          if (v30 != -1)
          {
            v12 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v25) & ~*(v11 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v34 + 48) + 24 * v12);
      *v13 = v19;
      v13[1] = v18;
      v13[2] = v20;
      ++*(v34 + 16);
      v2 = v33;
      v9 = v35;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_39;
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
        v35 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v31 = 1 << *(v2 + 32);
    if (v31 >= 64)
    {
      bzero(v6, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v31;
    }

    v1 = v32;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_20C38()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8120);
  result = sub_ABAD30();
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
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_ABB5C0();
      sub_AB93F0();

      result = sub_ABB610();
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
      *(*(v4 + 48) + v12) = v16;
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

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_20EB8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE80E0);
  result = sub_ABAD30();
  v4 = result;
  if (*(v2 + 16))
  {
    v28 = v2;
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
      v17 = *(v2 + 48) + 240 * (v14 | (v5 << 6));
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
      v39 = *(v17 + 192);
      v40 = *(v17 + 208);
      v41 = *(v17 + 224);
      v42 = *v17;
      v35 = *(v17 + 128);
      v36 = *(v17 + 144);
      v37 = *(v17 + 160);
      v38 = *(v17 + 176);
      v31 = *(v17 + 64);
      v32 = *(v17 + 80);
      v33 = *(v17 + 96);
      v34 = *(v17 + 112);
      v29 = *(v17 + 32);
      v30 = *(v17 + 48);
      sub_ABB5C0();
      sub_AB93F0();
      result = sub_ABB610();
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
      v13 = *(v4 + 48) + 240 * v12;
      *v13 = v42;
      *(v13 + 16) = v18;
      *(v13 + 24) = v19;
      *(v13 + 192) = v39;
      *(v13 + 208) = v40;
      *(v13 + 224) = v41;
      *(v13 + 128) = v35;
      *(v13 + 144) = v36;
      *(v13 + 160) = v37;
      *(v13 + 176) = v38;
      *(v13 + 64) = v31;
      *(v13 + 80) = v32;
      *(v13 + 96) = v33;
      *(v13 + 112) = v34;
      *(v13 + 32) = v29;
      *(v13 + 48) = v30;
      ++*(v4 + 16);
      v2 = v28;
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
      bzero(v6, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_211A0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8048);
  result = sub_ABAD30();
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
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v19 = *(*(v2 + 48) + (v16 | (v5 << 6)));
      sub_ABB5C0();
      sub_AB93F0();

      result = sub_ABB610();
      v12 = -1 << *(v4 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v4 + 48) + v15) = v19;
      ++*(v4 + 16);
    }

    v17 = v5;
    while (1)
    {
      v5 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v5 >= v10)
      {
        break;
      }

      v18 = v6[v5];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_16;
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

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_214EC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8068);
  result = sub_ABAD30();
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
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_ABB5C0();
      sub_AB93F0();

      result = sub_ABB610();
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
      *(*(v4 + 48) + v12) = v16;
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

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_2178C(uint64_t a1, uint64_t a2)
{
  sub_ABB5C0();
  v4 = sub_127604();
  sub_ABB5D0(v4);
  sub_ABB610();
  result = sub_ABABF0();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_21834(uint64_t a1, void *a2)
{
  sub_ABA780(a2[5]);
  result = sub_ABABF0();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

Swift::Int sub_218B8(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_34;
  }

  if (a3)
  {
    sub_1DA00();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_24FF8();
      a2 = v7;
      goto LABEL_34;
    }

    sub_2673C();
  }

  v8 = *v3;
  sub_ABB5C0();
  v9 = v4 - 3;
  if ((v4 - 3) >= 6u)
  {
    sub_ABB5D0(6uLL);
    v9 = v4;
  }

  sub_ABB5D0(v9);
  result = sub_ABB610();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = *(*(v8 + 48) + a2);
      if (v12 > 5)
      {
        switch(v12)
        {
          case 6u:
            if (v4 == 6)
            {
              goto LABEL_33;
            }

            goto LABEL_13;
          case 7u:
            if (v4 == 7)
            {
              goto LABEL_33;
            }

            goto LABEL_13;
          case 8u:
            if (v4 == 8)
            {
              goto LABEL_33;
            }

            goto LABEL_13;
        }
      }

      else
      {
        switch(v12)
        {
          case 3u:
            if (v4 == 3)
            {
              goto LABEL_33;
            }

            goto LABEL_13;
          case 4u:
            if (v4 == 4)
            {
              goto LABEL_33;
            }

            goto LABEL_13;
          case 5u:
            if (v4 == 5)
            {
              goto LABEL_33;
            }

            goto LABEL_13;
        }
      }

      if ((v4 - 9) <= 0xF9u && v12 == v4)
      {
LABEL_33:
        result = sub_ABB4B0();
        __break(1u);
        break;
      }

LABEL_13:
      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_34:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + a2) = v4;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }

  return result;
}

uint64_t sub_21ACC(uint64_t result, unint64_t a2, char a3)
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
    sub_1DC6C();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_25574(&qword_DE7FE8);
      a2 = v7;
      goto LABEL_12;
    }

    sub_26978();
  }

  v8 = *v3;
  result = sub_ABB5B0();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_ABB4B0();
  __break(1u);
  return result;
}

void sub_21C00(void *a1, uint64_t a2, char a3, unint64_t a4, char a5)
{
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 > v9 && (a5 & 1) != 0)
  {
    goto LABEL_25;
  }

  if (a5)
  {
    sub_1DE90();
  }

  else
  {
    if (v10 > v9)
    {
      sub_2514C();
      goto LABEL_25;
    }

    sub_26B68();
  }

  v11 = *v5;
  sub_ABB5C0();
  if (a3)
  {
    sub_ABB5D0(1uLL);
    sub_ABA7A0();
  }

  else
  {
    sub_ABB5D0(0);
    sub_AB93F0();
  }

  v12 = sub_ABB610();
  v13 = -1 << *(v11 + 32);
  a4 = v12 & ~v13;
  if ((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v14 = ~v13;
    do
    {
      v15 = *(v11 + 48) + 24 * a4;
      v16 = *v15;
      v17 = *(v15 + 8);
      if (*(v15 + 16))
      {
        if (a3)
        {
          sub_13C80(0, &qword_DFA720);
          v18 = v16;
          v19 = sub_ABA790();
          sub_13CC8(v16, v17, 1);
          if (v19)
          {
            goto LABEL_24;
          }
        }
      }

      else if ((a3 & 1) == 0)
      {
        v20 = v16 == a1 && v17 == a2;
        if (v20 || (sub_ABB3C0() & 1) != 0)
        {
LABEL_24:
          sub_ABB4B0();
          __break(1u);
          break;
        }
      }

      a4 = (a4 + 1) & v14;
    }

    while (((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_25:
  v21 = *v26;
  *(*v26 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v22 = *(v21 + 48) + 24 * a4;
  *v22 = a1;
  *(v22 + 8) = a2;
  *(v22 + 16) = a3 & 1;
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v25;
  }
}

Swift::Int sub_21E30(Swift::Int result, unint64_t a2, char a3)
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
    sub_1E380();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2660C(&qword_DE7FF0);
      a2 = v7;
      goto LABEL_12;
    }

    sub_2700C();
  }

  v8 = *v3;
  sub_ABB5C0();
  sub_ABB5D0(v4);
  result = sub_ABB610();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_ABB4B0();
  __break(1u);
  return result;
}

Swift::Int sub_21F90(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_1E5D0();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_25418();
      goto LABEL_16;
    }

    sub_2722C();
  }

  v10 = *v4;
  sub_ABB5C0();
  sub_AB93F0();
  result = sub_ABB610();
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

      result = sub_ABB3C0();
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
  result = sub_ABB4B0();
  __break(1u);
  return result;
}

uint64_t sub_22110(uint64_t result, unint64_t a2, char a3, uint64_t *a4)
{
  v5 = result;
  v6 = *(*v4 + 16);
  v7 = *(*v4 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1E830(v6 + 1, a4);
  }

  else
  {
    if (v7 > v6)
    {
      v8 = a2;
      result = sub_25574(a4);
      a2 = v8;
      goto LABEL_12;
    }

    sub_27464(v6 + 1, a4);
  }

  v9 = *v4;
  result = sub_ABB5B0();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v9 + 48) + 8 * a2) != v5)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
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
  result = sub_ABB4B0();
  __break(1u);
  return result;
}

Swift::Int sub_2224C(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_1EA4C();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_256A4();
      goto LABEL_16;
    }

    sub_2764C();
  }

  v8 = *v3;
  sub_ABB5C0();
  v9 = *v5;
  v10 = *(v5 + 8);
  sub_AB93F0();
  result = sub_ABB610();
  v11 = -1 << *(v8 + 32);
  a2 = result & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v8 + 48) + (a2 << 6));
      if (*v13 == v9 && v13[1] == v10)
      {
        goto LABEL_19;
      }

      result = sub_ABB3C0();
      if (result)
      {
        goto LABEL_19;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v16 = (*(v15 + 48) + (a2 << 6));
  v17 = *(v5 + 16);
  *v16 = *v5;
  v16[1] = v17;
  v18 = *(v5 + 48);
  v16[2] = *(v5 + 32);
  v16[3] = v18;
  v19 = *(v15 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v15 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_ABB4B0();
  __break(1u);
  return result;
}

Swift::Int sub_223D8(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v32 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_28;
  }

  if (a3)
  {
    sub_1ECCC();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_25828();
      goto LABEL_28;
    }

    sub_278A8();
  }

  v8 = *v3;
  sub_ABB5C0();
  v9 = v5[11];
  v10 = v5[12];
  sub_AB93F0();
  v11 = *v5;
  v12 = v5[1];
  if (v12)
  {
    sub_ABB5E0(1u);
    sub_AB93F0();
  }

  else
  {
    sub_ABB5E0(0);
  }

  result = sub_ABB610();
  v13 = v8 + 56;
  v14 = -1 << *(v8 + 32);
  a2 = result & ~v14;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v16 = *(v8 + 48);
    do
    {
      v17 = (v16 + (a2 << 7));
      v18 = v17[1];
      v19 = v17[11];
      v20 = v17[12];
      if (v18)
      {
        if (!v12)
        {
          goto LABEL_14;
        }

        if (*v17 != v11 || v18 != v12)
        {
          result = sub_ABB3C0();
          if ((result & 1) == 0)
          {
            goto LABEL_14;
          }
        }
      }

      else if (v12)
      {
        goto LABEL_14;
      }

      v22 = v19 == v9 && v20 == v10;
      if (v22 || (result = sub_ABB3C0(), (result & 1) != 0))
      {
        result = sub_ABB4B0();
        __break(1u);
        break;
      }

LABEL_14:
      a2 = (a2 + 1) & v15;
    }

    while (((*(v13 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_28:
  v23 = *v33;
  *(*v33 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v24 = (*(v23 + 48) + (a2 << 7));
  v25 = v32[1];
  *v24 = *v32;
  v24[1] = v25;
  v26 = v32[3];
  v24[2] = v32[2];
  v24[3] = v26;
  v27 = v32[7];
  v24[6] = v32[6];
  v24[7] = v27;
  v28 = v32[5];
  v24[4] = v32[4];
  v24[5] = v28;
  v29 = *(v23 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v23 + 16) = v31;
  }

  return result;
}

unint64_t sub_225FC(unint64_t result, char a2)
{
  v3 = *(*v2 + 16);
  v4 = *(*v2 + 24);
  if (v4 <= v3 || (a2 & 1) == 0)
  {
    if (a2)
    {
      sub_1EFD0();
      goto LABEL_8;
    }

    if (v4 <= v3)
    {
      sub_27B7C();
LABEL_8:
      v6 = *v2;
      sub_ABB5C0();
      sub_ABB5D0(0);
      result = sub_ABB610() & ~(-1 << *(v6 + 32));
      if ((*(v6 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> result))
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    v5 = result;
    sub_259B8();
    result = v5;
  }

LABEL_9:
  v7 = *v2;
  *(*v2 + 8 * (result >> 6) + 56) |= 1 << result;
  v8 = *(v7 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (!v9)
  {
    *(v7 + 16) = v10;
    return result;
  }

  __break(1u);
LABEL_12:
  result = sub_ABB4B0();
  __break(1u);
  return result;
}

void sub_2270C(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t a5, unint64_t *a6)
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
    sub_1F1E8(v9 + 1, a4);
  }

  else
  {
    if (v10 > v9)
    {
      sub_25AC4(a4);
      goto LABEL_12;
    }

    v11 = a6;
    sub_27D58(v9 + 1, a4);
  }

  v12 = *v6;
  v13 = sub_ABA780(*(*v6 + 40));
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    sub_13C80(0, v11);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = sub_ABA790();

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
  sub_ABB4B0();
  __break(1u);
}

void sub_2289C(uint64_t a1, char a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1F408();
    }

    else
    {
      if (v9 > v8)
      {
        sub_25C04();
        goto LABEL_63;
      }

      sub_27F64();
    }

    v10 = *v4;
    sub_ABB5C0();
    sub_ABA7A0();
    sub_1BDE98(a2);
    sub_AB93F0();

    v11 = sub_ABB610();
    v12 = -1 << *(v10 + 32);
    a3 = v11 & ~v12;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v13 = ~v12;
      sub_13C80(0, &qword_DFA720);
      do
      {
        v14 = *(v10 + 48) + 16 * a3;
        v15 = *(v14 + 8);
        v5 = *v14;
        if (sub_ABA790())
        {
          v16 = 0xEA00000000007365;
          v17 = 0x6974697669746361;
          switch(v15)
          {
            case 1:
              v16 = 0xE600000000000000;
              v17 = 0x736D75626C61;
              break;
            case 2:
              v16 = 0xE700000000000000;
              v17 = 0x73747369747261;
              break;
            case 3:
              v16 = 0xE800000000000000;
              v17 = 0x73726F7461727563;
              break;
            case 4:
              v16 = 0xE500000000000000;
              v17 = 0x73676E6F73;
              break;
            case 5:
              v16 = 0xE800000000000000;
              v17 = 0x736E6F6974617473;
              break;
            case 6:
              v17 = 0x75632D656C707061;
              v16 = 0xEE0073726F746172;
              break;
            case 7:
              v17 = 0x6169726F74696465;
              v16 = 0xEF736D6574692D6CLL;
              break;
            case 8:
              v17 = 0x6F6D2D636973756DLL;
              v18 = 1936025974;
              goto LABEL_29;
            case 9:
              v17 = 0x69762D636973756DLL;
              v18 = 1936680292;
LABEL_29:
              v16 = v18 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
              break;
            case 10:
              v17 = 0x6F736970652D7674;
              v16 = 0xEB00000000736564;
              break;
            case 11:
              v16 = 0xE800000000000000;
              v17 = 0x73776F68732D7674;
              break;
            case 12:
              v17 = 0x646564616F6C7075;
              v16 = 0xEF736F656469762DLL;
              break;
            case 13:
              v17 = 0x6C2D64726F636572;
              v16 = 0xED0000736C656261;
              break;
            case 14:
              v17 = 0x702D6C6169636F73;
              v16 = 0xEF73656C69666F72;
              break;
            case 15:
              v17 = 0x7473696C79616C70;
              v16 = 0xE900000000000073;
              break;
            default:
              break;
          }

          v19 = 0x6974697669746361;
          v20 = 0xEA00000000007365;
          switch(a2)
          {
            case 1:
              v20 = 0xE600000000000000;
              if (v17 != 0x736D75626C61)
              {
                goto LABEL_58;
              }

              goto LABEL_57;
            case 2:
              v20 = 0xE700000000000000;
              if (v17 != 0x73747369747261)
              {
                goto LABEL_58;
              }

              goto LABEL_57;
            case 3:
              v20 = 0xE800000000000000;
              if (v17 != 0x73726F7461727563)
              {
                goto LABEL_58;
              }

              goto LABEL_57;
            case 4:
              v20 = 0xE500000000000000;
              if (v17 != 0x73676E6F73)
              {
                goto LABEL_58;
              }

              goto LABEL_57;
            case 5:
              v20 = 0xE800000000000000;
              if (v17 != 0x736E6F6974617473)
              {
                goto LABEL_58;
              }

              goto LABEL_57;
            case 6:
              v20 = 0xEE0073726F746172;
              if (v17 != 0x75632D656C707061)
              {
                goto LABEL_58;
              }

              goto LABEL_57;
            case 7:
              v21 = 0x6169726F74696465;
              v22 = 0x6D6574692D6CLL;
              goto LABEL_47;
            case 8:
              v23 = 0x6F6D2D636973756DLL;
              v24 = 1936025974;
              goto LABEL_61;
            case 9:
              v23 = 0x69762D636973756DLL;
              v24 = 1936680292;
LABEL_61:
              v20 = v24 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
              if (v17 != v23)
              {
                goto LABEL_58;
              }

              goto LABEL_57;
            case 10:
              v19 = 0x6F736970652D7674;
              v20 = 0xEB00000000736564;
              goto LABEL_56;
            case 11:
              v20 = 0xE800000000000000;
              if (v17 != 0x73776F68732D7674)
              {
                goto LABEL_58;
              }

              goto LABEL_57;
            case 12:
              v21 = 0x646564616F6C7075;
              v22 = 0x6F656469762DLL;
              goto LABEL_47;
            case 13:
              v20 = 0xED0000736C656261;
              if (v17 != 0x6C2D64726F636572)
              {
                goto LABEL_58;
              }

              goto LABEL_57;
            case 14:
              v21 = 0x702D6C6169636F73;
              v22 = 0x656C69666F72;
LABEL_47:
              v20 = v22 & 0xFFFFFFFFFFFFLL | 0xEF73000000000000;
              if (v17 != v21)
              {
                goto LABEL_58;
              }

              goto LABEL_57;
            case 15:
              v20 = 0xE900000000000073;
              if (v17 != 0x7473696C79616C70)
              {
                goto LABEL_58;
              }

              goto LABEL_57;
            default:
LABEL_56:
              if (v17 != v19)
              {
                goto LABEL_58;
              }

LABEL_57:
              if (v16 == v20)
              {
                goto LABEL_66;
              }

LABEL_58:
              v25 = sub_ABB3C0();

              if (v25)
              {
                goto LABEL_67;
              }

              goto LABEL_11;
          }
        }

LABEL_11:
        a3 = (a3 + 1) & v13;
      }

      while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
    }
  }

LABEL_63:
  v26 = *v31;
  *(*v31 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v27 = *(v26 + 48) + 16 * a3;
  *v27 = a1;
  *(v27 + 8) = a2;
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(1u);
LABEL_66:

LABEL_67:
    sub_ABB4B0();
    __break(1u);
    JUMPOUT(0x22EE0);
  }

  *(v26 + 16) = v30;
}

Swift::Int sub_22F60(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1F8A8();
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_2660C(&qword_DE7570);
        goto LABEL_61;
      }

      sub_283DC();
    }

    v9 = *v3;
    sub_ABB5C0();
    sub_1BDE98(v6);
    sub_AB93F0();

    result = sub_ABB610();
    v10 = -1 << *(v9 + 32);
    a2 = result & ~v10;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      while (2)
      {
        v12 = 0xEA00000000007365;
        v13 = 0x6974697669746361;
        switch(*(*(v9 + 48) + a2))
        {
          case 1:
            v12 = 0xE600000000000000;
            v13 = 0x736D75626C61;
            break;
          case 2:
            v12 = 0xE700000000000000;
            v13 = 0x73747369747261;
            break;
          case 3:
            v12 = 0xE800000000000000;
            v13 = 0x73726F7461727563;
            break;
          case 4:
            v12 = 0xE500000000000000;
            v13 = 0x73676E6F73;
            break;
          case 5:
            v12 = 0xE800000000000000;
            v13 = 0x736E6F6974617473;
            break;
          case 6:
            v13 = 0x75632D656C707061;
            v12 = 0xEE0073726F746172;
            break;
          case 7:
            v13 = 0x6169726F74696465;
            v12 = 0xEF736D6574692D6CLL;
            break;
          case 8:
            v13 = 0x6F6D2D636973756DLL;
            v14 = 1936025974;
            goto LABEL_26;
          case 9:
            v13 = 0x69762D636973756DLL;
            v14 = 1936680292;
LABEL_26:
            v12 = v14 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          case 0xA:
            v13 = 0x6F736970652D7674;
            v12 = 0xEB00000000736564;
            break;
          case 0xB:
            v12 = 0xE800000000000000;
            v13 = 0x73776F68732D7674;
            break;
          case 0xC:
            v13 = 0x646564616F6C7075;
            v12 = 0xEF736F656469762DLL;
            break;
          case 0xD:
            v13 = 0x6C2D64726F636572;
            v12 = 0xED0000736C656261;
            break;
          case 0xE:
            v13 = 0x702D6C6169636F73;
            v12 = 0xEF73656C69666F72;
            break;
          case 0xF:
            v13 = 0x7473696C79616C70;
            v12 = 0xE900000000000073;
            break;
          default:
            break;
        }

        v15 = 0x6974697669746361;
        v16 = 0xEA00000000007365;
        switch(v6)
        {
          case 1:
            v16 = 0xE600000000000000;
            if (v13 != 0x736D75626C61)
            {
              goto LABEL_55;
            }

            goto LABEL_54;
          case 2:
            v16 = 0xE700000000000000;
            if (v13 != 0x73747369747261)
            {
              goto LABEL_55;
            }

            goto LABEL_54;
          case 3:
            v16 = 0xE800000000000000;
            if (v13 != 0x73726F7461727563)
            {
              goto LABEL_55;
            }

            goto LABEL_54;
          case 4:
            v16 = 0xE500000000000000;
            if (v13 != 0x73676E6F73)
            {
              goto LABEL_55;
            }

            goto LABEL_54;
          case 5:
            v16 = 0xE800000000000000;
            if (v13 != 0x736E6F6974617473)
            {
              goto LABEL_55;
            }

            goto LABEL_54;
          case 6:
            v16 = 0xEE0073726F746172;
            if (v13 != 0x75632D656C707061)
            {
              goto LABEL_55;
            }

            goto LABEL_54;
          case 7:
            v17 = 0x6169726F74696465;
            v18 = 0x6D6574692D6CLL;
            goto LABEL_44;
          case 8:
            v19 = 0x6F6D2D636973756DLL;
            v20 = 1936025974;
            goto LABEL_59;
          case 9:
            v19 = 0x69762D636973756DLL;
            v20 = 1936680292;
LABEL_59:
            v16 = v20 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v13 != v19)
            {
              goto LABEL_55;
            }

            goto LABEL_54;
          case 10:
            v15 = 0x6F736970652D7674;
            v16 = 0xEB00000000736564;
            goto LABEL_53;
          case 11:
            v16 = 0xE800000000000000;
            if (v13 != 0x73776F68732D7674)
            {
              goto LABEL_55;
            }

            goto LABEL_54;
          case 12:
            v17 = 0x646564616F6C7075;
            v18 = 0x6F656469762DLL;
            goto LABEL_44;
          case 13:
            v16 = 0xED0000736C656261;
            if (v13 != 0x6C2D64726F636572)
            {
              goto LABEL_55;
            }

            goto LABEL_54;
          case 14:
            v17 = 0x702D6C6169636F73;
            v18 = 0x656C69666F72;
LABEL_44:
            v16 = v18 & 0xFFFFFFFFFFFFLL | 0xEF73000000000000;
            if (v13 != v17)
            {
              goto LABEL_55;
            }

            goto LABEL_54;
          case 15:
            v16 = 0xE900000000000073;
            if (v13 != 0x7473696C79616C70)
            {
              goto LABEL_55;
            }

            goto LABEL_54;
          default:
LABEL_53:
            if (v13 != v15)
            {
              goto LABEL_55;
            }

LABEL_54:
            if (v12 == v16)
            {
              goto LABEL_64;
            }

LABEL_55:
            v21 = sub_ABB3C0();

            if (v21)
            {
              goto LABEL_65;
            }

            a2 = (a2 + 1) & v11;
            if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_61:
  v22 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v22 + 48) + a2) = v6;
  v23 = *(v22 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
LABEL_64:

LABEL_65:
    sub_ABB4B0();
    __break(1u);
    JUMPOUT(0x2354CLL);
  }

  *(v22 + 16) = v25;
  return result;
}

Swift::Int sub_235CC(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1FD28();
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_2660C(&qword_DE80F0);
        goto LABEL_40;
      }

      sub_2882C();
    }

    v8 = *v3;
    sub_ABB5C0();
    Library.Menu.Identifier.rawValue.getter(v5);
    sub_AB93F0();

    result = sub_ABB610();
    v9 = -1 << *(v8 + 32);
    a2 = result & ~v9;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v10 = ~v9;
      while (1)
      {
        v11 = 0xD000000000000029;
        v12 = "LibraryView.Playlists";
        switch(*(*(v8 + 48) + a2))
        {
          case 1:
            v11 = 0xD000000000000025;
            v12 = "LibraryView.Artists";
            break;
          case 2:
            v11 = 0xD000000000000023;
            v12 = "LibraryView.Albums";
            break;
          case 3:
            v11 = 0xD000000000000022;
            v12 = "LibraryView.Songs";
            break;
          case 4:
            v11 = 0xD000000000000021;
            v12 = "LibraryView.MadeForYou";
            break;
          case 5:
            v11 = 0xD000000000000026;
            v12 = "LibraryView.MusicVideos";
            break;
          case 6:
            v11 = 0xD000000000000027;
            v12 = "LibraryView.Genres";
            break;
          case 7:
            v11 = 0xD000000000000022;
            v12 = "LibraryView.Compilations";
            break;
          case 8:
            v11 = 0xD000000000000028;
            v12 = "LibraryView.Composers";
            break;
          case 9:
            v11 = 0xD000000000000025;
            v12 = "LibraryView.Shows";
            break;
          case 0xA:
            v11 = 0xD000000000000021;
            v12 = "LibraryView.Downloaded";
            break;
          case 0xB:
            v11 = 0xD000000000000026;
            v12 = "LibraryView.Downloading";
            break;
          case 0xC:
            v11 = 0xD000000000000027;
            v12 = "ByPlaylistOrderAscending";
            break;
          default:
            break;
        }

        v13 = v12 | 0x8000000000000000;
        v14 = 0xD000000000000029;
        v15 = "LibraryView.Playlists";
        switch(v5)
        {
          case 1:
            v14 = 0xD000000000000025;
            v15 = "LibraryView.Artists";
            break;
          case 2:
            v14 = 0xD000000000000023;
            v15 = "LibraryView.Albums";
            break;
          case 3:
            v14 = 0xD000000000000022;
            v15 = "LibraryView.Songs";
            break;
          case 4:
            v14 = 0xD000000000000021;
            v15 = "LibraryView.MadeForYou";
            break;
          case 5:
            v14 = 0xD000000000000026;
            v15 = "LibraryView.MusicVideos";
            break;
          case 6:
            v14 = 0xD000000000000027;
            v15 = "LibraryView.Genres";
            break;
          case 7:
            v14 = 0xD000000000000022;
            v15 = "LibraryView.Compilations";
            break;
          case 8:
            v14 = 0xD000000000000028;
            v15 = "LibraryView.Composers";
            break;
          case 9:
            v14 = 0xD000000000000025;
            v15 = "LibraryView.Shows";
            break;
          case 10:
            v14 = 0xD000000000000021;
            v15 = "LibraryView.Downloaded";
            break;
          case 11:
            v14 = 0xD000000000000026;
            v15 = "LibraryView.Downloading";
            break;
          case 12:
            v14 = 0xD000000000000027;
            v15 = "ByPlaylistOrderAscending";
            break;
          default:
            break;
        }

        if (v11 == v14 && v13 == (v15 | 0x8000000000000000))
        {
          break;
        }

        v16 = sub_ABB3C0();

        if (v16)
        {
          goto LABEL_44;
        }

        a2 = (a2 + 1) & v10;
        if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

LABEL_43:

LABEL_44:
      sub_ABB4B0();
      __break(1u);
      JUMPOUT(0x239D0);
    }
  }

LABEL_40:
  v17 = *v21;
  *(*v21 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v5;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
    goto LABEL_43;
  }

  *(v17 + 16) = v20;
  return result;
}

uint64_t sub_23A38(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20134();
  }

  else
  {
    if (v11 > v10)
    {
      sub_25F68();
      goto LABEL_12;
    }

    sub_28C08();
  }

  v12 = *v3;
  sub_2B94C(&qword_DFAA90);
  v13 = sub_AB90D0();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_2B94C(&qword_DF7940);
      v21 = sub_AB91C0();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_ABB4B0();
  __break(1u);
  return result;
}

Swift::Int sub_23CB4(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2047C();
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_2660C(&qword_DE8098);
        goto LABEL_52;
      }

      sub_28F10();
    }

    v8 = *v3;
    sub_ABB5C0();
    SortOptions.SortType.rawValue.getter(v5);
    sub_AB93F0();

    result = sub_ABB610();
    v9 = -1 << *(v8 + 32);
    a2 = result & ~v9;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v10 = ~v9;
      while (2)
      {
        v11 = 0xE700000000000000;
        v12 = 0x656C7469547942;
        switch(*(*(v8 + 48) + a2))
        {
          case 1:
            v12 = 0xD000000000000019;
            v11 = 0x8000000000B49380;
            break;
          case 2:
            break;
          case 3:
            v12 = 0xD000000000000012;
            v11 = 0x8000000000B49360;
            break;
          case 4:
            v12 = 0xD000000000000018;
            v11 = 0x8000000000B49340;
            break;
          case 5:
            v12 = 0xD000000000000012;
            v11 = 0x8000000000B49320;
            break;
          case 6:
            v11 = 0xE800000000000000;
            v12 = 0x7473697472417942;
            break;
          case 7:
            v12 = 0x6D75626C417942;
            break;
          case 8:
            v12 = 0x696C79616C507942;
            v11 = 0xEE00657079547473;
            break;
          case 9:
            v12 = 0xD000000000000010;
            v11 = 0x8000000000B49300;
            break;
          case 0xA:
            v12 = 0x646E656373417942;
            v11 = 0xEF72616559676E69;
            break;
          case 0xB:
            v12 = 0xD000000000000016;
            v11 = 0x8000000000B492E0;
            break;
          case 0xC:
            v12 = 0xD000000000000017;
            v11 = 0x8000000000B492C0;
            break;
          default:
            v12 = 0xD000000000000018;
            v11 = 0x8000000000B493A0;
            break;
        }

        v13 = 0xE700000000000000;
        v14 = 0x656C7469547942;
        switch(v5)
        {
          case 1:
            v13 = 0x8000000000B49380;
            if (v12 != 0xD000000000000019)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 2:
            goto LABEL_45;
          case 3:
            v13 = 0x8000000000B49360;
            if (v12 != 0xD000000000000012)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 4:
            v13 = 0x8000000000B49340;
            if (v12 != 0xD000000000000018)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 5:
            v13 = 0x8000000000B49320;
            if (v12 != 0xD000000000000012)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 6:
            v13 = 0xE800000000000000;
            if (v12 != 0x7473697472417942)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 7:
            if (v12 != 0x6D75626C417942)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 8:
            v13 = 0xEE00657079547473;
            if (v12 != 0x696C79616C507942)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 9:
            v13 = 0x8000000000B49300;
            if (v12 != 0xD000000000000010)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 10:
            v14 = 0x646E656373417942;
            v13 = 0xEF72616559676E69;
LABEL_45:
            if (v12 == v14)
            {
              goto LABEL_46;
            }

            goto LABEL_47;
          case 11:
            v13 = 0x8000000000B492E0;
            if (v12 != 0xD000000000000016)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          case 12:
            v13 = 0x8000000000B492C0;
            if (v12 != 0xD000000000000017)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          default:
            v13 = 0x8000000000B493A0;
            if (v12 != 0xD000000000000018)
            {
              goto LABEL_47;
            }

LABEL_46:
            if (v11 == v13)
            {
              goto LABEL_55;
            }

LABEL_47:
            v15 = sub_ABB3C0();

            if (v15)
            {
              goto LABEL_56;
            }

            a2 = (a2 + 1) & v10;
            if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_52:
  v16 = *v20;
  *(*v20 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v16 + 48) + a2) = v5;
  v17 = *(v16 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
LABEL_55:

LABEL_56:
    sub_ABB4B0();
    __break(1u);
    JUMPOUT(0x24180);
  }

  *(v16 + 16) = v19;
  return result;
}

Swift::Int sub_241E8(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v43 = result;
  v8 = *(*v5 + 16);
  v9 = *(*v5 + 24);
  if (v9 <= v8 || (a5 & 1) == 0)
  {
    if (a5)
    {
      sub_208D8();
    }

    else
    {
      if (v9 > v8)
      {
        result = sub_261A0();
        goto LABEL_37;
      }

      sub_2933C();
    }

    v10 = *v5;
    sub_ABB5C0();
    sub_47B1A4(&v45, v43, a2, a3);
    result = sub_ABB610();
    v41 = v10 + 56;
    v42 = v10;
    v11 = -1 << *(v10 + 32);
    a4 = result & ~v11;
    if ((*(v10 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
    {
      v40 = ~v11;
      if (a3 < 0)
      {
        v12 = 0x7972617262696CLL;
      }

      else
      {
        v12 = 0x676F6C61746163;
      }

      v39 = a3 & 0x7FFFFFFFFFFFFFFFLL;
      v13 = &_s7LibraryVN;
      if (a3 >= 0)
      {
        v13 = &_s7CatalogVN;
      }

      v38 = v13;
      if (a3 < 0)
      {
        v14 = &off_D17228;
      }

      else
      {
        v14 = &off_D00048;
      }

      do
      {
        v15 = (*(v42 + 48) + 24 * a4);
        v16 = *v15;
        v17 = v15[1];
        v18 = v15[2];
        if (v18 < 0)
        {
          v19 = 0x7972617262696CLL;
        }

        else
        {
          v19 = 0x676F6C61746163;
        }

        if (v19 == v12)
        {
          sub_2BB90();
          swift_bridgeObjectRelease_n();
        }

        else
        {
          v20 = sub_ABB3C0();
          sub_2BB90();
          swift_bridgeObjectRelease_n();
          if ((v20 & 1) == 0)
          {
            result = sub_2BBCC();
            goto LABEL_18;
          }
        }

        if (v18 < 0)
        {
          v21 = &off_D17228;
        }

        else
        {
          v21 = &off_D00048;
        }

        v49 = v21;
        if (v18 < 0)
        {
          v22 = &_s7LibraryVN;
        }

        else
        {
          v22 = &_s7CatalogVN;
        }

        v45 = v16;
        v46 = v17;
        v47 = v18 & 0x7FFFFFFFFFFFFFFFLL;
        v48 = v22;

        __swift_project_boxed_opaque_existential_1(&v45, v22);
        v23 = (v21[1])(v22, v21);
        v25 = v24;
        __swift_destroy_boxed_opaque_existential_0(&v45);
        v45 = v43;
        v46 = a2;
        v48 = v38;
        v49 = v14;
        v47 = v39;

        __swift_project_boxed_opaque_existential_1(&v45, v38);
        v26 = (v14[1])(v38, v14);
        v28 = v27;
        __swift_destroy_boxed_opaque_existential_0(&v45);
        if (v23 == v26 && v25 == v28)
        {
          goto LABEL_40;
        }

        v30 = sub_ABB3C0();

        result = sub_2BBCC();
        if (v30)
        {
          goto LABEL_41;
        }

LABEL_18:
        a4 = (a4 + 1) & v40;
      }

      while (((*(v41 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
    }
  }

LABEL_37:
  v31 = *v36;
  *(*v36 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v32 = (*(v31 + 48) + 24 * a4);
  *v32 = v43;
  v32[1] = a2;
  v32[2] = a3;
  v33 = *(v31 + 16);
  v34 = __OFADD__(v33, 1);
  v35 = v33 + 1;
  if (v34)
  {
    __break(1u);
LABEL_40:

    sub_2BBCC();
LABEL_41:
    result = sub_ABB4B0();
    __break(1u);
  }

  else
  {
    *(v31 + 16) = v35;
  }

  return result;
}

Swift::Int sub_245D4(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a3)
  {
    sub_20C38();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_26308();
      goto LABEL_19;
    }

    sub_29684();
  }

  v9 = *v3;
  sub_ABB5C0();
  if (v6)
  {
    v10 = 0x7972617262696CLL;
  }

  else
  {
    v10 = 0x676F6C61746163;
  }

  sub_AB93F0();

  result = sub_ABB610();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = *(*(v9 + 48) + a2) ? 0x7972617262696CLL : 0x676F6C61746163;
      if (v13 == v10)
      {
        goto LABEL_22;
      }

      v14 = sub_ABB3C0();
      result = swift_bridgeObjectRelease_n();
      if (v14)
      {
        goto LABEL_23;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_19:
  v15 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + a2) = v6 & 1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_22:
  swift_bridgeObjectRelease_n();
LABEL_23:
  result = sub_ABB4B0();
  __break(1u);
  return result;
}

Swift::Int sub_247A8(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20EB8();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_26448();
      goto LABEL_12;
    }

    sub_298D4();
  }

  v8 = *v3;
  sub_ABB5C0();
  sub_AB93F0();
  result = sub_ABB610();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      v11 = (*(v8 + 48) + 240 * a2);
      v13 = v11[1];
      v12 = v11[2];
      v39[0] = *v11;
      v39[1] = v13;
      v39[2] = v12;
      v14 = v11[3];
      v15 = v11[4];
      v16 = v11[6];
      v39[5] = v11[5];
      v39[6] = v16;
      v39[3] = v14;
      v39[4] = v15;
      v17 = v11[7];
      v18 = v11[8];
      v19 = v11[10];
      v39[9] = v11[9];
      v39[10] = v19;
      v39[7] = v17;
      v39[8] = v18;
      v20 = v11[11];
      v21 = v11[12];
      v22 = v11[14];
      v39[13] = v11[13];
      v39[14] = v22;
      v39[11] = v20;
      v39[12] = v21;
      sub_ABB5C0();
      sub_2B990(v39, v38);
      sub_AB93F0();
      v23 = sub_ABB610();
      sub_ABB5C0();
      sub_AB93F0();
      v24 = sub_ABB610();
      result = sub_2B9EC(v39);
      if (v23 == v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = *v37;
  *(*v37 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v26 = (*(v25 + 48) + 240 * a2);
  v27 = v5[13];
  v26[12] = v5[12];
  v26[13] = v27;
  v26[14] = v5[14];
  v28 = v5[9];
  v26[8] = v5[8];
  v26[9] = v28;
  v29 = v5[11];
  v26[10] = v5[10];
  v26[11] = v29;
  v30 = v5[5];
  v26[4] = v5[4];
  v26[5] = v30;
  v31 = v5[7];
  v26[6] = v5[6];
  v26[7] = v31;
  v32 = v5[1];
  *v26 = *v5;
  v26[1] = v32;
  v33 = v5[3];
  v26[2] = v5[2];
  v26[3] = v33;
  v34 = *(v25 + 16);
  v35 = __OFADD__(v34, 1);
  v36 = v34 + 1;
  if (!v35)
  {
    *(v25 + 16) = v36;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_ABB4B0();
  __break(1u);
  return result;
}

Swift::Int sub_249FC(Swift::Int result, unint64_t a2, char a3)
{
  v36 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_70;
  }

  if (a3)
  {
    sub_211A0();
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_2660C(&qword_DE8048);
      goto LABEL_70;
    }

    sub_29B98();
  }

  v7 = *v3;
  result = sub_19F44();
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v9 = ~v8;
    v10 = 0x73747369747261;
    v11 = 0x736D75626C61;
    do
    {
      v12 = *(*(v7 + 48) + a2);
      if (v12 > 3)
      {
        if (*(*(v7 + 48) + a2) > 5u)
        {
          if (v12 == 6)
          {
            v17 = 0x7265736F706D6F63;
            v18 = 0xE900000000000073;
          }

          else
          {
            v17 = 0x4D73776F68537674;
            v18 = 0xED0000736569766FLL;
          }
        }

        else
        {
          if (v12 == 4)
          {
            v17 = 0x7473696C79616C70;
          }

          else
          {
            v17 = 0x646956636973756DLL;
          }

          if (v12 == 4)
          {
            v18 = 0xE900000000000073;
          }

          else
          {
            v18 = 0xEB00000000736F65;
          }
        }
      }

      else
      {
        if (v12 == 2)
        {
          v13 = v11;
        }

        else
        {
          v13 = 0x73676E6F73;
        }

        if (v12 == 2)
        {
          v14 = 0xE600000000000000;
        }

        else
        {
          v14 = 0xE500000000000000;
        }

        if (*(*(v7 + 48) + a2))
        {
          v15 = v10;
        }

        else
        {
          v15 = 7368564;
        }

        if (*(*(v7 + 48) + a2))
        {
          v16 = 0xE700000000000000;
        }

        else
        {
          v16 = 0xE300000000000000;
        }

        if (*(*(v7 + 48) + a2) <= 1u)
        {
          v17 = v15;
        }

        else
        {
          v17 = v13;
        }

        if (*(*(v7 + 48) + a2) <= 1u)
        {
          v18 = v16;
        }

        else
        {
          v18 = v14;
        }
      }

      v19 = 0x7265736F706D6F63;
      if (v36 != 6)
      {
        v19 = 0x4D73776F68537674;
      }

      v20 = 0xED0000736569766FLL;
      if (v36 == 6)
      {
        v20 = 0xE900000000000073;
      }

      v21 = 0x7473696C79616C70;
      if (v36 != 4)
      {
        v21 = 0x646956636973756DLL;
      }

      v22 = 0xEB00000000736F65;
      if (v36 == 4)
      {
        v22 = 0xE900000000000073;
      }

      if (v36 <= 5u)
      {
        v19 = v21;
        v20 = v22;
      }

      v23 = v11;
      if (v36 == 2)
      {
        v24 = v11;
      }

      else
      {
        v24 = 0x73676E6F73;
      }

      if (v36 == 2)
      {
        v25 = 0xE600000000000000;
      }

      else
      {
        v25 = 0xE500000000000000;
      }

      v26 = v10;
      if (v36)
      {
        v27 = 0xE700000000000000;
      }

      else
      {
        v10 = 7368564;
        v27 = 0xE300000000000000;
      }

      if (v36 <= 1u)
      {
        v24 = v10;
        v25 = v27;
      }

      v28 = v36 <= 3u ? v24 : v19;
      v29 = v36 <= 3u ? v25 : v20;
      if (v17 == v28 && v18 == v29)
      {
        goto LABEL_73;
      }

      v30 = sub_ABB3C0();

      if (v30)
      {
        goto LABEL_74;
      }

      a2 = (a2 + 1) & v9;
      v10 = v26;
      v11 = v23;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_70:
  v31 = *v35;
  *(*v35 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v31 + 48) + a2) = v36;
  v32 = *(v31 + 16);
  v33 = __OFADD__(v32, 1);
  v34 = v32 + 1;
  if (!v33)
  {
    *(v31 + 16) = v34;
    return result;
  }

  __break(1u);
LABEL_73:

LABEL_74:
  result = sub_ABB4B0();
  __break(1u);
  return result;
}

Swift::Int sub_24D7C(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_214EC();
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_2660C(&qword_DE8068);
        goto LABEL_25;
      }

      sub_29EB4();
    }

    v8 = *v3;
    sub_ABB5C0();
    sub_AB93F0();

    result = sub_ABB610();
    v9 = -1 << *(v8 + 32);
    a2 = result & ~v9;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v10 = ~v9;
      do
      {
        if (*(*(v8 + 48) + a2))
        {
          if (*(*(v8 + 48) + a2) == 1)
          {
            v11 = 0x657469726F766166;
          }

          else
          {
            v11 = 0x64616F6C6E776F64;
          }

          v12 = 0xE900000000000073;
          v13 = v5;
          if (!v5)
          {
LABEL_14:
            v14 = 0xE300000000000000;
            if (v11 == 7105633)
            {
              goto LABEL_22;
            }

            goto LABEL_23;
          }
        }

        else
        {
          v12 = 0xE300000000000000;
          v11 = 7105633;
          v13 = v5;
          if (!v5)
          {
            goto LABEL_14;
          }
        }

        if (v13 == 1)
        {
          v15 = 0x657469726F766166;
        }

        else
        {
          v15 = 0x64616F6C6E776F64;
        }

        v14 = 0xE900000000000073;
        if (v11 == v15)
        {
LABEL_22:
          if (v12 == v14)
          {
            goto LABEL_28;
          }
        }

LABEL_23:
        v16 = sub_ABB3C0();

        if (v16)
        {
          goto LABEL_29;
        }

        a2 = (a2 + 1) & v10;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_25:
  v17 = *v21;
  *(*v21 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v5;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_28:

LABEL_29:
    result = sub_ABB4B0();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v20;
  }

  return result;
}

void *sub_24FF8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE75A8);
  v2 = *v0;
  v3 = sub_ABAD20();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
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

void *sub_2514C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE7670);
  v2 = *v0;
  v3 = sub_ABAD20();
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
        v21 = *(v18 + 16);
        v22 = *(v4 + 48) + v17;
        *v22 = *v18;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
        result = sub_2BA40(v19, v20, v21);
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

void *sub_252C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE7508);
  v2 = *v0;
  v3 = sub_ABAD20();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

void *sub_25418()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE7538);
  v2 = *v0;
  v3 = sub_ABAD20();
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

void *sub_25574(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_ABAD20();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 56);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 48) + 8 * v15) = *(*(v3 + 48) + 8 * v15))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      ;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_256A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8110);
  v2 = *v0;
  v3 = sub_ABAD20();
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
        v17 = (v14 | (v8 << 6)) << 6;
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[3];
        v27[2] = v18[2];
        v27[3] = v21;
        v27[0] = v20;
        v27[1] = v19;
        v22 = (*(v4 + 48) + v17);
        v23 = *v18;
        v24 = v18[1];
        v25 = v18[3];
        v22[2] = v18[2];
        v22[3] = v25;
        *v22 = v23;
        v22[1] = v24;
        result = sub_2BABC(v27, &v26);
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

void *sub_25828()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE7FF8);
  v2 = *v0;
  v3 = sub_ABAD20();
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
        v17 = (v14 | (v8 << 6)) << 7;
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[2];
        v26[3] = v18[3];
        v22 = v18[4];
        v23 = v18[5];
        v24 = v18[7];
        v26[6] = v18[6];
        v26[7] = v24;
        v26[4] = v22;
        v26[5] = v23;
        v26[1] = v19;
        v26[2] = v21;
        v26[0] = v20;
        memmove((*(v4 + 48) + v17), v18, 0x80uLL);
        result = sub_2B7BC(v26, &v25);
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

void *sub_259B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE80F8);
  v2 = *v0;
  v3 = sub_ABAD20();
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
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
LABEL_11:
      v11 &= v11 - 1;
    }

    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        goto LABEL_17;
      }

      v11 = *(v2 + 56 + 8 * v13);
      ++v8;
      if (v11)
      {
        v8 = v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v4;
  }

  return result;
}

id sub_25AC4(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_ABAD20();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        result = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

id sub_25C04()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8008);
  v2 = *v0;
  v3 = sub_ABAD20();
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
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        LOBYTE(v18) = *(v18 + 8);
        v20 = *(v4 + 48) + v17;
        *v20 = v19;
        *(v20 + 8) = v18;
        result = v19;
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

void *sub_25D7C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEEE0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8000);
  v6 = *v0;
  v7 = sub_ABAD20();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_2B86C(*(v6 + 48) + v21, v5);
        result = sub_2B8DC(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_25F68()
{
  v1 = v0;
  v2 = sub_AB3820();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8080);
  v6 = *v0;
  v7 = sub_ABAD20();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_261A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8118);
  v2 = *v0;
  v3 = sub_ABAD20();
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
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = (*(v4 + 48) + v17);
        *v21 = *v18;
        v21[1] = v19;
        v21[2] = v20;
        result = sub_2BB90();
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

void *sub_26308()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8120);
  v2 = *v0;
  v3 = sub_ABAD20();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
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

void *sub_26448()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE80E0);
  v2 = *v0;
  v3 = sub_ABAD20();
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
        v17 = 240 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[3];
        v20 = v18[4];
        v21 = v18[6];
        v31[5] = v18[5];
        v31[6] = v21;
        v31[3] = v19;
        v31[4] = v20;
        v22 = v18[7];
        v23 = v18[8];
        v24 = v18[10];
        v31[9] = v18[9];
        v31[10] = v24;
        v31[7] = v22;
        v31[8] = v23;
        v25 = v18[11];
        v26 = v18[12];
        v27 = v18[14];
        v31[13] = v18[13];
        v31[14] = v27;
        v31[11] = v25;
        v31[12] = v26;
        v29 = v18[1];
        v28 = v18[2];
        v31[0] = *v18;
        v31[1] = v29;
        v31[2] = v28;
        memmove((*(v4 + 48) + v17), v18, 0xF0uLL);
        result = sub_2B990(v31, &v30);
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

void *sub_2660C(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_ABAD20();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 56);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 48) + v15) = *(*(v3 + 48) + v15))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      ;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_2673C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE75A8);
  result = sub_ABAD30();
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
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_ABB5C0();
      v16 = v15 - 3;
      if ((v15 - 3) >= 6)
      {
        sub_ABB5D0(6uLL);
        v16 = v15;
      }

      sub_ABB5D0(v16);
      result = sub_ABB610();
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

        goto LABEL_30;
      }

      v11 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
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

        v1 = v0;
        goto LABEL_28;
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
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_26978()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE7FE8);
  result = sub_ABAD30();
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
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_ABB5B0();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
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
        goto LABEL_24;
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
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_26B68()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE7670);
  result = sub_ABAD30();
  v4 = result;
  if (*(v2 + 16))
  {
    v29 = v2;
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
      v19 = *v17;
      v18 = *(v17 + 8);
      v20 = *(v17 + 16);
      sub_ABB5C0();
      if (v20)
      {
        sub_ABB5D0(1uLL);
        v21 = v19;
        sub_ABA7A0();
      }

      else
      {
        sub_ABB5D0(0);

        sub_AB93F0();
      }

      result = sub_ABB610();
      v22 = -1 << *(v4 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v11 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v11 + 8 * v24);
          if (v28 != -1)
          {
            v12 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 24 * v12;
      *v13 = v19;
      *(v13 + 8) = v18;
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
        break;
      }

      if (v5 >= v10)
      {

        v1 = v0;
        goto LABEL_29;
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
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_26DE0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE7508);
  result = sub_ABAD30();
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
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      sub_ABB5C0();
      v16 = sub_127604();
      sub_ABB5D0(v16);
      result = sub_ABB610();
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
      *(*(v4 + 48) + 8 * v11) = v15;
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

        v1 = v0;
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

uint64_t sub_2700C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE7FF0);
  result = sub_ABAD30();
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
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_ABB5C0();
      sub_ABB5D0(v15);
      result = sub_ABB610();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
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

        v1 = v0;
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

uint64_t sub_2722C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE7538);
  result = sub_ABAD30();
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
      sub_ABB5C0();

      sub_AB93F0();
      result = sub_ABB610();
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

uint64_t sub_27464(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_ABAD30();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_ABB5B0();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
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
        goto LABEL_24;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_2764C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8110);
  result = sub_ABAD30();
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
      v16 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v19 = (*(v2 + 48) + ((v16 | (v5 << 6)) << 6));
      v21 = *v19;
      v20 = v19[1];
      v22 = v19[3];
      v33 = v19[2];
      v34 = v22;
      v31 = v21;
      v32 = v20;
      sub_ABB5C0();
      sub_2BABC(&v31, v30);
      sub_AB93F0();
      result = sub_ABB610();
      v23 = -1 << *(v4 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v10 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v10 + 8 * v25);
          if (v29 != -1)
          {
            v11 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v24) & ~*(v10 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + (v11 << 6));
      v13 = v31;
      v14 = v32;
      v15 = v34;
      v12[2] = v33;
      v12[3] = v15;
      *v12 = v13;
      v12[1] = v14;
      ++*(v4 + 16);
    }

    v17 = v5;
    while (1)
    {
      v5 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v18 = *(v2 + 56 + 8 * v5);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v8 = (v18 - 1) & v18;
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

uint64_t sub_278A8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE7FF8);
  result = sub_ABAD30();
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
      v19 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v22 = (*(v2 + 48) + ((v19 | (v5 << 6)) << 7));
      v24 = *v22;
      v23 = v22[1];
      v25 = v22[3];
      v39 = v22[2];
      v40 = v25;
      v26 = v22[4];
      v27 = v22[5];
      v28 = v22[7];
      v43 = v22[6];
      v44 = v28;
      v41 = v26;
      v42 = v27;
      v37 = v24;
      v38 = v23;
      sub_ABB5C0();
      sub_2B7BC(&v37, v36);
      sub_AB93F0();
      if (*(&v37 + 1))
      {
        sub_ABB5E0(1u);
        sub_AB93F0();
      }

      else
      {
        sub_ABB5E0(0);
      }

      result = sub_ABB610();
      v29 = -1 << *(v4 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v10 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v10 + 8 * v31);
          if (v35 != -1)
          {
            v11 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v11 = __clz(__rbit64((-1 << v30) & ~*(v10 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + (v11 << 7));
      v13 = v37;
      v15 = v39;
      v14 = v40;
      v12[1] = v38;
      v12[2] = v15;
      *v12 = v13;
      v16 = v41;
      v17 = v42;
      v18 = v44;
      v12[6] = v43;
      v12[7] = v18;
      v12[4] = v16;
      v12[5] = v17;
      v12[3] = v14;
      ++*(v4 + 16);
    }

    v20 = v5;
    while (1)
    {
      v5 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_29;
      }

      v21 = *(v2 + 56 + 8 * v5);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v8 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_27B7C()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE80F8);
  result = sub_ABAD30();
  v3 = result;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = 1 << *(v1 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v1 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = result + 56;
    while (v7)
    {
LABEL_13:
      sub_ABB5C0();
      sub_ABB5D0(0);
      result = sub_ABB610();
      v12 = -1 << *(v3 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v9 + 8 * (v13 >> 6))) == 0)
      {
        v15 = 0;
        v16 = (63 - v12) >> 6;
        while (++v14 != v16 || (v15 & 1) == 0)
        {
          v17 = v14 == v16;
          if (v14 == v16)
          {
            v14 = 0;
          }

          v15 |= v17;
          v18 = *(v9 + 8 * v14);
          if (v18 != -1)
          {
            v10 = __clz(__rbit64(~v18)) + (v14 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_24;
      }

      v10 = __clz(__rbit64((-1 << v13) & ~*(v9 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v7 &= v7 - 1;
      *(v9 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      ++*(v3 + 16);
    }

    while (1)
    {
      v11 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        goto LABEL_22;
      }

      v7 = *(v1 + 56 + 8 * v11);
      ++v4;
      if (v7)
      {
        v4 = v11;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_22:

    *v0 = v3;
  }

  return result;
}

uint64_t sub_27D58(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_ABAD30();
  v6 = result;
  if (*(v4 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(v6 + 40);
      v18 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_ABA780(v17);
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
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
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

        v3 = v26;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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
    *v3 = v6;
  }

  return result;
}

uint64_t sub_27F64()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8008);
  v3 = sub_ABAD30();
  v4 = v3;
  if (*(v2 + 16))
  {
    v29 = v0;
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
    v10 = v3 + 56;
    while (v8)
    {
      v18 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_17:
      v21 = *(v2 + 48) + 16 * (v18 | (v5 << 6));
      v22 = *v21;
      v23 = *(v21 + 8);
      sub_ABB5C0();
      v24 = v22;
      sub_ABA7A0();
      sub_AB93F0();

      v12 = sub_ABB610();
      v13 = -1 << *(v4 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v10 + 8 * (v14 >> 6))) != 0)
      {
        v16 = __clz(__rbit64((-1 << v14) & ~*(v10 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = 0;
        v26 = (63 - v13) >> 6;
        do
        {
          if (++v15 == v26 && (v25 & 1) != 0)
          {
            goto LABEL_29;
          }

          v27 = v15 == v26;
          if (v15 == v26)
          {
            v15 = 0;
          }

          v25 |= v27;
          v28 = *(v10 + 8 * v15);
        }

        while (v28 == -1);
        v16 = __clz(__rbit64(~v28)) + (v15 << 6);
      }

      *(v10 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v4 + 48) + 16 * v16;
      *v17 = v24;
      *(v17 + 8) = v23;
      ++*(v4 + 16);
    }

    v19 = v5;
    while (1)
    {
      v5 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        JUMPOUT(0x2839CLL);
      }

      if (v5 >= v9)
      {
        break;
      }

      v20 = *(v2 + 56 + 8 * v5);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v8 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    v1 = v29;
  }

  else
  {
  }

  *v1 = v4;
  return result;
}

uint64_t sub_283DC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE7570);
  v3 = sub_ABAD30();
  v4 = v3;
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
    v10 = v3 + 56;
    while (v8)
    {
      v17 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_17:
      v20 = *(*(v2 + 48) + (v17 | (v5 << 6)));
      sub_ABB5C0();
      sub_AB93F0();

      v12 = sub_ABB610();
      v13 = -1 << *(v4 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v10 + 8 * (v14 >> 6))) != 0)
      {
        v16 = __clz(__rbit64((-1 << v14) & ~*(v10 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        do
        {
          if (++v15 == v22 && (v21 & 1) != 0)
          {
            goto LABEL_29;
          }

          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v10 + 8 * v15);
        }

        while (v24 == -1);
        v16 = __clz(__rbit64(~v24)) + (v15 << 6);
      }

      *(v10 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v4 + 48) + v16) = v20;
      ++*(v4 + 16);
    }

    v18 = v5;
    while (1)
    {
      v5 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        JUMPOUT(0x287ECLL);
      }

      if (v5 >= v9)
      {
        break;
      }

      v19 = *(v2 + 56 + 8 * v5);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v8 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v1 = v0;
  }

  else
  {
  }

  *v1 = v4;
  return result;
}

uint64_t sub_2882C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE80F0);
  v3 = sub_ABAD30();
  v4 = v3;
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
    v10 = v3 + 56;
    while (v8)
    {
      v17 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_17:
      v20 = *(*(v2 + 48) + (v17 | (v5 << 6)));
      sub_ABB5C0();
      sub_AB93F0();

      v12 = sub_ABB610();
      v13 = -1 << *(v4 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v10 + 8 * (v14 >> 6))) != 0)
      {
        v16 = __clz(__rbit64((-1 << v14) & ~*(v10 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        do
        {
          if (++v15 == v22 && (v21 & 1) != 0)
          {
            goto LABEL_29;
          }

          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v10 + 8 * v15);
        }

        while (v24 == -1);
        v16 = __clz(__rbit64(~v24)) + (v15 << 6);
      }

      *(v10 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v4 + 48) + v16) = v20;
      ++*(v4 + 16);
    }

    v18 = v5;
    while (1)
    {
      v5 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        JUMPOUT(0x28BD4);
      }

      if (v5 >= v9)
      {
        break;
      }

      v19 = *(v2 + 56 + 8 * v5);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v8 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v1 = v0;
  }

  else
  {
  }

  *v1 = v4;
  return result;
}

uint64_t sub_28C08()
{
  v1 = v0;
  v32 = sub_AB3820();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8080);
  v6 = sub_ABAD30();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_2B94C(&qword_DFAA90);
      result = sub_AB90D0();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_28F10()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8098);
  v3 = sub_ABAD30();
  v4 = v3;
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
    v10 = v3 + 56;
    while (v8)
    {
      v17 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_17:
      v20 = *(*(v2 + 48) + (v17 | (v5 << 6)));
      sub_ABB5C0();
      sub_AB93F0();

      v12 = sub_ABB610();
      v13 = -1 << *(v4 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v10 + 8 * (v14 >> 6))) != 0)
      {
        v16 = __clz(__rbit64((-1 << v14) & ~*(v10 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        do
        {
          if (++v15 == v22 && (v21 & 1) != 0)
          {
            goto LABEL_29;
          }

          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v10 + 8 * v15);
        }

        while (v24 == -1);
        v16 = __clz(__rbit64(~v24)) + (v15 << 6);
      }

      *(v10 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v4 + 48) + v16) = v20;
      ++*(v4 + 16);
    }

    v18 = v5;
    while (1)
    {
      v5 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        JUMPOUT(0x29308);
      }

      if (v5 >= v9)
      {
        break;
      }

      v19 = *(v2 + 56 + 8 * v5);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v8 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v1 = v0;
  }

  else
  {
  }

  *v1 = v4;
  return result;
}

uint64_t sub_2933C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8118);
  result = sub_ABAD30();
  v4 = result;
  if (*(v2 + 16))
  {
    v31 = v1;
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
    v32 = (v7 + 63) >> 6;
    v33 = v2 + 56;
    v10 = result + 56;
    v34 = v2;
    v35 = result;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v36 = (v9 - 1) & v9;
LABEL_15:
      v16 = (*(v2 + 48) + 24 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      v19 = v16[2];
      sub_ABB5C0();
      if (v19 < 0)
      {
        v20 = &off_D17228;
      }

      else
      {
        v20 = &off_D00048;
      }

      v37[4] = v20;
      if (v19 < 0)
      {
        v21 = &_s7LibraryVN;
      }

      else
      {
        v21 = &_s7CatalogVN;
      }

      if (v19 < 0)
      {
        v22 = v19 & 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v19;
      }

      v37[0] = v17;
      v37[1] = v18;
      v37[2] = v22;
      v37[3] = v21;

      __swift_project_boxed_opaque_existential_1(v37, v21);
      v23 = v20[1];
      sub_2BB90();
      v23(v21, v20);
      __swift_destroy_boxed_opaque_existential_0(v37);
      sub_AB93F0();

      sub_AB93F0();

      result = sub_ABB610();
      v4 = v35;
      v24 = -1 << *(v35 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v10 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v10 + 8 * v26);
          if (v30 != -1)
          {
            v11 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_37;
      }

      v11 = __clz(__rbit64((-1 << v25) & ~*(v10 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v35 + 48) + 24 * v11);
      v9 = v36;
      *v12 = v17;
      v12[1] = v18;
      v12[2] = v19;
      ++*(v35 + 16);
      v6 = v33;
      v2 = v34;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v32)
      {

        v1 = v31;
        goto LABEL_35;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
  }

  else
  {

LABEL_35:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_29684()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8120);
  result = sub_ABAD30();
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
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_ABB5C0();
      sub_AB93F0();

      result = sub_ABB610();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
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

        v1 = v0;
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

uint64_t sub_298D4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE80E0);
  result = sub_ABAD30();
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
      v24 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v27 = (*(v2 + 48) + 240 * (v24 | (v5 << 6)));
      v29 = *v27;
      v28 = v27[1];
      v49 = v27[2];
      v30 = v27[3];
      v31 = v27[4];
      v32 = v27[6];
      v52 = v27[5];
      v53 = v32;
      v50 = v30;
      v51 = v31;
      v33 = v27[7];
      v34 = v27[8];
      v35 = v27[10];
      v56 = v27[9];
      v57 = v35;
      v54 = v33;
      v55 = v34;
      v36 = v27[11];
      v37 = v27[12];
      v38 = v27[14];
      v60 = v27[13];
      v61 = v38;
      v58 = v36;
      v59 = v37;
      v47 = v29;
      v48 = v28;
      sub_ABB5C0();
      sub_2B990(&v47, v46);
      sub_AB93F0();
      result = sub_ABB610();
      v39 = -1 << *(v4 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v10 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v10 + 8 * v41);
          if (v45 != -1)
          {
            v11 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v40) & ~*(v10 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 240 * v11);
      v13 = v49;
      v14 = v47;
      v12[1] = v48;
      v12[2] = v13;
      v15 = v50;
      v16 = v51;
      v17 = v53;
      v12[5] = v52;
      v12[6] = v17;
      v12[3] = v15;
      v12[4] = v16;
      v18 = v54;
      v19 = v55;
      v20 = v57;
      v12[9] = v56;
      v12[10] = v20;
      v12[7] = v18;
      v12[8] = v19;
      v21 = v58;
      v22 = v59;
      v23 = v61;
      v12[13] = v60;
      v12[14] = v23;
      v12[11] = v21;
      v12[12] = v22;
      *v12 = v14;
      ++*(v4 + 16);
    }

    v25 = v5;
    while (1)
    {
      v5 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v26 = *(v2 + 56 + 8 * v5);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v8 = (v26 - 1) & v26;
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

uint64_t sub_29B98()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8048);
  result = sub_ABAD30();
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
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_17:
      v18 = *(*(v2 + 48) + (v15 | (v5 << 6)));
      sub_ABB5C0();
      sub_AB93F0();

      result = sub_ABB610();
      v11 = -1 << *(v4 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~*(v10 + 8 * (v12 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v11) >> 6;
        while (++v13 != v20 || (v19 & 1) == 0)
        {
          v21 = v13 == v20;
          if (v13 == v20)
          {
            v13 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v13);
          if (v22 != -1)
          {
            v14 = __clz(__rbit64(~v22)) + (v13 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v14 = __clz(__rbit64((-1 << v12) & ~*(v10 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v4 + 48) + v14) = v18;
      ++*(v4 + 16);
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_27;
      }

      v17 = *(v2 + 56 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_29EB4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8068);
  result = sub_ABAD30();
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
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_ABB5C0();
      sub_AB93F0();

      result = sub_ABB610();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
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

        v1 = v0;
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

uint64_t sub_2A124(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    if (v3 >> 62)
    {
      sub_ABB060();
    }

    result = sub_ABAE30();
    *v1 = result;
  }

  return result;
}

uint64_t sub_2A1E4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
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

  sub_ABB060();
LABEL_9:
  result = sub_ABAE30();
  *v1 = result;
  return result;
}

uint64_t sub_2A284(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_ABB060();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
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
      result = sub_ABB060();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2BC4C(&qword_DE7FE0, &qword_DE7FD8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE7FD8);
            v9 = sub_1CD154(v13, i, a3);
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
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        type metadata accessor for JSImpression();
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

uint64_t sub_2A414(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_ABB060();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
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
      result = sub_ABB060();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2BC4C(&qword_E0C200, &qword_DE7FD0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE7FD0);
            v9 = sub_1CD0D4(v13, i, a3);
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
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_13C80(0, &qword_DE7500);
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

uint64_t sub_2A5B4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_ABB060();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
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
      result = sub_ABB060();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2BC4C(&qword_DE80B8, &qword_DE80B0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE80B0);
            v9 = sub_1CD1DC(v13, i, a3);
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
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        type metadata accessor for JSWhatsNewFeaturedItemViewModel();
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

uint64_t sub_2A744(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_ABB060();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
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
      result = sub_ABB060();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2BC4C(&qword_DE80A8, &qword_DE80A0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE80A0);
            v9 = sub_1CD25C(v13, i, a3);
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
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_13C80(0, &unk_DF12E0);
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

uint64_t sub_2A8E4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_ABB060();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
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
      result = sub_ABB060();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2BC4C(&qword_DE8090, &qword_DE8088);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8088);
            v9 = sub_1CD3E4(v13, i, a3);
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
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_13C80(0, &qword_DEDE20);
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

uint64_t sub_2AA84(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_ABB060();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
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
      result = sub_ABB060();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2BC4C(&unk_DE8130, &qword_DE8128);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8128);
            v9 = sub_1CD4E4(v13, i, a3);
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
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_13C80(0, &qword_DF7920);
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

uint64_t sub_2AC24(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_ABB060();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
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
      result = sub_ABB060();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2BC4C(&qword_DE8108, &qword_DE8100);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8100);
            v9 = sub_1CD564(v13, i, a3);
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
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_13C80(0, &qword_DE9C10);
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

uint64_t sub_2ADC4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_ABB060();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
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
      result = sub_ABB060();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2BC4C(&qword_DE8038, &qword_DE8030);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8030);
            v9 = sub_1CD5E4(v13, i, a3);
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
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_13C80(0, &qword_DE8028);
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

uint64_t sub_2AF64(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_ABB060();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
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
      result = sub_ABB060();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2BC4C(&qword_DE8020, &qword_DE8018);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8018);
            v9 = sub_1CD464(v13, i, a3);
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
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_13C80(0, &unk_DE8180);
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

uint64_t sub_2B104(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_ABB060();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
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
      result = sub_ABB060();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2BC4C(&qword_DE80D8, &qword_DE80D0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE80D0);
            v9 = sub_1CD364(v13, i, a3);
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
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_13C80(0, &qword_DED7C0);
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

uint64_t sub_2B2A4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_ABB060();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
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
      result = sub_ABB060();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2BC4C(&qword_DE80C8, &qword_DE80C0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE80C0);
            v9 = sub_1CD2DC(v13, i, a3);
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
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        _s9ComponentCMa(0);
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

uint64_t sub_2B434(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_ABB060();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
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
      result = sub_ABB060();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2BC4C(&qword_DE8078, &qword_DE8070);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8070);
            v9 = sub_1CD764(v13, i, a3);
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
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_13C80(0, &qword_E04510);
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

uint64_t sub_2B5D4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_ABB060();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
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
      result = sub_ABB060();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2BC4C(&qword_DE8060, &qword_DE8058);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8058);
            v9 = sub_1CD664(v13, i, a3);
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
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_13C80(0, &qword_DE8050);
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2B86C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEEE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2B8DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEEE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2B94C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_AB3820();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_2BA40(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

unint64_t sub_2BB20()
{
  result = qword_DF12C0;
  if (!qword_DF12C0)
  {
    sub_13C80(255, &qword_DE7500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF12C0);
  }

  return result;
}

uint64_t sub_2BB90()
{
}

uint64_t sub_2BBCC()
{
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2BC4C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2BCA4(void *a1)
{
  v2 = v1;
  sub_13C80(0, &qword_DE8170);
  v4 = sub_ABA710();
  if (v4)
  {
    v5 = v4;
    v6 = NSClassFromString(v4);

    if (v6)
    {
      swift_getObjCClassMetadata();
      sub_13C80(0, &qword_DEDE20);
      if (swift_dynamicCastMetatype())
      {
        sub_13C80(0, &unk_DE8180);
        v7 = sub_ABA710();
        if (v7)
        {
          v8 = v7;
          v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          aBlock[4] = UIScreen.Dimensions.size.getter;
          aBlock[5] = 0;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_41A314;
          aBlock[3] = &block_descriptor_0;
          v10 = _Block_copy(aBlock);
          v11 = [v9 initWithIdentifiers:v8 block:v10];
          _Block_release(v10);

          LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

          if (v10)
          {
            __break(1u);
            return;
          }

          if (v11)
          {
            *&v2[OBJC_IVAR____TtC16MusicApplication20CodableModelIdentity_model] = v11;
            v12.receiver = v2;
            v12.super_class = type metadata accessor for CodableModelIdentity();
            objc_msgSendSuper2(&v12, "init");

            return;
          }
        }
      }
    }
  }

  type metadata accessor for CodableModelIdentity();
  swift_deallocPartialClassInstance();
}

void sub_2BEFC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication20CodableModelIdentity_model);
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v5)
  {
    sub_AB92A0();
    v5 = sub_AB9260();
  }

  v6 = sub_AB9260();
  [a1 encodeObject:v5 forKey:v6];

  v7 = [v3 identifiers];
  v8 = sub_AB9260();
  [a1 encodeObject:v7 forKey:v8];
}

id sub_2C0C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CodableModelIdentity();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2C148(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE570);
  __chkstk_darwin(v3 - 8);
  v5 = v38 - v4 + 32;
  sub_15F84(a1 + 24, v47, &unk_DE8E40);
  if (!v48)
  {
    sub_12E1C(v47, &unk_DE8E40);
    v19 = _s23MusicPerformanceContextVMa();
    (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
    goto LABEL_9;
  }

  v6 = _s23MusicPerformanceContextVMa();
  v7 = swift_dynamicCast();
  v8 = *(v6 - 8);
  (*(v8 + 56))(v5, v7 ^ 1u, 1, v6);
  if ((*(v8 + 48))(v5, 1, v6) == 1)
  {
LABEL_9:
    sub_12E1C(v5, &unk_DEE570);
    memset(v42, 0, sizeof(v42));
    v43 = 1;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    goto LABEL_10;
  }

  sub_15F84(v5, v42, &unk_DEA520);
  sub_2D6C0(v5, _s23MusicPerformanceContextVMa);
  if (v43 == 1)
  {
LABEL_10:
    sub_12E1C(v42, &unk_DEA520);
    return;
  }

  sub_17704(v42, v47);
  v9 = OBJC_IVAR____TtC11MusicJSCore19JSPresentationSegue_presentationStyle;
  swift_beginAccess();
  v10 = v1[v9];
  v11 = OBJC_IVAR____TtC11MusicJSCore19JSPresentationSegue_componentController;
  swift_beginAccess();
  v12 = v1;
  v13 = *&v1[v11];
  if (v13 && (type metadata accessor for JSAlertComponentController(), v14 = swift_dynamicCastClass(), v15 = v13, v14) && (v16 = v15, (v17 = sub_2C65C(v47)) != 0))
  {
    v18 = v17;
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v17, 0, 1, 0, 0);
    sub_1611C(v47);
  }

  else
  {
    v20 = [objc_allocWithZone(type metadata accessor for JSDrivenViewController()) init];
    if (v10)
    {
      v21 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_prefersCancelButton;
      swift_beginAccess();
      v22 = v20[v21];
      v20[v21] = 1;
      if ((v22 & 1) == 0)
      {
        sub_65DA0();
      }
    }

    JSDrivenViewController.configure(presentationSegue:)(v12);
    sub_15F28(v47, v42);
    sub_2D384(a1, v40);
    sub_15F28(v42, v39);
    sub_2D384(v40, v38);
    v23 = swift_allocObject();
    *(v23 + 16) = v10;
    *(v23 + 24) = v20;
    sub_17704(v42, v23 + 32);
    *(v23 + 176) = v41;
    v24 = v40[2];
    *(v23 + 144) = v40[1];
    *(v23 + 160) = v24;
    *(v23 + 128) = v40[0];
    if (v20[OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_isPreparingContentViewController] == 1)
    {
      v25 = swift_allocObject();
      *(v25 + 16) = sub_2D484;
      *(v25 + 24) = v23;
      v26 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewControllerPreparationCompletionHandlers;
      swift_beginAccess();
      v27 = *&v20[v26];
      v28 = v20;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v20[v26] = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = sub_6AA00(0, v27[2] + 1, 1, v27);
        *&v20[v26] = v27;
      }

      v30 = v27[2];
      v31 = v27[3];
      v32 = v30 + 1;
      if (v30 >= v31 >> 1)
      {
        v34 = v27;
        v35 = v27[2];
        v36 = sub_6AA00((v31 > 1), v30 + 1, 1, v34);
        v30 = v35;
        v27 = v36;
      }

      v27[2] = v32;
      v33 = &v27[2 * v30];
      v33[4] = sub_2D4D0;
      v33[5] = v25;
      *&v20[v26] = v27;
      swift_endAccess();
    }

    else
    {
      sub_2CA94(v10, v20);
    }

    sub_1611C(v47);

    sub_1611C(v39);
    sub_16170(v38);
  }
}

uint64_t sub_2C65C(uint64_t a1)
{
  v1 = JSComponentController.viewModelKind.getter();
  if ((~v1 & 0xF000000000000007) == 0)
  {
    return 0;
  }

  v3 = v1;
  v4 = JSViewModelKind.innerViewModel.getter(v1);
  sub_2D4D8(v3);
  type metadata accessor for JSAlertViewModel();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {

    return 0;
  }

  v6 = v5;
  v7 = (v5 + OBJC_IVAR____TtC11MusicJSCore16JSAlertViewModel_title);
  swift_beginAccess();
  v8 = v7[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
  }

  else
  {
    v8 = 0;
  }

  v10 = (v6 + OBJC_IVAR____TtC11MusicJSCore16JSAlertViewModel_message);
  swift_beginAccess();
  v11 = v10[1];
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = *v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
  }

  else
  {
    v11 = 0;
  }

  v13 = OBJC_IVAR____TtC11MusicJSCore16JSAlertViewModel_alertStyle;
  swift_beginAccess();
  v14 = ~*(v6 + v13);
  if (v8)
  {
    v15 = sub_AB9260();

    if (v11)
    {
LABEL_17:
      v16 = sub_AB9260();

      goto LABEL_20;
    }
  }

  else
  {
    v15 = 0;
    if (v11)
    {
      goto LABEL_17;
    }
  }

  v16 = 0;
LABEL_20:
  v2 = [objc_opt_self() alertControllerWithTitle:v15 message:v16 preferredStyle:v14 & 1];

  v17 = OBJC_IVAR____TtC11MusicJSCore16JSAlertViewModel_alertActions;
  result = swift_beginAccess();
  v19 = *(v6 + v17);
  if (!(v19 >> 62))
  {
    v20 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
    if (v20)
    {
      goto LABEL_22;
    }

LABEL_34:

    return v2;
  }

  result = sub_ABB060();
  v20 = result;
  if (!result)
  {
    goto LABEL_34;
  }

LABEL_22:
  v35 = v4;
  if (v20 >= 1)
  {
    v36 = v39;

    for (i = 0; i != v20; ++i)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v22 = sub_36006C(i, v19);
      }

      else
      {
        v22 = *(v19 + 8 * i + 32);
      }

      v23 = v22;
      v24 = &v22[OBJC_IVAR____TtC11MusicJSCore13JSAlertAction_title];
      swift_beginAccess();
      v26 = *v24;
      v25 = *(v24 + 1);
      v27 = HIBYTE(v25) & 0xF;
      if ((v25 & 0x2000000000000000) == 0)
      {
        v27 = v26 & 0xFFFFFFFFFFFFLL;
      }

      if (v27)
      {
        v28 = OBJC_IVAR____TtC11MusicJSCore13JSAlertAction_alertActionStyle;
        swift_beginAccess();
        v29 = v23[v28];
        sub_15F28(a1, v40);
        v30 = swift_allocObject();
        *(v30 + 16) = v23;
        sub_17704(v40, v30 + 24);

        v31 = v23;
        v32 = sub_AB9260();

        v39[2] = sub_2D570;
        v39[3] = v30;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v39[0] = sub_1546C;
        v39[1] = &block_descriptor_1;
        v33 = _Block_copy(aBlock);

        v34 = [objc_opt_self() actionWithTitle:v32 style:v29 handler:{v33, v35, v36}];
        _Block_release(v33);

        [v2 addAction:v34];
      }
    }

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_2CA94(char a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(type metadata accessor for NavigationController()) init];
  v5 = v4;
  if (a1)
  {
    v6 = 7;
  }

  else
  {
    v6 = 2;
  }

  [v4 setModalPresentationStyle:v6];
  [v5 pushViewController:a2 animated:0];
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v5, 0, 1, 0, 0);
  sub_414AFC(v11);
  if (v12)
  {
    __swift_project_boxed_opaque_existential_1(v11, v12);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      _s30CollectionViewSelectionHandlerVMa();
      isa = sub_AB3770().super.isa;
      [v8 deselectItemAtIndexPath:isa animated:1];
    }

    return __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {

    return sub_12E1C(v11, &unk_DE8E30);
  }
}

void sub_2CBD0(uint64_t a1, void *a2, uint64_t a3)
{
  v58 = a2;
  v55 = sub_AB3430();
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v53 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v52 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = _s23MusicPerformanceContextVMa();
  __chkstk_darwin(v57);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0);
  __chkstk_darwin(v10 - 8);
  v12 = &v51 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v51 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v19 - 8);
  v21 = &v51 - v20;
  v56 = JSSegueCoordinator.shared.unsafeMutableAddressor();
  v22 = type metadata accessor for PlaybackIntentDescriptor(0);
  memset(v62, 0, sizeof(v62));
  v63 = 0;
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  sub_15F84(v62, &v59, &unk_DE8E30);
  if (!*(&v60 + 1))
  {
    sub_12E1C(&v59, &unk_DE8E30);
    v29 = _s30CollectionViewSelectionHandlerVMa();
    (*(*(v29 - 8) + 56))(v12, 1, 1, v29);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50);
  v23 = a3;
  v24 = _s30CollectionViewSelectionHandlerVMa();
  v25 = swift_dynamicCast();
  v26 = *(v24 - 8);
  (*(v26 + 56))(v12, v25 ^ 1u, 1, v24);
  v27 = (*(v26 + 48))(v12, 1, v24);
  a3 = v23;
  if (v27 == 1)
  {
LABEL_5:
    sub_12E1C(v12, &qword_E037A0);
    v28 = 1;
    goto LABEL_6;
  }

  (*(v6 + 16))(v18, &v12[*(v24 + 20)], v5);
  sub_2D6C0(v12, _s30CollectionViewSelectionHandlerVMa);
  v28 = 0;
LABEL_6:
  (*(v6 + 56))(v18, v28, 1, v5);
  v30 = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v32 = Strong, sub_12B2FC(), v34 = v33, v36 = v35, v32, v34))
  {
    ObjectType = swift_getObjectType();
    (*(v36 + 8))(ObjectType, v36);
    v39 = v38;
    swift_unknownObjectRelease();
    sub_15F84(v18, v16, &unk_DE8E20);
    if ((*(v6 + 48))(v16, 1, v5) == 1)
    {
      sub_12E1C(v16, &unk_DE8E20);
      v59 = 0u;
      v60 = 0u;
      v61 = 0;
    }

    else
    {
      (*(v6 + 32))(v52, v16, v5);
      sub_2D668();
      sub_ABAD10();
    }

    v41 = swift_getObjectType();
    v42 = v53;
    sub_3B8F68();
    v40 = sub_21CCAC(1, v42, &v59, v41, v39);
    (*(v54 + 8))(v42, v55);
    sub_12E1C(&v59, &qword_DF2BD0);
    sub_12E1C(v18, &unk_DE8E20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_12E1C(v18, &unk_DE8E20);
    v40 = 0;
  }

  v43 = swift_unknownObjectWeakLoadStrong();
  if (v43)
  {
    v44 = v43;
    sub_12AFE8();
    v46 = v45;
  }

  else
  {
    v46 = 0;
  }

  sub_15F28(v30, &v59);
  sub_15F84(v62, (v9 + 104), &unk_DE8E30);
  v47 = v57;
  sub_15F84(v21, &v9[*(v57 + 28)], &unk_DEA510);
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 8) = 1;
  *(v9 + 9) = 0;
  *(v9 + 10) = 0;
  *(v9 + 11) = 0;
  sub_2D594(&v59, v9);
  *(v9 + 12) = 0;
  v48 = *v56;
  *(&v60 + 1) = v47;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v59);
  sub_2D604(v9, boxed_opaque_existential_0);
  v50 = v48;
  JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v58, 0, v40, v46, &v59);
  sub_12E1C(v21, &unk_DEA510);
  sub_12E1C(v62, &unk_DE8E30);
  sub_2D6C0(v9, _s23MusicPerformanceContextVMa);

  sub_12E1C(&v59, &unk_DE8E40);
}

uint64_t sub_2D3E0()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  if (*(v0 + 176))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 152);
  }

  return swift_deallocObject();
}

uint64_t sub_2D498()
{

  return swift_deallocObject();
}

void sub_2D4D8(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }
}

uint64_t sub_2D4F4()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 72);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  if (*(v0 + 88))
  {
  }

  if (*(v0 + 104))
  {
  }

  return swift_deallocObject();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2D594(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA520);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2D604(uint64_t a1, uint64_t a2)
{
  v4 = _s23MusicPerformanceContextVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2D668()
{
  result = qword_DFAA90;
  if (!qword_DFAA90)
  {
    sub_AB3820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFAA90);
  }

  return result;
}

uint64_t sub_2D6C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2D720(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_title];
  *v10 = 0;
  *(v10 + 1) = 0xE000000000000000;
  v11 = OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_releaseDate;
  v12 = sub_AB3430();
  (*(*(v12 - 8) + 56))(&v4[v11], 1, 1, v12);
  v13 = &v4[OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_duration];
  *v13 = 0;
  v13[8] = 1;
  *&v4[OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_contentRatingAndWhatever] = &_swiftEmptyArrayStorage;
  v14 = &v4[OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_detailTextComponents];
  *v14 = sub_2ED38();
  v14[1] = v15;
  v14[2] = v16;
  v67.receiver = v4;
  v67.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v67, "initWithFrame:", a1, a2, a3, a4);
  *&v17[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkSize] = xmmword_AF7C00;
  v65 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent;
  v66 = v17;
  v18 = *&v17[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
  v19 = *(v18 + 80);
  v20 = *(v18 + 88);
  *(v18 + 80) = xmmword_AF7C00;
  v21 = v17;
  sub_75614(v19, v20);
  v22 = &v21[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkEdgeInsets];
  type metadata accessor for UIEdgeInsets(0);
  __asm { FMOV            V3.2D, #10.0 }

  *v22 = xmmword_AF7C10;
  *(v22 + 1) = _Q3;
  v68 = xmmword_AF7C10;
  v69 = _Q3;
  if (sub_AB38D0())
  {
    [v21 setNeedsLayout];
  }

  v28 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v29 = *v28;
  v30 = v28[1];
  v32 = v28[2];
  v31 = v28[3];
  v63 = v28[5];
  v64 = v28[4];
  v33 = &v21[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
  v62 = *&v21[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
  v61 = *&v21[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 8];
  v60 = *&v21[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 16];
  v59 = *&v21[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 24];
  *v33 = *v28;
  v33[1] = v30;
  v33[2] = v32;
  v33[3] = v31;
  v33[4] = v64;
  v33[5] = v63;
  v34 = v29;
  v35 = v30;
  v36 = v32;
  v37 = v31;
  v38 = v34;
  v39 = v35;
  v40 = v36;
  v41 = v37;
  sub_2F1C8(v62, v61, v60, v59);
  v42 = *&v66[v65];
  v43 = *(v42 + 168);
  v68 = *(v42 + 152);
  v69 = v43;
  v70 = *(v42 + 184);
  *(v42 + 152) = v29;
  *(v42 + 160) = v30;
  *(v42 + 168) = v32;
  *(v42 + 176) = v31;
  *(v42 + 184) = v64;
  *(v42 + 192) = v63;
  v44 = v38;
  v45 = v39;
  v46 = v40;
  v47 = v41;
  v48 = v44;
  v49 = v45;
  v50 = v46;
  v51 = v47;
  sub_75948(&v68);
  sub_12E1C(&v68, &unk_DF8690);

  v52 = *&v21[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
  v53 = *&v21[OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_detailTextComponents + 16];
  if (v53 >> 62)
  {
    v54 = sub_ABB060();
    if (!v54)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v54 = *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8));
    if (!v54)
    {
      goto LABEL_12;
    }
  }

  if (v54 < 1)
  {
    __break(1u);
    return;
  }

  v55 = v52;

  for (i = 0; i != v54; ++i)
  {
    if ((v53 & 0xC000000000000001) != 0)
    {
      v57 = sub_36003C(i, v53);
    }

    else
    {
      v57 = *(v53 + 8 * i + 32);
    }

    TextStackView.add(_:)(v57);
  }

LABEL_12:
  v58 = v21[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment];
  v21[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment] = 1;
  if ((v58 & 1) == 0)
  {
    [v21 setNeedsLayout];
  }
}

uint64_t sub_2DD6C(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_title] != result || *&v2[OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_title + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_detailTextComponents];

      v5 = String.trim()();

      swift_beginAccess();
      v4[7] = v5;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_2E13C(uint64_t a1)
{
  v3 = sub_AB3430();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE81D8);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v20 - v12;
  v14 = OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_releaseDate;
  swift_beginAccess();
  v15 = *(v11 + 56);
  sub_2EC64(a1, v13);
  sub_2EC64(v1 + v14, &v13[v15]);
  v16 = *(v4 + 48);
  if (v16(v13, 1, v3) == 1)
  {
    if (v16(&v13[v15], 1, v3) == 1)
    {
      return sub_12E1C(v13, &unk_E01230);
    }

    goto LABEL_6;
  }

  sub_2EC64(v13, v9);
  if (v16(&v13[v15], 1, v3) == 1)
  {
    (*(v4 + 8))(v9, v3);
LABEL_6:
    sub_12E1C(v13, &qword_DE81D8);
    return sub_2E428();
  }

  (*(v4 + 32))(v6, &v13[v15], v3);
  sub_2F050();
  v18 = sub_AB91C0();
  v19 = *(v4 + 8);
  v19(v6, v3);
  v19(v9, v3);
  result = sub_12E1C(v13, &unk_E01230);
  if ((v18 & 1) == 0)
  {
    return sub_2E428();
  }

  return result;
}

uint64_t sub_2E428()
{
  v1 = sub_AB35C0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230);
  __chkstk_darwin(v5 - 8);
  v7 = v33 - v6;
  v8 = sub_AB3430();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_releaseDate;
  swift_beginAccess();
  sub_2EC64(v0 + v12, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_12E1C(v7, &unk_E01230);
LABEL_8:
    v16 = &_swiftEmptyArrayStorage;
    goto LABEL_9;
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_AB34F0();
  v13 = sub_45B7DC(v11, v4);
  v15 = v14;
  (*(v2 + 8))(v4, v1);
  if (!v15)
  {
    (*(v9 + 8))(v11, v8);
    goto LABEL_8;
  }

  v16 = sub_6B0F0(0, 1, 1, &_swiftEmptyArrayStorage);
  v18 = *(v16 + 2);
  v17 = *(v16 + 3);
  if (v18 >= v17 >> 1)
  {
    v16 = sub_6B0F0((v17 > 1), v18 + 1, 1, v16);
  }

  (*(v9 + 8))(v11, v8);
  *(v16 + 2) = v18 + 1;
  v19 = &v16[16 * v18];
  *(v19 + 4) = v13;
  *(v19 + 5) = v15;
LABEL_9:
  if ((*(v0 + OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_duration + 8) & 1) == 0)
  {
    if (qword_DE6708 != -1)
    {
      v33[1] = *(v0 + OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_duration);
      swift_once();
    }

    v20 = [qword_DE8190 stringFromTimeInterval:?];
    if (v20)
    {
      v21 = v20;
      v22 = sub_AB92A0();
      v24 = v23;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_6B0F0(0, *(v16 + 2) + 1, 1, v16);
      }

      v26 = *(v16 + 2);
      v25 = *(v16 + 3);
      if (v26 >= v25 >> 1)
      {
        v16 = sub_6B0F0((v25 > 1), v26 + 1, 1, v16);
      }

      *(v16 + 2) = v26 + 1;
      v27 = &v16[16 * v26];
      *(v27 + 4) = v22;
      *(v27 + 5) = v24;
    }
  }

  v28 = *(v0 + OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_detailTextComponents + 8);
  v33[2] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE70);
  sub_2ECD4();
  v29 = sub_AB9140();
  v31 = v30;

  swift_beginAccess();
  *(v28 + 112) = v29;
  *(v28 + 120) = v31;

  return sub_2EB704();
}

id sub_2E884()
{
  v0 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v0 setUnitsStyle:2];
  result = [v0 setAllowedUnits:64];
  qword_DE8190 = v0;
  return result;
}

uint64_t sub_2E8E8()
{

  sub_12E1C(v0 + OBJC_IVAR____TtC16MusicApplication19MovieHorizontalCell_releaseDate, &unk_E01230);
}

uint64_t type metadata accessor for MovieHorizontalCell()
{
  result = qword_DE81C8;
  if (!qword_DE81C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2EA68()
{
  sub_2EB24();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2EB24()
{
  if (!qword_E247E0)
  {
    sub_AB3430();
    v0 = sub_ABA9C0();
    if (!v1)
    {
      atomic_store(v0, &qword_E247E0);
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2EB90(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2EBD8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

double sub_2EC28(double result)
{
  if (result <= 102.0)
  {
    return 102.0;
  }

  return result;
}

uint64_t sub_2EC64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2ECD4()
{
  result = qword_E00020;
  if (!qword_E00020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_DFDE70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E00020);
  }

  return result;
}

uint64_t sub_2ED38()
{
  v0 = objc_opt_self();
  v1 = [v0 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v2 = qword_E718D8;
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 clearColor];
  *&v23[0] = v2;
  *(&v23[0] + 1) = v5;
  v23[1] = xmmword_AF7C20;
  v24 = 0;
  v25 = 0;
  v26 = v1;
  v27 = 3;
  v28 = xmmword_AF7C30;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v6 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v23);
  v16 = v4;
  v15 = v5;
  v14 = v1;
  sub_2F118(v23, v36);

  v7 = [v0 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v8 = qword_E718C8;
  v9 = qword_E718C8;
  v10 = [v3 clearColor];
  *&v17[0] = v8;
  *(&v17[0] + 1) = v10;
  v17[1] = xmmword_AF7C20;
  v18 = 0;
  v19 = 0;
  v20 = v7;
  v21 = 1;
  v22 = xmmword_AF7C40;
  swift_allocObject();
  v11 = TextStackView.Component.init(identifier:labelProperties:)(0x52646E4165746164, 0xEE00656D69746E75, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_AF7C50;
  *(v12 + 32) = v6;
  *(v12 + 40) = v11;
  sub_2F118(v17, v36);

  v29[0] = v8;
  v29[1] = v10;
  v30 = xmmword_AF7C20;
  v31 = 0;
  v32 = 0;
  v33 = v7;
  v34 = 1;
  v35 = xmmword_AF7C40;
  sub_2F174(v29);
  v36[0] = v2;
  v36[1] = v5;
  v37 = xmmword_AF7C20;
  v38 = 0;
  v39 = 0;
  v40 = v1;
  v41 = 3;
  v42 = xmmword_AF7C30;
  sub_2F174(v36);
  return v6;
}

unint64_t sub_2F050()
{
  result = qword_DE81E0;
  if (!qword_DE81E0)
  {
    sub_AB3430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DE81E0);
  }

  return result;
}

uint64_t sub_2F0A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_2F1C8(void *a1, void *a2, void *a3, void *a4)
{
  if (a4)
  {
  }
}

id sub_2F2B8()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for JSBadgingViewController();
  objc_msgSendSuper2(&v17, "viewDidLayoutSubviews");
  result = [v0 view];
  if (result)
  {
    v2 = result;
    [result music_inheritedLayoutInsets];
    v4 = v3;
    v6 = v5;

    v7 = *&v0[OBJC_IVAR____TtC16MusicApplication23JSBadgingViewController_badgingView];
    result = [v0 view];
    if (result)
    {
      v8 = result;
      [result bounds];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      return [v7 setFrame:{UIEdgeInsetsInsetRect(v10, v12, v14, v16, v4, v6)}];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2F428()
{
  v1 = v0;
  v34.receiver = v0;
  v34.super_class = type metadata accessor for JSBadgingViewController();
  objc_msgSendSuper2(&v34, "viewDidLoad");
  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication23JSBadgingViewController_badgingView];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication11BadgingView_layoutInvalidationHandler];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication11BadgingView_layoutInvalidationHandler];
  *v4 = sub_2FB30;
  v4[1] = v3;

  sub_17654(v5);

  v6 = [v1 view];
  if (!v6)
  {
    goto LABEL_25;
  }

  v7 = v6;
  if (qword_DE6C58 != -1)
  {
    swift_once();
  }

  v30 = v4;
  v8 = [v7 setBackgroundColor:qword_E71898];
  v9 = (*(&stru_B8.size + (swift_isaMask & **&v1[OBJC_IVAR____TtC16MusicApplication23JSBadgingViewController_badgingViewModel])))(v8);
  v10 = v9;
  v32 = v2;
  if (v9 >> 62)
  {
    v27 = v9;
    v28 = sub_ABB060();
    v10 = v27;
    v11 = v28;
  }

  else
  {
    v11 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
  }

  v31 = v1;
  v29 = v7;
  if (!v11)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  if (v11 < 1)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = 0;
  v33 = v10 & 0xC000000000000001;
  v13 = &_swiftEmptyArrayStorage;
  v14 = v10;
  do
  {
    if (v33)
    {
      v15 = sub_360360(v12, v10);
    }

    else
    {
      v15 = *(v10 + 8 * v12 + 32);
    }

    v16 = v15;
    v17 = (*&stru_68.segname[swift_isaMask & *v15])();
    v18 = (*(&stru_68.size + (swift_isaMask & *v16)))();
    v20 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_6B1FC(0, *(v13 + 2) + 1, 1, v13);
    }

    v22 = *(v13 + 2);
    v21 = *(v13 + 3);
    if (v22 >= v21 >> 1)
    {
      v13 = sub_6B1FC((v21 > 1), v22 + 1, 1, v13);
    }

    *(v13 + 2) = v22 + 1;
    v23 = &v13[24 * v22];
    v23[32] = v17 & 1;
    ++v12;
    *(v23 + 5) = v18;
    *(v23 + 6) = v20;

    v10 = v14;
  }

  while (v11 != v12);
LABEL_19:

  *&v32[OBJC_IVAR____TtC16MusicApplication11BadgingView_badgingItems] = v13;

  [v32 setNeedsLayout];
  v24 = *v30;
  if (*v30)
  {

    (v24)(v32);
    sub_17654(v24);
  }

  v25 = [v31 view];
  if (v25)
  {
    v26 = v25;

    [v26 addSubview:v32];

    return;
  }

LABEL_26:
  __break(1u);
}