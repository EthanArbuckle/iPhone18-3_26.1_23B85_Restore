uint64_t sub_100001540(uint64_t a1, unint64_t a2)
{
  *&v40 = a1;
  *(&v40 + 1) = a2;

  sub_1000054F8(&qword_10001C690, &qword_100014310);
  if (swift_dynamicCast())
  {
    sub_10000572C(__src, &v41);
    sub_100005744(&v41, v42);
    sub_100013540();
    __src[0] = v40;
    sub_100005788(&v41);
    goto LABEL_63;
  }

  v39 = 0;
  memset(__src, 0, sizeof(__src));
  sub_1000055FC(__src, &qword_10001C698, &qword_100014318);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1000139B0();
  }

  sub_100002158(v4, v5, &v41);
  v6 = *(&v41 + 1);
  v7 = v41;
  if (*(&v41 + 1) >> 60 != 15)
  {
    __src[0] = v41;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1000028FC(v8);
  *(&__src[0] + 1) = v9;
  __chkstk_darwin();
  v10 = sub_100002220(sub_10000565C);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_100013610();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v35 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v40 + 7) = 0;
  *&v40 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v34 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v36 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_100002778(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_100013820();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_100013850();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v41 = v14;
      *(&v41 + 1) = v37;
      v31 = *(&v41 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v36;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1000139B0();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_100002778(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_100013830();
LABEL_52:
    *(&v40 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v41 = v40;
      *(&v41 + 6) = *(&v40 + 6);
      sub_100013620();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v34;
  if (v24)
  {
    *&v41 = v40;
    *(&v41 + 6) = *(&v40 + 6);
    sub_100013620();
    sub_100005718(v35, v34);
    goto LABEL_62;
  }

LABEL_57:

  sub_100005718(v35, v6);
LABEL_63:
  v32 = __src[0];
  sub_1000056C4(*&__src[0], *(&__src[0] + 1));

  sub_1000054A4(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_100001A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to MLHostExtension.shouldRun(context:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000058C0;

  return MLHostExtension.shouldRun(context:)(a1, a2, a3);
}

uint64_t sub_100001B10(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100001BB8;

  return sub_10000316C(a1);
}

uint64_t sub_100001BB8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_100001CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_100001D98;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_100001D98()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100001E8C(uint64_t a1)
{
  v2 = sub_100002FE8();

  return MLHostExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001F38();
  sub_100013680();
  return 0;
}

unint64_t sub_100001F38()
{
  result = qword_10001C638;
  if (!qword_10001C638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C638);
  }

  return result;
}

id variable initialization expression of FedStatsPluginMLHostClient.containerConfig()
{
  v0 = objc_allocWithZone(CKOperationConfiguration);

  return [v0 init];
}

char *sub_10000204C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000054F8(&unk_10001C9E0, &unk_100014850);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

uint64_t sub_100002158@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_100002844(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_100013530();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_1000134E0();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_100013600();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

char *sub_100002220(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_1000054A4(v6, v5);
      v21[0] = v6;
      LOWORD(v21[1]) = v5;
      BYTE2(v21[1]) = BYTE2(v5);
      BYTE3(v21[1]) = BYTE3(v5);
      BYTE4(v21[1]) = BYTE4(v5);
      BYTE5(v21[1]) = BYTE5(v5);
      BYTE6(v21[1]) = BYTE6(v5);
      result = a1(&v19, v21, v21 + BYTE6(v5));
      if (!v2)
      {
        result = v19;
      }

      v9 = LODWORD(v21[1]) | ((WORD2(v21[1]) | (BYTE6(v21[1]) << 16)) << 32);
      *v3 = v21[0];
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1000054A4(v6, v5);
    *v3 = xmmword_100014200;
    sub_1000054A4(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1000134F0() && __OFSUB__(v6, sub_100013520()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_100013530();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_1000134D0();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_1000026C4(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        return v17;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_1000054A4(v6, v5);
    v19 = v6;
    v20 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_100014200;
    sub_1000054A4(0, 0xC000000000000000);
    sub_1000135E0();
    result = sub_1000026C4(*(v19 + 2), *(v19 + 3), a1);
    v10 = v20 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v19;
      v3[1] = v10;
      return result;
    }

    *v3 = v19;
LABEL_21:
    v3[1] = v10;
    return result;
  }

  memset(v21, 0, 15);
  result = a1(&v19, v21, v21);
  if (!v2)
  {
    return v19;
  }

  return result;
}

_BYTE *sub_1000025C4@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_100002844(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_10000299C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_100002A18(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_100002658(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_1000026C4(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1000134F0();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_100013520();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_100013510();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_100002778(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_100013860();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_100013840();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1000027F4@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_1000139A0();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100002844(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1000028FC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_100013530();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_100013500();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_100013600();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_10000299C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_100013530();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1000134E0();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_100013600();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_100002A18(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_100013530();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1000134E0();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_100002AB0(uint64_t a1)
{
  v2 = sub_1000054F8(&qword_10001C718, &qword_100014338);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000054F8(&unk_10001C720, &qword_100014340);
    v8 = sub_100013A30();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000057F4(v10, v6, &qword_10001C718, &qword_100014338);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1000100C4(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for FedStatsPluginCKExperimentRecord();
      result = sub_10000585C(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16);
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

unint64_t sub_100002C84(uint64_t a1)
{
  v2 = sub_1000054F8(&qword_10001C708, &qword_100014328);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000054F8(&qword_10001C710, &qword_100014330);
    v8 = sub_100013A30();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000057F4(v10, v6, &qword_10001C708, &qword_100014328);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1000100C4(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_1000135D0();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
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

unint64_t sub_100002E84(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1000054F8(a2, a3);
    v5 = sub_100013A30();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1000100C4(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_100002FE8()
{
  result = qword_10001C640;
  if (!qword_10001C640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C640);
  }

  return result;
}

unint64_t sub_10000303C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000054F8(&qword_10001C680, &qword_100014300);
    v3 = sub_100013A30();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000057F4(v4, &v13, &qword_10001C688, &qword_100014308);
      v5 = v13;
      v6 = v14;
      result = sub_1000100C4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000559C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_10000316C(uint64_t a1)
{
  v1[73] = a1;
  v2 = sub_100013670();
  v1[74] = v2;
  v3 = *(v2 - 8);
  v1[75] = v3;
  v4 = *(v3 + 64) + 15;
  v1[76] = swift_task_alloc();
  v5 = sub_100013570();
  v1[77] = v5;
  v6 = *(v5 - 8);
  v1[78] = v6;
  v7 = *(v6 + 64) + 15;
  v1[79] = swift_task_alloc();
  v8 = sub_1000135D0();
  v1[80] = v8;
  v9 = *(v8 - 8);
  v1[81] = v9;
  v10 = *(v9 + 64) + 15;
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();

  return _swift_task_switch(sub_100003328, 0, 0);
}

void sub_100003328()
{
  v219 = v0;
  if (qword_10001C620 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 584);
  v2 = sub_100013720();
  *(v0 + 680) = sub_100005418(v2, qword_10001D2F0);
  v3 = v1;
  v4 = sub_100013700();
  v5 = sub_1000138E0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 584);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Context: %@", v7, 0xCu);
    sub_1000055FC(v8, &qword_10001C658, &qword_1000142E0);
  }

  v10 = *(v0 + 584);

  sub_1000136F0();
  v11 = sub_100006070();
  v12 = sub_100013700();
  v13 = sub_1000138E0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v216 = v15;
    *v14 = 136315138;
    sub_100013990(28);

    v217 = 0xD00000000000001ALL;
    v218 = 0x8000000100014900;
    v16 = 0xE700000000000000;
    v17 = 0x64696C61766E49;
    v18 = 0x427373616C43;
    if (v11 != 2)
    {
      v18 = 0x417373616C43;
    }

    if (v11)
    {
      v17 = 0x437373616C43;
      v16 = 0xE600000000000000;
    }

    if (v11 <= 1u)
    {
      v19._countAndFlagsBits = v17;
    }

    else
    {
      v19._countAndFlagsBits = v18;
    }

    if (v11 <= 1u)
    {
      v20 = v16;
    }

    else
    {
      v20 = 0xE600000000000000;
    }

    v19._object = v20;
    sub_100013810(v19);

    v21 = sub_10000FB1C(v217, v218, &v216);

    *(v14 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "Access level: %s", v14, 0xCu);
    sub_100005788(v15);
  }

  v22 = *(v0 + 584);
  sub_1000136E0();
  v24 = v23;
  if (v23)
  {
  }

  v25 = sub_100013700();
  v26 = sub_1000138E0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v216 = v28;
    v217 = 0;
    *v27 = 136315138;
    v218 = 0xE000000000000000;
    sub_100013990(22);

    v217 = 0xD000000000000014;
    v218 = 0x80000001000148E0;
    if (v24)
    {
      v29._countAndFlagsBits = 0x63696D616E7944;
    }

    else
    {
      v29._countAndFlagsBits = 0x636974617453;
    }

    if (v24)
    {
      v30 = 0xE700000000000000;
    }

    else
    {
      v30 = 0xE600000000000000;
    }

    v29._object = v30;
    sub_100013810(v29);

    v31 = sub_10000FB1C(v217, v218, &v216);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v25, v26, "MLHost Task Type: %s", v27, 0xCu);
    sub_100005788(v28);
  }

  if (!v24)
  {
    v44 = objc_allocWithZone(sub_1000136A0());
LABEL_34:
    v49 = sub_100013690();
LABEL_54:
    v96 = *(v0 + 672);
    v97 = *(v0 + 664);
    v98 = *(v0 + 656);
    v99 = *(v0 + 632);
    v100 = *(v0 + 608);

    v101 = *(v0 + 8);

    v101(v49);
    return;
  }

  v32 = *(v0 + 584);
  sub_1000136E0();
  if (!v33)
  {
    v45 = sub_100013700();
    v46 = sub_1000138F0();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "No task folder from task", v47, 2u);
    }

    v48 = objc_allocWithZone(sub_1000136A0());
    goto LABEL_34;
  }

  v34 = *(v0 + 672);
  v35 = *(v0 + 664);
  v36 = *(v0 + 648);
  v37 = *(v0 + 640);
  v38 = *(v0 + 632);
  v39 = *(v0 + 624);
  v40 = *(v0 + 616);
  sub_100013590();

  *(v0 + 464) = 0x6574656D61726170;
  *(v0 + 472) = 0xEF6E6F736A2E7372;
  (*(v39 + 104))(v38, enum case for URL.DirectoryHint.notDirectory(_:), v40);
  sub_100005450();
  sub_1000135C0();
  (*(v39 + 8))(v38, v40);
  v41 = *(v36 + 8);
  *(v0 + 688) = v41;
  *(v0 + 696) = (v36 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v41(v35, v37);
  v42 = sub_1000135F0();
  *(v0 + 704) = v42;
  *(v0 + 712) = v43;
  v50 = v43;
  v51 = objc_opt_self();
  isa = sub_100013630().super.isa;
  *(v0 + 560) = 0;
  v53 = [v51 JSONObjectWithData:isa options:16 error:v0 + 560];

  v54 = *(v0 + 560);
  if (!v53)
  {
    v89 = v54;
    sub_100013560();

    swift_willThrow();

LABEL_51:
    v90 = sub_100013700();
    v91 = sub_1000138F0();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&_mh_execute_header, v90, v91, "Error when deserializing JSON", v92, 2u);
    }

    goto LABEL_53;
  }

  v212 = v51;
  v55 = v54;
  sub_100013940();
  swift_unknownObjectRelease();
  sub_1000054F8(&qword_10001C650, &unk_1000147E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_51;
  }

  v56 = *(v0 + 544);

  v57 = sub_100013700();
  v58 = sub_1000138E0();

  v214 = v42;
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v210 = swift_slowAlloc();
    v217 = v210;
    *v59 = 136315138;
    v60 = sub_1000137A0();
    v62 = v41;
    v63 = sub_10000FB1C(v60, v61, &v217);

    *(v59 + 4) = v63;
    v41 = v62;
    _os_log_impl(&_mh_execute_header, v57, v58, "Config JSON: %s", v59, 0xCu);
    sub_100005788(v210);
  }

  if (!*(v56 + 16) || (v64 = sub_1000100C4(0x617261506B736174, 0xEE0073726574656DLL), (v65 & 1) == 0))
  {

LABEL_58:
    v90 = sub_100013700();
    v102 = sub_1000138F0();
    if (os_log_type_enabled(v90, v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      _os_log_impl(&_mh_execute_header, v90, v102, "No task parameters string inside config", v103, 2u);
    }

LABEL_53:
    v93 = *(v0 + 672);
    v94 = *(v0 + 640);

    v95 = objc_allocWithZone(sub_1000136A0());
    v49 = sub_100013690();
    sub_1000054A4(v42, v50);
    v41(v93, v94);
    goto LABEL_54;
  }

  sub_100005540(*(v56 + 56) + 32 * v64, v0 + 240);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_58;
  }

  v66 = (v0 + 536);
  v67 = *(v0 + 496);
  v68 = *(v0 + 504);

  v69 = sub_100013700();
  v70 = sub_1000138E0();

  v215 = v41;
  v209 = v50;
  if (os_log_type_enabled(v69, v70))
  {
    v71 = v67;
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v217 = v73;
    *v72 = 136315138;
    *(v72 + 4) = sub_10000FB1C(v71, v68, &v217);
    _os_log_impl(&_mh_execute_header, v69, v70, "Task Parameters JSON-String: %s", v72, 0xCu);
    sub_100005788(v73);

    v67 = v71;
  }

  v74 = sub_100001540(v67, v68);
  v76 = v75;
  v77 = sub_100013630().super.isa;
  sub_1000054A4(v74, v76);
  *v66 = 0;
  v78 = [v212 JSONObjectWithData:v77 options:16 error:v0 + 536];

  v79 = *v66;
  if (!v78)
  {
    v104 = v79;
    sub_100013560();

    swift_willThrow();

LABEL_62:
    v105 = sub_100013700();
    v106 = sub_1000138F0();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      *v107 = 0;
      _os_log_impl(&_mh_execute_header, v105, v106, "Task parameters string not a JSON string", v107, 2u);
    }

    goto LABEL_64;
  }

  v80 = (v0 + 528);
  v81 = v79;
  sub_100013940();
  swift_unknownObjectRelease();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_62;
  }

  v82 = *v80;
  if (*(*v80 + 16) && (v83 = *v80, v84 = sub_1000100C4(0x656D69745F646E65, 0xE800000000000000), (v85 & 1) != 0) && (sub_100005540(*(v82 + 56) + 32 * v84, v0 + 400), sub_1000055AC(), (swift_dynamicCast() & 1) != 0))
  {
    v86 = *(v0 + 576);
    [v86 doubleValue];
    v88 = v87;
  }

  else
  {
    v111 = *(v0 + 608);
    v112 = *(v0 + 600);
    v113 = *(v0 + 592);
    sub_100013640();
    sub_100013650();
    v88 = v114;
    (*(v112 + 8))(v111, v113);
  }

  v115 = *(v0 + 608);
  v116 = *(v0 + 600);
  v117 = *(v0 + 592);
  sub_100013660();
  sub_100013650();
  v119 = v118;
  (*(v116 + 8))(v115, v117);
  if (v119 > v88)
  {

    v105 = sub_100013700();
    v120 = sub_1000138F0();
    if (os_log_type_enabled(v105, v120))
    {
      v121 = swift_slowAlloc();
      *v121 = 0;
      _os_log_impl(&_mh_execute_header, v105, v120, "Task is already finished", v121, 2u);
    }

LABEL_64:
    v108 = *(v0 + 672);
    v109 = *(v0 + 640);

    v110 = objc_allocWithZone(sub_1000136A0());
    v49 = sub_100013690();
    sub_1000054A4(v214, v209);
    v215(v108, v109);
    goto LABEL_54;
  }

  v122 = v82;
  v123 = 0;
  v200 = (v0 + 552);
  v201 = (v0 + 568);
  v202 = v122;
  v125 = v122 + 64;
  v124 = *(v122 + 64);
  v126 = -1 << *(v125 - 32);
  if (-v126 < 64)
  {
    v127 = ~(-1 << -v126);
  }

  else
  {
    v127 = -1;
  }

  v128 = v127 & v124;
  v129 = (63 - v126) >> 6;
  v130 = &_swiftEmptyArrayStorage;
  v199 = 0xEA00000000006E6FLL;
  v198 = 0x69746375646F7270;
  v131 = v209;
  v205 = v129;
  v211 = v125;
  while (1)
  {
LABEL_76:
    v213 = v130;
    if (v128)
    {
      v132 = v123;
      v133 = v214;
      goto LABEL_86;
    }

    if (v129 <= v123 + 1)
    {
      v134 = v123 + 1;
    }

    else
    {
      v134 = v129;
    }

    v135 = v134 - 1;
    v133 = v214;
    do
    {
      v132 = v123 + 1;
      if (__OFADD__(v123, 1))
      {
        __break(1u);
LABEL_158:
        __break(1u);
        goto LABEL_159;
      }

      if (v132 >= v129)
      {
        v128 = 0;
        *(v0 + 80) = 0u;
        *(v0 + 96) = 0u;
        v123 = v135;
        *(v0 + 64) = 0u;
        goto LABEL_87;
      }

      v128 = *(v125 + 8 * v132);
      ++v123;
    }

    while (!v128);
    v123 = v132;
LABEL_86:
    v136 = __clz(__rbit64(v128));
    v128 &= v128 - 1;
    v137 = v136 | (v132 << 6);
    v138 = (*(v202 + 48) + 16 * v137);
    v140 = *v138;
    v139 = v138[1];
    sub_100005540(*(v202 + 56) + 32 * v137, v0 + 432);
    *(v0 + 64) = v140;
    *(v0 + 72) = v139;
    sub_10000559C((v0 + 432), (v0 + 80));

LABEL_87:
    v141 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v141;
    *(v0 + 48) = *(v0 + 96);
    v142 = *(v0 + 24);
    if (!v142)
    {

      if (*(v213 + 2))
      {
        objc_allocWithZone(type metadata accessor for FedStatsPluginMLHostClient());
        v186 = swift_task_alloc();
        *(v0 + 720) = v186;
        *v186 = v0;
        v186[1] = sub_100004E14;

        sub_10000A268(2, v213, v198, v199);
        return;
      }

      v187 = sub_100013700();
      v188 = sub_1000138E0();
      if (os_log_type_enabled(v187, v188))
      {
        v189 = swift_slowAlloc();
        *v189 = 0;
        _os_log_impl(&_mh_execute_header, v187, v188, "No experiments to run", v189, 2u);
      }

      v190 = *(v0 + 672);
      v191 = *(v0 + 640);

      v192 = objc_allocWithZone(sub_1000136A0());
      v49 = sub_100013690();
      sub_1000054A4(v133, v131);
      goto LABEL_156;
    }

    v143 = *(v0 + 16);
    sub_10000559C((v0 + 32), (v0 + 112));
    if (0x8000000100014860 == v142 && v143 == 0xD000000000000015 || (sub_100013A60() & 1) != 0)
    {

      sub_100005540(v0 + 112, v0 + 144);
      sub_1000054F8(&unk_10001C670, &unk_1000142F0);
      swift_dynamicCast();
      v144 = *v201;
      v145 = *(*v201 + 16);
      v130 = v213;
      v146 = *(v213 + 2);
      v147 = v146 + v145;
      if (!__OFADD__(v146, v145))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v147 > *(v213 + 3) >> 1)
        {
          if (v146 <= v147)
          {
            v149 = v146 + v145;
          }

          else
          {
            v149 = v146;
          }

          v130 = sub_10000204C(isUniquelyReferenced_nonNull_native, v149, 1, v213);
        }

        if (*(v144 + 16))
        {
          if ((*(v130 + 3) >> 1) - *(v130 + 2) >= v145)
          {
            swift_arrayInitWithCopy();

            v125 = v211;
            if (v145)
            {
              v150 = *(v130 + 2);
              v151 = __OFADD__(v150, v145);
              v152 = v150 + v145;
              if (!v151)
              {
                *(v130 + 2) = v152;
                goto LABEL_75;
              }

LABEL_162:
              __break(1u);
            }

LABEL_75:
            sub_100005788((v0 + 112));
            v129 = v205;
            continue;
          }

LABEL_161:
          __break(1u);
          goto LABEL_162;
        }

        v125 = v211;
        if (!v145)
        {
          goto LABEL_75;
        }

LABEL_160:
        __break(1u);
        goto LABEL_161;
      }

LABEL_159:
      __break(1u);
      goto LABEL_160;
    }

    if (0x8000000100014880 == v142 && v143 == 0xD000000000000012 || (sub_100013A60() & 1) != 0)
    {
      break;
    }

    if (0x80000001000148A0 == v142 && v143 == 0xD000000000000010 || (sub_100013A60() & 1) != 0)
    {

      sub_100005540(v0 + 112, v0 + 368);
      v174 = sub_100013700();
      v175 = sub_1000138E0();
      if (os_log_type_enabled(v174, v175))
      {
        v176 = swift_slowAlloc();
        loga = swift_slowAlloc();
        v217 = loga;
        *v176 = 136315138;
        sub_10000559C((v0 + 368), (v0 + 272));
        swift_dynamicCast();
        v177 = v131;
        v178 = sub_10000FB1C(*(v0 + 512), *(v0 + 520), &v217);

        *(v176 + 4) = v178;
        v131 = v177;
        _os_log_impl(&_mh_execute_header, v174, v175, "CK container environment set to %s", v176, 0xCu);
        sub_100005788(loga);
      }

      else
      {

        sub_100005788((v0 + 368));
      }

      v125 = v211;
      v130 = v213;
      sub_10000559C((v0 + 112), (v0 + 304));
      swift_dynamicCast();
      v198 = *(v0 + 480);
      v199 = *(v0 + 488);
      v129 = v205;
    }

    else
    {

      v179 = sub_100013700();
      v180 = sub_1000138F0();

      if (os_log_type_enabled(v179, v180))
      {
        v181 = swift_slowAlloc();
        logb = v179;
        v182 = swift_slowAlloc();
        v217 = v182;
        *v181 = 136315138;
        v183 = sub_10000FB1C(v143, v142, &v217);
        v184 = v131;
        v185 = v183;

        *(v181 + 4) = v185;
        v131 = v184;
        _os_log_impl(&_mh_execute_header, logb, v180, "Ignore invalid parameter key in task parameters: %s", v181, 0xCu);
        sub_100005788(v182);
      }

      else
      {
      }

      sub_100005788((v0 + 112));
      v125 = v211;
      v130 = v213;
      v129 = v205;
    }
  }

  sub_100005540(v0 + 112, v0 + 208);
  sub_1000054F8(&qword_10001C668, &qword_1000142E8);
  if (!swift_dynamicCast())
  {

    v193 = sub_100013700();
    v194 = sub_1000138F0();
    if (os_log_type_enabled(v193, v194))
    {
      v195 = swift_slowAlloc();
      *v195 = 0;
      _os_log_impl(&_mh_execute_header, v193, v194, "Experiment records must be a dictionary of strings to list of strings", v195, 2u);
    }

    v190 = *(v0 + 672);
    v191 = *(v0 + 640);

    v196 = objc_allocWithZone(sub_1000136A0());
    v49 = sub_100013690();

    sub_1000054A4(v133, v131);
    sub_100005788((v0 + 112));
LABEL_156:
    v215(v190, v191);
    goto LABEL_54;
  }

  v153 = 0;
  v154 = &(*v200)[8];
  log = *v200;
  v155 = -1 << LOBYTE((*v200)[4].isa);
  if (-v155 < 64)
  {
    v156 = ~(-1 << -v155);
  }

  else
  {
    v156 = -1;
  }

  v157 = v156 & (*v200)[8].isa;
  v158 = (63 - v155) >> 6;
  v125 = v211;
  v203 = v158;
  v204 = &(*v200)[8];
  while (1)
  {
    v159 = v153;
    if (!v157)
    {
      goto LABEL_113;
    }

    while (1)
    {
      v153 = v159;
LABEL_116:
      v160 = __clz(__rbit64(v157));
      v157 &= v157 - 1;
      v161 = v160 | (v153 << 6);
      v162 = (log[6].isa + 16 * v161);
      v163 = *v162;
      v164 = v162[1];
      v165 = *(log[7].isa + v161);
      v166 = objc_opt_self();

      v167 = sub_1000137D0();

      LOBYTE(v164) = [v166 isConsentedForUseCase:v167];

      if (v164)
      {
        break;
      }

      v159 = v153;
      v131 = v209;
      v125 = v211;
      v158 = v203;
      v154 = v204;
      if (!v157)
      {
        while (1)
        {
LABEL_113:
          v153 = v159 + 1;
          if (__OFADD__(v159, 1))
          {
            goto LABEL_158;
          }

          if (v153 >= v158)
          {
            break;
          }

          v157 = *(v154 + 8 * v153);
          ++v159;
          if (v157)
          {
            goto LABEL_116;
          }
        }

        sub_100005788((v0 + 112));

        v130 = v213;
        v129 = v205;
        goto LABEL_76;
      }
    }

    v168 = *(v213 + 2);
    v197 = *(v165 + 16);
    v169 = v168 + v197;
    if (__OFADD__(v168, v197))
    {
      break;
    }

    v170 = swift_isUniquelyReferenced_nonNull_native();
    if (!v170 || v169 > *(v213 + 3) >> 1)
    {
      if (v168 <= v169)
      {
        v171 = v168 + v197;
      }

      else
      {
        v171 = v168;
      }

      v213 = sub_10000204C(v170, v171, 1, v213);
    }

    v131 = v209;
    if (*(v165 + 16))
    {
      if ((*(v213 + 3) >> 1) - *(v213 + 2) < v197)
      {
        goto LABEL_165;
      }

      swift_arrayInitWithCopy();

      v125 = v211;
      v158 = v203;
      v154 = v204;
      if (v197)
      {
        v172 = *(v213 + 2);
        v151 = __OFADD__(v172, v197);
        v173 = v172 + v197;
        if (v151)
        {
          goto LABEL_166;
        }

        *(v213 + 2) = v173;
      }
    }

    else
    {

      v125 = v211;
      v158 = v203;
      v154 = v204;
      if (v197)
      {
        goto LABEL_164;
      }
    }
  }

  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
}

uint64_t sub_100004E14(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 720);
  v7 = *v2;
  *(v3 + 728) = a1;
  *(v3 + 736) = v1;

  if (v1)
  {
    v5 = sub_1000051FC;
  }

  else
  {
    v5 = sub_100004F58;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100004F58()
{
  v28 = v0;
  v1 = v0[85];
  v2 = [objc_opt_self() runAllRecipesWithAssetProvider:v0[91]];
  sub_1000055AC();
  sub_100013790();

  v3 = sub_100013700();
  v4 = sub_1000138E0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v27 = v6;
    *v5 = 136315138;
    v7 = sub_1000137A0();
    v9 = v8;

    v10 = sub_10000FB1C(v7, v9, &v27);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Recorded the following record counts in experiments: %s", v5, 0xCu);
    sub_100005788(v6);
  }

  else
  {
  }

  v11 = v0[91];
  v12 = v0[89];
  v13 = v0[88];
  v14 = v0[87];
  v15 = v0[86];
  v16 = v0[84];
  v17 = v0[80];
  v18 = objc_allocWithZone(sub_1000136A0());
  v19 = sub_100013690();
  sub_1000054A4(v13, v12);

  v15(v16, v17);
  v20 = v0[84];
  v21 = v0[83];
  v22 = v0[82];
  v23 = v0[79];
  v24 = v0[76];

  v25 = v0[1];

  return v25(v19);
}

uint64_t sub_1000051FC()
{
  v1 = v0[92];
  v2 = v0[85];
  swift_errorRetain();
  v3 = sub_100013700();
  v4 = sub_1000138F0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[92];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Cannot create MLHost client: %@", v6, 0xCu);
    sub_1000055FC(v7, &qword_10001C658, &qword_1000142E0);
  }

  v9 = v0[92];
  v10 = v0[89];
  v11 = v0[88];
  v12 = v0[87];
  v13 = v0[86];
  v14 = v0[84];
  v15 = v0[80];

  v16 = objc_allocWithZone(sub_1000136A0());
  v17 = sub_100013690();
  sub_1000054A4(v11, v10);

  v13(v14, v15);
  v18 = v0[84];
  v19 = v0[83];
  v20 = v0[82];
  v21 = v0[79];
  v22 = v0[76];

  v23 = v0[1];

  return v23(v17);
}

uint64_t sub_100005418(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100005450()
{
  result = qword_10001C648;
  if (!qword_10001C648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C648);
  }

  return result;
}

uint64_t sub_1000054A4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000054F8(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100005540(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_10000559C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1000055AC()
{
  result = qword_10001C660;
  if (!qword_10001C660)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001C660);
  }

  return result;
}

uint64_t sub_1000055FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000054F8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_10000565C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_100002658(sub_1000057D4, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_1000056C4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100005718(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000054A4(a1, a2);
  }

  return a1;
}

uint64_t sub_10000572C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_100005744(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100005788(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000057F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000054F8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000585C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FedStatsPluginCKExperimentRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for FedStatsPluginTaskType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FedStatsPluginTaskType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100005A34()
{
  v0 = sub_100013720();
  sub_100006190(v0, qword_10001D2F0);
  sub_100005418(v0, qword_10001D2F0);
  return sub_100013710();
}

void sub_100005AB4()
{
  sub_100013990(31);

  has_internal_content = os_variant_has_internal_content();
  v1 = has_internal_content == 0;
  if (has_internal_content)
  {
    v2._countAndFlagsBits = 0x7972726163;
  }

  else
  {
    v2._countAndFlagsBits = 19783;
  }

  if (v1)
  {
    v3 = 0xE200000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v2._object = v3;
  sub_100013810(v2);

  v4._countAndFlagsBits = 0x6E6961746E6F632ELL;
  v4._object = 0xEA00000000007265;
  sub_100013810(v4);
  qword_10001D308 = 0xD000000000000013;
  unk_10001D310 = 0x8000000100014920;
}

void sub_100005B84()
{
  v0 = [objc_allocWithZone(CKOperationGroup) init];
  v1 = sub_1000137D0();
  [v0 setName:v1];

  qword_10001D318 = v0;
}

unint64_t sub_100005BF8(char a1)
{
  sub_100013990(22);

  if (a1)
  {
    if (a1 == 1)
    {
      v2._countAndFlagsBits = 0x636974617453;
    }

    else
    {
      v2._countAndFlagsBits = 0x63696D616E7944;
    }

    if (a1 == 1)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v2._countAndFlagsBits = 0x64696C61766E49;
  }

  v2._object = v3;
  sub_100013810(v2);

  return 0xD000000000000014;
}

uint64_t sub_100005CC0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x636974617453;
  if (v2 != 1)
  {
    v4 = 0x63696D616E7944;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x64696C61766E49;
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
  v8 = 0x636974617453;
  if (*a2 != 1)
  {
    v8 = 0x63696D616E7944;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x64696C61766E49;
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
    v11 = sub_100013A60();
  }

  return v11 & 1;
}

Swift::Int sub_100005DBC()
{
  v1 = *v0;
  sub_100013A90();
  sub_100013800();

  return sub_100013AA0();
}

uint64_t sub_100005E5C()
{
  *v0;
  *v0;
  sub_100013800();
}

Swift::Int sub_100005EE8()
{
  v1 = *v0;
  sub_100013A90();
  sub_100013800();

  return sub_100013AA0();
}

uint64_t sub_100005F84@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100006144(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100005FB4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x636974617453;
  if (v2 != 1)
  {
    v5 = 0x63696D616E7944;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64696C61766E49;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_10000601C()
{
  result = qword_10001C790;
  if (!qword_10001C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C790);
  }

  return result;
}

uint64_t sub_100006070()
{
  v2._countAndFlagsBits = 0xD00000000000002ALL;
  v2._object = 0x8000000100014940;
  if (sub_100013870(v2))
  {

    return 1;
  }

  else
  {
    v3._object = 0x8000000100014970;
    v3._countAndFlagsBits = 0xD000000000000030;
    if (sub_100013870(v3))
    {

      return 2;
    }

    else
    {
      v4._object = 0x80000001000149B0;
      v4._countAndFlagsBits = 0xD000000000000030;
      v1 = sub_100013870(v4);

      if (v1)
      {
        return 3;
      }

      else
      {
        return 0;
      }
    }
  }
}

uint64_t sub_100006144(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100018960;
  v6._object = a2;
  v4 = sub_100013A40(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t *sub_100006190(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100006208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100013670();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000062DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100013670();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for FedStatsPluginCKExperimentRecord()
{
  result = qword_10001C808;
  if (!qword_10001C808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000063E4()
{
  result = sub_100013670();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FedStatsPluginPopulation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FedStatsPluginPopulation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10000660C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x64696C61766E49;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1684366675;
    }

    else
    {
      v4 = 19783;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE200000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7972726143;
    }

    else
    {
      v4 = 0x64696C61766E49;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE400000000000000;
  v8 = 1684366675;
  if (a2 != 2)
  {
    v8 = 19783;
    v7 = 0xE200000000000000;
  }

  if (a2)
  {
    v2 = 0x7972726143;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100013A60();
  }

  return v11 & 1;
}

unint64_t sub_100006720(unsigned __int8 a1)
{
  sub_100013990(27);

  v2 = 0xE700000000000000;
  v3 = 0x64696C61766E49;
  v4 = 0xE400000000000000;
  v5 = 1684366675;
  if (a1 != 2)
  {
    v5 = 19783;
    v4 = 0xE200000000000000;
  }

  if (a1)
  {
    v3 = 0x7972726143;
    v2 = 0xE500000000000000;
  }

  if (a1 <= 1u)
  {
    v6._countAndFlagsBits = v3;
  }

  else
  {
    v6._countAndFlagsBits = v5;
  }

  if (a1 <= 1u)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  v6._object = v7;
  sub_100013810(v6);

  return 0xD000000000000019;
}

Swift::Int sub_100006804()
{
  v1 = *v0;
  sub_100013A90();
  sub_100013800();

  return sub_100013AA0();
}

uint64_t sub_1000068B0()
{
  *v0;
  *v0;
  *v0;
  sub_100013800();
}

Swift::Int sub_100006948()
{
  v1 = *v0;
  sub_100013A90();
  sub_100013800();

  return sub_100013AA0();
}

uint64_t sub_1000069F0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100008398(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100006A20(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x64696C61766E49;
  v4 = 0xE400000000000000;
  v5 = 1684366675;
  if (*v1 != 2)
  {
    v5 = 19783;
    v4 = 0xE200000000000000;
  }

  if (*v1)
  {
    v3 = 0x7972726143;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_100006A90(char a1)
{
  sub_100013990(23);

  if (a1)
  {
    if (a1 == 1)
    {
      v2._countAndFlagsBits = 5459817;
    }

    else
    {
      v2._countAndFlagsBits = 0x534F63616DLL;
    }

    if (a1 == 1)
    {
      v3 = 0xE300000000000000;
    }

    else
    {
      v3 = 0xE500000000000000;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v2._countAndFlagsBits = 0x64696C61766E49;
  }

  v2._object = v3;
  sub_100013810(v2);

  return 0xD000000000000015;
}

uint64_t sub_100006B50(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 5459817;
  if (v2 != 1)
  {
    v4 = 0x534F63616DLL;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x64696C61766E49;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 5459817;
  if (*a2 != 1)
  {
    v8 = 0x534F63616DLL;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x64696C61766E49;
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
    v11 = sub_100013A60();
  }

  return v11 & 1;
}

Swift::Int sub_100006C3C()
{
  v1 = *v0;
  sub_100013A90();
  sub_100013800();

  return sub_100013AA0();
}

uint64_t sub_100006CD4()
{
  *v0;
  *v0;
  sub_100013800();
}

Swift::Int sub_100006D58()
{
  v1 = *v0;
  sub_100013A90();
  sub_100013800();

  return sub_100013AA0();
}

uint64_t sub_100006DEC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000834C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100006E1C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE300000000000000;
  v5 = 5459817;
  if (v2 != 1)
  {
    v5 = 0x534F63616DLL;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64696C61766E49;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_100006E7C()
{
  result = qword_10001C868;
  if (!qword_10001C868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C868);
  }

  return result;
}

unint64_t sub_100006ED4()
{
  result = qword_10001C870;
  if (!qword_10001C870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C870);
  }

  return result;
}

unint64_t sub_100006F28(char a1)
{
  sub_100013990(46);

  if (a1)
  {
    v2._countAndFlagsBits = 0x6E49657069636552;
    if (a1 == 1)
    {
      v3 = 0xED00007365747942;
    }

    else
    {
      v3 = 0xEE0064726F636552;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v2._countAndFlagsBits = 0x64696C61766E49;
  }

  v2._object = v3;
  sub_100013810(v2);

  return 0xD00000000000002CLL;
}

uint64_t sub_10000700C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xED00007365747942;
  if (v2 != 1)
  {
    v3 = 0xEE0064726F636552;
  }

  if (*a1)
  {
    v4 = 0x6E49657069636552;
  }

  else
  {
    v4 = 0x64696C61766E49;
  }

  if (v2)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 0xED00007365747942;
  if (*a2 != 1)
  {
    v6 = 0xEE0064726F636552;
  }

  if (*a2)
  {
    v7 = 0x6E49657069636552;
  }

  else
  {
    v7 = 0x64696C61766E49;
  }

  if (*a2)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100013A60();
  }

  return v9 & 1;
}

Swift::Int sub_100007108()
{
  v1 = *v0;
  sub_100013A90();
  sub_100013800();

  return sub_100013AA0();
}

uint64_t sub_1000071C4()
{
  *v0;
  *v0;
  sub_100013800();
}

Swift::Int sub_10000726C()
{
  v1 = *v0;
  sub_100013A90();
  sub_100013800();

  return sub_100013AA0();
}

uint64_t sub_100007324@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000083E4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100007354(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xED00007365747942;
  if (v2 != 1)
  {
    v4 = 0xEE0064726F636552;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = 0x6E49657069636552;
  }

  else
  {
    v6 = 0x64696C61766E49;
  }

  if (!v5)
  {
    v3 = v4;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_1000073D8()
{
  result = qword_10001C878;
  if (!qword_10001C878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C878);
  }

  return result;
}

void sub_10000742C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v3 = *(*(sub_1000054F8(&qword_10001C880, &unk_100014730) - 8) + 64);
  v4 = (__chkstk_darwin)();
  v118 = &v104[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v7 = &v104[-v6];
  v8 = sub_100013670();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v117 = &v104[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v15 = &v104[-v14];
  __chkstk_darwin(v13);
  v17 = &v104[-v16];
  if (sub_100013920() == aExperiment[0] && v18 == aExperiment[1])
  {
  }

  else
  {
    v19 = sub_100013A60();

    if ((v19 & 1) == 0)
    {
      v40 = objc_opt_self();
      v120._countAndFlagsBits = 0;
      v120._object = 0xE000000000000000;
      sub_100013990(41);

      v120._countAndFlagsBits = 0xD00000000000001FLL;
      v120._object = 0x8000000100014A80;
      v41 = aExperiment[0];
      v42 = aExperiment[1];

      v122._countAndFlagsBits = v41;
      v122._object = v42;
      sub_100013810(v122);

      v123._countAndFlagsBits = 0x20746F67202CLL;
      v123._object = 0xE600000000000000;
      sub_100013810(v123);
      v124._countAndFlagsBits = sub_100013920();
      sub_100013810(v124);

      v43 = sub_1000137D0();

      [v40 errorWithCode:300 description:v43];

      swift_willThrow();
      return;
    }
  }

  v119 = a1;
  v20 = sub_100013930();
  if (!v20)
  {
    (*(v9 + 56))(v7, 1, 1, v8);
    goto LABEL_12;
  }

  v115 = v17;
  v120._countAndFlagsBits = v20;
  v21 = sub_1000054F8(&qword_10001C888, &qword_100014740);
  v22 = swift_dynamicCast();
  v23 = *(v9 + 56);
  v23(v7, v22 ^ 1u, 1, v8);
  v24 = v9;
  v25 = *(v9 + 48);
  if (v25(v7, 1, v8) == 1)
  {
LABEL_12:
    sub_100008430(v7);
    v38 = objc_opt_self();
    v39 = sub_1000137D0();
    [v38 errorWithCode:300 description:v39];

    swift_willThrow();
    return;
  }

  v113 = v21;
  v114 = v24;
  v26 = v7;
  v27 = *(v24 + 32);
  (v27)(v115, v26, v8);
  v28 = sub_100013930();
  if (!v28)
  {
    v29 = v118;
    v23(v118, 1, 1, v8);
    v32 = v8;
    goto LABEL_15;
  }

  v120._countAndFlagsBits = v28;
  v29 = v118;
  v30 = swift_dynamicCast();
  v23(v29, v30 ^ 1u, 1, v8);
  v31 = v25(v29, 1, v8);
  v32 = v8;
  if (v31 == 1)
  {
LABEL_15:
    sub_100008430(v29);
    v44 = objc_opt_self();
    v45 = sub_1000137D0();
    [v44 errorWithCode:300 description:v45];

    swift_willThrow();
    (*(v114 + 8))(v115, v32);
    return;
  }

  (v27)(v15, v29, v8);
  v33 = v117;
  sub_100013660();
  sub_100008498();
  v34 = sub_1000137C0();
  v35 = *(v114 + 8);
  v35(v33, v32);
  v36 = v119;
  v37 = v115;
  if ((v34 & 1) != 0 || (v118 = v27, (v46 = sub_100013930()) == 0) || (v121 = v46, (swift_dynamicCast() & 1) == 0))
  {
    v65 = objc_opt_self();
    v66 = sub_1000137D0();
    [v65 errorWithCode:300 description:v66];

    swift_willThrow();
    v67 = v15;
LABEL_34:
    v35(v67, v32);
    v68 = v37;
    v69 = v32;
LABEL_35:
    v35(v68, v69);
    return;
  }

  v117 = v15;
  countAndFlagsBits = v120._countAndFlagsBits;
  object = v120._object;
  v49 = sub_100013930();
  if (!v49)
  {
    goto LABEL_38;
  }

  v121 = v49;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_38;
  }

  v50 = v120._object;
  v114 = v120._countAndFlagsBits;
  v51 = sub_100013930();
  if (!v51 || (v121 = v51, (swift_dynamicCast() & 1) == 0) || (v111 = countAndFlagsBits, v112 = object, v52._rawValue = &off_100018878, v53 = sub_100013A40(v52, v120), , v53 >= 3))
  {

LABEL_38:

    v70 = objc_opt_self();
    v71 = sub_1000137D0();
    v72 = [v70 errorWithCode:300 description:v71];
LABEL_39:
    v72;

    swift_willThrow();
    v67 = v117;
    goto LABEL_34;
  }

  v54 = v53;
  v55 = v50;
  v56 = sub_100013930();
  if (!v56 || (v121 = v56, (swift_dynamicCast() & 1) == 0))
  {

    v73 = objc_opt_self();
    v71 = sub_1000137D0();
    v72 = [v73 errorWithCode:300 description:v71];
    goto LABEL_39;
  }

  v110 = v120;
  v57 = sub_100013930();
  if (!v57 || (v121 = v57, (swift_dynamicCast() & 1) == 0))
  {

    v74 = objc_opt_self();
    v71 = sub_1000137D0();
    v72 = [v74 errorWithCode:300 description:v71];
    goto LABEL_39;
  }

  v58 = v32;
  v59 = v120._countAndFlagsBits;
  v109 = v120._object;
  v60 = sub_100013930();
  if (!v60 || (v121 = v60, (swift_dynamicCast() & 1) == 0))
  {

    v75 = objc_opt_self();
    v63 = sub_1000137D0();
    v64 = [v75 errorWithCode:300 description:v63];
    goto LABEL_44;
  }

  v108 = v120;
  v61 = sub_100013930();
  if (!v61 || (v121 = v61, (swift_dynamicCast() & 1) == 0) || (v105 = sub_100008398(v120._countAndFlagsBits, v120._object), v105 == 4))
  {

    v62 = objc_opt_self();
    v63 = sub_1000137D0();
    v64 = [v62 errorWithCode:300 description:v63];
LABEL_44:
    v64;

    swift_willThrow();
LABEL_45:
    v35(v117, v58);
    v68 = v115;
    v69 = v58;
    goto LABEL_35;
  }

  v76 = sub_100013930();
  if (v76 && (v121 = v76, (swift_dynamicCast() & 1) != 0))
  {
    v77 = v120._object;
    v106 = v120._countAndFlagsBits;
  }

  else
  {
    v106 = 0;
    v77 = 0xC000000000000000;
  }

  v107 = v77;
  v78 = sub_100013930();
  if (v78 && (v121 = v78, (swift_dynamicCast() & 1) != 0))
  {
    v79 = v120._object;
    v113 = v120._countAndFlagsBits;
  }

  else
  {
    v113 = 0;
    v79 = 0xE000000000000000;
  }

  v80 = v107 >> 62;
  if ((v107 >> 62) > 1)
  {
    if (v80 != 2)
    {
      v82 = 0;
      v81 = 0;
      if ((v79 & 0x2000000000000000) != 0)
      {
        goto LABEL_57;
      }

      goto LABEL_62;
    }

    v81 = *(v106 + 16);
    v82 = *(v106 + 24);
    goto LABEL_61;
  }

  if (v80)
  {
    v81 = v106;
    v82 = v106 >> 32;
LABEL_61:
    if ((v79 & 0x2000000000000000) != 0)
    {
      goto LABEL_57;
    }

    goto LABEL_62;
  }

  v81 = 0;
  v82 = BYTE6(v107);
  if ((v79 & 0x2000000000000000) != 0)
  {
LABEL_57:
    v83 = HIBYTE(v79) & 0xF;
    goto LABEL_63;
  }

LABEL_62:
  v83 = v113 & 0xFFFFFFFFFFFFLL;
LABEL_63:
  if ((v83 != 0) != (v81 == v82))
  {

    v84 = objc_opt_self();
    v85 = sub_1000137D0();
    [v84 errorWithCode:300 description:v85];

    swift_willThrow();
    sub_1000054A4(v106, v107);
    goto LABEL_45;
  }

  if (v80 > 1)
  {
    if (v80 != 2)
    {
      goto LABEL_75;
    }

    v86 = *(v106 + 16);
    v87 = *(v106 + 24);
  }

  else
  {
    if (!v80)
    {
      if ((v107 & 0xFF000000000000) == 0)
      {
        goto LABEL_75;
      }

LABEL_76:
      v88 = 1;
      goto LABEL_77;
    }

    v86 = v106;
    v87 = v106 >> 32;
  }

  if (v86 != v87)
  {
    goto LABEL_76;
  }

LABEL_75:
  v88 = 2;
LABEL_77:
  LODWORD(v119) = v88;
  v89 = v116;
  v90 = v118;
  (v118)(v116, v115, v58);
  v91 = type metadata accessor for FedStatsPluginCKExperimentRecord();
  v90(v89 + v91[5], v117, v58);
  v92 = (v89 + v91[6]);
  v93 = v112;
  *v92 = v111;
  v92[1] = v93;
  v94 = (v89 + v91[7]);
  *v94 = v114;
  v94[1] = v55;
  *(v89 + v91[8]) = v54;
  v95 = (v89 + v91[10]);
  v96 = v110._object;
  *v95 = v110._countAndFlagsBits;
  v95[1] = v96;
  v97 = (v89 + v91[9]);
  v98 = v109;
  *v97 = v59;
  v97[1] = v98;
  v99 = (v89 + v91[11]);
  v100 = v108._object;
  *v99 = v108._countAndFlagsBits;
  v99[1] = v100;
  *(v89 + v91[12]) = v105;
  *(v89 + v91[13]) = v119;
  v101 = (v89 + v91[14]);
  v102 = v107;
  *v101 = v106;
  v101[1] = v102;
  v103 = (v89 + v91[15]);
  *v103 = v113;
  v103[1] = v79;
}

uint64_t sub_10000834C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100018878;
  v6._object = a2;
  v4 = sub_100013A40(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100008398(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000188E0;
  v6._object = a2;
  v4 = sub_100013A40(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000083E4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000189C8;
  v6._object = a2;
  v4 = sub_100013A40(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100008430(uint64_t a1)
{
  v2 = sub_1000054F8(&qword_10001C880, &unk_100014730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100008498()
{
  result = qword_10001C890;
  if (!qword_10001C890)
  {
    sub_100013670();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C890);
  }

  return result;
}

uint64_t sub_100008500(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return _swift_task_switch(sub_100008520, 0, 0);
}

uint64_t sub_100008520()
{
  v34 = v0;
  v1 = v0[4];
  v2 = *(v1 + 16);
  v3 = &_swiftEmptyArrayStorage;
  if (v2)
  {
    v33 = &_swiftEmptyArrayStorage;
    sub_1000139E0();
    v4 = (v1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v7 = objc_allocWithZone(CKRecordID);

      v8 = sub_1000137D0();

      [v7 initWithRecordName:v8];

      sub_1000139C0();
      v9 = v33[2];
      sub_1000139F0();
      sub_100013A00();
      sub_1000139D0();
      v4 += 2;
      --v2;
    }

    while (v2);
    v3 = v33;
  }

  v0[6] = v3;
  if (qword_10001C620 != -1)
  {
    swift_once();
  }

  v10 = v0[4];
  v11 = sub_100013720();
  sub_100005418(v11, qword_10001D2F0);

  v12 = sub_100013700();
  v13 = sub_1000138E0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = v0[4];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33 = v16;
    *v15 = 136315138;
    v0[3] = v14;
    sub_1000054F8(&unk_10001C670, &unk_1000142F0);
    sub_1000132AC();
    v17 = sub_1000137B0();
    v19 = sub_10000FB1C(v17, v18, &v33);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "Retrieving ['%s'] from CK Container", v15, 0xCu);
    sub_100005788(v16);
  }

  v25 = v0[5];
  v26 = *(v25 + OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_ckContainer);
  if (v26)
  {
    v0[7] = [v26 publicCloudDatabase];
    v27 = *(v25 + OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_containerConfig);
    if (qword_10001C630 != -1)
    {
      swift_once();
    }

    v28 = qword_10001D318;
    v29 = swift_task_alloc();
    v0[8] = v29;
    *(v29 + 16) = v3;
    v30 = async function pointer to CKDatabase.configuredWith<A>(configuration:group:body:)[1];
    v31 = swift_task_alloc();
    v0[9] = v31;
    v24 = sub_1000054F8(&unk_10001C9A8, &unk_100014800);
    *v31 = v0;
    v31[1] = sub_1000088AC;
    v22 = &unk_100014828;
    v26 = v0 + 2;
    v20 = v27;
    v21 = v28;
    v23 = v29;
  }

  else
  {
    __break(1u);
  }

  return CKDatabase.configuredWith<A>(configuration:group:body:)(v26, v20, v21, v22, v23, v24);
}

uint64_t sub_1000088AC()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_1000134C8;
  }

  else
  {
    v6 = v2[7];
    v5 = v2[8];
    v7 = v2[6];

    v4 = sub_1000089E0;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_1000089E0()
{
  v20 = v0;
  v1 = v0[2];
  v17 = &_swiftEmptyDictionarySingleton;
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;
  v6 = v0[10];

  v7 = 0;
  if (v4)
  {
    while (1)
    {
      v8 = v7;
LABEL_8:
      v9 = __clz(__rbit64(v4)) | (v8 << 6);
      v10 = *(*(v1 + 48) + 8 * v9);
      v11 = *(v1 + 56) + 16 * v9;
      v12 = *v11;
      v13 = *(v11 + 8);
      v18[0] = v10;
      v18[1] = v12;
      v19 = v13;
      v14 = v10;
      sub_100013294(v12, v13);
      sub_100008DA8(&v17, v18);
      if (v6)
      {
        break;
      }

      v4 &= v4 - 1;
      sub_1000132A0(v12, v13);
      v7 = v8;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    sub_1000132A0(v12, v13);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        return;
      }

      if (v8 >= v5)
      {
        break;
      }

      v4 = *(v1 + 64 + 8 * v8);
      ++v7;
      if (v4)
      {
        goto LABEL_8;
      }
    }

    v15 = v17;
    v16 = v0[1];

    v16(v15);
  }
}

uint64_t sub_100008BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = async function pointer to CKDatabase.records(for:desiredKeys:)[1];
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_100008C5C;

  return CKDatabase.records(for:desiredKeys:)(a3, 0);
}

uint64_t sub_100008C5C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return _swift_task_switch(sub_1000134C4, 0, 0);
  }
}

void sub_100008DA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000054F8(&qword_10001C8A8, &qword_100014760);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v33 - v6;
  v8 = type metadata accessor for FedStatsPluginCKExperimentRecord();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a2 + 16) & 1) == 0)
  {
    v34 = v11;
    v14 = *(a2 + 8);
    sub_100013294(v14, 0);
    v15 = v14;
    sub_10000742C(v15, v13);
    if (v2)
    {
      if (qword_10001C620 != -1)
      {
        swift_once();
      }

      v16 = sub_100013720();
      sub_100005418(v16, qword_10001D2F0);
      sub_100013294(v14, 0);
      swift_errorRetain();
      v17 = sub_100013700();
      v18 = sub_1000138E0();
      sub_1000132A0(v14, 0);

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v35 = v34;
        *v19 = 136315394;
        v21 = [v15 recordID];
        v22 = [v21 recordName];

        v23 = sub_1000137E0();
        v25 = v24;

        v26 = sub_10000FB1C(v23, v25, &v35);

        *(v19 + 4) = v26;
        *(v19 + 12) = 2112;
        swift_errorRetain();
        v27 = _swift_stdlib_bridgeErrorToNSError();
        *(v19 + 14) = v27;
        *v20 = v27;
        _os_log_impl(&_mh_execute_header, v17, v18, "Cannot create experiment record for record '%s', error: %@", v19, 0x16u);
        sub_1000055FC(v20, &qword_10001C658, &qword_1000142E0);

        sub_100005788(v34);

        sub_1000132A0(v14, 0);
      }

      else
      {

        sub_1000132A0(v14, 0);
      }
    }

    else
    {
      v28 = [v15 recordID];
      v29 = [v28 recordName];

      v30 = sub_1000137E0();
      v32 = v31;

      sub_10001013C(v13, v7);
      (*(v9 + 56))(v7, 0, 1, v34);
      sub_1000091A0(v7, v30, v32);
      sub_1000132A0(v14, 0);
      sub_1000101A0(v13);
    }
  }
}

uint64_t sub_1000091A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1000054F8(&qword_10001C8A8, &qword_100014760);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for FedStatsPluginCKExperimentRecord();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_1000055FC(a1, &qword_10001C8A8, &qword_100014760);
    sub_1000102B4(a2, a3, v10);

    return sub_1000055FC(v10, &qword_10001C8A8, &qword_100014760);
  }

  else
  {
    sub_10000585C(a1, v14);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1000110F4(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_100009360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1000054F8(&qword_10001C9C0, &unk_100014810);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_1000135D0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_1000055FC(a1, &qword_10001C9C0, &unk_100014810);
    sub_100010420(a2, a3, v10);

    return sub_1000055FC(v10, &qword_10001C9C0, &unk_100014810);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_100011258(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_100009538(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return _swift_task_switch(sub_100009558, 0, 0);
}

uint64_t sub_100009558()
{
  v34 = v0;
  v1 = v0[4];
  v2 = *(v1 + 16);
  v3 = &_swiftEmptyArrayStorage;
  if (v2)
  {
    v33 = &_swiftEmptyArrayStorage;
    sub_1000139E0();
    v4 = (v1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v7 = objc_allocWithZone(CKRecordID);

      v8 = sub_1000137D0();

      [v7 initWithRecordName:v8];

      sub_1000139C0();
      v9 = v33[2];
      sub_1000139F0();
      sub_100013A00();
      sub_1000139D0();
      v4 += 2;
      --v2;
    }

    while (v2);
    v3 = v33;
  }

  v0[6] = v3;
  if (qword_10001C620 != -1)
  {
    swift_once();
  }

  v10 = v0[4];
  v11 = sub_100013720();
  sub_100005418(v11, qword_10001D2F0);

  v12 = sub_100013700();
  v13 = sub_1000138E0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = v0[4];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33 = v16;
    *v15 = 136315138;
    v0[3] = v14;
    sub_1000054F8(&unk_10001C670, &unk_1000142F0);
    sub_1000132AC();
    v17 = sub_1000137B0();
    v19 = sub_10000FB1C(v17, v18, &v33);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "Retrieving ['%s'] from CK Container", v15, 0xCu);
    sub_100005788(v16);
  }

  v25 = v0[5];
  v26 = *(v25 + OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_ckContainer);
  if (v26)
  {
    v0[7] = [v26 publicCloudDatabase];
    v27 = *(v25 + OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_containerConfig);
    if (qword_10001C630 != -1)
    {
      swift_once();
    }

    v28 = qword_10001D318;
    v29 = swift_task_alloc();
    v0[8] = v29;
    *(v29 + 16) = v3;
    v30 = async function pointer to CKDatabase.configuredWith<A>(configuration:group:body:)[1];
    v31 = swift_task_alloc();
    v0[9] = v31;
    v24 = sub_1000054F8(&unk_10001C9A8, &unk_100014800);
    *v31 = v0;
    v31[1] = sub_1000098E4;
    v22 = &unk_1000147F8;
    v26 = v0 + 2;
    v20 = v27;
    v21 = v28;
    v23 = v29;
  }

  else
  {
    __break(1u);
  }

  return CKDatabase.configuredWith<A>(configuration:group:body:)(v26, v20, v21, v22, v23, v24);
}

uint64_t sub_1000098E4()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_100009BEC;
  }

  else
  {
    v6 = v2[7];
    v5 = v2[8];
    v7 = v2[6];

    v4 = sub_100009A18;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_100009A18()
{
  v20 = v0;
  v1 = v0[2];
  v17 = &_swiftEmptyDictionarySingleton;
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;
  v6 = v0[10];

  v7 = 0;
  if (v4)
  {
    while (1)
    {
      v8 = v7;
LABEL_8:
      v9 = __clz(__rbit64(v4)) | (v8 << 6);
      v10 = *(*(v1 + 48) + 8 * v9);
      v11 = *(v1 + 56) + 16 * v9;
      v12 = *v11;
      v13 = *(v11 + 8);
      v18[0] = v10;
      v18[1] = v12;
      v19 = v13;
      v14 = v10;
      sub_100013294(v12, v13);
      sub_100009E78(&v17, v18);
      if (v6)
      {
        break;
      }

      v4 &= v4 - 1;
      sub_1000132A0(v12, v13);
      v7 = v8;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    sub_1000132A0(v12, v13);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        return;
      }

      if (v8 >= v5)
      {
        break;
      }

      v4 = *(v1 + 64 + 8 * v8);
      ++v7;
      if (v4)
      {
        goto LABEL_8;
      }
    }

    v15 = v17;
    v16 = v0[1];

    v16(v15);
  }
}

uint64_t sub_100009BEC()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];

  v4 = v0[1];
  v5 = v0[10];

  return v4();
}

uint64_t sub_100009C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = async function pointer to CKDatabase.records(for:desiredKeys:)[1];
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_100009D08;

  return CKDatabase.records(for:desiredKeys:)(a3, 0);
}

uint64_t sub_100009D08(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return _swift_task_switch(sub_100009E54, 0, 0);
  }
}

void sub_100009E78(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000054F8(&qword_10001C9C0, &unk_100014810);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v31 - v5;
  v7 = sub_1000135D0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a2 + 16) & 1) == 0)
  {
    v33 = v10;
    v13 = *(a2 + 8);
    v14 = v13;
    if (sub_100013930())
    {
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (v15)
      {
        v16 = [v15 fileURL];
        if (v16)
        {
          v32 = v13;
          v17 = v16;
          sub_1000135B0();

          v18 = [v14 recordID];
          v19 = [v18 recordName];

          v20 = sub_1000137E0();
          v22 = v21;

          v23 = v33;
          (*(v8 + 16))(v6, v12, v33);
          (*(v8 + 56))(v6, 0, 1, v23);
          sub_100009360(v6, v20, v22);
          swift_unknownObjectRelease();
          sub_1000132A0(v32, 0);
          (*(v8 + 8))(v12, v23);
          return;
        }

        if (qword_10001C620 != -1)
        {
          swift_once();
        }

        v28 = sub_100013720();
        sub_100005418(v28, qword_10001D2F0);
        v25 = sub_100013700();
        v29 = sub_1000138E0();
        if (os_log_type_enabled(v25, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&_mh_execute_header, v25, v29, "Cannot get asset URL from attachment content", v30, 2u);
        }

        swift_unknownObjectRelease();
        goto LABEL_16;
      }

      swift_unknownObjectRelease();
    }

    if (qword_10001C620 != -1)
    {
      swift_once();
    }

    v24 = sub_100013720();
    sub_100005418(v24, qword_10001D2F0);
    v25 = sub_100013700();
    v26 = sub_1000138E0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Cannot get attachment content from asset record", v27, 2u);
    }

LABEL_16:
    sub_1000132A0(v13, 0);
  }
}

uint64_t sub_10000A268(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 96) = a4;
  *(v5 + 104) = v4;
  *(v5 + 80) = a2;
  *(v5 + 88) = a3;
  *(v5 + 304) = a1;
  v6 = sub_1000135D0();
  *(v5 + 112) = v6;
  v7 = *(v6 - 8);
  *(v5 + 120) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  v9 = *(*(sub_1000054F8(&qword_10001C8D8, &qword_100014780) - 8) + 64) + 15;
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  v10 = sub_1000054F8(&qword_10001C990, &qword_1000147C8);
  *(v5 + 176) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();

  return _swift_task_switch(sub_10000A424, 0, 0);
}

uint64_t sub_10000A424()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 304);
  *(v2 + OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_taskType) = 0;
  v5 = OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_recipes;
  *(v2 + v5) = sub_100002A9C(&_swiftEmptyArrayStorage);
  v6 = OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_experimentCfgs;
  *(v2 + v6) = sub_100002AB0(&_swiftEmptyArrayStorage);
  v7 = OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_assetURLs;
  *(v2 + v7) = sub_100002C84(&_swiftEmptyArrayStorage);
  v8 = OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_attachmentIDMaps;
  *(v2 + v8) = sub_100002E70(&_swiftEmptyArrayStorage);
  *(v2 + OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_ckContainer) = 0;
  v9 = OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_containerConfig;
  *(v2 + v9) = [objc_allocWithZone(CKOperationConfiguration) init];
  v10 = type metadata accessor for FedStatsPluginMLHostClient();
  *(v0 + 48) = v2;
  *(v0 + 56) = v10;
  v11 = objc_msgSendSuper2((v0 + 48), "init");
  *(v0 + 216) = v11;
  v11[OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_taskType] = v4;
  v12 = [objc_allocWithZone(CKContainerOptions) init];
  *(v0 + 224) = v12;
  v13 = sub_1000137D0();
  [v12 setApplicationBundleIdentifierOverrideForPushTopicGeneration:v13];

  if (v3 == 0x786F62646E6173 && v1 == 0xE700000000000000 || (v14 = *(v0 + 88), v15 = *(v0 + 96), (sub_100013A60() & 1) != 0))
  {
    if (os_variant_has_internal_content())
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 1;
  }

  if (qword_10001C620 != -1)
  {
    swift_once();
  }

  v17 = sub_100013720();
  *(v0 + 232) = sub_100005418(v17, qword_10001D2F0);
  v18 = sub_100013700();
  v19 = sub_1000138E0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    *(v20 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v18, v19, "CKContainerEnvironment: %ld", v20, 0xCu);
  }

  if (qword_10001C628 != -1)
  {
    swift_once();
  }

  v21 = objc_allocWithZone(CKContainerID);
  v22 = sub_1000137D0();
  v23 = [v21 initWithContainerIdentifier:v22 environment:v16];

  v24 = [objc_allocWithZone(CKContainer) initWithContainerID:v23 options:v12];
  v25 = OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_ckContainer;
  v26 = *&v11[OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_ckContainer];
  *&v11[OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_ckContainer] = v24;

  v27 = OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_containerConfig;
  [*&v11[OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_containerConfig] setPreferAnonymousRequests:1];
  [*&v11[v27] setQualityOfService:9];
  [*&v11[v27] setContainer:*&v11[v25]];
  v28 = swift_task_alloc();
  *(v0 + 240) = v28;
  *v28 = v0;
  v28[1] = sub_10000A840;
  v29 = *(v0 + 80);

  return sub_100008500(v29);
}

uint64_t sub_10000A840(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 240);
  v9 = *v2;
  v3[31] = a1;
  v3[32] = v1;

  if (v1)
  {
    v5 = v3[12];
    v6 = v3[10];

    v7 = sub_10000BD28;
  }

  else
  {
    v7 = sub_10000A99C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10000A99C()
{
  v1 = v0[31];
  v2 = v0[27];
  v43 = v0[25];
  v44 = v0[26];
  v40 = v0[24];
  v47 = v0[22];
  v3 = OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_experimentCfgs;
  v0[33] = OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_experimentCfgs;
  v4 = *(v2 + v3);
  *(v2 + v3) = v1;

  v5 = v1 + 64;
  v6 = -1;
  v7 = -1 << *(v1 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v1 + 64);
  v9 = (63 - v7) >> 6;
  v45 = v1;

  v10 = 0;
  v11 = &_swiftEmptyArrayStorage;
  v42 = v1 + 64;
  v46 = v0;
LABEL_4:
  v41 = v11;
  v0[34] = v11;
  v12 = v10;
  if (!v8)
  {
    goto LABEL_6;
  }

  do
  {
    v10 = v12;
LABEL_9:
    v14 = v0[25];
    v13 = v0[26];
    v15 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v16 = v15 | (v10 << 6);
    v17 = *(v45 + 56);
    v18 = (*(v45 + 48) + 16 * v16);
    v20 = *v18;
    v19 = v18[1];
    v21 = type metadata accessor for FedStatsPluginCKExperimentRecord();
    sub_10001013C(v17 + *(*(v21 - 8) + 72) * v16, v13 + *(v47 + 48));
    *v13 = v20;
    *(v44 + 8) = v19;
    sub_1000057F4(v13, v14, &qword_10001C990, &qword_1000147C8);
    v22 = *(v43 + 8);

    v23 = v14 + *(v47 + 48);
    v24 = *(v23 + *(v21 + 52));
    sub_1000101A0(v23);
    if (v24)
    {
      if (v24 != 1)
      {

        v0 = v46;
LABEL_17:
        v26 = v0[24];
        sub_1000057F4(v0[26], v26, &qword_10001C990, &qword_1000147C8);
        v27 = *(v40 + 8);

        v28 = v26 + *(v47 + 48);
        v29 = (v28 + *(v21 + 60));
        v31 = *v29;
        v30 = v29[1];

        sub_1000101A0(v28);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v32 = v41;
        }

        else
        {
          v32 = sub_10000204C(0, *(v41 + 16) + 1, 1, v41);
        }

        v34 = *(v32 + 2);
        v33 = *(v32 + 3);
        v11 = v32;
        v5 = v42;
        if (v34 >= v33 >> 1)
        {
          v11 = sub_10000204C((v33 > 1), v34 + 1, 1, v32);
        }

        sub_1000055FC(v0[26], &qword_10001C990, &qword_1000147C8);
        *(v11 + 2) = v34 + 1;
        v35 = &v11[16 * v34];
        *(v35 + 4) = v31;
        *(v35 + 5) = v30;
        goto LABEL_4;
      }

      v0 = v46;
    }

    else
    {
      v0 = v46;
    }

    v25 = sub_100013A60();

    if (v25)
    {
      goto LABEL_17;
    }

    sub_1000055FC(v0[26], &qword_10001C990, &qword_1000147C8);
    v12 = v10;
    v5 = v42;
  }

  while (v8);
  while (1)
  {
LABEL_6:
    v10 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v10);
    ++v12;
    if (v8)
    {
      goto LABEL_9;
    }
  }

  v36 = v0[31];

  v37 = swift_task_alloc();
  v0[35] = v37;
  *v37 = v0;
  v37[1] = sub_10000ADB8;
  v38 = v0[27];

  return sub_100009538(v41);
}

uint64_t sub_10000ADB8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 280);
  v10 = *v2;
  v3[36] = a1;
  v3[37] = v1;

  if (v1)
  {
    v5 = v3[34];
    v6 = v3[12];
    v7 = v3[10];

    v8 = sub_10000BE4C;
  }

  else
  {
    v8 = sub_10000AF20;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10000AF20()
{
  v152 = v0;
  v131 = *(v0 + 184);
  v1 = *(*(v0 + 216) + *(v0 + 264));
  v151[0] = &_swiftEmptyDictionarySingleton;
  v2 = v1 + 64;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);
  v6 = (63 - v4) >> 6;
  v7 = *(v0 + 296);
  v133 = v1;
  swift_bridgeObjectRetain_n();
  v8 = 0;
  if (!v5)
  {
    goto LABEL_5;
  }

  do
  {
    v147 = v7;
    v9 = v8;
LABEL_9:
    v10 = *(v0 + 184);
    v140 = *(v0 + 176);
    v142 = *(v0 + 288);
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = *(v133 + 56);
    v13 = (*(v133 + 48) + 16 * v11);
    v14 = *v13;
    v15 = v13[1];
    v16 = type metadata accessor for FedStatsPluginCKExperimentRecord();
    sub_10001013C(v12 + *(*(v16 - 8) + 72) * v11, v10 + *(v140 + 48));
    *v10 = v14;
    *(v131 + 8) = v15;

    sub_10000BF70(v151, v10, v142);
    if (v147)
    {
      v83 = *(v0 + 184);

      sub_1000055FC(v83, &qword_10001C990, &qword_1000147C8);
    }

    v5 &= v5 - 1;
    sub_1000055FC(*(v0 + 184), &qword_10001C990, &qword_1000147C8);
    v7 = 0;
    v8 = v9;
  }

  while (v5);
  while (1)
  {
LABEL_5:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:

      return sub_100013A80();
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v147 = v7;
      goto LABEL_9;
    }
  }

  v17 = *(v0 + 288);
  v18 = *(v0 + 272);
  v19 = *(v0 + 216);
  v132 = *(v0 + 168);
  v127 = *(v0 + 160);
  v20 = *(v0 + 120);
  v21 = *(v0 + 96);
  v22 = *(v0 + 80);

  v23 = v133;

  v24 = *(v19 + OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_recipes);
  v119 = OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_recipes;
  v120 = v19;
  *(v19 + OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_recipes) = v151[0];

  v26 = 0;
  v121 = v17 + 64;
  v27 = -1;
  v128 = v17;
  v28 = -1 << *(v17 + 32);
  if (-v28 < 64)
  {
    v27 = ~(-1 << -v28);
  }

  v29 = v27 & *(v17 + 64);
  v30 = (63 - v28) >> 6;
  v143 = (v20 + 32);
  v148 = (v20 + 16);
  v126 = v20;
  v129 = (v20 + 8);
  v130 = v30;
  v125 = v0;
  if (!v29)
  {
    goto LABEL_19;
  }

LABEL_18:
  v31 = v26;
LABEL_26:
  v34 = *(v0 + 152);
  v35 = *(v0 + 160);
  v36 = *(v0 + 112);
  v37 = __clz(__rbit64(v29));
  v29 &= v29 - 1;
  v38 = v37 | (v31 << 6);
  v39 = (*(v128 + 48) + 16 * v38);
  v41 = *v39;
  v40 = v39[1];
  (*(v126 + 16))(v34, *(v128 + 56) + *(v126 + 72) * v38, v36);
  v42 = sub_1000054F8(&unk_10001C8E0, &qword_100014788);
  v43 = *(v42 + 48);
  *v35 = v41;
  *(v127 + 8) = v40;
  (*(v126 + 32))(&v35[v43], v34, v36);
  (*(*(v42 - 8) + 56))(v35, 0, 1, v42);

  v33 = v31;
  v0 = v125;
  while (1)
  {
    v44 = *(v0 + 168);
    sub_10001317C(*(v0 + 160), v44, &qword_10001C8D8, &qword_100014780);
    v45 = sub_1000054F8(&unk_10001C8E0, &qword_100014788);
    if ((*(*(v45 - 8) + 48))(v44, 1, v45) == 1)
    {
      break;
    }

    v46 = *(v0 + 168);
    v134 = *v46;
    v9 = *(v132 + 8);
    (*v143)(*(v0 + 144), v46 + *(v45 + 48), *(v0 + 112));
    v47 = [objc_opt_self() defaultManager];
    sub_1000135A0(v48);
    v50 = v49;
    *(v0 + 72) = 0;
    v51 = [v47 removeItemAtURL:v49 error:v0 + 72];

    v52 = *(v0 + 72);
    v53 = *(v0 + 232);
    v54 = *(v0 + 144);
    v55 = *(v0 + 112);
    if (!v51)
    {
      v140 = v33;
      v65 = *(v0 + 128);
      v66 = v52;
      sub_100013560();

      swift_willThrow();
      (*v148)(v65, v54, v55);

      swift_errorRetain();
      v23 = sub_100013700();
      v67 = sub_1000138E0();

      v68 = os_log_type_enabled(v23, v67);
      v17 = *(v0 + 144);
      v69 = *(v0 + 128);
      v70 = *(v0 + 112);
      if (v68)
      {
        v124 = *(v0 + 144);
        v17 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v151[0] = swift_slowAlloc();
        *v17 = 136315650;
        v71 = sub_10000FB1C(v134, v9, v151);

        *(v17 + 4) = v71;
        *(v17 + 12) = 2080;
        sub_100013100();
        v22 = sub_100013A50();
        v9 = v72;
        v136 = v67;
        v73 = *v129;
        (*v129)(v69, v70);
        v74 = sub_10000FB1C(v22, v9, v151);

        *(v17 + 14) = v74;
        *(v17 + 22) = 2112;
        swift_errorRetain();
        v75 = _swift_stdlib_bridgeErrorToNSError();
        *(v17 + 24) = v75;
        *v122 = v75;
        _os_log_impl(&_mh_execute_header, v23, v136, "Cannot remove %s at %s. Error: %@", v17, 0x20u);
        sub_1000055FC(v122, &qword_10001C658, &qword_1000142E0);

        swift_arrayDestroy();

        v25 = (v73)(v124, v70);
      }

      else
      {

        v22 = v129;
        v23 = *v129;
        (*v129)(v69, v70);
        v25 = (v23)(v17, v70);
      }

LABEL_17:
      v26 = v140;
      v30 = v130;
      if (v29)
      {
        goto LABEL_18;
      }

      goto LABEL_19;
    }

    (*v148)(*(v0 + 136), *(v0 + 144), *(v0 + 112));
    v56 = v52;

    v23 = sub_100013700();
    v57 = sub_1000138E0();

    v58 = os_log_type_enabled(v23, v57);
    v59 = *(v0 + 136);
    v17 = *(v0 + 144);
    v60 = *(v0 + 112);
    if (v58)
    {
      v123 = *(v0 + 144);
      v17 = swift_slowAlloc();
      v151[0] = swift_slowAlloc();
      *v17 = 136315394;
      v140 = v33;
      v61 = sub_10000FB1C(v134, v9, v151);

      *(v17 + 4) = v61;
      *(v17 + 12) = 2080;
      sub_100013100();
      v9 = sub_100013A50();
      v63 = v62;
      v135 = v57;
      v22 = *v129;
      (*v129)(v59, v60);
      v64 = sub_10000FB1C(v9, v63, v151);

      *(v17 + 14) = v64;
      _os_log_impl(&_mh_execute_header, v23, v135, "Removed %s at %s", v17, 0x16u);
      swift_arrayDestroy();

      v25 = v22(v123, v60);
      goto LABEL_17;
    }

    v22 = v129;
    v23 = *v129;
    (*v129)(v59, v60);
    v25 = (v23)(v17, v60);
    v26 = v33;
    v30 = v130;
    if (v29)
    {
      goto LABEL_18;
    }

LABEL_19:
    if (v30 <= v26 + 1)
    {
      v32 = v26 + 1;
    }

    else
    {
      v32 = v30;
    }

    v33 = v32 - 1;
    while (1)
    {
      v31 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_43;
      }

      if (v31 >= v30)
      {
        break;
      }

      v29 = *(v121 + 8 * v31);
      ++v26;
      if (v29)
      {
        goto LABEL_26;
      }
    }

    v76 = *(v0 + 160);
    v77 = sub_1000054F8(&unk_10001C8E0, &qword_100014788);
    (*(*(v77 - 8) + 56))(v76, 1, 1, v77);
    v29 = 0;
  }

  v78 = *(v0 + 288);

  v23 = *(v120 + v119);
  v9 = v23 + 64;
  v79 = -1;
  v80 = -1 << *(v23 + 32);
  if (-v80 < 64)
  {
    v79 = ~(-1 << -v80);
  }

  v29 = v79 & *(v23 + 64);
  v22 = ((63 - v80) >> 6);
  v81 = *(v120 + v119);
  swift_bridgeObjectRetain_n();
  v17 = 0;
  v82 = &_swiftEmptyDictionarySingleton;
LABEL_45:
  if (v29)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v89 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_67;
    }

    if (v89 >= v22)
    {
      break;
    }

    v29 = *(v9 + 8 * v89);
    ++v17;
    if (v29)
    {
      v17 = v89;
LABEL_50:
      v90 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
      v91 = v90 | (v17 << 6);
      v92 = *(*(v23 + 56) + 8 * v91);
      if (*(v92 + 16))
      {
        v86 = v82;
        v93 = (*(v23 + 48) + 16 * v91);
        v94 = v93[1];
        v149 = *v93;

        v95 = sub_1000100C4(0x656D686361747461, 0xEF70614D4449746ELL);
        if ((v96 & 1) == 0)
        {
          goto LABEL_44;
        }

        sub_100005540(*(v92 + 56) + 32 * v95, v0 + 16);
        sub_1000054F8(&qword_10001C998, &unk_1000147D0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_44;
        }

        v140 = *(v0 + 64);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v151[0] = v86;
        v25 = sub_1000100C4(v149, v94);
        v98 = *(v86 + 16);
        v99 = (v97 & 1) == 0;
        v100 = __OFADD__(v98, v99);
        v101 = v98 + v99;
        if (v100)
        {
          __break(1u);
LABEL_72:
          __break(1u);
        }

        if (*(v86 + 24) >= v101)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_58;
          }

          v145 = v25;
          v138 = v97;
          sub_100011B70(&qword_10001C700, &qword_100014320);
          v25 = v145;
          if (v138)
          {
            goto LABEL_43;
          }

LABEL_59:
          v104 = v151[0];
          *(v151[0] + 8 * (v25 >> 6) + 64) |= 1 << v25;
          v105 = (v104[6] + 16 * v25);
          *v105 = v149;
          v105[1] = v94;
          *(v104[7] + 8 * v25) = v140;

          v106 = v104[2];
          v100 = __OFADD__(v106, 1);
          v107 = v106 + 1;
          if (v100)
          {
            goto LABEL_72;
          }

          v82 = v104;
          v104[2] = v107;
        }

        else
        {
          v137 = v97;
          sub_100010C60(v101, isUniquelyReferenced_nonNull_native, &qword_10001C700, &qword_100014320);
          v25 = sub_1000100C4(v149, v94);
          v103 = v102 & 1;
          v97 = v137;
          if ((v137 & 1) != v103)
          {
            goto LABEL_68;
          }

LABEL_58:
          if ((v97 & 1) == 0)
          {
            goto LABEL_59;
          }

LABEL_43:
          v85 = v25;

          v86 = v151[0];
          v87 = *(v151[0] + 56);
          v88 = *(v87 + 8 * v85);
          *(v87 + 8 * v85) = v140;

LABEL_44:

          v82 = v86;
        }
      }

      goto LABEL_45;
    }
  }

  v108 = *(v0 + 216);
  v110 = *(v0 + 200);
  v109 = *(v0 + 208);
  v112 = *(v0 + 184);
  v111 = *(v0 + 192);
  v114 = *(v0 + 160);
  v113 = *(v0 + 168);
  v139 = *(v0 + 152);
  v141 = *(v0 + 144);
  v146 = *(v0 + 136);
  v150 = *(v0 + 128);
  v115 = v82;

  v116 = *(v108 + OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_attachmentIDMaps);
  *(v108 + OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_attachmentIDMaps) = v115;

  v117 = *(v0 + 8);
  v118 = *(v0 + 216);

  return v117(v118);
}

uint64_t sub_10000BD28()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v6 = *(v0 + 160);
  v5 = *(v0 + 168);
  v8 = *(v0 + 144);
  v7 = *(v0 + 152);
  v9 = *(v0 + 136);
  v12 = *(v0 + 256);
  v13 = *(v0 + 128);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10000BE4C()
{
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 184);
  v6 = *(v0 + 160);
  v5 = *(v0 + 168);
  v8 = *(v0 + 144);
  v7 = *(v0 + 152);
  v9 = *(v0 + 136);
  v12 = *(v0 + 296);
  v13 = *(v0 + 128);

  v10 = *(v0 + 8);

  return v10();
}

void sub_10000BF70(void *a1, uint64_t a2, uint64_t a3)
{
  v124 = a3;
  v119 = a1;
  v118 = sub_1000135D0();
  v121 = *(v118 - 8);
  v4 = *(v121 + 64);
  v5 = __chkstk_darwin(v118);
  v7 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v120 = &v117 - v8;
  v9 = sub_1000054F8(&qword_10001C990, &qword_1000147C8);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v122 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v117 - v14;
  v16 = __chkstk_darwin(v13);
  v117 = (&v117 - v17);
  v18 = __chkstk_darwin(v16);
  v20 = &v117 - v19;
  v21 = __chkstk_darwin(v18);
  v123 = &v117 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = (&v117 - v24);
  __chkstk_darwin(v23);
  v27 = &v117 - v26;
  v126 = a2;
  sub_1000057F4(a2, &v117 - v26, &qword_10001C990, &qword_1000147C8);
  v28 = *(v27 + 1);

  v127 = v9;
  v29 = &v27[*(v9 + 48)];
  v30 = type metadata accessor for FedStatsPluginCKExperimentRecord();
  v31 = *(v29 + v30[13]);
  sub_1000101A0(v29);
  if (v31)
  {
    if (v31 == 1)
    {
      v32 = objc_opt_self();
      v33 = v126;
      sub_1000057F4(v126, v25, &qword_10001C990, &qword_1000147C8);
      v34 = v25[1];

      v35 = v25 + *(v127 + 48);
      v36 = (v35 + v30[14]);
      v37 = *v36;
      v38 = v36[1];
      sub_1000056C4(*v36, v38);
      sub_1000101A0(v35);
      isa = sub_100013630().super.isa;
      sub_1000054A4(v37, v38);
      *&v130[0] = 0;
      v40 = [v32 JSONObjectWithData:isa options:16 error:v130];

      if (v40)
      {
        v41 = *&v130[0];
        sub_100013940();
        swift_unknownObjectRelease();
        sub_1000054F8(&qword_10001C650, &unk_1000147E0);
        if (swift_dynamicCast())
        {
          v42 = *&v129[0];
          sub_1000057F4(v33, v25, &qword_10001C990, &qword_1000147C8);
          v43 = *v25;
          v44 = v25[1];
          v45 = *(v127 + 48);
          v46 = v119;
          v47 = *v119;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v130[0] = *v46;
          sub_1000113D8(v42, v43, v44, isUniquelyReferenced_nonNull_native);

          *v46 = *&v130[0];
          sub_1000101A0(v25 + v45);
          return;
        }
      }

      else
      {
        v72 = *&v130[0];
        sub_100013560();

        swift_willThrow();
      }

      if (qword_10001C620 != -1)
      {
        swift_once();
      }

      v90 = sub_100013720();
      sub_100005418(v90, qword_10001D2F0);
      v91 = v123;
      sub_1000057F4(v33, v123, &qword_10001C990, &qword_1000147C8);
      v92 = sub_100013700();
      v93 = sub_1000138E0();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        *&v130[0] = v95;
        *v94 = 136315138;
        sub_10001317C(v91, v25, &qword_10001C990, &qword_1000147C8);
        v96 = *v25;
        v97 = v25[1];
        sub_1000101A0(v25 + *(v127 + 48));
        v98 = sub_10000FB1C(v96, v97, v130);

        *(v94 + 4) = v98;
        _os_log_impl(&_mh_execute_header, v92, v93, "Cannot deserialize recipe for record %s to JSON", v94, 0xCu);
        sub_100005788(v95);
      }

      else
      {

        sub_1000055FC(v91, &qword_10001C990, &qword_1000147C8);
      }
    }

    else
    {
      sub_1000057F4(v126, v20, &qword_10001C990, &qword_1000147C8);
      v53 = *(v20 + 1);

      v54 = &v20[*(v127 + 48)];
      v55 = (v54 + v30[15]);
      v57 = *v55;
      v56 = v55[1];

      sub_1000101A0(v54);
      v58 = v124;
      if (*(v124 + 16))
      {
        v59 = sub_1000100C4(v57, v56);
        v61 = v60;

        if (v61)
        {
          v62 = v121;
          v63 = v118;
          (*(v121 + 16))(v7, *(v58 + 56) + *(v121 + 72) * v59, v118);
          v64 = v120;
          (*(v62 + 32))(v120, v7, v63);
          v65 = v125;
          v66 = sub_1000135F0();
          if (v65)
          {

            if (qword_10001C620 != -1)
            {
              swift_once();
            }

            v68 = sub_100013720();
            sub_100005418(v68, qword_10001D2F0);
            v69 = sub_100013700();
            v70 = sub_1000138E0();
            if (os_log_type_enabled(v69, v70))
            {
              v71 = swift_slowAlloc();
              *v71 = 0;
              _os_log_impl(&_mh_execute_header, v69, v70, "Cannot read recipe URL from Attachment record", v71, 2u);
            }
          }

          else
          {
            v99 = v66;
            v100 = v67;
            v101 = objc_opt_self();
            v102 = sub_100013630().super.isa;
            v128 = 0;
            v103 = [v101 JSONObjectWithData:v102 options:16 error:&v128];

            v104 = v128;
            if (v103)
            {
              sub_100013940();
              swift_unknownObjectRelease();
              sub_10000559C(v129, v130);
              v105 = v117;
              sub_1000057F4(v126, v117, &qword_10001C990, &qword_1000147C8);
              v106 = v105[1];
              v126 = *v105;
              sub_100005540(v130, v129);
              sub_1000054F8(&qword_10001C650, &unk_1000147E0);
              if (swift_dynamicCast())
              {
                v107 = v128;
              }

              else
              {
                v107 = sub_10000303C(&_swiftEmptyArrayStorage);
              }

              v113 = *(v127 + 48);
              v114 = v119;
              v115 = *v119;
              v116 = swift_isUniquelyReferenced_nonNull_native();
              *&v129[0] = *v114;
              sub_1000113D8(v107, v126, v106, v116);

              sub_1000054A4(v99, v100);
              *v114 = *&v129[0];
              sub_100005788(v130);
              (*(v121 + 8))(v120, v63);
              sub_1000101A0(v117 + v113);
              return;
            }

            v108 = v104;
            sub_100013560();

            swift_willThrow();

            if (qword_10001C620 != -1)
            {
              swift_once();
            }

            v109 = sub_100013720();
            sub_100005418(v109, qword_10001D2F0);
            v110 = sub_100013700();
            v111 = sub_1000138E0();
            if (os_log_type_enabled(v110, v111))
            {
              v112 = swift_slowAlloc();
              *v112 = 0;
              _os_log_impl(&_mh_execute_header, v110, v111, "Cannot load recipe from URL", v112, 2u);
            }

            sub_1000054A4(v99, v100);
          }

          (*(v62 + 8))(v64, v63);
          return;
        }
      }

      else
      {
      }

      if (qword_10001C620 != -1)
      {
        swift_once();
      }

      v73 = sub_100013720();
      sub_100005418(v73, qword_10001D2F0);
      v74 = v126;
      sub_1000057F4(v126, v15, &qword_10001C990, &qword_1000147C8);
      v75 = v74;
      v76 = v122;
      sub_1000057F4(v75, v122, &qword_10001C990, &qword_1000147C8);
      v77 = sub_100013700();
      v78 = sub_1000138E0();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        *&v130[0] = swift_slowAlloc();
        *v79 = 136315394;
        sub_10001317C(v15, v25, &qword_10001C990, &qword_1000147C8);
        v80 = v25[1];

        v81 = v127;
        v82 = v25 + *(v127 + 48);
        v83 = (v82 + v30[15]);
        v84 = *v83;
        v85 = v83[1];

        sub_1000101A0(v82);
        v86 = sub_10000FB1C(v84, v85, v130);

        *(v79 + 4) = v86;
        *(v79 + 12) = 2080;
        sub_10001317C(v76, v25, &qword_10001C990, &qword_1000147C8);
        v87 = *v25;
        v88 = v25[1];
        sub_1000101A0(v25 + *(v81 + 48));
        v89 = sub_10000FB1C(v87, v88, v130);

        *(v79 + 14) = v89;
        _os_log_impl(&_mh_execute_header, v77, v78, "No recipe record '%s' for experiment record '%s'", v79, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_1000055FC(v76, &qword_10001C990, &qword_1000147C8);
        sub_1000055FC(v15, &qword_10001C990, &qword_1000147C8);
      }
    }
  }

  else
  {
    if (qword_10001C620 != -1)
    {
      swift_once();
    }

    v49 = sub_100013720();
    sub_100005418(v49, qword_10001D2F0);
    v50 = sub_100013700();
    v51 = sub_1000138F0();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "Invalid or unimplemented recipe type", v52, 2u);
    }
  }
}

unint64_t FedStatsPluginMLHostClient.recipeDictionary(forRecipe:)(uint64_t a1, void *a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_recipes);
  if (!*(v5 + 16))
  {
    goto LABEL_5;
  }

  v6 = sub_1000100C4(a1, a2);
  if ((v7 & 1) == 0)
  {

LABEL_5:
    v9 = objc_opt_self();
    sub_100013990(48);

    v12._countAndFlagsBits = a1;
    v12._object = a2;
    sub_100013810(v12);
    v13._object = 0x8000000100014C60;
    v13._countAndFlagsBits = 0xD000000000000011;
    sub_100013810(v13);
    v8 = 0x8000000100014C40;
    v10 = sub_1000137D0();

    [v9 errorWithCode:300 description:{v10, 0xD00000000000001DLL}];

    swift_willThrow();
    return v8;
  }

  v8 = *(*(v5 + 56) + 8 * v6);

  return v8;
}

Swift::String_optional __swiftcall FedStatsPluginMLHostClient.namespaceIdentifier(forRecipe:)(Swift::String forRecipe)
{
  object = forRecipe._object;
  countAndFlagsBits = forRecipe._countAndFlagsBits;
  v4 = type metadata accessor for FedStatsPluginCKExperimentRecord();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000054F8(&qword_10001C8A8, &qword_100014760);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v23 - v11;
  v13 = *(v1 + OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_experimentCfgs);
  if (*(v13 + 16))
  {
    v14 = *(v1 + OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_experimentCfgs);

    v15 = sub_1000100C4(countAndFlagsBits, object);
    if (v16)
    {
      sub_10001013C(*(v13 + 56) + *(v5 + 72) * v15, v12);

      (*(v5 + 56))(v12, 0, 1, v4);
      goto LABEL_6;
    }
  }

  (*(v5 + 56))(v12, 1, 1, v4);
LABEL_6:
  if ((*(v5 + 48))(v12, 1, v4))
  {
    sub_1000055FC(v12, &qword_10001C8A8, &qword_100014760);
    v17 = 0;
    v18 = 0;
  }

  else
  {
    sub_10001013C(v12, v8);
    sub_1000055FC(v12, &qword_10001C8A8, &qword_100014760);
    v19 = &v8[*(v4 + 44)];
    v17 = *v19;
    v18 = v19[1];

    sub_1000101A0(v8);
  }

  v20 = v17;
  v21 = v18;
  result.value._object = v21;
  result.value._countAndFlagsBits = v20;
  return result;
}

Swift::String_optional __swiftcall FedStatsPluginMLHostClient.experimentIdentifier(forRecipe:)(Swift::String forRecipe)
{
  object = forRecipe._object;
  countAndFlagsBits = forRecipe._countAndFlagsBits;
  v4 = type metadata accessor for FedStatsPluginCKExperimentRecord();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000054F8(&qword_10001C8A8, &qword_100014760);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v23 - v11;
  v13 = *(v1 + OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_experimentCfgs);
  if (*(v13 + 16))
  {
    v14 = *(v1 + OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_experimentCfgs);

    v15 = sub_1000100C4(countAndFlagsBits, object);
    if (v16)
    {
      sub_10001013C(*(v13 + 56) + *(v5 + 72) * v15, v12);

      (*(v5 + 56))(v12, 0, 1, v4);
      goto LABEL_6;
    }
  }

  (*(v5 + 56))(v12, 1, 1, v4);
LABEL_6:
  if ((*(v5 + 48))(v12, 1, v4))
  {
    sub_1000055FC(v12, &qword_10001C8A8, &qword_100014760);
    v17 = 0;
    v18 = 0;
  }

  else
  {
    sub_10001013C(v12, v8);
    sub_1000055FC(v12, &qword_10001C8A8, &qword_100014760);
    v19 = &v8[*(v4 + 24)];
    v17 = *v19;
    v18 = v19[1];

    sub_1000101A0(v8);
  }

  v20 = v17;
  v21 = v18;
  result.value._object = v21;
  result.value._countAndFlagsBits = v20;
  return result;
}

Swift::String_optional __swiftcall FedStatsPluginMLHostClient.treatmentIdentifier(forRecipe:)(Swift::String forRecipe)
{
  object = forRecipe._object;
  countAndFlagsBits = forRecipe._countAndFlagsBits;

  v3 = countAndFlagsBits;
  v4 = object;
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

Swift::String_optional __swiftcall FedStatsPluginMLHostClient.deploymentIdentifier(forRecipe:)(Swift::String forRecipe)
{
  object = forRecipe._object;
  countAndFlagsBits = forRecipe._countAndFlagsBits;
  v4 = type metadata accessor for FedStatsPluginCKExperimentRecord();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000054F8(&qword_10001C8A8, &qword_100014760);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v23 - v11;
  v13 = *(v1 + OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_experimentCfgs);
  if (*(v13 + 16))
  {
    v14 = *(v1 + OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_experimentCfgs);

    v15 = sub_1000100C4(countAndFlagsBits, object);
    if (v16)
    {
      sub_10001013C(*(v13 + 56) + *(v5 + 72) * v15, v12);

      (*(v5 + 56))(v12, 0, 1, v4);
      goto LABEL_6;
    }
  }

  (*(v5 + 56))(v12, 1, 1, v4);
LABEL_6:
  if ((*(v5 + 48))(v12, 1, v4))
  {
    sub_1000055FC(v12, &qword_10001C8A8, &qword_100014760);
    v17 = 0;
    v18 = 0;
  }

  else
  {
    sub_10001013C(v12, v8);
    sub_1000055FC(v12, &qword_10001C8A8, &qword_100014760);
    v19 = &v8[*(v4 + 28)];
    v17 = *v19;
    v18 = v19[1];

    sub_1000101A0(v8);
  }

  v20 = v17;
  v21 = v18;
  result.value._object = v21;
  result.value._countAndFlagsBits = v20;
  return result;
}

id sub_10000D5D0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_1000137E0();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
  v11 = v10;

  if (v11)
  {
    v12 = sub_1000137D0();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void *FedStatsPluginMLHostClient.recipeIdentifiers()()
{
  v1 = *(v0 + OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_experimentCfgs);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  v3 = sub_10000FA98(*(v1 + 16), 0);
  v4 = sub_10001294C(&v6, v3 + 4, v2, v1);

  sub_100012AA4();
  if (v4 != v2)
  {
    __break(1u);
    return &_swiftEmptyArrayStorage;
  }

  return v3;
}

void *sub_10000D740(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_10000FA98(*(a1 + 16), 0);
  v4 = sub_10001294C(&v6, v3 + 4, v2, a1);
  sub_100012AA4();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return &_swiftEmptyArrayStorage;
  }

  return v3;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FedStatsPluginMLHostClient.fetchAssets(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = sub_100013730();
  v66 = *(v4 - 8);
  v67 = v4;
  v5 = *(v66 + 64);
  __chkstk_darwin(v4);
  v63 = (&v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_100013760();
  v64 = *(v7 - 8);
  v65 = v7;
  v8 = *(v64 + 64);
  v9 = __chkstk_darwin(v7);
  v61 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v62 = &v60 - v11;
  v12 = sub_1000054F8(&qword_10001C8B8, &qword_100014768);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v60 = &v60 - v14;
  v72[0] = &_swiftEmptySetSingleton;
  v15 = a1._rawValue + 64;
  v16 = 1 << *(a1._rawValue + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1._rawValue + 8);
  rawValue = a1._rawValue;
  v71 = OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_attachmentIDMaps;
  v19 = ((v16 + 63) >> 6);

  v20 = 0;
  v68 = v2;
  while (v18)
  {
    v21 = v18;
LABEL_12:
    v18 = (v21 - 1) & v21;
    v23 = *&v2[v71];
    if (*(v23 + 16))
    {
      v24 = __clz(__rbit64(v21)) | (v20 << 6);
      v25 = (rawValue[6] + 16 * v24);
      v27 = *v25;
      v26 = v25[1];
      v28 = *(rawValue[7] + 8 * v24);

      v29 = sub_1000100C4(v27, v26);
      if (v30)
      {
        v31 = *(*(v23 + 56) + 8 * v29);

        v32 = v69;
        v33 = sub_100012DC8(v31, v27, v26, v28);
        v69 = v32;
        v2 = v68;

        sub_10000DF28(v33);
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_22:
      swift_once();
      goto LABEL_18;
    }

    if (v22 >= v19)
    {
      break;
    }

    v21 = *&v15[8 * v22];
    ++v20;
    if (v21)
    {
      v20 = v22;
      goto LABEL_12;
    }
  }

  v34 = v72[0];
  v35 = dispatch_semaphore_create(0);
  v36 = sub_1000138B0();
  v37 = v60;
  (*(*(v36 - 8) + 56))(v60, 1, 1, v36);
  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = 0;
  v38[4] = v2;
  v38[5] = v34;
  v38[6] = v35;
  v15 = v2;
  v19 = v35;
  sub_10000E390(0, 0, v37, &unk_100014778, v38);

  v39 = v61;
  sub_100013750();
  v40 = v63;
  *v63 = 240;
  v42 = v66;
  v41 = v67;
  (*(v66 + 104))(v40, enum case for DispatchTimeInterval.seconds(_:), v67);
  v43 = v62;
  sub_100013770();
  (*(v42 + 8))(v40, v41);
  v44 = *(v64 + 8);
  v45 = v39;
  v46 = v65;
  v44(v45, v65);
  sub_100013900();
  v44(v43, v46);
  if (sub_100013740())
  {
    v47 = objc_opt_self();
    v72[0] = 0;
    v72[1] = 0xE000000000000000;
    sub_100013990(56);
    v73._object = 0x8000000100014C80;
    v73._countAndFlagsBits = 0xD00000000000002ELL;
    sub_100013810(v73);
    v72[3] = 240;
    v74._countAndFlagsBits = sub_100013A50();
    sub_100013810(v74);

    v75._countAndFlagsBits = 0x73646E6F63657320;
    v75._object = 0xE800000000000000;
    sub_100013810(v75);
    v48 = sub_1000137D0();

    [v47 errorWithCode:300 description:v48];

    swift_willThrow();
    return;
  }

  if (qword_10001C620 != -1)
  {
    goto LABEL_22;
  }

LABEL_18:
  v49 = sub_100013720();
  sub_100005418(v49, qword_10001D2F0);
  v50 = v15;
  v51 = sub_100013700();
  v52 = sub_1000138E0();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v72[0] = v54;
    *v53 = 136315138;
    v55 = *&v50[OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_assetURLs];
    sub_1000135D0();

    v56 = sub_1000137A0();
    v58 = v57;

    v59 = sub_10000FB1C(v56, v58, v72);

    *(v53 + 4) = v59;
    _os_log_impl(&_mh_execute_header, v51, v52, "assetURLs = %s", v53, 0xCu);
    sub_100005788(v54);
  }
}

uint64_t sub_10000DF28(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 56) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_100011CD0(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_10000E02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_10000E050, 0, 0);
}

uint64_t sub_10000E050()
{
  v9 = v0;
  v1 = v0[3];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_10000FA98(*(v1 + 16), 0);
    v4 = sub_100012AAC(&v8, v3 + 4, v2, v1);

    sub_100012AA4();
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = &_swiftEmptyArrayStorage;
LABEL_5:
  v0[5] = v3;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_10000E17C;
  v6 = v0[2];

  return sub_100009538(v3);
}

uint64_t sub_10000E17C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v7 = sub_10000E32C;
  }

  else
  {
    v8 = *(v4 + 40);

    *(v4 + 64) = a1;
    v7 = sub_10000E2AC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10000E2AC()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = *(v2 + OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_assetURLs);
  *(v2 + OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_assetURLs) = v0[8];

  sub_100013910();
  v4 = v0[1];

  return v4();
}

uint64_t sub_10000E32C()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_10000E390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000054F8(&qword_10001C8B8, &qword_100014768);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_1000057F4(a3, v24 - v10, &qword_10001C8B8, &qword_100014768);
  v12 = sub_1000138B0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000055FC(v11, &qword_10001C8B8, &qword_100014768);
  }

  else
  {
    sub_1000138A0();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_100013890();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1000137F0() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1000055FC(a3, &qword_10001C8B8, &qword_100014768);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000055FC(a3, &qword_10001C8B8, &qword_100014768);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

void FedStatsPluginMLHostClient.assetURL(forRecipe:forKey:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v74 = a3;
  v11 = sub_1000135D0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v5 + OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_attachmentIDMaps);
  if (!*(v17 + 16))
  {
    goto LABEL_16;
  }

  v71 = v5;
  v69 = v14;

  v18 = sub_1000100C4(a1, a2);
  if ((v19 & 1) == 0)
  {

LABEL_16:
    v61 = objc_opt_self();
    v72 = 0;
    v73 = 0xE000000000000000;
    sub_100013990(36);

    v72 = 0xD000000000000010;
    v73 = 0x8000000100014CB0;
    v75._countAndFlagsBits = a1;
    v75._object = a2;
    sub_100013810(v75);
    v62._countAndFlagsBits = 0xD000000000000012;
    v62._object = 0x8000000100014CD0;
LABEL_20:
    sub_100013810(v62);
    v63 = sub_1000137D0();

    [v61 errorWithCode:300 description:v63];

    swift_willThrow();
    return;
  }

  v70 = a4;
  v20 = *(*(v17 + 56) + 8 * v18);

  if (qword_10001C620 != -1)
  {
    swift_once();
  }

  v21 = sub_100013720();
  v22 = sub_100005418(v21, qword_10001D2F0);

  v68 = v22;
  v23 = sub_100013700();
  v24 = sub_1000138E0();

  v25 = os_log_type_enabled(v23, v24);
  v66 = v16;
  v67 = v12;
  v65 = a5;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v64 = v6;
    v27 = v26;
    v28 = swift_slowAlloc();
    v72 = v28;
    *v27 = 136315138;
    v29 = sub_1000137A0();
    v31 = sub_10000FB1C(v29, v30, &v72);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v23, v24, "attachmentIDMap = %s", v27, 0xCu);
    sub_100005788(v28);
  }

  v32 = v74;
  if (!*(v20 + 16) || (v33 = sub_1000100C4(v74, v70), (v34 & 1) == 0))
  {

    v61 = objc_opt_self();
    v72 = 0;
    v73 = 0xE000000000000000;
    sub_100013990(45);

    v72 = 0xD000000000000016;
    v73 = 0x8000000100014CF0;
    v76._countAndFlagsBits = a1;
    v76._object = a2;
    sub_100013810(v76);
    v77._countAndFlagsBits = 0x6F6E2073656F6420;
    v77._object = 0xEF20657661682074;
    sub_100013810(v77);
    v78._countAndFlagsBits = v32;
    v78._object = v70;
    sub_100013810(v78);
    v62._countAndFlagsBits = 2036689696;
    v62._object = 0xE400000000000000;
    goto LABEL_20;
  }

  v35 = (*(v20 + 56) + 16 * v33);
  v37 = *v35;
  v36 = v35[1];
  swift_bridgeObjectRetain_n();

  v38 = sub_100013700();
  v39 = sub_1000138E0();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v72 = v41;
    *v40 = 136315138;
    *(v40 + 4) = sub_10000FB1C(v37, v36, &v72);
    _os_log_impl(&_mh_execute_header, v38, v39, "assetAttachmentID = %s", v40, 0xCu);
    sub_100005788(v41);
  }

  v42 = *(v71 + OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_assetURLs);
  if (!*(v42 + 16))
  {
    goto LABEL_19;
  }

  v43 = *(v71 + OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_assetURLs);

  v44 = sub_1000100C4(v37, v36);
  if ((v45 & 1) == 0)
  {

LABEL_19:
    v61 = objc_opt_self();
    v72 = 0;
    v73 = 0xE000000000000000;
    sub_100013990(36);

    v72 = 0xD000000000000011;
    v73 = 0x8000000100014D10;
    v79._countAndFlagsBits = v37;
    v79._object = v36;
    sub_100013810(v79);

    v62._object = 0x8000000100014C60;
    v62._countAndFlagsBits = 0xD000000000000011;
    goto LABEL_20;
  }

  v46 = v44;

  v47 = v67;
  v48 = *(v67 + 16);
  v49 = *(v42 + 56) + *(v67 + 72) * v46;
  v50 = v65;
  v51 = v69;
  v48(v65, v49, v69);

  v52 = v66;
  v48(v66, v50, v51);
  v53 = sub_100013700();
  v54 = sub_1000138E0();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v72 = v74;
    *v55 = 136315138;
    sub_100013100();
    v56 = v69;
    v57 = sub_100013A50();
    v59 = v58;
    (*(v47 + 8))(v52, v56);
    v60 = sub_10000FB1C(v57, v59, &v72);

    *(v55 + 4) = v60;
    _os_log_impl(&_mh_execute_header, v53, v54, "assetURL = %s", v55, 0xCu);
    sub_100005788(v74);
  }

  else
  {

    (*(v47 + 8))(v52, v69);
  }
}

Swift::Void __swiftcall FedStatsPluginMLHostClient.removeAssets()()
{
  v1 = sub_1000135D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v86 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v85 = &v80 - v7;
  v8 = __chkstk_darwin(v6);
  v96 = &v80 - v9;
  __chkstk_darwin(v8);
  v87 = &v80 - v10;
  v11 = sub_1000054F8(&qword_10001C8D8, &qword_100014780);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v91 = (&v80 - v16);
  v17 = *(v0 + OBJC_IVAR____TtC20FedStatsMLHostPlugin26FedStatsPluginMLHostClient_assetURLs);
  v18 = *(v17 + 64);
  v81 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v98 = (v19 + 63) >> 6;
  v93 = (v2 + 32);
  v94 = (v2 + 16);
  v88 = v2;
  v89 = v17;
  v90 = (v2 + 8);

  v22 = 0;
  v83 = 0;
  *&v23 = 136315394;
  v84 = v23;
  v97 = v1;
  for (i = v15; ; v15 = i)
  {
    if (v21)
    {
      v26 = v22;
LABEL_16:
      v29 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v30 = v29 | (v26 << 6);
      v31 = v88;
      v32 = (*(v89 + 48) + 16 * v30);
      v34 = *v32;
      v33 = v32[1];
      v35 = v87;
      v36 = v97;
      (*(v88 + 16))(v87, *(v89 + 56) + *(v88 + 72) * v30, v97);
      v37 = sub_1000054F8(&unk_10001C8E0, &qword_100014788);
      v38 = *(v37 + 48);
      v39 = i;
      *i = v34;
      *(v39 + 1) = v33;
      v15 = v39;
      (*(v31 + 32))(&v39[v38], v35, v36);
      (*(*(v37 - 8) + 56))(v15, 0, 1, v37);

      v28 = v26;
    }

    else
    {
      v27 = v98 <= v22 + 1 ? v22 + 1 : v98;
      v28 = v27 - 1;
      while (1)
      {
        v26 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          __break(1u);
        }

        if (v26 >= v98)
        {
          break;
        }

        v21 = *(v81 + 8 * v26);
        ++v22;
        if (v21)
        {
          goto LABEL_16;
        }
      }

      v79 = sub_1000054F8(&unk_10001C8E0, &qword_100014788);
      (*(*(v79 - 8) + 56))(v15, 1, 1, v79);
      v21 = 0;
    }

    v40 = v91;
    sub_10001317C(v15, v91, &qword_10001C8D8, &qword_100014780);
    v41 = sub_1000054F8(&unk_10001C8E0, &qword_100014788);
    if ((*(*(v41 - 8) + 48))(v40, 1, v41) == 1)
    {
      break;
    }

    v43 = *v40;
    v42 = v40[1];
    (*v93)(v96, v40 + *(v41 + 48), v97);
    v44 = [objc_opt_self() defaultManager];
    sub_1000135A0(v45);
    v47 = v46;
    v99 = 0;
    v48 = [v44 removeItemAtURL:v46 error:&v99];

    if (v48)
    {
      v92 = v28;
      v49 = qword_10001C620;
      v50 = v99;
      if (v49 != -1)
      {
        swift_once();
      }

      v51 = sub_100013720();
      sub_100005418(v51, qword_10001D2F0);
      v52 = v85;
      v53 = v96;
      (*v94)(v85, v96, v97);

      v54 = sub_100013700();
      v55 = sub_1000138E0();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        *v56 = v84;
        v57 = sub_10000FB1C(v43, v42, &v99);

        *(v56 + 4) = v57;
        *(v56 + 12) = 2080;
        sub_100013100();
        v58 = sub_100013A50();
        v60 = v59;
        v61 = *v90;
        (*v90)(v52, v97);
        v62 = sub_10000FB1C(v58, v60, &v99);

        *(v56 + 14) = v62;
        _os_log_impl(&_mh_execute_header, v54, v55, "Removed %s at %s", v56, 0x16u);
        swift_arrayDestroy();

        v61(v96, v97);
      }

      else
      {

        v24 = *v90;
        v25 = v97;
        (*v90)(v52, v97);
        v24(v53, v25);
      }

      goto LABEL_5;
    }

    v63 = v99;

    sub_100013560();

    swift_willThrow();
    if (qword_10001C620 != -1)
    {
      swift_once();
    }

    v64 = sub_100013720();
    sub_100005418(v64, qword_10001D2F0);
    v65 = v86;
    (*v94)(v86, v96, v97);
    swift_errorRetain();
    v66 = sub_100013700();
    v67 = sub_1000138E0();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v92 = v28;
      v69 = v68;
      v70 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v99 = v82;
      *v69 = v84;
      sub_100013100();
      v71 = sub_100013A50();
      v72 = v65;
      v74 = v73;
      v83 = *v90;
      v83(v72, v97);
      v75 = sub_10000FB1C(v71, v74, &v99);

      *(v69 + 4) = v75;
      *(v69 + 12) = 2112;
      swift_errorRetain();
      v76 = _swift_stdlib_bridgeErrorToNSError();
      *(v69 + 14) = v76;
      *v70 = v76;
      _os_log_impl(&_mh_execute_header, v66, v67, "Cannot remove URL %s. Error: %@", v69, 0x16u);
      sub_1000055FC(v70, &qword_10001C658, &qword_1000142E0);

      sub_100005788(v82);

      v83(v96, v97);
      v83 = 0;
LABEL_5:
      v22 = v92;
      continue;
    }

    v77 = *v90;
    v78 = v97;
    (*v90)(v65, v97);
    v77(v96, v78);
    v83 = 0;
    v22 = v28;
  }
}

id FedStatsPluginMLHostClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FedStatsPluginMLHostClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FedStatsPluginMLHostClient();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_10000FA98(uint64_t a1, uint64_t a2)
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

  sub_1000054F8(&unk_10001C9E0, &unk_100014850);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_10000FB1C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000FBE8(v11, 0, 0, 1, a1, a2);
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
    sub_100005540(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005788(v11);
  return v7;
}

unint64_t sub_10000FBE8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000FCF4(a5, a6);
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
    result = sub_1000139B0();
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

char *sub_10000FCF4(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000FD40(a1, a2);
  sub_10000FE70(&off_100018850);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000FD40(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000FF5C(v5, 0);
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

  result = sub_1000139B0();
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
        v10 = sub_100013820();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000FF5C(v10, 0);
        result = sub_100013980();
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

uint64_t sub_10000FE70(uint64_t result)
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

  result = sub_10000FFD0(result, v12, 1, v3);
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

void *sub_10000FF5C(uint64_t a1, uint64_t a2)
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

  sub_1000054F8(&qword_10001C9C8, &qword_100014838);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000FFD0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000054F8(&qword_10001C9C8, &qword_100014838);
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

unint64_t sub_1000100C4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100013A90();
  sub_100013800();
  v6 = sub_100013AA0();

  return sub_1000101FC(a1, a2, v6);
}

uint64_t sub_10001013C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FedStatsPluginCKExperimentRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000101A0(uint64_t a1)
{
  v2 = type metadata accessor for FedStatsPluginCKExperimentRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000101FC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100013A60())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1000102B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1000100C4(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000116C0();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for FedStatsPluginCKExperimentRecord();
    v22 = *(v15 - 8);
    sub_10000585C(v14 + *(v22 + 72) * v9, a3);
    sub_100010F00(v9, v12, type metadata accessor for FedStatsPluginCKExperimentRecord);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for FedStatsPluginCKExperimentRecord();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_100010420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1000100C4(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000118F0();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_1000135D0();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_100010F00(v9, v12, &type metadata accessor for URL);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_1000135D0();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1000105A4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for FedStatsPluginCKExperimentRecord();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  __chkstk_darwin(v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_1000054F8(&unk_10001C720, &qword_100014340);
  v44 = a2;
  result = sub_100013A20();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_10000585C(v31, v45);
      }

      else
      {
        sub_10001013C(v31, v45);
      }

      v32 = *(v12 + 40);
      sub_100013A90();
      sub_100013800();
      result = sub_100013AA0();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_10000585C(v45, *(v12 + 56) + v30 * v20);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1000108E0(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_1000135D0();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_1000054F8(&qword_10001C710, &qword_100014330);
  v46 = a2;
  result = sub_100013A20();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_100013A90();
      sub_100013800();
      result = sub_100013AA0();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_100010C60(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_1000054F8(a3, a4);
  v40 = a2;
  result = sub_100013A20();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_100013A90();
      sub_100013800();
      result = sub_100013AA0();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

unint64_t sub_100010F00(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_100013950() + 1) & ~v6;
    while (1)
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v7);
      v13 = *v12;
      v14 = v12[1];
      sub_100013A90();

      sub_100013800();
      v15 = sub_100013AA0();

      v16 = v15 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v16 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v17 = *(a2 + 48);
      v18 = (v17 + 16 * v4);
      v19 = (v17 + 16 * v7);
      if (v4 != v7 || v18 >= v19 + 1)
      {
        *v18 = *v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(a3(0) - 8) + 72);
      v22 = v21 * v4;
      result = v20 + v21 * v4;
      v23 = v21 * v7;
      v24 = v20 + v21 * v7 + v21;
      if (v22 < v23 || result >= v24)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v22 == v23)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v16 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1000110F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1000100C4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1000116C0();
      goto LABEL_7;
    }

    sub_1000105A4(v15, a4 & 1);
    v22 = *v5;
    v23 = sub_1000100C4(a2, a3);
    if ((v16 & 1) == (v24 & 1))
    {
      v12 = v23;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_100013A80();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for FedStatsPluginCKExperimentRecord() - 8) + 72) * v12;

    return sub_100013408(a1, v20);
  }

LABEL_13:
  sub_100011578(v12, a2, a3, a1, v18);
}

uint64_t sub_100011258(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1000100C4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1000118F0();
      goto LABEL_7;
    }

    sub_1000108E0(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_1000100C4(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_100013A80();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_1000135D0();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_100011610(v12, a2, a3, a1, v18);
}

uint64_t sub_1000113D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000100C4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100010C60(v16, a4 & 1, &qword_10001C9A0, qword_100014348);
      v20 = *v5;
      v11 = sub_1000100C4(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_100013A80();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_100011B70(&qword_10001C9A0, qword_100014348);
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_100011578(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for FedStatsPluginCKExperimentRecord();
  result = sub_10000585C(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_100011610(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1000135D0();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_1000116C0()
{
  v1 = v0;
  v2 = type metadata accessor for FedStatsPluginCKExperimentRecord();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  __chkstk_darwin(v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000054F8(&unk_10001C720, &qword_100014340);
  v5 = *v0;
  v6 = sub_100013A10();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
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
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_10001013C(*(v5 + 56) + v27, v31);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_10000585C(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
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

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_1000118F0()
{
  v1 = v0;
  v36 = sub_1000135D0();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000054F8(&qword_10001C710, &qword_100014330);
  v4 = *v0;
  v5 = sub_100013A10();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_100011B70(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1000054F8(a1, a2);
  v4 = *v2;
  v5 = sub_100013A10();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_100011CD0(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_100013A90();
  sub_100013800();
  v9 = sub_100013AA0();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_100013A60() & 1) != 0)
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

    sub_100012080(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100011E20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000054F8(&qword_10001C9D0, &qword_100014840);
  result = sub_100013970();
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
      sub_100013A90();
      sub_100013800();
      result = sub_100013AA0();
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

Swift::Int sub_100012080(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_100011E20(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100012200();
      goto LABEL_16;
    }

    sub_10001235C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_100013A90();
  sub_100013800();
  result = sub_100013AA0();
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

      result = sub_100013A60();
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
  result = sub_100013A70();
  __break(1u);
  return result;
}

void *sub_100012200()
{
  v1 = v0;
  sub_1000054F8(&qword_10001C9D0, &qword_100014840);
  v2 = *v0;
  v3 = sub_100013960();
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

uint64_t sub_10001235C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000054F8(&qword_10001C9D0, &qword_100014840);
  result = sub_100013970();
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
      sub_100013A90();

      sub_100013800();
      result = sub_100013AA0();
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

unint64_t *sub_100012594(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_100012C04(v9, a2, a3, a6);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_100012648(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_1000054F8(&qword_10001C9D8, &qword_100014848);
  result = sub_100013A30();
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
  v36 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = 16 * (v13 | (v11 << 6));
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + v16);
    v22 = v21[1];
    v37 = *v21;
    v23 = *(v9 + 40);
    sub_100013A90();

    sub_100013800();
    result = sub_100013AA0();
    v24 = -1 << *(v9 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v12 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = 16 * v27;
    v33 = (*(v9 + 48) + v32);
    *v33 = v19;
    v33[1] = v20;
    v34 = (*(v9 + 56) + v32);
    *v34 = v37;
    v34[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v36;
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

    if (v11 >= a2)
    {
      return v9;
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

uint64_t sub_1000128A0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void *sub_10001294C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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

void *sub_100012AAC(void *result, void *a2, uint64_t a3, uint64_t a4)
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

unint64_t *sub_100012C04(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = 0;
  v24 = a4;
  v21 = a2;
  v22 = result;
  v4 = 0;
  v25 = a3;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(v25 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(v25 + 56) + 16 * v13 + 8);
    v26[0] = *v14;
    v26[1] = v15;
    __chkstk_darwin(result);
    v20[2] = v26;

    v17 = v27;
    v18 = sub_1000128A0(sub_10001346C, v20, v24);
    v27 = v17;

    if (v18)
    {
      *(v22 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        return sub_100012648(v22, v21, v23, v25);
      }
    }
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
      return sub_100012648(v22, v21, v23, v25);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_100012DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;
  swift_bridgeObjectRetain_n();
  v13 = swift_bridgeObjectRetain_n();
  if (v10 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v16 = swift_slowAlloc();

      v14 = sub_100012594(v16, v11, a1, a2, a3, a4);

      goto LABEL_6;
    }
  }

  __chkstk_darwin(v13);
  bzero(&v17 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0), v12);

  v14 = sub_100012C04((&v17 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0)), v11, a1, a4);

  if (v4)
  {
    swift_willThrow();
  }

LABEL_6:

  return v14;
}