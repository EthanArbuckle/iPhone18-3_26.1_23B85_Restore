uint64_t sub_1915F6BE4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF628, &qword_191672A90);
  result = sub_19166C078();
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
      sub_19166C778();

      sub_19166B828();
      result = sub_19166C7B8();
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

uint64_t sub_1915F6E1C(uint64_t a1)
{
  v2 = v1;
  v38 = sub_19166B2D8();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF688, &qword_191672B00);
  v11 = sub_19166C078();
  result = v9;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v4 + 16;
    v37 = v4;
    v19 = v11 + 56;
    v34 = (v4 + 32);
    v35 = result;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v37 + 72);
      (*(v37 + 16))(v8, *(result + 48) + v24 * (v21 | (v13 << 6)), v38);
      v25 = *(v11 + 40);
      sub_1915F8244(&qword_1EADAF678);
      result = sub_19166B6B8();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v34)(*(v11 + 48) + v20 * v24, v8, v38);
      ++*(v11 + 16);
      result = v35;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
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
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1915F7124(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe, v9);
    bzero(v14 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v10 = sub_1915F7378((v14 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v13 = swift_slowAlloc();

    v10 = sub_1915F72E8(v13, v6, a2, a1);

    MEMORY[0x193AFEC10](v13, -1, -1);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void *sub_1915F72E8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_1915F7378(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1915F7378(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = a2;
  v73 = a1;
  v6 = sub_19166B2D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v82 = (v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = v68 - v14;
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v83 = (v68 - v18);
  result = MEMORY[0x1EEE9AC00](v17, v19);
  v72 = v68 - v21;
  v22 = *(a3 + 16);
  v23 = *(a4 + 16);
  v84 = v7 + 16;
  v80 = a4;
  v81 = a3;
  v76 = v7;
  if (v23 >= v22)
  {
    v48 = 0;
    v49 = *(a3 + 56);
    v71 = a3 + 56;
    v50 = 1 << *(a3 + 32);
    if (v50 < 64)
    {
      v51 = ~(-1 << v50);
    }

    else
    {
      v51 = -1;
    }

    v52 = v51 & v49;
    v53 = (v50 + 63) >> 6;
    v79 = a4 + 56;
    v83 = (v7 + 8);
    j = v53;
    v75 = 0;
    if (v52)
    {
      goto LABEL_30;
    }

LABEL_31:
    v55 = v48;
    while (1)
    {
      v48 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v48 >= v53)
      {
LABEL_44:

        return sub_1915F7A10(v73, v69, v75, a3);
      }

      v56 = *(v71 + 8 * v48);
      ++v55;
      if (v56)
      {
        v54 = __clz(__rbit64(v56));
        for (i = ((v56 - 1) & v56); ; i = ((v52 - 1) & v52))
        {
          v57 = v54 | (v48 << 6);
          v58 = *(a3 + 48);
          v59 = *(v7 + 72);
          v77 = v57;
          v60 = *(v7 + 16);
          v60(v82, v58 + v59 * v57, v6);
          v61 = *(a4 + 40);
          sub_1915F8244(&qword_1EADAF678);
          v62 = sub_19166B6B8();
          v63 = -1 << *(a4 + 32);
          v64 = v62 & ~v63;
          if ((*(v79 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64))
          {
            v72 = (v83 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v65 = ~v63;
            while (1)
            {
              v60(v15, *(v80 + 48) + v64 * v59, v6);
              sub_1915F8244(&qword_1EADAF680);
              v66 = sub_19166B6E8();
              v67 = *v83;
              (*v83)(v15, v6);
              if (v66)
              {
                break;
              }

              v64 = (v64 + 1) & v65;
              if (((*(v79 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) == 0)
              {
                a4 = v80;
                goto LABEL_42;
              }
            }

            result = (v67)(v82, v6);
            v7 = v76;
            *(v73 + ((v77 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v77;
            v53 = j;
            v32 = __OFADD__(v75++, 1);
            a4 = v80;
            a3 = v81;
            v52 = i;
            if (v32)
            {
              goto LABEL_47;
            }

            if (!i)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v67 = *v83;
LABEL_42:
            result = (v67)(v82, v6);
            a3 = v81;
            v7 = v76;
            v53 = j;
            v52 = i;
            if (!i)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v54 = __clz(__rbit64(v52));
        }
      }
    }

    __break(1u);
  }

  else
  {
    v75 = 0;
    v24 = a4;
    v25 = 0;
    v27 = v24 + 56;
    v26 = *(v24 + 56);
    v68[0] = v27;
    v28 = 1 << *(v27 - 24);
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v30 = v29 & v26;
    v31 = (v28 + 63) >> 6;
    v70 = v7 + 32;
    v71 = v31;
    v77 = a3 + 56;
    v82 = (v7 + 8);
    if (v30)
    {
      goto LABEL_9;
    }

LABEL_10:
    v34 = v25;
    while (1)
    {
      v25 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v25 >= v31)
      {
        goto LABEL_44;
      }

      v35 = *(v68[0] + 8 * v25);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        for (j = (v35 - 1) & v35; ; j = (v30 - 1) & v30)
        {
          v36 = *(v7 + 72);
          v37 = *(v80 + 48) + v36 * (v33 | (v25 << 6));
          v38 = v72;
          i = *(v7 + 16);
          v79 = v36;
          i(v72, v37, v6);
          (*(v7 + 32))(v83, v38, v6);
          v39 = *(a3 + 40);
          sub_1915F8244(&qword_1EADAF678);
          v40 = sub_19166B6B8();
          v41 = -1 << *(a3 + 32);
          v42 = v40 & ~v41;
          v43 = v42 >> 6;
          v44 = 1 << v42;
          if (((1 << v42) & *(v77 + 8 * (v42 >> 6))) != 0)
          {
            v68[1] = v82 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v45 = ~v41;
            while (1)
            {
              i(v15, *(v81 + 48) + v42 * v79, v6);
              sub_1915F8244(&qword_1EADAF680);
              v46 = sub_19166B6E8();
              v47 = *v82;
              (*v82)(v15, v6);
              if (v46)
              {
                break;
              }

              v42 = (v42 + 1) & v45;
              v43 = v42 >> 6;
              v44 = 1 << v42;
              if (((1 << v42) & *(v77 + 8 * (v42 >> 6))) == 0)
              {
                a3 = v81;
                goto LABEL_21;
              }
            }

            result = (v47)(v83, v6);
            v30 = j;
            v73[v43] |= v44;
            v7 = v76;
            v32 = __OFADD__(v75++, 1);
            a3 = v81;
            v31 = v71;
            if (v32)
            {
              goto LABEL_48;
            }

            if (!v30)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v47 = *v82;
LABEL_21:
            result = (v47)(v83, v6);
            v7 = v76;
            v31 = v71;
            v30 = j;
            if (!j)
            {
              goto LABEL_10;
            }
          }

LABEL_9:
          v33 = __clz(__rbit64(v30));
        }
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_1915F7A10(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = sub_19166B2D8();
  v8 = *(v38 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v38, v10);
  v37 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF688, &qword_191672B00);
  result = sub_19166C088();
  v12 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 56;
  v33 = (v8 + 32);
  v34 = v8 + 16;
  v32 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v35 = (v14 - 1) & v14;
LABEL_16:
    v20 = *(a4 + 48);
    v36 = *(v8 + 72);
    (*(v8 + 16))(v37, v20 + v36 * (v17 | (v15 << 6)), v38);
    v21 = *(v12 + 40);
    sub_1915F8244(&qword_1EADAF678);
    result = sub_19166B6B8();
    v22 = -1 << *(v12 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v16 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v16 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    result = (*v33)(*(v12 + 48) + v25 * v36, v37, v38);
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v32;
    v14 = v35;
    if (!a3)
    {
LABEL_28:

      return v12;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_28;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v35 = (v19 - 1) & v19;
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

uint64_t sub_1915F7D24(uint64_t a1)
{
  v2 = sub_19166B2D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2, v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  v13 = sub_1915F8244(&qword_1EADAF678);
  result = MEMORY[0x193AFCB90](v12, v2, v13);
  v21 = result;
  if (v12)
  {
    v17 = *(v3 + 16);
    v15 = v3 + 16;
    v16 = v17;
    v18 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v19 = *(v15 + 56);
    do
    {
      v16(v8, v18, v2);
      sub_1915F5BF4(v11, v8);
      (*(v15 - 8))(v11, v2);
      v18 += v19;
      --v12;
    }

    while (v12);
    return v21;
  }

  return result;
}

uint64_t sub_1915F7EAC(uint64_t a1)
{
  v2 = sub_19166B2D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2, v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v19 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);
    do
    {
      v15(v8, v17, v2);
      sub_1915F5BF4(v12, v8);
      result = (*(v14 - 8))(v12, v2);
      v17 += v18;
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t sub_1915F8014@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return sub_1915F3D8C(a1);
}

void *sub_1915F8050@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v8);
  if (!v2)
  {
    v7 = HIDWORD(v8);
    *a1 = v8;
    *(a1 + 4) = v7;
  }

  return result;
}

uint64_t type metadata accessor for AXCachedLocaleCharacterSupportMatrix()
{
  result = qword_1EADAF610;
  if (!qword_1EADAF610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1915F80F0()
{
  result = sub_19166B388();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_19166AF68();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1915F8244(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_19166B2D8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AXAsyncTimer.__allocating_init(_:repeats:_:)(char a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v17 - v11;
  v13 = swift_allocObject();
  v14 = sub_19166BB58();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = a4;
  *(v15 + 40) = a2;
  *(v15 + 48) = a3;
  *(v15 + 56) = a1;
  *(v13 + 16) = sub_1915D42EC(0, 0, v12, &unk_191672B30, v15);
  return v13;
}

uint64_t AXAsyncTimer.init(_:repeats:_:)(char a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v17 - v12;
  v14 = sub_19166BB58();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = a4;
  *(v15 + 40) = a2;
  *(v15 + 48) = a3;
  *(v15 + 56) = a1;
  *(v4 + 16) = sub_1915D42EC(0, 0, v13, &unk_191672B38, v15);
  return v4;
}

uint64_t sub_1915F8538(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 33) = a7;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6;
  *(v7 + 40) = a1;
  v8 = sub_19166C1B8();
  *(v7 + 64) = v8;
  v9 = *(v8 - 8);
  *(v7 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 80) = swift_task_alloc();
  v11 = sub_19166C1A8();
  *(v7 + 88) = v11;
  v12 = *(v11 - 8);
  *(v7 + 96) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1915F8668, 0, 0);
}

uint64_t sub_1915F8668()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 40);
  sub_19166C178();
  sub_19166C818();
  sub_19166C188();
  v6 = *(v4 + 8);
  *(v0 + 120) = v6;
  *(v0 + 128) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v3);
  v7 = *(v0 + 80);
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  sub_19166C708();
  v8 = *(MEMORY[0x1E69E86D0] + 4);
  v9 = swift_task_alloc();
  *(v0 + 136) = v9;
  v10 = sub_1915F910C();
  *v9 = v0;
  v9[1] = sub_1915F879C;
  v11 = *(v0 + 112);
  v12 = *(v0 + 80);
  v13 = *(v0 + 64);

  return MEMORY[0x1EEE6DA68](v11, v0 + 16, v12, v13, v10);
}

uint64_t sub_1915F879C()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v6 = *v1;
  *(*v1 + 144) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);
  if (v0)
  {
    v4 = sub_1915F8CD4;
  }

  else
  {
    v4 = sub_1915F88E0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1915F88E0()
{
  if (sub_19166BC48())
  {
    v1 = *(v0 + 128);
    v2 = *(v0 + 104);
    v3 = *(v0 + 80);
    (*(v0 + 120))(*(v0 + 112), *(v0 + 88));

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v9 = (*(v0 + 48) + **(v0 + 48));
    v6 = *(*(v0 + 48) + 4);
    v7 = swift_task_alloc();
    *(v0 + 152) = v7;
    *v7 = v0;
    v7[1] = sub_1915F8A40;
    v8 = *(v0 + 56);

    return v9();
  }
}

uint64_t sub_1915F8A40()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1915F8B3C, 0, 0);
}

uint64_t sub_1915F8B3C()
{
  if (*(v0 + 33) == 1 && (sub_19166BC48() & 1) == 0)
  {
    v7 = *(v0 + 120);
    v6 = *(v0 + 128);
    v8 = *(v0 + 104);
    v9 = *(v0 + 112);
    v10 = *(v0 + 88);
    v11 = *(v0 + 96);
    v12 = *(v0 + 40);
    sub_19166C818();
    sub_19166C198();
    v7(v9, v10);
    (*(v11 + 32))(v9, v8, v10);
    v13 = *(v0 + 80);
    *(v0 + 24) = 0;
    *(v0 + 16) = 0;
    *(v0 + 32) = 1;
    sub_19166C708();
    v14 = *(MEMORY[0x1E69E86D0] + 4);
    v15 = swift_task_alloc();
    *(v0 + 136) = v15;
    v16 = sub_1915F910C();
    *v15 = v0;
    v15[1] = sub_1915F879C;
    v17 = *(v0 + 112);
    v18 = *(v0 + 80);
    v19 = *(v0 + 64);

    return MEMORY[0x1EEE6DA68](v17, v0 + 16, v18, v19, v16);
  }

  else
  {
    v1 = *(v0 + 128);
    v2 = *(v0 + 104);
    v3 = *(v0 + 80);
    (*(v0 + 120))(*(v0 + 112), *(v0 + 88));

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1915F8CD4()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  (*(v0 + 120))(*(v0 + 112), *(v0 + 88));

  v4 = *(v0 + 8);
  v5 = *(v0 + 144);

  return v4();
}

uint64_t sub_1915F8D64(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1915D8338;

  return sub_1915F8538(v6, a1, v4, v5, v7, v8, v9);
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

uint64_t sub_1915F8E7C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1915D4F90;

  return sub_1915F8538(v6, a1, v4, v5, v7, v8, v9);
}

Swift::Void __swiftcall AXAsyncTimer.cancel()()
{
  v1 = *(v0 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3B8, &qword_1916724F0);
  sub_19166BC28();
}

uint64_t AXAsyncTimer.deinit()
{
  v1 = *(v0 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3B8, &qword_1916724F0);
  sub_19166BC28();

  v2 = *(v0 + 16);

  return v0;
}

uint64_t AXAsyncTimer.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3B8, &qword_1916724F0);
  sub_19166BC28();

  v2 = *(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_1915F910C()
{
  result = qword_1EADAF6B0;
  if (!qword_1EADAF6B0)
  {
    sub_19166C1B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAF6B0);
  }

  return result;
}

const char *sub_1915F9164()
{
  result = "com.apple.Accessibility";
  if ("com.apple.Accessibility")
  {
    result = sub_19166B878();
    qword_1EADAE520 = result;
    unk_1EADAE528 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1915F919C()
{
  v0 = sub_19166B548();
  __swift_allocate_value_buffer(v0, qword_1EADAF6B8);
  __swift_project_value_buffer(v0, qword_1EADAF6B8);
  result = AXLogTemp();
  if (result)
  {
    return sub_19166B558();
  }

  __break(1u);
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1915F92A8()
{
  v0 = sub_19166B548();
  __swift_allocate_value_buffer(v0, qword_1EADAF6E8);
  __swift_project_value_buffer(v0, qword_1EADAF6E8);
  if (qword_1EADAE518 != -1)
  {
    swift_once();
  }

  return sub_19166B538();
}

uint64_t sub_1915F941C()
{
  v0 = sub_19166B548();
  __swift_allocate_value_buffer(v0, qword_1EADAF718);
  __swift_project_value_buffer(v0, qword_1EADAF718);
  if (qword_1EADAE518 != -1)
  {
    swift_once();
  }

  return sub_19166B538();
}

uint64_t sub_1915F976C()
{
  v0 = sub_19166B548();
  __swift_allocate_value_buffer(v0, qword_1EADAF808);
  __swift_project_value_buffer(v0, qword_1EADAF808);
  if (qword_1EADAE518 != -1)
  {
    swift_once();
  }

  return sub_19166B538();
}

uint64_t sub_1915F984C()
{
  v0 = sub_19166B548();
  __swift_allocate_value_buffer(v0, qword_1EADAF820);
  __swift_project_value_buffer(v0, qword_1EADAF820);
  if (qword_1EADAE518 != -1)
  {
    swift_once();
  }

  return sub_19166B538();
}

uint64_t sub_1915F9AF0()
{
  v0 = sub_19166B548();
  __swift_allocate_value_buffer(v0, qword_1EADAF8C8);
  __swift_project_value_buffer(v0, qword_1EADAF8C8);
  if (qword_1EADAE518 != -1)
  {
    swift_once();
  }

  return sub_19166B538();
}

uint64_t sub_1915F9BD0()
{
  v0 = sub_19166B548();
  __swift_allocate_value_buffer(v0, qword_1EADAF8E0);
  __swift_project_value_buffer(v0, qword_1EADAF8E0);
  if (qword_1EADAE518 != -1)
  {
    swift_once();
  }

  return sub_19166B538();
}

uint64_t sub_1915F9CB0()
{
  v0 = sub_19166B548();
  __swift_allocate_value_buffer(v0, qword_1EADAF8F8);
  __swift_project_value_buffer(v0, qword_1EADAF8F8);
  if (qword_1EADAE518 != -1)
  {
    swift_once();
  }

  return sub_19166B538();
}

uint64_t sub_1915F9E7C()
{
  v0 = sub_19166B548();
  __swift_allocate_value_buffer(v0, qword_1EADAF958);
  __swift_project_value_buffer(v0, qword_1EADAF958);
  if (qword_1EADAE518 != -1)
  {
    swift_once();
  }

  return sub_19166B538();
}

uint64_t sub_1915FA038()
{
  v0 = sub_19166B548();
  __swift_allocate_value_buffer(v0, qword_1EADAF9B8);
  __swift_project_value_buffer(v0, qword_1EADAF9B8);
  if (qword_1EADAE518 != -1)
  {
    swift_once();
  }

  return sub_19166B538();
}

uint64_t sub_1915FA118()
{
  v0 = sub_19166B548();
  __swift_allocate_value_buffer(v0, qword_1EADAF9D0);
  __swift_project_value_buffer(v0, qword_1EADAF9D0);
  if (qword_1EADAE518 != -1)
  {
    swift_once();
  }

  return sub_19166B538();
}

uint64_t sub_1915FA420(uint64_t a1, uint64_t *a2)
{
  v3 = sub_19166B548();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  if (qword_1EADAE518 != -1)
  {
    swift_once();
  }

  return sub_19166B538();
}

uint64_t sub_1915FA4FC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_19166B548();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t getEnumTagSinglePayload for AXLog(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AXLog(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void __swiftcall AXCoreSettings.init()(AXCoreSettings *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for AXCoreSettings()
{
  result = qword_1EADAFAA8;
  if (!qword_1EADAFAA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADAFAA8);
  }

  return result;
}

uint64_t Locale.init(withAXRemapping:)()
{
  v0 = sub_19166B208();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  Locale.Components.init(withAXRemapping:)(&v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_19166B218();
}

uint64_t Locale.Components.init(withAXRemapping:)@<X0>(uint64_t a1@<X8>)
{
  while (1)
  {
    v1 = a1;
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E0, &unk_191672A20);
    v3 = *(*(v2 - 8) + 64);
    v5 = MEMORY[0x1EEE9AC00](v2 - 8, v4);
    v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x1EEE9AC00](v5, v7);
    v9 = &v39 - v8;
    v10 = sub_19166B328();
    v11 = *(v10 - 8);
    v12 = *(v11 + 64);
    MEMORY[0x1EEE9AC00](v10, v13);
    v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (qword_1EADAE930 != -1)
    {
      swift_once();
    }

    v16 = qword_1EADB6D78;
    v17 = sub_19166B7B8();
    if (!*(v16 + 16))
    {
      break;
    }

    v39 = sub_1915DB0E4(v17, v18);
    v20 = v19;

    if ((v20 & 1) == 0)
    {
      goto LABEL_9;
    }

    v21 = (*(v16 + 56) + 16 * v39);
    v22 = *v21;
    v23 = v21[1];

    a1 = v1;
  }

LABEL_9:
  sub_19166B1F8();
  sub_19166B1E8();
  sub_19166B308();
  (*(v11 + 8))(v15, v10);
  v24 = sub_19166B278();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v9, 1, v24))
  {
    return sub_19159E780(v9, &qword_1EADAF5E0, &unk_191672A20);
  }

  sub_19166B238();
  sub_19159E780(v9, &qword_1EADAF5E0, &unk_191672A20);
  v27 = sub_19166B7B8();
  v29 = v28;

  if (qword_1EADAE938 != -1)
  {
    swift_once();
  }

  v30 = qword_1EADB6D80;
  if (!*(qword_1EADB6D80 + 16))
  {
  }

  v31 = sub_1915DB0E4(v27, v29);
  v33 = v32;

  if (v33)
  {
    v34 = (*(v30 + 56) + 16 * v31);
    v35 = *v34;
    v36 = v34[1];

    v37 = v40;
    sub_19166B288();
    (*(v25 + 56))(v37, 0, 1, v24);
    v38 = sub_19166B1D8();
    sub_19166B318();
    return v38(v41, 0);
  }

  return result;
}

Swift::String __swiftcall Locale.canonicIdentifier(includeScript:)(Swift::Bool includeScript)
{
  v88 = includeScript;
  v2 = sub_19166B388();
  v86 = *(v2 - 8);
  v87 = v2;
  v3 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5D0, &qword_1916729E8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v90 = &v85 - v10;
  v11 = sub_19166B248();
  v91 = *(v11 - 8);
  v92 = v11;
  v12 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v85 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5D8, &qword_1916729F0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v89 = &v85 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF608, &qword_191672A18);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v23 = &v85 - v22;
  v24 = sub_19166B368();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v28 = MEMORY[0x1EEE9AC00](v24, v27);
  v30 = &v85 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v31);
  v33 = &v85 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E0, &unk_191672A20);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8, v36);
  v38 = &v85 - v37;
  v93 = v1;
  sub_19166B378();
  sub_19166B338();
  v39 = *(v25 + 8);
  v39(v33, v24);
  v40 = sub_19166B278();
  v41 = *(v40 - 8);
  if ((*(v41 + 48))(v38, 1, v40) == 1)
  {
    sub_19159E780(v38, &qword_1EADAF5E0, &unk_191672A20);
    v42 = sub_19166BD88();
    v43 = AXLogCommon();
    if (v43)
    {
      v45 = v43;
      v47 = v86;
      v46 = v87;
      (*(v86 + 16))(v6, v93, v87);
      if (os_log_type_enabled(v45, v42))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v95 = v49;
        *v48 = 136315138;
        v50 = sub_19166B228();
        v52 = v51;
        (*(v47 + 8))(v6, v46);
        v53 = sub_1915FB514(v50, v52, &v95);

        *(v48 + 4) = v53;
        _os_log_impl(&dword_19159B000, v45, v42, "Malformed Locale with identifier %s is missing language", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v49);
        MEMORY[0x193AFEC10](v49, -1, -1);
        MEMORY[0x193AFEC10](v48, -1, -1);
      }

      else
      {

        (*(v47 + 8))(v6, v46);
      }

      v43 = sub_19166B228();
    }

    else
    {
      __break(1u);
    }

    goto LABEL_24;
  }

  v54 = sub_19166B238();
  v56 = v55;
  (*(v41 + 8))(v38, v40);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4E0, &qword_1916724A0);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_191672210;
  *(v57 + 32) = v54;
  *(v57 + 40) = v56;
  v95 = v57;
  if (v88)
  {
    sub_19166B378();
    sub_19166B358();
    v39(v30, v24);
    v58 = sub_19166B2D8();
    v59 = *(v58 - 8);
    if ((*(v59 + 48))(v23, 1, v58) != 1)
    {
      v61 = sub_19166B238();
      v63 = v62;
      (*(v59 + 8))(v23, v58);
      v65 = *(v57 + 16);
      v64 = *(v57 + 24);
      v60 = v89;
      if (v65 >= v64 >> 1)
      {
        v57 = sub_1915F47A8((v64 > 1), v65 + 1, 1, v57);
      }

      *(v57 + 16) = v65 + 1;
      v66 = v57 + 16 * v65;
      *(v66 + 32) = v61;
      *(v66 + 40) = v63;
      v95 = v57;
      goto LABEL_14;
    }

    sub_19159E780(v23, &qword_1EADAF608, &qword_191672A18);
  }

  v60 = v89;
LABEL_14:
  sub_19166B2F8();
  v67 = sub_19166B2B8();
  v68 = *(v67 - 8);
  if ((*(v68 + 48))(v60, 1, v67) == 1)
  {
    sub_19159E780(v60, &qword_1EADAF5D8, &qword_1916729F0);
  }

  else
  {
    v69 = sub_19166B238();
    v71 = v70;
    (*(v68 + 8))(v60, v67);
    v73 = *(v57 + 16);
    v72 = *(v57 + 24);
    if (v73 >= v72 >> 1)
    {
      v57 = sub_1915F47A8((v72 > 1), v73 + 1, 1, v57);
    }

    *(v57 + 16) = v73 + 1;
    v74 = v57 + 16 * v73;
    *(v74 + 32) = v69;
    *(v74 + 40) = v71;
    v95 = v57;
  }

  v75 = v90;
  sub_19166B258();
  v77 = v91;
  v76 = v92;
  if ((*(v91 + 48))(v75, 1, v92) == 1)
  {
    sub_19159E780(v75, &qword_1EADAF5D0, &qword_1916729E8);
  }

  else
  {
    v78 = v85;
    (*(v77 + 32))(v85, v75, v76);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1916729D0;
    *(inited + 32) = 117;
    *(inited + 40) = 0xE100000000000000;
    *(inited + 48) = 25715;
    *(inited + 56) = 0xE200000000000000;
    *(inited + 64) = sub_19166B238();
    *(inited + 72) = v80;
    sub_1915E3DD8(inited);
    (*(v77 + 8))(v78, v76);
  }

  v94 = v95;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
  sub_1915FBA48();
  v81 = sub_19166B6D8();
  v83 = v82;

  v44 = v83;
  v43 = v81;
LABEL_24:
  result._object = v44;
  result._countAndFlagsBits = v43;
  return result;
}

uint64_t sub_1915FB514(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1915FB5E0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1915DFD18(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1915FB5E0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1915FB6EC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_19166C108();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1915FB6EC(uint64_t a1, unint64_t a2)
{
  v4 = sub_1915FB738(a1, a2);
  sub_1915FB868(&unk_1F0575908);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1915FB738(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_19163D158(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_19166C108();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_19166B898();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_19163D158(v10, 0);
        result = sub_19166C098();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1915FB868(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1915FB954(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1915FB954(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EADAFAB8, &qword_191674CC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_1915FBA48()
{
  result = qword_1EADAE920;
  if (!qword_1EADAE920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADAFAB0, &qword_191672B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAE920);
  }

  return result;
}

uint64_t sub_1915FBAAC()
{
  v0 = sub_1915FCF54();
  sub_1915A4734(v0);
  return v0;
}

uint64_t sub_1915FBAE0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_19159F5CC(v5);
}

uint64_t *AXAsyncStreamSplitter.__allocating_init(initialValueBlock:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_1915FCF88(a1, a2);
  sub_19159F5CC(a1);
  return v4;
}

uint64_t *AXAsyncStreamSplitter.init(initialValueBlock:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_1915FCF88(a1, a2);
  sub_19159F5CC(a1);
  return v3;
}

uint64_t sub_1915FBC28@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32[1] = a1;
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v33 = v32 - v7;
  v8 = *(v3 + 80);
  v9 = sub_19166BB98();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = v32 - v13;
  v15 = sub_19166BBC8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v20 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = v32 - v22;
  sub_1915D455C(v14);
  sub_19166BB68();
  (*(v10 + 8))(v14, v9);
  v24 = *(v16 + 16);
  v24(v20, v23, v15);
  swift_beginAccess();
  sub_19166BA68();
  sub_19166BA48();
  swift_endAccess();
  swift_beginAccess();
  v25 = v2[2];
  if (v25)
  {
    v26 = v2[3];
    v27 = sub_19166BB58();
    (*(*(v27 - 8) + 56))(v33, 1, 1, v27);
    v24(v20, v23, v15);
    v28 = (*(v16 + 80) + 56) & ~*(v16 + 80);
    v29 = swift_allocObject();
    *(v29 + 2) = 0;
    *(v29 + 3) = 0;
    *(v29 + 4) = v8;
    *(v29 + 5) = v25;
    *(v29 + 6) = v26;
    (*(v16 + 32))(&v29[v28], v20, v15);
    sub_1915A4734(v25);

    v30 = v33;
    sub_1915FC380(0, 0, v33, &unk_191672B90, v29);

    sub_19159F5CC(v25);
    sub_1915D7830(v30);
  }

  return (*(v16 + 8))(v23, v15);
}

uint64_t sub_1915FBFBC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v10 = sub_19166BB78();
  v7[4] = v10;
  v11 = *(v10 - 8);
  v7[5] = v11;
  v12 = *(v11 + 64) + 15;
  v7[6] = swift_task_alloc();
  v13 = *(a7 - 8);
  v7[7] = v13;
  v14 = *(v13 + 64) + 15;
  v7[8] = swift_task_alloc();
  v15 = swift_task_alloc();
  v7[9] = v15;
  v19 = (a4 + *a4);
  v16 = a4[1];
  v17 = swift_task_alloc();
  v7[10] = v17;
  *v17 = v7;
  v17[1] = sub_1915FC180;

  return v19(v15);
}

uint64_t sub_1915FC180()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1915FC27C, 0, 0);
}

uint64_t sub_1915FC27C()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];
  (*(v3 + 16))(v0[8], v1, v6);
  sub_19166BBC8();
  sub_19166BBA8();
  (*(v5 + 8))(v2, v4);
  (*(v3 + 8))(v1, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1915FC380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = v28 - v12;
  sub_1915D77C0(a3, v28 - v12);
  v14 = sub_19166BB58();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_1915D7830(v13);
  }

  else
  {
    sub_19166BB48();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_19166BA78();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_19166B7D8() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_1915FC620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = v28 - v12;
  sub_1915D77C0(a3, v28 - v12);
  v14 = sub_19166BB58();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_1915D7830(v13);
  }

  else
  {
    sub_19166BB48();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_19166BA78();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_19166B7D8() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_1915FC8B8()
{
  v1 = *v0;
  swift_beginAccess();
  v4 = v0[4];
  v3 = *(v1 + 80);
  sub_19166BBC8();
  sub_19166BA68();

  swift_getWitnessTable();
  sub_19166B978();
}

uint64_t sub_1915FC990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_19166BB78();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = v16 - v13;
  (*(v5 + 16))(v8, a2, a3);
  sub_19166BBC8();
  sub_19166BBA8();
  return (*(v10 + 8))(v14, v9);
}

uint64_t *AXAsyncStreamSplitter.deinit()
{
  v1 = v0;
  v2 = *v0;
  swift_beginAccess();
  v7 = v1[4];
  v6 = *(v2 + 80);
  sub_19166BBC8();
  sub_19166BA68();

  swift_getWitnessTable();
  sub_19166B978();

  swift_beginAccess();
  sub_19166BA58();
  swift_endAccess();
  v3 = v1[3];
  sub_19159F5CC(v1[2]);
  v4 = v1[4];

  return v1;
}

uint64_t AXAsyncStreamSplitter.__deallocating_deinit()
{
  AXAsyncStreamSplitter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1915FCC6C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1915FD464;

  return v7(a1);
}

uint64_t sub_1915FCD64(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1915FCE5C;

  return v7(a1);
}

uint64_t sub_1915FCE5C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1915FCF54()
{
  swift_beginAccess();
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t *sub_1915FCF88(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v2[3] = 0;
  v2[2] = 0;
  v6 = *(v5 + 80);
  sub_19166BBC8();
  v2[4] = sub_19166BA28();
  swift_beginAccess();
  v7 = v2[2];
  v8 = v2[3];
  v2[2] = a1;
  v2[3] = a2;
  sub_1915A4734(a1);
  sub_19159F5CC(v7);
  return v2;
}

uint64_t sub_1915FD03C(uint64_t a1)
{
  v4 = v1[4];
  v5 = *(sub_19166BBC8() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1915D4F90;

  return sub_1915FBFBC(a1, v7, v8, v9, v10, v1 + v6, v4);
}

uint64_t sub_1915FD168()
{
  v1 = *(v0 + 16);
  sub_19166BBC8();
  return sub_19166BBB8();
}

uint64_t sub_1915FD2F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1915D8338;

  return sub_1915FCD64(a1, v5);
}

uint64_t sub_1915FD3AC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1915D4F90;

  return sub_1915FCD64(a1, v5);
}

uint64_t AXSettingsAttributes.traits.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  if (*(v3 + 16) && (v4 = sub_1915DB370(&type metadata for AXTraitsKey), (v5 & 1) != 0))
  {
    sub_1915DFD18(*(v3 + 56) + 32 * v4, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADB0270, &unk_191672C20);
  result = swift_dynamicCast();
  v7 = v8;
  if (!result)
  {
    v7 = 0;
  }

  *a1 = v7;
  return result;
}

uint64_t AXSettingsAttributes.init<each A>(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v37 = MEMORY[0x1E69E7CC8];
  if (a2)
  {
    v4 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v28 = a3 & 0xFFFFFFFFFFFFFFFELL;
    v29 = a4;
    v30 = result;
    v31 = a2;
    v5 = result;
    v6 = a2;
    do
    {
      v7 = *v4;
      v34 = v4 + 1;
      v35 = v7;
      v9 = *v5++;
      v8 = v9;
      sub_19166C1C8();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v36 = &v28;
      v11 = *(TupleTypeMetadata2 - 8);
      v12 = *(v11 + 64);
      MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v13);
      v14 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = *(v11 + 16);
      v16 = v15(v14, v8, TupleTypeMetadata2);
      v32 = &v28;
      v17 = *v14;
      v33 = *(TupleTypeMetadata2 + 48);
      MEMORY[0x1EEE9AC00](v16, v18);
      v15(v14, v8, TupleTypeMetadata2);
      v19 = *v14;

      v20 = *(TupleTypeMetadata2 + 48);
      swift_setAtWritableKeyPath();

      (*(*(v35 - 8) + 8))(&v14[v33]);
      v4 = v34;
      --v6;
    }

    while (v6);
    *v29 = v37;
    v21 = v28 - 8;
    v22 = v31;
    v23 = v30 - 8;
    do
    {
      v24 = v22 - 1;
      v25 = *(v21 + 8 * v22);
      v26 = *(v23 + 8 * v22);
      sub_19166C1C8();
      v27 = swift_getTupleTypeMetadata2();
      result = (*(*(v27 - 8) + 8))(v26, v27);
      v22 = v24;
    }

    while (v24);
  }

  else
  {
    *a4 = MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t AXSettingsAttributes.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_19166BF58();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v23 - v14;
  v16 = *v4;
  if (*(v16 + 16) && (v17 = sub_1915DB370(a1), (v18 & 1) != 0))
  {
    sub_1915DFD18(*(v16 + 56) + 32 * v17, v23);
  }

  else
  {
    memset(v23, 0, sizeof(v23));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADB0270, &unk_191672C20);
  v19 = swift_dynamicCast();
  v20 = *(AssociatedTypeWitness - 8);
  v21 = *(v20 + 56);
  if (v19)
  {
    v21(v15, 0, 1, AssociatedTypeWitness);
    return (*(v20 + 32))(a4, v15, AssociatedTypeWitness);
  }

  else
  {
    v21(v15, 1, 1, AssociatedTypeWitness);
    (*(a3 + 24))(a2, a3);
    result = (*(v20 + 48))(v15, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      return (*(v11 + 8))(v15, v10);
    }
  }

  return result;
}

uint64_t AXSettingsAttributes.subscript.setter(uint64_t a1, uint64_t a2)
{
  sub_1915FE1CC(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 8);

  return v4(a1, AssociatedTypeWitness);
}

void (*AXSettingsAttributes.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[4] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  v17 = *v4;
  AXSettingsAttributes.subscript.getter(a2, a3, a4, v15);
  return sub_1915FDBB0;
}

void sub_1915FDBB0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v8 = (*a1)[2];
  v7 = (*a1)[3];
  v10 = **a1;
  v9 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[6], v4, v5);
    sub_1915FE1CC(v3, v10);
    v11 = *(v6 + 8);
    v11(v3, v5);
    v11(v4, v5);
  }

  else
  {
    sub_1915FE1CC((*a1)[7], v10);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

_OWORD *AXSettingsAttributes.traits.setter(uint64_t *a1)
{
  v1 = *a1;
  v3[3] = &type metadata for AXSettingsTrait;
  v3[0] = v1;
  return sub_1915E0E80(v3, &type metadata for AXTraitsKey);
}

void (*AXSettingsAttributes.traits.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = *v1;
  if (*(v5 + 16) && (v6 = sub_1915DB370(&type metadata for AXTraitsKey), (v7 & 1) != 0))
  {
    sub_1915DFD18(*(v5 + 56) + 32 * v6, v4);
  }

  else
  {
    *v4 = 0u;
    *(v4 + 16) = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADB0270, &unk_191672C20);
  v8 = swift_dynamicCast();
  v9 = *(v4 + 32);
  if (!v8)
  {
    v9 = 0;
  }

  *(v4 + 48) = v9;
  return sub_1915FDDF0;
}

void sub_1915FDDF0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v4[3] = &type metadata for AXSettingsTrait;
  v4[0] = v2;
  sub_1915E0E80(v4, &type metadata for AXTraitsKey);

  free(v1);
}

double sub_1915FDE58@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t AXPreferenceKeyPair.key.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AXPreferenceKeyPair.domain.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

AXCoreUtilities::AXPreferenceKeyPair __swiftcall AXPreferenceKeyPair.init(key:domain:)(Swift::String key, Swift::String domain)
{
  *v2 = key;
  v2[1] = domain;
  result.domain = domain;
  result.key = key;
  return result;
}

_OWORD *sub_1915FDED0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4B0, &qword_191672418);
  v5 = swift_allocObject();
  v7[0] = v5;
  v5[2] = v1;
  v5[3] = v2;
  v5[4] = v3;
  v5[5] = v4;
  sub_1915FE26C(v1, v2);
  return sub_1915E0E80(v7, &type metadata for AXWatchPreferenceKey);
}

_OWORD *AXSettingsAttributes.watchKey.setter(_OWORD *a1)
{
  v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4B0, &qword_191672418);
  v2 = swift_allocObject();
  v5[0] = v2;
  v3 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  return sub_1915E0E80(v5, &type metadata for AXWatchPreferenceKey);
}

void (*AXSettingsAttributes.watchKey.modify(int8x16_t **a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v3[2].i64[0] = v1;
  sub_1915DFC58(*v1, v3);
  return sub_1915FE058;
}

void sub_1915FE058(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = (*a1)[4];
  if (a2)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4B0, &qword_191672418);
    v8 = swift_allocObject();
    v12[0] = v8;
    v8[2] = v4;
    v8[3] = v3;
    v8[4] = v6;
    v8[5] = v5;
    sub_1915FE26C(v4, v3);
    sub_1915E0E80(v12, &type metadata for AXWatchPreferenceKey);
    v9 = v2[2];
    v10 = v2[3];
    sub_1915FE2B0(*v2, v2[1]);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4B0, &qword_191672418);
    v11 = swift_allocObject();
    v12[0] = v11;
    v11[2] = v4;
    v11[3] = v3;
    v11[4] = v6;
    v11[5] = v5;
    sub_1915E0E80(v12, &type metadata for AXWatchPreferenceKey);
  }

  free(v2);
}

uint64_t AXSettingProtocol.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(&v4, a2, a3);
  swift_getAtKeyPath();
}

_OWORD *sub_1915FE1CC(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[3] = AssociatedTypeWitness;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v7);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_0, a1, AssociatedTypeWitness);
  return sub_1915E0E80(v7, a2);
}

uint64_t sub_1915FE26C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1915FE2B0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1915FE2F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1915FE33C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1915FE39C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1915FE3E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1915FE458()
{
  result = qword_1EADAFB40;
  if (!qword_1EADAFB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAFB40);
  }

  return result;
}

unint64_t sub_1915FE4AC(uint64_t a1)
{
  result = sub_1915FE4D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1915FE4D4()
{
  result = qword_1EADAFB48;
  if (!qword_1EADAFB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAFB48);
  }

  return result;
}

unint64_t sub_1915FE52C()
{
  result = qword_1EADAFB50;
  if (!qword_1EADAFB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAFB50);
  }

  return result;
}

unint64_t sub_1915FE580(uint64_t a1)
{
  result = sub_1915FE5A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1915FE5A8()
{
  result = qword_1EADAFB58;
  if (!qword_1EADAFB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAFB58);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1915FE668()
{
  type metadata accessor for AXShuntedExecutor();
  v0 = swift_allocObject();
  result = AXShuntedExecutor.init()();
  qword_1EADB6D70 = v0;
  return result;
}

uint64_t AXShuntedExecutor.__allocating_init()()
{
  v0 = swift_allocObject();
  AXShuntedExecutor.init()();
  return v0;
}

uint64_t AXShuntedExecutor.init()()
{
  v15 = sub_19166BDB8();
  v0 = *(v15 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v15, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_19166BEE8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v8 = sub_19166B5B8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v14 = sub_1915FE938();
  sub_19166B5A8();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1915FFAA4(&qword_1EADAE650, 255, MEMORY[0x1E69E8130]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADAFB60, &qword_191672E20);
  sub_1915DAAF0(&unk_1EADAE690, &unk_1EADAFB60, &qword_191672E20);
  sub_19166BFE8();
  (*(v0 + 104))(v4, *MEMORY[0x1E69E8098], v15);
  v11 = sub_19166BEF8();
  v12 = v16;
  *(v16 + 16) = v11;
  return v12;
}

unint64_t sub_1915FE938()
{
  result = qword_1EADAE648;
  if (!qword_1EADAE648)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADAE648);
  }

  return result;
}

uint64_t AXShuntedExecutor.enqueue(_:)()
{
  v1 = sub_19166B588();
  v18 = *(v1 - 8);
  v2 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_19166B5B8();
  v6 = *(v17 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v17, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_19166BB08();
  v12 = *(v0 + 16);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v0;
  aBlock[4] = sub_1915FEC50;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1915EADB4;
  aBlock[3] = &block_descriptor_2;
  v14 = _Block_copy(aBlock);

  sub_19166B598();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1915FFAA4(&qword_1EADAE6B0, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D8, &qword_191676060);
  sub_1915DAAF0(&qword_1EADAE6A0, &qword_1EADAF3D8, &qword_191676060);
  sub_19166BFE8();
  MEMORY[0x193AFCC80](0, v10, v5, v14);
  _Block_release(v14);
  (*(v18 + 8))(v5, v1);
  (*(v6 + 8))(v10, v17);
}

uint64_t sub_1915FEC50(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = sub_1915FFAA4(&qword_1EADAE750, a2, type metadata accessor for AXShuntedExecutor);

  return MEMORY[0x1EEE6DF20](v3, v4, v5);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t AXShuntedExecutor.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1915FEDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = sub_1915FFAA4(qword_1EADAE758, a2, type metadata accessor for AXShuntedExecutor);

  return a4(a1, v6, v7);
}

uint64_t _s15AXCoreUtilities18axUnsafeForcedSync18executorPreference_xSch_pSg_xyYaYbctlF@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v57 = a4;
  v61 = a2;
  v10 = sub_19166BF58();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v50 - v14;
  v16 = sub_19166B5F8();
  v59 = *(v16 - 8);
  v60 = v16;
  v17 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v16, v18);
  v58 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  v21 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v20 - 8, v22);
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v26);
  v28 = &v50 - v27;
  v29 = 0;
  sub_19166C288();
  if (v63 == 1)
  {
    v62 = a1;
    sub_19166BD78();
    v30 = AXLogCommon();
    if (!v30)
    {
      __break(1u);
      goto LABEL_15;
    }

    v31 = v30;
    sub_19166B528();

    a1 = v62;
  }

  v52 = v15;
  v32 = dispatch_semaphore_create(0);
  v62 = swift_allocBox();
  v33 = *(a5 - 1);
  v34 = *(v33 + 56);
  v50 = v35;
  v34(v35, 1, 1, a5);
  v54 = v10;
  v55 = a6;
  v53 = v11;
  v51 = v33;
  if (a1)
  {
    v37 = a1;
  }

  else
  {
    if (qword_1EADAE5B8 != -1)
    {
      swift_once();
    }

    v37 = qword_1EADB6D70;
    v61 = sub_1915FFAA4(&qword_1EADAE750, v36, type metadata accessor for AXShuntedExecutor);
  }

  swift_unknownObjectRetain();
  sub_19166BB38();
  v38 = sub_19166BB58();
  v39 = *(v38 - 8);
  (*(v39 + 56))(v28, 0, 1, v38);
  v40 = swift_allocObject();
  v56 = a5;
  v41 = v62;
  v40[2] = a5;
  v40[3] = v41;
  v40[4] = a3;
  v40[5] = v57;
  v40[6] = v32;
  sub_1915D77C0(v28, v25);
  v42 = (*(v39 + 48))(v25, 1, v38);

  v43 = v32;
  if (v42 == 1)
  {
    sub_1915D7830(v25);
  }

  else
  {
    sub_19166BB48();
    (*(v39 + 8))(v25, v38);
  }

  v44 = v51;
  a5 = v52;
  v45 = swift_allocObject();
  *(v45 + 16) = &unk_191672E30;
  *(v45 + 24) = v40;
  v64 = 6;
  v65 = 0;
  v66 = v37;
  v67 = v61;

  swift_unknownObjectRetain();
  swift_task_create();
  sub_1915D7830(v28);

  swift_unknownObjectRelease();

  v46 = v58;
  sub_19166B5C8();
  sub_19166BE88();
  (*(v59 + 8))(v46, v60);
  v47 = v50;
  swift_beginAccess();
  v29 = v53;
  v25 = v54;
  (*(v53 + 16))(a5, v47, v54);
  v48 = v56;
  if ((*(v44 + 48))(a5, 1, v56) != 1)
  {

    (*(v44 + 32))(v55, a5, v48);
  }

LABEL_15:
  (*(v29 + 8))(a5, v25);
  result = sub_19166C218();
  __break(1u);
  return result;
}

uint64_t sub_1915FF508@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = sub_19166BCB8();
  result = (*(*(v4 - 8) + 48))(a1, 1, v4);
  *a2 = result != 1;
  return result;
}

uint64_t sub_1915FF584(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v8 = sub_19166BF58();
  v6[7] = v8;
  v9 = *(v8 - 8);
  v6[8] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v6[9] = v11;
  v6[10] = swift_projectBox();
  v15 = (a3 + *a3);
  v12 = a3[1];
  v13 = swift_task_alloc();
  v6[11] = v13;
  *v13 = v6;
  v13[1] = sub_1915FF6FC;

  return v15(v11);
}

uint64_t sub_1915FF6FC()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1915FF7F8, 0, 0);
}

uint64_t sub_1915FF7F8()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  (*(*(v0[6] - 8) + 56))(v1, 0, 1);
  swift_beginAccess();
  (*(v4 + 40))(v2, v1, v3);
  sub_19166BEA8();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1915FF8DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1915D4F90;

  return sub_1915FF584(a1, v5, v6, v7, v8, v4);
}

uint64_t sub_1915FF9A4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1915D4F90;

  return sub_1915FCD64(a1, v5);
}

uint64_t sub_1915FFAA4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void *AXCVoiceSelection.rate.getter()
{
  v1 = OBJC_IVAR___AXCVoiceSelection_rate;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void AXCVoiceSelection.rate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AXCVoiceSelection_rate;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *AXCVoiceSelection.pitch.getter()
{
  v1 = OBJC_IVAR___AXCVoiceSelection_pitch;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void AXCVoiceSelection.pitch.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AXCVoiceSelection_pitch;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *AXCVoiceSelection.volume.getter()
{
  v1 = OBJC_IVAR___AXCVoiceSelection_volume;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1915FFD38(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  v8 = a3;
}

void AXCVoiceSelection.volume.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AXCVoiceSelection_volume;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1915FFF4C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 voiceSettings];
  if (v3)
  {
    v4 = v3;
    sub_1915DAA60(0, &qword_1EADB0230, 0x1E696AD98);
    v5 = sub_19166B678();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_1915FFFDC(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    sub_1915DAA60(0, &qword_1EADB0230, 0x1E696AD98);
    v3 = sub_19166B668();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setVoiceSettings_];
}

uint64_t sub_191600110(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_1916001D8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

void sub_19160022C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 effects];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for AXAudioEffectConfiguration(0);
    v5 = sub_19166BA08();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_19160029C(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    type metadata accessor for AXAudioEffectConfiguration(0);
    v3 = sub_19166B9F8();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setEffects_];
}

uint64_t sub_19160032C(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_191600398(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

void sub_1916003F4(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_19166B748();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_191600458(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = *a1;
    v8 = sub_19166B718();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v6 *a5];
}

id AXCVoiceSelection.init(voiceId:rate:pitch:volume:voiceSettings:effects:boundLanguage:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    v14 = sub_19166B718();

    if (a6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = 0;
    if (a6)
    {
LABEL_3:
      sub_1915DAA60(0, &qword_1EADB0230, 0x1E696AD98);
      v15 = sub_19166B668();

      v16 = a9;
      if (a7)
      {
        goto LABEL_4;
      }

LABEL_8:
      v17 = 0;
      if (v16)
      {
        goto LABEL_5;
      }

LABEL_9:
      v18 = 0;
      goto LABEL_10;
    }
  }

  v15 = 0;
  v16 = a9;
  if (!a7)
  {
    goto LABEL_8;
  }

LABEL_4:
  type metadata accessor for AXAudioEffectConfiguration(0);
  v17 = sub_19166B9F8();

  if (!v16)
  {
    goto LABEL_9;
  }

LABEL_5:
  v18 = sub_19166B718();

LABEL_10:
  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithVoiceId:v14 rate:a3 pitch:a4 volume:a5 voiceSettings:v15 effects:v17 boundLanguage:v18];

  return v19;
}

{
  v12 = sub_19159F740(a1, a2, a3, a4, a5, a6, a7, a8, a9);

  return v12;
}

id AXCVoiceSelection.init(voiceId:rate:pitch:volume:voiceSettings:effects:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v12 = sub_19166B718();

    if (a6)
    {
      goto LABEL_3;
    }

LABEL_6:
    v13 = 0;
    if (a7)
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  v12 = 0;
  if (!a6)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1915DAA60(0, &qword_1EADB0230, 0x1E696AD98);
  v13 = sub_19166B668();

  if (!a7)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for AXAudioEffectConfiguration(0);
  v14 = sub_19166B9F8();

LABEL_8:
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithVoiceId:v12 rate:a3 pitch:a4 volume:a5 voiceSettings:v13 effects:v14];

  return v15;
}

{
  v8 = v7;
  if (a2)
  {
    v14 = sub_19166B718();

    if (a6)
    {
      goto LABEL_3;
    }

LABEL_6:
    v15 = 0;
    if (a7)
    {
      goto LABEL_4;
    }

LABEL_7:
    v16 = 0;
    goto LABEL_8;
  }

  v14 = 0;
  if (!a6)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1915DAA60(0, &qword_1EADB0230, 0x1E696AD98);
  v15 = sub_19166B668();

  if (!a7)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for AXAudioEffectConfiguration(0);
  v16 = sub_19166B9F8();

LABEL_8:
  v17 = [v8 initWithVoiceId:v14 rate:a3 pitch:a4 volume:a5 voiceSettings:v15 effects:v16 boundLanguage:0];

  return v17;
}

id AXCVoiceSelection.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

Swift::Void __swiftcall AXCVoiceSelection.encode(with:)(NSCoder with)
{
  v3 = [v1 voiceId];
  v4 = sub_19166B718();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = [v1 rate];
  v6 = sub_19166B718();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = [v1 pitch];
  v8 = sub_19166B718();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];

  v9 = [v1 volume];
  v10 = sub_19166B718();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];

  v11 = [v1 voiceSettings];
  if (v11)
  {
    sub_1915DAA60(0, &qword_1EADB0230, 0x1E696AD98);
    sub_19166B678();

    v11 = sub_19166B668();
  }

  v12 = sub_19166B718();
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];
  swift_unknownObjectRelease();

  v13 = [v1 effects];
  v14 = sub_19166B718();
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];
}

id AXCVoiceSelection.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

{
  v2 = sub_1915DAA60(0, &unk_1EADAFBB0, 0x1E696AEC0);
  v18[0] = 0;
  v18[1] = 0;
  v3 = sub_19166BF18();
  sub_19166B738();

  v4 = sub_1915DAA60(0, &qword_1EADB0230, 0x1E696AD98);
  v5 = sub_19166BF18();
  v6 = sub_19166BF18();
  v7 = sub_19166BF18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADAF400, &unk_191672230);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1916729D0;
  *(v8 + 32) = sub_1915DAA60(0, &unk_1EADAFBC0, 0x1E695DF20);
  *(v8 + 40) = v2;
  *(v8 + 48) = v4;
  sub_19166BF28();

  if (v19)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADAFBE0, &qword_191672F00);
    if (swift_dynamicCast())
    {
      v9 = v17;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    sub_19159E780(v18, &unk_1EADB0270, &unk_191672C20);
    v9 = 0;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_191672220;
  *(v10 + 32) = sub_1915DAA60(0, &qword_1EADAFBD0, 0x1E695DEC8);
  *(v10 + 40) = type metadata accessor for AXAudioEffectConfiguration(0);
  sub_19166BF28();

  if (v19)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFBD8, &qword_191672EF8);
    if (swift_dynamicCast())
    {
      v11 = v17;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    sub_19159E780(v18, &unk_1EADB0270, &unk_191672C20);
    v11 = 0;
  }

  if (v9)
  {
    v12 = sub_19166B668();

    if (!v11)
    {
LABEL_15:
      v13 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v12 = 0;
    if (!v11)
    {
      goto LABEL_15;
    }
  }

  v13 = sub_19166B9F8();

LABEL_16:
  v14 = [v16 initWithVoiceId:0 rate:v5 pitch:v6 volume:v7 voiceSettings:v12 effects:v13 boundLanguage:0];

  return v14;
}

id VoiceSelection._bridgeToObjectiveC()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E0, &unk_191672A20);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = v35 - v4;
  v6 = *(v0 + 8);
  v35[1] = *v0;
  if (*(v0 + 20))
  {
    v37 = 0;
    if ((*(v0 + 28) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = *(v0 + 16);
    v19 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    LODWORD(v20) = v18;
    v37 = [v19 initWithFloat_];
    if ((*(v0 + 28) & 1) == 0)
    {
LABEL_3:
      v7 = *(v0 + 24);
      v8 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      LODWORD(v9) = v7;
      v36 = [v8 initWithFloat_];
      if ((*(v0 + 36) & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  v36 = 0;
  if ((*(v0 + 36) & 1) == 0)
  {
LABEL_4:
    v10 = *(v0 + 32);
    v11 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    LODWORD(v12) = v10;
    v13 = [v11 initWithFloat_];
    v14 = *(v0 + 48);
    if (v14)
    {
      goto LABEL_5;
    }

LABEL_10:
    v15 = 0;
    v16 = *(v0 + 40);
    if (v16)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  v13 = 0;
  v14 = *(v0 + 48);
  if (!v14)
  {
    goto LABEL_10;
  }

LABEL_5:
  v39 = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFBF8, &qword_191672F10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADAFBE0, &qword_191672F00);
  swift_dynamicCast();
  v15 = v38;
  v16 = *(v0 + 40);
  if (v16)
  {
LABEL_6:
    v39 = v16;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFBF0, &qword_191672F08);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFBD8, &qword_191672EF8);
    swift_dynamicCast();
    v17 = v38;
    goto LABEL_12;
  }

LABEL_11:
  v17 = 0;
LABEL_12:
  v21 = type metadata accessor for VoiceSelection();
  sub_1915E0A90(v0 + *(v21 + 40), v5, &qword_1EADAF5E0, &unk_191672A20);
  v22 = sub_19166B278();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v5, 1, v22) == 1)
  {
    sub_19159E780(v5, &qword_1EADAF5E0, &unk_191672A20);
    v24 = 0;
    if (v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    sub_19166B238();
    v24 = v29;
    (*(v23 + 8))(v5, v22);
    if (v6)
    {
LABEL_14:
      v25 = sub_19166B718();
      if (v15)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    }
  }

  v25 = 0;
  if (v15)
  {
LABEL_15:
    sub_1915DAA60(0, &qword_1EADB0230, 0x1E696AD98);
    v26 = sub_19166B668();

    if (v17)
    {
      goto LABEL_16;
    }

LABEL_21:
    v27 = 0;
    if (v24)
    {
      goto LABEL_17;
    }

LABEL_22:
    v28 = 0;
    goto LABEL_23;
  }

LABEL_20:
  v26 = 0;
  if (!v17)
  {
    goto LABEL_21;
  }

LABEL_16:
  type metadata accessor for AXAudioEffectConfiguration(0);
  v27 = sub_19166B9F8();

  if (!v24)
  {
    goto LABEL_22;
  }

LABEL_17:
  v28 = sub_19166B718();

LABEL_23:
  v30 = objc_allocWithZone(AXCVoiceSelection);
  v32 = v36;
  v31 = v37;
  v33 = [v30 initWithVoiceId:v25 rate:v37 pitch:v36 volume:v13 voiceSettings:v26 effects:v27 boundLanguage:v28];

  return v33;
}

uint64_t static VoiceSelection._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  result = _s15AXCoreUtilities14VoiceSelectionV34_conditionallyBridgeFromObjectiveC_6resultSbSo08AXCVoiceD0C_ACSgztFZ_0(a1, a2);
  if ((result & 1) == 0)
  {
    result = sub_19166C218();
    __break(1u);
  }

  return result;
}

uint64_t sub_191601650(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFC18, &qword_191672F70);
    v2 = sub_19166C248();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    v9 = 0;
LABEL_11:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(*(a1 + 56) + 8 * v10);

    v15 = v14;
    MEMORY[0x193AFCB80]();

    return 0;
  }

  else
  {
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {

        return v2;
      }

      v5 = *(a1 + 64 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    __break(1u);
    __break(1u);
  }

  return result;
}

uint64_t static VoiceSelection._unconditionallyBridgeFromObjectiveC(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADAFC00, &qword_191672F18);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v17 - v11;
  if (a1)
  {
    v13 = type metadata accessor for VoiceSelection();
    v14 = *(v13 - 8);
    (*(v14 + 56))(v12, 1, 1, v13);
    v15 = a1;
    if (_s15AXCoreUtilities14VoiceSelectionV34_conditionallyBridgeFromObjectiveC_6resultSbSo08AXCVoiceD0C_ACSgztFZ_0(v15, v12))
    {
      sub_1915E0A90(v12, v9, &unk_1EADAFC00, &qword_191672F18);
      if ((*(v14 + 48))(v9, 1, v13) != 1)
      {
        sub_19159E780(v12, &unk_1EADAFC00, &qword_191672F18);

        return sub_191602064(v9, a2);
      }

      sub_19159E780(v9, &unk_1EADAFC00, &qword_191672F18);
    }
  }

  result = sub_19166C218();
  __break(1u);
  return result;
}

uint64_t sub_191601AC8(void *a1, uint64_t a2)
{
  result = _s15AXCoreUtilities14VoiceSelectionV34_conditionallyBridgeFromObjectiveC_6resultSbSo08AXCVoiceD0C_ACSgztFZ_0(a1, a2);
  if ((result & 1) == 0)
  {
    result = sub_19166C218();
    __break(1u);
  }

  return result;
}

uint64_t _s15AXCoreUtilities14VoiceSelectionV34_conditionallyBridgeFromObjectiveC_6resultSbSo08AXCVoiceD0C_ACSgztFZ_0(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADAFC00, &qword_191672F18);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v48 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E0, &unk_191672A20);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v48 - v16;
  v18 = [a1 boundLanguage];
  v49 = a2;
  if (v18)
  {

    result = [a1 boundLanguage];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v20 = result;
    sub_19159E780(a2, &unk_1EADAFC00, &qword_191672F18);
    sub_19166B748();

    sub_19166B288();
    v21 = sub_19166B278();
    (*(*(v21 - 8) + 56))(v17, 0, 1, v21);
  }

  else
  {
    sub_19159E780(a2, &unk_1EADAFC00, &qword_191672F18);
    v22 = sub_19166B278();
    (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
  }

  v23 = [a1 voiceId];
  if (v23)
  {
    v24 = v23;
    v48 = sub_19166B748();
    v26 = v25;
  }

  else
  {
    v48 = 0;
    v26 = 0;
  }

  v27 = [a1 rate];
  v28 = v27;
  v29 = 0;
  v30 = 0;
  if (v27)
  {
    [v27 floatValue];
    v30 = v31;
  }

  v32 = [a1 pitch];
  v33 = v32;
  if (v32)
  {
    [v32 floatValue];
    v29 = v34;
  }

  v35 = [a1 volume];
  v36 = v35;
  if (v35)
  {
    [v35 floatValue];
    v38 = v37;
  }

  else
  {
    v38 = 0;
  }

  v39 = [a1 effects];
  if (v39)
  {
    v40 = v39;
    type metadata accessor for AXAudioEffectConfiguration(0);
    v41 = sub_19166BA08();

    v51 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFBD8, &qword_191672EF8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFBF0, &qword_191672F08);
    if (swift_dynamicCast())
    {
      v42 = v50;
    }

    else
    {
      v42 = 0;
    }
  }

  else
  {
    v42 = 0;
  }

  v43 = [a1 voiceSettings];
  if (v43)
  {
    sub_1915DAA60(0, &qword_1EADB0230, 0x1E696AD98);
    v44 = sub_19166B678();

    v43 = sub_191601650(v44);
  }

  sub_1916021A0(v17, v14, &qword_1EADAF5E0, &unk_191672A20);
  v45 = type metadata accessor for VoiceSelection();
  v46 = *(v45 + 40);
  v47 = sub_19166B278();
  (*(*(v47 - 8) + 56))(&v8[v46], 1, 1, v47);
  *v8 = v48;
  *(v8 + 1) = v26;
  *(v8 + 4) = v30;
  v8[20] = v28 == 0;
  *(v8 + 6) = v29;
  v8[28] = v33 == 0;
  *(v8 + 8) = v38;
  v8[36] = v36 == 0;
  *(v8 + 5) = v42;
  *(v8 + 6) = v43;
  sub_191602130(v14, &v8[v46]);
  (*(*(v45 - 8) + 56))(v8, 0, 1, v45);
  sub_1916021A0(v8, v49, &unk_1EADAFC00, &qword_191672F18);
  return 1;
}

uint64_t sub_191602064(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VoiceSelection();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_191602130(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E0, &unk_191672A20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1916021A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t VoiceSelection.init(voiceId:rate:pitch:volume:effects:voiceSettings:boundLanguage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v18 = *(type metadata accessor for VoiceSelection() + 40);
  v19 = sub_19166B278();
  (*(*(v19 - 8) + 56))(a9 + v18, 1, 1, v19);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 20) = BYTE4(a3) & 1;
  *(a9 + 24) = a4;
  *(a9 + 28) = BYTE4(a4) & 1;
  *(a9 + 32) = a5;
  *(a9 + 36) = BYTE4(a5) & 1;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;

  return sub_191602130(a8, a9 + v18);
}

uint64_t type metadata accessor for VoiceSelection()
{
  result = qword_1EADAE5D0;
  if (!qword_1EADAE5D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t VoiceSelection.voiceId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t VoiceSelection.voiceId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  result = v2[1];
  *v2 = a1;
  v2[1] = a2;
  if (result)
  {
    if (!a2)
    {

      goto LABEL_12;
    }

    if (v5 != a1 || result != a2)
    {
      v7 = sub_19166C5E8();

      if (v7)
      {
        return result;
      }

LABEL_12:
      v8 = v2[6];

      v2[6] = 0;
      return result;
    }
  }

  else if (a2)
  {
    goto LABEL_12;
  }

  return result;
}

void (*VoiceSelection.voiceId.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v3 + 24) = *v1;
  v6 = v1[1];
  v4[4] = v6;
  *v4 = v5;
  v4[1] = v6;

  return sub_1916024A8;
}

void sub_1916024A8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = (*a1)[1];
  v4 = (*a1)[2];
  v6 = **a1;
  *v4 = v6;
  v4[1] = v5;
  if (a2)
  {
    if (v3)
    {
      if (v5)
      {
        if (v2[3] == v6 && v2[4] == v5)
        {
          goto LABEL_24;
        }

        v8 = v2[4];
        v9 = sub_19166C5E8();

        if (v9)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v13 = v2[4];
      }
    }

    else
    {
      if (!v5)
      {
LABEL_24:
        v16 = v2[1];
LABEL_25:

        goto LABEL_28;
      }
    }

    v14 = v2[2];
    v15 = *(v14 + 48);

    *(v14 + 48) = 0;
    goto LABEL_24;
  }

  if (!v3)
  {
    if (!v5)
    {
      goto LABEL_28;
    }

LABEL_27:
    v18 = v2[2];
    v19 = *(v18 + 48);

    *(v18 + 48) = 0;
    goto LABEL_28;
  }

  if (!v5)
  {
    v17 = v2[4];

    goto LABEL_27;
  }

  if (v2[3] == v6 && v2[4] == v5)
  {
    goto LABEL_25;
  }

  v11 = v2[4];
  v12 = sub_19166C5E8();

  if ((v12 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_28:

  free(v2);
}

uint64_t VoiceSelection.rate.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

uint64_t VoiceSelection.pitch.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 28) = BYTE4(result) & 1;
  return result;
}

uint64_t VoiceSelection.volume.setter(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 36) = BYTE4(result) & 1;
  return result;
}

uint64_t VoiceSelection.effects.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t VoiceSelection.voiceSettings.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t VoiceSelection.boundLanguage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for VoiceSelection() + 40);

  return sub_1916027B8(v3, a1);
}

uint64_t sub_1916027B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E0, &unk_191672A20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t VoiceSelection.boundLanguage.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for VoiceSelection() + 40);

  return sub_191602130(a1, v3);
}

uint64_t static VoiceSelection.migrations.getter()
{
  if (qword_1EADAE5F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static VoiceSelection.migrations.setter(uint64_t a1)
{
  if (qword_1EADAE5F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EADAE5F8 = a1;
}

uint64_t (*static VoiceSelection.migrations.modify())()
{
  if (qword_1EADAE5F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_191602A64@<X0>(void *a1@<X8>)
{
  if (qword_1EADAE5F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EADAE5F8;
}

uint64_t sub_191602AE4(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1EADAE5F0;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EADAE5F8 = v1;
}

uint64_t _s15AXCoreUtilities12AXCTLSupportO15OnOffFlagChoiceO9hashValueSivg_0()
{
  v1 = *v0;
  sub_19166C778();
  MEMORY[0x193AFD630](v1);
  return sub_19166C7B8();
}

uint64_t sub_191602BCC()
{
  v1 = *v0;
  sub_19166C778();
  MEMORY[0x193AFD630](v1);
  return sub_19166C7B8();
}

uint64_t sub_191602C10()
{
  v1 = *v0;
  v2 = 0x64496563696F76;
  v3 = 0x7465536563696F76;
  if (v1 != 5)
  {
    v3 = 0x6E614C646E756F62;
  }

  v4 = 0x656D756C6F76;
  if (v1 != 3)
  {
    v4 = 0x73746365666665;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1702125938;
  if (v1 != 1)
  {
    v5 = 0x6863746970;
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

uint64_t sub_191602CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_191604D94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_191602D34(uint64_t a1)
{
  v2 = sub_1916046E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191602D70(uint64_t a1)
{
  v2 = sub_1916046E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VoiceSelection.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFC20, &qword_191672F78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v22 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1916046E0();
  sub_19166C808();
  v12 = *v3;
  v13 = v3[1];
  LOBYTE(v22) = 0;
  sub_19166C348();
  if (!v2)
  {
    v14 = *(v3 + 4);
    v15 = *(v3 + 20);
    LOBYTE(v22) = 1;
    v23 = v15;
    sub_19166C358();
    v16 = *(v3 + 6);
    v17 = *(v3 + 28);
    LOBYTE(v22) = 2;
    v23 = v17;
    sub_19166C358();
    v18 = *(v3 + 8);
    v19 = *(v3 + 36);
    LOBYTE(v22) = 3;
    v23 = v19;
    sub_19166C358();
    v22 = v3[5];
    v23 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFBF0, &qword_191672F08);
    sub_191604734(&qword_1EADAFC28, &qword_1EADAFC30);
    sub_19166C368();
    v22 = v3[6];
    v23 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFBF8, &qword_191672F10);
    sub_1916047D0(&qword_1EADAFC38);
    sub_19166C368();
    v20 = *(type metadata accessor for VoiceSelection() + 40);
    LOBYTE(v22) = 6;
    sub_19166B278();
    sub_1916050AC(&qword_1EADAFC40, MEMORY[0x1E6969610]);
    sub_19166C368();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t VoiceSelection.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_19166B278();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E0, &unk_191672A20);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = &v23 - v13;
  if (v2[1])
  {
    v15 = *v2;
    sub_19166C798();
    sub_19166B828();
  }

  else
  {
    sub_19166C798();
  }

  if (*(v2 + 20) == 1)
  {
    sub_19166C798();
  }

  else
  {
    v16 = *(v2 + 4);
    sub_19166C798();
    sub_19166C7A8();
  }

  if (*(v2 + 28) == 1)
  {
    sub_19166C798();
  }

  else
  {
    v17 = *(v2 + 6);
    sub_19166C798();
    sub_19166C7A8();
  }

  if (*(v2 + 36) == 1)
  {
    sub_19166C798();
    v18 = v2[5];
    if (v18)
    {
      goto LABEL_12;
    }

LABEL_15:
    sub_19166C798();
    v19 = v2[6];
    if (v19)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  v20 = *(v2 + 8);
  sub_19166C798();
  sub_19166C7A8();
  v18 = v2[5];
  if (!v18)
  {
    goto LABEL_15;
  }

LABEL_12:
  sub_19166C798();
  sub_191603F7C(a1, v18);
  v19 = v2[6];
  if (v19)
  {
LABEL_13:
    sub_19166C798();
    sub_191603C10(a1, v19);
    goto LABEL_17;
  }

LABEL_16:
  sub_19166C798();
LABEL_17:
  v21 = type metadata accessor for VoiceSelection();
  sub_1916027B8(v2 + *(v21 + 40), v14);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    return sub_19166C798();
  }

  (*(v5 + 32))(v9, v14, v4);
  sub_19166C798();
  sub_1916050AC(&qword_1EADAFC48, MEMORY[0x1E6969610]);
  sub_19166B6C8();
  return (*(v5 + 8))(v9, v4);
}

uint64_t VoiceSelection.hashValue.getter()
{
  sub_19166C778();
  VoiceSelection.hash(into:)(v1);
  return sub_19166C7B8();
}

uint64_t VoiceSelection.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E0, &unk_191672A20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v35 = &v32 - v6;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFC50, &qword_191672F80);
  v34 = *(v36 - 8);
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v36, v8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for VoiceSelection();
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v16 = 0;
  *(v16 + 1) = 0;
  *(v16 + 4) = 0;
  v16[20] = 1;
  *(v16 + 6) = 0;
  v16[28] = 1;
  *(v16 + 8) = 0;
  v16[36] = 1;
  *(v16 + 5) = 0;
  *(v16 + 6) = 0;
  v17 = *(v14 + 48);
  v18 = sub_19166B278();
  (*(*(v18 - 8) + 56))(&v16[v17], 1, 1, v18);
  v19 = a1[3];
  v20 = a1[4];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1916046E0();
  v21 = v10;
  v22 = v37;
  sub_19166C7F8();
  if (!v22)
  {
    v37 = v18;
    v32 = v17;
    v24 = v34;
    v23 = v35;
    LOBYTE(v40) = 0;
    v25 = v21;
    *v16 = sub_19166C2B8();
    *(v16 + 1) = v26;
    LOBYTE(v40) = 1;
    v27 = sub_19166C2C8();
    *(v16 + 4) = v27;
    v16[20] = BYTE4(v27) & 1;
    LOBYTE(v40) = 2;
    v28 = sub_19166C2C8();
    *(v16 + 6) = v28;
    v16[28] = BYTE4(v28) & 1;
    LOBYTE(v40) = 3;
    v30 = sub_19166C2C8();
    *(v16 + 8) = v30;
    v16[36] = BYTE4(v30) & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFBF0, &qword_191672F08);
    v39 = 4;
    sub_191604734(&qword_1EADAE4E8, &qword_1EADAE568);
    sub_19166C2D8();
    *(v16 + 5) = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFBF8, &qword_191672F10);
    v39 = 5;
    sub_1916047D0(&qword_1EADAE508);
    sub_19166C2D8();
    *(v16 + 6) = v40;
    LOBYTE(v40) = 6;
    sub_1916050AC(&qword_1EADAE620, MEMORY[0x1E6969610]);
    v31 = v36;
    sub_19166C2D8();
    (*(v24 + 8))(v25, v31);
    sub_191602130(v23, &v16[v32]);
    sub_191604FE4(v16, v33, type metadata accessor for VoiceSelection);
  }

  __swift_destroy_boxed_opaque_existential_1(v38);
  return sub_19160504C(v16, type metadata accessor for VoiceSelection);
}

uint64_t sub_191603998()
{
  if (qword_1EADAE5F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_191603A14()
{
  sub_19166C778();
  VoiceSelection.hash(into:)(v1);
  return sub_19166C7B8();
}

uint64_t sub_191603A58()
{
  sub_19166C778();
  VoiceSelection.hash(into:)(v1);
  return sub_19166C7B8();
}

uint64_t sub_191603AC4(__int128 *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  for (i = 0; v7; v10 ^= result)
  {
    v12 = i;
LABEL_9:
    v13 = __clz(__rbit64(v7)) | (v12 << 6);
    v14 = (*(a2 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a2 + 56) + 4 * v13);
    v7 &= v7 - 1;
    v20 = a1[2];
    v21 = a1[3];
    v22 = *(a1 + 8);
    v18 = *a1;
    v19 = a1[1];

    sub_19166B828();

    sub_19166C7A8();
    result = sub_19166C7B8();
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return MEMORY[0x193AFD630](v10);
    }

    v7 = *(v4 + 8 * v12);
    ++i;
    if (v7)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_191603C10(__int128 *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  for (i = 0; v7; v10 ^= result)
  {
    v12 = i;
LABEL_9:
    v13 = __clz(__rbit64(v7)) | (v12 << 6);
    v14 = (*(a2 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a2 + 56) + 4 * v13);
    v7 &= v7 - 1;
    v20 = a1[2];
    v21 = a1[3];
    v22 = *(a1 + 8);
    v18 = *a1;
    v19 = a1[1];

    sub_19166B828();

    sub_19166C7A8();
    result = sub_19166C7B8();
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return MEMORY[0x193AFD630](v10);
    }

    v7 = *(v4 + 8 * v12);
    ++i;
    if (v7)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_191603D70(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  while (v7)
  {
    v23 = v10;
LABEL_12:
    v13 = __clz(__rbit64(v7)) | (v11 << 6);
    v14 = *(*(a2 + 56) + 8 * v13);
    v15 = (*(a2 + 48) + 16 * v13);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(a1 + 48);
    v25[2] = *(a1 + 32);
    v25[3] = v18;
    v26 = *(a1 + 64);
    v19 = *(a1 + 16);
    v25[0] = *a1;
    v25[1] = v19;

    sub_19166B828();

    v20 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      if (v20 == 2)
      {
        sub_1915E1F90((v14 & 0x3FFFFFFFFFFFFFFFLL) + 16, v24);
        MEMORY[0x193AFD630](2);
        sub_19166C048();
        sub_1915E0AF8(v24);
      }

      else
      {
        MEMORY[0x193AFD630](3);
      }
    }

    else
    {
      if (v20)
      {
        v22 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        MEMORY[0x193AFD630](1);

        sub_191603D70(v25, v22);
      }

      else
      {
        v21 = *(v14 + 16);
        MEMORY[0x193AFD630](0);

        sub_191604140(v25, v21);
      }
    }

    v7 &= v7 - 1;
    result = sub_19166C7B8();
    v10 = result ^ v23;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return MEMORY[0x193AFD630](v10);
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      v23 = v10;
      v11 = v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_191603F7C(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioEffectConfiguration();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  result = MEMORY[0x193AFD630](v10);
  if (v10)
  {
    v12 = v4[6];
    v13 = &v9[v4[5]];
    v14 = v4[8];
    v20 = v4[7];
    v21 = v12;
    v15 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v16 = *(v5 + 72);
    do
    {
      sub_191604FE4(v15, v9, type metadata accessor for AudioEffectConfiguration);
      sub_19166B1C8();
      sub_1916050AC(&qword_1EADAE9E0, MEMORY[0x1E69695A8]);
      sub_19166B6C8();
      v17 = *v13;
      v18 = *(v13 + 1);
      sub_19166B828();
      sub_191603C10(a1, *&v9[v21]);
      sub_191603AC4(a1, *&v9[v20]);
      v19 = v9[v14];
      sub_19166C798();
      result = sub_19160504C(v9, type metadata accessor for AudioEffectConfiguration);
      v15 += v16;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_191604140(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x193AFD630](v4);
  if (v4)
  {
    v6 = (a2 + 32);
    do
    {
      v8 = *v6++;
      v7 = v8;
      v9 = v8 >> 62;
      if ((v8 >> 62) > 1)
      {
        if (v9 == 2)
        {
          sub_1915E1F90((v7 & 0x3FFFFFFFFFFFFFFFLL) + 16, v12);
          MEMORY[0x193AFD630](2);

          sub_19166C048();
          sub_1915E0AF8(v12);
        }

        else
        {
          result = MEMORY[0x193AFD630](3);
        }
      }

      else
      {
        if (v9)
        {
          v11 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          MEMORY[0x193AFD630](1);

          sub_191603D70(a1, v11);
        }

        else
        {
          v10 = *(v7 + 16);
          MEMORY[0x193AFD630](0);

          sub_191604140(a1, v10);
        }
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

BOOL _s15AXCoreUtilities14VoiceSelectionV2eeoiySbAC_ACtFZ_0(float *a1, uint64_t a2)
{
  v4 = sub_19166B278();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E0, &unk_191672A20);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = &v45 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFC68, &unk_1916731A0);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = &v45 - v19;
  v21 = *(a1 + 1);
  v22 = *(a2 + 8);
  if (v21)
  {
    if (!v22)
    {
      return 0;
    }

    if (*a1 != *a2 || v21 != v22)
    {
      v23 = v18;
      v24 = *a1;
      v25 = sub_19166C5E8();
      v18 = v23;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  v26 = *(a2 + 20);
  if (a1[5])
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (a1[4] != *(a2 + 16))
    {
      v26 = 1;
    }

    if (v26)
    {
      return 0;
    }
  }

  v27 = *(a2 + 28);
  if (a1[7])
  {
    if (!*(a2 + 28))
    {
      return 0;
    }
  }

  else
  {
    if (a1[6] != *(a2 + 24))
    {
      v27 = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  v28 = *(a2 + 36);
  if (a1[9])
  {
    if (!*(a2 + 36))
    {
      return 0;
    }
  }

  else
  {
    if (a1[8] != *(a2 + 32))
    {
      v28 = 1;
    }

    if (v28)
    {
      return 0;
    }
  }

  v29 = *(a1 + 5);
  v30 = *(a2 + 40);
  if (v29)
  {
    if (!v30)
    {
      return 0;
    }

    v31 = v18;
    v32 = *(a2 + 40);

    v33 = sub_1915EE618(v29, v30);

    v18 = v31;
    if ((v33 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v30)
  {
    return 0;
  }

  v34 = *(a1 + 6);
  v35 = *(a2 + 48);
  if (v34)
  {
    if (!v35)
    {
      return 0;
    }

    v36 = v18;
    v37 = *(a2 + 48);

    v38 = sub_1915ED59C(v34, v35);

    if ((v38 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v36 = v18;
    if (v35)
    {
      return 0;
    }
  }

  v39 = *(type metadata accessor for VoiceSelection() + 40);
  v40 = *(v36 + 48);
  sub_1916027B8(a1 + v39, v20);
  sub_1916027B8(a2 + v39, &v20[v40]);
  v41 = *(v5 + 48);
  if (v41(v20, 1, v4) != 1)
  {
    sub_1916027B8(v20, v14);
    if (v41(&v20[v40], 1, v4) == 1)
    {
      (*(v5 + 8))(v14, v4);
      goto LABEL_41;
    }

    (*(v5 + 32))(v9, &v20[v40], v4);
    sub_1916050AC(&qword_1EADAFC70, MEMORY[0x1E6969610]);
    v43 = sub_19166B6E8();
    v44 = *(v5 + 8);
    v44(v9, v4);
    v44(v14, v4);
    sub_19159E780(v20, &qword_1EADAF5E0, &unk_191672A20);
    return (v43 & 1) != 0;
  }

  if (v41(&v20[v40], 1, v4) != 1)
  {
LABEL_41:
    sub_19159E780(v20, &qword_1EADAFC68, &unk_1916731A0);
    return 0;
  }

  sub_19159E780(v20, &qword_1EADAF5E0, &unk_191672A20);
  return 1;
}

unint64_t sub_1916046E0()
{
  result = qword_1EADAE610;
  if (!qword_1EADAE610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAE610);
  }

  return result;
}

uint64_t sub_191604734(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADAFBF0, &qword_191672F08);
    sub_1916050AC(a2, type metadata accessor for AudioEffectConfiguration);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1916047D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADAFBF8, &qword_191672F10);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_191604840(uint64_t a1)
{
  *(a1 + 8) = sub_1916050AC(&qword_1EADAE5E0, type metadata accessor for VoiceSelection);
  result = sub_1916050AC(&qword_1EADAE5E8, type metadata accessor for VoiceSelection);
  *(a1 + 16) = result;
  return result;
}

void sub_191604920()
{
  sub_191604A44(319, &qword_1EADAE4F0);
  if (v0 <= 0x3F)
  {
    sub_191604A44(319, &qword_1EADAE4D0);
    if (v1 <= 0x3F)
    {
      sub_191604A90(319, &qword_1EADAE4E0, &qword_1EADAFBF0, &qword_191672F08);
      if (v2 <= 0x3F)
      {
        sub_191604A90(319, &qword_1EADAE500, &qword_1EADAFBF8, &qword_191672F10);
        if (v3 <= 0x3F)
        {
          sub_191604AE4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_191604A44(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_19166BF58();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_191604A90(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_19166BF58();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_191604AE4()
{
  if (!qword_1EADAE618)
  {
    sub_19166B278();
    v0 = sub_19166BF58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADAE618);
    }
  }
}

uint64_t getEnumTagSinglePayload for VoiceSelection.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VoiceSelection.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_191604C90()
{
  result = qword_1EADAFC60;
  if (!qword_1EADAFC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAFC60);
  }

  return result;
}

unint64_t sub_191604CE8()
{
  result = qword_1EADAE600;
  if (!qword_1EADAE600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAE600);
  }

  return result;
}

unint64_t sub_191604D40()
{
  result = qword_1EADAE608;
  if (!qword_1EADAE608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAE608);
  }

  return result;
}

uint64_t sub_191604D94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496563696F76 && a2 == 0xE700000000000000;
  if (v4 || (sub_19166C5E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125938 && a2 == 0xE400000000000000 || (sub_19166C5E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6863746970 && a2 == 0xE500000000000000 || (sub_19166C5E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D756C6F76 && a2 == 0xE600000000000000 || (sub_19166C5E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73746365666665 && a2 == 0xE700000000000000 || (sub_19166C5E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7465536563696F76 && a2 == 0xED000073676E6974 || (sub_19166C5E8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E614C646E756F62 && a2 == 0xED00006567617567)
  {

    return 6;
  }

  else
  {
    v6 = sub_19166C5E8();

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

uint64_t sub_191604FE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19160504C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1916050AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1916050F4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t), void (*a3)(uint64_t *__return_ptr, uint64_t))
{
  v30 = a3;
  v31 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFC90, &qword_191673200);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFC98, &qword_191673208);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v29 - v20;
  a2(&v32, v19);
  v22 = v31;
  sub_19166BBA8();
  (*(v16 + 8))(v21, v15);
  sub_19166BB38();
  v23 = sub_19166BB58();
  (*(*(v23 - 8) + 56))(v14, 0, 1, v23);
  (*(v5 + 16))(v9, v22, v4);
  v24 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  (*(v5 + 32))(v25 + v24, v9, v4);
  v26 = (v25 + ((v6 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  v27 = v30;
  *v26 = a2;
  v26[1] = v27;

  sub_1915D42EC(0, 0, v14, &unk_191673218, v25);
  return sub_19166BB88();
}

uint64_t sub_1916053E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFC98, &qword_191673208);
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1916054B4, 0, 0);
}

uint64_t sub_1916054B4()
{
  if (sub_19166BC48())
  {
    v1 = *(v0 + 56);

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = type metadata accessor for ObservationSentinel();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    v7 = swift_allocObject();
    *(v0 + 64) = v7;
    *(v7 + 16) = 0;
    v14 = *(v0 + 24);
    sub_19166B438();
    v8 = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
    *(v0 + 72) = v8;
    v9 = swift_task_alloc();
    *(v0 + 80) = v9;
    *(v9 + 16) = v7;
    *(v9 + 24) = v14;
    *(v9 + 40) = v8;
    v10 = swift_task_alloc();
    *(v0 + 88) = v10;
    *(v10 + 16) = v8;
    *(v10 + 24) = v7;
    v11 = *(MEMORY[0x1E69E88F0] + 4);
    v12 = swift_task_alloc();
    *(v0 + 96) = v12;
    *v12 = v0;
    v12[1] = sub_191605674;
    v13 = MEMORY[0x1E69E6370];

    return MEMORY[0x1EEE6DE18](v0 + 113, &unk_191673230, v9, sub_1915D5FE4, v10, 0, 0, v13);
  }
}

uint64_t sub_191605674()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v8 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_1916059BC;
  }

  else
  {
    v6 = *(v2 + 80);
    v5 = *(v2 + 88);

    v4 = sub_191605798;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_191605798()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);

  *(v0 + 112) = *(v0 + 113);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFC90, &qword_191673200);
  sub_19166BBA8();
  (*(v3 + 8))(v2, v4);
  if (sub_19166BC48())
  {
    v6 = *(v0 + 56);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = type metadata accessor for ObservationSentinel();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    v12 = swift_allocObject();
    *(v0 + 64) = v12;
    *(v12 + 16) = 0;
    v19 = *(v0 + 24);
    sub_19166B438();
    v13 = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
    *(v0 + 72) = v13;
    v14 = swift_task_alloc();
    *(v0 + 80) = v14;
    *(v14 + 16) = v12;
    *(v14 + 24) = v19;
    *(v14 + 40) = v13;
    v15 = swift_task_alloc();
    *(v0 + 88) = v15;
    *(v15 + 16) = v13;
    *(v15 + 24) = v12;
    v16 = *(MEMORY[0x1E69E88F0] + 4);
    v17 = swift_task_alloc();
    *(v0 + 96) = v17;
    *v17 = v0;
    v17[1] = sub_191605674;
    v18 = MEMORY[0x1E69E6370];

    return MEMORY[0x1EEE6DE18](v0 + 113, &unk_191673230, v14, sub_1915D5FE4, v15, 0, 0, v18);
  }
}

uint64_t sub_1916059BC()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 64);
  v4 = *(v0 + 56);

  v5 = *(v0 + 8);
  v6 = *(v0 + 104);

  return v5();
}

uint64_t sub_191605A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFCA8, &qword_191673278);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v21[-v14];
  v22 = a2;
  v23 = a3;
  v24 = a4;
  (*(v11 + 16))(&v21[-v14], a1, v10);
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a2;
  (*(v11 + 32))(v17 + v16, v15, v10);
  v18 = (v17 + ((v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = a3;
  v18[1] = a4;
  v19 = a5;

  sub_19166B408();
}

uint64_t sub_191605C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFCA0, &qword_191673238);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v21[-v14];
  v22 = a2;
  v23 = a3;
  v24 = a4;
  (*(v11 + 16))(&v21[-v14], a1, v10);
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a2;
  (*(v11 + 32))(v17 + v16, v15, v10);
  v18 = (v17 + ((v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = a3;
  v18[1] = a4;
  v19 = a5;

  sub_19166B408();
}

uint64_t sub_191605DC0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_getKeyPath();
  sub_1916082C4(&qword_1EADAE820, type metadata accessor for ObservationSentinel);
  sub_19166B428();

  return a2(v3);
}

uint64_t sub_191605E80(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  v33 = a5;
  v34 = a10;
  v32[1] = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = v32 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8, v22);
  v24 = v32 - v23;
  v25 = sub_19166BB58();
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  (*(v15 + 16))(v19, a4, v14);
  v26 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v27 = (v16 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  *(v28 + 4) = a2;
  *(v28 + 5) = a3;
  (*(v15 + 32))(&v28[v26], v19, v14);
  v29 = &v28[v27];
  *v29 = v33;
  *(v29 + 1) = a6;
  v30 = a2;

  sub_1915D593C(0, 0, v24, v34, v28);
}

uint64_t sub_191606094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1916060BC, 0, 0);
}

uint64_t sub_1916060BC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 16);
  [*(v0 + 24) lock];
  sub_1916062C4(v4, v3, v1);
  [*(v0 + 24) unlock];
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1916061AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1916061D4, 0, 0);
}

uint64_t sub_1916061D4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 16);
  [*(v0 + 24) lock];
  sub_191606454(v4, v3, v1);
  [*(v0 + 24) unlock];
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1916062C4(uint64_t result, uint64_t a2, void (*a3)(uint64_t))
{
  if ((*(result + 17) & 1) == 0)
  {
    *(result + 17) = 1;
    v4 = result;
    swift_getKeyPath();
    sub_1916082C4(&qword_1EADAE820, type metadata accessor for ObservationSentinel);
    sub_19166B428();

    if (*(v4 + 16))
    {
      sub_19166BAB8();
      sub_1916082C4(&qword_1EADAF3C8, MEMORY[0x1E69E8550]);
      swift_allocError();
      sub_19166B658();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFCA8, &qword_191673278);
      return sub_19166BA88();
    }

    else
    {
      a3(v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFCA8, &qword_191673278);
      return sub_19166BA98();
    }
  }

  return result;
}

uint64_t sub_191606454(uint64_t result, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t))
{
  if ((*(result + 17) & 1) == 0)
  {
    *(result + 17) = 1;
    v4 = result;
    swift_getKeyPath();
    v7 = v4;
    sub_1916082C4(&qword_1EADAE820, type metadata accessor for ObservationSentinel);
    sub_19166B428();

    if (*(v4 + 16))
    {
      sub_19166BAB8();
      sub_1916082C4(&qword_1EADAF3C8, MEMORY[0x1E69E8550]);
      v6 = swift_allocError();
      sub_19166B658();
      v7 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFCA0, &qword_191673238);
      return sub_19166BA88();
    }

    else
    {
      a3(&v7, v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFCA0, &qword_191673238);
      return sub_19166BA98();
    }
  }

  return result;
}

uint64_t sub_191606640(uint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + 16))();
  v4 = 0;
  v6 = v3 + 56;
  v5 = *(v3 + 56);
  v68 = v3;
  v7 = 1 << *(v3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v5;
  v10 = (v7 + 63) >> 6;
  v11 = MEMORY[0x1E69E7CC8];
  if ((v8 & v5) != 0)
  {
    goto LABEL_6;
  }

  while (1)
  {
LABEL_7:
    v14 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_47;
    }

    if (v14 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v14);
    ++v4;
    if (v9)
    {
      while (1)
      {
        v15 = *(*(v68 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v9)))));
        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v70 = v11;
        v17 = sub_19159EC10(v15);
        v19 = v11[2];
        v20 = (v18 & 1) == 0;
        v21 = __OFADD__(v19, v20);
        v22 = v19 + v20;
        if (v21)
        {
          goto LABEL_50;
        }

        v23 = v18;
        if (v11[3] >= v22)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v28 = v17;
            sub_1916484DC();
            v17 = v28;
          }
        }

        else
        {
          sub_1916463AC(v22, isUniquelyReferenced_nonNull_native);
          v17 = sub_19159EC10(v15);
          if ((v23 & 1) != (v24 & 1))
          {
            goto LABEL_52;
          }
        }

        v9 &= v9 - 1;
        v11 = v70;
        if (v23)
        {
          v12 = (v70[7] + 16 * v17);
          v13 = *v12;
          *v12 = v2;
          v12[1] = a2;
          swift_unknownObjectRelease();
          v4 = v14;
          if (!v9)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v70[(v17 >> 6) + 8] |= 1 << v17;
          *(v70[6] + 8 * v17) = v15;
          v25 = (v70[7] + 16 * v17);
          *v25 = v2;
          v25[1] = a2;
          v26 = v70[2];
          v21 = __OFADD__(v26, 1);
          v27 = v26 + 1;
          if (v21)
          {
            goto LABEL_51;
          }

          v70[2] = v27;
          v4 = v14;
          if (!v9)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v14 = v4;
      }
    }
  }

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF638, &qword_191672AA0);
  v30 = sub_19164AB68(v29, 1, a1, v29, *(a2 + 8));
  v63 = *(v30 + 16);
  if (!v63)
  {
LABEL_44:

    return v11;
  }

  v31 = 0;
  v61 = v30;
  v62 = v30 + 32;
LABEL_23:
  if (v31 >= *(v30 + 16))
  {
    goto LABEL_49;
  }

  v32 = (v62 + 16 * v31);
  v65 = v31 + 1;
  v34 = *v32;
  v33 = v32[1];
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v36 = sub_191606640(ObjectType, v33);
  v37 = 0;
  v39 = v36 + 64;
  v38 = *(v36 + 64);
  v67 = v36;
  v40 = 1 << *(v36 + 32);
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  else
  {
    v41 = -1;
  }

  v42 = v41 & v38;
  v43 = (v40 + 63) >> 6;
  if ((v41 & v38) != 0)
  {
    goto LABEL_30;
  }

LABEL_31:
  while (1)
  {
    v46 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v46 >= v43)
    {

      swift_unknownObjectRelease();
      v31 = v65;
      v30 = v61;
      if (v65 == v63)
      {
        goto LABEL_44;
      }

      goto LABEL_23;
    }

    v42 = *(v39 + 8 * v46);
    ++v37;
    if (v42)
    {
      while (1)
      {
        v47 = __clz(__rbit64(v42)) | (v46 << 6);
        v48 = *(*(v67 + 48) + 8 * v47);
        v69 = *(*(v67 + 56) + 16 * v47);
        swift_unknownObjectRetain_n();
        v49 = swift_isUniquelyReferenced_nonNull_native();
        v71 = v11;
        v50 = sub_19159EC10(v48);
        v52 = v11[2];
        v53 = (v51 & 1) == 0;
        v21 = __OFADD__(v52, v53);
        v54 = v52 + v53;
        if (v21)
        {
          goto LABEL_46;
        }

        v55 = v51;
        if (v11[3] >= v54)
        {
          if ((v49 & 1) == 0)
          {
            v59 = v50;
            sub_1916484DC();
            v50 = v59;
          }
        }

        else
        {
          sub_1916463AC(v54, v49);
          v50 = sub_19159EC10(v48);
          if ((v55 & 1) != (v56 & 1))
          {
            goto LABEL_52;
          }
        }

        v42 &= v42 - 1;
        v11 = v71;
        if (v55)
        {
          break;
        }

        v71[(v50 >> 6) + 8] |= 1 << v50;
        *(v71[6] + 8 * v50) = v48;
        *(v71[7] + 16 * v50) = v69;
        swift_unknownObjectRelease();
        v57 = v71[2];
        v21 = __OFADD__(v57, 1);
        v58 = v57 + 1;
        if (v21)
        {
          goto LABEL_48;
        }

        v71[2] = v58;
        v37 = v46;
        if (!v42)
        {
          goto LABEL_31;
        }

LABEL_30:
        v46 = v37;
      }

      v44 = v71[7];
      v45 = *(v44 + 16 * v50);
      *(v44 + 16 * v50) = v69;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v37 = v46;
      if (v42)
      {
        goto LABEL_30;
      }
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
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
  result = sub_19166C6F8();
  __break(1u);
  return result;
}

uint64_t sub_191606AD8()
{
  v0 = sub_19166BDB8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_19166B5B8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v9 = sub_19166BDA8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  sub_1915DAA60(0, &qword_1EADAE7F0, 0x1E69E9610);
  sub_19166BD98();
  sub_19166B598();
  (*(v1 + 104))(v5, *MEMORY[0x1E69E8090], v0);
  return sub_19166BDE8();
}

uint64_t sub_191606C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a2;
  v32 = a6;
  v30 = a5;
  v10 = sub_19166B588();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_19166B5B8();
  v16 = *(v33 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v33, v18);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_191606AD8();
  sub_19159E224(a4, v36);
  v22 = swift_allocObject();
  v23 = v31;
  v24 = v32;
  *(v22 + 16) = v30;
  *(v22 + 24) = v24;
  *(v22 + 32) = v6;
  *(v22 + 40) = a1;
  *(v22 + 48) = v23;
  *(v22 + 56) = a3;
  v25 = v36[1];
  *(v22 + 64) = v36[0];
  *(v22 + 80) = v25;
  aBlock[4] = sub_191607968;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1915EADB4;
  aBlock[3] = &block_descriptor_3;
  v26 = _Block_copy(aBlock);
  v27 = v6;

  sub_19166B598();
  v34 = MEMORY[0x1E69E7CC0];
  sub_1916082C4(&qword_1EADAE6B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D8, &qword_191676060);
  sub_1915EB79C();
  sub_19166BFE8();
  MEMORY[0x193AFCC80](0, v20, v15, v26);
  _Block_release(v26);

  (*(v11 + 8))(v15, v10);
  (*(v16 + 8))(v20, v33);
}

uint64_t sub_191606F70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v57 = a6;
  v58 = a7;
  v60 = a3;
  v61 = a5;
  v59 = a4;
  v56 = a2;
  v8 = sub_19166B1C8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v53 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v16 = &v52 - v15;
  v54 = &v52 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFC78, &qword_1916731D8);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v52 - v21;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFC80, &qword_1916731E0);
  v23 = *(v55 - 8);
  v24 = *(v23 + 64);
  v26 = MEMORY[0x1EEE9AC00](v55, v25);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v52 - v28;
  v30 = swift_allocObject();
  v31 = v58;
  v30[2] = v57;
  v30[3] = v31;
  v32 = v56;
  v30[4] = a1;
  v30[5] = v32;
  v62 = sub_191607994;
  v63 = v30;
  (*(v18 + 104))(v22, *MEMORY[0x1E69E8650], v17);
  v33 = a1;
  sub_19166BC18();

  v34 = swift_allocObject();
  *(v34 + 16) = 1;
  v35 = sub_19166BB58();
  (*(*(v35 - 8) + 56))(v16, 1, 1, v35);
  v36 = *(v23 + 16);
  v37 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v29;
  v38 = v55;
  v36(v37, v29, v55);
  sub_19166BB28();

  v39 = v59;

  v40 = sub_19166BB18();
  v41 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v42 = (v24 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  v44 = MEMORY[0x1E69E85E0];
  *(v43 + 16) = v40;
  *(v43 + 24) = v44;
  (*(v23 + 32))(v43 + v41, v37, v38);
  *(v43 + v42) = v34;
  v45 = (v43 + ((v42 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v45 = v60;
  v45[1] = v39;
  v46 = sub_1915D593C(0, 0, v54, &unk_1916731F0, v43);
  sub_19159E224(v61, v65);
  if (v66)
  {
    v47 = v58;
    sub_1915DAA60(0, &qword_1EADAE640, 0x1E69E58C0);
    if (swift_dynamicCast())
    {
      v48 = v64;
      v49 = v53;
      sub_19166B1B8();
      v50 = swift_allocObject();
      *(v50 + 16) = sub_191607B4C;
      *(v50 + 24) = v46;

      sub_19165DF40(sub_191607B70, v50, v49);

      (*(v23 + 8))(v47, v38);
    }

    else
    {
      (*(v23 + 8))(v47, v38);
    }
  }

  else
  {
    (*(v23 + 8))(v58, v38);

    sub_1915DCBFC(v65);
  }
}

uint64_t sub_1916074B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFC88, &qword_1916731F8);
  v7[12] = v8;
  v9 = *(v8 - 8);
  v7[13] = v9;
  v10 = *(v9 + 64) + 15;
  v7[14] = swift_task_alloc();
  v7[15] = sub_19166BB28();
  v7[16] = sub_19166BB18();
  v12 = sub_19166BA78();
  v7[17] = v12;
  v7[18] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1916075BC, v12, v11);
}

uint64_t sub_1916075BC()
{
  v1 = v0[14];
  v2 = v0[8];
  v3 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFC80, &qword_1916731E0);
  sub_19166BBD8();
  swift_beginAccess();
  swift_beginAccess();
  v4 = v0[15];
  v5 = sub_19166BB18();
  v0[19] = v5;
  v6 = *(MEMORY[0x1E69E8678] + 4);
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_1916076CC;
  v8 = v0[14];
  v9 = v0[12];
  v10 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v0 + 21, v5, v10, v9);
}

uint64_t sub_1916076CC()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);
  v7 = *v0;

  v4 = *(v1 + 144);
  v5 = *(v1 + 136);

  return MEMORY[0x1EEE6DFA0](sub_191607810, v5, v4);
}

uint64_t sub_191607810()
{
  if (*(v0 + 168) == 2)
  {
    v1 = *(v0 + 128);
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 72);
    if (*(v4 + 16))
    {
      *(v4 + 16) = 0;
    }

    else
    {
      v5 = *(v0 + 88);
      (*(v0 + 80))();
    }

    v6 = *(v0 + 120);
    v7 = sub_19166BB18();
    *(v0 + 152) = v7;
    v8 = *(MEMORY[0x1E69E8678] + 4);
    v9 = swift_task_alloc();
    *(v0 + 160) = v9;
    *v9 = v0;
    v9[1] = sub_1916076CC;
    v10 = *(v0 + 112);
    v11 = *(v0 + 96);
    v12 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6D9C8](v0 + 168, v7, v12, v11);
  }
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_191607994@<X0>(_BYTE *a1@<X8>)
{
  v5 = *(v1 + 32);
  [v5 performSelector_];
  v3 = v5;
  *a1 = 1;

  return v5;
}

uint64_t sub_1916079FC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFC80, &qword_1916731E0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1915D8338;

  return sub_1916074B4(a1, v10, v11, v1 + v6, v9, v12, v13);
}

uint64_t sub_191607B70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_191607B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_191607BC0, 0, 0);
}

uint64_t sub_191607BC0()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v2;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_191607CB4;
  v5 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v0 + 80, 0, 0, 0xD000000000000012, 0x800000019167C550, sub_191608128, v1, v5);
}

uint64_t sub_191607CB4()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1915D4B98, 0, 0);
  }

  else
  {
    v4 = *(v3 + 56);
    v5 = *(v3 + 16);

    *v5 = *(v3 + 80);
    v6 = *(v3 + 8);

    return v6();
  }
}

void *sub_191607E00@<X0>(void *(*a1)(uint64_t *__return_ptr, uint64_t)@<X1>, _BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_1916082C4(&qword_1EADAE820, type metadata accessor for ObservationSentinel);
  sub_19166B428();

  result = a1(&v6, v4);
  *a2 = v6;
  return result;
}

uint64_t sub_191607EC8(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFC90, &qword_191673200) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1915D8338;

  return sub_1916053E4(a1, v7, v8, v1 + v6, v10, v11);
}

uint64_t sub_191608008()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3B8, &qword_1916724F0);

  return sub_19166BC28();
}

uint64_t sub_19160805C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1915D4F90;

  return sub_191607B98(a1, v4, v5, v7, v6);
}

void *sub_191608134@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  return sub_191607E00(*(v1 + 24), a1);
}

uint64_t sub_191608170(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFCA0, &qword_191673238) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1915D4F90;

  return sub_1916061AC(a1, v7, v8, v9, v10, v1 + v6, v12, v13);
}

uint64_t sub_1916082C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_25Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v2 + 24);

  (*(v4 + 8))(v2 + v6, v3);
  v9 = *(v2 + v7 + 8);

  return MEMORY[0x1EEE6BDD0](v2, v7 + 16, v5 | 7);
}

uint64_t sub_191608428(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = (v5 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_191605E80(a1, *(v5 + 16), *(v5 + 24), v5 + v12, *v13, v13[1], a2, a3, a4, a5);
}

uint64_t objectdestroy_28Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 48) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  swift_unknownObjectRelease();

  v9 = *(v2 + 40);

  (*(v4 + 8))(v2 + v6, v3);
  v10 = *(v2 + v7 + 8);

  return MEMORY[0x1EEE6BDD0](v2, v7 + 16, v5 | 7);
}

uint64_t sub_1916085E0(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFCA8, &qword_191673278) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1915D8338;

  return sub_191606094(a1, v7, v8, v9, v10, v1 + v6, v12, v13);
}

uint64_t sub_191608DA4()
{
  v1 = *v0;
  sub_19166C778();
  MEMORY[0x193AFD630](v1);
  return sub_19166C7B8();
}

uint64_t sub_191608DEC()
{
  v1 = *v0;
  sub_19166C778();
  MEMORY[0x193AFD630](v1);
  return sub_19166C7B8();
}

uint64_t sub_191609270(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1916092C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  sub_1915DFD18(a1, &v19);
  v7 = sub_19166C6D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v8 = type metadata accessor for FieldAccessor(0);
  v9 = *(*(v8 - 8) + 72);
  v10 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1916729D0;
  v12 = v11 + v10;
  if (qword_1ED5A81C8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_1ED5A8A90);
  sub_19162D3A0(v13, v12);
  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v8, qword_1ED5A8AA8);
  sub_19162D3A0(v14, v12 + v9);
  v15 = v12 + 2 * v9;
  if (qword_1ED5A81D8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v8, &unk_1ED5A8AC0);
  sub_19162D3A0(v16, v15);
  sub_191609790(v7, a2, a3, v11, sub_1915FDCC0, 0, &v19);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  swift_unknownObjectRelease();
  if (*(&v20 + 1) == 1)
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  else
  {
    result = *&v19;
    v18 = v20;
    *a4 = v19;
    a4[1] = v18;
  }

  return result;
}

double safeValue<A>(_:_:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  v6 = sub_19166C5D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD18, &qword_191673680);
  v7 = type metadata accessor for FieldAccessor(0);
  v8 = *(*(v7 - 8) + 72);
  v9 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1916729D0;
  v11 = v10 + v9;
  if (qword_1ED5A81C8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v7, qword_1ED5A8A90);
  sub_19162D3A0(v12, v11);
  if (qword_1ED5A81D0 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v7, qword_1ED5A8AA8);
  sub_19162D3A0(v13, v11 + v8);
  v14 = v11 + 2 * v8;
  if (qword_1ED5A81D8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v7, qword_1ED5A8AC0);
  sub_19162D3A0(v15, v14);
  sub_191609790(v6, a1, a2, v10, sub_1915FDCC0, 0, &v18);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  swift_unknownObjectRelease();
  if (*(&v19 + 1) == 1)
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  else
  {
    result = *&v18;
    v17 = v19;
    *a3 = v18;
    a3[1] = v17;
  }

  return result;
}

id sub_191609790@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_19166C208();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v86);
  v84 = a1;
  if (v87)
  {
    sub_1915E4370(&v86, &v88);
    __swift_project_boxed_opaque_existential_1(&v88, v89);
    DynamicType = swift_getDynamicType();
    v21 = sub_191622EE0(DynamicType);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADB0270, &unk_191672C20);
    v23 = sub_19162CE48(a7, v21, &v88, v21, a4, a1, a2, a3, a5, a6, v22, v21);
    v24 = v23;
    v26 = v25;
    v27 = (v23 >> 8) & 1;
    result = __swift_destroy_boxed_opaque_existential_1(&v88);
    if ((v24 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v77 = v15;
    v78 = v14;
    v82 = a7;
    sub_19159E780(&v86, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v30 = swift_allocObject();
    v30[2] = 0;
    v80 = v30 + 2;
    v30[3] = 0;
    v30[4] = 0;
    v30[5] = 1;
    v31 = swift_allocObject();
    v79 = &v76;
    *(v31 + 16) = 1;
    v32 = v84;
    *(v31 + 24) = v84;
    *(v31 + 32) = a2;
    *(v31 + 40) = a3;
    *(v31 + 48) = v32;
    v81 = v30;
    *(v31 + 56) = v30;
    v85 = 0;
    *&v88 = 0;
    v34 = MEMORY[0x1EEE9AC00](v31, v33);
    *(&v76 - 10) = a4;
    *(&v76 - 9) = a2;
    v83 = a2;
    *(&v76 - 8) = a3;
    *(&v76 - 7) = &v85 + 1;
    *(&v76 - 6) = &v88;
    *(&v76 - 5) = a5;
    v72 = a6;
    v73 = sub_19163027C;
    v74 = v34;
    v75 = &v85;
    if (AGTypeGetKind() == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v35 = v77;
      v36 = *(v77 + 72);
      v37 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      sub_19166C1F8();
      *&v86 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v39 = v78;
      v40 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v40, v41);
      v74 = sub_19163059C;
      v75 = &v76 - 12;
      sub_19166C118();
      (*(v35 + 8))(v19, v39);
    }

    else
    {
      *&v86 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v42);
        v74 = &v86;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      if (isClassType)
      {
        v44 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v44 = 4;
        }

        else
        {
          v44 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v44);
      v74 = sub_19163059C;
      v75 = &v76 - 12;
      AGTypeApplyFields2();
    }

    v45 = v80;
    v24 = HIBYTE(v85);
    v27 = v85;
    v26 = v88;
    swift_beginAccess();
    sub_191630294(v45, v82);

    a2 = v83;
    if ((v24 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v27)
  {
    return result;
  }

LABEL_16:
  v46 = sub_19166C878();
  v48 = v47;
  if (AXShouldLogValidationErrors())
  {
    v49 = sub_19166B718();
    v50 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v49, v50);
  }

  if ((AXShouldLogValidationErrors() & 1) == 0)
  {
    goto LABEL_29;
  }

  if ((v24 & 1) == 0)
  {
    v64 = a2;
    v65 = a3;
    result = AXLogValidations();
    if (result)
    {
      v53 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_1916729D0;
      v67 = MEMORY[0x1E69E6158];
      *(v66 + 56) = MEMORY[0x1E69E6158];
      v68 = sub_1915F225C();
      *(v66 + 32) = v64;
      *(v66 + 40) = v65;
      *(v66 + 96) = v67;
      *(v66 + 104) = v68;
      *(v66 + 64) = v68;
      *(v66 + 72) = v46;
      *(v66 + 80) = v48;
      v69 = objc_opt_self();

      v70 = [v69 callStackSymbols];
      v71 = sub_19166BA08();

      *(v66 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v66 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v66 + 112) = v71;
      goto LABEL_28;
    }

    __break(1u);
LABEL_34:
    __break(1u);
    return result;
  }

  if (v26)
  {
    v51 = v27;
  }

  else
  {
    v51 = 1;
  }

  if (v51)
  {
    goto LABEL_29;
  }

  v52 = a2;
  result = AXLogValidations();
  if (!result)
  {
    goto LABEL_34;
  }

  v53 = result;
  sub_19166BD68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_191673660;
  v55 = MEMORY[0x1E69E6158];
  *(v54 + 56) = MEMORY[0x1E69E6158];
  v56 = sub_1915F225C();
  *(v54 + 32) = v52;
  *(v54 + 40) = a3;
  *(v54 + 96) = v55;
  *(v54 + 104) = v56;
  *(v54 + 64) = v56;
  *(v54 + 72) = v46;
  *(v54 + 80) = v48;
  v57 = v84;
  *&v86 = v84;

  v58 = sub_19166B7A8();
  *(v54 + 136) = v55;
  *(v54 + 144) = v56;
  *(v54 + 112) = v58;
  *(v54 + 120) = v59;
  *&v86 = v57;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
  swift_dynamicCast();
  v60 = sub_19166C878();
  *(v54 + 216) = v55;
  *(v54 + 224) = v56;
  *(v54 + 192) = v60;
  *(v54 + 200) = v61;
  v62 = [objc_opt_self() callStackSymbols];
  v63 = sub_19166BA08();

  *(v54 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
  *(v54 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
  *(v54 + 232) = v63;
LABEL_28:
  sub_19166B518();

LABEL_29:
  if (AXShouldCrashOnValidationErrors())
  {
    abort();
  }
}

id sub_19160A010(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v82);
  v80 = a2;
  if (v83)
  {
    sub_1915E4370(&v82, &v84);
    __swift_project_boxed_opaque_existential_1(&v84, v85);
    DynamicType = swift_getDynamicType();
    v19 = sub_191622EE0(DynamicType);
    v20 = sub_19162CE48(&v86, v19, &v84, v19, a4, a1, a2, a3, a5, a6, MEMORY[0x1E69E6370], v19);
    v21 = v20;
    v23 = v22;
    v24 = (v20 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v84);
    if ((v21 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v75 = v13;
    sub_19159E780(&v82, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v26 = a1;
    v27 = swift_allocObject();
    *(v27 + 16) = 2;
    v77 = v27 + 16;
    v28 = swift_allocObject();
    v76 = &v73;
    *(v28 + 16) = 1;
    *(v28 + 24) = v26;
    *(v28 + 32) = a2;
    *(v28 + 40) = a3;
    *(v28 + 48) = v26;
    v78 = v27;
    *(v28 + 56) = v27;
    v86 = 0;
    v81 = 0;
    *&v84 = 0;
    v30 = MEMORY[0x1EEE9AC00](v28, v29);
    *(&v73 - 10) = a4;
    *(&v73 - 9) = v31;
    *(&v73 - 8) = a3;
    *(&v73 - 7) = &v86;
    *(&v73 - 6) = &v84;
    *(&v73 - 5) = a5;
    v69 = a6;
    v70 = sub_19163021C;
    v71 = v30;
    v72 = &v81;
    Kind = AGTypeGetKind();
    v79 = a3;
    if (Kind == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v74 = &v73 - 12;
      v33 = v75;
      v34 = *(v75 + 72);
      v35 = (*(v75 + 80) + 32) & ~*(v75 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      sub_19166C1F8();
      *&v82 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v37 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v37, v38);
      v71 = sub_19163059C;
      v72 = v74;
      sub_19166C118();
      (*(v33 + 8))(v17, v12);
      a1 = v26;
    }

    else
    {
      *&v82 = ObjectType;
      swift_unknownObjectRetain();

      a1 = v26;
      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v39);
        v71 = &v82;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      if (isClassType)
      {
        v41 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v41 = 4;
        }

        else
        {
          v41 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v41);
      v71 = sub_19163059C;
      v72 = &v73 - 12;
      AGTypeApplyFields2();
    }

    v42 = v78;

    v21 = v86;
    v24 = v81;
    v23 = v84;
    swift_beginAccess();
    v86 = *(v42 + 16);

    a3 = v79;
    if ((v21 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v24)
  {
    return v86;
  }

LABEL_16:
  v43 = sub_19166C878();
  v45 = v44;
  if (AXShouldLogValidationErrors())
  {
    v46 = sub_19166B718();
    v47 = a3;
    v48 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v46, v48);

    a3 = v47;
  }

  if ((AXShouldLogValidationErrors() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v21)
  {
    if (v23)
    {
      v49 = v24;
    }

    else
    {
      v49 = 1;
    }

    if (v49)
    {
      goto LABEL_29;
    }

    v50 = a3;
    result = AXLogValidations();
    if (result)
    {
      v52 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_191673660;
      v54 = MEMORY[0x1E69E6158];
      *(v53 + 56) = MEMORY[0x1E69E6158];
      v55 = sub_1915F225C();
      *(v53 + 32) = v80;
      *(v53 + 40) = v50;
      *(v53 + 96) = v54;
      *(v53 + 104) = v55;
      *(v53 + 64) = v55;
      *(v53 + 72) = v43;
      *(v53 + 80) = v45;
      *&v82 = a1;

      v56 = sub_19166B7A8();
      *(v53 + 136) = v54;
      *(v53 + 144) = v55;
      *(v53 + 112) = v56;
      *(v53 + 120) = v57;
      *&v82 = a1;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v58 = sub_19166C878();
      *(v53 + 216) = v54;
      *(v53 + 224) = v55;
      *(v53 + 192) = v58;
      *(v53 + 200) = v59;
      v60 = [objc_opt_self() callStackSymbols];
      v61 = sub_19166BA08();

      *(v53 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v53 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v53 + 232) = v61;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      return v86;
    }
  }

  else
  {
    v62 = a3;
    result = AXLogValidations();
    if (result)
    {
      v52 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_1916729D0;
      v64 = MEMORY[0x1E69E6158];
      *(v63 + 56) = MEMORY[0x1E69E6158];
      v65 = sub_1915F225C();
      *(v63 + 32) = v80;
      *(v63 + 40) = v62;
      *(v63 + 96) = v64;
      *(v63 + 104) = v65;
      *(v63 + 64) = v65;
      *(v63 + 72) = v43;
      *(v63 + 80) = v45;
      v66 = objc_opt_self();

      v67 = [v66 callStackSymbols];
      v68 = sub_19166BA08();

      *(v63 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v63 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v63 + 112) = v68;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_19160A89C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v84);
  v80 = a1;
  if (v85)
  {
    sub_1915E4370(&v84, &v86);
    __swift_project_boxed_opaque_existential_1(&v86, v87);
    DynamicType = swift_getDynamicType();
    v19 = sub_191622EE0(DynamicType);
    v20 = sub_19162CE48(&v84, v19, &v86, v19, a4, a1, a2, a3, a5, a6, MEMORY[0x1E69E6530], v19);
    v21 = v20;
    v23 = v22;
    v24 = (v20 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v86);
    if ((v21 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v74 = v13;
    v75 = v12;
    sub_19159E780(&v84, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    v77 = v26 + 16;
    v81 = a3;
    *(v26 + 24) = 1;
    v27 = swift_allocObject();
    v76 = &v74;
    *(v27 + 16) = 1;
    a3 = v81;
    *(v27 + 24) = a1;
    *(v27 + 32) = a2;
    *(v27 + 40) = a3;
    *(v27 + 48) = a1;
    v78 = v26;
    *(v27 + 56) = v26;
    LOBYTE(v82) = 0;
    v83 = 0;
    *&v86 = 0;
    v29 = MEMORY[0x1EEE9AC00](v27, v28);
    *(&v74 - 10) = a4;
    *(&v74 - 9) = a2;
    v79 = a2;
    *(&v74 - 8) = a3;
    *(&v74 - 7) = &v82;
    *(&v74 - 6) = &v86;
    *(&v74 - 5) = a5;
    v70 = a6;
    v71 = sub_1916301FC;
    v72 = v29;
    v73 = &v83;
    if (AGTypeGetKind() == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v30 = v74;
      v31 = *(v74 + 72);
      v32 = (*(v74 + 80) + 32) & ~*(v74 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      a3 = v81;
      sub_19166C1F8();
      *&v84 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v34 = v75;
      v35 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v35, v36);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      sub_19166C118();
      (*(v30 + 8))(v17, v34);
    }

    else
    {
      *&v84 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v37);
        v72 = &v84;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      if (isClassType)
      {
        v39 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v39 = 4;
        }

        else
        {
          v39 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v39);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      AGTypeApplyFields2();
    }

    v40 = v78;

    v21 = v82;
    v24 = v83;
    v23 = v86;
    swift_beginAccess();
    v41 = *(v40 + 24);
    *&v84 = *(v40 + 16);
    BYTE8(v84) = v41;

    a2 = v79;
    if ((v21 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v24)
  {
    return v84;
  }

LABEL_16:
  v42 = sub_19166C878();
  v44 = v43;
  if (AXShouldLogValidationErrors())
  {
    v45 = sub_19166B718();
    v46 = a2;
    v47 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v45, v47);

    a2 = v46;
  }

  if ((AXShouldLogValidationErrors() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v21)
  {
    if (v23)
    {
      v48 = v24;
    }

    else
    {
      v48 = 1;
    }

    if (v48)
    {
      goto LABEL_29;
    }

    v49 = a2;
    result = AXLogValidations();
    if (result)
    {
      v51 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_191673660;
      v53 = MEMORY[0x1E69E6158];
      *(v52 + 56) = MEMORY[0x1E69E6158];
      v54 = sub_1915F225C();
      *(v52 + 32) = v49;
      *(v52 + 40) = a3;
      *(v52 + 96) = v53;
      *(v52 + 104) = v54;
      *(v52 + 64) = v54;
      *(v52 + 72) = v42;
      *(v52 + 80) = v44;
      v55 = v80;
      v82 = v80;

      v56 = sub_19166B7A8();
      *(v52 + 136) = v53;
      *(v52 + 144) = v54;
      *(v52 + 112) = v56;
      *(v52 + 120) = v57;
      v82 = v55;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v58 = sub_19166C878();
      *(v52 + 216) = v53;
      *(v52 + 224) = v54;
      *(v52 + 192) = v58;
      *(v52 + 200) = v59;
      v60 = [objc_opt_self() callStackSymbols];
      v61 = sub_19166BA08();

      *(v52 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v52 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v52 + 232) = v61;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      return v84;
    }
  }

  else
  {
    v62 = a2;
    v63 = a3;
    result = AXLogValidations();
    if (result)
    {
      v51 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1916729D0;
      v65 = MEMORY[0x1E69E6158];
      *(v64 + 56) = MEMORY[0x1E69E6158];
      v66 = sub_1915F225C();
      *(v64 + 32) = v62;
      *(v64 + 40) = v63;
      *(v64 + 96) = v65;
      *(v64 + 104) = v66;
      *(v64 + 64) = v66;
      *(v64 + 72) = v42;
      *(v64 + 80) = v44;
      v67 = objc_opt_self();

      v68 = [v67 callStackSymbols];
      v69 = sub_19166BA08();

      *(v64 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 112) = v69;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_19160B130(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v84);
  v80 = a1;
  if (v85)
  {
    sub_1915E4370(&v84, &v86);
    __swift_project_boxed_opaque_existential_1(&v86, v87);
    DynamicType = swift_getDynamicType();
    v19 = sub_191622EE0(DynamicType);
    v20 = sub_19162CE48(&v84, v19, &v86, v19, a4, a1, a2, a3, a5, a6, MEMORY[0x1E69E6810], v19);
    v21 = v20;
    v23 = v22;
    v24 = (v20 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v86);
    if ((v21 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v74 = v13;
    v75 = v12;
    sub_19159E780(&v84, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    v77 = v26 + 16;
    v81 = a3;
    *(v26 + 24) = 1;
    v27 = swift_allocObject();
    v76 = &v74;
    *(v27 + 16) = 1;
    a3 = v81;
    *(v27 + 24) = a1;
    *(v27 + 32) = a2;
    *(v27 + 40) = a3;
    *(v27 + 48) = a1;
    v78 = v26;
    *(v27 + 56) = v26;
    LOBYTE(v82) = 0;
    v83 = 0;
    *&v86 = 0;
    v29 = MEMORY[0x1EEE9AC00](v27, v28);
    *(&v74 - 10) = a4;
    *(&v74 - 9) = a2;
    v79 = a2;
    *(&v74 - 8) = a3;
    *(&v74 - 7) = &v82;
    *(&v74 - 6) = &v86;
    *(&v74 - 5) = a5;
    v70 = a6;
    v71 = sub_1916301DC;
    v72 = v29;
    v73 = &v83;
    if (AGTypeGetKind() == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v30 = v74;
      v31 = *(v74 + 72);
      v32 = (*(v74 + 80) + 32) & ~*(v74 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      a3 = v81;
      sub_19166C1F8();
      *&v84 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v34 = v75;
      v35 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v35, v36);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      sub_19166C118();
      (*(v30 + 8))(v17, v34);
    }

    else
    {
      *&v84 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v37);
        v72 = &v84;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      if (isClassType)
      {
        v39 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v39 = 4;
        }

        else
        {
          v39 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v39);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      AGTypeApplyFields2();
    }

    v40 = v78;

    v21 = v82;
    v24 = v83;
    v23 = v86;
    swift_beginAccess();
    v41 = *(v40 + 24);
    *&v84 = *(v40 + 16);
    BYTE8(v84) = v41;

    a2 = v79;
    if ((v21 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v24)
  {
    return v84;
  }

LABEL_16:
  v42 = sub_19166C878();
  v44 = v43;
  if (AXShouldLogValidationErrors())
  {
    v45 = sub_19166B718();
    v46 = a2;
    v47 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v45, v47);

    a2 = v46;
  }

  if ((AXShouldLogValidationErrors() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v21)
  {
    if (v23)
    {
      v48 = v24;
    }

    else
    {
      v48 = 1;
    }

    if (v48)
    {
      goto LABEL_29;
    }

    v49 = a2;
    result = AXLogValidations();
    if (result)
    {
      v51 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_191673660;
      v53 = MEMORY[0x1E69E6158];
      *(v52 + 56) = MEMORY[0x1E69E6158];
      v54 = sub_1915F225C();
      *(v52 + 32) = v49;
      *(v52 + 40) = a3;
      *(v52 + 96) = v53;
      *(v52 + 104) = v54;
      *(v52 + 64) = v54;
      *(v52 + 72) = v42;
      *(v52 + 80) = v44;
      v55 = v80;
      v82 = v80;

      v56 = sub_19166B7A8();
      *(v52 + 136) = v53;
      *(v52 + 144) = v54;
      *(v52 + 112) = v56;
      *(v52 + 120) = v57;
      v82 = v55;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v58 = sub_19166C878();
      *(v52 + 216) = v53;
      *(v52 + 224) = v54;
      *(v52 + 192) = v58;
      *(v52 + 200) = v59;
      v60 = [objc_opt_self() callStackSymbols];
      v61 = sub_19166BA08();

      *(v52 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v52 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v52 + 232) = v61;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      return v84;
    }
  }

  else
  {
    v62 = a2;
    v63 = a3;
    result = AXLogValidations();
    if (result)
    {
      v51 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1916729D0;
      v65 = MEMORY[0x1E69E6158];
      *(v64 + 56) = MEMORY[0x1E69E6158];
      v66 = sub_1915F225C();
      *(v64 + 32) = v62;
      *(v64 + 40) = v63;
      *(v64 + 96) = v65;
      *(v64 + 104) = v66;
      *(v64 + 64) = v66;
      *(v64 + 72) = v42;
      *(v64 + 80) = v44;
      v67 = objc_opt_self();

      v68 = [v67 callStackSymbols];
      v69 = sub_19166BA08();

      *(v64 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 112) = v69;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_19160B9C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v85);
  v83 = a1;
  if (v86)
  {
    sub_1915E4370(&v85, &v87);
    __swift_project_boxed_opaque_existential_1(&v87, v88);
    DynamicType = swift_getDynamicType();
    v19 = sub_191622EE0(DynamicType);
    v20 = sub_19162CE48(&v89, v19, &v87, v19, a4, a1, a2, a3, a5, a6, MEMORY[0x1E69E7230], v19);
    v21 = v20;
    v23 = v22;
    v24 = (v20 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v87);
    if ((v21 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v76 = v13;
    v77 = v12;
    sub_19159E780(&v85, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v26 = swift_allocObject();
    *(v26 + 16) = 256;
    v79 = v26 + 16;
    v27 = swift_allocObject();
    v78 = &v76;
    *(v27 + 16) = 1;
    *(v27 + 24) = a1;
    *(v27 + 32) = a2;
    *(v27 + 40) = a3;
    *(v27 + 48) = a1;
    v80 = v26;
    *(v27 + 56) = v26;
    v89 = 0;
    v84 = 0;
    *&v87 = 0;
    v29 = MEMORY[0x1EEE9AC00](v27, v28);
    *(&v76 - 10) = a4;
    *(&v76 - 9) = a2;
    v81 = a2;
    *(&v76 - 8) = a3;
    *(&v76 - 7) = &v89;
    *(&v76 - 6) = &v87;
    *(&v76 - 5) = a5;
    v72 = a6;
    v73 = sub_1916301BC;
    v74 = v29;
    v75 = &v84;
    Kind = AGTypeGetKind();
    v82 = a3;
    if (Kind == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v31 = v76;
      v32 = *(v76 + 72);
      v33 = (*(v76 + 80) + 32) & ~*(v76 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      sub_19166C1F8();
      *&v85 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v35 = v77;
      v36 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v36, v37);
      v74 = sub_19163059C;
      v75 = &v76 - 12;
      sub_19166C118();
      (*(v31 + 8))(v17, v35);
    }

    else
    {
      *&v85 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v38);
        v74 = &v85;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      if (isClassType)
      {
        v40 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v40 = 4;
        }

        else
        {
          v40 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v40);
      v74 = sub_19163059C;
      v75 = &v76 - 12;
      AGTypeApplyFields2();
    }

    v41 = v80;

    v21 = v89;
    v24 = v84;
    v23 = v87;
    swift_beginAccess();
    v42 = *(v41 + 17);
    v89 = *(v41 + 16);
    v90 = v42;

    a2 = v81;
    a3 = v82;
    if ((v21 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v24)
  {
    return (v89 | (v90 << 8));
  }

LABEL_16:
  v43 = sub_19166C878();
  v45 = v44;
  if (AXShouldLogValidationErrors())
  {
    v46 = sub_19166B718();
    v47 = a2;
    v48 = a3;
    v49 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v46, v49);

    a3 = v48;
    a2 = v47;
  }

  if ((AXShouldLogValidationErrors() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v21)
  {
    if (v23)
    {
      v50 = v24;
    }

    else
    {
      v50 = 1;
    }

    if (v50)
    {
      goto LABEL_29;
    }

    v51 = a3;
    result = AXLogValidations();
    if (result)
    {
      v53 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_191673660;
      v55 = MEMORY[0x1E69E6158];
      *(v54 + 56) = MEMORY[0x1E69E6158];
      v56 = sub_1915F225C();
      *(v54 + 32) = a2;
      *(v54 + 40) = v51;
      *(v54 + 96) = v55;
      *(v54 + 104) = v56;
      *(v54 + 64) = v56;
      *(v54 + 72) = v43;
      *(v54 + 80) = v45;
      v57 = v83;
      *&v85 = v83;

      v58 = sub_19166B7A8();
      *(v54 + 136) = v55;
      *(v54 + 144) = v56;
      *(v54 + 112) = v58;
      *(v54 + 120) = v59;
      *&v85 = v57;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v60 = sub_19166C878();
      *(v54 + 216) = v55;
      *(v54 + 224) = v56;
      *(v54 + 192) = v60;
      *(v54 + 200) = v61;
      v62 = [objc_opt_self() callStackSymbols];
      v63 = sub_19166BA08();

      *(v54 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v54 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v54 + 232) = v63;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      return (v89 | (v90 << 8));
    }
  }

  else
  {
    v64 = a2;
    v65 = a3;
    result = AXLogValidations();
    if (result)
    {
      v53 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_1916729D0;
      v67 = MEMORY[0x1E69E6158];
      *(v66 + 56) = MEMORY[0x1E69E6158];
      v68 = sub_1915F225C();
      *(v66 + 32) = v64;
      *(v66 + 40) = v65;
      *(v66 + 96) = v67;
      *(v66 + 104) = v68;
      *(v66 + 64) = v68;
      *(v66 + 72) = v43;
      *(v66 + 80) = v45;
      v69 = objc_opt_self();

      v70 = [v69 callStackSymbols];
      v71 = sub_19166BA08();

      *(v66 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v66 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v66 + 112) = v71;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_19160C25C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v85);
  v83 = a1;
  if (v86)
  {
    sub_1915E4370(&v85, &v87);
    __swift_project_boxed_opaque_existential_1(&v87, v88);
    DynamicType = swift_getDynamicType();
    v19 = sub_191622EE0(DynamicType);
    v20 = sub_19162CE48(&v89, v19, &v87, v19, a4, a1, a2, a3, a5, a6, MEMORY[0x1E69E7508], v19);
    v21 = v20;
    v23 = v22;
    v24 = (v20 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v87);
    if ((v21 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v76 = v13;
    v77 = v12;
    sub_19159E780(&v85, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v26 = swift_allocObject();
    *(v26 + 16) = 256;
    v79 = v26 + 16;
    v27 = swift_allocObject();
    v78 = &v76;
    *(v27 + 16) = 1;
    *(v27 + 24) = a1;
    *(v27 + 32) = a2;
    *(v27 + 40) = a3;
    *(v27 + 48) = a1;
    v80 = v26;
    *(v27 + 56) = v26;
    v89 = 0;
    v84 = 0;
    *&v87 = 0;
    v29 = MEMORY[0x1EEE9AC00](v27, v28);
    *(&v76 - 10) = a4;
    *(&v76 - 9) = a2;
    v81 = a2;
    *(&v76 - 8) = a3;
    *(&v76 - 7) = &v89;
    *(&v76 - 6) = &v87;
    *(&v76 - 5) = a5;
    v72 = a6;
    v73 = sub_19163019C;
    v74 = v29;
    v75 = &v84;
    Kind = AGTypeGetKind();
    v82 = a3;
    if (Kind == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v31 = v76;
      v32 = *(v76 + 72);
      v33 = (*(v76 + 80) + 32) & ~*(v76 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      sub_19166C1F8();
      *&v85 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v35 = v77;
      v36 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v36, v37);
      v74 = sub_19163059C;
      v75 = &v76 - 12;
      sub_19166C118();
      (*(v31 + 8))(v17, v35);
    }

    else
    {
      *&v85 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v38);
        v74 = &v85;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      if (isClassType)
      {
        v40 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v40 = 4;
        }

        else
        {
          v40 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v40);
      v74 = sub_19163059C;
      v75 = &v76 - 12;
      AGTypeApplyFields2();
    }

    v41 = v80;

    v21 = v89;
    v24 = v84;
    v23 = v87;
    swift_beginAccess();
    v42 = *(v41 + 17);
    v89 = *(v41 + 16);
    v90 = v42;

    a2 = v81;
    a3 = v82;
    if ((v21 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v24)
  {
    return (v89 | (v90 << 8));
  }

LABEL_16:
  v43 = sub_19166C878();
  v45 = v44;
  if (AXShouldLogValidationErrors())
  {
    v46 = sub_19166B718();
    v47 = a2;
    v48 = a3;
    v49 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v46, v49);

    a3 = v48;
    a2 = v47;
  }

  if ((AXShouldLogValidationErrors() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v21)
  {
    if (v23)
    {
      v50 = v24;
    }

    else
    {
      v50 = 1;
    }

    if (v50)
    {
      goto LABEL_29;
    }

    v51 = a3;
    result = AXLogValidations();
    if (result)
    {
      v53 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_191673660;
      v55 = MEMORY[0x1E69E6158];
      *(v54 + 56) = MEMORY[0x1E69E6158];
      v56 = sub_1915F225C();
      *(v54 + 32) = a2;
      *(v54 + 40) = v51;
      *(v54 + 96) = v55;
      *(v54 + 104) = v56;
      *(v54 + 64) = v56;
      *(v54 + 72) = v43;
      *(v54 + 80) = v45;
      v57 = v83;
      *&v85 = v83;

      v58 = sub_19166B7A8();
      *(v54 + 136) = v55;
      *(v54 + 144) = v56;
      *(v54 + 112) = v58;
      *(v54 + 120) = v59;
      *&v85 = v57;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v60 = sub_19166C878();
      *(v54 + 216) = v55;
      *(v54 + 224) = v56;
      *(v54 + 192) = v60;
      *(v54 + 200) = v61;
      v62 = [objc_opt_self() callStackSymbols];
      v63 = sub_19166BA08();

      *(v54 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v54 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v54 + 232) = v63;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      return (v89 | (v90 << 8));
    }
  }

  else
  {
    v64 = a2;
    v65 = a3;
    result = AXLogValidations();
    if (result)
    {
      v53 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_1916729D0;
      v67 = MEMORY[0x1E69E6158];
      *(v66 + 56) = MEMORY[0x1E69E6158];
      v68 = sub_1915F225C();
      *(v66 + 32) = v64;
      *(v66 + 40) = v65;
      *(v66 + 96) = v67;
      *(v66 + 104) = v68;
      *(v66 + 64) = v68;
      *(v66 + 72) = v43;
      *(v66 + 80) = v45;
      v69 = objc_opt_self();

      v70 = [v69 callStackSymbols];
      v71 = sub_19166BA08();

      *(v66 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v66 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v66 + 112) = v71;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_19160CAF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v83);
  v80 = a1;
  if (v84)
  {
    sub_1915E4370(&v83, &v85);
    __swift_project_boxed_opaque_existential_1(&v85, v86);
    DynamicType = swift_getDynamicType();
    v19 = sub_191622EE0(DynamicType);
    v20 = sub_19162CE48(&v87, v19, &v85, v19, a4, a1, a2, a3, a5, a6, MEMORY[0x1E69E7290], v19);
    v21 = v20;
    v23 = v22;
    v24 = (v20 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v85);
    if ((v21 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v74 = v13;
    v75 = v12;
    sub_19159E780(&v83, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    v77 = v26 + 16;
    v81 = a3;
    *(v26 + 18) = 1;
    v27 = swift_allocObject();
    v76 = &v74;
    *(v27 + 16) = 1;
    a3 = v81;
    *(v27 + 24) = a1;
    *(v27 + 32) = a2;
    *(v27 + 40) = a3;
    *(v27 + 48) = a1;
    v78 = v26;
    *(v27 + 56) = v26;
    LOBYTE(v87) = 0;
    v82 = 0;
    *&v85 = 0;
    v29 = MEMORY[0x1EEE9AC00](v27, v28);
    *(&v74 - 10) = a4;
    *(&v74 - 9) = a2;
    v79 = a2;
    *(&v74 - 8) = a3;
    *(&v74 - 7) = &v87;
    *(&v74 - 6) = &v85;
    *(&v74 - 5) = a5;
    v70 = a6;
    v71 = sub_19163017C;
    v72 = v29;
    v73 = &v82;
    if (AGTypeGetKind() == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v30 = v74;
      v31 = *(v74 + 72);
      v32 = (*(v74 + 80) + 32) & ~*(v74 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      a3 = v81;
      sub_19166C1F8();
      *&v83 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v34 = v75;
      v35 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v35, v36);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      sub_19166C118();
      (*(v30 + 8))(v17, v34);
    }

    else
    {
      *&v83 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v37);
        v72 = &v83;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      if (isClassType)
      {
        v39 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v39 = 4;
        }

        else
        {
          v39 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v39);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      AGTypeApplyFields2();
    }

    v40 = v78;

    v21 = v87;
    v24 = v82;
    v23 = v85;
    swift_beginAccess();
    v41 = *(v40 + 18);
    v87 = *(v40 + 16);
    v88 = v41;

    a2 = v79;
    if ((v21 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v24)
  {
    return (v87 | (v88 << 16));
  }

LABEL_16:
  v42 = sub_19166C878();
  v44 = v43;
  if (AXShouldLogValidationErrors())
  {
    v45 = sub_19166B718();
    v46 = a2;
    v47 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v45, v47);

    a2 = v46;
  }

  if ((AXShouldLogValidationErrors() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v21)
  {
    if (v23)
    {
      v48 = v24;
    }

    else
    {
      v48 = 1;
    }

    if (v48)
    {
      goto LABEL_29;
    }

    v49 = a2;
    result = AXLogValidations();
    if (result)
    {
      v51 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_191673660;
      v53 = MEMORY[0x1E69E6158];
      *(v52 + 56) = MEMORY[0x1E69E6158];
      v54 = sub_1915F225C();
      *(v52 + 32) = v49;
      *(v52 + 40) = a3;
      *(v52 + 96) = v53;
      *(v52 + 104) = v54;
      *(v52 + 64) = v54;
      *(v52 + 72) = v42;
      *(v52 + 80) = v44;
      v55 = v80;
      *&v83 = v80;

      v56 = sub_19166B7A8();
      *(v52 + 136) = v53;
      *(v52 + 144) = v54;
      *(v52 + 112) = v56;
      *(v52 + 120) = v57;
      *&v83 = v55;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v58 = sub_19166C878();
      *(v52 + 216) = v53;
      *(v52 + 224) = v54;
      *(v52 + 192) = v58;
      *(v52 + 200) = v59;
      v60 = [objc_opt_self() callStackSymbols];
      v61 = sub_19166BA08();

      *(v52 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v52 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v52 + 232) = v61;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      return (v87 | (v88 << 16));
    }
  }

  else
  {
    v62 = a2;
    v63 = a3;
    result = AXLogValidations();
    if (result)
    {
      v51 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1916729D0;
      v65 = MEMORY[0x1E69E6158];
      *(v64 + 56) = MEMORY[0x1E69E6158];
      v66 = sub_1915F225C();
      *(v64 + 32) = v62;
      *(v64 + 40) = v63;
      *(v64 + 96) = v65;
      *(v64 + 104) = v66;
      *(v64 + 64) = v66;
      *(v64 + 72) = v42;
      *(v64 + 80) = v44;
      v67 = objc_opt_self();

      v68 = [v67 callStackSymbols];
      v69 = sub_19166BA08();

      *(v64 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 112) = v69;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_19160D38C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v83);
  v80 = a1;
  if (v84)
  {
    sub_1915E4370(&v83, &v85);
    __swift_project_boxed_opaque_existential_1(&v85, v86);
    DynamicType = swift_getDynamicType();
    v19 = sub_191622EE0(DynamicType);
    v20 = sub_19162CE48(&v87, v19, &v85, v19, a4, a1, a2, a3, a5, a6, MEMORY[0x1E69E75F8], v19);
    v21 = v20;
    v23 = v22;
    v24 = (v20 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v85);
    if ((v21 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v74 = v13;
    v75 = v12;
    sub_19159E780(&v83, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    v77 = v26 + 16;
    v81 = a3;
    *(v26 + 18) = 1;
    v27 = swift_allocObject();
    v76 = &v74;
    *(v27 + 16) = 1;
    a3 = v81;
    *(v27 + 24) = a1;
    *(v27 + 32) = a2;
    *(v27 + 40) = a3;
    *(v27 + 48) = a1;
    v78 = v26;
    *(v27 + 56) = v26;
    LOBYTE(v87) = 0;
    v82 = 0;
    *&v85 = 0;
    v29 = MEMORY[0x1EEE9AC00](v27, v28);
    *(&v74 - 10) = a4;
    *(&v74 - 9) = a2;
    v79 = a2;
    *(&v74 - 8) = a3;
    *(&v74 - 7) = &v87;
    *(&v74 - 6) = &v85;
    *(&v74 - 5) = a5;
    v70 = a6;
    v71 = sub_19163015C;
    v72 = v29;
    v73 = &v82;
    if (AGTypeGetKind() == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v30 = v74;
      v31 = *(v74 + 72);
      v32 = (*(v74 + 80) + 32) & ~*(v74 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      a3 = v81;
      sub_19166C1F8();
      *&v83 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v34 = v75;
      v35 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v35, v36);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      sub_19166C118();
      (*(v30 + 8))(v17, v34);
    }

    else
    {
      *&v83 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v37);
        v72 = &v83;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      if (isClassType)
      {
        v39 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v39 = 4;
        }

        else
        {
          v39 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v39);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      AGTypeApplyFields2();
    }

    v40 = v78;

    v21 = v87;
    v24 = v82;
    v23 = v85;
    swift_beginAccess();
    v41 = *(v40 + 18);
    v87 = *(v40 + 16);
    v88 = v41;

    a2 = v79;
    if ((v21 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v24)
  {
    return (v87 | (v88 << 16));
  }

LABEL_16:
  v42 = sub_19166C878();
  v44 = v43;
  if (AXShouldLogValidationErrors())
  {
    v45 = sub_19166B718();
    v46 = a2;
    v47 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v45, v47);

    a2 = v46;
  }

  if ((AXShouldLogValidationErrors() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v21)
  {
    if (v23)
    {
      v48 = v24;
    }

    else
    {
      v48 = 1;
    }

    if (v48)
    {
      goto LABEL_29;
    }

    v49 = a2;
    result = AXLogValidations();
    if (result)
    {
      v51 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_191673660;
      v53 = MEMORY[0x1E69E6158];
      *(v52 + 56) = MEMORY[0x1E69E6158];
      v54 = sub_1915F225C();
      *(v52 + 32) = v49;
      *(v52 + 40) = a3;
      *(v52 + 96) = v53;
      *(v52 + 104) = v54;
      *(v52 + 64) = v54;
      *(v52 + 72) = v42;
      *(v52 + 80) = v44;
      v55 = v80;
      *&v83 = v80;

      v56 = sub_19166B7A8();
      *(v52 + 136) = v53;
      *(v52 + 144) = v54;
      *(v52 + 112) = v56;
      *(v52 + 120) = v57;
      *&v83 = v55;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v58 = sub_19166C878();
      *(v52 + 216) = v53;
      *(v52 + 224) = v54;
      *(v52 + 192) = v58;
      *(v52 + 200) = v59;
      v60 = [objc_opt_self() callStackSymbols];
      v61 = sub_19166BA08();

      *(v52 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v52 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v52 + 232) = v61;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      return (v87 | (v88 << 16));
    }
  }

  else
  {
    v62 = a2;
    v63 = a3;
    result = AXLogValidations();
    if (result)
    {
      v51 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1916729D0;
      v65 = MEMORY[0x1E69E6158];
      *(v64 + 56) = MEMORY[0x1E69E6158];
      v66 = sub_1915F225C();
      *(v64 + 32) = v62;
      *(v64 + 40) = v63;
      *(v64 + 96) = v65;
      *(v64 + 104) = v66;
      *(v64 + 64) = v66;
      *(v64 + 72) = v42;
      *(v64 + 80) = v44;
      v67 = objc_opt_self();

      v68 = [v67 callStackSymbols];
      v69 = sub_19166BA08();

      *(v64 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 112) = v69;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_19160DC24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_19166C208();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191623468(a1, &v83);
  v80 = a1;
  if (v84)
  {
    sub_1915E4370(&v83, &v85);
    __swift_project_boxed_opaque_existential_1(&v85, v86);
    DynamicType = swift_getDynamicType();
    v19 = sub_191622EE0(DynamicType);
    v20 = sub_19162CE48(&v87, v19, &v85, v19, a4, a1, a2, a3, a5, a6, MEMORY[0x1E69E72F0], v19);
    v21 = v20;
    v23 = v22;
    v24 = (v20 >> 8) & 1;
    __swift_destroy_boxed_opaque_existential_1(&v85);
    if ((v21 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v74 = v13;
    v75 = v12;
    sub_19159E780(&v83, &unk_1EADB0270, &unk_191672C20);
    ObjectType = swift_getObjectType();
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    v77 = v26 + 16;
    v81 = a3;
    *(v26 + 20) = 1;
    v27 = swift_allocObject();
    v76 = &v74;
    *(v27 + 16) = 1;
    a3 = v81;
    *(v27 + 24) = a1;
    *(v27 + 32) = a2;
    *(v27 + 40) = a3;
    *(v27 + 48) = a1;
    v78 = v26;
    *(v27 + 56) = v26;
    LOBYTE(v87) = 0;
    v82 = 0;
    *&v85 = 0;
    v29 = MEMORY[0x1EEE9AC00](v27, v28);
    *(&v74 - 10) = a4;
    *(&v74 - 9) = a2;
    v79 = a2;
    *(&v74 - 8) = a3;
    *(&v74 - 7) = &v87;
    *(&v74 - 6) = &v85;
    *(&v74 - 5) = a5;
    v70 = a6;
    v71 = sub_19163013C;
    v72 = v29;
    v73 = &v82;
    if (AGTypeGetKind() == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD28, &qword_191673690);
      v30 = v74;
      v31 = *(v74 + 72);
      v32 = (*(v74 + 80) + 32) & ~*(v74 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_191672210;
      swift_unknownObjectRetain();

      a3 = v81;
      sub_19166C1F8();
      *&v83 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD30, qword_191673698);
      sub_19162FABC(&qword_1EADAFD38, &qword_1EADAFD30, qword_191673698);
      v34 = v75;
      v35 = sub_19166BFE8();
      MEMORY[0x1EEE9AC00](v35, v36);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      sub_19166C118();
      (*(v30 + 8))(v17, v34);
    }

    else
    {
      *&v83 = ObjectType;
      swift_unknownObjectRetain();

      if (swift_isOptionalType())
      {
        MEMORY[0x1EEE9AC00](ObjectType, v37);
        v72 = &v83;
        AGTypeApplyFields2();
      }

      isClassType = swift_isClassType();
      if (isClassType)
      {
        v39 = 3;
      }

      else
      {
        isClassType = AGTypeGetKind();
        if (isClassType == 3)
        {
          v39 = 4;
        }

        else
        {
          v39 = 2;
        }
      }

      MEMORY[0x1EEE9AC00](isClassType, v39);
      v72 = sub_19163059C;
      v73 = &v74 - 12;
      AGTypeApplyFields2();
    }

    v40 = v78;

    v21 = v87;
    v24 = v82;
    v23 = v85;
    swift_beginAccess();
    v41 = *(v40 + 20);
    v87 = *(v40 + 16);
    v88 = v41;

    a2 = v79;
    if ((v21 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v24)
  {
LABEL_31:
    LOBYTE(v83) = v88;
    return (v87 | (v88 << 32));
  }

LABEL_16:
  v42 = sub_19166C878();
  v44 = v43;
  if (AXShouldLogValidationErrors())
  {
    v45 = sub_19166B718();
    v46 = a2;
    v47 = sub_19166B718();
    AXValidationManagerSendExceptionForSafeValueKey(v45, v47);

    a2 = v46;
  }

  if ((AXShouldLogValidationErrors() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v21)
  {
    if (v23)
    {
      v48 = v24;
    }

    else
    {
      v48 = 1;
    }

    if (v48)
    {
      goto LABEL_29;
    }

    v49 = a2;
    result = AXLogValidations();
    if (result)
    {
      v51 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_191673660;
      v53 = MEMORY[0x1E69E6158];
      *(v52 + 56) = MEMORY[0x1E69E6158];
      v54 = sub_1915F225C();
      *(v52 + 32) = v49;
      *(v52 + 40) = a3;
      *(v52 + 96) = v53;
      *(v52 + 104) = v54;
      *(v52 + 64) = v54;
      *(v52 + 72) = v42;
      *(v52 + 80) = v44;
      v55 = v80;
      *&v83 = v80;

      v56 = sub_19166B7A8();
      *(v52 + 136) = v53;
      *(v52 + 144) = v54;
      *(v52 + 112) = v56;
      *(v52 + 120) = v57;
      *&v83 = v55;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFD68, &qword_1916737A0);
      swift_dynamicCast();
      v58 = sub_19166C878();
      *(v52 + 216) = v53;
      *(v52 + 224) = v54;
      *(v52 + 192) = v58;
      *(v52 + 200) = v59;
      v60 = [objc_opt_self() callStackSymbols];
      v61 = sub_19166BA08();

      *(v52 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v52 + 264) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v52 + 232) = v61;
LABEL_28:
      sub_19166B518();

LABEL_29:
      if (AXShouldCrashOnValidationErrors())
      {
        abort();
      }

      goto LABEL_31;
    }
  }

  else
  {
    v62 = a2;
    v63 = a3;
    result = AXLogValidations();
    if (result)
    {
      v51 = result;
      sub_19166BD68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1916729D0;
      v65 = MEMORY[0x1E69E6158];
      *(v64 + 56) = MEMORY[0x1E69E6158];
      v66 = sub_1915F225C();
      *(v64 + 32) = v62;
      *(v64 + 40) = v63;
      *(v64 + 96) = v65;
      *(v64 + 104) = v66;
      *(v64 + 64) = v66;
      *(v64 + 72) = v42;
      *(v64 + 80) = v44;
      v67 = objc_opt_self();

      v68 = [v67 callStackSymbols];
      v69 = sub_19166BA08();

      *(v64 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 144) = sub_19162FABC(&qword_1EADAFD60, &qword_1EADAFAB0, &qword_191672B70);
      *(v64 + 112) = v69;
      goto LABEL_28;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}