id sub_100001808(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_1000051B0();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
  v11 = v10;

  if (v11)
  {
    v12 = sub_1000051A0();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id sub_1000018E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AAKPriMLTaskProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_100001948@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return &_swiftEmptyArrayStorage;
    }

    v7 = sub_100005210();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_100001D08(0, 1, 1, &_swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_100001D08((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = &_swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_100005200();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1000051E0();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1000051E0();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_100005210();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_100001D08(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_100005210();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_100001D08(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_100001D08((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1000051E0();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_100001D08(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002124(&qword_10000C550, &qword_100005968);
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
    v10 = &_swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100001E14(uint64_t a1, unint64_t a2)
{
  v13[0] = 58;
  v13[1] = 0xE100000000000000;
  v12[2] = v13;

  v5 = sub_100001948(0x7FFFFFFFFFFFFFFFLL, 1, sub_10000221C, v12, a1, a2, v4);
  if (v5[2] >= 3uLL)
  {
    v7 = v5[12];
    v8 = v5[13];
    v9 = v5[14];
    v10 = v5[15];

    v11 = sub_1000051C0();

    return v11;
  }

  else
  {

    return 0x656D697265707865;
  }
}

uint64_t sub_100001F18(uint64_t a1, unint64_t a2)
{
  v12[0] = 58;
  v12[1] = 0xE100000000000000;
  v11[2] = v12;

  v5 = sub_100001948(0x7FFFFFFFFFFFFFFFLL, 1, sub_10000221C, v11, a1, a2, v4);
  if (v5[2] >= 5uLL)
  {
    v6 = v5[20];
    v7 = v5[21];
    v8 = v5[22];
    v9 = v5[23];

    a1 = sub_1000051C0();
  }

  else
  {
  }

  return a1;
}

uint64_t sub_100002004(uint64_t a1, unint64_t a2)
{
  v13[0] = 58;
  v13[1] = 0xE100000000000000;
  v12[2] = v13;

  v5 = sub_100001948(0x7FFFFFFFFFFFFFFFLL, 1, sub_100002108, v12, a1, a2, v4);
  if (v5[2] >= 4uLL)
  {
    v7 = v5[16];
    v8 = v5[17];
    v9 = v5[18];
    v10 = v5[19];

    v11 = sub_1000051C0();

    return v11;
  }

  else
  {

    return 0x656D796F6C706564;
  }
}

uint64_t sub_100002124(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002170(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1000052C0() & 1;
  }
}

unint64_t sub_1000021C8()
{
  result = qword_10000C558;
  if (!qword_10000C558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C558);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AAKPriMLPluginError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AAKPriMLPluginError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Int sub_1000023C0()
{
  v1 = *v0;
  sub_100005320();
  sub_100005330(v1 + 9801);
  return sub_100005340();
}

Swift::Int sub_100002440()
{
  v1 = *v0;
  sub_100005320();
  sub_100005330(v1 + 9801);
  return sub_100005340();
}

void *sub_100002488@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result - 9801;
  if (v2 >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1000024C0()
{
  result = qword_10000C5D0;
  if (!qword_10000C5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C5D0);
  }

  return result;
}

uint64_t sub_100002518(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002578();
  v5 = sub_1000025CC();

  return Error<>._code.getter(a1, a2, v4, v5);
}

unint64_t sub_100002578()
{
  result = qword_10000C5D8;
  if (!qword_10000C5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C5D8);
  }

  return result;
}

unint64_t sub_1000025CC()
{
  result = qword_10000C5E0;
  if (!qword_10000C5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C5E0);
  }

  return result;
}

uint64_t sub_100002650()
{
  v1 = *(v0 + 16);
  v2 = enum case for TaskResolution.download(_:);
  v3 = sub_1000050B0();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000026FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to MLHostExtension.shouldRun(context:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100004F8C;

  return MLHostExtension.shouldRun(context:)(a1, a2, a3);
}

uint64_t sub_1000027AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002854;

  return sub_100004120(a1);
}

uint64_t sub_100002854(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_100002950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_100002A34;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_100002A34()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100002B28(uint64_t a1)
{
  v2 = sub_100002CB0();

  return MLHostExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100002BD0();
  sub_100005020();
  return 0;
}

unint64_t sub_100002BD0()
{
  result = qword_10000C5E8;
  if (!qword_10000C5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C5E8);
  }

  return result;
}

unint64_t sub_100002CB0()
{
  result = qword_10000C6A0;
  if (!qword_10000C6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C6A0);
  }

  return result;
}

uint64_t sub_100002D04(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002DD0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_100004DCC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004D80(v11);
  return v7;
}

unint64_t sub_100002DD0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100002EDC(a5, a6);
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
    result = sub_1000052B0();
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

char *sub_100002EDC(uint64_t a1, unint64_t a2)
{
  v4 = sub_100002F28(a1, a2);
  sub_100003058(&off_100008618);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100002F28(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100003144(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1000052B0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1000051F0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100003144(v10, 0);
        result = sub_1000052A0();
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

uint64_t sub_100003058(uint64_t result)
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

  result = sub_1000031B8(result, v12, 1, v3);
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

void *sub_100003144(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100002124(&qword_10000C6C8, &qword_100005BA0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000031B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002124(&qword_10000C6C8, &qword_100005BA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_1000032AC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100005270(*(v2 + 40));

  return sub_100003368(a1, v4);
}

unint64_t sub_1000032F0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100005320();
  sub_1000051D0();
  v6 = sub_100005340();

  return sub_100003430(a1, a2, v6);
}

unint64_t sub_100003368(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100004F30(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100005280();
      sub_100004EDC(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100003430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1000052C0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_1000034E8()
{
  v0 = sub_100005160();
  v41 = *(v0 - 8);
  v1 = *(v41 + 64);
  v2 = (__chkstk_darwin)();
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v39 - v6;
  __chkstk_darwin(v5);
  v9 = &v39 - v8;
  v40 = [objc_allocWithZone(BMSQLDatabase) initWithPrivileges:0 isColumnAccessLoggingEnabled:0];
  v10 = sub_100005240();
  v11 = [v10 error];
  if (v11)
  {

LABEL_12:
    sub_100005090();
    v23 = v10;
    v24 = sub_100005150();
    v25 = sub_100005260();

    if (os_log_type_enabled(v24, v25))
    {
      v39 = v0;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v44[0] = v27;
      *v26 = 136315138;
      v28 = [v23 error];
      if (v28)
      {
        v29 = v28;
        swift_getErrorValue();
        v30 = sub_1000052D0();
        v32 = v31;
      }

      else
      {
        v32 = 0xE700000000000000;
        v30 = 0x6E776F6E6B6E55;
      }

      v33 = sub_100002D04(v30, v32, v44);

      *(v26 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v24, v25, "Failed to query AdAttributionKit.AggregatedReporting.Conversion with error: %s", v26, 0xCu);
      sub_100004D80(v27);

      (*(v41 + 8))(v4, v39);
    }

    else
    {

      (*(v41 + 8))(v4, v0);
    }

    v34 = 1;
LABEL_19:
    sub_1000021C8();
    swift_allocError();
    *v35 = v34;
    swift_willThrow();

    return;
  }

  if (![v10 next])
  {
    goto LABEL_12;
  }

  v12 = [v10 row];
  if (!v12)
  {
    goto LABEL_21;
  }

  v13 = v12;
  v14 = sub_100005180();

  v42 = 0x6C61746F74;
  v43 = 0xE500000000000000;
  sub_100005290();
  if (!*(v14 + 16) || (v15 = sub_1000032AC(v44), (v16 & 1) == 0))
  {

    sub_100004EDC(v44);
LABEL_21:
    v45 = 0u;
    v46 = 0u;
    goto LABEL_22;
  }

  sub_100004DCC(*(v14 + 56) + 32 * v15, &v45);
  sub_100004EDC(v44);

  if (!*(&v46 + 1))
  {
LABEL_22:
    sub_100004E7C(&v45, &unk_10000C6E0, &unk_100005BB0);
    goto LABEL_23;
  }

  sub_100004D34();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:
    sub_100005090();
    v36 = sub_100005150();
    v37 = sub_100005260();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "No Conversion data found in the database", v38, 2u);
    }

    (*(v41 + 8))(v7, v0);
    v34 = 2;
    goto LABEL_19;
  }

  v17 = v44[0];
  if ([v44[0] integerValue] < 1)
  {

    goto LABEL_23;
  }

  sub_100005090();
  v18 = v17;
  v19 = sub_100005150();
  v20 = sub_100005250();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    *(v21 + 4) = [v18 integerValue];

    _os_log_impl(&_mh_execute_header, v19, v20, "PreflightCheck Passed: found %ld conversion(s) in the database", v21, 0xCu);

    v22 = v10;
    v10 = v18;
    v18 = v40;
  }

  else
  {

    v22 = v40;
    v19 = v18;
  }

  (*(v41 + 8))(v9, v0);
}

uint64_t sub_100003AB8()
{
  v0 = sub_100005160();
  v57 = *(v0 - 8);
  v58 = v0;
  v1 = *(v57 + 64);
  v2 = __chkstk_darwin(v0);
  v56 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v55 = &v52 - v4;
  v5 = sub_100004FB0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005010();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v52 - v16;
  sub_100004FD0();
  (*(v6 + 104))(v9, enum case for URL.DirectoryHint.isDirectory(_:), v5);
  sub_100004E28();
  sub_100005000();
  (*(v6 + 8))(v9, v5);
  v18 = *(v11 + 8);
  v18(v15, v10);
  v19 = sub_100004FF0(0);
  v21 = v20;
  v22 = objc_opt_self();
  v23 = [v22 defaultManager];
  v54 = v19;
  v24 = sub_1000051A0();
  v25 = [v23 fileExistsAtPath:v24];

  if (!v25)
  {
    v18(v17, v10);
  }

  v52 = v18;
  v53 = v10;
  v26 = [v22 defaultManager];
  sub_100004FE0(v27);
  v29 = v28;
  v59 = 0;
  v30 = [v26 removeItemAtURL:v28 error:&v59];

  if (v30)
  {
    v31 = v59;
    v32 = v55;
    sub_100005090();

    v33 = sub_100005150();
    v34 = sub_100005250();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v59 = v36;
      *v35 = 136315138;
      v37 = sub_100002D04(v54, v21, &v59);

      *(v35 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v33, v34, "Attachments folder removed %s", v35, 0xCu);
      sub_100004D80(v36);
    }

    else
    {
    }

    (*(v57 + 8))(v32, v58);
  }

  else
  {
    v39 = v59;
    sub_100004FA0();

    swift_willThrow();
    v40 = v56;
    sub_100005090();

    swift_errorRetain();
    v41 = sub_100005150();
    v42 = sub_100005260();

    v43 = os_log_type_enabled(v41, v42);
    v44 = v53;
    if (!v43)
    {

      (*(v57 + 8))(v40, v58);
      v50 = v17;
      v51 = v44;
      return v52(v50, v51);
    }

    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v59 = v47;
    *v45 = 136315394;
    v48 = sub_100002D04(v54, v21, &v59);

    *(v45 + 4) = v48;
    *(v45 + 12) = 2112;
    swift_errorRetain();
    v49 = _swift_stdlib_bridgeErrorToNSError();
    *(v45 + 14) = v49;
    *v46 = v49;
    _os_log_impl(&_mh_execute_header, v41, v42, "Failed to remove attachments folder %s: %@", v45, 0x16u);
    sub_100004E7C(v46, &qword_10000C6D8, &qword_100005BA8);

    sub_100004D80(v47);

    (*(v57 + 8))(v56, v58);
  }

  v50 = v17;
  v51 = v53;
  return v52(v50, v51);
}

uint64_t sub_100004120(uint64_t a1)
{
  v1[7] = a1;
  v2 = sub_100005160();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v5 = sub_1000050A0();
  v1[12] = v5;
  v6 = *(v5 - 8);
  v1[13] = v6;
  v7 = *(v6 + 64) + 15;
  v1[14] = swift_task_alloc();
  v8 = sub_100005110();
  v1[15] = v8;
  v9 = *(v8 - 8);
  v1[16] = v9;
  v10 = *(v9 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_1000042B0, 0, 0);
}

uint64_t sub_1000042B0()
{
  sub_1000034E8();
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  v8 = v0[7];
  (*(v6 + 104))(v5, enum case for PFLTaskSource.CKProd(_:), v7);
  sub_100005080();
  sub_100005100();

  (*(v6 + 8))(v5, v7);
  (*(v4 + 16))(v1, v2, v3);
  type metadata accessor for AAKTaskDiscoveryPolicy();
  swift_allocObject();
  sub_100004CEC(&qword_10000C6A8, v9, type metadata accessor for AAKTaskDiscoveryPolicy);
  v10 = sub_1000050F0();
  v0[19] = v10;
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v0[20] = sub_1000050E0();
  v0[4] = sub_1000050C0();
  v13 = sub_100004CEC(&qword_10000C6B0, 255, &type metadata accessor for PFLTaskDiscovery);
  v14 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v15 = swift_task_alloc();
  v0[21] = v15;
  *v15 = v0;
  v15[1] = sub_1000045BC;
  v16 = v0[19];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 5, v16, v13);
}

uint64_t sub_1000045BC()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_100004C60;
  }

  else
  {
    v3 = sub_1000046D0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000046F4()
{
  v61 = v0;
  super_class = v0[11].super_class;
  if (super_class)
  {
    v2 = v0[5].super_class;
    sub_100005090();

    v3 = sub_100005150();
    v4 = sub_100005250();

    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[5].super_class;
    receiver = v0[4].receiver;
    v7 = v0[4].super_class;
    if (v5)
    {
      v58 = v0[5].super_class;
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v60 = v10;
      *v9 = 136315138;
      v11 = sub_100005140();
      v13 = sub_100002D04(v11, v12, &v60);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v3, v4, "Start processing task %s", v9, 0xCu);
      sub_100004D80(v10);

      v14 = *(v7 + 1);
      v14(v58, receiver);
    }

    else
    {

      v14 = *(v7 + 1);
      v14(v6, receiver);
    }

    v29 = type metadata accessor for AAKPriMLTaskProvider();
    v30 = objc_allocWithZone(v29);
    *&v30[OBJC_IVAR____TtC14AAKPriMLPlugin20AAKPriMLTaskProvider_task] = super_class;
    v0[1].receiver = v30;
    v0[1].super_class = v29;

    v59 = objc_msgSendSuper2(v0 + 1, "init");
    v31 = [objc_opt_self() runAllRecipesWithAssetProvider:v59];
    sub_100004D34();
    v32 = sub_100005180();

    v33 = sub_100005140();
    if (*(v32 + 16))
    {
      v35 = sub_1000032F0(v33, v34);
      v37 = v36;

      if ((v37 & 1) != 0 && [*(*(v32 + 56) + 8 * v35) integerValue] > 0)
      {
LABEL_14:
        v39 = v0[5].receiver;
        sub_100005090();

        v40 = sub_100005150();
        v41 = sub_100005250();

        v42 = os_log_type_enabled(v40, v41);
        v43 = v0[5].receiver;
        v44 = v0[4].receiver;
        if (v42)
        {
          v57 = v0[4].super_class + 8;
          v56 = v14;
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v60 = v46;
          *v45 = 136315138;
          v47 = sub_100005190();
          v55 = v43;
          v49 = v48;

          v50 = sub_100002D04(v47, v49, &v60);

          *(v45 + 4) = v50;
          _os_log_impl(&_mh_execute_header, v40, v41, "Recorded the following record counts in experiments %s", v45, 0xCu);
          sub_100004D80(v46);

          v56(v55, v44);
        }

        else
        {

          v14(v43, v44);
        }

        v51 = sub_100004CEC(&qword_10000C6B0, 255, &type metadata accessor for PFLTaskDiscovery);
        v52 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
        v53 = swift_task_alloc();
        v0[10].super_class = v53;
        *v53 = v0;
        *(v53 + 1) = sub_1000045BC;
        v54 = v0[9].super_class;

        return dispatch thunk of AsyncIteratorProtocol.next()(&v0[2].super_class, v54, v51);
      }
    }

    else
    {
    }

    v38 = v0[10].receiver;
    sub_1000050D0();
    goto LABEL_14;
  }

  v15 = v0[10].receiver;
  v16 = v0[9].receiver;
  v17 = v0[7].super_class;
  v18 = v0[8].receiver;
  v19 = v0[2].receiver;

  sub_100003AB8();
  v20 = objc_allocWithZone(sub_100005040());
  v21 = sub_100005030();

  v18[1](v16, v17);
  v23 = v0[8].super_class;
  v22 = v0[9].receiver;
  v24 = v0[7].receiver;
  v26 = v0[5].receiver;
  v25 = v0[5].super_class;

  v27 = v0->super_class;

  return v27(v21);
}

uint64_t sub_100004C60()
{
  *(v0 + 48) = *(v0 + 176);
  sub_100002124(&qword_10000C6B8, &qword_100005B98);
  v1 = swift_dynamicCast();

  return _swift_willThrowTypedImpl(v1, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_100004CEC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_100004D34()
{
  result = qword_10000C6C0;
  if (!qword_10000C6C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C6C0);
  }

  return result;
}

uint64_t sub_100004D80(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100004DCC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100004E28()
{
  result = qword_10000C6D0;
  if (!qword_10000C6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C6D0);
  }

  return result;
}

uint64_t sub_100004E7C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002124(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}