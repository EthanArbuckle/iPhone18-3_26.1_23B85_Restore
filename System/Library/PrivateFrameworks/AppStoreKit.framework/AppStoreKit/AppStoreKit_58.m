uint64_t sub_1E189D600()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA888);
  result = sub_1E1AF6F8C();
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
      sub_1E1AF762C();
      MEMORY[0x1E6900360](v15);
      result = sub_1E1AF767C();
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

uint64_t sub_1E189D820()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB47B0);
  result = sub_1E1AF6F8C();
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
      sub_1E1AF762C();

      sub_1E1AF5F0C();
      result = sub_1E1AF767C();
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

uint64_t sub_1E189DA58()
{
  v1 = v0;
  v32 = sub_1E1AF51EC();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA880);
  v6 = sub_1E1AF6F8C();
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
      sub_1E189EE98(&qword_1ECEBA870, MEMORY[0x1E69AB4A0]);
      result = sub_1E1AF5D0C();
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

uint64_t sub_1E189DD74()
{
  v1 = v0;
  v32 = sub_1E1AF523C();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4790);
  v6 = sub_1E1AF6F8C();
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
      sub_1E189EE98(&unk_1EE1E3670, MEMORY[0x1E69AB4C0]);
      result = sub_1E1AF5D0C();
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

uint64_t sub_1E189E090()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA898);
  result = sub_1E1AF6F8C();
  v4 = result;
  if (*(v2 + 16))
  {
    v27 = v2;
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_17:
      v20 = (*(v2 + 48) + 16 * (v17 | (v5 << 6)));
      v22 = *v20;
      v21 = v20[1];
      sub_1E1AF762C();
      sub_1E13BC260(v22, v21);
      sub_1E13BC260(v22, v21);
      sub_1E1AF5F0C();

      result = sub_1E1AF767C();
      v12 = -1 << *(v4 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v12) >> 6;
        while (++v14 != v24 || (v23 & 1) == 0)
        {
          v25 = v14 == v24;
          if (v14 == v24)
          {
            v14 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v14);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v14 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v4 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v21;
      ++*(v4 + 16);
      v2 = v27;
    }

    v18 = v5;
    while (1)
    {
      v5 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v0;
        goto LABEL_27;
      }

      v19 = *(v6 + 8 * v5);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v9 = (v19 - 1) & v19;
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

uint64_t sub_1E189E454()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA890);
  result = sub_1E1AF6F8C();
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
      sub_1E1AF762C();
      sub_1E1AF5F0C();
      result = sub_1E1AF767C();
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

uint64_t sub_1E189E640()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4798);
  result = sub_1E1AF6F8C();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_1E1AF5DFC();
      sub_1E1AF762C();
      v17 = v16;
      sub_1E1AF5F0C();
      v18 = sub_1E1AF767C();

      v19 = -1 << *(v4 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v17;
      ++*(v4 + 16);
      v2 = v27;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v26;
        goto LABEL_26;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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

uint64_t sub_1E189E894()
{
  v1 = v0;
  v32 = sub_1E1AF31DC();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4750);
  v6 = sub_1E1AF6F8C();
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
      sub_1E189EE98(&qword_1EE1E3C90, MEMORY[0x1E698B288]);
      result = sub_1E1AF5D0C();
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

uint64_t sub_1E189EBB0(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_1E1AF6F8C();
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
      result = sub_1E1AF761C();
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

uint64_t sub_1E189EDA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1E134FD1C(a1, &v4, &qword_1ECEB55B0);
  if (v5)
  {
    return sub_1E1308EC0(&v4, a2);
  }

  __break(1u);
  return result;
}

id sub_1E189EE00(id result, int a2, id a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v8 = a7 >> 29;
  if (a7 >> 29 == 5)
  {

    return result;
  }

  else
  {
    if (v8 == 1)
    {
    }

    else
    {
      if (v8)
      {
        return result;
      }
    }
  }
}

uint64_t sub_1E189EE98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Lockup.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Lockup.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t Lockup.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v184 = a2;
  v158 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v166 = &v155 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v162 = &v155 - v8;
  v178 = sub_1E1AF39DC();
  v169 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v175 = &v155 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v167 = (&v155 - v11);
  v12 = sub_1E1AEFEAC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v155 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_1E1AF380C();
  v16 = *(v176 - 8);
  v17 = MEMORY[0x1EEE9AC00](v176);
  v165 = &v155 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v164 = &v155 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v163 = &v155 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v161 = &v155 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v160 = &v155 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v155 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v155 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v155 - v33;
  v168 = v3;
  *(v3 + 424) = 4;
  v174 = a1;
  sub_1E1AF381C();
  v35 = sub_1E1AF37CC();
  if (v36)
  {
    v179 = v35;
    v180 = v36;
  }

  else
  {
    sub_1E1AEFE9C();
    v37 = sub_1E1AEFE7C();
    v38 = v13;
    v40 = v39;
    (*(v38 + 8))(v15, v12);
    v179 = v37;
    v180 = v40;
  }

  sub_1E1AF6F6C();
  v41 = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v177 = *(v16 + 8);
  v177(v34, v176);
  v42 = v182;
  v43 = v168;
  *(v168 + 448) = v181;
  *(v43 + 464) = v42;
  *(v43 + 480) = v183;
  sub_1E1AF46DC();
  v44 = v174;
  sub_1E1AF381C();
  v45 = v169;
  v171 = *(v169 + 16);
  v172 = v169 + 16;
  v171(v175, v184, v178);
  v46 = v167;
  sub_1E1AF464C();
  v159 = OBJC_IVAR____TtC11AppStoreKit6Lockup_impressionMetrics;
  sub_1E134B7C8(v46, v43 + OBJC_IVAR____TtC11AppStoreKit6Lockup_impressionMetrics);
  sub_1E1AF381C();
  v47 = sub_1E1AF37CC();
  v49 = v48;
  v177(v29, v176);
  if (!v49)
  {
    v99 = sub_1E1AF5A7C();
    sub_1E18A2584(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v100 = 0x64496D616461;
    v100[1] = 0xE600000000000000;
    v100[2] = v158;
    (*(*(v99 - 8) + 104))(v100, *MEMORY[0x1E69AB690], v99);
    swift_willThrow();
    (*(v45 + 8))(v184, v178);
    v177(v44, v176);
    sub_1E134B88C(v43 + 448);
    sub_1E1308058(v43 + v159, &unk_1ECEB1770);
    type metadata accessor for Lockup();
    swift_deallocPartialClassInstance();
    return v43;
  }

  v167 = (v43 + 376);
  *(v43 + 16) = v47;
  *(v43 + 24) = v49;
  sub_1E1AF381C();
  v50 = sub_1E1AF37CC();
  v52 = v51;
  v53 = v177;
  v54 = v176;
  (v177)(v32);
  v55 = v53;
  *(v43 + 32) = v50;
  *(v43 + 40) = v52;
  v56 = type metadata accessor for Artwork();
  sub_1E1AF381C();
  v171(v175, v184, v178);
  v157 = sub_1E18A2584(&qword_1EE1E4BB8, type metadata accessor for Artwork);
  v158 = v56;
  sub_1E1AF464C();
  *(v43 + 48) = v181;
  v57 = v160;
  sub_1E1AF381C();
  LOBYTE(v50) = sub_1E1AF370C();
  v53(v57, v54);
  *(v43 + 56) = v50 & 1;
  sub_1E1AF381C();
  v58 = sub_1E1AF37CC();
  v60 = v59;
  v53(v32, v54);
  *(v43 + 64) = v58;
  *(v43 + 72) = v60;
  sub_1E1AF381C();
  v61 = sub_1E1AF37CC();
  v63 = v62;
  v53(v32, v54);
  *(v43 + 80) = v61;
  *(v43 + 88) = v63;
  sub_1E1AF381C();
  v64 = sub_1E1AF37CC();
  v66 = v65;
  v53(v32, v54);
  *(v43 + 96) = v64;
  *(v43 + 104) = v66;
  sub_1E1AF381C();
  v67 = sub_1E1AF37CC();
  v69 = v68;
  v53(v32, v54);
  *(v43 + 112) = v67;
  *(v43 + 120) = v69;
  sub_1E1AF381C();
  v70 = JSONObject.appStoreColor.getter();
  v53(v32, v54);
  *(v43 + 128) = v70;
  sub_1E1AF381C();
  sub_1E1621670();
  sub_1E1AF36DC();
  v53(v32, v54);
  *(v43 + 136) = v181;
  sub_1E1AF381C();
  v71 = sub_1E1AF37CC();
  v73 = v72;
  v55(v32, v54);
  *(v43 + 144) = v71;
  *(v43 + 152) = v73;
  sub_1E1AF381C();
  v74 = sub_1E1AF37CC();
  v76 = v75;
  v55(v32, v54);
  *(v43 + 184) = v74;
  *(v43 + 192) = v76;
  sub_1E1AF381C();
  v77 = sub_1E1AF37CC();
  v79 = v78;
  v177 = v55;
  v173 = v41;
  v55(v32, v54);
  *(v43 + 216) = v77;
  *(v43 + 224) = v79;
  sub_1E1AF381C();
  v80 = sub_1E1AF37CC();
  v82 = v81;
  v55(v32, v54);
  *(v43 + 200) = v80;
  *(v43 + 208) = v82;
  type metadata accessor for LockupContextMenuData();
  sub_1E1AF381C();
  v83 = v184;
  v84 = v178;
  v85 = v171;
  v171(v175, v184, v178);
  sub_1E18A2584(qword_1EE1ED030, type metadata accessor for LockupContextMenuData);
  sub_1E1AF464C();
  *(v43 + 360) = v181;
  sub_1E1AF381C();
  v86 = v175;
  v85(v175, v83, v84);
  sub_1E17D1100(v32, v86, &v181);
  v87 = v183;
  v88 = v182;
  v89 = v167;
  *v167 = v181;
  v89[1] = v88;
  *(v43 + 408) = v87;
  type metadata accessor for SearchAdOpportunity();
  sub_1E1AF381C();
  v85(v86, v184, v84);
  sub_1E18A2584(&qword_1EE1EE770, type metadata accessor for SearchAdOpportunity);
  sub_1E1AF464C();
  *(v43 + 416) = v181;
  v90 = v161;
  sub_1E1AF381C();
  v91 = v162;
  sub_1E1AF374C();
  v93 = v176;
  v92 = v177;
  v177(v90, v176);
  v94 = sub_1E1AF5A6C();
  v95 = *(v94 - 8);
  v96 = *(v95 + 48);
  v160 = (v95 + 48);
  v156 = v96;
  v97 = v96(v91, 1, v94);
  v161 = v94;
  v155 = v95;
  if (v97 == 1)
  {
    sub_1E1308058(v91, &qword_1ECEB1F90);
    v98 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v101 = v170;
    v102 = sub_1E1AF59FC();
    v170 = v101;
    if (v101)
    {

      v154 = v168;

      sub_1E151F260(*(v154 + 376), *(v154 + 384), *(v154 + 392), *(v154 + 400), *(v154 + 408));

      sub_1E134B88C(v154 + 448);
      sub_1E1308058(v154 + v159, &unk_1ECEB1770);
      type metadata accessor for Lockup();
      swift_deallocPartialClassInstance();
      __break(1u);
      goto LABEL_21;
    }

    v98 = v102;
    (*(v95 + 8))(v91, v94);
  }

  v103 = sub_1E13C48E4(v98);

  v104 = v168;
  *(v168 + 432) = v103;
  sub_1E1AF381C();
  sub_1E18A23E0();
  sub_1E1AF36DC();
  v92(v32, v93);
  v105 = v179;
  swift_beginAccess();
  *(v104 + 424) = v105;
  sub_1E1AF381C();
  v106 = sub_1E1AF37BC();
  v92(v32, v93);
  *(v104 + 160) = v106;
  sub_1E1AF381C();
  v107 = sub_1E1AF37CC();
  v109 = v108;
  v92(v32, v93);
  *(v104 + 168) = v107;
  *(v104 + 176) = v109;
  sub_1E1AF381C();
  v110 = sub_1E1AF37CC();
  v112 = v111;
  v92(v32, v93);
  *(v104 + 248) = v110;
  *(v104 + 256) = v112;
  v167 = type metadata accessor for Action();
  sub_1E1AF381C();
  v113 = v92;
  v114 = v184;
  v115 = static Action.tryToMakeInstance(byDeserializing:using:)(v32, v184);
  v113(v32, v93);
  *(v104 + 232) = v115;
  type metadata accessor for OfferDisplayProperties();
  sub_1E1AF381C();
  v171(v175, v114, v178);
  sub_1E18A2584(&qword_1EE1EC410, type metadata accessor for OfferDisplayProperties);
  sub_1E1AF464C();
  *(v104 + 240) = v179;
  sub_1E1AF381C();
  v116 = static Action.tryToMakeInstance(byDeserializing:using:)(v32, v184);
  v113(v32, v93);
  *(v104 + 264) = v116;
  sub_1E1AF381C();
  v117 = sub_1E1AF37CC();
  v119 = v118;
  v113(v32, v93);
  *(v104 + 272) = v117;
  *(v104 + 280) = v119;
  sub_1E1AF381C();
  v120 = sub_1E1AF37CC();
  v122 = v121;
  v113(v32, v93);
  v93 = v104;
  *(v104 + 288) = v120;
  *(v104 + 296) = v122;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBA8D0);
  sub_1E1AF381C();
  (v171)();
  sub_1E18A2434();
  sub_1E1AF464C();
  v123 = v179;
  if (v179)
  {
    if (v179 >> 62)
    {
      type metadata accessor for Lockup();

      v153 = sub_1E1AF720C();
      swift_bridgeObjectRelease_n();
      v123 = v153;
    }

    else
    {

      sub_1E1AF74DC();
      type metadata accessor for Lockup();
    }
  }

  v124 = v176;
  v125 = v177;
  *(v104 + 304) = v123;
  sub_1E1AF381C();
  v126 = sub_1E1AF37CC();
  v128 = v127;
  v125(v32, v124);
  *(v104 + 312) = v126;
  *(v104 + 320) = v128;
  sub_1E1AF381C();
  v129 = v125;
  v130 = v184;
  v131 = static Action.tryToMakeInstance(byDeserializing:using:)(v32, v184);
  v129(v32, v124);
  *(v104 + 328) = v131;
  sub_1E1AF381C();
  v132 = v175;
  v133 = v178;
  v134 = v171;
  v171(v175, v130, v178);
  sub_1E1AF464C();
  *(v93 + 336) = v179;
  v167 = type metadata accessor for FlowPreviewActionsConfiguration();
  sub_1E1AF381C();
  v134(v132, v130, v133);
  sub_1E18A2584(qword_1EE1E7DB8, type metadata accessor for FlowPreviewActionsConfiguration);
  sub_1E1AF464C();
  *(v93 + 440) = v179;
  v135 = v163;
  sub_1E1AF381C();
  LOBYTE(v131) = sub_1E1AF370C();
  v136 = v176;
  v137 = v177;
  v177(v135, v176);
  *(v93 + 368) = v131 & 1;
  v138 = v164;
  sub_1E1AF381C();
  LOBYTE(v131) = sub_1E1AF370C();
  v137(v138, v136);
  *(v93 + 369) = v131 & 1;
  v139 = v165;
  sub_1E1AF381C();
  v140 = v166;
  sub_1E1AF374C();
  v141 = v139;
  v142 = v136;
  v137(v141, v136);
  v143 = v161;
  if (v156(v140, 1, v161) == 1)
  {
    sub_1E1308058(v140, &qword_1ECEB1F90);
    v144 = MEMORY[0x1E69E7CC0];
    v145 = v184;
    v146 = v178;
    v147 = v169;
LABEL_17:
    *(v93 + 344) = v144;
    v150 = v174;
    sub_1E1AF381C();
    sub_1E18A24E8();
    sub_1E1AF36DC();
    (*(v147 + 8))(v145, v146);
    v151 = v177;
    v177(v150, v142);
    v151(v32, v142);
    *(v93 + 352) = v179 & 1;
    return v93;
  }

  v148 = v170;
  v149 = sub_1E1AF59FC();
  v147 = v169;
  v170 = v148;
  if (!v148)
  {
    v144 = v149;
    (*(v155 + 8))(v140, v143);
    v145 = v184;
    v146 = v178;
    goto LABEL_17;
  }

LABEL_21:

  sub_1E151F260(*(v93 + 376), *(v93 + 384), *(v93 + 392), *(v93 + 400), *(v93 + 408));

  sub_1E134B88C(v93 + 448);
  sub_1E1308058(v93 + v159, &unk_1ECEB1770);
  type metadata accessor for Lockup();
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t Lockup.init(id:adamId:bundleId:icon:isEditorsChoice:heading:title:subtitle:subtitleTextColor:subtitleTextFilter:developerTagline:editorialTagline:editorialDescription:shortEditorialDescription:ordinal:rating:ratingCount:ageRating:shelfBackground:searchAdOpportunity:buttonAction:offerDisplayProperties:clickAction:crossLinkTitle:crossLinkSubtitle:children:tertiaryTitle:tertiaryTitleAction:tertiaryTitleArtwork:tertiaryTitleIcons:tertiaryIconPlacement:flowPreviewActionsConfiguration:contextMenuData:decorations:includeBetaApps:impressionMetrics:useAdsLocale:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, __int128 *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char *a45, uint64_t a46, uint64_t a47, uint64_t a48, unsigned __int8 a49, uint64_t a50, unsigned __int8 a51)
{
  v52 = v51;
  v121 = a8;
  v119 = a7;
  v125 = a6;
  v117 = a5;
  v115 = a4;
  v114 = a3;
  v143 = a50;
  v145 = a49;
  v146 = a51;
  v132 = a48;
  v130 = a47;
  v144 = a44;
  v141 = a42;
  v142 = a43;
  v139 = a40;
  v140 = a41;
  v137 = a38;
  v138 = a39;
  v136 = a37;
  v135 = a36;
  v133 = a35;
  v131 = a34;
  v129 = a33;
  v128 = a32;
  v124 = a31;
  v127 = a28;
  v126 = a27;
  v123 = a26;
  v120 = a25;
  v107 = a24;
  v106 = a23;
  v122 = a22;
  v113 = a21;
  v112 = a20;
  v111 = a19;
  v110 = a18;
  v118 = a17;
  v109 = a16;
  v108 = a15;
  v105 = a12;
  v104 = a11;
  v103 = a10;
  v102 = a9;
  v134 = a46;
  v116 = a29;
  v101 = a13;
  v55 = sub_1E1AEFEAC();
  v56 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v97 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = *a2;
  v98 = a2[1];
  v60 = a1;
  v61 = *a14;
  v62 = *a30;
  v99 = a30[1];
  v100 = v62;
  v63 = *(a30 + 16);
  v64 = *a45;
  *(v52 + 424) = 4;
  sub_1E134FD1C(v60, &v149, &unk_1ECEB5670);
  if (*(&v150 + 1))
  {
    v152 = v149;
    v153 = v150;
    v154 = v151;
  }

  else
  {
    sub_1E1AEFE9C();
    v65 = sub_1E1AEFE7C();
    v97 = v59;
    v66 = v61;
    v67 = v63;
    v68 = v60;
    v69 = v65;
    v71 = v70;
    (*(v56 + 8))(v58, v55);
    v147 = v69;
    v148 = v71;
    v60 = v68;
    v63 = v67;
    v61 = v66;
    v59 = v97;
    sub_1E1AF6F6C();
    sub_1E1308058(&v149, &unk_1ECEB5670);
  }

  v72 = v153;
  *(v52 + 448) = v152;
  *(v52 + 464) = v72;
  *(v52 + 480) = v154;
  v73 = v143;
  sub_1E134FD1C(v143, v52 + OBJC_IVAR____TtC11AppStoreKit6Lockup_impressionMetrics, &unk_1ECEB1770);
  v74 = v98;
  *(v52 + 16) = v59;
  *(v52 + 24) = v74;
  v75 = v115;
  *(v52 + 32) = v114;
  *(v52 + 40) = v75;
  *(v52 + 48) = v117;
  v76 = v107;
  *(v52 + 64) = v106;
  *(v52 + 72) = v76;
  v77 = v121;
  *(v52 + 80) = v119;
  *(v52 + 88) = v77;
  v78 = v103;
  *(v52 + 96) = v102;
  *(v52 + 104) = v78;
  v79 = v105;
  *(v52 + 112) = v104;
  *(v52 + 120) = v79;
  *(v52 + 128) = v101;
  *(v52 + 56) = v125 & 1;
  *(v52 + 136) = v61;
  v80 = v109;
  *(v52 + 144) = v108;
  *(v52 + 152) = v80;
  v81 = v111;
  *(v52 + 192) = v110;
  *(v52 + 200) = v81;
  v82 = v113;
  *(v52 + 208) = v112;
  *(v52 + 216) = v82;
  v83 = v99;
  *(v52 + 376) = v100;
  *(v52 + 392) = v83;
  *(v52 + 408) = v63;
  *(v52 + 360) = v130;
  *(v52 + 416) = v124;
  *(v52 + 432) = v132;
  v84 = v123;
  *(v52 + 160) = v120;
  *(v52 + 168) = v84;
  v85 = v118;
  *(v52 + 176) = v126;
  *(v52 + 184) = v85;
  v86 = v128;
  *(v52 + 224) = v122;
  *(v52 + 232) = v86;
  v87 = v127;
  *(v52 + 240) = v129;
  *(v52 + 248) = v87;
  v88 = v131;
  *(v52 + 256) = v116;
  *(v52 + 264) = v88;
  v89 = v135;
  *(v52 + 272) = v133;
  *(v52 + 280) = v89;
  v90 = v137;
  v91 = v138;
  *(v52 + 288) = v136;
  *(v52 + 296) = v90;
  v92 = v139;
  v93 = v140;
  *(v52 + 304) = v91;
  *(v52 + 312) = v92;
  v95 = v141;
  v94 = v142;
  *(v52 + 320) = v93;
  *(v52 + 328) = v95;
  *(v52 + 336) = v94;
  sub_1E1308058(v73, &unk_1ECEB1770);
  sub_1E1308058(v60, &unk_1ECEB5670);
  *(v52 + 344) = v144;
  *(v52 + 352) = v64 & 1;
  *(v52 + 440) = v134;
  *(v52 + 368) = v145 & 1;
  *(v52 + 369) = v146 & 1;
  return v52;
}

uint64_t Lockup.deinit()
{

  sub_1E151F260(*(v0 + 376), *(v0 + 384), *(v0 + 392), *(v0 + 400), *(v0 + 408));

  sub_1E134B88C(v0 + 448);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Lockup_impressionMetrics, &unk_1ECEB1770);
  return v0;
}

uint64_t sub_1E18A0F04@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for Lockup();
  *a1 = v1;
}

uint64_t sub_1E18A0F48@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 424);
  return result;
}

uint64_t sub_1E18A0F8C(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 424) = v2;
  return result;
}

uint64_t sub_1E18A1054(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 432) = a1;
}

uint64_t sub_1E18A10EC()
{
  sub_1E1AF6FEC();
  v1 = sub_1E1AF772C();

  v12 = v1;
  MEMORY[0x1E68FECA0](539828256, 0xE400000000000000);
  MEMORY[0x1E68FECA0](v0[2], v0[3]);
  MEMORY[0x1E68FECA0](93, 0xE100000000000000);
  MEMORY[0x1E68FECA0](0x5B2064496D616441, 0xE800000000000000);

  MEMORY[0x1E68FECA0](0x6964616548202D20, 0xEC000000203A676ELL);
  v2 = v0[11];
  if (v2)
  {
    v3 = v0[10];
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = v0[11];
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  MEMORY[0x1E68FECA0](v3, v4);

  MEMORY[0x1E68FECA0](0x3A656C746974202CLL, 0xE900000000000020);
  v5 = v0[13];
  if (v5)
  {
    v6 = v0[12];
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = v0[13];
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  MEMORY[0x1E68FECA0](v6, v7);

  MEMORY[0x1E68FECA0](0x746974627573202CLL, 0xEB000000003A656CLL);
  v8 = v0[15];
  if (v8)
  {
    v9 = v0[14];
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = v0[15];
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  MEMORY[0x1E68FECA0](v9, v10);

  MEMORY[0x1E68FECA0](41, 0xE100000000000000);
  return v12;
}

uint64_t type metadata accessor for Lockup()
{
  result = qword_1EE1E4F48;
  if (!qword_1EE1E4F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Lockup.__allocating_init(id:adamId:bundleId:icon:isEditorsChoice:heading:title:subtitle:subtitleTextColor:subtitleTextFilter:developerTagline:editorialTagline:editorialDescription:shortEditorialDescription:ordinal:rating:ratingCount:ageRating:shelfBackground:searchAdOpportunity:buttonAction:offerDisplayProperties:clickAction:crossLinkTitle:crossLinkSubtitle:children:tertiaryTitle:tertiaryTitleAction:tertiaryTitleArtwork:tertiaryTitleIcons:tertiaryIconPlacement:flowPreviewActionsConfiguration:contextMenuData:decorations:includeBetaApps:impressionMetrics:useAdsLocale:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, __int128 *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char *a45, uint64_t a46, uint64_t a47, uint64_t a48, unsigned __int8 a49, uint64_t a50, unsigned __int8 a51)
{
  v122 = a8;
  v120 = a7;
  v126 = a6;
  v118 = a5;
  v116 = a4;
  v115 = a3;
  v144 = a50;
  v146 = a49;
  v147 = a51;
  v133 = a48;
  v131 = a47;
  v145 = a44;
  v142 = a42;
  v143 = a43;
  v140 = a40;
  v141 = a41;
  v138 = a38;
  v139 = a39;
  v136 = a36;
  v137 = a37;
  v134 = a35;
  v132 = a34;
  v130 = a33;
  v129 = a32;
  v125 = a31;
  v128 = a28;
  v127 = a27;
  v124 = a26;
  v121 = a25;
  v108 = a24;
  v107 = a23;
  v123 = a22;
  v114 = a21;
  v113 = a20;
  v112 = a19;
  v111 = a18;
  v119 = a17;
  v110 = a16;
  v109 = a15;
  v106 = a12;
  v105 = a11;
  v104 = a10;
  v103 = a9;
  v135 = a46;
  v117 = a29;
  v102 = a13;
  v53 = sub_1E1AEFEAC();
  v54 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v98 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = swift_allocObject();
  v58 = *a2;
  v99 = a2[1];
  v59 = a1;
  v60 = *a14;
  v61 = *a30;
  v100 = a30[1];
  v101 = v61;
  v62 = *(a30 + 16);
  v63 = *a45;
  *(v57 + 424) = 4;
  sub_1E134FD1C(v59, &v150, &unk_1ECEB5670);
  if (*(&v151 + 1))
  {
    v64 = v151;
    *(v57 + 448) = v150;
    *(v57 + 464) = v64;
    *(v57 + 480) = v152;
  }

  else
  {
    sub_1E1AEFE9C();
    v65 = sub_1E1AEFE7C();
    v98 = v58;
    v66 = v60;
    v67 = v62;
    v68 = v63;
    v69 = v59;
    v70 = v65;
    v72 = v71;
    (*(v54 + 8))(v56, v53);
    v148 = v70;
    v149 = v72;
    v59 = v69;
    v63 = v68;
    v62 = v67;
    v60 = v66;
    v58 = v98;
    sub_1E1AF6F6C();
    sub_1E1308058(&v150, &unk_1ECEB5670);
  }

  v73 = v144;
  sub_1E134FD1C(v144, v57 + OBJC_IVAR____TtC11AppStoreKit6Lockup_impressionMetrics, &unk_1ECEB1770);
  v74 = v99;
  *(v57 + 16) = v58;
  *(v57 + 24) = v74;
  v75 = v116;
  *(v57 + 32) = v115;
  *(v57 + 40) = v75;
  *(v57 + 48) = v118;
  v76 = v108;
  *(v57 + 64) = v107;
  *(v57 + 72) = v76;
  v77 = v122;
  *(v57 + 80) = v120;
  *(v57 + 88) = v77;
  v78 = v104;
  *(v57 + 96) = v103;
  *(v57 + 104) = v78;
  v79 = v106;
  *(v57 + 112) = v105;
  *(v57 + 120) = v79;
  *(v57 + 128) = v102;
  *(v57 + 56) = v126 & 1;
  *(v57 + 136) = v60;
  v80 = v110;
  *(v57 + 144) = v109;
  *(v57 + 152) = v80;
  v81 = v112;
  *(v57 + 192) = v111;
  *(v57 + 200) = v81;
  v82 = v114;
  *(v57 + 208) = v113;
  *(v57 + 216) = v82;
  v83 = v100;
  *(v57 + 376) = v101;
  *(v57 + 392) = v83;
  *(v57 + 408) = v62;
  *(v57 + 360) = v131;
  *(v57 + 416) = v125;
  *(v57 + 432) = v133;
  v84 = v124;
  *(v57 + 160) = v121;
  *(v57 + 168) = v84;
  v85 = v119;
  *(v57 + 176) = v127;
  *(v57 + 184) = v85;
  v86 = v129;
  *(v57 + 224) = v123;
  *(v57 + 232) = v86;
  v87 = v128;
  *(v57 + 240) = v130;
  *(v57 + 248) = v87;
  v88 = v132;
  *(v57 + 256) = v117;
  *(v57 + 264) = v88;
  v89 = v136;
  v90 = v137;
  *(v57 + 272) = v134;
  *(v57 + 280) = v89;
  v91 = v138;
  v92 = v139;
  *(v57 + 288) = v90;
  *(v57 + 296) = v91;
  v93 = v140;
  v94 = v141;
  *(v57 + 304) = v92;
  *(v57 + 312) = v93;
  v96 = v142;
  v95 = v143;
  *(v57 + 320) = v94;
  *(v57 + 328) = v96;
  *(v57 + 336) = v95;
  sub_1E1308058(v73, &unk_1ECEB1770);
  sub_1E1308058(v59, &unk_1ECEB5670);
  *(v57 + 344) = v145;
  *(v57 + 352) = v63 & 1;
  *(v57 + 440) = v135;
  *(v57 + 368) = v146 & 1;
  *(v57 + 369) = v147 & 1;
  return v57;
}

uint64_t Lockup.__allocating_init(removingActions:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v30 - v3;
  v38 = &v30 - v3;
  v70 = 0;
  memset(v69, 0, sizeof(v69));
  v5 = *(a1 + 24);
  v68[0] = *(a1 + 16);
  v68[1] = v5;
  v6 = *(a1 + 40);
  v57 = *(a1 + 32);
  v63 = v6;
  v42 = *(a1 + 48);
  v56 = *(a1 + 56);
  v7 = *(a1 + 88);
  v55 = *(a1 + 80);
  v41 = v7;
  v8 = *(a1 + 104);
  v54 = *(a1 + 96);
  v40 = v8;
  v9 = *(a1 + 120);
  v53 = *(a1 + 112);
  v62 = v9;
  v60 = *(a1 + 128);
  v67 = *(a1 + 136);
  v10 = *(a1 + 152);
  v52 = *(a1 + 144);
  v11 = *(a1 + 200);
  v58 = *(a1 + 192);
  v59 = v10;
  v51 = v11;
  v12 = *(a1 + 216);
  v30 = *(a1 + 208);
  v50 = v12;
  v13 = *(a1 + 224);
  v14 = *(a1 + 72);
  v48 = *(a1 + 64);
  v15 = *(a1 + 168);
  v34 = *(a1 + 160);
  v46 = v15;
  v16 = *(a1 + 176);
  v49 = *(a1 + 184);
  v17 = *(a1 + 256);
  v44 = *(a1 + 248);
  v18 = *(a1 + 320);
  v43 = *(a1 + 312);
  v37 = v18;
  v66 = *(a1 + 352);
  v19 = *(a1 + 336);
  v31 = *(a1 + 328);
  v35 = v19;
  v36 = *(a1 + 344);
  v33 = *(a1 + 360);
  v39 = *(a1 + 368);
  sub_1E134FD1C(a1 + OBJC_IVAR____TtC11AppStoreKit6Lockup_impressionMetrics, v4, &unk_1ECEB1770);
  v32 = *(a1 + 369);
  memset(v64, 0, sizeof(v64));
  v65 = 0x8000;
  v47 = v61 + 392;
  v45 = *(v61 + 392);

  v20 = v60;

  v21 = v30;

  v22 = v34;
  v23 = v34;

  v24 = v37;

  v25 = v31;

  v26 = v35;

  v28 = v45(v69, v68, v57, v63, v42, v56, v55, v41, v54, v40, v53, v62, v60, &v67, v52, v59, v49, v58, v51, v21, v50, v13, v48, v14, v22, v46, v16, v44, v17, v64, 0, 0, 0, 0, 0, 0, 0, 0, 0, v43, v24, v25, v26, v27, &v66, 0, v33, MEMORY[0x1E69E7CD0], v39, v38, v32);

  return v28;
}

uint64_t Lockup.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t Lockup.bundleId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Lockup.ordinal.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t Lockup.heading.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t Lockup.title.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t Lockup.subtitle.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

void *Lockup.subtitleTextColor.getter()
{
  v1 = *(v0 + 128);
  v2 = v1;
  return v1;
}

uint64_t Lockup.developerTagline.getter()
{
  v1 = *(v0 + 144);

  return v1;
}

void *Lockup.rating.getter()
{
  v1 = *(v0 + 160);
  v2 = v1;
  return v1;
}

uint64_t Lockup.ratingCount.getter()
{
  v1 = *(v0 + 168);

  return v1;
}

uint64_t Lockup.editorialTagline.getter()
{
  v1 = *(v0 + 184);

  return v1;
}

uint64_t Lockup.editorialDescription.getter()
{
  v1 = *(v0 + 200);

  return v1;
}

uint64_t Lockup.shortEditorialDescription.getter()
{
  v1 = *(v0 + 216);

  return v1;
}

uint64_t Lockup.ageRating.getter()
{
  v1 = *(v0 + 248);

  return v1;
}

uint64_t Lockup.crossLinkTitle.getter()
{
  v1 = *(v0 + 272);

  return v1;
}

uint64_t Lockup.crossLinkSubtitle.getter()
{
  v1 = *(v0 + 288);

  return v1;
}

uint64_t Lockup.tertiaryTitle.getter()
{
  v1 = *(v0 + 312);

  return v1;
}

id Lockup.shelfBackground.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 376);
  v3 = *(v1 + 384);
  v4 = *(v1 + 392);
  v5 = *(v1 + 400);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 408);
  *(a1 + 32) = v6;
  return sub_1E151F120(v2, v3, v4, v5, v6);
}

uint64_t sub_1E18A2118(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 432) = v2;
}

uint64_t Lockup.__deallocating_deinit()
{
  Lockup.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E18A222C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 384))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1E18A2274@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for Lockup();
  *a1 = v3;
}

id sub_1E18A22BC@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *(*v1 + 384);
  v5 = *(*v1 + 392);
  v6 = *(*v1 + 400);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v7 = *(v2 + 408);
  *(a1 + 32) = v7;
  return sub_1E151F120(v3, v4, v5, v6, v7);
}

uint64_t sub_1E18A2338@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = swift_beginAccess();
  *a1 = *(v3 + 424);
  return result;
}

unint64_t sub_1E18A23E0()
{
  result = qword_1EE1F3D68[0];
  if (!qword_1EE1F3D68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1F3D68);
  }

  return result;
}

unint64_t sub_1E18A2434()
{
  result = qword_1EE1D2680;
  if (!qword_1EE1D2680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBA8D0);
    sub_1E18A2584(&qword_1EE1F29C8, type metadata accessor for MixedMediaLockup);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D2680);
  }

  return result;
}

unint64_t sub_1E18A24E8()
{
  result = qword_1EE1DA7B8;
  if (!qword_1EE1DA7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DA7B8);
  }

  return result;
}

uint64_t sub_1E18A2584(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E18A25D4()
{
  sub_1E134EAF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of Lockup.__allocating_init(id:adamId:bundleId:icon:isEditorsChoice:heading:title:subtitle:subtitleTextColor:subtitleTextFilter:developerTagline:editorialTagline:editorialDescription:shortEditorialDescription:ordinal:rating:ratingCount:ageRating:shelfBackground:searchAdOpportunity:buttonAction:offerDisplayProperties:clickAction:crossLinkTitle:crossLinkSubtitle:children:tertiaryTitle:tertiaryTitleAction:tertiaryTitleArtwork:tertiaryTitleIcons:tertiaryIconPlacement:flowPreviewActionsConfiguration:contextMenuData:decorations:includeBetaApps:impressionMetrics:useAdsLocale:)()
{
  v1 = *(v0 + 392);

  return v1();
}

AppStoreKit::SheetActionStyle_optional __swiftcall SheetActionStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t SheetActionStyle.rawValue.getter()
{
  if (*v0)
  {
    return 0x5474756F68746977;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_1E18A2B58(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x5474756F68746977;
  }

  else
  {
    v3 = 0x746C7561666564;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xEC000000656C7469;
  }

  if (*a2)
  {
    v5 = 0x5474756F68746977;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (*a2)
  {
    v6 = 0xEC000000656C7469;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E1AF74AC();
  }

  return v8 & 1;
}

uint64_t sub_1E18A2C08()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E18A2C94()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E18A2D0C()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E18A2D94@<X0>(char *a1@<X8>)
{
  v2 = sub_1E1AF72FC();

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

void sub_1E18A2DF4(uint64_t *a1@<X8>)
{
  v2 = 0x746C7561666564;
  if (*v1)
  {
    v2 = 0x5474756F68746977;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEC000000656C7469;
  }

  *a1 = v2;
  a1[1] = v3;
}

void *SheetAction.__allocating_init(actions:title:actionMetrics:message:isCancelable:cancelTitle:checkedIndex:destructiveActionIndex:isCustom:style:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, unsigned __int8 a13, unsigned __int8 a14, _BYTE *a15)
{
  v50 = a2;
  v51 = a3;
  v48 = a13;
  v49 = a14;
  v46 = a4;
  v47 = a15;
  v20 = sub_1E1AEFEAC();
  v44 = *(v20 - 8);
  v45 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v43 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  *(v22 + OBJC_IVAR____TtC11AppStoreKit11SheetAction_actions) = a1;
  v23 = (v22 + OBJC_IVAR____TtC11AppStoreKit11SheetAction_message);
  *v23 = a5;
  v23[1] = a6;
  *(v22 + OBJC_IVAR____TtC11AppStoreKit11SheetAction_isCancelable) = a7;
  v24 = (v22 + OBJC_IVAR____TtC11AppStoreKit11SheetAction_cancelTitle);
  *v24 = a8;
  v24[1] = a9;
  v25 = v22 + OBJC_IVAR____TtC11AppStoreKit11SheetAction_checkedIndex;
  *v25 = a10;
  v25[8] = a11 & 1;
  v26 = v22 + OBJC_IVAR____TtC11AppStoreKit11SheetAction_destructiveActionIndex;
  *v26 = a12;
  v26[8] = v48 & 1;
  *(v22 + OBJC_IVAR____TtC11AppStoreKit11SheetAction_isCustom) = v49;
  v27 = v46;
  *(v22 + OBJC_IVAR____TtC11AppStoreKit11SheetAction_style) = *v47;
  v58 = 0;
  memset(v57, 0, sizeof(v57));
  v28 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v29 = sub_1E1AF3E1C();
  v30 = *(v29 - 8);
  (*(v30 + 16))(v22 + v28, v27, v29);
  v31 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v32 = sub_1E1AF46DC();
  (*(*(v32 - 8) + 56))(v22 + v31, 1, 1, v32);
  v33 = (v22 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v33 = 0u;
  v33[1] = 0u;
  v34 = v22 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E138853C(v57, &v54);
  if (*(&v55 + 1))
  {
    v35 = v55;
    *v34 = v54;
    *(v34 + 1) = v35;
    *(v34 + 4) = v56;
  }

  else
  {
    v36 = v43;
    sub_1E1AEFE9C();
    v37 = sub_1E1AEFE7C();
    v39 = v38;
    (*(v44 + 8))(v36, v45);
    v52 = v37;
    v53 = v39;
    sub_1E1AF6F6C();
    sub_1E1308058(&v54, &unk_1ECEB5670);
  }

  (*(v30 + 8))(v27, v29);
  sub_1E1308058(v57, &unk_1ECEB5670);
  v40 = v51;
  v22[2] = v50;
  v22[3] = v40;
  v22[4] = 0;
  v22[5] = 0;
  return v22;
}

void *SheetAction.init(actions:title:actionMetrics:message:isCancelable:cancelTitle:checkedIndex:destructiveActionIndex:isCustom:style:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12, unsigned __int8 a13, unsigned __int8 a14, _BYTE *a15)
{
  v16 = v15;
  v49 = a8;
  v48 = a7;
  v45 = a6;
  v54 = a2;
  v55 = a3;
  v52 = a13;
  v53 = a14;
  v50 = a12;
  v47 = a11;
  v46 = a10;
  v51 = a15;
  v44 = sub_1E1AEFEAC();
  v43 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v43 - v23;
  v25 = sub_1E1AF3E1C();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v16 + OBJC_IVAR____TtC11AppStoreKit11SheetAction_actions) = a1;
  v29 = (v16 + OBJC_IVAR____TtC11AppStoreKit11SheetAction_message);
  v30 = v45;
  *v29 = a5;
  v29[1] = v30;
  *(v16 + OBJC_IVAR____TtC11AppStoreKit11SheetAction_isCancelable) = v48;
  v31 = (v16 + OBJC_IVAR____TtC11AppStoreKit11SheetAction_cancelTitle);
  *v31 = v49;
  v31[1] = a9;
  v32 = v16 + OBJC_IVAR____TtC11AppStoreKit11SheetAction_checkedIndex;
  *v32 = v46;
  v32[8] = v47 & 1;
  v33 = v16 + OBJC_IVAR____TtC11AppStoreKit11SheetAction_destructiveActionIndex;
  *v33 = v50;
  v33[8] = v52 & 1;
  *(v16 + OBJC_IVAR____TtC11AppStoreKit11SheetAction_isCustom) = v53;
  *(v16 + OBJC_IVAR____TtC11AppStoreKit11SheetAction_style) = *v51;
  v65 = 0;
  memset(v64, 0, sizeof(v64));
  (*(v26 + 16))(v28, a4, v25);
  v34 = sub_1E1AF46DC();
  (*(*(v34 - 8) + 56))(v24, 1, 1, v34);
  v35 = (v16 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v35 = 0u;
  v35[1] = 0u;
  sub_1E138853C(v64, &v58);
  if (*(&v59 + 1))
  {
    v61 = v58;
    v62 = v59;
    v63 = v60;
  }

  else
  {
    sub_1E1AEFE9C();
    v36 = sub_1E1AEFE7C();
    v38 = v37;
    (*(v43 + 8))(v21, v44);
    v56 = v36;
    v57 = v38;
    sub_1E1AF6F6C();
    sub_1E1308058(&v58, &unk_1ECEB5670);
  }

  (*(v26 + 8))(a4, v25);
  sub_1E1308058(v64, &unk_1ECEB5670);
  v39 = v16 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v39 + 4) = v63;
  v40 = v62;
  *v39 = v61;
  *(v39 + 1) = v40;
  sub_1E134B7C8(v24, v16 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v41 = v55;
  v16[2] = v54;
  v16[3] = v41;
  v16[4] = 0;
  v16[5] = 0;
  (*(v26 + 32))(v16 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v28, v25);
  return v16;
}

char *SheetAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v70 = a2;
  v3 = sub_1E1AF39DC();
  v67 = *(v3 - 8);
  v68 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v66 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v58 - v6;
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v65 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v63 = &v58 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v58 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v60 = &v58 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v58 - v19;
  v21 = sub_1E1AF5A6C();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v61 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a1;
  sub_1E1AF381C();
  sub_1E1AF374C();
  v64 = v9;
  v24 = *(v9 + 8);
  v24(v20, v8);
  if ((*(v22 + 48))(v7, 1, v21) == 1)
  {
    sub_1E1308058(v7, &qword_1ECEB1F90);
    v25 = v71;
    *(v71 + OBJC_IVAR____TtC11AppStoreKit11SheetAction_actions) = MEMORY[0x1E69E7CC0];
    *(v25 + OBJC_IVAR____TtC11AppStoreKit11SheetAction_isCancelable) = 1;
    v26 = v62;
  }

  else
  {
    v27 = *(v22 + 32);
    v59 = v21;
    v27();
    v28 = type metadata accessor for Action();
    v29 = MEMORY[0x1EEE9AC00](v28);
    v31 = v69;
    v30 = v70;
    *(&v58 - 2) = v29;
    *(&v58 - 1) = v30;
    v32 = sub_1E1AF59FC();
    v69 = v31;
    *(v71 + OBJC_IVAR____TtC11AppStoreKit11SheetAction_actions) = v32;
    v33 = v60;
    v26 = v62;
    sub_1E1AF381C();
    v34 = sub_1E1AF370C();
    v24(v33, v8);
    (*(v22 + 8))(v61, v59);
    *(v71 + OBJC_IVAR____TtC11AppStoreKit11SheetAction_isCancelable) = (v34 == 2) | v34 & 1;
  }

  sub_1E1AF381C();
  v35 = sub_1E1AF37CC();
  v37 = v36;
  v24(v16, v8);
  v38 = v71;
  v39 = (v71 + OBJC_IVAR____TtC11AppStoreKit11SheetAction_message);
  *v39 = v35;
  v39[1] = v37;
  sub_1E1AF381C();
  v40 = sub_1E1AF36EC();
  LOBYTE(v37) = v41;
  v24(v16, v8);
  v42 = v38 + OBJC_IVAR____TtC11AppStoreKit11SheetAction_checkedIndex;
  *v42 = v40;
  *(v42 + 8) = v37 & 1;
  sub_1E1AF381C();
  v43 = sub_1E1AF36EC();
  LOBYTE(v37) = v44;
  v24(v16, v8);
  v45 = v38 + OBJC_IVAR____TtC11AppStoreKit11SheetAction_destructiveActionIndex;
  *v45 = v43;
  *(v45 + 8) = v37 & 1;
  v46 = v63;
  sub_1E1AF381C();
  LOBYTE(v43) = sub_1E1AF370C();
  v24(v46, v8);
  *(v38 + OBJC_IVAR____TtC11AppStoreKit11SheetAction_isCustom) = v43 & 1;
  sub_1E1AF381C();
  sub_1E18A4020();
  sub_1E1AF369C();
  v24(v16, v8);
  *(v38 + OBJC_IVAR____TtC11AppStoreKit11SheetAction_style) = v72;
  sub_1E1AF381C();
  v47 = sub_1E1AF37CC();
  v49 = v48;
  v24(v16, v8);
  v50 = (v38 + OBJC_IVAR____TtC11AppStoreKit11SheetAction_cancelTitle);
  *v50 = v47;
  v50[1] = v49;
  v51 = v65;
  (*(v64 + 16))(v65, v26, v8);
  v52 = v26;
  v53 = v66;
  v54 = v67;
  v55 = v68;
  (*(v67 + 16))(v66, v70, v68);
  v56 = Action.init(deserializing:using:)(v51, v53);
  v24(v52, v8);
  (*(v54 + 8))(v70, v55);
  return v56;
}

uint64_t SheetAction.cancelTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit11SheetAction_cancelTitle);

  return v1;
}

uint64_t SheetAction.message.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit11SheetAction_message);

  return v1;
}

uint64_t sub_1E18A3E68()
{
}

uint64_t SheetAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return v0;
}

uint64_t SheetAction.__deallocating_deinit()
{
  SheetAction.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1E18A4020()
{
  result = qword_1EE1DEE08;
  if (!qword_1EE1DEE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DEE08);
  }

  return result;
}

unint64_t sub_1E18A4078()
{
  result = qword_1ECEBA8D8;
  if (!qword_1ECEBA8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA8D8);
  }

  return result;
}

uint64_t type metadata accessor for SheetAction()
{
  result = qword_1EE1F6628;
  if (!qword_1EE1F6628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SponsoredSearchSession.__allocating_init(term:requestData:advertPipeline:)(uint64_t a1, uint64_t a2, _OWORD *a3, __int128 *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = a3[1];
  *(v8 + 32) = *a3;
  *(v8 + 48) = v9;
  v10 = a3[3];
  *(v8 + 64) = a3[2];
  *(v8 + 80) = v10;
  sub_1E1308EC0(a4, v8 + 96);
  return v8;
}

uint64_t SponsoredSearchSession.init(term:requestData:advertPipeline:)(uint64_t a1, uint64_t a2, _OWORD *a3, __int128 *a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = a3[1];
  *(v4 + 32) = *a3;
  *(v4 + 48) = v5;
  v6 = a3[3];
  *(v4 + 64) = a3[2];
  *(v4 + 80) = v6;
  sub_1E1308EC0(a4, v4 + 96);
  return v4;
}

uint64_t SponsoredSearchSession.term.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SponsoredSearchSession.requestData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v7[0] = v1[2];
  v7[1] = v2;
  v4 = v1[5];
  v8 = v1[4];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1E18A4340(v7, &v6);
}

uint64_t SponsoredSearchSession.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  return v0;
}

uint64_t SponsoredSearchSession.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 96);

  return swift_deallocClassInstance();
}

AppStoreKit::UnifiedMessage::DeliveryMethod_optional __swiftcall UnifiedMessage.DeliveryMethod.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t UnifiedMessage.DeliveryMethod.rawValue.getter()
{
  if (*v0)
  {
    return 0x50646E4168737570;
  }

  else
  {
    return 0x796C6E4F6C6C7570;
  }
}

uint64_t sub_1E18A4588(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x50646E4168737570;
  }

  else
  {
    v3 = 0x796C6E4F6C6C7570;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEB000000006C6C75;
  }

  if (*a2)
  {
    v5 = 0x50646E4168737570;
  }

  else
  {
    v5 = 0x796C6E4F6C6C7570;
  }

  if (*a2)
  {
    v6 = 0xEB000000006C6C75;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E1AF74AC();
  }

  return v8 & 1;
}

uint64_t sub_1E18A4638()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E18A46C4()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E18A473C()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E18A47C4@<X0>(char *a1@<X8>)
{
  v2 = sub_1E1AF72FC();

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

void sub_1E18A4824(uint64_t *a1@<X8>)
{
  v2 = 0x796C6E4F6C6C7570;
  if (*v1)
  {
    v2 = 0x50646E4168737570;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEB000000006C6C75;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t UnifiedMessage.__allocating_init(id:placement:context:deliveryMethod:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v10 = sub_1E1AEFEAC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v15 = *a5;
  v16 = OBJC_IVAR____TtC11AppStoreKit14UnifiedMessage_impressionMetrics;
  v17 = sub_1E1AF46DC();
  (*(*(v17 - 8) + 56))(v14 + v16, 1, 1, v17);
  sub_1E134FD1C(a1, &v31, &unk_1ECEB5670);
  if (*(&v32 + 1))
  {
    v18 = v32;
    *(v14 + 16) = v31;
    *(v14 + 32) = v18;
    *(v14 + 48) = v33;
  }

  else
  {
    sub_1E1AEFE9C();
    v19 = sub_1E1AEFE7C();
    v20 = v11;
    v21 = a1;
    v22 = v15;
    v23 = a2;
    v24 = a3;
    v25 = a4;
    v27 = v26;
    (*(v20 + 8))(v13, v10);
    v30[1] = v19;
    v30[2] = v27;
    a4 = v25;
    a3 = v24;
    a2 = v23;
    v15 = v22;
    a1 = v21;
    sub_1E1AF6F6C();
    sub_1E1308058(&v31, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  v28 = (v14 + OBJC_IVAR____TtC11AppStoreKit14UnifiedMessage_placement);
  *v28 = a2;
  v28[1] = a3;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit14UnifiedMessage_context) = a4;
  *(v14 + OBJC_IVAR____TtC11AppStoreKit14UnifiedMessage_deliveryMethod) = v15;
  return v14;
}

uint64_t UnifiedMessage.init(id:placement:context:deliveryMethod:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v6 = v5;
  v12 = sub_1E1AEFEAC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v16) = *a5;
  v17 = OBJC_IVAR____TtC11AppStoreKit14UnifiedMessage_impressionMetrics;
  v18 = sub_1E1AF46DC();
  (*(*(v18 - 8) + 56))(v6 + v17, 1, 1, v18);
  sub_1E134FD1C(a1, &v30, &unk_1ECEB5670);
  if (*(&v31 + 1))
  {
    v33 = v30;
    v34 = v31;
    v35 = v32;
  }

  else
  {
    sub_1E1AEFE9C();
    v19 = sub_1E1AEFE7C();
    HIDWORD(v27) = v16;
    v16 = a2;
    v20 = a3;
    v21 = a4;
    v23 = v22;
    (*(v13 + 8))(v15, v12);
    v28 = v19;
    v29 = v23;
    a4 = v21;
    a3 = v20;
    a2 = v16;
    LOBYTE(v16) = BYTE4(v27);
    sub_1E1AF6F6C();
    sub_1E1308058(&v30, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  v24 = v34;
  *(v6 + 16) = v33;
  *(v6 + 32) = v24;
  *(v6 + 48) = v35;
  v25 = (v6 + OBJC_IVAR____TtC11AppStoreKit14UnifiedMessage_placement);
  *v25 = a2;
  v25[1] = a3;
  *(v6 + OBJC_IVAR____TtC11AppStoreKit14UnifiedMessage_context) = a4;
  *(v6 + OBJC_IVAR____TtC11AppStoreKit14UnifiedMessage_deliveryMethod) = v16;
  return v6;
}

uint64_t UnifiedMessage.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v70 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B28);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v67 = &v62 - v4;
  v5 = sub_1E1AEFEAC();
  v64 = *(v5 - 8);
  v65 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v63 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF380C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v62 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v62 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v62 - v17;
  sub_1E1AF381C();
  v19 = sub_1E1AF37CC();
  v21 = v20;
  v24 = *(v8 + 8);
  v23 = v8 + 8;
  v22 = v24;
  v24(v18, v7);
  v68 = v21;
  if (v21)
  {
    v62 = v19;
    v71 = v22;
    v69 = a1;
    sub_1E1AF381C();
    v25 = sub_1E1AF37CC();
    if (v26)
    {
      *&v74 = v25;
      *(&v74 + 1) = v26;
    }

    else
    {
      v30 = v63;
      sub_1E1AEFE9C();
      v31 = sub_1E1AEFE7C();
      v33 = v32;
      (*(v64 + 8))(v30, v65);
      *&v74 = v31;
      *(&v74 + 1) = v33;
    }

    sub_1E1AF6F6C();
    v34 = v7;
    v35 = v7;
    v36 = v71;
    v37 = v23;
    v71(v15, v35);
    v38 = v70;
    sub_1E1AF381C();
    v39 = v67;
    sub_1E1AF368C();
    v36(v12, v34);
    v40 = sub_1E1AF40DC();
    v41 = *(v40 - 8);
    if ((*(v41 + 48))(v39, 1, v40) == 1)
    {
      sub_1E1308058(v39, &qword_1ECEB2B28);
      v42 = 0;
    }

    else
    {
      v42 = sub_1E1AF40BC();
      (*(v41 + 8))(v39, v40);
    }

    v43 = v66;
    v44 = v69;
    sub_1E1AF381C();
    sub_1E18A5450();
    sub_1E1AF369C();
    v71(v43, v34);
    v45 = v77[63];
    type metadata accessor for UnifiedMessage();
    v21 = swift_allocObject();
    v46 = OBJC_IVAR____TtC11AppStoreKit14UnifiedMessage_impressionMetrics;
    v47 = sub_1E1AF46DC();
    (*(*(v47 - 8) + 56))(v21 + v46, 1, 1, v47);
    sub_1E134FD1C(v77, &v74, &unk_1ECEB5670);
    if (*(&v75 + 1))
    {
      v48 = v75;
      *(v21 + 16) = v74;
      *(v21 + 32) = v48;
      *(v21 + 48) = v76;
    }

    else
    {
      v49 = v63;
      sub_1E1AEFE9C();
      v50 = sub_1E1AEFE7C();
      v70 = v37;
      v51 = v34;
      v52 = v44;
      v53 = v42;
      v54 = v38;
      v55 = v50;
      v57 = v56;
      (*(v64 + 8))(v49, v65);
      v72 = v55;
      v73 = v57;
      v38 = v54;
      v42 = v53;
      v44 = v52;
      v34 = v51;
      sub_1E1AF6F6C();
      sub_1E1308058(&v74, &unk_1ECEB5670);
    }

    v58 = sub_1E1AF39DC();
    (*(*(v58 - 8) + 8))(v38, v58);
    v71(v44, v34);
    sub_1E1308058(v77, &unk_1ECEB5670);
    v59 = (v21 + OBJC_IVAR____TtC11AppStoreKit14UnifiedMessage_placement);
    v60 = v68;
    *v59 = v62;
    v59[1] = v60;
    *(v21 + OBJC_IVAR____TtC11AppStoreKit14UnifiedMessage_context) = v42;
    *(v21 + OBJC_IVAR____TtC11AppStoreKit14UnifiedMessage_deliveryMethod) = v45;
  }

  else
  {
    v27 = sub_1E1AF5A7C();
    sub_1E18A5970(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v28 = 0x6E656D6563616C70;
    v28[1] = 0xE900000000000074;
    v28[2] = v71;
    (*(*(v27 - 8) + 104))(v28, *MEMORY[0x1E69AB690], v27);
    swift_willThrow();
    v29 = sub_1E1AF39DC();
    (*(*(v29 - 8) + 8))(v70, v29);
    v22(a1, v7);
  }

  return v21;
}

unint64_t sub_1E18A5450()
{
  result = qword_1EE1F3858[0];
  if (!qword_1EE1F3858[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1F3858);
  }

  return result;
}

uint64_t type metadata accessor for UnifiedMessage()
{
  result = qword_1EE1F3830;
  if (!qword_1EE1F3830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E18A54FC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1E134FD1C(a1, &v10 - v5, &unk_1ECEB1770);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC11AppStoreKit14UnifiedMessage_impressionMetrics;
  swift_beginAccess();
  sub_1E18A569C(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_1E18A55D4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit14UnifiedMessage_impressionMetrics;
  swift_beginAccess();
  return sub_1E134FD1C(v1 + v3, a1, &unk_1ECEB1770);
}

uint64_t sub_1E18A563C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit14UnifiedMessage_impressionMetrics;
  swift_beginAccess();
  sub_1E18A569C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1E18A569C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t UnifiedMessage.placement.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit14UnifiedMessage_placement);

  return v1;
}

uint64_t UnifiedMessage.deinit()
{
  sub_1E134B88C(v0 + 16);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit14UnifiedMessage_impressionMetrics, &unk_1ECEB1770);

  return v0;
}

uint64_t UnifiedMessage.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 16);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit14UnifiedMessage_impressionMetrics, &unk_1ECEB1770);

  return swift_deallocClassInstance();
}

unint64_t sub_1E18A58D4()
{
  result = qword_1ECEBA8E0;
  if (!qword_1ECEBA8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA8E0);
  }

  return result;
}

uint64_t sub_1E18A5970(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E18A59C8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = UnifiedMessage.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1E18A59F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11AppStoreKit14UnifiedMessage_impressionMetrics;
  swift_beginAccess();
  return sub_1E134FD1C(v3 + v4, a1, &unk_1ECEB1770);
}

void sub_1E18A5A68()
{
  sub_1E134EAF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t AchievementSummary.__allocating_init(id:bundleId:completedAchievements:totalAchievements:completedText:action:achievements:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v33 = a3;
  v34 = a4;
  v32 = a2;
  v14 = a9;
  v15 = sub_1E1AEFEAC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 80) = 0u;
  *(v19 + 96) = 0u;
  sub_1E134FD1C(a1, &v37, &unk_1ECEB5670);
  if (*(&v38 + 1))
  {
    v20 = v38;
    *(v19 + 112) = v37;
    *(v19 + 128) = v20;
    *(v19 + 144) = v39;
  }

  else
  {
    sub_1E1AEFE9C();
    v21 = sub_1E1AEFE7C();
    v30 = a9;
    v31 = a5;
    v22 = a6;
    v23 = a8;
    v24 = v21;
    v25 = a7;
    v27 = v26;
    (*(v16 + 8))(v18, v15);
    v35 = v24;
    v36 = v27;
    a8 = v23;
    a6 = v22;
    a7 = v25;
    v14 = v30;
    a5 = v31;
    sub_1E1AF6F6C();
    sub_1E1308058(&v37, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  v28 = v33;
  *(v19 + 16) = v32;
  *(v19 + 24) = v28;
  *(v19 + 32) = v34;
  *(v19 + 40) = a5;
  *(v19 + 48) = a6;
  *(v19 + 56) = a7;
  *(v19 + 64) = v14;
  *(v19 + 72) = a8;
  return v19;
}

uint64_t AchievementSummary.init(id:bundleId:completedAchievements:totalAchievements:completedText:action:achievements:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v34 = a3;
  v35 = a4;
  v33 = a2;
  v16 = a9;
  v17 = sub_1E1AEFEAC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v10 + 80) = 0u;
  *(v10 + 96) = 0u;
  sub_1E134FD1C(a1, &v38, &unk_1ECEB5670);
  if (*(&v39 + 1))
  {
    v41 = v38;
    v42 = v39;
    v43 = v40;
  }

  else
  {
    sub_1E1AEFE9C();
    v21 = sub_1E1AEFE7C();
    v31 = a9;
    v32 = a5;
    v22 = a6;
    v23 = a8;
    v24 = v21;
    v25 = a7;
    v27 = v26;
    (*(v18 + 8))(v20, v17);
    v36 = v24;
    v37 = v27;
    a8 = v23;
    a6 = v22;
    a7 = v25;
    v16 = v31;
    a5 = v32;
    sub_1E1AF6F6C();
    sub_1E1308058(&v38, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  v28 = v42;
  *(v10 + 112) = v41;
  *(v10 + 128) = v28;
  *(v10 + 144) = v43;
  v29 = v34;
  *(v10 + 16) = v33;
  *(v10 + 24) = v29;
  *(v10 + 32) = v35;
  *(v10 + 40) = a5;
  *(v10 + 48) = a6;
  *(v10 + 56) = a7;
  *(v10 + 64) = v16;
  *(v10 + 72) = a8;
  return v10;
}

uint64_t AchievementSummary.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v141 = a2;
  v114 = sub_1E1AEFEAC();
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v112 = &v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_1E1AF39DC();
  v131 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v125 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB9408);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v124 = &v99 - v6;
  v123 = sub_1E1AF05FC();
  v126 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v130 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v129 = &v99 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v119 = &v99 - v11;
  v12 = sub_1E1AF5A6C();
  v120 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v117 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E1AF380C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v115 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v118 = &v99 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v128 = &v99 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v121 = &v99 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v99 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v99 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v99 - v30;
  v134 = a1;
  sub_1E1AF381C();
  v116 = sub_1E1AF37CC();
  v33 = v32;
  v127 = v15;
  v36 = *(v15 + 8);
  v35 = v15 + 8;
  v34 = v36;
  v36(v31, v14);
  if (!v33)
  {
    v37 = sub_1E1AF5A7C();
    sub_1E18A7D1C(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v44 = 0x6449656C646E7562;
    v44[1] = 0xE800000000000000;
    v44[2] = v132;
    (*(*(v37 - 8) + 104))(v44, *MEMORY[0x1E69AB690], v37);
    swift_willThrow();
    (*(v131 + 8))(v141, v133);
    v34(v134, v14);
    return v37;
  }

  v122 = v33;
  v111 = v12;
  v37 = 0x80000001E1B7BE60;
  v38 = v134;
  sub_1E1AF381C();
  v110 = sub_1E1AF36EC();
  v40 = v39;
  v34(v28, v14);
  v41 = v14;
  if (v40)
  {

    v42 = sub_1E1AF5A7C();
    sub_1E18A7D1C(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v43 = 0xD000000000000015;
    v43[1] = 0x80000001E1B7BE60;
    v43[2] = v132;
    (*(*(v42 - 8) + 104))(v43, *MEMORY[0x1E69AB690], v42);
    swift_willThrow();
    (*(v131 + 8))(v141, v133);
    v34(v38, v14);
    return v37;
  }

  v37 = 0x80000001E1B7BE80;
  v45 = v38;
  sub_1E1AF381C();
  v105 = sub_1E1AF36EC();
  v47 = v46;
  v34(v25, v41);
  v48 = v141;
  v49 = v35;
  if (v47)
  {

    v50 = sub_1E1AF5A7C();
    sub_1E18A7D1C(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v51 = 0xD000000000000011;
    v51[1] = 0x80000001E1B7BE80;
    v51[2] = v132;
    (*(*(v50 - 8) + 104))(v51, *MEMORY[0x1E69AB690], v50);
    swift_willThrow();
    (*(v131 + 8))(v48, v133);
    v34(v38, v41);
    return v37;
  }

  v37 = 0xED00007478655464;
  v52 = v121;
  sub_1E1AF381C();
  v102 = sub_1E1AF37CC();
  v54 = v53;
  v34(v52, v41);
  v55 = v34;
  v56 = v132;
  if (!v54)
  {

    v63 = sub_1E1AF5A7C();
    sub_1E18A7D1C(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    strcpy(v64, "completedText");
    *(v64 + 7) = -4864;
    *(v64 + 2) = v56;
    (*(*(v63 - 8) + 104))(v64, *MEMORY[0x1E69AB690], v63);
    swift_willThrow();
    (*(v131 + 8))(v141, v133);
    v55(v45, v41);
    return v37;
  }

  v103 = v54;
  type metadata accessor for Action();
  v57 = v128;
  sub_1E1AF381C();
  v104 = static Action.tryToMakeInstance(byDeserializing:using:)(v57, v141);
  v55(v57, v41);
  v58 = v118;
  sub_1E1AF381C();
  v59 = v119;
  sub_1E1AF374C();
  v55(v58, v41);
  v60 = v120;
  v61 = v111;
  if ((*(v120 + 48))(v59, 1, v111) == 1)
  {

    sub_1E1308058(v59, &qword_1ECEB1F90);
    v37 = sub_1E1AF5A7C();
    sub_1E18A7D1C(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    strcpy(v62, "achievements");
    v62[13] = 0;
    *(v62 + 7) = -5120;
    *(v62 + 2) = v56;
    (*(*(v37 - 8) + 104))(v62, *MEMORY[0x1E69AB690], v37);
    swift_willThrow();

    (*(v131 + 8))(v141, v133);
    v55(v45, v41);
    return v37;
  }

  v100 = v55;
  v101 = v49;
  v121 = v41;
  (*(v60 + 32))(v117, v59, v61);
  result = sub_1E1AF5A4C();
  v66 = result;
  v119 = *(result + 16);
  if (!v119)
  {
    v69 = MEMORY[0x1E69E7CC0];
LABEL_22:
    v78 = v100;

    v79 = v115;
    sub_1E1AF381C();
    v80 = sub_1E1AF37CC();
    if (v81)
    {
      *&v137 = v80;
      *(&v137 + 1) = v81;
    }

    else
    {
      v83 = v112;
      sub_1E1AEFE9C();
      v84 = sub_1E1AEFE7C();
      v86 = v85;
      (*(v113 + 8))(v83, v114);
      *&v137 = v84;
      *(&v137 + 1) = v86;
    }

    sub_1E1AF6F6C();
    v78(v79, v121);
    v87 = v133;
    v88 = v131;
    v89 = v104;
    type metadata accessor for AchievementSummary();
    v37 = swift_allocObject();
    *(v37 + 80) = 0u;
    *(v37 + 96) = 0u;
    sub_1E134FD1C(v140, &v137, &unk_1ECEB5670);
    if (*(&v138 + 1))
    {
      v90 = v138;
      *(v37 + 112) = v137;
      *(v37 + 128) = v90;
      *(v37 + 144) = v139;
      v91 = v141;
    }

    else
    {
      v92 = v112;
      sub_1E1AEFE9C();
      v93 = sub_1E1AEFE7C();
      v95 = v94;
      (*(v113 + 8))(v92, v114);
      v135 = v93;
      v136 = v95;
      v89 = v104;
      v91 = v141;
      sub_1E1AF6F6C();
      sub_1E1308058(&v137, &unk_1ECEB5670);
    }

    (*(v88 + 8))(v91, v87);
    v78(v134, v121);
    sub_1E1308058(v140, &unk_1ECEB5670);
    (*(v120 + 8))(v117, v111);
    v96 = v122;
    *(v37 + 16) = v116;
    *(v37 + 24) = v96;
    v97 = v105;
    *(v37 + 32) = v110;
    *(v37 + 40) = v97;
    v98 = v103;
    *(v37 + 48) = v102;
    *(v37 + 56) = v98;
    *(v37 + 64) = v69;
    *(v37 + 72) = v89;
    return v37;
  }

  v67 = 0;
  v118 = (v127 + 16);
  v109 = (v131 + 16);
  v108 = (v126 + 48);
  v68 = (v126 + 32);
  v107 = (v126 + 16);
  v106 = v126 + 8;
  v69 = MEMORY[0x1E69E7CC0];
  while (v67 < *(v66 + 16))
  {
    (*(v127 + 16))(v128, v66 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v67, v121);
    (*v109)(v125, v141, v133);
    sub_1E18A7D1C(&qword_1ECEBA8E8, 255, MEMORY[0x1E69A02D0]);
    v70 = v124;
    v71 = v123;
    sub_1E1AF464C();
    if ((*v108)(v70, 1, v71) == 1)
    {

      sub_1E1308058(v70, &qword_1ECEB9408);
      v37 = sub_1E1AF5A7C();
      sub_1E18A7D1C(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8]);
      swift_allocError();
      *v82 = 0x6D65766569686361;
      v82[1] = 0xEB00000000746E65;
      v82[2] = v56;
      (*(*(v37 - 8) + 104))(v82, *MEMORY[0x1E69AB690], v37);
      swift_willThrow();

      (*(v131 + 8))(v141, v133);
      v100(v45, v121);
      (*(v120 + 8))(v117, v111);
      return v37;
    }

    v72 = *v68;
    v73 = v129;
    (*v68)(v129, v70, v71);
    (*v107)(v130, v73, v71);
    v74 = v71;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v69 = sub_1E172EB18(0, *(v69 + 2) + 1, 1, v69);
    }

    v76 = *(v69 + 2);
    v75 = *(v69 + 3);
    if (v76 >= v75 >> 1)
    {
      v69 = sub_1E172EB18(v75 > 1, v76 + 1, 1, v69);
    }

    ++v67;
    v77 = v126;
    (*(v126 + 8))(v129, v74);
    *(v69 + 2) = v76 + 1;
    result = v72(&v69[((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v76], v130, v74);
    v45 = v134;
    v56 = v132;
    if (v119 == v67)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

uint64_t AchievementSummary.bundleId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AchievementSummary.completedText.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_1E18A735C(JSContext a1)
{
  v2 = v1;
  v4 = sub_1E1AF05FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  v9 = [v8 valueWithNewObjectInContext_];
  if (!v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  v10 = v9;
  v11 = v2[3];
  v32 = v2[2];
  v33 = v11;

  v12 = &selRef_remoteDownloadIdentifiersDidChange_;
  v13 = [v8 valueWithObject:sub_1E1AF755C() inContext:a1.super.isa];
  swift_unknownObjectRelease();
  if (!v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1E1AF6C5C();
  v32 = v2[4];
  v14 = [v8 valueWithObject:sub_1E1AF755C() inContext:a1.super.isa];
  swift_unknownObjectRelease();
  if (!v14)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_1E1AF6C5C();
  v32 = v2[5];
  v15 = [v8 valueWithObject:sub_1E1AF755C() inContext:a1.super.isa];
  swift_unknownObjectRelease();
  if (!v15)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1E1AF6C5C();
  v16 = v2[7];
  v32 = v2[6];
  v33 = v16;

  v17 = [v8 valueWithObject:sub_1E1AF755C() inContext:a1.super.isa];
  swift_unknownObjectRelease();
  if (!v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1E1AF6C5C();
  v32 = v2[8];

  sub_1E18A7C08(&v32);
  v18 = v32;
  v19 = v32[2];
  if (v19)
  {
    v28 = v8;
    v29 = v10;
    v32 = MEMORY[0x1E69E7CC0];
    sub_1E1AF70EC();
    v21 = *(v5 + 16);
    v20 = v5 + 16;
    v22 = *(v20 + 64);
    v27 = v18;
    v23 = v18 + ((v22 + 32) & ~v22);
    v30 = *(v20 + 56);
    v31 = v21;
    do
    {
      v31(v7, v23, v4);
      Achievement.makeValue(in:)(a1);
      (*(v20 - 8))(v7, v4);
      sub_1E1AF70BC();
      sub_1E1AF70FC();
      sub_1E1AF710C();
      sub_1E1AF70CC();
      v23 += v30;
      --v19;
    }

    while (v19);

    v24 = v32;
    v8 = v28;
    v10 = v29;
    v12 = &selRef_remoteDownloadIdentifiersDidChange_;
  }

  else
  {

    v24 = MEMORY[0x1E69E7CC0];
  }

  v32 = v24;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3D38);
  v2 = sub_1E1AF755C();
  v25 = [v8 v12[3]];
  swift_unknownObjectRelease();
  if (v25)
  {

    sub_1E1AF6C5C();
    return v10;
  }

LABEL_18:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1E18A77DC(uint64_t a1, uint64_t a2)
{
  v19[1] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v19 - v6;
  v8 = sub_1E1AEFE6C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v19 - v13;
  sub_1E1AF058C();
  v15 = *(v9 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_1E1AEFD8C();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1E1308058(v7, &unk_1ECEBB780);
    }
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
  }

  sub_1E1AF058C();
  if (v15(v4, 1, v8) == 1)
  {
    sub_1E1AEFD8C();
    if (v15(v4, 1, v8) != 1)
    {
      sub_1E1308058(v4, &unk_1ECEBB780);
    }
  }

  else
  {
    (*(v9 + 32))(v11, v4, v8);
  }

  v16 = sub_1E1AEFDCC();
  v17 = *(v9 + 8);
  v17(v11, v8);
  v17(v14, v8);
  return v16 & 1;
}

uint64_t AchievementSummary.deinit()
{

  sub_1E1308058(v0 + 80, &qword_1ECEB2DF0);
  sub_1E134B88C(v0 + 112);
  return v0;
}

uint64_t AchievementSummary.__deallocating_deinit()
{

  sub_1E1308058(v0 + 80, &qword_1ECEB2DF0);
  sub_1E134B88C(v0 + 112);

  return swift_deallocClassInstance();
}

uint64_t sub_1E18A7B74@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = AchievementSummary.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_1E18A7C08(void **a1)
{
  v2 = *(sub_1E1AF05FC() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1E1969068(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1E18A7E08(v5);
  *a1 = v3;
}

uint64_t sub_1E18A7D1C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1E18A7E08(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_1E1AF741C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1E1AF05FC();
        v6 = sub_1E1AF628C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1E1AF05FC() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1E18A846C(v8, v9, a1, v4);
      *(v6 + 16) = 0;

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
    sub_1E18A7F34(0, v2, 1, a1);
  }
}

void sub_1E18A7F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v68 = &v47[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v47[-v11];
  v12 = sub_1E1AEFE6C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v64 = &v47[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v67 = &v47[-v16];
  v17 = sub_1E1AF05FC();
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v47[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v69 = &v47[-v20];
  v23.n128_f64[0] = MEMORY[0x1EEE9AC00](v21);
  v66 = &v47[-v24];
  v49 = a2;
  if (a3 != a2)
  {
    v25 = *a4;
    v27 = *(v22 + 16);
    v26 = v22 + 16;
    v28 = *(v26 + 56);
    v29 = (v13 + 48);
    v61 = (v13 + 32);
    v62 = v27;
    v59 = (v13 + 48);
    v60 = (v13 + 8);
    v58 = (v26 - 8);
    v63 = v26;
    v30 = v25 + v28 * (a3 - 1);
    v54 = -v28;
    v55 = (v26 + 16);
    v31 = a1 - a3;
    v56 = v25;
    v48 = v28;
    v32 = v25 + v28 * a3;
LABEL_5:
    v52 = v30;
    v53 = a3;
    v50 = v32;
    v51 = v31;
    v33 = v31;
    while (1)
    {
      v34 = v62;
      (v62)(v66, v32, v17, v23);
      v34(v69, v30, v17);
      v35 = v65;
      sub_1E1AF058C();
      v36 = *v29;
      if ((*v29)(v35, 1, v12) == 1)
      {
        sub_1E1AEFD8C();
        if (v36(v35, 1, v12) != 1)
        {
          sub_1E1308058(v65, &unk_1ECEBB780);
        }
      }

      else
      {
        (*v61)(v67, v35, v12);
      }

      sub_1E1AF058C();
      v37 = v68;
      if (v36(v68, 1, v12) == 1)
      {
        v38 = v64;
        sub_1E1AEFD8C();
        if (v36(v37, 1, v12) != 1)
        {
          sub_1E1308058(v37, &unk_1ECEBB780);
        }
      }

      else
      {
        v38 = v64;
        (*v61)(v64, v37, v12);
      }

      v39 = v67;
      v40 = sub_1E1AEFDCC();
      v41 = v38;
      v42 = *v60;
      (*v60)(v41, v12);
      v42(v39, v12);
      v43 = *v58;
      (*v58)(v69, v17);
      v43(v66, v17);
      v29 = v59;
      if ((v40 & 1) == 0)
      {
LABEL_4:
        a3 = v53 + 1;
        v30 = v52 + v48;
        v31 = v51 - 1;
        v32 = v50 + v48;
        if (v53 + 1 == v49)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v56)
      {
        break;
      }

      v44 = *v55;
      v45 = v57;
      (*v55)(v57, v32, v17);
      swift_arrayInitWithTakeFrontToBack();
      v44(v30, v45, v17);
      v30 += v54;
      v32 += v54;
      if (__CFADD__(v33++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1E18A846C(unint64_t *a1, uint64_t a2, char **a3, unint64_t a4)
{
  v5 = v4;
  v169 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v200 = &v164 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v164 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v183 = &v164 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v164 - v16;
  v202 = sub_1E1AEFE6C();
  v18 = *(v202 - 8);
  MEMORY[0x1EEE9AC00](v202);
  v20 = &v164 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v199 = &v164 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v164 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v182 = &v164 - v27;
  v197 = sub_1E1AF05FC();
  v180 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v173 = &v164 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v188 = &v164 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v201 = &v164 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v198 = &v164 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v185 = &v164 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v181 = &v164 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v164 = &v164 - v40;
  v42.n128_f64[0] = MEMORY[0x1EEE9AC00](v41);
  v167 = &v164 - v43;
  v44 = a3;
  v45 = a3[1];
  if (v45 < 1)
  {
    v47 = MEMORY[0x1E69E7CC0];
    v49 = a3;
LABEL_115:
    a4 = *v169;
    if (!*v169)
    {
      goto LABEL_155;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_117;
  }

  v177 = v25;
  v46 = 0;
  v194 = v180 + 16;
  v195 = (v180 + 8);
  v193 = (v18 + 48);
  v192 = (v18 + 32);
  v191 = (v18 + 8);
  v190 = (v180 + 32);
  v47 = MEMORY[0x1E69E7CC0];
  v168 = a4;
  v196 = v12;
  v179 = v17;
  v48 = v197;
  v49 = v44;
  v170 = v44;
LABEL_4:
  v50 = v46;
  v171 = v47;
  if (v46 + 1 >= v45)
  {
    v76 = v46 + 1;
  }

  else
  {
    v184 = v45;
    v51 = *v49;
    v52 = *(v180 + 72);
    v53 = v46;
    v54 = &(*v49)[v52 * (v46 + 1)];
    v55 = *(v180 + 16);
    v55(v167, v54, v48, v42);
    v189 = v51;
    v56 = &v51[v52 * v53];
    v57 = v164;
    v186 = v55;
    (v55)(v164, v56, v48);
    v58 = v167;
    LODWORD(v187) = sub_1E18A77DC(v167, v57);
    if (v5)
    {
      v163 = *v195;
      (*v195)(v57, v48);
      (v163)(v58, v48);
      goto LABEL_125;
    }

    v166 = 0;
    v59 = *v195;
    (*v195)(v57, v48);
    v178 = v59;
    (v59)(v58, v48);
    v165 = v53;
    v60 = v53 + 2;
    v61 = &v189[v52 * (v53 + 2)];
    v62 = v193;
    v63 = v52;
    v189 = v52;
    do
    {
      if (v184 == v60)
      {
        v47 = v171;
        v76 = v184;
        goto LABEL_20;
      }

      v71 = v186;
      (v186)(v181, v61, v48);
      v71(v185, v54, v48);
      v72 = v202;
      v73 = v179;
      sub_1E1AF058C();
      v74 = *v62;
      if ((*v62)(v73, 1, v72) == 1)
      {
        sub_1E1AEFD8C();
        if (v74(v73, 1, v72) != 1)
        {
          sub_1E1308058(v179, &unk_1ECEBB780);
        }
      }

      else
      {
        (*v192)(v182, v73, v72);
      }

      sub_1E1AF058C();
      v75 = v183;
      if (v74(v183, 1, v202) == 1)
      {
        v64 = v177;
        sub_1E1AEFD8C();
        if (v74(v75, 1, v202) != 1)
        {
          sub_1E1308058(v75, &unk_1ECEBB780);
        }
      }

      else
      {
        v64 = v177;
        (*v192)(v177, v75, v202);
      }

      v65 = v182;
      v66 = sub_1E1AEFDCC();
      v67 = *v191;
      v68 = v64;
      v69 = v202;
      (*v191)(v68, v202);
      v67(v65, v69);
      v48 = v197;
      v70 = v178;
      (v178)(v185, v197);
      v70(v181, v48);
      ++v60;
      v63 = v189;
      v61 = &v189[v61];
      v54 += v189;
      v62 = v193;
    }

    while (((v187 ^ v66) & 1) == 0);
    v76 = v60 - 1;
    v47 = v171;
LABEL_20:
    v5 = v166;
    a4 = v168;
    v49 = v170;
    v50 = v165;
    if (v187)
    {
      if (v76 < v165)
      {
        goto LABEL_148;
      }

      if (v165 < v76)
      {
        v77 = v63 * (v76 - 1);
        v78 = v76 * v63;
        v184 = v76;
        v79 = v76;
        v80 = v165;
        v81 = v165 * v63;
        while (2)
        {
          if (v80 == --v79)
          {
            goto LABEL_27;
          }

          v84 = *v49;
          if (!v84)
          {
            goto LABEL_152;
          }

          v85 = *v190;
          (*v190)(v173, &v84[v81], v197);
          if (v81 >= v77 && &v84[v81] < &v84[v78])
          {
            v83 = v197;
            if (v81 != v77)
            {
              v82 = v197;
              swift_arrayInitWithTakeBackToFront();
LABEL_25:
              v83 = v82;
            }

            v85(&v84[v77], v173, v83);
            v49 = v170;
            v47 = v171;
            v63 = v189;
LABEL_27:
            ++v80;
            v77 -= v63;
            v78 -= v63;
            v81 += v63;
            if (v80 >= v79)
            {
              v5 = v166;
              a4 = v168;
              v48 = v197;
              v50 = v165;
              v76 = v184;
              goto LABEL_35;
            }

            continue;
          }

          break;
        }

        v82 = v197;
        swift_arrayInitWithTakeFrontToBack();
        goto LABEL_25;
      }
    }
  }

LABEL_35:
  v86 = v49[1];
  if (v76 >= v86)
  {
    goto LABEL_44;
  }

  if (__OFSUB__(v76, v50))
  {
    goto LABEL_145;
  }

  if (v76 - v50 >= a4)
  {
LABEL_44:
    a4 = v76;
    if (v76 < v50)
    {
      goto LABEL_144;
    }

    goto LABEL_45;
  }

  if (__OFADD__(v50, a4))
  {
    goto LABEL_146;
  }

  if ((v50 + a4) >= v86)
  {
    a4 = v49[1];
  }

  else
  {
    a4 += v50;
  }

  if (a4 < v50)
  {
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    v47 = sub_1E1968F00(v47);
LABEL_117:
    v203 = v47;
    v158 = *(v47 + 16);
    if (v158 >= 2)
    {
      while (*v49)
      {
        v159 = *(v47 + 16 * v158);
        v160 = v47;
        v161 = *(v47 + 16 * (v158 - 1) + 32);
        v47 = *(v47 + 16 * (v158 - 1) + 40);
        sub_1E18A9500(&(*v49)[*(v180 + 72) * v159], &(*v49)[*(v180 + 72) * v161], &(*v49)[*(v180 + 72) * v47], a4);
        if (v5)
        {
          goto LABEL_125;
        }

        if (v47 < v159)
        {
          goto LABEL_142;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v160 = sub_1E1968F00(v160);
        }

        if (v158 - 2 >= *(v160 + 2))
        {
          goto LABEL_143;
        }

        v162 = &v160[16 * v158];
        *v162 = v159;
        *(v162 + 1) = v47;
        v203 = v160;
        sub_1E1968E74(v158 - 1);
        v47 = v203;
        v158 = *(v203 + 16);
        if (v158 <= 1)
        {
          goto LABEL_125;
        }
      }

      goto LABEL_153;
    }

LABEL_125:

    return;
  }

  if (v76 == a4)
  {
    goto LABEL_44;
  }

  v166 = v5;
  v134 = *v49;
  v135 = *(v180 + 72);
  v189 = *(v180 + 16);
  v136 = &v134[v135 * (v76 - 1)];
  v186 = -v135;
  v165 = v50;
  v137 = v50 - v76;
  v187 = v134;
  v172 = v135;
  v138 = &v134[v76 * v135];
  v174 = a4;
LABEL_98:
  v184 = v76;
  v175 = v138;
  v176 = v137;
  v139 = v137;
  v178 = v136;
  while (1)
  {
    v140 = v48;
    v141 = v20;
    v142 = v189;
    (v189)(v198, v138, v140, v42);
    v142(v201, v136, v140);
    v143 = v202;
    v144 = v196;
    sub_1E1AF058C();
    v145 = *v193;
    if ((*v193)(v144, 1, v143) == 1)
    {
      sub_1E1AEFD8C();
      if (v145(v144, 1, v143) != 1)
      {
        sub_1E1308058(v196, &unk_1ECEBB780);
      }
    }

    else
    {
      (*v192)(v199, v144, v143);
    }

    sub_1E1AF058C();
    v146 = v200;
    v147 = v141;
    if (v145(v200, 1, v202) == 1)
    {
      sub_1E1AEFD8C();
      if (v145(v146, 1, v202) != 1)
      {
        sub_1E1308058(v146, &unk_1ECEBB780);
      }
    }

    else
    {
      (*v192)(v141, v146, v202);
    }

    v148 = v199;
    v149 = sub_1E1AEFDCC();
    v150 = *v191;
    v151 = v147;
    v152 = v147;
    v153 = v202;
    (*v191)(v152, v202);
    v150(v148, v153);
    v154 = *v195;
    v48 = v197;
    (*v195)(v201, v197);
    (v154)(v198, v48);
    if ((v149 & 1) == 0)
    {
      v20 = v151;
LABEL_97:
      v76 = v184 + 1;
      v136 = &v178[v172];
      v137 = v176 - 1;
      v138 = &v175[v172];
      a4 = v174;
      if (v184 + 1 != v174)
      {
        goto LABEL_98;
      }

      v5 = v166;
      v49 = v170;
      v47 = v171;
      v50 = v165;
      if (v174 < v165)
      {
        goto LABEL_144;
      }

LABEL_45:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v174 = a4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v47 = sub_1E172D878(0, *(v47 + 16) + 1, 1, v47);
      }

      a4 = *(v47 + 16);
      v88 = *(v47 + 24);
      v89 = a4 + 1;
      if (a4 >= v88 >> 1)
      {
        v47 = sub_1E172D878((v88 > 1), a4 + 1, 1, v47);
      }

      *(v47 + 16) = v89;
      v90 = v47 + 16 * a4;
      v91 = v174;
      *(v90 + 32) = v50;
      *(v90 + 40) = v91;
      if (!*v169)
      {
        goto LABEL_154;
      }

      if (a4)
      {
        v92 = *v169;
        while (1)
        {
          v93 = v89 - 1;
          if (v89 >= 4)
          {
            break;
          }

          if (v89 == 3)
          {
            v94 = *(v47 + 32);
            v95 = *(v47 + 40);
            v104 = __OFSUB__(v95, v94);
            v96 = v95 - v94;
            v97 = v104;
LABEL_65:
            if (v97)
            {
              goto LABEL_133;
            }

            v110 = (v47 + 16 * v89);
            v112 = *v110;
            v111 = v110[1];
            v113 = __OFSUB__(v111, v112);
            v114 = v111 - v112;
            v115 = v113;
            if (v113)
            {
              goto LABEL_136;
            }

            v116 = (v47 + 32 + 16 * v93);
            v118 = *v116;
            v117 = v116[1];
            v104 = __OFSUB__(v117, v118);
            v119 = v117 - v118;
            if (v104)
            {
              goto LABEL_139;
            }

            if (__OFADD__(v114, v119))
            {
              goto LABEL_140;
            }

            if (v114 + v119 >= v96)
            {
              if (v96 < v119)
              {
                v93 = v89 - 2;
              }

              goto LABEL_86;
            }

            goto LABEL_79;
          }

          v120 = (v47 + 16 * v89);
          v122 = *v120;
          v121 = v120[1];
          v104 = __OFSUB__(v121, v122);
          v114 = v121 - v122;
          v115 = v104;
LABEL_79:
          if (v115)
          {
            goto LABEL_135;
          }

          v123 = v47 + 16 * v93;
          v125 = *(v123 + 32);
          v124 = *(v123 + 40);
          v104 = __OFSUB__(v124, v125);
          v126 = v124 - v125;
          if (v104)
          {
            goto LABEL_138;
          }

          if (v126 < v114)
          {
            goto LABEL_3;
          }

LABEL_86:
          a4 = v93 - 1;
          if (v93 - 1 >= v89)
          {
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
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
            goto LABEL_147;
          }

          if (!*v49)
          {
            goto LABEL_151;
          }

          v131 = *(v47 + 32 + 16 * a4);
          v132 = *(v47 + 32 + 16 * v93 + 8);
          sub_1E18A9500(&(*v49)[*(v180 + 72) * v131], &(*v49)[*(v180 + 72) * *(v47 + 32 + 16 * v93)], &(*v49)[*(v180 + 72) * v132], v92);
          if (v5)
          {
            goto LABEL_125;
          }

          if (v132 < v131)
          {
            goto LABEL_129;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v47 = sub_1E1968F00(v47);
          }

          if (a4 >= *(v47 + 16))
          {
            goto LABEL_130;
          }

          v133 = v47 + 16 * a4;
          *(v133 + 32) = v131;
          *(v133 + 40) = v132;
          v203 = v47;
          sub_1E1968E74(v93);
          v47 = v203;
          v89 = *(v203 + 16);
          v48 = v197;
          if (v89 <= 1)
          {
            goto LABEL_3;
          }
        }

        v98 = v47 + 32 + 16 * v89;
        v99 = *(v98 - 64);
        v100 = *(v98 - 56);
        v104 = __OFSUB__(v100, v99);
        v101 = v100 - v99;
        if (v104)
        {
          goto LABEL_131;
        }

        v103 = *(v98 - 48);
        v102 = *(v98 - 40);
        v104 = __OFSUB__(v102, v103);
        v96 = v102 - v103;
        v97 = v104;
        if (v104)
        {
          goto LABEL_132;
        }

        v105 = (v47 + 16 * v89);
        v107 = *v105;
        v106 = v105[1];
        v104 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v104)
        {
          goto LABEL_134;
        }

        v104 = __OFADD__(v96, v108);
        v109 = v96 + v108;
        if (v104)
        {
          goto LABEL_137;
        }

        if (v109 >= v101)
        {
          v127 = (v47 + 32 + 16 * v93);
          v129 = *v127;
          v128 = v127[1];
          v104 = __OFSUB__(v128, v129);
          v130 = v128 - v129;
          if (v104)
          {
            goto LABEL_141;
          }

          if (v96 < v130)
          {
            v93 = v89 - 2;
          }

          goto LABEL_86;
        }

        goto LABEL_65;
      }

LABEL_3:
      v45 = v49[1];
      v46 = v174;
      a4 = v168;
      if (v174 >= v45)
      {
        goto LABEL_115;
      }

      goto LABEL_4;
    }

    if (!v187)
    {
      break;
    }

    v155 = *v190;
    v156 = v188;
    (*v190)(v188, v138, v48);
    swift_arrayInitWithTakeFrontToBack();
    v155(v136, v156, v48);
    v136 += v186;
    v138 += v186;
    v157 = __CFADD__(v139++, 1);
    v20 = v151;
    if (v157)
    {
      goto LABEL_97;
    }
  }

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
}

void sub_1E18A9500(unint64_t a1, char *a2, char *a3, unint64_t a4)
{
  v92 = a4;
  v94 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v85 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v73 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v91 = &v73 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v86 = &v73 - v14;
  v15 = sub_1E1AEFE6C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v81 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v84 = (&v73 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v82 = &v73 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v90 = &v73 - v23;
  v24 = sub_1E1AF05FC();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v88 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v83 = (&v73 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v93 = &v73 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v89 = &v73 - v32;
  v87 = *(v33 + 72);
  if (!v87)
  {
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (&a2[-a1] == 0x8000000000000000 && v87 == -1)
  {
    goto LABEL_79;
  }

  v34 = v94 - a2;
  if (v94 - a2 != 0x8000000000000000 || v87 != -1)
  {
    v35 = &a2[-a1] / v87;
    v97 = a1;
    v36 = v92;
    v96 = v92;
    if (v35 < v34 / v87)
    {
      v37 = v35 * v87;
      if (v92 < a1 || a1 + v37 <= v92)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v92 == a1)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v36 = v92;
LABEL_17:
      v88 = (v36 + v37);
      v95 = v36 + v37;
      if (v37 >= 1 && a2 < v94)
      {
        v40 = *(v25 + 16);
        v41 = (v16 + 48);
        v83 = (v16 + 32);
        v84 = v40;
        v85 = (v25 + 16);
        v80 = (v25 + 8);
        v81 = (v16 + 8);
        do
        {
          v42 = a2;
          v43 = v36;
          v44 = v84;
          v84(v89, a2, v24);
          v92 = v43;
          v44(v93, v43, v24);
          v45 = v86;
          sub_1E1AF058C();
          v46 = *v41;
          if ((*v41)(v45, 1, v15) == 1)
          {
            sub_1E1AEFD8C();
            if (v46(v45, 1, v15) != 1)
            {
              sub_1E1308058(v86, &unk_1ECEBB780);
            }
          }

          else
          {
            (*v83)(v90, v45, v15);
          }

          sub_1E1AF058C();
          v47 = v91;
          if (v46(v91, 1, v15) == 1)
          {
            v48 = v82;
            sub_1E1AEFD8C();
            if (v46(v47, 1, v15) != 1)
            {
              sub_1E1308058(v47, &unk_1ECEBB780);
            }
          }

          else
          {
            v48 = v82;
            (*v83)(v82, v47, v15);
          }

          v49 = v90;
          v50 = sub_1E1AEFDCC();
          v51 = v48;
          v52 = *v81;
          (*v81)(v51, v15);
          v52(v49, v15);
          v53 = *v80;
          (*v80)(v93, v24);
          v53(v89, v24);
          if (v50)
          {
            v54 = v87;
            a2 = (v42 + v87);
            if (a1 < v42 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v36 = v92;
          }

          else
          {
            v54 = v87;
            v55 = v92 + v87;
            a2 = v42;
            if (a1 < v92 || a1 >= v55)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v92)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v96 = v55;
            v36 = v55;
          }

          a1 += v54;
          v97 = a1;
        }

        while (v36 < v88 && a2 < v94);
      }

LABEL_77:
      sub_1E18A9FC8(&v97, &v96, &v95);
      return;
    }

    v38 = v34 / v87 * v87;
    if (v92 < a2 || &a2[v38] <= v92)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v92 == a2)
      {
LABEL_48:
        v90 = a2;
        v56 = v36 + v38;
        if (v38 >= 1)
        {
          v89 = v10;
          v57 = -v87;
          v79 = (v16 + 48);
          v80 = (v25 + 16);
          v77 = (v16 + 8);
          v78 = (v16 + 32);
          v76 = (v25 + 8);
          v58 = v56;
          v82 = v24;
          v86 = a1;
          v93 = -v87;
          do
          {
            v74 = v56;
            v59 = v90;
            v90 += v57;
            v87 = v59;
            while (1)
            {
              v60 = v94;
              if (v59 <= a1)
              {
                v97 = v59;
                v95 = v74;
                goto LABEL_77;
              }

              v75 = v56;
              v61 = (v58 + v57);
              v62 = *v80;
              (*v80)(v83, v61, v24);
              (v62)(v88, v90, v24);
              v63 = v89;
              sub_1E1AF058C();
              v64 = *v79;
              if ((*v79)(v63, 1, v15) == 1)
              {
                sub_1E1AEFD8C();
                if (v64(v63, 1, v15) != 1)
                {
                  sub_1E1308058(v89, &unk_1ECEBB780);
                }
              }

              else
              {
                (*v78)(v84, v63, v15);
              }

              sub_1E1AF058C();
              v65 = v85;
              v66 = v64(v85, 1, v15);
              v67 = v81;
              v91 = v61;
              if (v66 == 1)
              {
                sub_1E1AEFD8C();
                if (v64(v65, 1, v15) != 1)
                {
                  sub_1E1308058(v65, &unk_1ECEBB780);
                }
              }

              else
              {
                (*v78)(v81, v65, v15);
              }

              v94 = (v60 + v93);
              v68 = v84;
              v69 = sub_1E1AEFDCC();
              v70 = *v77;
              (*v77)(v67, v15);
              v70(v68, v15);
              v71 = *v76;
              v24 = v82;
              (*v76)(v88, v82);
              v71(v83, v24);
              if (v69)
              {
                break;
              }

              v72 = v91;
              v56 = v91;
              v59 = v87;
              if (v60 < v58 || v94 >= v58)
              {
                swift_arrayInitWithTakeFrontToBack();
                v57 = v93;
              }

              else
              {
                v57 = v93;
                if (v60 != v58)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v58 = v56;
              a1 = v86;
              if (v72 <= v92)
              {
                v90 = v59;
                goto LABEL_76;
              }
            }

            if (v60 < v87 || v94 >= v87)
            {
              swift_arrayInitWithTakeFrontToBack();
              v56 = v75;
              v57 = v93;
            }

            else
            {
              v56 = v75;
              v57 = v93;
              if (v60 != v87)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            a1 = v86;
          }

          while (v58 > v92);
        }

LABEL_76:
        v97 = v90;
        v95 = v56;
        goto LABEL_77;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v36 = v92;
    goto LABEL_48;
  }

LABEL_80:
  __break(1u);
}

uint64_t sub_1E18A9FC8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1E1AF05FC();
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

uint64_t InfiniteScrollObserver.__allocating_init(paginatedPresenter:triggerDistance:)(double a1)
{
  swift_allocObject();
  v2 = sub_1E18AA978(a1);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t InfiniteScrollObserver.init(paginatedPresenter:triggerDistance:)(double a1)
{
  v1 = sub_1E18AA978(a1);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1E18AA2AC(double a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1E18AA338(char a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_1E18AA3B0(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 56) = a1;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t sub_1E18AA45C(uint64_t (*a1)(void), uint64_t a2)
{
  if (*(v2 + 32) != 1)
  {
    return a1();
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_beginAccess();
  v6 = *(v2 + 40);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 40) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1E172E5CC(0, v6[2] + 1, 1, v6);
    *(v2 + 40) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_1E172E5CC((v8 > 1), v9 + 1, 1, v6);
  }

  v6[2] = v9 + 1;
  v10 = &v6[2 * v9];
  v10[4] = sub_1E137AFA8;
  v10[5] = v5;
  *(v2 + 40) = v6;
  return swift_endAccess();
}

uint64_t sub_1E18AA584(void *a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  if (*(v1 + 48) == 1)
  {
    result = swift_beginAccess();
    if ((v1[8] & 1) != 0 || *(v1 + 9) < *(v1 + 7))
    {
      [a1 contentSize];
      v6 = v5;
      swift_beginAccess();
      if ((v1[10] & 1) != 0 || (result = swift_beginAccess(), v6 >= v1[2]))
      {
        result = swift_unknownObjectWeakLoadStrong();
        if (result)
        {
          v9 = *&v3 + 80;
          v8 = *(*&v3 + 80);
          v7 = *(v9 + 8);
          if (((*(v7 + 16))(v8, v7) & 1) != 0 || ((*(v7 + 24))(v8, v7) & 1) == 0)
          {
            return swift_unknownObjectRelease();
          }

          [a1 frame];
          v11 = v10;
          v13 = v12;
          v15 = v14;
          v17 = v16;
          swift_beginAccess();
          v18 = 0.0;
          if (v1[2] < v6)
          {
            swift_beginAccess();
            v18 = v1[2];
          }

          [a1 contentOffset];
          v20 = v19;
          v22.origin.x = v11;
          v22.origin.y = v13;
          v22.size.width = v15;
          v22.size.height = v17;
          if (v6 - (v20 + CGRectGetHeight(v22)) <= v18)
          {
            (*(v7 + 32))(v8, v7);
            swift_unknownObjectRelease();
            result = swift_beginAccess();
            if ((v1[8] & 1) == 0)
            {
              v21 = *(v1 + 9);
              if (v21 < *(v1 + 7))
              {
                *(v1 + 9) = v21 + 1;
              }
            }
          }

          else
          {
            return swift_unknownObjectRelease();
          }
        }
      }
    }
  }

  return result;
}

uint64_t InfiniteScrollObserver.deinit()
{
  MEMORY[0x1E6901750](v0 + 24);

  return v0;
}

uint64_t InfiniteScrollObserver.__deallocating_deinit()
{
  MEMORY[0x1E6901750](v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1E18AA8B8()
{
  *(v0 + 32) = 0;
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  if (v2)
  {

    v3 = v1 + 40;
    do
    {
      v4 = *(v3 - 8);

      v4(v5);

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  swift_beginAccess();
  *(v0 + 40) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1E18AA978(double a1)
{
  *(v1 + 16) = 0x407F400000000000;
  swift_unknownObjectWeakInit();
  *(v1 + 32) = 0;
  *(v1 + 40) = MEMORY[0x1E69E7CC0];
  *(v1 + 48) = 1;
  *(v1 + 56) = 0;
  *(v1 + 64) = 1;
  *(v1 + 72) = 0;
  *(v1 + 80) = 1;
  swift_beginAccess();
  *(v1 + 16) = a1;
  swift_unknownObjectWeakAssign();
  return v1;
}

AppStoreKit::AppPlatform_optional __swiftcall AppPlatform.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AppPlatform.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x656E6F6870;
  v3 = 6513005;
  if (v1 != 5)
  {
    v3 = 0x6E6F69736976;
  }

  v4 = 0x6863746177;
  if (v1 != 3)
  {
    v4 = 30324;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 6578544;
  if (v1 != 1)
  {
    v5 = 0x736567617373656DLL;
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

uint64_t sub_1E18AAEE4()
{
  sub_1E1AF5F0C();
}

void sub_1E18AAFE0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x656E6F6870;
  v5 = 0xE300000000000000;
  v6 = 6513005;
  if (v2 != 5)
  {
    v6 = 0x6E6F69736976;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6863746177;
  if (v2 != 3)
  {
    v8 = 30324;
    v7 = 0xE200000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 6578544;
  if (v2 != 1)
  {
    v10 = 0x736567617373656DLL;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t SupplementaryAppPlatform.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1E1AF72FC();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_1E18AB1BC()
{
  result = qword_1EE1F8C80;
  if (!qword_1EE1F8C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1F8C80);
  }

  return result;
}

unint64_t sub_1E18AB214()
{
  result = qword_1EE1FAC70;
  if (!qword_1EE1FAC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1FAC70);
  }

  return result;
}

uint64_t sub_1E18AB268()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  return sub_1E1AF767C();
}

uint64_t sub_1E18AB2D4()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  return sub_1E1AF767C();
}

uint64_t sub_1E18AB324@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1E1AF72FC();

  *a1 = v2 != 0;
  return result;
}

uint64_t Lockup.numberOfPurchasedChildren(using:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 304);
  if (!v3)
  {
    return 0;
  }

  v26 = MEMORY[0x1E69E7CC0];
  if (v3 >> 62)
  {
LABEL_27:
    v5 = sub_1E1AF71CC();
    if (v5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_4:
      v6 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1E68FFD80](v6, v3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_22;
          }
        }

        else
        {
          if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_27;
          }

          v7 = *(v3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_22:
            __break(1u);
LABEL_23:
            v17 = v26;
            if ((v26 & 0x8000000000000000) == 0)
            {
              goto LABEL_29;
            }

            goto LABEL_33;
          }
        }

        ObjectType = swift_getObjectType();
        v10 = *(v7 + 24);
        *&v20[0] = *(v7 + 16);
        *(&v20[0] + 1) = v10;
        v11 = *(a2 + 56);

        v11(v20, ObjectType, a2);
        v13 = v12;

        v14 = swift_getObjectType();
        (*(v13 + 16))(v20, v14, v13);
        swift_unknownObjectRelease();
        v22 = v20[0];
        v23 = v20[1];
        v24 = v20[2];
        v25 = v21;
        if (v21 >> 60)
        {
          if (v21 >> 60 != 8 || ((v15 = *(&v24 + 1) | *(&v25 + 1), v16 = *(&v23 + 1) | v23 | *(&v22 + 1), v21 != 0x8000000000000000) || v15 | *&v20[0] | v24 | v16) && (v21 != 0x8000000000000000 || *&v20[0] != 4 || v15 | v24 | v16))
          {
            sub_1E139CEA8(&v22);
LABEL_19:
            sub_1E1AF70BC();
            sub_1E1AF70FC();
            sub_1E1AF710C();
            sub_1E1AF70CC();
            goto LABEL_6;
          }
        }

        else if (LOBYTE(v20[0]) != 1)
        {
          goto LABEL_19;
        }

LABEL_6:
        ++v6;
        if (v8 == v5)
        {
          goto LABEL_23;
        }
      }
    }
  }

  v17 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
  {
    goto LABEL_33;
  }

LABEL_29:
  if ((v17 & 0x4000000000000000) != 0)
  {
LABEL_33:
    v18 = sub_1E1AF71CC();
  }

  else
  {
    v18 = *(v17 + 16);
  }

  return v18;
}

uint64_t EdgeInsetsDimension.init(top:left:bottom:right:source:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1E1361B28(a1, a6);
  sub_1E1361B28(a2, a6 + 40);
  sub_1E1361B28(a3, a6 + 80);
  sub_1E1361B28(a4, a6 + 120);
  v11 = *(type metadata accessor for EdgeInsetsDimension() + 32);
  v12 = sub_1E1AF105C();
  v13 = *(*(v12 - 8) + 32);

  return v13(a6 + v11, a5, v12);
}

uint64_t type metadata accessor for EdgeInsetsDimension()
{
  result = qword_1EE1EEE70;
  if (!qword_1EE1EEE70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EdgeInsetsDimension.source.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EdgeInsetsDimension() + 32);
  v4 = sub_1E1AF105C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double EdgeInsetsDimension.value(in:rounded:)()
{
  v1 = v0;
  __swift_project_boxed_opaque_existential_1Tm(v0, v0[3]);
  sub_1E1AF12DC();
  v3 = v2;
  __swift_project_boxed_opaque_existential_1Tm(v1 + 5, v1[8]);
  sub_1E1AF12DC();
  __swift_project_boxed_opaque_existential_1Tm(v1 + 10, v1[13]);
  sub_1E1AF12DC();
  __swift_project_boxed_opaque_existential_1Tm(v1 + 15, v1[18]);
  sub_1E1AF12DC();
  return v3;
}

uint64_t EdgeInsetsDimension.debugDescription.getter()
{
  sub_1E1AF6FEC();
  MEMORY[0x1E68FECA0](0xD000000000000019, 0x80000001E1B7BFD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB52F8);
  sub_1E1AF714C();
  MEMORY[0x1E68FECA0](0x203A7466656C202CLL, 0xE800000000000000);
  sub_1E1AF714C();
  MEMORY[0x1E68FECA0](0x6D6F74746F62202CLL, 0xEA0000000000203ALL);
  sub_1E1AF714C();
  MEMORY[0x1E68FECA0](0x3A7468676972202CLL, 0xE900000000000020);
  sub_1E1AF714C();
  MEMORY[0x1E68FECA0](0x656372756F73202CLL, 0xEA0000000000203ALL);
  type metadata accessor for EdgeInsetsDimension();
  sub_1E1AF105C();
  sub_1E1AF714C();
  MEMORY[0x1E68FECA0](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_1E18ABBC4()
{
  result = sub_1E16DBBF0();
  if (v1 <= 0x3F)
  {
    result = sub_1E1AF105C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1E18ABC60()
{
  result = qword_1ECEBA8F0;
  if (!qword_1ECEBA8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA8F0);
  }

  return result;
}

unint64_t sub_1E18ABCBC()
{
  result = qword_1ECEBA8F8;
  if (!qword_1ECEBA8F8)
  {
    type metadata accessor for SearchResults();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBA8F8);
  }

  return result;
}

void PlayableFocusAreaConfiguration.init(horizontalContainerPercentage:verticalContainerPercentage:pauseVisiblityThreshold:playVisiblityThreshold:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

uint64_t sub_1E18ABD50()
{
  result = sub_1E1AF5DBC();
  qword_1EE1E7580 = result;
  return result;
}

id static AskToBuyRequestNotificationDetails.notificationName.getter()
{
  if (qword_1EE1E7578 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE1E7580;

  return v1;
}

uint64_t sub_1E18ABE08()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1ECEF4C30);
  __swift_project_value_buffer(v4, qword_1ECEF4C30);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

uint64_t sub_1E18ABF5C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E18AE860();
  }

  return result;
}

uint64_t sub_1E18ABFB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E130B5DC;

  return sub_1E18B0050();
}

uint64_t sub_1E18AC044()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  sub_1E18B11F0(*(v0 + 144), *(v0 + 152), *(v0 + 160));

  return v0;
}

uint64_t sub_1E18AC110()
{
  sub_1E18AC044();

  return swift_deallocClassInstance();
}

uint64_t sub_1E18AC144()
{
  v1 = sub_1E1AEFEAC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 120);
  if (!v5)
  {
    return 0;
  }

  v6 = *(v0 + 112);
  type metadata accessor for LocalAskToBuyAction();
  v7 = swift_allocObject();
  v8 = (v7 + OBJC_IVAR____TtC11AppStoreKit19LocalAskToBuyAction_adamId);
  *v8 = v6;
  v8[1] = v5;
  v9 = (v7 + OBJC_IVAR____TtC11AppStoreKit19LocalAskToBuyAction_completion);
  *v9 = sub_1E18B0FAC;
  v9[1] = 0;
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  *&v21 = 0;
  *(&v21 + 1) = 0xE000000000000000;
  swift_bridgeObjectRetain_n();
  sub_1E1AF6FEC();

  *&v21 = 0xD000000000000015;
  *(&v21 + 1) = 0x80000001E1B6CFF0;
  MEMORY[0x1E68FECA0](v6, v5);

  v10 = v21;
  sub_1E1AF3DFC();
  v11 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v12 = sub_1E1AF46DC();
  (*(*(v12 - 8) + 56))(v7 + v11, 1, 1, v12);
  v13 = (v7 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v13 = 0u;
  v13[1] = 0u;
  v14 = v7 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  sub_1E134FD1C(v24, &v21, &unk_1ECEB5670);
  if (*(&v22 + 1))
  {
    v15 = v22;
    *v14 = v21;
    *(v14 + 16) = v15;
    *(v14 + 32) = v23;
  }

  else
  {
    sub_1E1AEFE9C();
    v16 = sub_1E1AEFE7C();
    v18 = v17;
    (*(v2 + 8))(v4, v1);
    v20[1] = v16;
    v20[2] = v18;
    sub_1E1AF6F6C();
    sub_1E1308058(&v21, &unk_1ECEB5670);
  }

  sub_1E1308058(v24, &unk_1ECEB5670);
  *(v7 + 16) = v10;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  return v7;
}

uint64_t sub_1E18AC41C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v251 - v2;
  v270 = sub_1E1AEFEAC();
  v4 = *(v270 - 8);
  MEMORY[0x1EEE9AC00](v270);
  v269 = &v251 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF3E1C();
  v271 = *(v6 - 1);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v251 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v251 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v251 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v251 - v18;
  v20 = *(v0 + 160);
  v287 = *(v0 + 144);
  v288 = v20;
  v21 = *(v0 + 192);
  v289 = *(v0 + 176);
  v290 = v21;
  v291 = *(v0 + 208);
  v22 = v287;
  v23 = WORD3(v20) >> 13;
  if (v23 <= 1)
  {
    v265 = BYTE8(v287);
    v266 = v6;
    v267 = v3;
    v268 = v4;
    if (!v23)
    {
      LODWORD(v259) = v288;
      LODWORD(v256) = HIBYTE(v287);
      LODWORD(v255) = *(&v287 + 13);
      v258 = *(&v287 + 9);
      *&v261[16] = v291;
      v45 = *(&v289 + 1);
      v44 = v290;
      v264 = v289;
      v257 = *(&v288 + 1);
      *v261 = v290;
      if ((BYTE1(v288) & 1) == 0 && (v46 = *(v0 + 96)) != 0 && (v47 = *(v46 + qword_1EE2158C8)) != 0 && (v48 = *(v47 + 24)) != 0)
      {
        v49 = *(v47 + 16);
        v263 = "er.AskToBuy.Review.Approve";
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2CD0);
        v50 = swift_allocObject();
        *(v50 + 16) = xmmword_1E1B02CD0;
        *(v50 + 32) = 0x6567617373656DLL;
        v51 = *&v261[8];
        *(v50 + 40) = 0xE700000000000000;
        *(v50 + 48) = v51;
        *(v50 + 56) = *&v261[16];
        *(v50 + 64) = 0x697461725F656761;
        *(v50 + 72) = 0xEF6B6E696C5F676ELL;
        *(v50 + 80) = v49;
        *(v50 + 88) = v48;
        sub_1E18B0F3C(&v287, v272);

        v52 = sub_1E13017E4(v50);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB9500);
        v44 = *v261;
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v53._countAndFlagsBits = 0xD00000000000004ELL;
        v53._object = (v263 | 0x8000000000000000);
        *&v261[8] = localizedString(_:with:)(v53, v52);

        v260 = v47;
      }

      else
      {
        sub_1E18B0F3C(&v287, v272);
        v260 = 0;
      }

      memset(v272, 0, 40);
      v81._countAndFlagsBits = 0xD00000000000002ALL;
      v81._object = 0x80000001E1B7C3B0;
      v82._countAndFlagsBits = 0;
      v82._object = 0xE000000000000000;
      v83 = localizedString(_:comment:)(v81, v82);
      object = v83._object;
      countAndFlagsBits = v83._countAndFlagsBits;
      sub_1E1AF3DFC();
      type metadata accessor for LocalAction();
      v84 = swift_allocObject();
      v85 = &v84[OBJC_IVAR____TtC11AppStoreKit11LocalAction_handler];
      *v85 = v45;
      *(v85 + 1) = v44;
      sub_1E134FD1C(v272, &v283, &unk_1ECEB5670);
      v254 = v271[2];
      v254(&v84[OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics], v19, v266);
      v86 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
      v87 = sub_1E1AF46DC();
      v88 = *(v87 - 8);
      v262 = *(v88 + 56);
      v263 = v87;
      *&v261[24] = v88 + 56;
      v262(&v84[v86], 1, 1);
      v89 = &v84[OBJC_IVAR____TtC11AppStoreKit6Action_clickSender];
      *v89 = 0u;
      *(v89 + 1) = 0u;
      v90 = &v84[OBJC_IVAR____TtC11AppStoreKit6Action_id];
      sub_1E134FD1C(&v283, v281, &unk_1ECEB5670);
      if (*(&v281[1] + 1))
      {
        v91 = v281[1];
        *v90 = v281[0];
        *(v90 + 1) = v91;
        *(v90 + 4) = *&v281[2];
      }

      else
      {

        v139 = v269;
        sub_1E1AEFE9C();
        v140 = sub_1E1AEFE7C();
        v142 = v141;
        (*(v268 + 8))(v139, v270);
        *&v277 = v140;
        *(&v277 + 1) = v142;
        sub_1E1AF6F6C();
        sub_1E1308058(v281, &unk_1ECEB5670);
      }

      v256 = v255 | (v256 << 16);
      sub_1E1308058(&v283, &unk_1ECEB5670);
      v143 = v271[1];
      v144 = v19;
      v145 = v266;
      ++v271;
      v255 = v143;
      v143(v144, v266);
      sub_1E1308058(v272, &unk_1ECEB5670);
      v146 = object;
      *(v84 + 2) = countAndFlagsBits;
      *(v84 + 3) = v146;
      *(v84 + 4) = 0;
      *(v84 + 5) = 0;
      memset(v272, 0, 40);
      v147._countAndFlagsBits = 0xD00000000000002ALL;
      v147._object = 0x80000001E1B7C3E0;
      v148._countAndFlagsBits = 0;
      v148._object = 0xE000000000000000;
      v149 = localizedString(_:comment:)(v147, v148);
      object = v149._object;
      countAndFlagsBits = v149._countAndFlagsBits;
      sub_1E1AF3DFC();
      v150 = swift_allocObject();
      v151 = &v150[OBJC_IVAR____TtC11AppStoreKit11LocalAction_handler];
      v152 = v264;
      *v151 = v257;
      *(v151 + 1) = v152;
      sub_1E134FD1C(v272, &v283, &unk_1ECEB5670);
      v254(&v150[OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics], v16, v145);
      (v262)(&v150[OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics], 1, 1, v263);
      v153 = &v150[OBJC_IVAR____TtC11AppStoreKit6Action_clickSender];
      *v153 = 0u;
      *(v153 + 1) = 0u;
      v154 = &v150[OBJC_IVAR____TtC11AppStoreKit6Action_id];
      sub_1E134FD1C(&v283, v281, &unk_1ECEB5670);
      if (*(&v281[1] + 1))
      {
        v155 = v281[1];
        *v154 = v281[0];
        *(v154 + 1) = v155;
        *(v154 + 4) = *&v281[2];
      }

      else
      {

        v156 = v269;
        sub_1E1AEFE9C();
        v157 = sub_1E1AEFE7C();
        v159 = v158;
        (*(v268 + 8))(v156, v270);
        *&v277 = v157;
        *(&v277 + 1) = v159;
        sub_1E1AF6F6C();
        sub_1E1308058(v281, &unk_1ECEB5670);
      }

      v160 = v258 << 8;
      sub_1E1308058(&v283, &unk_1ECEB5670);
      v255(v16, v266);
      sub_1E1308058(v272, &unk_1ECEB5670);
      v161 = object;
      *(v150 + 2) = countAndFlagsBits;
      *(v150 + 3) = v161;
      *(v150 + 4) = 0;
      *(v150 + 5) = 0;
      if (v259)
      {
        v162 = v269;
        if (qword_1ECEB0F28 != -1)
        {
          swift_once();
        }

        v163 = &qword_1ECEF45B0;
      }

      else
      {
        v162 = v269;
        if (qword_1ECEB0F18 != -1)
        {
          swift_once();
        }

        v163 = &qword_1ECEF45A0;
      }

      v266 = (v160 | (v256 << 40));
      v164 = *v163;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2718);
      v165 = swift_allocObject();
      *(v165 + 16) = xmmword_1E1B02CD0;
      *(v165 + 32) = v84;
      *(v165 + 40) = 1;
      *(v165 + 48) = v150;
      *(v165 + 56) = 1;
      v259 = 0x80000001E1B797C0;
      memset(v272, 0, 40);
      v166 = v267;
      (v262)(v267, 1, 1, v263);
      type metadata accessor for Artwork();
      v167 = swift_allocObject();
      *(v167 + 152) = 0u;
      *(v167 + 168) = 0u;
      *(v167 + 184) = 0;
      v271 = v164;

      sub_1E1AEFE9C();
      v168 = sub_1E1AEFE7C();
      v170 = v169;
      v268 = *(v268 + 8);
      (v268)(v162, v270);
      *&v283 = v168;
      *(&v283 + 1) = v170;
      sub_1E1AF6F6C();
      sub_1E134FD1C(v166, v167 + OBJC_IVAR____TtC11AppStoreKit7Artwork_impressionMetrics, &unk_1ECEB1770);
      *(v167 + 16) = 0xD000000000000028;
      *(v167 + 24) = v259;
      *(v167 + 32) = 0u;
      *(v167 + 48) = 0u;
      *(v167 + 72) = 25186;
      *(v167 + 80) = 0xE200000000000000;
      *(v167 + 64) = 0;
      *(v167 + 104) = MEMORY[0x1E69E7CC0];
      *&v283 = 25186;
      *(&v283 + 1) = 0xE200000000000000;
      v171 = Artwork.Crop.preferredContentMode.getter();
      sub_1E1308058(v166, &unk_1ECEB1770);
      *(v167 + 88) = v171;
      *(v167 + 96) = 3;
      type metadata accessor for Banner();
      v24 = swift_allocObject();
      sub_1E134FD1C(v272, &v283, &unk_1ECEB5670);
      if (*(&v284 + 1))
      {
        v172 = v284;
        *(v24 + 104) = v283;
        *(v24 + 120) = v172;
        *(v24 + 136) = v285;
      }

      else
      {
        v267 = v271;
        v173 = v269;
        sub_1E1AEFE9C();
        v174 = sub_1E1AEFE7C();
        v176 = v175;
        (v268)(v173, v270);
        *&v281[0] = v174;
        *(&v281[0] + 1) = v176;
        sub_1E1AF6F6C();
        sub_1E1308058(&v283, &unk_1ECEB5670);
      }

      v177 = v260;

      sub_1E1308058(v272, &unk_1ECEB5670);
      v178 = *&v261[16];
      *(v24 + 16) = *&v261[8];
      *(v24 + 24) = v178;
      *(v24 + 32) = v177;
      *(v24 + 40) = v165;
      *(v24 + 48) = v167;
      *(v24 + 56) = 0;
      *(v24 + 64) = v271;
      v179 = 1;
      *(v24 + 72) = 1;
      *(v24 + 80) = xmmword_1E1B04490;
      goto LABEL_84;
    }

    v263 = v0;
    v264 = v17;
    v73 = *(v0 + 120);
    if (v73)
    {
      v74 = *(v0 + 112);
      v75 = *(v0 + 24);
      ObjectType = swift_getObjectType();
      *&v283 = v74;
      *(&v283 + 1) = v73;
      v77 = *(v75 + 56);
      sub_1E18B0F3C(&v287, v272);

      v77(&v283, ObjectType, v75);
      v79 = v78;

      v80 = swift_getObjectType();
      (*(v79 + 16))(v272, v80, v79);
      swift_unknownObjectRelease();
    }

    else
    {
      *&v272[0] = 4;
      *(v272 + 8) = 0u;
      *(&v272[1] + 8) = 0u;
      *(&v272[2] + 1) = 0;
      v273 = xmmword_1E1B11BA0;
    }

    v283 = v272[0];
    v284 = v272[1];
    v285 = v272[2];
    v286 = v273;
    if (v273 >> 60)
    {
      v136 = v263;
      if (v273 >> 60 != 8 || ((v137 = *(&v285 + 1) | *(&v286 + 1), v138 = *(&v284 + 1) | v284 | *(&v283 + 1), v273 != 0x8000000000000000) || v137 | *&v272[0] | v285 | v138) && (v273 != 0x8000000000000000 || *&v272[0] != 4 || v137 | v285 | v138))
      {
        sub_1E139CEA8(&v283);
        goto LABEL_61;
      }
    }

    else
    {
      v136 = v263;
      if (LOBYTE(v272[0]) != 1)
      {
        goto LABEL_61;
      }
    }

    v180 = v136[16];
    if (v180)
    {
      v181 = *(v180 + 224);
      if (v181)
      {
        v182 = *(v180 + 216);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2CD0);
        v183 = swift_allocObject();
        *(v183 + 16) = xmmword_1E1B02CC0;
        *(v183 + 32) = 0x6563697270;
        *(v183 + 40) = 0xE500000000000000;
        *(v183 + 48) = v182;
        *(v183 + 56) = v181;

        v184 = sub_1E13017E4(v183);
        swift_setDeallocating();
        sub_1E1308058(v183 + 32, &unk_1ECEB9500);
        swift_deallocClassInstance();
        v185._countAndFlagsBits = 0xD00000000000003CLL;
        v185._object = 0x80000001E1B7C370;
        v186 = localizedString(_:with:)(v185, v184);
        v262 = v186._object;
        v263 = v186._countAndFlagsBits;

        v187 = 0xD000000000000031;
        v188 = 0x80000001E1B7C270;
LABEL_73:
        v215._countAndFlagsBits = 0;
        v215._object = 0xE000000000000000;
        *&v261[16] = localizedString(_:comment:)(*&v187, v215);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2718);
        v216 = swift_allocObject();
        *(v216 + 16) = xmmword_1E1B02CC0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
        v217 = swift_allocObject();
        *(v217 + 16) = xmmword_1E1B06D70;
        *(v217 + 32) = v22;

        v218 = v264;
        sub_1E1AF3DFC();
        type metadata accessor for CompoundAction();
        v219 = swift_allocObject();
        *&v219[OBJC_IVAR____TtC11AppStoreKit14CompoundAction_actions] = v217;
        memset(v281, 0, 40);
        (v271[2])(&v219[OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics], v218, v6);
        v220 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
        v221 = sub_1E1AF46DC();
        v222 = *(*(v221 - 8) + 56);
        v222(&v219[v220], 1, 1, v221);
        v223 = &v219[OBJC_IVAR____TtC11AppStoreKit6Action_clickSender];
        *v223 = 0u;
        *(v223 + 1) = 0u;
        v224 = &v219[OBJC_IVAR____TtC11AppStoreKit6Action_id];
        sub_1E134FD1C(v281, &v277, &unk_1ECEB5670);
        if (*(&v278 + 1))
        {
          v225 = v278;
          *v224 = v277;
          *(v224 + 1) = v225;
          *(v224 + 4) = v279;
        }

        else
        {
          v226 = v216;
          v227 = v269;
          sub_1E1AEFE9C();
          v228 = sub_1E1AEFE7C();
          v229 = v222;
          v231 = v230;
          v232 = v227;
          v216 = v226;
          (*(v268 + 8))(v232, v270);
          *&v275[0] = v228;
          *(&v275[0] + 1) = v231;
          v222 = v229;
          sub_1E1AF6F6C();
          sub_1E1308058(&v277, &unk_1ECEB5670);
        }

        sub_1E1308058(v281, &unk_1ECEB5670);
        (v271[1])(v264, v266);
        v233 = *&v261[24];
        *(v219 + 2) = *&v261[16];
        *(v219 + 3) = v233;
        *(v219 + 4) = 0;
        *(v219 + 5) = 0;
        *(v216 + 32) = v219;
        v271 = v216;
        *(v216 + 40) = (v265 & 1) == 0;
        if (qword_1ECEB0F28 != -1)
        {
          swift_once();
        }

        v266 = qword_1ECEF45B0;
        memset(v281, 0, 40);
        v234 = v267;
        v222(v267, 1, 1, v221);
        type metadata accessor for Artwork();
        v235 = swift_allocObject();
        *(v235 + 152) = 0u;
        *(v235 + 168) = 0u;
        *(v235 + 184) = 0;
        v236 = v269;
        sub_1E1AEFE9C();
        v237 = sub_1E1AEFE7C();
        v239 = v238;
        v240 = v270;
        v268 = *(v268 + 8);
        (v268)(v236, v270);
        *&v277 = v237;
        *(&v277 + 1) = v239;
        sub_1E1AF6F6C();
        sub_1E134FD1C(v234, v235 + OBJC_IVAR____TtC11AppStoreKit7Artwork_impressionMetrics, &unk_1ECEB1770);
        *(v235 + 16) = 0xD000000000000028;
        *(v235 + 24) = 0x80000001E1B797C0;
        *(v235 + 32) = 0u;
        *(v235 + 48) = 0u;
        *(v235 + 72) = 25186;
        *(v235 + 80) = 0xE200000000000000;
        *(v235 + 64) = 0;
        *(v235 + 104) = MEMORY[0x1E69E7CC0];
        *&v277 = 25186;
        *(&v277 + 1) = 0xE200000000000000;
        v241 = Artwork.Crop.preferredContentMode.getter();
        sub_1E1308058(v234, &unk_1ECEB1770);
        *(v235 + 88) = v241;
        *(v235 + 96) = 3;
        type metadata accessor for Banner();
        v24 = swift_allocObject();
        sub_1E134FD1C(v281, &v277, &unk_1ECEB5670);
        if (*(&v278 + 1))
        {
          v242 = v278;
          *(v24 + 104) = v277;
          *(v24 + 120) = v242;
          *(v24 + 136) = v279;
          v129 = v266;
          v243 = v266;
        }

        else
        {
          v129 = v266;
          v244 = v266;
          sub_1E1AEFE9C();
          v245 = sub_1E1AEFE7C();
          v247 = v246;
          (v268)(v236, v240);
          *&v275[0] = v245;
          *(&v275[0] + 1) = v247;
          sub_1E1AF6F6C();
          sub_1E1308058(&v277, &unk_1ECEB5670);
        }

        sub_1E18B0F74(&v287);
        sub_1E1308058(v281, &unk_1ECEB5670);
        v248 = v262;
        *(v24 + 16) = v263;
        *(v24 + 24) = v248;
        v249 = v271;
        *(v24 + 32) = 0;
        *(v24 + 40) = v249;
        *(v24 + 48) = v235;
        goto LABEL_82;
      }
    }

LABEL_61:
    v189 = v136[15];
    if (v189)
    {
      v190 = v136[14];
      v191 = v136[3];
      v192 = swift_getObjectType();
      *&v277 = v190;
      *(&v277 + 1) = v189;
      v193 = *(v191 + 56);

      v193(&v277, v192, v191);
      v195 = v194;

      v196 = swift_getObjectType();
      (*(v195 + 16))(v281, v196, v195);
      swift_unknownObjectRelease();
    }

    else
    {
      *(v281 + 8) = 0u;
      *(&v281[1] + 8) = 0u;
      *&v281[0] = 4;
      *(&v281[2] + 1) = 0;
      v282 = xmmword_1E1B11BA0;
    }

    v277 = v281[0];
    v278 = v281[1];
    v279 = v281[2];
    v280 = v282;
    v197 = v282;
    sub_1E139CEA8(&v277);
    if (v197 >> 60 == 2)
    {
      v198._countAndFlagsBits = 0xD000000000000039;
      v198._object = 0x80000001E1B7C2F0;
      v199._countAndFlagsBits = 0;
      v199._object = 0xE000000000000000;
      v200 = localizedString(_:comment:)(v198, v199);
      v262 = v200._object;
      v263 = v200._countAndFlagsBits;
      v187 = 0xD000000000000038;
      v188 = 0x80000001E1B7C330;
    }

    else
    {
      v201 = *(v263 + 120);
      if (v201)
      {
        v202 = *(v263 + 112);
        v203 = *(v263 + 24);
        v204 = swift_getObjectType();
        *&v274[0] = v202;
        *(&v274[0] + 1) = v201;
        v205 = *(v203 + 56);

        v205(v274, v204, v203);
        v207 = v206;

        v208 = swift_getObjectType();
        (*(v207 + 16))(v275, v208, v207);
        swift_unknownObjectRelease();
      }

      else
      {
        *(v275 + 8) = 0u;
        *(&v275[1] + 8) = 0u;
        *&v275[0] = 4;
        *(&v275[2] + 1) = 0;
        v276 = xmmword_1E1B11BA0;
      }

      v274[0] = v275[0];
      v274[1] = v275[1];
      v274[2] = v275[2];
      v274[3] = v276;
      v209 = v276;
      sub_1E139CEA8(v274);
      if (v209 >> 60 == 7)
      {
        v210 = "on.Request.Button";
        v211 = 0xD00000000000003CLL;
      }

      else
      {
        v210 = "lApproval.Message";
        v211 = 0xD000000000000032;
      }

      v212 = v210 | 0x8000000000000000;
      v213._countAndFlagsBits = 0;
      v213._object = 0xE000000000000000;
      v214 = localizedString(_:comment:)(*&v211, v213);
      v262 = v214._object;
      v263 = v214._countAndFlagsBits;
      v187 = 0xD000000000000031;
      v188 = 0x80000001E1B7C270;
    }

    goto LABEL_73;
  }

  if (v23 == 2)
  {
    v267 = v3;
    v268 = v4;

    v54._countAndFlagsBits = 0xD000000000000041;
    v54._object = 0x80000001E1B7C190;
    v55._countAndFlagsBits = 0;
    v55._object = 0xE000000000000000;
    v56 = localizedString(_:comment:)(v54, v55);
    v57 = v56._countAndFlagsBits;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2CD0);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1E1B02CC0;
    strcpy((v58 + 32), "approve_link");
    *(v58 + 45) = 0;
    *(v58 + 46) = -5120;
    *(v58 + 48) = v56;
    v263 = v56._object;

    v59 = sub_1E13017E4(v58);
    swift_setDeallocating();
    sub_1E1308058(v58 + 32, &unk_1ECEB9500);
    swift_deallocClassInstance();
    v60._countAndFlagsBits = 0xD000000000000041;
    v60._object = 0x80000001E1B7C1E0;
    v61 = localizedString(_:with:)(v60, v59);
    v264 = v61._object;
    v265 = v61._countAndFlagsBits;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_1E1B06D70;
    *(v62 + 32) = v22;

    sub_1E1AF3DFC();
    type metadata accessor for CompoundAction();
    v63 = swift_allocObject();
    *(v63 + OBJC_IVAR____TtC11AppStoreKit14CompoundAction_actions) = v62;
    memset(v272, 0, 40);
    (v271[2])(v63 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v12, v6);
    v64 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
    v65 = sub_1E1AF46DC();
    v66 = *(v65 - 8);
    v67 = *(v66 + 56);
    v68 = v63 + v64;
    v69 = v66 + 56;
    v67(v68, 1, 1, v65);
    v70 = (v63 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
    *v70 = 0u;
    v70[1] = 0u;
    v71 = v63 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
    sub_1E134FD1C(v272, &v283, &unk_1ECEB5670);
    if (*(&v284 + 1))
    {
      v72 = v284;
      *v71 = v283;
      *(v71 + 1) = v72;
      *(v71 + 4) = v285;
    }

    else
    {
      *&v261[24] = v69;
      v92 = v269;
      sub_1E1AEFE9C();
      v93 = v6;
      v94 = sub_1E1AEFE7C();
      v262 = v67;
      v96 = v95;
      (*(v268 + 8))(v92, v270);
      *&v281[0] = v94;
      *(&v281[0] + 1) = v96;
      v6 = v93;
      v57 = v56._countAndFlagsBits;
      v67 = v262;
      sub_1E1AF6F6C();
      sub_1E1308058(&v283, &unk_1ECEB5670);
    }

    sub_1E1308058(v272, &unk_1ECEB5670);
    (v271[1])(v12, v6);
    v97 = v263;
    v63[2] = v57;
    v63[3] = v97;
    v63[4] = 0;
    v63[5] = 0;
    if (qword_1ECEB0F18 != -1)
    {
      swift_once();
    }

    v271 = qword_1ECEF45A0;
    memset(v272, 0, 40);
    v98 = v267;
    v67(v267, 1, 1, v65);
    type metadata accessor for Artwork();
    v99 = swift_allocObject();
    *(v99 + 152) = 0u;
    *(v99 + 168) = 0u;
    *(v99 + 184) = 0;
    v100 = v269;
    sub_1E1AEFE9C();
    v101 = sub_1E1AEFE7C();
    v103 = v102;
    v268 = *(v268 + 8);
    (v268)(v100, v270);
    *&v283 = v101;
    *(&v283 + 1) = v103;
    sub_1E1AF6F6C();
    sub_1E134FD1C(v98, v99 + OBJC_IVAR____TtC11AppStoreKit7Artwork_impressionMetrics, &unk_1ECEB1770);
    *(v99 + 16) = 0xD000000000000028;
    *(v99 + 24) = 0x80000001E1B797C0;
    *(v99 + 32) = 0u;
    *(v99 + 48) = 0u;
    *(v99 + 72) = 25186;
    *(v99 + 80) = 0xE200000000000000;
    *(v99 + 64) = 0;
    v104 = MEMORY[0x1E69E7CC0];
    *(v99 + 104) = MEMORY[0x1E69E7CC0];
    *&v283 = 25186;
    *(&v283 + 1) = 0xE200000000000000;
    v105 = Artwork.Crop.preferredContentMode.getter();
    sub_1E1308058(v98, &unk_1ECEB1770);
    *(v99 + 88) = v105;
    *(v99 + 96) = 3;
    type metadata accessor for Banner();
    v24 = swift_allocObject();
    sub_1E134FD1C(v272, &v283, &unk_1ECEB5670);
    if (*(&v284 + 1))
    {
      v106 = v284;
      *(v24 + 104) = v283;
      *(v24 + 120) = v106;
      *(v24 + 136) = v285;
      v107 = v271;
      v108 = v271;
    }

    else
    {
      v107 = v271;
      v109 = v271;
      sub_1E1AEFE9C();
      v110 = sub_1E1AEFE7C();
      v112 = v111;
      (v268)(v100, v270);
      *&v281[0] = v110;
      *(&v281[0] + 1) = v112;
      sub_1E1AF6F6C();
      sub_1E1308058(&v283, &unk_1ECEB5670);
    }

    sub_1E18B0F74(&v287);
    sub_1E1308058(v272, &unk_1ECEB5670);
    v113 = v264;
    *(v24 + 16) = v265;
    *(v24 + 24) = v113;
    *(v24 + 32) = v63;
    *(v24 + 40) = v104;
    *(v24 + 48) = v99;
    *(v24 + 56) = 0;
    *(v24 + 64) = v107;
    goto LABEL_83;
  }

  v24 = 0;
  if (v23 == 3)
  {
    v267 = v3;
    v268 = v4;

    v25._countAndFlagsBits = 0xD000000000000048;
    v25._object = 0x80000001E1B7C0F0;
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    v27 = localizedString(_:comment:)(v25, v26);
    v28 = v27._countAndFlagsBits;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2CD0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1E1B02CC0;
    strcpy((v29 + 32), "approve_link");
    *(v29 + 45) = 0;
    *(v29 + 46) = -5120;
    *(v29 + 48) = v27;
    v263 = v27._object;

    v30 = sub_1E13017E4(v29);
    swift_setDeallocating();
    sub_1E1308058(v29 + 32, &unk_1ECEB9500);
    swift_deallocClassInstance();
    v31._countAndFlagsBits = 0xD000000000000048;
    v31._object = 0x80000001E1B7C140;
    v32 = localizedString(_:with:)(v31, v30);
    v264 = v32._object;
    v265 = v32._countAndFlagsBits;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1E1B06D70;
    *(v33 + 32) = v22;

    sub_1E1AF3DFC();
    type metadata accessor for CompoundAction();
    v34 = swift_allocObject();
    *(v34 + OBJC_IVAR____TtC11AppStoreKit14CompoundAction_actions) = v33;
    memset(v272, 0, 40);
    (v271[2])(v34 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v9, v6);
    v35 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
    v36 = sub_1E1AF46DC();
    v37 = *(v36 - 8);
    v38 = *(v37 + 56);
    v39 = v34 + v35;
    v40 = v37 + 56;
    v38(v39, 1, 1, v36);
    v41 = (v34 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
    *v41 = 0u;
    v41[1] = 0u;
    v42 = v34 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
    sub_1E134FD1C(v272, &v283, &unk_1ECEB5670);
    if (*(&v284 + 1))
    {
      v43 = v284;
      *v42 = v283;
      *(v42 + 1) = v43;
      *(v42 + 4) = v285;
    }

    else
    {
      *&v261[24] = v40;
      v114 = v269;
      sub_1E1AEFE9C();
      v115 = sub_1E1AEFE7C();
      v262 = v38;
      v116 = v115;
      v117 = v6;
      v119 = v118;
      (*(v268 + 8))(v114, v270);
      *&v281[0] = v116;
      *(&v281[0] + 1) = v119;
      v28 = v27._countAndFlagsBits;
      v38 = v262;
      v6 = v117;
      sub_1E1AF6F6C();
      sub_1E1308058(&v283, &unk_1ECEB5670);
    }

    sub_1E1308058(v272, &unk_1ECEB5670);
    (v271[1])(v9, v6);
    v120 = v263;
    v34[2] = v28;
    v34[3] = v120;
    v34[4] = 0;
    v34[5] = 0;
    if (qword_1ECEB0F28 != -1)
    {
      swift_once();
    }

    v271 = qword_1ECEF45B0;
    memset(v272, 0, 40);
    v121 = v267;
    v38(v267, 1, 1, v36);
    type metadata accessor for Artwork();
    v122 = swift_allocObject();
    *(v122 + 152) = 0u;
    *(v122 + 168) = 0u;
    *(v122 + 184) = 0;
    v123 = v269;
    sub_1E1AEFE9C();
    v124 = sub_1E1AEFE7C();
    v126 = v125;
    v268 = *(v268 + 8);
    (v268)(v123, v270);
    *&v283 = v124;
    *(&v283 + 1) = v126;
    sub_1E1AF6F6C();
    sub_1E134FD1C(v121, v122 + OBJC_IVAR____TtC11AppStoreKit7Artwork_impressionMetrics, &unk_1ECEB1770);
    *(v122 + 16) = 0xD000000000000028;
    *(v122 + 24) = 0x80000001E1B797C0;
    *(v122 + 32) = 0u;
    *(v122 + 48) = 0u;
    *(v122 + 72) = 25186;
    *(v122 + 80) = 0xE200000000000000;
    *(v122 + 64) = 0;
    *(v122 + 104) = MEMORY[0x1E69E7CC0];
    *&v283 = 25186;
    *(&v283 + 1) = 0xE200000000000000;
    v127 = Artwork.Crop.preferredContentMode.getter();
    sub_1E1308058(v121, &unk_1ECEB1770);
    *(v122 + 88) = v127;
    *(v122 + 96) = 3;
    type metadata accessor for Banner();
    v24 = swift_allocObject();
    sub_1E134FD1C(v272, &v283, &unk_1ECEB5670);
    if (*(&v284 + 1))
    {
      v128 = v284;
      *(v24 + 104) = v283;
      *(v24 + 120) = v128;
      *(v24 + 136) = v285;
      v129 = v271;
      v130 = v271;
    }

    else
    {
      v129 = v271;
      v131 = v271;
      sub_1E1AEFE9C();
      v132 = sub_1E1AEFE7C();
      v134 = v133;
      (v268)(v123, v270);
      *&v281[0] = v132;
      *(&v281[0] + 1) = v134;
      sub_1E1AF6F6C();
      sub_1E1308058(&v283, &unk_1ECEB5670);
    }

    sub_1E18B0F74(&v287);
    sub_1E1308058(v272, &unk_1ECEB5670);
    v135 = v264;
    *(v24 + 16) = v265;
    *(v24 + 24) = v135;
    *(v24 + 32) = v34;
    *(v24 + 40) = MEMORY[0x1E69E7CC0];
    *(v24 + 48) = v122;
LABEL_82:
    *(v24 + 56) = 0;
    *(v24 + 64) = v129;
LABEL_83:
    *(v24 + 72) = 1;
    *(v24 + 80) = xmmword_1E1B04490;
    v179 = 2;
LABEL_84:
    *(v24 + 96) = v179;
  }

  return v24;
}

uint64_t sub_1E18AE578(uint64_t a1)
{
  v2 = v1;
  v4 = v1[14];
  v5 = v2[15];
  v6 = *(a1 + qword_1EE2168A8);
  v8 = v6[2];
  v7 = v6[3];
  v2[14] = v8;
  v2[15] = v7;
  v2[16] = v6[30];
  swift_bridgeObjectRetain_n();

  v2[17] = v6[29];

  v2[12] = a1;

  if (v7)
  {
    if (v5)
    {
      if (v8 == v4 && v5 == v7)
      {

LABEL_14:

        goto LABEL_16;
      }

      v10 = sub_1E1AF74AC();

      if (v10)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

LABEL_10:

    if (!v5)
    {
LABEL_12:
      v16 = v2[3];
      ObjectType = swift_getObjectType();
      v24 = v8;
      v25 = v7;
      (*(v16 + 56))(&v24, ObjectType, v16);
      v19 = v18;

      v20 = swift_getObjectType();
      v21 = swift_allocObject();
      swift_weakInit();
      v22 = *(v19 + 72);

      v22(v2, sub_1E18B0FA4, v21, v20, v19);
      swift_unknownObjectRelease();

      goto LABEL_16;
    }

LABEL_11:
    v11 = v2[3];
    v12 = swift_getObjectType();
    v24 = v4;
    v25 = v5;
    (*(v11 + 56))(&v24, v12, v11);
    v14 = v13;

    v15 = swift_getObjectType();
    (*(v14 + 80))(v2, v15, v14);
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  if (v5)
  {
    goto LABEL_10;
  }

  swift_bridgeObjectRelease_n();
LABEL_16:

  return sub_1E18AEAD8();
}

uint64_t sub_1E18AE808()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E18AE860();
  }

  return result;
}

uint64_t sub_1E18AE860()
{
  v1 = *(v0 + 192);
  v27 = *(v0 + 176);
  v28 = v1;
  v29 = *(v0 + 208);
  v2 = *(v0 + 160);
  v25 = *(v0 + 144);
  v26 = v2;
  sub_1E18B0F3C(&v25, v18);
  sub_1E18AEAD8();
  v3 = *(v0 + 96);
  if (!v3)
  {
    return sub_1E18B0F74(&v25);
  }

  v4 = *(v0 + 192);
  v5 = *(v0 + 160);
  *v17 = *(v0 + 176);
  *&v17[16] = v4;
  v6 = *(v0 + 160);
  v15 = *(v0 + 144);
  v16 = v6;
  v18[2] = v27;
  v18[3] = v28;
  v18[0] = v25;
  v18[1] = v26;
  v20 = v15;
  v23 = *(v0 + 192);
  v22 = *v17;
  *&v17[32] = *(v0 + 208);
  v7 = *(v0 + 208);
  v19 = v29;
  v24 = v7;
  v21 = v5;
  v8 = v26 >> 61;
  if ((v26 >> 61) > 1)
  {
    if (v8 == 2)
    {
      if (v16 >> 61 != 2)
      {
        goto LABEL_20;
      }
    }

    else if (v8 == 3)
    {
      if (v16 >> 61 != 3)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v16 >> 61 != 4)
      {
        goto LABEL_20;
      }

      if (v16 != 0x8000000000000000)
      {
        goto LABEL_20;
      }

      v11 = vorrq_s8(*&v17[8], *&v17[24]);
      if (*&vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL)) | *v17 | *(&v16 + 1) | *(&v15 + 1) | v15)
      {
        goto LABEL_20;
      }
    }

LABEL_16:
    sub_1E18B0F3C(&v15, v14);
    return sub_1E1308058(v18, &qword_1ECEBA908);
  }

  v10 = v16 >> 61;
  if (!v8)
  {
    if (v10)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (v10 == 1)
  {
    v12 = BYTE8(v25);
    v13 = BYTE8(v15);
    sub_1E18B0F3C(&v25, v14);

    sub_1E18B0F3C(&v15, v14);
    sub_1E1308058(v18, &qword_1ECEBA908);
    if (((v12 ^ v13) & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_20:
  sub_1E18B0F3C(&v25, v14);

  sub_1E18B0F3C(&v15, v14);
  sub_1E1308058(v18, &qword_1ECEBA908);
LABEL_21:
  v14[0] = v3;
  sub_1E1AF35BC();
LABEL_22:
  sub_1E18B0F74(&v25);
}

uint64_t sub_1E18AEAD8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5BF0);
  result = MEMORY[0x1EEE9AC00](v1);
  v5 = &v75 - v4;
  v6 = *(v0 + 120);
  if (v6)
  {
    v78 = v3;
    v79 = result;
    v7 = *(v0 + 112);
    v8 = *(v0 + 88) + OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_subscriptionState;
    swift_beginAccess();
    v76 = *(v8 + 8);
    v9 = *(v0 + 136);
    *&v86 = *(v0 + 128);
    v10 = *(v0 + 96);
    if (v10)
    {
      LODWORD(v77) = *(*(v10 + qword_1EE2168A8) + 304) != 0;
      v81 = (v0 + 144);
      v11 = *(v0 + 192);
      *v106 = *(v0 + 176);
      *&v106[16] = v11;
      *&v106[32] = *(v0 + 208);
      v12 = *(v0 + 160);
      v104 = *(v0 + 144);
      v105 = v12;
      v13 = (v10 + qword_1EE2158C0);
      v14 = *(v13 + 2);
      v15 = *(v13 + 3);
      v16 = *(v13 + 4);
      v17 = *(v13 + 40);
      v87 = *v13;
      v88 = v17;
      v84 = v15;
      v85 = v14;
      v80 = v16;
      sub_1E1475BB8(v87, *(&v87 + 1), v14, v15);
    }

    else
    {
      LODWORD(v77) = 0;
      v84 = 0;
      v85 = 0;
      *&v106[32] = *(v0 + 208);
      v80 = 0;
      v81 = (v0 + 144);
      v18 = *(v0 + 192);
      *v106 = *(v0 + 176);
      *&v106[16] = v18;
      v19 = *(v0 + 160);
      v104 = *(v0 + 144);
      v105 = v19;
      v87 = 0u;
      v88 = 0u;
    }

    v20 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    v89 = v7;
    v90 = v6;
    v82 = v0;
    *&v83 = v9;
    v22 = *(v20 + 56);

    v23 = v86;

    sub_1E18B0F3C(&v104, &v99);
    v24 = v22(&v89, ObjectType, v20);
    v25 = v82;
    v26 = v24;
    v28 = v27;

    v29 = *(v25 + 104);
    if (qword_1EE1D2208 != -1)
    {
      swift_once();
    }

    sub_1E1AF52FC();
    v30 = v79;
    sub_1E1AF532C();
    (*(v78 + 8))(v5, v30);
    v79 = *(&v88 + 1);
    if (!v23)
    {
      v38 = *(&v87 + 1);

      swift_unknownObjectRelease();
      v33 = v38;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v26 = 0;
      v86 = 0u;
      v83 = 0u;
      v37 = 0x8000000000000000;
      v31 = v84;
      goto LABEL_11;
    }

    v31 = v84;
    if (!(v105 >> 61))
    {
      v101 = *v106;
      v102 = *&v106[16];
      v99 = v104;
      v100.i64[1] = *(&v105 + 1);
      v103 = *&v106[32];
      v100.i64[0] = v105 & 0x1FFFFFFFFFFFFFFFLL;
      v32 = *(&v87 + 1);
      sub_1E134FD1C(&v99, &v89, &qword_1ECEBA900);

      swift_unknownObjectRelease();
      v33 = v32;
      v35 = *(&v104 + 1);
      v34 = v104;
      v36 = *(&v105 + 1);
      v37 = v105;
      v26 = *v106;
      v83 = *&v106[24];
      v86 = *&v106[8];
LABEL_11:
      sub_1E147A814(v87, v33, v85, v31);
      sub_1E18B0F74(&v104);
      v39 = v81[3];
      v101 = v81[2];
      v102 = v39;
      v103 = *(v81 + 8);
      v40 = v81[1];
      v99 = *v81;
      v100 = v40;
      *(v25 + 144) = v34;
      *(v25 + 152) = v35;
      *(v25 + 160) = v37;
      *(v25 + 168) = v36;
      *(v25 + 176) = v26;
      *(v25 + 200) = v83;
      *(v25 + 184) = v86;
      return sub_1E18B0F74(&v99);
    }

    if (v84 && *(&v87 + 1))
    {
      v37 = v85 & 0x101;
      v41 = *(&v87 + 1);
      v34 = v87;
      v42 = v80;
      sub_1E1475BB8(v87, *(&v87 + 1), v85, v84);

      swift_unknownObjectRelease();
      v33 = v41;
      v43 = v42;
      v35 = v41;
      v36 = v31;
      v26 = v43;
      v86 = v88;
      v83 = v87;
      goto LABEL_11;
    }

    v78 = *(&v87 + 1);
    if (v105 >> 62 == 1)
    {
      __swift_project_boxed_opaque_existential_1Tm((v25 + 32), *(v25 + 56));
      LOBYTE(v99) = 3;
      v44 = v86;

      v45 = RestrictionsProtocol.doesAllow(_:properties:)(&v99, v44);
      v46 = swift_getObjectType();
      v47 = *(v28 + 16);
      v47(&v89, v46, v28);
      v48 = (v95 >> 60) - 5;
      sub_1E139CEA8(&v89);
      if (v48 < 2)
      {

        v31 = v84;
        if (!v45)
        {
          goto LABEL_39;
        }

        goto LABEL_36;
      }

      v47(v97, v46, v28);

      v99 = v97[0];
      v100 = v97[1];
      v101 = v97[2];
      v102 = v98;
      v50 = v98 >> 60;
      if (v98 >> 60 == 2 || v50 == 7 || v50 == 8 && !*(&v102 + 1) && v98 == 0x8000000000000000 && v99 == 1 && (v51 = vorrq_s8(v100, v101), !(*&vorr_s8(*v51.i8, *&vextq_s8(v51, v51, 8uLL)) | *(&v99 + 1))))
      {
        sub_1E139CEA8(&v99);
        v31 = v84;
        if (v45)
        {
LABEL_36:

          swift_unknownObjectRelease();
          goto LABEL_37;
        }
      }

      else
      {
        sub_1E139CEA8(&v99);
        v31 = v84;
      }

LABEL_39:
      sub_1E18B0F3C(&v104, &v99);

      swift_unknownObjectRelease();
      v35 = *(&v104 + 1);
      v34 = v104;
      v36 = *(&v105 + 1);
      v37 = v105;
      v26 = *v106;
      v83 = *&v106[24];
      v86 = *&v106[8];
      goto LABEL_40;
    }

    if ((v29 & 1) == 0 || (v99 & 1) == 0)
    {

      swift_unknownObjectRelease();
      goto LABEL_27;
    }

    __swift_project_boxed_opaque_existential_1Tm((v25 + 32), *(v25 + 56));
    LOBYTE(v99) = 3;
    v49 = v86;

    if (RestrictionsProtocol.doesAllow(_:properties:)(&v99, v49) || (*(v49 + 120) & 1) != 0 || v77)
    {

      swift_unknownObjectRelease();

LABEL_27:

LABEL_37:
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v26 = 0;
      v86 = 0u;
      v83 = 0u;
      v37 = 0x8000000000000000;
LABEL_40:
      v33 = v78;
      goto LABEL_11;
    }

    if (*(v49 + 16) > 2u)
    {
      v54 = v49;

      v52 = v83;
    }

    else
    {
      v52 = v83;
      v53 = sub_1E1AF74AC();

      v54 = v86;
      if ((v53 & 1) == 0)
      {
LABEL_50:
        if (v52)
        {
          v36 = type metadata accessor for OfferAction();
          v56 = swift_dynamicCastClass();
          if (v56)
          {
            v77 = v56;

            goto LABEL_53;
          }

          type metadata accessor for OfferStateAction();
          if (swift_dynamicCastClass())
          {

            v59 = swift_unknownObjectRetain();
            OfferStateAction.preferredAction(for:)(v59, v28);

            swift_unknownObjectRelease();
            v77 = swift_dynamicCastClass();
            if (!v77)
            {
              goto LABEL_58;
            }

LABEL_53:
            v57 = swift_getObjectType();
            (*(v28 + 16))(&v89, v57, v28);
            v58 = v95 >> 60;
            if ((v95 >> 60) > 3)
            {
              if (v58 == 4 || v58 == 7)
              {
                sub_1E139CEA8(&v89);
                v68 = *(v54 + 48);
                if (v68)
                {
                  v69 = *(v54 + 40);
                  v71 = *(v25 + 56);
                  v70 = *(v25 + 64);
                  __swift_project_boxed_opaque_existential_1Tm((v25 + 32), v71);
                  v72 = *(v70 + 16);

                  if (*(v72(v71, v70) + 16))
                  {
                    sub_1E13018F8(v69, v68);
                    v74 = v73;

                    if (v74)
                    {

                      swift_unknownObjectRelease();

                      v34 = 0;
                      v35 = 0;
                      v36 = 0;
                      v26 = 0;
                      v86 = 0u;
                      v83 = 0u;
                      v37 = 0x8000000000000000;
                      goto LABEL_79;
                    }
                  }

                  else
                  {
                  }

                  v25 = v82;
                  v31 = v84;
                }

                LOBYTE(v99) = 0;
                v36 = v77;
                v34 = OfferAction.asExceptionRequest(forceAskToBuyReason:)(&v99);

                swift_unknownObjectRelease();

LABEL_94:

                v35 = 0;
                v37 = 0x2000000000000000;
                goto LABEL_40;
              }

              if (v58 != 8)
              {
                goto LABEL_86;
              }

              v60 = (*(&v89 + 1) << 8) | ((*(&v89 + 5) | (HIBYTE(v89) << 16)) << 40) | v89;
              v61 = v94 | v96 | v93;
              if (v95 == 0x8000000000000000 && !(v61 | v92 | v91 | v90 | v60))
              {
                LOBYTE(v99) = 2;
                v34 = OfferAction.asExceptionRequest(forceAskToBuyReason:)(&v99);

                swift_unknownObjectRelease();

                v35 = 0;
                v37 = 0x2000000000000000;
                goto LABEL_79;
              }

              v25 = v82;
              v31 = v84;
              v54 = v86;
              if (v95 != 0x8000000000000000 || v60 != 4 || v61 | v92 | v91 | v90)
              {
LABEL_86:

                sub_1E139CEA8(&v89);
                goto LABEL_87;
              }
            }

            else
            {
              if ((v58 - 2) >= 2)
              {
                if (v58)
                {
                  if (v58 == 1)
                  {
                    if ((v89 & 1) == 0)
                    {
LABEL_58:

                      swift_unknownObjectRelease();

LABEL_88:

                      goto LABEL_27;
                    }

                    goto LABEL_69;
                  }

                  goto LABEL_86;
                }

                if (v105 >> 61 != 1)
                {
                  sub_1E18B0F3C(&v104, &v99);

                  swift_unknownObjectRelease();
                  v35 = *(&v104 + 1);
                  v34 = v104;
                  v36 = *(&v105 + 1);
                  v37 = v105;
                  v26 = *v106;
                  v83 = *&v106[24];
                  v86 = *&v106[8];
                  v25 = v82;
                  goto LABEL_90;
                }

                v34 = v104;

                swift_unknownObjectRelease();
                v37 = 0x2000000000000000;
                v35 = 1;
LABEL_79:
                v25 = v82;
LABEL_90:
                v31 = v84;
                goto LABEL_40;
              }

              sub_1E139CEA8(&v89);
            }

LABEL_69:
            v62 = *(v54 + 48);
            if (v62)
            {
              v63 = *(v54 + 40);
              v65 = *(v25 + 56);
              v64 = *(v25 + 64);
              __swift_project_boxed_opaque_existential_1Tm((v25 + 32), v65);
              v66 = *(v64 + 16);

              if (*(v66(v65, v64) + 16))
              {
                sub_1E13018F8(v63, v62);
                v36 = v67;
              }

              else
              {

                v36 = 0;
              }

              v25 = v82;
              v31 = v84;
            }

            else
            {
              v36 = 0;
            }

            LOBYTE(v99) = v36 & 1;
            v34 = OfferAction.asExceptionRequest(forceAskToBuyReason:)(&v99);

            swift_unknownObjectRelease();

            goto LABEL_94;
          }
        }

LABEL_87:

        swift_unknownObjectRelease();
        goto LABEL_88;
      }
    }

    if (*(v54 + 16) > 2u)
    {
    }

    else
    {
      v55 = sub_1E1AF74AC();

      v54 = v86;
      if ((v55 & 1) == 0)
      {
        goto LABEL_87;
      }
    }

    if ((v76 & 0xC0) != 0x80)
    {
      goto LABEL_87;
    }

    goto LABEL_50;
  }

  return result;
}

uint64_t sub_1E18AF86C(uint64_t a1)
{
  v17 = a1;
  v1 = sub_1E1AF320C();
  v20 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF324C();
  v18 = *(v4 - 8);
  v19 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AEF55C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E13006E4(0, &qword_1EE1E3430);
  v11 = sub_1E1AF68EC();
  v12 = swift_allocObject();
  swift_weakInit();
  (*(v8 + 16))(v10, v17, v7);
  v13 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  (*(v8 + 32))(v14 + v13, v10, v7);
  aBlock[4] = sub_1E18B0ED8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E1302D64;
  aBlock[3] = &block_descriptor_83;
  v15 = _Block_copy(aBlock);

  sub_1E1AF322C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E139D5D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
  sub_1E1302CD4(&qword_1EE1E3500, &qword_1ECEB3E00);
  sub_1E1AF6EEC();
  MEMORY[0x1E68FF640](0, v6, v3, v15);
  _Block_release(v15);

  (*(v20 + 8))(v3, v1);
  return (*(v18 + 8))(v6, v19);
}

uint64_t sub_1E18AFC10()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_1E1AEF54C();
    if (v2)
    {
      v3 = v2;
      v15[0] = 0x64496D616461;
      v15[1] = 0xE600000000000000;
      sub_1E1AF6F6C();
      if (*(v3 + 16) && (v4 = sub_1E135FCF4(&v21), (v5 & 1) != 0))
      {
        sub_1E137A5C4(*(v3 + 56) + 32 * v4, &v16);
        sub_1E134B88C(&v21);

        if (*(&v17 + 1))
        {
          if (swift_dynamicCast())
          {
            if (*(v1 + 120))
            {
              if (*(v1 + 112) == v21)
              {

                goto LABEL_17;
              }

              v6 = sub_1E1AF74AC();

              if (v6)
              {
LABEL_17:
                v7 = sub_1E18AC144();
                if (v7)
                {
                  v8 = *(v1 + 192);
                  *v23 = *(v1 + 176);
                  *&v23[16] = v8;
                  *&v23[32] = *(v1 + 208);
                  v9 = *(v1 + 160);
                  v21 = *(v1 + 144);
                  v22 = v9;
                  if (v9 >> 61 == 1)
                  {
                    v13 = *(v1 + 192);
                    v18 = *(v1 + 176);
                    v19 = v13;
                    v20 = *(v1 + 208);
                    v14 = *(v1 + 160);
                    v16 = *(v1 + 144);
                    v17 = v14;
                    *(v1 + 144) = v7;
                    *(v1 + 160) = 0x6000000000000000;

                    sub_1E18B0F3C(&v21, v15);
                    sub_1E18B0F74(&v16);
                    if (*(v1 + 96))
                    {
                      v15[0] = *(v1 + 96);

                      sub_1E1AF35BC();
                    }

                    sub_1E18B0F74(&v21);
                  }

                  else
                  {
                    if (v9 >> 61 == 4 && v9 == 0x8000000000000000)
                    {
                      v10 = vorrq_s8(*&v23[8], *&v23[24]);
                      if (!(*&vorr_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL)) | *v23 | *(&v22 + 1) | *(&v21 + 1) | v21))
                      {
                        v11 = *(v1 + 192);
                        v18 = *(v1 + 176);
                        v19 = v11;
                        v20 = *(v1 + 208);
                        v12 = *(v1 + 160);
                        v16 = *(v1 + 144);
                        v17 = v12;
                        *(v1 + 144) = v7;
                        *(v1 + 160) = 0x4000000000000000;

                        sub_1E18B0F74(&v16);
                        if (*(v1 + 96))
                        {
                          v15[0] = *(v1 + 96);

                          sub_1E1AF35BC();
                        }
                      }
                    }
                  }
                }
              }
            }

            else
            {
            }
          }
        }
      }

      else
      {

        sub_1E134B88C(&v21);
        v16 = 0u;
        v17 = 0u;
      }
    }

    else
    {

      v16 = 0u;
      v17 = 0u;
    }

    return sub_1E1308058(&v16, &qword_1ECEB2DF0);
  }

  return result;
}

uint64_t sub_1E18B0050()
{
  v1[16] = v0;
  v2 = sub_1E1AF0B9C();
  v1[17] = v2;
  v1[18] = *(v2 - 8);
  v1[19] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7F08);
  v1[20] = v3;
  v1[21] = *(v3 - 8);
  v1[22] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7F10);
  v1[23] = v4;
  v1[24] = *(v4 - 8);
  v1[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7F18);
  v1[26] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7F20);
  v1[27] = v5;
  v1[28] = *(v5 - 8);
  v1[29] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7F28);
  v1[30] = v6;
  v1[31] = *(v6 - 8);
  v1[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7D18);
  v1[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E18B0320, 0, 0);
}

uint64_t sub_1E18B0320()
{
  v1 = v0[33];
  sub_1E1AF683C();
  v2 = sub_1E1AF561C();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1E1308058(v0[33], &qword_1ECEB7D18);
LABEL_5:

    v7 = v0[1];

    return v7();
  }

  v4 = v0[33];
  swift_getKeyPath();
  sub_1E1AF560C();

  v5 = v0[13];
  v0[34] = v5;
  (*(v3 + 8))(v4, v2);
  if (!v5)
  {
    goto LABEL_5;
  }

  sub_1E1AF0BBC();
  v6 = sub_1E1AF0BAC();
  sub_1E1AF0B7C();
  v10 = v0[28];
  v9 = v0[29];
  v11 = v0[27];

  sub_1E1AF0B5C();
  (*(v10 + 8))(v9, v11);
  v12 = sub_1E1302CD4(&qword_1EE1D2AE8, &qword_1ECEB7F28);
  v13 = swift_task_alloc();
  v0[35] = v13;
  *v13 = v0;
  v13[1] = sub_1E18B077C;
  v14 = v0[30];
  v15 = v0[26];

  return MEMORY[0x1EEE6D8C8](v15, v14, v12);
}

uint64_t sub_1E18B077C()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_1E18B0CC0;
  }

  else
  {
    v2 = sub_1E18B0890;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E18B08AC()
{
  v1 = *(v0 + 208);
  if ((*(*(v0 + 192) + 48))(v1, 1, *(v0 + 184)) == 1)
  {
    v2 = *(v0 + 272);
    (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    sub_1E16F54C4(v1, *(v0 + 200));
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v6 = *(v0 + 200);
    if (EnumCaseMultiPayload == 1)
    {
      (*(*(v0 + 144) + 32))(*(v0 + 152), v6, *(v0 + 136));
      if (qword_1ECEB1580 != -1)
      {
        swift_once();
      }

      v8 = *(v0 + 144);
      v7 = *(v0 + 152);
      v9 = *(v0 + 136);
      v10 = sub_1E1AF591C();
      __swift_project_value_buffer(v10, qword_1ECEF4C30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
      sub_1E1AF382C();
      *(v0 + 72) = v9;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 48));
      (*(v8 + 16))(boxed_opaque_existential_0, v7, v9);
      sub_1E1AF38BC();
      sub_1E1308058(v0 + 48, &qword_1ECEB2DF0);
      sub_1E1AF54AC();

      (*(v8 + 8))(v7, v9);
    }

    else
    {
      v12 = *(v0 + 128);
      (*(*(v0 + 168) + 32))(*(v0 + 176), v6, *(v0 + 160));
      sub_1E1AF0B6C();
      *(v12 + 104) = *(v0 + 296) & 1;
      if (*(v12 + 96))
      {

        sub_1E18AE578(v13);
      }

      else
      {
        sub_1E18AEAD8();
      }

      (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
    }

    v14 = sub_1E1302CD4(&qword_1EE1D2AE8, &qword_1ECEB7F28);
    v15 = swift_task_alloc();
    *(v0 + 280) = v15;
    *v15 = v0;
    v15[1] = sub_1E18B077C;
    v16 = *(v0 + 240);
    v17 = *(v0 + 208);

    return MEMORY[0x1EEE6D8C8](v17, v16, v14);
  }
}

uint64_t sub_1E18B0CC0()
{
  *(v0 + 120) = *(v0 + 288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB57A0);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

unint64_t get_enum_tag_for_layout_string_11AppStoreKit24ProductAskToBuyPresenterC6StatusO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0)
  {
    return v1 >> 61;
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_1E18B0D68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 16) >> 2) & 0xFFFFFF80 | (*(a1 + 16) >> 1);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1E18B0DBC(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 72) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = (4 * -a2) & 0x3FFFFFE00 | (2 * (-a2 & 0x7FLL));
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      return result;
    }

    *(a1 + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E18B0E3C(uint64_t result, uint64_t a2)
{
  if (a2 < 4)
  {
    *(result + 16) = *(result + 16) & 0x101 | (a2 << 61);
  }

  else
  {
    *result = (a2 - 4);
    *(result + 8) = xmmword_1E1B3CB60;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
  }

  return result;
}

id sub_1E18B0E9C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 ams_accountID];
  *a2 = result;
  return result;
}

uint64_t sub_1E18B0ED8()
{
  sub_1E1AEF55C();

  return sub_1E18AFC10();
}

void sub_1E18B0FAC(void *a1)
{
  v2 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  if (a1)
  {
    v3 = a1;
    if (qword_1ECEB1580 != -1)
    {
      swift_once();
    }

    v4 = sub_1E1AF591C();
    __swift_project_value_buffer(v4, qword_1ECEF4C30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v7[3] = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v7);
    (*(*(v6 - 8) + 16))(boxed_opaque_existential_0);
    sub_1E1AF385C();
    sub_1E1308058(v7, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();
  }
}

uint64_t sub_1E18B11F0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 61;
  if ((a3 >> 61) > 1)
  {
    if (v4 == 2 || v4 == 3)
    {
    }
  }

  else if (v4)
  {
    if (v4 == 1)
    {
    }
  }

  else
  {
  }

  return result;
}

uint64_t sub_1E18B1298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - v9;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0x8000000000000000;
  *(v3 + 168) = 0u;
  *(v3 + 184) = 0u;
  *(v3 + 200) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3098);
  swift_allocObject();
  *(v3 + 216) = sub_1E1AF35CC();
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_1E1300B24(a3, v3 + 32);
  sub_1E13006E4(0, &qword_1EE1E3480);
  swift_unknownObjectRetain();
  sub_1E1AF416C();
  *(v3 + 72) = v24;
  type metadata accessor for ASKBagContract();
  sub_1E1AF416C();
  *(v3 + 80) = v24;
  type metadata accessor for ArcadeSubscriptionManager();
  sub_1E1AF416C();
  *(v3 + 88) = v24;
  v11 = objc_opt_self();
  v12 = [v11 defaultCenter];
  v13 = qword_1EE1E7578;

  if (v13 != -1)
  {
    swift_once();
  }

  [v12 addObserver:v4 selector:sel_handleAskToBuyRequestSent_ name:qword_1EE1E7580 object:0];

  v14 = [v11 defaultCenter];

  v15 = sub_1E1AF5DBC();
  [v14 addObserver:v4 selector:sel_updateStatusAndNotifyIfNeeded name:v15 object:0];

  v16 = *(v4 + 88);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = *&v16[OBJC_IVAR____TtC11AppStoreKit25ArcadeSubscriptionManager_stateLock];

  v19 = v16;

  [v18 lock];
  sub_1E15F6384(v4, sub_1E18B1688, v17, v19);
  [v18 unlock];

  v20 = sub_1E1AF649C();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v4;

  sub_1E154AF74(0, 0, v10, &unk_1E1B3CD70, v21);

  __swift_destroy_boxed_opaque_existential_1(a3);
  return v4;
}

uint64_t sub_1E18B1690()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E130B5DC;

  return sub_1E18ABFB4();
}

uint64_t sub_1E18B1744()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E18B1858()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E18B1944()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E18B1A4C()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

AppStoreKit::HeroCarouselItemOverlay::OverlayType_optional __swiftcall HeroCarouselItemOverlay.OverlayType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t HeroCarouselItemOverlay.OverlayType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6C6169726574616DLL;
  v3 = 0xD000000000000010;
  v4 = 0x6F4D656C676E6973;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1954047348;
  if (v1 != 1)
  {
    v5 = 0x70756B636F6CLL;
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

uint64_t sub_1E18B1CAC()
{
  sub_1E1AF5F0C();
}

void sub_1E18B1DBC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000074786554;
  v4 = 0x6C6169726574616DLL;
  v5 = 0x80000001E1B577E0;
  v6 = 0xD000000000000010;
  v7 = 0xEC000000656C7564;
  v8 = 0x6F4D656C676E6973;
  if (v2 != 4)
  {
    v8 = 0xD000000000000010;
    v7 = 0x80000001E1B57800;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1954047348;
  if (v2 != 1)
  {
    v10 = 0x70756B636F6CLL;
    v9 = 0xE600000000000000;
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

AppStoreKit::HeroCarouselItemOverlay::DisplayOptions::TextAlignment_optional __swiftcall HeroCarouselItemOverlay.DisplayOptions.TextAlignment.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t HeroCarouselItemOverlay.DisplayOptions.TextAlignment.rawValue.getter()
{
  if (*v0)
  {
    return 0x7265746E6563;
  }

  else
  {
    return 0x676E696461656CLL;
  }
}

uint64_t sub_1E18B1F24(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7265746E6563;
  }

  else
  {
    v3 = 0x676E696461656CLL;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x7265746E6563;
  }

  else
  {
    v5 = 0x676E696461656CLL;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E1AF74AC();
  }

  return v8 & 1;
}

uint64_t sub_1E18B1FC8()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E18B2048()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E18B20B4()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E18B2130@<X0>(char *a1@<X8>)
{
  v2 = sub_1E1AF72FC();

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

void sub_1E18B2190(uint64_t *a1@<X8>)
{
  v2 = 0x676E696461656CLL;
  if (*v1)
  {
    v2 = 0x7265746E6563;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

AppStoreKit::HeroCarouselItemOverlay::DisplayOptions::Placement_optional __swiftcall HeroCarouselItemOverlay.DisplayOptions.Placement.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HeroCarouselItemOverlay.DisplayOptions.Placement.rawValue.getter()
{
  v1 = 0x7265746E6563;
  if (*v0 != 1)
  {
    v1 = 0x676E696C69617274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E696461656CLL;
  }
}

uint64_t sub_1E18B2288(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x7265746E6563;
  if (v2 != 1)
  {
    v4 = 0x676E696C69617274;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x676E696461656CLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x7265746E6563;
  if (*a2 != 1)
  {
    v8 = 0x676E696C69617274;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x676E696461656CLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}

uint64_t sub_1E18B2384()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E18B2424()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E18B24B0()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

void sub_1E18B2558(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x7265746E6563;
  if (v2 != 1)
  {
    v5 = 0x676E696C69617274;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x676E696461656CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

double HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1E1AF380C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF381C();
  v10 = JSONObject.appStoreColor.getter();
  v11 = *(v7 + 8);
  v11(v9, v6);
  *a3 = v10;
  sub_1E1AF381C();
  v12 = JSONObject.appStoreColor.getter();
  v11(v9, v6);
  a3[1] = v12;
  sub_1E1AF381C();
  v13 = JSONObject.appStoreColor.getter();
  v11(v9, v6);
  a3[2] = v13;
  sub_1E1AF381C();
  v14 = JSONObject.appStoreColor.getter();
  v15 = sub_1E1AF39DC();
  (*(*(v15 - 8) + 8))(a2, v15);
  v11(a1, v6);
  result = (v11)(v9, v6);
  a3[3] = v14;
  return result;
}

id HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.badgeColor.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.titleColor.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.descriptionColor.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.callToActionColor.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.hash(into:)()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  if (*v0)
  {
    sub_1E1AF764C();
    v5 = v2;
    sub_1E1AF6D1C();

    if (v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1E1AF764C();
    if (v1)
    {
LABEL_3:
      sub_1E1AF764C();
      v6 = v1;
      sub_1E1AF6D1C();

      if (v4)
      {
        goto LABEL_4;
      }

LABEL_10:
      sub_1E1AF764C();
      if (v3)
      {
        goto LABEL_5;
      }

LABEL_11:
      sub_1E1AF764C();
      return;
    }
  }

  sub_1E1AF764C();
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_4:
  sub_1E1AF764C();
  v7 = v4;
  sub_1E1AF6D1C();

  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_5:
  sub_1E1AF764C();
  v8 = v3;
  sub_1E1AF6D1C();
}

uint64_t HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.hashValue.getter()
{
  sub_1E1AF762C();
  HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.hash(into:)();
  return sub_1E1AF767C();
}

uint64_t sub_1E18B2A44()
{
  sub_1E1AF762C();
  HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.hash(into:)();
  return sub_1E1AF767C();
}

uint64_t sub_1E18B2A94()
{
  sub_1E1AF762C();
  HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.hash(into:)();
  return sub_1E1AF767C();
}

__n128 HeroCarouselItemOverlay.DisplayOptions.init(textAlignment:horizontalPlacement:textColorOverrides:isOverDarkContent:)@<Q0>(_BYTE *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  *a5 = *a1;
  *(a5 + 1) = v5;
  result = *a3;
  v7 = *(a3 + 16);
  *(a5 + 8) = *a3;
  *(a5 + 24) = v7;
  *(a5 + 40) = a4;
  return result;
}

uint64_t HeroCarouselItemOverlay.DisplayOptions.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v35 = a2;
  v29 = a3;
  v4 = sub_1E1AF39DC();
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF380C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v31 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  sub_1E1AF381C();
  sub_1E18B46BC();
  sub_1E1AF369C();
  v13 = *(v8 + 8);
  v13(v12, v7);
  v40 = v36;
  sub_1E1AF381C();
  sub_1E18B4710();
  sub_1E1AF369C();
  v30 = v7;
  v28 = v13;
  v13(v12, v7);
  v41 = v36;
  v32 = a1;
  sub_1E1AF381C();
  (*(v33 + 16))(v6, v35, v34);
  sub_1E18B4764();
  sub_1E1AF464C();
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  if (v36 != 1)
  {
    v16 = v38;
    v17 = v39;
    v15 = v36;
    v14 = v37;
  }

  v27 = v17;
  v19 = v31;
  v18 = v32;
  sub_1E1AF381C();
  v20 = sub_1E1AF370C();
  (*(v33 + 8))(v35, v34);
  v21 = v18;
  v22 = v30;
  v23 = v28;
  v28(v21, v30);
  result = v23(v19, v22);
  v25 = v29;
  *v29 = v40;
  v25[1] = v41;
  *(v25 + 1) = v15;
  *(v25 + 2) = v14;
  v26 = v27;
  *(v25 + 3) = v16;
  *(v25 + 4) = v26;
  v25[40] = (v20 == 2) | v20 & 1;
  return result;
}

id HeroCarouselItemOverlay.DisplayOptions.textColorOverrides.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[4];
  v9 = v1[3];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v9;
  a1[3] = v4;
  v5 = v4;
  v6 = v2;
  v7 = v3;

  return v9;
}

uint64_t HeroCarouselItemOverlay.DisplayOptions.hash(into:)()
{
  sub_1E1AF5F0C();

  sub_1E1AF5F0C();

  HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.hash(into:)();
  return sub_1E1AF764C();
}

uint64_t HeroCarouselItemOverlay.DisplayOptions.hashValue.getter()
{
  sub_1E1AF762C();
  HeroCarouselItemOverlay.DisplayOptions.hash(into:)();
  return sub_1E1AF767C();
}

uint64_t sub_1E18B30B4()
{
  sub_1E1AF762C();
  HeroCarouselItemOverlay.DisplayOptions.hash(into:)();
  return sub_1E1AF767C();
}

uint64_t sub_1E18B3124()
{
  sub_1E1AF762C();
  HeroCarouselItemOverlay.DisplayOptions.hash(into:)();
  return sub_1E1AF767C();
}

uint64_t HeroCarouselItemOverlay.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  HeroCarouselItemOverlay.init(deserializing:using:)(a1, a2);
  return v4;
}

void *HeroCarouselItemOverlay.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v124 = v3;
  v109 = v6;
  v117 = sub_1E1AF39DC();
  v7 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v105 = v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v116 = v102 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v102 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v111 = v102 - v15;
  v115 = sub_1E1AEFEAC();
  v108 = *(v115 - 1);
  MEMORY[0x1EEE9AC00](v115);
  v17 = v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E1AF380C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v103 = v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v104 = v102 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v110 = v102 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v102 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = v102 - v29;
  v119 = a1;
  sub_1E1AF381C();
  v31 = sub_1E1AF37CC();
  v118 = v18;
  v106 = v13;
  v107 = v27;
  v112 = v19;
  if (v32)
  {
    v122 = v31;
    v123 = v32;
    sub_1E1AF6F6C();
    v115 = *(v19 + 8);
    v115(v30, v18);
    v33 = a2;
    v34 = v7;
    v35 = v13;
  }

  else
  {
    sub_1E1AEFE9C();
    v36 = sub_1E1AEFE7C();
    v37 = a2;
    v34 = v7;
    v39 = v38;
    (*(v108 + 8))(v17, v115);
    v122 = v36;
    v123 = v39;
    v33 = v37;
    v35 = v106;
    sub_1E1AF6F6C();
    v115 = *(v19 + 8);
    v115(v30, v18);
  }

  v114 = v34;
  v40 = *&v120[16];
  v41 = v124;
  *(v124 + 11) = *v120;
  *(v41 + 12) = v40;
  v41[26] = *&v120[32];
  sub_1E1AF46DC();
  sub_1E1AF381C();
  v42 = *(v34 + 16);
  v43 = v33;
  v44 = v117;
  v42(v35, v33, v117);
  v45 = v111;
  sub_1E1AF464C();
  v108 = OBJC_IVAR____TtC11AppStoreKit23HeroCarouselItemOverlay_impressionMetrics;
  v46 = v45;
  v47 = v119;
  v48 = v44;
  sub_1E134B7C8(v46, v41 + OBJC_IVAR____TtC11AppStoreKit23HeroCarouselItemOverlay_impressionMetrics);
  v49 = v116;
  v50 = v43;
  v51 = v43;
  v52 = v34 + 16;
  v53 = v48;
  v111 = v42;
  v42(v116, v51, v48);
  v54 = v110;
  sub_1E1AF381C();
  sub_1E18B4A00();
  v55 = v113;
  sub_1E1AF36AC();
  if (v55)
  {
    v56 = *(v114 + 8);
    v56(v50, v53);
    v57 = v47;
    v58 = v118;
    v59 = v115;
    v115(v57, v118);
    v59(v54, v58);
    v56(v49, v53);
    v65 = v124;
    sub_1E134B88C((v124 + 22));
    sub_1E13814C0(v65 + v108);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v113 = v50;
    v60 = v112 + 8;
    v61 = v49;
    v62 = v115;
    v115(v54, v118);
    *(v124 + 16) = v120[0];
    v63 = v104;
    sub_1E1AF381C();
    v64 = v105;
    (v111)(v105, v61, v53);
    HeroCarouselItemOverlay.DisplayOptions.init(deserializing:using:)(v63, v64, v120);
    v112 = v52;
    v67 = v120[1];
    v68 = v121;
    v69 = v124;
    *(v124 + 24) = v120[0];
    *(v69 + 25) = v67;
    v70 = *&v120[24];
    *(v69 + 2) = *&v120[8];
    *(v69 + 3) = v70;
    *(v69 + 64) = v68;
    v71 = v107;
    sub_1E1AF381C();
    v72 = sub_1E1AF37CC();
    v74 = v73;
    v75 = v118;
    v62(v71, v118);
    v69[9] = v72;
    v69[10] = v74;
    sub_1E1AF381C();
    v76 = sub_1E1AF37CC();
    v78 = v77;
    v62(v71, v75);
    v69[11] = v76;
    v69[12] = v78;
    sub_1E1AF381C();
    v79 = sub_1E1AF37CC();
    v81 = v80;
    v62(v71, v75);
    v69[13] = v79;
    v69[14] = v81;
    sub_1E1AF381C();
    v82 = sub_1E1AF37CC();
    v84 = v83;
    v62(v71, v75);
    v69[15] = v82;
    v69[16] = v84;
    v85 = v103;
    sub_1E1AF381C();
    countAndFlagsBits = sub_1E1AF37CC();
    object = v87;
    v62(v85, v75);
    v110 = 0;
    v102[1] = v60;
    if (!object)
    {
      v89._countAndFlagsBits = 0xD000000000000016;
      v89._object = 0x80000001E1B5B300;
      v90._countAndFlagsBits = 0;
      v90._object = 0xE000000000000000;
      v91 = localizedString(_:comment:)(v89, v90);
      countAndFlagsBits = v91._countAndFlagsBits;
      object = v91._object;
    }

    v92 = v124;
    v124[17] = countAndFlagsBits;
    v92[18] = object;
    type metadata accessor for Action();
    v93 = v107;
    sub_1E1AF381C();
    v94 = v116;
    v95 = static Action.tryToMakeInstance(byDeserializing:using:)(v93, v116);
    v115 = v62;
    v62(v93, v75);
    v92[19] = v95;
    type metadata accessor for Lockup();
    sub_1E1AF381C();
    v96 = v106;
    v97 = v117;
    v98 = v111;
    (v111)(v106, v94, v117);
    sub_1E18B4EC0(&qword_1EE1E4F60, type metadata accessor for Lockup);
    sub_1E1AF464C();
    v92[20] = *v120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB40B8);
    sub_1E1AF381C();
    v98(v96, v94, v97);
    sub_1E1460648();
    sub_1E1AF464C();
    v92[21] = *v120;
    v99 = v110;
    sub_1E18B3D68();
    v100 = *(v114 + 8);
    v101 = v117;
    v100(v113, v117);
    v115(v119, v118);
    v100(v116, v101);
    if (v99)
    {
    }
  }

  return v124;
}

void sub_1E18B3D68()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  if (v2 > 2)
  {
    if (v2 == 4)
    {
      goto LABEL_10;
    }

    v10 = *(v0 + 168);
    if (v10)
    {
      if (v10 >> 62)
      {
        if (!sub_1E1AF71CC())
        {
          goto LABEL_21;
        }
      }

      else if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v11 = *(v0 + 96);
      if (v11)
      {
        if ((v11 & 0x2000000000000000) != 0 ? HIBYTE(v11) & 0xF : *(v0 + 88) & 0xFFFFFFFFFFFFLL)
        {
          return;
        }
      }
    }

LABEL_21:
    v5 = sub_1E1AF5A7C();
    sub_1E18B4EC0(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    v7 = v6;
    *v6 = 0xD00000000000001CLL;
    v6[1] = 0x80000001E1B7C5E0;
    goto LABEL_22;
  }

  if (v2 >= 2)
  {
LABEL_10:
    if (*(v0 + 160))
    {
      return;
    }

    v5 = sub_1E1AF5A7C();
    sub_1E18B4EC0(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    v7 = v6;
    v8 = 0x70756B636F6CLL;
    v9 = 0xE600000000000000;
    goto LABEL_12;
  }

  v3 = *(v0 + 96);
  if (!v3 || ((v3 & 0x2000000000000000) != 0 ? (v4 = HIBYTE(v3) & 0xF) : (v4 = *(v0 + 88) & 0xFFFFFFFFFFFFLL), !v4))
  {
    v5 = sub_1E1AF5A7C();
    sub_1E18B4EC0(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    v7 = v6;
    v8 = 0x786554656C746974;
    v9 = 0xE900000000000074;
LABEL_12:
    *v6 = v8;
    v6[1] = v9;
LABEL_22:
    v6[2] = v1;
    (*(*(v5 - 8) + 104))(v7, *MEMORY[0x1E69AB690], v5);
    swift_willThrow();
  }
}

id HeroCarouselItemOverlay.displayOptions.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 25);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 56);
  v11 = *(v1 + 48);
  v6 = *(v1 + 64);
  *a1 = *(v1 + 24);
  *(a1 + 1) = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v11;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  v7 = v5;
  v8 = v3;
  v9 = v4;

  return v11;
}

uint64_t HeroCarouselItemOverlay.badgeText.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t HeroCarouselItemOverlay.titleText.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t HeroCarouselItemOverlay.descriptionText.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t HeroCarouselItemOverlay.callToActionText.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t HeroCarouselItemOverlay.buttonTitle.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

uint64_t HeroCarouselItemOverlay.segue.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 152);
  if (v3)
  {
    v4 = type metadata accessor for Action();
    v5 = sub_1E18B4EC0(qword_1EE1D2F80, type metadata accessor for Action);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = v5;
}

uint64_t HeroCarouselItemOverlay.deinit()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  sub_1E134B88C(v0 + 176);
  sub_1E13814C0(v0 + OBJC_IVAR____TtC11AppStoreKit23HeroCarouselItemOverlay_impressionMetrics);
  return v0;
}

uint64_t HeroCarouselItemOverlay.__deallocating_deinit()
{
  HeroCarouselItemOverlay.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E18B4334@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 152);
  if (v3)
  {
    v4 = type metadata accessor for Action();
    v5 = sub_1E18B4EC0(qword_1EE1D2F80, type metadata accessor for Action);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = v5;
}

void *sub_1E18B43D4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = HeroCarouselItemOverlay.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t HeroCarouselItemOverlay.DisplayOptions.TextAlignment.textAlignment(with:)()
{
  if (*v0)
  {
    return 1;
  }

  if (sub_1E1AF697C())
  {
    return 2;
  }

  return 0;
}

uint64_t HeroCarouselItemOverlay.DisplayOptions.Placement.textAlignment(with:)()
{
  result = *v0;
  if (*v0)
  {
    if (result != 1)
    {
      if (sub_1E1AF697C())
      {
        return 0;
      }

      else
      {
        return 2;
      }
    }
  }

  else if (sub_1E1AF697C())
  {
    return 2;
  }

  else
  {
    return 0;
  }

  return result;
}

AppStoreKit::HeroCarouselItemOverlay::DisplayOptions::Placement __swiftcall HeroCarouselItemOverlay.DisplayOptions.Placement.value(with:)(UITraitCollection with)
{
  v3 = v1;
  v4 = *v2;
  if (*v2)
  {
    if (v4 != 1)
    {
      LOBYTE(with.super.isa) = sub_1E1AF697C();
      if (with.super.isa)
      {
        LOBYTE(v4) = 0;
      }

      else
      {
        LOBYTE(v4) = 2;
      }
    }
  }

  else
  {
    LOBYTE(with.super.isa) = sub_1E1AF697C();
    if (with.super.isa)
    {
      LOBYTE(v4) = 2;
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  *v3 = v4;
  return with.super.isa;
}