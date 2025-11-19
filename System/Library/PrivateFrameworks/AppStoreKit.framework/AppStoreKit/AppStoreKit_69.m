uint64_t sub_1E19B8574(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB47A0);
  result = sub_1E1AF6F9C();
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
    sub_1E134E724(*(a4 + 48) + 40 * (v13 | (v11 << 6)), v28);
    result = sub_1E1AF6F2C();
    v16 = -1 << *(v6 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v12 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v12 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v12 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v24 = *(v6 + 48) + 40 * v19;
    v25 = v28[0];
    v26 = v28[1];
    *(v24 + 32) = v29;
    *v24 = v25;
    *(v24 + 16) = v26;
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
LABEL_28:

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
      goto LABEL_28;
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

uint64_t sub_1E19B8798(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17[6] = *MEMORY[0x1E69E9840];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_1E19B8C78(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_1E19B9D8C(v14, v7, v17);
    v10 = v17[0];

    MEMORY[0x1E6901640](v14, -1, -1);
  }

  return v10;
}

uint64_t sub_1E19B8938(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17[6] = *MEMORY[0x1E69E9840];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_1E19B8E58(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_1E19B9D60(v14, v7, v17);
    v10 = v17[0];

    MEMORY[0x1E6901640](v14, -1, -1);
  }

  return v10;
}

uint64_t sub_1E19B8AD8(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17[6] = *MEMORY[0x1E69E9840];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_1E19B908C(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_1E19B9D34(v14, v7, v17);
    v10 = v17[0];

    MEMORY[0x1E6901640](v14, -1, -1);
  }

  return v10;
}

uint64_t sub_1E19B8C78(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v27 = a3 + 32;
  v8 = a4 + 56;
  v25 = result;
  v26 = v7;
  while (2)
  {
    v24 = v5;
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

          v10 = (v27 + 16 * v6);
          v12 = *v10;
          v11 = v10[1];
          sub_1E1AF762C();

          sub_1E1AF5F0C();
          v13 = sub_1E1AF767C();
          v14 = -1 << *(a4 + 32);
          v15 = v13 & ~v14;
          v16 = v15 >> 6;
          v17 = 1 << v15;
          if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) != 0)
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

        v18 = (*(a4 + 48) + 16 * v15);
        if (*v18 != v12 || v18[1] != v11)
        {
          v20 = ~v14;
          while ((sub_1E1AF74AC() & 1) == 0)
          {
            v15 = (v15 + 1) & v20;
            v16 = v15 >> 6;
            v17 = 1 << v15;
            if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) == 0)
            {
              v7 = v26;
              goto LABEL_5;
            }

            v21 = (*(a4 + 48) + 16 * v15);
            if (*v21 == v12 && v21[1] == v11)
            {
              break;
            }
          }
        }

        v22 = v25[v16];
        v25[v16] = v22 | v17;
        if ((v22 & v17) == 0)
        {
          break;
        }

        v7 = v26;
        v6 = v9;
        if (v9 == v26)
        {
          goto LABEL_24;
        }
      }

      v5 = v24 + 1;
      v7 = v26;
      v6 = v9;
      if (!__OFADD__(v24, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_24:

  return sub_1E19B8350(v25, a2, v24, a4);
}

uint64_t sub_1E19B8E58(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  v33 = a4;
  v27 = a4 + 56;

  v24 = 0;
  v10 = 0;
  while (v7)
  {
LABEL_12:
    sub_1E134E724(*(a3 + 48) + 40 * (__clz(__rbit64(v7)) | (v10 << 6)), v31);
    v29[0] = v31[0];
    v29[1] = v31[1];
    v30 = v32;
    v12 = v33;
    v13 = sub_1E1AF6F2C();
    v14 = -1 << *(v12 + 32);
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    v17 = 1 << v15;
    if (((1 << v15) & *(v27 + 8 * (v15 >> 6))) == 0)
    {
      goto LABEL_5;
    }

    sub_1E134E724(*(v33 + 48) + 40 * v15, v28);
    v18 = MEMORY[0x1E68FFC60](v28, v29);
    sub_1E134B88C(v28);
    if ((v18 & 1) == 0)
    {
      v19 = ~v14;
      while (1)
      {
        v15 = (v15 + 1) & v19;
        v16 = v15 >> 6;
        v17 = 1 << v15;
        if (((1 << v15) & *(v27 + 8 * (v15 >> 6))) == 0)
        {
          break;
        }

        sub_1E134E724(*(v33 + 48) + 40 * v15, v28);
        v20 = MEMORY[0x1E68FFC60](v28, v29);
        sub_1E134B88C(v28);
        if (v20)
        {
          goto LABEL_17;
        }
      }

LABEL_5:
      result = sub_1E134B88C(v29);
      goto LABEL_6;
    }

LABEL_17:
    result = sub_1E134B88C(v29);
    v21 = a1[v16];
    a1[v16] = v21 | v17;
    if ((v21 & v17) == 0)
    {
      if (__OFADD__(v24, 1))
      {
        goto LABEL_22;
      }

      ++v24;
    }

LABEL_6:
    v7 &= v7 - 1;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      v22 = v33;

      return sub_1E19B8574(a1, a2, v24, v22);
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1E19B908C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v36 = a4 + 56;

  v31 = 0;
  v32 = v5;
  v12 = 0;
  v34 = v10;
  v35 = v6;
  while (v9)
  {
LABEL_11:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = (*(v5 + 48) + ((v12 << 10) | (16 * v15)));
    v18 = *v16;
    v17 = v16[1];
    sub_1E1AF762C();

    sub_1E1AF5F0C();
    v19 = sub_1E1AF767C();
    v20 = -1 << *(v4 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    v23 = 1 << v21;
    if (((1 << v21) & *(v36 + 8 * (v21 >> 6))) != 0)
    {
      v24 = v4;
      v25 = (*(v4 + 48) + 16 * v21);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v20;
        while ((sub_1E1AF74AC() & 1) == 0)
        {
          v21 = (v21 + 1) & v27;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v36 + 8 * (v21 >> 6))) == 0)
          {
            v4 = v24;
            v5 = v32;
            goto LABEL_23;
          }

          v28 = (*(v24 + 48) + 16 * v21);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v13 = a1[v22];
      a1[v22] = v13 | v23;
      v4 = v24;
      v5 = v32;
      v10 = v34;
      v6 = v35;
      if ((v13 & v23) == 0 && __OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_27:

        return sub_1E19B812C(a1, a2, v31, v4);
      }
    }

    else
    {
LABEL_23:

      v10 = v34;
      v6 = v35;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      goto LABEL_27;
    }

    v9 = *(v6 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E19B92CC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_1E18943C0(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_1E19B933C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_1E189496C(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_1E19B93AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5BF0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v30 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB25F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E1B03760;
  v5 = OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bag;
  if (qword_1EE1D2240 != -1)
  {
    swift_once();
  }

  v30[1] = v5;
  sub_1E1AF52FC();
  sub_1E1AF532C();
  v7 = *(v1 + 8);
  v6 = v1 + 8;
  v31 = v7;
  v7(v3, v0);
  v8 = v34;
  v9._countAndFlagsBits = 0xD00000000000001BLL;
  v9._object = 0x80000001E1B82930;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v11 = localizedString(_:comment:)(v9, v10);
  v12._countAndFlagsBits = 0xD000000000000021;
  v12._object = 0x80000001E1B82950;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v14 = localizedString(_:comment:)(v12, v13);
  *(v4 + 32) = 0x6E69746152656741;
  *(v4 + 40) = 0xEA00000000007367;
  *(v4 + 48) = v11;
  *(v4 + 64) = v14;
  *(v4 + 80) = 0xD00000000000001DLL;
  *(v4 + 88) = 0x80000001E1B82910;
  *(v4 + 96) = 0;
  *(v4 + 97) = v8;
  if (qword_1EE1D21D8 != -1)
  {
    swift_once();
  }

  sub_1E1AF52FC();
  sub_1E1AF532C();
  v31(v3, v0);
  v30[0] = v6;
  v15 = v33;
  v16._countAndFlagsBits = 0xD000000000000024;
  v16._object = 0x80000001E1B829C0;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v18 = localizedString(_:comment:)(v16, v17);
  v19._countAndFlagsBits = 0xD00000000000002ALL;
  v19._object = 0x80000001E1B829F0;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v21 = localizedString(_:comment:)(v19, v20);
  *(v4 + 104) = 0xD000000000000013;
  *(v4 + 112) = 0x80000001E1B82980;
  *(v4 + 120) = v18;
  *(v4 + 136) = v21;
  *(v4 + 152) = 0xD00000000000001ELL;
  *(v4 + 160) = 0x80000001E1B829A0;
  *(v4 + 168) = 1;
  *(v4 + 169) = v15;
  if (qword_1EE1D21C8 != -1)
  {
    swift_once();
  }

  sub_1E1AF52FC();
  sub_1E1AF532C();
  v31(v3, v0);
  v22 = v32;
  v23._countAndFlagsBits = 0xD000000000000024;
  v23._object = 0x80000001E1B82A60;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v25 = localizedString(_:comment:)(v23, v24);
  v26._countAndFlagsBits = 0xD00000000000002ALL;
  v26._object = 0x80000001E1B82A90;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v28 = localizedString(_:comment:)(v26, v27);
  *(v4 + 176) = 0xD000000000000013;
  *(v4 + 184) = 0x80000001E1B82A20;
  *(v4 + 192) = v25;
  *(v4 + 208) = v28;
  *(v4 + 224) = 0xD00000000000001DLL;
  *(v4 + 232) = 0x80000001E1B82A40;
  *(v4 + 240) = 0;
  *(v4 + 241) = v22;
  return v4;
}

id sub_1E19B9804()
{
  if (*MEMORY[0x1E69D4D90])
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_1E1AF5DEC();
    }
  }

  v0 = [objc_opt_self() standardUserDefaults];

  return v0;
}

uint64_t sub_1E19B98FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5BF0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12[-v2 - 8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB56A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E1B02CC0;
  *(v4 + 32) = 0xD00000000000001DLL;
  *(v4 + 40) = 0x80000001E1B82890;
  if (qword_1EE1E30F0 != -1)
  {
    swift_once();
  }

  sub_1E1AF52FC();
  sub_1E1AF532C();
  v5 = *(v1 + 8);
  v5(v3, v0);
  if (v12[0] == 1)
  {
    v4 = sub_1E130C06C(1, 2, 1, v4);
    *(v4 + 16) = 2;
    *(v4 + 48) = 0xD000000000000020;
    *(v4 + 56) = 0x80000001E1B828E0;
  }

  v13 = &type metadata for Feature;
  v14 = sub_1E1309EB0();
  v12[0] = 6;
  v6 = sub_1E1AF056C();
  __swift_destroy_boxed_opaque_existential_1(v12);
  if (v6)
  {
    if (qword_1ECEB14E0 != -1)
    {
      swift_once();
    }

    sub_1E1AF52FC();
    sub_1E1AF532C();
    v5(v3, v0);
    if (v12[0] == 1)
    {
      v8 = *(v4 + 16);
      v7 = *(v4 + 24);
      if (v8 >= v7 >> 1)
      {
        v4 = sub_1E130C06C((v7 > 1), v8 + 1, 1, v4);
      }

      *(v4 + 16) = v8 + 1;
      v9 = v4 + 16 * v8;
      *(v9 + 32) = 0xD000000000000029;
      *(v9 + 40) = 0x80000001E1B828B0;
    }
  }

  return v4;
}

unint64_t sub_1E19B9C50(uint64_t a1)
{
  result = sub_1E19B9C78();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E19B9C78()
{
  result = qword_1EE1DA698;
  if (!qword_1EE1DA698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DA698);
  }

  return result;
}

unint64_t sub_1E19B9CD0()
{
  result = qword_1EE1DA690;
  if (!qword_1EE1DA690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DA690);
  }

  return result;
}

uint64_t sub_1E19B9DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, void, void)@<X2>, uint64_t *a4@<X8>)
{
  result = a3(a1, a2, **(v4 + 16), *(v4 + 24));
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

uint64_t SearchLandingPage.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v36 = a2;
  v35 = sub_1E1AF39DC();
  v39 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v37 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v32 = v30 - v7;
  v8 = sub_1E1AF380C();
  v31 = *(v8 - 8);
  v9 = v31;
  MEMORY[0x1EEE9AC00](v8);
  v33 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v30 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v30 - v15;
  sub_1E1AF381C();
  v17 = sub_1E1AF36EC();
  v19 = v18;
  v20 = *(v9 + 8);
  v38 = v8;
  v20(v16, v8);
  v21 = v3 + OBJC_IVAR____TtC11AppStoreKit17SearchLandingPage_maxShelfRowCount;
  *v21 = v17;
  *(v21 + 8) = v19 & 1;
  sub_1E1AF381C();
  LOBYTE(v17) = sub_1E1AF370C();
  v34 = v20;
  v30[1] = v9 + 8;
  v20(v13, v8);
  *(v3 + OBJC_IVAR____TtC11AppStoreKit17SearchLandingPage_prefersSmallShelfTitles) = v17 & 1;
  v22 = v3;
  type metadata accessor for SearchFocusPage();
  sub_1E1AF381C();
  v23 = *(v39 + 16);
  v25 = v35;
  v24 = v36;
  v23(v32, v36, v35);
  sub_1E19BA1FC();
  sub_1E1AF464C();
  *(v22 + OBJC_IVAR____TtC11AppStoreKit17SearchLandingPage_searchFocusPage) = v40;
  v26 = v33;
  (*(v31 + 16))(v33, a1, v38);
  v27 = v37;
  v23(v37, v24, v25);
  v28 = GenericPage.init(deserializing:using:)(v26, v27);
  (*(v39 + 8))(v24, v25);
  v34(a1, v38);
  return v28;
}

unint64_t sub_1E19BA1FC()
{
  result = qword_1EE1DF820;
  if (!qword_1EE1DF820)
  {
    type metadata accessor for SearchFocusPage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DF820);
  }

  return result;
}

uint64_t SearchLandingPage.__allocating_init(shelves:title:shareAction:presentationOptions:nextPage:isIncomplete:uber:loadCompletedAction:pageRefreshPolicy:pageMetrics:pageRenderEvent:context:)(unint64_t a1, unsigned int (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, char *a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v81 = a8;
  LODWORD(v75) = a7;
  v73 = a5;
  v79 = a4;
  v68 = a3;
  v67 = a2;
  v66 = a1;
  v76 = a12;
  v80 = a10;
  v70 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v64 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v78 = &v63 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v77 = &v63 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v63 - v21;
  v23 = sub_1E1AF3C3C();
  v65 = v23;
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v63 - v28;
  v30 = swift_allocObject();
  v31 = v30 + OBJC_IVAR____TtC11AppStoreKit17SearchLandingPage_maxShelfRowCount;
  *v31 = 0;
  *(v31 + 8) = 1;
  *(v30 + OBJC_IVAR____TtC11AppStoreKit17SearchLandingPage_prefersSmallShelfTitles) = 0;
  *(v30 + OBJC_IVAR____TtC11AppStoreKit17SearchLandingPage_searchFocusPage) = 0;
  v74 = a6;
  sub_1E134FD1C(a6, v83, &qword_1ECEB2DF0);
  v69 = v24;
  v32 = *(v24 + 16);
  v72 = a11;
  v32(v29, a11, v23);
  v71 = a13;
  sub_1E134FD1C(a13, v22, &qword_1ECEB3B28);
  v33 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber;
  *(v30 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber) = 0;
  v34 = sub_1E175EC2C(v66);
  v36 = v35;

  *(v30 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfOrdering) = v34;
  *(v30 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping) = v36;
  v37 = (v30 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
  v38 = v68;
  *v37 = v67;
  v37[1] = v38;
  *(v30 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shareAction) = v79;
  *(v30 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_presentationOptions) = v73;
  v39 = v65;
  sub_1E134FD1C(v83, v30 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, &qword_1ECEB2DF0);
  *(v30 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_isIncomplete) = v75;
  swift_beginAccess();
  *(v30 + v33) = v81;
  v40 = v76;
  *(v30 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_loadCompletedAction) = 0;
  v75 = v29;
  v32(v26, v29, v39);
  v41 = v77;
  sub_1E134FD1C(v22, v77, &qword_1ECEB3B28);
  *(v30 + 16) = v80;
  v73 = v26;
  v32((v30 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics), v26, v39);
  *(v30 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v40;
  v42 = v78;
  sub_1E134FD1C(v41, v78, &qword_1ECEB3B28);
  v43 = sub_1E1AF39DC();
  v44 = *(v43 - 8);
  v45 = *(v44 + 48);
  if (v45(v42, 1, v43) == 1)
  {

    sub_1E1308058(v71, &qword_1ECEB3B28);
    v46 = *(v69 + 8);
    v46(v72, v39);
    sub_1E1308058(v74, &qword_1ECEB2DF0);
    sub_1E1308058(v41, &qword_1ECEB3B28);
    v46(v73, v39);
    sub_1E1308058(v22, &qword_1ECEB3B28);
    v46(v75, v39);
    sub_1E1308058(v83, &qword_1ECEB2DF0);
    v47 = v42;
    v48 = &qword_1ECEB3B28;
  }

  else
  {
    v67 = v45;
    v68 = v22;
    v49 = v69;
    v50 = qword_1EE1E3BC8;

    if (v50 != -1)
    {
      swift_once();
    }

    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
    __swift_project_value_buffer(v51, qword_1EE1E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
    sub_1E1AF39EC();
    v52 = v82;
    v53 = v49;
    if (v82)
    {
    }

    v54 = *(v44 + 8);
    v55 = v78;
    v78 = v44 + 8;
    v54(v55, v43);
    v56 = v77;
    v57 = v71;
    if (v52)
    {
      v58 = v64;
      sub_1E134FD1C(v77, v64, &qword_1ECEB3B28);
      if (v67(v58, 1, v43) != 1)
      {
        sub_1E15F0974();

        sub_1E1308058(v57, &qword_1ECEB3B28);
        v62 = *(v53 + 8);
        v62(v72, v39);
        sub_1E1308058(v74, &qword_1ECEB2DF0);
        sub_1E1308058(v56, &qword_1ECEB3B28);
        v62(v73, v39);
        sub_1E1308058(v68, &qword_1ECEB3B28);
        v62(v75, v39);
        sub_1E1308058(v83, &qword_1ECEB2DF0);
        v54(v64, v43);
        return v30;
      }

      sub_1E1308058(v57, &qword_1ECEB3B28);
      v59 = *(v53 + 8);
      v59(v72, v39);
      sub_1E1308058(v74, &qword_1ECEB2DF0);
      sub_1E1308058(v56, &qword_1ECEB3B28);
      v59(v73, v39);
      sub_1E1308058(v68, &qword_1ECEB3B28);
      v59(v75, v39);
      sub_1E1308058(v83, &qword_1ECEB2DF0);
      v47 = v58;
      v48 = &qword_1ECEB3B28;
    }

    else
    {

      sub_1E1308058(v57, &qword_1ECEB3B28);
      v60 = *(v53 + 8);
      v60(v72, v39);
      sub_1E1308058(v74, &qword_1ECEB2DF0);
      sub_1E1308058(v56, &qword_1ECEB3B28);
      v60(v73, v39);
      sub_1E1308058(v68, &qword_1ECEB3B28);
      v60(v75, v39);
      v47 = v83;
      v48 = &qword_1ECEB2DF0;
    }
  }

  sub_1E1308058(v47, v48);
  return v30;
}

uint64_t SearchLandingPage.init(shelves:title:shareAction:presentationOptions:nextPage:isIncomplete:uber:loadCompletedAction:pageRefreshPolicy:pageMetrics:pageRenderEvent:context:)(unint64_t a1, uint64_t a2, char *a3, uint64_t a4, char *a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v79 = a4;
  v80 = a8;
  LODWORD(v78) = a7;
  v77 = a5;
  v75 = a3;
  v70 = a2;
  v69 = a1;
  v81 = a12;
  v84 = a10;
  v72 = a9;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v67 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v83 = &v66 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v82 = &v66 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v66 - v22;
  v24 = sub_1E1AF3C3C();
  v68 = v24;
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v66 - v29;
  v31 = v13 + OBJC_IVAR____TtC11AppStoreKit17SearchLandingPage_maxShelfRowCount;
  *v31 = 0;
  *(v31 + 8) = 1;
  *(v13 + OBJC_IVAR____TtC11AppStoreKit17SearchLandingPage_prefersSmallShelfTitles) = 0;
  *(v13 + OBJC_IVAR____TtC11AppStoreKit17SearchLandingPage_searchFocusPage) = 0;
  v76 = a6;
  sub_1E134FD1C(a6, v86, &qword_1ECEB2DF0);
  v71 = v25;
  v32 = *(v25 + 16);
  v74 = a11;
  v32(v30, a11, v24);
  v73 = a13;
  sub_1E134FD1C(a13, v23, &qword_1ECEB3B28);
  v33 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber;
  *(v13 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_uber) = 0;
  v34 = sub_1E175EC2C(v69);
  v36 = v35;

  *(v13 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfOrdering) = v34;
  *(v13 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping) = v36;
  v37 = (v13 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
  v38 = v75;
  *v37 = v70;
  v37[1] = v38;
  *(v13 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_shareAction) = v79;
  *(v13 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_presentationOptions) = v77;
  sub_1E134FD1C(v86, v13 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, &qword_1ECEB2DF0);
  *(v13 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_isIncomplete) = v78;
  swift_beginAccess();
  *(v13 + v33) = v80;

  *(v13 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_loadCompletedAction) = 0;
  v77 = v30;
  v39 = v68;
  v32(v27, v30, v68);
  v78 = v23;
  v40 = v23;
  v41 = v82;
  sub_1E134FD1C(v40, v82, &qword_1ECEB3B28);
  *(v13 + 16) = v84;
  v42 = (v13 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics);
  v75 = v27;
  v43 = v27;
  v44 = v13;
  v45 = v39;
  v32(v42, v43, v39);
  *(v44 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v81;
  v46 = v83;
  sub_1E134FD1C(v41, v83, &qword_1ECEB3B28);
  v47 = sub_1E1AF39DC();
  v70 = *(v47 - 8);
  v48 = *(v70 + 48);
  v49 = v47;
  if ((v48)(v46, 1) == 1)
  {

    sub_1E1308058(v73, &qword_1ECEB3B28);
    v50 = *(v71 + 8);
    v50(v74, v45);
    sub_1E1308058(v76, &qword_1ECEB2DF0);
    sub_1E1308058(v41, &qword_1ECEB3B28);
    v50(v75, v45);
    sub_1E1308058(v78, &qword_1ECEB3B28);
    v50(v77, v45);
    sub_1E1308058(v86, &qword_1ECEB2DF0);
    v51 = v46;
    v52 = &qword_1ECEB3B28;
  }

  else
  {
    v53 = v71;
    v54 = v45;
    v55 = qword_1EE1E3BC8;

    if (v55 != -1)
    {
      swift_once();
    }

    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
    __swift_project_value_buffer(v56, qword_1EE1E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
    sub_1E1AF39EC();
    v57 = v85;
    v58 = v53;
    if (v85)
    {
    }

    v59 = *(v70 + 8);
    v59(v83, v49);
    v60 = v82;
    if (v57)
    {
      v61 = v67;
      sub_1E134FD1C(v82, v67, &qword_1ECEB3B28);
      if (v48(v61, 1, v49) != 1)
      {
        sub_1E15F0974();

        sub_1E1308058(v73, &qword_1ECEB3B28);
        v65 = *(v58 + 8);
        v65(v74, v54);
        sub_1E1308058(v76, &qword_1ECEB2DF0);
        sub_1E1308058(v60, &qword_1ECEB3B28);
        v65(v75, v54);
        sub_1E1308058(v78, &qword_1ECEB3B28);
        v65(v77, v54);
        sub_1E1308058(v86, &qword_1ECEB2DF0);
        v59(v67, v49);
        return v44;
      }

      sub_1E1308058(v73, &qword_1ECEB3B28);
      v62 = *(v58 + 8);
      v62(v74, v54);
      sub_1E1308058(v76, &qword_1ECEB2DF0);
      sub_1E1308058(v60, &qword_1ECEB3B28);
      v62(v75, v54);
      sub_1E1308058(v78, &qword_1ECEB3B28);
      v62(v77, v54);
      sub_1E1308058(v86, &qword_1ECEB2DF0);
      v51 = v61;
      v52 = &qword_1ECEB3B28;
    }

    else
    {

      sub_1E1308058(v73, &qword_1ECEB3B28);
      v63 = *(v58 + 8);
      v63(v74, v54);
      sub_1E1308058(v76, &qword_1ECEB2DF0);
      sub_1E1308058(v60, &qword_1ECEB3B28);
      v63(v75, v54);
      sub_1E1308058(v78, &qword_1ECEB3B28);
      v63(v77, v54);
      v51 = v86;
      v52 = &qword_1ECEB2DF0;
    }
  }

  sub_1E1308058(v51, v52);
  return v44;
}

uint64_t SearchLandingPage.deinit()
{
  v0 = GenericPage.deinit();

  return v0;
}

uint64_t SearchLandingPage.__deallocating_deinit()
{
  GenericPage.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SearchLandingPage()
{
  result = qword_1EE1DE738;
  if (!qword_1EE1DE738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 ProductTextBadgeStackLayout.init(metrics:badges:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  *(a3 + 24) = a1[1];
  v4 = a1[3];
  *(a3 + 40) = a1[2];
  *(a3 + 56) = v4;
  result = a1[4];
  *(a3 + 72) = result;
  *(a3 + 8) = v3;
  *a3 = a2;
  return result;
}

uint64_t ProductTextBadgeStackLayout.Metrics.init(interItemSpace:bottomSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1E1308EC0(a1, a3);

  return sub_1E1308EC0(a2, a3 + 40);
}

uint64_t ProductTextBadgeStackLayout.Metrics.interItemSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1E1308EC0(a1, v1);
}

uint64_t ProductTextBadgeStackLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 40);

  return sub_1E1308EC0(a1, v1 + 40);
}

double ProductTextBadgeStackLayout.measurements(fitting:in:)(uint64_t a1)
{
  v49 = a1;
  v48 = sub_1E1AF162C();
  v46 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v44 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E1AF165C();
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v43 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1E1AF1A1C();
  MEMORY[0x1EEE9AC00](v55);
  v50 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v42 - v6;
  v7 = 0;
  v42 = v1;
  v8 = *v1;
  v51 = v1 + 1;
  v9 = *(v8 + 16);
  v58 = v8;
  v52 = v8 + 32;
  v53 = (v10 + 16);
  v54 = (v10 + 8);
  v61 = MEMORY[0x1E69E7CC0];
  v57 = v9;
  while (1)
  {
    if (v7 == v9)
    {
      v11 = 0;
      v12 = 0;
      v13 = 0uLL;
      v14 = v9;
      v15 = 0uLL;
    }

    else
    {
      if (v7 >= *(v58 + 16))
      {
        __break(1u);
LABEL_22:
        v7 = sub_1E172D4BC(0, *(v7 + 16) + 1, 1, v7);
        goto LABEL_17;
      }

      v14 = v7 + 1;
      *&v62 = v7;
      sub_1E1300B24(v52 + 40 * v7, &v62 + 8);
      v13 = v62;
      v15 = v63;
      v12 = v64;
      v11 = v65;
    }

    v66 = v13;
    v67 = v15;
    v68 = v12;
    v69 = v11;
    v7 = v61;
    if (!v12)
    {
      break;
    }

    v60 = v13;
    v16 = __swift_project_boxed_opaque_existential_1Tm(&v66 + 1, v12);
    v59 = &v42;
    v17 = *(v12 - 8);
    v18 = *(v17 + 64);
    v19 = MEMORY[0x1EEE9AC00](v16);
    v20 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = *(v17 + 16);
    v21(v20, v19);
    __swift_destroy_boxed_opaque_existential_1(&v66 + 8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_1E172D4BC(0, *(v7 + 16) + 1, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v70 = isUniquelyReferenced_nonNull_native;
    }

    v24 = *(v7 + 16);
    v23 = *(v7 + 24);
    v61 = v7;
    v7 = v14;
    if (v24 >= v23 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_1E172D4BC((v23 > 1), v24 + 1, 1, v61);
      v61 = isUniquelyReferenced_nonNull_native;
      v70 = isUniquelyReferenced_nonNull_native;
    }

    v25 = MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
    v26 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (v21)(v26, v20, v12, v25);
    sub_1E16B64D0(v24, v26, &v70, v12, *(v11 + 8));
    (*(v17 + 8))(v20, v12);
    v9 = v57;
    if (v60 < *(v58 + 16) - 1)
    {
      sub_1E1300B24(v51, &v62);
      sub_1E1AF1A2C();
      v28 = v61[2];
      v27 = v61[3];
      if (v28 >= v27 >> 1)
      {
        v61 = sub_1E172D4BC((v27 > 1), v28 + 1, 1, v61);
      }

      v29 = v55;
      *(&v63 + 1) = v55;
      v64 = MEMORY[0x1E69ABA90];
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v62);
      v31 = v56;
      (*v53)(boxed_opaque_existential_0, v56, v29);
      v32 = v61;
      v61[2] = v28 + 1;
      sub_1E1308EC0(&v62, &v32[5 * v28 + 4]);
      (*v54)(v31, v29);
    }
  }

  if (!*(v58 + 16))
  {
    goto LABEL_20;
  }

  sub_1E1300B24((v42 + 6), &v66);
  sub_1E1AF1A2C();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_17:
  v34 = *(v7 + 16);
  v33 = *(v7 + 24);
  if (v34 >= v33 >> 1)
  {
    v7 = sub_1E172D4BC((v33 > 1), v34 + 1, 1, v7);
  }

  v35 = v55;
  *(&v67 + 1) = v55;
  v68 = MEMORY[0x1E69ABA90];
  v36 = __swift_allocate_boxed_opaque_existential_0(&v66);
  v37 = v50;
  (*v53)(v36, v50, v35);
  *(v7 + 16) = v34 + 1;
  sub_1E1308EC0(&v66, v7 + 40 * v34 + 32);
  (*v54)(v37, v35);
LABEL_20:
  (*(v46 + 104))(v44, *MEMORY[0x1E69AB970], v48);
  v38 = v43;
  sub_1E1AF163C();
  sub_1E1AF161C();
  v40 = v39;
  (*(v45 + 8))(v38, v47);
  return v40;
}

uint64_t ProductTextBadgeStackLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_1E1300B24((v5 + 1), v52);
  result = sub_1E1300B24((v5 + 6), v51);
  v11 = 0;
  v12 = *v5;
  v13 = *v5 + 32;
  v14 = MEMORY[0x1E69E7CC0];
  v15 = *(*v5 + 16);
  while (1)
  {
    v16 = 0uLL;
    v17 = v15;
    v18 = 0uLL;
    v19 = 0uLL;
    if (v11 == v15)
    {
      goto LABEL_5;
    }

    if (v11 >= *(v12 + 16))
    {
      break;
    }

    v17 = v11 + 1;
    *&v44[0] = v11;
    sub_1E1300B24(v13 + 40 * v11, v44 + 8);
    v16 = v44[0];
    v18 = v44[1];
    v19 = v45;
LABEL_5:
    v50[0] = v16;
    v50[1] = v18;
    v50[2] = v19;
    if (!v19)
    {
      LOBYTE(v44[0]) = 0;
      *(&v44[0] + 1) = v14;
      _VerticalFlowLayout.placeChildren(relativeTo:in:)(a1, a2, a3, a4, a5);

      v53.origin.x = a2;
      v53.origin.y = a3;
      v53.size.width = a4;
      v53.size.height = a5;
      Width = CGRectGetWidth(v53);
      v31 = sub_1E1AF108C();
      *v32 = Width;
      v31(v44, 0);
      __swift_destroy_boxed_opaque_existential_1(v51);
      return __swift_destroy_boxed_opaque_existential_1(v52);
    }

    v34 = v16;
    sub_1E1308EC0((v50 + 8), v49);
    if (v34 >= *(v12 + 16) - 1)
    {
      v20 = v51;
    }

    else
    {
      v20 = v52;
    }

    sub_1E1300B24(v20, v48);
    *(&v36 + 1) = sub_1E1AF140C();
    *&v37 = MEMORY[0x1E69AB908];
    __swift_allocate_boxed_opaque_existential_0(&v35);
    sub_1E1AF13FC();
    sub_1E1300B24(v48, v47);
    sub_1E1300B24(v49, v44);
    sub_1E1300B24(&v35, &v46);
    WORD4(v45) = 1;
    v47[5] = 8;
    __swift_destroy_boxed_opaque_existential_1(&v35);
    sub_1E149BCE4(v44, &v35);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1E172D4E0(0, *(v14 + 2) + 1, 1, v14);
    }

    v22 = *(v14 + 2);
    v21 = *(v14 + 3);
    if (v22 >= v21 >> 1)
    {
      v14 = sub_1E172D4E0((v21 > 1), v22 + 1, 1, v14);
    }

    sub_1E149BD40(v44);
    __swift_destroy_boxed_opaque_existential_1(v48);
    result = __swift_destroy_boxed_opaque_existential_1(v49);
    *(v14 + 2) = v22 + 1;
    v23 = &v14[136 * v22];
    *(v23 + 2) = v35;
    v24 = v36;
    v25 = v37;
    v26 = v39;
    *(v23 + 5) = v38;
    *(v23 + 6) = v26;
    *(v23 + 3) = v24;
    *(v23 + 4) = v25;
    v27 = v40;
    v28 = v41;
    v29 = v42;
    *(v23 + 20) = v43;
    *(v23 + 8) = v28;
    *(v23 + 9) = v29;
    *(v23 + 7) = v27;
    v11 = v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E19BC2E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1E19BC330(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

id sub_1E19BC3B4(uint64_t a1)
{
  v2 = v1[10];
  v21[8] = v1[9];
  v21[9] = v2;
  v21[10] = v1[11];
  v3 = v1[6];
  v21[4] = v1[5];
  v21[5] = v3;
  v4 = v1[8];
  v21[6] = v1[7];
  v21[7] = v4;
  v5 = v1[2];
  v21[0] = v1[1];
  v21[1] = v5;
  v6 = v1[4];
  v21[2] = v1[3];
  v21[3] = v6;
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v8 = result;
    v17 = v1[9];
    v18 = v1[10];
    v19 = v1[11];
    v13 = v1[5];
    v14 = v1[6];
    v15 = v1[7];
    v16 = v1[8];
    v9 = v1[1];
    v10 = v1[2];
    v11 = v1[3];
    v12 = v1[4];
    sub_1E17A0BA8(v21, v20);
    sub_1E19BC564();
    sub_1E1AF4FFC();
    v20[8] = v17;
    v20[9] = v18;
    v20[10] = v19;
    v20[4] = v13;
    v20[5] = v14;
    v20[6] = v15;
    v20[7] = v16;
    v20[0] = v9;
    v20[1] = v10;
    v20[2] = v11;
    v20[3] = v12;
    sub_1E19BC5B8(v20);
    sub_1E1AF6C5C();
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1E19BC50C()
{
  result = qword_1ECEBBD88;
  if (!qword_1ECEBBD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBBD88);
  }

  return result;
}

unint64_t sub_1E19BC564()
{
  result = qword_1ECEBBD90;
  if (!qword_1ECEBBD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBBD90);
  }

  return result;
}

uint64_t Artwork.toGameCenterArtwork()()
{
  v55 = sub_1E1AF090C();
  v1 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBD98);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = &v40 - v4;
  v5 = sub_1E1AF08BC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v40 - v9;
  v10 = sub_1E1AF083C();
  v46 = *(v10 - 8);
  v47 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v43 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  v44 = sub_1E1AF07FC();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v40 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - v17;

  v41 = v18;
  sub_1E1AF07DC();

  v45 = v14;
  sub_1E1AF07DC();
  v48 = v0;
  v19 = *(v0 + 104);
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = (v6 + 48);
    v51 = (v6 + 16);
    v52 = (v6 + 32);
    v53 = v1;
    v49 = v1 + 32;
    v50 = (v6 + 8);
    v22 = v19 + 49;
    v23 = MEMORY[0x1E69E7CC0];
    v24 = v56;
    do
    {
      sub_1E1AF089C();
      if ((*v21)(v24, 1, v5) == 1)
      {
        sub_1E1308058(v24, &qword_1ECEBBD98);
      }

      else
      {
        v25 = v5;
        v26 = v57;
        (*v52)(v57, v24, v25);
        v27 = v26;
        v5 = v25;
        (*v51)(v54, v27, v25);
        sub_1E1AF08DC();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1E172EB40(0, v23[2] + 1, 1, v23);
        }

        v29 = v23[2];
        v28 = v23[3];
        v24 = v56;
        if (v29 >= v28 >> 1)
        {
          v23 = sub_1E172EB40(v28 > 1, v29 + 1, 1, v23);
        }

        (*v50)(v57, v25);
        v23[2] = v29 + 1;
        (*(v53 + 32))(v23 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v29, v58, v55);
      }

      v22 += 24;
      --v20;
    }

    while (v20);
  }

  v58 = sub_1E1AF094C();
  v31 = v41;
  v30 = v42;
  v32 = v44;
  (*(v42 + 16))(v40, v41, v44);
  v33 = v47;
  v34 = *(v48 + 48);
  v36 = v45;
  v35 = v46;
  (*(v46 + 16))(v43, v45, v47);
  v37 = v34;
  v38 = sub_1E1AF091C();
  (*(v35 + 8))(v36, v33);
  (*(v30 + 8))(v31, v32);
  return v38;
}

uint64_t sub_1E19BCC24(uint64_t a1)
{
  v2 = sub_1E1AF08BC();
  v3 = *(v2 - 8);
  v77 = v2;
  v78 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v76 = v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1E1AF090C();
  v5 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v7 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AEFEAC();
  v67 = *(v8 - 8);
  v68 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v66 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v69 = v59 - v11;
  v12 = sub_1E1AF083C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E1AF07FC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF092C();
  v20 = sub_1E1AF07EC();
  v64 = v21;
  v65 = v20;
  (*(v17 + 8))(v19, v16);
  sub_1E1AF085C();
  v23 = v22;
  v25 = v24;
  v63 = sub_1E1AF080C();
  sub_1E1AF084C();
  v62 = sub_1E1AF07EC();
  v27 = v26;
  (*(v13 + 8))(v15, v12);
  v28 = sub_1E1AF093C();
  v29 = *(v28 + 16);
  if (v29)
  {
    v60 = v27;
    v61 = a1;
    v30 = v5 + 16;
    v75 = *(v5 + 16);
    v31 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v59[1] = v28;
    v32 = v28 + v31;
    v33 = *(v5 + 72);
    v73 = (v78 + 8);
    v74 = v33;
    v34 = (v5 + 8);
    v78 = MEMORY[0x1E69E7CC0];
    v35 = v70;
    v36 = v30;
    do
    {
      v37 = v36;
      v75(v7, v32, v35);
      v38 = v76;
      sub_1E1AF08EC();
      sub_1E1AF08AC();
      (*v73)(v38, v77);
      v39 = sub_1E1AF72FC();

      if (v39 >= 4)
      {
        (*v34)(v7, v35);
      }

      else
      {
        v72 = sub_1E1AF08FC();
        v71 = v40;
        v41 = sub_1E1AF08CC();
        v42 = v78;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_1E172E494(0, *(v42 + 2) + 1, 1, v42);
        }

        v44 = *(v42 + 2);
        v43 = *(v42 + 3);
        if (v44 >= v43 >> 1)
        {
          v78 = sub_1E172E494((v43 > 1), v44 + 1, 1, v42);
        }

        else
        {
          v78 = v42;
        }

        v35 = v70;
        (*v34)(v7, v70);
        v45 = v78;
        *(v78 + 2) = v44 + 1;
        v46 = &v45[24 * v44];
        v46[32] = v39;
        *(v46 + 5) = v72;
        v46[48] = v71 & 1;
        v46[49] = v41 & 1;
      }

      v32 += v74;
      --v29;
      v36 = v37;
    }

    while (v29);

    v27 = v60;
    v47 = v78;
  }

  else
  {

    v47 = MEMORY[0x1E69E7CC0];
  }

  v48 = sub_1E1AF46DC();
  v49 = v69;
  (*(*(v48 - 8) + 56))(v69, 1, 1, v48);
  type metadata accessor for Artwork();
  v50 = swift_allocObject();
  *(v50 + 152) = 0u;
  *(v50 + 168) = 0u;
  *(v50 + 184) = 0;
  v51 = v66;
  sub_1E1AEFE9C();
  v52 = sub_1E1AEFE7C();
  v54 = v53;
  (*(v67 + 8))(v51, v68);
  v79 = v52;
  v80 = v54;
  sub_1E1AF6F6C();
  sub_1E13815A4(v49, v50 + OBJC_IVAR____TtC11AppStoreKit7Artwork_impressionMetrics);
  v55 = v64;
  *(v50 + 16) = v65;
  *(v50 + 24) = v55;
  *(v50 + 32) = v23;
  *(v50 + 40) = v25;
  v56 = v62;
  *(v50 + 48) = v63;
  *(v50 + 56) = 0;
  *(v50 + 72) = v56;
  *(v50 + 80) = v27;
  *(v50 + 64) = 0;
  *(v50 + 104) = v47;
  v79 = v56;
  v80 = v27;
  v57 = Artwork.Crop.preferredContentMode.getter();

  sub_1E1308058(v49, &unk_1ECEB1770);

  *(v50 + 88) = v57;
  *(v50 + 96) = 3;
  return v50;
}

void *SelectionHandlerCollectionElementsObserver.__allocating_init(presenter:componentHeightCache:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  swift_weakInit();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  swift_beginAccess();
  swift_weakAssign();

  return v6;
}

void *SelectionHandlerCollectionElementsObserver.init(presenter:componentHeightCache:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_weakInit();
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  swift_beginAccess();
  swift_weakAssign();

  return v3;
}

uint64_t sub_1E19BD47C()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_1E19BD4CC(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_1E19BD55C;
}

void sub_1E19BD55C(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_1E19BD5DC(void *a1, char *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v43 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - v11;
  v42 = sub_1E1AF01FC();
  v13 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v44[0] = a1;
  sub_1E13E71B4();
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBDA0);
  if (swift_dynamicCast())
  {
    sub_1E1308EC0(&v49, v46);
    v17 = v47;
    v18 = v48;
    __swift_project_boxed_opaque_existential_1Tm(v46, v47);
    (*(v18 + 8))(&v49, a2, a4, v17, v18);
    v19 = v49;
    if (v49)
    {
      v21 = *(v5 + 32);
      ObjectType = swift_getObjectType();
      v23 = type metadata accessor for ItemLayoutContext();
      (*(v21 + 8))(&a2[*(v23 + 20)], 0, 1, ObjectType, v21);
      if ((v19 & 2) == 0)
      {
LABEL_4:
        if ((v19 & 4) == 0)
        {
          return __swift_destroy_boxed_opaque_existential_1(v46);
        }

        goto LABEL_12;
      }
    }

    else if ((v49 & 2) == 0)
    {
      goto LABEL_4;
    }

    v24 = *a2;
    v25 = &a2[*(type metadata accessor for ItemLayoutContext() + 32)];
    v26 = type metadata accessor for ShelfLayoutContext();
    MEMORY[0x1E68F8EA0](v24, *&v25[*(v26 + 20)]);
    v27 = sub_1E1AF015C();
    (*(v13 + 8))(v15, v42);
    [v43 deselectItemAtIndexPath:v27 animated:1];

    if ((v19 & 4) == 0)
    {
      return __swift_destroy_boxed_opaque_existential_1(v46);
    }

LABEL_12:
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2608);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1E1B02CC0;
      type metadata accessor for ItemLayoutContext();
      swift_getKeyPath();
      sub_1E1AF3DAC();

      sub_1E1AF6F6C();
      *(&v50 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AB0);
      v51 = sub_1E19BDC00();
      *&v49 = v28;
      ComponentHeightCache.invalidate(items:)(&v49);

      if (*(&v50 + 1))
      {
        __swift_destroy_boxed_opaque_existential_1(&v49);
      }
    }

    v29 = *(v5 + 24);
    v30 = swift_getObjectType();
    v31 = type metadata accessor for ItemLayoutContext();
    ReloadableItemPagePresenter.reloadItem(_:)(&a2[*(v31 + 20)], v30, v29);
    return __swift_destroy_boxed_opaque_existential_1(v46);
  }

  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  sub_1E1308058(&v49, &qword_1ECEBBDA8);
  type metadata accessor for AdvertRotationControllerProvider();
  sub_1E1AF413C();
  if (!v46[0])
  {
    goto LABEL_18;
  }

  v20 = AdvertRotationControllerProvider.advertController(for:asPartOf:)(a2, a4);

  if (!v20)
  {
    goto LABEL_18;
  }

  v41 = v9;
  swift_beginAccess();
  sub_1E1383E78(v20 + 48, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB26E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    v45 = 0;
    memset(v44, 0, sizeof(v44));
    sub_1E1308058(v44, &qword_1ECEB4CE0);
    v9 = v41;
LABEL_18:
    v33 = type metadata accessor for ItemLayoutContext();
    (*(v10 + 16))(v12, &a2[*(v33 + 20)], v9);
    goto LABEL_19;
  }

  sub_1E1308EC0(v44, &v49);
  sub_1E1300B24(&v49, v46);
  sub_1E1AF3DDC();

  __swift_destroy_boxed_opaque_existential_1(&v49);
  v9 = v41;
LABEL_19:
  v34 = *(v5 + 32);
  v35 = swift_getObjectType();
  (*(v34 + 8))(v12, 0, 1, v35, v34);
  v36 = *a2;
  v37 = &a2[*(type metadata accessor for ItemLayoutContext() + 32)];
  v38 = type metadata accessor for ShelfLayoutContext();
  MEMORY[0x1E68F8EA0](v36, *&v37[*(v38 + 20)]);
  v39 = sub_1E1AF015C();
  (*(v13 + 8))(v15, v42);
  [v43 deselectItemAtIndexPath:v39 animated:1];

  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_1E19BDC00()
{
  result = qword_1ECEBBDB0;
  if (!qword_1ECEBBDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB2AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBBDB0);
  }

  return result;
}

uint64_t SelectionHandlerCollectionElementsObserver.deinit()
{
  swift_unknownObjectRelease();
  swift_weakDestroy();
  return v0;
}

uint64_t SelectionHandlerCollectionElementsObserver.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

id GameCenter.fetchSuggestedFriends(localPlayer:limitedTo:on:)(void *a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1Tm(a3, a3[3]);

  return sub_1E19C0BE4(a1);
}

uint64_t sub_1E19BDE28(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E19690A4(v2);
  }

  v3 = *(v2 + 2);
  v29[0] = (v2 + 32);
  v29[1] = v3;
  result = sub_1E1AF741C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 96;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*v12)
          {
            break;
          }

          if (!v12[72])
          {
            break;
          }

          v13 = v12 - 64;
          v24 = *(v12 + 8);
          v14 = *(v12 + 24);
          v15 = *(v12 + 40);
          v16 = *(v12 + 56);
          v28 = v12[72];
          v26 = v15;
          v27 = v16;
          v25 = v14;
          *(v12 + 9) = *v12;
          v17 = *(v12 - 2);
          *(v12 + 56) = *(v12 - 1);
          *(v12 + 40) = v17;
          v18 = *(v12 - 4);
          *(v12 + 24) = *(v12 - 3);
          *(v12 + 8) = v18;
          *v13 = v24;
          v19 = v28;
          v20 = v27;
          v21 = v25;
          *(v13 + 2) = v26;
          *(v13 + 3) = v20;
          *v12 = v19;
          *(v13 + 1) = v21;
          v12 -= 72;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 72;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1E1AF628C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    *&v24 = v7 + 32;
    *(&v24 + 1) = v6;
    sub_1E19C0374(&v24, v23, v29, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1E19BDFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_1E1AF063C();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E19BE088, 0, 0);
}

uint64_t sub_1E19BE088()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[11] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[12] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBDC8);
  *v3 = v0;
  v3[1] = sub_1E19BE190;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000030, 0x80000001E1B82B70, sub_1E19C1420, v2, v4);
}

uint64_t sub_1E19BE190()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1E19BEAAC;
  }

  else
  {

    v2 = sub_1E19BE2AC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E19BE2AC()
{
  v1 = v0[2];
  v0[14] = v1;
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1E135C088(0, v2, 0);
    v3 = v17;
    v4 = *(v17 + 16);
    v5 = 16 * v4;
    v6 = (v1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v9 = v4 + 1;
      v10 = *(v17 + 24);

      if (v4 >= v10 >> 1)
      {
        sub_1E135C088((v10 > 1), v9, 1);
      }

      *(v17 + 16) = v9;
      v11 = v17 + v5;
      *(v11 + 32) = v8;
      *(v11 + 40) = v7;
      v5 += 16;
      v6 += 6;
      ++v4;
      --v2;
    }

    while (v2);
  }

  v0[15] = v3;
  v12 = v0[5];
  v13 = swift_task_alloc();
  v0[16] = v13;
  *(v13 + 16) = v12;
  *(v13 + 24) = v3;
  v14 = swift_task_alloc();
  v0[17] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBBDD0);
  *v14 = v0;
  v14[1] = sub_1E19BE474;

  return MEMORY[0x1EEE6DE38](v0 + 3, 0, 0, 0xD000000000000030, 0x80000001E1B82B70, sub_1E19C1428, v13, v15);
}

uint64_t sub_1E19BE474()
{
  *(*v1 + 144) = v0;

  if (v0)
  {

    v2 = sub_1E19BEB18;
  }

  else
  {

    v2 = sub_1E19BE5C4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E19BE5C4()
{
  v60 = v0;
  v1 = v0[14];
  v2 = v0[9];
  v3 = v0[3];
  v4 = sub_1E19C1430();

  v6 = *(v1 + 16);
  v55 = v3;
  if (v6)
  {
    v7 = 0;
    v52 = *MEMORY[0x1E69A02F0];
    v50 = (v2 + 8);
    v51 = (v2 + 104);
    v53 = v3 + 56;
    v49 = v6 - 1;
    v8 = v1 + 72;
    v54 = MEMORY[0x1E69E7CC0];
    v56 = *(v1 + 16);
    v57 = v0;
    v48 = v1 + 72;
    v58 = v4;
    while (1)
    {
      v9 = (v8 + 48 * v7);
      v10 = v7;
      while (1)
      {
        if (v10 >= *(v0[14] + 16))
        {
          __break(1u);
          return result;
        }

        if (*(v4 + 16))
        {
          break;
        }

LABEL_4:
        ++v10;
        v9 += 6;
        if (v6 == v10)
        {
          goto LABEL_31;
        }
      }

      v11 = *(v9 - 1);
      v12 = *v9;
      v14 = *(v9 - 3);
      v13 = *(v9 - 2);
      v15 = *(v9 - 5);
      v16 = *(v9 - 4);

      swift_bridgeObjectRetain_n();
      v17 = sub_1E13018F8(v15, v16);
      v19 = v18;

      if ((v19 & 1) == 0)
      {
        break;
      }

      v45 = v14;
      v47 = v11;
      v20 = v57[10];
      v21 = v57[8];
      v22 = *(*(v58 + 56) + 8 * v17);
      (*v51)(v20, v52, v21);
      v23 = v22;
      v24 = sub_1E1AF062C();
      (*v50)(v20, v21);
      if (*(v55 + 16))
      {
        v25 = v23;
        sub_1E1AF762C();
        sub_1E1AF5F0C();
        v26 = sub_1E1AF767C();
        v27 = -1 << *(v55 + 32);
        v28 = v26 & ~v27;
        v29 = v45;
        if ((*(v53 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
        {
          v30 = ~v27;
          while (1)
          {
            v31 = (*(v55 + 48) + 16 * v28);
            v32 = *v31 == v15 && v31[1] == v16;
            if (v32 || (sub_1E1AF74AC() & 1) != 0)
            {
              break;
            }

            v28 = (v28 + 1) & v30;
            if (((*(v53 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
            {
              goto LABEL_18;
            }
          }
        }

        else
        {
LABEL_18:
          v24 = 0;
        }

        v23 = v25;
      }

      else
      {
        v24 = 0;
        v29 = v45;
      }

      v33 = [objc_opt_self() stringFromContact:v23 style:0];
      if (v33)
      {
        v34 = v33;
      }

      else
      {
        v34 = v23;
        v23 = [v23 givenName];
      }

      v46 = sub_1E1AF5DFC();
      v36 = v35;

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1E172F728(0, *(v54 + 16) + 1, 1, v54);
        v54 = result;
      }

      v38 = *(v54 + 16);
      v37 = *(v54 + 24);
      v39 = v47;
      if (v38 >= v37 >> 1)
      {
        result = sub_1E172F728((v37 > 1), v38 + 1, 1, v54);
        v39 = v47;
        v54 = result;
      }

      v7 = v10 + 1;
      *(v54 + 16) = v38 + 1;
      v40 = v54 + 72 * v38;
      *(v40 + 32) = v15;
      *(v40 + 40) = v16;
      *(v40 + 48) = v29;
      *(v40 + 56) = v13;
      *(v40 + 64) = v39;
      *(v40 + 72) = v12;
      *(v40 + 80) = v46;
      *(v40 + 88) = v36;
      *(v40 + 96) = v24 & 1;
      v8 = v48;
      v0 = v57;
      v4 = v58;
      v6 = v56;
      if (v49 == v10)
      {
        goto LABEL_31;
      }
    }

    v0 = v57;
    v4 = v58;
    v6 = v56;
    goto LABEL_4;
  }

  v54 = MEMORY[0x1E69E7CC0];
LABEL_31:
  v41 = v0[18];

  v59 = v54;

  sub_1E19BDE28(&v59);
  if (v41)
  {
  }

  else
  {

    v42 = v59;
    sub_1E1AF6A0C();
    sub_1E1AF483C();
    v43 = sub_1E1AF482C();
    sub_1E1AF0F3C();

    v0[4] = v42;
    sub_1E1AF586C();

    v44 = v0[1];

    return v44();
  }
}

uint64_t sub_1E19BEAAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E19BEB18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E19BEB7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBDE8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  v8 = [objc_opt_self() proxyForPlayer_];
  v9 = [v8 utilityServicePrivate];

  (*(v5 + 16))(v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v7, v4);
  aBlock[4] = sub_1E19C1A10;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E19BF164;
  aBlock[3] = &block_descriptor_22_0;
  v12 = _Block_copy(aBlock);

  [v9 suggestedFriendsWithHandler_];
  _Block_release(v12);
  return swift_unknownObjectRelease();
}

uint64_t sub_1E19BED78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v3 = MEMORY[0x1E69E7CC0];
    do
    {
      v18 = *v2;
      sub_1E19BEEBC(&v18, &v13);
      v5 = v14;
      if (v14)
      {
        v6 = v13;
        v12 = v15;
        v7 = v16;
        v8 = v17;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_1E172F84C(0, v3[2] + 1, 1, v3);
        }

        v10 = v3[2];
        v9 = v3[3];
        if (v10 >= v9 >> 1)
        {
          v3 = sub_1E172F84C((v9 > 1), v10 + 1, 1, v3);
        }

        v3[2] = v10 + 1;
        v4 = &v3[6 * v10];
        v4[4] = v6;
        v4[5] = v5;
        *(v4 + 3) = v12;
        v4[8] = v7;
        v4[9] = v8;
      }

      ++v2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v13 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBDE8);
  return sub_1E1AF63EC();
}

unint64_t sub_1E19BEEBC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*(*a1 + 16))
  {
    v4 = sub_1E13018F8(0x49746361746E6F63, 0xE900000000000044);
    if (v5)
    {
      sub_1E137A5C4(*(v3 + 56) + 32 * v4, v15);
      if (swift_dynamicCast())
      {
        if (*(v3 + 16))
        {
          v6 = sub_1E13018F8(0x656C646E6168, 0xE600000000000000);
          if (v7)
          {
            sub_1E137A5C4(*(v3 + 56) + 32 * v6, v15);
            result = swift_dynamicCast();
            if (result)
            {
              v9 = *(v3 + 16);
              if (v9)
              {
                result = sub_1E13018F8(1684627811, 0xE400000000000000);
                if (v10)
                {
                  sub_1E137A5C4(*(v3 + 56) + 32 * result, v15);
                  result = swift_dynamicCast();
                  v9 = v13;
                  v11 = v14;
                  if (!result)
                  {
                    v9 = 0;
                    v11 = 0;
                  }

                  goto LABEL_17;
                }

                v9 = 0;
              }

              v11 = 0;
LABEL_17:
              *a2 = v13;
              a2[1] = v14;
              a2[2] = v9;
              a2[3] = v11;
              a2[4] = v13;
              a2[5] = v14;
              return result;
            }
          }
        }
      }
    }
  }

  if (qword_1EE1D27D8 != -1)
  {
    swift_once();
  }

  v12 = sub_1E1AF591C();
  __swift_project_value_buffer(v12, qword_1EE2154B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF54AC();

  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  return result;
}

uint64_t sub_1E19BF164(uint64_t a1)
{
  v1 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260);
  v2 = sub_1E1AF621C();

  v1(v2);
}

void sub_1E19BF1E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBDE0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  v8 = [objc_opt_self() proxyForPlayer_];
  v9 = [v8 profileServicePrivate];

  v10 = sub_1E1AF620C();
  (*(v5 + 16))(v7, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v7, v4);
  aBlock[4] = sub_1E19C1984;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E19BF6A8;
  aBlock[3] = &block_descriptor_16_2;
  v13 = _Block_copy(aBlock);

  [v9 filterForContactIDsSupportingFriendingViaPushFromContactIDs:v10 withCompletion:v13];
  _Block_release(v13);
  swift_unknownObjectRelease();
}

uint64_t sub_1E19BF400(uint64_t a1, void *a2)
{
  v3 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  if (a2)
  {
    v4 = a2;
    if (qword_1EE1D27D8 != -1)
    {
      swift_once();
    }

    v5 = sub_1E1AF591C();
    __swift_project_value_buffer(v5, qword_1EE2154B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    swift_getErrorValue();
    v9[3] = v8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v9);
    (*(*(v8 - 8) + 16))(boxed_opaque_existential_0);
    sub_1E1AF385C();
    sub_1E13E44F8(v9);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    v9[0] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBDE0);
    return sub_1E1AF63DC();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBDE0);
    return sub_1E1AF63EC();
  }
}

uint64_t sub_1E19BF6A8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1E1AF659C();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t static GameCenter.inviteFriendViewController(localPlayer:contactId:)(void *a1, uint64_t a2, uint64_t a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = sub_1E1AEFEAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBDC0);
    v23 = sub_1E1AF588C();
    if (a1)
    {
      v33 = a1;
      sub_1E1AEFE9C();
      sub_1E1AEFE7C();
      (*(v7 + 8))(v9, v6);
      v34 = sub_1E1AF5DBC();

      v35 = swift_allocObject();
      *(v35 + 16) = v23;
      *(v35 + 24) = 0;
      v44 = sub_1E19C12DC;
      v45 = v35;
      aBlock = MEMORY[0x1E69E9820];
      v41 = 1107296256;
      v42 = sub_1E19C02A4;
      v43 = &block_descriptor_95;
      v36 = _Block_copy(&aBlock);

      [v33 createFriendRequestWithIdentifier:v34 handler:v36];
      _Block_release(v36);
    }

    else
    {
      sub_1E14BFDDC();
      v34 = swift_allocError();
      *v37 = 7;
      *(v37 + 8) = 0;
      *(v37 + 16) = 0;
      *(v37 + 24) = 0;
      *(v37 + 32) = 4;
      sub_1E1AF584C();
    }

    return v23;
  }

  v10 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB56A0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1E1B02CC0;
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;

  v12 = sub_1E1AF620C();

  v13 = [v10 predicateForContactsWithIdentifiers_];

  v14 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  sub_1E19C12E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB7E0);
  v15 = sub_1E1AF620C();

  aBlock = 0;
  v16 = [v14 unifiedContactsMatchingPredicate:v13 keysToFetch:v15 error:&aBlock];

  v17 = aBlock;
  if (!v16)
  {
    v29 = aBlock;
    v30 = sub_1E1AEFB2C();

    swift_willThrow();
    goto LABEL_14;
  }

  sub_1E155A5D4();
  v18 = sub_1E1AF621C();
  v19 = v17;

  if (v18 >> 62)
  {
    if (sub_1E1AF71CC())
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:

    goto LABEL_14;
  }

LABEL_5:
  if ((v18 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x1E68FFD80](0, v18);
  }

  else
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v20 = *(v18 + 32);
  }

  v21 = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBDC0);
  v22 = v21;
  v23 = sub_1E1AF588C();
  if (a1)
  {
    v24 = a1;
    sub_1E1AEFE9C();
    sub_1E1AEFE7C();
    (*(v7 + 8))(v9, v6);
    v25 = sub_1E1AF5DBC();

    v26 = swift_allocObject();
    *(v26 + 16) = v23;
    *(v26 + 24) = v22;
    v44 = sub_1E19C1AA4;
    v45 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v41 = 1107296256;
    v42 = sub_1E19C02A4;
    v43 = &block_descriptor_7_1;
    v27 = _Block_copy(&aBlock);
    v28 = v22;

    [v24 createFriendRequestWithIdentifier:v25 handler:v27];
    _Block_release(v27);
  }

  else
  {
    sub_1E14BFDDC();
    v31 = swift_allocError();
    *v32 = 7;
    *(v32 + 8) = 0;
    *(v32 + 16) = 0;
    *(v32 + 24) = 0;
    *(v32 + 32) = 4;
    sub_1E1AF584C();
  }

  return v23;
}

void sub_1E19BFD30(int a1, uint64_t a2, int a3, uint64_t a4, id a5, uint64_t a6, void *a7)
{
  if (a5)
  {
    v8 = a5;
    v9 = a5;
LABEL_11:
    sub_1E1AF584C();

    return;
  }

  if (!a2 || !a4)
  {
    if (qword_1EE1D27D8 != -1)
    {
      swift_once();
    }

    v19 = sub_1E1AF591C();
    __swift_project_value_buffer(v19, qword_1EE2154B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF548C();

    sub_1E14BFDDC();
    v8 = swift_allocError();
    *v20 = 3;
    *(v20 + 8) = 0;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    *(v20 + 32) = 4;
    goto LABEL_11;
  }

  v11 = [objc_allocWithZone(MEMORY[0x1E69A0328]) init];
  v12 = sub_1E1AF5DBC();
  [v11 setFriendCode_];

  v13 = sub_1E1AF5DBC();
  [v11 setFriendSupportPageURL_];

  if (a7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1E1B06D70;
    *(v14 + 32) = a7;
    sub_1E155A5D4();
    v15 = a7;
    v16 = sub_1E1AF620C();

    [v11 setRecipients_];
  }

  v21[4] = sub_1E19C1A8C;
  v21[5] = a6;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  v21[2] = sub_1E14CC840;
  v21[3] = &block_descriptor_25_4;
  v17 = _Block_copy(v21);
  v18 = v11;

  [v18 setRemoteViewReadyHandler_];
  _Block_release(v17);
}

void sub_1E19C00C0(void *a1)
{
  if (a1)
  {
    v1 = a1;
    [v1 setModalPresentationStyle_];
    sub_1E1AF586C();
  }

  else
  {
    if (qword_1EE1D27D8 != -1)
    {
      swift_once();
    }

    v2 = sub_1E1AF591C();
    __swift_project_value_buffer(v2, qword_1EE2154B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF548C();

    sub_1E14BFDDC();
    v3 = swift_allocError();
    *v4 = 4;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v4 + 32) = 4;
    sub_1E1AF584C();
  }
}

uint64_t sub_1E19C02A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = sub_1E1AF5DFC();
    v9 = v8;
    if (v5)
    {
LABEL_3:
      v10 = sub_1E1AF5DFC();
      v5 = v11;
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    v9 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:

  v12 = a4;
  v6(v7, v9, v10, v5, a4);
}

uint64_t sub_1E19C0374(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_92:
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_1E1968F00(v7);
      v7 = result;
    }

    v76 = (v7 + 16);
    v77 = *(v7 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v7 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_1E19C0980((*a3 + 72 * *v78), (*a3 + 72 * *v80), (*a3 + 72 * v81), v85);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_118;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_119;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_120;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *a3;
      v10 = *(v9 + 72 * v6 + 64) & (*(v9 + 72 * v8 + 64) ^ 1);
      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v11 = (v9 + 72 * v8 + 136);
        do
        {
          v12 = v11[72];
          if (v12 == *v11)
          {
            if (v10)
            {
              goto LABEL_14;
            }
          }

          else if ((v10 ^ v12))
          {
            goto LABEL_13;
          }

          ++v6;
          v11 += 72;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_13:
      if (v10)
      {
LABEL_14:
        if (v6 < v8)
        {
          goto LABEL_123;
        }

        if (v8 < v6)
        {
          v13 = 72 * v6 - 72;
          v14 = 72 * v8;
          v15 = v6;
          v16 = v8;
          do
          {
            if (v16 != --v15)
            {
              v18 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v17 = v18 + v13;
              v90 = *(v18 + v14 + 32);
              v92 = *(v18 + v14 + 48);
              v94 = *(v18 + v14 + 64);
              v86 = *(v18 + v14);
              v88 = *(v18 + v14 + 16);
              result = memmove((v18 + v14), (v18 + v13), 0x48uLL);
              *(v17 + 32) = v90;
              *(v17 + 48) = v92;
              *(v17 + 64) = v94;
              *v17 = v86;
              *(v17 + 16) = v88;
            }

            ++v16;
            v13 -= 72;
            v14 += 72;
          }

          while (v16 < v15);
          v5 = a3[1];
        }
      }
    }

    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_122;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_124;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_41:
    if (v6 < v8)
    {
      goto LABEL_121;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E172D878(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v29 = *(v7 + 16);
    v28 = *(v7 + 24);
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      result = sub_1E172D878((v28 > 1), v29 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v30;
    v31 = v7 + 32;
    v32 = (v7 + 32 + 16 * v29);
    *v32 = v8;
    v32[1] = v6;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_131;
    }

    if (v29)
    {
      while (1)
      {
        v33 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v34 = *(v7 + 32);
          v35 = *(v7 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_61:
          if (v37)
          {
            goto LABEL_108;
          }

          v50 = (v7 + 16 * v30);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_110;
          }

          v56 = (v31 + 16 * v33);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_113;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_115;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v33 = v30 - 2;
            }

            goto LABEL_83;
          }

          goto LABEL_76;
        }

        if (v30 < 2)
        {
          goto LABEL_116;
        }

        v60 = (v7 + 16 * v30);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_76:
        if (v55)
        {
          goto LABEL_112;
        }

        v63 = (v31 + 16 * v33);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_114;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_83:
        if (v33 - 1 >= v30)
        {
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
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v71 = (v31 + 16 * (v33 - 1));
        v72 = *v71;
        v73 = (v31 + 16 * v33);
        v74 = v73[1];
        sub_1E19C0980((*a3 + 72 * *v71), (*a3 + 72 * *v73), (*a3 + 72 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_103;
        }

        if (v33 > *(v7 + 16))
        {
          goto LABEL_104;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v7 + 16);
        if (v33 >= v75)
        {
          goto LABEL_105;
        }

        v30 = v75 - 1;
        result = memmove((v31 + 16 * v33), v73 + 2, 16 * (v75 - 1 - v33));
        *(v7 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v31 + 16 * v30;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_106;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_107;
      }

      v45 = (v7 + 16 * v30);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_109;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_111;
      }

      if (v49 >= v41)
      {
        v67 = (v31 + 16 * v33);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_117;
        }

        if (v36 < v70)
        {
          v33 = v30 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_61;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_92;
    }
  }

  v19 = *a3;
  v20 = *a3 + 72 * v6;
  v21 = v8 - v6;
LABEL_33:
  v22 = v21;
  v23 = v20;
  while (1)
  {
    if ((*(v23 - 8) & 1) != 0 || !*(v23 + 64))
    {
LABEL_32:
      ++v6;
      v20 += 72;
      --v21;
      if (v6 != v5)
      {
        goto LABEL_33;
      }

      v6 = v5;
      goto LABEL_41;
    }

    if (!v19)
    {
      break;
    }

    v24 = v23 - 72;
    v91 = *(v23 + 32);
    v93 = *(v23 + 48);
    v95 = *(v23 + 64);
    v87 = *v23;
    v89 = *(v23 + 16);
    v25 = *(v23 - 24);
    *(v23 + 32) = *(v23 - 40);
    *(v23 + 48) = v25;
    *(v23 + 64) = *(v23 - 8);
    v26 = *(v23 - 56);
    *v23 = *(v23 - 72);
    *(v23 + 16) = v26;
    *(v24 + 64) = v95;
    *(v24 + 32) = v91;
    *(v24 + 48) = v93;
    v23 -= 72;
    *v24 = v87;
    *(v24 + 16) = v89;
    if (__CFADD__(v22++, 1))
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1E19C0980(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 72;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 72;
  if (v9 >= v11)
  {
    v16 = 72 * v11;
    if (a4 != __src || &__src[v16] <= a4)
    {
      memmove(a4, __src, 72 * v11);
    }

    v13 = &v4[v16];
    if (v10 >= 72 && v6 > v7)
    {
LABEL_22:
      v5 -= 72;
      do
      {
        if ((*(v6 - 8) & 1) == 0 && *(v13 - 8))
        {
          v18 = v6 - 72;
          if (v5 + 72 != v6)
          {
            memmove(v5, v6 - 72, 0x48uLL);
          }

          if (v13 <= v4 || (v6 -= 72, v18 <= v7))
          {
            v6 = v18;
            goto LABEL_35;
          }

          goto LABEL_22;
        }

        v17 = (v13 - 72);
        if (v5 + 72 != v13)
        {
          memmove(v5, v13 - 72, 0x48uLL);
        }

        v5 -= 72;
        v13 -= 72;
      }

      while (v17 > v4);
      v13 = v17;
    }
  }

  else
  {
    v12 = 72 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 72)
    {
      v6 = v7;
    }

    else
    {
      if (v6 < v5)
      {
        while ((v4[64] & 1) == 0 && v6[64])
        {
          v14 = v6;
          v15 = v7 == v6;
          v6 += 72;
          if (!v15)
          {
            goto LABEL_13;
          }

LABEL_14:
          v7 += 72;
          if (v4 >= v13 || v6 >= v5)
          {
            goto LABEL_16;
          }
        }

        v14 = v4;
        v15 = v7 == v4;
        v4 += 72;
        if (v15)
        {
          goto LABEL_14;
        }

LABEL_13:
        memmove(v7, v14, 0x48uLL);
        goto LABEL_14;
      }

LABEL_16:
      v6 = v7;
    }
  }

LABEL_35:
  v19 = 72 * ((v13 - v4) / 72);
  if (v6 != v4 || v6 >= &v4[v19])
  {
    memmove(v6, v4, v19);
  }

  return 1;
}

id sub_1E19C0BE4(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v31 - v4;
  v6 = sub_1E1AF0F7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB49C0);
  v34 = sub_1E1AF588C();
  result = [objc_opt_self() shared];
  if (result)
  {
    v14 = result;
    v15 = [result isAddingFriendsRestricted];

    if (v15)
    {
      if (qword_1EE1D27D8 != -1)
      {
        swift_once();
      }

      v16 = sub_1E1AF591C();
      __swift_project_value_buffer(v16, qword_1EE2154B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF382C();
      sub_1E1AF548C();

      sub_1E14BFDDC();
      v18 = swift_allocError();
      v19 = 5;
    }

    else
    {
      if (a1)
      {
        v33 = ObjectType;
        sub_1E1AF483C();
        v32 = a1;
        sub_1E1AF482C();
        sub_1E1AF0F4C();
        sub_1E1AF6A1C();
        v20 = sub_1E1AF482C();
        sub_1E1AF0F3C();

        if (qword_1EE1D27D8 != -1)
        {
          swift_once();
        }

        v21 = sub_1E1AF591C();
        __swift_project_value_buffer(v21, qword_1EE2154B0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
        sub_1E1AF38EC();
        *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
        sub_1E1AF382C();
        sub_1E1AF548C();

        v22 = sub_1E1AF649C();
        (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
        (*(v7 + 16))(v9, v12, v6);
        v23 = (*(v7 + 80) + 40) & ~*(v7 + 80);
        v24 = (v8 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
        v25 = swift_allocObject();
        *(v25 + 2) = 0;
        *(v25 + 3) = 0;
        v26 = v32;
        *(v25 + 4) = v32;
        (*(v7 + 32))(&v25[v23], v9, v6);
        v27 = v33;
        v28 = v34;
        *&v25[v24] = v34;
        *&v25[(v24 + 15) & 0xFFFFFFFFFFFFFFF8] = v27;
        v29 = v26;

        sub_1E14BE474(0, 0, v5, &unk_1E1B0FE50, v25);

        (*(v7 + 8))(v12, v6);
        return v28;
      }

      if (qword_1EE1D27D8 != -1)
      {
        swift_once();
      }

      v30 = sub_1E1AF591C();
      __swift_project_value_buffer(v30, qword_1EE2154B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF382C();
      sub_1E1AF548C();

      sub_1E14BFDDC();
      v18 = swift_allocError();
      v19 = 7;
    }

    *v17 = v19;
    *(v17 + 8) = 0;
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    *(v17 + 32) = 4;
    v28 = v34;
    sub_1E1AF584C();

    return v28;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E19C12E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1E1B49A20;
  *(v0 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  *(v0 + 40) = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];
  *(v0 + 48) = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];
  *(v0 + 56) = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];
  *(v0 + 64) = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];
  *(v0 + 72) = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithString_];
  return v0;
}

uint64_t sub_1E19C1430()
{
  v42[4] = *MEMORY[0x1E69E9840];
  v0 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  v1 = objc_opt_self();
  v2 = MEMORY[0x1E69E6158];
  v3 = sub_1E1AF620C();
  v4 = [v1 predicateForContactsWithIdentifiers_];

  sub_1E19C12E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB7E0);
  v5 = sub_1E1AF620C();

  v42[0] = 0;
  v6 = [v0 unifiedContactsMatchingPredicate:v4 keysToFetch:v5 error:v42];

  v7 = v42[0];
  if (v6)
  {
    sub_1E155A5D4();
    v8 = sub_1E1AF621C();
    v9 = v7;

    if (v8 >> 62)
    {
      goto LABEL_29;
    }

    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v40 = v4;
    v41 = v0;
    while (v10)
    {
      v11 = 0;
      v12 = MEMORY[0x1E69E7CC8];
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1E68FFD80](v11, v8);
        }

        else
        {
          if (v11 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v16 = *(v8 + 8 * v11 + 32);
        }

        v17 = v16;
        v0 = (v11 + 1);
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v18 = [v16 identifier];
        v19 = sub_1E1AF5DFC();
        v21 = v20;

        v22 = v17;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42[0] = v12;
        v24 = sub_1E13018F8(v19, v21);
        v26 = v12[2];
        v27 = (v25 & 1) == 0;
        v28 = __OFADD__(v26, v27);
        v29 = v26 + v27;
        if (v28)
        {
          goto LABEL_26;
        }

        v4 = v25;
        if (v12[3] < v29)
        {
          sub_1E16934E4(v29, isUniquelyReferenced_nonNull_native);
          v24 = sub_1E13018F8(v19, v21);
          if ((v4 & 1) != (v30 & 1))
          {
            result = sub_1E1AF757C();
            __break(1u);
            return result;
          }

LABEL_17:
          if (v4)
          {
            goto LABEL_5;
          }

          goto LABEL_18;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_17;
        }

        v34 = v24;
        sub_1E141B6B4();
        v24 = v34;
        if (v4)
        {
LABEL_5:
          v13 = v24;

          v12 = v42[0];
          v14 = *(v42[0] + 7);
          v15 = *(v14 + 8 * v13);
          *(v14 + 8 * v13) = v22;

          goto LABEL_6;
        }

LABEL_18:
        v12 = v42[0];
        *(v42[0] + (v24 >> 6) + 8) |= 1 << v24;
        v31 = (v12[6] + 16 * v24);
        *v31 = v19;
        v31[1] = v21;
        *(v12[7] + 8 * v24) = v22;

        v32 = v12[2];
        v28 = __OFADD__(v32, 1);
        v33 = v32 + 1;
        if (v28)
        {
          goto LABEL_27;
        }

        v12[2] = v33;
LABEL_6:
        ++v11;
        if (v0 == v10)
        {
          goto LABEL_31;
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
      v10 = sub_1E1AF71CC();
      v40 = v4;
      v41 = v0;
    }

    v12 = MEMORY[0x1E69E7CC8];
LABEL_31:

    v38 = v41;
  }

  else
  {
    v35 = v42[0];
    v36 = sub_1E1AEFB2C();

    swift_willThrow();
    if (qword_1EE1D27D8 != -1)
    {
      swift_once();
    }

    v37 = sub_1E1AF591C();
    __swift_project_value_buffer(v37, qword_1EE2154B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    v42[0] = 0;
    v42[1] = 0xE000000000000000;
    sub_1E1AF6FEC();
    MEMORY[0x1E68FECA0](0xD000000000000039, 0x80000001E1B82BB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB57A0);
    sub_1E1AF714C();
    v42[3] = v2;
    sub_1E1AF38BC();
    sub_1E13E44F8(v42);
    sub_1E1AF54AC();

    v12 = sub_1E15A2D08(MEMORY[0x1E69E7CC0]);

    v38 = v4;
  }

  return v12;
}

uint64_t sub_1E19C1984(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBDE0);

  return sub_1E19BF400(a1, a2);
}

uint64_t sub_1E19C1A10(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBDE8);

  return sub_1E19BED78(a1);
}

JSValue __swiftcall GameCenterActivityFeedCard.makeValue(in:)(JSContext in)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB7C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v199 = v191 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v200 = v191 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v201 = v191 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v202 = v191 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v203 = v191 - v13;
  v210 = sub_1E1AF3E1C();
  v206 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210);
  v15 = v191 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v196 = v191 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v191 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v191 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v191 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v204 = v191 - v28;
  v205 = sub_1E1AF46DC();
  v207 = *(v205 - 8);
  MEMORY[0x1EEE9AC00](v205);
  v198 = v191 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBDF0);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v209 = v191 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBDF8);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v212 = v191 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v208 = v191 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v213 = v191 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v215 = v191 - v39;
  v230 = sub_1E1AF061C();
  v219 = *(v230 - 8);
  MEMORY[0x1EEE9AC00](v230);
  v211 = v191 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = (v191 - v42);
  MEMORY[0x1EEE9AC00](v44);
  v46 = v191 - v45;
  v229 = objc_opt_self();
  result.super.isa = [v229 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    goto LABEL_88;
  }

  isa = result.super.isa;
  v197 = v26;
  v195 = v23;
  v194 = v20;
  sub_1E134E724(v2 + 16, &v237);
  v49 = [v229 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v49)
  {
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v193 = v15;
  v214 = isa;
  sub_1E1AF6C5C();
  v216 = v2;
  v225 = OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_data;
  v50 = sub_1E1AF076C();
  v51 = *(v50 + 16);
  if (v51)
  {
    v192 = in.super.isa;
    v234 = *(v219 + 16);
    v52 = (*(v219 + 80) + 32) & ~*(v219 + 80);
    v191[1] = v50;
    v53 = v50 + v52;
    v233 = (v219 + 88);
    v227 = (v219 + 96);
    v231 = *(v219 + 72);
    v232 = *MEMORY[0x1E69A02D8];
    v228 = *MEMORY[0x1E69A02E0];
    v218 = 0x80000001E1B82E80;
    v224 = *MEMORY[0x1E69A02E8];
    v222 = 0x80000001E1B82EA0;
    v223 = 0x80000001E1B82EC0;
    v235 = MEMORY[0x1E69E7CC0];
    v54 = (v219 + 8);
    v55 = v230;
    v226 = v219 + 16;
    v217 = v46;
    while (1)
    {
      v57 = v234;
      v234(v46, v53, v55);
      v57(v43, v46, v55);
      v58 = (*v233)(v43, v55);
      if (v58 != v232)
      {
        if (v58 == v228)
        {
          (*v227)(v43, v55);
          v60 = *v43;
          v59 = v43[1];
          v61 = v223;
          v236[0] = 0xD000000000000016;
          v236[1] = v223;
          v236[2] = v60;
          v236[3] = v59;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB60D0);
          v62 = sub_1E1AF72CC();

          result.super.isa = sub_1E13018F8(0xD000000000000016, v61);
          if (v63)
          {
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            __break(1u);
LABEL_86:
            __break(1u);
LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
            goto LABEL_89;
          }

          v62[(result.super.isa >> 6) + 8] |= 1 << SLOBYTE(result.super.isa);
          v64 = (v62[6] + 16 * result.super.isa);
          *v64 = 0xD000000000000016;
          v64[1] = v61;
          v65 = (v62[7] + 16 * result.super.isa);
          *v65 = v60;
          v65[1] = v59;
          v66 = v62[2];
          v67 = __OFADD__(v66, 1);
          v68 = v66 + 1;
          if (v67)
          {
            goto LABEL_83;
          }

          v62[2] = v68;

          sub_1E1308058(v236, &unk_1ECEB9500);
          goto LABEL_18;
        }

        if (v58 == v224)
        {
          (*v227)(v43, v55);
          v70 = *v43;
          v69 = v43[1];
          v72 = v43[2];
          v71 = v43[3];
          v73 = v218;
          v236[8] = 0xD000000000000013;
          v236[9] = v218;
          v236[10] = v70;
          v236[11] = v69;
          v236[12] = 0xD000000000000016;
          v236[13] = v222;
          v236[14] = v72;
          v221 = v71;
          v236[15] = v71;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB60D0);
          v62 = sub_1E1AF72CC();

          result.super.isa = sub_1E13018F8(0xD000000000000013, v73);
          if (v74)
          {
            goto LABEL_84;
          }

          v220 = v72;
          *(v62 + ((result.super.isa >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << SLOBYTE(result.super.isa);
          v75 = (v62[6] + 16 * result.super.isa);
          *v75 = 0xD000000000000013;
          v75[1] = v73;
          v76 = (v62[7] + 16 * result.super.isa);
          *v76 = v70;
          v76[1] = v69;
          v77 = v62[2];
          v67 = __OFADD__(v77, 1);
          v78 = v77 + 1;
          if (v67)
          {
            goto LABEL_85;
          }

          v62[2] = v78;
          v79 = v221;

          v80 = v222;
          result.super.isa = sub_1E13018F8(0xD000000000000016, v222);
          if (v81)
          {
            goto LABEL_86;
          }

          *(v62 + ((result.super.isa >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << SLOBYTE(result.super.isa);
          v82 = (v62[6] + 16 * result.super.isa);
          *v82 = 0xD000000000000016;
          v82[1] = v80;
          v83 = (v62[7] + 16 * result.super.isa);
          *v83 = v220;
          v83[1] = v79;
          v84 = v62[2];
          v67 = __OFADD__(v84, 1);
          v85 = v84 + 1;
          if (v67)
          {
            goto LABEL_87;
          }

          v62[2] = v85;

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB9500);
          swift_arrayDestroy();
          v46 = v217;
LABEL_18:
          (*v54)(v46, v230);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v86 = v235;
          }

          else
          {
            v86 = sub_1E172E470(0, v235[2] + 1, 1, v235);
          }

          v88 = v86[2];
          v87 = v86[3];
          if (v88 >= v87 >> 1)
          {
            v86 = sub_1E172E470((v87 > 1), v88 + 1, 1, v86);
          }

          v86[2] = v88 + 1;
          v235 = v86;
          v86[v88 + 4] = v62;
          v55 = v230;
          goto LABEL_6;
        }
      }

      v56 = *v54;
      (*v54)(v43, v55);
      v56(v46, v55);
LABEL_6:
      v53 += v231;
      if (!--v51)
      {

        in.super.isa = v192;
        v89 = v235;
        goto LABEL_26;
      }
    }
  }

  v89 = MEMORY[0x1E69E7CC0];
LABEL_26:
  v237 = v89;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB280);
  v90 = [v229 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  v91 = v216;
  v92.super.isa = v214;
  if (!v90)
  {
    goto LABEL_90;
  }

  sub_1E1AF6C5C();
  v93 = v215;
  sub_1E1AF078C();
  v94 = sub_1E1AEFCCC();
  v95 = *(v94 - 8);
  v96 = *(v95 + 48);
  v235 = (v95 + 48);
  v234 = v96;
  v97 = (v96)(v93, 1, v94);
  v233 = 0xD000000000000014;
  if (v97 == 1)
  {
    sub_1E1308058(v93, &unk_1ECEB4B60);
    v98 = in.super.isa;
    v99 = 0;
  }

  else
  {
    v237 = sub_1E1AEFBDC();
    v238 = v100;
    (*(v95 + 8))(v93, v94);
    v101 = in.super.isa;
    v99 = sub_1E1AF748C();
    sub_1E1455104(&v237);
  }

  v102 = [v229 valueWithObject:v99 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v102)
  {
    goto LABEL_91;
  }

  sub_1E1AF6C5C();
  v237 = sub_1E1AF07AC();
  v238 = v103;
  v104 = [v229 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v104)
  {
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  sub_1E1AF6C5C();
  v105 = v213;
  sub_1E1AF077C();
  if ((v234)(v105, 1, v94) == 1)
  {
    sub_1E1308058(v105, &unk_1ECEB4B60);
    v106 = in.super.isa;
    v107 = 0;
  }

  else
  {
    v237 = sub_1E1AEFBDC();
    v238 = v108;
    (*(v95 + 8))(v105, v94);
    v109 = in.super.isa;
    v107 = sub_1E1AF748C();
    sub_1E1455104(&v237);
  }

  v110 = [v229 valueWithObject:v107 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v110)
  {
    goto LABEL_93;
  }

  sub_1E1AF6C5C();
  v237 = sub_1E1AF079C();
  v238 = v111;
  v112 = [v229 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v112)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  sub_1E1AF6C5C();
  v113 = v212;
  sub_1E1AF073C();
  v114 = v219;
  v115 = v230;
  if ((*(v219 + 48))(v113, 1, v230) == 1)
  {
    sub_1E1308058(v113, &qword_1ECEBBDF8);
  }

  else
  {
    v116 = v211;
    (*(v114 + 16))(v211, v113, v115);
    v117 = (*(v114 + 88))(v116, v115);
    if (v117 != *MEMORY[0x1E69A02D8] && v117 == *MEMORY[0x1E69A02E0])
    {
      v118 = v219;
      v119 = v95;
      v120 = v92.super.isa;
      v121 = v211;
      (*(v219 + 96))(v211, v115);
      v122 = v115;
      v124 = *v121;
      v123 = v121[1];
      v92.super.isa = v120;
      v95 = v119;
      (*(v118 + 8))(v113, v122);
      v237 = v124;
      v238 = v123;
      v125 = in.super.isa;
      v126 = sub_1E1AF748C();
      sub_1E1455104(&v237);
      v91 = v216;
      goto LABEL_44;
    }

    v127 = *(v219 + 8);
    v127(v211, v115);
    v127(v113, v115);
    v91 = v216;
  }

  v128 = in.super.isa;
  v126 = 0;
LABEL_44:
  v129 = [v229 valueWithObject:v126 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v129)
  {
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  sub_1E1AF6C5C();
  v130 = v208;
  sub_1E1AF074C();
  if ((v234)(v130, 1, v94) == 1)
  {
    sub_1E1308058(v130, &unk_1ECEB4B60);
    v131 = in.super.isa;
    v132 = 0;
  }

  else
  {
    v237 = sub_1E1AEFBDC();
    v238 = v133;
    (*(v95 + 8))(v130, v94);
    v134 = in.super.isa;
    v132 = sub_1E1AF748C();
    sub_1E1455104(&v237);
  }

  v135 = v210;
  v136 = v209;
  v137 = [v229 valueWithObject:v132 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v137)
  {
    goto LABEL_96;
  }

  sub_1E1AF6C5C();
  sub_1E1AF072C();
  v138 = sub_1E1AF088C();
  v139 = *(v138 - 8);
  if ((*(v139 + 48))(v136, 1, v138) == 1)
  {
    sub_1E1308058(v136, &qword_1ECEBBDF0);
    v140 = in.super.isa;
    v141 = 0;
  }

  else
  {
    v237 = sub_1E1AF087C();
    v238 = v142;
    (*(v139 + 8))(v136, v138);
    v143 = in.super.isa;
    v141 = sub_1E1AF748C();
    sub_1E1455104(&v237);
  }

  v144 = v207;
  v145 = [v229 valueWithObject:v141 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v145)
  {
    goto LABEL_97;
  }

  sub_1E1AF6C5C();
  v146 = sub_1E1AF07BC();
  if (v147)
  {
    v237 = v146;
    v238 = v147;
    v148 = in.super.isa;
    v149 = sub_1E1AF748C();
    sub_1E1455104(&v237);
  }

  else
  {
    v150 = in.super.isa;
    v149 = 0;
  }

  v151 = [v229 valueWithObject:v149 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v151)
  {
    goto LABEL_98;
  }

  sub_1E1AF6C5C();
  v152 = v204;
  sub_1E134FD1C(v91 + OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_impressionMetrics, v204, &unk_1ECEB1770);
  v153 = v205;
  if ((*(v144 + 48))(v152, 1, v205) == 1)
  {
    sub_1E1308058(v152, &unk_1ECEB1770);
    v154 = in.super.isa;
    v155 = 0;
  }

  else
  {
    v156 = v198;
    (*(v144 + 32))(v198, v152, v153);
    v157 = in.super.isa;
    v155 = sub_1E1AF748C();
    (*(v144 + 8))(v156, v153);
  }

  v158 = v206;
  v159 = [v229 valueWithObject:v155 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v159)
  {
    goto LABEL_99;
  }

  sub_1E1AF6C5C();
  v160 = v203;
  sub_1E134FD1C(v91 + OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_profileActionMetrics, v203, &qword_1ECEBB7C0);
  v161 = *(v158 + 48);
  if (v161(v160, 1, v135) == 1)
  {
    sub_1E1308058(v160, &qword_1ECEBB7C0);
    v162 = in.super.isa;
    v163 = 0;
  }

  else
  {
    v164 = v197;
    (*(v158 + 32))(v197, v160, v135);
    v165 = in.super.isa;
    v163 = sub_1E1AF748C();
    (*(v158 + 8))(v164, v135);
  }

  v166 = [v229 valueWithObject:v163 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v166)
  {
    goto LABEL_100;
  }

  sub_1E1AF6C5C();
  v167 = v202;
  sub_1E134FD1C(v91 + OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_profileAvatarActionMetrics, v202, &qword_1ECEBB7C0);
  if (v161(v167, 1, v135) == 1)
  {
    sub_1E1308058(v167, &qword_1ECEBB7C0);
    v168 = in.super.isa;
    v169 = 0;
  }

  else
  {
    v170 = v195;
    (*(v158 + 32))(v195, v167, v135);
    v171 = in.super.isa;
    v169 = sub_1E1AF748C();
    (*(v158 + 8))(v170, v135);
  }

  v172 = [v229 valueWithObject:v169 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v172)
  {
    goto LABEL_101;
  }

  sub_1E1AF6C5C();
  v173 = v201;
  sub_1E134FD1C(v91 + OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_leaderboardActionMetrics, v201, &qword_1ECEBB7C0);
  if (v161(v173, 1, v135) == 1)
  {
    sub_1E1308058(v173, &qword_1ECEBB7C0);
    v174 = in.super.isa;
    v175 = 0;
  }

  else
  {
    v176 = v194;
    (*(v158 + 32))(v194, v173, v135);
    v177 = in.super.isa;
    v175 = sub_1E1AF748C();
    (*(v158 + 8))(v176, v135);
  }

  v178 = [v229 valueWithObject:v175 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v178)
  {
    goto LABEL_102;
  }

  sub_1E1AF6C5C();
  v179 = v200;
  sub_1E134FD1C(v91 + OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_achievementActionMetrics, v200, &qword_1ECEBB7C0);
  if (v161(v179, 1, v135) == 1)
  {
    sub_1E1308058(v179, &qword_1ECEBB7C0);
    v180 = in.super.isa;
    v181 = 0;
  }

  else
  {
    v182 = v196;
    (*(v158 + 32))(v196, v179, v135);
    v183 = in.super.isa;
    v181 = sub_1E1AF748C();
    (*(v158 + 8))(v182, v135);
  }

  v184 = [v229 valueWithObject:v181 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v184)
  {
    goto LABEL_103;
  }

  sub_1E1AF6C5C();
  v185 = v199;
  sub_1E134FD1C(v91 + OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_appActionMetrics, v199, &qword_1ECEBB7C0);
  if (v161(v185, 1, v135) == 1)
  {
    sub_1E1308058(v185, &qword_1ECEBB7C0);
    v186 = in.super.isa;
    v187 = 0;
  }

  else
  {
    v188 = v193;
    (*(v158 + 32))(v193, v185, v135);
    v189 = in.super.isa;
    v187 = sub_1E1AF748C();
    (*(v158 + 8))(v188, v135);
  }

  v190 = [v229 valueWithObject:v187 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (v190)
  {
    sub_1E1AF6C5C();
    return v92;
  }

LABEL_104:
  __break(1u);
  return result;
}

uint64_t GameCenterActivityFeedCard.__allocating_init(id:data:profileActionMetrics:profileAvatarActionMetrics:leaderboardActionMetrics:achievementActionMetrics:appActionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a2;
  v34 = a3;
  v14 = sub_1E1AEFEAC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  sub_1E134FD1C(a1, &v37, &unk_1ECEB5670);
  if (*(&v38 + 1))
  {
    v19 = v38;
    *(v18 + 16) = v37;
    *(v18 + 32) = v19;
    *(v18 + 48) = v39;
  }

  else
  {
    sub_1E1AEFE9C();
    v20 = sub_1E1AEFE7C();
    v31 = a4;
    v32 = a5;
    v21 = a6;
    v22 = a8;
    v23 = v20;
    v24 = a7;
    v26 = v25;
    (*(v15 + 8))(v17, v14);
    v35 = v23;
    v36 = v26;
    a8 = v22;
    a6 = v21;
    a7 = v24;
    a4 = v31;
    a5 = v32;
    sub_1E1AF6F6C();
    sub_1E1308058(&v37, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  v27 = OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_data;
  v28 = sub_1E1AF07CC();
  (*(*(v28 - 8) + 32))(v18 + v27, v33, v28);
  sub_1E137F600(v34, v18 + OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_profileActionMetrics, &qword_1ECEBB7C0);
  sub_1E137F600(a4, v18 + OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_profileAvatarActionMetrics, &qword_1ECEBB7C0);
  sub_1E137F600(a5, v18 + OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_leaderboardActionMetrics, &qword_1ECEBB7C0);
  sub_1E137F600(a6, v18 + OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_achievementActionMetrics, &qword_1ECEBB7C0);
  sub_1E137F600(a7, v18 + OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_appActionMetrics, &qword_1ECEBB7C0);
  sub_1E137F600(a8, v18 + OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_impressionMetrics, &unk_1ECEB1770);
  return v18;
}

uint64_t GameCenterActivityFeedCard.data.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_data;
  v4 = sub_1E1AF07CC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GameCenterActivityFeedCard.init(id:data:profileActionMetrics:profileAvatarActionMetrics:leaderboardActionMetrics:achievementActionMetrics:appActionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v34 = a2;
  v35 = a3;
  v16 = sub_1E1AEFEAC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v20 = sub_1E1AEFE7C();
    v32 = a4;
    v33 = a5;
    v21 = a6;
    v22 = a8;
    v23 = v20;
    v24 = a7;
    v26 = v25;
    (*(v17 + 8))(v19, v16);
    v36 = v23;
    v37 = v26;
    a8 = v22;
    a6 = v21;
    a7 = v24;
    a4 = v32;
    a5 = v33;
    sub_1E1AF6F6C();
    sub_1E1308058(&v38, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  v27 = v42;
  *(v9 + 16) = v41;
  *(v9 + 32) = v27;
  *(v9 + 48) = v43;
  v28 = OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_data;
  v29 = sub_1E1AF07CC();
  (*(*(v29 - 8) + 32))(v9 + v28, v34, v29);
  sub_1E137F600(v35, v9 + OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_profileActionMetrics, &qword_1ECEBB7C0);
  sub_1E137F600(a4, v9 + OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_profileAvatarActionMetrics, &qword_1ECEBB7C0);
  sub_1E137F600(a5, v9 + OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_leaderboardActionMetrics, &qword_1ECEBB7C0);
  sub_1E137F600(a6, v9 + OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_achievementActionMetrics, &qword_1ECEBB7C0);
  sub_1E137F600(a7, v9 + OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_appActionMetrics, &qword_1ECEBB7C0);
  sub_1E137F600(a8, v9 + OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_impressionMetrics, &unk_1ECEB1770);
  return v9;
}

uint64_t GameCenterActivityFeedCard.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  GameCenterActivityFeedCard.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t GameCenterActivityFeedCard.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v190 = a2;
  v182 = v3;
  v176 = *v3;
  v168 = sub_1E1AF07CC();
  v167 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v166 = &v139 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v165 = &v139 - v7;
  v183 = sub_1E1AF39DC();
  v181 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v164 = &v139 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBB7C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v161 = &v139 - v10;
  v149 = sub_1E1AEFEAC();
  v148 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v147 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBDF0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v163 = &v139 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v175 = &v139 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBBDF8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v162 = &v139 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v174 = (&v139 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v160 = &v139 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v159 = &v139 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v158 = &v139 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v173 = &v139 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v180 = &v139 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v179 = &v139 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = &v139 - v33;
  v35 = sub_1E1AF5A6C();
  v177 = *(v35 - 8);
  v178 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v172 = &v139 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1E1AF380C();
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v157 = &v139 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v156 = &v139 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v154 = &v139 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v153 = &v139 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v152 = &v139 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v151 = &v139 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v150 = &v139 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v171 = &v139 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v139 - v55;
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v139 - v58;
  v60 = 0xE400000000000000;
  v61 = a1;
  sub_1E1AF381C();
  v170 = sub_1E1AF37CC();
  v63 = v62;
  v66 = *(v38 + 8);
  v64 = v38 + 8;
  v65 = v66;
  v66(v59, v37);
  if (!v63)
  {
    v70 = v61;
    v72 = 2036625250;
    v69 = v37;
    v71 = v182;
    goto LABEL_5;
  }

  v169 = v63;
  v60 = 0x80000001E1B82D60;
  sub_1E1AF381C();
  sub_1E1AF374C();
  v65(v56, v37);
  v68 = v177;
  v67 = v178;
  v69 = v37;
  if ((*(v177 + 48))(v34, 1, v178) == 1)
  {
    v70 = v61;

    sub_1E1308058(v34, &qword_1ECEB1F90);
    v71 = v182;
    v72 = 0xD000000000000014;
LABEL_5:
    v73 = sub_1E1AF5A7C();
    sub_1E19C5DD8(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v74 = v72;
    v74[1] = v60;
    v74[2] = v176;
    (*(*(v73 - 8) + 104))(v74, *MEMORY[0x1E69AB690], v73);
    swift_willThrow();
    (*(v181 + 8))(v190, v183);
    v65(v70, v69);
    swift_deallocPartialClassInstance();
    return v71;
  }

  (*(v68 + 32))(v172, v34, v67);
  v75 = v171;
  sub_1E1AF381C();
  v146 = sub_1E1AF37CC();
  v145 = v76;
  v65(v75, v37);
  v140 = sub_1E1AF061C();
  v77 = v155;
  v78 = sub_1E1AF59FC();
  v79 = v182;
  v155 = v77;
  if (!v77)
  {
    v80 = v78;
    v81 = v61;
    v82 = v150;
    v184 = v81;
    sub_1E1AF381C();
    sub_1E1AF37CC();
    v84 = v83;
    v65(v82, v69);
    v144 = v80;
    if (v84)
    {
      sub_1E1AEFCAC();
    }

    else
    {
      v85 = sub_1E1AEFCCC();
      (*(*(v85 - 8) + 56))(v179, 1, 1, v85);
    }

    v86 = v174;
    v87 = v151;
    sub_1E1AF381C();
    sub_1E1AF37CC();
    v89 = v88;
    v65(v87, v69);
    if (v89)
    {
      sub_1E1AEFCAC();
    }

    else
    {
      v90 = sub_1E1AEFCCC();
      (*(*(v90 - 8) + 56))(v180, 1, 1, v90);
    }

    v91 = v152;
    sub_1E1AF381C();
    v92 = sub_1E1AF37CC();
    v94 = v93;
    v65(v91, v69);
    if (v94)
    {
      v151 = v94;
      v152 = v92;
    }

    else
    {

      v152 = v170;
      v151 = v95;
    }

    v96 = v153;
    sub_1E1AF381C();
    v97 = sub_1E1AF37CC();
    v99 = v98;
    v65(v96, v69);
    if (v99)
    {
      v100 = MEMORY[0x1E69A02E0];
      *v86 = v97;
      v86[1] = v99;
      v101 = v140;
      v102 = *(v140 - 8);
      (*(v102 + 104))(v86, *v100, v140);
      v103 = 0;
    }

    else
    {
      v101 = v140;
      v102 = *(v140 - 8);
      v103 = 1;
    }

    (*(v102 + 56))(v86, v103, 1, v101);
    v104 = v154;
    sub_1E1AF381C();
    sub_1E1AF37CC();
    v106 = v105;
    v65(v104, v69);
    if (v106)
    {
      sub_1E1AEFCAC();
    }

    else
    {
      v107 = sub_1E1AEFCCC();
      (*(*(v107 - 8) + 56))(v173, 1, 1, v107);
    }

    v108 = v156;
    sub_1E1AF381C();
    sub_1E1AF37CC();
    v110 = v109;
    v65(v108, v69);
    if (v110)
    {
      sub_1E1AF086C();
    }

    else
    {
      v111 = sub_1E1AF088C();
      (*(*(v111 - 8) + 56))(v175, 1, 1, v111);
    }

    v112 = v157;
    sub_1E1AF381C();
    v113 = sub_1E1AF37CC();
    v143 = v64;
    v142 = v69;
    v141 = v65;
    if (v114)
    {
      v185 = v113;
      v186 = v114;
    }

    else
    {
      v115 = v147;
      sub_1E1AEFE9C();
      v116 = sub_1E1AEFE7C();
      v118 = v117;
      (*(v148 + 8))(v115, v149);
      v185 = v116;
      v186 = v118;
    }

    sub_1E1AF6F6C();
    v65(v112, v69);
    v119 = v188;
    v79[1] = v187;
    v79[2] = v119;
    *(v79 + 6) = v189;
    sub_1E1AF3E1C();
    sub_1E1AF381C();
    v120 = (v181 + 16);
    v176 = *(v181 + 16);
    v121 = v164;
    v122 = v183;
    v176(v164, v190, v183);
    v123 = v161;
    sub_1E1AF464C();
    v124 = v79;
    sub_1E137F600(v123, v79 + OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_profileActionMetrics, &qword_1ECEBB7C0);
    sub_1E1AF381C();
    v125 = v190;
    v126 = v122;
    v127 = v176;
    v176(v121, v190, v126);
    sub_1E1AF464C();
    sub_1E137F600(v123, v124 + OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_profileAvatarActionMetrics, &qword_1ECEBB7C0);
    sub_1E1AF381C();
    v128 = v125;
    v129 = v183;
    v127(v121, v128, v183);
    v157 = v120;
    sub_1E1AF464C();
    sub_1E137F600(v123, v124 + OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_leaderboardActionMetrics, &qword_1ECEBB7C0);
    sub_1E1AF381C();
    v127(v121, v190, v129);
    sub_1E1AF464C();
    v130 = v182;
    sub_1E137F600(v123, v182 + OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_achievementActionMetrics, &qword_1ECEBB7C0);
    sub_1E1AF381C();
    v131 = v190;
    v176(v121, v190, v129);
    sub_1E1AF464C();
    sub_1E137F600(v123, v130 + OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_appActionMetrics, &qword_1ECEBB7C0);
    sub_1E1AF46DC();
    sub_1E1AF381C();
    v176(v121, v131, v183);
    v132 = v165;
    sub_1E1AF464C();
    sub_1E137F600(v132, v130 + OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_impressionMetrics, &unk_1ECEB1770);
    sub_1E134FD1C(v179, v158, &unk_1ECEB4B60);
    sub_1E134FD1C(v180, v159, &unk_1ECEB4B60);
    v133 = v174;
    sub_1E134FD1C(v174, v162, &qword_1ECEBBDF8);
    v134 = v173;
    sub_1E134FD1C(v173, v160, &unk_1ECEB4B60);
    v135 = v175;
    sub_1E134FD1C(v175, v163, &qword_1ECEBBDF0);
    v136 = v166;
    sub_1E1AF075C();
    (*(v181 + 8))(v190, v183);
    v141(v184, v142);
    v137 = v135;
    v71 = v130;
    sub_1E1308058(v137, &qword_1ECEBBDF0);
    sub_1E1308058(v134, &unk_1ECEB4B60);
    sub_1E1308058(v133, &qword_1ECEBBDF8);
    sub_1E1308058(v180, &unk_1ECEB4B60);
    sub_1E1308058(v179, &unk_1ECEB4B60);
    (*(v177 + 8))(v172, v178);
    (*(v167 + 32))(v130 + OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_data, v136, v168);
    return v71;
  }

  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_1E19C53F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E1AF380C();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1, v5);
  return sub_1E19C54C8(v7, a2);
}

uint64_t sub_1E19C54C8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = sub_1E1AF380C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B28);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v46 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - v13;
  v15 = sub_1E1AF061C();
  v52 = *(v15 - 8);
  v53 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v47 = (&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = a1;
  sub_1E1AF368C();
  v17 = sub_1E1AF40DC();
  v18 = *(v17 - 8);
  v50 = *(v18 + 48);
  v19 = v50(v14, 1, v17);
  v48 = v6;
  v49 = v4;
  if (v19 == 1)
  {
    v20 = v3;
    sub_1E1308058(v14, &qword_1ECEB2B28);
  }

  else
  {
    sub_1E1AF40EC();
    (*(v18 + 8))(v14, v17);
    v21 = sub_1E1AF37CC();
    v23 = v22;
    v24 = *(v4 + 8);
    v25 = v6;
    v20 = v3;
    v24(v25, v3);
    if (v23)
    {
      v24(v51, v3);
      v26 = v47;
      *v47 = v21;
      v27 = MEMORY[0x1E69A02E0];
      v28 = 1;
      v29 = v54;
      v30 = v52;
      goto LABEL_5;
    }
  }

  v33 = v51;
  sub_1E1AF368C();
  if (v50(v11, 1, v17) == 1)
  {
    (*(v49 + 8))(v33, v20);
    v34 = v11;
LABEL_11:
    sub_1E1308058(v34, &qword_1ECEB2B28);
LABEL_13:
    v32 = 1;
    v31 = v53;
    v29 = v54;
    v30 = v52;
    return (*(v30 + 56))(v29, v32, 1, v31);
  }

  v35 = v48;
  sub_1E1AF40EC();
  v45 = *(v18 + 8);
  v45(v11, v17);
  v36 = sub_1E1AF37CC();
  v38 = v37;
  v39 = *(v49 + 8);
  v39(v35, v20);
  if (!v38)
  {
    v39(v33, v20);
    goto LABEL_13;
  }

  v49 = v36;
  v40 = v46;
  sub_1E1AF368C();
  if (v50(v40, 1, v17) == 1)
  {
    v39(v33, v20);

    v34 = v40;
    goto LABEL_11;
  }

  v42 = v48;
  sub_1E1AF40EC();
  v45(v40, v17);
  v43 = sub_1E1AF37CC();
  v23 = v44;
  v39(v33, v20);
  v39(v42, v20);
  v30 = v52;
  if (!v23)
  {

    v32 = 1;
    v31 = v53;
    v29 = v54;
    return (*(v30 + 56))(v29, v32, 1, v31);
  }

  v26 = v47;
  *v47 = v49;
  v26[1] = v38;
  v26[2] = v43;
  v28 = 3;
  v27 = MEMORY[0x1E69A02E8];
  v29 = v54;
LABEL_5:
  v26[v28] = v23;
  v31 = v53;
  (*(v30 + 104))(v26, *v27, v53);
  (*(v30 + 32))(v29, v26, v31);
  v32 = 0;
  return (*(v30 + 56))(v29, v32, 1, v31);
}

uint64_t GameCenterActivityFeedCard.deinit()
{
  sub_1E134B88C(v0 + 16);
  v1 = OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_data;
  v2 = sub_1E1AF07CC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_profileActionMetrics, &qword_1ECEBB7C0);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_profileAvatarActionMetrics, &qword_1ECEBB7C0);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_leaderboardActionMetrics, &qword_1ECEBB7C0);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_achievementActionMetrics, &qword_1ECEBB7C0);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_appActionMetrics, &qword_1ECEBB7C0);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_impressionMetrics, &unk_1ECEB1770);
  return v0;
}

uint64_t GameCenterActivityFeedCard.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 16);
  v1 = OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_data;
  v2 = sub_1E1AF07CC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_profileActionMetrics, &qword_1ECEBB7C0);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_profileAvatarActionMetrics, &qword_1ECEBB7C0);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_leaderboardActionMetrics, &qword_1ECEBB7C0);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_achievementActionMetrics, &qword_1ECEBB7C0);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_appActionMetrics, &qword_1ECEBB7C0);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit26GameCenterActivityFeedCard_impressionMetrics, &unk_1ECEB1770);

  return swift_deallocClassInstance();
}

uint64_t sub_1E19C5CC8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = GameCenterActivityFeedCard.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E19C5DD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for GameCenterActivityFeedCard()
{
  result = qword_1EE1EA9C8;
  if (!qword_1EE1EA9C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E19C5E74()
{
  sub_1E1AF07CC();
  if (v0 <= 0x3F)
  {
    sub_1E19C6018(319, &qword_1EE1E3B08, MEMORY[0x1E69AB000]);
    if (v1 <= 0x3F)
    {
      sub_1E19C6018(319, &qword_1EE1E39F0, MEMORY[0x1E69AB1E8]);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1E19C6018(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E1AF6D9C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

int8x16_t FrameAccumulator.init(mode:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 17) = 0;
  v3 = vdup_n_s32(v2);
  v4.i64[0] = v3.u32[0];
  v4.i64[1] = v3.u32[1];
  result = vandq_s8(xmmword_1E1B04B80, vcltzq_s64(vshlq_n_s64(v4, 0x3FuLL)));
  *(a2 + 40) = result;
  *(a2 + 24) = result;
  *(a2 + 56) = xmmword_1E1B04B80;
  return result;
}

void FrameAccumulator.add(frame:with:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8)
{
  *(v8 + 17) = 1;
  if (*(v8 + 16))
  {

    sub_1E19C636C(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    sub_1E19C64F8(a1, a2, a3, a4, a5, a6, a7, a8, *v8, *(v8 + 8));
  }
}

uint64_t FrameAccumulator.layoutRect()()
{
  if (*(v0 + 17) == 1)
  {
    return sub_1E1AF107C();
  }

  else
  {
    return sub_1E1AF10AC();
  }
}

double FrameAccumulator.measurements()()
{
  v1 = sub_1E1AF1D6C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AF111C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 17) == 1)
  {
    sub_1E1AF107C();
  }

  else
  {
    sub_1E1AF10AC();
  }

  sub_1E1AF109C();
  v10 = v9;
  sub_1E1AF109C();
  sub_1E1AF110C();
  sub_1E1AF1D2C();
  v11 = *(v2 + 8);
  v11(v4, v1);
  sub_1E1AF110C();
  sub_1E1AF1CFC();
  v11(v4, v1);
  (*(v6 + 8))(v8, v5);
  return v10;
}

void sub_1E19C636C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8)
{
  if (CGRectGetMinY(*&a1) < v8[3])
  {
    v19.origin.x = a1;
    v19.origin.y = a2;
    v19.size.width = a3;
    v19.size.height = a4;
    v8[3] = CGRectGetMinY(v19);
  }

  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  if (v8[4] < CGRectGetMaxY(v20))
  {
    v21.origin.x = a1;
    v21.origin.y = a2;
    v21.size.width = a3;
    v21.size.height = a4;
    v8[4] = CGRectGetMaxY(v21);
  }

  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  if (CGRectGetMinX(v22) < v8[5])
  {
    v23.origin.x = a1;
    v23.origin.y = a2;
    v23.size.width = a3;
    v23.size.height = a4;
    v8[5] = CGRectGetMinX(v23);
  }

  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  if (v8[6] < CGRectGetMaxX(v24))
  {
    v25.origin.x = a1;
    v25.origin.y = a2;
    v25.size.width = a3;
    v25.size.height = a4;
    v8[6] = CGRectGetMaxX(v25);
  }

  v26.origin.x = a1;
  v26.origin.y = a2;
  v26.size.width = a3;
  v26.size.height = a4;
  v15 = CGRectGetMinY(v26) + a7;
  v16 = v8[7];
  if (v15 < v16)
  {
    v8[7] = v15;
    v16 = v15;
  }

  v17 = v8[8];
  if (v17 < v15)
  {
    v8[8] = v15;
    v17 = v15;
  }

  v27.origin.x = a1;
  v27.origin.y = a2;
  v27.size.width = a3;
  v27.size.height = a4;
  v18 = CGRectGetMaxY(v27) - a8;
  if (v18 < v16)
  {
    v8[7] = v18;
  }

  if (v17 < v18)
  {
    v8[8] = v18;
  }
}

void sub_1E19C64F8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  if (v18[4] < CGRectGetMaxY(*&a1))
  {
    v29.origin.x = a1;
    v29.origin.y = a2;
    v29.size.width = a3;
    v29.size.height = a4;
    if (CGRectGetMaxY(v29) <= a10)
    {
      v30.origin.x = a1;
      v30.origin.y = a2;
      v30.size.width = a3;
      v30.size.height = a4;
      v18[4] = CGRectGetMaxY(v30);
    }
  }

  v31.origin.x = a1;
  v31.origin.y = a2;
  v31.size.width = a3;
  v31.size.height = a4;
  if (v18[6] < CGRectGetMaxX(v31))
  {
    v32.origin.x = a1;
    v32.origin.y = a2;
    v32.size.width = a3;
    v32.size.height = a4;
    if (CGRectGetMaxX(v32) <= a9)
    {
      v33.origin.x = a1;
      v33.origin.y = a2;
      v33.size.width = a3;
      v33.size.height = a4;
      v18[6] = CGRectGetMaxX(v33);
    }
  }

  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  v25 = CGRectGetMinY(v34) + a7;
  if (v25 > 0.0 && v25 <= a10)
  {
    if (v25 < v18[7])
    {
      v18[7] = v25;
    }

    if (v18[8] < v25)
    {
      v18[8] = v25;
    }
  }

  v35.origin.x = a1;
  v35.origin.y = a2;
  v35.size.width = a3;
  v35.size.height = a4;
  v27 = CGRectGetMaxY(v35) - a8;
  if (v27 > 0.0 && v27 <= a10)
  {
    if (v27 < v18[7])
    {
      v18[7] = v27;
    }

    if (v18[8] < v27)
    {
      v18[8] = v27;
    }
  }
}

uint64_t sub_1E19C666C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 72))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1E19C66C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

void *CondensedSearchResultCardLayout.init(metrics:artwork:headerText:titleText:viewButton:isTextBaselineAligned:)@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v11 = *(a2 + 16);
  v12 = (a7 + 536);
  *v12 = *a2;
  v12[1] = v11;
  *(a7 + 568) = *(a2 + 32);
  v13 = *(a3 + 16);
  *(a7 + 576) = *a3;
  *(a7 + 592) = v13;
  *(a7 + 608) = *(a3 + 32);
  sub_1E1308EC0(a4, a7 + 616);
  sub_1E1308EC0(a5, a7 + 656);
  result = memcpy(a7, a1, 0x218uLL);
  *(a7 + 696) = a6;
  return result;
}

uint64_t CondensedSearchResultCardLayout.Configuration.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

uint64_t CondensedSearchResultCardLayout.layout.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v67 = a1;
  v3 = sub_1E1AF13EC();
  v65 = *(v3 - 8);
  v66 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v62 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v64 = &v51 - v6;
  v60 = sub_1E1AF1B9C();
  v58 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v51 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v51 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v56 = &v51 - v13;
  v63 = sub_1E1AF15FC();
  v71 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v68 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v70 = &v51 - v16;
  v17 = sub_1E1AF1B0C();
  v51 = *(v17 - 8);
  v52 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v69 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1300B24(v1 + 656, v72);
  MEMORY[0x1E68FA410](0x4051000000000000, 0, 0, 1);
  MEMORY[0x1E68FA410](0, 1, 0, 1);
  v20 = v19;
  v22 = v21;
  v81 = sub_1E1AF1D7C();
  v82 = MEMORY[0x1E69ABB98];
  __swift_allocate_boxed_opaque_existential_0(v80);
  LOBYTE(v77[0]) = v20 & 1;
  LOBYTE(v76[0]) = v22 & 1;
  sub_1E1AF1D8C();
  sub_1E1300B24(v1 + 376, v77);
  v23 = sub_1E1AF140C();
  v24 = MEMORY[0x1E69AB908];
  v76[3] = v23;
  v76[4] = MEMORY[0x1E69AB908];
  __swift_allocate_boxed_opaque_existential_0(v76);
  sub_1E1AF13FC();
  v75[3] = v23;
  v75[4] = v24;
  __swift_allocate_boxed_opaque_existential_0(v75);
  sub_1E1AF13FC();
  v55 = v23;
  v74[3] = v23;
  v74[4] = v24;
  __swift_allocate_boxed_opaque_existential_0(v74);
  sub_1E1AF13FC();
  v54 = sub_1E1AF1BEC();
  *(&v72[1] + 1) = v54;
  *&v72[2] = MEMORY[0x1E69ABB40];
  __swift_allocate_boxed_opaque_existential_0(v72);
  sub_1E1AF1BFC();
  sub_1E1AF1B4C();
  v53 = sub_1E1AF1B5C();
  v81 = v53;
  v82 = MEMORY[0x1E69ABAF0];
  __swift_allocate_boxed_opaque_existential_0(v80);
  sub_1E1AF1B6C();
  (*(v51 + 104))(v69, *MEMORY[0x1E69ABAD0], v52);
  sub_1E1AF15DC();
  sub_1E13C0718(v2 + 536, v72);
  if (*(&v72[1] + 1))
  {
    sub_1E1308EC0(v72, v77);
  }

  else
  {
    v25 = type metadata accessor for EmptyPlaceable();
    v26 = swift_allocObject();
    v78 = v25;
    v79 = sub_1E19C9478();
    v77[0] = v26;
  }

  v27 = *(v2 + 200);
  v28 = MEMORY[0x1E69E7DE0];
  v29 = MEMORY[0x1E69AB858];
  v30 = v56;
  *(v56 + 3) = MEMORY[0x1E69E7DE0];
  *(v30 + 4) = v29;
  *v30 = v27;
  v31 = *MEMORY[0x1E69ABB00];
  v32 = *(v58 + 104);
  v33 = v60;
  v32(v30, v31, v60);
  v34 = *(v2 + 208);
  v35 = v57;
  *(v57 + 3) = v28;
  *(v35 + 4) = v29;
  *v35 = v34;
  v32(v35, v31, v33);
  v36 = *MEMORY[0x1E69ABB08];
  v32(v59, v36, v33);
  v32(v61, v36, v33);
  *(&v72[1] + 1) = sub_1E1AF1BAC();
  *&v72[2] = MEMORY[0x1E69ABB10];
  __swift_allocate_boxed_opaque_existential_0(v72);
  sub_1E1AF1BBC();
  sub_1E1300B24(v2, v76);
  sub_1E1300B24(v2 + 80, v75);
  sub_1E1300B24(v2 + 120, v74);
  v73[3] = v55;
  v73[4] = MEMORY[0x1E69AB908];
  __swift_allocate_boxed_opaque_existential_0(v73);
  sub_1E1AF13FC();
  v78 = v54;
  v79 = MEMORY[0x1E69ABB40];
  __swift_allocate_boxed_opaque_existential_0(v77);
  sub_1E1AF1BFC();
  sub_1E1AF1B4C();
  *(&v72[1] + 1) = v53;
  *&v72[2] = MEMORY[0x1E69ABAF0];
  __swift_allocate_boxed_opaque_existential_0(v72);
  sub_1E1AF1B6C();
  v37 = v68;
  sub_1E1AF15EC();
  v38 = *(v71 + 8);
  v39 = v63;
  v71 += 8;
  v38(v37, v63);
  __swift_destroy_boxed_opaque_existential_1(v72);
  v40 = v62;
  sub_1E1AF13CC();
  sub_1E13C0718(v2 + 576, v72);
  if (*(&v72[1] + 1))
  {
    sub_1E1308EC0(v72, v77);
  }

  else
  {
    v41 = type metadata accessor for EmptyPlaceable();
    v42 = swift_allocObject();
    v78 = v41;
    v79 = sub_1E19C9478();
    v77[0] = v42;
  }

  sub_1E19C94D0(v2, v72);
  v43 = swift_allocObject();
  memcpy((v43 + 16), v72, 0x2B9uLL);
  v44 = v64;
  sub_1E1AF13DC();

  v45 = *(v65 + 8);
  v46 = v40;
  v47 = v66;
  v45(v46, v66);
  __swift_destroy_boxed_opaque_existential_1(v77);
  sub_1E19C94D0(v2, v72);
  v48 = swift_allocObject();
  memcpy((v48 + 16), v72, 0x2B9uLL);
  v78 = v47;
  v79 = MEMORY[0x1E69AB8F8];
  __swift_allocate_boxed_opaque_existential_0(v77);
  sub_1E1AF13DC();

  v45(v44, v47);
  *(&v72[1] + 1) = v39;
  *&v72[2] = MEMORY[0x1E69AB968];
  __swift_allocate_boxed_opaque_existential_0(v72);
  v49 = v70;
  sub_1E1AF15EC();
  v38(v49, v39);
  __swift_destroy_boxed_opaque_existential_1(v77);
  return sub_1E1AF1B2C();
}

uint64_t sub_1E19C7390(uint64_t a1, uint64_t a2)
{
  sub_1E1300B24(a2 + 256, v4);
  sub_1E1AF134C();
  sub_1E1300B24(a2 + 296, v4);
  return sub_1E1AF135C();
}

double sub_1E19C73F4()
{
  v0 = sub_1E1AF1B1C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  CondensedSearchResultCardLayout.layout.getter(v3);
  sub_1E1AF1DAC();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t sub_1E19C7518()
{
  v0 = sub_1E1AF1B1C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  CondensedSearchResultCardLayout.layout.getter(v3);
  sub_1E1AF1D9C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1E19C762C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E19C97EC();

  return MEMORY[0x1EEE17F00](a1, a2, v4);
}

id sub_1E19C7690()
{
  v0 = sub_1E1AF12AC();
  __swift_allocate_value_buffer(v0, qword_1ECEBBE00);
  v1 = __swift_project_value_buffer(v0, qword_1ECEBBE00);
  v4 = *MEMORY[0x1E69DDD10];
  v2 = *MEMORY[0x1E69DB980];
  *v1 = *MEMORY[0x1E69DDD10];
  v1[1] = v2;
  (*(*(v0 - 8) + 104))();

  return v4;
}

uint64_t sub_1E19C7764()
{
  v0 = sub_1E1AF105C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = (&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MEMORY[0x1E69ABBA8];
  v58 = MEMORY[0x1E69E63B0];
  v59 = MEMORY[0x1E69ABBA8];
  v56 = MEMORY[0x1E69ABBA8];
  *&v57 = 0x4000000000000000;
  v55 = MEMORY[0x1E69E63B0];
  v53 = MEMORY[0x1E69ABBA8];
  *&v54 = 0x4000000000000000;
  v52 = MEMORY[0x1E69E63B0];
  v50 = MEMORY[0x1E69ABBA8];
  *&v51 = 0x4000000000000000;
  v49 = MEMORY[0x1E69E63B0];
  *&v48 = 0x4028000000000000;
  v6 = *MEMORY[0x1E69DDCF8];
  *v4 = *MEMORY[0x1E69DDCF8];
  v19 = *MEMORY[0x1E69AB868];
  v18 = v1[13];
  v18(v4, v2);
  v17 = sub_1E1AF166C();
  v46 = v17;
  v47 = MEMORY[0x1E69AB980];
  __swift_allocate_boxed_opaque_existential_0(&v45);
  v43 = v0;
  v44 = MEMORY[0x1E69AB870];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v42);
  v16 = v1[2];
  v16(boxed_opaque_existential_0, v4, v0);
  v15 = v6;
  sub_1E1AF167C();
  v8 = v1[1];
  v8(v4, v0);
  v9 = sub_1E1AF140C();
  v10 = MEMORY[0x1E69AB908];
  v43 = v9;
  v44 = MEMORY[0x1E69AB908];
  __swift_allocate_boxed_opaque_existential_0(&v42);
  sub_1E1AF13FC();
  v40 = v9;
  v41 = v10;
  __swift_allocate_boxed_opaque_existential_0(&v39);
  sub_1E1AF13FC();
  v37 = v9;
  v38 = v10;
  __swift_allocate_boxed_opaque_existential_0(&v36);
  sub_1E1AF13FC();
  v34 = v9;
  v35 = v10;
  __swift_allocate_boxed_opaque_existential_0(&v33);
  sub_1E1AF13FC();
  v32 = v5;
  v31 = MEMORY[0x1E69E63B0];
  v29 = v5;
  *&v30 = 0x4030000000000000;
  v28 = MEMORY[0x1E69E63B0];
  v26 = v5;
  *&v27 = 0x4000000000000000;
  v25 = MEMORY[0x1E69E63B0];
  *&v24 = 0x4030000000000000;
  v11 = v15;
  *v4 = v15;
  (v18)(v4, v19, v0);
  v22 = v17;
  v23 = MEMORY[0x1E69AB980];
  __swift_allocate_boxed_opaque_existential_0(&v21);
  v20[3] = v0;
  v20[4] = MEMORY[0x1E69AB870];
  v12 = __swift_allocate_boxed_opaque_existential_0(v20);
  v16(v12, v4, v0);
  v13 = v11;
  sub_1E1AF167C();
  v8(v4, v0);
  sub_1E1308EC0(&v57, &unk_1ECEBBE30);
  sub_1E1308EC0(&v54, &unk_1ECEBBE58);
  sub_1E1308EC0(&v51, &unk_1ECEBBE80);
  sub_1E1308EC0(&v48, &unk_1ECEBBEA8);
  sub_1E1308EC0(&v45, &unk_1ECEBBED0);
  qword_1ECEBBEF8 = 0;
  unk_1ECEBBF00 = 0;
  sub_1E1308EC0(&v42, &unk_1ECEBBF08);
  sub_1E1308EC0(&v39, &unk_1ECEBBF30);
  sub_1E1308EC0(&v36, &unk_1ECEBBF58);
  sub_1E1308EC0(&v33, &unk_1ECEBBF80);
  sub_1E1308EC0(&v30, &unk_1ECEBBFA8);
  sub_1E1308EC0(&v27, &unk_1ECEBBFD0);
  sub_1E1308EC0(&v24, &unk_1ECEBBFF8);
  return sub_1E1308EC0(&v21, &unk_1ECEBC020);
}

double sub_1E19C7B98(uint64_t a1)
{
  v2 = sub_1E1AF105C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECEB1660 != -1)
  {
    swift_once();
  }

  v6 = sub_1E1AF12AC();
  v7 = __swift_project_value_buffer(v6, qword_1ECEBC048);
  v8 = (*(v6 - 8) + 16);
  v9 = *v8;
  (*v8)(v5, v7, v6);
  v10 = v3[13];
  v32 = *MEMORY[0x1E69AB860];
  v30 = v3 + 13;
  v31 = v10;
  v10(v5);
  v29 = sub_1E1AF166C();
  v37 = v29;
  v38 = MEMORY[0x1E69AB980];
  __swift_allocate_boxed_opaque_existential_0(&v36);
  v34 = v2;
  v35 = MEMORY[0x1E69AB870];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33);
  v27 = v3[2];
  v28 = v3 + 2;
  v27(boxed_opaque_existential_0, v5, v2);
  sub_1E1AF167C();
  v12 = v3[1];
  v25 = v3 + 1;
  v26 = v12;
  v12(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1 + 216);
  sub_1E1308EC0(&v36, a1 + 216);
  if (qword_1ECEB1668 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v6, qword_1ECEBC060);
  v21 = v9;
  v9(v5, v24, v6);
  v23 = v6;
  v13 = v31;
  v31(v5, v32, v2);
  v14 = v29;
  v37 = v29;
  v38 = MEMORY[0x1E69AB980];
  __swift_allocate_boxed_opaque_existential_0(&v36);
  v22 = v8;
  v34 = v2;
  v35 = MEMORY[0x1E69AB870];
  v15 = __swift_allocate_boxed_opaque_existential_0(v33);
  v16 = v27;
  v27(v15, v5, v2);
  sub_1E1AF167C();
  v17 = v26;
  v26(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1 + 256);
  sub_1E1308EC0(&v36, a1 + 256);
  v21(v5, v24, v23);
  v13(v5, v32, v2);
  v37 = v14;
  v38 = MEMORY[0x1E69AB980];
  __swift_allocate_boxed_opaque_existential_0(&v36);
  v34 = v2;
  v35 = MEMORY[0x1E69AB870];
  v18 = __swift_allocate_boxed_opaque_existential_0(v33);
  v16(v18, v5, v2);
  sub_1E1AF167C();
  v17(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1 + 296);
  sub_1E1308EC0(&v36, a1 + 296);
  result = 60.0;
  *(a1 + 200) = xmmword_1E1B49C30;
  return result;
}

double sub_1E19C8014(uint64_t a1)
{
  v2 = sub_1E1AF105C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECEB1678 != -1)
  {
    swift_once();
  }

  v6 = sub_1E1AF12AC();
  v7 = __swift_project_value_buffer(v6, qword_1ECEBC290);
  v8 = (*(v6 - 8) + 16);
  v9 = *v8;
  (*v8)(v5, v7, v6);
  v10 = v3[13];
  v32 = *MEMORY[0x1E69AB860];
  v30 = v3 + 13;
  v31 = v10;
  v10(v5);
  v29 = sub_1E1AF166C();
  v37 = v29;
  v38 = MEMORY[0x1E69AB980];
  __swift_allocate_boxed_opaque_existential_0(&v36);
  v34 = v2;
  v35 = MEMORY[0x1E69AB870];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33);
  v27 = v3[2];
  v28 = v3 + 2;
  v27(boxed_opaque_existential_0, v5, v2);
  sub_1E1AF167C();
  v12 = v3[1];
  v25 = v3 + 1;
  v26 = v12;
  v12(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1 + 216);
  sub_1E1308EC0(&v36, a1 + 216);
  if (qword_1ECEB1680 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v6, qword_1ECEBC2A8);
  v21 = v9;
  v9(v5, v24, v6);
  v23 = v6;
  v13 = v31;
  v31(v5, v32, v2);
  v14 = v29;
  v37 = v29;
  v38 = MEMORY[0x1E69AB980];
  __swift_allocate_boxed_opaque_existential_0(&v36);
  v22 = v8;
  v34 = v2;
  v35 = MEMORY[0x1E69AB870];
  v15 = __swift_allocate_boxed_opaque_existential_0(v33);
  v16 = v27;
  v27(v15, v5, v2);
  sub_1E1AF167C();
  v17 = v26;
  v26(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1 + 256);
  sub_1E1308EC0(&v36, a1 + 256);
  v21(v5, v24, v23);
  v13(v5, v32, v2);
  v37 = v14;
  v38 = MEMORY[0x1E69AB980];
  __swift_allocate_boxed_opaque_existential_0(&v36);
  v34 = v2;
  v35 = MEMORY[0x1E69AB870];
  v18 = __swift_allocate_boxed_opaque_existential_0(v33);
  v16(v18, v5, v2);
  sub_1E1AF167C();
  v17(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1 + 296);
  sub_1E1308EC0(&v36, a1 + 296);
  result = 106.0;
  *(a1 + 200) = xmmword_1E1B49C40;
  return result;
}

double sub_1E19C8468(uint64_t a1)
{
  v2 = sub_1E1AF105C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECEB1690 != -1)
  {
    swift_once();
  }

  v6 = sub_1E1AF12AC();
  v7 = __swift_project_value_buffer(v6, qword_1ECEBC4D8);
  v8 = (*(v6 - 8) + 16);
  v9 = *v8;
  (*v8)(v5, v7, v6);
  v10 = v3[13];
  v32 = *MEMORY[0x1E69AB860];
  v30 = v3 + 13;
  v31 = v10;
  v10(v5);
  v29 = sub_1E1AF166C();
  v37 = v29;
  v38 = MEMORY[0x1E69AB980];
  __swift_allocate_boxed_opaque_existential_0(&v36);
  v34 = v2;
  v35 = MEMORY[0x1E69AB870];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33);
  v27 = v3[2];
  v28 = v3 + 2;
  v27(boxed_opaque_existential_0, v5, v2);
  sub_1E1AF167C();
  v12 = v3[1];
  v25 = v3 + 1;
  v26 = v12;
  v12(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1 + 216);
  sub_1E1308EC0(&v36, a1 + 216);
  if (qword_1ECEB1698 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v6, qword_1ECEBC4F0);
  v21 = v9;
  v9(v5, v24, v6);
  v23 = v6;
  v13 = v31;
  v31(v5, v32, v2);
  v14 = v29;
  v37 = v29;
  v38 = MEMORY[0x1E69AB980];
  __swift_allocate_boxed_opaque_existential_0(&v36);
  v22 = v8;
  v34 = v2;
  v35 = MEMORY[0x1E69AB870];
  v15 = __swift_allocate_boxed_opaque_existential_0(v33);
  v16 = v27;
  v27(v15, v5, v2);
  sub_1E1AF167C();
  v17 = v26;
  v26(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1 + 256);
  sub_1E1308EC0(&v36, a1 + 256);
  v21(v5, v24, v23);
  v13(v5, v32, v2);
  v37 = v14;
  v38 = MEMORY[0x1E69AB980];
  __swift_allocate_boxed_opaque_existential_0(&v36);
  v34 = v2;
  v35 = MEMORY[0x1E69AB870];
  v18 = __swift_allocate_boxed_opaque_existential_0(v33);
  v16(v18, v5, v2);
  sub_1E1AF167C();
  v17(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1 + 296);
  sub_1E1308EC0(&v36, a1 + 296);
  result = 106.0;
  *(a1 + 200) = xmmword_1E1B49C40;
  return result;
}

uint64_t sub_1E19C88C4(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = sub_1E1AF12AC();
  __swift_allocate_value_buffer(v7, a2);
  v8 = __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v7, a4);
  v10 = *(*(v7 - 8) + 16);

  return v10(v8, v9, v7);
}

uint64_t sub_1E19C89AC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (qword_1ECEB1658 != -1)
  {
    swift_once();
  }

  sub_1E19C6754(&unk_1ECEBBE30, v6);
  sub_1E19C6754(v6, a2);
  a3(a2);
  return sub_1E19C9840(v6);
}

uint64_t sub_1E19C8A40(uint64_t a1)
{
  v2 = sub_1E1AF105C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF140C();
  v7 = MEMORY[0x1E69AB908];
  v32 = v6;
  v33 = MEMORY[0x1E69AB908];
  __swift_allocate_boxed_opaque_existential_0(&v31);
  sub_1E1AF13FC();
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_1E1308EC0(&v31, a1);
  v32 = v6;
  v33 = v7;
  __swift_allocate_boxed_opaque_existential_0(&v31);
  sub_1E1AF13FC();
  __swift_destroy_boxed_opaque_existential_1(a1 + 80);
  sub_1E1308EC0(&v31, a1 + 80);
  v8 = MEMORY[0x1E69E63B0];
  v9 = MEMORY[0x1E69ABBA8];
  v32 = MEMORY[0x1E69E63B0];
  v33 = MEMORY[0x1E69ABBA8];
  *&v31 = 0x4032000000000000;
  __swift_destroy_boxed_opaque_existential_1(a1 + 40);
  sub_1E1308EC0(&v31, a1 + 40);
  v32 = v8;
  v33 = v9;
  *&v31 = 0x4032000000000000;
  __swift_destroy_boxed_opaque_existential_1(a1 + 120);
  sub_1E1308EC0(&v31, a1 + 120);
  if (qword_1ECEB16A8 != -1)
  {
    swift_once();
  }

  v10 = sub_1E1AF12AC();
  v11 = __swift_project_value_buffer(v10, qword_1ECEBC720);
  v12 = *(v10 - 8);
  v13 = *(v12 + 16);
  v26 = v12 + 16;
  v27 = v13;
  v13(v5, v11, v10);
  v14 = v3[13];
  v25 = *MEMORY[0x1E69AB860];
  v24 = v14;
  v14(v5);
  v15 = sub_1E1AF166C();
  v32 = v15;
  v33 = MEMORY[0x1E69AB980];
  __swift_allocate_boxed_opaque_existential_0(&v31);
  v29 = v2;
  v30 = MEMORY[0x1E69AB870];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v28);
  v17 = v3[2];
  v17(boxed_opaque_existential_0, v5, v2);
  sub_1E1AF167C();
  v18 = v3[1];
  v18(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1 + 216);
  sub_1E1308EC0(&v31, a1 + 216);
  if (qword_1ECEB16B0 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v10, qword_1ECEBC738);
  v27(v5, v19, v10);
  v24(v5, v25, v2);
  v32 = v15;
  v33 = MEMORY[0x1E69AB980];
  __swift_allocate_boxed_opaque_existential_0(&v31);
  v29 = v2;
  v30 = MEMORY[0x1E69AB870];
  v20 = __swift_allocate_boxed_opaque_existential_0(v28);
  v17(v20, v5, v2);
  sub_1E1AF167C();
  v18(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1 + 256);
  sub_1E1308EC0(&v31, a1 + 256);
  v21 = MEMORY[0x1E69ABBA8];
  v33 = MEMORY[0x1E69ABBA8];
  v22 = MEMORY[0x1E69E63B0];
  v32 = MEMORY[0x1E69E63B0];
  *&v31 = 0x403D000000000000;
  __swift_destroy_boxed_opaque_existential_1(a1 + 296);
  sub_1E1308EC0(&v31, a1 + 296);
  v32 = v22;
  v33 = v21;
  *&v31 = 0x403D000000000000;
  __swift_destroy_boxed_opaque_existential_1(a1 + 336);
  return sub_1E1308EC0(&v31, a1 + 336);
}

uint64_t sub_1E19C8E5C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a3;
  if (*a1 != -1)
  {
    swift_once();
    v4 = a3;
  }

  return sub_1E19C6754(a2, v4);
}

uint64_t CondensedSearchResultCardLayout.Metrics.overriddingArtworkSize(with:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  result = sub_1E19C6754(v3, a1);
  *(a1 + 200) = a2;
  *(a1 + 208) = a3;
  return result;
}

uint64_t CondensedSearchResultCardLayout.Configuration.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (v3 <= 1)
  {
    if (*v1)
    {
      if (qword_1ECEB1670 != -1)
      {
        v10 = a1;
        swift_once();
        a1 = v10;
      }

      v4 = &unk_1ECEBC078;
    }

    else
    {
      if (qword_1ECEB1658 != -1)
      {
        v9 = a1;
        swift_once();
        a1 = v9;
      }

      v4 = &unk_1ECEBBE30;
    }
  }

  else if (v3 == 2)
  {
    if (qword_1ECEB1688 != -1)
    {
      v6 = a1;
      swift_once();
      a1 = v6;
    }

    v4 = &unk_1ECEBC2C0;
  }

  else if (v3 == 3)
  {
    if (qword_1ECEB16A0 != -1)
    {
      v7 = a1;
      swift_once();
      a1 = v7;
    }

    v4 = &unk_1ECEBC508;
  }

  else
  {
    if (qword_1ECEB16B8 != -1)
    {
      v8 = a1;
      swift_once();
      a1 = v8;
    }

    v4 = &unk_1ECEBC750;
  }

  return sub_1E19C6754(v4, a1);
}

uint64_t CondensedSearchResultCardLayout.Configuration.titleFont.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (v3 <= 1)
  {
    if (*v1)
    {
      if (qword_1ECEB1668 != -1)
      {
        swift_once();
      }

      v4 = qword_1ECEBC060;
    }

    else
    {
      if (qword_1ECEB1650 != -1)
      {
        swift_once();
      }

      v4 = qword_1ECEBBE18;
    }
  }

  else if (v3 == 2)
  {
    if (qword_1ECEB1680 != -1)
    {
      swift_once();
    }

    v4 = qword_1ECEBC2A8;
  }

  else if (v3 == 3)
  {
    if (qword_1ECEB1698 != -1)
    {
      swift_once();
    }

    v4 = qword_1ECEBC4F0;
  }

  else
  {
    if (qword_1ECEB16B0 != -1)
    {
      swift_once();
    }

    v4 = qword_1ECEBC738;
  }

  v5 = sub_1E1AF12AC();
  v6 = __swift_project_value_buffer(v5, v4);
  v7 = *(*(v5 - 8) + 16);

  return v7(a1, v6, v5);
}

uint64_t CondensedSearchResultCardLayout.Configuration.headerFont.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (v3 <= 1)
  {
    if (*v1)
    {
      if (qword_1ECEB1660 != -1)
      {
        swift_once();
      }

      v4 = qword_1ECEBC048;
    }

    else
    {
      if (qword_1ECEB1648 != -1)
      {
        swift_once();
      }

      v4 = qword_1ECEBBE00;
    }
  }

  else if (v3 == 2)
  {
    if (qword_1ECEB1678 != -1)
    {
      swift_once();
    }

    v4 = qword_1ECEBC290;
  }

  else if (v3 == 3)
  {
    if (qword_1ECEB1690 != -1)
    {
      swift_once();
    }

    v4 = qword_1ECEBC4D8;
  }

  else
  {
    if (qword_1ECEB16A8 != -1)
    {
      swift_once();
    }

    v4 = qword_1ECEBC720;
  }

  v5 = sub_1E1AF12AC();
  v6 = __swift_project_value_buffer(v5, v4);
  v7 = *(*(v5 - 8) + 16);

  return v7(a1, v6, v5);
}

Swift::Int __swiftcall CondensedSearchResultCardLayout.Configuration.titleNumberOfLines(in:)(UITraitCollection in)
{
  v2 = *v1;
  v3 = sub_1E1AF698C();
  v4 = 1;
  if (((v2 - 1) & 0xFD) == 0)
  {
    v4 = 2;
  }

  if (v3)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1E19C9478()
{
  result = qword_1EE1DFDA0;
  if (!qword_1EE1DFDA0)
  {
    type metadata accessor for EmptyPlaceable();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DFDA0);
  }

  return result;
}

unint64_t sub_1E19C9554()
{
  result = qword_1ECEBC968;
  if (!qword_1ECEBC968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBC968);
  }

  return result;
}

unint64_t sub_1E19C95AC()
{
  result = qword_1ECEBC970;
  if (!qword_1ECEBC970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBC970);
  }

  return result;
}

unint64_t sub_1E19C9604()
{
  result = qword_1ECEBC978;
  if (!qword_1ECEBC978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBC978);
  }

  return result;
}

uint64_t sub_1E19C967C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 697))
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

uint64_t sub_1E19C96C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 696) = 0;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 697) = 1;
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

    *(result + 697) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E19C97EC()
{
  result = qword_1ECEBC980;
  if (!qword_1ECEBC980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBC980);
  }

  return result;
}

uint64_t ShareSheetProductMetadata.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ShareSheetProductMetadata.init(deserializing:using:)(a1, a2);
  return v4;
}

__n128 ShareSheetProductMetadata.__allocating_init(adamId:storeFrontIdentifier:name:subtitle:genreName:icon:screenshots:videos:isMessagesOnlyApp:messagesAppIcon:notesMetadata:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14)
{
  v20 = swift_allocObject();
  v21 = a1[1];
  *(v20 + 16) = *a1;
  *(v20 + 24) = v21;
  *(v20 + 32) = a2;
  *(v20 + 40) = a3;
  *(v20 + 48) = a4;
  *(v20 + 56) = a5;
  *(v20 + 64) = a6;
  *(v20 + 72) = a7;
  *(v20 + 80) = a8;
  result = a9;
  *(v20 + 88) = a9;
  *(v20 + 104) = a10;
  *(v20 + 112) = a11;
  *(v20 + 120) = a12;
  *(v20 + 128) = a13;
  *(v20 + 136) = a14;
  return result;
}

uint64_t ShareSheetProductMetadata.adamId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t ShareSheetProductMetadata.storeFrontIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ShareSheetProductMetadata.name.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ShareSheetProductMetadata.subtitle.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t ShareSheetProductMetadata.genreName.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

void (**ShareSheetProductMetadata.init(deserializing:using:)(uint64_t a1, uint64_t a2))(void)
{
  v3 = v2;
  v89 = a2;
  v87 = v3;
  v85 = *v3;
  v88 = sub_1E1AF39DC();
  v86 = *(v88 - 8);
  v5 = MEMORY[0x1EEE9AC00](v88);
  v83 = &v74[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v81 = &v74[-v7];
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v80 = &v74[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x1EEE9AC00](v10);
  v84 = &v74[-v13];
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v74[-v15];
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v74[-v18];
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v74[-v20];
  v22 = a1;
  sub_1E1AF381C();
  v23 = sub_1E1AF37CC();
  v25 = v24;
  v28 = *(v9 + 8);
  v27 = v9 + 8;
  v26 = v28;
  v28(v21, v8);
  if (!v25)
  {
    v36 = 0x64496D616461;
    v38 = v22;
    v39 = v86;
    v37 = v87;
    v40 = v26;
    v41 = 0xE600000000000000;
LABEL_8:
    v42 = sub_1E1AF5A7C();
    sub_1E19CA4B8(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v43 = v36;
    v43[1] = v41;
    v43[2] = v85;
    (*(*(v42 - 8) + 104))(v43, *MEMORY[0x1E69AB690], v42);
    swift_willThrow();
    (*(v39 + 8))(v89, v88);
    v40(v38, v8);
    goto LABEL_9;
  }

  v78 = v23;
  sub_1E1AF381C();
  v29 = sub_1E1AF37CC();
  v31 = v30;
  v26(v19, v8);
  if (!v31)
  {
    v35 = v26;
    v79 = 0xE400000000000000;
    v36 = 1701667182;
    v38 = v22;
    v37 = v87;
    goto LABEL_7;
  }

  v76 = v29;
  v79 = 0x80000001E1B82F10;
  sub_1E1AF381C();
  v32 = sub_1E1AF370C();
  v26(v16, v8);
  v33 = v8;
  v34 = v27;
  if (v32 == 2)
  {
    v35 = v26;
    v36 = 0xD000000000000011;
    v8 = v33;

    v37 = v87;
    v38 = v22;
LABEL_7:

    v39 = v86;
    v41 = v79;
    v40 = v35;
    goto LABEL_8;
  }

  v75 = v32;
  v37 = v87;
  v87[2] = v78;
  v37[3] = v25;
  v45 = v22;
  v46 = v33;
  v47 = v84;
  sub_1E1AF381C();
  v48 = sub_1E1AF37CC();
  v50 = v49;
  v26(v47, v46);
  v37[4] = v48;
  v37[5] = v50;
  v37[6] = v76;
  v37[7] = v31;
  v77 = v45;
  sub_1E1AF381C();
  v51 = sub_1E1AF37CC();
  v53 = v52;
  v26(v47, v46);
  v37[8] = v51;
  v37[9] = v53;
  sub_1E1AF381C();
  v54 = sub_1E1AF37CC();
  v56 = v55;
  v78 = v46;
  v79 = v34;
  v26(v47, v46);
  v37[10] = v54;
  v37[11] = v56;
  v57 = type metadata accessor for Artwork();
  v58 = v80;
  sub_1E1AF381C();
  v76 = v26;
  v59 = v86;
  v60 = v81;
  v61 = v88;
  v62 = v89;
  v85 = *(v86 + 16);
  v85(v81);
  v81 = v57;
  v63 = v82;
  v64 = Artwork.__allocating_init(deserializing:using:)(v58, v60);
  if (!v63)
  {
    v37[12] = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB83C0);
    sub_1E1AF381C();
    v65 = v83;
    v66 = v62;
    v67 = v88;
    (v85)(v83, v66, v88);
    sub_1E1709D64();
    sub_1E1AF464C();
    v37[13] = v90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEBC988);
    sub_1E1AF381C();
    v68 = v65;
    v69 = v89;
    v70 = v85;
    (v85)(v68, v89, v67);
    sub_1E19CA404();
    sub_1E1AF464C();
    v37[14] = v90;
    *(v37 + 120) = v75 & 1;
    sub_1E1AF381C();
    v71 = v69;
    v72 = v88;
    v70(v83, v71, v88);
    sub_1E19CA4B8(&qword_1EE1E4BB8, type metadata accessor for Artwork);
    sub_1E1AF464C();
    v37[16] = v90;
    type metadata accessor for ShareSheetNotesMetadata();
    sub_1E1AF381C();
    v73 = v89;
    (v85)(v83, v89, v72);
    sub_1E19CA4B8(qword_1EE1EBD08, type metadata accessor for ShareSheetNotesMetadata);
    sub_1E1AF464C();
    (*(v59 + 8))(v73, v72);
    (v76)(v77, v78);
    v37[17] = v90;
    return v37;
  }

  (*(v59 + 8))(v62, v61);
  (v76)(v77, v78);

LABEL_9:
  type metadata accessor for ShareSheetProductMetadata();
  swift_deallocPartialClassInstance();
  return v37;
}

uint64_t ShareSheetProductMetadata.init(adamId:storeFrontIdentifier:name:subtitle:genreName:icon:screenshots:videos:isMessagesOnlyApp:messagesAppIcon:notesMetadata:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14)
{
  v15 = a1[1];
  *(v14 + 16) = *a1;
  *(v14 + 24) = v15;
  *(v14 + 32) = a2;
  *(v14 + 40) = a3;
  *(v14 + 48) = a4;
  *(v14 + 56) = a5;
  *(v14 + 64) = a6;
  *(v14 + 72) = a7;
  *(v14 + 80) = a8;
  *(v14 + 88) = a9;
  *(v14 + 104) = a10;
  *(v14 + 112) = a11;
  *(v14 + 120) = a12;
  *(v14 + 128) = a13;
  *(v14 + 136) = a14;
  return v14;
}

unint64_t sub_1E19CA404()
{
  result = qword_1EE1E3508;
  if (!qword_1EE1E3508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEBC988);
    sub_1E19CA4B8(&qword_1EE1E52D0, type metadata accessor for Video);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E3508);
  }

  return result;
}

uint64_t sub_1E19CA4B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ShareSheetProductMetadata.deinit()
{

  return v0;
}

uint64_t ShareSheetProductMetadata.__deallocating_deinit()
{
  ShareSheetProductMetadata.deinit();

  return swift_deallocClassInstance();
}

void (**sub_1E19CA59C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>))(void)
{
  type metadata accessor for ShareSheetProductMetadata();
  v7 = swift_allocObject();
  result = ShareSheetProductMetadata.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

id static PendingAppLaunch.didFailToLaunch()()
{
  v0 = sub_1E1AEFE6C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1F9658 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE1F9660;
  [qword_1EE1F9660 lock];
  if (qword_1EE1F9670 != -1)
  {
    swift_once();
  }

  v5 = off_1EE1E1910;
  if (off_1EE1E1910)
  {

    sub_1E1AEFE5C();
    sub_1E1AEFE1C();
    v7 = v6;
    (*(v1 + 8))(v3, v0);
    swift_beginAccess();
    v5[20] = v7;
    *(v5 + 168) = 0;
  }

  return [v4 unlock];
}

id static PendingAppLaunch.didFinishLaunch(postEventUsing:topic:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AF32BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  if ((byte_1ECEB8F60 & 1) == 0)
  {
    sub_1E1361A80();
    *v9 = sub_1E1AF68EC();
    (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
    v12 = sub_1E1AF32EC();
    (*(v7 + 8))(v9, v6);
    if (v12)
    {
      if (qword_1EE1F9658 == -1)
      {
LABEL_9:
        v13 = qword_1EE1F9660;
        [qword_1EE1F9660 lock];
        sub_1E19CAC4C(a2, a3, a1);
        return [v13 unlock];
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_9;
  }

  if (qword_1EE1D2768 != -1)
  {
    swift_once();
  }

  v10 = sub_1E1AF591C();
  __swift_project_value_buffer(v10, qword_1EE216140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF548C();

  if (qword_1EE1F9670 != -1)
  {
    swift_once();
  }

  off_1EE1E1910 = 0;
}

id static PendingAppLaunch.didBuildDependencies(_:)()
{
  if (qword_1EE1F9658 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE1F9660;
  [qword_1EE1F9660 lock];
  if (qword_1EE1F9670 != -1)
  {
    swift_once();
  }

  v1 = off_1EE1E1910;
  if (off_1EE1E1910)
  {

    v2 = sub_1E1AF598C();
    swift_beginAccess();
    v1[26] = v2;
  }

  return [v0 unlock];
}

void sub_1E19CAC4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v5 = sub_1E1AF3ABC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AEFE6C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1F9670 != -1)
  {
    swift_once();
  }

  v13 = off_1EE1E1910;
  if (off_1EE1E1910)
  {

    sub_1E1AEFE5C();
    sub_1E1AEFE1C();
    v15 = v14;
    (*(v10 + 8))(v12, v9);
    swift_beginAccess();
    v13[22] = v15;
    *(v13 + 184) = 0;
    swift_beginAccess();
    v13[7] = a1;
    v13[8] = a2;

    if (sub_1E153DDDC())
    {
      if (qword_1EE1D2768 != -1)
      {
        swift_once();
      }

      v16 = sub_1E1AF591C();
      __swift_project_value_buffer(v16, qword_1EE216140);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      v19[3] = type metadata accessor for AppLaunchMetricsEvent();
      v19[0] = v13;

      sub_1E1AF38BC();
      sub_1E13E44F8(v19);
      sub_1E1AF548C();
    }

    AppLaunchMetricsEvent.metricsData.getter(v8);
    if (qword_1EE1E3990 != -1)
    {
      swift_once();
    }

    v17 = sub_1E1AF4A9C();
    __swift_project_value_buffer(v17, qword_1EE1E3998);
    sub_1E1AF434C();

    (*(v6 + 8))(v8, v5);
    off_1EE1E1910 = 0;
  }
}

uint64_t UpdatesSection.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

unint64_t sub_1E19CB0A8()
{
  result = qword_1ECEBC990;
  if (!qword_1ECEBC990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBC990);
  }

  return result;
}

AppStoreKit::LockupsIntent __swiftcall LockupsIntent.init(bundleIds:)(Swift::OpaquePointer bundleIds)
{
  strcpy(v1, "LockupsIntent");
  *(v1 + 14) = -4864;
  *(v1 + 16) = bundleIds;
  result.kind._countAndFlagsBits = bundleIds._rawValue;
  return result;
}

uint64_t LockupsIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

JSValue __swiftcall LockupsIntent.makeValue(in:)(JSContext in)
{
  v2 = objc_opt_self();
  result.super.isa = [v2 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;

    v5 = isa;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10);
    v6 = [v2 valueWithObject:sub_1E1AF755C() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (v6)
    {
      sub_1E1AF6C5C();

      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1E19CB3C4()
{
  result = qword_1ECEBC998;
  if (!qword_1ECEBC998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBC998);
  }

  return result;
}

unint64_t sub_1E19CB41C()
{
  result = qword_1ECEBC9A0;
  if (!qword_1ECEBC9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBC9A0);
  }

  return result;
}

unint64_t sub_1E19CB474()
{
  result = qword_1ECEBC9A8;
  if (!qword_1ECEBC9A8)
  {
    type metadata accessor for LockupsResponse();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEBC9A8);
  }

  return result;
}

id sub_1E19CB4E0()
{
  result = [objc_allocWithZone(type metadata accessor for AutoPlayVideoSettingsManager()) init];
  qword_1EE1E9EC0 = result;
  return result;
}

id static AutoPlayVideoSettingsManager.shared.getter()
{
  if (qword_1EE1E9EB0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE1E9EC0;

  return v1;
}

void sub_1E19CB56C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_defaultAutoPlayVideoSetting);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;

  sub_1E19CC304();
}

uint64_t sub_1E19CB5E4()
{
  v1 = (v0 + OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_defaultAutoPlayVideoSetting);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void sub_1E19CB63C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_defaultAutoPlayVideoSetting);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  sub_1E19CC304();
}

void (*sub_1E19CB6A0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1E19CB704;
}

void sub_1E19CB704(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1E19CC304();
  }
}

uint64_t sub_1E19CB738()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_autoPlayUserSetting);
  if (!v1 || (*(v0 + OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_networkIsConstrained) & 1) != 0)
  {
    goto LABEL_11;
  }

  v2 = v1;
  if (ASKPerformanceProfileGetForCurrentDevice() != 2)
  {

    goto LABEL_11;
  }

  v3 = sub_1E1AF5DFC();
  v5 = v4;
  if (v3 == sub_1E1AF5DFC() && v5 == v6)
  {

    v9 = 1;
    return v9 & 1;
  }

  v8 = sub_1E1AF74AC();

  if ((v8 & 1) == 0)
  {
    v11 = sub_1E1AF5DFC();
    v13 = v12;
    if (v11 == sub_1E1AF5DFC() && v13 == v14)
    {

      goto LABEL_21;
    }

    v16 = sub_1E1AF74AC();

    if (v16)
    {

LABEL_21:
      v9 = *(v0 + OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_networkMayUseCellular) ^ 1;
      return v9 & 1;
    }

    v17 = sub_1E1AF5DFC();
    v19 = v18;
    if (v17 != sub_1E1AF5DFC() || v19 != v20)
    {
      sub_1E1AF74AC();
    }

LABEL_11:
    v9 = 0;
    return v9 & 1;
  }

  v9 = 1;
  return v9 & 1;
}

void sub_1E19CB920(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_autoPlayUserSetting);
  *(v1 + OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_autoPlayUserSetting) = a1;
  if (!a1)
  {
    if (!v2)
    {
      return;
    }

    goto LABEL_11;
  }

  if (!v2)
  {
LABEL_11:
    *(v1 + OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_settingsChangeNotificationNeeded) = 1;
    return;
  }

  v9 = v2;
  v3 = sub_1E1AF5DFC();
  v5 = v4;
  if (v3 != sub_1E1AF5DFC() || v5 != v6)
  {
    v8 = sub_1E1AF74AC();

    if (v8)
    {
      return;
    }

    goto LABEL_11;
  }
}

_BYTE *sub_1E19CBA18()
{
  v1 = &v0[OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_defaultAutoPlayVideoSetting];
  *v1 = 0;
  v1[1] = 0;
  result = *MEMORY[0x1E69D4DC0];
  if (!*MEMORY[0x1E69D4DC0])
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = &v0[OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_motionAutoPlayVideoSetLastAutoPlayVideoValueKey];
  *v3 = sub_1E1AF5DFC();
  v3[1] = v4;
  result = *MEMORY[0x1E69D4DA8];
  if (!*MEMORY[0x1E69D4DA8])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = &v0[OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_lastMotionAutoPlayVideoValueKey];
  *v5 = sub_1E1AF5DFC();
  v5[1] = v6;
  result = *MEMORY[0x1E69D4DB8];
  if (!*MEMORY[0x1E69D4DB8])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = &v0[OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_lowPowerModeSetLastAutoPlayVideoValueKey];
  *v7 = sub_1E1AF5DFC();
  v7[1] = v8;
  result = *MEMORY[0x1E69D4DA0];
  if (!*MEMORY[0x1E69D4DA0])
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = &v0[OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_lastLowPowerModeValueKey];
  *v9 = sub_1E1AF5DFC();
  v9[1] = v10;
  result = *MEMORY[0x1E69D4D98];
  if (!*MEMORY[0x1E69D4D98])
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = &v0[OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_autoPlayVideoSettingKey];
  *v11 = sub_1E1AF5DFC();
  v11[1] = v12;
  result = *MEMORY[0x1E69D4DC8];
  if (!*MEMORY[0x1E69D4DC8])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = &v0[OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_userSetAutoPlayVideoSettingKey];
  *v13 = sub_1E1AF5DFC();
  v13[1] = v14;
  result = *MEMORY[0x1E69D4DB0];
  if (!*MEMORY[0x1E69D4DB0])
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v15 = &v0[OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_lastUserSetAutoPlayVideoValueKey];
  *v15 = sub_1E1AF5DFC();
  v15[1] = v16;
  *&v0[OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_autoPlayUserSetting] = 0;
  v0[OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_networkIsConstrained] = 0;
  v17 = &v0[OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_networkInquiry];
  v18 = _s11AppStoreKit20NWPathNetworkInquiryCACycfC_0();
  v17[3] = type metadata accessor for NWPathNetworkInquiry();
  v17[4] = &protocol witness table for NWPathNetworkInquiry;
  *v17 = v18;
  v19 = &v0[OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_networkObservation];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 4) = 0;
  v0[OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_settingsChangeNotificationNeeded] = 0;
  v0[OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_networkMayUseCellular] = 0;
  *&v0[OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_fullScreenAudioSettingsTimeoutMinutes] = 0x4020000000000000;
  v46.receiver = v0;
  v46.super_class = type metadata accessor for AutoPlayVideoSettingsManager();
  v20 = objc_msgSendSuper2(&v46, sel_init);
  v21 = OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_networkInquiry;
  sub_1E1300B24(v20 + OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_networkInquiry, v40);
  v22 = v41;
  v23 = v42;
  __swift_project_boxed_opaque_existential_1Tm(v40, v41);
  v24 = sub_1E1361A80();
  v25 = v20;
  v26 = sub_1E1AF68EC();
  v39[3] = v24;
  v39[4] = MEMORY[0x1E69AB720];
  v39[0] = v26;
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = *(v23 + 40);

  v28(v43, v39, sub_1E19CD964, v27, v22, v23);

  __swift_destroy_boxed_opaque_existential_1(v39);
  v29 = OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_networkObservation;
  swift_beginAccess();
  sub_1E155C4E0(v43, &v25[v29]);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v40);
  sub_1E1300B24(v20 + v21, v43);
  v30 = v44;
  v31 = v45;
  __swift_project_boxed_opaque_existential_1Tm(v43, v44);
  (*(v31 + 16))(v40, v30, v31);
  LOBYTE(v29) = LOBYTE(v40[0]) == 3;
  __swift_destroy_boxed_opaque_existential_1(v43);
  v25[OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_networkMayUseCellular] = v29;
  sub_1E1300B24(v20 + v21, v43);
  v32 = v44;
  v33 = v45;
  __swift_project_boxed_opaque_existential_1Tm(v43, v44);
  v25[OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_networkIsConstrained] = (*(v33 + 32))(v32, v33) & 1;
  __swift_destroy_boxed_opaque_existential_1(v43);
  v34 = &v25[OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_defaultAutoPlayVideoSetting];
  swift_beginAccess();
  if (*(v34 + 1))
  {
    sub_1E19CC304();
  }

  v35 = objc_opt_self();
  v36 = [v35 defaultCenter];
  [v36 addObserver:v25 selector:sel_updateAutoPlayVideoSettings name:*MEMORY[0x1E69DDAB0] object:0];

  v37 = [v35 defaultCenter];
  [v37 addObserver:v25 selector:sel_restoreFullScreenAudioSettings name:*MEMORY[0x1E69DDBC0] object:0];

  v38 = [v35 defaultCenter];
  [v38 addObserver:v25 selector:sel_saveFullScreenAudioSettings name:*MEMORY[0x1E69DDAC8] object:0];

  return v25;
}

void sub_1E19CBEE8(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = a1[3];
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1Tm(a1, v4);
    (*(v5 + 16))(v16, v4, v5);
    v6 = LOBYTE(v16[0]) == 3;
    v7 = v3[OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_networkMayUseCellular];
    v3[OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_networkMayUseCellular] = v6;
    if (v6 != v7)
    {
      v3[OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_settingsChangeNotificationNeeded] = 1;
    }
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = a1[3];
    v11 = a1[4];
    __swift_project_boxed_opaque_existential_1Tm(a1, v10);
    v12 = (*(v11 + 32))(v10, v11);
    v13 = v9[OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_networkIsConstrained];
    v9[OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_networkIsConstrained] = v12 & 1;
    if ((v12 & 1) != v13)
    {
      v9[OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_settingsChangeNotificationNeeded] = 1;
    }
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    sub_1E19CCF10();
  }
}

id AutoPlayVideoSettingsManager.__deallocating_deinit()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_networkObservation;
  swift_beginAccess();
  if (*(v2 + 24))
  {
    sub_1E1300B24(v2, v7);
    v3 = v8;
    v4 = v9;
    __swift_project_boxed_opaque_existential_1Tm(v7, v8);
    (*(v4 + 8))(v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  v5 = type metadata accessor for AutoPlayVideoSettingsManager();
  v10.receiver = v1;
  v10.super_class = v5;
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

void sub_1E19CC304()
{
  IsVideoAutoplayEnabled = UIAccessibilityIsVideoAutoplayEnabled();
  v2 = [objc_opt_self() processInfo];
  v49 = [v2 isLowPowerModeEnabled];

  v3 = objc_opt_self();
  v4 = [v3 standardUserDefaults];
  v5 = sub_1E1AF5DBC();
  v6 = [v4 valueForKey_];

  if (v6)
  {
    sub_1E1AF6EBC();
    swift_unknownObjectRelease();
  }

  else
  {
    v50 = 0u;
    v51 = 0u;
  }

  sub_1E1308058(&v50, &qword_1ECEB2DF0);
  v7 = [v3 standardUserDefaults];
  v8 = sub_1E1AF5DBC();
  v9 = [v7 BOOLForKey_];

  v48 = IsVideoAutoplayEnabled;
  if (IsVideoAutoplayEnabled == v9)
  {
    v10 = (v6 == 0) & (IsVideoAutoplayEnabled ^ 1);
  }

  else
  {
    v10 = 1;
  }

  v11 = [v3 standardUserDefaults];
  v12 = sub_1E1AF5DBC();
  v13 = [v11 valueForKey_];

  if (v13)
  {
    sub_1E1AF6EBC();
    swift_unknownObjectRelease();
  }

  else
  {
    v50 = 0u;
    v51 = 0u;
  }

  sub_1E1308058(&v50, &qword_1ECEB2DF0);
  v14 = [v3 standardUserDefaults];
  v15 = sub_1E1AF5DBC();
  v16 = [v14 BOOLForKey_];

  if (v49 == v16)
  {
    if (v13)
    {
      if ((v10 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else if ((v10 & 1) == 0)
    {
      if ((v49 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }
  }

  if (v49)
  {
LABEL_16:
    v17 = [v3 standardUserDefaults];
    v18 = *MEMORY[0x1E69D4A50];
    v19 = sub_1E1AF5DBC();
    [v17 setObject:v18 forKey:v19];

    v20 = [v3 standardUserDefaults];
    v21 = sub_1E1AF5DBC();
    [v20 setBool:1 forKey:v21];

    v22 = [v3 standardUserDefaults];
    v23 = sub_1E1AF5DBC();
    goto LABEL_18;
  }

  v22 = [v3 standardUserDefaults];
  v23 = sub_1E1AF5DBC();
LABEL_18:
  [v22 setBool:0 forKey:v23];

  v24 = [v3 standardUserDefaults];
  if ((v48 & 1) == 0)
  {
    v39 = *MEMORY[0x1E69D4A50];
    v40 = sub_1E1AF5DBC();
    [v24 setObject:v39 forKey:v40];

    v41 = [v3 standardUserDefaults];
    v42 = sub_1E1AF5DBC();
    [v41 setBool:1 forKey:v42];

    v37 = [v3 standardUserDefaults];
    goto LABEL_23;
  }

  v25 = sub_1E1AF5DBC();
  [v24 setBool:0 forKey:v25];

  if ((v49 & 1) == 0)
  {
    v26 = [v3 standardUserDefaults];
    v27 = sub_1E1AF5DBC();
    [v26 setBool:0 forKey:v27];

    v28 = [v3 standardUserDefaults];
    v29 = sub_1E1AF5DBC();
    [v28 setBool:0 forKey:v29];

    v30 = [v3 standardUserDefaults];
    v47 = *(v0 + OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_userSetAutoPlayVideoSettingKey);
    v31 = sub_1E1AF5DBC();
    [v30 setBool:0 forKey:v31];

    v32 = [v3 standardUserDefaults];
    v33 = sub_1E1AF5DBC();
    v34 = [v32 stringForKey_];

    v35 = [v3 standardUserDefaults];
    v36 = sub_1E1AF5DBC();
    if (v34)
    {
      [v35 setObject:v34 forKey:v36];

      v37 = [v3 standardUserDefaults];
      v38 = sub_1E1AF5DBC();
      [v37 setBool:1 forKey:{v38, v47}];
LABEL_24:

      goto LABEL_25;
    }

    [v35 setURL:0 forKey:v36];

    v37 = [v3 standardUserDefaults];
LABEL_23:
    v38 = sub_1E1AF5DBC();
    [v37 setBool:0 forKey:{v38, v47}];
    goto LABEL_24;
  }

LABEL_25:
  v43 = [v3 standardUserDefaults];
  v44 = sub_1E1AF5DBC();
  [v43 setBool:v48 forKey:v44];

  v45 = [v3 standardUserDefaults];
  v46 = sub_1E1AF5DBC();
  [v45 setBool:v49 forKey:v46];

LABEL_26:
  sub_1E19CCAF4(v0);
}

void sub_1E19CCAF4(uint64_t a1)
{
  sub_1E19CCC08();
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1E1AF5DBC();
  v4 = [v2 stringForKey_];

  if (v4)
  {
    sub_1E19CB920(v4);
  }

  else
  {
    v5 = *(a1 + OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_autoPlayUserSetting);
    *(a1 + OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_autoPlayUserSetting) = 0;
    if (v5)
    {

      *(a1 + OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_settingsChangeNotificationNeeded) = 1;
    }
  }

  sub_1E19CCF10();
}

void sub_1E19CCC08()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = sub_1E1AF5DBC();
  v3 = [v1 BOOLForKey_];

  v4 = [v0 standardUserDefaults];
  v5 = sub_1E1AF5DBC();
  v6 = [v4 BOOLForKey_];

  v7 = [v0 standardUserDefaults];
  v8 = sub_1E1AF5DBC();
  v9 = [v7 BOOLForKey_];

  if ((v3 & 1) == 0 && (v6 & 1) == 0 && (v9 & 1) == 0)
  {
    v10 = [v0 standardUserDefaults];
    v11 = sub_1E19CCDEC();
    if (v11)
    {
      v12 = v11;
      v13 = sub_1E1AF5DFC();
      v15 = v14;

      v18[0] = v13;
      v18[1] = v15;
      v16 = sub_1E1AF748C();
      sub_1E1455104(v18);
    }

    else
    {
      v16 = 0;
    }

    v17 = sub_1E1AF5DBC();
    [v10 setObject:v16 forKey:v17];

    swift_unknownObjectRelease();
  }
}

id sub_1E19CCDEC()
{
  v1 = (v0 + OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_defaultAutoPlayVideoSetting);
  swift_beginAccess();
  v2 = v1[1];
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = *v1;
  v4 = v3 == 0x796C6E4F69666977 && v2 == 0xE800000000000000;
  if (v4 || (sub_1E1AF74AC() & 1) != 0)
  {
    v5 = MEMORY[0x1E69D4A60];
    goto LABEL_14;
  }

  v6 = v3 == 28271 && v2 == 0xE200000000000000;
  if (v6 || (sub_1E1AF74AC() & 1) != 0)
  {
LABEL_13:
    v5 = MEMORY[0x1E69D4A58];
    goto LABEL_14;
  }

  v10 = v3 == 6710895 && v2 == 0xE300000000000000;
  if (!v10 && (sub_1E1AF74AC() & 1) == 0)
  {
    return 0;
  }

  v5 = MEMORY[0x1E69D4A50];
LABEL_14:
  v7 = *v5;
  v8 = *v5;
  return v7;
}

void sub_1E19CCF10()
{
  v1 = sub_1E1AF320C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AF324C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_settingsChangeNotificationNeeded] == 1)
  {
    v0[OBJC_IVAR____TtC11AppStoreKit28AutoPlayVideoSettingsManager_settingsChangeNotificationNeeded] = 0;
    sub_1E1361A80();
    v9 = v0;
    v10 = sub_1E1AF68EC();
    v11 = sub_1E19CB738();
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    *(v12 + 24) = v11 & 1;
    aBlock[4] = sub_1E19CD530;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1302D64;
    aBlock[3] = &block_descriptor_96;
    v13 = _Block_copy(aBlock);
    v14 = v9;

    sub_1E1AF322C();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1E1302BFC(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
    sub_1E13FE650();
    sub_1E1AF6EEC();
    MEMORY[0x1E68FF640](0, v8, v4, v13);
    _Block_release(v13);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
  }
}

void sub_1E19CD1F0(uint64_t a1, char a2)
{
  v4 = [objc_opt_self() defaultCenter];
  v5 = sub_1E1AF5DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3A98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E1B02CC0;
  sub_1E1AF6F6C();
  *(inited + 96) = &type metadata for AutoPlayVideoSettings;
  *(inited + 72) = a2;
  sub_1E13609A4(inited);
  swift_setDeallocating();
  sub_1E1308058(inited + 32, &qword_1ECEBCAA0);
  v7 = sub_1E1AF5C6C();

  [v4 postNotificationName:v5 object:a1 userInfo:v7];
}

double sub_1E19CD96C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4000);
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4800);
  v1 = swift_allocObject();
  *(v1 + 16) = KeyPath;
  result = 2.0;
  *(v1 + 24) = xmmword_1E1B0E3A0;
  qword_1ECEF4D70 = v1;
  return result;
}

uint64_t AppTrailerLockupLayout.init(metrics:taglineText:videoView:lockupView:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for AppTrailerLockupLayout(0);
  sub_1E19CDAE0(a1, a5 + *(v10 + 28));
  __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);
  sub_1E1AF14BC();
  sub_1E19CDB64(a1);
  v11 = *(a3 + 16);
  *(a5 + 40) = *a3;
  *(a5 + 56) = v11;
  *(a5 + 72) = *(a3 + 32);
  sub_1E1308EC0(a4, a5 + 80);

  return __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t sub_1E19CDAE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppTrailerLockupLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E19CDB64(uint64_t a1)
{
  v2 = type metadata accessor for AppTrailerLockupLayout.Metrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AppTrailerLockupLayout.Metrics.init(taglineSpace:taglineBottomSpace:videoAspectRatio:videoSpacing:lockupSpace:textAndLockupLayoutMargins:isVideoAtTop:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, char a6@<W5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  sub_1E1308EC0(a1, a7);
  sub_1E1308EC0(a2, a7 + 40);
  v21 = type metadata accessor for AppTrailerLockupLayout.Metrics(0);
  v22 = v21[6];
  v23 = sub_1E1AF127C();
  (*(*(v23 - 8) + 32))(a7 + v22, a3, v23);
  sub_1E1308EC0(a4, a7 + v21[7]);
  result = sub_1E1308EC0(a5, a7 + v21[8]);
  v25 = (a7 + v21[9]);
  *v25 = a8;
  v25[1] = a9;
  v25[2] = a10;
  v25[3] = a11;
  *(a7 + v21[10]) = a6;
  return result;
}

uint64_t AppTrailerLockupLayout.Metrics.taglineSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1E1308EC0(a1, v1);
}

uint64_t AppTrailerLockupLayout.Metrics.taglineBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 40);

  return sub_1E1308EC0(a1, v1 + 40);
}

uint64_t AppTrailerLockupLayout.Metrics.videoAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppTrailerLockupLayout.Metrics(0) + 24);
  v4 = sub_1E1AF127C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppTrailerLockupLayout.Metrics.videoAspectRatio.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppTrailerLockupLayout.Metrics(0) + 24);
  v4 = sub_1E1AF127C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppTrailerLockupLayout.Metrics.videoSpacing.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppTrailerLockupLayout.Metrics(0) + 28);
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);

  return sub_1E1308EC0(a1, v1 + v3);
}

uint64_t AppTrailerLockupLayout.Metrics.lockupSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppTrailerLockupLayout.Metrics(0) + 32);
  __swift_destroy_boxed_opaque_existential_1(v1 + v3);

  return sub_1E1308EC0(a1, v1 + v3);
}

uint64_t AppTrailerLockupLayout.Metrics.textAndLockupLayoutMargins.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for AppTrailerLockupLayout.Metrics(0);
  v10 = (v4 + *(result + 36));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t AppTrailerLockupLayout.Metrics.isVideoAtTop.setter(char a1)
{
  result = type metadata accessor for AppTrailerLockupLayout.Metrics(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t AppTrailerLockupLayout.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppTrailerLockupLayout(0) + 28);

  return sub_1E19CDAE0(v3, a1);
}

double AppTrailerLockupLayout.measurements(fitting:in:)(uint64_t a1)
{
  v2 = v1;
  v35 = a1;
  v32 = sub_1E1AF127C();
  v3 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF745C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF162C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E1AF165C();
  v33 = *(v14 - 8);
  v34 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v13, *MEMORY[0x1E69AB970], v10, v15);
  sub_1E1AF163C();
  __swift_project_boxed_opaque_existential_1Tm(v2, v2[3]);
  v18 = sub_1E1AF117C();
  v19 = MEMORY[0x1E69ABA90];
  if ((v18 & 1) == 0)
  {
    v20 = v35;
    if (qword_1ECEB16C8 != -1)
    {
      swift_once();
    }

    v37[0] = qword_1ECEF4D70;

    sub_1E1AF102C();
    Conditional<>.value(in:rounded:)(v20, v9);
    (*(v7 + 8))(v9, v6);

    v21 = v2 + *(type metadata accessor for AppTrailerLockupLayout(0) + 28);
    sub_1E1300B24(v21, v36);
    v22 = sub_1E1AF1A1C();
    v38 = v22;
    v39 = v19;
    __swift_allocate_boxed_opaque_existential_0(v37);
    sub_1E1AF1A2C();
    sub_1E1AF164C();
    __swift_destroy_boxed_opaque_existential_1(v37);
    sub_1E1300B24(v21 + 40, v36);
    v38 = v22;
    v39 = v19;
    __swift_allocate_boxed_opaque_existential_0(v37);
    sub_1E1AF1A2C();
    sub_1E1AF164C();
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  v23 = v2 + *(type metadata accessor for AppTrailerLockupLayout(0) + 28);
  v24 = type metadata accessor for AppTrailerLockupLayout.Metrics(0);
  (*(v3 + 16))(v5, &v23[*(v24 + 24)], v32);
  v38 = sub_1E1AF17BC();
  v39 = MEMORY[0x1E69AB9D8];
  __swift_allocate_boxed_opaque_existential_0(v37);
  sub_1E1AF17CC();
  sub_1E1AF164C();
  __swift_destroy_boxed_opaque_existential_1(v37);
  sub_1E1300B24(&v23[*(v24 + 28)], v36);
  v38 = sub_1E1AF1A1C();
  v39 = v19;
  __swift_allocate_boxed_opaque_existential_0(v37);
  sub_1E1AF1A2C();
  sub_1E1AF164C();
  __swift_destroy_boxed_opaque_existential_1(v37);
  v26 = v2[13];
  v25 = v2[14];
  v27 = __swift_project_boxed_opaque_existential_1Tm(v2 + 10, v26);
  v38 = v26;
  v39 = *(v25 + 8);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v37);
  (*(*(v26 - 8) + 16))(boxed_opaque_existential_0, v27, v26);
  sub_1E1AF164C();
  __swift_destroy_boxed_opaque_existential_1(v37);
  sub_1E1AF161C();
  v30 = v29;
  (*(v33 + 8))(v17, v34);
  return v30;
}

void *AppTrailerLockupLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v13 = v6 + *(type metadata accessor for AppTrailerLockupLayout(0) + 28);
  if (*(v13 + *(type metadata accessor for AppTrailerLockupLayout.Metrics(0) + 40)) == 1)
  {

    return sub_1E19CE880(a1, a2, a3, a4, a5, a6);
  }

  else
  {

    return sub_1E19CF900(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t sub_1E19CE880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v111 = a1;
  v107 = a2;
  v106 = sub_1E1AF111C();
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v102 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1E1AF17AC();
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v101 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E1AF745C();
  v99 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v98 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_1E1AF175C();
  v115 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117 - 8);
  v116 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E1AF176C();
  v110 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v114 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E1AF171C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_1E1AF179C();
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v113 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v100 = &v95 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v95 - v27;
  sub_1E14F59A8((v7 + 5), &v125);
  v29 = MEMORY[0x1E69AB990];
  v121 = v19;
  v120 = v17;
  v109 = v22;
  v108 = v20;
  if (*(&v126 + 1))
  {
    v112 = v14;
    sub_1E1308EC0(&v125, v128);
    v30 = *(type metadata accessor for AppTrailerLockupLayout(0) + 28);
    v97 = v7;
    v31 = v7 + v30;
    v32 = type metadata accessor for AppTrailerLockupLayout.Metrics(0);
    v129.origin.x = a3;
    v129.origin.y = a4;
    v129.size.width = a5;
    v129.size.height = a6;
    CGRectGetWidth(v129);
    sub_1E1AF123C();
    v34 = v33;
    __swift_project_boxed_opaque_existential_1Tm(v128, v128[3]);
    v130.origin.x = a3;
    v130.origin.y = a4;
    v130.size.width = a5;
    v130.size.height = a6;
    CGRectGetWidth(v130);
    sub_1E1AF11AC();
    v124[3] = MEMORY[0x1E69E7DE0];
    v124[4] = MEMORY[0x1E69AB858];
    v124[0] = v34;
    v35 = &v31[*(v32 + 28)];
    v36 = v117;
    sub_1E1300B24(v35, v123);
    (*(v20 + 104))(v22, *MEMORY[0x1E69AB990], v19);
    v37 = *MEMORY[0x1E69AB9B8];
    v96 = v28;
    v38 = v116;
    v39 = v114;
    v40 = v110;
    (*(v110 + 104))(v114, v37, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB51B8);
    v41 = v115;
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1E1B02CC0;
    sub_1E1AF174C();
    v122 = v42;
    sub_1E19D0E54(&qword_1EE1D2A90, MEMORY[0x1E69AB9A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB51C0);
    sub_1E13FF6F8(&qword_1EE1D2640, &qword_1ECEB51C0);
    sub_1E1AF6EEC();
    v43 = v96;
    sub_1E1AF178C();
    (*(v41 + 8))(v38, v36);
    v44 = v40;
    (*(v40 + 8))(v39, v120);
    v45 = v108;
    (*(v108 + 8))(v22, v121);
    sub_1E1308058(v123, &unk_1ECEB47F0);
    __swift_destroy_boxed_opaque_existential_1(v124);
    v46 = sub_1E172D648(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v48 = v46[2];
    v47 = v46[3];
    if (v48 >= v47 >> 1)
    {
      v46 = sub_1E172D648(v47 > 1, v48 + 1, 1, v46);
    }

    __swift_destroy_boxed_opaque_existential_1(&v125);
    v46[2] = v48 + 1;
    (*(v118 + 32))(v46 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v48, v43, v119);
    __swift_destroy_boxed_opaque_existential_1(v128);
    v49 = v44;
    v14 = v112;
    v29 = MEMORY[0x1E69AB990];
    v7 = v97;
  }

  else
  {
    v45 = v20;
    sub_1E1308058(&v125, &qword_1ECEB4E00);
    v46 = MEMORY[0x1E69E7CC0];
    v49 = v110;
  }

  __swift_project_boxed_opaque_existential_1Tm(v7, v7[3]);
  v50 = sub_1E1AF117C();
  v51 = MEMORY[0x1E69AB9B8];
  v112 = v46;
  if (v50)
  {
    v52 = *v29;
    v53 = *MEMORY[0x1E69AB9B8];
    goto LABEL_17;
  }

  if (qword_1ECEB16C8 != -1)
  {
    swift_once();
  }

  v128[0] = qword_1ECEF4D70;

  v54 = v98;
  sub_1E1AF102C();
  Conditional<>.value(in:rounded:)(v111, v54);
  v56 = v55;
  v57 = v55;
  (*(v99 + 8))(v54, v14);

  v58 = v7[4];
  __swift_project_boxed_opaque_existential_1Tm(v7, v7[3]);
  if ((*&v57 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v56 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v56 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_1E1AF146C();
  __swift_project_boxed_opaque_existential_1Tm(v7, v7[3]);
  v59 = v7 + *(type metadata accessor for AppTrailerLockupLayout(0) + 28);
  type metadata accessor for AppTrailerLockupLayout.Metrics(0);
  sub_1E1AF119C();
  sub_1E1300B24((v59 + 40), &v125);
  v60 = *(v45 + 104);
  v61 = v109;
  LODWORD(v99) = *MEMORY[0x1E69AB990];
  v62 = v121;
  v60(v109);
  v63 = *(v49 + 104);
  v64 = v114;
  LODWORD(v98) = *v51;
  v63(v114);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB51B8);
  v65 = v115;
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF174C();
  v124[0] = v66;
  sub_1E19D0E54(&qword_1EE1D2A90, MEMORY[0x1E69AB9A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB51C0);
  v67 = v117;
  sub_1E13FF6F8(&qword_1EE1D2640, &qword_1ECEB51C0);
  v68 = v116;
  sub_1E1AF6EEC();
  sub_1E1AF178C();
  v45 = v108;
  (*(v65 + 8))(v68, v67);
  v58 = v110;
  (*(v110 + 8))(v64, v120);
  v69 = v62;
  v46 = v112;
  (*(v45 + 8))(v61, v69);
  sub_1E1308058(&v125, &unk_1ECEB47F0);
  __swift_destroy_boxed_opaque_existential_1(v128);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_25:
    v46 = sub_1E172D648(0, v46[2] + 1, 1, v46);
  }

  v71 = v46[2];
  v70 = v46[3];
  v49 = v58;
  v52 = v99;
  v53 = v98;
  if (v71 >= v70 >> 1)
  {
    v46 = sub_1E172D648(v70 > 1, v71 + 1, 1, v46);
  }

  v112 = v46;
  v46[2] = v71 + 1;
  (*(v118 + 32))(v46 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v71, v100, v119);
LABEL_17:
  __swift_project_boxed_opaque_existential_1Tm(v7 + 10, v7[13]);
  v100 = v7 + *(type metadata accessor for AppTrailerLockupLayout(0) + 28);
  v72 = type metadata accessor for AppTrailerLockupLayout.Metrics(0);
  sub_1E1AF119C();
  v99 = *(v72 + 32);
  v127 = 0;
  v125 = 0u;
  v126 = 0u;
  v73 = v109;
  (*(v45 + 104))(v109, v52, v121);
  v74 = *(v49 + 104);
  v75 = v49;
  v76 = v114;
  v77 = v53;
  v78 = v120;
  v74(v114, v77, v120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB51B8);
  v79 = v115;
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF174C();
  v124[0] = v80;
  sub_1E19D0E54(&qword_1EE1D2A90, MEMORY[0x1E69AB9A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB51C0);
  sub_1E13FF6F8(&qword_1EE1D2640, &qword_1ECEB51C0);
  v81 = v78;
  v82 = v116;
  v83 = v117;
  sub_1E1AF6EEC();
  sub_1E1AF178C();
  (*(v79 + 8))(v82, v83);
  (*(v75 + 8))(v76, v81);
  (*(v45 + 8))(v73, v121);
  sub_1E1308058(&v125, &unk_1ECEB47F0);
  __swift_destroy_boxed_opaque_existential_1(v128);
  v84 = v112;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v84 = sub_1E172D648(0, v84[2] + 1, 1, v84);
  }

  v85 = v106;
  v86 = v105;
  v87 = v104;
  v88 = v103;
  v89 = v102;
  v90 = v101;
  v92 = v84[2];
  v91 = v84[3];
  v93 = v84;
  if (v92 >= v91 >> 1)
  {
    v93 = sub_1E172D648(v91 > 1, v92 + 1, 1, v84);
  }

  *(v93 + 16) = v92 + 1;
  (*(v118 + 32))(v93 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v92, v113, v119);
  sub_1E1AF177C();
  sub_1E1AF173C();
  (*(v86 + 8))(v89, v85);
  sub_1E1AF106C();
  return (*(v88 + 8))(v90, v87);
}

void *sub_1E19CF900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v85 = a3;
  v13 = sub_1E1AF111C();
  v74 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v73 = &MinX - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1E1AF18BC();
  v67 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &MinX - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1E1AF18DC();
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v70 = &MinX - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1E1AF184C();
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v78 = &MinX - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1E1AF188C();
  v18 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v77 = &MinX - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1E1AF189C();
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v84 = &MinX - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v65 = &MinX - v22;
  v23 = sub_1E1AF745C();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &MinX - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(v6, v6[3]);
  v27 = sub_1E1AF117C();
  v76 = a2;
  v75 = v13;
  if (v27)
  {
    goto LABEL_8;
  }

  v64 = v18;
  if (qword_1ECEB16C8 != -1)
  {
    swift_once();
  }

  v90[0] = qword_1ECEF4D70;

  sub_1E1AF102C();
  v28 = a1;
  Conditional<>.value(in:rounded:)(a1, v26);
  v30 = v29;
  v31 = v29;
  v32 = *(v24 + 8);
  v32(v26, v23);

  result = __swift_project_boxed_opaque_existential_1Tm(v6, v6[3]);
  if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v30 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v30 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  sub_1E1AF146C();
  __swift_project_boxed_opaque_existential_1Tm(v6, v6[3]);
  sub_1E1AF11CC();
  v91.origin.x = v85;
  v91.origin.y = a4;
  v91.size.width = a5;
  v91.size.height = a6;
  MinX = CGRectGetMinX(v91);
  v92.origin.x = v85;
  v92.origin.y = a4;
  v92.size.width = a5;
  v92.size.height = a6;
  CGRectGetMinY(v92);
  v34 = (v6 + *(type metadata accessor for AppTrailerLockupLayout(0) + 28));
  __swift_project_boxed_opaque_existential_1Tm(v34, v34[3]);
  sub_1E1AF12FC();
  v93.origin.x = v85;
  v93.origin.y = a4;
  v93.size.width = a5;
  v93.size.height = a6;
  CGRectGetWidth(v93);
  __swift_project_boxed_opaque_existential_1Tm(v6, v6[3]);
  sub_1E1AF116C();
  __swift_project_boxed_opaque_existential_1Tm(v6, v6[3]);
  sub_1E1AF115C();
  CGRectGetMaxY(v94);
  __swift_project_boxed_opaque_existential_1Tm(v34 + 5, v34[8]);
  sub_1E13BC274();
  a1 = v28;
  sub_1E1AF12DC();
  v32(v26, v23);
  v18 = v64;
LABEL_8:
  v66 = a1;
  sub_1E14F59A8((v6 + 5), &v88);
  v35 = MEMORY[0x1E69E7CC0];
  if (v89)
  {
    sub_1E1308EC0(&v88, v90);
    type metadata accessor for AppTrailerLockupLayout(0);
    type metadata accessor for AppTrailerLockupLayout.Metrics(0);
    v36 = v85;
    v95.origin.x = v85;
    v95.origin.y = a4;
    v95.size.width = a5;
    v95.size.height = a6;
    CGRectGetWidth(v95);
    sub_1E1AF123C();
    v38 = v37;
    __swift_project_boxed_opaque_existential_1Tm(v90, v90[3]);
    v96.origin.x = v36;
    v96.origin.y = a4;
    v96.size.width = a5;
    v96.size.height = a6;
    CGRectGetWidth(v96);
    sub_1E1AF11AC();
    v87[3] = MEMORY[0x1E69E7DE0];
    v87[4] = MEMORY[0x1E69AB858];
    v87[0] = v38;
    v39 = *MEMORY[0x1E69ABA08];
    v40 = v77;
    v41 = v79;
    (*(v18 + 104))(v77, v39, v79);
    v86 = MEMORY[0x1E69E7CC0];
    sub_1E19D0E54(&qword_1EE1D2A80, MEMORY[0x1E69AB9F8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2AF0);
    sub_1E13FF6F8(&qword_1EE1D2630, &unk_1ECEB2AF0);
    v42 = v78;
    v43 = v81;
    sub_1E1AF6EEC();
    v44 = v65;
    sub_1E1AF186C();
    (*(v80 + 8))(v42, v43);
    v45 = v40;
    v35 = MEMORY[0x1E69E7CC0];
    (*(v18 + 8))(v45, v41);
    __swift_destroy_boxed_opaque_existential_1(v87);
    v46 = sub_1E172D494(0, 1, 1, v35);
    v48 = v46[2];
    v47 = v46[3];
    if (v48 >= v47 >> 1)
    {
      v46 = sub_1E172D494(v47 > 1, v48 + 1, 1, v46);
    }

    __swift_destroy_boxed_opaque_existential_1(&v88);
    v46[2] = v48 + 1;
    (*(v82 + 32))(v46 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v48, v44, v83);
    __swift_destroy_boxed_opaque_existential_1(v90);
  }

  else
  {
    sub_1E1308058(&v88, &qword_1ECEB4E00);
    v39 = *MEMORY[0x1E69ABA08];
    v46 = MEMORY[0x1E69E7CC0];
  }

  __swift_project_boxed_opaque_existential_1Tm(v7 + 10, v7[13]);
  v49 = v7 + *(type metadata accessor for AppTrailerLockupLayout(0) + 28);
  v50 = type metadata accessor for AppTrailerLockupLayout.Metrics(0);
  v65 = v49;
  sub_1E1AF119C();
  v51 = v77;
  v52 = v79;
  (*(v18 + 104))(v77, v39, v79);
  *&v88 = v35;
  sub_1E19D0E54(&qword_1EE1D2A80, MEMORY[0x1E69AB9F8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2AF0);
  sub_1E13FF6F8(&qword_1EE1D2630, &unk_1ECEB2AF0);
  v53 = v18;
  v54 = v78;
  v55 = v81;
  sub_1E1AF6EEC();
  sub_1E1AF185C();
  (*(v80 + 8))(v54, v55);
  (*(v53 + 8))(v51, v52);
  __swift_destroy_boxed_opaque_existential_1(v90);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v46 = sub_1E172D494(0, v46[2] + 1, 1, v46);
  }

  v56 = v74;
  v57 = v73;
  v58 = v72;
  v59 = v75;
  v61 = v46[2];
  v60 = v46[3];
  if (v61 >= v60 >> 1)
  {
    v46 = sub_1E172D494(v60 > 1, v61 + 1, 1, v46);
  }

  v46[2] = v61 + 1;
  (*(v82 + 32))(v46 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v61, v84, v83);
  (*(v67 + 104))(v68, *MEMORY[0x1E69ABA30], v69);
  sub_1E1300B24(&v65[*(v50 + 28)], v90);
  v62 = v70;
  sub_1E1AF18CC();
  sub_1E1AF182C();
  (*(v56 + 8))(v57, v59);
  sub_1E1AF106C();
  return (*(v71 + 8))(v62, v58);
}

void *sub_1E19D0650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>, CGFloat a6@<D2>, CGFloat a7@<D3>)
{
  v14 = v7 + *(a2 + 28);
  if (*(v14 + *(type metadata accessor for AppTrailerLockupLayout.Metrics(0) + 40)) == 1)
  {

    return sub_1E19CE880(a1, a3, a4, a5, a6, a7);
  }

  else
  {

    return sub_1E19CF900(a1, a3, a4, a5, a6, a7);
  }
}

double _s11AppStoreKit0A19TrailerLockupLayoutV21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v25 = sub_1E1AF127C();
  v3 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF162C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF165C();
  v27 = *(v9 - 8);
  v28 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E1AF745C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECEB16C8 != -1)
  {
    swift_once();
  }

  v30[0] = qword_1ECEF4D70;

  sub_1E1AF102C();
  Conditional<>.value(in:rounded:)(v29, v15);
  (*(v13 + 8))(v15, v12);

  (*(v7 + 104))(v26, *MEMORY[0x1E69AB970], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB39D0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1E1B04930;
  sub_1E1300B24(a1, v30);
  v17 = sub_1E1AF1A1C();
  v18 = MEMORY[0x1E69ABA90];
  *(v16 + 56) = v17;
  *(v16 + 64) = v18;
  __swift_allocate_boxed_opaque_existential_0((v16 + 32));
  sub_1E1AF1A2C();
  sub_1E1300B24(a1 + 40, v30);
  *(v16 + 96) = v17;
  *(v16 + 104) = v18;
  __swift_allocate_boxed_opaque_existential_0((v16 + 72));
  sub_1E1AF1A2C();
  v19 = type metadata accessor for AppTrailerLockupLayout.Metrics(0);
  (*(v3 + 16))(v5, a1 + v19[6], v25);
  v20 = sub_1E1AF17BC();
  v21 = MEMORY[0x1E69AB9D8];
  *(v16 + 136) = v20;
  *(v16 + 144) = v21;
  __swift_allocate_boxed_opaque_existential_0((v16 + 112));
  sub_1E1AF17CC();
  sub_1E1300B24(a1 + v19[7], v30);
  *(v16 + 176) = v17;
  *(v16 + 184) = v18;
  __swift_allocate_boxed_opaque_existential_0((v16 + 152));
  sub_1E1AF1A2C();
  sub_1E1300B24(a1 + v19[8], v30);
  *(v16 + 216) = v17;
  *(v16 + 224) = v18;
  __swift_allocate_boxed_opaque_existential_0((v16 + 192));
  sub_1E1AF1A2C();
  sub_1E1AF163C();
  sub_1E1AF161C();
  v23 = v22;
  (*(v27 + 8))(v11, v28);
  return v23;
}

void sub_1E19D0C34()
{
  sub_1E138432C(319, &qword_1EE1D2AB0);
  if (v0 <= 0x3F)
  {
    sub_1E19D0D08();
    if (v1 <= 0x3F)
    {
      sub_1E138432C(319, &qword_1EE1D2AE0);
      if (v2 <= 0x3F)
      {
        type metadata accessor for AppTrailerLockupLayout.Metrics(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E19D0D08()
{
  if (!qword_1EE1D2AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB2AC0);
    v0 = sub_1E1AF6D9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1D2AD0);
    }
  }
}

void sub_1E19D0D94()
{
  sub_1E138432C(319, &qword_1EE1D2AC0);
  if (v0 <= 0x3F)
  {
    sub_1E1AF127C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for UIEdgeInsets(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E19D0E54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t GuidedSearchToken.withSelection(_:)(int a1)
{
  v2 = v1;
  v27 = a1;
  v3 = sub_1E1AEFEAC();
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  sub_1E134E724((v2 + 10), v33);
  v9 = v2[2];
  v10 = v2[3];
  v11 = v2[6];
  v26 = v2[5];
  v12 = v2[7];
  v13 = v2[8];
  v24 = v9;
  v25 = v12;
  v14 = v2[9];
  sub_1E134FD1C(v2 + OBJC_IVAR____TtC11AppStoreKit17GuidedSearchToken_impressionMetrics, v8, &unk_1ECEB1770);
  v15 = swift_allocObject();
  sub_1E134FD1C(v33, &v30, &unk_1ECEB5670);
  if (*(&v31 + 1))
  {
    v16 = v31;
    *(v15 + 80) = v30;
    *(v15 + 96) = v16;
    *(v15 + 112) = v32;
  }

  else
  {

    sub_1E1AEFE9C();
    v17 = sub_1E1AEFE7C();
    v19 = v18;
    (*(v22 + 8))(v5, v23);
    v28 = v17;
    v29 = v19;
    sub_1E1AF6F6C();
    sub_1E1308058(&v30, &unk_1ECEB5670);
  }

  sub_1E1308058(v33, &unk_1ECEB5670);
  sub_1E134B7C8(v8, v15 + OBJC_IVAR____TtC11AppStoreKit17GuidedSearchToken_impressionMetrics);
  *(v15 + 16) = v24;
  *(v15 + 24) = v10;
  *(v15 + 32) = v27 & 1;
  v20 = v25;
  *(v15 + 40) = v26;
  *(v15 + 48) = v11;
  *(v15 + 56) = v20;
  *(v15 + 64) = v13;
  *(v15 + 72) = v14;
  return v15;
}

uint64_t GuidedSearchToken.__allocating_init(id:value:isSelected:leadingIconSymbolName:displayName:clickAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  LODWORD(v14) = a4;
  v34 = a2;
  v35 = a3;
  v33 = a10;
  v36 = a9;
  v16 = sub_1E1AEFEAC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  sub_1E134FD1C(a1, &v39, &unk_1ECEB5670);
  if (*(&v40 + 1))
  {
    v21 = v40;
    *(v20 + 80) = v39;
    *(v20 + 96) = v21;
    *(v20 + 112) = v41;
  }

  else
  {
    sub_1E1AEFE9C();
    v22 = sub_1E1AEFE7C();
    v31 = v14;
    v14 = a6;
    v23 = a8;
    v24 = v22;
    v32 = a5;
    v25 = a7;
    v27 = v26;
    (*(v17 + 8))(v19, v16);
    v37 = v24;
    v38 = v27;
    a8 = v23;
    a6 = v14;
    LOBYTE(v14) = v31;
    a7 = v25;
    a5 = v32;
    sub_1E1AF6F6C();
    sub_1E1308058(&v39, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  sub_1E134B7C8(v33, v20 + OBJC_IVAR____TtC11AppStoreKit17GuidedSearchToken_impressionMetrics);
  v28 = v35;
  *(v20 + 16) = v34;
  *(v20 + 24) = v28;
  *(v20 + 32) = v14 & 1;
  *(v20 + 40) = a5;
  *(v20 + 48) = a6;
  *(v20 + 56) = a7;
  *(v20 + 64) = a8;
  *(v20 + 72) = v36;
  return v20;
}

uint64_t GuidedSearchToken.init(id:value:isSelected:leadingIconSymbolName:displayName:clickAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  LODWORD(v16) = a4;
  v35 = a2;
  v36 = a3;
  v34 = a10;
  v37 = a9;
  v18 = sub_1E1AEFEAC();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E134FD1C(a1, &v40, &unk_1ECEB5670);
  if (*(&v41 + 1))
  {
    v43 = v40;
    v44 = v41;
    v45 = v42;
  }

  else
  {
    sub_1E1AEFE9C();
    v22 = sub_1E1AEFE7C();
    v32 = v16;
    v16 = a6;
    v23 = a8;
    v24 = v22;
    v33 = a5;
    v25 = a7;
    v27 = v26;
    (*(v19 + 8))(v21, v18);
    v38 = v24;
    v39 = v27;
    a8 = v23;
    a6 = v16;
    LOBYTE(v16) = v32;
    a7 = v25;
    a5 = v33;
    sub_1E1AF6F6C();
    sub_1E1308058(&v40, &unk_1ECEB5670);
  }

  sub_1E1308058(a1, &unk_1ECEB5670);
  v28 = v44;
  *(v11 + 80) = v43;
  *(v11 + 96) = v28;
  *(v11 + 112) = v45;
  sub_1E134B7C8(v34, v11 + OBJC_IVAR____TtC11AppStoreKit17GuidedSearchToken_impressionMetrics);
  v29 = v36;
  *(v11 + 16) = v35;
  *(v11 + 24) = v29;
  *(v11 + 32) = v16 & 1;
  *(v11 + 40) = a5;
  *(v11 + 48) = a6;
  *(v11 + 56) = a7;
  *(v11 + 64) = a8;
  *(v11 + 72) = v37;
  return v11;
}

uint64_t GuidedSearchToken.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v99 = a2;
  v3 = sub_1E1AF39DC();
  v4 = *(v3 - 8);
  v91 = v3;
  v92 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v81 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v82 = &v72 - v7;
  v8 = sub_1E1AEFEAC();
  v84 = *(v8 - 8);
  v85 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v83 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E1AF380C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v79 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v87 = &v72 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v86 = &v72 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v72 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v72 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v72 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v72 - v27;
  v29 = a1;
  sub_1E1AF381C();
  v80 = sub_1E1AF37CC();
  v31 = v30;
  v34 = *(v11 + 8);
  v32 = v11 + 8;
  v33 = v34;
  v34(v28, v10);
  if (!v31)
  {
    v42 = sub_1E1AF5A7C();
    sub_1E19D2590(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v43 = 0x65756C6176;
    v44 = v90;
    v43[1] = 0xE500000000000000;
    v43[2] = v44;
    (*(*(v42 - 8) + 104))(v43, *MEMORY[0x1E69AB690], v42);
LABEL_7:
    swift_willThrow();
    (*(v92 + 8))(v99, v91);
    v33(v29, v10);
    return v25;
  }

  v89 = v31;
  sub_1E1AF381C();
  v77 = sub_1E1AF37CC();
  v36 = v35;
  v33(v25, v10);
  if (!v36)
  {

    v45 = sub_1E1AF5A7C();
    sub_1E19D2590(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v46 = 0x4E79616C70736964;
    v46[1] = 0xEB00000000656D61;
    v46[2] = v90;
    (*(*(v45 - 8) + 104))(v46, *MEMORY[0x1E69AB690], v45);
    goto LABEL_7;
  }

  v78 = v36;
  v25 = 0x7463656C65537369;
  sub_1E1AF381C();
  v74 = sub_1E1AF370C();
  v37 = v74;
  v33(v22, v10);
  v38 = v33;
  v39 = v29;
  if (v37 == 2)
  {

    v40 = sub_1E1AF5A7C();
    sub_1E19D2590(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v41 = 0x7463656C65537369;
    v41[1] = 0xEA00000000006465;
    v41[2] = v90;
    (*(*(v40 - 8) + 104))(v41, *MEMORY[0x1E69AB690], v40);
    swift_willThrow();
    (*(v92 + 8))(v99, v91);
    v38(v29, v10);
  }

  else
  {
    v75 = v38;
    v76 = v32;
    sub_1E1AF381C();
    v48 = sub_1E1AF37CC();
    if (v49)
    {
      *&v95 = v48;
      *(&v95 + 1) = v49;
    }

    else
    {
      v50 = v83;
      sub_1E1AEFE9C();
      v51 = sub_1E1AEFE7C();
      v53 = v52;
      (*(v84 + 8))(v50, v85);
      *&v95 = v51;
      *(&v95 + 1) = v53;
    }

    sub_1E1AF6F6C();
    v54 = v75;
    v75(v19, v10);
    v55 = v86;
    sub_1E1AF381C();
    v72 = sub_1E1AF37CC();
    v73 = v56;
    v54(v55, v10);
    type metadata accessor for Action();
    v57 = v87;
    sub_1E1AF381C();
    v25 = v39;
    v58 = v99;
    v59 = v88;
    v60 = static Action.makeInstance(byDeserializing:using:)(v57, v99);
    if (v59)
    {

      (*(v92 + 8))(v58, v91);
      v54(v25, v10);
      v54(v57, v10);
      sub_1E1308058(v98, &unk_1ECEB5670);
    }

    else
    {
      v86 = v60;
      v87 = v10;
      v54(v57, v10);
      sub_1E1AF46DC();
      v88 = v25;
      sub_1E1AF381C();
      v61 = v91;
      (*(v92 + 16))(v81, v58, v91);
      v62 = v82;
      sub_1E1AF464C();
      v25 = swift_allocObject();
      sub_1E134FD1C(v98, &v95, &unk_1ECEB5670);
      if (*(&v96 + 1))
      {
        v63 = v96;
        *(v25 + 80) = v95;
        *(v25 + 96) = v63;
        *(v25 + 112) = v97;
      }

      else
      {
        v64 = v83;
        sub_1E1AEFE9C();
        v65 = sub_1E1AEFE7C();
        v67 = v66;
        (*(v84 + 8))(v64, v85);
        v93 = v65;
        v94 = v67;
        sub_1E1AF6F6C();
        sub_1E1308058(&v95, &unk_1ECEB5670);
      }

      v68 = v73;
      v69 = v72;
      (*(v92 + 8))(v99, v61);
      v75(v88, v87);
      sub_1E1308058(v98, &unk_1ECEB5670);
      sub_1E134B7C8(v62, v25 + OBJC_IVAR____TtC11AppStoreKit17GuidedSearchToken_impressionMetrics);
      v70 = v89;
      *(v25 + 16) = v80;
      *(v25 + 24) = v70;
      *(v25 + 32) = v74 & 1;
      *(v25 + 40) = v69;
      *(v25 + 48) = v68;
      v71 = v78;
      *(v25 + 56) = v77;
      *(v25 + 64) = v71;
      *(v25 + 72) = v86;
    }
  }

  return v25;
}

uint64_t GuidedSearchToken.value.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t GuidedSearchToken.leadingIconSymbolName.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t GuidedSearchToken.displayName.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t GuidedSearchToken.segue.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 72);
  a1[3] = type metadata accessor for Action();
  a1[4] = sub_1E19D2590(qword_1EE1D2F80, type metadata accessor for Action);
  *a1 = v3;
}

uint64_t GuidedSearchToken.deinit()
{

  sub_1E134B88C(v0 + 80);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit17GuidedSearchToken_impressionMetrics, &unk_1ECEB1770);
  return v0;
}

uint64_t GuidedSearchToken.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 80);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit17GuidedSearchToken_impressionMetrics, &unk_1ECEB1770);

  return swift_deallocClassInstance();
}

uint64_t sub_1E19D2270@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 72);
  a1[3] = type metadata accessor for Action();
  a1[4] = sub_1E19D2590(qword_1EE1D2F80, type metadata accessor for Action);
  *a1 = v3;
}

uint64_t sub_1E19D22F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = GuidedSearchToken.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t GuidedSearchToken.debugDescription.getter()
{
  v4 = *(v0 + 16);

  MEMORY[0x1E68FECA0](8250, 0xE200000000000000);
  if (*(v0 + 32))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 32))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1E68FECA0](v1, v2);

  return v4;
}

uint64_t sub_1E19D23F0()
{
  v1 = *v0;
  v5 = *(*v0 + 16);

  MEMORY[0x1E68FECA0](8250, 0xE200000000000000);
  if (*(v1 + 32))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v1 + 32))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1E68FECA0](v2, v3);

  return v5;
}

BOOL _s11AppStoreKit17GuidedSearchTokenC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v4 && (sub_1E1AF74AC() & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v6 = *(a1 + 48);
  v7 = *(a2 + 48);
  if (v6)
  {
    if (!v7 || (*(a1 + 40) != *(a2 + 40) || v6 != v7) && (sub_1E1AF74AC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if ((*(a1 + 56) != *(a2 + 56) || *(a1 + 64) != *(a2 + 64)) && (sub_1E1AF74AC() & 1) == 0)
  {
    return 0;
  }

  return *(a1 + 72) == *(a2 + 72);
}