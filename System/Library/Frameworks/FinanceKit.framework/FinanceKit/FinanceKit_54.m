uint64_t sub_1B76B2134()
{
  v1 = v0;
  v35 = sub_1B77FE748();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9903E0);
  result = sub_1B7801A08();
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
      sub_1B76B5A3C(&qword_1EB98FFD0, MEMORY[0x1E6967E70]);
      result = sub_1B7800758();
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

uint64_t sub_1B76B2490()
{
  v1 = v0;
  v35 = sub_1B77FFA18();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990230);
  result = sub_1B7801A08();
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
      sub_1B76B5A3C(&qword_1EB99DAF0, MEMORY[0x1E69695A8]);
      result = sub_1B7800758();
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

uint64_t sub_1B76B28F0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990218);
  result = sub_1B7801A08();
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
      sub_1B78022F8();
      sub_1B7800798();

      result = sub_1B7802368();
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

uint64_t sub_1B76B2B80()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9903D0);
  result = sub_1B7801A08();
  v4 = result;
  if (*(v2 + 16))
  {
    v35 = v1;
    v36 = v2;
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
    v37 = result;
    while (1)
    {
      if (!v9)
      {
        v17 = v5;
        while (1)
        {
          v5 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
            goto LABEL_39;
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
            v38 = (v18 - 1) & v18;
            goto LABEL_15;
          }
        }

        v34 = 1 << *(v2 + 32);
        if (v34 >= 64)
        {
          bzero(v6, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v6 = -1 << v34;
        }

        v1 = v35;
        *(v2 + 16) = 0;
        break;
      }

      v16 = __clz(__rbit64(v9));
      v38 = (v9 - 1) & v9;
LABEL_15:
      v19 = (*(v2 + 48) + 56 * (v16 | (v5 << 6)));
      v21 = *v19;
      v20 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v24 = v19[4];
      v39 = v19[5];
      v41 = v19[6];
      sub_1B78022F8();
      v40 = v21;
      sub_1B7802318();
      if (v20)
      {
        sub_1B7800798();
      }

      sub_1B7802318();
      if (v23)
      {
        sub_1B7800798();
      }

      if (v39)
      {
        sub_1B7802318();
        sub_1B7800798();
        v25 = v41;
        if (v41)
        {
          goto LABEL_21;
        }
      }

      else
      {
        sub_1B7802318();
        v25 = v41;
        if (v41)
        {
LABEL_21:
          sub_1B7802318();
          v26 = v25;
          sub_1B7801568();

          goto LABEL_24;
        }
      }

      sub_1B7802318();
LABEL_24:
      result = sub_1B7802368();
      v4 = v37;
      v27 = -1 << *(v37 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v11 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v13 = v40;
        v14 = v41;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v11 + 8 * v29);
          if (v33 != -1)
          {
            v12 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v28) & ~*(v11 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v13 = v40;
      v14 = v41;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v15 = (*(v37 + 48) + 56 * v12);
      v9 = v38;
      *v15 = v13;
      v15[1] = v20;
      v15[2] = v22;
      v15[3] = v23;
      v15[4] = v24;
      v15[5] = v39;
      v15[6] = v14;
      ++*(v37 + 16);
      v2 = v36;
    }
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1B76B2F28()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990360);
  result = sub_1B7801A08();
  v4 = result;
  if (*(v2 + 16))
  {
    v34 = v0;
    v35 = v2;
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
    v36 = result;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v37 = (v9 - 1) & v9;
LABEL_15:
      v17 = (*(v2 + 48) + 48 * (v14 | (v5 << 6)));
      v19 = *v17;
      v18 = v17[1];
      v21 = v17[2];
      v20 = v17[3];
      v22 = v17[4];
      v23 = v17[5];
      sub_1B78022F8();
      sub_1B7800798();
      sub_1B7802318();
      if (v20)
      {
        sub_1B7800798();
      }

      sub_1B7800798();
      result = sub_1B7802368();
      v4 = v36;
      v24 = -1 << *(v36 + 32);
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

LABEL_32:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v25) & ~*(v11 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v36 + 48) + 48 * v12);
      *v13 = v19;
      v13[1] = v18;
      v9 = v37;
      v13[2] = v21;
      v13[3] = v20;
      v13[4] = v22;
      v13[5] = v23;
      ++*(v36 + 16);
      v2 = v35;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_32;
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
        v37 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v31 = 1 << *(v2 + 32);
    if (v31 >= 64)
    {
      v32 = v4;
      bzero(v6, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      v4 = v32;
    }

    else
    {
      *v6 = -1 << v31;
    }

    v1 = v34;
    *(v2 + 16) = 0;
  }

  v33 = v4;

  *v1 = v33;
  return result;
}

uint64_t sub_1B76B320C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990368);
  result = sub_1B7801A08();
  v4 = result;
  if (*(v2 + 16))
  {
    v33 = v1;
    v34 = v2;
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
    v35 = result;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v36 = (v9 - 1) & v9;
LABEL_15:
      v19 = *(v2 + 48) + 88 * (v16 | (v5 << 6));
      v20 = *v19;
      *v44 = *(v19 + 1);
      *&v44[3] = *(v19 + 4);
      v22 = *(v19 + 8);
      v21 = *(v19 + 16);
      v39 = *(v19 + 24);
      v40 = *(v19 + 32);
      v23 = *(v19 + 40);
      *v43 = *(v19 + 41);
      *&v43[3] = *(v19 + 44);
      v37 = *(v19 + 64);
      v38 = *(v19 + 48);
      v41 = *(v19 + 72);
      v42 = *(v19 + 56);
      v24 = *(v19 + 80);
      sub_1B78022F8();
      sub_1B7802328();
      sub_1B7802318();
      if (v21)
      {
        sub_1B7800798();
      }

      sub_1B7802318();
      if (v40)
      {
        sub_1B7800798();
      }

      sub_1B7802328();
      sub_1B7802318();
      if (v42)
      {
        sub_1B7800798();
      }

      sub_1B7802318();
      if (v41)
      {
        sub_1B7800798();
      }

      sub_1B7802328();
      result = sub_1B7802368();
      v4 = v35;
      v25 = -1 << *(v35 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v11 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        v14 = v41;
        v13 = v42;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v11 + 8 * v27);
          if (v31 != -1)
          {
            v12 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v26) & ~*(v11 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
      v14 = v41;
      v13 = v42;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v15 = *(v35 + 48) + 88 * v12;
      *v15 = v20;
      *(v15 + 1) = *v44;
      *(v15 + 4) = *&v44[3];
      *(v15 + 8) = v22;
      *(v15 + 16) = v21;
      *(v15 + 24) = v39;
      *(v15 + 32) = v40;
      *(v15 + 40) = v23;
      *(v15 + 41) = *v43;
      *(v15 + 44) = *&v43[3];
      *(v15 + 48) = v38;
      *(v15 + 56) = v13;
      *(v15 + 64) = v37;
      *(v15 + 72) = v14;
      *(v15 + 80) = v24;
      ++*(v35 + 16);
      v2 = v34;
      v9 = v36;
    }

    v17 = v5;
    while (1)
    {
      v5 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        v36 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v32 = 1 << *(v2 + 32);
    if (v32 >= 64)
    {
      bzero(v6, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v32;
    }

    v1 = v33;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1B76B3630()
{
  v1 = v0;
  v2 = type metadata accessor for CascadeExtractedOrder.OrderEmail(0);
  v25 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v24 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990340);
  result = sub_1B7801A08();
  v6 = result;
  if (*(v4 + 16))
  {
    v22 = v0;
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
    v23 = result + 56;
    for (i = v24; v11; ++*(v6 + 16))
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v17 = *(v25 + 72);
      sub_1B76B59D4(*(v4 + 48) + v17 * (v14 | (v7 << 6)), i, type metadata accessor for CascadeExtractedOrder.OrderEmail);
      sub_1B78022F8();
      CascadeExtractedOrder.OrderEmail.hash(into:)();
      sub_1B7802368();
      v18 = v23;
      v19 = sub_1B78018E8();
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1B76B59D4(i, *(v6 + 48) + v19 * v17, type metadata accessor for CascadeExtractedOrder.OrderEmail);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        return result;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    v20 = 1 << *(v4 + 32);
    if (v20 >= 64)
    {
      bzero((v4 + 56), ((v20 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v20;
    }

    v1 = v22;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1B76B38E0(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_1B7801A08();
  v6 = result;
  if (*(v4 + 16))
  {
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
      v18 = *(*(v4 + 48) + (v15 | (v7 << 6)));
      sub_1B78022F8();
      sub_1B7802328();
      result = sub_1B7802368();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
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

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    v3 = v2;
    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_1B76B3B28()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990348);
  v3 = sub_1B7801A08();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v38 = v0;
    v39 = (v2 + 56);
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
    v40 = v2;
    v41 = v3;
    while (1)
    {
      if (!v8)
      {
        v14 = v5;
        result = v39;
        while (1)
        {
          v5 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            __break(1u);
            goto LABEL_36;
          }

          if (v5 >= v9)
          {
            break;
          }

          v16 = v39[v5];
          ++v14;
          if (v16)
          {
            v13 = __clz(__rbit64(v16));
            v42 = (v16 - 1) & v16;
            goto LABEL_15;
          }
        }

        v35 = 1 << *(v2 + 32);
        if (v35 >= 64)
        {
          v36 = v4;
          bzero(v39, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
          v4 = v36;
        }

        else
        {
          *v39 = -1 << v35;
        }

        v1 = v38;
        *(v2 + 16) = 0;
        break;
      }

      v13 = __clz(__rbit64(v8));
      v42 = (v8 - 1) & v8;
LABEL_15:
      v17 = *(v2 + 48) + 88 * (v13 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      v21 = *(v17 + 24);
      v22 = *(v17 + 32);
      v23 = *(v17 + 40);
      v46 = *(v17 + 64);
      v47 = *(v17 + 56);
      v44 = *(v17 + 48);
      v45 = *(v17 + 72);
      v24 = *(v17 + 80);
      sub_1B78022F8();
      v43 = v19;
      v25 = v20;
      sub_1B7800798();
      sub_1B7800798();
      sub_1B7800798();
      if (v24)
      {
        if (v24 == 1)
        {
          MEMORY[0x1B8CA6620](1);
          v26 = v44;
          goto LABEL_21;
        }

        v27 = 2;
      }

      else
      {
        v27 = 0;
      }

      MEMORY[0x1B8CA6620](v27);
      v26 = v44;
      sub_1B7800798();
LABEL_21:
      sub_1B7800798();
      result = sub_1B7802368();
      v4 = v41;
      v28 = -1 << *(v41 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v10 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v10 + 8 * v30);
          if (v34 != -1)
          {
            v11 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v11 = __clz(__rbit64((-1 << v29) & ~*(v10 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v41 + 48) + 88 * v11;
      *v12 = v18;
      *(v12 + 8) = v43;
      *(v12 + 16) = v25;
      *(v12 + 24) = v21;
      *(v12 + 32) = v22;
      *(v12 + 40) = v23;
      *(v12 + 48) = v26;
      *(v12 + 56) = v47;
      *(v12 + 64) = v46;
      *(v12 + 72) = v45;
      *(v12 + 80) = v24;
      ++*(v41 + 16);
      v2 = v40;
      v8 = v42;
    }
  }

  v37 = v4;

  *v1 = v37;
  return result;
}

uint64_t sub_1B76B3E78()
{
  v1 = v0;
  v2 = type metadata accessor for MapsSuggestionsOrderPickup(0);
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990200);
  result = sub_1B7801A08();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v0;
    v30 = v5;
    v8 = 0;
    v9 = (v5 + 56);
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
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v20 = *(v31 + 72);
      sub_1B76B59D4(v19 + v20 * (v16 | (v8 << 6)), v4, type metadata accessor for MapsSuggestionsOrderPickup);
      sub_1B78022F8();
      sub_1B7800798();
      sub_1B7800798();
      sub_1B7800798();
      result = sub_1B7802368();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_1B76B59D4(v4, *(v7 + 48) + v15 * v20, type metadata accessor for MapsSuggestionsOrderPickup);
      ++*(v7 + 16);
      v5 = v30;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v1 = v29;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_1B76B41A4()
{
  v1 = v0;
  v35 = sub_1B77FF4F8();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990318);
  result = sub_1B7801A08();
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
      sub_1B76B5A3C(&qword_1EB98FF98, MEMORY[0x1E6968FB0]);
      result = sub_1B7800758();
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

uint64_t sub_1B76B453C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990298);
  result = sub_1B7801A08();
  v4 = result;
  if (*(v2 + 16))
  {
    v33 = v1;
    v34 = v2;
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
    v35 = result;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v36 = (v9 - 1) & v9;
LABEL_15:
      v19 = *(v2 + 48) + 80 * (v16 | (v5 << 6));
      v20 = *v19;
      *v43 = *(v19 + 1);
      *&v43[3] = *(v19 + 4);
      v22 = *(v19 + 8);
      v21 = *(v19 + 16);
      v23 = *(v19 + 32);
      v24 = *(v19 + 40);
      *v42 = *(v19 + 41);
      *&v42[3] = *(v19 + 44);
      v38 = *(v19 + 48);
      v39 = *(v19 + 24);
      v41 = *(v19 + 56);
      v37 = *(v19 + 64);
      v40 = *(v19 + 72);
      sub_1B78022F8();
      sub_1B7802328();
      sub_1B7802318();
      if (v21)
      {
        sub_1B7800798();
      }

      sub_1B7802318();
      if (v23)
      {
        sub_1B7800798();
      }

      sub_1B7802328();
      sub_1B7802318();
      if (v41)
      {
        sub_1B7800798();
      }

      sub_1B7802318();
      if (v40)
      {
        sub_1B7800798();
      }

      result = sub_1B7802368();
      v4 = v35;
      v25 = -1 << *(v35 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v11 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        v14 = v40;
        v13 = v41;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v11 + 8 * v27);
          if (v31 != -1)
          {
            v12 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v26) & ~*(v11 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
      v14 = v40;
      v13 = v41;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v15 = *(v35 + 48) + 80 * v12;
      *v15 = v20;
      *(v15 + 1) = *v43;
      *(v15 + 4) = *&v43[3];
      v9 = v36;
      *(v15 + 8) = v22;
      *(v15 + 16) = v21;
      *(v15 + 24) = v39;
      *(v15 + 32) = v23;
      *(v15 + 40) = v24;
      *(v15 + 41) = *v42;
      *(v15 + 44) = *&v42[3];
      *(v15 + 48) = v38;
      *(v15 + 56) = v13;
      *(v15 + 64) = v37;
      *(v15 + 72) = v14;
      ++*(v35 + 16);
      v2 = v34;
    }

    v17 = v5;
    while (1)
    {
      v5 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        v36 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v32 = 1 << *(v2 + 32);
    if (v32 >= 64)
    {
      bzero(v6, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v32;
    }

    v1 = v33;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1B76B499C(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_1B7801A08();
  v6 = result;
  if (*(v4 + 16))
  {
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
      result = sub_1B7801548();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
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

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_1B76B4BBC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990220);
  result = sub_1B7801A08();
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
      sub_1B78022F8();
      MEMORY[0x1B8CA6620](v16);
      result = sub_1B7802368();
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

uint64_t sub_1B76B4E0C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v25 = a3;
  v22 = 0;
  v21 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;

    v17 = a4(v24);

    if (v4)
    {
      return result;
    }

    if (v17)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        return sub_1B723A660(v21, a2, v22, v19);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_1B76B4F80(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_1B723AA8C(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1B76B50EC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1B76B4F80(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_1B76B51A8(unint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(void))
{
  v8 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v9 = a4;
      }

      else
      {
        v9 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1B8CA5C90](a1, a2, v9);
      a5(0);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    a5(0);
    if (sub_1B7801938() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1B7801948();
    swift_dynamicCast();
    v5 = v17;
    v10 = sub_1B7801548();
    v11 = -1 << *(a4 + 32);
    v8 = v10 & ~v11;
    if ((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v12 = ~v11;
      do
      {
        v13 = *(*(a4 + 48) + 8 * v8);
        v14 = sub_1B7801558();

        if (v14)
        {
          goto LABEL_19;
        }

        v8 = (v8 + 1) & v12;
      }

      while (((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    __break(1u);
  }

  if ((v8 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v8)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v8 >> 6) + 56) >> v8) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v15 = *(*(a4 + 48) + 8 * v8);

  v16 = v15;
}

void sub_1B76B5414(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5)
{
  v8 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v9 = a4;
      }

      else
      {
        v9 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1B8CA5C90](a1, a2, v9);
      sub_1B7205540(0, a5);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1B7205540(0, a5);
    if (sub_1B7801938() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1B7801948();
    swift_dynamicCast();
    v5 = v17;
    v10 = sub_1B7801548();
    v11 = -1 << *(a4 + 32);
    v8 = v10 & ~v11;
    if ((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v12 = ~v11;
      do
      {
        v13 = *(*(a4 + 48) + 8 * v8);
        v14 = sub_1B7801558();

        if (v14)
        {
          goto LABEL_19;
        }

        v8 = (v8 + 1) & v12;
      }

      while (((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    __break(1u);
  }

  if ((v8 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v8)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v8 >> 6) + 56) >> v8) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v15 = *(*(a4 + 48) + 8 * v8);

  v16 = v15;
}

uint64_t sub_1B76B5640(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_1B76B5694()
{
  v1 = *(v0 + 16);
  if ((v1 & 0xC000000000000001) != 0)
  {

    v2 = sub_1B7801958();

    if (!v2)
    {
      return;
    }
  }

  else if (!*(v1 + 16))
  {
    return;
  }

  v30 = *(v0 + 24);
  v3 = [v30 fetchedObjects];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for ManagedInternalTransaction();
    v5 = sub_1B7800C38();

    if (v5 >> 62)
    {
      goto LABEL_33;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7801958())
    {
      sub_1B7205540(0, &qword_1EB98F930);
      v7 = 0;
      v8 = v5 & 0xC000000000000001;
      v28 = v5 + 32;
      v29 = v5 & 0xFFFFFFFFFFFFFF8;
      v26 = v5;
      v27 = v0;
      v24 = v5 & 0xC000000000000001;
      v25 = i;
      while (1)
      {
        if (v8)
        {
          v9 = MEMORY[0x1B8CA5DC0](v7, v5);
        }

        else
        {
          if (v7 >= *(v29 + 16))
          {
            goto LABEL_32;
          }

          v9 = *(v28 + 8 * v7);
        }

        v10 = v9;
        if (__OFADD__(v7++, 1))
        {
          break;
        }

        v12 = *(v0 + 16);

        v13 = [v10 publicTransactionObject];
        v14 = [v13 objectID];

        if ((v12 & 0xC000000000000001) != 0)
        {
          v15 = v14;
          v16 = sub_1B7801998();

          if (v16)
          {
            goto LABEL_18;
          }
        }

        else
        {
          if (*(v12 + 16))
          {
            v18 = sub_1B7801548();
            v19 = -1 << *(v12 + 32);
            v20 = v18 & ~v19;
            if ((*(v12 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
            {
              v21 = ~v19;
              while (1)
              {
                v22 = *(*(v12 + 48) + 8 * v20);
                v23 = sub_1B7801558();

                if (v23)
                {
                  break;
                }

                v20 = (v20 + 1) & v21;
                if (((*(v12 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
                {
                  goto LABEL_9;
                }
              }

              v5 = v26;
              v0 = v27;
              v8 = v24;
              i = v25;
LABEL_18:
              v17 = [v30 managedObjectContext];
              [v17 refreshObject:v10 mergeChanges:1];

              v10 = v17;
              goto LABEL_10;
            }
          }

LABEL_9:

          v5 = v26;
          v0 = v27;
          v8 = v24;
          i = v25;
        }

LABEL_10:

        if (v7 == i)
        {

          *(v0 + 16) = MEMORY[0x1E69E7CD0];
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      ;
    }

LABEL_28:
  }
}

uint64_t sub_1B76B59D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B76B5A3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t BankConnectCloudKitActivityVoucherManaging.__allocating_init(coreDataStore:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

Swift::Void __swiftcall BankConnectCloudKitActivityVoucherManaging.applyImportVoucher(forConsentID:)(Swift::String forConsentID)
{
  v2 = v1;
  object = forConsentID._object;
  countAndFlagsBits = forConsentID._countAndFlagsBits;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99C280);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v50 - v6;
  v8 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v9 = sub_1B7800838();
  v10 = [v8 initWithEntityName_];

  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B7807CD0;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = sub_1B721FF04();
  *(v11 + 32) = countAndFlagsBits;
  *(v11 + 40) = object;

  v12 = sub_1B78010E8();
  [v10 setPredicate_];

  v59 = 0;
  v60 = 0xE000000000000000;
  sub_1B7801A78();

  v59 = 0x2F65636E616E6966;
  v60 = 0xEF2F74726F706D69;
  MEMORY[0x1B8CA4D30](countAndFlagsBits, object);
  v14 = v59;
  v13 = v60;
  v15 = sub_1B76B6B6C();
  v16 = objc_allocWithZone(MEMORY[0x1E695D670]);
  v17 = v10;
  v18 = sub_1B7800838();
  v52 = [v16 initWithLabel:v18 forEventsOfType:1 withConfiguration:v15 affectingObjectsMatching:v17];

  v19 = *(v2 + 16);
  v20 = [*(v19 + 16) persistentStoreCoordinator];
  v21 = [v20 persistentStores];

  v50[1] = sub_1B7205540(0, &qword_1EDAFC540);
  v22 = sub_1B7800C38();

  v56 = v7;
  v57 = v2;
  v54 = v13;
  v55 = v17;
  v53 = v14;
  v51 = v19;
  if (v22 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7801958())
  {
    v24 = 0;
    v58 = v22 & 0xC000000000000001;
    while (1)
    {
      if (v58)
      {
        v25 = MEMORY[0x1B8CA5DC0](v24, v22);
      }

      else
      {
        if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v25 = *(v22 + 8 * v24 + 32);
      }

      v26 = v25;
      v27 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      v28 = [v25 configurationName];
      v29 = sub_1B7800868();
      v31 = v30;

      if (v29 == 0x64756F6C43 && v31 == 0xE500000000000000)
      {

LABEL_17:

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_1B780B190;
        *(v34 + 32) = v26;
        v35 = *(v51 + 16);
        v36 = sub_1B7800C18();

        goto LABEL_22;
      }

      v33 = sub_1B78020F8();

      if (v33)
      {
        goto LABEL_17;
      }

      ++v24;
      if (v27 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:

  v35 = *(v51 + 16);
  v36 = 0;
LABEL_22:
  v38 = v56;
  v37 = v57;
  v40 = v53;
  v39 = v54;
  v41 = v52;
  [v35 applyActivityVoucher:v52 toStores:v36];

  if (qword_1EDAFAF50 != -1)
  {
    swift_once();
  }

  v42 = sub_1B78000B8();
  __swift_project_value_buffer(v42, qword_1EDAFAF58);

  v43 = sub_1B7800098();
  v44 = sub_1B78011F8();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v59 = v46;
    *v45 = 136315138;
    *(v45 + 4) = sub_1B71A3EF8(v40, v39, &v59);
    _os_log_impl(&dword_1B7198000, v43, v44, "Applied CloudKit activity voucher for '%s'.", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v46);
    MEMORY[0x1B8CA7A40](v46, -1, -1);
    MEMORY[0x1B8CA7A40](v45, -1, -1);
  }

  v47 = sub_1B7800DF8();
  (*(*(v47 - 8) + 56))(v38, 1, 1, v47);
  v48 = swift_allocObject();
  v48[2] = 0;
  v48[3] = 0;
  v48[4] = v37;
  v48[5] = v41;
  v48[6] = v40;
  v48[7] = v39;

  v49 = v41;
  sub_1B76A1F9C(0, 0, v38, &unk_1B7859BD0, v48);
}

uint64_t sub_1B76B6108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_1B7801C28();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B76B61CC, 0, 0);
}

uint64_t sub_1B76B61CC()
{
  sub_1B78021F8();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1B76B6298;

  return sub_1B76B66B4(0x2AB486CEDC00000, 13, 0, 0, 1);
}

uint64_t sub_1B76B6298()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  *(*v1 + 80) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1B726E850;
  }

  else
  {
    v5 = sub_1B76B6408;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B76B6408()
{
  v11 = v0;
  [*(*(v0[2] + 16) + 16) expireActivityVoucher_];
  if (qword_1EDAFAF50 != -1)
  {
    swift_once();
  }

  v1 = sub_1B78000B8();
  __swift_project_value_buffer(v1, qword_1EDAFAF58);

  v2 = sub_1B7800098();
  v3 = sub_1B78011F8();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[4];
    v4 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1B71A3EF8(v5, v4, &v10);
    _os_log_impl(&dword_1B7198000, v2, v3, "Expired CloudKit activity voucher for '%s'.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1B8CA7A40](v7, -1, -1);
    MEMORY[0x1B8CA7A40](v6, -1, -1);
  }

  v8 = v0[1];

  return v8();
}

void sub_1B76B65B0(void **a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695BA00]) init];
  v3 = *a1;
  *a1 = v2;
  v4 = v2;

  if (v4)
  {
    [v4 setQualityOfService_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t BankConnectCloudKitActivityVoucherManaging.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1B76B66B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1B7801C18();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1B76B67B4, 0, 0);
}

uint64_t sub_1B76B67B4()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1B7801C28();
  v5 = sub_1B76B6EE4(&unk_1EB99EE50, MEMORY[0x1E69E8820]);
  sub_1B78021D8();
  sub_1B76B6EE4(&qword_1EB99B320, MEMORY[0x1E69E87E8]);
  sub_1B7801C38();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1B76B6944;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1B76B6944()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (!v0)
  {

    v6 = *(v5 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B76B6B00, 0, 0);
}

uint64_t sub_1B76B6B00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B76B6B6C()
{
  v0 = sub_1B78003A8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  sub_1B7205540(0, &qword_1EDAFC530);
  (*(v1 + 104))(v3, *MEMORY[0x1E69E7F88], v0);
  v4 = sub_1B7801368();
  (*(v1 + 8))(v3, v0);
  v5 = swift_allocObject();
  *(v5 + 16) = &v12;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1B76B6F2C;
  *(v6 + 24) = v5;
  aBlock[4] = sub_1B720493C;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B737BA64;
  aBlock[3] = &block_descriptor_21;
  v7 = _Block_copy(aBlock);

  dispatch_sync(v4, v7);

  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v9 = v12;
    if (v12)
    {

      return v9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B76B6DAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B7201BB0;

  return sub_1B76B6108(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1B76B6EE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t block_destroy_helper_21()
{
}

{
}

uint64_t FraudAssessmentResult.__allocating_init(data:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t FraudAssessmentResult.data.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FraudAssessmentResult.init(data:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t static FraudAssessmentResult.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*(a1 + 16) == *(a2 + 16) && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_1B78020F8();
    }
  }

  return result;
}

uint64_t FraudAssessmentResult.hash(into:)()
{
  if (!*(v0 + 24))
  {
    return sub_1B7802318();
  }

  sub_1B7802318();

  return sub_1B7800798();
}

uint64_t sub_1B76B709C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B78020F8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B76B7124(uint64_t a1)
{
  v2 = sub_1B76B7324();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76B7160(uint64_t a1)
{
  v2 = sub_1B76B7324();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FraudAssessmentResult.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t FraudAssessmentResult.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B328);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76B7324();
  sub_1B78023F8();
  sub_1B7801EF8();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1B76B7324()
{
  result = qword_1EB99B330;
  if (!qword_1EB99B330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B330);
  }

  return result;
}

uint64_t FraudAssessmentResult.hashValue.getter()
{
  sub_1B78022F8();
  if (*(v0 + 24))
  {
    sub_1B7802318();
    sub_1B7800798();
  }

  else
  {
    sub_1B7802318();
  }

  return sub_1B7802368();
}

uint64_t FraudAssessmentResult.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FraudAssessmentResult.init(from:)(a1);
  return v2;
}

uint64_t FraudAssessmentResult.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B338);
  v14 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76B7324();
  sub_1B78023C8();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = v14;
    v10 = sub_1B7801D78();
    v12 = v11;
    (*(v8 + 8))(v7, v5);
    *(v3 + 16) = v10;
    *(v3 + 24) = v12;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_1B76B75F8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FraudAssessmentResult.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1B76B7650(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B328);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76B7324();
  sub_1B78023F8();
  sub_1B7801EF8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1B76B7788(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 24);
  v5 = *(v3 + 24);
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*(v2 + 16) == *(v3 + 16) && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_1B78020F8();
    }
  }

  return result;
}

uint64_t sub_1B76B77D4()
{
  v1 = *v0;
  sub_1B78022F8();
  if (*(v1 + 24))
  {
    sub_1B7802318();
    sub_1B7800798();
  }

  else
  {
    sub_1B7802318();
  }

  return sub_1B7802368();
}

uint64_t sub_1B76B7850()
{
  if (!*(*v0 + 24))
  {
    return sub_1B7802318();
  }

  sub_1B7802318();

  return sub_1B7800798();
}

uint64_t sub_1B76B78CC()
{
  v1 = *v0;
  sub_1B78022F8();
  if (*(v1 + 24))
  {
    sub_1B7802318();
    sub_1B7800798();
  }

  else
  {
    sub_1B7802318();
  }

  return sub_1B7802368();
}

unint64_t sub_1B76B7948()
{
  result = qword_1EB99B340;
  if (!qword_1EB99B340)
  {
    type metadata accessor for FraudAssessmentResult();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B340);
  }

  return result;
}

unint64_t sub_1B76B7A28()
{
  result = qword_1EB99B348;
  if (!qword_1EB99B348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B348);
  }

  return result;
}

unint64_t sub_1B76B7A80()
{
  result = qword_1EB99B350;
  if (!qword_1EB99B350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B350);
  }

  return result;
}

unint64_t sub_1B76B7AD8()
{
  result = qword_1EB99B358;
  if (!qword_1EB99B358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B358);
  }

  return result;
}

void sub_1B76B7B2C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 value];
  v4 = sub_1B7800868();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

FinanceKit::ManagedOrderPaymentStatus_optional RawOrderPayment.init(_:)@<W0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for RawOrderPaymentTransaction();
  v97 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B7800838();
  [a1 willAccessValueForKey_];

  v8 = [a1 primitiveStatusValue];
  v9 = sub_1B7800838();
  [a1 didAccessValueForKey_];

  v91 = a2;
  if (!v8)
  {
    v90 = 6;
LABEL_5:
    v11 = [a1 totalAmount];
    [v11 decimalValue];
    v12 = v106;
    v13 = v105;

    v14 = [a1 totalCurrencyCode];
    v15 = sub_1B7800868();
    v92 = a1;
    v16 = v15;
    v18 = v17;

    v19 = v12;
    v20 = v92;
    CurrencyAmount.init(_:currencyCode:)(v13, *(&v13 + 1), v19, v16, v18, &v105);
    *&v108[7] = v105;
    *&v108[23] = v106;
    *&v108[39] = v107;
    v21 = ManagedOrderPayment.summaryItems.getter();
    if (v21 >> 62)
    {
      v75 = v21;
      v76 = sub_1B7801958();
      v77 = v75;
      v22 = v76;
      v21 = v77;
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v99 = v6;
    v23 = &off_1E7CAF000;
    if (v22)
    {
      v24 = v21;
      v104 = MEMORY[0x1E69E7CC0];
      result.value = sub_1B71FE7C0(0, v22 & ~(v22 >> 63), 0);
      if ((v22 & 0x8000000000000000) == 0)
      {
        v26 = 0;
        v27 = v104;
        v28 = v24;
        v95 = v24 & 0xC000000000000001;
        v94 = v22 - 1;
        *&v25 = 136315138;
        v93 = v25;
        for (i = v24; ; v28 = i)
        {
          if (v95)
          {
            v29 = MEMORY[0x1B8CA5DC0](v26, v28);
          }

          else
          {
            v29 = *(v28 + 8 * v26 + 32);
          }

          v30 = v29;
          v31 = [v29 label];
          v32 = sub_1B77FFA48();
          v33 = *&v31[OBJC_IVAR____TtC10FinanceKit15LocalizedString_localizedStrings];
          if (*(v33 + 16))
          {
            v34 = sub_1B741EBC0(v32);
            if (v34[2] && (v35 = v34[4], v36 = v34[5], , , *(v33 + 16)))
            {
              v37 = sub_1B724548C(v35, v36);
              v39 = v38;

              if (v39)
              {
                v40 = (*(v33 + 56) + 16 * v37);
                goto LABEL_20;
              }
            }

            else
            {
            }
          }

          v40 = &v31[OBJC_IVAR____TtC10FinanceKit15LocalizedString_key];
LABEL_20:
          v41 = *(v40 + 1);
          v98 = *v40;

          v42 = [v30 valueAmount];
          [v42 v23[104]];

          v43 = [v30 valueCurrencyCode];
          v44 = sub_1B7800868();
          v46 = v45;

          if (sub_1B78009A8() == 3)
          {
          }

          else
          {
            if (qword_1EDAFAF50 != -1)
            {
              swift_once();
            }

            v47 = sub_1B78000B8();
            __swift_project_value_buffer(v47, qword_1EDAFAF58);

            v48 = sub_1B7800098();
            v49 = sub_1B78011D8();

            if (os_log_type_enabled(v48, v49))
            {
              v50 = swift_slowAlloc();
              v51 = v27;
              v52 = swift_slowAlloc();
              *&v100 = v52;
              *v50 = v93;
              *(v50 + 4) = sub_1B71A3EF8(v44, v46, &v100);
              _os_log_impl(&dword_1B7198000, v48, v49, "Attempted to create a CurrencyAmount object with invalid currencyCode: %s", v50, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v52);
              v53 = v52;
              v27 = v51;
              v23 = &off_1E7CAF000;
              MEMORY[0x1B8CA7A40](v53, -1, -1);
              MEMORY[0x1B8CA7A40](v50, -1, -1);
            }
          }

          LODWORD(v101) = v103;
          v100 = v102;
          v104 = v27;
          v55 = *(v27 + 16);
          v54 = *(v27 + 24);
          v6 = v99;
          if (v55 >= v54 >> 1)
          {
            sub_1B71FE7C0((v54 > 1), v55 + 1, 1);
            v27 = v104;
          }

          *(v27 + 16) = v55 + 1;
          v56 = v27 + 56 * v55;
          *(v56 + 32) = v98;
          *(v56 + 40) = v41;
          v57 = v101;
          *(v56 + 48) = v100;
          *(v56 + 64) = v57;
          *(v56 + 72) = v44;
          *(v56 + 80) = v46;
          if (v94 == v26)
          {

            v20 = v92;
            goto LABEL_33;
          }

          ++v26;
        }
      }

      __break(1u);
      goto LABEL_65;
    }

    v27 = MEMORY[0x1E69E7CC0];
LABEL_33:
    v58 = [v20 paymentMethods];
    v59 = MEMORY[0x1E69E7CC0];
    if (v58)
    {
      v60 = v58;
      i = sub_1B7800C38();
    }

    else
    {
      i = MEMORY[0x1E69E7CC0];
    }

    v61 = ManagedOrderPayment.applePayTransactionIdentifiers.getter();
    v62 = v61;
    if (v61 >> 62)
    {
      v63 = sub_1B7801958();
      v98 = v27;
      if (v63)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v63 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v98 = v27;
      if (v63)
      {
LABEL_38:
        *&v100 = v59;
        result.value = sub_1B71FDB50(0, v63 & ~(v63 >> 63), 0);
        if (v63 < 0)
        {
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        v64 = 0;
        v65 = v100;
        do
        {
          if ((v62 & 0xC000000000000001) != 0)
          {
            v66 = MEMORY[0x1B8CA5DC0](v64, v62);
          }

          else
          {
            v66 = *(v62 + 8 * v64 + 32);
          }

          v67 = v66;
          v68 = [v67 value];
          v69 = sub_1B7800868();
          v71 = v70;

          *&v100 = v65;
          v73 = *(v65 + 16);
          v72 = *(v65 + 24);
          if (v73 >= v72 >> 1)
          {
            sub_1B71FDB50((v72 > 1), v73 + 1, 1);
            v65 = v100;
          }

          ++v64;
          *(v65 + 16) = v73 + 1;
          v74 = v65 + 16 * v73;
          *(v74 + 32) = v69;
          *(v74 + 40) = v71;
          v6 = v99;
        }

        while (v63 != v64);

        v20 = v92;
        v59 = MEMORY[0x1E69E7CC0];
LABEL_50:
        v78 = ManagedOrderPayment.transactions.getter();
        v79 = v78;
        if (v78 >> 62)
        {
          v80 = sub_1B7801958();
          if (v80)
          {
            goto LABEL_52;
          }
        }

        else
        {
          v80 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v80)
          {
LABEL_52:
            *&v100 = v59;
            result.value = sub_1B71FE77C(0, v80 & ~(v80 >> 63), 0);
            if (v80 < 0)
            {
LABEL_66:
              __break(1u);
              goto LABEL_67;
            }

            v81 = 0;
            v82 = v100;
            do
            {
              if ((v79 & 0xC000000000000001) != 0)
              {
                v83 = MEMORY[0x1B8CA5DC0](v81, v79);
              }

              else
              {
                v83 = *(v79 + 8 * v81 + 32);
              }

              RawOrderPaymentTransaction.init(_:)(v83, v6);
              *&v100 = v82;
              v85 = *(v82 + 16);
              v84 = *(v82 + 24);
              if (v85 >= v84 >> 1)
              {
                sub_1B71FE77C(v84 > 1, v85 + 1, 1);
                v82 = v100;
              }

              ++v81;
              *(v82 + 16) = v85 + 1;
              sub_1B74C27F8(v6, v82 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v85);
            }

            while (v80 != v81);

LABEL_63:
            v86 = v91;
            *v91 = v90;
            v87 = *&v108[16];
            *(v86 + 1) = *v108;
            *(v86 + 17) = v87;
            *(v86 + 2) = *&v108[31];
            v88 = i;
            *(v86 + 6) = v98;
            *(v86 + 7) = v88;
            *(v86 + 8) = v65;
            *(v86 + 9) = v82;
            return result;
          }
        }

        v82 = MEMORY[0x1E69E7CC0];
        goto LABEL_63;
      }
    }

    v65 = MEMORY[0x1E69E7CC0];
    goto LABEL_50;
  }

  result.value = ManagedOrderPaymentStatus.init(rawValue:)([v8 shortValue]).value;
  if (v105 != 6)
  {
    v90 = v105;

    goto LABEL_5;
  }

LABEL_67:
  __break(1u);
  return result;
}

FinanceKit::RawOrderPaymentStatus_optional __swiftcall RawOrderPaymentStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B7801D18();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t RawOrderPaymentStatus.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x676E69646E6570;
  v3 = 0x6465646E75666572;
  v4 = 0x64656E696C636564;
  if (v1 != 4)
  {
    v4 = 0x646564696F76;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7A69726F68747561;
  if (v1 != 1)
  {
    v5 = 1684627824;
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

uint64_t sub_1B76B85BC()
{
  sub_1B7800798();
}

void sub_1B76B86B8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x676E69646E6570;
  v5 = 0xE800000000000000;
  v6 = 0x6465646E75666572;
  v7 = 0xE800000000000000;
  v8 = 0x64656E696C636564;
  if (v2 != 4)
  {
    v8 = 0x646564696F76;
    v7 = 0xE600000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000006465;
  v10 = 0x7A69726F68747561;
  if (v2 != 1)
  {
    v10 = 1684627824;
    v9 = 0xE400000000000000;
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

uint64_t RawOrderPayment.total.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v6[0] = *(v1 + 8);
  v6[1] = v2;
  v7 = *(v1 + 40);
  v3 = v7;
  *a1 = v6[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  return sub_1B7215720(v6, v5);
}

__n128 RawOrderPayment.total.setter(uint64_t a1)
{
  v3 = *(v1 + 24);
  v6[0] = *(v1 + 8);
  v6[1] = v3;
  v7 = *(v1 + 40);
  sub_1B721722C(v6);
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v5;
  *(v1 + 40) = *(a1 + 32);
  return result;
}

uint64_t RawOrderPayment.summaryItems.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t RawOrderPayment.paymentMethods.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t RawOrderPayment.applePayTransactionIdentifiers.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t RawOrderPayment.transactions.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

__n128 RawOrderPayment.init(status:total:summaryItems:paymentMethods:applePayTransactionIdentifiers:transactions:)@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  result = *a2;
  v8 = *(a2 + 16);
  *(a7 + 8) = *a2;
  *a7 = *a1;
  *(a7 + 24) = v8;
  *(a7 + 40) = *(a2 + 32);
  *(a7 + 48) = a3;
  *(a7 + 56) = a4;
  *(a7 + 64) = a5;
  *(a7 + 72) = a6;
  return result;
}

FinanceKit::RawOrderPayment::CodingKeys_optional __swiftcall RawOrderPayment.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x737574617473 && stringValue._object == 0xE600000000000000;
  if (v5 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x6C61746F74 && object == 0xE500000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0x497972616D6D7573 && object == 0xEC000000736D6574 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 2;
  }

  else if (countAndFlagsBits == 0x4D746E656D796170 && object == 0xEE0073646F687465 || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 3;
  }

  else if (countAndFlagsBits == 0xD00000000000001ELL && 0x80000001B788A7C0 == object || (sub_1B78020F8() & 1) != 0)
  {

    v7 = 4;
  }

  else if (countAndFlagsBits == 0x746361736E617274 && object == 0xEC000000736E6F69)
  {

    v7 = 5;
  }

  else
  {
    v8 = sub_1B78020F8();

    if (v8)
    {
      v7 = 5;
    }

    else
    {
      v7 = 6;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t RawOrderPayment.CodingKeys.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

uint64_t RawOrderPayment.CodingKeys.stringValue.getter()
{
  v1 = *v0;
  v2 = 0x737574617473;
  v3 = 0x4D746E656D796170;
  v4 = 0xD00000000000001ELL;
  if (v1 != 4)
  {
    v4 = 0x746361736E617274;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C61746F74;
  if (v1 != 1)
  {
    v5 = 0x497972616D6D7573;
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

uint64_t sub_1B76B8E64()
{
  v1 = *v0;
  v2 = 0x737574617473;
  v3 = 0x4D746E656D796170;
  v4 = 0xD00000000000001ELL;
  if (v1 != 4)
  {
    v4 = 0x746361736E617274;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C61746F74;
  if (v1 != 1)
  {
    v5 = 0x497972616D6D7573;
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

uint64_t sub_1B76B8F3C(uint64_t a1)
{
  v2 = sub_1B76BA5AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76B8F78(uint64_t a1)
{
  v2 = sub_1B76BA5AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawOrderPayment.init(from:configuration:)@<X0>(void *a1@<X0>, __int16 *a2@<X1>, _OWORD *a3@<X8>)
{
  v48 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B360);
  v32 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - v7;
  v9 = *a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76BA5AC();
  sub_1B78023C8();
  if (v3)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v8;
  v11 = v6;
  v12 = v48;
  v13 = v32;
  if (v9 > 1)
  {
    v30 = 6;
    v31 = MEMORY[0x1E69E7CC0];
    v17 = MEMORY[0x1E69E7CC0];
    v18 = a1;
    v19 = v11;
    v15 = v10;
  }

  else
  {
    LOBYTE(v33[0]) = 0;
    sub_1B76BA714();
    v14 = v11;
    v15 = v10;
    sub_1B7801E48();
    v30 = v36[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
    LOBYTE(v33[0]) = 3;
    sub_1B721523C(&qword_1EDAF64A8);
    sub_1B7801DB8();
    v21 = *v36;
    if (!*v36)
    {
      v21 = MEMORY[0x1E69E7CC0];
    }

    v29 = v21;
    LOBYTE(v33[0]) = 4;
    sub_1B7801DB8();
    v28 = *v36;
    if (!*v36)
    {
      v28 = MEMORY[0x1E69E7CC0];
    }

    v31 = v28;
    v18 = a1;
    v19 = v14;
    v17 = v29;
  }

  v43 = 1;
  v42 = 1;
  sub_1B75276F4();
  sub_1B7801D58();
  v29 = v17;
  *&v47[7] = v44;
  *&v47[23] = v45;
  *&v47[39] = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B370);
  LOBYTE(v33[0]) = 2;
  sub_1B76BA768(&qword_1EB99B378, sub_1B76BA600);
  sub_1B7801DB8();
  v20 = *v36;
  if (!*v36)
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  v32 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B388);
  LOBYTE(v33[0]) = 5;
  sub_1B76BA654(&qword_1EB99B390, &qword_1EB99B398);
  sub_1B7801DB8();
  if (*v36)
  {
    v22 = *v36;
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  (*(v13 + 8))(v15, v19);
  v23 = v30;
  LOBYTE(v33[0]) = v30;
  *(&v33[1] + 1) = *&v47[16];
  *(v33 + 1) = *v47;
  v33[2] = *&v47[31];
  v24 = v31;
  v25 = v29;
  *&v34 = v32;
  *(&v34 + 1) = v29;
  *&v35 = v31;
  *(&v35 + 1) = v22;
  v26 = v35;
  v12[3] = v34;
  v12[4] = v26;
  v27 = v33[2];
  v12[1] = v33[1];
  v12[2] = v27;
  *v12 = v33[0];
  sub_1B76BA6DC(v33, v36);
  __swift_destroy_boxed_opaque_existential_1(v18);
  v36[0] = v23;
  *&v36[1] = *v47;
  *v37 = *&v47[16];
  *&v37[15] = *&v47[31];
  v38 = v32;
  v39 = v25;
  v40 = v24;
  v41 = v22;
  return sub_1B74C2740(v36);
}

uint64_t RawOrderPayment.encode(to:configuration:)(void *a1, __int16 *a2)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B3A8);
  v40 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v7 = &v22 - v6;
  v8 = *a2;
  v9 = *v2;
  v10 = *(v2 + 24);
  v37 = *(v2 + 8);
  v38 = v10;
  v11 = *(v2 + 5);
  v25 = *(v2 + 6);
  v39 = v11;
  v12 = *(v2 + 8);
  v23 = *(v2 + 7);
  v22 = v12;
  v24 = *(v2 + 9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_1B76BA5AC();
  v26 = v7;
  sub_1B78023F8();
  if (v8 > 1)
  {
    v19 = v27;
    v20 = v26;
    v21 = v3;
LABEL_5:
    v34 = v37;
    v35 = v38;
    v36 = v39;
    v33 = 1;
    sub_1B7215720(&v37, &v30);
    sub_1B7215044();
    sub_1B7801FC8();
    if (v21)
    {
      v30 = v34;
      v31 = v35;
      v32 = v36;
      sub_1B721722C(&v30);
    }

    else
    {
      v30 = v34;
      v31 = v35;
      v32 = v36;
      sub_1B721722C(&v30);
      if (*(v25 + 16))
      {
        v29 = v25;
        v28 = 2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B370);
        sub_1B76BA768(&qword_1EB99B3B0, sub_1B76BA7E0);
        sub_1B7801FC8();
      }

      if (*(v24 + 16))
      {
        v29 = v24;
        v28 = 5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B388);
        sub_1B76BA654(&qword_1EB99B3C0, &qword_1EB99B3C8);
        sub_1B7801FC8();
      }
    }

    return (*(v40 + 8))(v20, v19);
  }

  if (v9 == 6)
  {
    v14 = sub_1B7801B38();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B3D0);
    *(v16 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B3D8);
    *v16 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B3E0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1B7807CD0;
    *(v17 + 56) = &type metadata for RawOrderPayment.CodingKeys;
    *(v17 + 64) = v13;
    *(v17 + 32) = 0;
    sub_1B7801AE8();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6B30], v14);
    swift_willThrow();
    return (*(v40 + 8))(v26, v27);
  }

  LOBYTE(v34) = v9;
  LOBYTE(v30) = 0;
  sub_1B76BA878();
  v19 = v27;
  v20 = v26;
  sub_1B7801FC8();
  v21 = v3;
  if (!v3)
  {
    if (*(v23 + 16))
    {
      *&v34 = v23;
      LOBYTE(v30) = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
      sub_1B721523C(&qword_1EB98F960);
      sub_1B7801FC8();
    }

    if (*(v22 + 16))
    {
      *&v34 = v22;
      LOBYTE(v30) = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
      sub_1B721523C(&qword_1EB98F960);
      sub_1B7801FC8();
    }

    goto LABEL_5;
  }

  return (*(v40 + 8))(v20, v19);
}

uint64_t RawOrderPaymentSummaryItem.label.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RawOrderPaymentSummaryItem.label.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RawOrderPaymentSummaryItem.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v6[0] = *(v1 + 16);
  v6[1] = v2;
  v7 = *(v1 + 48);
  v3 = v7;
  *a1 = v6[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  return sub_1B7215720(v6, v5);
}

__n128 RawOrderPaymentSummaryItem.value.setter(uint64_t a1)
{
  v3 = *(v1 + 32);
  v6[0] = *(v1 + 16);
  v6[1] = v3;
  v7 = *(v1 + 48);
  sub_1B721722C(v6);
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v5;
  *(v1 + 48) = *(a1 + 32);
  return result;
}

__n128 RawOrderPaymentSummaryItem.init(label:value:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  result = *a3;
  v5 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v5;
  *(a4 + 48) = *(a3 + 32);
  return result;
}

uint64_t sub_1B76B9CB4(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x65756C6176;
  }

  else
  {
    v2 = 0x6C6562616CLL;
  }

  if (*a2)
  {
    v3 = 0x65756C6176;
  }

  else
  {
    v3 = 0x6C6562616CLL;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1B78020F8();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1B76B9D34()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B76B9DA4()
{
  sub_1B7800798();
}

uint64_t sub_1B76B9DF8()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B76B9E64@<X0>(char *a1@<X8>)
{
  v2 = sub_1B7801D18();

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

void sub_1B76B9EC4(uint64_t *a1@<X8>)
{
  v2 = 0x6C6562616CLL;
  if (*v1)
  {
    v2 = 0x65756C6176;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

uint64_t sub_1B76B9EF4()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_1B76B9F20@<X0>(char *a1@<X8>)
{
  v2 = sub_1B7801D18();

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

uint64_t sub_1B76B9F84(uint64_t a1)
{
  v2 = sub_1B76BAA88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76B9FC0(uint64_t a1)
{
  v2 = sub_1B76BAA88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawOrderPaymentSummaryItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B3F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76BAA88();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v19[0]) = 0;
  v9 = sub_1B7801DF8();
  v11 = v10;
  v12 = v9;
  v30 = 1;
  v29 = 1;
  sub_1B75276F4();
  sub_1B7801D58();
  (*(v6 + 8))(v8, v5);
  v13 = v23;
  v14 = v24;
  v26 = v23;
  v27 = v24;
  v28 = v25;
  *&v17[0] = v12;
  *(&v17[0] + 1) = v11;
  v17[1] = v23;
  v17[2] = v24;
  v18 = v25;
  *(a2 + 48) = v25;
  *(a2 + 16) = v13;
  *(a2 + 32) = v14;
  *a2 = v17[0];
  sub_1B73262A0(v17, v19);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v19[0] = v12;
  v19[1] = v11;
  v20 = v26;
  v21 = v27;
  v22 = v28;
  return sub_1B73262FC(v19);
}

uint64_t RawOrderPaymentSummaryItem.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B400);
  v11 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  v7 = *(v1 + 32);
  v17 = *(v1 + 16);
  v18 = v7;
  v19 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76BAA88();
  sub_1B78023F8();
  LOBYTE(v14) = 0;
  sub_1B7801F78();
  if (v2)
  {
    return (*(v11 + 8))(v6, v4);
  }

  v14 = v17;
  v15 = v18;
  v16 = v19;
  v20 = 1;
  sub_1B7215720(&v17, v12);
  sub_1B7215044();
  sub_1B7801FC8();
  v9 = (v11 + 8);
  v12[0] = v14;
  v12[1] = v15;
  v13 = v16;
  sub_1B721722C(v12);
  return (*v9)(v6, v4);
}

double RawOrderPaymentSummaryItem.init(_:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 label];
  v5 = sub_1B77FFA48();
  v6 = sub_1B741F7D4(v5);
  v8 = v7;

  *a2 = v6;
  *(a2 + 8) = v8;
  v9 = [a1 valueAmount];
  [v9 decimalValue];
  v10 = v19;
  v11 = v18;

  v12 = [a1 valueCurrencyCode];
  v13 = sub_1B7800868();
  v15 = v14;

  CurrencyAmount.init(_:currencyCode:)(v11, *(&v11 + 1), v10, v13, v15, &v18);
  result = *&v18;
  v17 = v19;
  *(a2 + 16) = v18;
  *(a2 + 32) = v17;
  *(a2 + 48) = v20;
  return result;
}

unint64_t sub_1B76BA5AC()
{
  result = qword_1EB99B368;
  if (!qword_1EB99B368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B368);
  }

  return result;
}

unint64_t sub_1B76BA600()
{
  result = qword_1EB99B380;
  if (!qword_1EB99B380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B380);
  }

  return result;
}

uint64_t sub_1B76BA654(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99B388);
    sub_1B76BA834(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B76BA714()
{
  result = qword_1EB99B3A0;
  if (!qword_1EB99B3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B3A0);
  }

  return result;
}

uint64_t sub_1B76BA768(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99B370);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B76BA7E0()
{
  result = qword_1EB99B3B8;
  if (!qword_1EB99B3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B3B8);
  }

  return result;
}

uint64_t sub_1B76BA834(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RawOrderPaymentTransaction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B76BA878()
{
  result = qword_1EB99B3E8;
  if (!qword_1EB99B3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B3E8);
  }

  return result;
}

uint64_t _s10FinanceKit15RawOrderPaymentV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = *(a1 + 24);
  v25 = *(a1 + 8);
  v26[0] = v5;
  v6 = *(a1 + 6);
  *&v26[1] = *(a1 + 5);
  v8 = *(a1 + 7);
  v7 = *(a1 + 8);
  v9 = *(a1 + 9);
  v10 = *a2;
  v11 = *(a2 + 24);
  v27 = *(a2 + 8);
  v28[0] = v11;
  v12 = *(a2 + 6);
  *&v28[1] = *(a2 + 5);
  v14 = *(a2 + 7);
  v13 = *(a2 + 8);
  v15 = *(a2 + 9);
  if (v4 == 6)
  {
    if (v10 != 6)
    {
      goto LABEL_15;
    }
  }

  else if (v10 == 6 || (sub_1B72C2AEC(v4, v10) & 1) == 0)
  {
    goto LABEL_15;
  }

  v23 = v9;
  v16 = LODWORD(v26[0]);
  v17 = LODWORD(v28[0]);
  v18 = v25;
  v19 = v27;
  sub_1B7215720(&v25, v24);
  sub_1B7215720(&v27, v24);
  if ((MEMORY[0x1B8CA5970](v18, *(&v18 + 1), v16, v19, *(&v19 + 1), v17) & 1) == 0)
  {
    sub_1B721722C(&v27);
    sub_1B721722C(&v25);
    goto LABEL_15;
  }

  if (*(v26 + 8) != *(v28 + 8))
  {
    v20 = sub_1B78020F8();
    sub_1B721722C(&v27);
    sub_1B721722C(&v25);
    if (v20)
    {
      goto LABEL_11;
    }

LABEL_15:
    v21 = 0;
    return v21 & 1;
  }

  sub_1B721722C(&v27);
  sub_1B721722C(&v25);
LABEL_11:
  if ((sub_1B7320798(v6, v12) & 1) == 0 || (sub_1B731D168(v8, v14) & 1) == 0 || (sub_1B731D168(v7, v13) & 1) == 0)
  {
    goto LABEL_15;
  }

  v21 = sub_1B73209E8(v23, v15);
  return v21 & 1;
}

unint64_t sub_1B76BAA88()
{
  result = qword_1EB99B3F8;
  if (!qword_1EB99B3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B3F8);
  }

  return result;
}

unint64_t sub_1B76BAAE0()
{
  result = qword_1EB99B408;
  if (!qword_1EB99B408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B408);
  }

  return result;
}

unint64_t sub_1B76BAB38()
{
  result = qword_1EB99B410;
  if (!qword_1EB99B410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99B418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B410);
  }

  return result;
}

unint64_t sub_1B76BABA0()
{
  result = qword_1EB99B420;
  if (!qword_1EB99B420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B420);
  }

  return result;
}

unint64_t sub_1B76BABF8()
{
  result = qword_1EB99B428;
  if (!qword_1EB99B428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B428);
  }

  return result;
}

unint64_t sub_1B76BAC50()
{
  result = qword_1EB99B430;
  if (!qword_1EB99B430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B430);
  }

  return result;
}

uint64_t destroy for RawOrderPayment()
{
}

uint64_t initializeWithCopy for RawOrderPayment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v3;
  v4 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v4;
  v5 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v5;

  return a1;
}

uint64_t assignWithCopy for RawOrderPayment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 14) = *(a2 + 14);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 22) = *(a2 + 22);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 26) = *(a2 + 26);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t assignWithTake for RawOrderPayment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t getEnumTagSinglePayload for RawOrderPayment(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for RawOrderPayment(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B76BB008()
{
  result = qword_1EB99B438;
  if (!qword_1EB99B438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B438);
  }

  return result;
}

unint64_t sub_1B76BB060()
{
  result = qword_1EB99B440;
  if (!qword_1EB99B440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B440);
  }

  return result;
}

unint64_t sub_1B76BB0B8()
{
  result = qword_1EB99B448;
  if (!qword_1EB99B448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B448);
  }

  return result;
}

unint64_t sub_1B76BB10C()
{
  result = qword_1EB99B450;
  if (!qword_1EB99B450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B450);
  }

  return result;
}

unint64_t TransactionStatus.init(from:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result > 8)
  {
    *a2 = 3;
  }

  else
  {
    *a2 = asc_1B7882201[result];
  }

  return result;
}

uint64_t sub_1B76BB188(uint64_t a1)
{
  v2 = sub_1B76BC584(&qword_1EB99B4A8);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B76BB1E0(uint64_t a1)
{
  v2 = sub_1B76BC584(&qword_1EB99B4A8);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t FinanceNetworkError.errorCode.getter()
{
  v1 = type metadata accessor for FinanceNetworkError();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B76BB40C(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v6 = sub_1B77FF988();
        (*(*(v6 - 8) + 8))(v3, v6);
        return 7;
      }

      else
      {
        return 3;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 5;
    }

    else
    {
      sub_1B76BB470(v3);
      return 6;
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      return 2;
    }

    else
    {
      sub_1B7205418(v3, &qword_1EB98EBD0);
      return 4;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1B76BB470(v3);
    return 1;
  }

  else
  {
    sub_1B76BB470(v3);
    return 0;
  }
}

uint64_t type metadata accessor for FinanceNetworkError()
{
  result = qword_1EB99B460;
  if (!qword_1EB99B460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B76BB40C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceNetworkError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B76BB470(uint64_t a1)
{
  v2 = type metadata accessor for FinanceNetworkError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t FinanceNetworkError.errorUserInfo.getter()
{
  v1 = v0;
  v2 = sub_1B77FF988();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v41 - v10;
  v12 = type metadata accessor for FinanceNetworkError();
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B76BB40C(v1, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v16 = *v14;
      if (EnumCaseMultiPayload)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F110);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1B7807CD0;
        *(inited + 32) = sub_1B7800868();
        v18 = inited + 32;
        *(inited + 40) = v35;
        swift_getErrorValue();
        v20 = v41[14];
        v21 = v41[15];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F110);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1B7807CD0;
        *(inited + 32) = sub_1B7800868();
        v18 = inited + 32;
        *(inited + 40) = v19;
        swift_getErrorValue();
        v20 = v41[0];
        v21 = v41[1];
      }

      goto LABEL_14;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v28 = *v14;
      v29 = v14[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F110);
      v30 = swift_initStackObject();
      *(v30 + 16) = xmmword_1B7808C50;
      *(v30 + 32) = 0x6465746365707865;
      *(v30 + 40) = 0xE800000000000000;
      MetatypeMetadata = swift_getMetatypeMetadata();
      *(v30 + 48) = v28;
      *(v30 + 72) = MetatypeMetadata;
      *(v30 + 80) = 0x6C6175746361;
      *(v30 + 88) = 0xE600000000000000;
      *(v30 + 120) = swift_getMetatypeMetadata();
      *(v30 + 96) = v29;
      v25 = sub_1B72018E0(v30);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F118);
      swift_arrayDestroy();
      return v25;
    }

    sub_1B7205340(v14, v11);
    sub_1B7280900(v11, v9);
    if ((*(v3 + 48))(v9, 1, v2) == 1)
    {
      v25 = sub_1B72018E0(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      (*(v3 + 32))(v5, v9, v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F110);
      v38 = swift_initStackObject();
      *(v38 + 16) = xmmword_1B7807CD0;
      *(v38 + 32) = 0x7466417972746572;
      *(v38 + 40) = 0xEA00000000007265;
      *(v38 + 72) = v2;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v38 + 48));
      (*(v3 + 16))(boxed_opaque_existential_1, v5, v2);
      v25 = sub_1B72018E0(v38);
      swift_setDeallocating();
      sub_1B7205418(v38 + 32, &qword_1EB98F118);
      (*(v3 + 8))(v5, v2);
    }

    v26 = &qword_1EB98EBD0;
    v27 = v11;
LABEL_20:
    sub_1B7205418(v27, v26);
    return v25;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      v16 = *v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F110);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B7807CD0;
      *(inited + 32) = sub_1B7800868();
      v18 = inited + 32;
      *(inited + 40) = v36;
      swift_getErrorValue();
      v20 = v41[64];
      v21 = v41[65];
LABEL_14:
      *(inited + 72) = v21;
      v37 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
      (*(*(v21 - 8) + 16))(v37, v20, v21);
      v25 = sub_1B72018E0(inited);
      swift_setDeallocating();
      sub_1B7205418(v18, &qword_1EB98F118);

      return v25;
    }

    v22 = *v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F110);
    v23 = swift_initStackObject();
    *(v23 + 16) = xmmword_1B7807CD0;
    *(v23 + 32) = 0x6F43737574617473;
    v24 = v23 + 32;
    *(v23 + 72) = MEMORY[0x1E69E6530];
    *(v23 + 40) = 0xEA00000000006564;
    *(v23 + 48) = v22;
    v25 = sub_1B72018E0(v23);
    swift_setDeallocating();
    v26 = &qword_1EB98F118;
    v27 = v24;
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload != 6)
  {
    return sub_1B72018E0(MEMORY[0x1E69E7CC0]);
  }

  v32 = *(v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D90) + 48));
  (*(v3 + 32))(v5, v14, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F110);
  v33 = swift_initStackObject();
  *(v33 + 16) = xmmword_1B7808C50;
  *(v33 + 32) = 0xD000000000000013;
  *(v33 + 40) = 0x80000001B788A820;
  *(v33 + 72) = v2;
  v34 = __swift_allocate_boxed_opaque_existential_1((v33 + 48));
  (*(v3 + 16))(v34, v5, v2);
  *(v33 + 80) = 0xD000000000000012;
  *(v33 + 88) = 0x80000001B788A840;
  *(v33 + 120) = MEMORY[0x1E69E7290];
  *(v33 + 96) = v32;
  v25 = sub_1B72018E0(v33);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F118);
  swift_arrayDestroy();
  (*(v3 + 8))(v5, v2);
  return v25;
}

unint64_t FinanceNetworkError.errorDescription.getter()
{
  v1 = sub_1B77FF988();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - v9;
  v11 = type metadata accessor for FinanceNetworkError();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B76BB40C(v0, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload != 4)
      {
        v15 = *v13;
        v32 = 0;
        v33 = 0xE000000000000000;
        sub_1B7801A78();

        v32 = 0xD000000000000024;
        v33 = 0x80000001B788A8B0;
        swift_getErrorValue();
LABEL_16:
        v24 = sub_1B7802228();
        MEMORY[0x1B8CA4D30](v24);

        return v32;
      }

      v16 = *v13;
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_1B7801A78();

      v32 = 0xD000000000000021;
      v33 = 0x80000001B788A8E0;
      v31 = v16;
      v17 = sub_1B7802068();
LABEL_11:
      MEMORY[0x1B8CA4D30](v17);

      return v32;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v19 = *(v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB992D90) + 48));
      (*(v2 + 32))(v4, v13, v1);
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_1B7801A78();
      MEMORY[0x1B8CA4D30](0xD00000000000002CLL, 0x80000001B788A860);
      v20 = sub_1B77FF958();
      MEMORY[0x1B8CA4D30](v20);

      MEMORY[0x1B8CA4D30](0xD00000000000001ELL, 0x80000001B788A890);
      LOWORD(v31) = v19;
      v21 = sub_1B7802068();
      MEMORY[0x1B8CA4D30](v21);

      v22 = v32;
      (*(v2 + 8))(v4, v1);
      return v22;
    }

    else
    {
      return 0xD000000000000016;
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v15 = *v13;
      v32 = 0;
      v33 = 0xE000000000000000;
      if (EnumCaseMultiPayload)
      {
        sub_1B7801A78();

        v32 = 0xD000000000000026;
        v33 = 0x80000001B788A990;
      }

      else
      {
        sub_1B7801A78();

        v32 = 0xD00000000000002FLL;
        v33 = 0x80000001B788A9C0;
      }

      swift_getErrorValue();
      goto LABEL_16;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_1B7801A78();

      v32 = 0xD000000000000020;
      v33 = 0x80000001B788A960;
      v18 = sub_1B7802438();
      MEMORY[0x1B8CA4D30](v18);

      MEMORY[0x1B8CA4D30](0x746F672074756220, 0xEA0000000000203ALL);
      v17 = sub_1B7802438();
      goto LABEL_11;
    }

    sub_1B7205340(v13, v10);
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_1B7801A78();

    v32 = 0xD000000000000020;
    v33 = 0x80000001B788A910;
    sub_1B7280900(v10, v8);
    if ((*(v2 + 48))(v8, 1, v1) == 1)
    {
      sub_1B7205418(v8, &qword_1EB98EBD0);
      v25 = 0xE400000000000000;
      v26 = 1701736302;
    }

    else
    {
      v27 = sub_1B77FF958();
      v25 = v28;
      (*(v2 + 8))(v8, v1);
      v26 = v27;
    }

    MEMORY[0x1B8CA4D30](v26, v25);

    v29 = v32;
    sub_1B7205418(v10, &qword_1EB98EBD0);
    return v29;
  }
}

FinanceKit::FinanceNetworkError::Code_optional __swiftcall FinanceNetworkError.Code.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1B76BC274()
{
  result = qword_1EB99B458;
  if (!qword_1EB99B458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B458);
  }

  return result;
}

void sub_1B76BC2C8()
{
  sub_1B76BC48C(319, &qword_1EB99B470, sub_1B76BC3B4);
  if (v0 <= 0x3F)
  {
    sub_1B76BC418();
    if (v1 <= 0x3F)
    {
      sub_1B76BC48C(319, &qword_1EB99B490, sub_1B72F2B80);
      if (v2 <= 0x3F)
      {
        sub_1B76BC4D8();
        if (v3 <= 0x3F)
        {
          sub_1B76BC508();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1B76BC3B4()
{
  result = qword_1EB99B478;
  if (!qword_1EB99B478)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB99B478);
  }

  return result;
}

void sub_1B76BC418()
{
  if (!qword_1EB99B480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99B488);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB99B480);
    }
  }
}

void sub_1B76BC48C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B76BC4D8()
{
  result = qword_1EB99B498;
  if (!qword_1EB99B498)
  {
    result = MEMORY[0x1E69E6530];
    atomic_store(MEMORY[0x1E69E6530], &qword_1EB99B498);
  }

  return result;
}

void sub_1B76BC508()
{
  if (!qword_1EB99B4A0)
  {
    sub_1B77FF988();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB99B4A0);
    }
  }
}

uint64_t sub_1B76BC584(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FinanceNetworkError();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t RawOrderPickupFulfillment.pickupWindow.getter@<X0>(char *a1@<X8>)
{
  v25 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995FF0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - v3;
  v5 = type metadata accessor for Duration();
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v22 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_1B77FF988();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RawOrderPickupFulfillment();
  sub_1B7205588(v1 + *(v14 + 48), v9, &qword_1EB98EBD0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1B7205418(v9, &qword_1EB98EBD0);
    v15 = type metadata accessor for Order.FulfillmentWindow(0);
    return (*(*(v15 - 8) + 56))(v25, 1, 1, v15);
  }

  else
  {
    v17 = *(v11 + 32);
    v17(v13, v9, v10);
    sub_1B7205588(v1 + *(v14 + 52), v4, &qword_1EB995FF0);
    if ((*(v23 + 48))(v4, 1, v24) == 1)
    {
      sub_1B7205418(v4, &qword_1EB995FF0);
      v18 = v25;
      v17(v25, v13, v10);
    }

    else
    {
      v20 = v22;
      sub_1B719AAB4(v4, v22, type metadata accessor for Duration);
      v18 = v25;
      v17(v25, v13, v10);
      v21 = type metadata accessor for TimeWindow(0);
      sub_1B719AAB4(v20, &v18[*(v21 + 20)], type metadata accessor for Duration);
    }

    v19 = type metadata accessor for Order.FulfillmentWindow(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  }
}

uint64_t type metadata accessor for RawOrderPickupFulfillment()
{
  result = qword_1EDAF7BF8;
  if (!qword_1EDAF7BF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RawOrderPickupFulfillment.init(fulfillmentIdentifier:status:displayName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a3;
  *(a6 + 16) = 0;
  *(a6 + 24) = 0;
  *(a6 + 32) = 1;
  *(a6 + 40) = 0u;
  *(a6 + 56) = 0u;
  *(a6 + 72) = 0u;
  *(a6 + 88) = 0u;
  *(a6 + 104) = 0u;
  *(a6 + 120) = 0u;
  *(a6 + 136) = 0u;
  *(a6 + 152) = 0u;
  *(a6 + 168) = 0u;
  *(a6 + 184) = 0u;
  *(a6 + 200) = 0u;
  *(a6 + 216) = 256;
  v11 = type metadata accessor for RawOrderPickupFulfillment();
  *(a6 + 224) = 0;
  *(a6 + 232) = 0;
  v12 = v11[12];
  v13 = sub_1B77FF988();
  v14 = *(*(v13 - 8) + 56);
  v14(a6 + v12, 1, 1, v13);
  v15 = v11[13];
  v16 = type metadata accessor for Duration();
  (*(*(v16 - 8) + 56))(a6 + v15, 1, 1, v16);
  result = (v14)(a6 + v11[14], 1, 1, v13);
  v18 = (a6 + v11[15]);
  *v18 = a1;
  v18[1] = a2;
  *(a6 + 8) = v10;
  *(a6 + 240) = a4;
  *(a6 + 248) = a5;
  *a6 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t RawOrderPickupFulfillment.setPickupWindowDuration(_:)(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995FF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v12 - v5);
  sub_1B71B4438(a1, &v12 - v5, type metadata accessor for Duration);
  v7 = type metadata accessor for Duration();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = type metadata accessor for RawOrderPickupFulfillment();
  sub_1B76C111C(v6, v1 + *(v9 + 48));
  result = sub_1B7205418(v6, &qword_1EB995FF0);
  if (!v2)
  {
    v11 = *(v9 + 52);
    sub_1B7205418(v1 + v11, &qword_1EB995FF0);
    sub_1B71B4438(a1, v1 + v11, type metadata accessor for Duration);
    return (v8)(v1 + v11, 0, 1, v7);
  }

  return result;
}

uint64_t RawOrderPickupFulfillment.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v111 = a2;
  v134 = a1;
  v94 = a3;
  v3 = sub_1B77FFB08();
  v91 = *(v3 - 8);
  v92 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v88 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B77FFC88();
  v89 = *(v5 - 8);
  v90 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v87 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for Duration();
  v7 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v93 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B77FF988();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v96 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995FF0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v95 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v100 = &v80 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v86 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v97 = &v80 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v99 = &v80 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v101 = (&v80 - v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B4B0);
  v102 = *(v24 - 8);
  v103 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v80 - v25;
  v27 = type metadata accessor for RawOrderPickupFulfillment();
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v30 + 4) = 1;
  v110 = v30 + 32;
  *(v30 + 40) = 0u;
  *(v30 + 56) = 0u;
  *(v30 + 72) = 0u;
  *(v30 + 88) = 0u;
  *(v30 + 104) = 0u;
  *(v30 + 120) = 0u;
  *(v30 + 136) = 0u;
  *(v30 + 152) = 0u;
  *(v30 + 168) = 0u;
  *(v30 + 184) = 0u;
  *(v30 + 200) = 0u;
  *(v30 + 108) = 256;
  v31 = *(v28 + 48);
  v98 = v10;
  v32 = *(v10 + 56);
  v108 = v31;
  v32(&v30[v31], 1, 1, v9);
  v33 = *(v7 + 56);
  v107 = *(v27 + 52);
  v33(&v30[v107], 1, 1, v109);
  v104 = v27;
  v106 = *(v27 + 56);
  v32(&v30[v106], 1, 1, v9);
  __swift_project_boxed_opaque_existential_1(v134, v134[3]);
  sub_1B76C1698();
  v34 = v105;
  sub_1B78023C8();
  if (v34)
  {

    v35 = 0;
    v36 = v110;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v134);

    v37 = 0;
    goto LABEL_5;
  }

  v85 = v7;
  v105 = v9;
  LOBYTE(v127) = 11;
  v42 = sub_1B7801DF8();
  v44 = v43;
  v84 = v26;
  swift_beginAccess();

  v45 = sub_1B724E408(v124, v42, v44);
  swift_endAccess();

  v36 = v110;
  if ((v45 & 1) == 0)
  {

    LOBYTE(v127) = 11;
    sub_1B7801B18();
    swift_allocError();
    sub_1B728216C(&qword_1EB99B4C0, &qword_1EB99B4B0);
    v47 = v84;
    v48 = v103;
    sub_1B7801AD8();
    swift_willThrow();

    (*(v102 + 8))(v47, v48);
    v35 = 0;
    goto LABEL_4;
  }

  v46 = &v30[*(v104 + 60)];
  *v46 = v42;
  v46[1] = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994F30);
  LOBYTE(v124[0]) = 0;
  sub_1B7457370(&qword_1EB994F38, sub_1B7457208);
  sub_1B7801DB8();
  v49 = MEMORY[0x1E69E7CC0];
  if (v127)
  {
    v49 = v127;
  }

  *v30 = v49;
  LOBYTE(v124[0]) = 1;
  sub_1B76C16EC();
  sub_1B7801E48();
  v30[8] = v127;
  LOBYTE(v127) = 2;
  *(v30 + 2) = sub_1B7801D78();
  *(v30 + 3) = v50;
  v83 = v50;
  v126 = 3;
  sub_1B73043C4();
  sub_1B7801DB8();
  v121 = v131;
  v122 = v132;
  v123 = v133;
  v117 = v127;
  v118 = v128;
  v119 = v129;
  v120 = v130;
  v51 = *(v36 + 1);
  v124[0] = *v36;
  v124[1] = v51;
  v52 = *(v36 + 2);
  v53 = *(v36 + 3);
  v54 = *(v36 + 4);
  v55 = *(v36 + 5);
  v125 = *(v36 + 12);
  v124[4] = v54;
  v124[5] = v55;
  v124[2] = v52;
  v124[3] = v53;
  sub_1B7205418(v124, &qword_1EB995F40);
  v56 = v122;
  *(v36 + 4) = v121;
  *(v36 + 5) = v56;
  *(v36 + 12) = v123;
  v57 = v118;
  *v36 = v117;
  *(v36 + 1) = v57;
  v58 = v120;
  *(v36 + 2) = v119;
  *(v36 + 3) = v58;
  v112 = 4;
  sub_1B76931B0();
  sub_1B7801DB8();
  v59 = v116;
  v60 = *(v30 + 17);
  v61 = *(v30 + 18);
  v62 = *(v30 + 19);
  v63 = *(v30 + 20);
  v64 = *(v30 + 21);
  v81 = v113;
  v82 = v115;
  v80 = v114;
  sub_1B74C69A8(v60, v61, v62, v63, v64);
  v65 = v81;
  *(v30 + 152) = v80;
  *(v30 + 136) = v65;
  *(v30 + 168) = v82;
  *(v30 + 23) = v59;
  v112 = 5;
  sub_1B75039C0();
  sub_1B7801DB8();
  v66 = v114;
  v67 = BYTE8(v114);
  v68 = BYTE9(v114);
  *(v30 + 12) = v113;
  *(v30 + 26) = v66;
  v30[216] = v67;
  v30[217] = v68;
  LOBYTE(v113) = 6;
  *(v30 + 28) = sub_1B7801D78();
  *(v30 + 29) = v69;
  LOBYTE(v113) = 7;
  *(v30 + 30) = sub_1B7801DF8();
  *(v30 + 31) = v70;
  LOBYTE(v113) = 8;
  sub_1B76C214C(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
  sub_1B7801DB8();
  sub_1B7213740(v101, &v30[v108], &qword_1EB98EBD0);
  LOBYTE(v113) = 9;
  sub_1B76C214C(&qword_1EDAF6620, type metadata accessor for Duration);
  sub_1B7801DB8();
  sub_1B7213740(v100, &v30[v107], &qword_1EB995FF0);
  LOBYTE(v113) = 10;
  sub_1B7801DB8();
  sub_1B7213740(v99, &v30[v106], &qword_1EB98EBD0);
  v71 = v97;
  sub_1B7205588(&v30[v108], v97, &qword_1EB98EBD0);
  v101 = *(v98 + 48);
  if (v101(v71, 1, v105) == 1)
  {
    (*(v102 + 8))(v84, v103);

    sub_1B7205418(v97, &qword_1EB98EBD0);
LABEL_22:
    sub_1B71B4438(v30, v94, type metadata accessor for RawOrderPickupFulfillment);
    __swift_destroy_boxed_opaque_existential_1(v134);
    return sub_1B76C1804(v30, type metadata accessor for RawOrderPickupFulfillment);
  }

  (*(v98 + 32))(v96, v97, v105);
  v72 = v95;
  sub_1B7205588(&v30[v107], v95, &qword_1EB995FF0);
  if ((*(v85 + 48))(v72, 1, v109) == 1)
  {

    (*(v98 + 8))(v96, v105);
    (*(v102 + 8))(v84, v103);
    sub_1B7205418(v95, &qword_1EB995FF0);
    goto LABEL_22;
  }

  sub_1B719AAB4(v95, v93, type metadata accessor for Duration);
  v74 = v91;
  v73 = v92;
  v75 = v88;
  (*(v91 + 104))(v88, *MEMORY[0x1E6969830], v92);
  v76 = v87;
  sub_1B77FFB18();
  (*(v74 + 8))(v75, v73);
  v77 = v86;
  sub_1B77FFC08();
  (*(v89 + 8))(v76, v90);
  LODWORD(v76) = v101(v77, 1, v105);
  sub_1B7205418(v77, &qword_1EB98EBD0);
  if (v76 != 1)
  {

    sub_1B76C1804(v93, type metadata accessor for Duration);
    (*(v98 + 8))(v96, v105);
    (*(v102 + 8))(v84, v103);
    goto LABEL_22;
  }

  LOBYTE(v113) = 9;
  sub_1B7801B18();
  swift_allocError();
  sub_1B728216C(&qword_1EB99B4C0, &qword_1EB99B4B0);
  v78 = v84;
  v79 = v103;
  sub_1B7801AD8();
  swift_willThrow();

  sub_1B76C1804(v93, type metadata accessor for Duration);
  (*(v98 + 8))(v96, v105);
  (*(v102 + 8))(v78, v79);
  v37 = 1;
  v36 = v110;
  __swift_destroy_boxed_opaque_existential_1(v134);

  v35 = 1;
LABEL_5:
  v38 = *(v36 + 5);
  v131 = *(v36 + 4);
  v132 = v38;
  v133 = *(v36 + 12);
  v39 = *(v36 + 1);
  v127 = *v36;
  v128 = v39;
  v40 = *(v36 + 3);
  v129 = *(v36 + 2);
  v130 = v40;
  sub_1B7205418(&v127, &qword_1EB995F40);
  sub_1B74C69A8(*(v30 + 17), *(v30 + 18), *(v30 + 19), *(v30 + 20), *(v30 + 21));

  if (v37)
  {
  }

  sub_1B7205418(&v30[v108], &qword_1EB98EBD0);
  sub_1B7205418(&v30[v107], &qword_1EB995FF0);
  result = sub_1B7205418(&v30[v106], &qword_1EB98EBD0);
  if (v35)
  {
  }

  return result;
}

uint64_t RawOrderPickupFulfillment.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B4D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76C1698();
  sub_1B78023F8();
  *&v45[0] = *v3;
  LOBYTE(v38) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994F30);
  sub_1B7457370(&qword_1EB994F58, sub_1B74573E8);
  sub_1B7801FC8();
  if (!v2)
  {
    LOBYTE(v45[0]) = *(v3 + 8);
    LOBYTE(v38) = 1;
    sub_1B76C1740();
    sub_1B7801FC8();
    v51 = 2;
    sub_1B7801EF8();
    v9 = *(v3 + 80);
    v10 = *(v3 + 112);
    v48 = *(v3 + 96);
    v49 = v10;
    v11 = *(v3 + 48);
    v45[0] = *(v3 + 32);
    v45[1] = v11;
    v12 = *(v3 + 80);
    v14 = *(v3 + 32);
    v13 = *(v3 + 48);
    v46 = *(v3 + 64);
    v47 = v12;
    v15 = *(v3 + 112);
    v42 = v48;
    v43 = v15;
    v38 = v14;
    v39 = v13;
    v50 = *(v3 + 128);
    v44 = *(v3 + 128);
    v40 = v46;
    v41 = v9;
    v37 = 3;
    sub_1B7205588(v45, v35, &qword_1EB995F40);
    sub_1B7304418();
    sub_1B7801F38();
    v35[4] = v42;
    v35[5] = v43;
    v36 = v44;
    v35[0] = v38;
    v35[1] = v39;
    v35[2] = v40;
    v35[3] = v41;
    sub_1B7205418(v35, &qword_1EB995F40);
    v16 = *(v3 + 144);
    v17 = *(v3 + 152);
    v18 = *(v3 + 160);
    v19 = *(v3 + 168);
    v20 = *(v3 + 176);
    v21 = *(v3 + 184);
    *&v29 = *(v3 + 136);
    *(&v29 + 1) = v16;
    v30 = v17;
    v31 = v18;
    v32 = v19;
    v33 = v20;
    v34 = v21;
    v28 = 4;
    sub_1B74C6ADC(v29, v16, v17, v18, v19);
    sub_1B7693618();
    sub_1B7801F38();
    sub_1B74C69A8(v29, *(&v29 + 1), v30, v31, v32);
    v22 = *(v3 + 208);
    v23 = *(v3 + 216);
    v24 = *(v3 + 217);
    v29 = *(v3 + 192);
    v30 = v22;
    LOBYTE(v31) = v23;
    BYTE1(v31) = v24;
    v28 = 5;
    sub_1B7503A14();
    sub_1B7801F38();
    LOBYTE(v29) = 6;
    sub_1B7801EF8();
    LOBYTE(v29) = 7;
    sub_1B7801F78();
    v52 = type metadata accessor for RawOrderPickupFulfillment();
    LOBYTE(v29) = 8;
    v25 = sub_1B77FF988();
    sub_1B76C214C(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
    v27 = v25;
    sub_1B7801F38();
    LOBYTE(v29) = 9;
    type metadata accessor for Duration();
    sub_1B76C214C(qword_1EDAF6628, type metadata accessor for Duration);
    sub_1B7801F38();
    LOBYTE(v29) = 10;
    sub_1B7801F38();
    LOBYTE(v29) = 11;
    sub_1B7801F78();
  }

  return (*(v6 + 8))(v8, v5);
}

FinanceKit::RawOrderPickupStatus_optional __swiftcall RawOrderPickupStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B7801D18();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t RawOrderPickupStatus.rawValue.getter()
{
  v1 = *v0;
  v2 = 1852141679;
  v3 = 0x705564656B636970;
  v4 = 0x6575737369;
  if (v1 != 4)
  {
    v4 = 0x656C6C65636E6163;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x69737365636F7270;
  if (v1 != 1)
  {
    v5 = 0x726F467964616572;
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

uint64_t sub_1B76BE5B0()
{
  sub_1B7800798();
}

void sub_1B76BE6BC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1852141679;
  v5 = 0xE800000000000000;
  v6 = 0x705564656B636970;
  v7 = 0xE500000000000000;
  v8 = 0x6575737369;
  if (v2 != 4)
  {
    v8 = 0x656C6C65636E6163;
    v7 = 0xE900000000000064;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA0000000000676ELL;
  v10 = 0x69737365636F7270;
  if (v2 != 1)
  {
    v10 = 0x726F467964616572;
    v9 = 0xEE0070756B636950;
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

uint64_t RawOrderPickupFulfillmentError.hashValue.getter()
{
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](0);
  return sub_1B7802368();
}

uint64_t RawOrderPickupFulfillment.lineItems.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t RawOrderPickupFulfillment.statusDescription.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t RawOrderPickupFulfillment.statusDescription.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t RawOrderPickupFulfillment.address.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 112);
  v13 = *(v1 + 96);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + 128);
  v4 = v15;
  v5 = *(v1 + 48);
  v10[0] = *(v1 + 32);
  v10[1] = v5;
  v6 = *(v1 + 80);
  v11 = *(v1 + 64);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  return sub_1B7205588(v10, v9, &qword_1EB995F40);
}

__n128 RawOrderPickupFulfillment.address.setter(uint64_t a1)
{
  v3 = *(v1 + 112);
  v9[4] = *(v1 + 96);
  v9[5] = v3;
  v10 = *(v1 + 128);
  v4 = *(v1 + 48);
  v9[0] = *(v1 + 32);
  v9[1] = v4;
  v5 = *(v1 + 80);
  v9[2] = *(v1 + 64);
  v9[3] = v5;
  sub_1B7205418(v9, &qword_1EB995F40);
  v6 = *(a1 + 80);
  *(v1 + 96) = *(a1 + 64);
  *(v1 + 112) = v6;
  *(v1 + 128) = *(a1 + 96);
  v7 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v7;
  result = *(a1 + 48);
  *(v1 + 64) = *(a1 + 32);
  *(v1 + 80) = result;
  return result;
}

uint64_t RawOrderPickupFulfillment.barcode.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[17];
  v3 = v1[18];
  v4 = v1[19];
  v5 = v1[20];
  v6 = v1[21];
  v7 = v1[22];
  v8 = v1[23];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_1B74C6ADC(v2, v3, v4, v5, v6);
}

__n128 RawOrderPickupFulfillment.barcode.setter(__int128 *a1)
{
  v6 = a1[2];
  v3 = *(a1 + 6);
  sub_1B74C69A8(v1[17], v1[18], v1[19], v1[20], v1[21]);
  v4 = *a1;
  *(v1 + 19) = a1[1];
  *(v1 + 17) = v4;
  result = v6;
  *(v1 + 21) = v6;
  v1[23] = v3;
  return result;
}

__n128 RawOrderPickupFulfillment.location.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[13].n128_u64[0];
  v3 = v1[13].n128_u8[8];
  v4 = v1[13].n128_u8[9];
  result = v1[12];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  a1[1].n128_u8[9] = v4;
  return result;
}

__n128 RawOrderPickupFulfillment.location.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v4 = a1[1].n128_u8[9];
  result = *a1;
  v1[12] = *a1;
  v1[13].n128_u64[0] = v2;
  v1[13].n128_u8[8] = v3;
  v1[13].n128_u8[9] = v4;
  return result;
}

uint64_t RawOrderPickupFulfillment.notes.getter()
{
  v1 = *(v0 + 224);

  return v1;
}

uint64_t RawOrderPickupFulfillment.notes.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 224) = a1;
  *(v2 + 232) = a2;
  return result;
}

uint64_t RawOrderPickupFulfillment.displayName.getter()
{
  v1 = *(v0 + 240);

  return v1;
}

uint64_t RawOrderPickupFulfillment.displayName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
  return result;
}

uint64_t RawOrderPickupFulfillment.fulfillmentIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawOrderPickupFulfillment() + 60));

  return v1;
}

uint64_t RawOrderPickupFulfillment.fulfillmentIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawOrderPickupFulfillment() + 60));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RawOrderPickupFulfillment.estimatedEndOfPickupWindow.getter@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = sub_1B77FFB08();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v39 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B77FFC88();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995FF0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v34 - v7;
  v9 = type metadata accessor for Duration();
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v38 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v37 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - v14;
  v16 = sub_1B77FF988();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for RawOrderPickupFulfillment();
  sub_1B7205588(v1 + *(v20 + 48), v15, &qword_1EB98EBD0);
  v21 = *(v17 + 48);
  if (v21(v15, 1, v16) == 1)
  {
    sub_1B7205418(v15, &qword_1EB98EBD0);
    v22 = 1;
    v23 = v45;
    return (*(v17 + 56))(v23, v22, 1, v16);
  }

  v24 = v15;
  v25 = *(v17 + 32);
  (v25)(v19, v24, v16);
  sub_1B7205588(v1 + *(v20 + 52), v8, &qword_1EB995FF0);
  if (v43[6](v8, 1, v44) == 1)
  {
    sub_1B7205418(v8, &qword_1EB995FF0);
    v23 = v45;
    (v25)(v45, v19, v16);
LABEL_7:
    v22 = 0;
    return (*(v17 + 56))(v23, v22, 1, v16);
  }

  v43 = v25;
  v44 = v17 + 32;
  v26 = v8;
  v27 = v38;
  sub_1B719AAB4(v26, v38, type metadata accessor for Duration);
  v29 = v41;
  v28 = v42;
  v30 = v39;
  (*(v41 + 104))(v39, *MEMORY[0x1E6969830], v42);
  v31 = v40;
  sub_1B77FFB18();
  (*(v29 + 8))(v30, v28);
  v32 = v37;
  sub_1B77FFC08();
  result = (v21)(v32, 1, v16);
  if (result != 1)
  {
    (*(v35 + 8))(v31, v36);
    sub_1B76C1804(v27, type metadata accessor for Duration);
    (*(v17 + 8))(v19, v16);
    v23 = v45;
    (v43)(v45, v32, v16);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B76BF518(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000015;
    if (a1 == 10)
    {
      v6 = 0x705564656B636970;
    }

    if (a1 == 9)
    {
      v6 = 0xD000000000000014;
    }

    v7 = 0x7365746F6ELL;
    v8 = 0x4E79616C70736964;
    if (a1 != 7)
    {
      v8 = 0x744170756B636970;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6D657449656E696CLL;
    v2 = 0x73736572646461;
    v3 = 0x65646F63726162;
    if (a1 != 4)
    {
      v3 = 0x6E6F697461636F6CLL;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x737574617473;
    if (a1 != 1)
    {
      v4 = 0xD000000000000011;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1B76BF6B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B76C1D20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B76BF6D8(uint64_t a1)
{
  v2 = sub_1B76C1698();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76BF714(uint64_t a1)
{
  v2 = sub_1B76C1698();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Void __swiftcall RawOrderPickupFulfillment.clearPickupWindowDuration()()
{
  v1 = *(type metadata accessor for RawOrderPickupFulfillment() + 52);
  sub_1B7205418(v0 + v1, &qword_1EB995FF0);
  v2 = type metadata accessor for Duration();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_1B76BF814(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1B7205588(a1, &v6 - v3, &qword_1EB990828);
  return RawOrderPickupFulfillment.pickupWindow.setter(v4);
}

uint64_t RawOrderPickupFulfillment.pickupWindow.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995FF0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v41 = &v36 - v4;
  v37 = type metadata accessor for TimeWindow(0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Order.FulfillmentWindow(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v36 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v36 - v19;
  v40 = a1;
  sub_1B7205588(a1, v17, &qword_1EB990828);
  v21 = *(v7 + 48);
  if (v21(v17, 1, v6) == 1)
  {
    sub_1B7205418(v17, &qword_1EB990828);
    v22 = sub_1B77FF988();
    (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
  }

  else
  {
    v36 = v1;
    sub_1B71B4438(v17, v11, type metadata accessor for Order.FulfillmentWindow);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = v11;
      v24 = v39;
      sub_1B719AAB4(v23, v39, type metadata accessor for TimeWindow);
      v25 = sub_1B77FF988();
      (*(*(v25 - 8) + 16))(v20, v24, v25);
      sub_1B76C1804(v24, type metadata accessor for TimeWindow);
    }

    else
    {
      v25 = sub_1B77FF988();
      (*(*(v25 - 8) + 32))(v20, v11, v25);
    }

    sub_1B76C1804(v17, type metadata accessor for Order.FulfillmentWindow);
    sub_1B77FF988();
    (*(*(v25 - 8) + 56))(v20, 0, 1, v25);
    v1 = v36;
  }

  v26 = type metadata accessor for RawOrderPickupFulfillment();
  sub_1B7213740(v20, v1 + *(v26 + 48), &qword_1EB98EBD0);
  sub_1B76C1794(v40, v15);
  if (v21(v15, 1, v6) == 1)
  {
    sub_1B7205418(v15, &qword_1EB990828);
    v27 = type metadata accessor for Duration();
    v28 = v41;
    (*(*(v27 - 8) + 56))(v41, 1, 1, v27);
  }

  else
  {
    v29 = v38;
    sub_1B71B4438(v15, v38, type metadata accessor for Order.FulfillmentWindow);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v28 = v41;
    if (EnumCaseMultiPayload == 1)
    {
      v31 = v29;
      v32 = v39;
      sub_1B719AAB4(v31, v39, type metadata accessor for TimeWindow);
      sub_1B71B4438(v32 + *(v37 + 20), v28, type metadata accessor for Duration);
      sub_1B76C1804(v32, type metadata accessor for TimeWindow);
      v33 = type metadata accessor for Duration();
      (*(*(v33 - 8) + 56))(v28, 0, 1, v33);
    }

    else
    {
      v34 = type metadata accessor for Duration();
      (*(*(v34 - 8) + 56))(v28, 1, 1, v34);
      sub_1B76C1804(v29, type metadata accessor for Order.FulfillmentWindow);
    }

    sub_1B76C1804(v15, type metadata accessor for Order.FulfillmentWindow);
  }

  return sub_1B7213740(v28, v1 + *(v26 + 52), &qword_1EB995FF0);
}

void (*RawOrderPickupFulfillment.pickupWindow.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  RawOrderPickupFulfillment.pickupWindow.getter(v4);
  return sub_1B76BFFE8;
}

void sub_1B76BFFE8(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_1B7205588(*(a1 + 16), v2, &qword_1EB990828);
    RawOrderPickupFulfillment.pickupWindow.setter(v2);
    sub_1B7205418(v3, &qword_1EB990828);
  }

  else
  {
    RawOrderPickupFulfillment.pickupWindow.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

BOOL _s10FinanceKit25RawOrderPickupFulfillmentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Duration();
  v109 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v107 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995FF0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v92 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B520);
  MEMORY[0x1EEE9AC00](v9);
  v110 = &v92 - v10;
  v11 = sub_1B77FF988();
  v112 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v111 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v106 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v92 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v108 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v92 - v21;
  if ((sub_1B731D48C(*a1, *a2) & 1) == 0 || (sub_1B72C0E98(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v23 = *(a1 + 24);
  v24 = *(a2 + 24);
  if (v23)
  {
    if (!v24 || (*(a1 + 16) != *(a2 + 16) || v23 != v24) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v25 = *(a1 + 80);
  v26 = *(a1 + 112);
  v145[4] = *(a1 + 96);
  v145[5] = v26;
  v146 = *(a1 + 128);
  v27 = *(a1 + 48);
  v145[0] = *(a1 + 32);
  v145[1] = v27;
  v28 = *(a1 + 64);
  v145[3] = v25;
  v145[2] = v28;
  v29 = *(a2 + 48);
  v147[0] = *(a2 + 32);
  v147[1] = v29;
  v31 = *(a2 + 64);
  v30 = *(a2 + 80);
  v32 = *(a2 + 96);
  v33 = *(a2 + 112);
  v148 = *(a2 + 128);
  v147[4] = v32;
  v147[5] = v33;
  v147[2] = v31;
  v147[3] = v30;
  v34 = *(a1 + 88);
  v141 = *(a1 + 72);
  v142 = v34;
  v35 = *(a1 + 120);
  v143 = *(a1 + 104);
  v144 = v35;
  v36 = *(a1 + 56);
  v139 = *(a1 + 40);
  v140 = v36;
  v37 = *(a2 + 56);
  v133 = *(a2 + 40);
  v134 = v37;
  v38 = *(a2 + 72);
  v39 = *(a2 + 88);
  v40 = *(a2 + 120);
  v137 = *(a2 + 104);
  v138 = v40;
  v135 = v38;
  v136 = v39;
  if (*&v145[0] == 1)
  {
    if (*&v147[0] == 1)
    {
      *v125 = 1;
      *&v125[40] = *(a1 + 72);
      *&v125[56] = *(a1 + 88);
      *&v125[72] = *(a1 + 104);
      *&v125[88] = *(a1 + 120);
      *&v125[8] = *(a1 + 40);
      *&v125[24] = *(a1 + 56);
      sub_1B7205588(v145, &v118, &qword_1EB995F40);
      sub_1B7205588(v147, &v118, &qword_1EB995F40);
      sub_1B7205418(v125, &qword_1EB995F40);
      goto LABEL_18;
    }

    v41 = *&v147[0];
    v42 = 1;
    sub_1B7205588(v145, v125, &qword_1EB995F40);
    sub_1B7205588(v147, v125, &qword_1EB995F40);
LABEL_16:
    *&v125[40] = v141;
    *&v125[56] = v142;
    *&v125[72] = v143;
    *&v125[88] = v144;
    *&v125[8] = v139;
    *&v125[24] = v140;
    *v125 = v42;
    v126 = v41;
    v127 = v133;
    v128 = v134;
    v131 = v137;
    v132 = v138;
    v129 = v135;
    v130 = v136;
    sub_1B7205418(v125, &qword_1EB99AE20);
    return 0;
  }

  *v125 = *&v145[0];
  *&v125[8] = *(a1 + 40);
  *&v125[24] = *(a1 + 56);
  *&v125[40] = *(a1 + 72);
  *&v125[88] = *(a1 + 120);
  *&v125[72] = *(a1 + 104);
  *&v125[56] = *(a1 + 88);
  v118 = *v125;
  v119 = *&v125[16];
  v124 = *&v125[96];
  v122 = *&v125[64];
  v123 = *&v125[80];
  v120 = *&v125[32];
  v121 = *&v125[48];
  if (*&v147[0] == 1)
  {
    v41 = 1;
    v42 = *&v145[0];
    *&v117[64] = *&v125[64];
    *&v117[80] = *&v125[80];
    *&v117[96] = *&v125[96];
    *v117 = *v125;
    *&v117[16] = *&v125[16];
    *&v117[32] = *&v125[32];
    *&v117[48] = *&v125[48];
    sub_1B7205588(v145, v115, &qword_1EB995F40);
    sub_1B7205588(v147, v115, &qword_1EB995F40);
    sub_1B7205588(v125, v115, &qword_1EB995F40);
    sub_1B730446C(v117);
    goto LABEL_16;
  }

  *&v117[40] = *(a2 + 72);
  *&v117[56] = *(a2 + 88);
  *&v117[72] = *(a2 + 104);
  *&v117[88] = *(a2 + 120);
  *&v117[8] = *(a2 + 40);
  *&v117[24] = *(a2 + 56);
  *v117 = *&v147[0];
  v104 = *&v145[0];
  LODWORD(v105) = _s10FinanceKit10RawAddressV2eeoiySbAC_ACtFZ_0(&v118, v117);
  v113[4] = *&v117[64];
  v113[5] = *&v117[80];
  v114 = *&v117[96];
  v113[0] = *v117;
  v113[1] = *&v117[16];
  v113[2] = *&v117[32];
  v113[3] = *&v117[48];
  sub_1B7205588(v145, v115, &qword_1EB995F40);
  sub_1B7205588(v147, v115, &qword_1EB995F40);
  sub_1B7205588(v125, v115, &qword_1EB995F40);
  sub_1B730446C(v113);
  v115[4] = v122;
  v115[5] = v123;
  v116 = v124;
  v115[0] = v118;
  v115[1] = v119;
  v115[2] = v120;
  v115[3] = v121;
  sub_1B730446C(v115);
  *v117 = v104;
  *&v117[40] = v141;
  *&v117[56] = v142;
  *&v117[72] = v143;
  *&v117[88] = v144;
  *&v117[8] = v139;
  *&v117[24] = v140;
  sub_1B7205418(v117, &qword_1EB995F40);
  if ((v105 & 1) == 0)
  {
    return 0;
  }

LABEL_18:
  v44 = *(a1 + 136);
  v43 = *(a1 + 144);
  v46 = *(a1 + 152);
  v45 = *(a1 + 160);
  v48 = *(a1 + 168);
  v47 = *(a1 + 176);
  v49 = *(a1 + 184);
  v103 = *(a2 + 136);
  v104 = *(a2 + 152);
  v50 = *(a2 + 168);
  v105 = *(a2 + 160);
  v51 = *(a2 + 176);
  v100 = v47;
  v101 = v51;
  v102 = *(a2 + 184);
  v96 = v50;
  v97 = v44;
  v98 = v46;
  v99 = v45;
  if (!v48)
  {
    v93 = 0;
    v94 = v49;
    v95 = v43;
    sub_1B74C6ADC(v44, v43, v46, v45, 0);
    if (!v96)
    {
      sub_1B74C6ADC(v103, *(&v103 + 1), v104, v105, 0);
      sub_1B74C69A8(v97, v95, v98, v99, 0);
      goto LABEL_29;
    }

    v53 = *(&v103 + 1);
    v52 = v103;
    v54 = v104;
    v55 = v96;
    sub_1B74C6ADC(v103, *(&v103 + 1), v104, v105, v96);
    v56 = v93;
    v57 = v95;
LABEL_25:
    sub_1B74C69A8(v97, v57, v98, v99, v56);
    sub_1B74C69A8(v52, v53, v54, v105, v55);
    return 0;
  }

  *v125 = v44;
  *&v125[8] = v43;
  *&v125[16] = v46;
  *&v125[24] = v45;
  *&v125[32] = v48;
  *&v125[40] = v47;
  *&v125[48] = v49;
  if (!v50)
  {
    v58 = v44;
    v59 = v43;
    v60 = v46;
    v61 = v45;
    v56 = v48;
    sub_1B74C6ADC(v44, v43, v46, v45, v48);
    sub_1B74C6ADC(v103, *(&v103 + 1), v104, v105, 0);
    v62 = v58;
    v55 = v96;
    v63 = v59;
    v64 = v60;
    v57 = v59;
    v65 = v61;
    v53 = *(&v103 + 1);
    v52 = v103;
    v54 = v104;
    sub_1B74C6ADC(v62, v63, v64, v65, v56);

    goto LABEL_25;
  }

  v118 = v103;
  LOBYTE(v119) = v104;
  *(&v119 + 1) = v105;
  *&v120 = v50;
  *(&v120 + 1) = v101;
  *&v121 = v102;
  v94 = v49;
  v95 = v43;
  v93 = v48;
  sub_1B74C6ADC(v44, v43, v46, v45, v48);
  sub_1B74C6ADC(v103, *(&v103 + 1), v104, v105, v96);
  sub_1B74C6ADC(v97, v95, v98, v99, v93);
  LODWORD(v105) = _s10FinanceKit15RawOrderBarcodeV2eeoiySbAC_ACtFZ_0(v125, &v118);
  *(&v103 + 1) = v120;
  v104 = *(&v118 + 1);

  *(&v103 + 1) = *&v125[32];
  v104 = *&v125[8];

  sub_1B74C69A8(v97, v95, v98, v99, v93);
  if ((v105 & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  v67 = *(a2 + 217);
  if (*(a1 + 217))
  {
    goto LABEL_30;
  }

  if ((*(a2 + 217) & 1) != 0 || *(a1 + 192) != *(a2 + 192) || *(a1 + 200) != *(a2 + 200))
  {
    return 0;
  }

  v67 = *(a2 + 216);
  if (*(a1 + 216))
  {
LABEL_30:
    if ((v67 & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(a2 + 216) & 1) != 0 || *(a1 + 208) != *(a2 + 208))
  {
    return 0;
  }

  v68 = *(a1 + 232);
  v69 = *(a2 + 232);
  if (v68)
  {
    if (!v69 || (*(a1 + 224) != *(a2 + 224) || v68 != v69) && (sub_1B78020F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v69)
  {
    return 0;
  }

  if ((*(a1 + 240) != *(a2 + 240) || *(a1 + 248) != *(a2 + 248)) && (sub_1B78020F8() & 1) == 0)
  {
    return 0;
  }

  *&v103 = type metadata accessor for RawOrderPickupFulfillment();
  v70 = *(v18 + 48);
  v104 = *(v103 + 48);
  v105 = v70;
  sub_1B7205588(a1 + v104, v22, &qword_1EB98EBD0);
  sub_1B7205588(a2 + v104, &v22[v105], &qword_1EB98EBD0);
  *(&v103 + 1) = *(v112 + 48);
  v104 = v112 + 48;
  if ((*(&v103 + 1))(v22, 1, v11) == 1)
  {
    if ((*(&v103 + 1))(&v22[v105], 1, v11) == 1)
    {
      sub_1B7205418(v22, &qword_1EB98EBD0);
      goto LABEL_55;
    }

LABEL_53:
    v71 = &qword_1EB98FCE0;
LABEL_61:
    sub_1B7205418(v22, v71);
    return 0;
  }

  sub_1B7205588(v22, v17, &qword_1EB98EBD0);
  if ((*(&v103 + 1))(&v22[v105], 1, v11) == 1)
  {
    (*(v112 + 8))(v17, v11);
    goto LABEL_53;
  }

  (*(v112 + 32))(v111, &v22[v105], v11);
  sub_1B76C214C(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
  LODWORD(v101) = sub_1B7800828();
  v72 = *(v112 + 8);
  v102 = v112 + 8;
  v105 = v72;
  v72(v111, v11);
  (v105)(v17, v11);
  sub_1B7205418(v22, &qword_1EB98EBD0);
  if ((v101 & 1) == 0)
  {
    return 0;
  }

LABEL_55:
  v73 = *(v103 + 52);
  v74 = *(v9 + 48);
  v22 = v110;
  sub_1B7205588(a1 + v73, v110, &qword_1EB995FF0);
  v105 = v74;
  sub_1B7205588(a2 + v73, &v22[v74], &qword_1EB995FF0);
  v75 = *(v109 + 48);
  if (v75(v22, 1, v4) == 1)
  {
    if (v75(&v22[v105], 1, v4) == 1)
    {
      sub_1B7205418(v22, &qword_1EB995FF0);
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  sub_1B7205588(v22, v8, &qword_1EB995FF0);
  if (v75(&v22[v105], 1, v4) == 1)
  {
    sub_1B76C1804(v8, type metadata accessor for Duration);
LABEL_60:
    v71 = &qword_1EB99B520;
    goto LABEL_61;
  }

  v76 = v107;
  sub_1B719AAB4(&v22[v105], v107, type metadata accessor for Duration);
  v77 = MEMORY[0x1B8CA2F10](v8, v76);
  sub_1B76C1804(v76, type metadata accessor for Duration);
  sub_1B76C1804(v8, type metadata accessor for Duration);
  sub_1B7205418(v22, &qword_1EB995FF0);
  if ((v77 & 1) == 0)
  {
    return 0;
  }

LABEL_63:
  v78 = *(v103 + 56);
  v79 = *(v18 + 48);
  v80 = v108;
  sub_1B7205588(a1 + v78, v108, &qword_1EB98EBD0);
  sub_1B7205588(a2 + v78, v80 + v79, &qword_1EB98EBD0);
  v81 = *(&v103 + 1);
  if ((*(&v103 + 1))(v80, 1, v11) != 1)
  {
    v82 = v106;
    sub_1B7205588(v80, v106, &qword_1EB98EBD0);
    if (v81(v80 + v79, 1, v11) != 1)
    {
      v83 = v112;
      v84 = v80 + v79;
      v85 = v111;
      (*(v112 + 32))(v111, v84, v11);
      sub_1B76C214C(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
      v86 = sub_1B7800828();
      v87 = *(v83 + 8);
      v87(v85, v11);
      v87(v82, v11);
      sub_1B7205418(v80, &qword_1EB98EBD0);
      if ((v86 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_70;
    }

    (*(v112 + 8))(v82, v11);
LABEL_68:
    sub_1B7205418(v80, &qword_1EB98FCE0);
    return 0;
  }

  if (v81(v80 + v79, 1, v11) != 1)
  {
    goto LABEL_68;
  }

  sub_1B7205418(v80, &qword_1EB98EBD0);
LABEL_70:
  v88 = *(v103 + 60);
  v89 = *(a1 + v88);
  v90 = *(a1 + v88 + 8);
  v91 = (a2 + v88);
  return v89 == *v91 && v90 == v91[1] || (sub_1B78020F8() & 1) != 0;
}

uint64_t sub_1B76C111C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2)
{
  v41 = a2;
  v43 = a1;
  v2 = sub_1B77FFB08();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v36 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B77FFC88();
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v34 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - v9;
  v11 = sub_1B77FF988();
  v42 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995FF0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v34 - v15;
  v17 = type metadata accessor for Duration();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7205588(v43, v16, &qword_1EB995FF0);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    v21 = &qword_1EB995FF0;
    v22 = v16;
    return sub_1B7205418(v22, v21);
  }

  sub_1B719AAB4(v16, v20, type metadata accessor for Duration);
  sub_1B7205588(v41, v10, &qword_1EB98EBD0);
  v23 = v42;
  v24 = *(v42 + 48);
  if (v24(v10, 1, v11) == 1)
  {
    sub_1B76C1804(v20, type metadata accessor for Duration);
    v21 = &qword_1EB98EBD0;
    v22 = v10;
    return sub_1B7205418(v22, v21);
  }

  (*(v23 + 32))(v13, v10, v11);
  v26 = v39;
  v27 = v36;
  v28 = v13;
  v29 = v40;
  (*(v39 + 104))(v36, *MEMORY[0x1E6969830], v40);
  v43 = v24;
  v30 = v35;
  sub_1B77FFB18();
  v31 = v29;
  v32 = v28;
  (*(v26 + 8))(v27, v31);
  v33 = v34;
  sub_1B77FFC08();
  (*(v37 + 8))(v30, v38);
  LODWORD(v30) = v43(v33, 1, v11);
  sub_1B7205418(v33, &qword_1EB98EBD0);
  if (v30 == 1)
  {
    sub_1B76C2194();
    swift_allocError();
    swift_willThrow();
  }

  (*(v23 + 8))(v32, v11);
  return sub_1B76C1804(v20, type metadata accessor for Duration);
}

unint64_t sub_1B76C1698()
{
  result = qword_1EB99B4B8;
  if (!qword_1EB99B4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B4B8);
  }

  return result;
}

unint64_t sub_1B76C16EC()
{
  result = qword_1EB99B4C8;
  if (!qword_1EB99B4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B4C8);
  }

  return result;
}

unint64_t sub_1B76C1740()
{
  result = qword_1EB99B4D8;
  if (!qword_1EB99B4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B4D8);
  }

  return result;
}

uint64_t sub_1B76C1794(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B76C1804(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B76C1868()
{
  result = qword_1EB99B4E0;
  if (!qword_1EB99B4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B4E0);
  }

  return result;
}

unint64_t sub_1B76C1904()
{
  result = qword_1EB99B4F8;
  if (!qword_1EB99B4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B4F8);
  }

  return result;
}

void sub_1B76C19A0()
{
  sub_1B72163E8(319, &qword_1EDAF64E8, &type metadata for RawOrderLineItem, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B72163E8(319, &qword_1EDAFD2C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B72163E8(319, &qword_1EDAF8F88, &type metadata for RawAddress, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1B72163E8(319, qword_1EDAF89B0, &type metadata for RawOrderBarcode, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1B72163E8(319, &qword_1EDAF8F68, &type metadata for RawLocation, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1B76C1BB4(319, qword_1EDAFD2F8, MEMORY[0x1E6969530]);
            if (v5 <= 0x3F)
            {
              sub_1B76C1BB4(319, &unk_1EDAF6610, type metadata accessor for Duration);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1B76C1BB4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B7801768();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1B76C1C1C()
{
  result = qword_1EB99B500;
  if (!qword_1EB99B500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B500);
  }

  return result;
}

unint64_t sub_1B76C1C74()
{
  result = qword_1EB99B508;
  if (!qword_1EB99B508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B508);
  }

  return result;
}

unint64_t sub_1B76C1CCC()
{
  result = qword_1EB99B510;
  if (!qword_1EB99B510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B510);
  }

  return result;
}

uint64_t sub_1B76C1D20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D657449656E696CLL && a2 == 0xE900000000000073;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B78749D0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73736572646461 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65646F63726162 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7365746F6ELL && a2 == 0xE500000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (sub_1B78020F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x744170756B636970 && a2 == 0xE800000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B788AA80 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x705564656B636970 && a2 == 0xEA00000000007441 || (sub_1B78020F8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B7881AD0 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

unint64_t sub_1B76C20F8()
{
  result = qword_1EB99B518;
  if (!qword_1EB99B518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B518);
  }

  return result;
}

uint64_t sub_1B76C214C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B76C2194()
{
  result = qword_1EB99B528;
  if (!qword_1EB99B528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B528);
  }

  return result;
}

uint64_t BankConnectService.disconnectAccount(with:)(uint64_t *a1)
{
  *(v2 + 80) = v1;
  *(v2 + 88) = type metadata accessor for BankConnectService.Message();
  v4 = swift_task_alloc();
  v5 = *a1;
  *(v2 + 96) = v4;
  *(v2 + 104) = v5;
  *(v2 + 112) = *(a1 + 1);
  *(v2 + 128) = a1[3];

  return MEMORY[0x1EEE6DFA0](sub_1B76C2294, 0, 0);
}

uint64_t sub_1B76C2294()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  v0[17] = *(v0[10] + 16);
  *v5 = v3;
  v5[1] = v4;
  v5[2] = v1;
  v5[3] = v2;
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B726BC10, 0, 0);
}

uint64_t sub_1B76C2338(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B7201BB0;

  return BankConnectService.disconnectAccount(with:)(a1);
}

uint64_t dispatch thunk of BankConnectConnectionAccountDisconnecting.disconnectAccount(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B7201BB0;

  return v9(a1, a2, a3);
}

uint64_t ApplePayMerchantTokenUsageInformationPackage.urls(forImageNamed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B77FF4F8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v3 + 16);
  v12 = GSMainScreenScaleFactor();
  if ((LODWORD(v13) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v13 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v13 < 9.2234e18)
  {
    MEMORY[0x1EEE9AC00](v12);
    *&v18[-32] = v11;
    *&v18[-24] = a1;
    *&v18[-16] = a2;
    *&v18[-8] = v14;
    v15 = *(v11 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleLock);
    v16 = (*(v8 + 16))(v10, v11 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleURL, v7);
    MEMORY[0x1EEE9AC00](v16);
    *&v18[-32] = v10;
    *&v18[-24] = sub_1B7262DC4;
    *&v18[-16] = &v18[-48];
    os_unfair_lock_lock((v15 + 24));
    sub_1B726A6E8((v15 + 16), a3);
    os_unfair_lock_unlock((v15 + 24));
    return (*(v8 + 8))(v10, v7);
  }

LABEL_7:
  __break(1u);
  os_unfair_lock_unlock(v12);
  result = (*(v8 + 8))(v10, v7);
  __break(1u);
  return result;
}

uint64_t ApplePayMerchantTokenUsageInformationPackage.localizedString(forKey:)(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = 0xD000000000000010;
  v3[5] = 0x80000001B7876290;
  return sub_1B723940C(sub_1B7262E4C, v3);
}

uint64_t sub_1B76C27A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawApplePayMerchantTokenUsageInformation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_1B76C2814(uint64_t a1)
{
  v25 = *v1;
  v23 = type metadata accessor for RawApplePayMerchantTokenUsageInformation(0);
  MEMORY[0x1EEE9AC00](v23);
  v24 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B77FE8B8();
  v5 = *(v4 - 8);
  v21 = v4;
  v22 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B77FF4F8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[2] = a1;
  v30 = 0xD000000000000010;
  v31 = 0x80000001B7876290;
  v20 = xmmword_1B783A790;
  v32 = xmmword_1B783A790;
  v12 = *(a1 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleLock);
  (*(v9 + 16))(v11, a1 + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleURL, v8);
  v26 = v11;
  v27 = sub_1B7537210;
  v28 = &v29;

  os_unfair_lock_lock((v12 + 24));
  v13 = v35;
  sub_1B7262DE4((v12 + 16), &v33);
  if (v13)
  {
    os_unfair_lock_unlock((v12 + 24));
    (*(v9 + 8))(v11, v8);
LABEL_5:

    goto LABEL_6;
  }

  v35 = 0;
  os_unfair_lock_unlock((v12 + 24));
  (*(v9 + 8))(v11, v8);
  v14 = v34;
  if (v34 >> 60 == 15)
  {
    sub_1B7537230();
    swift_allocError();
    *v15 = 0xD000000000000010;
    *(v15 + 8) = 0x80000001B7876290;
    *(v15 + 16) = v20;
    swift_willThrow();
    goto LABEL_5;
  }

  v17 = v33;
  sub_1B77FE8F8();
  swift_allocObject();
  sub_1B77FE8E8();
  (*(v22 + 104))(v7, *MEMORY[0x1E6967F30], v21);
  sub_1B77FE8C8();
  sub_1B76C356C(&qword_1EB99B540, type metadata accessor for RawApplePayMerchantTokenUsageInformation);
  v18 = v24;
  v19 = v35;
  sub_1B77FE8D8();

  sub_1B72380B8(v17, v14);

  if (!v19)
  {
    sub_1B76C35B4(v18, v1 + OBJC_IVAR____TtC10FinanceKit44ApplePayMerchantTokenUsageInformationPackage_usageInformation);
    return v1;
  }

LABEL_6:

  swift_deallocPartialClassInstance();
  return v1;
}

uint64_t *ApplePayMerchantTokenUsageInformationPackage.__allocating_init(url:)(uint64_t a1)
{
  v3 = sub_1B77FF4F8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, v3);
  type metadata accessor for ContentPackageReader();
  v7 = swift_allocObject();
  v8 = v6;
  v9 = v7;
  v10 = ContentPackageReader.init(bundleURL:isBundleOwner:)(v8, 0);
  if (v1)
  {
    (*(v4 + 8))(a1, v3);
  }

  else
  {
    v11 = v10;
    swift_allocObject();
    v9 = sub_1B76C2814(v11);
    (*(v4 + 8))(a1, v3);
  }

  return v9;
}

uint64_t ApplePayMerchantTokenUsageInformationPackage.__allocating_init(data:workingDirectory:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = sub_1B77FF4F8();
  v7 = *(v25 - 8);
  v8 = MEMORY[0x1EEE9AC00](v25);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v21 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = v21 - v14;
  type metadata accessor for ContentPackageUnarchiver();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B783A7B0;
  ContentPackageUnarchiver.unarchive(_:workingDirectory:)(a1, a2, a3, v15);
  if (v3)
  {
    (*(v7 + 8))(a3, v25);

    sub_1B720A388(a1, a2);
  }

  else
  {
    v21[1] = v10;
    v21[2] = inited;
    v22 = a1;
    v23 = a2;
    v24 = a3;
    v17 = v25;
    (*(v7 + 16))(v13, v15, v25);
    type metadata accessor for ContentPackageReader();
    swift_allocObject();
    v18 = ContentPackageReader.init(bundleURL:isBundleOwner:)(v13, 1);
    swift_allocObject();
    inited = sub_1B76C2814(v18);
    sub_1B720A388(v22, v23);
    v20 = *(v7 + 8);
    v20(v24, v17);
    v20(v15, v17);
  }

  return inited;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ApplePayMerchantTokenUsageInformationPackage.close()()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC10FinanceKit20ContentPackageReader_bundleLock);
  os_unfair_lock_lock((v1 + 24));
  sub_1B7537014((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t ApplePayMerchantTokenUsageInformationPackage.deinit()
{

  sub_1B76C3404(v0 + OBJC_IVAR____TtC10FinanceKit44ApplePayMerchantTokenUsageInformationPackage_usageInformation);
  return v0;
}

uint64_t ApplePayMerchantTokenUsageInformationPackage.__deallocating_deinit()
{

  sub_1B76C3404(v0 + OBJC_IVAR____TtC10FinanceKit44ApplePayMerchantTokenUsageInformationPackage_usageInformation);

  return swift_deallocClassInstance();
}

uint64_t sub_1B76C3404(uint64_t a1)
{
  v2 = type metadata accessor for RawApplePayMerchantTokenUsageInformation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ApplePayMerchantTokenUsageInformationPackage()
{
  result = qword_1EB99B530;
  if (!qword_1EB99B530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B76C34B4()
{
  result = type metadata accessor for RawApplePayMerchantTokenUsageInformation(319);
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

uint64_t sub_1B76C356C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B76C35B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawApplePayMerchantTokenUsageInformation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

FinanceKit::BankConnectConsentStatus_optional __swiftcall BankConnectConsentStatus.init(rawValue:)(Swift::Int16 rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1B76C3658()
{
  result = qword_1EB99B548;
  if (!qword_1EB99B548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B548);
  }

  return result;
}

unint64_t sub_1B76C3760()
{
  result = qword_1EB99B550;
  if (!qword_1EB99B550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99B558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B550);
  }

  return result;
}

unint64_t sub_1B76C37E4()
{
  result = qword_1EB99B560;
  if (!qword_1EB99B560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B560);
  }

  return result;
}

uint64_t WPCClassificationServiceCollection.version.getter()
{
  v1 = *v0;

  return v1;
}

void static WPCClassificationServiceCollection.fallback.getter(uint64_t a1@<X8>)
{
  *a1 = 4271950;
  *(a1 + 8) = 0xE300000000000000;
  *(a1 + 16) = 1;
  *(a1 + 24) = 30;
}

uint64_t sub_1B76C389C()
{
  v1 = 0x64656C62616E65;
  if (*v0 != 1)
  {
    v1 = 0x7A69536863746162;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_1B76C38FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B76C3D60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B76C3924(uint64_t a1)
{
  v2 = sub_1B76C3BCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76C3960(uint64_t a1)
{
  v2 = sub_1B76C3BCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WPCClassificationServiceCollection.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B568);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76C3BCC();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  v9 = sub_1B7801DF8();
  v11 = v10;
  v12 = v9;
  v21 = 1;
  v19 = sub_1B7801E08();
  v20 = 2;
  v13 = sub_1B7801E28();
  v14 = (v6 + 8);
  v15 = v13;
  v16 = v19 & 1;
  (*v14)(v8, v5);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v16;
  *(a2 + 24) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1B76C3BCC()
{
  result = qword_1EB99B570;
  if (!qword_1EB99B570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B570);
  }

  return result;
}

unint64_t sub_1B76C3C5C()
{
  result = qword_1EB99B578;
  if (!qword_1EB99B578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B578);
  }

  return result;
}

unint64_t sub_1B76C3CB4()
{
  result = qword_1EB99B580;
  if (!qword_1EB99B580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B580);
  }

  return result;
}

unint64_t sub_1B76C3D0C()
{
  result = qword_1EB99B588;
  if (!qword_1EB99B588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B588);
  }

  return result;
}

uint64_t sub_1B76C3D60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656C62616E65 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7A69536863746162 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B78020F8();

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

void sub_1B76C3E80(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1B7801908();
    type metadata accessor for ManagedContactTransactionInsight();
    sub_1B76C43D0();
    sub_1B7800FE8();
    v1 = v21;
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v20 = MEMORY[0x1E69E7CC0];
  while (v1 < 0)
  {
    if (!sub_1B7801988() || (type metadata accessor for ManagedContactTransactionInsight(), swift_dynamicCast(), (v11 = v26) == 0))
    {
LABEL_24:
      sub_1B71B7B58();
      return;
    }

LABEL_17:
    v12 = [v11 peerPaymentCounterpartHandle];
    if (v12)
    {
      v13 = v12;
      v19 = sub_1B7800868();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1B723E180(0, *(v20 + 2) + 1, 1, v20);
      }

      v17 = *(v20 + 2);
      v16 = *(v20 + 3);
      if (v17 >= v16 >> 1)
      {
        v20 = sub_1B723E180((v16 > 1), v17 + 1, 1, v20);
      }

      *(v20 + 2) = v17 + 1;
      v18 = &v20[16 * v17];
      *(v18 + 4) = v19;
      *(v18 + 5) = v15;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

id ManagedContactTransactionInsight.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedContactTransactionInsight.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedContactTransactionInsight.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedContactTransactionInsight.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit32ManagedContactTransactionInsight;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id ManagedInternalTransaction.contactInsight.getter()
{
  v1 = [v0 insightsObject];
  v2 = [v1 contactInsightObject];

  return v2;
}

void *sub_1B76C4328(uint64_t a1)
{
  v2 = sub_1B7238558(a1);
  if (v2)
  {
    sub_1B76C3E80(a1);
    if (*(v3 + 16))
    {

      v4 = sub_1B7800838();
    }

    else
    {

      v4 = 0;
    }

    [v2 setPeerPaymentCounterpartHandle_];
  }

  return v2;
}

unint64_t sub_1B76C43D0()
{
  result = qword_1EB990030;
  if (!qword_1EB990030)
  {
    type metadata accessor for ManagedContactTransactionInsight();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990030);
  }

  return result;
}

uint64_t TransactionQuery.init(sortDescriptors:predicate:limit:offset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, void *a7@<X8>)
{
  v28 = a6;
  v27 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B590);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F200);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v27 - v20;
  *a7 = a1;
  v22 = type metadata accessor for TransactionQuery();
  sub_1B76C46DC(a2, a7 + v22[5]);
  sub_1B76C46DC(a2, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1B76C474C(a2);
    result = sub_1B76C474C(v14);
    v24 = 0;
  }

  else
  {
    (*(v16 + 32))(v21, v14, v15);
    sub_1B729D790();
    (*(v16 + 16))(v19, v21, v15);
    v24 = sub_1B71FAD20(v19);
    sub_1B76C474C(a2);
    result = (*(v16 + 8))(v21, v15);
  }

  *(a7 + v22[8]) = v24;
  v25 = a7 + v22[6];
  *v25 = a3;
  v25[8] = a4 & 1;
  v26 = a7 + v22[7];
  *v26 = v27;
  v26[8] = v28 & 1;
  return result;
}

uint64_t type metadata accessor for TransactionQuery()
{
  result = qword_1EB99B598;
  if (!qword_1EB99B598)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B76C46DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B76C474C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B76C47E0@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v22 = a1;
  v25 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9913D0);
  v3 = *(v2 - 8);
  v26 = v2;
  v27 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v24 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F1F8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B618);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - v11;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B620);
  v13 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v15 = &v22 - v14;
  sub_1B728216C(&qword_1EB99B5C0, &qword_1EB98F1F8);
  sub_1B77FF2D8();
  swift_getKeyPath();
  sub_1B77FF008();

  (*(v6 + 8))(v8, v5);
  v28 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994E20);
  sub_1B728216C(&qword_1EB99B628, &qword_1EB99B618);
  sub_1B728216C(&qword_1EB994E30, &qword_1EB994E20);
  sub_1B77FF018();
  (*(v10 + 8))(v12, v9);
  v29 = 0;
  v16 = v24;
  sub_1B77FF2C8();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B630);
  v18 = v25;
  v25[3] = v17;
  v18[4] = sub_1B76C5B14();
  __swift_allocate_boxed_opaque_existential_1(v18);
  sub_1B728216C(&qword_1EB99B650, &qword_1EB99B620);
  sub_1B728216C(&qword_1EB9914F8, &qword_1EB9913D0);
  v19 = v23;
  v20 = v26;
  sub_1B77FF0A8();
  (*(v27 + 8))(v16, v20);
  return (*(v13 + 8))(v15, v19);
}

uint64_t sub_1B76C4CBC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v12[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994E90);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994E68);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - v9;
  v12[1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994E78);
  sub_1B77FF2C8();
  sub_1B728216C(&qword_1EB994EA0, &qword_1EB994E90);
  sub_1B77FF2D8();
  sub_1B728216C(&qword_1EB994EA8, &qword_1EB994E68);
  sub_1B728216C(&qword_1EB994EB0, &qword_1EB994E78);
  sub_1B744BC20();
  sub_1B77FF028();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1B76C4F6C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F1F8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B5F0);
  v9 = *(v8 - 8);
  v19 = v8;
  v20 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994DB0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v18 - v14;
  v21 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994DB8);
  sub_1B77FF2C8();
  sub_1B728216C(&qword_1EB99B5C0, &qword_1EB98F1F8);
  sub_1B77FF2D8();
  swift_getKeyPath();
  sub_1B77FF008();

  (*(v5 + 8))(v7, v4);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B5F8);
  a2[4] = sub_1B76C5A68();
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_1B728216C(&qword_1EB994DF0, &qword_1EB994DB0);
  sub_1B728216C(&qword_1EB99B610, &qword_1EB99B5F0);
  sub_1B728216C(&qword_1EB994E00, &qword_1EB994DB8);
  sub_1B744B848();
  v16 = v19;
  sub_1B77FF028();
  (*(v20 + 8))(v11, v16);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1B76C5354(uint64_t a1)
{
  if (*(a1 + 16))
  {
    MEMORY[0x1EEE9AC00](a1);
  }

  type metadata accessor for Transaction();
  return sub_1B77FFD38();
}

uint64_t sub_1B76C540C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F1F8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B5B8);
  v9 = *(v8 - 8);
  v19 = v8;
  v20 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994D38);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v18 - v14;
  v21 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994D40);
  sub_1B77FF2C8();
  sub_1B728216C(&qword_1EB99B5C0, &qword_1EB98F1F8);
  sub_1B77FF2D8();
  swift_getKeyPath();
  sub_1B77FF008();

  (*(v5 + 8))(v7, v4);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B5C8);
  a2[4] = sub_1B76C592C();
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_1B728216C(&qword_1EB994D88, &qword_1EB994D38);
  sub_1B728216C(&qword_1EB99B5E8, &qword_1EB99B5B8);
  sub_1B728216C(&qword_1EB994D98, &qword_1EB994D40);
  sub_1B744B514();
  v16 = v19;
  sub_1B77FF028();
  (*(v20 + 8))(v11, v16);
  return (*(v13 + 8))(v15, v12);
}

uint64_t PrivateTransactionQuery.init(sortDescriptors:predicate:limit:offset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4 & 1;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6 & 1;
  return result;
}

void sub_1B76C5810()
{
  sub_1B729D930(319, &qword_1EB99B5A8, &qword_1EB9930D0, &unk_1B7820520, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B729D930(319, &qword_1EB99B5B0, &qword_1EB98F200, &unk_1B7808F30, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B729D994();
      if (v2 <= 0x3F)
      {
        sub_1B729D9E4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1B76C592C()
{
  result = qword_1EB99B5D0;
  if (!qword_1EB99B5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99B5C8);
    sub_1B744B240();
    sub_1B76C59D0(&qword_1EB99B5D8, &qword_1EB99B5B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B5D0);
  }

  return result;
}

uint64_t sub_1B76C59D0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    sub_1B728216C(&qword_1EB99B5E0, &qword_1EB98F1F8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B76C5A68()
{
  result = qword_1EB99B600;
  if (!qword_1EB99B600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99B5F8);
    sub_1B744B60C();
    sub_1B76C59D0(&qword_1EB99B608, &qword_1EB99B5F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B600);
  }

  return result;
}

unint64_t sub_1B76C5B14()
{
  result = qword_1EB99B638;
  if (!qword_1EB99B638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99B630);
    sub_1B76C5BA0();
    sub_1B72D7CDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B638);
  }

  return result;
}

unint64_t sub_1B76C5BA0()
{
  result = qword_1EB99B640;
  if (!qword_1EB99B640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB99B620);
    sub_1B76C59D0(&qword_1EB99B648, &qword_1EB99B618);
    sub_1B744B9D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B640);
  }

  return result;
}

uint64_t sub_1B76C5C48(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1B76C5D40;

  return v6(a1);
}

uint64_t sub_1B76C5D40()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (!v0)
  {
    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B76C5E74, 0, 0);
}

uint64_t sub_1B76C5E74()
{
  v21 = v0;
  v1 = *(v0 + 32);
  *(v0 + 16) = v1;
  v2 = (v0 + 16);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
  if (swift_dynamicCast())
  {

    v4 = *(v0 + 40);
    sub_1B7201CA4();
    swift_allocError();
    *v5 = v4;
    swift_willThrow();
    v6 = *v2;
  }

  else
  {

    v7 = sub_1B77FF308();
    v8 = [v7 domain];
    v9 = sub_1B7800868();
    v11 = v10;

    if (v9 == 0xD000000000000014 && 0x80000001B7876080 == v11)
    {
    }

    else
    {
      v13 = sub_1B78020F8();

      if ((v13 & 1) == 0)
      {
        swift_willThrow();

        goto LABEL_14;
      }
    }

    v14 = v7;
    sub_1B76C6070(v14, v20);
    v15 = v20[0];
    v16 = *(v0 + 32);
    if (v20[0] == 8)
    {
      swift_willThrow();

      goto LABEL_14;
    }

    sub_1B7201CA4();
    swift_allocError();
    *v17 = v15;
    swift_willThrow();

    v6 = v16;
  }

LABEL_14:
  v18 = *(v0 + 8);

  return v18();
}

void sub_1B76C6070(void *a1@<X0>, char *a2@<X8>)
{
  v4 = [a1 domain];
  v5 = sub_1B7800868();
  v7 = v6;

  if (v5 == 0xD000000000000014 && 0x80000001B7876080 == v7)
  {
  }

  else
  {
    v9 = sub_1B78020F8();

    if ((v9 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v10 = [a1 code];
  if (v10 == 2)
  {
    v12 = [a1 userInfo];
    v13 = sub_1B7800728();

    if (!*(v13 + 16) || (v14 = sub_1B724548C(0x7954617461444B46, 0xEA00000000006570), (v15 & 1) == 0))
    {

      goto LABEL_27;
    }

    sub_1B719BDE4(*(v13 + 56) + 32 * v14, v20);

    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_6:

LABEL_27:
      v11 = 8;
      goto LABEL_28;
    }

    if ((v18 != 0x73726564726FLL || v19 != 0xE600000000000000) && (sub_1B78020F8() & 1) == 0)
    {
      if (v18 == 0x6169636E616E6966 && v19 == 0xED0000617461446CLL)
      {

        v11 = 2;
        goto LABEL_28;
      }

      v17 = sub_1B78020F8();

      if (v17)
      {
        v11 = 2;
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    v11 = 0;
  }

  else if (v10 == 1)
  {

    v11 = 5;
  }

  else if (v10)
  {
    v16 = v10;

    if (v16 == 4)
    {
      v11 = 7;
    }

    else
    {
      v11 = 8;
    }

    if (v16 == 3)
    {
      v11 = 3;
    }
  }

  else
  {

    v11 = 4;
  }

LABEL_28:
  *a2 = v11;
}

uint64_t FinanceError.errorCode.getter()
{
  if (*v0 - 3 > 4)
  {
    return 2;
  }

  else
  {
    return qword_1B785B7F8[(*v0 - 3)];
  }
}

unint64_t FinanceError.errorUserInfo.getter()
{
  if (*v0 <= 3u)
  {
    if (*v0 <= 1u)
    {
      if (*v0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F110);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1B7807CD0;
        *(inited + 32) = 0x7954617461444B46;
        v2 = inited + 32;
        *(inited + 72) = MEMORY[0x1E69E6158];
        *(inited + 40) = 0xEA00000000006570;
        *(inited + 48) = 0x646572436B6E6162;
        v3 = 0xEF736C6169746E65;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F110);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1B7807CD0;
        *(inited + 32) = 0x7954617461444B46;
        v2 = inited + 32;
        *(inited + 72) = MEMORY[0x1E69E6158];
        *(inited + 40) = 0xEA00000000006570;
        *(inited + 48) = 0x73726564726FLL;
        v3 = 0xE600000000000000;
      }

      goto LABEL_12;
    }

    if (*v0 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F110);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B7807CD0;
      *(inited + 32) = 0x7954617461444B46;
      v2 = inited + 32;
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 40) = 0xEA00000000006570;
      *(inited + 48) = 0x6169636E616E6966;
      v3 = 0xED0000617461446CLL;
LABEL_12:
      *(inited + 56) = v3;
      v6 = sub_1B72018E0(inited);
      swift_setDeallocating();
      sub_1B72DD59C(v2);
      return v6;
    }
  }

  v4 = MEMORY[0x1E69E7CC0];

  return sub_1B72018E0(v4);
}

unint64_t FinanceError.errorDescription.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000023;
    if (v1 == 6)
    {
      v5 = 0xD000000000000024;
    }

    v6 = 0xD000000000000013;
    if (v1 != 4)
    {
      v6 = 0;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0xD000000000000019;
    if (v1 == 2)
    {
      v2 = 0xD00000000000002BLL;
    }

    v3 = 0xD000000000000024;
    if (*v0)
    {
      v3 = 0xD00000000000002ELL;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t FinanceError.failureReason.getter()
{
  result = 0;
  v2 = *v0;
  if (v2 <= 4)
  {
    if (v2 != 3)
    {
      if (v2 == 4)
      {
        return 0xD000000000000017;
      }

      return 0xD00000000000003BLL;
    }
  }

  else if (v2 != 5)
  {
    if (v2 != 6)
    {
      if (v2 == 7)
      {
        return 0xD000000000000061;
      }

      return 0xD00000000000003BLL;
    }

    return 0xD000000000000024;
  }

  return result;
}

uint64_t sub_1B76C6710()
{
  v1 = *v0;
  v2 = 0x7473655261746164;
  v3 = 0x654474656C6C6177;
  v4 = 0x5264696C61766E69;
  if (v1 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E776F6E6B6E75;
  if (v1 != 1)
  {
    v5 = 0xD000000000000012;
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

uint64_t sub_1B76C67FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B76C875C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B76C6824(uint64_t a1)
{
  v2 = sub_1B76C7D94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76C6860(uint64_t a1)
{
  v2 = sub_1B76C7D94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76C689C(uint64_t a1)
{
  v2 = sub_1B76C7F8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76C68D8(uint64_t a1)
{
  v2 = sub_1B76C7F8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76C6914(uint64_t a1)
{
  v2 = sub_1B76C7EE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76C6950(uint64_t a1)
{
  v2 = sub_1B76C7EE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76C698C(uint64_t a1)
{
  v2 = sub_1B76C7DE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76C69C8(uint64_t a1)
{
  v2 = sub_1B76C7DE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76C6A04(uint64_t a1)
{
  v2 = sub_1B76C7E3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76C6A40(uint64_t a1)
{
  v2 = sub_1B76C7E3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76C6A7C(uint64_t a1)
{
  v2 = sub_1B76C7F38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76C6AB8(uint64_t a1)
{
  v2 = sub_1B76C7F38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76C6AF4(uint64_t a1)
{
  v2 = sub_1B76C7E90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B76C6B30(uint64_t a1)
{
  v2 = sub_1B76C7E90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B76C6B88()
{
  if (*v0 - 3 > 4)
  {
    return 2;
  }

  else
  {
    return qword_1B785B7F8[(*v0 - 3)];
  }
}

unint64_t sub_1B76C6BBC()
{
  result = 0;
  v2 = *v0;
  if (v2 <= 4)
  {
    if (v2 != 3)
    {
      if (v2 == 4)
      {
        return 0xD000000000000017;
      }

      return 0xD00000000000003BLL;
    }
  }

  else if (v2 != 5)
  {
    if (v2 != 6)
    {
      if (v2 == 7)
      {
        return 0xD000000000000061;
      }

      return 0xD00000000000003BLL;
    }

    return 0xD000000000000024;
  }

  return result;
}

uint64_t sub_1B76C6C78(uint64_t a1)
{
  v2 = sub_1B76C897C();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B76C6CB4(uint64_t a1)
{
  v2 = sub_1B76C897C();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t FinanceError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B658);
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B660);
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B668);
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v36 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B670);
  v46 = *(v9 - 8);
  v47 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B678);
  v45 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B680);
  v34 = *(v15 - 8);
  v35 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v33 = &v33 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B688);
  v48 = *(v17 - 8);
  v49 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - v18;
  v20 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B76C7D94();
  sub_1B78023F8();
  if (v20 > 4)
  {
    switch(v20)
    {
      case 5:
        v54 = 3;
        sub_1B76C7E90();
        v21 = v36;
        v22 = v49;
        sub_1B7801ED8();
        v24 = v37;
        v23 = v38;
        goto LABEL_11;
      case 6:
        v55 = 4;
        sub_1B76C7E3C();
        v21 = v39;
        v22 = v49;
        sub_1B7801ED8();
        v24 = v40;
        v23 = v41;
        goto LABEL_11;
      case 7:
        v56 = 5;
        sub_1B76C7DE8();
        v21 = v42;
        v22 = v49;
        sub_1B7801ED8();
        v24 = v43;
        v23 = v44;
LABEL_11:
        (*(v24 + 8))(v21, v23);
        return (*(v48 + 8))(v19, v22);
    }

LABEL_15:
    v51 = 0;
    sub_1B76C7F8C();
    v30 = v33;
    v31 = v49;
    sub_1B7801ED8();
    v50 = v20;
    sub_1B762EC10();
    v32 = v35;
    sub_1B7801FC8();
    (*(v34 + 8))(v30, v32);
    return (*(v48 + 8))(v19, v31);
  }

  v26 = v45;
  v25 = v46;
  v27 = v47;
  if (v20 == 3)
  {
    v52 = 1;
    sub_1B76C7F38();
    v22 = v49;
    sub_1B7801ED8();
    (*(v26 + 8))(v14, v12);
    return (*(v48 + 8))(v19, v22);
  }

  if (v20 != 4)
  {
    goto LABEL_15;
  }

  v53 = 2;
  sub_1B76C7EE4();
  v28 = v11;
  v22 = v49;
  sub_1B7801ED8();
  (*(v25 + 8))(v28, v27);
  return (*(v48 + 8))(v19, v22);
}

uint64_t FinanceError.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v61 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B6C8);
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v60 = &v43 - v3;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B6D0);
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v43 - v4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B6D8);
  v49 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v59 = &v43 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B6E0);
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B6E8);
  v47 = *(v8 - 8);
  v48 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B6F0);
  v46 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB99B6F8);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v43 - v16;
  v18 = a1[3];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1B76C7D94();
  v19 = v62;
  sub_1B78023C8();
  if (!v19)
  {
    v20 = v13;
    v44 = v11;
    v21 = v59;
    v22 = v60;
    v62 = v15;
    v23 = v61;
    v45 = v14;
    v24 = sub_1B7801E98();
    v25 = (2 * *(v24 + 16)) | 1;
    v64 = v24;
    v65 = v24 + 32;
    v66 = 0;
    v67 = v25;
    v26 = sub_1B721CE5C();
    if (v26 == 6 || v66 != v67 >> 1)
    {
      v28 = sub_1B7801B18();
      swift_allocError();
      v30 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050);
      *v30 = &type metadata for FinanceError;
      v31 = v45;
      sub_1B7801D68();
      sub_1B7801AE8();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v62 + 8))(v17, v31);
      swift_unknownObjectRelease();
    }

    else if (v26 > 2u)
    {
      v33 = v62;
      if (v26 == 3)
      {
        v68 = 3;
        sub_1B76C7E90();
        v39 = v21;
        v40 = v45;
        sub_1B7801D38();
        (*(v49 + 8))(v39, v52);
        (*(v33 + 8))(v17, v40);
        swift_unknownObjectRelease();
        *v23 = 5;
      }

      else
      {
        v34 = v45;
        if (v26 == 4)
        {
          v68 = 4;
          sub_1B76C7E3C();
          v35 = v58;
          sub_1B7801D38();
          (*(v53 + 8))(v35, v55);
          (*(v33 + 8))(v17, v34);
          swift_unknownObjectRelease();
          v36 = 6;
        }

        else
        {
          v68 = 5;
          sub_1B76C7DE8();
          sub_1B7801D38();
          (*(v54 + 8))(v22, v56);
          (*(v33 + 8))(v17, v34);
          swift_unknownObjectRelease();
          v36 = 7;
        }

        *v61 = v36;
      }
    }

    else if (v26)
    {
      if (v26 == 1)
      {
        v68 = 1;
        sub_1B76C7F38();
        v27 = v45;
        sub_1B7801D38();
        (*(v47 + 8))(v10, v48);
        (*(v62 + 8))(v17, v27);
        swift_unknownObjectRelease();
        *v23 = 3;
      }

      else
      {
        v68 = 2;
        sub_1B76C7EE4();
        v41 = v57;
        v42 = v45;
        sub_1B7801D38();
        (*(v50 + 8))(v41, v51);
        (*(v62 + 8))(v17, v42);
        swift_unknownObjectRelease();
        *v23 = 4;
      }
    }

    else
    {
      v68 = 0;
      sub_1B76C7F8C();
      v37 = v45;
      sub_1B7801D38();
      sub_1B762F0C0();
      v38 = v44;
      sub_1B7801E48();
      (*(v46 + 8))(v20, v38);
      (*(v62 + 8))(v17, v37);
      swift_unknownObjectRelease();
      *v23 = v68;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v63);
}

BOOL _s10FinanceKit0A5ErrorO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 <= 4)
  {
    if (v2 == 3)
    {
      return v3 == 3;
    }

    if (v2 == 4)
    {
      return v3 == 4;
    }
  }

  else
  {
    switch(v2)
    {
      case 5u:
        return v3 == 5;
      case 6u:
        return v3 == 6;
      case 7u:
        return v3 == 7;
    }
  }

  if ((v3 - 3) < 5)
  {
    return 0;
  }

  return v2 == v3;
}

unint64_t sub_1B76C7D94()
{
  result = qword_1EB99B690;
  if (!qword_1EB99B690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B690);
  }

  return result;
}

unint64_t sub_1B76C7DE8()
{
  result = qword_1EB99B698;
  if (!qword_1EB99B698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B698);
  }

  return result;
}

unint64_t sub_1B76C7E3C()
{
  result = qword_1EB99B6A0;
  if (!qword_1EB99B6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B6A0);
  }

  return result;
}

unint64_t sub_1B76C7E90()
{
  result = qword_1EB99B6A8;
  if (!qword_1EB99B6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B6A8);
  }

  return result;
}

unint64_t sub_1B76C7EE4()
{
  result = qword_1EB99B6B0;
  if (!qword_1EB99B6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B6B0);
  }

  return result;
}

unint64_t sub_1B76C7F38()
{
  result = qword_1EB99B6B8;
  if (!qword_1EB99B6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B6B8);
  }

  return result;
}

unint64_t sub_1B76C7F8C()
{
  result = qword_1EB99B6C0;
  if (!qword_1EB99B6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B6C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FinanceError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_20;
  }

  v2 = a2 + 7;
  if (a2 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 7;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 7;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 6)
  {
    return v8 - 5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FinanceError(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 7;
  if (a3 + 7 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF9)
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1B76C8138(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1B76C814C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

unint64_t sub_1B76C81E0()
{
  result = qword_1EB99B700;
  if (!qword_1EB99B700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B700);
  }

  return result;
}

unint64_t sub_1B76C8238()
{
  result = qword_1EB99B708;
  if (!qword_1EB99B708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B708);
  }

  return result;
}

unint64_t sub_1B76C8290()
{
  result = qword_1EB99B710;
  if (!qword_1EB99B710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B710);
  }

  return result;
}

unint64_t sub_1B76C82E8()
{
  result = qword_1EB99B718;
  if (!qword_1EB99B718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB99B718);
  }

  return result;
}