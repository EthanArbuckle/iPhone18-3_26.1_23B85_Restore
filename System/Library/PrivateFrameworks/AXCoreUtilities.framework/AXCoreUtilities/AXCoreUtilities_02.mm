void sub_1915E34A4(uint64_t **a1, char a2, void (*a3)(uint64_t, uint64_t))
{
  v3 = *a1;
  v4 = **a1;
  LOBYTE(v5) = *(*a1 + 40);
  if (a2)
  {
    if (!v4)
    {
      goto LABEL_10;
    }

    v6 = v3[4];
    v7 = *v3[3];
    if ((*a1)[5])
    {
      goto LABEL_9;
    }

    v9 = v3[1];
    v8 = v3[2];
    v7[(v6 >> 6) + 8] |= 1 << v6;
    v10 = (v7[6] + 16 * v6);
    *v10 = v9;
    v10[1] = v8;
    *(v7[7] + 8 * v6) = v4;
    v11 = v7[2];
    v12 = __OFADD__(v11, 1);
    v5 = v11 + 1;
    if (!v12)
    {
LABEL_13:
      v20 = v3[2];
      v7[2] = v5;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v4)
  {
LABEL_10:
    if (v5)
    {
      v13 = v3[4];
      v14 = *v3[3];
      sub_1915E42C0(*(v14 + 48) + 16 * v13);
      a3(v13, v14);
    }

    goto LABEL_14;
  }

  v6 = v3[4];
  v7 = *v3[3];
  if ((v5 & 1) == 0)
  {
    v17 = v3[1];
    v16 = v3[2];
    v7[(v6 >> 6) + 8] |= 1 << v6;
    v18 = (v7[6] + 16 * v6);
    *v18 = v17;
    v18[1] = v16;
    *(v7[7] + 8 * v6) = v4;
    v19 = v7[2];
    v12 = __OFADD__(v19, 1);
    v5 = v19 + 1;
    if (v12)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v7[7] + 8 * v6) = v4;
LABEL_14:
  v21 = *v3;

  free(v3);
}

void (*sub_1915E35F8(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, char a2)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_1915DB370(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_191648A24();
      v11 = v19;
      goto LABEL_11;
    }

    sub_191646C98(v16, a3 & 1);
    v20 = *v4;
    v11 = sub_1915DB370(a2);
    if ((v17 & 1) == (v21 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_19166C6F8();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v22 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v22 = 0;
  }

  *v9 = v22;
  return sub_1915E3740;
}

void sub_1915E3740(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(v2 + 32);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[3];
    v6 = *v2[2];
    if (v2[4])
    {
      goto LABEL_9;
    }

    v7 = v2[1];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *(v6[6] + 8 * v5) = v7;
    *(v6[7] + 8 * v5) = v3;
    v8 = v6[2];
    v9 = __OFADD__(v8, 1);
    v4 = v8 + 1;
    if (!v9)
    {
LABEL_13:
      v6[2] = v4;
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      sub_191647950(v2[3], *v2[2]);
    }

    goto LABEL_14;
  }

  v5 = v2[3];
  v6 = *v2[2];
  if ((v4 & 1) == 0)
  {
    v10 = v2[1];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *(v6[6] + 8 * v5) = v10;
    *(v6[7] + 8 * v5) = v3;
    v11 = v6[2];
    v9 = __OFADD__(v11, 1);
    v4 = v11 + 1;
    if (v9)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:
  v12 = *v2;

  free(v2);
}

uint64_t (*sub_1915E3860(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1915E3888;
}

uint64_t (*sub_1915E3894(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1915E4380;
}

uint64_t sub_1915E38BC(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 16);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = result;
  v8 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = v4[3] >> 1, v10 < v6))
  {
    if (v5 <= v6)
    {
      v11 = v5 + v3;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_1915F43E4(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    v10 = v4[3] >> 1;
  }

  v12 = v4[2];
  v13 = v10 - v12;
  result = sub_1915DBA54(&v42, &v4[5 * v12 + 4], v10 - v12, v7);
  if (result < v3)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v15 = v4[2];
    v16 = __OFADD__(v15, result);
    v17 = v15 + result;
    if (v16)
    {
      __break(1u);
      goto LABEL_20;
    }

    v4[2] = v17;
  }

  if (result != v13)
  {
    result = sub_1915DBBC0();
LABEL_14:
    *v1 = v4;
    return result;
  }

LABEL_17:
  v2 = v4[2];
  v14 = v43;
  v33 = v43;
  v34 = v42;
  v3 = v44;
  v17 = v45;
  v18 = v46;
  if (v46)
  {
    v19 = v45;
LABEL_27:
    v23 = (v18 - 1) & v18;
    sub_1915DB15C(*(v34 + 56) + 40 * (__clz(__rbit64(v18)) | (v19 << 6)), &v39);
    v22 = v19;
    while (1)
    {
      sub_1915E0A90(&v39, &v37, &qword_1EADAF4C8, &qword_191672478);
      if (!v38)
      {
        break;
      }

      v3 = (v3 + 64) >> 6;
      v24 = &qword_1EADAF4C8;
      while (1)
      {
        sub_19159E780(&v37, v24, &qword_191672478);
        v25 = v4[3];
        v26 = v25 >> 1;
        if ((v25 >> 1) < v2 + 1)
        {
          v4 = sub_1915F43E4((v25 > 1), v2 + 1, 1, v4);
          v26 = v4[3] >> 1;
        }

        sub_1915E0A90(&v39, &v35, v24, &qword_191672478);
        if (v36)
        {
          break;
        }

        v31 = v22;
LABEL_52:
        sub_19159E780(&v35, v24, &qword_191672478);
        v27 = v2;
        v22 = v31;
LABEL_31:
        v4[2] = v27;
        sub_1915E0A90(&v39, &v37, v24, &qword_191672478);
        if (!v38)
        {
          goto LABEL_53;
        }
      }

      if (v2 <= v26)
      {
        v27 = v26;
      }

      else
      {
        v27 = v2;
      }

      while (1)
      {
        sub_1915A04D0(&v35, &v37);
        if (v2 == v27)
        {
          __swift_destroy_boxed_opaque_existential_1(&v37);
          v2 = v27;
          goto LABEL_31;
        }

        v28 = v24;
        sub_19159E780(&v39, v24, &qword_191672478);
        sub_1915A04D0(&v37, &v4[5 * v2 + 4]);
        if (!v23)
        {
          break;
        }

        v29 = v22;
LABEL_50:
        v32 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
        sub_1915DB15C(*(v34 + 56) + 40 * (v32 | (v29 << 6)), &v39);
        v31 = v29;
LABEL_39:
        ++v2;
        v24 = v28;
        sub_1915E0A90(&v39, &v35, v28, &qword_191672478);
        v22 = v31;
        if (!v36)
        {
          goto LABEL_52;
        }
      }

      if (v3 <= (v22 + 1))
      {
        v30 = v22 + 1;
      }

      else
      {
        v30 = v3;
      }

      v31 = v30 - 1;
      while (1)
      {
        v29 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v29 >= v3)
        {
          v23 = 0;
          v41 = 0;
          v39 = 0u;
          v40 = 0u;
          goto LABEL_39;
        }

        v23 = *(v33 + 8 * v29);
        ++v22;
        if (v23)
        {
          goto LABEL_50;
        }
      }

      __break(1u);
LABEL_55:
      v23 = 0;
      v41 = 0;
      v39 = 0u;
      v40 = 0u;
    }

LABEL_53:
    sub_19159E780(&v39, &qword_1EADAF4C8, &qword_191672478);
    sub_1915DBBC0();
    result = sub_19159E780(&v37, &qword_1EADAF4C8, &qword_191672478);
    goto LABEL_14;
  }

LABEL_20:
  v20 = (v3 + 64) >> 6;
  if (v20 <= v17 + 1)
  {
    v21 = v17 + 1;
  }

  else
  {
    v21 = (v3 + 64) >> 6;
  }

  v22 = v21 - 1;
  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v20)
    {
      goto LABEL_55;
    }

    v18 = *(v14 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

void *sub_1915E3CAC(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1915F4408(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4D8, &unk_191672490);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1915E3DD8(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1915F47A8(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1915E3ECC(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1915F48B4(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4D0, &unk_191672480);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1915E3FF8(uint64_t result, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v5 = *(result + 16);
  v6 = *v4;
  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = result;
  v12 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v7 + v5 <= *(v6 + 24) >> 1)
  {
    if (*(v11 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v6 = result;
  if (!*(v11 + 16))
  {
LABEL_10:

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_11:
    *v4 = v6;
    return result;
  }

  v13 = *(v6 + 16);
  v14 = __OFADD__(v13, v5);
  v15 = v13 + v5;
  if (!v14)
  {
    *(v6 + 16) = v15;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1915E4118()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

_OWORD *sub_1915E4370(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1915E4390(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v17 = MEMORY[0x1E69E7CC0];
  sub_1915F4E6C(0, v5, 0);
  v6 = v17;
  for (i = (a3 + 40); ; i += 2)
  {
    v10 = *i;
    v15[0] = *(i - 1);
    v15[1] = v10;

    a1(&v16, v15);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v16;
    v17 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1915F4E6C((v12 > 1), v13 + 1, 1);
      v6 = v17;
    }

    *(v6 + 16) = v13 + 1;
    *(v6 + 8 * v13 + 32) = v11;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t axDarwinNotificationStream(_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4E0, &qword_1916724A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  sub_1915E4664(inited, nullsub_1, 0);
  swift_setDeallocating();
  return sub_1915E42C0(inited + 32);
}

uint64_t axDarwinNotificationStream<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4E0, &qword_1916724A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  axDarwinNotificationStream<A>(_:_:)(inited, a3, a4, a5);
  swift_setDeallocating();
  return sub_1915E42C0(inited + 32);
}

uint64_t sub_1915E462C()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1915E4664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF508, &qword_1916724F8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v23[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF510, &qword_191672500);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v23[-v16];
  (*(v7 + 104))(v11, *MEMORY[0x1E69E8650], v6);
  sub_19166BB68();
  (*(v7 + 8))(v11, v6);
  v18 = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  v24 = v18;
  v25 = v17;
  v26 = a2;
  v27 = a3;
  v19 = sub_1915E4390(sub_1915E62F4, v23, a1);
  type metadata accessor for AXTaskWrapper();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v18;
  sub_19166BB88();
  return (*(v13 + 8))(v17, v12);
}

uint64_t axDarwinNotificationStream<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = a1;
  v6 = sub_19166BB98();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v23 - v10;
  v12 = sub_19166BBC8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v23 - v16;
  nullsub_1(a4);
  sub_1915D455C(v11);
  sub_19166BB68();
  (*(v7 + 8))(v11, v6);
  v18 = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  v26 = a4;
  v27 = v18;
  v28 = v17;
  v29 = a2;
  v30 = v23;
  v19 = sub_1915E4390(sub_1915E50CC, v25, v24);
  type metadata accessor for AXTaskWrapper();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = v20;
  v21[4] = v18;
  sub_19166BB88();
  return (*(v13 + 8))(v17, v12);
}

uint64_t sub_1915E4B1C(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v28 = a3;
  v29 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF510, &qword_191672500);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v28 - v17;
  v36 = a1;
  v37 = a2;
  v34 = 46;
  v35 = 0xE100000000000000;
  v32 = 95;
  v33 = 0xE100000000000000;
  sub_1915E5F84();
  sub_19166BF98();
  v19 = sub_19166B718();

  v20 = CFNotificationCenterGetDarwinNotifyCenter();
  v21 = sub_19166B718();
  CFNotificationCenterAddObserver(v20, v28, sub_1915E5118, v21, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v22 = sub_19166BB58();
  (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
  (*(v9 + 16))(v13, v29, v8);
  v23 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *(v24 + 4) = v19;
  (*(v9 + 32))(&v24[v23], v13, v8);
  v25 = &v24[(v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8];
  v26 = v31;
  *v25 = v30;
  *(v25 + 1) = v26;

  return sub_1915D593C(0, 0, v18, &unk_191672510, v24);
}

uint64_t sub_1915E4DF0@<X0>(uint64_t *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v32 = a6;
  v33 = a4;
  v34 = a5;
  v35 = a7;
  v30 = a2;
  v31 = a3;
  v8 = sub_19166BBC8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v30 - v17;
  v19 = a1[1];
  v40 = *a1;
  v41 = v19;
  v38 = 46;
  v39 = 0xE100000000000000;
  v36 = 95;
  v37 = 0xE100000000000000;
  sub_1915E5F84();
  sub_19166BF98();
  v20 = sub_19166B718();

  v21 = CFNotificationCenterGetDarwinNotifyCenter();
  v22 = sub_19166B718();
  CFNotificationCenterAddObserver(v21, v30, sub_1915E5118, v22, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v23 = sub_19166BB58();
  (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
  (*(v9 + 16))(v13, v31, v8);
  v24 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v25 = (v10 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  *(v26 + 4) = v32;
  *(v26 + 5) = v20;
  (*(v9 + 32))(&v26[v24], v13, v8);
  v27 = &v26[v25];
  v28 = v34;
  *v27 = v33;
  *(v27 + 1) = v28;

  result = sub_1915D593C(0, 0, v18, &unk_1916724E0, v26);
  *v35 = result;
  return result;
}

void sub_1915E5118(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a1;
  v8 = a3;
  v9 = a5;
  sub_1915E61E8(a3);
}

uint64_t sub_1915E5188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF518, &unk_191672518);
  v7[7] = v8;
  v9 = *(v8 - 8);
  v7[8] = v9;
  v10 = *(v9 + 64) + 15;
  v7[9] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF500, &qword_1916724E8) - 8) + 64) + 15;
  v7[10] = swift_task_alloc();
  v12 = sub_19166BE68();
  v7[11] = v12;
  v13 = *(v12 - 8);
  v7[12] = v13;
  v14 = *(v13 + 64) + 15;
  v7[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1915E52EC, 0, 0);
}

uint64_t sub_1915E52EC()
{
  v1 = v0[13];
  v2 = v0[3];
  v3 = [objc_opt_self() defaultCenter];
  sub_19166BE78();

  sub_19166BE58();
  v4 = sub_1915E6128();
  v5 = *(MEMORY[0x1E69E85A8] + 4);
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_1915E53E8;
  v7 = v0[13];
  v8 = v0[10];
  v9 = v0[11];

  return MEMORY[0x1EEE6D8C8](v8, v9, v4);
}

uint64_t sub_1915E53E8()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1915E56E0;
  }

  else
  {
    v3 = sub_1915E54FC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1915E5518()
{
  v1 = *(v0 + 80);
  v2 = sub_19166AF78();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 72);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v7 = *(v0 + 64);
    v6 = *(v0 + 72);
    v8 = *(v0 + 48);
    v9 = *(v0 + 56);
    v10 = *(v0 + 32);
    (*(v0 + 40))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF510, &qword_191672500);
    sub_19166BBA8();
    (*(v7 + 8))(v6, v9);
    sub_1915E6180(v1);
    v11 = sub_1915E6128();
    v12 = *(MEMORY[0x1E69E85A8] + 4);
    v13 = swift_task_alloc();
    *(v0 + 112) = v13;
    *v13 = v0;
    v13[1] = sub_1915E53E8;
    v14 = *(v0 + 104);
    v15 = *(v0 + 80);
    v16 = *(v0 + 88);

    return MEMORY[0x1EEE6D8C8](v15, v16, v11);
  }
}

uint64_t sub_1915E56E0()
{
  *(v0 + 16) = *(v0 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3B8, &qword_1916724F0);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t sub_1915E576C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  v9 = *(*(a8 - 8) + 64) + 15;
  v8[8] = swift_task_alloc();
  v10 = sub_19166BB78();
  v8[9] = v10;
  v11 = *(v10 - 8);
  v8[10] = v11;
  v12 = *(v11 + 64) + 15;
  v8[11] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF500, &qword_1916724E8) - 8) + 64) + 15;
  v8[12] = swift_task_alloc();
  v14 = sub_19166BE68();
  v8[13] = v14;
  v15 = *(v14 - 8);
  v8[14] = v15;
  v16 = *(v15 + 64) + 15;
  v8[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1915E58F8, 0, 0);
}

uint64_t sub_1915E58F8()
{
  v1 = v0[15];
  v2 = v0[3];
  v3 = [objc_opt_self() defaultCenter];
  sub_19166BE78();

  sub_19166BE58();
  v4 = sub_1915E6128();
  v5 = *(MEMORY[0x1E69E85A8] + 4);
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_1915E59F4;
  v7 = v0[15];
  v8 = v0[12];
  v9 = v0[13];

  return MEMORY[0x1EEE6D8C8](v8, v9, v4);
}

uint64_t sub_1915E59F4()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_1915E5D08;
  }

  else
  {
    v3 = sub_1915E5B08;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1915E5B24()
{
  v1 = *(v0 + 96);
  v2 = sub_19166AF78();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 88);
    v4 = *(v0 + 64);
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v8 = *(v0 + 80);
    v7 = *(v0 + 88);
    v9 = *(v0 + 72);
    v10 = *(v0 + 48);
    v11 = *(v0 + 56);
    v12 = *(v0 + 32);
    v13 = *(v0 + 64);
    (*(v0 + 40))();
    sub_19166BBC8();
    sub_19166BBA8();
    (*(v8 + 8))(v7, v9);
    sub_1915E6180(v1);
    v14 = sub_1915E6128();
    v15 = *(MEMORY[0x1E69E85A8] + 4);
    v16 = swift_task_alloc();
    *(v0 + 128) = v16;
    *v16 = v0;
    v16[1] = sub_1915E59F4;
    v17 = *(v0 + 120);
    v18 = *(v0 + 96);
    v19 = *(v0 + 104);

    return MEMORY[0x1EEE6D8C8](v18, v19, v14);
  }
}

uint64_t sub_1915E5D08()
{
  *(v0 + 16) = *(v0 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3B8, &qword_1916724F0);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

void sub_1915E5D94(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = *(a2 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(a2 + 16);

    v8 = 32;
    do
    {
      v9 = *(v5 + v8);

      sub_19166BC28();

      v8 += 8;
      --v6;
    }

    while (v6);

    v10 = *(a2 + 16);
  }

  *(a2 + 16) = MEMORY[0x1E69E7CC0];

  v11 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v11, a3);
}

id sub_1915E5F18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1915E5F84()
{
  result = qword_1ED5A8200;
  if (!qword_1ED5A8200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5A8200);
  }

  return result;
}

uint64_t sub_1915E5FD8(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v6 = *(sub_19166BBC8() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[5];
  v11 = (v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1915D4F90;

  return sub_1915E576C(a1, v8, v9, v10, v1 + v7, v12, v13, v5);
}

unint64_t sub_1915E6128()
{
  result = qword_1EADAE658;
  if (!qword_1EADAE658)
  {
    sub_19166BE68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAE658);
  }

  return result;
}

uint64_t sub_1915E6180(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF500, &qword_1916724E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1915E61E8(void *a1)
{
  if (a1)
  {
    v8 = sub_19166B748();
    v9 = v2;
    v3 = sub_1915E5F84();
    v4 = a1;
    v7 = MEMORY[0x1E69E6158];
    sub_19166BF98();

    v5 = [objc_opt_self() defaultCenter];
    v6 = sub_19166B718();

    [v5 postNotificationName:v6 object:0];
  }
}

uint64_t sub_1915E62F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1915E4B1C(*a1, a1[1], *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1915E6340(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF510, &qword_191672500) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1915D8338;

  return sub_1915E5188(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t AXLongLivedEventLogger.__allocating_init(directory:logFilePrefix:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  AXLongLivedEventLogger.init(directory:logFilePrefix:)(a1, a2, a3);
  return v9;
}

uint64_t AXLongLivedEventLogger.init(directory:logFilePrefix:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v7 = sub_19166BDB8();
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_19166BDA8();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12, v14);
  v15 = sub_19166B5B8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  v18 = OBJC_IVAR____TtC15AXCoreUtilities22AXLongLivedEventLogger_directory;
  v19 = sub_19166B088();
  v35 = *(v19 - 8);
  v36 = v19;
  (*(v35 + 16))(v3 + v18, a1);
  v32[2] = sub_1915DAA60(0, &qword_1EADAE7F0, 0x1E69E9610);
  sub_19166B598();
  v38[0] = MEMORY[0x1E69E7CC0];
  sub_1915EACA0(&qword_1EADAE7F8, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3E0, &unk_1916721A0);
  sub_1915E6918();
  v20 = v3;
  sub_19166BFE8();
  (*(v33 + 104))(v11, *MEMORY[0x1E69E8090], v34);
  *(v3 + OBJC_IVAR____TtC15AXCoreUtilities22AXLongLivedEventLogger_queue) = sub_19166BDE8();
  v21 = [objc_opt_self() defaultManager];
  v37 = 0;
  _s15AXCoreUtilities12AXCTLSupportO4PathV4pathSSvg_0();
  v22 = sub_19166B718();

  [v21 fileExistsAtPath:v22 isDirectory:&v37];

  if (v37)
  {
    (*(v35 + 8))(a1, v36);
  }

  else
  {
    v24 = v35;
    v23 = v36;
    v25 = sub_19166B048();
    v38[0] = 0;
    v26 = [v21 createDirectoryAtURL:v25 withIntermediateDirectories:1 attributes:0 error:v38];

    if (!v26)
    {
      v29 = v38[0];
      sub_19166AFF8();

      swift_willThrow();

      (*(v24 + 8))(a1, v23);
      goto LABEL_7;
    }

    v27 = *(v24 + 8);
    v28 = v38[0];
    v27(a1, v23);
  }

LABEL_7:
  v30 = *MEMORY[0x1E69E9840];
  return v20;
}

unint64_t sub_1915E6918()
{
  result = qword_1EADAE808;
  if (!qword_1EADAE808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADAF3E0, &unk_1916721A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAE808);
  }

  return result;
}

uint64_t AXLongLivedEventLogger.deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC15AXCoreUtilities22AXLongLivedEventLogger_directory;
  v3 = sub_19166B088();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return v0;
}

uint64_t AXLongLivedEventLogger.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC15AXCoreUtilities22AXLongLivedEventLogger_directory;
  v3 = sub_19166B088();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

AXCoreUtilities::AXLongLivedEventLogger::LogLevel_optional __swiftcall AXLongLivedEventLogger.LogLevel.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_19166C278();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AXLongLivedEventLogger.LogLevel.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x475542454420;
  v3 = 0x474F4C2020;
  v4 = 0x4E52415720;
  if (v1 != 3)
  {
    v4 = 0x524F525245;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4F464E492020;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1915E6B98(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x4F464E492020;
    }

    else
    {
      v3 = 0x475542454420;
    }

    v2 = 0xE600000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
    if (a1 == 2)
    {
      v3 = 0x474F4C2020;
    }

    else if (a1 == 3)
    {
      v3 = 0x4E52415720;
    }

    else
    {
      v3 = 0x524F525245;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0x4F464E492020;
    }

    else
    {
      v7 = 0x475542454420;
    }

    v6 = 0xE600000000000000;
    if (v3 != v7)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v4 = 0x4E52415720;
    if (a2 != 3)
    {
      v4 = 0x524F525245;
    }

    if (a2 == 2)
    {
      v5 = 0x474F4C2020;
    }

    else
    {
      v5 = v4;
    }

    v6 = 0xE500000000000000;
    if (v3 != v5)
    {
      goto LABEL_25;
    }
  }

  if (v2 != v6)
  {
LABEL_25:
    v8 = sub_19166C5E8();
    goto LABEL_26;
  }

  v8 = 1;
LABEL_26:

  return v8 & 1;
}

uint64_t sub_1915E6CF8()
{
  v1 = *v0;
  sub_19166C778();
  sub_19166B828();

  return sub_19166C7B8();
}

uint64_t sub_1915E6DC8()
{
  *v0;
  *v0;
  *v0;
  sub_19166B828();
}

uint64_t sub_1915E6E84()
{
  v1 = *v0;
  sub_19166C778();
  sub_19166B828();

  return sub_19166C7B8();
}

void sub_1915E6F5C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x475542454420;
  v5 = 0x474F4C2020;
  v6 = 0x4E52415720;
  if (v2 != 3)
  {
    v6 = 0x524F525245;
  }

  if (v2 != 2)
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 0x4F464E492020;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1915E6FE8()
{
  v61 = sub_19166B008();
  v59 = *(v61 - 8);
  v1 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v61, v2);
  v58 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_19166B088();
  v62 = *(v4 - 8);
  v63 = v4;
  v5 = *(v62 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v54 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v57 = &v54 - v11;
  MEMORY[0x1EEE9AC00](v10, v12);
  v66 = &v54 - v13;
  v14 = sub_19166B3A8();
  v15 = *(v14 - 8);
  v16 = v15[8];
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_19166B3C8();
  v64 = *(v20 - 8);
  v65 = v20;
  v21 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v20, v22);
  v67 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_19166B158();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24, v27);
  v68 = &v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_19166B628();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29, v32);
  v34 = (&v54 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = v0;
  v35 = *(v0 + OBJC_IVAR____TtC15AXCoreUtilities22AXLongLivedEventLogger_queue);
  *v34 = v35;
  (*(v30 + 104))(v34, *MEMORY[0x1E69E8020], v29);
  v36 = v35;
  LOBYTE(v35) = sub_19166B638();
  result = (*(v30 + 8))(v34, v29);
  if (v35)
  {
    v55 = v25;
    v56 = v24;
    sub_19166B148();
    sub_19166B398();
    v38 = v15[13];
    v38(v19, *MEMORY[0x1E6969A48], v14);
    v39 = sub_19166B3B8();
    v40 = v15[1];
    v40(v19, v14);
    v38(v19, *MEMORY[0x1E6969A78], v14);
    v41 = sub_19166B3B8();
    v40(v19, v14);
    v38(v19, *MEMORY[0x1E6969A68], v14);
    v42 = sub_19166B3B8();
    v40(v19, v14);
    v69 = v42;
    v70 = sub_19166C3C8();
    v71 = v43;
    MEMORY[0x193AFC710](45, 0xE100000000000000);
    v69 = v41;
    v44 = sub_19166C3C8();
    MEMORY[0x193AFC710](v44);

    MEMORY[0x193AFC710](45, 0xE100000000000000);
    v69 = v39;
    v45 = sub_19166C3C8();
    MEMORY[0x193AFC710](v45);

    MEMORY[0x193AFC710](45, 0xE100000000000000);
    MEMORY[0x193AFC710](*(v60 + 16), *(v60 + 24));
    MEMORY[0x193AFC710](1735355438, 0xE400000000000000);
    v47 = v58;
    v46 = v59;
    v48 = v61;
    (*(v59 + 104))(v58, *MEMORY[0x1E6968F70], v61);
    sub_1915E5F84();
    v49 = v66;
    sub_19166B078();
    (*(v46 + 8))(v47, v48);

    sub_1915DAA60(0, &qword_1EADAE4C8, 0x1E696AC00);
    v51 = v62;
    v50 = v63;
    v52 = v57;
    (*(v62 + 16))(v57, v49, v63);
    v53 = sub_1915E7990(v52);
    [v53 seekToEndOfFile];
    (*(v51 + 8))(v49, v50);
    (*(v64 + 8))(v67, v65);
    (*(v55 + 8))(v68, v56);
    return v53;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1915E7990(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = sub_19166B048();
  v12[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:v12];

  v4 = v12[0];
  if (v3)
  {
    v5 = sub_19166B088();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v12[0];
    sub_19166AFF8();

    swift_willThrow();
    v9 = sub_19166B088();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t AXLongLivedEventLogger.write(_:terminator:prependDate:prependLevel:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, char a5, unsigned __int8 *a6)
{
  v49 = a2;
  v51 = a3;
  v52 = a4;
  v50 = a1;
  v8 = sub_19166B798();
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_19166B118();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_19166B158();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a6;
  v26 = 0xE000000000000000;
  aBlock = 0;
  v60 = 0xE000000000000000;
  if (a5)
  {
    v27 = sub_19166B148();
    MEMORY[0x193AFBCB0](v27);
    sub_1915EACA0(&qword_1EADAE628, MEMORY[0x1E69693A0]);
    sub_19166B138();
    (*(v14 + 8))(v18, v13);
    (*(v20 + 8))(v24, v19);
    v57 = v55;
    v58 = v56;
    MEMORY[0x193AFC710](8250, 0xE200000000000000);
    v28 = v57;
    v26 = v58;
  }

  else
  {
    v28 = 0;
  }

  MEMORY[0x193AFC710](v28, v26);

  v29 = 0xE000000000000000;
  if (v25 == 5)
  {
    v30 = 0;
  }

  else
  {
    v31 = 0x475542454420;
    v57 = 0;
    v58 = 0xE000000000000000;
    v32 = 0x474F4C2020;
    v33 = 0x4E52415720;
    if (v25 != 3)
    {
      v33 = 0x524F525245;
    }

    if (v25 != 2)
    {
      v32 = v33;
    }

    if (v25)
    {
      v31 = 0x4F464E492020;
    }

    if (v25 <= 1)
    {
      v34 = v31;
    }

    else
    {
      v34 = v32;
    }

    if (v25 <= 1)
    {
      v35 = 0xE600000000000000;
    }

    else
    {
      v35 = 0xE500000000000000;
    }

    MEMORY[0x193AFC710](v34, v35);

    MEMORY[0x193AFC710](8250, 0xE200000000000000);
    v30 = v57;
    v29 = v58;
  }

  MEMORY[0x193AFC710](v30, v29);

  v37 = v50(v36);
  MEMORY[0x193AFC710](v37);

  MEMORY[0x193AFC710](v51, v52);
  sub_19166B788();
  v38 = sub_19166B758();
  v40 = v39;

  result = (*(v53 + 8))(v12, v54);
  if (v40 >> 60 != 15)
  {
    v42 = v48;
    v43 = *(v48 + OBJC_IVAR____TtC15AXCoreUtilities22AXLongLivedEventLogger_queue);
    v44 = swift_allocObject();
    v44[2] = v42;
    v44[3] = v38;
    v44[4] = v40;
    v45 = swift_allocObject();
    *(v45 + 16) = sub_1915E80F8;
    *(v45 + 24) = v44;
    v63 = sub_1915E4118;
    v64 = v45;
    aBlock = MEMORY[0x1E69E9820];
    v60 = 1107296256;
    v61 = sub_1915E8104;
    v62 = &block_descriptor_0;
    v46 = _Block_copy(&aBlock);

    sub_1915E8144(v38, v40);

    dispatch_sync(v43, v46);
    sub_1915E8158(v38, v40);
    _Block_release(v46);
    LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

    if (v43)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1915E8004(uint64_t a1, uint64_t a2, void *a3)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v4 = sub_1915E6FE8();
  if (v4)
  {
    v5 = v4;
    v10[1] = a3;
    sub_1915EAD28();
    sub_19166BD58();
    v10[0] = 0;
    if ([v5 closeAndReturnError_])
    {
      v6 = v10[0];
    }

    else
    {
      v7 = v10[0];
      v8 = sub_19166AFF8();

      swift_willThrow();
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1915E8144(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1915DCB54(a1, a2);
  }

  return a1;
}

uint64_t sub_1915E8158(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1915DCBA8(a1, a2);
  }

  return a1;
}

uint64_t AXLongLivedEventLogger.discardLogs(olderThan:)(uint64_t a1)
{
  v3 = sub_19166B158();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v7 = *(v1 + OBJC_IVAR____TtC15AXCoreUtilities22AXLongLivedEventLogger_queue);
  (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  (*(v4 + 32))(v9 + v8, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1915EA8DC;
  *(v10 + 24) = v9;
  aBlock[4] = sub_1915EAD94;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1915E8104;
  aBlock[3] = &block_descriptor_13;
  v11 = _Block_copy(aBlock);

  dispatch_sync(v7, v11);
  _Block_release(v11);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

void sub_1915E84F4(uint64_t a1, uint64_t a2)
{
  v64 = a2;
  v75[1] = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF528, &qword_191672640);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v70 = &v60 - v6;
  v7 = sub_19166B158();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v68 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_19166B088();
  v74 = *(v12 - 8);
  v13 = *(v74 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v65 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = &v60 - v19;
  MEMORY[0x1EEE9AC00](v18, v21);
  v72 = &v60 - v22;
  v23 = [objc_opt_self() defaultManager];
  v71 = a1;
  v24 = sub_19166B048();
  v75[0] = 0;
  v62 = v23;
  v25 = [v23 contentsOfDirectoryAtURL:v24 includingPropertiesForKeys:0 options:0 error:v75];

  v26 = v75[0];
  v73 = v12;
  if (!v25)
  {
    v42 = v75[0];
    v43 = sub_19166AFF8();

    swift_willThrow();
    v32 = MEMORY[0x1E69E7CC0];
    v30 = v12;
    v44 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v44)
    {
      goto LABEL_31;
    }

    goto LABEL_20;
  }

  v60 = v8;
  v27 = sub_19166BA08();
  v28 = v26;

  v69 = *(v27 + 16);
  if (v69)
  {
    v29 = 0;
    v30 = v73;
    v66 = (v74 + 16);
    v61 = (v74 + 8);
    v31 = (v74 + 32);
    v32 = MEMORY[0x1E69E7CC0];
    v63 = v20;
    v67 = v7;
    while (1)
    {
      if (v29 >= *(v27 + 16))
      {
        __break(1u);
      }

      v33 = (*(v74 + 80) + 32) & ~*(v74 + 80);
      v34 = *(v74 + 72);
      (*(v74 + 16))(v72, v27 + v33 + v34 * v29, v30);
      if (sub_19166B018() == 6778732 && v35 == 0xE300000000000000)
      {
        break;
      }

      v36 = sub_19166C5E8();

      if (v36)
      {
        goto LABEL_11;
      }

      v30 = v73;
      (*v61)(v72, v73);
LABEL_5:
      ++v29;
      v7 = v67;
      if (v69 == v29)
      {
        goto LABEL_19;
      }
    }

LABEL_11:
    v37 = *v31;
    v30 = v73;
    (*v31)(v20, v72, v73);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75[0] = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1915F4E8C(0, v32[2] + 1, 1);
      v30 = v73;
      v32 = v75[0];
    }

    v40 = v32[2];
    v39 = v32[3];
    if (v40 >= v39 >> 1)
    {
      sub_1915F4E8C(v39 > 1, v40 + 1, 1);
      v30 = v73;
      v32 = v75[0];
    }

    v32[2] = v40 + 1;
    v41 = v32 + v33 + v40 * v34;
    v20 = v63;
    v37(v41, v63, v30);
    goto LABEL_5;
  }

  v32 = MEMORY[0x1E69E7CC0];
  v30 = v73;
LABEL_19:

  v8 = v60;
  v44 = v32[2];
  if (v44)
  {
LABEL_20:
    v72 = *(v74 + 16);
    v45 = *(v74 + 80);
    v61 = v32;
    v46 = v32 + ((v45 + 32) & ~v45);
    v47 = (v8 + 48);
    v69 = *(v74 + 72);
    v66 = (v8 + 32);
    v63 = (v8 + 8);
    v74 += 16;
    v48 = (v74 - 8);
    v49 = v65;
    (v72)(v65, v46, v30);
    while (1)
    {
      _s15AXCoreUtilities12AXCTLSupportO4PathV4pathSSvg_0();
      v50 = v70;
      sub_1915E8BE4(v70);

      if ((*v47)(v50, 1, v7) == 1)
      {
        (*v48)(v49, v30);
        sub_1915EAC38(v50);
      }

      else
      {
        v51 = v68;
        (*v66)(v68, v50, v7);
        if (sub_19166B128())
        {
          v52 = v65;
          v53 = sub_19166B048();
          v75[0] = 0;
          v54 = [v62 removeItemAtURL:v53 error:v75];

          if (v54)
          {
            v55 = *v63;
            v56 = v75[0];
            v55(v68, v7);
          }

          else
          {
            v57 = v75[0];
            v58 = sub_19166AFF8();

            swift_willThrow();
            (*v63)(v68, v7);
          }

          v30 = v73;
          (*v48)(v52, v73);
          v49 = v52;
        }

        else
        {
          (*v63)(v51, v7);
          v49 = v65;
          v30 = v73;
          (*v48)(v65, v73);
        }
      }

      v46 += v69;
      if (!--v44)
      {
        break;
      }

      (v72)(v49, v46, v30);
    }
  }

LABEL_31:

  v59 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1915E8BE4@<X0>(uint64_t a1@<X8>)
{
  v24[4] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF528, &qword_191672640);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v24[-1] - v5;
  v7 = [objc_opt_self() defaultManager];
  v8 = sub_19166B718();
  v24[0] = 0;
  v9 = [v7 attributesOfItemAtPath:v8 error:v24];

  v10 = v24[0];
  if (!v9)
  {
    v19 = v24[0];
    v20 = sub_19166AFF8();

    swift_willThrow();
    goto LABEL_9;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_1915EACA0(&qword_1EADAE4C0, type metadata accessor for FileAttributeKey);
  v11 = sub_19166B678();
  v12 = v10;

  if (!v11)
  {
LABEL_9:

    v15 = sub_19166B158();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    goto LABEL_10;
  }

  if (!*(v11 + 16) || (v13 = sub_1915DB410(*MEMORY[0x1E696A308]), (v14 & 1) == 0))
  {

    goto LABEL_9;
  }

  sub_1915DFD18(*(v11 + 56) + 32 * v13, v24);

  v15 = sub_19166B158();
  v16 = swift_dynamicCast();
  v17 = *(v15 - 8);
  v18 = *(v17 + 56);
  v18(v6, v16 ^ 1u, 1, v15);
  if ((*(v17 + 48))(v6, 1, v15) != 1)
  {
    (*(v17 + 32))(a1, v6, v15);
    result = (v18)(a1, 0, 1, v15);
    goto LABEL_11;
  }

LABEL_10:
  sub_1915EAC38(v6);
  sub_19166B158();
  result = (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
LABEL_11:
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1915E8F50(uint64_t a1, uint64_t a2, char a3, unsigned __int8 *a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v50 = a7;
  v51 = a6;
  v49 = a5;
  v52 = a1;
  v53 = a2;
  v9 = sub_19166B798();
  v54 = *(v9 - 8);
  v55 = v9;
  v10 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_19166B118();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_19166B158();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a4;
  v27 = 0xE000000000000000;
  aBlock = 0;
  v61 = 0xE000000000000000;
  if (a3)
  {
    v28 = sub_19166B148();
    MEMORY[0x193AFBCB0](v28);
    sub_1915EACA0(&qword_1EADAE628, MEMORY[0x1E69693A0]);
    sub_19166B138();
    (*(v15 + 8))(v19, v14);
    (*(v21 + 8))(v25, v20);
    v58 = v56;
    v59 = v57;
    MEMORY[0x193AFC710](8250, 0xE200000000000000);
    v29 = v58;
    v27 = v59;
  }

  else
  {
    v29 = 0;
  }

  MEMORY[0x193AFC710](v29, v27);

  v30 = 0xE000000000000000;
  if (v26 == 5)
  {
    v31 = 0;
  }

  else
  {
    v32 = 0x475542454420;
    v58 = 0;
    v59 = 0xE000000000000000;
    v33 = 0x474F4C2020;
    v34 = 0x4E52415720;
    if (v26 != 3)
    {
      v34 = 0x524F525245;
    }

    if (v26 != 2)
    {
      v33 = v34;
    }

    if (v26)
    {
      v32 = 0x4F464E492020;
    }

    if (v26 <= 1)
    {
      v35 = v32;
    }

    else
    {
      v35 = v33;
    }

    if (v26 <= 1)
    {
      v36 = 0xE600000000000000;
    }

    else
    {
      v36 = 0xE500000000000000;
    }

    MEMORY[0x193AFC710](v35, v36);

    MEMORY[0x193AFC710](8250, 0xE200000000000000);
    v31 = v58;
    v30 = v59;
  }

  MEMORY[0x193AFC710](v31, v30);

  v38 = v51(v37);
  MEMORY[0x193AFC710](v38);

  MEMORY[0x193AFC710](v52, v53);
  sub_19166B788();
  v39 = sub_19166B758();
  v41 = v40;

  result = (*(v54 + 8))(v13, v55);
  if (v41 >> 60 != 15)
  {
    v43 = v49;
    v44 = *(v49 + OBJC_IVAR____TtC15AXCoreUtilities22AXLongLivedEventLogger_queue);
    v45 = swift_allocObject();
    v45[2] = v43;
    v45[3] = v39;
    v45[4] = v41;
    v46 = swift_allocObject();
    *(v46 + 16) = sub_1915EADB0;
    *(v46 + 24) = v45;
    v64 = sub_1915EAD94;
    v65 = v46;
    aBlock = MEMORY[0x1E69E9820];
    v61 = 1107296256;
    v62 = sub_1915E8104;
    v63 = &block_descriptor_74;
    v47 = _Block_copy(&aBlock);

    sub_1915E8144(v39, v41);

    dispatch_sync(v44, v47);
    sub_1915E8158(v39, v41);
    _Block_release(v47);
    LOBYTE(v44) = swift_isEscapingClosureAtFileLocation();

    if (v44)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1915E946C(uint64_t a1, uint64_t a2, char a3, unsigned __int8 *a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v50 = a7;
  v51 = a6;
  v49 = a5;
  v52 = a1;
  v53 = a2;
  v9 = sub_19166B798();
  v54 = *(v9 - 8);
  v55 = v9;
  v10 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_19166B118();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_19166B158();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a4;
  v27 = 0xE000000000000000;
  aBlock = 0;
  v61 = 0xE000000000000000;
  if (a3)
  {
    v28 = sub_19166B148();
    MEMORY[0x193AFBCB0](v28);
    sub_1915EACA0(&qword_1EADAE628, MEMORY[0x1E69693A0]);
    sub_19166B138();
    (*(v15 + 8))(v19, v14);
    (*(v21 + 8))(v25, v20);
    v58 = v56;
    v59 = v57;
    MEMORY[0x193AFC710](8250, 0xE200000000000000);
    v29 = v58;
    v27 = v59;
  }

  else
  {
    v29 = 0;
  }

  MEMORY[0x193AFC710](v29, v27);

  v30 = 0xE000000000000000;
  if (v26 == 5)
  {
    v31 = 0;
  }

  else
  {
    v32 = 0x475542454420;
    v58 = 0;
    v59 = 0xE000000000000000;
    v33 = 0x474F4C2020;
    v34 = 0x4E52415720;
    if (v26 != 3)
    {
      v34 = 0x524F525245;
    }

    if (v26 != 2)
    {
      v33 = v34;
    }

    if (v26)
    {
      v32 = 0x4F464E492020;
    }

    if (v26 <= 1)
    {
      v35 = v32;
    }

    else
    {
      v35 = v33;
    }

    if (v26 <= 1)
    {
      v36 = 0xE600000000000000;
    }

    else
    {
      v36 = 0xE500000000000000;
    }

    MEMORY[0x193AFC710](v35, v36);

    MEMORY[0x193AFC710](8250, 0xE200000000000000);
    v31 = v58;
    v30 = v59;
  }

  MEMORY[0x193AFC710](v31, v30);

  v38 = v51(v37);
  MEMORY[0x193AFC710](v38);

  MEMORY[0x193AFC710](v52, v53);
  sub_19166B788();
  v39 = sub_19166B758();
  v41 = v40;

  result = (*(v54 + 8))(v13, v55);
  if (v41 >> 60 != 15)
  {
    v43 = v49;
    v44 = *(v49 + OBJC_IVAR____TtC15AXCoreUtilities22AXLongLivedEventLogger_queue);
    v45 = swift_allocObject();
    v45[2] = v43;
    v45[3] = v39;
    v45[4] = v41;
    v46 = swift_allocObject();
    *(v46 + 16) = sub_1915EADB0;
    *(v46 + 24) = v45;
    v64 = sub_1915EAD94;
    v65 = v46;
    aBlock = MEMORY[0x1E69E9820];
    v61 = 1107296256;
    v62 = sub_1915E8104;
    v63 = &block_descriptor_63;
    v47 = _Block_copy(&aBlock);

    sub_1915E8144(v39, v41);

    dispatch_sync(v44, v47);
    sub_1915E8158(v39, v41);
    _Block_release(v47);
    LOBYTE(v44) = swift_isEscapingClosureAtFileLocation();

    if (v44)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1915E9988(uint64_t a1, uint64_t a2, char a3, unsigned __int8 *a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v50 = a7;
  v51 = a6;
  v49 = a5;
  v52 = a1;
  v53 = a2;
  v9 = sub_19166B798();
  v54 = *(v9 - 8);
  v55 = v9;
  v10 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_19166B118();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_19166B158();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a4;
  v27 = 0xE000000000000000;
  aBlock = 0;
  v61 = 0xE000000000000000;
  if (a3)
  {
    v28 = sub_19166B148();
    MEMORY[0x193AFBCB0](v28);
    sub_1915EACA0(&qword_1EADAE628, MEMORY[0x1E69693A0]);
    sub_19166B138();
    (*(v15 + 8))(v19, v14);
    (*(v21 + 8))(v25, v20);
    v58 = v56;
    v59 = v57;
    MEMORY[0x193AFC710](8250, 0xE200000000000000);
    v29 = v58;
    v27 = v59;
  }

  else
  {
    v29 = 0;
  }

  MEMORY[0x193AFC710](v29, v27);

  v30 = 0xE000000000000000;
  if (v26 == 5)
  {
    v31 = 0;
  }

  else
  {
    v32 = 0x475542454420;
    v58 = 0;
    v59 = 0xE000000000000000;
    v33 = 0x474F4C2020;
    v34 = 0x4E52415720;
    if (v26 != 3)
    {
      v34 = 0x524F525245;
    }

    if (v26 != 2)
    {
      v33 = v34;
    }

    if (v26)
    {
      v32 = 0x4F464E492020;
    }

    if (v26 <= 1)
    {
      v35 = v32;
    }

    else
    {
      v35 = v33;
    }

    if (v26 <= 1)
    {
      v36 = 0xE600000000000000;
    }

    else
    {
      v36 = 0xE500000000000000;
    }

    MEMORY[0x193AFC710](v35, v36);

    MEMORY[0x193AFC710](8250, 0xE200000000000000);
    v31 = v58;
    v30 = v59;
  }

  MEMORY[0x193AFC710](v31, v30);

  v38 = v51(v37);
  MEMORY[0x193AFC710](v38);

  MEMORY[0x193AFC710](v52, v53);
  sub_19166B788();
  v39 = sub_19166B758();
  v41 = v40;

  result = (*(v54 + 8))(v13, v55);
  if (v41 >> 60 != 15)
  {
    v43 = v49;
    v44 = *(v49 + OBJC_IVAR____TtC15AXCoreUtilities22AXLongLivedEventLogger_queue);
    v45 = swift_allocObject();
    v45[2] = v43;
    v45[3] = v39;
    v45[4] = v41;
    v46 = swift_allocObject();
    *(v46 + 16) = sub_1915EADB0;
    *(v46 + 24) = v45;
    v64 = sub_1915EAD94;
    v65 = v46;
    aBlock = MEMORY[0x1E69E9820];
    v61 = 1107296256;
    v62 = sub_1915E8104;
    v63 = &block_descriptor_52;
    v47 = _Block_copy(&aBlock);

    sub_1915E8144(v39, v41);

    dispatch_sync(v44, v47);
    sub_1915E8158(v39, v41);
    _Block_release(v47);
    LOBYTE(v44) = swift_isEscapingClosureAtFileLocation();

    if (v44)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1915E9EA4(uint64_t a1, uint64_t a2, char a3, unsigned __int8 *a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v50 = a7;
  v51 = a6;
  v49 = a5;
  v52 = a1;
  v53 = a2;
  v9 = sub_19166B798();
  v54 = *(v9 - 8);
  v55 = v9;
  v10 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_19166B118();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_19166B158();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a4;
  v27 = 0xE000000000000000;
  aBlock = 0;
  v61 = 0xE000000000000000;
  if (a3)
  {
    v28 = sub_19166B148();
    MEMORY[0x193AFBCB0](v28);
    sub_1915EACA0(&qword_1EADAE628, MEMORY[0x1E69693A0]);
    sub_19166B138();
    (*(v15 + 8))(v19, v14);
    (*(v21 + 8))(v25, v20);
    v58 = v56;
    v59 = v57;
    MEMORY[0x193AFC710](8250, 0xE200000000000000);
    v29 = v58;
    v27 = v59;
  }

  else
  {
    v29 = 0;
  }

  MEMORY[0x193AFC710](v29, v27);

  v30 = 0xE000000000000000;
  if (v26 == 5)
  {
    v31 = 0;
  }

  else
  {
    v32 = 0x475542454420;
    v58 = 0;
    v59 = 0xE000000000000000;
    v33 = 0x474F4C2020;
    v34 = 0x4E52415720;
    if (v26 != 3)
    {
      v34 = 0x524F525245;
    }

    if (v26 != 2)
    {
      v33 = v34;
    }

    if (v26)
    {
      v32 = 0x4F464E492020;
    }

    if (v26 <= 1)
    {
      v35 = v32;
    }

    else
    {
      v35 = v33;
    }

    if (v26 <= 1)
    {
      v36 = 0xE600000000000000;
    }

    else
    {
      v36 = 0xE500000000000000;
    }

    MEMORY[0x193AFC710](v35, v36);

    MEMORY[0x193AFC710](8250, 0xE200000000000000);
    v31 = v58;
    v30 = v59;
  }

  MEMORY[0x193AFC710](v31, v30);

  v38 = v51(v37);
  MEMORY[0x193AFC710](v38);

  MEMORY[0x193AFC710](v52, v53);
  sub_19166B788();
  v39 = sub_19166B758();
  v41 = v40;

  result = (*(v54 + 8))(v13, v55);
  if (v41 >> 60 != 15)
  {
    v43 = v49;
    v44 = *(v49 + OBJC_IVAR____TtC15AXCoreUtilities22AXLongLivedEventLogger_queue);
    v45 = swift_allocObject();
    v45[2] = v43;
    v45[3] = v39;
    v45[4] = v41;
    v46 = swift_allocObject();
    *(v46 + 16) = sub_1915EADB0;
    *(v46 + 24) = v45;
    v64 = sub_1915EAD94;
    v65 = v46;
    aBlock = MEMORY[0x1E69E9820];
    v61 = 1107296256;
    v62 = sub_1915E8104;
    v63 = &block_descriptor_41;
    v47 = _Block_copy(&aBlock);

    sub_1915E8144(v39, v41);

    dispatch_sync(v44, v47);
    sub_1915E8158(v39, v41);
    _Block_release(v47);
    LOBYTE(v44) = swift_isEscapingClosureAtFileLocation();

    if (v44)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1915EA3C0(uint64_t a1, uint64_t a2, char a3, unsigned __int8 *a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v50 = a7;
  v51 = a6;
  v49 = a5;
  v52 = a1;
  v53 = a2;
  v9 = sub_19166B798();
  v54 = *(v9 - 8);
  v55 = v9;
  v10 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_19166B118();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_19166B158();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a4;
  v27 = 0xE000000000000000;
  aBlock = 0;
  v61 = 0xE000000000000000;
  if (a3)
  {
    v28 = sub_19166B148();
    MEMORY[0x193AFBCB0](v28);
    sub_1915EACA0(&qword_1EADAE628, MEMORY[0x1E69693A0]);
    sub_19166B138();
    (*(v15 + 8))(v19, v14);
    (*(v21 + 8))(v25, v20);
    v58 = v56;
    v59 = v57;
    MEMORY[0x193AFC710](8250, 0xE200000000000000);
    v29 = v58;
    v27 = v59;
  }

  else
  {
    v29 = 0;
  }

  MEMORY[0x193AFC710](v29, v27);

  v30 = 0xE000000000000000;
  if (v26 == 5)
  {
    v31 = 0;
  }

  else
  {
    v32 = 0x475542454420;
    v58 = 0;
    v59 = 0xE000000000000000;
    v33 = 0x474F4C2020;
    v34 = 0x4E52415720;
    if (v26 != 3)
    {
      v34 = 0x524F525245;
    }

    if (v26 != 2)
    {
      v33 = v34;
    }

    if (v26)
    {
      v32 = 0x4F464E492020;
    }

    if (v26 <= 1)
    {
      v35 = v32;
    }

    else
    {
      v35 = v33;
    }

    if (v26 <= 1)
    {
      v36 = 0xE600000000000000;
    }

    else
    {
      v36 = 0xE500000000000000;
    }

    MEMORY[0x193AFC710](v35, v36);

    MEMORY[0x193AFC710](8250, 0xE200000000000000);
    v31 = v58;
    v30 = v59;
  }

  MEMORY[0x193AFC710](v31, v30);

  v38 = v51(v37);
  MEMORY[0x193AFC710](v38);

  MEMORY[0x193AFC710](v52, v53);
  sub_19166B788();
  v39 = sub_19166B758();
  v41 = v40;

  result = (*(v54 + 8))(v13, v55);
  if (v41 >> 60 != 15)
  {
    v43 = v49;
    v44 = *(v49 + OBJC_IVAR____TtC15AXCoreUtilities22AXLongLivedEventLogger_queue);
    v45 = swift_allocObject();
    v45[2] = v43;
    v45[3] = v39;
    v45[4] = v41;
    v46 = swift_allocObject();
    *(v46 + 16) = sub_1915EADB0;
    *(v46 + 24) = v45;
    v64 = sub_1915EAD94;
    v65 = v46;
    aBlock = MEMORY[0x1E69E9820];
    v61 = 1107296256;
    v62 = sub_1915E8104;
    v63 = &block_descriptor_30;
    v47 = _Block_copy(&aBlock);

    sub_1915E8144(v39, v41);

    dispatch_sync(v44, v47);
    sub_1915E8158(v39, v41);
    _Block_release(v47);
    LOBYTE(v44) = swift_isEscapingClosureAtFileLocation();

    if (v44)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1915EA8DC()
{
  v1 = *(sub_19166B158() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1915E84F4(v2, v3);
}

unint64_t sub_1915EA944()
{
  result = qword_1EADAF520;
  if (!qword_1EADAF520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAF520);
  }

  return result;
}

uint64_t type metadata accessor for AXLongLivedEventLogger()
{
  result = qword_1EADAE590;
  if (!qword_1EADAE590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1915EA9EC()
{
  result = sub_19166B088();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AXLongLivedEventLogger.LogLevel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AXLongLivedEventLogger.LogLevel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1915EAC38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF528, &qword_191672640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1915EACA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm()
{
  v1 = v0[2];

  sub_1915DCBA8(v0[3], v0[4]);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

unint64_t sub_1915EAD28()
{
  result = qword_1EADAE630;
  if (!qword_1EADAE630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAE630);
  }

  return result;
}

uint64_t sub_1915EADB4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t AXActor.unownedExecutor.getter(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 16))() + 16);
  v3 = sub_19166BF08();

  return v3;
}

uint64_t AXExecutor.__allocating_init(queue:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t AXExecutor.__allocating_init(_:qos:attributes:autoreleaseFrequency:targetQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a2;
  v39 = a6;
  v34 = a4;
  v35 = a5;
  v37 = a1;
  v36 = sub_19166BDB8();
  v7 = *(v36 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v36, v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_19166BEB8();
  v13 = *(v12 - 8);
  v14 = v13;
  v30 = v12;
  v31 = v13;
  v15 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v16);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_19166B5B8();
  v32 = v19;
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = swift_allocObject();
  sub_1915EB418();
  (*(v20 + 16))(v24, a3, v19);
  v25 = v34;
  (*(v14 + 16))(v18, v34, v12);
  v27 = v35;
  v26 = v36;
  (*(v7 + 16))(v11, v35, v36);
  v28 = sub_19166BEC8();
  (*(v7 + 8))(v27, v26);
  (*(v31 + 8))(v25, v30);
  (*(v20 + 8))(a3, v32);
  result = v33;
  *(v33 + 16) = v28;
  return result;
}

uint64_t AXExecutor.init(_:qos:attributes:autoreleaseFrequency:targetQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a6;
  v34 = a5;
  v36 = a1;
  v37 = a2;
  v35 = sub_19166BDB8();
  v8 = *(v35 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v35, v10);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_19166BEB8();
  v32 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_19166B5B8();
  v33 = v19;
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[1] = sub_1915EB418();
  (*(v20 + 16))(v24, a3, v19);
  (*(v14 + 16))(v18, a4, v13);
  v25 = v8;
  v26 = *(v8 + 16);
  v28 = v34;
  v27 = v35;
  v26(v12, v34, v35);
  v29 = sub_19166BEC8();
  (*(v25 + 8))(v28, v27);
  (*(v14 + 8))(a4, v32);
  (*(v20 + 8))(a3, v33);
  result = v39;
  *(v39 + 16) = v29;
  return result;
}

unint64_t sub_1915EB418()
{
  result = qword_1EADAF530;
  if (!qword_1EADAF530)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADAF530);
  }

  return result;
}

uint64_t AXExecutor.enqueue(_:)()
{
  v1 = sub_19166B588();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_19166B5B8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_19166BB08();
  v14 = *(v0 + 16);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v0;
  aBlock[4] = sub_1915EB714;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1915EADB4;
  aBlock[3] = &block_descriptor_1;
  v16 = _Block_copy(aBlock);

  sub_19166B598();
  v18[1] = MEMORY[0x1E69E7CC0];
  sub_1915EB8CC(&qword_1EADAE6B0, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D8, &qword_191676060);
  sub_1915EB79C();
  sub_19166BFE8();
  MEMORY[0x193AFCC80](0, v12, v6, v16);
  _Block_release(v16);
  (*(v2 + 8))(v6, v1);
  (*(v8 + 8))(v12, v7);
}

uint64_t sub_1915EB714(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = sub_1915EB8CC(&qword_1EADAF538, a2, type metadata accessor for AXExecutor);

  return MEMORY[0x1EEE6DF20](v3, v4, v5);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1915EB79C()
{
  result = qword_1EADAE6A0;
  if (!qword_1EADAE6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADAF3D8, &qword_191676060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAE6A0);
  }

  return result;
}

uint64_t AXExecutor.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1915EB8CC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1915EB914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = sub_1915EB8CC(&qword_1EADAF540, a2, type metadata accessor for AXExecutor);

  return a4(a1, v6, v7);
}

uint64_t get_enum_tag_for_layout_string_15AXCoreUtilities12AXDataHolderO(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1915EBB5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 8))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1915EBBB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1915EBC18(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 3)) | 0xC000000000000000;
  }

  return result;
}

unint64_t sub_1915EBC54(uint64_t a1)
{
  sub_1915EED78(a1, &v49);
  if (*(&v50 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF560, &unk_191672868);
    if (swift_dynamicCast())
    {
      v2 = *(v47[0] + 16);
      if (v2)
      {
        v48 = MEMORY[0x1E69E7CC0];
        sub_1915F4E2C(0, v2, 0);
        v3 = v48;
        v4 = v47[0] + 32;
        do
        {
          sub_1915E1F90(v4, &v49);
          sub_1915E1F90(&v49, v47);
          v5 = sub_1915EBC54(v47);
          sub_1915E0AF8(&v49);
          v48 = v3;
          v7 = *(v3 + 16);
          v6 = *(v3 + 24);
          if (v7 >= v6 >> 1)
          {
            sub_1915F4E2C((v6 > 1), v7 + 1, 1);
            v3 = v48;
          }

          *(v3 + 16) = v7 + 1;
          *(v3 + 8 * v7 + 32) = v5;
          v4 += 40;
          --v2;
        }

        while (v2);
        sub_1915EEDE8(a1);
      }

      else
      {

        sub_1915EEDE8(a1);
        v3 = MEMORY[0x1E69E7CC0];
      }

      result = swift_allocObject();
      *(result + 16) = v3;
      return result;
    }
  }

  else
  {
    sub_1915EEDE8(&v49);
  }

  sub_1915EED78(a1, &v49);
  if (!*(&v50 + 1))
  {
    sub_1915EEDE8(&v49);
LABEL_33:
    v38 = *(a1 + 16);
    v49 = *a1;
    v50 = v38;
    v51 = *(a1 + 32);
    if (*(&v38 + 1))
    {
      v39 = swift_allocObject();
      v40 = *(a1 + 16);
      *(v39 + 16) = *a1;
      *(v39 + 32) = v40;
      *(v39 + 48) = *(a1 + 32);
      return v39 | 0x8000000000000000;
    }

    else
    {
      sub_1915EEDE8(&v49);
      return 0xC000000000000000;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF418, &qword_191672240);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_33;
  }

  v43 = a1;
  v8 = sub_1916533B8(MEMORY[0x1E69E7CC0]);
  v9 = 0;
  v44 = v47[0];
  v10 = 1 << *(v47[0] + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v47[0] + 64;
  v13 = v11 & *(v47[0] + 64);
  v14 = (v10 + 63) >> 6;
  if (v13)
  {
    goto LABEL_17;
  }

LABEL_18:
  while (1)
  {
    v18 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v18 >= v14)
    {
      goto LABEL_35;
    }

    v13 = *(v12 + 8 * v18);
    ++v9;
    if (v13)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v13)) | (v18 << 6);
        v20 = (*(v44 + 48) + 16 * v19);
        v22 = *v20;
        v21 = v20[1];
        sub_1915E1F90(*(v44 + 56) + 40 * v19, &v49);
        v45 = v49;
        v46 = v50;
        v23 = v51;

        if (!v21)
        {
          break;
        }

        v49 = v45;
        v50 = v46;
        v51 = v23;
        v24 = sub_1915EBC54(&v49);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v49 = v8;
        v26 = sub_1915DB0E4(v22, v21);
        v28 = v8[2];
        v29 = (v27 & 1) == 0;
        v30 = __OFADD__(v28, v29);
        v31 = v28 + v29;
        if (v30)
        {
          goto LABEL_40;
        }

        v32 = v27;
        if (v8[3] >= v31)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v37 = v26;
            sub_191647F1C();
            v26 = v37;
          }
        }

        else
        {
          sub_191645948(v31, isUniquelyReferenced_nonNull_native);
          v26 = sub_1915DB0E4(v22, v21);
          if ((v32 & 1) != (v33 & 1))
          {
            goto LABEL_42;
          }
        }

        v13 &= v13 - 1;
        if (v32)
        {
          v15 = v26;

          v8 = v49;
          v16 = *(v49 + 56);
          v17 = *(v16 + 8 * v15);
          *(v16 + 8 * v15) = v24;

          v9 = v18;
          if (!v13)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v8 = v49;
          *(v49 + 8 * (v26 >> 6) + 64) |= 1 << v26;
          v34 = (v8[6] + 16 * v26);
          *v34 = v22;
          v34[1] = v21;
          *(v8[7] + 8 * v26) = v24;
          v35 = v8[2];
          v30 = __OFADD__(v35, 1);
          v36 = v35 + 1;
          if (v30)
          {
            goto LABEL_41;
          }

          v8[2] = v36;
          v9 = v18;
          if (!v13)
          {
            goto LABEL_18;
          }
        }

LABEL_17:
        v18 = v9;
      }

LABEL_35:
      sub_1915EEDE8(v43);

      v42 = swift_allocObject();
      *(v42 + 16) = v8;
      return v42 | 0x4000000000000000;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = sub_19166C6F8();
  __break(1u);
  return result;
}

unint64_t sub_1915EC0B8@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result >> 62;
  if ((result >> 62) > 1)
  {
    if (v2 == 2)
    {
      v13 = (result & 0x3FFFFFFFFFFFFFFFLL) + 16;

      return sub_1915E1F90(v13, a2);
    }

    else
    {
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }
  }

  else if (v2)
  {
    v14 = *((result & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

    v15 = sub_191652FC8(MEMORY[0x1E69E7CC0]);
    v16 = 0;
    v17 = v14 + 64;
    v45 = v14 + 64;
    v46 = v14;
    v18 = 1 << *(v14 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v14 + 64);
    v21 = (v18 + 63) >> 6;
    while (v20)
    {
      v23 = v16;
LABEL_23:
      v24 = __clz(__rbit64(v20)) | (v23 << 6);
      v25 = (*(v46 + 48) + 16 * v24);
      v27 = *v25;
      v26 = v25[1];
      v28 = *(*(v46 + 56) + 8 * v24);

      sub_1915EC0B8(&v47, v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4A8, &qword_191672420);
      sub_1915EEC14(&qword_1EADAE638, &qword_1EADAF4A8, &qword_191672420);
      sub_19166C058();
      v47 = v50;
      v48 = v51;
      v49 = v52;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = sub_1915DB0E4(v27, v26);
      v32 = v15[2];
      v33 = (v31 & 1) == 0;
      v34 = __OFADD__(v32, v33);
      v35 = v32 + v33;
      if (v34)
      {
        goto LABEL_37;
      }

      v36 = v31;
      if (v15[3] >= v35)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v44 = v30;
          sub_191647D40();
          v30 = v44;
        }
      }

      else
      {
        sub_191645650(v35, isUniquelyReferenced_nonNull_native);
        v30 = sub_1915DB0E4(v27, v26);
        if ((v36 & 1) != (v37 & 1))
        {
          goto LABEL_39;
        }
      }

      v20 &= v20 - 1;
      if (v36)
      {
        v22 = v30;

        sub_1915E4314(&v47, v15[7] + 40 * v22);
      }

      else
      {
        v15[(v30 >> 6) + 8] |= 1 << v30;
        v38 = (v15[6] + 16 * v30);
        *v38 = v27;
        v38[1] = v26;
        v39 = v15[7] + 40 * v30;
        v40 = v49;
        v41 = v48;
        *v39 = v47;
        *(v39 + 16) = v41;
        *(v39 + 32) = v40;

        v42 = v15[2];
        v34 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v34)
        {
          goto LABEL_38;
        }

        v15[2] = v43;
      }

      v16 = v23;
      v17 = v45;
    }

    while (1)
    {
      v23 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v23 >= v21)
      {

        *&v50 = v15;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF418, &qword_191672240);
        sub_1915EEC14(&qword_1EADAE850, &qword_1EADAF418, &qword_191672240);
        return sub_19166C058();
      }

      v20 = *(v17 + 8 * v23);
      ++v16;
      if (v20)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    result = sub_19166C6F8();
    __break(1u);
  }

  else
  {
    v3 = *(result + 16);
    v4 = *(v3 + 16);
    v5 = MEMORY[0x1E69E7CC0];
    if (v4)
    {
      *&v47 = MEMORY[0x1E69E7CC0];

      sub_1915F4E4C(0, v4, 0);
      v6 = 32;
      v5 = v47;
      do
      {
        v7 = *(v3 + v6);

        sub_1915EC0B8(&v50, v7);

        *&v47 = v5;
        v9 = *(v5 + 16);
        v8 = *(v5 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_1915F4E4C((v8 > 1), v9 + 1, 1);
          v5 = v47;
        }

        *(v5 + 16) = v9 + 1;
        v10 = v5 + 40 * v9;
        v11 = v50;
        v12 = v51;
        *(v10 + 64) = v52;
        *(v10 + 32) = v11;
        *(v10 + 48) = v12;
        v6 += 8;
        --v4;
      }

      while (v4);
    }

    *&v50 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF550, &qword_191672860);
    sub_1915EEC74();
    return sub_19166C058();
  }

  return result;
}

uint64_t sub_1915EC548(void *a1, unint64_t a2)
{
  if (!a1[2])
  {

    return a2;
  }

  v3 = a1;
  result = sub_1915DB15C((a1 + 4), v18);
  v5 = v3[2];
  if (!v5)
  {
    __break(1u);
    goto LABEL_25;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v3;
  if (!isUniquelyReferenced_nonNull_native || (v5 - 1) > v3[3] >> 1)
  {
    v3 = sub_1915F442C(isUniquelyReferenced_nonNull_native, v5, 1, v3);
    v20 = v3;
  }

  sub_1915EEB28(0, 1, 0);
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_14;
    }

    goto LABEL_19;
  }

  if (v7)
  {
    v11 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    __swift_project_boxed_opaque_existential_1(v18, v19);

    v12 = sub_19166C828();
    if (*(v11 + 16))
    {
      v14 = sub_1915DB0E4(v12, v13);
      v16 = v15;

      if (v16)
      {
        v17 = *(*(v11 + 56) + 8 * v14);

        a2 = sub_1915EC548(v3, v17);

        goto LABEL_22;
      }
    }

    else
    {
    }

    a2 = 0xC000000000000000;
    goto LABEL_22;
  }

  v8 = *(a2 + 16);
  __swift_project_boxed_opaque_existential_1(v18, v19);

  result = sub_19166C848();
  if ((v9 & 1) != 0 || result >= *(v8 + 16))
  {

LABEL_19:

    __swift_destroy_boxed_opaque_existential_1(v18);
    return 0xC000000000000000;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v10 = *(v8 + 8 * result + 32);

    a2 = sub_1915EC548(v3, v10);

LABEL_14:

LABEL_22:
    __swift_destroy_boxed_opaque_existential_1(v18);
    return a2;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1915EC78C(uint64_t a1, void *a2)
{
  if (a2[2])
  {
    v5 = a2;

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v6 = v5[2];
      if (v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = sub_1915EEA04(v5);
      v6 = v5[2];
      if (v6)
      {
LABEL_4:
        v5[2] = v6 - 1;
        sub_1915A04D0(&v5[5 * v6 - 1], v27);
        v7 = sub_1915EC548(v5, *v2);
        __swift_project_boxed_opaque_existential_1(v27, v28);
        v8 = sub_19166C848();
        if (v9)
        {
LABEL_5:
          if (v7 >> 62 == 1)
          {
            v10 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

LABEL_16:
            __swift_project_boxed_opaque_existential_1(v27, v28);
            v17 = sub_19166C828();
            v19 = v18;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            sub_1915E23FC(a1, v17, v19, isUniquelyReferenced_nonNull_native);

            v21 = swift_allocObject();
            *(v21 + 16) = v10;
            sub_1915EC78C(v21 | 0x4000000000000000, v5);

LABEL_33:

            return __swift_destroy_boxed_opaque_existential_1(v27);
          }

          if (v7 >> 62 == 3 && v7 == 0xC000000000000000)
          {
            v10 = sub_1916533B8(MEMORY[0x1E69E7CC0]);
            goto LABEL_16;
          }

          goto LABEL_40;
        }

        v3 = v8;
        __swift_project_boxed_opaque_existential_1(v27, v28);
        v13 = sub_19166C828();
        v15 = v14;
        if (v13 == sub_19166C3C8() && v15 == v16)
        {
        }

        else
        {
          v22 = sub_19166C5E8();

          if ((v22 & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        if (v7 >> 62)
        {
          if (v7 >> 62 != 3 || v7 != 0xC000000000000000)
          {
            goto LABEL_40;
          }

          v2 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v2 = *(v7 + 16);
        }

        if (v3 == v2[2])
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_25:
            v24 = v2[2];
            v23 = v2[3];
            if (v24 >= v23 >> 1)
            {
              v2 = sub_1915F4598((v23 > 1), v24 + 1, 1, v2);
            }

            v2[2] = v24 + 1;
            v2[v24 + 4] = a1;

            goto LABEL_32;
          }

LABEL_36:
          v2 = sub_1915F4598(0, v3 + 1, 1, v2);
          goto LABEL_25;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if ((v3 & 0x8000000000000000) == 0)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v2 = sub_1915EE9F0(v2);
          if ((v3 & 0x8000000000000000) == 0)
          {
LABEL_30:
            if (v3 < v2[2])
            {
              v25 = &v2[v3];
              v26 = v25[4];
              v25[4] = a1;

LABEL_32:
              *(swift_allocObject() + 16) = v2;
              (sub_1915EC78C)();

              goto LABEL_33;
            }

            goto LABEL_39;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        result = sub_19166C218();
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

  v11 = *v2;

  *v2 = a1;
}

uint64_t sub_1915ECC04(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF558, &qword_191675480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191672210;
  v9 = aVersion_0[0];
  v8 = aVersion_0[1];
  *(inited + 56) = &type metadata for AXCodingKey;
  v10 = sub_1915EED24();
  *(inited + 64) = v10;
  v11 = swift_allocObject();
  *(inited + 32) = v11;
  *(v11 + 16) = 0;
  *(v11 + 24) = 1;
  *(v11 + 32) = v9;
  *(v11 + 40) = v8;

  sub_1915E3DB0(inited);
  v12 = swift_allocObject();
  sub_191649C6C(a3, a4);
  sub_19166C058();
  sub_1915EC78C(v12 | 0x8000000000000000, a2);

  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_191672210;
  v15 = *aType_3;
  v14 = unk_1EADB0330;
  *(v13 + 56) = &type metadata for AXCodingKey;
  *(v13 + 64) = v10;
  v16 = swift_allocObject();
  *(v13 + 32) = v16;
  *(v16 + 16) = 0;
  *(v16 + 24) = 1;
  *(v16 + 32) = v15;
  *(v16 + 40) = v14;

  sub_1915E3DB0(v13);
  v17 = swift_allocObject();
  (*(a4 + 24))(a3, a4);
  sub_19166C058();
  sub_1915EC78C(v17 | 0x8000000000000000, a2);
}

uint64_t sub_1915ECE5C(uint64_t a1, void *a2)
{
  result = swift_conformsToProtocol2();
  if (result && a1)
  {

    return sub_1915ECC04(a1, a2, a1, result);
  }

  return result;
}

uint64_t sub_1915ECED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = a2;
  if (*(a2 + 16) && (v9 = aVersion_0[0], v10 = aVersion_0[1], , v11 = sub_1915DB0E4(v9, v10), v13 = v12, , (v13 & 1) != 0) && (sub_1915E1F90(*(v8 + 56) + 40 * v11, v24), swift_dynamicCast()))
  {
    v14 = v25;
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_191649CB0(a3, a4);
  v16 = *(v15 + 2);
  if (v16)
  {

    v18 = 0;
    v19 = (v15 + 48);
    while (v18 < *(v15 + 2))
    {
      if (v14 < *(v19 - 2))
      {
        v21 = *(v19 - 1);
        v20 = *v19;
        swift_retain_n();
        v22 = v21(v8);
        if (v5)
        {

          return v8;
        }

        v23 = v22;

        v8 = v23;
      }

      ++v18;
      v19 += 3;
      if (v16 == v18)
      {

        return v8;
      }
    }

    __break(1u);
  }

  else
  {

    return v8;
  }

  return result;
}

uint64_t sub_1915ED098(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1915EC548(a1, *v4);
  sub_1915EC0B8(v9, v14);

  if (!v14[3])
  {
    return sub_1915EEDE8(v14);
  }

  result = swift_dynamicCast();
  if (result)
  {
    (*(a4 + 8))(v14, v12, v13, a3, a4);
    if (!v5)
    {
      v11 = sub_1915EBC54(v14);
      sub_1915EC78C(v11, a1);
    }

    return sub_1915DCBA8(v12, v13);
  }

  return result;
}

uint64_t sub_1915ED1B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1915EC548(a1, *v4);
  sub_1915EC0B8(v9, v13);

  if (!v14)
  {
    return sub_1915EEDE8(v13);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF418, &qword_191672240);
  result = swift_dynamicCast();
  if (result)
  {
    sub_1915ECED8(a3, v12, a3, a4);

    if (!v5)
    {
      sub_1915EEC14(&qword_1EADAE850, &qword_1EADAF418, &qword_191672240);
      sub_19166C058();
      v11 = sub_1915EBC54(v13);
      sub_1915EC78C(v11, a1);
    }
  }

  return result;
}

uint64_t sub_1915ED2F8(uint64_t a1, void *a2)
{
  v5 = swift_conformsToProtocol2();
  if (!v5 || !a1 || (result = sub_1915ED098(a2, a1, a1, v5), !v2))
  {
    result = swift_conformsToProtocol2();
    if (result)
    {
      if (a1)
      {
        return sub_1915ED1B4(a2, a1, a1, result);
      }
    }
  }

  return result;
}

uint64_t sub_1915ED3A4(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 == 2)
    {
      sub_1915E1F90((a2 & 0x3FFFFFFFFFFFFFFFLL) + 16, v7);
      MEMORY[0x193AFD630](2);
      sub_19166C048();
      return sub_1915E0AF8(v7);
    }

    else
    {
      return MEMORY[0x193AFD630](3);
    }
  }

  else
  {
    if (v3)
    {
      v6 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x193AFD630](1);

      sub_191603D70(a1, v6);
    }

    else
    {
      v4 = *(a2 + 16);
      MEMORY[0x193AFD630](0);

      sub_191604140(a1, v4);
    }
  }
}

uint64_t sub_1915ED4A4()
{
  v1 = *v0;
  sub_19166C778();
  sub_1915ED3A4(v3, v1);
  return sub_19166C7B8();
}

uint64_t sub_1915ED4F4()
{
  v1 = *v0;
  sub_19166C778();
  sub_1915ED3A4(v3, v1);
  return sub_19166C7B8();
}

unint64_t sub_1915ED548()
{
  result = qword_1EADAF548;
  if (!qword_1EADAF548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAF548);
  }

  return result;
}

uint64_t sub_1915ED59C(uint64_t result, uint64_t a2)
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
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 4 * v12);

    v17 = sub_1915DB0E4(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 4 * v17) != v16)
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

uint64_t sub_1915ED6D8(uint64_t result, uint64_t a2)
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
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 4 * v12);

    v17 = sub_1915DB0E4(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 4 * v17) != v16)
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

uint64_t sub_1915ED80C(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (v8)
        {
          v10 = __clz(__rbit64(v8));
          v113 = (v8 - 1) & v8;
          goto LABEL_13;
        }

        v11 = v4;
        do
        {
          v4 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
LABEL_132:

            goto LABEL_120;
          }

          if (v4 >= v9)
          {
            return 1;
          }

          v12 = *(v5 + 8 * v4);
          ++v11;
        }

        while (!v12);
        v10 = __clz(__rbit64(v12));
        v113 = (v12 - 1) & v12;
LABEL_13:
        v13 = v10 | (v4 << 6);
        v14 = (*(v3 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        v17 = *(*(v3 + 56) + 8 * v13);

        v18 = sub_1915DB0E4(v15, v16);
        v20 = v19;

        if ((v20 & 1) == 0)
        {
          goto LABEL_139;
        }

        v21 = *(*(v2 + 56) + 8 * v18);
        v22 = v21 >> 62;
        if ((v21 >> 62) <= 1)
        {
          break;
        }

        v8 = v113;
        if (v22 == 2)
        {
          if (v17 >> 62 != 2)
          {
            goto LABEL_139;
          }

          sub_1915E1F90((v21 & 0x3FFFFFFFFFFFFFFFLL) + 16, v115);
          sub_1915E1F90((v17 & 0x3FFFFFFFFFFFFFFFLL) + 16, v114);

          v30 = MEMORY[0x193AFCED0](v115, v114);
          sub_1915E0AF8(v114);
          sub_1915E0AF8(v115);

          v8 = v113;
          result = 0;
          if ((v30 & 1) == 0)
          {
            return result;
          }
        }

        else if (v17 != 0xC000000000000000)
        {
          goto LABEL_139;
        }
      }

      if (!v22)
      {
        break;
      }

      if (v17 >> 62 != 1)
      {
        goto LABEL_139;
      }

      v31 = *((v21 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v32 = *((v17 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

      LOBYTE(v31) = sub_1915ED80C(v31, v32);

      result = 0;
      v8 = v113;
      if ((v31 & 1) == 0)
      {
        return result;
      }
    }

    if (v17 >> 62)
    {
      goto LABEL_139;
    }

    v108 = v2;
    v23 = *(v21 + 16);
    v24 = *(v17 + 16);
    v25 = *(v23 + 16);
    if (v25 != *(v24 + 16))
    {
      goto LABEL_139;
    }

    if (!v25 || v23 == v24)
    {

      goto LABEL_31;
    }

    v112 = v23 + 32;
    v111 = v24 + 32;
    v109 = *(v23 + 16);
    v110 = *(v21 + 16);

    v28 = v109;
    v27 = v110;
    v29 = 0;
    v105 = v24;
LABEL_35:
    if (v29 >= *(v27 + 16))
    {
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
      return result;
    }

    if (v29 >= *(v24 + 16))
    {
      goto LABEL_142;
    }

    v33 = *(v112 + 8 * v29);
    v34 = *(v111 + 8 * v29);
    v35 = v33 >> 62;
    if ((v33 >> 62) > 1)
    {
      if (v35 == 2)
      {
        if (v34 >> 62 != 2)
        {
          goto LABEL_119;
        }

        sub_1915E1F90((v33 & 0x3FFFFFFFFFFFFFFFLL) + 16, v115);
        sub_1915E1F90((v34 & 0x3FFFFFFFFFFFFFFFLL) + 16, v114);

        v43 = MEMORY[0x193AFCED0](v115, v114);
        sub_1915E0AF8(v114);
        sub_1915E0AF8(v115);
        if ((v43 & 1) == 0)
        {
          goto LABEL_127;
        }

LABEL_49:

        goto LABEL_33;
      }

      if (v34 == 0xC000000000000000)
      {
        goto LABEL_34;
      }

LABEL_119:

LABEL_120:

      goto LABEL_139;
    }

    if (v35)
    {
      if (v34 >> 62 != 1)
      {
        goto LABEL_119;
      }

      v44 = *((v33 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v45 = *((v34 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

      LOBYTE(v44) = sub_1915ED80C(v44, v45);

      if ((v44 & 1) == 0)
      {
LABEL_127:

        goto LABEL_129;
      }

      goto LABEL_49;
    }

    if (v34 >> 62)
    {
      goto LABEL_119;
    }

    v36 = *(v33 + 16);
    v37 = *(v34 + 16);
    v38 = *(v36 + 16);
    if (v38 != *(v37 + 16))
    {

LABEL_129:

LABEL_130:

      return 0;
    }

    if (v38 && v36 != v37)
    {
      break;
    }

LABEL_34:
    if (++v29 != v28)
    {
      goto LABEL_35;
    }

LABEL_31:
    v2 = v108;
    v8 = v113;
  }

  v106 = v37 + 32;
  v107 = v36 + 32;
  v96 = *(v112 + 8 * v29);
  v103 = *(v36 + 16);
  v104 = *(v33 + 16);

  v41 = v103;
  v40 = v104;
  v42 = 0;
  v98 = v37;
  while (1)
  {
    if (v42 >= *(v40 + 16))
    {
      goto LABEL_143;
    }

    if (v42 >= *(v37 + 16))
    {
      goto LABEL_144;
    }

    v46 = *(v107 + 8 * v42);
    v47 = *(v106 + 8 * v42);
    v48 = v46 >> 62;
    if ((v46 >> 62) <= 1)
    {
      break;
    }

    if (v48 != 2)
    {
      if (v47 != 0xC000000000000000)
      {
        goto LABEL_122;
      }

      goto LABEL_56;
    }

    if (v47 >> 62 != 2)
    {
      goto LABEL_122;
    }

    v57 = v47 & 0x3FFFFFFFFFFFFFFFLL;
    sub_1915E1F90((v46 & 0x3FFFFFFFFFFFFFFFLL) + 16, v115);
    sub_1915E1F90(v57 + 16, v114);

    v58 = MEMORY[0x193AFCED0](v115, v114);
    sub_1915E0AF8(v114);
    sub_1915E0AF8(v115);
    if ((v58 & 1) == 0)
    {
      goto LABEL_132;
    }

LABEL_74:

    v24 = v105;
LABEL_75:
    v37 = v98;
    v41 = v103;
    v40 = v104;
LABEL_56:
    if (++v42 == v41)
    {

LABEL_33:
      v28 = v109;
      v27 = v110;
      goto LABEL_34;
    }
  }

  if (v48)
  {
    if (v47 >> 62 != 1)
    {
LABEL_122:

      goto LABEL_130;
    }

    v59 = *((v46 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v60 = *((v47 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

    LOBYTE(v59) = sub_1915ED80C(v59, v60);

    if ((v59 & 1) == 0)
    {

      goto LABEL_130;
    }

    goto LABEL_74;
  }

  if (v47 >> 62)
  {
    goto LABEL_122;
  }

  v49 = *(v46 + 16);
  v50 = *(v47 + 16);
  v51 = *(v49 + 16);
  if (v51 != *(v50 + 16))
  {
    v82 = *(v107 + 8 * v42);

    goto LABEL_138;
  }

  if (v51)
  {
    v52 = v49 == v50;
  }

  else
  {
    v52 = 1;
  }

  if (v52)
  {
    goto LABEL_56;
  }

  v99 = v50 + 32;
  v100 = v49 + 32;
  v97 = *(v107 + 8 * v42);
  v53 = *(v106 + 8 * v42);
  v91 = *(v49 + 16);
  v92 = *(v46 + 16);

  v55 = v91;
  v54 = v92;
  v56 = 0;
  v90 = v50;
  while (1)
  {
    if (v56 >= *(v54 + 16))
    {
      goto LABEL_147;
    }

    if (v56 >= *(v50 + 16))
    {
      goto LABEL_148;
    }

    v61 = *(v100 + 8 * v56);
    v62 = *(v99 + 8 * v56);
    v63 = v61 >> 62;
    if ((v61 >> 62) <= 1)
    {
      break;
    }

    if (v63 != 2)
    {
      if (v62 != 0xC000000000000000)
      {
        goto LABEL_126;
      }

      goto LABEL_77;
    }

    if (v62 >> 62 != 2)
    {
      goto LABEL_126;
    }

    v73 = v62 & 0x3FFFFFFFFFFFFFFFLL;
    sub_1915E1F90((v61 & 0x3FFFFFFFFFFFFFFFLL) + 16, v115);
    sub_1915E1F90(v73 + 16, v114);

    v74 = MEMORY[0x193AFCED0](v115, v114);
    sub_1915E0AF8(v114);
    sub_1915E0AF8(v115);
    if ((v74 & 1) == 0)
    {

      goto LABEL_138;
    }

LABEL_113:

LABEL_114:
    v24 = v105;
    v50 = v90;
    v55 = v91;
    v54 = v92;
LABEL_77:
    if (++v56 == v55)
    {

      goto LABEL_75;
    }
  }

  if (v63)
  {
    if (v62 >> 62 != 1)
    {
LABEL_126:

      goto LABEL_138;
    }

    v102 = *((v61 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v81 = *((v62 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

    LOBYTE(v102) = sub_1915ED80C(v102, v81);

    if ((v102 & 1) == 0)
    {

      goto LABEL_138;
    }

    goto LABEL_113;
  }

  if (v62 >> 62)
  {
    goto LABEL_126;
  }

  v64 = *(v61 + 16);
  v65 = *(v62 + 16);
  v66 = *(v64 + 16);
  if (v66 == *(v65 + 16))
  {
    if (v66)
    {
      v67 = v64 == v65;
    }

    else
    {
      v67 = 1;
    }

    if (!v67)
    {
      v101 = v64 + 32;
      v94 = *(v61 + 16);
      v95 = *(v62 + 16);
      v68 = *(v99 + 8 * v56);
      v85 = *(v100 + 8 * v56);
      v93 = *(v64 + 16);

      v70 = v93;
      v69 = v94;
      v71 = v95;
      v72 = 0;
      v86 = v3;
      while (1)
      {
        if (v72 >= *(v69 + 16))
        {
          goto LABEL_145;
        }

        if (v72 >= *(v71 + 16))
        {
          goto LABEL_146;
        }

        v75 = *(v101 + 8 * v72);
        v76 = *(v71 + 8 * v72 + 32);
        v77 = v75 >> 62;
        if ((v75 >> 62) > 1)
        {
          if (v77 == 2)
          {
            if (v76 >> 62 != 2)
            {
              goto LABEL_123;
            }

            sub_1915E1F90((v75 & 0x3FFFFFFFFFFFFFFFLL) + 16, v115);
            sub_1915E1F90((v76 & 0x3FFFFFFFFFFFFFFFLL) + 16, v114);

            v89 = MEMORY[0x193AFCED0](v115, v114);
            sub_1915E0AF8(v114);
            sub_1915E0AF8(v115);
            if ((v89 & 1) == 0)
            {

              goto LABEL_125;
            }

LABEL_93:

            v69 = v94;
            v71 = v95;
            v70 = v93;
            goto LABEL_94;
          }

          if (v76 != 0xC000000000000000)
          {
            goto LABEL_123;
          }
        }

        else
        {
          if (v77)
          {
            if (v76 >> 62 != 1)
            {
              goto LABEL_123;
            }

            v79 = *((v76 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            v87 = *((v75 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

            v80 = sub_1915ED80C(v87, v79);

            if ((v80 & 1) == 0)
            {

              goto LABEL_124;
            }

            goto LABEL_93;
          }

          if (v76 >> 62)
          {
            goto LABEL_123;
          }

          v88 = *(v75 + 16);
          v78 = *(v76 + 16);

          LOBYTE(v88) = sub_1915EE814(v88, v78);

          v3 = v86;

          v70 = v93;
          v69 = v94;
          v71 = v95;
          if ((v88 & 1) == 0)
          {
LABEL_123:

LABEL_124:

            goto LABEL_125;
          }
        }

LABEL_94:
        if (v70 == ++v72)
        {

          goto LABEL_114;
        }
      }
    }

    goto LABEL_77;
  }

  v83 = *(v62 + 16);
  v84 = *(v100 + 8 * v56);

LABEL_125:

LABEL_138:

LABEL_139:

  return 0;
}

uint64_t sub_1915EE618(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioEffectConfiguration();
  v5 = *(*(v4 - 1) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14 == *(a2 + 16))
  {
    if (!v14 || a1 == a2)
    {
      v25 = 1;
    }

    else
    {
      v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = a1 + v15;
      v17 = a2 + v15;
      v18 = *(v11 + 72);
      while (1)
      {
        sub_1915EEE50(v16, v13);
        sub_1915EEE50(v17, v9);
        if ((sub_19166B198() & 1) == 0)
        {
          break;
        }

        v19 = v4[5];
        v20 = *&v13[v19];
        v21 = *&v13[v19 + 8];
        v22 = &v9[v19];
        v23 = v20 == *v22 && v21 == *(v22 + 1);
        if (!v23 && (sub_19166C5E8() & 1) == 0 || (sub_1915ED59C(*&v13[v4[6]], *&v9[v4[6]]) & 1) == 0 || (sub_1915ED6D8(*&v13[v4[7]], *&v9[v4[7]]) & 1) == 0)
        {
          break;
        }

        v24 = v13[v4[8]] ^ v9[v4[8]];
        sub_1915EEEB4(v9);
        sub_1915EEEB4(v13);
        if ((v24 & 1) == 0)
        {
          v17 += v18;
          v16 += v18;
          if (--v14)
          {
            continue;
          }
        }

        v25 = v24 ^ 1;
        return v25 & 1;
      }

      sub_1915EEEB4(v9);
      sub_1915EEEB4(v13);
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25 & 1;
}

uint64_t sub_1915EE814(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4;
      v8 = v6 >> 62;
      if ((v6 >> 62) > 1)
      {
        if (v8 == 2)
        {
          if (v7 >> 62 != 2)
          {
            return 0;
          }

          sub_1915E1F90((v5 & 0x3FFFFFFFFFFFFFFFLL) + 16, v16);
          sub_1915E1F90((v7 & 0x3FFFFFFFFFFFFFFFLL) + 16, v15);

          v11 = MEMORY[0x193AFCED0](v16, v15);
          sub_1915E0AF8(v15);
          sub_1915E0AF8(v16);

          if ((v11 & 1) == 0)
          {
            return 0;
          }
        }

        else if (v7 != 0xC000000000000000)
        {
          return 0;
        }
      }

      else if (v8)
      {
        if (v7 >> 62 != 1)
        {
          return 0;
        }

        v12 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v13 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

        LOBYTE(v12) = sub_1915ED80C(v12, v13);

        if ((v12 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v7 >> 62)
        {
          return 0;
        }

        v9 = *(v5 + 16);
        v10 = *(v7 + 16);

        LOBYTE(v9) = sub_1915EE814(v9, v10);

        if ((v9 & 1) == 0)
        {
          return 0;
        }
      }

      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1915EEA18(unint64_t a1, unint64_t a2)
{
  v2 = a1 >> 62;
  if ((a1 >> 62) <= 1)
  {
    if (v2)
    {
      if (a2 >> 62 == 1)
      {
        v8 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v9 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

        v5 = sub_1915ED80C(v8, v9);
        goto LABEL_10;
      }
    }

    else if (!(a2 >> 62))
    {
      v3 = *(a1 + 16);
      v4 = *(a2 + 16);

      v5 = sub_1915EE814(v3, v4);
LABEL_10:
      v7 = v5;

      return v7 & 1;
    }

LABEL_13:
    v7 = 0;
    return v7 & 1;
  }

  if (v2 != 2)
  {
    if (a2 == 0xC000000000000000)
    {
      v7 = 1;
      return v7 & 1;
    }

    goto LABEL_13;
  }

  if (a2 >> 62 != 2)
  {
    goto LABEL_13;
  }

  v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
  sub_1915E1F90((a1 & 0x3FFFFFFFFFFFFFFFLL) + 16, v12);
  sub_1915E1F90(v6 + 16, v11);
  v7 = MEMORY[0x193AFCED0](v12, v11);
  sub_1915E0AF8(v11);
  sub_1915E0AF8(v12);
  return v7 & 1;
}

unint64_t sub_1915EEB28(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4C0, &qword_191672A80);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_1915EEC14(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1915EEC74()
{
  result = qword_1EADAE688;
  if (!qword_1EADAE688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADAF550, &qword_191672860);
    sub_1915EEC14(&qword_1EADAE638, &qword_1EADAF4A8, &qword_191672420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAE688);
  }

  return result;
}

unint64_t sub_1915EED24()
{
  result = qword_1EADAE908;
  if (!qword_1EADAE908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAE908);
  }

  return result;
}

uint64_t sub_1915EED78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4A8, &qword_191672420);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1915EEDE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4A8, &qword_191672420);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1915EEE50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioEffectConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1915EEEB4(uint64_t a1)
{
  v2 = type metadata accessor for AudioEffectConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AXSerialQueue.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v38 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF568, &qword_191672878);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF570, &qword_191672880);
  v35 = *(v11 - 8);
  v36 = v11;
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v33 - v14;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF578, &qword_191672888);
  v16 = *(v37 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x1EEE9AC00](v37, v18);
  v20 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v33 - v22;
  v34 = v0;
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF580, &qword_191672890);
  (*(v6 + 104))(v10, *MEMORY[0x1E69E8650], v5);
  v33 = v15;
  sub_19166BB68();
  (*(v6 + 8))(v10, v5);
  v24 = v35;
  v25 = v36;
  (*(v35 + 16))(v0 + OBJC_IVAR____TtC15AXCoreUtilities13AXSerialQueue_continuation, v15, v36);
  v26 = sub_19166BB58();
  v27 = v38;
  (*(*(v26 - 8) + 56))(v38, 1, 1, v26);
  v28 = v37;
  (*(v16 + 16))(v20, v23, v37);
  v29 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  (*(v16 + 32))(v30 + v29, v20, v28);
  v31 = sub_1915D593C(0, 0, v27, &unk_1916728A0, v30);
  (*(v24 + 8))(v33, v25);
  (*(v16 + 8))(v23, v28);
  result = v34;
  *(v34 + OBJC_IVAR____TtC15AXCoreUtilities13AXSerialQueue_parentTask) = v31;
  return result;
}

uint64_t sub_1915EF324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5C0, &unk_1916729C0);
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1915EF3F0, 0, 0);
}

uint64_t sub_1915EF3F0()
{
  v1 = v0[7];
  v2 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF578, &qword_191672888);
  sub_19166BBD8();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1915EF4BC;
  v5 = v0[7];
  v6 = v0[5];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v6);
}

uint64_t sub_1915EF4BC()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1915EF5B8, 0, 0);
}

uint64_t sub_1915EF5B8()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[9] = v1;
  v0[10] = v2;
  if (!v1)
  {
    (*(v0[6] + 8))(v0[7], v0[5]);
    goto LABEL_5;
  }

  if (sub_19166BC48())
  {
    (*(v0[6] + 8))(v0[7], v0[5]);
    sub_19159F5CC(v1);
LABEL_5:
    v3 = v0[7];

    v4 = v0[1];

    return v4();
  }

  v8 = (v1 + *v1);
  v6 = v1[1];
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_1915EF734;

  return v8();
}

uint64_t sub_1915EF734()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v5 = *v0;

  sub_19159F5CC(v4);
  v6 = *(MEMORY[0x1E69E8678] + 4);
  v7 = swift_task_alloc();
  v1[8] = v7;
  *v7 = v5;
  v7[1] = sub_1915EF4BC;
  v8 = v1[7];
  v9 = v1[5];

  return MEMORY[0x1EEE6D9C8](v1 + 2, 0, 0, v9);
}

uint64_t sub_1915EF8D8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF578, &qword_191672888) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1915D4F90;

  return sub_1915EF324(a1, v6, v7, v1 + v5);
}

uint64_t sub_1915EFA1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF588, &qword_1916728A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v12 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v12[0] = &unk_1916728B8;
  v12[1] = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF570, &qword_191672880);
  sub_19166BBA8();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_1915EFB5C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1915D4F90;

  return v6();
}

uint64_t sub_1915EFC44(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1915D8338;

  return sub_1915EFB5C(a1, v5);
}

uint64_t sub_1915EFD4C(void (*a1)(void))
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  a1();
  return v5;
}

uint64_t AXMainActorSerialQueue.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3D0, &qword_1916720D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v38 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF590, &qword_1916728C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF598, &qword_1916728C8);
  v35 = *(v11 - 8);
  v36 = v11;
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v33 - v14;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5A0, &qword_1916728D0);
  v16 = *(v37 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x1EEE9AC00](v37, v18);
  v20 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v33 - v22;
  v34 = v0;
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5A8, &qword_1916728D8);
  (*(v6 + 104))(v10, *MEMORY[0x1E69E8650], v5);
  v33 = v15;
  sub_19166BB68();
  (*(v6 + 8))(v10, v5);
  v24 = v35;
  v25 = v36;
  (*(v35 + 16))(v0 + OBJC_IVAR____TtC15AXCoreUtilities22AXMainActorSerialQueue_continuation, v15, v36);
  v26 = sub_19166BB58();
  v27 = v38;
  (*(*(v26 - 8) + 56))(v38, 1, 1, v26);
  v28 = v37;
  (*(v16 + 16))(v20, v23, v37);
  v29 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  (*(v16 + 32))(v30 + v29, v20, v28);
  v31 = sub_1915D593C(0, 0, v27, &unk_1916728E8, v30);
  (*(v24 + 8))(v33, v25);
  (*(v16 + 8))(v23, v28);
  result = v34;
  *(v34 + OBJC_IVAR____TtC15AXCoreUtilities22AXMainActorSerialQueue_parentTask) = v31;
  return result;
}

uint64_t sub_1915F0188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5B8, &qword_1916729B8);
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1915F0254, 0, 0);
}

uint64_t sub_1915F0254()
{
  v1 = v0[7];
  v2 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5A0, &qword_1916728D0);
  sub_19166BBD8();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1915F0320;
  v5 = v0[7];
  v6 = v0[5];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v6);
}

uint64_t sub_1915F0320()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1915F041C, 0, 0);
}

uint64_t sub_1915F041C()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[9] = v1;
  v0[10] = v2;
  if (!v1)
  {
    (*(v0[6] + 8))(v0[7], v0[5]);
    goto LABEL_5;
  }

  if (sub_19166BC48())
  {
    (*(v0[6] + 8))(v0[7], v0[5]);
    sub_19159F5CC(v1);
LABEL_5:
    v3 = v0[7];

    v4 = v0[1];

    return v4();
  }

  v8 = (v1 + *v1);
  v6 = v1[1];
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_1915F0598;

  return v8();
}

uint64_t sub_1915F0598()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v5 = *v0;

  sub_19159F5CC(v4);
  v6 = *(MEMORY[0x1E69E8678] + 4);
  v7 = swift_task_alloc();
  v1[8] = v7;
  *v7 = v5;
  v7[1] = sub_1915F0320;
  v8 = v1[7];
  v9 = v1[5];

  return MEMORY[0x1EEE6D9C8](v1 + 2, 0, 0, v9);
}

uint64_t objectdestroyTm_0(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v2 + 16);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_1915F07FC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5A0, &qword_1916728D0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1915D8338;

  return sub_1915F0188(a1, v6, v7, v1 + v5);
}

uint64_t sub_1915F091C(uint64_t *a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v7 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v18 - v12;
  v14 = *a3;
  (*(v9 + 16))(&v18 - v12, v7 + v14, v8);
  sub_19166BBB8();
  v15 = *(v9 + 8);
  v15(v13, v8);
  v15((v7 + v14), v8);
  v16 = *(v7 + *a4);

  swift_defaultActor_destroy();
  return v7;
}

uint64_t sub_1915F0A64(uint64_t *a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v7 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v18 - v12;
  v14 = *a3;
  (*(v9 + 16))(&v18 - v12, v7 + v14, v8);
  sub_19166BBB8();
  v15 = *(v9 + 8);
  v15(v13, v8);
  v15((v7 + v14), v8);
  v16 = *(v7 + *a4);

  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

uint64_t sub_1915F0B8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5B0, &qword_1916728F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v12 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v12[0] = &unk_1916728F8;
  v12[1] = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF598, &qword_1916728C8);
  sub_19166BBA8();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_1915F0DD8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1915F0E2C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  sub_1915F0F54(319, a4, a5, a6);
  if (v7 <= 0x3F)
  {
    v8 = *(v6 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1915F0F54(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_19166BBC8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1915F0FB0()
{
  v0 = sub_19166B718();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  if (!v1)
  {
    return 0;
  }

  v2 = sub_19166B718();
  v3 = sub_19166B718();
  v4 = sub_19166B718();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_19166B748();
  v8 = v7;

  v9 = v6 == 0x4E554F465F544F4ELL && v8 == 0xE900000000000044;
  if (!v9 && (sub_19166C5E8() & 1) == 0)
  {
    return v6;
  }

  return 0;
}

uint64_t sub_1915F113C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v12 = *MEMORY[0x1E69E9840];
  sub_19166B228();
  sub_19166B7D8();

  uldn_open();

  v5 = swift_slowAlloc();
  sub_19166B7D8();
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      v6 = uldn_regionDisplayName();
    }

    else
    {
      v6 = uldn_variantDisplayName();
    }
  }

  else if (a4)
  {
    v6 = uldn_languageDisplayName();
  }

  else
  {
    v6 = uldn_localeDisplayName();
  }

  v7 = v6;

  v8 = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithCharacters:v5 length:v7];
  v9 = sub_19166B748();

  MEMORY[0x193AFEC10](v5, -1, -1);
  uldn_close();
  result = v9;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1915F1370(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), unsigned __int8 a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5C8, &qword_1916729E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v31 - v11;
  v13 = sub_19166B388();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_19166B298();
  v31 = a1;
  v32 = a2;
  a3(v19);
  v20 = sub_19166B7C8();
  v22 = v21;

  MEMORY[0x193AFC710](v20, v22);

  v23 = sub_1915F0FB0();
  v25 = v24;

  if (v25)
  {
    (*(v14 + 8))(v18, v13);
  }

  else
  {
    v27 = (a3)(v26);
    v23 = sub_1915F113C(v18, v27, v28, a4);
    v25 = v29;

    (*(v14 + 8))(v18, v13);
    if (!v25)
    {
      return v23;
    }
  }

  v31 = v23;
  v32 = v25;
  sub_19166B298();
  (*(v14 + 56))(v12, 0, 1, v13);
  sub_1915E5F84();
  v23 = sub_19166BF88();
  sub_19159E780(v12, &qword_1EADAF5C8, &qword_1916729E0);

  return v23;
}

uint64_t Locale.Subdivision.icuDisplayName.getter()
{
  v0 = sub_19166B388();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19166B298();
  v15[0] = 0x5349564944425553;
  v15[1] = 0xEB000000005F4E4FLL;
  sub_19166B238();
  v6 = sub_19166B7C8();
  v8 = v7;

  MEMORY[0x193AFC710](v6, v8);

  v9 = sub_1915F0FB0();
  v11 = v10;

  if (!v11)
  {
    v12 = sub_19166B238();
    v9 = sub_1915F113C(v5, v12, v13, 3u);
  }

  (*(v1 + 8))(v5, v0);
  return v9;
}

uint64_t sub_1915F17D8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), unsigned __int8 a5)
{
  a4(a1, a2);
  v8 = sub_19166B7C8();
  v10 = v9;

  MEMORY[0x193AFC710](v8, v10);

  v11 = sub_1915F0FB0();
  v13 = v12;

  if (!v13)
  {
    v15 = (a4)(v14);
    v11 = sub_1915F113C(a1, v15, v16, a5);
  }

  return v11;
}

uint64_t Locale.icuDisplayName.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5C8, &qword_1916729E0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v4 = v15 - v3;
  v5 = sub_19166B388();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19166B298();
  v11 = Locale.icuDisplayName(with:)(v10);
  v13 = v12;
  (*(v6 + 8))(v10, v5);
  if (v13)
  {
    v15[0] = v11;
    v15[1] = v13;
    sub_19166B298();
    (*(v6 + 56))(v4, 0, 1, v5);
    sub_1915E5F84();
    v11 = sub_19166BF88();
    sub_19159E780(v4, &qword_1EADAF5C8, &qword_1916729E0);
  }

  return v11;
}

uint64_t Locale.icuDisplayName(with:)(uint64_t a1)
{
  v78 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5D0, &qword_1916729E8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v75 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5D8, &qword_1916729F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v79 = &v75 - v10;
  v11 = sub_19166B368();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v75 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E0, &unk_191672A20);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8, v23);
  v25 = &v75 - v24;
  v80 = v1;
  sub_19166B378();
  sub_19166B338();
  v26 = *(v12 + 8);
  v26(v20, v11);
  v27 = sub_19166B278();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v25, 1, v27) == 1)
  {
    v29 = &qword_1EADAF5E0;
    v30 = &unk_191672A20;
LABEL_8:
    sub_19159E780(v25, v29, v30);
    return 0;
  }

  v77 = v6;
  v81 = 0x45474155474E414CLL;
  v82 = 0xE90000000000005FLL;
  sub_19166B238();
  v31 = sub_19166B7C8();
  v33 = v32;

  MEMORY[0x193AFC710](v31, v33);

  v34 = sub_1915F0FB0();
  v36 = v35;

  if (v36)
  {
    (*(v28 + 8))(v25, v27);
    goto LABEL_6;
  }

  v37 = sub_19166B238();
  v34 = sub_1915F113C(v78, v37, v38, 1u);
  v36 = v39;

  (*(v28 + 8))(v25, v27);
  if (v36)
  {
LABEL_6:
    sub_19166B378();
    v25 = v79;
    sub_19166B348();
    v26(v17, v11);
    v40 = sub_19166B2B8();
    v41 = *(v40 - 8);
    if ((*(v41 + 48))(v25, 1, v40) == 1)
    {

      v29 = &qword_1EADAF5D8;
      v30 = &qword_1916729F0;
      goto LABEL_8;
    }

    v76 = v34;
    v81 = 0x5F4E4F49474552;
    v82 = 0xE700000000000000;
    sub_19166B238();
    v43 = sub_19166B7C8();
    v45 = v44;

    MEMORY[0x193AFC710](v43, v45);

    v46 = sub_1915F0FB0();
    v48 = v47;

    if (v48)
    {
      (*(v41 + 8))(v25, v40);
      v49 = v77;
    }

    else
    {
      v50 = sub_19166B238();
      v46 = sub_1915F113C(v78, v50, v51, 2u);
      v48 = v52;

      (*(v41 + 8))(v25, v40);
      v49 = v77;
      if (!v48)
      {

        return 0;
      }
    }

    sub_19166B258();
    v53 = sub_19166B248();
    v54 = *(v53 - 8);
    if ((*(v54 + 48))(v49, 1, v53) == 1)
    {
      sub_19159E780(v49, &qword_1EADAF5D0, &qword_1916729E8);
LABEL_16:
      v55 = sub_19166B718();
      v56 = AXCLocString(v55);

      sub_19166B748();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_191672220;
      v58 = MEMORY[0x1E69E6158];
      *(v57 + 56) = MEMORY[0x1E69E6158];
      v59 = sub_1915F225C();
      *(v57 + 32) = v76;
      *(v57 + 40) = v36;
      *(v57 + 96) = v58;
      *(v57 + 104) = v59;
      *(v57 + 64) = v59;
      *(v57 + 72) = v46;
      *(v57 + 80) = v48;
      v60 = sub_19166B778();
LABEL_21:

      return v60;
    }

    v81 = 0x5349564944425553;
    v82 = 0xEB000000005F4E4FLL;
    sub_19166B238();
    v61 = sub_19166B7C8();
    v63 = v62;

    MEMORY[0x193AFC710](v61, v63);

    v64 = sub_1915F0FB0();
    v66 = v65;

    if (v66)
    {
      (*(v54 + 8))(v49, v53);
    }

    else
    {
      v67 = sub_19166B238();
      v64 = sub_1915F113C(v78, v67, v68, 3u);
      v66 = v69;

      (*(v54 + 8))(v49, v53);
      if (!v66)
      {
        goto LABEL_16;
      }
    }

    v70 = sub_19166B718();
    v71 = AXCLocString(v70);

    sub_19166B748();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E8, &qword_1916729F8);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_1916729D0;
    v73 = MEMORY[0x1E69E6158];
    *(v72 + 56) = MEMORY[0x1E69E6158];
    v74 = sub_1915F225C();
    *(v72 + 32) = v76;
    *(v72 + 40) = v36;
    *(v72 + 96) = v73;
    *(v72 + 104) = v74;
    *(v72 + 64) = v74;
    *(v72 + 72) = v64;
    *(v72 + 80) = v66;
    *(v72 + 136) = v73;
    *(v72 + 144) = v74;
    *(v72 + 112) = v46;
    *(v72 + 120) = v48;
    v60 = sub_19166B778();
    goto LABEL_21;
  }

  return 0;
}

unint64_t sub_1915F225C()
{
  result = qword_1EADAF5F0;
  if (!qword_1EADAF5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADAF5F0);
  }

  return result;
}

uint64_t sub_1915F22B0@<X0>(uint64_t a1@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = sub_19166AF68();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 0;
  sub_19166B228();
  sub_19166B7D8();

  v8 = ulocdata_open();

  if (v24 > 0)
  {
    result = (*(v3 + 56))(a1, 1, 1, v2);
    goto LABEL_29;
  }

  ExemplarSet = ulocdata_getExemplarSet();
  if (v24 > 0)
  {
    (*(v3 + 56))(a1, 1, 1, v2);
    goto LABEL_28;
  }

  if (v24 == -127)
  {
    MEMORY[0x193AFEE40](ExemplarSet);
  }

  sub_19166AF58();
  v11 = swift_slowAlloc();
  ItemCount = uset_getItemCount();
  if (ItemCount < 0)
  {
LABEL_38:
    __break(1u);
  }

  v13 = ItemCount;
  if (!ItemCount)
  {
    goto LABEL_27;
  }

  v19[1] = v8;
  v20 = a1;
  v14 = 0;
  do
  {
    v23 = 0;
    Item = uset_getItem();
    v17 = v24;
    if (v24 != 15)
    {
      goto LABEL_15;
    }

    MEMORY[0x193AFEC10](v11, -1, -1);
    if (__OFADD__(Item, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v11 = swift_slowAlloc();
    v24 = 0;
    uset_getItem();
    v17 = v24;
LABEL_15:
    if (v17 > 0)
    {
      (*(v3 + 56))(v20, 1, 1, v2);
      MEMORY[0x193AFEC10](v11, -1, -1);
      (*(v3 + 8))(v7, v2);
      uset_close();
      goto LABEL_28;
    }

    if (Item > 0)
    {
      v21 = sub_19166B708();
      v22 = v15;
      sub_19166B948();
      sub_19166AF28();
    }

    else
    {
      if (v23 < 0)
      {
        goto LABEL_31;
      }

      if ((HIDWORD(v23) & 0x7FFFF800) == 0xD800)
      {
        goto LABEL_36;
      }

      if (HIDWORD(v23) > 0x10FFFF)
      {
        goto LABEL_32;
      }

      if ((v23 & 0x80000000) != 0)
      {
        goto LABEL_33;
      }

      if ((v23 & 0x7FFFF800) == 0xD800)
      {
        goto LABEL_37;
      }

      if (v23 > 0x10FFFF)
      {
        goto LABEL_34;
      }

      if (v23 < HIDWORD(v23))
      {
        goto LABEL_35;
      }

      sub_19166AF18();
    }

    ++v14;
  }

  while (v13 != v14);
  a1 = v20;
LABEL_27:
  (*(v3 + 16))(a1, v7, v2);
  (*(v3 + 56))(a1, 0, 1, v2);
  MEMORY[0x193AFEC10](v11, -1, -1);
  (*(v3 + 8))(v7, v2);
  uset_close();
LABEL_28:
  result = ulocdata_close();
LABEL_29:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t Locale.axExemplarCharacterSet.getter@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = sub_19166AF68();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2, v5);
  v46 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5F8, &qword_191672A00);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v53 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v43 - v18;
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v23 = &v43 - v22;
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = &v43 - v25;
  v27 = *(v3 + 56);
  v3 += 56;
  v50 = v27;
  v27(&v43 - v25, 1, 1, v2);
  v28 = 0;
  v29 = (v3 - 8);
  v30 = (v3 - 24);
  v47 = (v3 - 48);
  v48 = (v3 - 24);
  v54 = v3;
  v45 = (v3 - 40);
  v51 = v23;
  v52 = v1;
  v49 = v19;
  do
  {
    v31 = *(&unk_1F05758D8 + v28 + 32);
    sub_1915F22B0(v23);
    v32 = *v29;
    if ((*v29)(v23, 1, v2) == 1)
    {
      sub_19159E780(v23, &qword_1EADAF5F8, &qword_191672A00);
    }

    else
    {
      v33 = v23;
      v34 = *v30;
      (*v30)(v10, v33, v2);
      v35 = v53;
      sub_1915F2B0C(v26, v53);
      v36 = v32(v35, 1, v2);
      sub_19159E780(v35, &qword_1EADAF5F8, &qword_191672A00);
      if (v36 == 1)
      {
        v37 = v49;
        v34(v49, v10, v2);
        v38 = 0;
        v23 = v51;
      }

      else
      {
        v39 = v32(v26, 1, v2);
        v37 = v49;
        if (v39)
        {
          (*v47)(v10, v2);
          v38 = 1;
        }

        else
        {
          v40 = v46;
          (*v45)(v46, v26, v2);
          sub_19166AF08();
          v41 = *v47;
          (*v47)(v40, v2);
          v41(v10, v2);
          v38 = 0;
        }

        v23 = v51;
        v30 = v48;
      }

      v50(v37, v38, 1, v2);
      sub_1915F2B7C(v37, v26);
    }

    v28 += 4;
  }

  while (v28 != 16);
  return sub_1915F2A9C(v26, v44);
}

uint64_t sub_1915F2A9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5F8, &qword_191672A00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1915F2B0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5F8, &qword_191672A00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1915F2B7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5F8, &qword_191672A00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1915F2BEC(uint64_t a1)
{
  v2 = sub_19166B2D8();
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v5, v8);
  v12 = &v18 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = (v10 + 8);
    v15 = (a1 + 40);
    do
    {
      v17 = *(v15 - 1);
      v16 = *v15;
      swift_bridgeObjectRetain_n();
      sub_19166B2E8();
      sub_1915F5BF4(v12, v7);
      (*v14)(v12, v2);

      v15 += 2;
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t Unicode.Scalar.axScripts.getter(int a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v46 = sub_19166B2D8();
  v2 = *(v46 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x1EEE9AC00](v46, v4);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v7);
  v44 = &v41 - v8;
  v9 = swift_slowAlloc();
  if (a1 < 0)
  {
    goto LABEL_34;
  }

  v10 = v9;
  v48 = 0;
  ScriptExtensions = uscript_getScriptExtensions();
  if (v48)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF600, &qword_191672A10);
    v12 = *(v2 + 72);
    v13 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_191672210;
    sub_19166B2E8();
    v15 = sub_1915F7D24(v14);
    swift_setDeallocating();
    (*(v2 + 8))(v14 + v13, v46);
    swift_deallocClassInstance();
    goto LABEL_31;
  }

  v16 = ScriptExtensions;
  if (ScriptExtensions)
  {
    v17 = sub_1915F4DA8(ScriptExtensions, 0);
    memcpy(v17 + 4, v10, 4 * v16);
    v18 = v17[2];
    if (v18)
    {
LABEL_6:
      v19 = 0;
      v20 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v19 >= v17[2])
        {
          __break(1u);
          goto LABEL_33;
        }

        v21 = *(v17 + v19 + 8);
        if (!uscript_getShortName())
        {
          goto LABEL_11;
        }

        v22 = sub_19166B878();
        v24 = v23;
        if (sub_19166B838() <= 0)
        {
          break;
        }

LABEL_12:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1915F47A8(0, *(v20 + 2) + 1, 1, v20);
        }

        v26 = *(v20 + 2);
        v25 = *(v20 + 3);
        if (v26 >= v25 >> 1)
        {
          v20 = sub_1915F47A8((v25 > 1), v26 + 1, 1, v20);
        }

        ++v19;
        *(v20 + 2) = v26 + 1;
        v27 = &v20[16 * v26];
        *(v27 + 4) = v22;
        *(v27 + 5) = v24;
        if (v18 == v19)
        {
          goto LABEL_20;
        }
      }

LABEL_11:
      v24 = 0xE400000000000000;
      v22 = 2038004058;
      goto LABEL_12;
    }
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
    v18 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v18)
    {
      goto LABEL_6;
    }
  }

  v20 = MEMORY[0x1E69E7CC0];
LABEL_20:

  v43 = *(v20 + 2);
  if (v43)
  {
    v28 = 0;
    v42 = (v2 + 8);
    v29 = (v20 + 40);
    v15 = MEMORY[0x1E69E7CD0];
    v30 = v45;
    while (v28 < *(v20 + 2))
    {
      v32 = *(v29 - 1);
      v31 = *v29;
      v47 = v15;
      swift_bridgeObjectRetain_n();

      sub_19166B2E8();
      v33 = v44;
      sub_1915F5BF4(v44, v30);
      (*v42)(v33, v46);
      if (qword_1EADAEFE0 != -1)
      {
        swift_once();
      }

      v34 = qword_1EADB6DE8;
      if (*(qword_1EADB6DE8 + 16))
      {
        v35 = sub_1915DB0E4(v32, v31);
        if (v36)
        {
          v37 = *(*(v34 + 56) + 8 * v35);

          sub_1915F2BEC(v38);
        }
      }

      ++v28;

      v15 = v47;
      v29 += 2;
      if (v43 == v28)
      {
        goto LABEL_30;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  v15 = MEMORY[0x1E69E7CD0];
LABEL_30:

LABEL_31:
  v39 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t Locale.Language.axScripts.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF608, &qword_191672A18);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v4 = &v69 - v3;
  v5 = sub_19166B2D8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = &v69 - v14;
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v74 = &v69 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v73 = &v69 - v21;
  MEMORY[0x1EEE9AC00](v20, v22);
  v72 = &v69 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF5E0, &unk_191672A20);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8, v26);
  v28 = &v69 - v27;
  v29 = sub_19166B278();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29, v32);
  v34 = &v69 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = MEMORY[0x1E69E7CD0];
  sub_19166B338();
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    sub_19159E780(v28, &qword_1EADAF5E0, &unk_191672A20);
    return MEMORY[0x1E69E7CD0];
  }

  else
  {
    v70 = v30;
    v71 = v29;
    (*(v30 + 32))(v34, v28, v29);
    sub_19166B358();
    v36 = v34;
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_19159E780(v4, &qword_1EADAF608, &qword_191672A18);
    }

    else
    {
      v37 = v72;
      (*(v6 + 32))(v72, v4, v5);
      v38 = v74;
      (*(v6 + 16))(v74, v37, v5);
      v39 = v73;
      sub_1915F5BF4(v73, v38);
      v40 = v11;
      v41 = *(v6 + 8);
      v41(v39, v5);
      v41(v37, v5);
      v11 = v40;
    }

    if (qword_1EADAEFE8 != -1)
    {
      swift_once();
    }

    v42 = qword_1EADB6DF0;
    v43 = sub_19166B238();
    if (*(v42 + 16))
    {
      v45 = sub_1915DB0E4(v43, v44);
      v47 = v46;

      if (v47)
      {
        v74 = v36;
        v48 = *(*(v42 + 56) + 8 * v45);
        v49 = *(v48 + 16);
        v50 = MEMORY[0x1E69E7CC0];
        if (v49)
        {
          v72 = v42;
          v73 = v11;
          v75 = MEMORY[0x1E69E7CC0];

          sub_1915F4ED0(0, v49, 0);
          v50 = v75;
          v69 = v48;
          v51 = (v48 + 40);
          do
          {
            v52 = *(v51 - 1);
            v53 = *v51;

            sub_19166B2E8();
            v75 = v50;
            v55 = *(v50 + 16);
            v54 = *(v50 + 24);
            if (v55 >= v54 >> 1)
            {
              sub_1915F4ED0(v54 > 1, v55 + 1, 1);
              v50 = v75;
            }

            *(v50 + 16) = v55 + 1;
            (*(v6 + 32))(v50 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v55, v15, v5);
            v51 += 2;
            --v49;
          }

          while (v49);

          v42 = v72;
          v11 = v73;
        }

        sub_1915F7EAC(v50);

        v36 = v74;
      }
    }

    else
    {
    }

    v57 = v70;
    v56 = v71;
    if (*(v42 + 16))
    {
      v58 = sub_1915DB0E4(42, 0xE100000000000000);
      if (v59)
      {
        v60 = *(*(v42 + 56) + 8 * v58);
        v61 = *(v60 + 16);
        v62 = MEMORY[0x1E69E7CC0];
        if (v61)
        {
          v74 = v36;
          v75 = MEMORY[0x1E69E7CC0];

          sub_1915F4ED0(0, v61, 0);
          v62 = v75;
          v73 = v60;
          v63 = (v60 + 40);
          do
          {
            v64 = *(v63 - 1);
            v65 = *v63;

            sub_19166B2E8();
            v75 = v62;
            v66 = v11;
            v68 = *(v62 + 16);
            v67 = *(v62 + 24);
            if (v68 >= v67 >> 1)
            {
              sub_1915F4ED0(v67 > 1, v68 + 1, 1);
              v62 = v75;
            }

            *(v62 + 16) = v68 + 1;
            (*(v6 + 32))(v62 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v68, v66, v5);
            v63 += 2;
            --v61;
            v11 = v66;
          }

          while (v61);

          v57 = v70;
          v56 = v71;
          v36 = v74;
        }

        sub_1915F7EAC(v62);
      }
    }

    (*(v57 + 8))(v36, v56);
    return v76;
  }
}

BOOL Locale.Language.supportsCharacter(_:)(int a1)
{
  v1 = Unicode.Scalar.axScripts.getter(a1);
  v2 = Locale.Language.axScripts.getter();
  v3 = sub_1915F7124(v2, v1);

  v4 = *(v3 + 16);

  return v4 != 0;
}

uint64_t AXCachedLocaleCharacterSupportMatrix.__allocating_init(locale:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_19166AF58();
  sub_19166AF58();
  v6 = OBJC_IVAR____TtC15AXCoreUtilities36AXCachedLocaleCharacterSupportMatrix_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4F8, &qword_191675FE0);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v5 + v6) = v7;
  v8 = OBJC_IVAR____TtC15AXCoreUtilities36AXCachedLocaleCharacterSupportMatrix_locale;
  v9 = sub_19166B388();
  (*(*(v9 - 8) + 32))(v5 + v8, a1, v9);
  return v5;
}

uint64_t AXCachedLocaleCharacterSupportMatrix.init(locale:)(uint64_t a1)
{
  sub_19166AF58();
  sub_19166AF58();
  v3 = OBJC_IVAR____TtC15AXCoreUtilities36AXCachedLocaleCharacterSupportMatrix_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4F8, &qword_191675FE0);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v1 + v3) = v4;
  v5 = OBJC_IVAR____TtC15AXCoreUtilities36AXCachedLocaleCharacterSupportMatrix_locale;
  v6 = sub_19166B388();
  (*(*(v6 - 8) + 32))(v1 + v5, a1, v6);
  return v1;
}

uint64_t sub_1915F39F4(int a1)
{
  v2 = v1;
  v4 = sub_19166B368();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v1 + OBJC_IVAR____TtC15AXCoreUtilities36AXCachedLocaleCharacterSupportMatrix_lock);
  v23 = v1;
  v24 = a1;
  os_unfair_lock_lock(v10 + 4);
  sub_1915F7FF4(v25);
  os_unfair_lock_unlock(v10 + 4);
  v11 = v25[0];
  if (v25[0] == 2)
  {
    sub_19166B378();
    v12 = Unicode.Scalar.axScripts.getter(a1);
    v13 = Locale.Language.axScripts.getter();
    v14 = sub_1915F7124(v13, v12);

    (*(v5 + 8))(v9, v4);
    v15 = *(v14 + 16);

    v11 = v15 != 0;
    v18 = MEMORY[0x1EEE9AC00](v16, v17);
    v22[-32] = v15 != 0;
    *&v22[-24] = v2;
    *&v22[-16] = a1;
    MEMORY[0x1EEE9AC00](v18, v19);
    *&v22[-16] = sub_1915F8014;
    *&v22[-8] = v20;
    os_unfair_lock_lock(v10 + 4);
    sub_1915F8038(v25);
    os_unfair_lock_unlock(v10 + 4);
  }

  return v11 & 1;
}

uint64_t sub_1915F3BE8@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v18 = a2;
  v3 = sub_19166AF68();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC15AXCoreUtilities36AXCachedLocaleCharacterSupportMatrix_supportedCharacters;
  swift_beginAccess();
  v10 = v4[2];
  v10(v8, a1 + v9, v3);
  v11 = sub_19166AF48();
  v12 = v4[1];
  result = v12(v8, v3);
  if (v11)
  {
    v14 = 1;
  }

  else
  {
    v15 = OBJC_IVAR____TtC15AXCoreUtilities36AXCachedLocaleCharacterSupportMatrix_unsupportedCharacters;
    swift_beginAccess();
    v10(v8, a1 + v15, v3);
    v16 = sub_19166AF48();
    result = v12(v8, v3);
    if (v16)
    {
      v14 = 0;
    }

    else
    {
      v14 = 2;
    }
  }

  *v18 = v14;
  return result;
}

uint64_t sub_1915F3D8C@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = sub_19166AF38();
  result = swift_endAccess();
  *a1 = v2 & 1;
  *(a1 + 4) = HIDWORD(v2);
  return result;
}

uint64_t sub_1915F3E28(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v42 = sub_19166B368();
  v6 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42, v7);
  v41 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    return 1;
  }

  v11 = OBJC_IVAR____TtC15AXCoreUtilities36AXCachedLocaleCharacterSupportMatrix_lock;
  v34 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v35 = a2 & 0xFFFFFFFFFFFFFFLL;
  v38 = (v8 + 8);
  v39 = OBJC_IVAR____TtC15AXCoreUtilities36AXCachedLocaleCharacterSupportMatrix_locale;

  v14 = 0;
  v40 = a2;
  v36 = v10;
  v37 = v11;
  do
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      v12 = sub_19166C0B8();
      v16 = v12;
      v44 = v13;
      goto LABEL_18;
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v45[0] = v43;
      v45[1] = v35;
      v15 = v45 + v14;
    }

    else
    {
      v12 = v34;
      if ((v43 & 0x1000000000000000) == 0)
      {
        v12 = sub_19166C108();
      }

      v15 = (v12 + v14);
    }

    v16 = *v15;
    if ((*v15 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    v31 = (__clz(v16 ^ 0xFF) - 24);
    if (v31 > 2)
    {
      if (v31 == 3)
      {
        v16 = ((v16 & 0xF) << 12) | ((v15[1] & 0x3F) << 6) | v15[2] & 0x3F;
        v17 = 3;
      }

      else
      {
        v16 = ((v16 & 0xF) << 18) | ((v15[1] & 0x3F) << 12) | ((v15[2] & 0x3F) << 6) | v15[3] & 0x3F;
        v17 = 4;
      }

      goto LABEL_17;
    }

    if (v31 == 1)
    {
LABEL_16:
      v17 = 1;
    }

    else
    {
      v16 = v15[1] & 0x3F | ((v16 & 0x1F) << 6);
      v17 = 2;
    }

LABEL_17:
    v44 = v17;
LABEL_18:
    v18 = *(v3 + v11);
    MEMORY[0x1EEE9AC00](v12, v13);
    *(&v34 - 2) = v3;
    *(&v34 - 2) = v16;
    os_unfair_lock_lock(v18 + 4);
    sub_1915F82B8(v45);
    os_unfair_lock_unlock(v18 + 4);
    if (LOBYTE(v45[0]) == 2)
    {
      v19 = v3;
      v20 = v41;
      sub_19166B378();
      v21 = Unicode.Scalar.axScripts.getter(v16);
      v22 = Locale.Language.axScripts.getter();
      v23 = sub_1915F7124(v22, v21);

      (*v38)(v20, v42);
      v24 = *(v23 + 16);

      v27 = MEMORY[0x1EEE9AC00](v25, v26);
      *(&v34 - 32) = v28;
      v3 = v19;
      *(&v34 - 3) = v19;
      *(&v34 - 4) = v16;
      MEMORY[0x1EEE9AC00](v27, v29);
      *(&v34 - 2) = sub_1915F82A0;
      *(&v34 - 1) = v30;
      os_unfair_lock_lock(v18 + 4);
      sub_1915F8288(v45);
      os_unfair_lock_unlock(v18 + 4);
      if (!v24)
      {
        v32 = 0;
        goto LABEL_29;
      }

      a2 = v40;
      v10 = v36;
      v11 = v37;
    }

    else if ((v45[0] & 1) == 0)
    {
      v32 = 0;
      goto LABEL_29;
    }

    v14 += v44;
  }

  while (v14 < v10);
  v32 = 1;
LABEL_29:

  return v32;
}

uint64_t AXCachedLocaleCharacterSupportMatrix.deinit()
{
  v1 = OBJC_IVAR____TtC15AXCoreUtilities36AXCachedLocaleCharacterSupportMatrix_locale;
  v2 = sub_19166B388();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15AXCoreUtilities36AXCachedLocaleCharacterSupportMatrix_supportedCharacters;
  v4 = sub_19166AF68();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC15AXCoreUtilities36AXCachedLocaleCharacterSupportMatrix_unsupportedCharacters, v4);
  v6 = *(v0 + OBJC_IVAR____TtC15AXCoreUtilities36AXCachedLocaleCharacterSupportMatrix_lock);

  return v0;
}

uint64_t AXCachedLocaleCharacterSupportMatrix.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15AXCoreUtilities36AXCachedLocaleCharacterSupportMatrix_locale;
  v2 = sub_19166B388();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15AXCoreUtilities36AXCachedLocaleCharacterSupportMatrix_supportedCharacters;
  v4 = sub_19166AF68();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC15AXCoreUtilities36AXCachedLocaleCharacterSupportMatrix_unsupportedCharacters, v4);
  v6 = *(v0 + OBJC_IVAR____TtC15AXCoreUtilities36AXCachedLocaleCharacterSupportMatrix_lock);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void *sub_1915F4450(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1915F4598(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF620, &qword_191672A88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1915F46A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF650, &qword_191672AC0);
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

char *sub_1915F47A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4E0, &qword_1916724A0);
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

void *sub_1915F48B4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF668, &unk_191672AE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4D0, &unk_191672480);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1915F49E8(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF640, &qword_191672AA8);
  v10 = *(sub_19166B1C8() - 8);
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
  v15 = *(sub_19166B1C8() - 8);
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

void *sub_1915F4BE4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1915F4D18(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF660, &unk_191672AD0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_1915F4DA8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF690, &qword_191672B08);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

char *sub_1915F4E2C(char *a1, int64_t a2, char a3)
{
  result = sub_1915F4F94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1915F4E4C(void *a1, int64_t a2, char a3)
{
  result = sub_1915F50A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1915F4E6C(void *a1, int64_t a2, char a3)
{
  result = sub_1915F5308(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1915F4E8C(size_t a1, int64_t a2, char a3)
{
  result = sub_1915F543C(a1, a2, a3, *v3, &qword_1EADAF698, &qword_191672B10, MEMORY[0x1E6968FB0]);
  *v3 = result;
  return result;
}

size_t sub_1915F4ED0(size_t a1, int64_t a2, char a3)
{
  result = sub_1915F543C(a1, a2, a3, *v3, &qword_1EADAF600, &qword_191672A10, MEMORY[0x1E69696A0]);
  *v3 = result;
  return result;
}

char *sub_1915F4F14(char *a1, int64_t a2, char a3)
{
  result = sub_1915F5618(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1915F4F34(void *a1, int64_t a2, char a3)
{
  result = sub_1915F5724(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1915F4F54(char *a1, int64_t a2, char a3)
{
  result = sub_1915F5858(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1915F4F74(void *a1, int64_t a2, char a3)
{
  result = sub_1915F595C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1915F4F94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF620, &qword_191672A88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1915F50A0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF648, &unk_191672AB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4A8, &qword_191672420);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1915F51E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF658, &qword_191672AC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1915F5308(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF6A0, &qword_191672B18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF6A8, &qword_191672B20);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1915F543C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1915F5618(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4E0, &qword_1916724A0);
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

void *sub_1915F5724(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF668, &unk_191672AE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF4D0, &unk_191672480);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1915F5858(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF670, &unk_191672AF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

void *sub_1915F595C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF660, &unk_191672AD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF3E8, &qword_1916721B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1915F5AA4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_19166C778();
  sub_19166B828();
  v9 = sub_19166C7B8();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_19166C5E8() & 1) != 0)
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

    sub_1915F6454(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1915F5BF4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_19166B2D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_1915F8244(&qword_1EADAF678);
  v37 = a2;
  v14 = sub_19166B6B8();
  v15 = v12 + 56;
  v35 = v12 + 56;
  v36 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v32 = v3;
    v33 = a1;
    v34 = ~v16;
    v31 = v7;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    v22 = (v19 - 8);
    v30[1] = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v23 = v18;
      v18(v11, *(v36 + 48) + v21 * v17, v6);
      sub_1915F8244(&qword_1EADAF680);
      v24 = sub_19166B6E8();
      v25 = *v22;
      (*v22)(v11, v6);
      if (v24)
      {
        break;
      }

      v17 = (v17 + 1) & v34;
      v18 = v23;
      if (((*(v35 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v3 = v32;
        a1 = v33;
        v7 = v31;
        goto LABEL_7;
      }
    }

    v25(v37, v6);
    v23(v33, *(v36 + 48) + v21 * v17, v6);
    return 0;
  }

  else
  {
    v18 = *(v7 + 16);
LABEL_7:
    v26 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v37;
    v18(v11, v37, v6);
    v38 = *v3;
    sub_1915F65D4(v11, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
    (*(v7 + 32))(a1, v28, v6);
    return 1;
  }
}

uint64_t sub_1915F5EAC(uint64_t a1)
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
      sub_19166C778();
      sub_19166B828();
      result = sub_19166C7B8();
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

uint64_t sub_1915F610C(uint64_t a1)
{
  v2 = v1;
  v42 = sub_19166B2D8();
  v4 = *(v42 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF688, &qword_191672B00);
  result = sub_19166C078();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
    v12 = 0;
    v13 = (v8 + 56);
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
    v40 = v4 + 4;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48) + v4[9] * (v20 | (v12 << 6));
      v24 = v4[4];
      v38 = v4[9];
      v39 = v24;
      v24(v41, v23, v42);
      v25 = v11;
      v26 = *(v11 + 40);
      sub_1915F8244(&qword_1EADAF678);
      result = sub_19166B6B8();
      v11 = v25;
      v27 = -1 << *(v25 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = v39(*(v25 + 48) + v19 * v38, v41, v42);
      ++*(v25 + 16);
      v8 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1915F6454(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_1915F5EAC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1915F6850();
      goto LABEL_16;
    }

    sub_1915F6BE4(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_19166C778();
  sub_19166B828();
  result = sub_19166C7B8();
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

      result = sub_19166C5E8();
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
  result = sub_19166C6E8();
  __break(1u);
  return result;
}

uint64_t sub_1915F65D4(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_19166B2D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1915F610C(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1915F69AC();
      goto LABEL_12;
    }

    sub_1915F6E1C(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_1915F8244(&qword_1EADAF678);
  v16 = sub_19166B6B8();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      sub_1915F8244(&qword_1EADAF680);
      v24 = sub_19166B6E8();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_19166C6E8();
  __break(1u);
  return result;
}

void *sub_1915F6850()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF628, &qword_191672A90);
  v2 = *v0;
  v3 = sub_19166C068();
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

void *sub_1915F69AC()
{
  v1 = v0;
  v2 = sub_19166B2D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADAF688, &qword_191672B00);
  v8 = *v0;
  v9 = sub_19166C068();
  v10 = v9;
  if (*(v8 + 16))
  {
    v24 = v1;
    result = (v9 + 56);
    v12 = v8 + 56;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v12 + 8 * v13)
    {
      result = memmove(result, (v8 + 56), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v8 + 56);
    v18 = (v15 + 63) >> 6;
    v25 = v3 + 32;
    for (i = v3 + 16; v17; result = (*(v3 + 32))(*(v10 + 48) + v22, v7, v2))
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_14:
      v22 = *(v3 + 72) * (v19 | (v14 << 6));
      (*(v3 + 16))(v7, *(v8 + 48) + v22, v2);
    }

    v20 = v14;
    while (1)
    {
      v14 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v14 >= v18)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v21 = *(v12 + 8 * v14);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }

  return result;
}