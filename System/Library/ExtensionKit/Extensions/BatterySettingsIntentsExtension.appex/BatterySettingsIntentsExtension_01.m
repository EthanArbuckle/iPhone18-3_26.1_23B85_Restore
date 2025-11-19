uint64_t sub_10001A930()
{
  v0 = sub_100028FF4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_100028BB4();
  if (v14 > 1u)
  {
    if (v14 != 2)
    {
      goto LABEL_6;
    }
  }

  else if (!v14)
  {
    goto LABEL_13;
  }

  v8 = sub_100029524();

  if (v8)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_100028BB4();
  if (v13 <= 1u)
  {
    if (v13)
    {
LABEL_13:

      goto LABEL_14;
    }

LABEL_10:
    v9 = sub_100029524();

    if (v9)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (v13 == 2)
  {
    goto LABEL_10;
  }

LABEL_11:
  sub_100028BB4();
  if (v12 > 1u)
  {
    if (v12 != 2)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  sub_100029524();

LABEL_14:
  sub_100028FD4();
  (*(v1 + 16))(v5, v7, v0);
  sub_100028AE4();
  return (*(v1 + 8))(v7, v0);
}

uint64_t sub_10001ABF4@<X0>(uint64_t a1@<X8>)
{
  if (qword_10003C2D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100028FF4();
  v3 = sub_100004EA0(v2, qword_100045600);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10001AC9C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000028D0;

  return sub_1000199F8(a1, v4);
}

uint64_t sub_10001AD3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001D164();
  *a1 = result;
  return result;
}

uint64_t sub_10001AD64(uint64_t a1)
{
  v2 = sub_10001CBAC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

char *sub_10001ADA0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B18(&qword_10003CF80, &unk_10002DFB0);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10001AEAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B18(&qword_10003CFA0, &qword_10002DFD0);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10001AFB8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B18(&qword_10003CF88, &qword_10002EB30);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10001B0BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B18(&qword_10003CF90, &unk_10002DFC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10001B1E4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10001B2B0(v11, 0, 0, 1, a1, a2);
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
    sub_10001D5DC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000BC70(v11);
  return v7;
}

unint64_t sub_10001B2B0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10001B3BC(a5, a6);
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
    result = sub_1000294D4();
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

void *sub_10001B3BC(uint64_t a1, unint64_t a2)
{
  v4 = sub_10001B408(a1, a2);
  sub_10001B538(&off_1000398D8);
  result = v4;
  v3 = v4[2] - 1;
  return result;
}

void *sub_10001B408(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10001B624(v5, 0);
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

  result = sub_1000294D4();
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
        v10 = sub_1000293D4();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10001B624(v10, 0);
        result = sub_1000294B4();
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

uint64_t sub_10001B538(uint64_t result)
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

  result = sub_10001B698(result, v12, 1, v3);
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

void *sub_10001B624(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100001B18(&qword_10003CF60, &qword_10002DF90);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10001B698(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B18(&qword_10003CF60, &qword_10002DF90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

unint64_t sub_10001B78C(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_100029544();
  sub_1000293B4();

  v4 = sub_100029564();

  return sub_10001B8FC(a1, v4);
}

unint64_t sub_10001B840(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100029544();
  sub_1000293B4();
  v6 = sub_100029564();

  return sub_10001BA74(a1, a2, v6);
}

unint64_t sub_10001B8B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100029484(*(v2 + 40));

  return sub_10001BB2C(a1, v4);
}

unint64_t sub_10001B8FC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xE500000000000000;
          v8 = 0x7961646F74;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0xE400000000000000;
          v8 = 1801807223;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE300000000000000;
            if (v8 != 7827310)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v7 = 0xE300000000000000;
        v8 = 7827310;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x7961646F74;
      }

      else
      {
        v10 = 1801807223;
      }

      if (v9 == 1)
      {
        v11 = 0xE500000000000000;
      }

      else
      {
        v11 = 0xE400000000000000;
      }

      if (v8 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_100029524();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10001BA74(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100029524())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10001BB2C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10001D68C(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100029494();
      sub_10001D638(v8);
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

unint64_t sub_10001BBF4(uint64_t a1)
{
  v2 = sub_100001B18(&qword_10003CFB8, &qword_10002DFE0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100001B18(&qword_10003CFC0, qword_10002DFE8);
    v8 = sub_1000294E4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10001D888(v10, v6);
      v12 = *v6;
      result = sub_10001B78C(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_100028E44();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
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

uint64_t _s31BatterySettingsIntentsExtension0A30UsageInformationQueryRangeTypeO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100039820;
  v6._object = a2;
  v4 = sub_1000294F4(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10001BE18()
{
  result = qword_10003CD88;
  if (!qword_10003CD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CD88);
  }

  return result;
}

unint64_t sub_10001BE70()
{
  result = qword_10003CD90;
  if (!qword_10003CD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CD90);
  }

  return result;
}

unint64_t sub_10001BEC8()
{
  result = qword_10003CD98;
  if (!qword_10003CD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CD98);
  }

  return result;
}

unint64_t sub_10001BF20()
{
  result = qword_10003CDA0;
  if (!qword_10003CDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CDA0);
  }

  return result;
}

unint64_t sub_10001BF84()
{
  result = qword_10003CDA8;
  if (!qword_10003CDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CDA8);
  }

  return result;
}

unint64_t sub_10001BFDC()
{
  result = qword_10003CDB0;
  if (!qword_10003CDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CDB0);
  }

  return result;
}

unint64_t sub_10001C034()
{
  result = qword_10003CDB8;
  if (!qword_10003CDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CDB8);
  }

  return result;
}

unint64_t sub_10001C08C()
{
  result = qword_10003CDC0;
  if (!qword_10003CDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CDC0);
  }

  return result;
}

unint64_t sub_10001C10C()
{
  result = qword_10003CDC8;
  if (!qword_10003CDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CDC8);
  }

  return result;
}

unint64_t sub_10001C164()
{
  result = qword_10003CDD0;
  if (!qword_10003CDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CDD0);
  }

  return result;
}

unint64_t sub_10001C1BC()
{
  result = qword_10003CDD8;
  if (!qword_10003CDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CDD8);
  }

  return result;
}

unint64_t sub_10001C214()
{
  result = qword_10003CDE0;
  if (!qword_10003CDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CDE0);
  }

  return result;
}

unint64_t sub_10001C2B0()
{
  result = qword_10003CDF8;
  if (!qword_10003CDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CDF8);
  }

  return result;
}

unint64_t sub_10001C308()
{
  result = qword_10003CE00;
  if (!qword_10003CE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CE00);
  }

  return result;
}

unint64_t sub_10001C360()
{
  result = qword_10003CE08;
  if (!qword_10003CE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CE08);
  }

  return result;
}

unint64_t sub_10001C3B8()
{
  result = qword_10003CE10;
  if (!qword_10003CE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CE10);
  }

  return result;
}

unint64_t sub_10001C460()
{
  result = qword_10003CE28;
  if (!qword_10003CE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CE28);
  }

  return result;
}

unint64_t sub_10001C4B8()
{
  result = qword_10003CE30;
  if (!qword_10003CE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CE30);
  }

  return result;
}

unint64_t sub_10001C510()
{
  result = qword_10003CE38;
  if (!qword_10003CE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CE38);
  }

  return result;
}

unint64_t sub_10001C568()
{
  result = qword_10003CE40;
  if (!qword_10003CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CE40);
  }

  return result;
}

unint64_t sub_10001C5BC()
{
  result = qword_10003CE48;
  if (!qword_10003CE48)
  {
    sub_100029044();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CE48);
  }

  return result;
}

unint64_t sub_10001C65C()
{
  result = qword_10003CE60;
  if (!qword_10003CE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CE60);
  }

  return result;
}

unint64_t sub_10001C6B4()
{
  result = qword_10003CE68;
  if (!qword_10003CE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CE68);
  }

  return result;
}

unint64_t sub_10001C70C()
{
  result = qword_10003CE70;
  if (!qword_10003CE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CE70);
  }

  return result;
}

unint64_t sub_10001C764()
{
  result = qword_10003CE78;
  if (!qword_10003CE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CE78);
  }

  return result;
}

unint64_t sub_10001C7BC()
{
  result = qword_10003CE80;
  if (!qword_10003CE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CE80);
  }

  return result;
}

unint64_t sub_10001C858()
{
  result = qword_10003CE98;
  if (!qword_10003CE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CE98);
  }

  return result;
}

unint64_t sub_10001C8B0()
{
  result = qword_10003CEA0;
  if (!qword_10003CEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CEA0);
  }

  return result;
}

unint64_t sub_10001C908()
{
  result = qword_10003CEA8;
  if (!qword_10003CEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CEA8);
  }

  return result;
}

unint64_t sub_10001C960()
{
  result = qword_10003CEB0;
  if (!qword_10003CEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CEB0);
  }

  return result;
}

unint64_t sub_10001CA00()
{
  result = qword_10003CEC8;
  if (!qword_10003CEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CEC8);
  }

  return result;
}

unint64_t sub_10001CA58()
{
  result = qword_10003CED0;
  if (!qword_10003CED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CED0);
  }

  return result;
}

unint64_t sub_10001CAB0()
{
  result = qword_10003CED8;
  if (!qword_10003CED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CED8);
  }

  return result;
}

unint64_t sub_10001CBAC()
{
  result = qword_10003CEE0;
  if (!qword_10003CEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CEE0);
  }

  return result;
}

uint64_t sub_10001CD0C(uint64_t a1)
{
  v2 = sub_100028FF4();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_100001B18(&qword_10003CF68, &qword_10002DF98);
  sub_100028FD4();
  sub_10001C6B4();
  v4 = sub_100028B64();
  *&v28 = _swiftEmptyArrayStorage;
  swift_retain_n();
  v22 = v4;
  sub_100028B54();
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = a1 + 32;
    v21 = -v5;
    v7 = 1;
    do
    {
      v8 = *(v6 + 48);
      v25 = *(v6 + 32);
      v26 = v8;
      v27 = *(v6 + 64);
      v9 = *(v6 + 16);
      v24[0] = *v6;
      v24[1] = v9;
      v30 = v25;
      v31 = v8;
      v32 = v27;
      v28 = v24[0];
      v29 = v9;
      sub_100001B18(&qword_10003CF70, &qword_10002DFA0);
      sub_10001D730(v24, v23);
      sub_10001D730(&v28, v23);
      sub_100028FD4();
      v10 = sub_100028B84();
      sub_100001B18(&qword_10003CF78, &qword_10002DFA8);

      sub_100028FD4();
      v11 = sub_100028B94();
      v23[0] = *(&v29 + 1);
      v23[1] = v30;

      sub_100028B54();
      v23[0] = v7;
      sub_100028B54();
      sub_10001D78C(&v28);

      v12 = sub_100028B34();
      v14 = v13;
      v15 = *v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v14 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v15 = sub_10001ADA0(0, *(v15 + 2) + 1, 1, v15);
        *v14 = v15;
      }

      v18 = *(v15 + 2);
      v17 = *(v15 + 3);
      if (v18 >= v17 >> 1)
      {
        v15 = sub_10001ADA0((v17 > 1), v18 + 1, 1, v15);
        *v14 = v15;
      }

      *(v15 + 2) = v18 + 1;
      v19 = &v15[16 * v18];
      *(v19 + 4) = v10;
      *(v19 + 5) = v11;
      v12(v23, 0);
      sub_10001D78C(&v28);
      ++v7;
      v6 += 72;
    }

    while (v21 + v7 != 1);
  }

  return v22;
}

uint64_t sub_10001D024()
{
  v0 = sub_100028FF4();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_100001B18(&qword_10003CF70, &qword_10002DFA0);
  sub_100028FD4();
  v2 = sub_100028B84();
  sub_100001B18(&qword_10003CF78, &qword_10002DFA8);

  sub_100028FD4();
  sub_100028B94();

  sub_100028B54();
  sub_100028B54();

  return v2;
}

uint64_t sub_10001D164()
{
  v21 = sub_100028E94();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100001B18(&qword_10003C438, &unk_10002AC40);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_100001B18(&qword_10003C440, "vm");
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_100028FF4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100001B18(&qword_10003CF08, &qword_10002DF20);
  sub_100028FD4();
  sub_100028FD4();
  (*(v16 + 56))(v14, 0, 1, v15);
  v22 = 3;
  v18 = sub_100028AD4();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_10001C10C();
  return sub_100028BE4();
}

uint64_t sub_10001D488(uint64_t a1)
{
  v2 = sub_100001B18(&qword_10003CF20, &qword_10002DF40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10001D4FC()
{
  result = qword_10003CF30;
  if (!qword_10003CF30)
  {
    sub_100001BC8(&qword_10003CF28, &qword_10002DF48);
    sub_10001C908();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CF30);
  }

  return result;
}

unint64_t sub_10001D580()
{
  result = qword_10003CF38;
  if (!qword_10003CF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CF38);
  }

  return result;
}

uint64_t sub_10001D5DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10001D6E8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10001D700@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_100028BD4();
  *a2 = result;
  return result;
}

unint64_t sub_10001D7E0()
{
  result = qword_10003CF98;
  if (!qword_10003CF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CF98);
  }

  return result;
}

unint64_t sub_10001D834()
{
  result = qword_10003CFA8;
  if (!qword_10003CFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CFA8);
  }

  return result;
}

uint64_t sub_10001D888(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B18(&qword_10003CFB8, &qword_10002DFE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001D91C()
{
  result = qword_10003CFF8;
  if (!qword_10003CFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CFF8);
  }

  return result;
}

unint64_t sub_10001D974()
{
  result = qword_10003D000;
  if (!qword_10003D000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D000);
  }

  return result;
}

uint64_t type metadata accessor for BatteryHealthDynamicDeepLinks()
{
  result = qword_10003D128;
  if (!qword_10003D128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001DA14(unint64_t a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000015;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      a1 = 0xD000000000000015;
    }

    else
    {
      a1 = 0xD000000000000020;
    }

    if (v3 == 2)
    {
      v4 = 0x800000010002ECC0;
    }

    else
    {
      v4 = 0x800000010002ECE0;
    }
  }

  else
  {
    if (a1)
    {
      a1 = 0xD000000000000015;
    }

    else
    {
      a1 = a1;
    }

    if (v3)
    {
      v4 = 0x800000010002ECA0;
    }

    else
    {
      v4 = 0xE000000000000000;
    }
  }

  v5 = 0x800000010002ECC0;
  v6 = 0xD000000000000020;
  if (a2 == 2)
  {
    v6 = 0xD000000000000015;
  }

  else
  {
    v5 = 0x800000010002ECE0;
  }

  v7 = 0x800000010002ECA0;
  if (!a2)
  {
    v2 = a2;
    v7 = 0xE000000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v6;
  }

  if (a2 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if (a1 == v8 && v4 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_100029524();
  }

  return v10 & 1;
}

uint64_t sub_10001DB30(unint64_t a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v8 = 0x800000010002ED10;
    v9 = 0xD00000000000001FLL;
    if (a1 == 1)
    {
      v9 = 0xD00000000000001BLL;
    }

    else
    {
      v8 = 0x800000010002ED30;
    }

    if (a1)
    {
      a1 = v9;
    }

    else
    {
      a1 = a1;
    }

    if (v2)
    {
      v7 = v8;
    }

    else
    {
      v7 = 0xE000000000000000;
    }
  }

  else
  {
    v3 = 0x800000010002ED90;
    v4 = 0xD000000000000025;
    if (a1 == 5)
    {
      v4 = 0xD00000000000001BLL;
    }

    else
    {
      v3 = 0x800000010002EDB0;
    }

    v5 = 0x800000010002ED50;
    v6 = 0xD000000000000016;
    if (a1 != 3)
    {
      v6 = 0xD000000000000014;
      v5 = 0x800000010002ED70;
    }

    if (a1 <= 4u)
    {
      a1 = v6;
    }

    else
    {
      a1 = v4;
    }

    if (v2 <= 4)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v10 = 0xE000000000000000;
      if (a1 != a2)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    }

    if (a2 != 1)
    {
      v10 = 0x800000010002ED30;
      if (a1 != 0xD00000000000001FLL)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    }

    v11 = "MAXIMUM_CAPACITY_IDENTIFIER";
    goto LABEL_32;
  }

  if (a2 <= 4u)
  {
    if (a2 == 3)
    {
      v10 = 0x800000010002ED50;
      if (a1 != 0xD000000000000016)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v10 = 0x800000010002ED70;
      if (a1 != 0xD000000000000014)
      {
        goto LABEL_43;
      }
    }

    goto LABEL_41;
  }

  if (a2 == 5)
  {
    v11 = "MANUFACTURE_DATE_IDENTIFIER";
LABEL_32:
    v10 = (v11 - 32) | 0x8000000000000000;
    if (a1 != 0xD00000000000001BLL)
    {
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  v10 = 0x800000010002EDB0;
  if (a1 != 0xD000000000000025)
  {
LABEL_43:
    v12 = sub_100029524();
    goto LABEL_44;
  }

LABEL_41:
  if (v7 != v10)
  {
    goto LABEL_43;
  }

  v12 = 1;
LABEL_44:

  return v12 & 1;
}

Swift::Int sub_10001DD40()
{
  sub_100029544();
  sub_1000293B4();

  return sub_100029564();
}

uint64_t sub_10001DE60()
{
  v0 = sub_100029064();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_100001B18(&qword_10003D188, &qword_10002E7E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v12 - v8;
  v12[1] = 0x4054000000000000;
  sub_100029054();
  sub_100022670();
  sub_100029014();
  sub_100029004();
  v10 = *(v3 + 8);
  v10(v7, v2);
  sub_10000366C(&qword_10003D198, &qword_10003D188, &qword_10002E7E0);
  sub_1000292F4();
  return (v10)(v9, v2);
}

void sub_10001E054()
{
  v0 = [objc_allocWithZone(PowerUISmartChargeClient) initWithClientName:PowerUISmartChargeClientSettings];
  v1 = [v0 isMCLSupported];

  if (v1)
  {
    v3[3] = &type metadata for PerfPowerServices;
    v3[4] = sub_10000BC1C();
    LOBYTE(v3[0]) = 1;
    v2 = sub_100029074();
    sub_10000BC70(v3);
  }

  else
  {
    v2 = 0;
  }

  byte_100045618 = v2 & 1;
}

uint64_t sub_10001E100()
{
  result = sub_10001E124();
  byte_100045619 = result & 1;
  return result;
}

uint64_t sub_10001E124()
{
  v0 = [objc_allocWithZone(PowerUISmartChargeClient) initWithClientName:PowerUISmartChargeClientSettings];
  v1 = [v0 isMCLSupported];

  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  deviceClassNumber = MobileGestalt_get_deviceClassNumber();

  result = MobileGestalt_get_current_device();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = deviceClassNumber == 3;
  v7 = MobileGestalt_get_deviceClassNumber();

  if (v7 == 1)
  {
    return 1;
  }

  else
  {
    return v6 & v1;
  }
}

void sub_10001E1E4()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    byte_10004561A = deviceClassNumber == 3;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10001E234@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100029364();
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  __chkstk_darwin(v5);
  v6 = sub_100001B18(&qword_10003C468, &unk_10002A390);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v53 - v8;
  v10 = sub_100001B18(&qword_10003C440, "vm");
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v53 - v12;
  v14 = sub_100028FF4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  __chkstk_darwin(v17);
  v18 = *v1;
  if (v18 <= 2)
  {
    if (!*v1)
    {
      sub_100028FD4();
      sub_100028FD4();
      v36 = *(v15 + 56);
      v35 = v15 + 56;
      v36(v13, 0, 1, v14);
      sub_100028DF4();
      v37 = sub_100028E04();
      (*(*(v37 - 8) + 56))(v9, 0, 1, v37);
      sub_100001B18(&qword_10003C470, &qword_10002BE60);
      v38 = *(v35 + 16);
      v39 = (*(v35 + 24) + 32) & ~*(v35 + 24);
      *(swift_allocObject() + 16) = xmmword_100029B80;
      sub_100028FD4();
      goto LABEL_14;
    }

    if (v18 == 1)
    {
      sub_100028FD4();
      v24 = type metadata accessor for BatteryHealthDynamicDeepLinks();
      (*(v15 + 16))(v13, &v1[*(v24 + 20)], v14);
      v26 = *(v15 + 56);
      v25 = v15 + 56;
      v26(v13, 0, 1, v14);
      sub_100028DF4();
      v27 = sub_100028E04();
      (*(*(v27 - 8) + 56))(v9, 0, 1, v27);
      sub_100001B18(&qword_10003C470, &qword_10002BE60);
      v28 = *(v25 + 16);
      v29 = (*(v25 + 24) + 32) & ~*(v25 + 24);
      *(swift_allocObject() + 16) = xmmword_100029B80;
      sub_100028FD4();
LABEL_14:
      sub_100028FD4();
      return sub_100028E14();
    }

    sub_100028FD4();
    sub_100028FD4();
    v41 = *(v15 + 56);
    v40 = v15 + 56;
    v41(v13, 0, 1, v14);
    sub_100028DF4();
    v42 = sub_100028E04();
    (*(*(v42 - 8) + 56))(v9, 0, 1, v42);
    sub_100001B18(&qword_10003C470, &qword_10002BE60);
    v43 = *(v40 + 16);
    v44 = (*(v40 + 24) + 32) & ~*(v40 + 24);
    *(swift_allocObject() + 16) = xmmword_100029B80;
    sub_100028FD4();
    sub_100028FD4();
  }

  else
  {
    if (*v1 <= 4u)
    {
      if (v18 == 3)
      {
        sub_100028FD4();
        sub_100028FD4();
        v20 = *(v15 + 56);
        v19 = v15 + 56;
        v20(v13, 0, 1, v14);
      }

      else
      {
        sub_100028FD4();
        sub_100028FD4();
        v45 = *(v15 + 56);
        v19 = v15 + 56;
        v45(v13, 0, 1, v14);
      }

      sub_100028DF4();
      v21 = sub_100028E04();
      (*(*(v21 - 8) + 56))(v9, 0, 1, v21);
      sub_100001B18(&qword_10003C470, &qword_10002BE60);
      v22 = *(v19 + 16);
      v23 = (*(v19 + 24) + 32) & ~*(v19 + 24);
      *(swift_allocObject() + 16) = xmmword_100029B80;
      sub_100028FD4();
      goto LABEL_14;
    }

    if (v18 == 5)
    {
      sub_100028FD4();
      sub_100028FD4();
      v31 = *(v15 + 56);
      v30 = v15 + 56;
      v31(v13, 0, 1, v14);
      sub_100028DF4();
      v32 = sub_100028E04();
      (*(*(v32 - 8) + 56))(v9, 0, 1, v32);
      sub_100001B18(&qword_10003C470, &qword_10002BE60);
      v33 = *(v30 + 16);
      v34 = (*(v30 + 24) + 32) & ~*(v30 + 24);
      *(swift_allocObject() + 16) = xmmword_100029B80;
      sub_100028FD4();
      goto LABEL_14;
    }

    v53[1] = a1;
    sub_100029354();
    v54._countAndFlagsBits = 0;
    v54._object = 0xE000000000000000;
    sub_100029344(v54);
    if (qword_10003C2E0 != -1)
    {
      swift_once();
    }

    v46 = xmmword_10003CFC8;
    sub_100029334(xmmword_10003CFC8);
    v55._countAndFlagsBits = 0x74696D694C20;
    v55._object = 0xE600000000000000;
    sub_100029344(v55);
    sub_100028FE4();
    sub_100028FD4();
    v48 = *(v15 + 56);
    v47 = v15 + 56;
    v48(v13, 0, 1, v14);
    sub_100028DF4();
    v49 = sub_100028E04();
    (*(*(v49 - 8) + 56))(v9, 0, 1, v49);
    sub_100001B18(&qword_10003C470, &qword_10002BE60);
    v50 = *(v47 + 16);
    v51 = (*(v47 + 24) + 32) & ~*(v47 + 24);
    *(swift_allocObject() + 16) = xmmword_100029B80;
    sub_100028FD4();
    sub_100029354();
    v56._countAndFlagsBits = 0;
    v56._object = 0xE000000000000000;
    sub_100029344(v56);
    sub_100029334(v46);
    v57._countAndFlagsBits = 0x2065677261686320;
    v57._object = 0xED000074696D696CLL;
    sub_100029344(v57);
    sub_100028FE4();
  }

  return sub_100028E14();
}

uint64_t sub_10001EDD8()
{
  v0 = sub_100001B18(&qword_10003C440, "vm");
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_100028FF4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100028F84();
  sub_100004ED8(v7, qword_100045620);
  sub_100004EA0(v7, qword_100045620);
  sub_100028FD4();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_100028F74();
}

id sub_10001EF68()
{
  for (i = 0; i != 7; ++i)
  {
    v3 = *(&off_100039928 + i + 32);
    if (v3 - 2 < 4)
    {
      if (qword_10003C2E8 == -1)
      {
        if ((byte_100045618 & 1) == 0)
        {
          continue;
        }
      }

      else
      {
        swift_once();
        if ((byte_100045618 & 1) == 0)
        {
          continue;
        }
      }

LABEL_14:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100020CAC(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v2 = _swiftEmptyArrayStorage[2];
      v1 = _swiftEmptyArrayStorage[3];
      if (v2 >= v1 >> 1)
      {
        sub_100020CAC((v1 > 1), v2 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v2 + 1;
      *(&_swiftEmptyArrayStorage[4] + v2) = v3;
      continue;
    }

    if (v3 >= 2)
    {
      if (qword_10003C2E8 == -1)
      {
        if ((byte_100045618 & 1) == 0)
        {
          continue;
        }
      }

      else
      {
        swift_once();
        if ((byte_100045618 & 1) == 0)
        {
          continue;
        }
      }

      result = MobileGestalt_get_current_device();
      if (!result)
      {
        __break(1u);
        return result;
      }

      v5 = result;
      deviceClassNumber = MobileGestalt_get_deviceClassNumber();

      if (deviceClassNumber == 3)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (qword_10003C2F0 != -1)
      {
        swift_once();
      }

      if (byte_100045619)
      {
        goto LABEL_14;
      }
    }
  }

  v7 = *(v14 + 16);
  if (_swiftEmptyArrayStorage[2])
  {
    v8 = _swiftEmptyArrayStorage[4];

    *v7 = v8;
    v9 = type metadata accessor for BatteryHealthDynamicDeepLinks();
    v10 = *(v9 + 20);
    if (qword_10003C2E8 != -1)
    {
      swift_once();
    }

    if ((byte_100045618 & 1) == 0 && qword_10003C2F8 != -1)
    {
      swift_once();
    }

    v12 = *(v14 + 16);
    sub_100028FD4();
    (*(*(v9 - 8) + 56))(v12, 0, 1, v9);
  }

  else
  {

    v11 = type metadata accessor for BatteryHealthDynamicDeepLinks();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  }

  v13 = *(v14 + 8);

  return v13();
}

uint64_t sub_10001F2DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100004F68;

  return sub_100021980(a1);
}

uint64_t sub_10001F384(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100004F40;

  return sub_100021504();
}

unint64_t sub_10001F428()
{
  result = qword_10003D010;
  if (!qword_10003D010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D010);
  }

  return result;
}

uint64_t sub_10001F47C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000025D4;

  return sub_100021DFC();
}

unint64_t sub_10001F524()
{
  result = qword_10003D018;
  if (!qword_10003D018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D018);
  }

  return result;
}

unint64_t sub_10001F57C()
{
  result = qword_10003D028;
  if (!qword_10003D028)
  {
    sub_100001BC8(&qword_10003D030, qword_10002E0A8);
    sub_10002256C(&qword_10003D020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D028);
  }

  return result;
}

uint64_t sub_10001F61C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10001F428();
  *v6 = v2;
  v6[1] = sub_1000028D0;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_10001F6D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008DD4;

  return sub_10001EF48(a1);
}

uint64_t sub_10001F7D0()
{
  v0 = sub_100001B18(&qword_10003D1A0, &qword_10002E7E8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_100001B18(&qword_10003D1A8, &qword_10002E7F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10002256C(&qword_10003D008);
  sub_100028F24();
  v9._object = 0x800000010002F6A0;
  v9._countAndFlagsBits = 0xD000000000000046;
  sub_100028F14(v9);
  (*(v1 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_100028F04();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_100028F14(v10);
  return sub_100028F34();
}

uint64_t sub_10001F9B0()
{
  v0 = qword_10003CFD8;

  return v0;
}

unint64_t sub_10001FA58()
{
  result = qword_10003D058;
  if (!qword_10003D058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D058);
  }

  return result;
}

uint64_t sub_10001FAAC()
{
  sub_10002256C(&qword_10003D180);
  v1 = sub_100028EA4();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_10001FC08()
{
  result = qword_10003D078;
  if (!qword_10003D078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D078);
  }

  return result;
}

uint64_t sub_10001FCD8(uint64_t a1)
{
  v2 = sub_10002256C(&qword_10003D008);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10001FD78(uint64_t a1)
{
  v2 = sub_10002256C(&qword_10003D070);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10001FDF0()
{
  result = qword_10003D098;
  if (!qword_10003D098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D098);
  }

  return result;
}

uint64_t sub_10001FE50()
{
  *v0;
  sub_1000293B4();
}

uint64_t sub_10001FF60@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000220B8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10001FF90(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (*v1 <= 2u)
  {
    v9 = 0xE000000000000000;
    v10 = 0xD00000000000001BLL;
    v11 = 0x800000010002ED10;
    if (v2 != 1)
    {
      v10 = 0xD00000000000001FLL;
      v11 = 0x800000010002ED30;
    }

    if (*v1)
    {
      v2 = v10;
      v9 = v11;
    }

    *a1 = v2;
    a1[1] = v9;
  }

  else
  {
    v3 = 0x800000010002ED90;
    v4 = 0xD000000000000025;
    if (v2 == 5)
    {
      v4 = 0xD00000000000001BLL;
    }

    else
    {
      v3 = 0x800000010002EDB0;
    }

    v5 = 0x800000010002ED50;
    v6 = 0xD000000000000014;
    if (v2 == 3)
    {
      v6 = 0xD000000000000016;
    }

    else
    {
      v5 = 0x800000010002ED70;
    }

    if (*v1 <= 4u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v8 = v5;
    }

    else
    {
      v8 = v3;
    }

    *a1 = v7;
    a1[1] = v8;
  }
}

unint64_t sub_1000200C0()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD00000000000001BLL;
    if (v1 != 1)
    {
      v5 = 0xD00000000000001FLL;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return *v0;
    }
  }

  else
  {
    v2 = 0xD000000000000025;
    if (v1 == 5)
    {
      v2 = 0xD00000000000001BLL;
    }

    v3 = 0xD000000000000014;
    if (v1 == 3)
    {
      v3 = 0xD000000000000016;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100020194@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_1000220B8(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_1000201E0()
{
  result = qword_10003D0B0;
  if (!qword_10003D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D0B0);
  }

  return result;
}

uint64_t sub_100020268()
{
  v0 = sub_100028FF4();
  sub_100004ED8(v0, qword_100045638);
  sub_100004EA0(v0, qword_100045638);
  return sub_100028FD4();
}

uint64_t sub_1000202F0(uint64_t a1)
{
  v3 = type metadata accessor for BatteryHealthDynamicDeepLinks();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = *v1;
  sub_1000225B0(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100028BC4();
  return sub_100022614(a1);
}

void (*sub_100020380(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_100028BA4();
  return sub_10000393C;
}

unint64_t sub_1000203F4()
{
  result = qword_10003D0B8;
  if (!qword_10003D0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D0B8);
  }

  return result;
}

uint64_t sub_100020448(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000224C4();
  v5 = sub_10002256C(&qword_10003D180);

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_1000204D0()
{
  v0 = qword_10003CFE8;

  return v0;
}

unint64_t sub_10002050C()
{
  result = qword_10003D0C0;
  if (!qword_10003D0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D0C0);
  }

  return result;
}

unint64_t sub_100020564()
{
  result = qword_10003D0C8;
  if (!qword_10003D0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D0C8);
  }

  return result;
}

uint64_t sub_100020640(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _URLRepresentableIntent<>.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000224C4();
  v8 = sub_100022518();
  v9 = sub_10002256C(&qword_10003D180);
  *v6 = v2;
  v6[1] = sub_100003DB4;

  return _URLRepresentableIntent<>.perform()(a1, a2, v7, v8, v9);
}

uint64_t sub_100020730@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100022104();
  *a1 = result;
  return result;
}

uint64_t sub_100020758(uint64_t a1)
{
  v2 = sub_1000203F4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for BatteryHealthDynamicDestination(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BatteryHealthDynamicDestination(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100020908(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 249)
  {
    v4 = *a1;
    if (v4 >= 7)
    {
      return v4 - 6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_100028FF4();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1000209C0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 249)
  {
    *result = a2 + 6;
  }

  else
  {
    v7 = sub_100028FF4();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100020A60()
{
  result = sub_100028FF4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

char *sub_100020AEC(char *a1, int64_t a2, char a3)
{
  result = sub_100020CDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100020B0C(char *a1, int64_t a2, char a3)
{
  result = sub_100020DD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100020B2C(char *a1, int64_t a2, char a3)
{
  result = sub_100020EC4(a1, a2, a3, *v3, &qword_10003D1F8, &qword_10002E860);
  *v3 = result;
  return result;
}

char *sub_100020B5C(char *a1, int64_t a2, char a3)
{
  result = sub_100020EC4(a1, a2, a3, *v3, &qword_10003D1F0, &qword_10002E858);
  *v3 = result;
  return result;
}

char *sub_100020B8C(char *a1, int64_t a2, char a3)
{
  result = sub_100020EC4(a1, a2, a3, *v3, &qword_10003D1E8, &qword_10002E850);
  *v3 = result;
  return result;
}

char *sub_100020BBC(char *a1, int64_t a2, char a3)
{
  result = sub_100020EC4(a1, a2, a3, *v3, &qword_10003D1E0, &qword_10002E848);
  *v3 = result;
  return result;
}

char *sub_100020BEC(char *a1, int64_t a2, char a3)
{
  result = sub_100020EC4(a1, a2, a3, *v3, &qword_10003D1D8, &qword_10002E840);
  *v3 = result;
  return result;
}

char *sub_100020C1C(char *a1, int64_t a2, char a3)
{
  result = sub_100020EC4(a1, a2, a3, *v3, &qword_10003D1D0, &qword_10002E838);
  *v3 = result;
  return result;
}

char *sub_100020C4C(char *a1, int64_t a2, char a3)
{
  result = sub_1000210D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100020C6C(void *a1, int64_t a2, char a3)
{
  result = sub_1000211E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100020C8C(size_t a1, int64_t a2, char a3)
{
  result = sub_10002132C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100020CAC(char *a1, int64_t a2, char a3)
{
  result = sub_100020EC4(a1, a2, a3, *v3, &qword_10003D1B0, &qword_10002E800);
  *v3 = result;
  return result;
}

char *sub_100020CDC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B18(&qword_10003D208, &unk_10002E870);
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

char *sub_100020DD0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B18(&qword_10003D200, &qword_10002E868);
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

char *sub_100020EC4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_100001B18(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = &_swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_100020FB0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B18(&qword_10003CF90, &unk_10002DFC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000210D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B18(&qword_10003CFA0, &qword_10002DFD0);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_1000211E4(void *result, int64_t a2, char a3, void *a4)
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
    sub_100001B18(&qword_10003D1C0, &qword_10002E828);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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
    sub_100001B18(&qword_10003D1C8, &qword_10002E830);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_10002132C(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100001B18(&qword_10003D1B8, &qword_10002E810);
  v10 = *(type metadata accessor for BatteryHealthDynamicDeepLinks() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(type metadata accessor for BatteryHealthDynamicDeepLinks() - 8);
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

uint64_t sub_100021504()
{
  v1 = type metadata accessor for BatteryHealthDynamicDeepLinks();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000215C0, 0, 0);
}

id sub_1000215C0()
{
  for (i = 0; i != 7; ++i)
  {
    v3 = *(&off_100039928 + i + 32);
    if (v3 - 2 < 4)
    {
      if (qword_10003C2E8 == -1)
      {
        if ((byte_100045618 & 1) == 0)
        {
          continue;
        }
      }

      else
      {
        swift_once();
        if ((byte_100045618 & 1) == 0)
        {
          continue;
        }
      }

LABEL_14:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100020CAC(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v2 = _swiftEmptyArrayStorage[2];
      v1 = _swiftEmptyArrayStorage[3];
      if (v2 >= v1 >> 1)
      {
        sub_100020CAC((v1 > 1), v2 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v2 + 1;
      *(&_swiftEmptyArrayStorage[4] + v2) = v3;
      continue;
    }

    if (v3 >= 2)
    {
      if (qword_10003C2E8 == -1)
      {
        if ((byte_100045618 & 1) == 0)
        {
          continue;
        }
      }

      else
      {
        swift_once();
        if ((byte_100045618 & 1) == 0)
        {
          continue;
        }
      }

      result = MobileGestalt_get_current_device();
      if (!result)
      {
        __break(1u);
        return result;
      }

      v5 = result;
      deviceClassNumber = MobileGestalt_get_deviceClassNumber();

      if (deviceClassNumber == 3)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (qword_10003C2F0 != -1)
      {
        swift_once();
      }

      if (byte_100045619)
      {
        goto LABEL_14;
      }
    }
  }

  v7 = _swiftEmptyArrayStorage[2];
  if (v7)
  {
    sub_100020C8C(0, v7, 0);
    if (qword_10003C2E8 != -1)
    {
      swift_once();
    }

    v8 = v19;
    v10 = v19[2];
    v9 = v19[3];
    v11 = byte_100045618;
    v12 = 32;
    do
    {
      *v8[4] = *(_swiftEmptyArrayStorage + v12);
      v13 = *(v10 + 20);
      if ((v11 & 1) == 0 && qword_10003C2F8 != -1)
      {
        swift_once();
      }

      sub_100028FD4();
      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        sub_100020C8C(v14 > 1, v15 + 1, 1);
      }

      v8 = v19;
      v16 = v19[4];
      _swiftEmptyArrayStorage[2] = v15 + 1;
      sub_1000226C4(v16, _swiftEmptyArrayStorage + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15);
      ++v12;
      --v7;
    }

    while (v7);
  }

  else
  {

    v8 = v19;
  }

  v17 = v8[4];

  v18 = v8[1];

  return v18(_swiftEmptyArrayStorage);
}

uint64_t sub_100021980(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for BatteryHealthDynamicDeepLinks();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100021A40, 0, 0);
}

id sub_100021A40()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v7 = *v3++;
      v6 = v7;
      if (v7 - 2 >= 4)
      {
        if (v6 < 2)
        {
          if (qword_10003C2F0 != -1)
          {
            swift_once();
          }

          if ((byte_100045619 & 1) == 0)
          {
            goto LABEL_6;
          }

LABEL_15:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100020CAC(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v5 = _swiftEmptyArrayStorage[2];
          v4 = _swiftEmptyArrayStorage[3];
          if (v5 >= v4 >> 1)
          {
            sub_100020CAC((v4 > 1), v5 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v5 + 1;
          *(&_swiftEmptyArrayStorage[4] + v5) = v6;
          goto LABEL_6;
        }

        if (qword_10003C2E8 == -1)
        {
          if ((byte_100045618 & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        else
        {
          swift_once();
          if ((byte_100045618 & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        result = MobileGestalt_get_current_device();
        if (!result)
        {
          __break(1u);
          return result;
        }

        v9 = result;
        deviceClassNumber = MobileGestalt_get_deviceClassNumber();

        if (deviceClassNumber == 3)
        {
          goto LABEL_15;
        }
      }

      else if (qword_10003C2E8 == -1)
      {
        if (byte_100045618)
        {
          goto LABEL_15;
        }
      }

      else
      {
        swift_once();
        if (byte_100045618)
        {
          goto LABEL_15;
        }
      }

LABEL_6:
      --v2;
    }

    while (v2);
  }

  v11 = _swiftEmptyArrayStorage[2];
  if (v11)
  {
    sub_100020C8C(0, v11, 0);
    if (qword_10003C2E8 != -1)
    {
      swift_once();
    }

    v12 = v23;
    v14 = v23[3];
    v13 = v23[4];
    v15 = byte_100045618;
    v16 = 32;
    do
    {
      *v12[5] = *(_swiftEmptyArrayStorage + v16);
      v17 = *(v14 + 20);
      if ((v15 & 1) == 0 && qword_10003C2F8 != -1)
      {
        swift_once();
      }

      sub_100028FD4();
      v19 = _swiftEmptyArrayStorage[2];
      v18 = _swiftEmptyArrayStorage[3];
      if (v19 >= v18 >> 1)
      {
        sub_100020C8C(v18 > 1, v19 + 1, 1);
      }

      v12 = v23;
      v20 = v23[5];
      _swiftEmptyArrayStorage[2] = v19 + 1;
      sub_1000226C4(v20, _swiftEmptyArrayStorage + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v19);
      ++v16;
      --v11;
    }

    while (v11);
  }

  else
  {

    v12 = v23;
  }

  v21 = v12[5];

  v22 = v12[1];

  return v22(_swiftEmptyArrayStorage);
}

uint64_t sub_100021DFC()
{
  v1 = type metadata accessor for BatteryHealthDynamicDeepLinks();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_100021EB8, 0, 0);
}

uint64_t sub_100021EB8()
{
  sub_100020C8C(0, 7, 0);
  if (qword_10003C2E8 != -1)
  {
    swift_once();
  }

  v1 = 0;
  v3 = v0[2];
  v2 = v0[3];
  v4 = byte_100045618;
  do
  {
    *v0[4] = *(&off_100039928 + v1 + 32);
    v5 = *(v3 + 20);
    if ((v4 & 1) == 0 && qword_10003C2F8 != -1)
    {
      swift_once();
    }

    sub_100028FD4();
    v7 = _swiftEmptyArrayStorage[2];
    v6 = _swiftEmptyArrayStorage[3];
    if (v7 >= v6 >> 1)
    {
      sub_100020C8C(v6 > 1, v7 + 1, 1);
    }

    v8 = v0[4];
    ++v1;
    _swiftEmptyArrayStorage[2] = v7 + 1;
    sub_1000226C4(v8, _swiftEmptyArrayStorage + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v7);
  }

  while (v1 != 7);
  v9 = v0[4];

  v10 = v0[1];

  return v10(_swiftEmptyArrayStorage);
}

uint64_t sub_1000220B8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100039950;
  v6._object = a2;
  v4 = sub_1000294F4(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100022104()
{
  v27 = sub_100028E94();
  v0 = *(v27 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v27);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100001B18(&qword_10003C438, &unk_10002AC40);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v11 = sub_100001B18(&qword_10003D160, &unk_10002E7C8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v26 - v13;
  v15 = sub_100001B18(&qword_10003C440, "vm");
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v26 - v17;
  v19 = sub_100028FF4();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v26 = sub_100001B18(&qword_10003D168, &qword_10002E7D8);
  sub_100028FD4();
  sub_100028FD4();
  (*(v20 + 56))(v18, 0, 1, v19);
  v22 = type metadata accessor for BatteryHealthDynamicDeepLinks();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v23 = sub_100028AD4();
  v24 = *(*(v23 - 8) + 56);
  v24(v10, 1, 1, v23);
  v24(v8, 1, 1, v23);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v27);
  sub_10002256C(&qword_10003D008);
  return sub_100028BF4();
}

unint64_t sub_1000224C4()
{
  result = qword_10003D170;
  if (!qword_10003D170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D170);
  }

  return result;
}

unint64_t sub_100022518()
{
  result = qword_10003D178;
  if (!qword_10003D178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D178);
  }

  return result;
}

uint64_t sub_10002256C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BatteryHealthDynamicDeepLinks();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000225B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BatteryHealthDynamicDeepLinks();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100022614(uint64_t a1)
{
  v2 = type metadata accessor for BatteryHealthDynamicDeepLinks();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100022670()
{
  result = qword_10003D190;
  if (!qword_10003D190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D190);
  }

  return result;
}

uint64_t sub_1000226C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BatteryHealthDynamicDeepLinks();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100022740(uint64_t a1)
{
  v24 = a1;
  v1 = sub_100001B18(&qword_10003D2C8, &qword_10002EAC0);
  v2 = *(v1 - 8);
  v22 = v1;
  v23 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v17 - v4;
  v6 = sub_100001B18(&qword_10003D2D0, &qword_10002EAC8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  sub_10000F3EC();
  sub_100028CE4();
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  sub_100028CD4(v25);
  swift_getKeyPath();
  v17 = sub_1000257AC();
  sub_100028C14();

  sub_100028CC4();

  v26._object = 0x80000001000305B0;
  v26._countAndFlagsBits = 0xD000000000000014;
  sub_100028CD4(v26);
  sub_100028CF4();
  v21 = sub_100028C34();
  v8 = v22;
  v9 = v23 + 8;
  v18 = *(v23 + 8);
  v18(v5, v22);
  v23 = v9;
  sub_100028CE4();
  v27._countAndFlagsBits = 0xD00000000000001FLL;
  v27._object = 0x80000001000305D0;
  sub_100028CD4(v27);
  swift_getKeyPath();
  sub_100028C14();

  sub_100028CC4();

  v28._countAndFlagsBits = 46;
  v28._object = 0xE100000000000000;
  sub_100028CD4(v28);
  sub_100028CF4();
  v20 = sub_100028C34();
  v10 = v18;
  v18(v5, v8);
  sub_100028CE4();
  v29._countAndFlagsBits = 0x206E727554;
  v29._object = 0xE500000000000000;
  sub_100028CD4(v29);
  swift_getKeyPath();
  sub_100028C14();

  sub_100028CC4();

  v30._countAndFlagsBits = 0xD000000000000025;
  v30._object = 0x80000001000305F0;
  sub_100028CD4(v30);
  sub_100028CF4();
  v19 = sub_100028C34();
  v11 = v22;
  v10(v5, v22);
  sub_100028CE4();
  v31._countAndFlagsBits = 0x206E727554;
  v31._object = 0xE500000000000000;
  sub_100028CD4(v31);
  swift_getKeyPath();
  sub_100028C14();

  sub_100028CC4();

  v32._countAndFlagsBits = 0xD000000000000027;
  v32._object = 0x8000000100030620;
  sub_100028CD4(v32);
  sub_100028CF4();
  v12 = sub_100028C34();
  v10(v5, v11);
  sub_100001B18(&qword_10003D2D8, &qword_10002EAF8);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10002E880;
  v14 = v20;
  *(v13 + 32) = v21;
  *(v13 + 40) = v14;
  *(v13 + 48) = v19;
  *(v13 + 56) = v12;
  v15 = sub_100028C24();

  return v15;
}

uint64_t sub_100022C50(uint64_t a1)
{
  v28 = a1;
  v27 = sub_100001B18(&qword_10003D2A8, &qword_10002EA78);
  v1 = *(v27 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v27);
  v4 = v20 - v3;
  v5 = sub_100001B18(&qword_10003D2B0, &qword_10002EA80);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10001CBAC();
  sub_100028CE4();
  v29._object = 0x80000001000304F0;
  v29._countAndFlagsBits = 0xD00000000000001CLL;
  sub_100028CD4(v29);
  swift_getKeyPath();
  v20[1] = sub_100025968();
  sub_100028C14();

  sub_100028CC4();

  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  sub_100028CD4(v30);
  sub_100028CF4();
  v7 = sub_100028C34();
  v9 = v1 + 8;
  v8 = *(v1 + 8);
  v24 = v7;
  v25 = v8;
  v10 = v27;
  v8(v4, v27);
  v26 = v9;
  sub_100028CE4();
  v31._countAndFlagsBits = 0xD00000000000001FLL;
  v31._object = 0x8000000100030510;
  sub_100028CD4(v31);
  swift_getKeyPath();
  sub_100028C14();

  sub_100028CC4();

  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  sub_100028CD4(v32);
  sub_100028CF4();
  v23 = sub_100028C34();
  v11 = v25;
  v25(v4, v10);
  sub_100028CE4();
  v33._countAndFlagsBits = 0xD000000000000023;
  v33._object = 0x8000000100030530;
  sub_100028CD4(v33);
  swift_getKeyPath();
  sub_100028C14();

  sub_100028CC4();

  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  sub_100028CD4(v34);
  sub_100028CF4();
  v22 = sub_100028C34();
  v11(v4, v27);
  sub_100028CE4();
  v35._countAndFlagsBits = 0xD000000000000022;
  v35._object = 0x8000000100030560;
  sub_100028CD4(v35);
  swift_getKeyPath();
  sub_100028C14();

  sub_100028CC4();

  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  sub_100028CD4(v36);
  sub_100028CF4();
  v21 = sub_100028C34();
  v12 = v27;
  v13 = v25;
  v25(v4, v27);
  sub_100028CE4();
  v37._countAndFlagsBits = 0xD00000000000001ELL;
  v37._object = 0x8000000100030590;
  sub_100028CD4(v37);
  swift_getKeyPath();
  sub_100028C14();

  sub_100028CC4();

  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  sub_100028CD4(v38);
  sub_100028CF4();
  v14 = sub_100028C34();
  v13(v4, v12);
  sub_100001B18(&qword_10003D2C0, &qword_10002EAB8);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10002E890;
  v16 = v23;
  *(v15 + 32) = v24;
  *(v15 + 40) = v16;
  v17 = v21;
  *(v15 + 48) = v22;
  *(v15 + 56) = v17;
  *(v15 + 64) = v14;
  v18 = sub_100028C24();

  return v18;
}

uint64_t sub_10002322C(uint64_t a1)
{
  v14[1] = a1;
  v15 = sub_100001B18(&qword_10003D290, &qword_10002EA60);
  v1 = *(v15 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v15);
  v4 = v14 - v3;
  v5 = sub_100001B18(&qword_10003D298, &qword_10002EA68);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1000203F4();
  sub_100028CE4();
  v17._object = 0x80000001000304B0;
  v17._countAndFlagsBits = 0xD000000000000013;
  sub_100028CD4(v17);
  swift_getKeyPath();
  sub_10002589C();
  sub_100028C14();

  sub_100028CC4();

  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  sub_100028CD4(v18);
  sub_100028CF4();
  v16 = sub_100028C34();
  v7 = *(v1 + 8);
  v8 = v15;
  v7(v4, v15);
  sub_100028CE4();
  v19._countAndFlagsBits = 0xD00000000000001BLL;
  v19._object = 0x80000001000304D0;
  sub_100028CD4(v19);
  swift_getKeyPath();
  sub_100028C14();

  sub_100028CC4();

  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  sub_100028CD4(v20);
  sub_100028CF4();
  v9 = sub_100028C34();
  v7(v4, v8);
  sub_100028CB4();
  v10 = sub_100028C34();
  v7(v4, v8);
  sub_100001B18(&qword_10003D2A0, &qword_10002EA70);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10002D5E0;
  *(v11 + 32) = v16;
  *(v11 + 40) = v9;
  *(v11 + 48) = v10;
  v12 = sub_100028C24();

  return v12;
}

uint64_t sub_1000235BC(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for BatteryHealthDynamicDeepLinks();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  sub_1000225B0(a1, &v13 - v9);
  v11 = *a2;
  sub_1000225B0(v10, v8);
  sub_100028BC4();
  return sub_100022614(v10);
}

uint64_t sub_1000236C4()
{
  v0 = sub_100028C54();
  v1 = sub_100028C54();
  v2 = sub_100028C54();
  v3 = sub_100028C54();
  sub_100001B18(&qword_10003D220, &qword_10002E958);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10002E880;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_100028C44();

  return v5;
}

uint64_t sub_1000237C8(uint64_t a1)
{
  v13[1] = a1;
  v15 = sub_100001B18(&qword_10003D290, &qword_10002EA60);
  v1 = *(v15 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v15);
  v4 = v13 - v3;
  v5 = sub_100001B18(&qword_10003D298, &qword_10002EA68);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_1000203F4();
  sub_100028CE4();
  v16._countAndFlagsBits = 0x2073692074616857;
  v16._object = 0xEB0000000020796DLL;
  sub_100028CD4(v16);
  swift_getKeyPath();
  sub_10002589C();
  sub_100028C14();

  sub_100028CC4();

  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_100028CD4(v17);
  sub_100028CF4();
  v14 = sub_100028C34();
  v7 = *(v1 + 8);
  v8 = v15;
  v7(v4, v15);
  sub_100028CE4();
  v18._object = 0x8000000100030490;
  v18._countAndFlagsBits = 0xD000000000000013;
  sub_100028CD4(v18);
  swift_getKeyPath();
  sub_100028C14();

  sub_100028CC4();

  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  sub_100028CD4(v19);
  sub_100028CF4();
  v9 = sub_100028C34();
  v7(v4, v8);
  sub_100001B18(&qword_10003D2A0, &qword_10002EA70);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10002BEA0;
  *(v10 + 32) = v14;
  *(v10 + 40) = v9;
  v11 = sub_100028C24();

  return v11;
}

uint64_t sub_100023B6C(uint64_t a1)
{
  v28 = sub_100001B18(&qword_10003D278, &qword_10002EA20);
  v2 = *(v28 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v28);
  v5 = v21 - v4;
  v6 = sub_100001B18(&qword_10003D280, &qword_10002EA28);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  sub_10000D9C0();
  sub_100028CE4();
  v30._countAndFlagsBits = 0x206E6F206E727554;
  v30._object = 0xE800000000000000;
  sub_100028CD4(v30);
  swift_getKeyPath();
  v29 = sub_10000CB24();
  v21[1] = a1;
  sub_100028C14();

  sub_100028CC4();

  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  sub_100028CD4(v31);
  sub_100028CF4();
  v8 = sub_100028C34();
  v9 = *(v2 + 8);
  v25 = v8;
  v26 = v2 + 8;
  v10 = v28;
  v9(v5, v28);
  v27 = v9;
  sub_100028CE4();
  v32._countAndFlagsBits = 0x66666F206E727554;
  v32._object = 0xE900000000000020;
  sub_100028CD4(v32);
  swift_getKeyPath();
  sub_100028C14();

  sub_100028CC4();

  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  sub_100028CD4(v33);
  sub_100028CF4();
  v24 = sub_100028C34();
  v9(v5, v10);
  sub_100028CE4();
  v34._countAndFlagsBits = 0x20656C62616E45;
  v34._object = 0xE700000000000000;
  sub_100028CD4(v34);
  swift_getKeyPath();
  sub_100028C14();

  sub_100028CC4();

  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  sub_100028CD4(v35);
  sub_100028CF4();
  v23 = sub_100028C34();
  v11 = v28;
  v27(v5, v28);
  sub_100028CE4();
  v36._countAndFlagsBits = 0x20656C6261736944;
  v36._object = 0xE800000000000000;
  sub_100028CD4(v36);
  swift_getKeyPath();
  sub_100028C14();

  sub_100028CC4();

  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  sub_100028CD4(v37);
  sub_100028CF4();
  v22 = sub_100028C34();
  v12 = v27;
  v27(v5, v11);
  sub_100028CE4();
  v38._countAndFlagsBits = 0x7369206572656857;
  v38._object = 0xED00002065687420;
  sub_100028CD4(v38);
  swift_getKeyPath();
  sub_100028C14();

  sub_100028CC4();

  v39._countAndFlagsBits = 0x676E697474657320;
  v39._object = 0xE800000000000000;
  sub_100028CD4(v39);
  sub_100028CF4();
  v13 = sub_100028C34();
  v14 = v28;
  v12(v5, v28);
  sub_100028CB4();
  v15 = sub_100028C34();
  v12(v5, v14);
  sub_100001B18(&qword_10003D288, &qword_10002EA30);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10002E8A0;
  v17 = v24;
  *(v16 + 32) = v25;
  *(v16 + 40) = v17;
  v18 = v22;
  *(v16 + 48) = v23;
  *(v16 + 56) = v18;
  *(v16 + 64) = v13;
  *(v16 + 72) = v15;
  v19 = sub_100028C24();

  return v19;
}

uint64_t sub_1000241D4()
{
  v0 = sub_100028C54();
  v1 = sub_100028C54();
  v2 = sub_100028C54();
  sub_100001B18(&qword_10003D220, &qword_10002E958);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10002D5E0;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = sub_100028C44();

  return v4;
}

uint64_t sub_1000242AC()
{
  v0 = sub_100001B18(&qword_10003D260, &qword_10002E9E0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v13 - v3;
  v5 = sub_100001B18(&qword_10003D268, &qword_10002E9E8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100003988();
  sub_100028CE4();
  v14._countAndFlagsBits = 0x206E6F206E727554;
  v14._object = 0xE800000000000000;
  sub_100028CD4(v14);
  swift_getKeyPath();
  sub_100002740();
  sub_100028C14();

  sub_100028CC4();

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_100028CD4(v15);
  sub_100028CF4();
  v7 = sub_100028C34();
  v8 = *(v1 + 8);
  v8(v4, v0);
  sub_100028CB4();
  v9 = sub_100028C34();
  v8(v4, v0);
  sub_100001B18(&qword_10003D270, &qword_10002E9F0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10002BEA0;
  *(v10 + 32) = v7;
  *(v10 + 40) = v9;
  v11 = sub_100028C24();

  return v11;
}

uint64_t sub_1000245B0()
{
  v0 = sub_100028C54();
  sub_100001B18(&qword_10003D220, &qword_10002E958);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100029B80;
  *(v1 + 32) = v0;
  v2 = sub_100028C44();

  return v2;
}

uint64_t sub_10002461C(uint64_t a1)
{
  v13[1] = a1;
  v15 = sub_100001B18(&qword_10003D240, &qword_10002E978);
  v1 = *(v15 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v15);
  v4 = v13 - v3;
  v5 = sub_100001B18(&qword_10003D248, &qword_10002E980);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100005470();
  sub_100028CE4();
  v16._countAndFlagsBits = 0x206E727554;
  v16._object = 0xE500000000000000;
  sub_100028CD4(v16);
  swift_getKeyPath();
  sub_1000257AC();
  sub_100028C14();

  sub_100028CC4();

  v17._object = 0x8000000100030450;
  v17._countAndFlagsBits = 0xD000000000000010;
  sub_100028CD4(v17);
  sub_100028CF4();
  v14 = sub_100028C34();
  v7 = *(v1 + 8);
  v8 = v15;
  v7(v4, v15);
  sub_100028CE4();
  v18._countAndFlagsBits = 0xD000000000000016;
  v18._object = 0x8000000100030470;
  sub_100028CD4(v18);
  swift_getKeyPath();
  sub_100028C14();

  sub_100028CC4();

  v19._countAndFlagsBits = 46;
  v19._object = 0xE100000000000000;
  sub_100028CD4(v19);
  sub_100028CF4();
  v9 = sub_100028C34();
  v7(v4, v8);
  sub_100001B18(&qword_10003D258, &qword_10002E9B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10002BEA0;
  *(v10 + 32) = v14;
  *(v10 + 40) = v9;
  v11 = sub_100028C24();

  return v11;
}

uint64_t sub_10002495C(uint64_t a1)
{
  v28 = sub_100001B18(&qword_10003D228, &qword_10002E960);
  v2 = *(v28 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v28);
  v5 = v21 - v4;
  v6 = sub_100001B18(&qword_10003D230, &qword_10002E968);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  sub_10000A8C4();
  sub_100028CE4();
  v30._countAndFlagsBits = 0x206E6F206E727554;
  v30._object = 0xE800000000000000;
  sub_100028CD4(v30);
  swift_getKeyPath();
  v29 = sub_100009A14();
  v21[1] = a1;
  sub_100028C14();

  sub_100028CC4();

  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  sub_100028CD4(v31);
  sub_100028CF4();
  v8 = sub_100028C34();
  v9 = *(v2 + 8);
  v25 = v8;
  v26 = v2 + 8;
  v10 = v28;
  v9(v5, v28);
  v27 = v9;
  sub_100028CE4();
  v32._countAndFlagsBits = 0x66666F206E727554;
  v32._object = 0xE900000000000020;
  sub_100028CD4(v32);
  swift_getKeyPath();
  sub_100028C14();

  sub_100028CC4();

  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  sub_100028CD4(v33);
  sub_100028CF4();
  v24 = sub_100028C34();
  v9(v5, v10);
  sub_100028CE4();
  v34._countAndFlagsBits = 0x20656C62616E45;
  v34._object = 0xE700000000000000;
  sub_100028CD4(v34);
  swift_getKeyPath();
  sub_100028C14();

  sub_100028CC4();

  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  sub_100028CD4(v35);
  sub_100028CF4();
  v23 = sub_100028C34();
  v11 = v28;
  v27(v5, v28);
  sub_100028CE4();
  v36._countAndFlagsBits = 0x20656C6261736944;
  v36._object = 0xE800000000000000;
  sub_100028CD4(v36);
  swift_getKeyPath();
  sub_100028C14();

  sub_100028CC4();

  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  sub_100028CD4(v37);
  sub_100028CF4();
  v22 = sub_100028C34();
  v12 = v27;
  v27(v5, v11);
  sub_100028CE4();
  v38._countAndFlagsBits = 0x7369206572656857;
  v38._object = 0xED00002065687420;
  sub_100028CD4(v38);
  swift_getKeyPath();
  sub_100028C14();

  sub_100028CC4();

  v39._countAndFlagsBits = 0x676E697474657320;
  v39._object = 0xE800000000000000;
  sub_100028CD4(v39);
  sub_100028CF4();
  v13 = sub_100028C34();
  v14 = v28;
  v12(v5, v28);
  sub_100028CB4();
  v15 = sub_100028C34();
  v12(v5, v14);
  sub_100001B18(&qword_10003D238, &qword_10002E970);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10002E8A0;
  v17 = v24;
  *(v16 + 32) = v25;
  *(v16 + 40) = v17;
  v18 = v22;
  *(v16 + 48) = v23;
  *(v16 + 56) = v18;
  *(v16 + 64) = v13;
  *(v16 + 72) = v15;
  v19 = sub_100028C24();

  return v19;
}

uint64_t sub_100024FC4(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(uint64_t))
{
  v6 = sub_100028CA4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  a3();
  sub_100028C14();

  a4(v11);
  sub_100028C94();
  v12 = sub_100028C84();
  (*(v7 + 8))(v10, v6);
  sub_100001B18(&qword_10003D218, &qword_10002E950);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100029B80;
  *(v13 + 32) = v12;
  v14 = sub_100028C74();

  return v14;
}

uint64_t sub_100025144()
{
  v0 = sub_100028C54();
  v1 = sub_100028C54();
  sub_100001B18(&qword_10003D220, &qword_10002E958);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10002BEA0;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = sub_100028C44();

  return v3;
}

uint64_t sub_100025210()
{
  if (qword_10003C310 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10002527C()
{
  v0 = sub_100028D24();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100011FF4();
  v21 = v5;
  sub_10000F3EC();
  sub_100028D34();
  v19 = sub_100028D14();
  v6 = *(v1 + 8);
  v6(v4, v0);
  v20 = sub_10001D164();
  sub_10001CBAC();
  sub_100028D34();
  v18 = sub_100028D14();
  v6(v4, v0);
  v20 = sub_100022104();
  sub_1000203F4();
  sub_100028D34();
  v7 = sub_100028D14();
  v6(v4, v0);
  v20 = sub_100022104();
  sub_100028D34();
  v8 = sub_100028D14();
  v6(v4, v0);
  v20 = sub_10000EB2C();
  sub_10000D9C0();
  sub_100028D34();
  v9 = sub_100028D14();
  v6(v4, v0);
  v20 = sub_100004A84();
  sub_100003988();
  sub_100028D34();
  v10 = sub_100028D14();
  v6(v4, v0);
  v20 = sub_1000085FC();
  v21 = v11;
  sub_100005470();
  sub_100028D34();
  v12 = sub_100028D14();
  v6(v4, v0);
  v20 = sub_10000B800();
  sub_10000A8C4();
  sub_100028D34();
  v13 = sub_100028D14();
  v6(v4, v0);
  sub_100001B18(&qword_10003D210, &qword_10002E920);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10002E8B0;
  v15 = v18;
  *(v14 + 32) = v19;
  *(v14 + 40) = v15;
  *(v14 + 48) = v7;
  *(v14 + 56) = v8;
  *(v14 + 64) = v9;
  *(v14 + 72) = v10;
  *(v14 + 80) = v12;
  *(v14 + 88) = v13;
  v16 = sub_100028D04();

  return v16;
}

uint64_t sub_100025734@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_100028BB4();
  *a2 = v5;
  return result;
}

uint64_t sub_100025770(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_100028BC4();
}

unint64_t sub_1000257AC()
{
  result = qword_10003D250;
  if (!qword_10003D250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D250);
  }

  return result;
}

uint64_t sub_100025800@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_100028BB4();
  *a2 = v5;
  return result;
}

uint64_t sub_10002583C(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_100028BC4();
}

unint64_t sub_10002589C()
{
  result = qword_10003D020;
  if (!qword_10003D020)
  {
    type metadata accessor for BatteryHealthDynamicDeepLinks();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D020);
  }

  return result;
}

uint64_t sub_1000258F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_100028BB4();
  *a2 = v5;
  return result;
}

uint64_t sub_100025930(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_100028BC4();
}

unint64_t sub_100025968()
{
  result = qword_10003D2B8;
  if (!qword_10003D2B8)
  {
    sub_100001BC8(&qword_10003CF18, &qword_10002EAB0);
    sub_10001C034();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D2B8);
  }

  return result;
}

uint64_t sub_1000259EC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_100028BB4();
  *a2 = v5;
  return result;
}

uint64_t sub_100025A2C(char *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4 = *a1;
  return sub_100028BC4();
}

void sub_100025A78(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_100001B18(&qword_10003CF90, &unk_10002DFC0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 72);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

Swift::Int sub_100025B68(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100026588(v2);
  }

  v3 = *(v2 + 2);
  v29[0] = (v2 + 32);
  v29[1] = v3;
  result = sub_100029504(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 72;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*v12 >= *(v12 + 9))
          {
            break;
          }

          v13 = v12 - 40;
          v24 = *(v12 + 2);
          v14 = *(v12 + 3);
          v15 = *(v12 + 4);
          v16 = *(v12 + 5);
          v28 = *(v12 + 12);
          v26 = v15;
          v27 = v16;
          v25 = v14;
          *(v12 + 12) = *(v12 + 3);
          v17 = *(v12 + 8);
          *(v12 + 4) = *(v12 - 8);
          *(v12 + 5) = v17;
          v18 = *(v12 - 24);
          *(v12 + 2) = *(v12 - 40);
          *(v12 + 3) = v18;
          *v13 = v24;
          v19 = v28;
          v20 = v27;
          v21 = v25;
          *(v13 + 2) = v26;
          *(v12 + 8) = v20;
          *(v12 + 3) = v19;
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
      v7 = sub_1000293F4();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    *&v24 = v7 + 4;
    *(&v24 + 1) = v6;
    sub_100025CF8(&v24, v23, v29, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_100025CF8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v88 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_88:
    v89 = *v88;
    if (!*v88)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_100026574(v7);
      v7 = result;
    }

    v80 = v7 + 2;
    v81 = v7[2];
    if (v81 >= 2)
    {
      while (*a3)
      {
        v82 = &v7[2 * v81];
        v83 = *v82;
        v84 = &v80[2 * v81];
        v85 = v84[1];
        sub_1000262FC((*a3 + 72 * *v82), (*a3 + 72 * *v84), (*a3 + 72 * v85), v89);
        if (v4)
        {
        }

        if (v85 < v83)
        {
          goto LABEL_114;
        }

        if (v81 - 2 >= *v80)
        {
          goto LABEL_115;
        }

        *v82 = v83;
        v82[1] = v85;
        v86 = *v80 - v81;
        if (*v80 < v81)
        {
          goto LABEL_116;
        }

        v81 = *v80 - 1;
        result = memmove(v84, v84 + 2, 16 * v86);
        *v80 = v81;
        if (v81 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 72 * v6 + 40);
      v10 = 72 * v8;
      v11 = *a3 + 72 * v8;
      v12 = *(v11 + 40);
      v13 = v8 + 2;
      v14 = (v11 + 184);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 9;
        v17 = (v12 < v9) ^ (v15 >= v16);
        ++v13;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 72 * v6 - 72;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = v22 + v18;
            v94 = *(v22 + v10 + 32);
            v96 = *(v22 + v10 + 48);
            v98 = *(v22 + v10 + 64);
            v90 = *(v22 + v10);
            v92 = *(v22 + v10 + 16);
            result = memmove((v22 + v10), (v22 + v18), 0x48uLL);
            *(v21 + 32) = v94;
            *(v21 + 48) = v96;
            *(v21 + 64) = v98;
            *v21 = v90;
            *(v21 + 16) = v92;
          }

          ++v20;
          v18 -= 72;
          v10 += 72;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10001AFB8(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v33 = v7[2];
    v32 = v7[3];
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      result = sub_10001AFB8((v32 > 1), v33 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v34;
    v35 = v7 + 4;
    v36 = &v7[2 * v33 + 4];
    *v36 = v8;
    v36[1] = v6;
    v89 = *v88;
    if (!*v88)
    {
      goto LABEL_127;
    }

    if (v33)
    {
      while (1)
      {
        v37 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v38 = v7[4];
          v39 = v7[5];
          v48 = __OFSUB__(v39, v38);
          v40 = v39 - v38;
          v41 = v48;
LABEL_57:
          if (v41)
          {
            goto LABEL_104;
          }

          v54 = &v7[2 * v34];
          v56 = *v54;
          v55 = v54[1];
          v57 = __OFSUB__(v55, v56);
          v58 = v55 - v56;
          v59 = v57;
          if (v57)
          {
            goto LABEL_106;
          }

          v60 = &v35[2 * v37];
          v62 = *v60;
          v61 = v60[1];
          v48 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v48)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v58, v63))
          {
            goto LABEL_111;
          }

          if (v58 + v63 >= v40)
          {
            if (v40 < v63)
            {
              v37 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v64 = &v7[2 * v34];
        v66 = *v64;
        v65 = v64[1];
        v48 = __OFSUB__(v65, v66);
        v58 = v65 - v66;
        v59 = v48;
LABEL_72:
        if (v59)
        {
          goto LABEL_108;
        }

        v67 = &v35[2 * v37];
        v69 = *v67;
        v68 = v67[1];
        v48 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v48)
        {
          goto LABEL_110;
        }

        if (v70 < v58)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v37 - 1 >= v34)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v75 = &v35[2 * v37 - 2];
        v76 = *v75;
        v77 = &v35[2 * v37];
        v78 = v77[1];
        sub_1000262FC((*a3 + 72 * *v75), (*a3 + 72 * *v77), (*a3 + 72 * v78), v89);
        if (v4)
        {
        }

        if (v78 < v76)
        {
          goto LABEL_99;
        }

        if (v37 > v7[2])
        {
          goto LABEL_100;
        }

        *v75 = v76;
        v75[1] = v78;
        v79 = v7[2];
        if (v37 >= v79)
        {
          goto LABEL_101;
        }

        v34 = v79 - 1;
        result = memmove(&v35[2 * v37], v77 + 2, 16 * (v79 - 1 - v37));
        v7[2] = v79 - 1;
        if (v79 <= 2)
        {
          goto LABEL_3;
        }
      }

      v42 = &v35[2 * v34];
      v43 = *(v42 - 8);
      v44 = *(v42 - 7);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_102;
      }

      v47 = *(v42 - 6);
      v46 = *(v42 - 5);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_103;
      }

      v49 = &v7[2 * v34];
      v51 = *v49;
      v50 = v49[1];
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_105;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_107;
      }

      if (v53 >= v45)
      {
        v71 = &v35[2 * v37];
        v73 = *v71;
        v72 = v71[1];
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_113;
        }

        if (v40 < v74)
        {
          v37 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v23 = *a3;
  v24 = *a3 + 72 * v6;
  v25 = v8 - v6;
LABEL_30:
  v26 = v25;
  v27 = v24;
  while (1)
  {
    if (*(v27 - 32) >= *(v27 + 40))
    {
LABEL_29:
      ++v6;
      v24 += 72;
      --v25;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v23)
    {
      break;
    }

    v28 = v27 - 72;
    v95 = *(v27 + 32);
    v97 = *(v27 + 48);
    v99 = *(v27 + 64);
    v91 = *v27;
    v93 = *(v27 + 16);
    v29 = *(v27 - 24);
    *(v27 + 32) = *(v27 - 40);
    *(v27 + 48) = v29;
    *(v27 + 64) = *(v27 - 8);
    v30 = *(v27 - 56);
    *v27 = *(v27 - 72);
    *(v27 + 16) = v30;
    *(v28 + 64) = v99;
    *(v28 + 32) = v95;
    *(v28 + 48) = v97;
    v27 -= 72;
    *v28 = v91;
    *(v28 + 16) = v93;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1000262FC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 72;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 72;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[72 * v9] <= a4)
    {
      memmove(a4, __dst, 72 * v9);
    }

    v12 = &v4[72 * v9];
    if (v8 < 72)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*(v4 + 5) < *(v6 + 5))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 72;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 72;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 72;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v13, 0x48uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[72 * v11] <= a4)
  {
    memmove(a4, __src, 72 * v11);
  }

  v12 = &v4[72 * v11];
  if (v10 >= 72 && v6 > v7)
  {
LABEL_20:
    v5 -= 72;
    do
    {
      v15 = v5 + 72;
      if (*(v6 - 4) < *(v12 - 4))
      {
        v17 = v6 - 72;
        if (v15 != v6)
        {
          memmove(v5, v6 - 72, 0x48uLL);
        }

        if (v12 <= v4 || (v6 -= 72, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v16 = (v12 - 72);
      if (v15 != v12)
      {
        memmove(v5, v12 - 72, 0x48uLL);
      }

      v5 -= 72;
      v12 -= 72;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_31:
  v18 = (v12 - v4) / 72;
  if (v6 != v4 || v6 >= &v4[72 * v18])
  {
    memmove(v6, v4, 72 * v18);
  }

  return 1;
}

uint64_t sub_10002659C(uint64_t a1, uint64_t a2)
{
  *(v2 + 184) = a1;
  *(v2 + 192) = a2;
  return _swift_task_switch(sub_1000265BC, 0, 0);
}

uint64_t sub_1000265BC()
{
  v60 = v0;
  v1 = *(v0 + 184);
  v2 = *(v1 + 16);
  *(v0 + 200) = v2;
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    *(v0 + 208) = _swiftEmptyArrayStorage;
    *(v0 + 216) = 0;
    v4 = *(v1 + 32);

    v5 = sub_100029454();
    *(v0 + 48) = 0;
    *(v0 + 56) = 0xE000000000000000;
    sub_1000294C4(20);
    v6 = *(v0 + 56);

    *(v0 + 16) = 0xD000000000000012;
    *(v0 + 24) = 0x8000000100030650;
    v62._countAndFlagsBits = sub_100029314();
    sub_1000293C4(v62);

    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    if (qword_10003C240 != -1)
    {
      swift_once();
    }

    v9 = sub_100029094();
    sub_100004EA0(v9, qword_1000454C0);

    v10 = sub_100029084();

    if (os_log_type_enabled(v10, v5))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v59[0] = v12;
      *v11 = 136446210;
      v13 = sub_10001B1E4(v8, v7, v59);

      *(v11 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v10, v5, "%{public}s", v11, 0xCu);
      sub_10000BC70(v12);

      if (!*(v4 + 16))
      {
        goto LABEL_11;
      }
    }

    else
    {

      if (!*(v4 + 16))
      {
        goto LABEL_11;
      }
    }

    v14 = sub_10001B840(0xD000000000000019, 0x8000000100030670);
    if (v15)
    {
      sub_10001D5DC(*(v4 + 56) + 32 * v14, v0 + 16);
      goto LABEL_12;
    }

LABEL_11:
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
LABEL_12:
    sub_100028828(v0 + 16, v0 + 48);
    if (*(v0 + 72))
    {
      if (swift_dynamicCast())
      {
        v16 = *(v0 + 80);
        v17 = *(v0 + 88);
LABEL_17:
        *(v0 + 224) = v16;
        *(v0 + 232) = v17;
        if (*(v4 + 16) && (v18 = sub_10001B840(0xD000000000000015, 0x8000000100030690), (v19 & 1) != 0))
        {
          sub_10001D5DC(*(v4 + 56) + 32 * v18, v0 + 48);
        }

        else
        {
          *(v0 + 48) = 0u;
          *(v0 + 64) = 0u;
        }

        sub_100028828(v0 + 48, v0 + 80);
        if (*(v0 + 104))
        {
          if (swift_dynamicCast())
          {
            v20 = *(v0 + 112);
            v21 = *(v0 + 120);
LABEL_26:
            *(v0 + 240) = v20;
            *(v0 + 248) = v21;
            if (*(v4 + 16) && (v22 = sub_10001B840(0xD00000000000001CLL, 0x80000001000306B0), (v23 & 1) != 0))
            {
              sub_10001D5DC(*(v4 + 56) + 32 * v22, v0 + 80);
            }

            else
            {
              *(v0 + 80) = 0u;
              *(v0 + 96) = 0u;
            }

            sub_100028828(v0 + 80, v0 + 112);
            if (*(v0 + 136))
            {
              if (swift_dynamicCast())
              {
                v24 = *(v0 + 144);
LABEL_35:
                *(v0 + 256) = v24;
                if (*(v4 + 16) && (v25 = sub_10001B840(0xD00000000000001BLL, 0x80000001000306D0), (v26 & 1) != 0))
                {
                  sub_10001D5DC(*(v4 + 56) + 32 * v25, v0 + 112);
                }

                else
                {

                  *(v0 + 112) = 0u;
                  *(v0 + 128) = 0u;
                }

                sub_100028828(v0 + 112, v0 + 144);
                if (*(v0 + 168))
                {
                  sub_100001B18(&unk_10003D2E0, &unk_10002EB20);
                  if (swift_dynamicCast())
                  {
                    v27 = *(v0 + 176);
                    v28 = *(v27 + 16);
                    if (v28)
                    {
                      *(v0 + 144) = _swiftEmptyArrayStorage;
                      sub_100020C4C(0, v28, 0);
                      v29 = 0x8000000100030730;
                      v30 = 0x8000000100030710;
                      v31 = 0x80000001000306F0;
                      v32 = 32;
                      v33 = *(v0 + 144);
                      do
                      {
                        v34 = 0;
                        v35 = 0xE000000000000000;
                        switch(*(v27 + v32))
                        {
                          case 1:
                            v35 = 0xEA00000000006C61;
                            v34 = 0x6E67695320776F4CLL;
                            break;
                          case 2:
                            v34 = 0xD000000000000013;
                            v35 = v29;
                            break;
                          case 3:
                            v35 = 0xE800000000000000;
                            v34 = 0x6E6F697461636F4CLL;
                            break;
                          case 4:
                            v35 = 0xE700000000000000;
                            v34 = 0x79616C50726941;
                            break;
                          case 5:
                            v35 = 0xE700000000000000;
                            v34 = 0x706F7244726941;
                            break;
                          case 7:
                            v35 = 0xE500000000000000;
                            v34 = 0x6F69647541;
                            break;
                          case 8:
                            v34 = 0xD000000000000013;
                            v35 = v30;
                            break;
                          case 9:
                            v34 = 0x6163696669746F4ELL;
                            v35 = 0xED0000736E6F6974;
                            break;
                          case 0xALL:
                            v34 = 0x615720656C707041;
                            v35 = 0xEB00000000686374;
                            break;
                          case 0xBLL:
                            v34 = 0xD000000000000014;
                            v35 = v31;
                            break;
                          case 0xCLL:
                            v35 = 0xE600000000000000;
                            v34 = 0x746567646957;
                            break;
                          case 0xDLL:
                            v34 = 0x726F737365636341;
                            v35 = 0xEB00000000736569;
                            break;
                          case 0xELL:
                            v35 = 0xE900000000000072;
                            v34 = 0x657061706C6C6157;
                            break;
                          case 0x10:
                            v34 = 0x6F20746567646957;
                            v35 = 0xED000063614D206ELL;
                            break;
                          default:
                            break;
                        }

                        *(v0 + 144) = v33;
                        v37 = v33[2];
                        v36 = v33[3];
                        if (v37 >= v36 >> 1)
                        {
                          v57 = v30;
                          v58 = v31;
                          v56 = v29;
                          sub_100020C4C((v36 > 1), v37 + 1, 1);
                          v29 = v56;
                          v30 = v57;
                          v31 = v58;
                          v33 = *(v0 + 144);
                        }

                        v33[2] = v37 + 1;
                        v38 = &v33[2 * v37];
                        v38[4] = v34;
                        v38[5] = v35;
                        v32 += 8;
                        --v28;
                      }

                      while (v28);

                      goto LABEL_80;
                    }

                    v48 = *(v0 + 176);
                  }
                }

                else
                {
                  sub_10001D488(v0 + 144);
                }

                v33 = _swiftEmptyArrayStorage;
LABEL_80:
                *(v0 + 264) = v33;
                v49 = objc_allocWithZone(ISIcon);
                v50 = sub_100029374();
                v51 = [v49 initWithBundleIdentifier:v50];
                *(v0 + 272) = v51;

                v52 = [objc_allocWithZone(ISImageDescriptor) initWithSize:25.0 scale:{25.0, 2.0}];
                *(v0 + 280) = v52;
                [v52 setShape:0];
                *(v0 + 288) = [v51 prepareImageForDescriptor:v52];
                sub_100029434();
                *(v0 + 296) = sub_100029424();
                v54 = sub_100029414();

                return _swift_task_switch(sub_100027064, v54, v53);
              }
            }

            else
            {
              sub_10001D488(v0 + 112);
            }

            v24 = 0;
            goto LABEL_35;
          }
        }

        else
        {
          sub_10001D488(v0 + 80);
        }

        v20 = 0;
        v21 = 0xE000000000000000;
        goto LABEL_26;
      }
    }

    else
    {
      sub_10001D488(v0 + 48);
    }

    v16 = 0;
    v17 = 0xE000000000000000;
    goto LABEL_17;
  }

  v59[0] = _swiftEmptyArrayStorage;

  sub_100025B68(v59);
  v39 = *(v0 + 192);

  if (v39 < 0)
  {
    __break(1u);
LABEL_84:
    swift_unknownObjectRelease();
    sub_100025A78(v39, v39 + 32, 0, v3);
    v45 = v55;
    goto LABEL_74;
  }

  v39 = v59[0];
  v40 = *(v0 + 192);
  v41 = *(v59[0] + 2);
  if (v41 >= v40)
  {
    v41 = *(v0 + 192);
  }

  v42 = 2 * v41;
  if (v40)
  {
    v3 = v42 + 1;
  }

  else
  {
    v3 = 1;
  }

  sub_100029534();
  swift_unknownObjectRetain_n();
  v43 = swift_dynamicCastClass();
  if (!v43)
  {
    swift_unknownObjectRelease();
    v43 = _swiftEmptyArrayStorage;
  }

  v44 = v43[2];

  if (v44 != v3 >> 1)
  {
    goto LABEL_84;
  }

  v45 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v45)
  {
    v45 = _swiftEmptyArrayStorage;
LABEL_74:
    swift_unknownObjectRelease();
  }

  v46 = *(v0 + 8);

  return v46(v45);
}

uint64_t sub_100027064()
{
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);

  if (v2 && (v3 = [*(v0 + 288) CGImage]) != 0)
  {
    v4 = v3;
    *(v0 + 304) = [objc_allocWithZone(UIImage) initWithCGImage:v3 scale:0 orientation:2.0];

    v5 = sub_10002712C;
  }

  else
  {
    v5 = sub_100027CB0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10002712C()
{
  v78 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 288);
  v3 = *(v0 + 272);

  v4 = sub_100029464();
  v74 = v5;
  v76 = v4;

  v6 = *(v0 + 208);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + 208);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_10001B0BC(0, *(v8 + 2) + 1, 1, *(v0 + 208));
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_10001B0BC((v9 > 1), v10 + 1, 1, v8);
  }

  v12 = *(v0 + 256);
  v11 = *(v0 + 264);
  v71 = *(v0 + 240);
  v14 = *(v0 + 224);
  v13 = *(v0 + 232);
  v15 = *(v0 + 216);
  v16 = *(v0 + 200);
  sub_10001D488(v0 + 112);
  sub_10001D488(v0 + 80);
  sub_10001D488(v0 + 48);
  sub_10001D488(v0 + 16);
  *(v8 + 2) = v10 + 1;
  v17 = &v8[72 * v10];
  *(v17 + 4) = v14;
  *(v17 + 5) = v13;
  *(v17 + 6) = v15;
  *(v17 + 56) = v71;
  *(v17 + 9) = v12;
  *(v17 + 10) = v11;
  *(v17 + 11) = v76;
  *(v17 + 12) = v74;
  if (v15 + 1 == v16)
  {
    v77[0] = v8;

    sub_100025B68(v77);
    v33 = *(v0 + 192);

    if ((v33 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v8 = v77[0];
      v34 = *(v0 + 192);
      v35 = *(v77[0] + 2);
      if (v35 >= v34)
      {
        v35 = *(v0 + 192);
      }

      v36 = 2 * v35;
      if (v34)
      {
        v33 = v36 + 1;
      }

      else
      {
        v33 = 1;
      }

      sub_100029534();
      swift_unknownObjectRetain_n();
      v37 = swift_dynamicCastClass();
      if (!v37)
      {
        swift_unknownObjectRelease();
        v37 = _swiftEmptyArrayStorage;
      }

      v38 = v37[2];

      if (v38 == v33 >> 1)
      {
        v39 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v39)
        {
LABEL_31:
          v40 = *(v0 + 8);

          return v40(v39);
        }

        v39 = _swiftEmptyArrayStorage;
LABEL_30:
        swift_unknownObjectRelease();
        goto LABEL_31;
      }
    }

    swift_unknownObjectRelease();
    sub_100025A78(v8, (v8 + 32), 0, v33);
    v39 = v70;
    goto LABEL_30;
  }

  v18 = *(v0 + 216) + 1;
  *(v0 + 208) = v8;
  *(v0 + 216) = v18;
  v19 = *(*(v0 + 184) + 8 * v18 + 32);

  v20 = sub_100029454();
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  sub_1000294C4(20);
  v21 = *(v0 + 56);

  *(v0 + 16) = 0xD000000000000012;
  *(v0 + 24) = 0x8000000100030650;
  v80._countAndFlagsBits = sub_100029314();
  sub_1000293C4(v80);

  v23 = *(v0 + 16);
  v22 = *(v0 + 24);
  if (qword_10003C240 != -1)
  {
    swift_once();
  }

  v24 = sub_100029094();
  sub_100004EA0(v24, qword_1000454C0);

  v25 = sub_100029084();

  if (os_log_type_enabled(v25, v20))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v77[0] = v27;
    *v26 = 136446210;
    v28 = sub_10001B1E4(v23, v22, v77);

    *(v26 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v25, v20, "%{public}s", v26, 0xCu);
    sub_10000BC70(v27);

    if (!*(v19 + 16))
    {
      goto LABEL_15;
    }
  }

  else
  {

    if (!*(v19 + 16))
    {
      goto LABEL_15;
    }
  }

  v29 = sub_10001B840(0xD000000000000019, 0x8000000100030670);
  if (v30)
  {
    sub_10001D5DC(*(v19 + 56) + 32 * v29, v0 + 16);
    goto LABEL_16;
  }

LABEL_15:
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
LABEL_16:
  sub_100028828(v0 + 16, v0 + 48);
  if (!*(v0 + 72))
  {
    sub_10001D488(v0 + 48);
    goto LABEL_35;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_35:
    v31 = 0;
    v32 = 0xE000000000000000;
    goto LABEL_36;
  }

  v31 = *(v0 + 80);
  v32 = *(v0 + 88);
LABEL_36:
  *(v0 + 224) = v31;
  *(v0 + 232) = v32;
  if (*(v19 + 16) && (v42 = sub_10001B840(0xD000000000000015, 0x8000000100030690), (v43 & 1) != 0))
  {
    sub_10001D5DC(*(v19 + 56) + 32 * v42, v0 + 48);
  }

  else
  {
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
  }

  sub_100028828(v0 + 48, v0 + 80);
  if (!*(v0 + 104))
  {
    sub_10001D488(v0 + 80);
    goto LABEL_44;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_44:
    v44 = 0;
    v45 = 0xE000000000000000;
    goto LABEL_45;
  }

  v44 = *(v0 + 112);
  v45 = *(v0 + 120);
LABEL_45:
  *(v0 + 240) = v44;
  *(v0 + 248) = v45;
  if (*(v19 + 16) && (v46 = sub_10001B840(0xD00000000000001CLL, 0x80000001000306B0), (v47 & 1) != 0))
  {
    sub_10001D5DC(*(v19 + 56) + 32 * v46, v0 + 80);
  }

  else
  {
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
  }

  sub_100028828(v0 + 80, v0 + 112);
  if (!*(v0 + 136))
  {
    sub_10001D488(v0 + 112);
    goto LABEL_53;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_53:
    v48 = 0;
    goto LABEL_54;
  }

  v48 = *(v0 + 144);
LABEL_54:
  *(v0 + 256) = v48;
  if (*(v19 + 16) && (v49 = sub_10001B840(0xD00000000000001BLL, 0x80000001000306D0), (v50 & 1) != 0))
  {
    sub_10001D5DC(*(v19 + 56) + 32 * v49, v0 + 112);
  }

  else
  {

    *(v0 + 112) = 0u;
    *(v0 + 128) = 0u;
  }

  sub_100028828(v0 + 112, v0 + 144);
  if (*(v0 + 168))
  {
    sub_100001B18(&unk_10003D2E0, &unk_10002EB20);
    if (swift_dynamicCast())
    {
      v51 = *(v0 + 176);
      v52 = *(v51 + 16);
      if (v52)
      {
        *(v0 + 144) = _swiftEmptyArrayStorage;
        sub_100020C4C(0, v52, 0);
        v53 = *(v0 + 144);
        v54 = 0x80000001000306F0;
        v55 = 0x8000000100030710;
        v56 = 0x8000000100030730;
        v57 = 32;
        do
        {
          v58 = 0;
          v59 = 0xE000000000000000;
          switch(*(v51 + v57))
          {
            case 1:
              v59 = 0xEA00000000006C61;
              v58 = 0x6E67695320776F4CLL;
              break;
            case 2:
              v58 = 0xD000000000000013;
              v59 = v56;
              break;
            case 3:
              v59 = 0xE800000000000000;
              v58 = 0x6E6F697461636F4CLL;
              break;
            case 4:
              v59 = 0xE700000000000000;
              v58 = 0x79616C50726941;
              break;
            case 5:
              v59 = 0xE700000000000000;
              v58 = 0x706F7244726941;
              break;
            case 7:
              v59 = 0xE500000000000000;
              v58 = 0x6F69647541;
              break;
            case 8:
              v58 = 0xD000000000000013;
              v59 = v55;
              break;
            case 9:
              v58 = 0x6163696669746F4ELL;
              v59 = 0xED0000736E6F6974;
              break;
            case 0xALL:
              v58 = 0x615720656C707041;
              v59 = 0xEB00000000686374;
              break;
            case 0xBLL:
              v58 = 0xD000000000000014;
              v59 = v54;
              break;
            case 0xCLL:
              v59 = 0xE600000000000000;
              v58 = 0x746567646957;
              break;
            case 0xDLL:
              v58 = 0x726F737365636341;
              v59 = 0xEB00000000736569;
              break;
            case 0xELL:
              v59 = 0xE900000000000072;
              v58 = 0x657061706C6C6157;
              break;
            case 0x10:
              v58 = 0x6F20746567646957;
              v59 = 0xED000063614D206ELL;
              break;
            default:
              break;
          }

          *(v0 + 144) = v53;
          v61 = v53[2];
          v60 = v53[3];
          if (v61 >= v60 >> 1)
          {
            v73 = v55;
            v75 = v54;
            v72 = v56;
            sub_100020C4C((v60 > 1), v61 + 1, 1);
            v56 = v72;
            v55 = v73;
            v54 = v75;
            v53 = *(v0 + 144);
          }

          v53[2] = v61 + 1;
          v62 = &v53[2 * v61];
          v62[4] = v58;
          v62[5] = v59;
          v57 += 8;
          --v52;
        }

        while (v52);

        goto LABEL_84;
      }

      v63 = *(v0 + 176);
    }
  }

  else
  {
    sub_10001D488(v0 + 144);
  }

  v53 = _swiftEmptyArrayStorage;
LABEL_84:
  *(v0 + 264) = v53;
  v64 = objc_allocWithZone(ISIcon);
  v65 = sub_100029374();
  v66 = [v64 initWithBundleIdentifier:v65];
  *(v0 + 272) = v66;

  v67 = [objc_allocWithZone(ISImageDescriptor) initWithSize:25.0 scale:{25.0, 2.0}];
  *(v0 + 280) = v67;
  [v67 setShape:0];
  *(v0 + 288) = [v66 prepareImageForDescriptor:v67];
  sub_100029434();
  *(v0 + 296) = sub_100029424();
  v69 = sub_100029414();

  return _swift_task_switch(sub_100027064, v69, v68);
}

uint64_t sub_100027CB0()
{
  v73 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 272);

  v3 = *(v0 + 208);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + 208);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_10001B0BC(0, *(v5 + 2) + 1, 1, *(v0 + 208));
  }

  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_10001B0BC((v6 > 1), v7 + 1, 1, v5);
  }

  v9 = *(v0 + 256);
  v8 = *(v0 + 264);
  v70 = *(v0 + 240);
  v11 = *(v0 + 224);
  v10 = *(v0 + 232);
  v12 = *(v0 + 216);
  v13 = *(v0 + 200);
  sub_10001D488(v0 + 112);
  sub_10001D488(v0 + 80);
  sub_10001D488(v0 + 48);
  sub_10001D488(v0 + 16);
  *(v5 + 2) = v7 + 1;
  v14 = &v5[72 * v7];
  *(v14 + 4) = v11;
  *(v14 + 5) = v10;
  *(v14 + 6) = v12;
  *(v14 + 56) = v70;
  *(v14 + 9) = v9;
  *(v14 + 10) = v8;
  *(v14 + 88) = xmmword_10002EB00;
  if (v12 + 1 == v13)
  {
    v72[0] = v5;

    sub_100025B68(v72);
    v30 = *(v0 + 192);

    if ((v30 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v5 = v72[0];
      v31 = *(v0 + 192);
      v32 = *(v72[0] + 2);
      if (v32 >= v31)
      {
        v32 = *(v0 + 192);
      }

      v33 = 2 * v32;
      if (v31)
      {
        v30 = v33 + 1;
      }

      else
      {
        v30 = 1;
      }

      sub_100029534();
      swift_unknownObjectRetain_n();
      v34 = swift_dynamicCastClass();
      if (!v34)
      {
        swift_unknownObjectRelease();
        v34 = _swiftEmptyArrayStorage;
      }

      v35 = v34[2];

      if (v35 == v30 >> 1)
      {
        v36 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v36)
        {
LABEL_31:
          v37 = *(v0 + 8);

          return v37(v36);
        }

        v36 = _swiftEmptyArrayStorage;
LABEL_30:
        swift_unknownObjectRelease();
        goto LABEL_31;
      }
    }

    swift_unknownObjectRelease();
    sub_100025A78(v5, (v5 + 32), 0, v30);
    v36 = v67;
    goto LABEL_30;
  }

  v15 = *(v0 + 216) + 1;
  *(v0 + 208) = v5;
  *(v0 + 216) = v15;
  v16 = *(*(v0 + 184) + 8 * v15 + 32);

  v17 = sub_100029454();
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  sub_1000294C4(20);
  v18 = *(v0 + 56);

  *(v0 + 16) = 0xD000000000000012;
  *(v0 + 24) = 0x8000000100030650;
  v75._countAndFlagsBits = sub_100029314();
  sub_1000293C4(v75);

  v20 = *(v0 + 16);
  v19 = *(v0 + 24);
  if (qword_10003C240 != -1)
  {
    swift_once();
  }

  v21 = sub_100029094();
  sub_100004EA0(v21, qword_1000454C0);

  v22 = sub_100029084();

  if (os_log_type_enabled(v22, v17))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v72[0] = v24;
    *v23 = 136446210;
    v25 = sub_10001B1E4(v20, v19, v72);

    *(v23 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v22, v17, "%{public}s", v23, 0xCu);
    sub_10000BC70(v24);

    if (!*(v16 + 16))
    {
      goto LABEL_15;
    }
  }

  else
  {

    if (!*(v16 + 16))
    {
      goto LABEL_15;
    }
  }

  v26 = sub_10001B840(0xD000000000000019, 0x8000000100030670);
  if (v27)
  {
    sub_10001D5DC(*(v16 + 56) + 32 * v26, v0 + 16);
    goto LABEL_16;
  }

LABEL_15:
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
LABEL_16:
  sub_100028828(v0 + 16, v0 + 48);
  if (!*(v0 + 72))
  {
    sub_10001D488(v0 + 48);
    goto LABEL_35;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_35:
    v28 = 0;
    v29 = 0xE000000000000000;
    goto LABEL_36;
  }

  v28 = *(v0 + 80);
  v29 = *(v0 + 88);
LABEL_36:
  *(v0 + 224) = v28;
  *(v0 + 232) = v29;
  if (*(v16 + 16) && (v39 = sub_10001B840(0xD000000000000015, 0x8000000100030690), (v40 & 1) != 0))
  {
    sub_10001D5DC(*(v16 + 56) + 32 * v39, v0 + 48);
  }

  else
  {
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
  }

  sub_100028828(v0 + 48, v0 + 80);
  if (!*(v0 + 104))
  {
    sub_10001D488(v0 + 80);
    goto LABEL_44;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_44:
    v41 = 0;
    v42 = 0xE000000000000000;
    goto LABEL_45;
  }

  v41 = *(v0 + 112);
  v42 = *(v0 + 120);
LABEL_45:
  *(v0 + 240) = v41;
  *(v0 + 248) = v42;
  if (*(v16 + 16) && (v43 = sub_10001B840(0xD00000000000001CLL, 0x80000001000306B0), (v44 & 1) != 0))
  {
    sub_10001D5DC(*(v16 + 56) + 32 * v43, v0 + 80);
  }

  else
  {
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
  }

  sub_100028828(v0 + 80, v0 + 112);
  if (!*(v0 + 136))
  {
    sub_10001D488(v0 + 112);
    goto LABEL_53;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_53:
    v45 = 0;
    goto LABEL_54;
  }

  v45 = *(v0 + 144);
LABEL_54:
  *(v0 + 256) = v45;
  if (*(v16 + 16) && (v46 = sub_10001B840(0xD00000000000001BLL, 0x80000001000306D0), (v47 & 1) != 0))
  {
    sub_10001D5DC(*(v16 + 56) + 32 * v46, v0 + 112);
  }

  else
  {

    *(v0 + 112) = 0u;
    *(v0 + 128) = 0u;
  }

  sub_100028828(v0 + 112, v0 + 144);
  if (*(v0 + 168))
  {
    sub_100001B18(&unk_10003D2E0, &unk_10002EB20);
    if (swift_dynamicCast())
    {
      v48 = *(v0 + 176);
      v49 = *(v48 + 16);
      if (v49)
      {
        *(v0 + 144) = _swiftEmptyArrayStorage;
        sub_100020C4C(0, v49, 0);
        v50 = *(v0 + 144);
        v51 = 0x80000001000306F0;
        v52 = 0x8000000100030710;
        v53 = 0x8000000100030730;
        v54 = 32;
        do
        {
          v55 = 0;
          v56 = 0xE000000000000000;
          switch(*(v48 + v54))
          {
            case 1:
              v56 = 0xEA00000000006C61;
              v55 = 0x6E67695320776F4CLL;
              break;
            case 2:
              v55 = 0xD000000000000013;
              v56 = v53;
              break;
            case 3:
              v56 = 0xE800000000000000;
              v55 = 0x6E6F697461636F4CLL;
              break;
            case 4:
              v56 = 0xE700000000000000;
              v55 = 0x79616C50726941;
              break;
            case 5:
              v56 = 0xE700000000000000;
              v55 = 0x706F7244726941;
              break;
            case 7:
              v56 = 0xE500000000000000;
              v55 = 0x6F69647541;
              break;
            case 8:
              v55 = 0xD000000000000013;
              v56 = v52;
              break;
            case 9:
              v55 = 0x6163696669746F4ELL;
              v56 = 0xED0000736E6F6974;
              break;
            case 0xALL:
              v55 = 0x615720656C707041;
              v56 = 0xEB00000000686374;
              break;
            case 0xBLL:
              v55 = 0xD000000000000014;
              v56 = v51;
              break;
            case 0xCLL:
              v56 = 0xE600000000000000;
              v55 = 0x746567646957;
              break;
            case 0xDLL:
              v55 = 0x726F737365636341;
              v56 = 0xEB00000000736569;
              break;
            case 0xELL:
              v56 = 0xE900000000000072;
              v55 = 0x657061706C6C6157;
              break;
            case 0x10:
              v55 = 0x6F20746567646957;
              v56 = 0xED000063614D206ELL;
              break;
            default:
              break;
          }

          *(v0 + 144) = v50;
          v58 = v50[2];
          v57 = v50[3];
          if (v58 >= v57 >> 1)
          {
            v69 = v52;
            v71 = v51;
            v68 = v53;
            sub_100020C4C((v57 > 1), v58 + 1, 1);
            v53 = v68;
            v52 = v69;
            v51 = v71;
            v50 = *(v0 + 144);
          }

          v50[2] = v58 + 1;
          v59 = &v50[2 * v58];
          v59[4] = v55;
          v59[5] = v56;
          v54 += 8;
          --v49;
        }

        while (v49);

        goto LABEL_84;
      }

      v60 = *(v0 + 176);
    }
  }

  else
  {
    sub_10001D488(v0 + 144);
  }

  v50 = _swiftEmptyArrayStorage;
LABEL_84:
  *(v0 + 264) = v50;
  v61 = objc_allocWithZone(ISIcon);
  v62 = sub_100029374();
  v63 = [v61 initWithBundleIdentifier:v62];
  *(v0 + 272) = v63;

  v64 = [objc_allocWithZone(ISImageDescriptor) initWithSize:25.0 scale:{25.0, 2.0}];
  *(v0 + 280) = v64;
  [v64 setShape:0];
  *(v0 + 288) = [v63 prepareImageForDescriptor:v64];
  sub_100029434();
  *(v0 + 296) = sub_100029424();
  v66 = sub_100029414();

  return _swift_task_switch(sub_100027064, v66, v65);
}

uint64_t sub_100028828(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B18(&qword_10003CF20, &qword_10002DF40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_1000288A8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000288CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_100028914(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}