id sub_29E147A50(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = sub_29E2C4524();
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

void *sub_29E147B9C()
{
  v1 = v0;
  sub_29E150B24();
  v2 = *v0;
  v3 = sub_29E2C4524();
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

uint64_t sub_29E147CD0()
{
  v1 = v0;
  v2 = *v0;
  sub_29DE93F50();
  result = sub_29E2C4534();
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
      sub_29E2C4A04();
      MEMORY[0x29ED811E0](v15);
      result = sub_29E2C4A54();
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

uint64_t sub_29E147EE4()
{
  v1 = v0;
  v32 = sub_29E2C31A4();
  v2 = *(v32 - 8);
  MEMORY[0x2A1C7C4A8](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_29E1511FC();
  v6 = sub_29E2C4534();
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
      sub_29E151510(&qword_2A181DCA0, MEMORY[0x29EDBA2F8]);
      result = sub_29E2C3244();
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

uint64_t sub_29E1481F4()
{
  v1 = v0;
  v2 = *v0;
  sub_29E15029C(0, &qword_2A1A61D00, MEMORY[0x29EDC99B0], MEMORY[0x29EDC99C0], MEMORY[0x29EDC9D70]);
  result = sub_29E2C4534();
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
      sub_29E2C4A04();
      sub_29E2BF404();
      sub_29E2C34B4();
      result = sub_29E2C4A54();
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

uint64_t sub_29E14844C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  sub_29DE94000(0, a2, a3, a4, a5);
  result = sub_29E2C4534();
  v9 = result;
  if (*(v7 + 16))
  {
    v28 = v5;
    v10 = 0;
    v11 = 1 << *(v7 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v7 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(*(v7 + 48) + 8 * (v17 | (v10 << 6)));
      result = sub_29E2C40C4();
      v21 = -1 << *(v9 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v9 + 48) + 8 * v16) = v20;
      ++*(v9 + 16);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v14)
      {

        v6 = v28;
        goto LABEL_26;
      }

      v19 = *(v7 + 56 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v6 = v9;
  }

  return result;
}

uint64_t sub_29E148654()
{
  v1 = v0;
  v32 = sub_29E2BCFB4();
  v2 = *(v32 - 8);
  MEMORY[0x2A1C7C4A8](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_29DF221CC();
  v6 = sub_29E2C4534();
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
      sub_29E151510(&unk_2A1818E70, MEMORY[0x29EDB9D70]);
      result = sub_29E2C3244();
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

uint64_t sub_29E148964()
{
  v1 = v0;
  v32 = sub_29E2BCC24();
  v2 = *(v32 - 8);
  MEMORY[0x2A1C7C4A8](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_29E150020();
  v6 = sub_29E2C4534();
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
      sub_29E151510(&qword_2A181BAC0, MEMORY[0x29EDB9C08]);
      result = sub_29E2C3244();
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

uint64_t sub_29E148C74(uint64_t a1, void (*a2)(void))
{
  v3 = v2;
  v4 = *v2;
  a2(0);
  result = sub_29E2C4534();
  v6 = result;
  if (*(v4 + 16))
  {
    v28 = v2;
    v29 = v4;
    v7 = 0;
    v8 = v4 + 56;
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      sub_29E2C4A04();
      v19 = v18;
      sub_29E2C34B4();
      v20 = sub_29E2C4A54();

      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v19;
      ++*(v6 + 16);
      v4 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v3 = v28;
        goto LABEL_26;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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

uint64_t sub_29E148EC0()
{
  v1 = v0;
  v32 = sub_29E2BD454();
  v2 = *(v32 - 8);
  MEMORY[0x2A1C7C4A8](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_29E1507A4();
  v6 = sub_29E2C4534();
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
      sub_29E151510(&qword_2A1A616A0, MEMORY[0x29EDC3828]);
      result = sub_29E2C3244();
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

uint64_t sub_29E1491D0()
{
  v1 = v0;
  v2 = *v0;
  sub_29E150B24();
  result = sub_29E2C4534();
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
      sub_29E2C4A04();
      MEMORY[0x29ED811E0](v15);
      result = sub_29E2C4A54();
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

uint64_t sub_29E1493E4()
{
  v1 = v0;
  v2 = *v0;
  sub_29DE93F50();
  result = sub_29E2C4534();
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
      sub_29E2C4A04();
      MEMORY[0x29ED811E0](v16);
      result = sub_29E2C4A54();
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

uint64_t sub_29E149628()
{
  v1 = v0;
  v35 = sub_29E2C31A4();
  v2 = *(v35 - 8);
  MEMORY[0x2A1C7C4A8](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_29E1511FC();
  result = sub_29E2C4534();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_29E151510(&qword_2A181DCA0, MEMORY[0x29EDBA2F8]);
      result = sub_29E2C3244();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_29E149978()
{
  v1 = v0;
  v2 = *v0;
  sub_29E15029C(0, &qword_2A1A61D00, MEMORY[0x29EDC99B0], MEMORY[0x29EDC99C0], MEMORY[0x29EDC9D70]);
  result = sub_29E2C4534();
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
      sub_29E2C4A04();
      sub_29E2C34B4();
      result = sub_29E2C4A54();
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

uint64_t sub_29E149C1C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  sub_29DE94000(0, a2, a3, a4, a5);
  result = sub_29E2C4534();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(*(v7 + 48) + 8 * (v18 | (v10 << 6)));
      result = sub_29E2C40C4();
      v22 = -1 << *(v9 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v21;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v7 + 32);
    if (v29 >= 64)
    {
      bzero((v7 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v29;
    }

    *(v7 + 16) = 0;
  }

  *v6 = v9;
  return result;
}

uint64_t sub_29E149E38()
{
  v1 = v0;
  v35 = sub_29E2BCFB4();
  v2 = *(v35 - 8);
  MEMORY[0x2A1C7C4A8](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_29DF221CC();
  result = sub_29E2C4534();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_29E151510(&unk_2A1818E70, MEMORY[0x29EDB9D70]);
      result = sub_29E2C3244();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_29E14A188()
{
  v1 = v0;
  v35 = sub_29E2BCC24();
  v2 = *(v35 - 8);
  MEMORY[0x2A1C7C4A8](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_29E150020();
  result = sub_29E2C4534();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_29E151510(&qword_2A181BAC0, MEMORY[0x29EDB9C08]);
      result = sub_29E2C3244();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_29E14A4D8(uint64_t a1, void (*a2)(void))
{
  v3 = v2;
  v4 = *v2;
  a2(0);
  result = sub_29E2C4534();
  v6 = result;
  if (*(v4 + 16))
  {
    v28 = v2;
    v29 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      sub_29E2C4A04();
      sub_29E2C34B4();
      v19 = sub_29E2C4A54();

      v20 = -1 << *(v6 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v4 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v3 = v28;
    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_29E14A74C()
{
  v1 = v0;
  v35 = sub_29E2BD454();
  v2 = *(v35 - 8);
  MEMORY[0x2A1C7C4A8](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_29E1507A4();
  result = sub_29E2C4534();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_29E151510(&qword_2A1A616A0, MEMORY[0x29EDC3828]);
      result = sub_29E2C3244();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_29E14AA9C()
{
  v1 = v0;
  v2 = *v0;
  sub_29E150B24();
  result = sub_29E2C4534();
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
      sub_29E2C4A04();
      MEMORY[0x29ED811E0](v16);
      result = sub_29E2C4A54();
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

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_29E14AD28(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5, unint64_t *a6)
{
  if (a2)
  {
    sub_29DE94000(0, a3, a4, a5, a6);
    v10 = sub_29E2C4544();
    v23 = v10;
    sub_29E2C4444();
    if (sub_29E2C44C4())
    {
      sub_29DE9408C(0, a4);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_29E149C1C(v17 + 1, a3, a4, a5, a6);
        }

        v10 = v23;
        result = sub_29E2C40C4();
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

      while (sub_29E2C44C4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x29EDCA1A0];
  }

  return v10;
}

unint64_t sub_29E14AF44(uint64_t a1, uint64_t a2)
{
  sub_29E2C40C4();
  result = sub_29E2C4424();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_29E14AFC8(uint64_t result, unint64_t a2, char a3)
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
    sub_29E1493E4();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_29E14736C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_29E147CD0();
  }

  v8 = *v3;
  sub_29E2C4A04();
  MEMORY[0x29ED811E0](v4);
  result = sub_29E2C4A54();
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
  result = sub_29E2C4954();
  __break(1u);
  return result;
}

uint64_t sub_29E14B114(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_29E2C31A4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
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
    sub_29E149628();
  }

  else
  {
    if (v11 > v10)
    {
      sub_29E1477EC(MEMORY[0x29EDBA2F8], sub_29E1511FC);
      goto LABEL_12;
    }

    sub_29E147EE4();
  }

  v12 = *v3;
  sub_29E151510(&qword_2A181DCA0, MEMORY[0x29EDBA2F8]);
  v13 = sub_29E2C3244();
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
      sub_29E151510(&qword_2A18199C0, MEMORY[0x29EDBA2F8]);
      v21 = sub_29E2C3304();
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
  result = sub_29E2C4954();
  __break(1u);
  return result;
}

uint64_t sub_29E14B3E0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_29E149978();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_29E1474F0();
      goto LABEL_16;
    }

    sub_29E1481F4();
  }

  v10 = *v4;
  sub_29E2C4A04();
  sub_29E2C34B4();
  result = sub_29E2C4A54();
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

      result = sub_29E2C4914();
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
  result = sub_29E2C4954();
  __break(1u);
  return result;
}

uint64_t sub_29E14B560(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_29E2BCFB4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_29E149E38();
  }

  else
  {
    if (v12 > v11)
    {
      sub_29E1477EC(MEMORY[0x29EDB9D70], sub_29DF221CC);
      goto LABEL_12;
    }

    sub_29E148654();
  }

  v13 = *v3;
  sub_29E151510(&unk_2A1818E70, MEMORY[0x29EDB9D70]);
  v14 = sub_29E2C3244();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_29E151510(&unk_2A181DBB0, MEMORY[0x29EDB9D70]);
      v22 = sub_29E2C3304();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_29E2C4954();
  __break(1u);
  return result;
}

uint64_t sub_29E14B82C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_29E2BCC24();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_29E14A188();
  }

  else
  {
    if (v12 > v11)
    {
      sub_29E1477EC(MEMORY[0x29EDB9C08], sub_29E150020);
      goto LABEL_12;
    }

    sub_29E148964();
  }

  v13 = *v3;
  sub_29E151510(&qword_2A181BAC0, MEMORY[0x29EDB9C08]);
  v14 = sub_29E2C3244();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_29E151510(&qword_2A181D9E0, MEMORY[0x29EDB9C08]);
      v22 = sub_29E2C3304();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_29E2C4954();
  __break(1u);
  return result;
}

uint64_t sub_29E14BAF8(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_29E2BD454();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_29E14A74C();
  }

  else
  {
    if (v12 > v11)
    {
      sub_29E1477EC(MEMORY[0x29EDC3828], sub_29E1507A4);
      goto LABEL_12;
    }

    sub_29E148EC0();
  }

  v13 = *v3;
  sub_29E151510(&qword_2A1A616A0, MEMORY[0x29EDC3828]);
  v14 = sub_29E2C3244();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_29E151510(&qword_2A181DA68, MEMORY[0x29EDC3828]);
      v22 = sub_29E2C3304();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_29E2C4954();
  __break(1u);
  return result;
}

void sub_29E14BDC4(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_29E14AA9C();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_29E147B9C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_29E1491D0();
  }

  v8 = *v3;
  sub_29E2C4A04();
  MEMORY[0x29ED811E0](a1);
  v9 = sub_29E2C4A54();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for HKMCCycleFactor(0);
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != a1)
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
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = a1;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  sub_29E2C4954();
  __break(1u);
}

void sub_29E14BF20(uint64_t a1, unint64_t a2, char a3, unint64_t *a4, unint64_t *a5, uint64_t a6, unint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a5;
    sub_29E149C1C(v10 + 1, a4, a5, a6, a7);
  }

  else
  {
    if (v11 > v10)
    {
      sub_29E14766C(a4, a5, a6, a7);
      goto LABEL_12;
    }

    v12 = a5;
    sub_29E14844C(v10 + 1, a4, a5, a6, a7);
  }

  v13 = *v7;
  v14 = sub_29E2C40C4();
  v15 = -1 << *(v13 + 32);
  a2 = v14 & ~v15;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    sub_29DE9408C(0, v12);
    do
    {
      v17 = *(*(v13 + 48) + 8 * a2);
      v18 = sub_29E2C40D4();

      if (v18)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v19 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = a1;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_15:
  sub_29E2C4954();
  __break(1u);
}

uint64_t sub_29E14C0C8(uint64_t result, unint64_t a2, char a3, void (*a4)(void), void (*a5)(void))
{
  v6 = v5;
  v8 = result;
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    v11 = a5;
    sub_29E14A4D8(v9 + 1, a4);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_29E147A50(a4);
      goto LABEL_16;
    }

    v11 = a5;
    sub_29E148C74(v9 + 1, a4);
  }

  v12 = *v5;
  _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  sub_29E2C4A04();
  sub_29E2C34B4();
  v13 = sub_29E2C4A54();

  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v11(0);
    do
    {
      v16 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
      v18 = v17;
      if (v16 == _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0() && v18 == v19)
      {
        goto LABEL_19;
      }

      v21 = sub_29E2C4914();

      if (v21)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v22 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v22 + 48) + 8 * a2) = v8;
  v23 = *(v22 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v22 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_29E2C4954();
  __break(1u);
  return result;
}

uint64_t sub_29E14C2C8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_29E145FEC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_29E14C344(v6);
  return sub_29E2C4624();
}

void sub_29E14C344(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_29E2C48C4();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x29EDCA190];
      }

      else
      {
        sub_29DE9408C(0, &qword_2A1A61D50);
        v6 = sub_29E2C3664();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_29E14C678(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_29E14C458(0, v2, 1, a1);
  }
}

void sub_29E14C458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v35);
  v34 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v29 - v11;
  v30 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v36 = *a4;
    v14 = v36 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v32 = v14;
    v33 = a3;
    v16 = *(v36 + 8 * a3);
    v31 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      v19 = v16;
      v20 = v18;
      v21 = [v19 endDate];
      sub_29E2BCB44();

      v22 = [v20 endDate];
      v23 = v34;
      sub_29E2BCB44();

      LOBYTE(v22) = sub_29E2BCB14();
      v24 = *v13;
      v25 = v23;
      v26 = v35;
      (*v13)(v25, v35);
      v24(v12, v26);

      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v14 = v32 + 8;
        v15 = v31 - 1;
        if (v33 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v27;
      v14 -= 8;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_29E14C678(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v116 = a1;
  v125 = sub_29E2BCBB4();
  MEMORY[0x2A1C7C4A8](v125);
  v124 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v123 = &v110 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = MEMORY[0x29EDCA190];
LABEL_88:
    v5 = *v116;
    if (!*v116)
    {
      goto LABEL_127;
    }

    a4 = v15;
    v16 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v105 = a4;
    }

    else
    {
LABEL_121:
      v105 = sub_29E14D410(a4);
    }

    v126 = v105;
    v106 = *(v105 + 2);
    if (v106 >= 2)
    {
      while (*v16)
      {
        a4 = *&v105[16 * v106];
        v107 = v105;
        v108 = *&v105[16 * v106 + 24];
        sub_29E14CEE8((*v16 + 8 * a4), (*v16 + 8 * *&v105[16 * v106 + 16]), (*v16 + 8 * v108), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v108 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_29E14D410(v107);
        }

        if (v106 - 2 >= *(v107 + 2))
        {
          goto LABEL_115;
        }

        v109 = &v107[16 * v106];
        *v109 = a4;
        v109[1] = v108;
        v126 = v107;
        sub_29E14D384(v106 - 1);
        v105 = v126;
        v106 = *(v126 + 2);
        if (v106 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v14 = 0;
  v122 = (v11 + 8);
  v15 = MEMORY[0x29EDCA190];
  v115 = a4;
  v111 = a3;
  while (1)
  {
    v16 = v14++;
    if (v14 < v13)
    {
      v120 = v13;
      v113 = v15;
      v114 = v6;
      v17 = *a3;
      v18 = *(*a3 + 8 * v14);
      v119 = 8 * v16;
      v19 = (v17 + 8 * v16);
      v20 = *v19;
      v5 = (v19 + 2);
      v21 = v18;
      v22 = v20;
      v23 = [v21 endDate];
      v24 = v123;
      sub_29E2BCB44();

      v25 = [v22 endDate];
      v26 = v124;
      sub_29E2BCB44();

      LODWORD(v121) = sub_29E2BCB14();
      v27 = *v122;
      v28 = v125;
      (*v122)(v26, v125);
      v27(v24, v28);

      v112 = v16;
      v29 = (v16 + 2);
      while (1)
      {
        v14 = v120;
        if (v120 == v29)
        {
          break;
        }

        v30 = *(v5 - 8);
        v31 = *v5;
        v32 = v30;
        v33 = [v31 endDate];
        v34 = v123;
        sub_29E2BCB44();

        v35 = [v32 endDate];
        v36 = v124;
        sub_29E2BCB44();

        LODWORD(v35) = sub_29E2BCB14() & 1;
        v37 = v36;
        v38 = v125;
        v27(v37, v125);
        v27(v34, v38);

        ++v29;
        v5 += 8;
        if ((v121 & 1) != v35)
        {
          v14 = (v29 - 1);
          break;
        }
      }

      v15 = v113;
      v6 = v114;
      a4 = v115;
      v16 = v112;
      v39 = v119;
      if (v121)
      {
        if (v14 < v112)
        {
          goto LABEL_118;
        }

        a3 = v111;
        if (v112 < v14)
        {
          v40 = 8 * v14 - 8;
          v41 = v14;
          v42 = v112;
          do
          {
            if (v42 != --v41)
            {
              v44 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v43 = *(v44 + v39);
              *(v44 + v39) = *(v44 + v40);
              *(v44 + v40) = v43;
            }

            v42 = (v42 + 1);
            v40 -= 8;
            v39 += 8;
          }

          while (v42 < v41);
        }
      }

      else
      {
        a3 = v111;
      }
    }

    v45 = a3[1];
    if (v14 < v45)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_117;
      }

      if (v14 - v16 < a4)
      {
        v46 = (v16 + a4);
        if (__OFADD__(v16, a4))
        {
          goto LABEL_119;
        }

        if (v46 >= v45)
        {
          v46 = a3[1];
        }

        if (v46 < v16)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v14 != v46)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v14 < v16)
    {
      goto LABEL_116;
    }

    v61 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v61;
    }

    else
    {
      v15 = sub_29E143B40(0, *(v61 + 2) + 1, 1, v61);
    }

    a4 = *(v15 + 2);
    v62 = *(v15 + 3);
    v5 = a4 + 1;
    if (a4 >= v62 >> 1)
    {
      v15 = sub_29E143B40((v62 > 1), a4 + 1, 1, v15);
    }

    *(v15 + 2) = v5;
    v63 = &v15[16 * a4];
    *(v63 + 4) = v16;
    *(v63 + 5) = v14;
    v64 = *v116;
    if (!*v116)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v65 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v66 = *(v15 + 4);
          v67 = *(v15 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_56:
          if (v69)
          {
            goto LABEL_105;
          }

          v82 = &v15[16 * v5];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_108;
          }

          v88 = &v15[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_112;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v92 = &v15[16 * v5];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_70:
        if (v87)
        {
          goto LABEL_107;
        }

        v95 = &v15[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_110;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v65 - 1;
        if (v65 - 1 >= v5)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v103 = v15;
        v5 = *&v15[16 * a4 + 32];
        v16 = *&v15[16 * v65 + 40];
        sub_29E14CEE8((*a3 + 8 * v5), (*a3 + 8 * *&v15[16 * v65 + 32]), (*a3 + 8 * v16), v64);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v16 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_29E14D410(v103);
        }

        if (a4 >= *(v103 + 2))
        {
          goto LABEL_102;
        }

        v104 = &v103[16 * a4];
        *(v104 + 4) = v5;
        *(v104 + 5) = v16;
        v126 = v103;
        a4 = &v126;
        sub_29E14D384(v65);
        v15 = v126;
        v5 = *(v126 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v15[16 * v5 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_103;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_104;
      }

      v77 = &v15[16 * v5];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_106;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_109;
      }

      if (v81 >= v73)
      {
        v99 = &v15[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_113;
        }

        if (v68 < v102)
        {
          v65 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v13 = a3[1];
    a4 = v115;
    if (v14 >= v13)
    {
      goto LABEL_88;
    }
  }

  v113 = v15;
  v114 = v6;
  v121 = *a3;
  v47 = v121 + 8 * v14 - 8;
  v112 = v16;
  a4 = v16 - v14;
  v117 = v46;
LABEL_29:
  v119 = v47;
  v120 = v14;
  v48 = *(v121 + 8 * v14);
  v118 = a4;
  v49 = v47;
  while (1)
  {
    v50 = *v49;
    v5 = v48;
    v51 = v50;
    v52 = [v5 endDate];
    v53 = v123;
    sub_29E2BCB44();

    v54 = [v51 endDate];
    v55 = v124;
    sub_29E2BCB44();

    LOBYTE(v54) = sub_29E2BCB14();
    v56 = *v122;
    v57 = v55;
    v58 = v125;
    (*v122)(v57, v125);
    v56(v53, v58);

    if ((v54 & 1) == 0)
    {
LABEL_28:
      v14 = v120 + 1;
      v47 = v119 + 8;
      a4 = v118 - 1;
      if ((v120 + 1) != v117)
      {
        goto LABEL_29;
      }

      v14 = v117;
      v15 = v113;
      v6 = v114;
      a3 = v111;
      v16 = v112;
      goto LABEL_36;
    }

    if (!v121)
    {
      break;
    }

    v59 = *v49;
    v48 = *(v49 + 8);
    *v49 = v48;
    *(v49 + 8) = v59;
    v49 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t sub_29E14CEE8(id *a1, id *a2, id *a3, void **a4)
{
  v56 = sub_29E2BCBB4();
  v8 = *(v56 - 8);
  MEMORY[0x2A1C7C4A8](v56);
  v55 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v54 = &v49 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v57 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v58 = &a4[v15];
    if (a3 - a2 >= 8 && a2 > v57)
    {
      v50 = (v8 + 8);
LABEL_27:
      v49 = a1;
      v30 = a1 - 1;
      v31 = a3 - 1;
      v32 = v58;
      v51 = a1 - 1;
      do
      {
        v33 = a4;
        v34 = v31;
        v35 = v31 + 1;
        v36 = *--v32;
        v37 = *v30;
        v38 = v36;
        v53 = v38;
        v39 = v37;
        v52 = v39;
        v40 = [v38 endDate];
        v41 = v54;
        sub_29E2BCB44();

        v42 = [v39 endDate];
        v43 = v55;
        sub_29E2BCB44();

        LOBYTE(v42) = sub_29E2BCB14();
        v44 = *v50;
        v45 = v43;
        v46 = v56;
        (*v50)(v45, v56);
        v44(v41, v46);

        if (v42)
        {
          a4 = v33;
          a3 = v34;
          v47 = v51;
          if (v35 != v49)
          {
            *v34 = *v51;
          }

          if (v58 <= v33 || (a1 = v47, v47 <= v57))
          {
            a1 = v47;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v33;
        if (v35 != v58)
        {
          *v34 = *v32;
        }

        v31 = v34 - 1;
        v58 = v32;
        v30 = v51;
      }

      while (v32 > v33);
      v58 = v32;
      a1 = v49;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v58 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v53 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v57 = a1;
        v17 = *a4;
        v18 = *a2;
        v19 = v17;
        v20 = [v18 endDate];
        v21 = v54;
        sub_29E2BCB44();

        v22 = [v19 endDate];
        v23 = v55;
        sub_29E2BCB44();

        LOBYTE(v22) = sub_29E2BCB14();
        v24 = *v16;
        v25 = v23;
        v26 = v56;
        (*v16)(v25, v56);
        v24(v21, v26);

        if ((v22 & 1) == 0)
        {
          break;
        }

        v27 = a2;
        v28 = v57;
        v29 = v57 == a2++;
        if (!v29)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v28 + 1;
        if (a4 >= v58 || a2 >= v53)
        {
          goto LABEL_39;
        }
      }

      v27 = a4;
      v28 = v57;
      v29 = v57 == a4++;
      if (v29)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v28 = *v27;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v58 - a4 + (v58 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v58 - a4));
  }

  return 1;
}

uint64_t sub_29E14D384(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_29E14D410(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_29E14D460(char *result, uint64_t a2, char a3, unint64_t *a4, uint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v7 = *v5;
  v8 = *(*v5 + 2);
  if (v8 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = result;
  v10 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = __OFSUB__(1, v10);
  v12 = 1 - v10;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v8 + v12;
  if (__OFADD__(v8, v12))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native || v13 > *(v7 + 3) >> 1)
  {
    if (v8 <= v13)
    {
      v18 = v13;
    }

    else
    {
      v18 = v8;
    }

    v7 = sub_29E143DF0(isUniquelyReferenced_nonNull_native, v18, 1, v7, a4, a5);
    *v5 = v7;
  }

  result = sub_29E14D724(v9, a2, 1, a3 & 1);
  *v5 = v7;
  return result;
}

char *sub_29E14D560(char *result, uint64_t a2, char a3, unint64_t *a4, uint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v7 = *v5;
  v8 = *(*v5 + 2);
  if (v8 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = result;
  v10 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = __OFSUB__(1, v10);
  v12 = 1 - v10;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v8 + v12;
  if (__OFADD__(v8, v12))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native || v13 > *(v7 + 3) >> 1)
  {
    if (v8 <= v13)
    {
      v18 = v13;
    }

    else
    {
      v18 = v8;
    }

    v7 = sub_29E143DF0(isUniquelyReferenced_nonNull_native, v18, 1, v7, a4, a5);
    *v5 = v7;
  }

  result = sub_29E14D7E4(v9, a2, 1, a3);
  *v5 = v7;
  return result;
}

unint64_t sub_29E14D64C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = *v5;
  v9 = v8 + 32 + 16 * result;
  if (v7)
  {
    v10 = *(v8 + 16);
    v11 = __OFSUB__(v10, a2);
    v12 = v10 - a2;
    if (!v11)
    {
      result = v9 + 16 * a3;
      v13 = (v8 + 32 + 16 * a2);
      v14 = 16 * v12;
      v15 = &v13[16 * v12];
      if (result != v13 || result >= v15)
      {
        v17 = a3;
        v18 = a5;
        v19 = a4;
        result = memmove(result, v13, v14);
        a4 = v19;
        a5 = v18;
        a3 = v17;
      }

      v20 = *(v8 + 16);
      v11 = __OFADD__(v20, v7);
      v21 = v20 + v7;
      if (!v11)
      {
        *(v8 + 16) = v21;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v9 = a4;
    *(v9 + 8) = a5 & 1;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

char *sub_29E14D724(char *result, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = &result[v7 + 32];
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = &v8[a3];
      v12 = (v7 + 32 + a2);
      if (&v8[a3] != v12 || result >= &v12[v11])
      {
        v14 = a3;
        v15 = a4;
        result = memmove(result, v12, v11);
        a3 = v14;
        a4 = v15;
      }

      v16 = *(v7 + 16);
      v10 = __OFADD__(v16, v6);
      v17 = v16 + v6;
      if (!v10)
      {
        *(v7 + 16) = v17;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v8 = a4 & 1;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

char *sub_29E14D7E4(char *result, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = &result[v7 + 32];
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = &v8[a3];
      v12 = (v7 + 32 + a2);
      if (&v8[a3] != v12 || result >= &v12[v11])
      {
        v14 = a3;
        v15 = a4;
        result = memmove(result, v12, v11);
        a3 = v14;
        a4 = v15;
      }

      v16 = *(v7 + 16);
      v10 = __OFADD__(v16, v6);
      v17 = v16 + v6;
      if (!v10)
      {
        *(v7 + 16) = v17;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v8 = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t sub_29E14D8EC(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_29E2C4484();
  }

  return sub_29E2C45B4();
}

void (*sub_29E14DAFC(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x29ED80D70](a2, a3);
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
    return sub_29E151754;
  }

  __break(1u);
  return result;
}

void (*sub_29E14DB7C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x29ED80D70](a2, a3);
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
    return sub_29E14DBFC;
  }

  __break(1u);
  return result;
}

uint64_t sub_29E14DC04(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_29E2C4484();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x29EDCA190];
  }

  v4 = v3;
  v5 = sub_29E145CE8(v3, 0);
  sub_29E14DC98((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_29E14DC98(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_29E2C4484();
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
      result = sub_29E2C4484();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_29E143654(0, &qword_2A181D9F0, &qword_2A1A61D50, 0x29EDBAA60, MEMORY[0x29EDC9A40]);
          sub_29E1500B4();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_29E14DAFC(v13, i, a3);
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
        sub_29DE9408C(0, &qword_2A1A61D50);
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

uint64_t sub_29E14DE40(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_29E2C4484();
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
      result = sub_29E2C4484();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_29E143654(0, &qword_2A181DC88, &unk_2A1A61D90, 0x29EDBAD78, MEMORY[0x29EDC9A40]);
          sub_29E151178();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_29E14DB7C(v13, i, a3);
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
        sub_29DE9408C(0, &unk_2A1A61D90);
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

uint64_t sub_29E14DFE8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_29E2C4484();
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
      result = sub_29E2C4484();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_29E143654(0, &qword_2A181DC60, &qword_2A1A5E0A0, 0x29EDC3370, MEMORY[0x29EDC9A40]);
          sub_29E1510F4();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_29E14DAFC(v13, i, a3);
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
        sub_29DE9408C(0, &qword_2A1A5E0A0);
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

uint64_t sub_29E14E190(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_29E2C4484();
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
      result = sub_29E2C4484();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_29E143654(0, &qword_2A181DCB8, &qword_2A181DCB0, 0x29EDC79E8, MEMORY[0x29EDC9A40]);
          sub_29E151290();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_29E14DAFC(v13, i, a3);
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
        sub_29DE9408C(0, &qword_2A181DCB0);
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

uint64_t sub_29E14E338(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_29E2C4484();
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
      result = sub_29E2C4484();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_29E143654(0, &qword_2A181DC00, &qword_2A1A61A10, 0x29EDBA008, MEMORY[0x29EDC9A40]);
          sub_29E150E4C();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_29E14DAFC(v13, i, a3);
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
        sub_29DE9408C(0, &qword_2A1A61A10);
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

uint64_t sub_29E14E4E0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_29E2C4484();
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
      result = sub_29E2C4484();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_29E143654(0, &qword_2A181DAC0, &qword_2A181D8E0, 0x29EDC2F30, MEMORY[0x29EDC9A40]);
          sub_29E150940();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_29E14DAFC(v13, i, a3);
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
        sub_29DE9408C(0, &qword_2A181D8E0);
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

uint64_t sub_29E14E688(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_29E2C4484();
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
      result = sub_29E2C4484();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_29E143654(0, &qword_2A1A5E318, &qword_2A1A61D70, 0x29EDBAA68, MEMORY[0x29EDC9A40]);
          sub_29E151558();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_29E14DAFC(v13, i, a3);
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
        sub_29DE9408C(0, &qword_2A1A61D70);
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

uint64_t sub_29E14E830(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_29E2C4914() & 1;
  }
}

uint64_t sub_29E14E888(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_29E14E97C;

  return v5(v2 + 32);
}

uint64_t sub_29E14E97C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_29E14EAA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t *, uint64_t))
{
  v14[3] = a4;
  v14[4] = a5;
  v11 = sub_29DEBB7E8(v14);
  (*(*(a4 - 8) + 32))(v11, a2, a4);
  v12 = *a3;
  *(v12 + 16) = a1 + 1;
  return a6(v14, v12 + 40 * a1 + 32);
}

uint64_t sub_29E14EB50(uint64_t a1, char a2, uint64_t a3, char a4)
{
  sub_29DE9408C(0, &qword_2A1A619F0);
  if (sub_29E2C40D4())
  {
    if (a2)
    {
      v6 = 0x6765725074736150;
    }

    else
    {
      v6 = 0xD000000000000010;
    }

    if (a2)
    {
      v7 = 0xED000079636E616ELL;
    }

    else
    {
      v7 = 0x800000029E2EB4F0;
    }

    if (a4)
    {
      v8 = 0x6765725074736150;
    }

    else
    {
      v8 = 0xD000000000000010;
    }

    if (a4)
    {
      v9 = 0xED000079636E616ELL;
    }

    else
    {
      v9 = 0x800000029E2EB4F0;
    }

    if (v6 == v8 && v7 == v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = sub_29E2C4914();
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_29E14EC84(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x29ED7FFF0](v2, MEMORY[0x29EDC99B0], MEMORY[0x29EDC99C0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      sub_29E2BF404();
      sub_29E146428(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_29E14ED40(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for HKMCDisplayTypeIdentifier(0);
  v4 = v3;
  v5 = sub_29E151510(&qword_2A181DA40, type metadata accessor for HKMCDisplayTypeIdentifier);
  result = MEMORY[0x29ED7FFF0](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_29E1471B8(&v9, v8, sub_29E1503D8, type metadata accessor for HKMCDisplayTypeIdentifier);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_29E14EE24(uint64_t a1)
{
  v2 = sub_29E2BCC24();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_29E151510(&qword_2A181BAC0, MEMORY[0x29EDB9C08]);
  result = MEMORY[0x29ED7FFF0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_29E146AD4(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_29E14EFC0(uint64_t a1)
{
  v2 = sub_29E2BD454();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_29E151510(&qword_2A1A616A0, MEMORY[0x29EDC3828]);
  result = MEMORY[0x29ED7FFF0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_29E146DB4(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_29E14F15C(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for HKMCCycleFactor(0);
  v4 = v3;
  v5 = sub_29E151510(&qword_2A181DB08, type metadata accessor for HKMCCycleFactor);
  result = MEMORY[0x29ED7FFF0](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_29E147094(&v9, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_29E14F22C(unint64_t a1, unint64_t *a2, uint64_t a3, unint64_t *a4, unint64_t *a5)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_29E2C4484())
  {
    v11 = sub_29DE9408C(0, a2);
    v12 = sub_29DE93878(a4, a2);
    result = MEMORY[0x29ED7FFF0](i, v11, v12);
    v20 = result;
    if (j)
    {
      break;
    }

    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x29ED80D70](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * j + 32);
      }

      v17 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_29E146578(&v19, v16, a2, a3, a5, a4);

      if (v17 == v14)
      {
        return v20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v15 = result;
  v14 = sub_29E2C4484();
  result = v15;
  if (v14)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_29E14F398(unint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = sub_29E2BCC24();
  v22 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x2A1C7C4A8](v6);
  v32 = &v21 - v8;
  if (a1 >> 62)
  {
LABEL_21:
    v24 = a1 & 0xFFFFFFFFFFFFFF8;
    v26 = sub_29E2C4484();
  }

  else
  {
    v24 = a1 & 0xFFFFFFFFFFFFFF8;
    v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  v25 = a1 & 0xC000000000000001;
  v21 = a1;
  v23 = a1 + 32;
  v29 = v22 + 16;
  v30 = v31 + 56;
  v10 = (v22 + 8);
  while (1)
  {
    if (v9 == v26)
    {
      return 0;
    }

    v28 = v9;
    if (v25)
    {
      v11 = MEMORY[0x29ED80D70](v9, v21, v7);
    }

    else
    {
      if (v9 >= *(v24 + 16))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v11 = *(v23 + 8 * v9);
    }

    v27 = v11;
    a1 = [v11 UUID];
    sub_29E2BCC04();

    if (*(v31 + 16))
    {
      v12 = v31;
      sub_29E151510(&qword_2A181BAC0, MEMORY[0x29EDB9C08]);
      a1 = v32;
      v13 = sub_29E2C3244();
      v14 = -1 << *(v12 + 32);
      v15 = v13 & ~v14;
      if ((*(v30 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
      {
        break;
      }
    }

LABEL_4:
    (*v10)(v32, v3);

    v9 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      goto LABEL_20;
    }
  }

  v16 = ~v14;
  v17 = *(v22 + 72);
  v18 = *(v22 + 16);
  while (1)
  {
    v18(v5, *(v31 + 48) + v17 * v15, v3);
    sub_29E151510(&qword_2A181D9E0, MEMORY[0x29EDB9C08]);
    a1 = sub_29E2C3304();
    v19 = *v10;
    (*v10)(v5, v3);
    if (a1)
    {
      break;
    }

    v15 = (v15 + 1) & v16;
    if (((*(v30 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v19(v32, v3);

  return v28;
}

unint64_t sub_29E14F714(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;
    result = sub_29E2BF404();
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t sub_29E14F7F8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_29DE9408C(0, a4);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
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
  result = sub_29E2C4484();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = sub_29E2C4484();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_29E14F914(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v3;
    v8 = *v3 >> 62;
    if (!v8)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_29E2C4484();
  if (result < v5)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v5, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v6 - v5;
  if (__OFSUB__(0, v5 - v6))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8)
  {
    v11 = sub_29E2C4484();
  }

  else
  {
    v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = __OFADD__(v11, v10);
  result = v11 + v10;
  if (!v12)
  {
    sub_29E145F24(result);
    return sub_29E14F7F8(v6, v5, 0, v4);
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_29E14F9F8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  type metadata accessor for HKMCDisplayTypeIdentifier(0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_29E14FABC(unint64_t *a1, uint64_t a2)
{
  v6 = sub_29E2BCC24();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v43 - v11;
  v13 = *a1;
  result = sub_29E14F398(*a1, a2);
  v44 = v2;
  if (v2)
  {
    return v3;
  }

  v46 = a1;
  if (v15)
  {
    if (v13 >> 62)
    {
      return sub_29E2C4484();
    }

    return *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = result;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v52 = v7 + 16;
  v53 = v9;
  v54 = a2 + 56;
  v55 = (v7 + 8);
  v45 = v7;
  v57 = v6;
  v16 = result + 1;
  v56 = v12;
  while (1)
  {
    if (v13 >> 62)
    {
      if (v16 == sub_29E2C4484())
      {
        return v3;
      }
    }

    else if (v16 == *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v3;
    }

    v50 = v13;
    v51 = v3;
    v49 = v16;
    v47 = v13 & 0xC000000000000001;
    if ((v13 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x29ED80D70](v16, v13);
    }

    else
    {
      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_48;
      }

      if (v16 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_49;
      }

      v17 = *(v13 + 8 * v16 + 32);
    }

    v48 = v17;
    v18 = [v17 UUID];
    sub_29E2BCC04();

    if (!*(a2 + 16))
    {
      break;
    }

    sub_29E151510(&qword_2A181BAC0, MEMORY[0x29EDB9C08]);
    v19 = sub_29E2C3244();
    v20 = -1 << *(a2 + 32);
    v21 = v19 & ~v20;
    if (((*(v54 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
      break;
    }

    v22 = ~v20;
    v23 = *(v45 + 72);
    v24 = *(v45 + 16);
    while (1)
    {
      v25 = a2;
      v26 = v53;
      v27 = v57;
      v24(v53, *(a2 + 48) + v23 * v21, v57);
      sub_29E151510(&qword_2A181D9E0, MEMORY[0x29EDB9C08]);
      v28 = sub_29E2C3304();
      v29 = *v55;
      (*v55)(v26, v27);
      if (v28)
      {
        break;
      }

      v21 = (v21 + 1) & v22;
      a2 = v25;
      if (((*(v54 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v29(v56, v57);

    a2 = v25;
    v13 = v50;
    v3 = v51;
    v31 = v49;
LABEL_40:
    v42 = __OFADD__(v31, 1);
    v16 = v31 + 1;
    if (v42)
    {
      goto LABEL_50;
    }
  }

LABEL_22:
  (*v55)(v56, v57);

  v30 = v51;
  v31 = v49;
  if (v51 == v49)
  {
    v13 = v50;
    v3 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      goto LABEL_51;
    }

    goto LABEL_40;
  }

  v13 = v50;
  if (v47)
  {
    v32 = MEMORY[0x29ED80D70](v51, v50);
    v33 = MEMORY[0x29ED80D70](v31, v13);
  }

  else
  {
    if ((v51 & 0x8000000000000000) != 0)
    {
      goto LABEL_53;
    }

    v34 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v51 >= v34)
    {
      goto LABEL_54;
    }

    if (v49 >= v34)
    {
      goto LABEL_55;
    }

    v35 = *(v50 + 32 + 8 * v49);
    v32 = *(v50 + 32 + 8 * v51);
    v33 = v35;
  }

  v36 = v33;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v13 & 0x8000000000000000) != 0 || (v13 & 0x4000000000000000) != 0)
  {
    v13 = sub_29E14D8EC(v13);
    v37 = (v13 >> 62) & 1;
  }

  else
  {
    LODWORD(v37) = 0;
  }

  v38 = v13 & 0xFFFFFFFFFFFFFF8;
  v39 = *((v13 & 0xFFFFFFFFFFFFFF8) + 8 * v30 + 0x20);
  *((v13 & 0xFFFFFFFFFFFFFF8) + 8 * v30 + 0x20) = v36;

  if ((v13 & 0x8000000000000000) == 0 && !v37)
  {
    if ((v31 & 0x8000000000000000) != 0)
    {
      goto LABEL_47;
    }

    goto LABEL_38;
  }

  v13 = sub_29E14D8EC(v13);
  v38 = v13 & 0xFFFFFFFFFFFFFF8;
  if ((v31 & 0x8000000000000000) == 0)
  {
LABEL_38:
    if (v31 >= *(v38 + 16))
    {
      goto LABEL_52;
    }

    v40 = v38 + 8 * v31;
    v41 = *(v40 + 32);
    *(v40 + 32) = v32;

    *v46 = v13;
    v42 = __OFADD__(v30, 1);
    v3 = v30 + 1;
    if (v42)
    {
      goto LABEL_51;
    }

    goto LABEL_40;
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return sub_29E2C4484();
}

uint64_t sub_29E14FFC8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_29E2C4914() & 1;
  }
}

void sub_29E150020()
{
  if (!qword_2A181D9E8)
  {
    sub_29E2BCC24();
    sub_29E151510(&qword_2A181BAC0, MEMORY[0x29EDB9C08]);
    v0 = sub_29E2C4564();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181D9E8);
    }
  }
}

unint64_t sub_29E1500B4()
{
  result = qword_2A1819AF0;
  if (!qword_2A1819AF0)
  {
    sub_29E143654(255, &qword_2A181D9F0, &qword_2A1A61D50, 0x29EDBAA60, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1819AF0);
  }

  return result;
}

void sub_29E150138()
{
  if (!qword_2A181D9F8)
  {
    sub_29E15029C(255, &qword_2A181DA00, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9BC0], MEMORY[0x29EDC9C30]);
    v0 = sub_29E2C48E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181D9F8);
    }
  }
}

void sub_29E1501BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E150220()
{
  if (!qword_2A181DA18)
  {
    sub_29DE9408C(255, &qword_2A1A619D0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181DA18);
    }
  }
}

void sub_29E15029C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void sub_29E1502F0()
{
  if (!qword_2A181DA20)
  {
    sub_29E1515DC(255, &qword_2A1A5E2B0, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9C68]);
    v0 = sub_29E2C48E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181DA20);
    }
  }
}

void sub_29E15036C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29DF942BC(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29E1503D8()
{
  if (!qword_2A181DA38)
  {
    type metadata accessor for HKMCDisplayTypeIdentifier(255);
    sub_29E151510(&qword_2A181DA40, type metadata accessor for HKMCDisplayTypeIdentifier);
    v0 = sub_29E2C4564();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181DA38);
    }
  }
}

id sub_29E15046C(uint64_t a1)
{
  v22 = a1;
  v1 = sub_29E2C0AB4();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2C0B44();
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2BE414();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v13 = result;
    v14 = [result isiPad];

    if (v14)
    {
      sub_29E2BE3F4();
      v15 = v11;
      v16 = v23;
      v17 = sub_29E2BE3E4();
      if (!v16)
      {
        v15 = v17;
      }

      (*(v9 + 8))(v11, v8);
    }

    else
    {
      (*(v2 + 104))(v4, *MEMORY[0x29EDC7850], v1);
      sub_29E2C0AE4();
      v18 = [objc_opt_self() clearColor];
      sub_29E2C0B14();
      sub_29E2C0B24();
      sub_29DE9408C(0, &qword_2A1819BB0);
      sub_29E2BF074();
      v15 = sub_29E2C3F34();
      swift_unknownObjectRelease();
      [v15 setContentInsets_];
      (*(v20 + 8))(v7, v21);
    }

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29E1507A4()
{
  if (!qword_2A181DA70)
  {
    sub_29E2BD454();
    sub_29E151510(&qword_2A1A616A0, MEMORY[0x29EDC3828]);
    v0 = sub_29E2C4564();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181DA70);
    }
  }
}

void sub_29E150838()
{
  if (!qword_2A181DA90)
  {
    sub_29E2BD764();
    sub_29E2BD4C4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181DA90);
    }
  }
}

void sub_29E1508AC()
{
  if (!qword_2A181DAA0)
  {
    type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier(255);
    sub_29E151510(&qword_2A181A6E0, type metadata accessor for HKMCPregnancyAdjustedFeatureIdentifier);
    v0 = sub_29E2C4564();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181DAA0);
    }
  }
}

unint64_t sub_29E150940()
{
  result = qword_2A181DAC8;
  if (!qword_2A181DAC8)
  {
    sub_29E143654(255, &qword_2A181DAC0, &qword_2A181D8E0, 0x29EDC2F30, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181DAC8);
  }

  return result;
}

void sub_29E1509C4()
{
  if (!qword_2A181DAF8)
  {
    type metadata accessor for HKMCDaySummarySymptoms(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A181DAF8);
    }
  }
}

uint64_t sub_29E150A34(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29E1501BC(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29E150AB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E1501BC(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29E150B24()
{
  if (!qword_2A181DB10)
  {
    type metadata accessor for HKMCCycleFactor(255);
    sub_29E151510(&qword_2A181DB08, type metadata accessor for HKMCCycleFactor);
    v0 = sub_29E2C4564();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181DB10);
    }
  }
}

uint64_t sub_29E150BB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E150C20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29E150CDC(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_29DF942BC(255, a3);
    v4 = sub_29E2C48E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29E150D38()
{
  if (!qword_2A181DB50)
  {
    sub_29E15036C(255, &qword_2A18185A0, &qword_2A181DAE0, MEMORY[0x29EDC2038], MEMORY[0x29EDC9A40]);
    v0 = sub_29E2C48E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181DB50);
    }
  }
}

unint64_t sub_29E150DF0()
{
  result = qword_2A181DBC8;
  if (!qword_2A181DBC8)
  {
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_2A181DBC8);
  }

  return result;
}

unint64_t sub_29E150E4C()
{
  result = qword_2A181DC08;
  if (!qword_2A181DC08)
  {
    sub_29E143654(255, &qword_2A181DC00, &qword_2A1A61A10, 0x29EDBA008, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181DC08);
  }

  return result;
}

uint64_t sub_29E150ED0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29DECA6A0;

  return sub_29DFB7C18(a1, v4, v5, v6);
}

uint64_t sub_29E150F84(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29DECA6A0;

  return sub_29E14E888(a1, v4);
}

uint64_t sub_29E15103C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29DE9657C;

  return sub_29E14E888(a1, v4);
}

unint64_t sub_29E1510F4()
{
  result = qword_2A181DC68;
  if (!qword_2A181DC68)
  {
    sub_29E143654(255, &qword_2A181DC60, &qword_2A1A5E0A0, 0x29EDC3370, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181DC68);
  }

  return result;
}

unint64_t sub_29E151178()
{
  result = qword_2A181DC90;
  if (!qword_2A181DC90)
  {
    sub_29E143654(255, &qword_2A181DC88, &unk_2A1A61D90, 0x29EDBAD78, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181DC90);
  }

  return result;
}

void sub_29E1511FC()
{
  if (!qword_2A181DCA8)
  {
    sub_29E2C31A4();
    sub_29E151510(&qword_2A181DCA0, MEMORY[0x29EDBA2F8]);
    v0 = sub_29E2C4564();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181DCA8);
    }
  }
}

unint64_t sub_29E151290()
{
  result = qword_2A181DCC0;
  if (!qword_2A181DCC0)
  {
    sub_29E143654(255, &qword_2A181DCB8, &qword_2A181DCB0, 0x29EDC79E8, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181DCC0);
  }

  return result;
}

void sub_29E151314()
{
  if (!qword_2A181DCD8)
  {
    sub_29E143654(255, &qword_2A181D9F0, &qword_2A1A61D50, 0x29EDBAA60, MEMORY[0x29EDC9A40]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A181DCD8);
    }
  }
}

void sub_29E1513A8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_29E143654(255, &qword_2A181D9F0, &qword_2A1A61D50, 0x29EDBAA60, MEMORY[0x29EDC9A40]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_29E151440()
{
  if (!qword_2A181DCF0)
  {
    sub_29E1513A8(255, &qword_2A181D880);
    v0 = sub_29E2C48E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181DCF0);
    }
  }
}

unint64_t sub_29E1514BC()
{
  result = qword_2A181DD10;
  if (!qword_2A181DD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181DD10);
  }

  return result;
}

uint64_t sub_29E151510(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_29E151558()
{
  result = qword_2A181DD20;
  if (!qword_2A181DD20)
  {
    sub_29E143654(255, &qword_2A1A5E318, &qword_2A1A61D70, 0x29EDBAA68, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181DD20);
  }

  return result;
}

void sub_29E1515DC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29E15162C()
{
  if (!qword_2A181DD60)
  {
    sub_29E15036C(255, &qword_2A18185A8, &qword_2A18185B0, MEMORY[0x29EDC1DD8], MEMORY[0x29EDC9A40]);
    v0 = sub_29E2C48E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181DD60);
    }
  }
}

void sub_29E1516B0()
{
  if (!qword_2A181DD70)
  {
    sub_29E15036C(255, &qword_2A181C128, &unk_2A181DD80, MEMORY[0x29EDC2160], MEMORY[0x29EDC9A40]);
    v0 = sub_29E2C48E4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181DD70);
    }
  }
}

uint64_t sub_29E15177C@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v26 = sub_29E2BCD24();
  v1 = *(v26 - 8);
  MEMORY[0x2A1C7C4A8](v26);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2BCD74();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E2BCCF4();
  v23 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E2BCEA4();
  v24 = *(v12 - 8);
  v25 = v12;
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E152694(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v17 = &v23 - v16;
  sub_29E2BCE44();
  (*(v9 + 104))(v11, *MEMORY[0x29EDB9C88], v8);
  v18 = v4;
  (*(v5 + 104))(v7, *MEMORY[0x29EDB9C98], v4);
  v19 = v26;
  (*(v1 + 104))(v3, *MEMORY[0x29EDB9C90], v26);
  sub_29E2BCDD4();
  (*(v1 + 8))(v3, v19);
  (*(v5 + 8))(v7, v18);
  (*(v9 + 8))(v11, v23);
  (*(v24 + 8))(v14, v25);
  v20 = sub_29E2BCBB4();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v17, 1, v20) != 1)
  {
    return (*(v21 + 32))(v27, v17, v20);
  }

  sub_29DE93920(v17);
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

uint64_t sub_29E151BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[2] = a1;
  v21 = a2;
  v2 = sub_29E2BCD24();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BCD74();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E2BCCF4();
  v20[0] = v10;
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E152694(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v16 = v20 - v15;
  (*(v11 + 104))(v13, *MEMORY[0x29EDB9C88], v10);
  (*(v7 + 104))(v9, *MEMORY[0x29EDB9C98], v6);
  (*(v3 + 104))(v5, *MEMORY[0x29EDB9C90], v2);
  sub_29E2BCDD4();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v20[0]);
  v17 = sub_29E2BCBB4();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v16, 1, v17) != 1)
  {
    return (*(v18 + 32))(v21, v16, v17);
  }

  sub_29DE93920(v16);
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

uint64_t sub_29E151FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v49 = a1;
  v50 = sub_29E2BCBB4();
  v48 = *(v50 - 8);
  MEMORY[0x2A1C7C4A8](v50);
  v45 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_29E2C0514();
  v44 = *(v46 - 8);
  MEMORY[0x2A1C7C4A8](v46);
  v47 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2BCEA4();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E152694(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v43 - v9;
  sub_29E152694(0, &unk_2A1A62830, MEMORY[0x29EDB9D58]);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = &v43 - v12;
  sub_29E152694(0, &unk_2A1A62840, MEMORY[0x29EDB9D18]);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v16 = &v43 - v15;
  v17 = sub_29E2BC5F4();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x2A1C7C4A8](v17);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 56))(v16, 1, 1, v4, v19);
  v22 = sub_29E2BCF04();
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  v23 = v49;
  v24 = v48;
  sub_29E2BC5D4();
  sub_29E2BC564();
  sub_29E2BCE44();
  sub_29E2BCDF4();
  v25 = v7;
  v26 = v50;
  (*(v5 + 8))(v25, v4);
  if ((*(v24 + 48))(v10, 1, v26) == 1)
  {
    v28 = v44;
    sub_29DE93920(v10);
    sub_29E2C04B4();
    v29 = v24;
    v30 = v26;
    (*(v24 + 16))(v45, v52, v26);
    v31 = sub_29E2C0504();
    v32 = sub_29E2C3A14();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v53 = v30;
      v54 = v34;
      *v33 = 136446722;
      sub_29E152D38();
      v35 = sub_29E2C3424();
      v37 = sub_29DFAA104(v35, v36, &v54);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2050;
      *(v33 + 14) = v23;
      *(v33 + 22) = 2082;
      v38 = v45;
      v39 = sub_29E2BCA64();
      v41 = v40;
      (*(v29 + 8))(v38, v30);
      v42 = sub_29DFAA104(v39, v41, &v54);

      *(v33 + 24) = v42;
      _os_log_impl(&dword_29DE74000, v31, v32, "[%{public}s] Unable to add %{public}ld days to %{public}s", v33, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v34, -1, -1);
      MEMORY[0x29ED82140](v33, -1, -1);
    }

    else
    {

      (*(v24 + 8))(v45, v30);
    }

    (*(v28 + 8))(v47, v46);
    result = sub_29E2C4724();
    __break(1u);
  }

  else
  {
    (*(v18 + 8))(v21, v17);
    return (*(v24 + 32))(v51, v10, v26);
  }

  return result;
}

void sub_29E152694(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E2C4304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E1526E8()
{
  v0 = sub_29E2BCC84();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E2C3384();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v5);
  v7 = &v19[-v6];
  v8 = sub_29E2BCBB4();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E2BCA84();
  sub_29E05D32C();
  v12 = sub_29E2C3304();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    sub_29E2C3314();
    (*(v2 + 16))(v4, v7, v1);
    if (qword_2A1A62788 != -1)
    {
      swift_once();
    }

    v13 = qword_2A1A67F80;
    sub_29E2BCC74();
    v14 = sub_29E2C3414();
    (*(v2 + 8))(v7, v1);
  }

  else
  {
    v15 = objc_opt_self();
    v16 = sub_29E2BCB04();
    v17 = [v15 localizedStringFromDate:v16 dateStyle:3 timeStyle:0];

    v14 = _sSo25HKMCDisplayTypeIdentifiera24MenstrualCyclesAppPluginE2idSSvg_0();
  }

  return v14;
}

uint64_t sub_29E1529F0@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = sub_29E2BCBB4();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E2BCE84();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E2BCEA4();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E152694(0, &unk_2A1A62850, MEMORY[0x29EDB9BC8]);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v15 = &v17 - v14;
  sub_29E2BCE44();
  (*(v6 + 104))(v8, *MEMORY[0x29EDB9CD0], v5);
  sub_29E2BCBA4();
  sub_29E2BCE04();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
  if ((*(v2 + 48))(v15, 1, v1) != 1)
  {
    return (*(v2 + 32))(v18, v15, v1);
  }

  sub_29DE93920(v15);
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

unint64_t sub_29E152D38()
{
  result = qword_2A181DD90;
  if (!qword_2A181DD90)
  {
    sub_29E2BCBB4();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A181DD90);
  }

  return result;
}

id sub_29E152D80()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29E2C0514();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17PregnancyTileCell_item;
  swift_beginAccess();
  sub_29E153BF0(v1 + v6, &v22, &qword_2A18180D8, sub_29DF61DEC);
  if (*(&v23 + 1))
  {
    sub_29DF61DEC();
    type metadata accessor for PregnancyItem();
    if (swift_dynamicCast())
    {

      return [v1 setNeedsUpdateConfiguration];
    }
  }

  else
  {
    sub_29E153C5C(&v22, &qword_2A18180D8, sub_29DF61DEC);
  }

  if (HKShowSensitiveLogItems())
  {
    sub_29E2C04B4();
    v8 = v1;
    v9 = sub_29E2C0504();
    v10 = sub_29E2C3A14();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21[0] = v20;
      *v11 = 136446466;
      v12 = sub_29E2C4AE4();
      v14 = sub_29DFAA104(v12, v13, v21);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2080;
      sub_29E153BF0(v1 + v6, &v22, &qword_2A18180D8, sub_29DF61DEC);
      sub_29E153B94(0, &qword_2A18180D8, sub_29DF61DEC);
      v15 = sub_29E2C3464();
      v17 = sub_29DFAA104(v15, v16, v21);

      *(v11 + 14) = v17;
      _os_log_impl(&dword_29DE74000, v9, v10, "[%{public}s] Received unexpected item %s.", v11, 0x16u);
      v18 = v20;
      swift_arrayDestroy();
      MEMORY[0x29ED82140](v18, -1, -1);
      MEMORY[0x29ED82140](v11, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }

  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  swift_beginAccess();
  sub_29DEF9180(&v22, v1 + v6);
  return swift_endAccess();
}

uint64_t sub_29E1530B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17PregnancyTileCell_item;
  swift_beginAccess();
  sub_29E153BF0(v1 + v3, v5, &qword_2A18180D8, sub_29DF61DEC);
  if (v6)
  {
    sub_29DF61DEC();
    type metadata accessor for PregnancyItem();
    if (swift_dynamicCast())
    {
    }
  }

  else
  {
    sub_29E153C5C(v5, &qword_2A18180D8, sub_29DF61DEC);
  }

  swift_beginAccess();
  sub_29DEC3690(a1, v1 + v3);
  swift_endAccess();
  sub_29E152D80();
  return sub_29E153C5C(a1, &qword_2A18180D8, sub_29DF61DEC);
}

id sub_29E1531E4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  sub_29E153B94(0, &qword_2A181CEA8, MEMORY[0x29EDC77B8]);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v17 - v11;
  v13 = &v4[OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17PregnancyTileCell_item];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  v17.receiver = v4;
  v17.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  sub_29E2C06C4();
  v15 = sub_29E2C06E4();
  (*(*(v15 - 8) + 56))(v12, 0, 1, v15);
  MEMORY[0x29ED805C0](v12);
  [v14 setAutomaticallyUpdatesBackgroundConfiguration_];
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_29E2C3E04();

  return v14;
}

void sub_29E15339C()
{
  sub_29E153B94(0, &qword_2A181CEA8, MEMORY[0x29EDC77B8]);
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v2 = v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x2A1C7C4A8](v3);
  v6 = v13 - v5;
  MEMORY[0x29ED805B0](v4);
  v7 = sub_29E2C06E4();
  if ((*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    v8 = MEMORY[0x29EDC77B8];
    sub_29E153BF0(v6, v2, &qword_2A181CEA8, MEMORY[0x29EDC77B8]);
    MEMORY[0x29ED805C0](v2);
    sub_29E153C5C(v6, &qword_2A181CEA8, v8);
  }

  else
  {
    v9 = [objc_opt_self() clearColor];
    sub_29E2C06A4();
    MEMORY[0x29ED805C0](v6);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_29E153CC0();
    v13[3] = v12;
    v13[4] = sub_29E153E28(&qword_2A181DDC0, sub_29E153CC0);
    sub_29DEBB7E8(v13);
    sub_29E153E70(0, &qword_2A181DDA8, MEMORY[0x29EDBC7F0]);
    sub_29E153D5C();
    sub_29E2C1DE4();
    MEMORY[0x29ED805A0](v13);
  }
}

uint64_t sub_29E153604()
{
  v0 = type metadata accessor for PregnancyTileView(0);
  MEMORY[0x2A1C7C4A8](v0);
  v2 = (&v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E153E70(0, &qword_2A181DDC8, MEMORY[0x29EDBC7E8]);
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v11 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    goto LABEL_6;
  }

  v7 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17PregnancyTileCell_item;
  v8 = Strong;
  swift_beginAccess();
  sub_29E153BF0(v8 + v7, &v12, &qword_2A18180D8, sub_29DF61DEC);

  if (!*(&v13 + 1))
  {
LABEL_6:
    sub_29E153C5C(&v12, &qword_2A18180D8, sub_29DF61DEC);
    goto LABEL_7;
  }

  sub_29DF61DEC();
  type metadata accessor for PregnancyItem();
  if (swift_dynamicCast())
  {

    sub_29DFCC308(v9, v2);
    sub_29E153ED8(v2, v5);
    swift_storeEnumTagMultiPayload();
    sub_29E153E28(&qword_2A181DDB8, type metadata accessor for PregnancyTileView);
    sub_29E2C1C74();

    return sub_29E153F3C(v2);
  }

LABEL_7:
  swift_storeEnumTagMultiPayload();
  sub_29E153E28(&qword_2A181DDB8, type metadata accessor for PregnancyTileView);
  return sub_29E2C1C74();
}

uint64_t sub_29E1539CC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17PregnancyTileCell_item;
  swift_beginAccess();
  return sub_29E153BF0(v1 + v3, a1, &qword_2A18180D8, sub_29DF61DEC);
}

void (*sub_29E153A44(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin17PregnancyTileCell_item;
  swift_beginAccess();
  sub_29E153BF0(v1 + v5, v4, &qword_2A18180D8, sub_29DF61DEC);
  return sub_29E153AF8;
}

void sub_29E153AF8(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_29E153BF0(*a1, v2 + 40, &qword_2A18180D8, sub_29DF61DEC);
    sub_29E1530B8(v2 + 40);
    sub_29E153C5C(v2, &qword_2A18180D8, sub_29DF61DEC);
  }

  else
  {
    sub_29E1530B8(*a1);
  }

  free(v2);
}

void sub_29E153B94(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E2C4304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E153BF0(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_29E153B94(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29E153C5C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_29E153B94(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29E153CC0()
{
  if (!qword_2A181DDA0)
  {
    sub_29E153E70(255, &qword_2A181DDA8, MEMORY[0x29EDBC7F0]);
    sub_29E153D5C();
    v0 = sub_29E2C1DF4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A181DDA0);
    }
  }
}

unint64_t sub_29E153D5C()
{
  result = qword_2A181DDB0;
  if (!qword_2A181DDB0)
  {
    sub_29E153E70(255, &qword_2A181DDA8, MEMORY[0x29EDBC7F0]);
    sub_29E153E28(&qword_2A181DDB8, type metadata accessor for PregnancyTileView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A181DDB0);
  }

  return result;
}

uint64_t sub_29E153E28(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E153E70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for PregnancyTileView(255);
    v7 = a3(a1, v6, MEMORY[0x29EDBCBF8]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29E153ED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PregnancyTileView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E153F3C(uint64_t a1)
{
  v2 = type metadata accessor for PregnancyTileView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E153FBC(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37SingleSelectLoggingCardViewController_checkedIndex + 8))
  {
    v2 = 0;
  }

  else
  {
    v3 = *(result + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37SingleSelectLoggingCardViewController_checkedIndex);
    if (v3 > 2)
    {
      __break(1u);
      return result;
    }

    v2 = *(&unk_2A24ADDF8 + v3 + 4);
  }

  *(v1 + 32) = v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_29E21F33C(*MEMORY[0x29EDC3260]);
    [*(v4 + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin33LoggingCardCarouselViewController_mutableDaySummary) setPregnancyTestResult_];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_29E154078(uint64_t a1, unint64_t a2)
{
  if (a2 <= 2)
  {
    return sub_29E1735D8(*(&unk_2A24ADDF8 + a2 + 4));
  }

  __break(1u);
  return result;
}

uint64_t sub_29E1540FC(uint64_t a1)
{
  v2 = sub_29E2C0514();
  v26[3] = *(v2 - 8);
  v26[4] = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v26[2] = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v26[0] = v26 - v5;
  v6 = sub_29E2BE394();
  v26[1] = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v7 = sub_29E2BCFB4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = v26 - v12;
  v15 = MEMORY[0x2A1C7C4A8](v14);
  v17 = v26 - v16;
  MEMORY[0x29ED79720](0, a1, v15);
  sub_29E2BF0F4();
  v18 = *(v8 + 8);
  v18(v10, v7);
  (*(v8 + 32))(v17, v13, v7);
  type metadata accessor for OnboardingOngoingCycleFactorsTableViewDataSource(0);
  v19 = swift_dynamicCastClass();
  if (v19)
  {
    v20 = v19;
    if (!sub_29E2BCFA4())
    {
      v21 = v20 + qword_2A181DDE0;
      v22 = *(v20 + qword_2A181DDE0);
      v23 = *(v21 + 8);
      sub_29E15CD6C(v22, v23);
      v24 = sub_29DF05400(v22, v23);
      sub_29E15BB0C(v22, v23);
      swift_unknownObjectRelease();
      v18(v17, v7);
      return v24;
    }

    v18(v17, v7);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v18(v17, v7);
  }

  return 0;
}

uint64_t sub_29E1546C4(uint64_t a1)
{
  v2 = sub_29E2C0514();
  v22[3] = *(v2 - 8);
  v22[4] = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v22[2] = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v22[0] = v22 - v5;
  v6 = sub_29E2BE394();
  v22[1] = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v7 = sub_29E2BCFB4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = v22 - v12;
  v15 = MEMORY[0x2A1C7C4A8](v14);
  v17 = v22 - v16;
  MEMORY[0x29ED79720](0, a1, v15);
  sub_29E2BF0F4();
  v18 = *(v8 + 8);
  v18(v10, v7);
  (*(v8 + 32))(v17, v13, v7);
  type metadata accessor for OnboardingOngoingCycleFactorsTableViewDataSource(0);
  if (swift_dynamicCastClass())
  {
    v19 = sub_29E2BCFA4();
    v20 = sub_29E155F20(v19);
    swift_unknownObjectRelease();
    v18(v17, v7);
    return v20;
  }

  else
  {
    swift_unknownObjectRelease();
    v18(v17, v7);
    return 0;
  }
}

uint64_t sub_29E154C3C(uint64_t a1)
{
  v3 = sub_29E2C0514();
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v24[3] = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v24[1] = v24 - v6;
  v25 = sub_29E2BE394();
  v24[2] = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25);
  v7 = sub_29E2BCFB4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = v24 - v12;
  v15 = MEMORY[0x2A1C7C4A8](v14);
  v17 = v24 - v16;
  MEMORY[0x29ED79720](0, a1, v15);
  sub_29E2BF0F4();
  v26 = a1;
  v27 = v1;
  v18 = *(v8 + 8);
  v18(v10, v7);
  (*(v8 + 32))(v17, v13, v7);
  type metadata accessor for OnboardingOngoingCycleFactorsTableViewDataSource(0);
  if (swift_dynamicCastClass())
  {
    v19 = v18;
    v20 = sub_29E2BCFA4();
    result = sub_29E2BE6F4();
    if (__OFSUB__(result, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return result;
    }

    v22 = v26;
    if (v20 == result - 1)
    {
      type metadata accessor for CompoundOnboardingOngoingCycleFactorsTableViewDataSource(0);
      v23 = sub_29E2BE6F4();
      swift_unknownObjectRelease();
      result = v19(v17, v7);
      if (!__OFSUB__(v23, 1))
      {
        return v23 - 1 != v22;
      }

      goto LABEL_11;
    }

    v18(v17, v7);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v18(v17, v7);
  }

  return 0;
}

uint64_t sub_29E15522C(uint64_t a1, uint64_t a2)
{
  v34 = sub_29E2BEBB4();
  v4 = *(v34 - 8);
  MEMORY[0x2A1C7C4A8](v34);
  v33 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BF0C4();
  v7 = v6;
  v35 = *(v6 + 16);
  if (v35)
  {
    v36 = v6 + 32;
    v8 = type metadata accessor for OnboardingOngoingCycleFactorsTableViewDataSource(0);
    v9 = 0;
    v37 = 0;
    v31 = v4 + 8;
    v32 = v4 + 16;
    v30 = v4;
    v26[1] = v8;
    v27 = v7;
    while (1)
    {
      v10 = *(v36 + 16 * v9++);
      swift_dynamicCastClassUnconditional();
      swift_unknownObjectRetain_n();
      v11 = sub_29E2BEC64();
      swift_unknownObjectRelease();
      v12 = *(v11 + 16);
      if (v12)
      {
        break;
      }

      swift_unknownObjectRelease();

LABEL_4:
      if (v9 == v35)
      {

        result = v37;
        if (!v37)
        {
          goto LABEL_31;
        }

        return result;
      }

LABEL_5:
      if (v9 >= *(v7 + 16))
      {
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    v13 = 0;
    v14 = v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v39 = v10;
    v40 = v9;
    v38 = v11;
    v28 = v14;
    v29 = v12;
LABEL_8:
    if (v13 >= *(v11 + 16))
    {
      goto LABEL_29;
    }

    v15 = v33;
    v16 = v34;
    (*(v4 + 16))(v33, v14 + *(v4 + 72) * v13++, v34);
    v17 = sub_29E2BEB94();
    (*(v4 + 8))(v15, v16);
    v18 = v17 + 32;
    v19 = -*(v17 + 16);
    v20 = -1;
    while (1)
    {
      if (v19 + v20 == -1)
      {

        v4 = v30;
        v9 = v40;
        v11 = v38;
        v14 = v28;
        if (v13 != v29)
        {
          goto LABEL_8;
        }

        swift_unknownObjectRelease();

        v7 = v27;
        goto LABEL_4;
      }

      if (++v20 >= *(v17 + 16))
      {
        __break(1u);
        goto LABEL_28;
      }

      sub_29DE9DC34(v18, v41);
      sub_29DE966D4(v41, v41[3]);
      if (sub_29E2BDE64() == a1 && v21 == a2)
      {
        break;
      }

      v18 += 40;
      v23 = sub_29E2C4914();

      sub_29DE93B3C(v41);
      if (v23)
      {
        goto LABEL_21;
      }
    }

    sub_29DE93B3C(v41);
LABEL_21:

    v24 = swift_dynamicCastClass();
    if (v24)
    {
      v37 = v24;
      v4 = v30;
      v7 = v27;
      v9 = v40;
      goto LABEL_4;
    }

    swift_unknownObjectRelease();
    v9 = v40;
    v7 = v27;
    if (v40 != v35)
    {
      v37 = 0;
      v4 = v30;
      goto LABEL_5;
    }
  }

LABEL_30:

LABEL_31:
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

char *sub_29E1555F8()
{
  v59 = sub_29E2BEBB4();
  v52 = *(v59 - 8);
  MEMORY[0x2A1C7C4A8](v59);
  v64 = &v50 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_29E2BF0C4();
  v2 = 0;
  v3 = MEMORY[0x29EDCA190];
  *&v68[0] = MEMORY[0x29EDCA190];
  v4 = *(v1 + 16);
  v53 = MEMORY[0x29EDCA190];
LABEL_2:
  v5 = 16 * v2 + 32;
  while (v4 != v2)
  {
    if (v2 >= *(v1 + 16))
    {
      goto LABEL_70;
    }

    ++v2;
    v6 = v5 + 16;
    type metadata accessor for OnboardingOngoingCycleFactorsTableViewDataSource(0);
    v7 = swift_dynamicCastClass();
    v5 = v6;
    if (v7)
    {
      v8 = swift_unknownObjectRetain();
      MEMORY[0x29ED7FDC0](v8);
      if (*((*&v68[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v68[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_29E2C3644();
      }

      sub_29E2C3674();
      v53 = *&v68[0];
      goto LABEL_2;
    }
  }

  if (v53 >> 62)
  {
    goto LABEL_73;
  }

  v9 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_11:
  v10 = v59;
  if (!v9)
  {

    v13 = MEMORY[0x29EDCA190];
    v46 = *(MEMORY[0x29EDCA190] + 16);
    if (!v46)
    {
      goto LABEL_64;
    }

    goto LABEL_60;
  }

  v69 = v3;
  result = sub_29E181A94(0, v9 & ~(v9 >> 63), 0);
  if (v9 < 0)
  {
    __break(1u);
    return result;
  }

  v12 = 0;
  v13 = v69;
  v55 = v53 & 0xC000000000000001;
  v51 = v53 & 0xFFFFFFFFFFFFFF8;
  v50 = v53 + 32;
  v62 = (v52 + 8);
  v63 = v52 + 16;
  v54 = v9;
  do
  {
    if (__OFADD__(v12, 1))
    {
      goto LABEL_71;
    }

    v58 = v13;
    v57 = v12 + 1;
    if (v55)
    {
      v14 = MEMORY[0x29ED80D70](v12);
    }

    else
    {
      if (v12 >= *(v51 + 16))
      {
        goto LABEL_72;
      }
    }

    v56 = v14;
    v15 = sub_29E2BEC64();
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = *(v52 + 80);
      v61 = v15;
      v18 = v15 + ((v17 + 32) & ~v17);
      v19 = *(v52 + 72);
      v20 = *(v52 + 16);
      v21 = MEMORY[0x29EDCA190];
      while (1)
      {
        v22 = v64;
        v20(v64, v18, v10);
        v3 = sub_29E2BEB94();
        (*v62)(v22, v10);
        v23 = *(v3 + 16);
        v24 = v21[2];
        v25 = v24 + v23;
        if (__OFADD__(v24, v23))
        {
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          v9 = sub_29E2C4484();
          goto LABEL_11;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v25 <= v21[3] >> 1)
        {
          if (*(v3 + 16))
          {
            goto LABEL_32;
          }
        }

        else
        {
          if (v24 <= v25)
          {
            v27 = v24 + v23;
          }

          else
          {
            v27 = v24;
          }

          v21 = sub_29E1444EC(isUniquelyReferenced_nonNull_native, v27, 1, v21);
          if (*(v3 + 16))
          {
LABEL_32:
            if ((v21[3] >> 1) - v21[2] < v23)
            {
              goto LABEL_68;
            }

            sub_29DEB1BC4(0, &qword_2A1819BD0);
            swift_arrayInitWithCopy();

            if (v23)
            {
              v28 = v21[2];
              v29 = __OFADD__(v28, v23);
              v30 = v28 + v23;
              if (v29)
              {
                goto LABEL_69;
              }

              v21[2] = v30;
            }

            goto LABEL_22;
          }
        }

        if (v23)
        {
          goto LABEL_67;
        }

LABEL_22:
        v18 += v19;
        if (!--v16)
        {

          v3 = v21[2];
          if (v3)
          {
            goto LABEL_37;
          }

LABEL_53:

          v32 = MEMORY[0x29EDCA190];
          v40 = *(MEMORY[0x29EDCA190] + 16);
          if (v40)
          {
            goto LABEL_49;
          }

LABEL_54:
          v41 = 0;
          goto LABEL_55;
        }
      }
    }

    v21 = MEMORY[0x29EDCA190];
    v3 = *(MEMORY[0x29EDCA190] + 16);
    if (!v3)
    {
      goto LABEL_53;
    }

LABEL_37:
    v31 = (v21 + 4);
    v32 = MEMORY[0x29EDCA190];
    do
    {
      sub_29DE9DC34(v31, v68);
      sub_29DE8EE78(v68, v65);
      sub_29DEB1BC4(0, &qword_2A1819BD0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v66 = 0u;
        memset(v67, 0, 19);
LABEL_39:
        sub_29E15CD28(v66, 0);
        goto LABEL_40;
      }

      v33 = *(&v66 + 1);
      if (!*(&v66 + 1))
      {
        goto LABEL_39;
      }

      v34 = v66;
      v60 = v67[1];
      v61 = v67[0];
      v35 = BYTE2(v67[2]);
      v36 = LOWORD(v67[2]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_29E1452D8(0, *(v32 + 2) + 1, 1, v32);
      }

      v38 = *(v32 + 2);
      v37 = *(v32 + 3);
      if (v38 >= v37 >> 1)
      {
        v32 = sub_29E1452D8((v37 > 1), v38 + 1, 1, v32);
      }

      *(v32 + 2) = v38 + 1;
      v39 = &v32[40 * v38];
      *(v39 + 4) = v34;
      *(v39 + 5) = v33;
      *(v39 + 6) = v61;
      *(v39 + 7) = v60;
      v39[64] = v36 & 1;
      v39[65] = BYTE1(v36);
      v39[66] = ((v36 | (v35 << 16)) >> 16) & 1;
      v10 = v59;
LABEL_40:
      v31 += 40;
      --v3;
    }

    while (v3);

    v40 = *(v32 + 2);
    if (!v40)
    {
      goto LABEL_54;
    }

LABEL_49:
    v41 = 0;
    v42 = v32 + 64;
    do
    {
      v43 = *v42;
      v42 += 40;
      v41 |= v43;
      --v40;
    }

    while (v40);
LABEL_55:

    v13 = v58;
    v69 = v58;
    v45 = *(v58 + 16);
    v44 = *(v58 + 24);
    if (v45 >= v44 >> 1)
    {
      sub_29E181A94((v44 > 1), v45 + 1, 1);
      v13 = v69;
    }

    *(v13 + 16) = v45 + 1;
    *(v13 + v45 + 32) = v41 & 1;
    v12 = v57;
  }

  while (v57 != v54);

  v46 = *(v13 + 16);
  if (!v46)
  {
LABEL_64:
    v47 = 0;
    goto LABEL_65;
  }

LABEL_60:
  v47 = 0;
  v48 = (v13 + 32);
  do
  {
    v49 = *v48++;
    v47 |= v49;
    --v46;
  }

  while (v46);
LABEL_65:

  return (v47 & 1);
}

uint64_t sub_29E155D04()
{
  sub_29E2BF144();

  return swift_deallocClassInstance();
}

uint64_t sub_29E155DA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_29E2BCC24();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v3 + qword_2A181DDE0);
  *v10 = a1;
  v10[1] = a2;
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  sub_29E2C4584();

  strcpy(v15, "MutableArray<");
  HIWORD(v15[1]) = -4864;
  sub_29E2BCC14();
  v11 = sub_29E2BCBD4();
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  MEMORY[0x29ED7FCC0](v11, v13);

  MEMORY[0x29ED7FCC0](62, 0xE100000000000000);
  return sub_29E2BEC54();
}

uint64_t sub_29E155F20(unint64_t a1)
{
  v3 = sub_29E2BEBB4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v20[-v8];
  result = sub_29E2BEC64();
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (*(result + 16) <= a1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v25 = v1;
  v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v12 = *(v4 + 72) * a1;
  v24 = *(v4 + 16);
  v24(v9, result + v11 + v12, v3);

  v13 = sub_29E2BEB94();
  v14 = *(v4 + 8);
  v14(v9, v3);
  if (!*(v13 + 16))
  {
    goto LABEL_14;
  }

  sub_29DE9DC34(v13 + 32, v26);

  sub_29DEB1BC4(0, &qword_2A1819BD0);
  if (swift_dynamicCast())
  {
    if (v30 == 1)
    {
      v22 = v29;
      v23 = *(&v28 + 1);
      v21 = v31;
      result = sub_29E2BEC64();
      if (*(result + 16) <= a1)
      {
LABEL_21:
        __break(1u);
        return result;
      }

      v24(v6, result + v11 + v12, v3);

      v15 = sub_29E2BEB94();
      result = (v14)(v6, v3);
      v16 = *(v15 + 16);
      if (v16)
      {
        v17 = 0;
        v18 = v15 + 32;
        while (v17 < *(v15 + 16))
        {
          sub_29DE9DC34(v18, &v28);
          sub_29DE8EE78(&v28, v27);
          result = swift_dynamicCast();
          if (result)
          {

            sub_29DF3BBFC(v26);
            v19 = sub_29DF07694(v21);

            return v19;
          }

          ++v17;
          v18 += 40;
          if (v16 == v17)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        goto LABEL_19;
      }

LABEL_12:
    }

    else
    {
    }

LABEL_14:
  }

  return 0;
}

uint64_t sub_29E156274(unint64_t a1, uint64_t a2)
{
  v5 = sub_29E2BEBB4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_29E2BEC64();
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (*(result + 16) > a1)
  {
    v26 = v6;
    v27 = v2;
    v10 = *(v6 + 16);
    v11 = result + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v12 = *(v6 + 72);
    v25 = a1;
    v28 = v5;
    v10(v8, v11 + v12 * a1, v5);

    v24 = v8;
    result = sub_29E2BEB94();
    v13 = result;
    v14 = *(result + 16);
    if (!v14)
    {
LABEL_16:

      sub_29E2BEC94();

      return (*(v26 + 8))(v24, v28);
    }

    v15 = 0;
    v16 = MEMORY[0x29EDCA190];
    while (v15 < *(v13 + 16))
    {
      v17 = v15 + 1;
      *&v31[0] = v15;
      sub_29DE9DC34(v13 + 32 + 40 * v15, v31 + 8);
      v18 = *(a2 + 16);
      v19 = (a2 + 32);
      while (v18)
      {
        v20 = *v19++;
        --v18;
        if (v20 == v15)
        {
          result = sub_29E15CC4C(v31, sub_29E15CCAC);
          goto LABEL_6;
        }
      }

      v29[0] = v31[0];
      v29[1] = v31[1];
      v29[2] = v31[2];
      sub_29DE8EE78((v29 + 8), v30);
      sub_29DE8EE78(v30, v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_29E1444EC(0, v16[2] + 1, 1, v16);
      }

      v22 = v16[2];
      v21 = v16[3];
      if (v22 >= v21 >> 1)
      {
        v16 = sub_29E1444EC((v21 > 1), v22 + 1, 1, v16);
      }

      v16[2] = v22 + 1;
      result = sub_29DE8EE78(v29, &v16[5 * v22 + 4]);
LABEL_6:
      ++v15;
      if (v17 == v14)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_29E156538@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = sub_29E2BEBB4();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E15B9CC();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v56 = (&v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E15BA38(0, &qword_2A181DE28, sub_29E15B9CC);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = (&v50 - v15);
  result = sub_29E2BEC64();
  v18 = result;
  v19 = 0;
  v55 = v4 + 16;
  v66 = (v9 + 56);
  v20 = (v9 + 48);
  v64 = (v4 + 32);
  v57 = v4;
  v61 = (v4 + 8);
  v21 = &unk_2A181DFD0;
  v63 = v3;
  v62 = v6;
  v54 = v8;
  v53 = v13;
  v60 = result;
  v52 = v16;
  v51 = v20;
LABEL_2:
  v22 = *(v18 + 16);
  if (v19 == v22)
  {
    v65 = v19;
    v23 = 1;
  }

  else
  {
    if (v19 >= v22)
    {
      goto LABEL_26;
    }

    v24 = v19 + 1;
    v25 = v57;
    v26 = v18 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v19;
    v27 = *(v8 + 48);
    v28 = v56;
    *v56 = v19;
    (*(v25 + 16))(v28 + v27, v26, v3);
    sub_29E15BB20(v28, v13, sub_29E15B9CC);
    v23 = 0;
    v65 = v24;
    v21 = &unk_2A181DFD0;
  }

  (*v66)(v13, v23, 1, v8);
  sub_29E15CB5C(v13, v16);
  if ((*v20)(v16, 1, v8) == 1)
  {

    v49 = sub_29E2BCFB4();
    return (*(*(v49 - 8) + 56))(v58, 1, 1, v49);
  }

  v59 = *v16;
  (*v64)(v6, v16 + *(v8 + 48), v3);
  result = sub_29E2BEB94();
  v29 = result;
  v30 = 0;
  v31 = *(result + 16);
  v67 = result + 32;
  while (1)
  {
    v32 = 0uLL;
    v33 = v31;
    v34 = 0uLL;
    v35 = 0uLL;
    if (v30 != v31)
    {
      break;
    }

LABEL_11:
    v75[0] = v32;
    v75[1] = v34;
    v75[2] = v35;
    if (!v35)
    {
      v6 = v62;
      v3 = v63;
      (*v61)(v62, v63);

      v8 = v54;
      v13 = v53;
      v18 = v60;
      v16 = v52;
      v20 = v51;
      v19 = v65;
      goto LABEL_2;
    }

    v68 = v32;
    sub_29DE8EE78((v75 + 8), v71);
    sub_29DEB1BC4(0, &qword_2A1819BD0);
    sub_29DEB1BC4(0, v21);
    if (swift_dynamicCast())
    {
      v36 = v21;
      sub_29DE8EE78(v69, &v72);
      v37 = *(&v73 + 1);
      v38 = v74;
      sub_29DE966D4(&v72, *(&v73 + 1));
      v39 = (*(v38 + 16))(v37, v38);
      v41 = v40;
      v42 = a1[3];
      v43 = a1[4];
      sub_29DE966D4(a1, v42);
      if (v39 == (*(v43 + 16))(v42, v43) && v41 == v44)
      {

LABEL_22:

        v47 = v58;
        MEMORY[0x29ED79720](v68, v59);
        (*v61)(v62, v63);
        v48 = sub_29E2BCFB4();
        (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
        return sub_29DE93B3C(&v72);
      }

      v46 = sub_29E2C4914();

      if (v46)
      {
        goto LABEL_22;
      }

      result = sub_29DE93B3C(&v72);
      v30 = v33;
      v21 = v36;
    }

    else
    {
      v70 = 0;
      memset(v69, 0, sizeof(v69));
      result = sub_29E15CBDC(v69, &qword_2A181B5B8, v21, &protocol descriptor for OnboardingGenericRow);
      v30 = v33;
    }
  }

  if (v30 < *(v29 + 16))
  {
    v33 = v30 + 1;
    *&v72 = v30;
    sub_29DE9DC34(v67 + 40 * v30, &v72 + 8);
    v32 = v72;
    v34 = v73;
    v35 = v74;
    goto LABEL_11;
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_29E156C2C(uint64_t a1)
{
  v35 = a1;
  v1 = sub_29E2BEBB4();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v39 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E15B9CC();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v29 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E15BA38(0, &qword_2A181DE28, sub_29E15B9CC);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v28 - v12;
  result = sub_29E2BEC64();
  v15 = 0;
  v30 = v2;
  v31 = result;
  v16 = *(result + 16);
  v28 = v2 + 16;
  v37 = (v6 + 48);
  v38 = (v6 + 56);
  v33 = (v2 + 32);
  v34 = (v2 + 8);
  v32 = v16;
  while (1)
  {
    if (v15 == v16)
    {
      v18 = 1;
      v15 = v16;
      goto LABEL_8;
    }

    if ((v15 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v15 >= *(v31 + 16))
    {
      goto LABEL_15;
    }

    v20 = v29;
    v19 = v30;
    v21 = v31 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v15;
    v22 = *(v5 + 48);
    *v29 = v15;
    (*(v19 + 16))(v20 + v22, v21, v1);
    sub_29E15BB20(v20, v10, sub_29E15B9CC);
    v18 = 0;
    ++v15;
LABEL_8:
    (*v38)(v10, v18, 1, v5);
    sub_29E15CB5C(v10, v13);
    if ((*v37)(v13, 1, v5) == 1)
    {
      v36 = 0;
      goto LABEL_13;
    }

    v36 = *v13;
    v23 = v1;
    (*v33)(v39, &v13[*(v5 + 48)], v1);
    v24 = sub_29E2BEB74();
    v26 = v25;
    if (v24 == sub_29E2BEB74() && v26 == v27)
    {

      (*v34)(v39, v23);
LABEL_13:

      return v36;
    }

    v17 = sub_29E2C4914();

    v1 = v23;
    result = (*v34)(v39, v23);
    v16 = v32;
    if (v17)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_29E157018()
{
  v0 = sub_29E2BEBB4();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = v11 - v5;
  v7 = sub_29E2BEC64();
  v8 = *(v7 + 16);
  if (v8)
  {
    (*(v1 + 16))(v3, v7 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * (v8 - 1), v0);

    (*(v1 + 32))(v6, v3, v0);
    v9 = sub_29E2BEB94();
    if (*(v9 + 16))
    {
      sub_29DE9DC34(v9 + 32, v15);

      sub_29DEB1BC4(0, &qword_2A1819BD0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        return (*(v1 + 8))(v6, v0);
      }

      if (v12 == 1 && v13 == 3)
      {
        v15[0] = v11[0];
        v15[1] = v11[1];
        v15[2] = v11[2];
        v15[3] = v11[3];
        v16 = 768;
        v17 = v14;
        sub_29E15C4D4(v15);
        sub_29E15CA58(v15);
        return (*(v1 + 8))(v6, v0);
      }
    }

    return (*(v1 + 8))(v6, v0);
  }
}

BOOL sub_29E15725C(uint64_t a1, uint64_t a2)
{
  sub_29E15BA38(0, &qword_2A181DE00, MEMORY[0x29EDC2240]);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v18[-v5];
  v7 = sub_29E2BEB94();
  if (!*(v7 + 16))
  {

LABEL_9:
    v16 = sub_29E2BEB94();
    if (*(v16 + 16))
    {
      sub_29DE9DC34(v16 + 32, v21);

      sub_29DEB1BC4(0, &qword_2A1819BD0);
      if (swift_dynamicCast())
      {
        v17 = v19;

        return v17 == 7;
      }

      return 0;
    }

LABEL_13:

    return 0;
  }

  sub_29DE9DC34(v7 + 32, v21);

  sub_29DEB1BC4(0, &qword_2A1819BD0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v19 != 1)
  {

    goto LABEL_13;
  }

  v8 = v20;
  if (v20 == 2)
  {
    sub_29E15BA8C(a2, v6);
    v9 = sub_29E2BEBB4();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);
    v22 = v9;
    v12 = v11(v6, 1);
    sub_29E15BB88(v6, &qword_2A181DE00, MEMORY[0x29EDC2240]);
    if (v12 == 1)
    {
      sub_29E15BB88(a2, &qword_2A181DE00, MEMORY[0x29EDC2240]);
      v13 = a1;
      v14 = v22;
      (*(v10 + 16))(a2, v13, v22);
      (*(v10 + 56))(a2, 0, 1, v14);
    }
  }

  return v8 != 3;
}

uint64_t sub_29E157534(char *a1)
{
  v65 = sub_29E2BCC24();
  v64 = *(v65 - 8);
  MEMORY[0x2A1C7C4A8](v65);
  v63 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OnboardingEndDateRow(0);
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_29E2BCFB4();
  v68 = *(v69 - 8);
  MEMORY[0x2A1C7C4A8](v69);
  v62 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v66 = &v61 - v8;
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v61 - v10;
  type metadata accessor for OnboardingOngoingCycleFactorsTableViewDataSource(0);
  sub_29E2BE764();
  sub_29DEB1BC4(0, &qword_2A1819BD0);
  sub_29DEB1BC4(0, &qword_2A18191B0);
  swift_dynamicCast();
  result = sub_29E2BCF64();
  v13 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v67 = a1;
    v14 = sub_29E2BCFA4();
    MEMORY[0x29ED79720](v13, v14);
    v15 = v11;
    if (sub_29E2BE704())
    {
      sub_29E2BE764();
      sub_29DEB1BC4(0, &unk_2A181DFD0);
      swift_dynamicCast();
      v16 = v74;
      v17 = v75;
      sub_29DE966D4(v73, v74);
      v18 = (*(v17 + 24))(v16, v17) == 4;
      sub_29DE93B3C(v73);
    }

    else
    {
      v18 = 0;
    }

    sub_29DE9DC34(v79, v76);
    if (swift_dynamicCast())
    {
      sub_29E15CC4C(v5, type metadata accessor for OnboardingEndDateRow);
      v19 = v80;
      v20 = v81;
      v21 = sub_29DE966D4(v79, v80);
      v77 = v19;
      v78 = *(*(*(*(v20 + 8) + 8) + 8) + 8);
      v22 = sub_29DEBB7E8(v76);
      (*(*(v19 - 8) + 16))(v22, v21, v19);
      sub_29E2BED04();
      sub_29DE93B3C(v76);
    }

    if (v18)
    {
      sub_29E2BEC14();
      v23 = v80;
      v24 = v81;
      v25 = sub_29DE966D4(v79, v80);
      v74 = v23;
      v75 = *(v24 + 8);
      v26 = v75;
      v27 = sub_29DEBB7E8(v73);
      (*(v23[-1].Description + 2))(v27, v25, v23);
      sub_29DE9DC34(v73, v76);
      v28 = v77;
      v29 = v78;
      sub_29DEF61C0(v76, v77);
      (*(v26 + 24))(0, v28, v29);
      v30 = v77;
      v31 = v78;
      v32 = sub_29DE966D4(v76, v77);
      v71 = v30;
      v72 = *(*(*(v31 + 8) + 8) + 8);
      v33 = sub_29DEBB7E8(v70);
      (*(*(v30 - 8) + 16))(v33, v32, v30);
      sub_29E2BED04();
      (*(v68 + 8))(v11, v69);
      sub_29DE93B3C(v70);
      sub_29DE93B3C(v76);
      v34 = v73;
LABEL_11:
      sub_29DE93B3C(v34);
      return sub_29DE93B3C(v79);
    }

    v35 = v66;
    sub_29E1590A0(v11, v66);
    v36 = v80;
    v37 = v81;
    v38 = sub_29DE966D4(v79, v80);
    v74 = v36;
    v39 = *(v37 + 8);
    v75 = v39;
    v40 = sub_29DEBB7E8(v73);
    (*(v36[-1].Description + 2))(v40, v38, v36);
    result = sub_29E2BCF94();
    v41 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      v42 = sub_29E2BCFA4();
      v43 = v62;
      MEMORY[0x29ED79740](v41, v42);
      sub_29DE9DC34(v73, v76);
      v44 = v77;
      v45 = v78;
      sub_29DEF61C0(v76, v77);
      (*(v39 + 24))(1, v44, v45);
      v46 = v77;
      v47 = v78;
      v48 = sub_29DE966D4(v76, v77);
      v71 = v46;
      v72 = *(*(*(v47 + 8) + 8) + 8);
      v49 = sub_29DEBB7E8(v70);
      (*(*(v46 - 8) + 16))(v49, v48, v46);
      sub_29E2BED04();
      v67 = v15;
      v50 = v35;
      v51 = *(v68 + 8);
      v52 = v69;
      v51(v43, v69);
      sub_29DE93B3C(v70);
      sub_29DE93B3C(v73);
      sub_29DE966D4(v76, v77);
      v53 = sub_29E2BDE64();
      v55 = v54;
      v56 = v63;
      sub_29E2BCC14();
      v57 = sub_29E2BCBD4();
      v59 = v58;
      (*(v64 + 8))(v56, v65);
      v74 = &type metadata for OnboardingDatePickerRow;
      v75 = sub_29DF0886C();
      v60 = swift_allocObject();
      v73[0] = v60;
      strcpy((v60 + 24), "datePickerCell");
      *(v60 + 39) = -18;
      *(v60 + 56) = 0;
      *(v60 + 64) = 0;
      *(v60 + 72) = 4;
      *(v60 + 120) = 0;
      swift_unknownObjectWeakInit();
      *(v60 + 80) = v57;
      *(v60 + 88) = v59;
      *(v60 + 40) = v57;
      *(v60 + 48) = v59;
      *(v60 + 96) = v53;
      *(v60 + 104) = v55;
      *(v60 + 16) = 2;
      sub_29E2BF404();
      sub_29E2BECD4();
      v51(v50, v52);
      v51(v67, v52);
      sub_29DE93B3C(v73);
      v34 = v76;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_29E157D84()
{
  v1 = v0;
  v2 = sub_29E2BCC24();
  v49 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v48 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_29E2BCFB4();
  v50 = *(v51 - 8);
  MEMORY[0x2A1C7C4A8](v51);
  v5 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = v46 - v7;
  MEMORY[0x2A1C7C4A8](v9);
  v11 = v46 - v10;
  type metadata accessor for OnboardingOngoingCycleFactorsTableViewDataSource(0);
  sub_29E2BE764();
  sub_29DEB1BC4(0, &qword_2A1819BD0);
  swift_dynamicCast();
  result = sub_29E2BCF64();
  v13 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v14 = sub_29E2BCFA4();
    MEMORY[0x29ED79720](v13, v14);
    if (sub_29E2BE704())
    {
      sub_29E2BE764();
      sub_29DEB1BC4(0, &unk_2A181DFD0);
      swift_dynamicCast();
      v15 = v59;
      v16 = v60;
      sub_29DE966D4(v58, v59);
      v17 = (*(v16 + 24))(v15, v16);
      sub_29DE93B3C(v58);
      if (v17 == 6)
      {
        sub_29E2BEC14();
        v59 = &type metadata for OnboardingTypeRow;
        v60 = sub_29DF08268();
        v18 = swift_allocObject();
        v58[0] = v18;
        v19 = v62;
        v18[1] = v61;
        v18[2] = v19;
        v20 = v64;
        v18[3] = v63;
        v18[4] = v20;
        sub_29DE9DC34(v58, v55);
        *sub_29DEF61C0(v55, v56) = 0;
        v21 = v56;
        v22 = v57;
        v23 = sub_29DE966D4(v55, v56);
        v53 = v21;
        v54 = *(*(*(v22 + 8) + 8) + 8);
        v24 = sub_29DEBB7E8(v52);
        (*(*(v21 - 8) + 16))(v24, v23, v21);
        sub_29E2BED04();
        (*(v50 + 8))(v11, v51);
        sub_29DE93B3C(v52);
        sub_29DE93B3C(v55);
        v25 = v58;
        return sub_29DE93B3C(v25);
      }
    }

    sub_29E1590A0(v11, v8);
    v59 = &type metadata for OnboardingTypeRow;
    v60 = sub_29DF08268();
    v26 = swift_allocObject();
    v58[0] = v26;
    v27 = v62;
    v26[1] = v61;
    v26[2] = v27;
    v28 = v64;
    v26[3] = v63;
    v26[4] = v28;
    sub_29E15BC94(&v61, v55);
    result = sub_29E2BCF94();
    v29 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      v30 = sub_29E2BCFA4();
      MEMORY[0x29ED79740](v29, v30);
      sub_29DE9DC34(v58, v55);
      *sub_29DEF61C0(v55, v56) = 1;
      v31 = v56;
      v32 = v57;
      v33 = sub_29DE966D4(v55, v56);
      v53 = v31;
      v54 = *(*(*(v32 + 8) + 8) + 8);
      v34 = sub_29DEBB7E8(v52);
      (*(*(v31 - 8) + 16))(v34, v33, v31);
      sub_29E2BED04();
      v47 = v11;
      v46[1] = v1;
      v35 = *(v50 + 8);
      v36 = v5;
      v37 = v51;
      v35(v36, v51);
      sub_29DE93B3C(v52);
      sub_29DE93B3C(v58);
      sub_29DE966D4(v55, v56);
      v38 = sub_29E2BDE64();
      v40 = v39;
      v41 = v48;
      sub_29E2BCC14();
      v42 = sub_29E2BCBD4();
      v44 = v43;
      (*(v49 + 8))(v41, v2);
      v59 = &type metadata for OnboardingTypePicker;
      v60 = sub_29DF08814();
      v45 = swift_allocObject();
      v58[0] = v45;
      v45[2] = v42;
      v45[3] = v44;
      v45[4] = v38;
      v45[5] = v40;
      sub_29E2BECD4();
      sub_29DF3BBA8(&v61);
      v35(v8, v37);
      v35(v47, v37);
      sub_29DE93B3C(v58);
      v25 = v55;
      return sub_29DE93B3C(v25);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_29E1583D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_29E2BCFB4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_29E2BCF64();
  v10 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v11 = sub_29E2BCFA4();
    MEMORY[0x29ED79720](v10, v11);
    type metadata accessor for OnboardingOngoingCycleFactorsTableViewDataSource(0);
    sub_29E2BE764();
    sub_29DEB1BC4(0, &qword_2A1819BD0);
    swift_dynamicCast();
    sub_29E2BE764();
    sub_29DEB1BC4(0, &qword_2A18191B0);
    swift_dynamicCast();
    v12 = v35;
    v13 = v36;
    sub_29DEF61C0(v34, v35);
    (*(v13 + 32))(a2, v12, v13);
    v14 = v35;
    v15 = sub_29DE966D4(v34, v35);
    v16 = *(v14 - 8);
    v32 = v5;
    v17 = v16;
    v18 = MEMORY[0x2A1C7C4A8](v15);
    v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v20, v18);
    v21 = sub_29E2BDE64();
    v23 = v22;
    (*(v17 + 8))(v20, v14);
    v37[10] = v21;
    v37[11] = v23;

    v24 = v35;
    v25 = v36;
    v26 = sub_29DE966D4(v34, v35);
    v27 = *(v24 - 8);
    v28 = MEMORY[0x2A1C7C4A8](v26);
    v30 = &v31 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v27 + 16))(v30, v28);
    sub_29E15C740(v30, v3, v24, *(*(v25 + 8) + 8));
    (*(v27 + 8))(v30, v24);
    sub_29E15C9A8(v37, v33);
    sub_29E15BCF0(v33);
    (*(v6 + 8))(v8, v32);
    sub_29DF3BBFC(v33);
    sub_29DE93B3C(v34);
    return sub_29DF3BBFC(v37);
  }

  return result;
}

uint64_t sub_29E1587A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E15BA38(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = v25 - v5;
  v7 = sub_29E2BCFB4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v13 = v25 - v12;
  result = sub_29E2BECB4();
  if (v28)
  {
    sub_29DE8EE78(&v27, &v29);
    sub_29DEB1BC4(0, &qword_2A1819BD0);
    swift_dynamicCast();
    v26[0] = v30;
    v26[1] = v31;
    v26[2] = v32;
    v26[3] = v33;
    *(&v35 + 1) = &type metadata for OnboardingTypeRow;
    *&v36 = sub_29DF08560();
    v15 = swift_allocObject();
    *&v34 = v15;
    v16 = v31;
    v15[1] = v30;
    v15[2] = v16;
    v17 = v33;
    v15[3] = v32;
    v15[4] = v17;
    sub_29E15BC94(v26, v38);
    sub_29E156538(&v34, v6);
    sub_29DE93B3C(&v34);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_29E15BB88(v6, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
LABEL_8:
      v25[0] = v30;
      v25[1] = v31;
      v25[2] = v32;
      v25[3] = v33;
      return sub_29DF3BBA8(v25);
    }

    (*(v8 + 32))(v13, v6, v7);
    result = sub_29E2BCF94();
    v18 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v19 = sub_29E2BCFA4();
      MEMORY[0x29ED79740](v18, v19);
      type metadata accessor for OnboardingOngoingCycleFactorsTableViewDataSource(0);
      sub_29E2BE764();
      v20 = *(v8 + 8);
      v20(v10, v7);
      if (swift_dynamicCast())
      {
        v21 = v34;

        *(&v31 + 1) = a3;
        v38[2] = v32;
        v38[3] = v33;
        v38[0] = v30;
        v38[1] = v31;
        sub_29E15BC94(v38, &v34);
        v22 = sub_29DF072F8();
        v24 = v23;
        sub_29DF3BBA8(v38);
        v34 = v30;
        v35 = v31;
        v36 = v32;
        v37 = v33;
        sub_29E15BC94(&v34, v25);
        sub_29E15BF4C(&v34);
        sub_29DF3BBA8(&v34);
        sub_29E15C1B8(v21, *(&v21 + 1), v22, v24);
      }

      v20(v13, v7);
      goto LABEL_8;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_29E158B80()
{
  v0 = sub_29E2BEBB4();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E2BEC64();
  v5 = sub_29E2BCFA4();
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 >= *(v4 + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  (*(v1 + 16))(v3, v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v5, v0);

  v6 = sub_29E2BEB94();
  if (*(v6 + 16))
  {
    sub_29DE9DC34(v6 + 32, v10);

    sub_29DE8EE78(v10, v11);
    sub_29DEB1BC4(0, &qword_2A1819BD0);
    swift_dynamicCast();
    v7 = v9[5];
    sub_29E2BCFA4();
    sub_29E2BEC34();

    (*(v1 + 8))(v3, v0);
    return v7;
  }

LABEL_7:

  __break(1u);
  return result;
}

uint64_t sub_29E158D68(uint64_t a1, uint64_t a2)
{
  v22 = sub_29E2BCFB4();
  v3 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E2BCBB4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OnboardingEndDateRow(0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E15BBE4(a2, v12, type metadata accessor for OnboardingEndDateRow);
  sub_29E2BCA84();
  (*(v7 + 40))(&v12[*(v10 + 28)], v9, v6);
  v24[3] = v10;
  v24[4] = sub_29E15BC4C(&qword_2A1818C30, type metadata accessor for OnboardingEndDateRow);
  v13 = sub_29DEBB7E8(v24);
  sub_29E15BBE4(v12, v13, type metadata accessor for OnboardingEndDateRow);
  result = sub_29E2BCF64();
  v15 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v16 = sub_29E2BCFA4();
    MEMORY[0x29ED79720](v15, v16);
    sub_29DE9DC34(v24, v25);
    *(sub_29DEF61C0(v25, v26) + 16) = 0;
    v17 = v26;
    v18 = v27;
    v19 = sub_29DE966D4(v25, v26);
    v23[3] = v17;
    v23[4] = *(*(*(v18 + 8) + 8) + 8);
    v20 = sub_29DEBB7E8(v23);
    (*(*(v17 - 8) + 16))(v20, v19, v17);
    sub_29E2BED04();
    (*(v3 + 8))(v5, v22);
    sub_29DE93B3C(v23);
    sub_29DE93B3C(v25);
    sub_29DE93B3C(v24);
    sub_29E2BEC14();
    return sub_29E15CC4C(v12, type metadata accessor for OnboardingEndDateRow);
  }

  return result;
}

uint64_t sub_29E1590A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29E15BA38(0, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v49 - v6;
  v8 = sub_29E2BCFB4();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = (&v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v12);
  v14 = &v49 - v13;
  MEMORY[0x2A1C7C4A8](v15);
  v55 = &v49 - v16;
  v67 = sub_29E2BEBB4();
  v17 = *(v67 - 8);
  MEMORY[0x2A1C7C4A8](v67);
  Kind = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v2;
  result = sub_29E2BEC64();
  v65 = *(result + 16);
  if (v65)
  {
    v50 = v11;
    v51 = v14;
    v59 = v8;
    v52 = a2;
    v53 = a1;
    v20 = 0;
    v63 = result + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v64 = v17;
    v61 = v17 + 8;
    v62 = v17 + 16;
    v54 = v9;
    v56 = &v9[3];
    v57 = v7;
    v21 = MEMORY[0x29EDC18F8];
    v22 = &type metadata for OnboardingTypePicker;
    v23 = &type metadata for OnboardingDatePickerRow;
    v60 = result;
    while (1)
    {
      if (v20 >= *(result + 16))
      {
        __break(1u);
        goto LABEL_32;
      }

      v24 = v64;
      Description = Kind;
      v25 = v67;
      (*(v64 + 16))(Kind, v63 + *(v64 + 72) * v20, v67);
      v27 = sub_29E2BEB94();
      (*(v24 + 8))(Description, v25);
      v28 = *(v27 + 16);
      if (v28)
      {
        break;
      }

LABEL_3:

LABEL_4:
      result = v60;
      if (++v20 == v65)
      {

        a2 = v52;
        a1 = v53;
        v8 = v59;
        v9 = v54;
        return (v9[1].Kind)(a2, a1, v8);
      }
    }

    v29 = 0;
    v30 = v27 + 32;
    while (1)
    {
      if (v29 >= *(v27 + 16))
      {
        __break(1u);
        goto LABEL_28;
      }

      sub_29DE9DC34(v30, &v70);
      sub_29DE9DC34(&v70, v68);
      Description = sub_29DEB1BC4(0, &qword_2A1819BD0);
      if (swift_dynamicCast())
      {

        goto LABEL_15;
      }

      sub_29DE9DC34(&v70, v69);
      if (swift_dynamicCast())
      {
        break;
      }

      ++v29;
      sub_29DE93B3C(&v70);
      v30 += 40;
      if (v28 == v29)
      {
        goto LABEL_3;
      }
    }

    sub_29DF3BBFC(v68);
LABEL_15:
    sub_29DE8EE78(&v70, &v73);
    sub_29DE8EE78(&v73, v76);
    sub_29DE9DC34(v76, v68);
    sub_29DEB1BC4(0, &unk_2A181DFD0);
    swift_dynamicCast();
    v31 = v57;
    sub_29E156538(&v73, v57);
    sub_29DE93B3C(&v73);
    if ((*v56)(v31, 1, v59) == 1)
    {
      sub_29DE93B3C(v76);
      sub_29E15BB88(v31, &unk_2A1A61BA0, MEMORY[0x29EDB9D70]);
      goto LABEL_4;
    }

    v22 = v54;
    v32 = v55;
    v21 = v59;
    Kind = v54[2].Kind;
    v67 = &v54[2];
    (Kind)(v55, v31, v59);
    result = sub_29E2BCF94();
    v33 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      v34 = sub_29E2BCFA4();
      v35 = v51;
      MEMORY[0x29ED79740](v33, v34);
      type metadata accessor for OnboardingOngoingCycleFactorsTableViewDataSource(0);
      sub_29E2BE764();
      sub_29DEB1BC4(0, &qword_2A181DE08);
      swift_dynamicCast();
      sub_29DE9DC34(v68, &v73);
      v36 = v74;
      v37 = v75;
      sub_29DEF61C0(&v73, v74);
      (*(v37 + 24))(0, v36, v37);
      v38 = v74;
      v39 = v75;
      v40 = sub_29DE966D4(&v73, v74);
      v71 = v38;
      v72 = *(*(*(v39 + 8) + 8) + 8);
      v41 = sub_29DEBB7E8(&v70);
      (*(*(v38 - 8) + 16))(v41, v40, v38);
      sub_29E2BED04();
      sub_29DE93B3C(&v70);
      sub_29DE93B3C(&v73);
      sub_29E2BEC14();
      sub_29DE9DC34(v76, &v73);
      v42 = swift_dynamicCast();
      v28 = v53;
      if (v42)
      {

        result = sub_29E2BCF94();
        v43 = result - 1;
        if (__OFSUB__(result, 1))
        {
          goto LABEL_33;
        }

        v44 = sub_29E2BCFA4();
        v23 = v50;
        MEMORY[0x29ED79740](v43, v44);
        v45 = sub_29E2BCFA4();
        v46 = v55;
        v47 = sub_29E2BCFA4();
        Description = v22->Description;
        Description(v51, v21);
        Description(v46, v21);
        sub_29DE93B3C(v76);
        if (v45 == v47)
        {
          (Kind)(v52, v23, v21);
          return sub_29DE93B3C(v68);
        }

LABEL_28:
        Description(v23, v21);
      }

      else
      {
        v48 = v22->Description;
        v48(v35, v21);
        v48(v32, v21);
        sub_29DE93B3C(v76);
      }

      (v22[1].Kind)(v52, v28, v21);
      return sub_29DE93B3C(v68);
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

    return (v9[1].Kind)(a2, a1, v8);
  }

  return result;
}

uint64_t sub_29E159830(int a1)
{
  v82 = a1;
  v77 = sub_29E2C31A4();
  v98 = *(v77 - 8);
  MEMORY[0x2A1C7C4A8](v77);
  v2 = &v70 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_29E2BCBB4();
  v97 = *(v83 - 8);
  MEMORY[0x2A1C7C4A8](v83);
  v76 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v80 = &v70 - v5;
  sub_29E15BA38(0, &qword_2A18191A0, type metadata accessor for OnboardingEndDateRow);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v92 = &v70 - v7;
  v93 = type metadata accessor for OnboardingEndDateRow(0);
  v8 = *(v93 - 8);
  MEMORY[0x2A1C7C4A8](v93);
  v84 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_29E2BEBB4();
  v10 = *(v94 - 8);
  MEMORY[0x2A1C7C4A8](v94);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E2BCC94();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_29E2BCEA4();
  v17 = *(v86 - 8);
  MEMORY[0x2A1C7C4A8](v86);
  v75 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x2A1C7C4A8](v19);
  v22 = &v70 - v21;
  v110 = MEMORY[0x29EDCA190];
  (*(v14 + 104))(v16, *MEMORY[0x29EDB9C78], v13, v20);
  v85 = v22;
  sub_29E2BCCA4();
  (*(v14 + 8))(v16, v13);
  result = sub_29E2BEC64();
  v24 = result;
  v95 = *(result + 16);
  if (v95)
  {
    v74 = v2;
    v25 = 0;
    v101 = result + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v100 = v10 + 16;
    v99 = (v10 + 8);
    v88 = (v8 + 56);
    v87 = (v8 + 48);
    v78 = (v97 + 8);
    v73 = (v97 + 16);
    v72 = (v17 + 16);
    v71 = (v98 + 8);
    v79 = MEMORY[0x29EDCA190];
    v81 = MEMORY[0x29EDCA190];
    v26 = v94;
    v27 = v95;
    v91 = v10;
    v90 = v17;
    v89 = result;
    while (v25 < *(v24 + 16))
    {
      (*(v10 + 16))(v12, v101 + *(v10 + 72) * v25, v26);
      v28 = sub_29E2BEB94();
      if (*(v28 + 16))
      {
        sub_29DE9DC34(v28 + 32, v109);

        sub_29DEB1BC4(0, &qword_2A1819BD0);
        if (swift_dynamicCast())
        {
          v98 = *(&v106 + 1);
          v97 = v107;
          v96 = v108;
          result = sub_29E2BEB94();
          v29 = result;
          v30 = *(result + 16);
          if (v30)
          {
            v31 = 0;
            v32 = result + 32;
            while (1)
            {
              if (v31 >= *(v29 + 16))
              {
                __break(1u);
                goto LABEL_34;
              }

              sub_29DE9DC34(v32, &v106);
              sub_29DE9DC34(&v106, v105);
              sub_29DEB1BC4(0, &unk_2A181DFD0);
              swift_dynamicCast();
              v33 = v103;
              v34 = v104;
              sub_29DE966D4(&v102, v103);
              v35 = (*(v34 + 24))(v33, v34);
              sub_29DE93B3C(&v102);
              if (v35 == 3)
              {
                break;
              }

              ++v31;
              result = sub_29DE93B3C(&v106);
              v32 += 40;
              if (v30 == v31)
              {
                goto LABEL_13;
              }
            }

            sub_29DE8EE78(&v106, v109);
            v36 = v92;
            v37 = v93;
            v38 = swift_dynamicCast();
            (*v88)(v36, v38 ^ 1u, 1, v37);
            v39 = (*v87)(v36, 1, v37);
            v27 = v95;
            if (v39 == 1)
            {
              v26 = v94;
              (*v99)(v12, v94);

              v17 = v90;
              goto LABEL_14;
            }

            v40 = v84;
            sub_29E15BB20(v36, v84, type metadata accessor for OnboardingEndDateRow);
            if (v82 & 1) != 0 || (v41 = *(v93 + 28), v42 = v80, sub_29E2BCA84(), sub_29E15BC4C(&qword_2A181D9C0, MEMORY[0x29EDB9BC8]), v43 = v83, v44 = sub_29E2C3304(), v45 = *v78, (*v78)(v42, v43), (v44))
            {
              v46 = v96;
              MEMORY[0x29ED7FDC0]();
              if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_29E2C3644();
              }

              sub_29E2C3674();

              sub_29E15CC4C(v40, type metadata accessor for OnboardingEndDateRow);
              v26 = v94;
              result = (*v99)(v12, v94);
              v81 = v110;
            }

            else
            {
              v47 = v40 + v41;
              v48 = v80;
              (*v73)(v80, v47, v83);
              (*v72)(v75, v85, v86);
              v49 = v74;
              sub_29E2C3144();
              v50 = sub_29E2C3164();
              (*v71)(v49, v77);
              v51 = objc_opt_self();
              v52 = sub_29E2BCD84();
              v53 = [v51 hk:v50 noonWithDayIndex:v52 calendar:?];

              v54 = v96;
              v55 = [v54 categoryType];
              v56 = [v54 value];
              v96 = v54;
              v57 = [v54 startDate];
              sub_29E2BCB44();

              v58 = v76;
              v70 = v53;
              sub_29E2BCB44();
              v59 = sub_29E2BCB04();
              v60 = sub_29E2BCB04();
              v61 = [objc_opt_self() categorySampleWithType:v55 value:v56 startDate:v59 endDate:v60];

              v62 = v83;
              v45(v58, v83);
              v45(v48, v62);
              v63 = v79;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v63 = sub_29E14540C(0, v63[2] + 1, 1, v63);
              }

              v65 = v63[2];
              v64 = v63[3];
              v66 = v84;
              v27 = v95;
              if (v65 >= v64 >> 1)
              {
                v63 = sub_29E14540C((v64 > 1), v65 + 1, 1, v63);
              }

              v67 = v96;
              sub_29E15CC4C(v66, type metadata accessor for OnboardingEndDateRow);
              v26 = v94;
              result = (*v99)(v12, v94);
              v63[2] = v65 + 1;
              v79 = v63;
              v68 = &v63[2 * v65];
              v68[4] = v67;
              v68[5] = v61;
            }

            v10 = v91;
            v17 = v90;
          }

          else
          {
LABEL_13:
            v26 = v94;
            (*v99)(v12, v94);

            v36 = v92;
            (*v88)(v92, 1, 1, v93);
            v17 = v90;
            v27 = v95;
LABEL_14:
            result = sub_29E15BB88(v36, &qword_2A18191A0, type metadata accessor for OnboardingEndDateRow);
            v10 = v91;
          }

          v24 = v89;
        }

        else
        {
          result = (*v99)(v12, v26);
        }
      }

      else
      {
        (*v99)(v12, v26);
      }

      if (++v25 == v27)
      {

        v69 = v79;
        goto LABEL_32;
      }
    }

LABEL_34:
    __break(1u);
  }

  else
  {

    v69 = MEMORY[0x29EDCA190];
LABEL_32:
    (*(v17 + 8))(v85, v86);
    return v69;
  }

  return result;
}

uint64_t sub_29E15A674()
{
  v0 = sub_29E2BED44();
  sub_29E15BB0C(*(v0 + qword_2A181DDE0), *(v0 + qword_2A181DDE0 + 8));

  return swift_deallocClassInstance();
}

void sub_29E15A6D0(uint64_t a1, unint64_t a2)
{
  sub_29E15B9CC();
  v6 = v5;
  v7 = *(v5 - 1);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x2A1C7C4A8](v10);
  v13 = &v35 - v12;
  v14 = *(v2 + qword_2A181DDE0 + 8);
  if (v14 != 1)
  {
    if (!v14)
    {

      sub_29E15B008(a1);
    }

    return;
  }

  if (a2 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29E2C4484())
  {
    v16 = 0;
    v40 = i;
    v41 = a2 & 0xC000000000000001;
    v35 = a2 + 32;
    v36 = a2 & 0xFFFFFFFFFFFFFF8;
    v38 = a2;
    v39 = v2;
    v37 = v7;
    v45 = v13;
    while (v41)
    {
      v17 = MEMORY[0x29ED80D70](v16, a2, v11);
      v18 = __OFADD__(v16, 1);
      v19 = v16 + 1;
      if (v18)
      {
        goto LABEL_27;
      }

LABEL_16:
      v43 = v17;
      v44 = v19;
      v20 = sub_29E15AA34(v17);
      v21 = *(v20 + 16);
      if (v21)
      {
        v13 = v6;
        v46 = MEMORY[0x29EDCA190];
        sub_29E181994(0, v21, 0);
        v22 = v46;
        v23 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v24 = v7;
        v42 = v20;
        v25 = v20 + v23;
        v26 = *(v24 + 72);
        do
        {
          v27 = v45;
          sub_29E15BBE4(v25, v45, sub_29E15B9CC);
          sub_29E15BB20(v27, v9, sub_29E15B9CC);
          v28 = *v9;
          v29 = *(v13 + 12);
          v30 = sub_29E2BEBB4();
          (*(*(v30 - 8) + 8))(&v9[v29], v30);
          v46 = v22;
          v32 = *(v22 + 16);
          v31 = *(v22 + 24);
          if (v32 >= v31 >> 1)
          {
            sub_29E181994((v31 > 1), v32 + 1, 1);
            v22 = v46;
          }

          *(v22 + 16) = v32 + 1;
          *(v22 + 8 * v32 + 32) = v28;
          v25 += v26;
          --v21;
        }

        while (v21);

        a2 = v38;
        v2 = v39;
        v6 = v13;
        v7 = v37;
        v33 = *(v22 + 16);
        if (!v33)
        {
          goto LABEL_9;
        }

LABEL_24:
        v34 = v22 + 32;
        do
        {
          v34 += 8;
          sub_29E2BEC34();
          --v33;
        }

        while (v33);
        goto LABEL_9;
      }

      v22 = MEMORY[0x29EDCA190];
      v33 = *(MEMORY[0x29EDCA190] + 16);
      if (v33)
      {
        goto LABEL_24;
      }

LABEL_9:

      v16 = v44;
      if (v44 == v40)
      {
        return;
      }
    }

    if (v16 >= *(v36 + 16))
    {
      goto LABEL_28;
    }

    v17 = *(v35 + 8 * v16);
    v18 = __OFADD__(v16, 1);
    v19 = v16 + 1;
    if (!v18)
    {
      goto LABEL_16;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }
}

uint64_t sub_29E15AA34(uint64_t a1)
{
  v34 = a1;
  sub_29E15B9CC();
  v38 = v1;
  v33 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v35 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v32 - v4;
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v32 - v7;
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v32 - v10;
  result = sub_29E2BEC64();
  v13 = result;
  v37 = *(result + 16);
  if (v37)
  {
    v14 = 0;
    v36 = MEMORY[0x29EDCA190];
    while (1)
    {
      if (v14 >= *(v13 + 16))
      {
        __break(1u);
        return result;
      }

      v15 = sub_29E2BEBB4();
      v16 = *(v15 - 8);
      v17 = v16;
      v18 = v13 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v16 + 72) * v14;
      v19 = v38;
      v20 = *(v38 + 48);
      *v8 = v14;
      (*(v16 + 16))(&v8[v20], v18, v15);
      sub_29E15BB20(v8, v11, sub_29E15B9CC);
      sub_29E15BBE4(v11, v5, sub_29E15B9CC);
      v21 = *(v19 + 48);
      v22 = sub_29E2BEB94();
      (*(v17 + 8))(&v5[v21], v15);
      if (*(v22 + 16))
      {
        sub_29DE9DC34(v22 + 32, v40);

        sub_29DEB1BC4(0, &qword_2A1819BD0);
        if (swift_dynamicCast())
        {
          v23 = v39;
          sub_29DE9A5B4();
          v24 = v23;
          v25 = sub_29E2C40D4();

          if (v25)
          {
            sub_29E15BB20(v11, v35, sub_29E15B9CC);
            v26 = v36;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v41 = v26;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_29E181948(0, *(v26 + 16) + 1, 1);
              v26 = v41;
            }

            v29 = *(v26 + 16);
            v28 = *(v26 + 24);
            v30 = v26;
            if (v29 >= v28 >> 1)
            {
              sub_29E181948(v28 > 1, v29 + 1, 1);
              v30 = v41;
            }

            *(v30 + 16) = v29 + 1;
            v31 = (*(v33 + 80) + 32) & ~*(v33 + 80);
            v36 = v30;
            result = sub_29E15BB20(v35, v30 + v31 + *(v33 + 72) * v29, sub_29E15B9CC);
            goto LABEL_5;
          }
        }
      }

      else
      {
      }

      result = sub_29E15CC4C(v11, sub_29E15B9CC);
LABEL_5:
      if (v37 == ++v14)
      {
        goto LABEL_16;
      }
    }
  }

  v36 = MEMORY[0x29EDCA190];
LABEL_16:

  return v36;
}

uint64_t sub_29E15AE34()
{
  v0 = sub_29E2BEBB4();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_29E2BEC64();
  v5 = *(v4 + 16);
  if (!v5 || ((*(v1 + 16))(v3, v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * (v5 - 1), v0), , v6 = sub_29E2BEB94(), (*(v1 + 8))(v3, v0), !*(v6 + 16)))
  {

    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    goto LABEL_8;
  }

  sub_29DE9DC34(v6 + 32, &v10);

  if (!*(&v11 + 1))
  {
LABEL_8:
    sub_29E15CBDC(&v10, &qword_2A181F8C0, &qword_2A1819BD0, MEMORY[0x29EDC18F8]);
    return 0;
  }

  sub_29DEB1BC4(0, &qword_2A1819BD0);
  if (swift_dynamicCast())
  {
    v7 = v9[41];

    if (v7 == 3)
    {
      return 1;
    }
  }

  return 0;
}