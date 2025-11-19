uint64_t sub_1AD6C(unint64_t *a1, uint64_t a2, void *a3)
{
  v29 = a2;
  v30 = a1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4E0, &qword_BE010);
  v4 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v39 = &v29 - v5;
  v38 = sub_B6370();
  v6 = *(*(v38 - 8) + 64);
  result = __chkstk_darwin(v38);
  v36 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v8;
  v10 = 0;
  v41 = a3;
  v13 = a3[8];
  v12 = a3 + 8;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v31 = 0;
  v32 = (v14 + 63) >> 6;
  v35 = v8 + 16;
  v33 = v12;
  v34 = v8 + 8;
  while (v16)
  {
    v17 = __clz(__rbit64(v16));
    v42 = (v16 - 1) & v16;
LABEL_11:
    v20 = v17 | (v10 << 6);
    v21 = v41;
    v22 = v36;
    v23 = v37;
    v24 = *(v37 + 16);
    v25 = v38;
    v24(v36, v41[6] + *(v37 + 72) * v20, v38);
    v26 = v20;
    LOBYTE(v21) = *(v21[7] + v20);
    v27 = v39;
    v24(v39, v22, v25);
    *(v27 + *(v40 + 48)) = v21;
    sub_A194(v27, &qword_EF4E0, &qword_BE010);
    result = (*(v23 + 8))(v22, v25);
    v16 = v42;
    if ((v21 & 1) == 0)
    {
      *(v30 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
        return sub_1B700(v30, v29, v31, v41);
      }
    }
  }

  v18 = v10;
  while (1)
  {
    v10 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v10 >= v32)
    {
      return sub_1B700(v30, v29, v31, v41);
    }

    v19 = v33[v10];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v42 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1B020(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
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

uint64_t sub_1B0A8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF478, &qword_BDF48);
  result = sub_B7D60();
  v8 = a2;
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
  v36 = a2;
  v37 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v38 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(v4 + 56) + 32 * v16;
    v20 = *v18;
    v19 = *(v18 + 8);
    v21 = *(v18 + 16);
    v22 = *(v18 + 24);
    v23 = *(v9 + 40);
    v24 = v17;
    sub_20AFC(v20, v19, v21, v22);
    result = sub_B7BA0(v23);
    v25 = -1 << *(v9 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v12 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    *(*(v9 + 48) + 8 * v28) = v24;
    v33 = *(v9 + 56) + 32 * v28;
    *v33 = v20;
    *(v33 + 8) = v19;
    *(v33 + 16) = v21;
    *(v33 + 24) = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v37;
    v10 = v38;
    v8 = v36;
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

    if (v11 >= v8)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v38 = (v15 - 1) & v15;
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

uint64_t sub_1B310(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v65 = sub_B6370();
  v63 = *(v65 - 8);
  v8 = *(v63 + 64);
  v9 = __chkstk_darwin(v65);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v55 = &v48 - v12;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4C8, &qword_BDFF8);
  result = sub_B7D60();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v52 = v63 + 16;
  v53 = result;
  v64 = v63 + 32;
  v17 = result + 64;
  v54 = a1;
  v50 = v11;
  v51 = a2;
  v49 = a4;
  v18 = v65;
  while (v15)
  {
    v62 = a3;
    v19 = __clz(__rbit64(v15));
    v56 = (v15 - 1) & v15;
LABEL_16:
    v22 = v19 | (v16 << 6);
    v23 = a4[6];
    v24 = v63;
    v61 = *(v63 + 72);
    v25 = v55;
    (*(v63 + 16))(v55, v23 + v61 * v22, v18);
    v26 = a4[7] + 32 * v22;
    v28 = *v26;
    v27 = *(v26 + 8);
    v29 = *(v26 + 16);
    v30 = *(v26 + 24);
    v31 = v50;
    v57 = *(v24 + 32);
    v57(v50, v25, v18);
    v14 = v53;
    v32 = *(v53 + 40);
    v59 = v29;
    v60 = v28;
    v33 = v28;
    v34 = v27;
    v58 = v30;
    sub_20AFC(v33, v27, v29, v30);
    sub_212D0(&qword_EF4D0, &type metadata accessor for PersonModel.Handle);
    v35 = v31;
    result = sub_B7870();
    v36 = -1 << *(v14 + 32);
    v37 = result & ~v36;
    v38 = v37 >> 6;
    if (((-1 << v37) & ~*(v17 + 8 * (v37 >> 6))) == 0)
    {
      v41 = 0;
      v42 = (63 - v36) >> 6;
      a1 = v54;
      a2 = v51;
      v40 = v62;
      while (++v38 != v42 || (v41 & 1) == 0)
      {
        v43 = v38 == v42;
        if (v38 == v42)
        {
          v38 = 0;
        }

        v41 |= v43;
        v44 = *(v17 + 8 * v38);
        if (v44 != -1)
        {
          v39 = __clz(__rbit64(~v44)) + (v38 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v39 = __clz(__rbit64((-1 << v37) & ~*(v17 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
    a1 = v54;
    a2 = v51;
    v40 = v62;
LABEL_26:
    *(v17 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
    result = (v57)(*(v14 + 48) + v39 * v61, v35, v65);
    v45 = *(v14 + 56) + 32 * v39;
    v46 = v59;
    *v45 = v60;
    *(v45 + 8) = v34;
    *(v45 + 16) = v46;
    *(v45 + 24) = v58;
    ++*(v14 + 16);
    v47 = __OFSUB__(v40, 1);
    a3 = v40 - 1;
    if (v47)
    {
      goto LABEL_32;
    }

    a4 = v49;
    v15 = v56;
    if (!a3)
    {
      return v14;
    }
  }

  v20 = v16;
  while (1)
  {
    v16 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v21 = a1[v16];
    ++v20;
    if (v21)
    {
      v62 = a3;
      v19 = __clz(__rbit64(v21));
      v56 = (v21 - 1) & v21;
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

uint64_t sub_1B700(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v49 = sub_B6370();
  v47 = *(v49 - 8);
  v8 = *(v47 + 64);
  v9 = __chkstk_darwin(v49);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v43 = &v38 - v12;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF500, &qword_BE040);
  result = sub_B7D60();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v40 = v47 + 16;
  v41 = result;
  v48 = v47 + 32;
  v17 = result + 64;
  v42 = a1;
  v39 = a4;
  v18 = v49;
  while (v15)
  {
    v19 = v11;
    v20 = __clz(__rbit64(v15));
    v44 = (v15 - 1) & v15;
LABEL_16:
    v23 = v20 | (v16 << 6);
    v24 = a4[6];
    v25 = v47;
    v46 = *(v47 + 72);
    v26 = v43;
    (*(v47 + 16))(v43, v24 + v46 * v23, v18);
    v45 = *(a4[7] + v23);
    v27 = *(v25 + 32);
    v11 = v19;
    v27(v19, v26, v18);
    v14 = v41;
    v28 = *(v41 + 40);
    sub_212D0(&qword_EF4D0, &type metadata accessor for PersonModel.Handle);
    result = sub_B7870();
    v29 = -1 << *(v14 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v29) >> 6;
      a1 = v42;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v17 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    a1 = v42;
LABEL_26:
    *(v17 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    result = (v27)(*(v14 + 48) + v32 * v46, v11, v49);
    *(*(v14 + 56) + v32) = v45;
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v39;
    v15 = v44;
    if (!a3)
    {
      return v14;
    }
  }

  v21 = v16;
  while (1)
  {
    v16 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v22 = a1[v16];
    ++v21;
    if (v22)
    {
      v19 = v11;
      v20 = __clz(__rbit64(v22));
      v44 = (v22 - 1) & v22;
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

uint64_t sub_1BA98(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_B7EB0();
  sub_B7980();
  v9 = sub_B7EE0();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_B7DD0() & 1) != 0)
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

    sub_1DFBC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int sub_1BBE8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E94C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1BCFC(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1BC54(void **a1)
{
  v2 = *(sub_B6370() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1E960(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1BDF4(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_1BCFC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_B7D90(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_B79F0();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1C2B4(v7, v8, a1, v4);
      v6[2] = 0;
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
    return sub_1BF20(0, v2, 1, a1);
  }

  return result;
}

Swift::Int sub_1BDF4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_B7D90(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_B6370();
        v6 = sub_B79F0();
        v6[2] = v5;
      }

      v7 = *(sub_B6370() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C890(v8, v9, a1, v4);
      v6[2] = 0;
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
    return sub_1BFF0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1BF20(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_B7DD0(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_B6370();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v42 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v46 = &v32 - v13;
  result = __chkstk_darwin(v12);
  v45 = &v32 - v16;
  v34 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v43 = *(v15 + 16);
    v44 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v40 = (v15 + 32);
    v41 = v17;
    v20 = v17 + v18 * (a3 - 1);
    v39 = -v18;
    v21 = a1 - a3;
    v33 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v37 = v20;
    v38 = a3;
    v35 = v22;
    v36 = v21;
    v23 = v20;
    while (1)
    {
      v24 = v45;
      v25 = v43;
      v43(v45, v22, v8);
      v26 = v46;
      v25(v46, v23, v8);
      sub_212D0(&qword_EF4B0, &type metadata accessor for PersonModel.Handle);
      v27 = sub_B78B0();
      v28 = *v19;
      (*v19)(v26, v8);
      result = v28(v24, v8);
      if ((v27 & 1) == 0)
      {
LABEL_4:
        a3 = v38 + 1;
        v20 = v37 + v33;
        v21 = v36 - 1;
        v22 = v35 + v33;
        if (v38 + 1 == v34)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v41)
      {
        break;
      }

      v29 = *v40;
      v30 = v42;
      (*v40)(v42, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v29)(v23, v30, v8);
      v23 += v39;
      v22 += v39;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C2B4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1DB60(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1D2B8((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_B7DD0();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_B7DD0();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1DC58(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1DC58((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
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
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1D2B8((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1DB60(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1DAD4(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_B7DD0(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_1C890(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v123 = a1;
  v8 = sub_B6370();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v128 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v135 = &v120 - v14;
  v15 = __chkstk_darwin(v13);
  v141 = &v120 - v16;
  result = __chkstk_darwin(v15);
  v140 = &v120 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = &_swiftEmptyArrayStorage;
LABEL_94:
    v22 = *v123;
    if (!*v123)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_1DB60(v21);
      v21 = result;
    }

    v143 = v21;
    v116 = *(v21 + 2);
    if (v116 >= 2)
    {
      while (*a3)
      {
        v117 = *&v21[16 * v116];
        v118 = *&v21[16 * v116 + 24];
        sub_1D4E0(*a3 + v9[9] * v117, *a3 + v9[9] * *&v21[16 * v116 + 16], *a3 + v9[9] * v118, v22);
        if (v5)
        {
        }

        if (v118 < v117)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1DB60(v21);
        }

        if (v116 - 2 >= *(v21 + 2))
        {
          goto LABEL_120;
        }

        v119 = &v21[16 * v116];
        *v119 = v117;
        *(v119 + 1) = v118;
        v143 = v21;
        result = sub_1DAD4(v116 - 1);
        v21 = v143;
        v116 = *(v143 + 2);
        if (v116 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v120 = a4;
  v20 = 0;
  v138 = (v9 + 1);
  v139 = v9 + 2;
  v137 = (v9 + 4);
  v21 = &_swiftEmptyArrayStorage;
  v125 = v9;
  v142 = v8;
  v121 = a3;
  while (1)
  {
    v22 = v20;
    v126 = v21;
    if (v20 + 1 >= v19)
    {
      v35 = v20 + 1;
    }

    else
    {
      v133 = v19;
      v122 = v5;
      v23 = *a3;
      v24 = v9[9];
      v25 = v20;
      v124 = v20;
      v26 = &v23[v24 * (v20 + 1)];
      v27 = v8;
      v28 = v9[2];
      v29 = v140;
      v28(v140, v26, v27);
      v30 = &v23[v24 * v25];
      v31 = v141;
      v132 = v28;
      v28(v141, v30, v27);
      v131 = sub_212D0(&qword_EF4B0, &type metadata accessor for PersonModel.Handle);
      LODWORD(v134) = sub_B78B0();
      v32 = v9[1];
      v32(v31, v27);
      v130 = v32;
      result = (v32)(v29, v27);
      v33 = v124 + 2;
      v136 = v24;
      v34 = &v23[v24 * (v124 + 2)];
      while (1)
      {
        v35 = v133;
        if (v133 == v33)
        {
          break;
        }

        v36 = v140;
        v37 = v9;
        v38 = v142;
        v39 = v132;
        (v132)(v140, v34, v142);
        v40 = v141;
        v39(v141, v26, v38);
        v41 = sub_B78B0() & 1;
        v42 = v130;
        (v130)(v40, v38);
        v43 = v38;
        v9 = v37;
        result = v42(v36, v43);
        ++v33;
        v34 += v136;
        v26 += v136;
        if ((v134 & 1) != v41)
        {
          v35 = v33 - 1;
          break;
        }
      }

      v5 = v122;
      v21 = v126;
      v8 = v142;
      a3 = v121;
      v22 = v124;
      if (v134)
      {
        if (v35 < v124)
        {
          goto LABEL_123;
        }

        if (v124 < v35)
        {
          v44 = v35;
          v45 = v136 * (v35 - 1);
          v46 = v35 * v136;
          v133 = v35;
          v47 = v124;
          v48 = v124 * v136;
          do
          {
            if (v47 != --v44)
            {
              v50 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v134 = *v137;
              v134(v128, &v50[v48], v142);
              if (v48 < v45 || &v50[v48] >= &v50[v46])
              {
                v49 = v142;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v49 = v142;
                if (v48 != v45)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v134)(&v50[v45], v128, v49);
              v9 = v125;
              v21 = v126;
            }

            ++v47;
            v45 -= v136;
            v46 -= v136;
            v48 += v136;
          }

          while (v47 < v44);
          v5 = v122;
          v8 = v142;
          v22 = v124;
          v35 = v133;
        }
      }
    }

    v51 = a3[1];
    if (v35 < v51)
    {
      if (__OFSUB__(v35, v22))
      {
        goto LABEL_122;
      }

      if (v35 - v22 < v120)
      {
        if (__OFADD__(v22, v120))
        {
          goto LABEL_124;
        }

        if (v22 + v120 >= v51)
        {
          v52 = a3[1];
        }

        else
        {
          v52 = v22 + v120;
        }

        if (v52 < v22)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v35 != v52)
        {
          break;
        }
      }
    }

    v53 = v35;
    if (v35 < v22)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1DC58(0, *(v21 + 2) + 1, 1, v21);
      v21 = result;
    }

    v55 = *(v21 + 2);
    v54 = *(v21 + 3);
    v56 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      result = sub_1DC58((v54 > 1), v55 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v56;
    v57 = &v21[16 * v55];
    *(v57 + 4) = v22;
    *(v57 + 5) = v53;
    v22 = *v123;
    if (!*v123)
    {
      goto LABEL_131;
    }

    v129 = v53;
    if (v55)
    {
      while (1)
      {
        v58 = v56 - 1;
        if (v56 >= 4)
        {
          break;
        }

        if (v56 == 3)
        {
          v59 = *(v21 + 4);
          v60 = *(v21 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_52:
          if (v62)
          {
            goto LABEL_110;
          }

          v75 = &v21[16 * v56];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_113;
          }

          v81 = &v21[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_117;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v56 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v85 = &v21[16 * v56];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_66:
        if (v80)
        {
          goto LABEL_112;
        }

        v88 = &v21[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_115;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_73:
        v96 = v58 - 1;
        if (v58 - 1 >= v56)
        {
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

        v97 = *&v21[16 * v96 + 32];
        v98 = *&v21[16 * v58 + 40];
        sub_1D4E0(*a3 + v9[9] * v97, *a3 + v9[9] * *&v21[16 * v58 + 32], *a3 + v9[9] * v98, v22);
        if (v5)
        {
        }

        if (v98 < v97)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1DB60(v21);
        }

        if (v96 >= *(v21 + 2))
        {
          goto LABEL_107;
        }

        v99 = &v21[16 * v96];
        *(v99 + 4) = v97;
        *(v99 + 5) = v98;
        v143 = v21;
        result = sub_1DAD4(v58);
        v21 = v143;
        v56 = *(v143 + 2);
        v8 = v142;
        if (v56 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v21[16 * v56 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_108;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_109;
      }

      v70 = &v21[16 * v56];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_111;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_114;
      }

      if (v74 >= v66)
      {
        v92 = &v21[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_118;
        }

        if (v61 < v95)
        {
          v58 = v56 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v129;
    if (v129 >= v19)
    {
      goto LABEL_94;
    }
  }

  v122 = v5;
  v100 = *a3;
  v101 = v9[9];
  v136 = v9[2];
  v102 = v100 + v101 * (v35 - 1);
  v103 = -v101;
  v124 = v22;
  v104 = v22 - v35;
  v134 = v100;
  v127 = v101;
  v105 = v100 + v35 * v101;
  v129 = v52;
LABEL_85:
  v132 = v102;
  v133 = v35;
  v130 = v105;
  v131 = v104;
  v106 = v102;
  while (1)
  {
    v107 = v140;
    v108 = v136;
    (v136)(v140, v105, v8);
    v109 = v141;
    v108(v141, v106, v142);
    sub_212D0(&qword_EF4B0, &type metadata accessor for PersonModel.Handle);
    v110 = sub_B78B0();
    v111 = *v138;
    v112 = v109;
    v8 = v142;
    (*v138)(v112, v142);
    result = v111(v107, v8);
    if ((v110 & 1) == 0)
    {
LABEL_84:
      v35 = v133 + 1;
      v102 = &v132[v127];
      v104 = v131 - 1;
      v105 = &v130[v127];
      v53 = v129;
      if (v133 + 1 != v129)
      {
        goto LABEL_85;
      }

      v5 = v122;
      a3 = v121;
      v9 = v125;
      v21 = v126;
      v22 = v124;
      if (v129 < v124)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v134)
    {
      break;
    }

    v113 = *v137;
    v114 = v135;
    (*v137)(v135, v105, v8);
    swift_arrayInitWithTakeFrontToBack();
    v113(v106, v114, v8);
    v106 += v103;
    v105 += v103;
    if (__CFADD__(v104++, 1))
    {
      goto LABEL_84;
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

uint64_t sub_1D2B8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_B7DD0() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_B7DD0() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1D4E0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v53 = sub_B6370();
  v8 = *(v53 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v53);
  v51 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v50 = &v41 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_63;
  }

  v52 = a3;
  v17 = (a2 - a1) / v15;
  v56 = a1;
  v55 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = a4 + v19;
    if (v19 >= 1)
    {
      v29 = -v15;
      v44 = a4;
      v45 = (v8 + 16);
      v42 = (v8 + 8);
      v43 = a1;
      v30 = a4 + v19;
      v31 = v52;
      v46 = v29;
      do
      {
        v41 = v28;
        v32 = a2 + v29;
        v48 = a2 + v29;
        v49 = v28;
        v47 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v56 = a2;
            v28 = v41;
            goto LABEL_59;
          }

          v34 = v31;
          v52 = v31 + v29;
          v35 = v30 + v29;
          v36 = *v45;
          v37 = v50;
          v38 = v53;
          (*v45)(v50, v30 + v29, v53);
          v39 = v51;
          v36(v51, v32, v38);
          sub_212D0(&qword_EF4B0, &type metadata accessor for PersonModel.Handle);
          LOBYTE(v36) = sub_B78B0();
          v40 = *v42;
          (*v42)(v39, v38);
          v40(v37, v38);
          if (v36)
          {
            break;
          }

          v31 = v52;
          if (v34 < v30 || v52 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            v32 = v48;
            a1 = v43;
          }

          else
          {
            v32 = v48;
            a1 = v43;
            if (v34 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v49 = v35;
          v30 = v35;
          v33 = v35 > v44;
          v29 = v46;
          a2 = v47;
          if (!v33)
          {
            v28 = v49;
            goto LABEL_58;
          }
        }

        v31 = v52;
        if (v34 < v47 || v52 >= v47)
        {
          a2 = v48;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v43;
        }

        else
        {
          a2 = v48;
          a1 = v43;
          if (v34 != v47)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v28 = v49;
        v29 = v46;
      }

      while (v30 > v44);
    }

LABEL_58:
    v56 = a2;
LABEL_59:
    v54 = v28;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v49 = a4 + v18;
    v54 = a4 + v18;
    if (v18 >= 1 && a2 < v52)
    {
      v47 = *(v8 + 16);
      v48 = v8 + 16;
      v45 = v15;
      v46 = (v8 + 8);
      do
      {
        v21 = v50;
        v22 = v53;
        v23 = v47;
        v47(v50, a2, v53);
        v24 = v51;
        v23(v51, a4, v22);
        sub_212D0(&qword_EF4B0, &type metadata accessor for PersonModel.Handle);
        LOBYTE(v23) = sub_B78B0();
        v25 = *v46;
        (*v46)(v24, v22);
        v25(v21, v22);
        if (v23)
        {
          v26 = v45;
          if (a1 < a2 || a1 >= v45 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v26;
        }

        else
        {
          v26 = v45;
          v27 = v45 + a4;
          if (a1 < a4 || a1 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v55 = v27;
          a4 += v26;
        }

        a1 += v26;
        v56 = a1;
      }

      while (a4 < v49 && a2 < v52);
    }
  }

  sub_1DB74(&v56, &v55, &v54);
  return 1;
}

uint64_t sub_1DAD4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DB60(v3);
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
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1DB74(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_B6370();
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

char *sub_1DC58(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF490, &qword_BDFB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_1DD5C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF498, &qword_BDFB8);
  result = sub_B7C60();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_B7EB0();
      sub_B7980();
      result = sub_B7EE0();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_1DFBC(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_1DD5C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1E13C();
      goto LABEL_16;
    }

    sub_1E298(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_B7EB0();
  sub_B7980();
  result = sub_B7EE0();
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

      result = sub_B7DD0();
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
  result = sub_B7DE0();
  __break(1u);
  return result;
}

void *sub_1E13C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF498, &qword_BDFB8);
  v2 = *v0;
  v3 = sub_B7C50();
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

uint64_t sub_1E298(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF498, &qword_BDFB8);
  result = sub_B7C60();
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
      sub_B7EB0();

      sub_B7980();
      result = sub_B7EE0();
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

size_t sub_1E4D0(size_t a1, int64_t a2, char a3)
{
  result = sub_1E61C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E4F0(char *a1, int64_t a2, char a3)
{
  result = sub_1E510(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E510(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF148, &qword_BDA10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

size_t sub_1E61C(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4B8, &qword_BDFE8);
  v10 = *(sub_B6370() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_B6370() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1E7F4(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_1E974(uint64_t result, uint64_t a2)
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
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  v28 = v9;
  v29 = result;
  if (v8)
  {
    do
    {
      v10 = __clz(__rbit64(v8));
      v30 = (v8 - 1) & v8;
LABEL_12:
      v13 = v10 | (v4 << 6);
      v14 = *(*(v3 + 48) + 8 * v13);
      v15 = *(v3 + 56) + 32 * v13;
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      v19 = *(v15 + 24);
      v20 = v14;
      sub_20AFC(v16, v17, v18, v19);
      if (!v20)
      {
        return 1;
      }

      v35 = v16;
      v36 = v17;
      v37 = v18;
      v38 = v19;
      v21 = sub_17E94(v20);
      v23 = v22;

      if ((v23 & 1) == 0)
      {
        sub_20B30(v16, v17, v18, v19);
        return 0;
      }

      v24 = *(a2 + 56) + 32 * v21;
      v25 = *(v24 + 8);
      v26 = *(v24 + 16);
      v31 = *v24;
      v32 = v25;
      v33 = v26;
      v34 = *(v24 + 24);
      sub_20AFC(v31, v25, v26, v34);
      MyAppCore22ContactPickerViewModelC15RecipientStatusO2eeoiySbAE_AEtFZ_0 = _s13FindMyAppCore22ContactPickerViewModelC15RecipientStatusO2eeoiySbAE_AEtFZ_0(&v31, &v35);
      sub_20B30(v31, v32, v33, v34);
      result = sub_20B30(v35, v36, v37, v38);
      if ((MyAppCore22ContactPickerViewModelC15RecipientStatusO2eeoiySbAE_AEtFZ_0 & 1) == 0)
      {
        return 0;
      }

      v9 = v28;
      v3 = v29;
      v8 = v30;
    }

    while (v30);
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v30 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1EB4C(uint64_t result, uint64_t a2)
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
    v14 = *(*(v3 + 48) + 8 * v12);

    v15 = sub_17E94(v14);
    v17 = v16;

    if ((v17 & 1) == 0)
    {

      return 0;
    }

    v18 = *(*(a2 + 56) + 8 * v15);

    v19 = sub_B7AD0();

    if ((v19 & 1) == 0)
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

uint64_t _s13FindMyAppCore22ContactPickerViewModelC15RecipientStatusO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v30[0] = v3;
  v30[1] = v4;
  v30[2] = v5;
  v31 = v6;
  v32 = v7;
  v33 = v8;
  v34 = v9;
  v35 = v10;
  if (!v6)
  {
    if (!v10)
    {
      v12 = v9;
      if (v4)
      {
        if (!v8)
        {
          v22 = v7;
          sub_20AFC(v7, 0, v9, 0);
          sub_20AFC(v22, 0, v12, 0);
          v13 = v3;
          v14 = v4;
          v15 = v5;
          v16 = 0;
          goto LABEL_24;
        }

        if (v3 == v7 && v4 == v8)
        {
          sub_20AFC(v3, v4, v9, 0);
          sub_20AFC(v3, v4, v5, 0);
          goto LABEL_26;
        }

        v23 = v7;
        v24 = v8;
        v25 = sub_B7DD0();
        sub_20AFC(v23, v24, v12, 0);
        sub_20AFC(v3, v4, v5, 0);
        sub_A194(v30, &qword_EF4D8, &qword_BE008);
        if ((v25 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v18 = v7;
        v19 = v8;

        sub_20AFC(v18, v19, v12, 0);
        sub_20AFC(v3, 0, v5, 0);
        sub_A194(v30, &qword_EF4D8, &qword_BE008);
        if (v19)
        {
          sub_20B30(v18, v19, v12, 0);
          return 0;
        }
      }

      return 1;
    }

    goto LABEL_23;
  }

  if (v6 != 1)
  {
    if (v5 | v4 | v3)
    {
      if (v10 == 2 && v7 == 1 && !(v9 | v8))
      {
        goto LABEL_26;
      }
    }

    else if (v10 == 2 && !(v9 | v8 | v7))
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (v10 != 1)
  {
LABEL_23:
    sub_20AFC(v7, v8, v9, v10);
    v13 = v3;
    v14 = v4;
    v15 = v5;
    v16 = v6;
LABEL_24:
    sub_20AFC(v13, v14, v15, v16);
    sub_A194(v30, &qword_EF4D8, &qword_BE008);
    return 0;
  }

  if ((v7 ^ v3))
  {
LABEL_35:
    sub_20AFC(v7, v8, v9, 1u);
    v13 = v3;
    v14 = v4;
    v15 = v5;
    v16 = 1;
    goto LABEL_24;
  }

  v11 = v7;
  if (!v5)
  {
    v20 = v9;
    v21 = v8;

    sub_20AFC(v11, v21, v20, 1u);
    sub_20AFC(v3, v4, 0, 1u);
    sub_A194(v30, &qword_EF4D8, &qword_BE008);
    if (v20)
    {
      sub_20B30(v11, v21, v20, 1u);
      return 0;
    }

    return 1;
  }

  if (!v9)
  {
    v26 = v8;
    sub_20AFC(v7, v8, 0, 1u);
    v7 = v11;
    v8 = v26;
    v9 = 0;
    goto LABEL_35;
  }

  if (v4 == v8 && v5 == v9)
  {
    sub_20AFC(v7, v4, v5, 1u);
    sub_20AFC(v3, v4, v5, 1u);
LABEL_26:
    sub_A194(v30, &qword_EF4D8, &qword_BE008);
    return 1;
  }

  v27 = v8;
  v28 = v9;
  v29 = sub_B7DD0();
  sub_20AFC(v11, v27, v28, 1u);
  sub_20AFC(v3, v4, v5, 1u);
  sub_A194(v30, &qword_EF4D8, &qword_BE008);
  result = 1;
  if ((v29 & 1) == 0)
  {
    return 0;
  }

  return result;
}

id sub_1F0A0()
{
  v0 = sub_B6320();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v48[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_B6370();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v48[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v8);
  v13 = &v48[-v12];
  __chkstk_darwin(v11);
  v15 = &v48[-v14];

  sub_B6350();
  sub_B6330();
  v16 = (*(v1 + 88))(v4, v0);
  if (v16 == enum case for PersonModel.Handle.Kind.phoneNumber(_:))
  {
    sub_B6360();
    sub_B6360();
    v17 = sub_B78E0();

    v18 = sub_B78E0();

    v19 = [objc_opt_self() contactWithDisplayName:v17 emailOrPhoneNumber:v18];

    sub_B6360();
    v20 = objc_allocWithZone(CNComposeRecipient);
    v21 = sub_B78E0();

    v22 = [v20 initWithContact:v19 address:v21 kind:1];
LABEL_5:
    v26 = v22;

    (*(v6 + 8))(v15, v5);
    return v26;
  }

  if (v16 == enum case for PersonModel.Handle.Kind.email(_:))
  {
    sub_B6360();
    sub_B6360();
    v23 = sub_B78E0();

    v24 = sub_B78E0();

    v19 = [objc_opt_self() contactWithDisplayName:v23 emailOrPhoneNumber:v24];

    sub_B6360();
    v25 = objc_allocWithZone(CNComposeRecipient);
    v21 = sub_B78E0();

    v22 = [v25 initWithContact:v19 address:v21 kind:0];
    goto LABEL_5;
  }

  if (v16 == enum case for PersonModel.Handle.Kind.unknown(_:))
  {
    if (qword_EEA90 != -1)
    {
      swift_once();
    }

    v27 = sub_B69C0();
    __swift_project_value_buffer(v27, qword_EF150);
    (*(v6 + 16))(v13, v15, v5);
    v28 = sub_B69A0();
    v29 = sub_B7B40();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = v52;
      *v30 = 136315651;
      *(v30 + 4) = sub_17834(0xD000000000000016, 0x80000000000B9010, &v53);
      *(v30 + 12) = 2160;
      *(v30 + 14) = 1752392040;
      *(v30 + 22) = 2081;
      v31 = sub_B6300();
      v33 = v32;
      v34 = *(v6 + 8);
      v34(v13, v5);
      v35 = sub_17834(v31, v33, &v53);

      *(v30 + 24) = v35;
      _os_log_impl(&dword_0, v28, v29, "FMRecipientsViewModel: %s - %{private,mask.hash}s", v30, 0x20u);
      swift_arrayDestroy();

      v34(v15, v5);
    }

    else
    {

      v45 = *(v6 + 8);
      v45(v13, v5);
      v45(v15, v5);
    }
  }

  else
  {
    if (qword_EEA90 != -1)
    {
      swift_once();
    }

    v36 = sub_B69C0();
    __swift_project_value_buffer(v36, qword_EF150);
    (*(v6 + 16))(v10, v15, v5);
    v37 = sub_B69A0();
    v38 = sub_B7B40();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = v52;
      *v39 = 136315651;
      *(v39 + 4) = sub_17834(0xD000000000000016, 0x80000000000B9010, &v53);
      *(v39 + 12) = 2160;
      *(v39 + 14) = 1752392040;
      *(v39 + 22) = 2081;
      v50 = v37;
      v40 = sub_B6300();
      v49 = v38;
      v42 = v41;
      v51 = *(v6 + 8);
      v51(v10, v5);
      v43 = sub_17834(v40, v42, &v53);

      *(v39 + 24) = v43;
      v44 = v50;
      _os_log_impl(&dword_0, v50, v49, "FMRecipientsViewModel: %s - %{private,mask.hash}s", v39, 0x20u);
      swift_arrayDestroy();

      v51(v15, v5);
    }

    else
    {

      v46 = *(v6 + 8);
      v46(v10, v5);
      v46(v15, v5);
    }

    (*(v1 + 8))(v4, v0);
  }

  return 0;
}

unint64_t sub_1F86C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF478, &qword_BDF48);
    v3 = sub_B7D60();

    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(i - 4);
      sub_20AFC(v5, v6, v7, v8);
      result = sub_17E94(v9);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v9;
      v12 = v3[7] + 32 * result;
      *v12 = v5;
      *(v12 + 8) = v6;
      *(v12 + 16) = v7;
      *(v12 + 24) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1F98C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF468, &qword_BDF10);
    v3 = sub_B7D60();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_17E94(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1FA84()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1FABC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2184C;

  return sub_147C0(a1, a2, v7, v6);
}

uint64_t sub_1FB70()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1FBA8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1FBF0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2184C;

  return sub_15834(a1, a2, v6, v7, v8, v9, v11, v10);
}

unint64_t sub_1FCD0()
{
  result = qword_EF1A8;
  if (!qword_EF1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EF1A8);
  }

  return result;
}

void sub_1FD4C()
{
  sub_1FE84();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_B6600();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1FE84()
{
  if (!qword_EF1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EEE00, &unk_BDA40);
    v0 = sub_B7BE0();
    if (!v1)
    {
      atomic_store(v0, &qword_EF1E8);
    }
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1FEFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1FF44(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2002C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_20074(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v8 = (*(*(v7 - 8) + 48))(a1, a2, v7);
  if (v8 >= 2)
  {
    return v8 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    v8 = (a2 + 1);
  }

  else
  {
    v8 = 0;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v10 = *(*(v9 - 8) + 56);

  return v10(a1, v8, a3, v9);
}

uint64_t sub_20224(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2027C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5)
{
  sub_202E0(319, a4, a5);
  v6 = v5;
  if (v7 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v6;
}

void sub_202E0(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_20330(0, a3);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_20330(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_B6960();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_20390(uint64_t *a1, int a2)
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

uint64_t sub_203D8(uint64_t result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_13FindMyAppCore22ContactPickerViewModelC12DependenciesV18ReachabilityResultO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void *sub_2045C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t sub_20498(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_204F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13FindMyAppCore22ContactPickerViewModelC15RecipientStatusO(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_20590(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_205D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_20620(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ContactPickerViewModel.RecipientStatus.InvalidReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContactPickerViewModel.RecipientStatus.InvalidReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

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

uint64_t sub_20814(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_208D8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_20910(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_B6370() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2184C;

  return sub_11F58(a1, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_20A70(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_20AD4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_20AE8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    return sub_20AFC(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_20AFC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
  }

  return result;
}

uint64_t sub_20B1C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    return sub_20B30(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_20B30(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
  }

  return result;
}

uint64_t keypath_set_85Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_20BEC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC13FindMyAppCore22ContactPickerViewModel__externalDidChangeRecipientsStatus);
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = v2;
  sub_C5D8(v1);
  return sub_C618(v4);
}

uint64_t sub_20C44()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_20C6C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t objectdestroy_80Tm()
{
  v1 = sub_B6370();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_20DA4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_B6370() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2184C;

  return sub_128FC(a1, v8, v9, v10, v1 + v6, v11);
}

unint64_t sub_20EE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF540, &qword_BE110);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v23 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4C8, &qword_BDFF8);
    v8 = sub_B7D60();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_A310(v10, v6, &qword_EF540, &qword_BE110);
      result = sub_17ED8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_B6370();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7] + 32 * v14;
      v18 = *(v9 + 2);
      v19 = v9[24];
      *v17 = *v9;
      *(v17 + 16) = v18;
      *(v17 + 24) = v19;
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_210E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4E8, &qword_BE018);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF500, &qword_BE040);
    v8 = sub_B7D60();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_A310(v10, v6, &qword_EF4E8, &qword_BE018);
      result = sub_17ED8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_B6370();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + v14) = v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_212D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21318(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_21324(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2184C;

  return sub_166D0(a1, a2, v6, v7, v8);
}

uint64_t sub_213E8()
{
  v1 = sub_B6370();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_214B4(uint64_t a1)
{
  v4 = *(sub_B6370() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_F248;

  return sub_173BC(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_215B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF4E8, &qword_BE018);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21628(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EEE08, &qword_BD530);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_216B8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_216F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_F248;

  return sub_F19C(v2, v3, v4);
}

uint64_t sub_21884(double a1)
{
  v2 = sub_B7170();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  *&v7[1] = a1;
  (*(v5 + 104))(v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Font.TextStyle.headline(_:));
  sub_275B4();
  return sub_B6AA0();
}

uint64_t sub_21974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_B6DE0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF548, &qword_BE148);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v18 - v12);
  sub_27FF8(v2 + *(a1 + 84), &v18 - v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_B6BE0();
    return (*(*(v14 - 8) + 32))(a2, v13, v14);
  }

  else
  {
    v16 = *v13;
    sub_B7B50();
    v17 = sub_B7080();
    sub_B6990();

    sub_B6DD0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t ListRowTemplate.init(imageViewBuilder:titleViewBuilder:subtitleViewBuilder:detailViewBuilder:controlsBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, __int128 a13, __int128 a14, uint64_t a15, uint64_t a16)
{
  sub_21884(38.0);
  v33[0] = a12;
  v33[1] = a13;
  v33[2] = a14;
  v34 = a15;
  v35 = a16;
  v23 = type metadata accessor for ListRowTemplate(0, v33);
  v24 = v23[21];
  *(a9 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF548, &qword_BE148);
  result = swift_storeEnumTagMultiPayload();
  v26 = (a9 + v23[22]);
  *v26 = a1;
  v26[1] = a2;
  v27 = (a9 + v23[23]);
  *v27 = a3;
  v27[1] = a4;
  v28 = (a9 + v23[24]);
  *v28 = a5;
  v28[1] = a6;
  v29 = (a9 + v23[25]);
  *v29 = a7;
  v29[1] = a8;
  v30 = (a9 + v23[26]);
  *v30 = a10;
  v30[1] = a11;
  return result;
}

uint64_t ListRowTemplate.body.getter@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v28 = a2;
  v3 = a1[2];
  v33 = sub_B6BF0();
  v4 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF550, &qword_BE150);
  sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF558, &qword_C2150);
  v34 = sub_B6BF0();
  v5 = a1[4];
  sub_B6BF0();
  v35 = sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF560, &qword_BE158);
  v6 = a1[5];
  sub_B6BF0();
  sub_B6BF0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  v36 = sub_B7BE0();
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF568, &qword_BE160);
  swift_getTupleTypeMetadata();
  sub_B77B0();
  swift_getWitnessTable();
  sub_B7690();
  sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF550, &qword_BE150);
  sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF558, &qword_C2150);
  sub_B6BF0();
  sub_B6BF0();
  sub_B6BF0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  swift_getWitnessTable();
  sub_B7690();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF560, &qword_BE158);
  sub_B6BF0();
  sub_B6BF0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  sub_B7BE0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  swift_getWitnessTable();
  sub_B7660();
  v27 = &protocol conformance descriptor for HStack<A>;
  swift_getWitnessTable();
  sub_B7660();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF568, &qword_BE160);
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  swift_getWitnessTable();
  sub_B7690();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  swift_getWitnessTable();
  sub_B7660();
  v7 = sub_B6F10();
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  __chkstk_darwin(v7);
  v10 = &v25 - v9;
  v11 = sub_B6BF0();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v25 - v17;
  sub_22374(a1, v10);
  sub_B7750();
  WitnessTable = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  v31 = WitnessTable;
  v32 = v20;
  v24 = swift_getWitnessTable();
  sub_B7420();
  (*(v26 + 8))(v10, v7);
  v29 = v24;
  v30 = &protocol witness table for _FlexFrameLayout;
  swift_getWitnessTable();
  v21 = v12[2];
  v21(v18, v16, v11);
  v22 = v12[1];
  v22(v16, v11);
  v21(v28, v18, v11);
  return (v22)(v18, v11);
}

uint64_t sub_22374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v2 = a1;
  v3 = *(a1 + 16);
  v4 = sub_B6BF0();
  sub_B6BF0();
  v5 = *(v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF550, &qword_BE150);
  sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF558, &qword_C2150);
  v6 = sub_B6BF0();
  v7 = *(v2 + 32);
  sub_B6BF0();
  v8 = sub_B6BF0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  swift_getWitnessTable();
  sub_B7690();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF560, &qword_BE158);
  v9 = *(v2 + 40);
  sub_B6BF0();
  sub_B6BF0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  v10 = sub_B7BE0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  swift_getWitnessTable();
  sub_B7660();
  swift_getWitnessTable();
  sub_B7660();
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF568, &qword_BE160);
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  swift_getWitnessTable();
  sub_B7690();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  swift_getWitnessTable();
  v12 = sub_B7660();
  v50 = *(v12 - 8);
  v13 = *(v50 + 64);
  v14 = __chkstk_darwin(v12);
  v49 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v48 = &v47 - v16;
  v57 = v4;
  v58 = v6;
  v59 = v8;
  v60 = v10;
  v61 = v11;
  swift_getTupleTypeMetadata();
  sub_B77B0();
  swift_getWitnessTable();
  v17 = sub_B7690();
  v18 = *(v17 - 8);
  v19 = v18[8];
  v20 = __chkstk_darwin(v17);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v47 = &v47 - v23;
  v24 = sub_B6BE0();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_B6F10();
  v52 = *(v29 - 8);
  v53 = v29;
  v30 = *(v52 + 64);
  __chkstk_darwin(v29);
  v51 = &v47 - v31;
  v32 = v2;
  sub_21974(v2, v28);
  LOBYTE(v2) = sub_B6BD0();
  (*(v25 + 8))(v28, v24);
  if (v2)
  {
    sub_22B7C(v32);
    swift_getWitnessTable();
    v33 = v18[2];
    v34 = v47;
    v33(v47, v22, v17);
    v35 = v18[1];
    v35(v22, v17);
    v33(v22, v34, v17);
    swift_getWitnessTable();
    v36 = v51;
    sub_22D7C(v22, v17);
    v35(v22, v17);
    v35(v34, v17);
  }

  else
  {
    v37 = v49;
    sub_22E74(v32);
    swift_getWitnessTable();
    v38 = v50;
    v39 = *(v50 + 16);
    v40 = v48;
    v39(v48, v37, v12);
    v41 = *(v38 + 8);
    v41(v37, v12);
    v39(v37, v40, v12);
    swift_getWitnessTable();
    v36 = v51;
    sub_2318C(v37, v17, v12);
    v41(v37, v12);
    v41(v40, v12);
  }

  WitnessTable = swift_getWitnessTable();
  v43 = swift_getWitnessTable();
  v55 = WitnessTable;
  v56 = v43;
  v44 = v53;
  swift_getWitnessTable();
  v45 = v52;
  (*(v52 + 16))(v54, v36, v44);
  return (*(v45 + 8))(v36, v44);
}

uint64_t sub_22B7C(uint64_t a1)
{
  sub_B6EB0();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7 = *(a1 + 56);
  v8 = *(a1 + 72);
  sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF550, &qword_BE150);
  sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF558, &qword_C2150);
  sub_B6BF0();
  sub_B6BF0();
  sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF560, &qword_BE158);
  sub_B6BF0();
  sub_B6BF0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  sub_B7BE0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF568, &qword_BE160);
  swift_getTupleTypeMetadata();
  sub_B77B0();
  swift_getWitnessTable();
  return sub_B7680();
}

uint64_t sub_22D7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_B6EF0();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_B6F00();
}

uint64_t sub_22E74(uint64_t a1)
{
  sub_B6E20();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7 = *(a1 + 56);
  v8 = *(a1 + 72);
  sub_B6BF0();
  sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF550, &qword_BE150);
  sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF558, &qword_C2150);
  sub_B6BF0();
  sub_B6BF0();
  sub_B6BF0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  swift_getWitnessTable();
  sub_B7690();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF560, &qword_BE158);
  sub_B6BF0();
  sub_B6BF0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  sub_B7BE0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  swift_getWitnessTable();
  sub_B7660();
  swift_getWitnessTable();
  sub_B7660();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF568, &qword_BE160);
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  swift_getWitnessTable();
  sub_B7690();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  swift_getWitnessTable();
  return sub_B7650();
}

uint64_t sub_2318C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_B6EF0();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_B6F00();
}

uint64_t sub_23284@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v72 = a8;
  v73 = a7;
  v66 = a6;
  v65 = a1;
  v67 = a9;
  v70 = a10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF550, &qword_BE150);
  v69 = a3;
  sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF558, &qword_C2150);
  sub_B6BF0();
  v71 = a4;
  sub_B6BF0();
  sub_B6BF0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  swift_getWitnessTable();
  sub_B7690();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF560, &qword_BE158);
  sub_B6BF0();
  sub_B6BF0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  sub_B7BE0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  swift_getWitnessTable();
  sub_B7660();
  swift_getWitnessTable();
  sub_B7660();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF568, &qword_BE160);
  swift_getTupleTypeMetadata2();
  v60 = sub_B77B0();
  WitnessTable = swift_getWitnessTable();
  v64 = sub_B7690();
  v62 = *(v64 - 8);
  v14 = *(v62 + 64);
  v15 = __chkstk_darwin(v64);
  v59 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v63 = &v49 - v17;
  v18 = sub_B6BF0();
  v56 = *(v18 - 8);
  v19 = v56[8];
  __chkstk_darwin(v18);
  v21 = &v49 - v20;
  v57 = sub_B6BF0();
  v22 = *(v57 - 8);
  v23 = v22[8];
  v24 = __chkstk_darwin(v57);
  v26 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v49 - v27;
  sub_B7A60();
  v58 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v54 = a2;
  v77 = a2;
  v78 = v69;
  v79 = v71;
  v80 = a5;
  v55 = a5;
  v29 = v66;
  v81 = v66;
  v82 = v73;
  v83 = v72;
  v84 = v70;
  v30 = type metadata accessor for ListRowTemplate(0, &v77);
  v31 = v65;
  sub_23AB8(v30);
  sub_B7100();
  v76[4] = v29;
  v76[5] = &protocol witness table for _FrameLayout;
  v32 = swift_getWitnessTable();
  sub_B7440();
  (v56[1])(v21, v18);
  v76[2] = v32;
  v76[3] = &protocol witness table for _PaddingLayout;
  v33 = v57;
  v52 = swift_getWitnessTable();
  v51 = v22[2];
  v68 = v28;
  v50 = v26;
  v51(v28, v26, v33);
  v53 = v22[1];
  v56 = v22 + 1;
  v53(v26, v33);
  v34 = sub_B6EB0();
  __chkstk_darwin(v34);
  v35 = v69;
  *(&v49 - 10) = v54;
  *(&v49 - 9) = v35;
  v36 = v55;
  *(&v49 - 8) = v71;
  *(&v49 - 7) = v36;
  v38 = v72;
  v37 = v73;
  *(&v49 - 6) = v29;
  *(&v49 - 5) = v37;
  v39 = v70;
  *(&v49 - 4) = v38;
  *(&v49 - 3) = v39;
  *(&v49 - 2) = v31;
  v40 = v59;
  sub_B7680();
  v41 = v64;
  v73 = swift_getWitnessTable();
  v42 = v62;
  v43 = *(v62 + 16);
  v44 = v63;
  v43(v63, v40, v41);
  v45 = *(v42 + 8);
  v45(v40, v41);
  v46 = v50;
  v51(v50, v68, v33);
  v77 = v46;
  v43(v40, v44, v41);
  v78 = v40;
  v76[0] = v33;
  v76[1] = v41;
  v74 = v52;
  v75 = v73;
  sub_2563C(&v77, 2uLL, v76);
  v45(v44, v41);
  v47 = v53;
  v53(v68, v33);
  v45(v40, v41);
  v47(v46, v33);
}

uint64_t sub_23AB8(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v1 + *(v6 + 88);
  v10 = *(v9 + 8);
  (*v9)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF570, &qword_C1E20);
  sub_B6AC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF570, &qword_C1E20);
  sub_B6AC0();
  sub_B7760();
  v11 = *(a1 + 48);
  sub_B7410();
  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_23C1C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v50 = a8;
  v57 = a7;
  v55 = a6;
  v47 = a2;
  v56 = a1;
  v54 = a9;
  v48 = a10;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF568, &qword_BE160);
  v13 = *(*(v52 - 8) + 64);
  v14 = __chkstk_darwin(v52);
  v53 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v51 = &v39 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF550, &qword_BE150);
  sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF558, &qword_C2150);
  sub_B6BF0();
  v49 = a4;
  sub_B6BF0();
  sub_B6BF0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  swift_getWitnessTable();
  sub_B7690();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF560, &qword_BE158);
  v17 = a5;
  sub_B6BF0();
  sub_B6BF0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  sub_B7BE0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  swift_getWitnessTable();
  sub_B7660();
  swift_getWitnessTable();
  v44 = sub_B7660();
  v18 = *(v44 - 8);
  v19 = v18[8];
  v20 = __chkstk_darwin(v44);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v45 = &v39 - v23;
  sub_B7A60();
  v46 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v24 = sub_B6E20();
  __chkstk_darwin(v24);
  v25 = v47;
  *(&v39 - 10) = v47;
  *(&v39 - 9) = a3;
  v41 = a3;
  v26 = v49;
  *(&v39 - 8) = v49;
  *(&v39 - 7) = v17;
  v40 = v17;
  v27 = v57;
  *(&v39 - 6) = v55;
  *(&v39 - 5) = v27;
  v28 = v50;
  v29 = v48;
  *(&v39 - 4) = v50;
  *(&v39 - 3) = v29;
  *(&v39 - 2) = v56;
  sub_B7650();
  v30 = v44;
  WitnessTable = swift_getWitnessTable();
  v31 = v18[2];
  v32 = v45;
  v31(v45, v22, v30);
  v43 = v18[1];
  v43(v22, v30);
  v61 = v25;
  v62 = v41;
  v63 = v26;
  v64 = v40;
  v65 = v55;
  v66 = v57;
  v67 = v28;
  v68 = v29;
  v33 = type metadata accessor for ListRowTemplate(0, &v61);
  v34 = v51;
  sub_26048(v33, v51);
  v31(v22, v32, v30);
  v61 = v22;
  v35 = v53;
  sub_27B8C(v34, v53);
  v62 = v35;
  v60[0] = v30;
  v60[1] = v52;
  v58 = WitnessTable;
  v59 = sub_27BFC();
  sub_2563C(&v61, 2uLL, v60);
  sub_A194(v34, &qword_EF568, &qword_BE160);
  v36 = v32;
  v37 = v43;
  v43(v36, v30);
  sub_A194(v35, &qword_EF568, &qword_BE160);
  v37(v22, v30);
}

uint64_t sub_241F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v36 = a7;
  v37 = a8;
  v34 = a1;
  v35 = a6;
  v30 = a2;
  v38 = a9;
  v32 = a10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF550, &qword_BE150);
  v31 = a3;
  sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF558, &qword_C2150);
  sub_B6BF0();
  v33 = a4;
  sub_B6BF0();
  sub_B6BF0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  swift_getWitnessTable();
  sub_B7690();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF560, &qword_BE158);
  v13 = a5;
  sub_B6BF0();
  sub_B6BF0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  sub_B7BE0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  swift_getWitnessTable();
  v14 = sub_B7660();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = __chkstk_darwin(v14);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v29 - v20;
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22 = sub_B6E30();
  __chkstk_darwin(v22);
  v23 = v31;
  *(&v29 - 10) = v30;
  *(&v29 - 9) = v23;
  *(&v29 - 8) = v33;
  *(&v29 - 7) = v13;
  v24 = v36;
  *(&v29 - 6) = v35;
  *(&v29 - 5) = v24;
  v25 = v32;
  *(&v29 - 4) = v37;
  *(&v29 - 3) = v25;
  *(&v29 - 2) = v34;
  sub_B7650();
  swift_getWitnessTable();
  v26 = v15[2];
  v26(v21, v19, v14);
  v27 = v15[1];
  v27(v19, v14);
  v26(v38, v21, v14);
  v27(v21, v14);
}

uint64_t sub_245E4@<X0>(_BYTE *a1@<X0>, char *a2@<X1>, _BYTE *a3@<X2>, _BYTE *a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X6>, _BYTE *a8@<X7>, uint64_t a9@<X8>, _BYTE *a10)
{
  v61 = a8;
  v59 = a7;
  v63 = a6;
  v53 = a2;
  v58 = a1;
  v62 = a9;
  v54 = a10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF560, &qword_BE158);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF550, &qword_BE150);
  sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF558, &qword_C2150);
  sub_B6BF0();
  swift_getTupleTypeMetadata2();
  v52 = sub_B77B0();
  v56 = sub_B7BE0();
  v60 = *(v56 - 8);
  v13 = *(v60 + 64);
  v14 = __chkstk_darwin(v56);
  v57 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v55 = &v44 - v16;
  sub_B6BF0();
  sub_B6BF0();
  v17 = a4;
  sub_B6BF0();
  sub_B6BF0();
  swift_getTupleTypeMetadata2();
  v18 = sub_B77B0();
  WitnessTable = swift_getWitnessTable();
  v49 = v18;
  v48 = WitnessTable;
  v51 = sub_B7690();
  v65 = *(v51 - 8);
  v20 = *(v65 + 64);
  v21 = __chkstk_darwin(v51);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v64 = &v44 - v24;
  sub_B7A60();
  v50 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v25 = sub_B6EB0();
  __chkstk_darwin(v25);
  v26 = v53;
  *(&v44 - 10) = v53;
  *(&v44 - 9) = a3;
  *(&v44 - 8) = a4;
  *(&v44 - 7) = a5;
  v45 = a5;
  v44 = a3;
  v27 = v58;
  v28 = v59;
  *(&v44 - 6) = v63;
  *(&v44 - 5) = v28;
  v29 = v61;
  v30 = v54;
  *(&v44 - 4) = v61;
  *(&v44 - 3) = v30;
  *(&v44 - 2) = v27;
  v46 = v23;
  sub_B7680();
  v31 = v51;
  v48 = swift_getWitnessTable();
  v32 = v65;
  v47 = *(v65 + 16);
  v47(v64, v23, v31);
  v33 = *(v32 + 8);
  v65 = v32 + 8;
  v49 = v33;
  v33(v23, v31);
  v69 = v26;
  v70 = v44;
  v71 = v17;
  v72 = v45;
  v73 = v63;
  v74 = v28;
  v75 = v29;
  v76 = v30;
  v34 = type metadata accessor for ListRowTemplate(0, &v69);
  v35 = v57;
  sub_2580C(1, v34, v57);
  v68[2] = swift_getWitnessTable();
  v36 = v56;
  v63 = swift_getWitnessTable();
  v37 = v60;
  v38 = *(v60 + 16);
  v39 = v55;
  v38(v55, v35, v36);
  v40 = *(v37 + 8);
  v40(v35, v36);
  v41 = v46;
  v47(v46, v64, v31);
  v69 = v41;
  v38(v35, v39, v36);
  v70 = v35;
  v68[0] = v31;
  v68[1] = v36;
  v66 = v48;
  v67 = v63;
  sub_2563C(&v69, 2uLL, v68);
  v40(v39, v36);
  v42 = v49;
  v49(v64, v31);
  v40(v35, v36);
  v42(v41, v31);
}

uint64_t sub_24C24@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void (*a4)(void, void)@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v44 = a7;
  v43 = a4;
  v41 = a1;
  v51 = a8;
  v42 = a9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF550, &qword_BE150);
  v13 = sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF558, &qword_C2150);
  v46 = v13;
  v50 = sub_B6BF0();
  v48 = *(v50 - 8);
  v14 = *(v48 + 64);
  v15 = __chkstk_darwin(v50);
  v47 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v49 = &v39 - v17;
  sub_B6BF0();
  v18 = sub_B6BF0();
  v53 = *(v18 - 8);
  v19 = *(v53 + 64);
  v20 = __chkstk_darwin(v18);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v52 = &v39 - v23;
  sub_B7A60();
  v45 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v57 = v41;
  v58 = a2;
  v59 = a3;
  v60 = v43;
  v61 = a5;
  v62 = a6;
  v24 = v44;
  v63 = v44;
  v64 = v42;
  v41 = type metadata accessor for ListRowTemplate(0, &v57);
  sub_251BC(v41, v22);
  v25 = sub_A8CC(&qword_EF620, &qword_EF550, &qword_BE150);
  v56[8] = a6;
  v56[9] = v25;
  WitnessTable = swift_getWitnessTable();
  v27 = sub_A8CC(&qword_EF628, &qword_EF558, &qword_C2150);
  v56[6] = WitnessTable;
  v56[7] = v27;
  v42 = swift_getWitnessTable();
  v28 = v24;
  v29 = v53;
  v40 = *(v53 + 16);
  v39 = v22;
  v40(v52, v22, v18);
  v43 = *(v29 + 8);
  v53 = v29 + 8;
  v43(v22, v18);
  v30 = v47;
  sub_253FC(v41, v47);
  v56[4] = v28;
  v56[5] = v25;
  v56[2] = swift_getWitnessTable();
  v56[3] = v27;
  v31 = v50;
  v46 = swift_getWitnessTable();
  v32 = v48;
  v33 = *(v48 + 16);
  v34 = v49;
  v33(v49, v30, v31);
  v35 = *(v32 + 8);
  v35(v30, v31);
  v36 = v39;
  v40(v39, v52, v18);
  v57 = v36;
  v33(v30, v34, v31);
  v58 = v30;
  v56[0] = v18;
  v56[1] = v31;
  v54 = v42;
  v55 = v46;
  sub_2563C(&v57, 2uLL, v56);
  v35(v34, v31);
  v37 = v43;
  v43(v52, v18);
  v35(v30, v31);
  v37(v36, v18);
}

uint64_t sub_251BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[0] = a2;
  v4 = *(a1 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF550, &qword_BE150);
  v9 = sub_B6BF0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v20 - v13;
  v15 = v2 + *(a1 + 92);
  v16 = *(v15 + 8);
  (*v15)(v12);
  sub_B7160();
  v17 = *(a1 + 56);
  sub_B73E0();

  (*(v5 + 8))(v8, v4);
  v21 = sub_B6F80();
  v18 = sub_A8CC(&qword_EF620, &qword_EF550, &qword_BE150);
  v20[1] = v17;
  v20[2] = v18;
  swift_getWitnessTable();
  sub_B72C0();
  return (*(v10 + 8))(v14, v9);
}

uint64_t sub_253FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[0] = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF550, &qword_BE150);
  v9 = sub_B6BF0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v20 - v13;
  v15 = v2 + *(a1 + 96);
  v16 = *(v15 + 8);
  (*v15)(v12);
  sub_B7110();
  v17 = *(a1 + 64);
  sub_B73E0();

  (*(v5 + 8))(v8, v4);
  v21 = sub_B6FA0();
  v18 = sub_A8CC(&qword_EF620, &qword_EF550, &qword_BE150);
  v20[1] = v17;
  v20[2] = v18;
  swift_getWitnessTable();
  sub_B72C0();
  return (*(v10 + 8))(v14, v9);
}

uint64_t sub_2563C(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  __chkstk_darwin(TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_B77C0();
}

uint64_t sub_2580C@<X0>(int a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v79 = a1;
  v82 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF560, &qword_BE158);
  v6 = *(a2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF550, &qword_BE150);
  v7 = sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF558, &qword_C2150);
  v8 = sub_B6BF0();
  v75 = v5;
  swift_getTupleTypeMetadata2();
  v9 = sub_B77B0();
  v80 = *(v9 - 8);
  v10 = *(v80 + 64);
  v11 = __chkstk_darwin(v9);
  v74 = &v62[-v12];
  v72 = v7;
  v67 = *(v7 - 8);
  v13 = *(v67 + 64);
  v14 = __chkstk_darwin(v11);
  v66 = &v62[-v15];
  v69 = v8;
  v73 = *(v8 - 8);
  v16 = *(v73 + 64);
  v17 = __chkstk_darwin(v14);
  v70 = &v62[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v71 = &v62[-v19];
  v20 = sub_B7BE0();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v25 = &v62[-v24];
  v26 = *(v6 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v23);
  v68 = &v62[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v81 = v9;
  v29 = sub_B7BE0();
  v76 = *(v29 - 8);
  v30 = *(v76 + 64);
  v31 = __chkstk_darwin(v29);
  v77 = &v62[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = __chkstk_darwin(v31);
  v78 = &v62[-v34];
  v35 = a2;
  v36 = v3 + *(a2 + 100);
  v37 = *(v36 + 8);
  (*v36)(v33);
  if ((*(v26 + 48))(v25, 1, v6) == 1)
  {
    (*(v21 + 8))(v25, v20);
    v38 = v77;
    (*(v80 + 56))(v77, 1, 1, v81);
  }

  else
  {
    v65 = v26;
    v39 = *(v26 + 32);
    v40 = v68;
    v64 = v6;
    v39(v68, v25, v6);
    v63 = v79 & 1;
    sub_B7110();
    v41 = *(v35 + 72);
    v42 = v66;
    sub_B73E0();

    LODWORD(v89[0]) = sub_B6FA0();
    v43 = sub_A8CC(&qword_EF620, &qword_EF550, &qword_BE150);
    v89[4] = v41;
    v89[5] = v43;
    v44 = v72;
    WitnessTable = swift_getWitnessTable();
    v46 = v70;
    sub_B72C0();
    (*(v67 + 8))(v42, v44);
    v47 = sub_A8CC(&qword_EF628, &qword_EF558, &qword_C2150);
    v89[2] = WitnessTable;
    v89[3] = v47;
    v48 = v69;
    v72 = swift_getWitnessTable();
    v49 = v73;
    v50 = *(v73 + 16);
    v51 = v71;
    v50(v71, v46, v48);
    v52 = *(v49 + 8);
    v52(v46, v48);
    v86 = 0;
    v87 = v63;
    v88 = (v79 & 1) == 0;
    v89[0] = &v86;
    v50(v46, v51, v48);
    v89[1] = v46;
    v85[0] = v75;
    v85[1] = v48;
    v83 = sub_27EC4();
    v84 = v72;
    v53 = v74;
    sub_2563C(v89, 2uLL, v85);
    v52(v51, v48);
    (*(v65 + 8))(v40, v64);
    v52(v46, v48);
    v54 = v80;
    v38 = v77;
    v55 = v53;
    v56 = v81;
    (*(v80 + 32))(v77, v55, v81);
    (*(v54 + 56))(v38, 0, 1, v56);
  }

  swift_getWitnessTable();
  v57 = v76;
  v58 = *(v76 + 16);
  v59 = v78;
  v58(v78, v38, v29);
  v60 = *(v57 + 8);
  v60(v38, v29);
  v89[6] = swift_getWitnessTable();
  swift_getWitnessTable();
  v58(v82, v59, v29);
  return (v60)(v59, v29);
}

uint64_t sub_26048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_B6E90();
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  __chkstk_darwin(v3);
  v36 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_B6ED0();
  v35 = *(v6 - 8);
  v7 = *(v35 + 64);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_B67C0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF638, &qword_BE1F0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v34 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF658, &qword_BE1F8);
  v41 = *(v19 - 8);
  v20 = *(v41 + 64);
  v21 = __chkstk_darwin(v19);
  v23 = &v34 - v22;
  v24 = v39 + *(a1 + 104);
  v25 = *(v24 + 8);
  if (*((*v24)(v21) + 16))
  {
    sub_B67B0();
    sub_B6EC0();
    sub_27E74(&qword_EF648, &type metadata accessor for DynamicControlsStack);
    sub_27E74(&qword_EEFC0, &type metadata accessor for TitleOnlyLabelStyle);
    sub_B7240();
    (*(v35 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
    KeyPath = swift_getKeyPath();
    v27 = &v18[*(v15 + 36)];
    *v27 = KeyPath;
    v27[8] = 1;
    v28 = v36;
    sub_B6E80();
    sub_27D0C();
    sub_27E74(&qword_EF650, &type metadata accessor for BorderedButtonStyle);
    v29 = v38;
    sub_B7250();
    (*(v37 + 8))(v28, v29);
    sub_A194(v18, &qword_EF638, &qword_BE1F0);
    v30 = v40;
    (*(v41 + 32))(v40, v23, v19);
    return (*(v41 + 56))(v30, 0, 1, v19);
  }

  else
  {

    v32 = v40;
    v33 = *(v41 + 56);

    return v33(v32, 1, 1, v19);
  }
}

uint64_t sub_2651C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, void, void)@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X5>, void (*a7)(void, void)@<X6>, void (*a8)(void, void)@<X7>, uint64_t a9@<X8>, void *a10)
{
  v105 = a8;
  v91 = a7;
  WitnessTable = a6;
  v94 = a1;
  v97 = a9;
  v88 = a10;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF568, &qword_BE160);
  v14 = *(*(v96 - 8) + 64);
  v15 = __chkstk_darwin(v96);
  v98 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v107 = &v76 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF560, &qword_BE158);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF550, &qword_BE150);
  v89 = a5;
  sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF558, &qword_C2150);
  sub_B6BF0();
  swift_getTupleTypeMetadata2();
  v93 = sub_B77B0();
  v103 = sub_B7BE0();
  v95 = *(v103 - 8);
  v18 = *(v95 + 64);
  v19 = __chkstk_darwin(v103);
  v102 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v106 = &v76 - v21;
  v86 = a4;
  v90 = sub_B6BF0();
  v100 = sub_B6BF0();
  v113 = *(v100 - 8);
  v22 = *(v113 + 64);
  v23 = __chkstk_darwin(v100);
  v104 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v112 = &v76 - v25;
  v26 = a3;
  v85 = sub_B6BF0();
  v108 = sub_B6BF0();
  v111 = *(v108 - 8);
  v27 = *(v111 + 64);
  v28 = __chkstk_darwin(v108);
  v109 = &v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v110 = &v76 - v30;
  v31 = a2;
  v32 = sub_B6BF0();
  v33 = *(v32 - 8);
  v34 = v33[8];
  v35 = __chkstk_darwin(v32);
  v37 = &v76 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v39 = &v76 - v38;
  sub_B7A60();
  v92 = sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v120 = v31;
  v121 = v26;
  v122 = v86;
  v123 = v89;
  v40 = WitnessTable;
  v41 = v91;
  v124 = WitnessTable;
  v125 = v91;
  v126 = v105;
  v127 = v88;
  v42 = type metadata accessor for ListRowTemplate(0, &v120);
  sub_23AB8(v42);
  v119[14] = v40;
  v119[15] = &protocol witness table for _FrameLayout;
  v83 = v32;
  WitnessTable = swift_getWitnessTable();
  v43 = v33[2];
  v84 = v33 + 2;
  v86 = v43;
  v101 = v39;
  v99 = v37;
  v43(v39, v37, v32);
  v44 = v33[1];
  v88 = v33 + 1;
  v89 = v44;
  (v44)(v37, v32);
  v45 = v109;
  sub_251BC(v42, v109);
  v46 = sub_A8CC(&qword_EF620, &qword_EF550, &qword_BE150);
  v119[12] = v41;
  v119[13] = v46;
  v47 = swift_getWitnessTable();
  v48 = sub_A8CC(&qword_EF628, &qword_EF558, &qword_C2150);
  v119[10] = v47;
  v119[11] = v48;
  v49 = v108;
  v85 = swift_getWitnessTable();
  v50 = v111;
  v51 = *(v111 + 16);
  v81 = v111 + 16;
  v82 = v51;
  v51(v110, v45, v49);
  v52 = *(v50 + 8);
  v111 = v50 + 8;
  v91 = v52;
  v52(v45, v49);
  v53 = v104;
  v78 = v42;
  sub_253FC(v42, v104);
  v119[8] = v105;
  v119[9] = v46;
  v119[6] = swift_getWitnessTable();
  v119[7] = v48;
  v54 = v100;
  v90 = swift_getWitnessTable();
  v55 = v113;
  v56 = *(v113 + 16);
  v79 = v113 + 16;
  v80 = v56;
  v56(v112, v53, v54);
  v57 = *(v55 + 8);
  v113 = v55 + 8;
  v105 = v57;
  v57(v53, v54);
  v58 = v102;
  sub_2580C(0, v42, v102);
  v119[5] = swift_getWitnessTable();
  v59 = v103;
  v93 = swift_getWitnessTable();
  v60 = v95;
  v77 = *(v95 + 16);
  v61 = v106;
  v77(v106, v58, v59);
  v95 = *(v60 + 8);
  (v95)(v58, v59);
  sub_26048(v78, v107);
  v62 = v99;
  v63 = v83;
  v86(v99, v101, v83);
  v120 = v62;
  v64 = v109;
  v65 = v108;
  v82(v109, v110, v108);
  v121 = v64;
  v80(v53, v112, v54);
  v122 = v53;
  v77(v58, v61, v59);
  v123 = v58;
  v66 = v107;
  v67 = v98;
  sub_27B8C(v107, v98);
  v124 = v67;
  v119[0] = v63;
  v68 = v65;
  v119[1] = v65;
  v119[2] = v54;
  v119[3] = v59;
  v119[4] = v96;
  v114 = WitnessTable;
  v115 = v85;
  v116 = v90;
  v117 = v93;
  v118 = sub_27BFC();
  sub_2563C(&v120, 5uLL, v119);
  sub_A194(v66, &qword_EF568, &qword_BE160);
  v69 = v59;
  v70 = v95;
  (v95)(v106, v69);
  v71 = v105;
  v105(v112, v54);
  v72 = v68;
  v73 = v91;
  v91(v110, v72);
  v74 = v89;
  (v89)(v101, v63);
  sub_A194(v67, &qword_EF568, &qword_BE160);
  v70(v102, v103);
  v71(v104, v100);
  v73(v109, v108);
  v74(v99, v63);
}

uint64_t sub_27124(uint64_t a1)
{
  v2 = sub_B6BE0();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_B6D10();
}

uint64_t sub_271F0(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  return swift_getOpaqueTypeConformance2();
}

void sub_27244()
{
  sub_27558();
  if (v0 <= 0x3F)
  {
    sub_27608();
    if (v1 <= 0x3F)
    {
      sub_27660();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_27300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF570, &qword_C1E20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_EF578, &qword_BE1C0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 84);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 88));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_27438(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF570, &qword_C1E20);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_EF578, &qword_BE1C0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 88)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 84);
  }

  return v11(v12, a2, a2, v10);
}

void sub_27558()
{
  if (!qword_EF600)
  {
    sub_275B4();
    v0 = sub_B6AD0();
    if (!v1)
    {
      atomic_store(v0, &qword_EF600);
    }
  }
}

unint64_t sub_275B4()
{
  result = qword_EF608;
  if (!qword_EF608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EF608);
  }

  return result;
}

void sub_27608()
{
  if (!qword_EF610)
  {
    sub_B6BE0();
    v0 = sub_B6A50();
    if (!v1)
    {
      atomic_store(v0, &qword_EF610);
    }
  }
}

unint64_t sub_27660()
{
  result = qword_EF618;
  if (!qword_EF618)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_EF618);
  }

  return result;
}

uint64_t sub_276B0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF550, &qword_BE150);
  sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF558, &qword_C2150);
  sub_B6BF0();
  sub_B6BF0();
  sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF560, &qword_BE158);
  sub_B6BF0();
  sub_B6BF0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  sub_B7BE0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF568, &qword_BE160);
  swift_getTupleTypeMetadata();
  sub_B77B0();
  swift_getWitnessTable();
  sub_B7690();
  sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF550, &qword_BE150);
  sub_B6BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF558, &qword_C2150);
  sub_B6BF0();
  sub_B6BF0();
  sub_B6BF0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  swift_getWitnessTable();
  sub_B7690();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF560, &qword_BE158);
  sub_B6BF0();
  sub_B6BF0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  sub_B7BE0();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  swift_getWitnessTable();
  sub_B7660();
  swift_getWitnessTable();
  sub_B7660();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF568, &qword_BE160);
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  swift_getWitnessTable();
  sub_B7690();
  swift_getTupleTypeMetadata2();
  sub_B77B0();
  swift_getWitnessTable();
  sub_B7660();
  sub_B6F10();
  sub_B6BF0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_27B8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF568, &qword_BE160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_27BFC()
{
  result = qword_EF630;
  if (!qword_EF630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF568, &qword_BE160);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF638, &qword_BE1F0);
    sub_B6E90();
    sub_27D0C();
    sub_27E74(&qword_EF650, &type metadata accessor for BorderedButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EF630);
  }

  return result;
}

unint64_t sub_27D0C()
{
  result = qword_EF640;
  if (!qword_EF640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF638, &qword_BE1F0);
    sub_B67C0();
    sub_B6ED0();
    sub_27E74(&qword_EF648, &type metadata accessor for DynamicControlsStack);
    sub_27E74(&qword_EEFC0, &type metadata accessor for TitleOnlyLabelStyle);
    swift_getOpaqueTypeConformance2();
    sub_A8CC(&qword_EEFD8, &qword_EEFE0, &qword_BD750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EF640);
  }

  return result;
}

uint64_t sub_27E74(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_27EC4()
{
  result = qword_EF660;
  if (!qword_EF660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF560, &qword_BE158);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EF660);
  }

  return result;
}

uint64_t sub_27FF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF548, &qword_BE148);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ManagementSectionViewTemplate.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_B63C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v20[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];

  sub_B63B0();
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF668, &qword_BE260);
  swift_storeEnumTagMultiPayload();
  v20[3] = &type metadata for SolariumFeatureFlag;
  v20[4] = sub_28360();
  v11 = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(v20);
  if (v11)
  {
    v12 = 0;
    v13 = 26.0;
  }

  else
  {
    if (qword_EEAE0 != -1)
    {
      swift_once();
    }

    v12 = *(&xmmword_FAE50 + 1);
    v13 = *&xmmword_FAE50;
  }

  v14 = type metadata accessor for DetailsSectionTemplate();
  v15 = (a1 + v14[8]);
  *v15 = v13;
  *(v15 + 1) = v12;
  v16 = (a1 + v14[5]);
  *v16 = v9;
  v16[1] = v8;
  result = (*(v4 + 32))(a1 + v14[6], v7, v3);
  *(a1 + v14[7]) = v10;
  v18 = (a1 + v14[9]);
  *v18 = 0;
  v18[1] = 0;
  return result;
}

uint64_t sub_28294(uint64_t a1)
{
  v2 = sub_B6A40();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_B6CD0();
}

unint64_t sub_28360()
{
  result = qword_EF670;
  if (!qword_EF670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EF670);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_283E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2842C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_28480()
{
  result = qword_EF678;
  if (!qword_EF678)
  {
    type metadata accessor for DetailsSectionTemplate();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EF678);
  }

  return result;
}

id sub_284D8()
{
  v1 = v0;
  v2 = sub_B64C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v5);
  v10 = &v20[-v9];
  __chkstk_darwin(v8);
  v12 = &v20[-v11];
  v13 = sub_B78E0();
  v14 = sub_B78E0();
  v15 = [v1 URLForResource:v13 withExtension:v14];

  if (!v15)
  {
    return 0;
  }

  sub_B64A0();

  (*(v3 + 32))(v12, v10, v2);
  sub_20A70(0, &qword_EF978, CAPackage_ptr);
  (*(v3 + 16))(v7, v12, v2);
  v16 = sub_B7900();
  v19 = sub_2A9D8(v7, v16, v17, 0);
  (*(v3 + 8))(v12, v2);
  result = v19;
  if (!v19)
  {
    return 0;
  }

  return result;
}

void sub_28718()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    return;
  }

  v2 = *(v0 + 24);
  if (!v2)
  {
    return;
  }

  v15 = v1;
  v3 = [v2 rootLayer];
  if (v3)
  {
    v4 = v3;
    v5 = sub_B78E0();
    v6 = [v4 stateWithName:v5];

    if (!v6)
    {
      v7 = v15;
      v15 = v4;
LABEL_13:

      goto LABEL_14;
    }

    v7 = v4;
    v8 = [v15 stateOfLayer:v7];
    if (v8)
    {
      v9 = v8;
      sub_20A70(0, &qword_EF970, CAState_ptr);
      v10 = v6;
      v11 = sub_B7BB0();

      if (v11)
      {
        v13 = v7;
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
      v14 = v6;
    }

    LODWORD(v12) = 1.0;
    [v15 setState:v6 ofLayer:v7 transitionSpeed:v12];
    v10 = v15;
    v13 = v6;
    v15 = v7;
    goto LABEL_12;
  }

LABEL_14:
}

void sub_288A8()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = [v1 rootLayer];
    if (v2)
    {
      v3 = v2;
      v4 = [objc_allocWithZone(CAStateController) initWithLayer:v2];
      v5 = v0[2];
      v0[2] = v4;

      v6 = v0[3];
      if (!v6)
      {
        goto LABEL_7;
      }

      v7 = [v6 rootLayer];
      if (!v7 || (v8 = v7, v9 = [v7 states], v8, !v9) || (v10 = sub_B79E0(), v9, v11 = sub_28A5C(v10), , !v11))
      {
LABEL_7:

        v11 = &_swiftEmptyArrayStorage;
      }

      if (v11 >> 62)
      {
        if (sub_B7D30())
        {
          goto LABEL_10;
        }
      }

      else if (*(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
      {
LABEL_10:
        if ((v11 & 0xC000000000000001) != 0)
        {
          v12 = sub_B7C80();
        }

        else
        {
          if (!*(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            return;
          }

          v12 = *(v11 + 32);
        }

        v13 = v12;

        goto LABEL_17;
      }

      v13 = 0;
LABEL_17:
      v16 = v0[4];
      v0[4] = v13;
      v15 = v13;
      sub_28B68(v16);

      v14 = v16;
      goto LABEL_18;
    }
  }

  v14 = v0[2];
  v0[2] = 0;
LABEL_18:
}

void *sub_28A5C(uint64_t a1)
{
  v7 = &_swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  sub_B7CC0();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_20814(i, v6);
    sub_20A70(0, &qword_EF970, CAState_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_B7CA0();
    v4 = v7[2];
    sub_B7CD0();
    sub_B7CE0();
    sub_B7CB0();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

void sub_28B68(void *a1)
{
  v2 = v1;
  v4 = v2[4];
  if (v4)
  {
    if (a1)
    {
      sub_20A70(0, &qword_EF970, CAState_ptr);
      v5 = v4;
      v6 = a1;
      v7 = sub_B7BB0();

      if (v7)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  v8 = v2[2];
  if (v8)
  {
    v9 = v2[4];
    if (v9)
    {
      v10 = v2[3];
      if (v10)
      {
        v11 = v9;
        v15 = v8;
        v12 = [v10 rootLayer];
        if (v12)
        {
          v14 = v12;
          LODWORD(v13) = 1.0;
          [v15 setState:v11 ofLayer:v12 transitionSpeed:v13];

          v15 = v14;
        }
      }
    }
  }
}

uint64_t sub_28CA4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_28D10@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ViewState();
  result = sub_B69D0();
  *a1 = result;
  return result;
}

double sub_28D50()
{
  type metadata accessor for AnimatedViewState();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  return result;
}

uint64_t sub_28D84()
{
  v1 = v0;
  v3 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v5 = *(v1 + 40);
  v24 = *(v1 + 32);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  type metadata accessor for AnimatedViewState();
  sub_2AC3C(&qword_EF948, type metadata accessor for AnimatedViewState);

  v9 = sub_B6A60();
  v10 = *(v1 + 48);
  type metadata accessor for ViewState();
  sub_2AC3C(&qword_EF950, type metadata accessor for ViewState);

  v11 = sub_B6B90();
  v13 = v12;
  if (!*(v9 + 24))
  {
    v14 = sub_284D8();
    v15 = *(v9 + 24);
    *(v9 + 24) = v14;
    v16 = v14;

    sub_288A8();
  }

  v17 = swift_allocObject();
  v18 = *(v1 + 48);
  v17[3] = *(v1 + 32);
  v17[4] = v18;
  *(v17 + 73) = *(v1 + 57);
  v19 = *(v1 + 16);
  v17[1] = *v1;
  v17[2] = v19;
  *&v28 = v24;
  *(&v28 + 1) = v5;
  LOBYTE(v29) = v10;
  *(&v29 + 1) = v11;
  *&v30 = v13;
  *(&v30 + 1) = sub_2A82C;
  v31 = v17;
  v32 = 0;
  v27 = *(v1 + 24);
  v20 = swift_allocObject();
  v21 = *(v1 + 48);
  v20[3] = *(v1 + 32);
  v20[4] = v21;
  *(v20 + 73) = *(v1 + 57);
  v22 = *(v1 + 16);
  v20[1] = *v1;
  v20[2] = v22;
  sub_2A8C0(v1, v25);
  sub_2A8C0(v1, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF958, &qword_BE4C0);
  sub_2A8F8();
  sub_B7480();

  v25[2] = v30;
  v25[3] = v31;
  v26 = v32;
  v25[0] = v28;
  v25[1] = v29;
  return sub_A194(v25, &qword_EF958, &qword_BE4C0);
}

uint64_t sub_29020(uint64_t a1)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + 24))
  {
    v2 = *(a1 + 56);
    v3 = *(a1 + 64);
    v4 = *(a1 + 72);
    type metadata accessor for AnimatedViewState();
    sub_2AC3C(&qword_EF948, type metadata accessor for AnimatedViewState);
    sub_B6A60();
    sub_295B4();
  }
}

uint64_t sub_29140()
{
  v4 = v0[2];
  *v5 = v0[3];
  *&v5[9] = *(v0 + 57);
  v2 = *v0;
  v3 = v0[1];
  return sub_28D84();
}

void sub_29184()
{
  v1 = *(v0 + 32);
  if (!v1)
  {
    return;
  }

  v2 = *(v0 + 24);
  v34 = *(v0 + 32);
  if (!v2)
  {
    v9 = v1;
LABEL_9:

    v8 = &_swiftEmptyArrayStorage;
    goto LABEL_10;
  }

  v3 = v1;
  v4 = [v2 rootLayer];
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [v4 states];

  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = sub_B79E0();

  v8 = sub_28A5C(v7);

  if (!v8)
  {
    goto LABEL_9;
  }

LABEL_10:
  v10 = sub_294A4(v34, v8);
  v12 = v11;

  v13 = v34;
  if ((v12 & 1) == 0)
  {
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
    }

    else
    {
      v15 = *(v0 + 24);
      if (!v15)
      {
        goto LABEL_17;
      }

      v16 = [v15 rootLayer];
      if (!v16)
      {
        goto LABEL_17;
      }

      v17 = v16;
      v18 = [v16 states];

      if (v18 && (v19 = sub_B79E0(), v18, v20 = sub_28A5C(v19), , v20))
      {
        v21 = v20;
      }

      else
      {
LABEL_17:

        v21 = &_swiftEmptyArrayStorage;
      }

      if (!(v21 >> 62))
      {
        v22 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));

        if (v22)
        {
          goto LABEL_20;
        }

        goto LABEL_37;
      }
    }

    v22 = sub_B7D30();

    if (v22)
    {
LABEL_20:
      if (v14 == 0x8000000000000000 && v22 == -1)
      {
        goto LABEL_41;
      }

      v23 = v14 % v22;
      v24 = *(v0 + 24);
      if (!v24)
      {
        goto LABEL_26;
      }

      v25 = [v24 rootLayer];
      if (!v25 || (v26 = v25, v27 = [v25 states], v26, !v27) || (v28 = sub_B79E0(), v27, v29 = sub_28A5C(v28), , !v29))
      {
LABEL_26:

        v29 = &_swiftEmptyArrayStorage;
      }

      if ((v29 & 0xC000000000000001) == 0)
      {
        if ((v23 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v23 < *(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8)))
        {
          v30 = *(v29 + 8 * v23 + 32);
LABEL_31:
          v31 = v30;

          v32 = *(v0 + 32);
          *(v0 + 32) = v31;
          v33 = v31;
          sub_28B68(v32);

          sub_295B4();
          v13 = v33;
          goto LABEL_32;
        }

        __break(1u);
LABEL_41:
        __break(1u);
        return;
      }

LABEL_38:
      v30 = sub_B7C80();
      goto LABEL_31;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_32:
}

unint64_t sub_294A4(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_B7D30();
  }

  else
  {
    v4 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = sub_B7C80();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_20A70(0, &qword_EF970, CAState_ptr);
    v8 = sub_B7BB0();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

void sub_295B4()
{
  v1 = sub_B7800();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v49 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_B7820();
  v48 = *(v5 - 8);
  v6 = *(v48 + 64);
  __chkstk_darwin(v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_B77F0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_B7840();
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v22 = &v42 - v21;
  v23 = *(v0 + 32);
  if (!v23)
  {
    return;
  }

  v43 = v20;
  v44 = v5;
  v46 = v1;
  v47 = v19;
  v45 = v2;
  v24 = *(v0 + 24);
  v50 = v23;
  if (!v24)
  {
    v31 = v23;
LABEL_8:

    v30 = &_swiftEmptyArrayStorage;
    goto LABEL_9;
  }

  v25 = v23;
  v26 = [v24 rootLayer];
  if (!v26)
  {
    goto LABEL_8;
  }

  v27 = v26;
  v28 = [v26 states];

  if (!v28)
  {
    goto LABEL_8;
  }

  v29 = sub_B79E0();

  v30 = sub_28A5C(v29);

  if (!v30)
  {
    goto LABEL_8;
  }

LABEL_9:
  v32 = sub_294A4(v50, v30);
  v34 = v33;

  if (v34)
  {
    v35 = v50;
  }

  else
  {
    if (v32)
    {
      v36 = 2500;
    }

    else
    {
      v36 = 500;
    }

    sub_20A70(0, &qword_EF980, OS_dispatch_queue_ptr);
    v42 = sub_B7B80();
    sub_B7830();
    *v13 = v36;
    (*(v10 + 104))(v13, enum case for DispatchTimeInterval.milliseconds(_:), v9);
    sub_B7850();
    (*(v10 + 8))(v13, v9);
    v43 = *(v43 + 8);
    (v43)(v18, v47);
    v37 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_2AC1C;
    aBlock[5] = v37;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29C58;
    aBlock[3] = &block_descriptor;
    v38 = _Block_copy(aBlock);

    sub_B7810();
    v51 = &_swiftEmptyArrayStorage;
    sub_2AC3C(&qword_EF988, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF990, &qword_BE4C8);
    sub_A8CC(&qword_EF998, &qword_EF990, &qword_BE4C8);
    v39 = v49;
    v40 = v46;
    sub_B7C20();
    v41 = v42;
    sub_B7B70();

    _Block_release(v38);
    (*(v45 + 8))(v39, v40);
    (*(v48 + 8))(v8, v44);
    (v43)(v22, v47);
  }
}

uint64_t sub_29B8C()
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_29184();
  }
}

uint64_t sub_29C58(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_29CA4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_29D18()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF9A0, &qword_BE558);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v14[-v3];
  type metadata accessor for CAPackageViewLayer();
  v5 = *v0;
  v16 = *(v0 + 24);
  v17 = v5;
  v6 = swift_allocObject();
  v7 = v0[1];
  *(v6 + 16) = *v0;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(v0 + 4);
  sub_A310(&v17, &v15, &qword_EF9A8, &qword_BE560);
  sub_A310(&v16, &v15, &qword_EF9B0, &qword_BE568);
  sub_B6B00();
  v8 = swift_allocObject();
  v9 = v0[1];
  *(v8 + 16) = *v0;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(v0 + 4);
  v10 = &v4[*(v1 + 36)];
  *v10 = sub_2ADC4;
  v10[1] = v8;
  v10[2] = 0;
  v10[3] = 0;
  v15 = v17;
  v11 = swift_allocObject();
  v12 = v0[1];
  *(v11 + 16) = *v0;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(v0 + 4);
  sub_A310(&v17, v14, &qword_EF9A8, &qword_BE560);
  sub_A310(&v17, v14, &qword_EF9A8, &qword_BE560);
  sub_A310(&v16, v14, &qword_EF9B0, &qword_BE568);
  sub_A310(&v17, v14, &qword_EF9A8, &qword_BE560);
  sub_A310(&v16, v14, &qword_EF9B0, &qword_BE568);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF9A8, &qword_BE560);
  sub_2AE44();
  sub_2AEFC();
  sub_B7480();

  sub_A194(&v17, &qword_EF9A8, &qword_BE560);
  return sub_A194(v4, &qword_EF9A0, &qword_BE558);
}

void sub_29FC4(_BYTE *a1, uint64_t a2)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(*(a2 + 32) + 24);
  if (v4 && (v5 = [v4 rootLayer]) != 0)
  {
    v6 = v5;
    v7 = v5;
    sub_2A1F4(v6);
    a1[OBJC_IVAR____TtC13FindMyAppCoreP33_113F9C70DE74682402EA2ECCFF4D49EA18CAPackageViewLayer_fitToHeight] = *(a2 + 16);
    [a1 layoutSublayers];
  }

  else
  {
  }
}

uint64_t sub_2A100(uint64_t *a1)
{
  sub_B7A60();
  sub_B7A50();
  sub_B7A00();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1[1])
  {
    v2 = *a1;
    v3 = a1[4];
    sub_28718();
  }
}

uint64_t sub_2A1B8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_29D18();
}

void sub_2A1F4(void *a1)
{
  v2 = OBJC_IVAR____TtC13FindMyAppCoreP33_113F9C70DE74682402EA2ECCFF4D49EA18CAPackageViewLayer_packageLayer;
  v6 = *&v1[OBJC_IVAR____TtC13FindMyAppCoreP33_113F9C70DE74682402EA2ECCFF4D49EA18CAPackageViewLayer_packageLayer];
  *&v1[OBJC_IVAR____TtC13FindMyAppCoreP33_113F9C70DE74682402EA2ECCFF4D49EA18CAPackageViewLayer_packageLayer] = a1;
  v3 = a1;
  [v6 removeFromSuperlayer];
  v4 = *&v1[v2];
  if (v4)
  {
    v5 = v4;
    [v1 addSublayer:v5];
  }
}

void sub_2A28C()
{
  v33.receiver = v0;
  v33.super_class = type metadata accessor for CAPackageViewLayer();
  objc_msgSendSuper2(&v33, "layoutSublayers");
  v1 = *&v0[OBJC_IVAR____TtC13FindMyAppCoreP33_113F9C70DE74682402EA2ECCFF4D49EA18CAPackageViewLayer_packageLayer];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [v2 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v34.origin.x = v4;
    v34.origin.y = v6;
    v34.size.width = v8;
    v34.size.height = v10;
    Width = CGRectGetWidth(v34);
    rect = v10;
    v35.origin.x = v4;
    v35.origin.y = v6;
    v35.size.width = v8;
    v35.size.height = v10;
    Height = CGRectGetHeight(v35);
    v36.origin.x = v12;
    v36.origin.y = v14;
    v36.size.width = v16;
    v36.size.height = v18;
    v19 = CGRectGetWidth(v36);
    v37.origin.x = v12;
    v37.origin.y = v14;
    v37.size.width = v16;
    v37.size.height = v18;
    v20 = CGRectGetHeight(v37);
    if ((v0[OBJC_IVAR____TtC13FindMyAppCoreP33_113F9C70DE74682402EA2ECCFF4D49EA18CAPackageViewLayer_fitToHeight] & 1) != 0 || Width / Height >= v19 / v20)
    {
      v40.origin.x = v4;
      v40.origin.y = v6;
      v40.size.width = v8;
      v40.size.height = rect;
      v21 = CGRectGetHeight(v40);
      v41.origin.x = v12;
      v41.origin.y = v14;
      v41.size.width = v16;
      v41.size.height = v18;
      v22 = CGRectGetHeight(v41);
    }

    else
    {
      v38.origin.x = v4;
      v38.origin.y = v6;
      v38.size.width = v8;
      v38.size.height = rect;
      v21 = CGRectGetWidth(v38);
      v39.origin.x = v12;
      v39.origin.y = v14;
      v39.size.width = v16;
      v39.size.height = v18;
      v22 = CGRectGetWidth(v39);
    }

    CGAffineTransformMakeScale(&v31, v21 / v22, v21 / v22);
    m21 = v31.m21;
    m22 = v31.m22;
    v29 = *&v31.m13;
    v30 = *&v31.m11;
    [v2 setGeometryFlipped:1];
    *&m.a = v30;
    *&m.c = v29;
    m.tx = m21;
    m.ty = m22;
    CATransform3DMakeAffineTransform(&v31, &m);
    [v2 setTransform:&v31];
    [v0 bounds];
    MidX = CGRectGetMidX(v42);
    [v0 bounds];
    [v2 setPosition:{MidX, CGRectGetMidY(v43)}];
  }
}

id sub_2A6B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAPackageViewLayer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2A74C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_2A794(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  sub_2A824();

  return _swift_deallocObject(v0, 89, 7);
}

unint64_t sub_2A8F8()
{
  result = qword_EF960;
  if (!qword_EF960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF958, &qword_BE4C0);
    sub_2A984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EF960);
  }

  return result;
}

unint64_t sub_2A984()
{
  result = qword_EF968;
  if (!qword_EF968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EF968);
  }

  return result;
}

id sub_2A9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_B6480(__stack_chk_guard);
  v7 = v6;
  v8 = sub_B78E0();

  if (a4)
  {
    v9.super.isa = sub_B7860().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v18 = 0;
  v10 = [swift_getObjCClassFromMetadata() packageWithContentsOfURL:v7 type:v8 options:v9.super.isa error:&v18];

  v11 = v18;
  if (v10)
  {
    v12 = sub_B64C0();
    v13 = *(*(v12 - 8) + 8);
    v14 = v11;
    v13(a1, v12);
  }

  else
  {
    v15 = v18;
    sub_B6440();

    swift_willThrow();
    v16 = sub_B64C0();
    (*(*(v16 - 8) + 8))(a1, v16);
  }

  return v10;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2ABE4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2AC3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2AC84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2ACCC(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_2AD24()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF958, &qword_BE4C0);
  sub_2A8F8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t objectdestroy_58Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_2AE44()
{
  result = qword_EF9B8;
  if (!qword_EF9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF9A0, &qword_BE558);
    sub_A8CC(&qword_EF9C0, &qword_EF9C8, &qword_BE570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EF9B8);
  }

  return result;
}

unint64_t sub_2AEFC()
{
  result = qword_EF9D0;
  if (!qword_EF9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF9A8, &qword_BE560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EF9D0);
  }

  return result;
}

uint64_t sub_2AF78()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF9A0, &qword_BE558);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_EF9A8, &qword_BE560);
  sub_2AE44();
  sub_2AEFC();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_2B050()
{
  result = qword_EF9D8;
  if (!qword_EF9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EF9D8);
  }

  return result;
}

unint64_t sub_2B0A8()
{
  result = qword_EF9E0;
  if (!qword_EF9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EF9E0);
  }

  return result;
}

unint64_t sub_2B100()
{
  result = qword_EF9E8;
  if (!qword_EF9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EF9E8);
  }

  return result;
}

Swift::Int sub_2B154()
{
  v1 = *v0;
  sub_B7EB0();
  sub_B7EC0(v1);
  return sub_B7EE0();
}

Swift::Int sub_2B1C8()
{
  v1 = *v0;
  sub_B7EB0();
  sub_B7EC0(v1);
  return sub_B7EE0();
}

unint64_t sub_2B210()
{
  result = qword_EF9F0;
  if (!qword_EF9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EF9F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LostDevice.Capabilities(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LostDevice.Capabilities(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_2B30C()
{
  v0 = sub_B62F0();
  __swift_allocate_value_buffer(v0, qword_EFA90);
  __swift_project_value_buffer(v0, qword_EFA90);
  type metadata accessor for DeviceManagementModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  return sub_B62E0();
}

uint64_t static FindMyLocalizationTable.deviceManagement.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_EEA98 != -1)
  {
    swift_once();
  }

  v2 = sub_B62F0();
  v3 = __swift_project_value_buffer(v2, qword_EFA90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t DeviceManagementSectionView.init(viewModel:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for DeviceManagementSectionViewModel();
  result = sub_B75B0();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

char *DeviceManagementSectionView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v16 - v5;
  v7 = *v1;
  v8 = v1[1];
  if (qword_EEA98 != -1)
  {
    swift_once();
  }

  v9 = sub_B62F0();
  v10 = __swift_project_value_buffer(v9, qword_EFA90);
  v11 = *(v9 - 8);
  (*(v11 + 16))(v6, v10, v9);
  (*(v11 + 56))(v6, 0, 1, v9);
  v12 = sub_B78D0();
  v14 = v13;
  sub_2B630(v6);
  v16[0] = v7;
  v16[1] = v8;
  result = sub_2B698();
  *a1 = v12;
  a1[1] = v14;
  a1[2] = result;
  return result;
}

uint64_t sub_2B630(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_2B698()
{
  v1 = sub_B65A0();
  v75 = *(v1 - 8);
  v76 = v1;
  v2 = *(v75 + 64);
  __chkstk_darwin(v1);
  v74 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v68 - v6;
  v8 = *v0;
  v9 = v0[1];
  *&v83[0] = *v0;
  *(&v83[0] + 1) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFAB0, &qword_BE880);
  sub_B75C0();
  v11 = v77;
  swift_getKeyPath();
  *&v83[0] = v11;
  v12 = sub_2C2D0();
  sub_B65C0();

  v13 = *(v11 + 16);

  v72 = v12;
  v73 = v10;
  if (v13)
  {
    if (qword_EEA98 != -1)
    {
      swift_once();
    }

    v17 = sub_B62F0();
    v18 = __swift_project_value_buffer(v17, qword_EFA90);
    v19 = *(v17 - 8);
    (*(v19 + 16))(v7, v18, v17);
    (*(v19 + 56))(v7, 0, 1, v17);
    v20 = sub_B78D0();
    v22 = v21;
    sub_2B630(v7);
    *(&v83[1] + 1) = &type metadata for SolariumFeatureFlag;
    *&v83[2] = sub_28360();
    LOBYTE(v17) = sub_B6610();
    __swift_destroy_boxed_opaque_existential_0(v83);
    if (v17)
    {
      v23 = 1;
    }

    else
    {
      v23 = 3;
    }

    v24 = swift_allocObject();
    *(v24 + 16) = v8;
    *(v24 + 24) = v9;
    *(&v83[7] + 8) = 0u;
    *(&v83[8] + 8) = 0u;
    *(&v83[9] + 1) = 0;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v71 = v9;

    v70 = v8;

    v25 = v74;
    sub_B6590();
    v26 = sub_B6560();
    v28 = v27;
    (*(v75 + 8))(v25, v76);
    memset(&v83[11], 0, 96);
    *&v83[0] = v26;
    *(&v83[0] + 1) = v28;
    *&v83[1] = v20;
    *(&v83[1] + 1) = v22;
    LOBYTE(v83[2]) = v23;
    *(&v83[2] + 1) = 0;
    *&v83[3] = 0;
    BYTE8(v83[3]) = 0;
    v83[4] = 0uLL;
    LOBYTE(v83[5]) = 1;
    *(&v83[5] + 1) = sub_2C444;
    *&v83[6] = v24;
  }

  else
  {
    *&v83[0] = v8;
    *(&v83[0] + 1) = v9;
    sub_B75C0();
    v14 = v77;
    swift_getKeyPath();
    *&v83[0] = v14;
    sub_B65C0();

    v15 = *(v14 + 16);

    if ((v15 & 2) == 0)
    {
      v16 = &_swiftEmptyArrayStorage;
      goto LABEL_20;
    }

    *&v83[0] = v8;
    *(&v83[0] + 1) = v9;
    sub_B75C0();
    v29 = v77;
    swift_getKeyPath();
    *&v83[0] = v29;
    sub_B65C0();

    swift_beginAccess();
    v30 = *(v29 + 24);

    if (qword_EEA98 != -1)
    {
      swift_once();
    }

    v31 = sub_B62F0();
    v32 = __swift_project_value_buffer(v31, qword_EFA90);
    v33 = *(v31 - 8);
    (*(v33 + 16))(v7, v32, v31);
    (*(v33 + 56))(v7, 0, 1, v31);
    v34 = sub_B78D0();
    v68 = v35;
    v69 = v34;

    sub_2B630(v7);
    *&v83[0] = v8;
    *(&v83[0] + 1) = v9;
    v71 = v9;
    sub_B75C0();
    v36 = v77;
    swift_getKeyPath();
    *&v83[0] = v36;
    sub_B65C0();

    swift_beginAccess();
    v37 = *(v36 + 24);

    v38 = 0;
    if ((v37 & 1) == 0)
    {
      *(&v83[1] + 1) = &type metadata for SolariumFeatureFlag;
      *&v83[2] = sub_28360();
      v39 = sub_B6610();
      __swift_destroy_boxed_opaque_existential_0(v83);
      if (v39)
      {
        v38 = 1;
      }

      else
      {
        v38 = 3;
      }
    }

    v40 = v71;
    *&v83[0] = v8;
    *(&v83[0] + 1) = v71;
    sub_B75C0();
    v41 = v77;
    swift_getKeyPath();
    *&v83[0] = v41;
    sub_B65C0();

    swift_beginAccess();
    v42 = *(v41 + 24);

    v43 = swift_allocObject();
    *(v43 + 16) = v8;
    *(v43 + 24) = v40;
    *(&v83[7] + 8) = 0u;
    *(&v83[8] + 8) = 0u;
    *(&v83[9] + 1) = 0;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;

    v70 = v8;

    v44 = v74;
    sub_B6590();
    v45 = sub_B6560();
    v47 = v46;
    (*(v75 + 8))(v44, v76);
    memset(&v83[11], 0, 96);
    *&v83[0] = v45;
    *(&v83[0] + 1) = v47;
    *&v83[1] = v69;
    *(&v83[1] + 1) = v68;
    LOBYTE(v83[2]) = v38;
    *(&v83[2] + 1) = 0;
    *&v83[3] = 0;
    BYTE8(v83[3]) = 0;
    v83[4] = 0uLL;
    LOBYTE(v83[5]) = (v42 & 1) == 0;
    *(&v83[5] + 1) = sub_2C3D8;
    *&v83[6] = v43;
  }

  *(&v83[6] + 1) = 0;
  *&v83[7] = 0;
  v83[10] = 0uLL;
  sub_2C360(&v77, &v83[11]);
  v16 = sub_5358C(0, 1, 1, &_swiftEmptyArrayStorage);
  v49 = *(v16 + 2);
  v48 = *(v16 + 3);
  if (v49 >= v48 >> 1)
  {
    v16 = sub_5358C((v48 > 1), v49 + 1, 1, v16);
  }

  *(v16 + 2) = v49 + 1;
  memcpy(&v16[272 * v49 + 32], v83, 0x110uLL);
  v8 = v70;
  v9 = v71;
LABEL_20:
  if (qword_EEA98 != -1)
  {
    swift_once();
  }

  v50 = sub_B62F0();
  v51 = __swift_project_value_buffer(v50, qword_EFA90);
  v52 = *(v50 - 8);
  (*(v52 + 16))(v7, v51, v50);
  (*(v52 + 56))(v7, 0, 1, v50);
  v71 = sub_B78D0();
  v54 = v53;
  sub_2B630(v7);
  *(&v83[1] + 1) = &type metadata for SolariumFeatureFlag;
  *&v83[2] = sub_28360();
  LOBYTE(v50) = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(v83);
  if (v50)
  {
    v55 = 1;
  }

  else
  {
    v55 = 3;
  }

  *&v83[0] = v8;
  *(&v83[0] + 1) = v9;
  sub_B75C0();
  v56 = v9;
  v57 = v77;
  swift_getKeyPath();
  *&v83[0] = v57;
  sub_B65C0();

  v58 = OBJC_IVAR____TtC13FindMyAppCore32DeviceManagementSectionViewModel__isRemoveButtonEnabled;
  swift_beginAccess();
  v59 = *(v57 + v58);

  v60 = swift_allocObject();
  *(v60 + 16) = v8;
  *(v60 + 24) = v56;
  *(&v83[7] + 8) = 0u;
  *(&v83[8] + 8) = 0u;
  *(&v83[9] + 1) = 0;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;

  v61 = v74;
  sub_B6590();
  v62 = sub_B6560();
  v64 = v63;
  (*(v75 + 8))(v61, v76);
  *&v83[0] = v62;
  *(&v83[0] + 1) = v64;
  *&v83[1] = v71;
  *(&v83[1] + 1) = v54;
  LOBYTE(v83[2]) = v55;
  *(&v83[2] + 1) = 0;
  *&v83[3] = 0;
  BYTE8(v83[3]) = 0;
  v83[4] = 0uLL;
  LOBYTE(v83[5]) = v59;
  *(&v83[5] + 1) = sub_2C334;
  v83[6] = v60;
  *&v83[7] = 0;
  memset(&v83[10], 0, 112);
  sub_2C360(&v77, &v83[11]);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_5358C(0, *(v16 + 2) + 1, 1, v16);
  }

  v66 = *(v16 + 2);
  v65 = *(v16 + 3);
  if (v66 >= v65 >> 1)
  {
    v16 = sub_5358C((v65 > 1), v66 + 1, 1, v16);
  }

  *(v16 + 2) = v66 + 1;
  memcpy(&v16[272 * v66 + 32], v83, 0x110uLL);
  return v16;
}

uint64_t sub_2C188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFAB0, &qword_BE880);
  sub_B75C0();
  swift_getKeyPath();
  sub_2C2D0();
  sub_B65C0();

  v6 = v11 + *a5;
  swift_beginAccess();
  v8 = *v6;
  v7 = *(v6 + 8);

  v8(v9);
}

unint64_t sub_2C274()
{
  result = qword_EFAA8;
  if (!qword_EFAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EFAA8);
  }

  return result;
}

unint64_t sub_2C2D0()
{
  result = qword_EFAB8;
  if (!qword_EFAB8)
  {
    type metadata accessor for DeviceManagementSectionViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EFAB8);
  }

  return result;
}

uint64_t sub_2C360(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFAC0, &qword_BEEB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2C490@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_2C2D0();
  sub_B65C0();

  *a1 = *(v1 + 16);
  return result;
}

uint64_t DeviceManagementSectionViewModel.isCancelling.getter()
{
  swift_getKeyPath();
  sub_2C2D0();
  sub_B65C0();

  swift_beginAccess();
  return *(v0 + 24);
}

uint64_t DeviceManagementSectionViewModel.isRemoveButtonEnabled.getter()
{
  swift_getKeyPath();
  v3 = v0;
  sub_2C2D0();
  sub_B65C0();

  v1 = OBJC_IVAR____TtC13FindMyAppCore32DeviceManagementSectionViewModel__isRemoveButtonEnabled;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_2C654(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_2C2D0();
  sub_B65C0();

  v4 = (v2 + *a2);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];

  return v6;
}

uint64_t sub_2C6EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2C2D0();
  sub_B65C0();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_2C764(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_2C2D0();
  sub_B65B0();
}

uint64_t sub_2C800@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2C2D0();
  sub_B65C0();

  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t DeviceManagementSectionViewModel.isCancelling.setter(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 24) == v2)
  {
    *(v1 + 24) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_2C2D0();
    sub_B65B0();
  }

  return result;
}

void (*DeviceManagementSectionViewModel.isCancelling.modify(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13FindMyAppCore32DeviceManagementSectionViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_2C2D0();
  sub_B65C0();

  *v4 = v1;
  swift_getKeyPath();
  sub_B65E0();

  swift_beginAccess();
  return sub_2CAB8;
}

uint64_t sub_2CAC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2C2D0();
  sub_B65C0();

  v4 = OBJC_IVAR____TtC13FindMyAppCore32DeviceManagementSectionViewModel__isRemoveButtonEnabled;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t DeviceManagementSectionViewModel.isRemoveButtonEnabled.setter(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC13FindMyAppCore32DeviceManagementSectionViewModel__isRemoveButtonEnabled;
  result = swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_2C2D0();
    sub_B65B0();
  }

  return result;
}

void (*DeviceManagementSectionViewModel.isRemoveButtonEnabled.modify(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13FindMyAppCore32DeviceManagementSectionViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_2C2D0();
  sub_B65C0();

  *v4 = v1;
  swift_getKeyPath();
  sub_B65E0();

  swift_beginAccess();
  return sub_2CD94;
}

uint64_t DeviceManagementSectionViewModel.__allocating_init(managedDevice:isCancelling:isRemoveButtonEnabled:)(uint64_t *a1, char a2, char a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  DeviceManagementSectionViewModel.init(managedDevice:isCancelling:isRemoveButtonEnabled:)(a1, a2, a3);
  return v9;
}

uint64_t DeviceManagementSectionViewModel.init(managedDevice:isCancelling:isRemoveButtonEnabled:)(uint64_t *a1, char a2, char a3)
{
  v6 = *a1;
  sub_B69B0();
  v7 = (v3 + OBJC_IVAR____TtC13FindMyAppCore32DeviceManagementSectionViewModel__onRemoveOrRepairDevice);
  *v7 = ItemContactInfoSetupIntroductionViewModel.bind();
  v7[1] = 0;
  v8 = (v3 + OBJC_IVAR____TtC13FindMyAppCore32DeviceManagementSectionViewModel__onEraseDevice);
  *v8 = ItemContactInfoSetupIntroductionViewModel.bind();
  v8[1] = 0;
  v9 = (v3 + OBJC_IVAR____TtC13FindMyAppCore32DeviceManagementSectionViewModel__onCancelEraseDevice);
  *v9 = ItemContactInfoSetupIntroductionViewModel.bind();
  v9[1] = 0;
  sub_B65F0();
  *(v3 + 16) = v6;
  *(v3 + 24) = a2;
  *(v3 + OBJC_IVAR____TtC13FindMyAppCore32DeviceManagementSectionViewModel__isRemoveButtonEnabled) = a3;
  return v3;
}

uint64_t sub_2CF58()
{
  swift_getKeyPath();
  sub_2C2D0();
  sub_B65B0();
}

void (*DeviceManagementSectionViewModel.onRemoveOrRepairDevice.modify(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13FindMyAppCore32DeviceManagementSectionViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_2C2D0();
  sub_B65C0();

  *v4 = v1;
  swift_getKeyPath();
  sub_B65E0();

  swift_beginAccess();
  return sub_2D17C;
}

uint64_t type metadata accessor for DeviceManagementSectionViewModel()
{
  result = qword_EFB20;
  if (!qword_EFB20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*DeviceManagementSectionViewModel.onEraseDevice.modify(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13FindMyAppCore32DeviceManagementSectionViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_2C2D0();
  sub_B65C0();

  *v4 = v1;
  swift_getKeyPath();
  sub_B65E0();

  swift_beginAccess();
  return sub_2D38C;
}

uint64_t sub_2D3C8@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, uint64_t a3@<X6>, void *a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_2C2D0();
  sub_B65C0();

  v8 = (v7 + *a2);
  swift_beginAccess();
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  *a4 = a3;
  a4[1] = v11;
}

uint64_t sub_2D4D0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_getKeyPath();
  sub_2C2D0();

  sub_B65B0();
}

uint64_t sub_2D5E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 24) = v2;
  return result;
}

uint64_t sub_2D634()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC13FindMyAppCore32DeviceManagementSectionViewModel__isRemoveButtonEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_2D6E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = (a1 + *a4);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a2;
  v6[1] = a3;
}

void (*DeviceManagementSectionViewModel.onCancelEraseDevice.modify(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC13FindMyAppCore32DeviceManagementSectionViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_2C2D0();
  sub_B65C0();

  *v4 = v1;
  swift_getKeyPath();
  sub_B65E0();

  swift_beginAccess();
  return sub_2D890;
}

void sub_2D89C(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  v2 = v1[4];
  v3 = v1[5];
  *v1 = v1[3];
  swift_getKeyPath();
  sub_B65D0();

  free(v1);
}

Swift::Void __swiftcall DeviceManagementSectionViewModel.updateProperties(with:)(FindMyAppCore::ManagedDevice with)
{
  v1 = *with.properties.rawValue;
  v2 = sub_B69A0();
  v3 = sub_B7B60();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Updating General section for device", v4, 2u);
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_2C2D0();
  sub_B65B0();
}

uint64_t DeviceManagementSectionViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC13FindMyAppCore32DeviceManagementSectionViewModel_logger;
  v2 = sub_B69C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore32DeviceManagementSectionViewModel__onRemoveOrRepairDevice + 8);

  v4 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore32DeviceManagementSectionViewModel__onEraseDevice + 8);

  v5 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore32DeviceManagementSectionViewModel__onCancelEraseDevice + 8);

  v6 = OBJC_IVAR____TtC13FindMyAppCore32DeviceManagementSectionViewModel___observationRegistrar;
  v7 = sub_B6600();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t DeviceManagementSectionViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13FindMyAppCore32DeviceManagementSectionViewModel_logger;
  v2 = sub_B69C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore32DeviceManagementSectionViewModel__onRemoveOrRepairDevice + 8);

  v4 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore32DeviceManagementSectionViewModel__onEraseDevice + 8);

  v5 = *(v0 + OBJC_IVAR____TtC13FindMyAppCore32DeviceManagementSectionViewModel__onCancelEraseDevice + 8);

  v6 = OBJC_IVAR____TtC13FindMyAppCore32DeviceManagementSectionViewModel___observationRegistrar;
  v7 = sub_B6600();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2DC6C()
{
  result = sub_B69C0();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_B6600();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_2DD8C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t DeviceLostModeStatusProvider.init(stream:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFBE0, &unk_BEB00);
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_2DF38()
{
  result = sub_B6550();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2DFB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFBE0, &unk_BEB00);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2E03C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFBE0, &unk_BEB00);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_2E0D8()
{
  sub_2E144();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2E144()
{
  if (!qword_EFCF8)
  {
    type metadata accessor for DeviceLostModeReportingState(255);
    v0 = sub_B7AB0();
    if (!v1)
    {
      atomic_store(v0, &qword_EFCF8);
    }
  }
}

FindMyAppCore::ManagedPerson __swiftcall ManagedPerson.init(firstName:properties:isFavorite:)(FindMyAppCore::ManagedPerson firstName, FindMyAppCore::ManagedPerson::Properties properties, Swift::Bool isFavorite)
{
  v4 = *properties.rawValue;
  *v3 = firstName.firstName;
  *(v3 + 16) = v4;
  *(v3 + 24) = isFavorite;
  firstName.properties = properties;
  firstName.isFavorite = isFavorite;
  return firstName;
}

unint64_t sub_2E1B4()
{
  result = qword_EFD28;
  if (!qword_EFD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EFD28);
  }

  return result;
}

unint64_t sub_2E20C()
{
  result = qword_EFD30;
  if (!qword_EFD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EFD30);
  }

  return result;
}

unint64_t sub_2E264()
{
  result = qword_EFD38;
  if (!qword_EFD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EFD38);
  }

  return result;
}

unint64_t sub_2E2BC()
{
  result = qword_EFD40;
  if (!qword_EFD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_EFD40);
  }

  return result;
}

uint64_t sub_2E310(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_2E358(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t DeviceLostModeManagementSectionView.lostModeTitle.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v21 - v3;
  v6 = *v0;
  v5 = v0[1];
  if (qword_EEAA0 != -1)
  {
    swift_once();
  }

  v7 = sub_B62F0();
  v21[0] = __swift_project_value_buffer(v7, qword_EFFC0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v9(v4, v21[0], v7);
  v10 = *(v8 + 56);
  v10(v4, 0, 1, v7);
  v11 = sub_B78D0();
  v21[1] = v12;
  v21[2] = v11;
  sub_2B630(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFD48, &unk_C4D00);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_BDA30;
  v23 = v6;
  v24 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFD50, &qword_BED80);
  sub_B75C0();
  v14 = *(v22 + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel_lostDevice);
  v15 = *(v22 + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel_lostDevice + 8);

  v9(v4, v21[0], v7);
  v10(v4, 0, 1, v7);
  sub_B78D0();

  sub_2B630(v4);
  v16 = sub_B7920();
  v18 = v17;

  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_305FC();
  *(v13 + 32) = v16;
  *(v13 + 40) = v18;
  v19 = sub_B7910();

  return v19;
}

uint64_t sub_2E67C()
{
  v1 = sub_B64E0();
  v57 = *(v1 - 8);
  v58 = v1;
  v2 = *(v57 + 64);
  __chkstk_darwin(v1);
  v54 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_B6500();
  v55 = *(v4 - 8);
  v56 = v4;
  v5 = *(v55 + 64);
  __chkstk_darwin(v4);
  v53 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_B6550();
  v7 = *(v60 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v60);
  v59 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v53 - v12;
  v14 = type metadata accessor for DeviceLostModeReportingState(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v0;
  v19 = v0[1];
  v64 = *v0;
  v65 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFD50, &qword_BED80);
  sub_B75C0();
  v20 = v62;
  swift_getKeyPath();
  v64 = v20;
  sub_30920(&qword_EFD70, type metadata accessor for DeviceLostModeManagementViewModel);
  sub_B65C0();

  v21 = OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel__lostModeReportingState;
  swift_beginAccess();
  sub_30968(v20 + v21, v17);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    v62 = v18;
    v63 = v19;
    sub_B75C0();
    v25 = *(v61 + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel_lostDevice + 24);

    if (v25 == 1)
    {
      if (qword_EEAA0 == -1)
      {
        goto LABEL_10;
      }
    }

    else if (qword_EEAA0 == -1)
    {
LABEL_10:
      v26 = sub_B62F0();
      v27 = __swift_project_value_buffer(v26, qword_EFFC0);
      v28 = *(v26 - 8);
      (*(v28 + 16))(v13, v27, v26);
      (*(v28 + 56))(v13, 0, 1, v26);
      v29 = sub_B78D0();
      sub_2B630(v13);
      return v29;
    }

    swift_once();
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload)
  {
    v23 = v60;
    if (EnumCaseMultiPayload == 1)
    {
      v24 = v59;
      (*(v7 + 32))(v59, v17, v60);
      if (qword_EEAA0 == -1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v24 = v59;
      (*(v7 + 32))(v59, v17, v60);
      if (qword_EEAA0 == -1)
      {
LABEL_15:
        v43 = sub_B62F0();
        v44 = __swift_project_value_buffer(v43, qword_EFFC0);
        v45 = *(v43 - 8);
        (*(v45 + 16))(v13, v44, v43);
        (*(v45 + 56))(v13, 0, 1, v43);
        sub_B78D0();
        sub_2B630(v13);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFD48, &unk_C4D00);
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_BDA30;
        v47 = v53;
        sub_B64F0();
        v48 = v54;
        sub_B64D0();
        v49 = sub_B6530();
        v51 = v50;
        (*(v57 + 8))(v48, v58);
        (*(v55 + 8))(v47, v56);
        *(v46 + 56) = &type metadata for String;
        *(v46 + 64) = sub_305FC();
        *(v46 + 32) = v49;
        *(v46 + 40) = v51;
        v29 = sub_B7910();

        (*(v7 + 8))(v24, v23);
        return v29;
      }
    }

    swift_once();
    goto LABEL_15;
  }

  v30 = v7;
  v31 = *(v7 + 32);
  v33 = v59;
  v32 = v60;
  v31(v59, v17, v60);
  if (qword_EEAA0 != -1)
  {
    swift_once();
  }

  v34 = sub_B62F0();
  v35 = __swift_project_value_buffer(v34, qword_EFFC0);
  v36 = *(v34 - 8);
  (*(v36 + 16))(v13, v35, v34);
  (*(v36 + 56))(v13, 0, 1, v34);
  sub_B78D0();
  sub_2B630(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFD48, &unk_C4D00);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_BDA30;
  v38 = v53;
  sub_B64F0();
  v39 = v54;
  sub_B64D0();
  v40 = sub_B6530();
  v42 = v41;
  (*(v57 + 8))(v39, v58);
  (*(v55 + 8))(v38, v56);
  *(v37 + 56) = &type metadata for String;
  *(v37 + 64) = sub_305FC();
  *(v37 + 32) = v40;
  *(v37 + 40) = v42;
  v29 = sub_B7910();

  (*(v30 + 8))(v33, v32);
  return v29;
}

uint64_t DeviceLostModeManagementSectionView.init(viewModel:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for DeviceLostModeManagementViewModel();
  result = sub_B75B0();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t DeviceLostModeManagementSectionView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v2 = sub_B63C0();
  v60 = *(v2 - 8);
  v61 = v2;
  v3 = *(v60 + 64);
  __chkstk_darwin(v2);
  v55 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v48 - v7;
  v58 = type metadata accessor for DetailsSectionTemplate();
  v9 = *(*(v58 - 8) + 64);
  v10 = __chkstk_darwin(v58);
  v54 = (&v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v59 = &v48 - v12;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFD60, &qword_BED88);
  v13 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v56 = &v48 - v14;
  v16 = *v1;
  v15 = v1[1];
  if (qword_EEAA0 != -1)
  {
    swift_once();
  }

  v17 = sub_B62F0();
  v18 = __swift_project_value_buffer(v17, qword_EFFC0);
  v19 = *(v17 - 8);
  v50 = *(v19 + 16);
  v51 = v18;
  v50(v8, v18, v17);
  v49 = *(v19 + 56);
  v49(v8, 0, 1, v17);
  v20 = sub_B78D0();
  v52 = v21;
  v53 = v20;
  sub_2B630(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFD48, &unk_C4D00);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_BDA30;
  v63 = v16;
  v64 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFD50, &qword_BED80);
  sub_B75C0();
  v23 = v16;
  v25 = *(v67 + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel_lostDevice);
  v24 = *(v67 + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel_lostDevice + 8);

  v50(v8, v51, v17);
  v49(v8, 0, 1, v17);
  v26 = v15;
  sub_B78D0();

  sub_2B630(v8);
  v27 = sub_B7920();
  v29 = v28;

  *(v22 + 56) = &type metadata for String;
  *(v22 + 64) = sub_305FC();
  *(v22 + 32) = v27;
  *(v22 + 40) = v29;
  v30 = sub_B7910();
  v32 = v31;

  v33 = v55;
  sub_B6380();
  v63 = v23;
  v64 = v26;
  v34 = sub_2F67C();
  KeyPath = swift_getKeyPath();
  v36 = v54;
  *v54 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EF668, &qword_BE260);
  swift_storeEnumTagMultiPayload();
  v65 = &type metadata for SolariumFeatureFlag;
  v66 = sub_28360();
  LOBYTE(v24) = sub_B6610();
  __swift_destroy_boxed_opaque_existential_0(&v63);
  v37 = v33;
  if (v24)
  {
    v38 = xmmword_BED70;
  }

  else
  {
    if (qword_EEAE0 != -1)
    {
      swift_once();
      v37 = v33;
    }

    v38 = xmmword_FAE50;
  }

  v39 = v58;
  *(v36 + *(v58 + 32)) = v38;
  v40 = (v36 + v39[5]);
  *v40 = v30;
  v40[1] = v32;
  (*(v60 + 32))(v36 + v39[6], v37, v61);
  *(v36 + v39[7]) = v34;
  v41 = (v36 + v39[9]);
  *v41 = 0;
  v41[1] = 0;
  v42 = v59;
  sub_30658(v36, v59);
  v43 = swift_allocObject();
  *(v43 + 16) = v23;
  *(v43 + 24) = v26;
  v44 = v42;
  v45 = v56;
  sub_30658(v44, v56);
  v46 = (v45 + *(v57 + 36));
  *v46 = sub_306C0;
  v46[1] = v43;
  v46[2] = 0;
  v46[3] = 0;
  sub_306C8(v45, v62);
}

char *sub_2F67C()
{
  v1 = sub_B65A0();
  v44 = *(v1 - 8);
  v45 = v1;
  v2 = *(v44 + 64);
  __chkstk_darwin(v1);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DeviceLostModeReportingState(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_F17B0, &qword_BE7D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v40 - v11;
  v13 = *v0;
  v14 = v0[1];
  *&v49[0] = *v0;
  *(&v49[0] + 1) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_EFD50, &qword_BED80);
  sub_B75C0();
  v15 = *(v48[0] + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel_lostDevice + 16);

  if ((v15 & 1) == 0)
  {
    return &_swiftEmptyArrayStorage;
  }

  *&v49[0] = v13;
  *(&v49[0] + 1) = v14;
  sub_B75C0();
  v17 = *(v48[0] + OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel_lostDevice + 24);

  if (v17 == 1)
  {
    v43 = "_LOST_MODE_TITLE";
    if (qword_EEAA0 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  v43 = "gementSectionView.swift";
  if (qword_EEAA0 != -1)
  {
LABEL_13:
    swift_once();
  }

LABEL_7:
  v18 = sub_B62F0();
  v19 = __swift_project_value_buffer(v18, qword_EFFC0);
  v20 = *(v18 - 8);
  (*(v20 + 16))(v12, v19, v18);
  (*(v20 + 56))(v12, 0, 1, v18);
  v21 = sub_B78D0();
  v43 = v22;
  sub_2B630(v12);
  v48[18] = v13;
  v48[19] = v14;
  v23 = sub_2E67C();
  v41 = v24;
  v42 = v23;
  *&v49[0] = v13;
  *(&v49[0] + 1) = v14;
  sub_B75C0();
  v25 = v48[0];
  swift_getKeyPath();
  *&v49[0] = v25;
  sub_30920(&qword_EFD70, type metadata accessor for DeviceLostModeManagementViewModel);
  sub_B65C0();

  v26 = OBJC_IVAR____TtC13FindMyAppCore33DeviceLostModeManagementViewModel__lostModeReportingState;
  swift_beginAccess();
  sub_30968(v25 + v26, v8);

  if (swift_getEnumCaseMultiPayload() >= 3)
  {
    v27 = 0;
  }

  else
  {
    sub_309CC(v8);
    v27 = 2;
  }

  v48[13] = v13;
  v48[14] = v14;
  v28 = sub_2FE44();
  v29 = swift_allocObject();
  *(v29 + 16) = v13;
  *(v29 + 24) = v14;
  *(&v49[7] + 8) = 0u;
  *(&v49[8] + 8) = 0u;
  *(&v49[9] + 1) = 0;
  memset(v48, 0, 96);
  v46 = v13;
  v47 = v14;

  v30 = sub_3027C();
  v32 = v31;
  sub_B6590();
  v33 = sub_B6560();
  v35 = v34;
  (*(v44 + 8))(v4, v45);
  *&v49[0] = v33;
  *(&v49[0] + 1) = v35;
  *&v49[1] = v21;
  *(&v49[1] + 1) = v43;
  LOBYTE(v49[2]) = 0;
  *(&v49[2] + 1) = v42;
  *&v49[3] = v41;
  BYTE8(v49[3]) = v27;
  v49[4] = 0uLL;
  LOBYTE(v49[5]) = v28 & 1;
  *(&v49[5] + 1) = sub_30A28;
  *&v49[6] = v29;
  *(&v49[6] + 1) = v30;
  *&v49[7] = v32;
  memset(&v49[10], 0, 112);
  sub_2C360(v48, &v49[11]);
  v36 = sub_5358C(0, 1, 1, &_swiftEmptyArrayStorage);
  v38 = *(v36 + 2);
  v37 = *(v36 + 3);
  if (v38 >= v37 >> 1)
  {
    v36 = sub_5358C((v37 > 1), v38 + 1, 1, v36);
  }

  *(v36 + 2) = v38 + 1;
  v39 = v36;
  memcpy(&v36[272 * v38 + 32], v49, 0x110uLL);
  return v39;
}