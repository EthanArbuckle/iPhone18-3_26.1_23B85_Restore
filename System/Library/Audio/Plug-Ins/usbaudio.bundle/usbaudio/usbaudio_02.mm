char *sub_10002571C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    sub_100001AB4(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

char *sub_100025818(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175458, &unk_100125500);
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
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

void *sub_100025918(void *result, int64_t a2, char a3, void *a4)
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
    sub_100001AB4(&qword_100175448, &qword_100120F08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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
    sub_100001AB4(&qword_100175450, &qword_100120F10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100025A70(void *result, int64_t a2, char a3, void *a4)
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
    sub_100001AB4(&qword_100175428, &qword_100120EF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100001AB4(&qword_100175430, &qword_100120EF8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100025BCC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    sub_100001AB4(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_100025CC8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175418, &qword_100120EE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_100025DCC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_1001753C0, &qword_100120EA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100025EF4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175490, &qword_100126EB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_100025FF8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_1001753F8, &qword_100120EC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_100026114(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_1001753E8, &qword_100129790);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 17);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 17 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

void *sub_100026240(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_100001AB4(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100001AB4(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t MEMInterface.__deallocating_deinit()
{
  sub_100024174(v0 + 16);

  return swift_deallocClassInstance();
}

char *sub_1000263F4(void (*a1)(__int128 *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = (a3 + 48);
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = *(v6 - 1);
    v10 = *v6;
    v20[0] = *(v6 - 2);
    v20[1] = v9;
    v20[2] = v10;

    a1(&v18, v20);
    if (v3)
    {
      break;
    }

    if (v18)
    {
      v17 = v18;
      v11 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1000241C0(0, *(v7 + 2) + 1, 1, v7);
      }

      v13 = *(v7 + 2);
      v12 = *(v7 + 3);
      v14 = v17;
      if (v13 >= v12 >> 1)
      {
        v15 = sub_1000241C0((v12 > 1), v13 + 1, 1, v7);
        v14 = v17;
        v7 = v15;
      }

      *(v7 + 2) = v13 + 1;
      v8 = &v7[24 * v13];
      *(v8 + 2) = v14;
      *(v8 + 6) = v11;
    }

    v6 += 3;
    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

void *sub_100026584(void (*a1)(__int128 *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    v7 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v8 = *(a3 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v19 = v8;
      a1(&v18, &v19);
      if (v3)
      {

        return v7;
      }

      if (v18)
      {
        v17 = v18;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_100024788(0, v7[2] + 1, 1, v7);
        }

        v12 = v7[2];
        v11 = v7[3];
        v13 = v17;
        if (v12 >= v11 >> 1)
        {
          v14 = sub_100024788((v11 > 1), v12 + 1, 1, v7);
          v13 = v17;
          v7 = v14;
        }

        v7[2] = v12 + 1;
        *&v7[2 * v12 + 4] = v13;
      }

      ++v6;
      if (v10 == i)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t (*ActiveSelectorUnit.function.modify(uint64_t *a1))()
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_10002316C;
}

unint64_t sub_100026850()
{
  result = qword_1001755D8;
  if (!qword_1001755D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001755D8);
  }

  return result;
}

uint64_t sub_1000268A4()
{
  v1 = v0[8];

  v2 = v0[9];

  v3 = v0[10];

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100026904@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 80);
  v11[2] = *(v2 + 64);
  v11[3] = v4;
  v12 = *(v2 + 96);
  v5 = *(v2 + 48);
  v11[0] = *(v2 + 32);
  v11[1] = v5;
  a2[3] = &type metadata for SelectorUnit;
  a2[4] = a1();
  v6 = swift_allocObject();
  *a2 = v6;
  v7 = *(v2 + 80);
  *(v6 + 48) = *(v2 + 64);
  *(v6 + 64) = v7;
  *(v6 + 80) = *(v2 + 96);
  v8 = *(v2 + 48);
  *(v6 + 16) = *(v2 + 32);
  *(v6 + 32) = v8;
  return sub_1000267DC(v11, v10);
}

unint64_t sub_100026998()
{
  result = qword_1001755E0;
  if (!qword_1001755E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001755E0);
  }

  return result;
}

void *ActiveClockSelector.selectorControl.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 104);
  v2 = v1;
  return v1;
}

void ActiveClockSelector.selectorControl.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 104);
  *(v1 + 104) = a1;
}

double ActiveSelectorUnit.source.getter@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_12;
  }

  v3 = *(v1 + 24);
  v4 = *(v1 + 80);
  v5 = *(v4 + 16);
  if (v5 == 1)
  {
    v6 = *(v4 + 32);
    ObjectType = swift_getObjectType();
    sub_100052184(v6, ObjectType, v3, v12);
  }

  else
  {
    v8 = *(v1 + 112);
    if (!*(v1 + 112) || v5 < v8)
    {
      swift_unknownObjectRelease();
      goto LABEL_12;
    }

    v9 = v8 - 1;
    v10 = swift_getObjectType();
    sub_100052184(*(v4 + 8 * v9 + 32), v10, v3, v12);
  }

  swift_unknownObjectRelease();
  if (!v12[3])
  {
    sub_10000D040(v12, &qword_100174FB0, &unk_100120FC0);
    goto LABEL_12;
  }

  sub_100001AB4(&qword_100174F60, &qword_100121090);
  sub_100001AB4(&qword_100174F68, &unk_100120B90);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t ActiveSelectorUnit.latencyControlSelector.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    LODWORD(v2) = (*(v2 + 40))(ObjectType, v2) == 32;
    swift_unknownObjectRelease();
    return (2 * v2);
  }

  return result;
}

uint64_t ActiveSelectorUnit.cluster.getter()
{
  v2 = type metadata accessor for LogID(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for Mirror();
  v6 = *(v78 - 1);
  v7 = *(v6 + 64);
  __chkstk_darwin(v78);
  ObjectType = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v76 = v2;
  if (!Strong)
  {
    sub_10000CA2C();
    v19 = swift_allocError();
    *v20 = 1;
    *(v20 + 8) = 0;
    *(v20 + 16) = 0xE000000000000000;
    swift_willThrow();
    goto LABEL_28;
  }

  v11 = v0[3];
  v12 = v0[10];
  if (v12[2] == 1)
  {
    v13 = 1;
    goto LABEL_4;
  }

  v66 = v0[10];
  v68 = v11;
  v69 = Strong;
  v67 = v0;
  v77 = v0[11];
  if (!v77 || (v74 = v77[2]) == 0)
  {
LABEL_23:
    sub_10000CA2C();
    v19 = swift_allocError();
    *v37 = 14;
    *(v37 + 8) = 0;
    *(v37 + 16) = 0xE000000000000000;
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_28;
  }

  v21 = 0;
  v22 = (v77 + 4);
  Description = (v6 + 8);
  v75 = v5;
  v73 = ObjectType;
  v72 = (v6 + 8);
  while (1)
  {
    v24 = v77[2];
    v25 = v21 < v24;
    if (v21 >= v24)
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      if (v25)
      {
        goto LABEL_47;
      }

      goto LABEL_48;
    }

    v26 = *(v22 + 2);
    v27 = *v22;
    active = &type metadata for USBDescriptorControl;
    v71 = v26;
    BYTE2(v85) = v26;
    v70 = v27;
    LOWORD(v85) = v27;
    Mirror.init(reflecting:)();
    v1 = Mirror.children.getter();
    v28 = v1[2];
    Description = v1[3];
    v30 = v1[4];
    v29 = v1[5];
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v12 = dispatch thunk of _AnyIndexBox._typeID.getter();
    swift_getObjectType();
    v31 = dispatch thunk of _AnyIndexBox._typeID.getter();
    v25 = v12 < v31;
    if (v12 != v31)
    {
      goto LABEL_43;
    }

    v32 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if ((v32 & 1) == 0)
    {
      break;
    }

    Description = v72;
    v5 = v75;
    ObjectType = v73;
    (*v72)(v73, v78);
LABEL_20:

LABEL_21:
    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v36)
    {
      goto LABEL_27;
    }

    v21 = (v21 + 1);
    v22 = (v22 + 3);
    if (v74 == v21)
    {
      goto LABEL_23;
    }
  }

  dispatch thunk of _AnyCollectionBox.subscript.getter();

  v33 = v85;
  v34 = v86;
  sub_10000CE78(&v87);
  Description = v72;
  v35 = *v72;
  ObjectType = v73;
  if (!v34)
  {
    v5 = v75;
    v35(v73, v78);
    goto LABEL_20;
  }

  v35(v73, v78);
  v5 = v75;
  if (v33 != 0x726F7463656C6573 || v34 != 0xE800000000000000)
  {
    goto LABEL_21;
  }

LABEL_27:
  v40 = v70 | (v71 << 16);
  v41 = swift_getObjectType();
  active = type metadata accessor for ActiveSelectorUnit();
  v89 = &protocol witness table for ActiveSelectorUnit;
  v85 = v67;
  v42 = v68;
  v43 = *(v68 + 184);

  v44 = v43(v40 & 0xFFFFFF, 0, 0, &v85, v41, v42);
  v12 = v50;
  LOWORD(v40) = v44;
  sub_10000CE78(&v85);
  ADCControlRequestParameterBlock.getCur()(v12, v40 & 0x1FF, &v85);
  v21 = active;
  v51 = v89;
  v52 = sub_10001EAB8(&v85, active);
  Description = v21[-1].Description;
  v1 = Description[8];
  __chkstk_darwin(v52);
  v22 = (&v66 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  (Description[2])(v22);
  ObjectType = v51[1];
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_48;
  }

  *&v82 = 0x8000000000000000;
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    v54 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v53 = dispatch thunk of BinaryInteger.bitWidth.getter();
    v25 = v53 < 64;
    if (v54)
    {
      if (v53 > 64)
      {
        goto LABEL_40;
      }

      v74 = *(*(ObjectType + 3) + 16);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v78 = &v66;
      v58 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      __chkstk_darwin(AssociatedTypeWitness);
      swift_getAssociatedConformanceWitness();
      v59 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v77 = &v66;
      __chkstk_darwin(v59);
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v60 = *(*(ObjectType + 4) + 8);
      v61 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (Description[1])(&v66 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
      if ((v61 & 1) == 0)
      {
        goto LABEL_47;
      }

LABEL_61:
      __break(1u);
      return result;
    }

    goto LABEL_44;
  }

  v53 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v53 < 64)
  {
LABEL_47:
    dispatch thunk of BinaryInteger._lowWord.getter();
    goto LABEL_48;
  }

LABEL_40:
  __chkstk_darwin(v53);
  sub_10002B660();
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v55 = *(*(ObjectType + 4) + 8);
  v56 = dispatch thunk of static Comparable.< infix(_:_:)();
  result = (Description[1])(&v66 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
  if (v56)
  {
    goto LABEL_61;
  }

LABEL_48:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_53;
  }

  while (2)
  {
    *&v82 = 0x7FFFFFFFFFFFFFFFLL;
    v62 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v63 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v62)
    {
      if (v63 < 65)
      {
        break;
      }

      goto LABEL_51;
    }

    if (v63 >= 64)
    {
LABEL_51:
      __chkstk_darwin(v63);
      sub_10002B660();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v64 = *(*(ObjectType + 4) + 8);
      v65 = dispatch thunk of static Comparable.< infix(_:_:)();
      (Description[1])(&v66 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
      if ((v65 & 1) == 0)
      {
        goto LABEL_58;
      }

      __break(1u);
LABEL_53:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0)
      {
        goto LABEL_58;
      }

      continue;
    }

    break;
  }

  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_58:
  v13 = dispatch thunk of BinaryInteger._lowWord.getter();

  (Description[1])(v22, v21);
  sub_10000CE78(&v85);
  v5 = v75;
  v11 = v68;
  v12 = v66;
  if (v13 <= 0 || v66[2] < v13)
  {
LABEL_25:
    sub_10000CA2C();
    v19 = swift_allocError();
    *v38 = 1;
    *(v38 + 8) = 0;
    *(v38 + 16) = 0xE000000000000000;
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_28;
  }

LABEL_4:
  v14 = swift_getObjectType();
  sub_100052184(v12[v13 + 3], v14, v11, &v82);
  if (!v83)
  {
    sub_10000D040(&v82, &qword_100174FB0, &unk_100120FC0);
    goto LABEL_25;
  }

  sub_10000D0A0(&v82, &v85);
  sub_10001EAFC(&v85, v81);
  sub_100001AB4(&qword_100174F60, &qword_100121090);
  sub_100001AB4(&qword_100174F68, &unk_100120B90);
  if (swift_dynamicCast())
  {
    sub_10000D0A0(v79, &v82);
    v15 = v83;
    v16 = v84;
    sub_10001EAB8(&v82, v83);
    v17 = (*(v16 + 48))(v15, v16);
    swift_unknownObjectRelease();
    sub_10000CE78(&v85);
    sub_10000CE78(&v82);
    return v17;
  }

  else
  {
    v80 = 0;
    memset(v79, 0, sizeof(v79));
    sub_10000D040(v79, &qword_100174F70, &qword_100120FD0);
    sub_10000CA2C();
    v19 = swift_allocError();
    *v39 = 1;
    *(v39 + 8) = 0;
    *(v39 + 16) = 0xE000000000000000;
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_10000CE78(&v85);
LABEL_28:
    v85 = 0;
    v86 = 0xE000000000000000;
    _StringGuts.grow(_:)(47);
    v45._object = 0x800000010012C1B0;
    v45._countAndFlagsBits = 0xD00000000000002DLL;
    String.append(_:)(v45);
    *&v82 = v19;
    sub_100001AB4(&qword_100177270, &qword_100120A40);
    _print_unlocked<A, B>(_:_:)();
    v46 = v85;
    v47 = v86;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v48 = sub_10000A1BC(v76, qword_1001794F0);
    sub_10000A2A4(v48, v5);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v49, qword_100179508);
    sub_100039F58(2, v5, v46, v47);

    sub_10000C9D0(v5);
    return 0;
  }
}

uint64_t ActiveSelectorUnit.start(on:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for LogID(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v25[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  *(v3 + 24) = a2;
  result = swift_unknownObjectWeakAssign();
  if (*(*(v3 + 80) + 16) >= 2uLL)
  {
    sub_100028BD8();
    v25[0] = 0;
    v25[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    strcpy(v25, "Selector Unit");
    HIWORD(v25[1]) = -4864;
    v26 = *(v3 + 48);
    v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v10);

    v11._countAndFlagsBits = 0x69766564206E6F20;
    v11._object = 0xEB00000000206563;
    String.append(_:)(v11);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v12 = *(v3 + 24);
      ObjectType = swift_getObjectType();
      active = ActiveFunction.deviceName.getter(ObjectType, v12);
      v16 = v15;
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = 0xE700000000000000;
      active = 0x6E776F6E6B6E55;
    }

    v17._countAndFlagsBits = active;
    v17._object = v16;
    String.append(_:)(v17);

    v18._object = 0x800000010012C1E0;
    v18._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v18);
    LOBYTE(v26) = *(v3 + 112);
    v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v19);

    v20 = v25[0];
    v21 = v25[1];
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v22 = sub_10000A1BC(v5, qword_1001794F0);
    sub_10000A2A4(v22, v8);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v23, qword_100179508);
    sub_100039AA0(2, v8, v20, v21);

    return sub_10000C9D0(v8);
  }

  return result;
}

void ActiveSelectorUnit.audioControlsAndProperties(scope:for:)(unsigned int a1, uint64_t a2)
{
  v95 = a2;
  v97 = a1;
  v96 = type metadata accessor for LogID(0);
  v4 = *(*(v96 - 8) + 64);
  __chkstk_darwin(v96);
  v6 = (&v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v105 = type metadata accessor for Mirror();
  v7 = *(v105 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v105);
  ObjectType = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_10000CA2C();
    swift_allocError();
    *v26 = 1;
    *(v26 + 8) = 0;
    *(v26 + 16) = 0xE000000000000000;
    swift_willThrow();
    return;
  }

  v98 = Strong;
  v94 = *(v2 + 80);
  if (v94[1].Kind < 2uLL || (v12 = *(v2 + 88)) == 0)
  {
LABEL_42:
    swift_unknownObjectRelease();
    return;
  }

  v93 = v2;
  v92 = v3;
  v104 = *(v12 + 2);
  if (!v104)
  {
LABEL_18:
    sub_10000CA2C();
    swift_allocError();
    *v25 = 14;
    *(v25 + 8) = 0;
    *(v25 + 16) = 0xE000000000000000;
    swift_willThrow();
    swift_unknownObjectRelease();
    return;
  }

  v13 = 0;
  v91 = *(v93 + 24);
  v14 = (v12 + 32);
  v90 = v6;
  v103 = ObjectType;
  v101 = v12;
  v102 = (v7 + 8);
  while (1)
  {
    if (v13 >= *(v12 + 2))
    {
      __break(1u);
LABEL_82:
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
      swift_once();
      v53 = sub_10000A1BC(v96, qword_1001794F0);
      sub_10000A2A4(v53, v6);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v54 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v54, qword_100179508);
      sub_100039F58(2, v6, v7, ObjectType);

      swift_unknownObjectRelease();
      sub_10000C9D0(v6);
      return;
    }

    v106 = v13;
    v15 = *(v14 + 2);
    v16 = *v14;
    v117 = &type metadata for USBDescriptorControl;
    v100 = v15;
    BYTE2(v114) = v15;
    v99 = v16;
    LOWORD(v114) = v16;
    Mirror.init(reflecting:)();
    v17 = Mirror.children.getter();
    v6 = v17[2];
    v7 = v17[3];
    v18 = v17[4];
    v19 = v17[5];
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v20 = dispatch thunk of _AnyIndexBox._typeID.getter();
    swift_getObjectType();
    if (v20 != dispatch thunk of _AnyIndexBox._typeID.getter())
    {
      goto LABEL_82;
    }

    v21 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if ((v21 & 1) == 0)
    {
      break;
    }

    ObjectType = v103;
    (*v102)(v103, v105);
LABEL_15:

    v7 = 0xE700000000000000;
LABEL_16:
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v24)
    {
      goto LABEL_20;
    }

    v13 = v106 + 1;
    v14 = (v14 + 3);
    v12 = v101;
    if (v104 == (v106 + 1))
    {
      goto LABEL_18;
    }
  }

  dispatch thunk of _AnyCollectionBox.subscript.getter();

  v22 = v114;
  v7 = v115;
  sub_10000CE78(&v116);
  v23 = *v102;
  ObjectType = v103;
  if (!v7)
  {
    v23(v103, v105);
    goto LABEL_15;
  }

  v23(v103, v105);
  if (v22 != 0x726F7463656C6573 || v7 != 0xE800000000000000)
  {
    goto LABEL_16;
  }

LABEL_20:
  v27 = swift_getObjectType();
  v6 = v91;
  v28 = (*(v91 + 16))(v27, v91);
  if (!v28)
  {
    sub_10000CA2C();
    swift_allocError();
    *v31 = 58;
    *(v31 + 8) = 0;
    *(v31 + 16) = 0xE000000000000000;
    swift_willThrow();
    swift_unknownObjectRelease();
    return;
  }

  active = type metadata accessor for ActiveSelectorUnit();
  v117 = active;
  v118 = &protocol witness table for ActiveSelectorUnit;
  v114 = v93;

  v30 = v92;
  v106 = sub_1000530DC(&v114, v27, v6);
  if (v30)
  {
    swift_unknownObjectRelease();
    sub_10000CE78(&v114);
    return;
  }

  v104 = active;
  v105 = v27;
  sub_10000CE78(&v114);
  ObjectType = *(v106 + 16);
  v32 = _swiftEmptyArrayStorage;
  if (!ObjectType)
  {
    goto LABEL_40;
  }

  v33 = 0;
  v34 = (v106 + 48);
  v35 = v97;
  while (2)
  {
    v36 = *(v106 + 16);
    v37 = v36 >= v33;
    v38 = v36 - v33;
    if (!v37)
    {
      v38 = 0;
    }

    v7 = &ObjectType[-v33];
    v39 = &v34[3 * v33++];
    while (2)
    {
      if (!v38)
      {
        goto LABEL_83;
      }

      v40 = *(v39 - 2);
      v6 = *(v39 - 1);
      if (v35 == 1869968496)
      {
        if (v6[17] == 257)
        {
          goto LABEL_35;
        }

LABEL_30:
        --v38;
        v39 += 3;
        ++v33;
        if (!--v7)
        {
          goto LABEL_40;
        }

        continue;
      }

      break;
    }

    if (v35 != 1768845428 || *(v40 + 136) != 257)
    {
      goto LABEL_30;
    }

LABEL_35:
    v102 = v34;
    v41 = *v39;

    v92 = v41;

    v103 = v32;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v101 = ObjectType;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v103 = sub_1000241C0(0, *(v103 + 2) + 1, 1, v103);
    }

    v32 = v103;
    v44 = *(v103 + 2);
    v43 = *(v103 + 3);
    v35 = v97;
    v34 = v102;
    if (v44 >= v43 >> 1)
    {
      v46 = sub_1000241C0((v43 > 1), v44 + 1, 1, v103);
      v34 = v102;
      v32 = v46;
      v35 = v97;
    }

    *(v32 + 2) = v44 + 1;
    v45 = &v32[24 * v44];
    *(v45 + 4) = v40;
    *(v45 + 5) = v6;
    *(v45 + 6) = v92;
    ObjectType = v101;
    if (v7 != 1)
    {
      continue;
    }

    break;
  }

LABEL_40:

  v47 = *(v32 + 2);

  if (!v47)
  {
    goto LABEL_42;
  }

  v48 = v99 | (v100 << 16);
  v117 = v104;
  v118 = &protocol witness table for ActiveSelectorUnit;
  v114 = v93;
  v49 = v91;
  v50 = *(v91 + 184);

  v51 = v50(v48 & 0xFFFFFF, 0, 0, &v114, v105, v49);
  v7 = v52;
  LOWORD(v50) = v51;
  sub_10000CE78(&v114);
  ADCControlRequestParameterBlock.getCur()(v7, v50 & 0x1FF, &v114);

  sub_100001AB4(&qword_1001755F0, &qword_100121AF0);
  v55 = swift_dynamicCast();
  v92 = 0;
  if (v55)
  {
    *(v93 + 112) = v111;
  }

  v56 = v94;
  v57 = _swiftEmptyArrayStorage;
  v108 = _swiftEmptyArrayStorage;
  Kind = v94[1].Kind;
  if (Kind)
  {
    LODWORD(v103) = v48;
    v59 = 0;
    v60 = v94 + 2;
    v6 = &qword_100174FB0;
    ObjectType = &unk_100120FC0;
    v61 = &qword_100174F70;
    v106 = 0x726F7463656C6553;
    v104 = v94 + 2;
    while (1)
    {
      if (v59 >= v56[1].Kind)
      {
        goto LABEL_84;
      }

      v62 = v59 + 1;
      sub_100052184(*(&v60->Kind + v59), v105, v91, v109);
      if (!v110)
      {
        break;
      }

      sub_100001AB4(&qword_100174F60, &qword_100121090);
      sub_100001AB4(&qword_100174F68, &unk_100120B90);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v113 = 0;
        v111 = 0u;
        v112 = 0u;
        goto LABEL_58;
      }

      if (!*(&v112 + 1))
      {
        goto LABEL_58;
      }

      v63 = v61;
      v64 = ObjectType;
      v65 = v6;
      sub_10000D0A0(&v111, &v114);
      v66 = v117;
      v67 = v118;
      sub_10001EAB8(&v114, v117);
      (v67[9])(v66, v67);
      if (v68)
      {
        v7 = v68;
        sub_10000CE78(&v114);
        v6 = v65;
        ObjectType = v64;
        v61 = v63;
        v60 = v104;
        goto LABEL_60;
      }

      sub_10000CE78(&v114);
      v6 = v65;
      ObjectType = v64;
      v61 = v63;
      v60 = v104;
LABEL_59:
      v114 = v106;
      v115 = 0xEA00000000002320;
      *&v111 = v59 + 1;
      v69._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v69);

      v7 = v115;
LABEL_60:
      if (v59 == 0xFFFFFFFF)
      {
        goto LABEL_85;
      }

      v70 = String._bridgeToObjectiveC()();

      v7 = [objc_opt_self() withValue:(v59 + 1) andName:v70 selected:v62 == *(v93 + 112)];

      if (!v7)
      {
        __break(1u);
        goto LABEL_90;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v71 = ObjectType;
        v72 = v6;
        v73 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v6 = v72;
        ObjectType = v71;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v59 = v62;
      v56 = v94;
      if (Kind == v62)
      {
        v57 = v108;
        LOBYTE(v48) = v103;
        goto LABEL_67;
      }
    }

    sub_10000D040(v109, v6, ObjectType);
    v111 = 0u;
    v112 = 0u;
    v113 = 0;
LABEL_58:
    sub_10000D040(&v111, v61, &qword_100120FD0);
    goto LABEL_59;
  }

LABEL_67:
  v74 = LockDelay.units.getter(v48);
  v75 = type metadata accessor for AUAStreamSelectorControl();
  v76 = objc_allocWithZone(v75);
  v6 = OBJC_IVAR____TtC9AUASDCore24AUAStreamSelectorControl_selectorUnit;
  swift_weakInit();
  swift_weakAssign();
  v107.receiver = v76;
  v107.super_class = v75;
  v77 = objc_msgSendSuper2(&v107, "initWithIsSettable:forElement:inScope:withPlugin:andObjectClassID:", v74 & 1, 0, v97, v95, 1685287523);
  if (v77)
  {
    if (v57 >> 62)
    {
      v89 = v77;
      v78 = _CocoaArrayWrapper.endIndex.getter();
      v77 = v89;
    }

    else
    {
      v78 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v106 = v77;
    v79 = v77;
    if (v78)
    {
      v7 = 0;
      ObjectType = (v57 & 0xC000000000000001);
      v80 = v57 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (ObjectType)
        {
          v81 = v57;
          v82 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *(v80 + 16))
          {
            goto LABEL_87;
          }

          v81 = v57;
          v82 = *(v57 + 8 * v7 + 32);
        }

        v6 = v82;
        v83 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_86;
        }

        [v79 addValue:v82];

        ++v7;
        v84 = v83 == v78;
        v57 = v81;
      }

      while (!v84);
    }

    v85 = v93;
    LODWORD(v114) = *(v93 + 112);
    [v79 setSelectedValues:&v114 withCount:{1, v90}];

    swift_beginAccess();
    v86 = *(v85 + 104);
    *(v85 + 104) = v106;
    v87 = v79;

    sub_100001AB4(&qword_100174FA0, &unk_100120BB0);
    v88 = swift_allocObject();
    *(v88 + 16) = xmmword_100120A20;
    *(v88 + 32) = v87;

    swift_unknownObjectRelease();
  }

  else
  {
LABEL_90:
    __break(1u);
  }
}

void sub_100028BD8()
{
  v1 = v0;
  ObjectType = 0x6E776F6E6B6E55;
  v82 = type metadata accessor for LogID(0);
  v3 = *(*(v82 - 8) + 64);
  __chkstk_darwin(v82);
  v83 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for Mirror();
  v5 = *(*(v90 - 8) + 64);
  __chkstk_darwin(v90);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*(v0 + 80) + 16) >= 2uLL && (v9 = *(v0 + 88)) != 0)
  {
    v80 = *(v0 + 80);
    v81 = v0;
    v89 = *(v9 + 16);
    if (v89)
    {
      v10 = 0;
      v11 = (v9 + 32);
      v87 = (v6 + 8);
      v88 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
      v86 = v9;
      while (1)
      {
        if (v10 >= *(v9 + 16))
        {
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        v12 = v11[2];
        v13 = *v11;
        *(&v92 + 1) = &type metadata for USBDescriptorControl;
        v84 = v13;
        v85 = v12;
        BYTE2(v91) = v12;
        LOWORD(v91) = v13;
        Mirror.init(reflecting:)();
        v14 = Mirror.children.getter();
        v15 = v14[2];
        v8 = v14[3];
        v16 = v14[4];
        v17 = v14[5];
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v18 = dispatch thunk of _AnyIndexBox._typeID.getter();
        swift_getObjectType();
        if (v18 != dispatch thunk of _AnyIndexBox._typeID.getter())
        {
          goto LABEL_43;
        }

        v19 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v19)
        {
          break;
        }

        dispatch thunk of _AnyCollectionBox.subscript.getter();

        v21 = v91;
        sub_10000CE78(&v92);
        v20 = *v87;
        ObjectType = 0x6E776F6E6B6E55;
        if (!*(&v21 + 1))
        {
          goto LABEL_12;
        }

        v8 = v88;
        v20(v88, v90);
        if (v21 == __PAIR128__(0xE800000000000000, 0x726F7463656C6573))
        {

LABEL_26:
          v40 = v81;
          swift_beginAccess();
          if (!swift_unknownObjectWeakLoadStrong())
          {
            goto LABEL_29;
          }

          v41 = v84 | (v85 << 16);
          v42 = *(v40 + 24);
          v43 = swift_getObjectType();
          *(&v92 + 1) = type metadata accessor for ActiveSelectorUnit();
          v93 = &protocol witness table for ActiveSelectorUnit;
          *&v91 = v40;
          v44 = *(v42 + 184);

          v45 = v44(v41 & 0xFFFFFF, 0, 0, &v91, v43, v42);
          v47 = v46;
          v48 = v45;
          swift_unknownObjectRelease();
          sub_10000CE78(&v91);
          if (v47)
          {
            v11 = v47;
            ADCControlRequestParameterBlock.getCur()(v11, v48 & 0x1FF, &v91);

            sub_100001AB4(&qword_1001755F0, &qword_100121AF0);
            if (swift_dynamicCast())
            {
              v8 = v94;
              *&v91 = 0;
              *(&v91 + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(44);

              *&v91 = 0x726F7463656C6553;
              *(&v91 + 1) = 0xE900000000000020;
              v63 = v81;
              *&v94 = *(v81 + 48);
              v64._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v64);

              v65._countAndFlagsBits = 0x69766564206E6F20;
              v65._object = 0xEB00000000206563;
              String.append(_:)(v65);
              if (swift_unknownObjectWeakLoadStrong())
              {
                v66 = *(v63 + 24);
                v67 = swift_getObjectType();
                active = ActiveFunction.deviceName.getter(v67, v66);
                v70 = v69;
                swift_unknownObjectRelease();
                goto LABEL_45;
              }

LABEL_44:
              v70 = 0xE700000000000000;
              active = ObjectType;
LABEL_45:
              v71._countAndFlagsBits = active;
              v71._object = v70;
              String.append(_:)(v71);

              v72._object = 0x800000010012C510;
              v72._countAndFlagsBits = 0xD000000000000012;
              String.append(_:)(v72);
              LOBYTE(v94) = v8;
              v73._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v73);

              v74 = v91;
              if (qword_100173CB8 != -1)
              {
                swift_once();
              }

              v75 = sub_10000A1BC(v82, qword_1001794F0);
              v76 = v83;
              sub_10000A2A4(v75, v83);
              if (qword_100173CC0 != -1)
              {
                swift_once();
              }

              v77 = type metadata accessor for AUALog(0);
              sub_10000A1BC(v77, qword_100179508);
              sub_100039AA0(2, v76, v74, *(&v74 + 1));

              sub_10000C9D0(v76);
              if (!v8 || *(v80 + 16) < v8)
              {
                sub_10000CA2C();
                v23 = swift_allocError();
                *v78 = 61;
                *(v78 + 8) = 0;
                *(v78 + 16) = 0xE000000000000000;
                swift_willThrow();

                v1 = v81;
                goto LABEL_17;
              }

LABEL_38:
              v1 = v81;
              goto LABEL_25;
            }
          }

          else
          {
LABEL_29:
            v93 = 0;
            v91 = 0u;
            v92 = 0u;
            sub_10000D040(&v91, &qword_100175790, &unk_100121070);
            v11 = 0;
          }

          *&v91 = 0;
          *(&v91 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(77);
          v49._countAndFlagsBits = 0xD00000000000002CLL;
          v49._object = 0x800000010012C4E0;
          String.append(_:)(v49);
          v50 = v81;
          *&v94 = *(v81 + 48);
          v51._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v51);

          v52._countAndFlagsBits = 0x69766564206E6F20;
          v52._object = 0xEB00000000206563;
          String.append(_:)(v52);
          if (swift_unknownObjectWeakLoadStrong())
          {
            v53 = *(v50 + 24);
            v54 = swift_getObjectType();
            ObjectType = ActiveFunction.deviceName.getter(v54, v53);
            v56 = v55;
            swift_unknownObjectRelease();
          }

          else
          {
            v56 = 0xE700000000000000;
          }

          v57._countAndFlagsBits = ObjectType;
          v57._object = v56;
          String.append(_:)(v57);

          v58._object = 0x800000010012C4C0;
          v58._countAndFlagsBits = 0xD000000000000012;
          String.append(_:)(v58);
          v59 = v91;
          if (qword_100173CB8 != -1)
          {
            swift_once();
          }

          v60 = sub_10000A1BC(v82, qword_1001794F0);
          v61 = v83;
          sub_10000A2A4(v60, v83);
          if (qword_100173CC0 != -1)
          {
            swift_once();
          }

          v62 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v62, qword_100179508);
          sub_100039F58(2, v61, v59, *(&v59 + 1));

          sub_10000C9D0(v61);
          LOBYTE(v8) = 1;
          goto LABEL_38;
        }

LABEL_13:
        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v22)
        {
          goto LABEL_26;
        }

        ++v10;
        v11 += 3;
        v9 = v86;
        if (v89 == v10)
        {
          goto LABEL_15;
        }
      }

      v20 = *v87;
      ObjectType = 0x6E776F6E6B6E55;
LABEL_12:
      v8 = v88;
      v20(v88, v90);

      goto LABEL_13;
    }

LABEL_15:
    sub_10000CA2C();
    v23 = swift_allocError();
    *v24 = 14;
    *(v24 + 8) = 0;
    *(v24 + 16) = 0xE000000000000000;
    swift_willThrow();
    v1 = v81;
  }

  else
  {
    sub_10000CA2C();
    v23 = swift_allocError();
    *v25 = 87;
    *(v25 + 8) = 0;
    *(v25 + 16) = 0xE000000000000000;
    swift_willThrow();
  }

LABEL_17:
  *&v91 = 0;
  *(&v91 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(59);
  v94 = v91;
  v26._countAndFlagsBits = 0x20726F727245;
  v26._object = 0xE600000000000000;
  String.append(_:)(v26);
  *&v91 = v23;
  sub_100001AB4(&qword_100177270, &qword_100120A40);
  _print_unlocked<A, B>(_:_:)();
  v27._object = 0x800000010012C4A0;
  v27._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v27);
  *&v91 = *(v1 + 48);
  v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v28);

  v29._countAndFlagsBits = 0x69766564206E6F20;
  v29._object = 0xEB00000000206563;
  String.append(_:)(v29);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v30 = *(v1 + 24);
    v31 = swift_getObjectType();
    ObjectType = ActiveFunction.deviceName.getter(v31, v30);
    v33 = v32;
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = 0xE700000000000000;
  }

  v34._countAndFlagsBits = ObjectType;
  v34._object = v33;
  String.append(_:)(v34);

  v35._object = 0x800000010012C4C0;
  v35._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v35);
  v36 = v94;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v37 = sub_10000A1BC(v82, qword_1001794F0);
  v38 = v83;
  sub_10000A2A4(v37, v83);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v39, qword_100179508);
  sub_100039F58(2, v38, v36, *(&v36 + 1));

  sub_10000C9D0(v38);
  LOBYTE(v8) = 1;
LABEL_25:
  *(v1 + 112) = v8;
}

uint64_t sub_100029758(uint64_t a1)
{
  v42 = type metadata accessor for Mirror();
  v4 = *(*(v42 - 8) + 64);
  result = __chkstk_darwin(v42);
  v8 = *(v1 + 88);
  if (!v8 || (v41 = *(v8 + 16)) == 0)
  {
LABEL_16:
    v24 = 14;
LABEL_17:
    sub_10000CA2C();
    swift_allocError();
    *v25 = v24;
    *(v25 + 8) = 0;
    *(v25 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  v33 = v2;
  v34 = a1;
  v35 = v1;
  v9 = 0;
  v10 = (v8 + 32);
  v39 = (v6 + 8);
  v40 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v8;
  while (1)
  {
    if (v9 >= *(v8 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }

    v47 = v9;
    v11 = *(v10 + 2);
    v12 = *v10;
    active = &type metadata for USBDescriptorControl;
    v36 = v12;
    v37 = v11;
    BYTE2(v43[0]) = v11;
    LOWORD(v43[0]) = v12;
    Mirror.init(reflecting:)();
    v13 = Mirror.children.getter();
    v15 = v13[2];
    v14 = v13[3];
    v17 = v13[4];
    v16 = v13[5];
    swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v18 = dispatch thunk of _AnyIndexBox._typeID.getter();
    swift_getObjectType();
    result = dispatch thunk of _AnyIndexBox._typeID.getter();
    if (v18 != result)
    {
      goto LABEL_24;
    }

    v19 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v19)
    {

      (*v39)(v40, v42);
LABEL_13:

      goto LABEL_14;
    }

    dispatch thunk of _AnyCollectionBox.subscript.getter();

    v20 = v43[0];
    v21 = v43[1];
    sub_10000CE78(&v44);
    v22 = *v39;
    if (!v21)
    {
      v22(v40, v42);
      goto LABEL_13;
    }

    v22(v40, v42);
    if (v20 == 0x726F7463656C6573 && v21 == 0xE800000000000000)
    {
      break;
    }

LABEL_14:
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v23)
    {
      goto LABEL_19;
    }

    v9 = v47 + 1;
    v10 = (v10 + 3);
    v8 = v38;
    if (v41 == v47 + 1)
    {
      goto LABEL_16;
    }
  }

LABEL_19:
  v26 = v35;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v24 = 69;
    goto LABEL_17;
  }

  v27 = v36 | (v37 << 16);
  v28 = *(v26 + 24);
  ObjectType = swift_getObjectType();
  active = type metadata accessor for ActiveSelectorUnit();
  v46 = &protocol witness table for ActiveSelectorUnit;
  v43[0] = v26;

  v30 = v27 & 0xFFFFFF;
  v31 = v33;
  v32 = v34;
  sub_100053170(v30, 0, 0, v43, v34, ObjectType, v28);
  swift_unknownObjectRelease();
  result = sub_10000CE78(v43);
  if (!v31)
  {
    *(v26 + 112) = v32;
  }

  return result;
}

uint64_t ActiveSelectorUnit.deinit()
{
  sub_100024174(v0 + 16);
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);

  return v0;
}

uint64_t ActiveSelectorUnit.__deallocating_deinit()
{
  sub_100024174(v0 + 16);
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);

  return swift_deallocClassInstance();
}

uint64_t sub_100029C60@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v6 = *(v4 + 48);
  v5 = *(v4 + 64);
  v12 = *(v4 + 96);
  v7 = *(v4 + 80);
  v11[2] = v5;
  v11[3] = v7;
  v11[0] = *(v4 + 32);
  v11[1] = v6;
  a2[3] = &type metadata for SelectorUnit;
  a2[4] = a1();
  v8 = swift_allocObject();
  *a2 = v8;
  memmove((v8 + 16), (v4 + 32), 0x48uLL);
  return sub_1000267DC(v11, v10);
}

uint64_t (*sub_100029CF4(uint64_t *a1))()
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
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_100026374;
}

uint64_t sub_100029D8C()
{
  v1 = *v0;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    LODWORD(v3) = (*(v3 + 40))(ObjectType, v3) == 32;
    swift_unknownObjectRelease();
    return (2 * v3);
  }

  return result;
}

Swift::Void __swiftcall AUAStreamSelectorControl.selectionDidChange(_:)(Swift::OpaquePointer_optional a1)
{
  v2 = v1;
  rawValue = a1.value._rawValue;
  v4 = type metadata accessor for LogID(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v2 owner];
  if (!v8)
  {
    return;
  }

  v99 = v8;
  active = type metadata accessor for AUAAudioDevice();
  v10 = swift_dynamicCastClass();
  if (!v10 || (v11 = v10, v12 = OBJC_IVAR____TtC9AUASDCore24AUAStreamSelectorControl_selectorUnit, (Strong = swift_weakLoadStrong()) == 0))
  {
    v21 = v99;

    return;
  }

  if (!rawValue)
  {

    return;
  }

  v100 = Strong;
  v97 = v4;
  v98 = v7;
  v14 = 0xD000000000000013;
  v15 = rawValue & 0xFFFFFFFFFFFFFF8;
  if (rawValue >> 62)
  {
    goto LABEL_88;
  }

  v16 = *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v16 <= 2)
  {
    *&aBlock = _swiftEmptyArrayStorage;
    while (1)
    {
      v92 = v12;
      v93 = v11;
      v94 = v2;
      v90 = active;
      v22 = _swiftEmptyArrayStorage;
      if (v16)
      {
        v11 = 0;
        v14 = rawValue & 0xC000000000000001;
        v12 = &selRef_modelUID;
        do
        {
          active = v11;
          while (1)
          {
            if (v14)
            {
              v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (active >= *(v15 + 16))
              {
                goto LABEL_85;
              }

              v23 = *(rawValue + 8 * active + 32);
            }

            v2 = v23;
            v11 = active + 1;
            if (__OFADD__(active, 1))
            {
LABEL_84:
              __break(1u);
LABEL_85:
              __break(1u);
              goto LABEL_86;
            }

            if ([v23 selected])
            {
              break;
            }

            ++active;
            if (v11 == v16)
            {
              goto LABEL_29;
            }
          }

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            active = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v22 = aBlock;
        }

        while (v11 != v16);
      }

LABEL_29:
      if (v22 >> 62)
      {
        if (v22 < 0)
        {
          rawValue = v22;
        }

        else
        {
          rawValue = v22 & 0xFFFFFFFFFFFFFF8;
        }

        v76 = _CocoaArrayWrapper.endIndex.getter();
        v14 = 0xD000000000000013;
        v15 = v93;
        v20 = v97;
        v19 = v98;
        if (v76 != 1 || !_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_95:

          sub_10000CA2C();
          v17 = swift_allocError();
          *v77 = 1;
          *(v77 + 8) = 0;
          *(v77 + 16) = 0xE000000000000000;
          swift_willThrow();
          goto LABEL_96;
        }
      }

      else
      {
        v14 = 0xD000000000000013;
        v15 = v93;
        v20 = v97;
        v19 = v98;
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
        {
          goto LABEL_95;
        }
      }

      if ((v22 & 0xC000000000000001) != 0)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_107;
        }

        v24 = *(v22 + 32);
      }

      rawValue = v24;

      v25 = [rawValue value];
      if (v25 > 0xFF)
      {
        break;
      }

      v26 = v25;
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(50);

      strcpy(&aBlock, "Selector Unit ");
      HIBYTE(aBlock) = -18;
      v27 = swift_weakLoadStrong();
      if (v27)
      {
        v28 = *(v27 + 48);
      }

      else
      {
        v28 = 0;
      }

      v91 = v26;
      v89 = rawValue;
      v107 = v28;
      v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v29);

      v30._countAndFlagsBits = 0x69766564206E6F20;
      v30._object = 0xEB00000000206563;
      String.append(_:)(v30);
      v31 = v100;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v32 = *(v31 + 24);
        ObjectType = swift_getObjectType();
        active = ActiveFunction.deviceName.getter(ObjectType, v32);
        v35 = v34;
        swift_unknownObjectRelease();
      }

      else
      {
        v35 = 0xE700000000000000;
        active = 0x6E776F6E6B6E55;
      }

      v36._countAndFlagsBits = active;
      v36._object = v35;
      String.append(_:)(v36);

      v37._object = 0x800000010012C2D0;
      v37._countAndFlagsBits = 0xD000000000000013;
      String.append(_:)(v37);
      LODWORD(active) = v91;
      LOBYTE(v108[0]) = v91;
      v38._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v38);

      rawValue = *(&aBlock + 1);
      v22 = aBlock;
      if (qword_100173CB8 != -1)
      {
        goto LABEL_108;
      }

LABEL_42:
      v39 = sub_10000A1BC(v20, qword_1001794F0);
      sub_10000A2A4(v39, v19);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v40, qword_100179508);
      sub_100039AA0(2, v19, v22, rawValue);

      sub_10000C9D0(v19);
      if (*(*(v100 + 80) + 16) < active)
      {
        sub_10000CA2C();
        v17 = swift_allocError();
        *v41 = 71;
        *(v41 + 8) = 0;
        *(v41 + 16) = 0xE000000000000000;
        swift_willThrow();

        goto LABEL_96;
      }

      v42 = AUAAudioDevice.inputAUAStreams()();
      if (v42 >> 62)
      {
        type metadata accessor for AUAStream(0);
        rawValue = _bridgeCocoaArray<A>(_:)();
      }

      else
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for AUAStream(0);
        rawValue = v42;
      }

      v11 = v100;

      active = AUAAudioDevice.outputAUAStreams()();
      if (active >> 62)
      {
        type metadata accessor for AUAStream(0);
        v2 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for AUAStream(0);
        v2 = active;
      }

      *&aBlock = rawValue;
      sub_10007DC24(v2);
      v43 = aBlock;
      v108[0] = _swiftEmptyArrayStorage;
      if (aBlock >> 62)
      {
        v44 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v44 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v88 = v43;
      if (!v44)
      {
        v95 = _swiftEmptyArrayStorage;
LABEL_72:

        v55 = v93;
        if (v95 >> 62)
        {
          v56 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v56 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v57 = v94;

        if (v56 <= 0)
        {
        }

        else
        {
          v58 = swift_weakLoadStrong();
          if (v58)
          {
            v59 = *(v58 + 112);

            v60 = v91;
            if (v59 == v91)
            {
LABEL_77:

              return;
            }
          }

          else
          {
            v60 = v91;
            if (!v91)
            {
              goto LABEL_77;
            }
          }

          v61 = swift_allocObject();
          *(v61 + 16) = v11;
          *(v61 + 24) = v60;
          *(v61 + 32) = v55;
          *(v61 + 40) = v57;
          *&aBlock = 0xD000000000000016;
          *(&aBlock + 1) = 0x800000010012C2F0;

          v62 = v99;
          v63 = v57;
          v64._countAndFlagsBits = 8236;
          v64._object = 0xE200000000000000;
          String.append(_:)(v64);
          v65._countAndFlagsBits = 0xD000000000000022;
          v65._object = 0x800000010012C310;
          String.append(_:)(v65);
          v66._countAndFlagsBits = 2108704;
          v66._object = 0xE300000000000000;
          String.append(_:)(v66);
          v108[0] = 301;
          v67._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v67);

          sub_100038CD8("AUAAudioDevice_requestConfigurationChange", 41, 2, aBlock, *(&aBlock + 1), &v55[OBJC_IVAR___AUAAudioDevice_logID]);

          v68 = *&v55[OBJC_IVAR___AUAAudioDevice_configChangedHandlers];
          v69 = swift_allocObject();
          *(v69 + 16) = sub_10002BCA0;
          *(v69 + 24) = v61;
          *&aBlock = sub_10000CF5C;
          *(&aBlock + 1) = v69;
          v70 = *(v68 + 16);
          v71 = __chkstk_darwin(v69);
          *(&v87 - 2) = v68;
          *(&v87 - 1) = &aBlock;
          __chkstk_darwin(v71);
          *(&v87 - 2) = sub_10000CF64;
          *(&v87 - 1) = v72;

          os_unfair_lock_lock(v70 + 4);
          sub_10000CF80(v108);
          os_unfair_lock_unlock(v70 + 4);
          LODWORD(v68) = LOBYTE(v108[0]);

          if (v68 == 1)
          {
            v73 = swift_allocObject();
            *(v73 + 16) = v55;
            v105 = sub_10000CFD4;
            v106 = v73;
            *&aBlock = _NSConcreteStackBlock;
            *(&aBlock + 1) = 1107296256;
            v103 = sub_1000172D4;
            v104 = &unk_100161718;
            v74 = _Block_copy(&aBlock);
            v75 = v62;

            v101.receiver = v55;
            v101.super_class = v90;
            objc_msgSendSuper2(&v101, "requestConfigurationChange:", v74);
            _Block_release(v74);
          }
        }

        return;
      }

      v12 = 0;
      v97 = v88 & 0xFFFFFFFFFFFFFF8;
      v98 = v88 & 0xC000000000000001;
      v96 = v88 + 32;
      v95 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v98)
        {
          v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *(v97 + 16))
          {
            goto LABEL_87;
          }

          v45 = *(v96 + 8 * v12);
        }

        rawValue = v45;
        if (__OFADD__(v12++, 1))
        {
          break;
        }

        v47 = &v45[OBJC_IVAR___AUAStream_path];
        v48 = *(v11 + 48);
        if (v48 != *(*&v45[OBJC_IVAR___AUAStream_path] + 88) && v48 != *(*(v47 + 1) + 72))
        {
          v14 = *(v47 + 2);
          v49 = *(v14 + 16);
          active = v14 + 32;

          v50 = v14 + 32;
          v15 = -v49;
          v2 = -1;
          while (1)
          {
            if (v15 + v2 == -1)
            {

              v11 = v100;

              goto LABEL_55;
            }

            ++v2;
            v51 = v100;
            if (v2 >= *(v14 + 16))
            {
              break;
            }

            v11 = v50 + 40;
            sub_10001EAFC(v50, &aBlock);
            v52 = *(v51 + 48);
            active = v104;
            v53 = v105;
            sub_10001EAB8(&aBlock, v104);
            v54 = (*(*(v53 + 1) + 48))(active);
            sub_10000CE78(&aBlock);
            v50 = v11;
            if (v52 == v54)
            {
              v11 = v100;

              goto LABEL_67;
            }
          }

          __break(1u);
          goto LABEL_84;
        }

LABEL_67:
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v108[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          active = *((v108[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v95 = v108[0];
LABEL_55:
        if (v12 == v44)
        {
          goto LABEL_72;
        }
      }

LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      if (_CocoaArrayWrapper.endIndex.getter() > 2)
      {
        goto LABEL_7;
      }

      *&aBlock = _swiftEmptyArrayStorage;
      v16 = _CocoaArrayWrapper.endIndex.getter();
    }

    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    swift_once();
    goto LABEL_42;
  }

LABEL_7:
  sub_10000CA2C();
  v17 = swift_allocError();
  *v18 = 1;
  *(v18 + 8) = 0;
  *(v18 + 16) = 0xE000000000000000;
  swift_willThrow();
  v20 = v97;
  v19 = v98;
LABEL_96:
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(53);
  v78._countAndFlagsBits = 0x726F7463656C6553;
  v78._object = 0xEE002074696E5520;
  String.append(_:)(v78);
  v79 = swift_weakLoadStrong();
  if (v79)
  {
    v80 = *(v79 + 48);
  }

  else
  {
    v80 = 0;
  }

  v108[0] = v80;
  v81._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v81);

  v82._countAndFlagsBits = 0x726F727245202D20;
  v82._object = 0xE900000000000020;
  String.append(_:)(v82);
  v108[0] = v17;
  sub_100001AB4(&qword_100177270, &qword_100120A40);
  _print_unlocked<A, B>(_:_:)();
  v83._countAndFlagsBits = v14 + 7;
  v83._object = 0x800000010012C2B0;
  String.append(_:)(v83);
  v84 = aBlock;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v85 = sub_10000A1BC(v20, qword_1001794F0);
  sub_10000A2A4(v85, v19);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v86 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v86, qword_100179508);
  sub_100039F58(2, v19, v84, *(&v84 + 1));

  sub_10000C9D0(v19);
}

void sub_10002B218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100029758(a2);
  AUAAudioDevice.createStreams()();
  AUAAudioDevice.publishStreamFormats()();
  if (v4 || (AUAAudioDevice.addGlobalControls()(), v5) || (AUAAudioDevice.addStreamControls()(), v6))
  {
    _StringGuts.grow(_:)(48);
    v7._countAndFlagsBits = 0x726F7463656C6553;
    v7._object = 0xEE002074696E5520;
    String.append(_:)(v7);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v9 = *(Strong + 48);
    }

    v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v10);

    v11._countAndFlagsBits = 0x726F727245202D20;
    v11._object = 0xE900000000000020;
    String.append(_:)(v11);
    sub_100001AB4(&qword_100177270, &qword_100120A40);
    _print_unlocked<A, B>(_:_:)();
    v12._object = 0x800000010012C460;
    v12._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v12);
    v13 = OBJC_IVAR___AUAAudioDevice_logID;
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v14, qword_100179508);
    sub_100039F58(2, a3 + v13, 0, 0xE000000000000000);
  }
}

id AUAStreamSelectorControl.__allocating_init(isSettable:forElement:inScope:with:andObjectClassID:)(char a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = [objc_allocWithZone(v5) initWithIsSettable:a1 & 1 forElement:a2 inScope:a3 withPlugin:a4 andObjectClassID:a5];

  return v7;
}

id AUAStreamSelectorControl.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AUAStreamSelectorControl();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10002B5B0()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = *(Strong + 48);

  return v1;
}

uint64_t sub_10002B5F4()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100028BD8();
  }

  return result;
}

unint64_t sub_10002B660()
{
  result = qword_1001755E8;
  if (!qword_1001755E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001755E8);
  }

  return result;
}

void sub_10002B6D8(unsigned __int8 a1)
{
  v2 = v1;
  v4 = a1;
  v5 = type metadata accessor for LogID(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (v4)
  {
    v47 = 0;
    v48 = 0xE000000000000000;
    _StringGuts.grow(_:)(59);
    v45 = v47;
    v46 = v48;
    v9._object = 0x800000010012C480;
    v9._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v9);
    v47 = *(v2 + 48);
    v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v10);

    v11._countAndFlagsBits = 0x69766564206E6F20;
    v11._object = 0xEB00000000206563;
    String.append(_:)(v11);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v12 = *(v2 + 24);
      ObjectType = swift_getObjectType();
      active = ActiveFunction.deviceName.getter(ObjectType, v12);
      v16 = v15;
      swift_unknownObjectRelease();
    }

    else
    {
      active = 0x6E776F6E6B6E55;
      v16 = 0xE700000000000000;
    }

    v27._countAndFlagsBits = active;
    v27._object = v16;
    String.append(_:)(v27);

    v28._countAndFlagsBits = 0x7474612064616220;
    v28._object = 0xEF20657475626972;
    String.append(_:)(v28);
    LOBYTE(v43) = a1;
    _print_unlocked<A, B>(_:_:)();
    v29 = v45;
    v30 = v46;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v31 = sub_10000A1BC(v5, qword_1001794F0);
    sub_10000A2A4(v31, v8);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v32, qword_100179508);
    v33 = 2;
    sub_100039F58(2, v8, v29, v30);

    sub_10000C9D0(v8);
    goto LABEL_13;
  }

  swift_beginAccess();
  v17 = *(v2 + 104);
  if (!v17)
  {
    v33 = 14;
LABEL_13:
    sub_10000CA2C();
    swift_allocError();
    *v34 = v33;
    *(v34 + 8) = 0;
    *(v34 + 16) = 0xE000000000000000;
    swift_willThrow();
    return;
  }

  v18 = v17;
  sub_100028BD8();
  v45 = 0;
  v46 = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  v43 = v45;
  v44 = v46;
  v19._object = 0x800000010012C480;
  v19._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v19);
  v45 = *(v2 + 48);
  v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v20);

  v21._countAndFlagsBits = 0x69766564206E6F20;
  v21._object = 0xEB00000000206563;
  String.append(_:)(v21);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v22 = *(v2 + 24);
    v23 = swift_getObjectType();
    v24 = ActiveFunction.deviceName.getter(v23, v22);
    v26 = v25;
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0x6E776F6E6B6E55;
    v26 = 0xE700000000000000;
  }

  v35._countAndFlagsBits = v24;
  v35._object = v26;
  String.append(_:)(v35);

  v36._countAndFlagsBits = 0x2073692052554320;
  v36._object = 0xEC00000020776F6ELL;
  String.append(_:)(v36);
  v42[7] = *(v2 + 112);
  v37._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v37);

  v38 = v43;
  v39 = v44;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v40 = sub_10000A1BC(v5, qword_1001794F0);
  sub_10000A2A4(v40, v8);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v41, qword_100179508);
  sub_100039AA0(2, v8, v38, v39);

  sub_10000C9D0(v8);
  LODWORD(v43) = *(v2 + 112);
  [v18 setSelectedValues:&v43 withCount:1];
}

uint64_t sub_10002BC58()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002BCB0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002BCE8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002BD20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10002BD38()
{
  result = qword_100175788;
  if (!qword_100175788)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100175788);
  }

  return result;
}

Swift::Int LockDelay.LockDelayUnits.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_10002BE28()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10002BE9C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t ActiveClockSource.rateRanges.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t ActiveClockSource.rateRanges.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t ActiveClockSource.isSettable.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t ActiveClockSource.isValid.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 104) = a1;
  return result;
}

uint64_t ActiveClockSource.function.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 120);
  return result;
}

uint64_t ActiveClockSource.function.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 120) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*ActiveClockSource.function.modify(uint64_t *a1))()
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 120);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_10002C2D8;
}

uint64_t ActiveClockSource.name.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t ActiveClockSource.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 136);
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
}

unint64_t sub_10002C3E4()
{
  result = qword_100175798;
  if (!qword_100175798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175798);
  }

  return result;
}

uint64_t sub_10002C438()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10002C490@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v4 = v2[3];
  v11[0] = v2[2];
  v11[1] = v4;
  v5 = v2[5];
  v11[2] = v2[4];
  v11[3] = v5;
  a2[3] = &type metadata for ClockSource;
  a2[4] = a1();
  v6 = swift_allocObject();
  *a2 = v6;
  v7 = v2[3];
  v6[1] = v2[2];
  v6[2] = v7;
  v8 = v2[5];
  v6[3] = v2[4];
  v6[4] = v8;
  return sub_10002C080(v11, &v10);
}

unint64_t sub_10002C514()
{
  result = qword_1001757A0;
  if (!qword_1001757A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001757A0);
  }

  return result;
}

uint64_t sub_10002C590(_OWORD *a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v44 = type metadata accessor for Mirror();
  v8 = *(v44 - 8);
  v9 = v8[8];
  __chkstk_darwin(v44);
  v49 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = 0;
  *(v2 + 104) = 0;
  *(v2 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 144) = 0;
  v11 = OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_logID;
  ObjectType = "ActiveClockSource";
  if (qword_100173CB8 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v13 = ObjectType - 32;
    v14 = type metadata accessor for LogID(0);
    ObjectType = sub_10000A1BC(v14, qword_1001794F0);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v15, qword_100179508);
    sub_100039740(0xD000000000000011, (v13 | 0x8000000000000000), ObjectType, (v5 + v11));
    *(v5 + OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_lastSamplingRateChangedTimestamp) = 0;
    v16 = v5 + OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_cachedSamplingRate;
    *v16 = 0;
    *(v16 + 8) = 1;
    v43 = *(a2 + 16);
    if (!v43)
    {
      break;
    }

    v36[0] = v11;
    v36[1] = v4;
    v37 = a1;
    v38 = v5;
    v11 = 0;
    v17 = 32;
    v41 = (v8 + 1);
    v42 = a2;
    while (v11 < *(a2 + 16))
    {
      v45 = v17;
      v18 = (a2 + v17);
      v19 = *(a2 + v17 + 2);
      v20 = *v18;
      v48[1] = &type metadata for USBDescriptorControl;
      v39 = v20;
      v40 = v19;
      BYTE2(v46) = v19;
      LOWORD(v46) = v20;
      Mirror.init(reflecting:)();
      v8 = Mirror.children.getter();
      v21 = v8[2];
      v5 = v8[3];
      a2 = v8[4];
      a1 = v8[5];
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v4 = dispatch thunk of _AnyIndexBox._typeID.getter();
      swift_getObjectType();
      if (v4 != dispatch thunk of _AnyIndexBox._typeID.getter())
      {
        goto LABEL_24;
      }

      v22 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v22)
      {

        a2 = v42;
        (*v41)(v49, v44);
LABEL_15:

        goto LABEL_16;
      }

      dispatch thunk of _AnyCollectionBox.subscript.getter();

      v23 = v46;
      v24 = v47;
      sub_10000CE78(v48);
      a2 = v42;
      v25 = *v41;
      if (!v24)
      {
        v25(v49, v44);
        goto LABEL_15;
      }

      v25(v49, v44);
      if (v23 == 0x636E657571657266 && v24 == 0xE900000000000079)
      {

LABEL_21:
        v31 = LockDelay.units.getter(v39);
        v5 = v38;
        *(v38 + 24) = v31 & 1;
        v32 = v37;
        v33 = v37[1];
        *(v5 + 32) = *v37;
        *(v5 + 48) = v33;
        v34 = v32[3];
        *(v5 + 64) = v32[2];
        *(v5 + 80) = v34;
        *(v5 + 96) = a2;
        return v5;
      }

LABEL_16:
      ObjectType = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (ObjectType)
      {
        goto LABEL_21;
      }

      ++v11;
      v17 = v45 + 3;
      if (v43 == v11)
      {

        sub_1000383FC(v37);
        v5 = v38;
        v11 = v36[0];
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
  }

  sub_1000383FC(a1);
LABEL_20:
  sub_10000CA2C();
  swift_allocError();
  *v26 = 15;
  *(v26 + 8) = 0;
  *(v26 + 16) = 0xE000000000000000;
  swift_willThrow();
  v27 = *(v5 + 16);

  sub_100024174(v5 + 112);
  v28 = *(v5 + 136);

  sub_10000C9D0(v5 + v11);
  type metadata accessor for ActiveClockSource(0);
  v29 = *(*v5 + 48);
  v30 = *(*v5 + 52);
  swift_deallocPartialClassInstance();
  return v5;
}

void *sub_10002CA74()
{
  *&v51 = type metadata accessor for Mirror();
  v1 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v45 = v0;
  v52 = *(v0 + 96);
  v50 = *(v52 + 16);
  if (!v50)
  {
LABEL_15:
    sub_10000CA2C();
    swift_allocError();
    v19 = 15;
LABEL_16:
    *v18 = v19;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0xE000000000000000;
    swift_willThrow();
    return v0;
  }

  v4 = 0;
  v5 = (v52 + 32);
  v48 = (v2 + 8);
  v49 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  while (1)
  {
    if (v4 >= *(v52 + 16))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v53 = v4;
    v6 = *(v5 + 2);
    v7 = *v5;
    active = &type metadata for USBDescriptorControl;
    v46 = v7;
    v47 = v6;
    BYTE2(v56[0]) = v6;
    LOWORD(v56[0]) = v7;
    Mirror.init(reflecting:)();
    v8 = Mirror.children.getter();
    v9 = v8[2];
    v10 = v8[3];
    v11 = v8[4];
    v12 = v8[5];
    swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v13 = dispatch thunk of _AnyIndexBox._typeID.getter();
    swift_getObjectType();
    if (v13 != dispatch thunk of _AnyIndexBox._typeID.getter())
    {
      goto LABEL_33;
    }

    v14 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v14)
    {

      (*v48)(v49, v51);
LABEL_12:

      goto LABEL_13;
    }

    dispatch thunk of _AnyCollectionBox.subscript.getter();

    v16 = v56[0];
    v15 = v56[1];
    sub_10000CE78(&v57);
    v17 = *v48;
    if (!v15)
    {
      v17(v49, v51);
      goto LABEL_12;
    }

    v17(v49, v51);
    if (v16 == 0x636E657571657266 && v15 == 0xE900000000000079)
    {
      break;
    }

LABEL_13:
    v0 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v0)
    {
      goto LABEL_18;
    }

    v4 = v53 + 1;
    v5 = (v5 + 3);
    if (v50 == v53 + 1)
    {
      goto LABEL_15;
    }
  }

LABEL_18:
  v0 = v45;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_10000CA2C();
    swift_allocError();
    v19 = 69;
    goto LABEL_16;
  }

  v22 = Strong;
  v23 = v46 | (v47 << 16);
  v24 = *(v0 + 120);
  ObjectType = swift_getObjectType();
  active = type metadata accessor for ActiveClockSource(0);
  v59 = &protocol witness table for ActiveClockSource;
  v56[0] = v0;
  v26 = *(v24 + 200);

  v0 = v22;
  v27 = v44;
  v28 = v26(v23 & 0xFFFFFF, 0, 0, v56, ObjectType, v24);
  if (v27)
  {
    swift_unknownObjectRelease();
    sub_10000CE78(v56);
    return v0;
  }

  v31 = v29;
  v32 = v28;
  v0 = v30;
  sub_10000CE78(v56);
  if (USBDescriptorControl.pbLayout()() != AUASDCore_tADCControlRequestParameterBlockLayout_Layout3PB)
  {
    sub_10000CA2C();
    swift_allocError();
    *v43 = 32;
    *(v43 + 8) = 0;
    *(v43 + 16) = 0xE000000000000000;
    swift_willThrow();
    swift_unknownObjectRelease();

    return v0;
  }

  v33 = sub_10009D018(v32 & 0x1FF, v31);
  v34 = *(v33 + 16);
  if (!v34)
  {
    swift_unknownObjectRelease();

    return _swiftEmptyArrayStorage;
  }

  v52 = v22;
  v53 = v31;
  v60 = _swiftEmptyArrayStorage;
  sub_100046F70(0, v34, 0);
  v35 = 0;
  v0 = v60;
  v36 = v33 + 32;
  while (v35 < *(v33 + 16))
  {
    v37 = v34;
    sub_10001EAFC(v36, v56);
    sub_10002D038(v56, &v54);
    sub_10000CE78(v56);
    v38 = v54;
    v39 = v55;
    v60 = v0;
    v41 = *(v0 + 16);
    v40 = *(v0 + 24);
    if (v41 >= v40 >> 1)
    {
      v51 = v54;
      sub_100046F70((v40 > 1), v41 + 1, 1);
      v38 = v51;
      v0 = v60;
    }

    ++v35;
    *(v0 + 16) = v41 + 1;
    v42 = v0 + 24 * v41;
    *(v42 + 32) = v38;
    *(v42 + 48) = v39;
    v36 += 40;
    v34 = v37;
    if (v37 == v35)
    {
      swift_unknownObjectRelease();

      return v0;
    }
  }

LABEL_34:
  __break(1u);
  sub_10000CE78(v56);

  __break(1u);
  return result;
}

uint64_t sub_10002D038@<X0>(void *a1@<X0>, uint64_t **a2@<X8>)
{
  v90 = a2;
  v2 = a1[3];
  v3 = a1[4];
  v91 = a1;
  sub_10001EAB8(a1, v2);
  (*(v3 + 8))(v98, v2, v3);
  v5 = v99;
  v4 = v100;
  v6 = sub_10001EAB8(v98, v99);
  v7 = *(v5 - 8);
  v8 = v7[8];
  __chkstk_darwin(v6);
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  (v7[2])(&v85 - v9);
  v10 = *(v4 + 8);
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    v11 = *(v10[3] + 16);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v88 = &v85;
    v13 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(AssociatedTypeWitness);
    v89 = v10;
    swift_getAssociatedConformanceWitness();
    v14 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    v87 = &v85;
    __chkstk_darwin(v14);
    v10 = v89;
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v15 = *(v10[4] + 8);
    LOBYTE(v11) = dispatch thunk of static Comparable.>= infix(_:_:)();
    result = (v7[1])(&v85 - v9, v5);
    if ((v11 & 1) == 0)
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }
  }

  if (dispatch thunk of BinaryInteger.bitWidth.getter() > 63)
  {
    v95[0] = -1;
    v17 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v18 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v17)
    {
      if (v18 <= 64)
      {
        v19 = v10[3];
        v89 = v7;
        v20 = v8;
        v21 = *(v19 + 16);
        v22 = swift_getAssociatedTypeWitness();
        v88 = &v85;
        v23 = (*(*(v22 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        __chkstk_darwin(v22);
        swift_getAssociatedConformanceWitness();
        v24 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        __chkstk_darwin(v24);
        v25 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
        v7 = v89;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v26 = *(v10[4] + 8);
        v27 = dispatch thunk of static Comparable.> infix(_:_:)();
        (v7[1])(v25, v5);
        if ((v27 & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }
    }

    else if (v18 < 65)
    {
LABEL_11:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_12;
    }

    __chkstk_darwin(v18);
    sub_1000384E4();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v28 = *(v10[4] + 8);
    v29 = dispatch thunk of static Comparable.< infix(_:_:)();
    (v7[1])(&v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
    if (v29)
    {
      __break(1u);
      goto LABEL_11;
    }
  }

LABEL_12:
  v88 = dispatch thunk of BinaryInteger._lowWord.getter();
  (v7[1])(&v85 - v9, v5);
  v30 = v91[3];
  v31 = v91[4];
  sub_10001EAB8(v91, v30);
  (*(v31 + 24))(v95, v30, v31);
  v33 = v96;
  v32 = v97;
  v34 = sub_10001EAB8(v95, v96);
  v89 = &v85;
  v35 = *(v33 - 8);
  v36 = v35[8];
  __chkstk_darwin(v34);
  v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  (v35[2])(&v85 - v37);
  v38 = *(v32 + 8);
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    v39 = *(*(v38 + 24) + 16);
    v40 = swift_getAssociatedTypeWitness();
    v86 = &v85;
    v41 = (*(*(v40 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v40);
    v87 = v35;
    swift_getAssociatedConformanceWitness();
    v42 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    v85 = &v85;
    __chkstk_darwin(v42);
    v35 = v87;
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v43 = *(*(v38 + 32) + 8);
    LOBYTE(v39) = dispatch thunk of static Comparable.>= infix(_:_:)();
    result = (v35[1])(&v85 - v37, v33);
    if ((v39 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  if (dispatch thunk of BinaryInteger.bitWidth.getter() > 63)
  {
    v92[0] = -1;
    v44 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v45 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v44)
    {
      if (v45 <= 64)
      {
        v46 = *(*(v38 + 24) + 16);
        v47 = swift_getAssociatedTypeWitness();
        v86 = &v85;
        v48 = (*(*(v47 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        __chkstk_darwin(v47);
        v87 = v35;
        swift_getAssociatedConformanceWitness();
        v49 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        __chkstk_darwin(v49);
        v35 = v87;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v50 = *(*(v38 + 32) + 8);
        LOBYTE(v46) = dispatch thunk of static Comparable.> infix(_:_:)();
        (v35[1])(&v85 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), v33);
        if ((v46 & 1) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }

    else if (v45 < 65)
    {
LABEL_22:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_23;
    }

    __chkstk_darwin(v45);
    sub_1000384E4();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v51 = *(*(v38 + 32) + 8);
    v52 = dispatch thunk of static Comparable.< infix(_:_:)();
    (v35[1])(&v85 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), v33);
    if (v52)
    {
      __break(1u);
      goto LABEL_22;
    }
  }

LABEL_23:
  v53 = dispatch thunk of BinaryInteger._lowWord.getter();
  v54 = v35;
  v55 = v53;
  (v54[1])(&v85 - v37, v33);
  v56 = v91[3];
  v57 = v91[4];
  sub_10001EAB8(v91, v56);
  (*(v57 + 40))(v92, v56, v57);
  v59 = v93;
  v58 = v94;
  v60 = sub_10001EAB8(v92, v93);
  v89 = &v85;
  v61 = *(v59 - 8);
  v62 = v61[8];
  __chkstk_darwin(v60);
  v63 = (v62 + 15) & 0xFFFFFFFFFFFFFFF0;
  v64 = &v85 - v63;
  (v61[2])(&v85 - v63);
  v65 = *(v58 + 8);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    goto LABEL_25;
  }

  v66 = *(*(v65 + 24) + 16);
  v67 = swift_getAssociatedTypeWitness();
  v91 = v61;
  v86 = &v85;
  v68 = (*(*(v67 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v67);
  v87 = v55;
  swift_getAssociatedConformanceWitness();
  v69 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v85 = &v85;
  __chkstk_darwin(v69);
  v55 = v87;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v70 = *(*(v65 + 32) + 8);
  LOBYTE(v66) = dispatch thunk of static Comparable.>= infix(_:_:)();
  v61 = v91;
  result = (v91[1])(&v85 - v63, v59);
  if (v66)
  {
LABEL_25:
    if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 63)
    {
      goto LABEL_35;
    }

    v101 = -1;
    v71 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v72 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v71)
    {
      v91 = v61;
      if (v72 <= 64)
      {
LABEL_33:
        v78 = *(*(v65 + 24) + 16);
        v79 = swift_getAssociatedTypeWitness();
        v86 = &v85;
        v80 = (*(*(v79 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        __chkstk_darwin(v79);
        v87 = v55;
        swift_getAssociatedConformanceWitness();
        v81 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        __chkstk_darwin(v81);
        v55 = v87;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v82 = *(*(v65 + 32) + 8);
        LOBYTE(v78) = dispatch thunk of static Comparable.> infix(_:_:)();
        v61 = v91;
        (v91[1])(&v85 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0), v59);
        if (v78)
        {
          goto LABEL_34;
        }

LABEL_35:
        v83 = dispatch thunk of BinaryInteger._lowWord.getter();
        (v61[1])(v64, v59);
        sub_10000CE78(v92);
        sub_10000CE78(v95);
        result = sub_10000CE78(v98);
        v84 = v90;
        *v90 = v88;
        v84[1] = v55;
        v84[2] = v83;
        return result;
      }

      __chkstk_darwin(v72);
      v73 = &v85 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1000384E4();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v74 = *(*(v65 + 32) + 8);
      v75 = dispatch thunk of static Comparable.< infix(_:_:)();
      v76 = v91;
    }

    else
    {
      if (v72 < 65)
      {
LABEL_34:
        dispatch thunk of BinaryInteger._lowWord.getter();
        goto LABEL_35;
      }

      v76 = v61;
      __chkstk_darwin(v72);
      v73 = &v85 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1000384E4();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v77 = *(*(v65 + 32) + 8);
      v75 = dispatch thunk of static Comparable.< infix(_:_:)();
    }

    (v76[1])(v73, v59);
    v61 = v76;
    if ((v75 & 1) == 0)
    {
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_33;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_10002DF80()
{
  v82 = type metadata accessor for Mirror();
  v3 = *(*(v82 - 1) + 64);
  __chkstk_darwin(v82);
  v76 = v1;
  v83 = *(v1 + 96);
  v81 = *(v83 + 16);
  if (v81)
  {
    v6 = 0;
    v7 = v83 + 32;
    v8 = v4 + 8;
    v79 = (v4 + 8);
    v80 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    while (1)
    {
      if (v6 >= *(v83 + 16))
      {
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v84 = v6;
      v9 = *(v7 + 2);
      v10 = *v7;
      active = &type metadata for USBDescriptorControl;
      v77 = v10;
      v78 = v9;
      BYTE2(v85[0]) = v9;
      LOWORD(v85[0]) = v10;
      Mirror.init(reflecting:)();
      v11 = Mirror.children.getter();
      v13 = v11[2];
      v12 = v11[3];
      v0 = v11[4];
      v8 = v11[5];
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v14 = dispatch thunk of _AnyIndexBox._typeID.getter();
      swift_getObjectType();
      v1 = v0;
      if (v14 != dispatch thunk of _AnyIndexBox._typeID.getter())
      {
        goto LABEL_42;
      }

      v15 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v15)
      {
        break;
      }

      dispatch thunk of _AnyCollectionBox.subscript.getter();

      v1 = v85[0];
      v0 = v85[1];
      sub_10000CE78(&v86);
      v8 = v79;
      v16 = *v79;
      ObjectType = 0x6E776F6E6B6E55;
      if (!v0)
      {
        goto LABEL_11;
      }

      v16(v80, v82);
      if (v1 == 0x636E657571657266 && v0 == 0xE900000000000079)
      {

LABEL_16:
        v19 = v76;
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v1 = Strong;
          v8 = v77 | (v78 << 16);
          v21 = *(v19 + 120);
          v22 = swift_getObjectType();
          active = type metadata accessor for ActiveClockSource(0);
          v88 = &protocol witness table for ActiveClockSource;
          v85[0] = v19;
          v23 = *(v21 + 184);

          v24 = v75;
          v25 = v23(v8 & 0xFFFFFF, 0, 0, v85, v22, v21);
          if (v24)
          {
            swift_unknownObjectRelease();
            sub_10000CE78(v85);
            goto LABEL_20;
          }

          v39 = v25;
          v40 = v26;
          swift_unknownObjectRelease();
          sub_10000CE78(v85);
          v41 = v40;
          ADCControlRequestParameterBlock.getCur()(v41, v39 & 0x1FF, v85);

          v43 = active;
          v42 = v88;
          v44 = sub_10001EAB8(v85, active);
          v45 = &v75;
          v46 = *(v43[-1].Description + 8);
          __chkstk_darwin(v44);
          v83 = v48;
          v84 = v47;
          v49 = (v48 + 15) & 0xFFFFFFFFFFFFFFF0;
          v50 = &v75 - v49;
          (*(v47 + 16))(&v75 - v49);
          v51 = v42[1];
          if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
          {
            goto LABEL_31;
          }

          v52 = v51[3];
          v82 = &v75;
          v53 = *(v52 + 16);
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          v81 = &v75;
          v55 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          __chkstk_darwin(AssociatedTypeWitness);
          swift_getAssociatedConformanceWitness();
          v56 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          v80 = &v75;
          __chkstk_darwin(v56);
          v45 = v82;
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v57 = *(v51[4] + 8);
          v58 = dispatch thunk of static Comparable.>= infix(_:_:)();
          result = (*(v84 + 8))(&v75 - v49, v43);
          if (v58)
          {
LABEL_31:
            if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
            {
              goto LABEL_40;
            }

            v89 = -1;
            v59 = dispatch thunk of static BinaryInteger.isSigned.getter();
            v60 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v59)
            {
              if (v60 <= 64)
              {
                v61 = v51[3];
                v82 = v45;
                v62 = *(v61 + 16);
                v63 = swift_getAssociatedTypeWitness();
                v81 = &v75;
                v64 = (*(*(v63 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
                __chkstk_darwin(v63);
                swift_getAssociatedConformanceWitness();
                v65 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v80 = &v75;
                __chkstk_darwin(v65);
                v67 = &v75 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v68 = *(v51[4] + 8);
                v69 = dispatch thunk of static Comparable.> infix(_:_:)();
                (*(v84 + 8))(v67, v43);
                if (v69)
                {
LABEL_39:
                  dispatch thunk of BinaryInteger._lowWord.getter();
                }

                goto LABEL_40;
              }
            }

            else if (v60 < 65)
            {
              goto LABEL_39;
            }

            __chkstk_darwin(v60);
            v71 = &v75 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000384E4();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v72 = *(v51[4] + 8);
            v73 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v84 + 8))(v71, v43);
            if (v73)
            {
              __break(1u);
              goto LABEL_39;
            }

LABEL_40:
            ObjectType = dispatch thunk of BinaryInteger._lowWord.getter();
            (*(v84 + 8))(v50, v43);
            sub_10000CE78(v85);
            strcpy(v85, "samplingRate ");
            HIWORD(v85[1]) = -4864;
            v89 = ObjectType;
            v74._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v74);

            sub_100038CD8("ActiveClockSource_getSamplingRate", 33, 2, v85[0], v85[1], v76 + OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_logID);

            return ObjectType;
          }

          __break(1u);
          return result;
        }

        sub_10000CA2C();
        swift_allocError();
        *v27 = 69;
        *(v27 + 8) = 0;
        *(v27 + 16) = 0xE000000000000000;
        swift_willThrow();
LABEL_20:
        v0 = _convertErrorToNSError(_:)();
        v7 = [v0 code];

        if (v7 >= 0xFFFFFFFF80000000)
        {
          if (v7 <= 0x7FFFFFFF)
          {
            v85[0] = 0;
            v85[1] = 0xE000000000000000;
            _StringGuts.grow(_:)(33);
            v28 = v76;
            if (swift_unknownObjectWeakLoadStrong())
            {
              v29 = *(v28 + 120);
              v30 = swift_getObjectType();
              ObjectType = ActiveFunction.deviceName.getter(v30, v29);
              v32 = v31;
              swift_unknownObjectRelease();
            }

            else
            {
              v32 = 0xE700000000000000;
            }

            v33._countAndFlagsBits = ObjectType;
            v33._object = v32;
            String.append(_:)(v33);

            v34._countAndFlagsBits = 0x20726F72724520;
            v34._object = 0xE700000000000000;
            String.append(_:)(v34);
            sub_100001AB4(&qword_100173C98, &unk_100120120);
            v35 = swift_allocObject();
            *(v35 + 16) = xmmword_10011DE90;
            *(v35 + 56) = &type metadata for Int32;
            *(v35 + 64) = &protocol witness table for Int32;
            *(v35 + 32) = v7;
            v36._countAndFlagsBits = String.init(format:_:)();
            String.append(_:)(v36);

            v37._object = 0x800000010012CC00;
            v37._countAndFlagsBits = 0xD000000000000016;
            String.append(_:)(v37);
            v1 = v85[0];
            v0 = v85[1];
            v8 = OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_logID;
            if (qword_100173CC0 == -1)
            {
              goto LABEL_26;
            }

            goto LABEL_45;
          }

LABEL_44:
          __break(1u);
LABEL_45:
          swift_once();
LABEL_26:
          v38 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v38, qword_100179508);
          sub_100039F58(3, v76 + v8, v1, v0);

          if (v7 == -536850432)
          {

            return 0;
          }

          else
          {
            swift_willThrow();
          }

          return ObjectType;
        }

LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

LABEL_12:
      v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v1)
      {
        goto LABEL_16;
      }

      v6 = v84 + 1;
      v7 += 3;
      if (v81 == (v84 + 1))
      {
        goto LABEL_14;
      }
    }

    v8 = v79;
    v16 = *v79;
    ObjectType = 0x6E776F6E6B6E55;
LABEL_11:
    v16(v80, v82);

    v0 = 0xE700000000000000;
    goto LABEL_12;
  }

LABEL_14:
  sub_10000CA2C();
  swift_allocError();
  *v17 = 15;
  *(v17 + 8) = 0;
  *(v17 + 16) = 0xE000000000000000;
  swift_willThrow();
  return ObjectType;
}

BOOL sub_10002EB04()
{
  v52 = type metadata accessor for Mirror();
  v3 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52);
  ObjectType = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 96);
  v51 = *(v7 + 16);
  if (v51)
  {
    v45 = v2;
    v46 = v1;
    v8 = 0;
    v9 = (v7 + 32);
    v49 = (v4 + 8);
    v50 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v48 = v7;
    while (1)
    {
      if (v8 >= *(v7 + 16))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v53 = v8;
      v10 = *(v9 + 2);
      v11 = *v9;
      active = &type metadata for USBDescriptorControl;
      v59 = v10;
      BYTE2(v54) = v10;
      v47 = v11;
      LOWORD(v54) = v11;
      Mirror.init(reflecting:)();
      v12 = Mirror.children.getter();
      v13 = v12[2];
      v0 = v12[3];
      ObjectType = v12[4];
      v14 = v12[5];
      swift_getObjectType();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v15 = dispatch thunk of _AnyIndexBox._typeID.getter();
      swift_getObjectType();
      v1 = ObjectType;
      if (v15 != dispatch thunk of _AnyIndexBox._typeID.getter())
      {
        goto LABEL_33;
      }

      v16 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v16)
      {
        break;
      }

      dispatch thunk of _AnyCollectionBox.subscript.getter();

      v1 = v54;
      v0 = v55;
      sub_10000CE78(&v56);
      ObjectType = v50;
      v18 = *v49;
      v17 = 0x6E776F6E6B6E55;
      if (!v0)
      {
        v18(v50, v52);
        goto LABEL_12;
      }

      v18(v50, v52);
      if (v1 == 0x79746964696C6176 && v0 == 0xE800000000000000)
      {

LABEL_17:
        v9 = v46;
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v1 = Strong;
          v21 = v47 | (v59 << 16);
          v22 = *(v9 + 15);
          ObjectType = swift_getObjectType();
          active = type metadata accessor for ActiveClockSource(0);
          v58 = &protocol witness table for ActiveClockSource;
          v54 = v9;
          v23 = *(v22 + 184);

          v24 = v45;
          v25 = v23(v21 & 0xFFFFFF, 0, 0, &v54, ObjectType, v22);
          if (v24)
          {
            swift_unknownObjectRelease();
            sub_10000CE78(&v54);
            v9 = v46;
          }

          else
          {
            v29 = v25;
            v30 = v26;
            ObjectType = v27;
            sub_10000CE78(&v54);
            ADCControlRequestParameterBlock.getCur()(v30, v29 & 0x1FF, &v54);
            sub_100001AB4(&qword_1001755F0, &qword_100121AF0);
            v31 = swift_dynamicCast();
            v9 = v46;
            if (v31)
            {
              swift_unknownObjectRelease();

              return v60 != 0;
            }

            sub_10000CA2C();
            swift_allocError();
            *v32 = 1;
            *(v32 + 8) = 0;
            *(v32 + 16) = 0xE000000000000000;
            swift_willThrow();
            swift_unknownObjectRelease();
          }
        }

        else
        {
          sub_10000CA2C();
          swift_allocError();
          *v28 = 69;
          *(v28 + 8) = 0;
          *(v28 + 16) = 0xE000000000000000;
          swift_willThrow();
        }

        v0 = _convertErrorToNSError(_:)();
        v33 = [v0 code];

        if (v33 >= 0xFFFFFFFF80000000)
        {
          if (v33 <= 0x7FFFFFFF)
          {
            v54 = 0;
            v55 = 0xE000000000000000;
            _StringGuts.grow(_:)(34);
            if (swift_unknownObjectWeakLoadStrong())
            {
              v34 = *(v9 + 15);
              v35 = swift_getObjectType();
              v17 = ActiveFunction.deviceName.getter(v35, v34);
              v37 = v36;
              swift_unknownObjectRelease();
            }

            else
            {
              v37 = 0xE700000000000000;
            }

            v38._countAndFlagsBits = v17;
            v38._object = v37;
            String.append(_:)(v38);

            v39._countAndFlagsBits = 0x20726F72724520;
            v39._object = 0xE700000000000000;
            String.append(_:)(v39);
            sub_100001AB4(&qword_100173C98, &unk_100120120);
            v40 = swift_allocObject();
            *(v40 + 16) = xmmword_10011DE90;
            *(v40 + 56) = &type metadata for Int32;
            *(v40 + 64) = &protocol witness table for Int32;
            *(v40 + 32) = v33;
            v41._countAndFlagsBits = String.init(format:_:)();
            String.append(_:)(v41);

            v42._object = 0x800000010012C9C0;
            v42._countAndFlagsBits = 0xD000000000000017;
            String.append(_:)(v42);
            v1 = v54;
            v0 = v55;
            ObjectType = OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_logID;
            if (qword_100173CC0 == -1)
            {
LABEL_30:
              v43 = type metadata accessor for AUALog(0);
              sub_10000A1BC(v43, qword_100179508);
              sub_100039F58(3, &ObjectType[v9], v1, v0);

              swift_willThrow();
              return v19;
            }

LABEL_36:
            swift_once();
            goto LABEL_30;
          }

LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

LABEL_13:
      v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v1)
      {
        goto LABEL_17;
      }

      v8 = v53 + 1;
      v9 = (v9 + 3);
      v7 = v48;
      if (v51 == v53 + 1)
      {
        return 1;
      }
    }

    ObjectType = v50;
    v17 = 0x6E776F6E6B6E55;
    (*v49)(v50, v52);
LABEL_12:

    v0 = 0xE700000000000000;
    goto LABEL_13;
  }

  return 1;
}

void sub_10002F198()
{
  v2 = v1;
  v3 = v0;
  v46 = type metadata accessor for LogID(0);
  v4 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v7 = 0;
  v43 = " fetching SamplingRate";
  v44 = "e_getSamplingRate";
  v41 = ": internal clock [";
  v42 = " fetching Validity";
  v39 = ", assuming valid";
  v40 = "control returned an error: ";
  v47 = xmmword_10011DE90;
  v49 = v6;
  while (1)
  {
    v50 = v7;
    v8 = sub_10002DF80();
    v48 = v2;
    if (!v2)
    {
      v45 = v8;
      goto LABEL_15;
    }

    v9 = _convertErrorToNSError(_:)();
    v10 = [v9 code];

    if (v10 < 0xFFFFFFFF80000000)
    {
      break;
    }

    if (v10 > 0x7FFFFFFF)
    {
      goto LABEL_30;
    }

    v51 = 0;
    v52 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v3 + 120);
      ObjectType = swift_getObjectType();
      active = ActiveFunction.deviceName.getter(ObjectType, v11);
      v15 = v14;
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = 0xE700000000000000;
      active = 0x6E776F6E6B6E55;
    }

    v16._countAndFlagsBits = active;
    v16._object = v15;
    String.append(_:)(v16);

    v17._countAndFlagsBits = 0x20726F727245203ALL;
    v17._object = 0xE800000000000000;
    String.append(_:)(v17);
    sub_100001AB4(&qword_100173C98, &unk_100120120);
    v18 = swift_allocObject();
    *(v18 + 16) = v47;
    *(v18 + 56) = &type metadata for Int32;
    *(v18 + 64) = &protocol witness table for Int32;
    *(v18 + 32) = v10;
    v19._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v19);

    v20._countAndFlagsBits = 0xD000000000000016;
    v20._object = (v44 | 0x8000000000000000);
    String.append(_:)(v20);
    v21 = v51;
    v22 = v52;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v23 = sub_10000A1BC(v46, qword_1001794F0);
    v6 = v49;
    sub_10000A2A4(v23, v49);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v24, qword_100179508);
    sub_100039F58(2, v6, v21, v22);

    sub_10000C9D0(v6);
    if (v10 == 268435459)
    {
      swift_willThrow();
      return;
    }

    v45 = 0;
LABEL_15:
    v2 = 0;
    if (!sub_10002EB04() && *(v3 + 80) == 1)
    {
      v51 = 0;
      v52 = 0xE000000000000000;
      _StringGuts.grow(_:)(56);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v25 = *(v3 + 120);
        v26 = swift_getObjectType();
        v27 = ActiveFunction.deviceName.getter(v26, v25);
        v29 = v28;
        swift_unknownObjectRelease();
      }

      else
      {
        v29 = 0xE700000000000000;
        v27 = 0x6E776F6E6B6E55;
      }

      v30._countAndFlagsBits = v27;
      v30._object = v29;
      String.append(_:)(v30);

      v31._object = (v42 | 0x8000000000000000);
      v31._countAndFlagsBits = 0xD000000000000012;
      String.append(_:)(v31);
      v53 = *(v3 + 40);
      v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v32);

      v33._countAndFlagsBits = 0xD000000000000022;
      v33._object = (v39 | 0x8000000000000000);
      String.append(_:)(v33);
      v34 = v51;
      v35 = v52;
      if (qword_100173CB8 != -1)
      {
        swift_once();
      }

      v36 = sub_10000A1BC(v46, qword_1001794F0);
      sub_10000A2A4(v36, v6);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v37, qword_100179508);
      sub_100039F58(2, v6, v34, v35);

      sub_10000C9D0(v6);
    }

    v7 = 1;
    if (v50 & 1 | (v48 == 0))
    {
      return;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  __break(1u);
  __break(1u);
}

uint64_t sub_10003026C(unint64_t a1, const char *a2)
{
  v4 = type metadata accessor for LogID(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 2);
  if (!v9)
  {
    return 0;
  }

  v10 = 0;
  v11 = 1 - v9;
  v12 = a2 + 40;
  v13 = (a2 + 40);
  while (1)
  {
    v15 = *v13;
    v13 += 3;
    v14 = v15;
    if (!v10)
    {
      if (*(v12 - 1) <= a1)
      {
        v10 = v14 >= a1;
        if (!v11)
        {
          if (a1 - 1 < v14)
          {
            return a1;
          }

          goto LABEL_14;
        }
      }

      else
      {
        if (!v11)
        {
          goto LABEL_14;
        }

        v10 = 0;
      }

      goto LABEL_4;
    }

    if (!v11)
    {
      break;
    }

    v10 = 1;
LABEL_4:
    ++v11;
    v12 = v13;
    if (v11 == 1)
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      v31 = v6;
      swift_once();
      v6 = v31;
LABEL_38:
      v28 = sub_10000A1BC(v6, qword_1001794F0);
      sub_10000A2A4(v28, v8);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v29, qword_100179508);
      sub_100039F58(3, v8, 0xD000000000000029, ((a2 - 32) | 0x8000000000000000));
      sub_10000C9D0(v8);
      return 0;
    }
  }

  if (a1)
  {
    return a1;
  }

LABEL_14:
  v16 = 0;
  v17 = 1 - v9;
  v18 = a2 + 40;
  a1 = 48000;
  v19 = a2 + 40;
  while (2)
  {
    v21 = *v19;
    v19 += 24;
    v20 = v21;
    if (v16)
    {
      if (!v17)
      {
        return a1;
      }

      v16 = 1;
      goto LABEL_16;
    }

    if (*(v18 - 1) >= 0xBB81uLL)
    {
      if (!v17)
      {
        goto LABEL_25;
      }

      v16 = 0;
      goto LABEL_16;
    }

    v16 = v20 >> 7 > 0x176;
    if (v17)
    {
LABEL_16:
      ++v17;
      v18 = v19;
      if (v17 == 1)
      {
        goto LABEL_44;
      }

      continue;
    }

    break;
  }

  if (v20 >> 7 > 0x176)
  {
    return 48000;
  }

LABEL_25:
  v22 = 0;
  v23 = 1 - v9;
  v24 = a2 + 40;
  a1 = 44100;
  v25 = (a2 + 40);
  while (2)
  {
    v27 = *v25;
    v25 += 3;
    v26 = v27;
    if (v22)
    {
      if (!v23)
      {
        return a1;
      }

      v22 = 1;
      goto LABEL_27;
    }

    if (*(v24 - 1) >= 0xAC45uLL)
    {
      if (!v23)
      {
        goto LABEL_36;
      }

      v22 = 0;
      goto LABEL_27;
    }

    v22 = v26 > 0xAC43;
    if (v23)
    {
LABEL_27:
      ++v23;
      v24 = v25;
      if (v23 == 1)
      {
        goto LABEL_45;
      }

      continue;
    }

    break;
  }

  if (v26 > 0xAC43)
  {
    return 44100;
  }

LABEL_36:
  a1 = *(a2 + 4);
  if (*(a2 + 5) != a1)
  {
    a2 = "Could not determine a valid sampling rate";
    if (qword_100173CB8 == -1)
    {
      goto LABEL_38;
    }

    goto LABEL_46;
  }

  return a1;
}

void ActiveClockSource.start(on:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  ObjectType = swift_getObjectType();
  v7 = (*(a2 + 16))(ObjectType, a2);
  if (!v7)
  {
    sub_10000CA2C();
    swift_allocError();
    *v14 = 58;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0xE000000000000000;
    swift_willThrow();
    return;
  }

  v8 = v7;
  swift_beginAccess();
  *(v2 + 120) = a2;
  swift_unknownObjectWeakAssign();
  if (*(v2 + 34) != 255 && *&v8[OBJC_IVAR____TtC9AUASDCore9USBDevice_usbHostObject])
  {
    v9 = sub_1000F8280((*(v2 + 32) | (*(v2 + 34) << 16) & 0x1FFFFu));
    if (v3)
    {
LABEL_17:

      return;
    }

    if (v10)
    {
      v22 = v9;
      v23 = v10;
      sub_10001EA64();
      v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v13 = v12;

      goto LABEL_16;
    }
  }

  if (*(v2 + 80))
  {
    v11 = 0x656369766544;
    v13 = 0xE600000000000000;
    goto LABEL_16;
  }

  v13 = 0xEE006B636F6C4320;
  v11 = 0x6C616E7265747845;
  v15 = *(v2 + 88);
  if (!v15)
  {
    goto LABEL_16;
  }

  sub_100052184(v15, ObjectType, a2, &v22);
  if (!v24)
  {
    sub_10000D040(&v22, &qword_100174FB0, &unk_100120FC0);
    goto LABEL_16;
  }

  sub_100001AB4(&qword_100174F60, &qword_100121090);
  type metadata accessor for ActiveInputTerminal();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    swift_beginAccess();
    v17 = *(v4 + 136);
    *(v4 + 128) = v11;
    *(v4 + 136) = v13;

    ActiveClockSource.refreshSamplingRate()();
    goto LABEL_17;
  }

  v16 = *(v21 + 136);
  if (v16 == 257)
  {

    v13 = 0xE800000000000000;
    v11 = 0x636E79532063614DLL;
    goto LABEL_16;
  }

  if (*(v21 + 66) != 255)
  {
    if (*&v8[OBJC_IVAR____TtC9AUASDCore9USBDevice_usbHostObject])
    {
      v18 = sub_1000F8280((*(v21 + 64) | (*(v21 + 66) << 16) & 0x1FFFFu));
      if (v3)
      {

        return;
      }

      if (v19)
      {
        v22 = v18;
        v23 = v19;
        sub_10001EA64();
        v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v13 = v20;

        goto LABEL_16;
      }
    }

    v11 = 0;
    v13 = 0;
    goto LABEL_16;
  }

  if (!(v16 >> 16))
  {

    if (v16 <= 0x300u)
    {
      if (v16 == 257)
      {
        v13 = 0xED0000676E696D61;
        v11 = 0x6572745320425355;
        goto LABEL_16;
      }

      if (v16 == 513)
      {
        v13 = 0xEA0000000000656ELL;
        v11 = 0x6F68706F7263694DLL;
        goto LABEL_16;
      }
    }

    else
    {
      switch(v16)
      {
        case 0x301u:
          v13 = 0xE700000000000000;
          v11 = 0x72656B61657053;
          goto LABEL_16;
        case 0x402u:
          v13 = 0xE700000000000000;
          v11 = 0x74657364616548;
          goto LABEL_16;
        case 0x603u:
          v13 = 0xE400000000000000;
          v11 = 1701734732;
          goto LABEL_16;
      }
    }

    v13 = 0xE700000000000000;
    v11 = 0x6E776F6E6B6E55;
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t ActiveClockSource.curSamplingRate.setter(unint64_t a1, char a2)
{
  v4 = v2;
  v7 = type metadata accessor for Mirror();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = __chkstk_darwin(v7);
  v12 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v13 = "need a value for setting the sampling rate";
    goto LABEL_3;
  }

  ObjectType = v4 + OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_cachedSamplingRate;
  if (*(v4 + OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_cachedSamplingRate + 8) & 1) == 0 && *ObjectType == a1 && (*(v4 + 144))
  {
    return result;
  }

  result = swift_beginAccess();
  if (*(v4 + 24) != 1)
  {
    return result;
  }

  if (!a1)
  {
    *ObjectType = 0;
    *(ObjectType + 8) = 1;
    return result;
  }

  swift_beginAccess();
  v19 = *(v4 + 16);
  if (!v19)
  {
    v13 = "no available sampling rates for this clock";
LABEL_3:
    ObjectType = (v13 - 32);
    v3 = OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_logID;
    if (qword_100173CC0 != -1)
    {
      goto LABEL_60;
    }

    goto LABEL_4;
  }

  v20 = *(v19 + 16);
  if (!v20)
  {
    goto LABEL_41;
  }

  v21 = 0;
  v22 = 1 - v20;
  v23 = (v19 + 40);
  v24 = (v19 + 40);
  while (1)
  {
    v26 = *v24;
    v24 += 3;
    v25 = v26;
    if (v21)
    {
      if (!v22)
      {
        goto LABEL_25;
      }

      v21 = 1;
      goto LABEL_15;
    }

    if (*(v23 - 1) > a1)
    {
      if (!v22)
      {
        goto LABEL_41;
      }

      v21 = 0;
      goto LABEL_15;
    }

    v21 = v25 >= a1;
    if (!v22)
    {
      break;
    }

LABEL_15:
    ++v22;
    v23 = v24;
    if (v22 == 1)
    {
      __break(1u);
LABEL_60:
      swift_once();
LABEL_4:
      v15 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v15, qword_100179508);
      v16 = v4 + v3;
      v17 = (ObjectType | 0x8000000000000000);
      v18 = 0xD00000000000002ALL;
      return sub_100039F58(3, v16, v18, v17);
    }
  }

  if (v25 < a1)
  {
LABEL_41:
    v94[0] = 0;
    v94[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v44._countAndFlagsBits = 0xD00000000000001CLL;
    v44._object = 0x800000010012C730;
    String.append(_:)(v44);
    v93 = a1;
    v45._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v45);

    v46._countAndFlagsBits = 0xD000000000000017;
    v46._object = 0x800000010012C750;
    String.append(_:)(v46);
    ObjectType = v94[0];
    v27 = v94[1];
    v29 = OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_logID;
    if (qword_100173CC0 == -1)
    {
LABEL_42:
      v47 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v47, qword_100179508);
      sub_100039F58(3, v4 + v29, ObjectType, v27);
    }

LABEL_63:
    swift_once();
    goto LABEL_42;
  }

LABEL_25:
  v82 = ObjectType;
  v83 = a1;
  v84 = v4;
  v91 = *(v4 + 96);
  v90 = *(v91 + 16);
  if (!v90)
  {
LABEL_38:
    v42 = OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_logID;
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v43, qword_100179508);
    v16 = v84 + v42;
    v18 = 0xD000000000000038;
    v17 = 0x800000010012C640;
    return sub_100039F58(3, v16, v18, v17);
  }

  v27 = 0;
  v28 = (v91 + 32);
  v29 = v8 + 8;
  v89 = v7;
  v87 = v12;
  v88 = (v8 + 8);
  while (2)
  {
    if (v27 >= *(v91 + 16))
    {
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v30 = *(v28 + 2);
    v31 = *v28;
    v96 = &type metadata for USBDescriptorControl;
    v86 = v30;
    BYTE2(v94[0]) = v30;
    v85 = v31;
    LOWORD(v94[0]) = v31;
    Mirror.init(reflecting:)();
    v32 = Mirror.children.getter();
    v33 = v32[2];
    v34 = v32[3];
    v4 = v32[4];
    v35 = v32[5];
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v29 = dispatch thunk of _AnyIndexBox._typeID.getter();
    swift_getObjectType();
    if (v29 != dispatch thunk of _AnyIndexBox._typeID.getter())
    {
      goto LABEL_62;
    }

    v36 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v36)
    {

      v29 = v88;
      v37 = v89;
      v38 = *v88;
      goto LABEL_35;
    }

    dispatch thunk of _AnyCollectionBox.subscript.getter();

    v39 = v94[0];
    v40 = v94[1];
    sub_10000CE78(&v95);
    v29 = v88;
    v37 = v89;
    v38 = *v88;
    if (!v40)
    {
LABEL_35:
      active = 0x6E776F6E6B6E55;
      v38(v87, v37);

LABEL_36:
      ObjectType = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (ObjectType)
      {
        goto LABEL_44;
      }

      ++v27;
      v28 = (v28 + 3);
      if (v90 == v27)
      {
        goto LABEL_38;
      }

      continue;
    }

    break;
  }

  v38(v87, v89);
  active = 0x6E776F6E6B6E55;
  if (v39 != 0x636E657571657266 || v40 != 0xE900000000000079)
  {
    goto LABEL_36;
  }

LABEL_44:
  strcpy(v94, "samplingRate ");
  HIWORD(v94[1]) = -4864;
  v48 = v83;
  v93 = v83;
  v49._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  v50 = v94;
  String.append(_:)(v49);

  v51 = OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_logID;
  v52 = v84;
  sub_100038CD8("ActiveClockSource_setCurSampleRate", 34, 2, v94[0], v94[1], v84 + OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_logID);

  *(v52 + 144) = 1;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    sub_10000CA2C();
    swift_allocError();
    *v56 = 69;
    *(v56 + 8) = 0;
    *(v56 + 16) = 0xE000000000000000;
    swift_willThrow();
    v59 = _convertErrorToNSError(_:)();
    v60 = [v59 code];

    if (v60 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v60 <= 0x7FFFFFFF)
    {
      v94[0] = 0;
      v94[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(61);
      v61 = v84;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v62 = *(v61 + 120);
        v63 = swift_getObjectType();
        active = ActiveFunction.deviceName.getter(v63, v62);
        v65 = v64;
        swift_unknownObjectRelease();
      }

      else
      {
        v65 = 0xE700000000000000;
      }

      v66._countAndFlagsBits = active;
      v66._object = v65;
      String.append(_:)(v66);

      v67._countAndFlagsBits = 0x20726F72726520;
      v67._object = 0xE700000000000000;
      String.append(_:)(v67);
      sub_100001AB4(&qword_100173C98, &unk_100120120);
      v68 = swift_allocObject();
      *(v68 + 16) = xmmword_10011DE90;
      *(v68 + 56) = &type metadata for Int32;
      *(v68 + 64) = &protocol witness table for Int32;
      *(v68 + 32) = v60;
      v69._countAndFlagsBits = String.init(format:_:)();
      String.append(_:)(v69);

      v70._countAndFlagsBits = 0xD000000000000030;
      v70._object = 0x800000010012C6B0;
      String.append(_:)(v70);
      v92 = v83;
      v71._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v71);

      v50 = v94[0];
      v59 = v94[1];
      if (qword_100173CC0 == -1)
      {
        goto LABEL_52;
      }

      goto LABEL_66;
    }

    __break(1u);
LABEL_66:
    swift_once();
LABEL_52:
    v72 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v72, qword_100179508);
    sub_100039F58(3, v84 + v51, v50, v59);
  }

  v53 = v85 | (v86 << 16);
  v54 = *(v52 + 120);
  v55 = swift_getObjectType();
  v96 = type metadata accessor for ActiveClockSource(0);
  v97 = &protocol witness table for ActiveClockSource;
  v94[0] = v52;

  sub_100053170(v53 & 0xFFFFFF, 0, 0, v94, v48, v55, v54);
  sub_10000CE78(v94);
  v57 = v82;
  *v82 = v48;
  *(v57 + 8) = 0;
  v58 = sub_10002DF80();
  if ((v57[1] & 1) != 0 || v58 != *v57)
  {
    v94[0] = 0;
    v94[1] = 0xE000000000000000;
    v73 = v58;
    _StringGuts.grow(_:)(66);
    v74._countAndFlagsBits = 0xD000000000000038;
    v74._object = 0x800000010012C6F0;
    String.append(_:)(v74);
    v92 = v83;
    v75._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v75);

    v76._countAndFlagsBits = 0x206461657220;
    v76._object = 0xE600000000000000;
    String.append(_:)(v76);
    v92 = v73;
    v77._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v77);

    v79 = v94[0];
    v78 = v94[1];
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v80 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v80, qword_100179508);
    sub_100039F58(3, v84 + v51, v79, v78);
  }

  swift_unknownObjectRelease();
  result = mach_absolute_time();
  *(v84 + OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_lastSamplingRateChangedTimestamp) = result;
  return result;
}

uint64_t ActiveClockSource.curSamplingRate.getter()
{
  result = *(v0 + OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_cachedSamplingRate);
  v2 = *(v0 + OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_cachedSamplingRate + 8);
  return result;
}

uint64_t (*ActiveClockSource.curSamplingRate.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_cachedSamplingRate + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_cachedSamplingRate);
  *(a1 + 8) = v2;
  return sub_100031528;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ActiveClockSource.prepareClockForIO(_:)(Swift::UInt64 a1)
{
  v2 = v1;
  v4 = mach_absolute_time();
  v5 = *(v2 + OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_lastSamplingRateChangedTimestamp);
  v6 = v4 - v5;
  if (v4 < v5)
  {
    __break(1u);
  }

  else if (qword_100173D00 == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  if (qword_100179650 != HIDWORD(qword_100179650))
  {
    if (!is_mul_ok(v6, qword_100179650))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    if (!HIDWORD(qword_100179650))
    {
LABEL_15:
      __break(1u);
      return;
    }

    v6 = v6 * qword_100179650 / HIDWORD(qword_100179650);
  }

  v7 = a1 >= v6 / 0x3E8;
  v8 = a1 - v6 / 0x3E8;
  if (v8 != 0 && v7)
  {
    if (!HIDWORD(v8))
    {
      v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v9);

      v10._countAndFlagsBits = 7566624;
      v10._object = 0xE300000000000000;
      String.append(_:)(v10);
      sub_100038CD8("ActiveClockSource_prepareClock", 30, 2, 0x2079616C6564, 0xE600000000000000, v2 + OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_logID);

      usleep(v8);
      return;
    }

    goto LABEL_14;
  }
}

Swift::Void __swiftcall ActiveClockSource.invalidateSamplingRate()()
{
  v1 = v0 + OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_cachedSamplingRate;
  *v1 = 0;
  *(v1 + 8) = 1;
}

void *ActiveClockSource.deinit()
{
  v1 = v0[2];

  v2 = v0[8];
  v3 = v0[9];

  v4 = v0[12];

  sub_100024174((v0 + 14));
  v5 = v0[17];

  sub_10000C9D0(v0 + OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_logID);
  return v0;
}

uint64_t ActiveClockSource.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[8];
  v3 = v0[9];

  v4 = v0[12];

  sub_100024174((v0 + 14));
  v5 = v0[17];

  sub_10000C9D0(v0 + OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_logID);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10003182C@<X0>(void *a1@<X8>)
{
  v3 = v1[3];
  v10[0] = v1[2];
  v10[1] = v3;
  v4 = v1[5];
  v10[2] = v1[4];
  v10[3] = v4;
  a1[3] = &type metadata for ClockSource;
  a1[4] = sub_10002C3E4();
  v5 = swift_allocObject();
  *a1 = v5;
  v6 = v1[3];
  v5[1] = v1[2];
  v5[2] = v6;
  v7 = v1[5];
  v5[3] = v1[4];
  v5[4] = v7;
  return sub_10002C080(v10, &v9);
}

uint64_t sub_1000318C4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v5 = v3[2];
  v4 = v3[3];
  v6 = v3[5];
  v13[2] = v3[4];
  v13[3] = v6;
  v13[0] = v5;
  v13[1] = v4;
  a1[3] = &type metadata for ClockSource;
  a1[4] = sub_10002C514();
  v7 = swift_allocObject();
  *a1 = v7;
  v8 = v3[5];
  v10 = v3[2];
  v9 = v3[3];
  v7[3] = v3[4];
  v7[4] = v8;
  v7[1] = v10;
  v7[2] = v9;
  return sub_10002C080(v13, &v12);
}

uint64_t sub_100031948()
{
  v1 = *v0;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 120);
  return result;
}

uint64_t sub_100031990(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  swift_beginAccess();
  *(v4 + 120) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_1000319F4(uint64_t *a1))()
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
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 120);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_100038548;
}

void sub_100031A8C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 120) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_100031B1C()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);

  return v2;
}

uint64_t (*ActiveClockSelector.function.modify(uint64_t *a1))()
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_10002316C;
}

uint64_t ActiveClockSelector.staticClockSelector.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 48);
  *a1 = *(v1 + 32);
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
}

uint64_t ActiveClockSelector.name.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t ActiveClockSelector.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 96);
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
}

uint64_t sub_100031E10@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 64);
  v5 = *(v2 + 72);
  v6 = *(v2 + 80);
  a2[3] = &type metadata for ClockSelector;
  a2[4] = a1();
  v7 = swift_allocObject();
  *a2 = v7;
  v8 = *(v2 + 48);
  *(v7 + 16) = *(v2 + 32);
  *(v7 + 32) = v8;
  *(v7 + 48) = v4;
  *(v7 + 56) = v5;
  *(v7 + 64) = v6;
}

uint64_t ActiveClockSelector.curInputPin.setter(__int16 a1)
{
  result = swift_beginAccess();
  *(v1 + 112) = a1;
  *(v1 + 113) = HIBYTE(a1) & 1;
  return result;
}

uint64_t sub_100031F88(uint64_t a1)
{
  v2 = v1;

  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  *(v1 + 112) = 256;
  v4 = OBJC_IVAR____TtC9AUASDCore19ActiveClockSelector_logID;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for LogID(0);
  v6 = sub_10000A1BC(v5, qword_1001794F0);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v7, qword_100179508);
  sub_100039740(0xD000000000000013, 0x80000001001212B0, v6, (v2 + v4));
  v8 = *(a1 + 16);
  *(v2 + 32) = *a1;
  *(v2 + 48) = v8;
  *(v2 + 64) = *(a1 + 32);
  *(v2 + 80) = *(a1 + 48);
  return v2;
}

uint64_t ActiveClockSelector.start(on:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  active = 0x6E776F6E6B6E55;
  v6 = type metadata accessor for LogID(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  *(v3 + 24) = a2;
  swift_unknownObjectWeakAssign();
  sub_100032520();
  v42 = 0;
  v43 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);
  v44 = v42;
  v45 = v43;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    active = ActiveFunction.deviceName.getter(ObjectType, v10);
    v13 = v12;
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0xE700000000000000;
  }

  v14._countAndFlagsBits = active;
  v14._object = v13;
  String.append(_:)(v14);

  v15._object = 0x800000010012C790;
  v15._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v15);
  v16 = *(v3 + 40);
  v42 = v16;
  v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v17);

  v18._countAndFlagsBits = 0xD000000000000013;
  v18._object = 0x800000010012C1E0;
  String.append(_:)(v18);
  swift_beginAccess();
  v19 = *(v3 + 112);
  if (*(v3 + 113))
  {
    v19 = 0;
  }

  LOBYTE(v46) = v19;
  v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v20);

  v21 = v44;
  v22 = v45;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v23 = sub_10000A1BC(v6, qword_1001794F0);
  sub_10000A2A4(v23, v9);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v24, qword_100179508);
  sub_100039AA0(2, v9, v21, v22);

  result = sub_10000C9D0(v9);
  if ((*(v3 + 113) & 1) == 0)
  {
    v26 = *(v3 + 112);
    v27 = v41;
    sub_1000330B4(v26);
    if (v27)
    {
      if (*(*(v3 + 72) + 16) == 1)
      {
      }

      else
      {
        return swift_willThrow();
      }
    }

    else
    {
      v41 = 0;
      v44 = 0;
      v45 = 0xE000000000000000;
      _StringGuts.grow(_:)(35);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v28 = *(v3 + 24);
        v29 = swift_getObjectType();
        v30 = ActiveFunction.deviceName.getter(v29, v28);
        v32 = v31;
        swift_unknownObjectRelease();
      }

      else
      {
        v32 = 0xE700000000000000;
        v30 = 0x6E776F6E6B6E55;
      }

      v33._countAndFlagsBits = v30;
      v33._object = v32;
      String.append(_:)(v33);

      v34._object = 0x800000010012C790;
      v34._countAndFlagsBits = 0xD000000000000011;
      String.append(_:)(v34);
      v46 = v16;
      v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v35);

      v36._countAndFlagsBits = 0x676E697474657320;
      v36._object = 0xEC000000206F7420;
      String.append(_:)(v36);
      LOBYTE(v46) = v26;
      v37._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v37);

      v38 = v44;
      v39 = v45;
      sub_10000A2A4(v23, v9);
      sub_100039AA0(2, v9, v38, v39);

      return sub_10000C9D0(v9);
    }
  }

  return result;
}

uint64_t sub_100032520()
{
  v3 = v0;
  v4 = type metadata accessor for LogID(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for Mirror();
  v8 = *(*(v89 - 8) + 64);
  __chkstk_darwin(v89);
  v11 = *(*(v0 + 72) + 16);
  if (!v11)
  {
    goto LABEL_20;
  }

  if (v11 == 1)
  {
LABEL_29:
    result = swift_beginAccess();
    *(v3 + 112) = 1;
    goto LABEL_30;
  }

  v12 = *(v0 + 80);
  if (!v12)
  {
LABEL_20:
    v82 = v4;
    sub_10000CA2C();
    v25 = swift_allocError();
    *v27 = 87;
    *(v27 + 8) = 0;
    *(v27 + 16) = 0xE000000000000000;
    swift_willThrow();
LABEL_21:
    *&v90 = 0;
    *(&v90 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    v93 = v90;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v28 = v3[3];
      ObjectType = swift_getObjectType();
      active = ActiveFunction.deviceName.getter(ObjectType, v28);
      v32 = v31;
      swift_unknownObjectRelease();
    }

    else
    {
      active = 0x6E776F6E6B6E55;
      v32 = 0xE700000000000000;
    }

    v33._countAndFlagsBits = active;
    v33._object = v32;
    String.append(_:)(v33);

    v34._countAndFlagsBits = 0x20726F727245203ALL;
    v34._object = 0xE800000000000000;
    String.append(_:)(v34);
    v94 = v25;
    sub_100001AB4(&qword_100177270, &qword_100120A40);
    _print_unlocked<A, B>(_:_:)();
    v35._countAndFlagsBits = 0xD000000000000013;
    v35._object = 0x800000010012CAC0;
    String.append(_:)(v35);
    v94 = v3[5];
    v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v36);

    v37._object = 0x800000010012C4C0;
    v37._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v37);
    v38 = v93;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v39 = sub_10000A1BC(v82, qword_1001794F0);
    sub_10000A2A4(v39, v7);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v40, qword_100179508);
    sub_100039F58(2, v7, v38, *(&v38 + 1));

    sub_10000C9D0(v7);
    goto LABEL_29;
  }

  v79 = *(v0 + 72);
  v82 = v4;
  v80 = v7;
  v81 = v0;
  v88 = *(v12 + 16);
  if (!v88)
  {
LABEL_18:
    sub_10000CA2C();
    v25 = swift_allocError();
    *v26 = 14;
    *(v26 + 8) = 0;
    *(v26 + 16) = 0xE000000000000000;
    swift_willThrow();
LABEL_19:
    v3 = v81;
    v7 = v80;
    goto LABEL_21;
  }

  v13 = 0;
  v14 = (v12 + 32);
  v15 = (v9 + 8);
  v86 = (v9 + 8);
  v87 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v12;
  while (1)
  {
    if (v13 >= *(v12 + 16))
    {
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v16 = v14[2];
    v17 = *v14;
    *(&v91 + 1) = &type metadata for USBDescriptorControl;
    v83 = v17;
    v84 = v16;
    BYTE2(v90) = v16;
    LOWORD(v90) = v17;
    Mirror.init(reflecting:)();
    v18 = Mirror.children.getter();
    v19 = v18[2];
    v15 = v18[3];
    v2 = v18[4];
    v1 = v18[5];
    swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v20 = dispatch thunk of _AnyIndexBox._typeID.getter();
    swift_getObjectType();
    if (v20 != dispatch thunk of _AnyIndexBox._typeID.getter())
    {
      goto LABEL_47;
    }

    v21 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v21)
    {

      v15 = v86;
      v2 = 0x6E776F6E6B6E55;
      (*v86)(v87, v89);
LABEL_15:

      v1 = 0x6E776F6E6B6E75;
      goto LABEL_16;
    }

    dispatch thunk of _AnyCollectionBox.subscript.getter();

    v22 = *(&v90 + 1);
    v1 = v90;
    sub_10000CE78(&v91);
    v15 = v86;
    v23 = *v86;
    v2 = 0x6E776F6E6B6E55;
    if (!v22)
    {
      v23(v87, v89);
      goto LABEL_15;
    }

    v23(v87, v89);
    if (v1 == 0x726F7463656C6573 && v22 == 0xE800000000000000)
    {
      break;
    }

LABEL_16:
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v24)
    {
      goto LABEL_31;
    }

    ++v13;
    v14 += 3;
    v12 = v85;
    if (v88 == v13)
    {
      goto LABEL_18;
    }
  }

LABEL_31:
  v42 = v81;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_34;
  }

  v43 = v83 | (v84 << 16);
  v44 = v42[3];
  v45 = swift_getObjectType();
  *(&v91 + 1) = type metadata accessor for ActiveClockSelector(0);
  v92 = &protocol witness table for ActiveClockSelector;
  *&v90 = v42;
  v46 = *(v44 + 23);

  v47 = v46(v43 & 0xFFFFFF, 0, 0, &v90, v45, v44);
  v49 = v48;
  v50 = v47;
  swift_unknownObjectRelease();
  sub_10000CE78(&v90);
  if (!v49)
  {
LABEL_34:
    v92 = 0;
    v90 = 0u;
    v91 = 0u;
    sub_10000D040(&v90, &qword_100175790, &unk_100121070);
    v14 = 0;
    goto LABEL_35;
  }

  v14 = v49;
  ADCControlRequestParameterBlock.getCur()(v14, v50 & 0x1FF, &v90);

  sub_100001AB4(&qword_1001755F0, &qword_100121AF0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_35:
    *&v90 = 0;
    *(&v90 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(69);
    v51 = v81;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v52 = v51[3];
      v53 = swift_getObjectType();
      v2 = ActiveFunction.deviceName.getter(v53, v52);
      v55 = v54;
      swift_unknownObjectRelease();
    }

    else
    {
      v55 = 0xE700000000000000;
    }

    v56._countAndFlagsBits = v2;
    v56._object = v55;
    String.append(_:)(v56);

    v57._countAndFlagsBits = 0xD00000000000002FLL;
    v57._object = 0x800000010012CAE0;
    String.append(_:)(v57);
    *&v93 = v51[5];
    v58._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v58);

    v59._object = 0x800000010012C4C0;
    v59._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v59);
    v60 = v90;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v61 = sub_10000A1BC(v82, qword_1001794F0);
    v62 = v80;
    sub_10000A2A4(v61, v80);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v63, qword_100179508);
    sub_100039F58(2, v62, v60, *(&v60 + 1));

    sub_10000C9D0(v62);
    v3 = v81;
    goto LABEL_29;
  }

  v1 = v93;
  *&v90 = 0;
  *(&v90 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(41);
  v15 = v81;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v64 = v15[3];
    v65 = swift_getObjectType();
    v2 = ActiveFunction.deviceName.getter(v65, v64);
    v67 = v66;
    swift_unknownObjectRelease();
    goto LABEL_49;
  }

LABEL_48:
  v67 = 0xE700000000000000;
LABEL_49:
  v68._countAndFlagsBits = v2;
  v68._object = v67;
  String.append(_:)(v68);

  v69._countAndFlagsBits = 0xD000000000000011;
  v69._object = 0x800000010012C790;
  String.append(_:)(v69);
  *&v93 = v15[5];
  v70._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v70);

  v71._object = 0x800000010012C510;
  v71._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v71);
  LOBYTE(v93) = v1;
  v72._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v72);

  v73 = v90;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v74 = sub_10000A1BC(v82, qword_1001794F0);
  v75 = v80;
  sub_10000A2A4(v74, v80);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v76 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v76, qword_100179508);
  sub_100039AA0(2, v75, v73, *(&v73 + 1));

  sub_10000C9D0(v75);
  if (!v1 || *(v79 + 16) < v1)
  {
    sub_10000CA2C();
    v25 = swift_allocError();
    *v77 = 61;
    *(v77 + 8) = 0;
    *(v77 + 16) = 0xE000000000000000;
    swift_willThrow();

    goto LABEL_19;
  }

  v3 = v81;
  result = swift_beginAccess();
  *(v3 + 112) = v1;
LABEL_30:
  *(v3 + 113) = 0;
  return result;
}

uint64_t sub_1000330B4(unint64_t a1)
{
  v42 = type metadata accessor for Mirror();
  v4 = *(v42 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v42);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    sub_10000CA2C();
    swift_allocError();
    *v25 = 69;
    *(v25 + 8) = 0;
    *(v25 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  v35 = v1;
  v36 = result;
  v33 = v2;
  v34 = a1;
  v43 = *(v1 + 80);
  if (!v43 || (v41 = *(v43 + 16)) == 0)
  {
LABEL_17:
    sub_10000CA2C();
    swift_allocError();
    *v24 = 14;
    *(v24 + 8) = 0;
    *(v24 + 16) = 0xE000000000000000;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  v9 = 0;
  v32 = *(v35 + 24);
  v10 = (v43 + 32);
  v39 = (v4 + 8);
  v40 = v7;
  while (1)
  {
    if (v9 >= *(v43 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v48 = v9;
    v11 = *(v10 + 2);
    v12 = *v10;
    active = &type metadata for USBDescriptorControl;
    v37 = v12;
    v38 = v11;
    BYTE2(v44[0]) = v11;
    LOWORD(v44[0]) = v12;
    Mirror.init(reflecting:)();
    v13 = Mirror.children.getter();
    v14 = v13[2];
    v15 = v13[3];
    v16 = v13[4];
    v17 = v13[5];
    swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v18 = dispatch thunk of _AnyIndexBox._typeID.getter();
    swift_getObjectType();
    result = dispatch thunk of _AnyIndexBox._typeID.getter();
    if (v18 != result)
    {
      goto LABEL_24;
    }

    v19 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v19)
    {

      (*v39)(v40, v42);
LABEL_14:

      goto LABEL_15;
    }

    dispatch thunk of _AnyCollectionBox.subscript.getter();

    v20 = v44[0];
    v21 = v44[1];
    sub_10000CE78(&v45);
    v22 = *v39;
    if (!v21)
    {
      v22(v40, v42);
      goto LABEL_14;
    }

    v22(v40, v42);
    if (v20 == 0x726F7463656C6573 && v21 == 0xE800000000000000)
    {
      break;
    }

LABEL_15:
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v23)
    {
      goto LABEL_20;
    }

    v9 = v48 + 1;
    v10 = (v10 + 3);
    if (v41 == v48 + 1)
    {
      goto LABEL_17;
    }
  }

LABEL_20:
  v26 = v37 | (v38 << 16);
  ObjectType = swift_getObjectType();
  active = type metadata accessor for ActiveClockSelector(0);
  v47 = &protocol witness table for ActiveClockSelector;
  v28 = v35;
  v44[0] = v35;

  v29 = v33;
  v30 = v34;
  sub_100053170(v26 & 0xFFFFFF, 0, 0, v44, v34, ObjectType, v32);
  swift_unknownObjectRelease();
  result = sub_10000CE78(v44);
  if (v29)
  {
    return result;
  }

  if (v30 <= 0xFF)
  {
    result = swift_beginAccess();
    *(v28 + 112) = v30;
    *(v28 + 113) = 0;
    return result;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_100033518()
{
  v1 = type metadata accessor for LogID(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v33[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 72);
  v6 = *(v5 + 16);
  if (v6 == 1)
  {
    v7 = (v5 + 32);
    goto LABEL_3;
  }

  swift_beginAccess();
  if ((*(v0 + 113) & 1) == 0)
  {
    v19 = *(v0 + 112);
    if (*(v0 + 112) && v6 >= v19)
    {
      v7 = (v5 + 8 * (v19 - 1) + 32);
    }

    else
    {
      *&v36 = 0;
      *(&v36 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(36);
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v20 = *(v0 + 24);
        ObjectType = swift_getObjectType();
        active = ActiveFunction.deviceName.getter(ObjectType, v20);
        v24 = v23;
        swift_unknownObjectRelease();
      }

      else
      {
        v24 = 0xE700000000000000;
        active = 0x6E776F6E6B6E55;
      }

      v25._countAndFlagsBits = active;
      v25._object = v24;
      String.append(_:)(v25);

      v26._object = 0x800000010012C790;
      v26._countAndFlagsBits = 0xD000000000000011;
      String.append(_:)(v26);
      v35 = *(v0 + 40);
      v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v27);

      v28._countAndFlagsBits = 0x6461622073616820;
      v28._object = 0xED00002052554320;
      String.append(_:)(v28);
      LOBYTE(v35) = v19;
      v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v29);

      v30 = v36;
      if (qword_100173CB8 != -1)
      {
        swift_once();
      }

      v31 = sub_10000A1BC(v1, qword_1001794F0);
      sub_10000A2A4(v31, v4);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v32, qword_100179508);
      sub_100039F58(2, v4, v30, *(&v30 + 1));

      result = sub_10000C9D0(v4);
      if (!*(v5 + 16))
      {
        __break(1u);
        return result;
      }

      v7 = (v5 + 32);
    }

LABEL_3:
    v8 = *v7;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v0 + 24);
      v10 = swift_getObjectType();
      sub_100052184(v8, v10, v9, &v36);
      swift_unknownObjectRelease();
      if (*(&v37 + 1))
      {
        sub_100001AB4(&qword_100174F60, &qword_100121090);
        sub_100001AB4(&qword_100175360, &qword_100121340);
        if (swift_dynamicCast())
        {
          return v34;
        }

        goto LABEL_11;
      }
    }

    else
    {
      v38 = 0;
      v36 = 0u;
      v37 = 0u;
    }

    sub_10000D040(&v36, &qword_100174FB0, &unk_100120FC0);
LABEL_11:
    v12 = 61;
    goto LABEL_12;
  }

  v12 = 1;
LABEL_12:
  sub_10000CA2C();
  v13 = swift_allocError();
  *v14 = v12;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0xE000000000000000;
  swift_willThrow();
  *&v36 = 0;
  *(&v36 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(22);
  v15._countAndFlagsBits = 0xD000000000000014;
  v15._object = 0x800000010012CA30;
  String.append(_:)(v15);
  v34 = v13;
  sub_100001AB4(&qword_100177270, &qword_100120A40);
  _print_unlocked<A, B>(_:_:)();
  v16 = v36;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v17 = sub_10000A1BC(v1, qword_1001794F0);
  sub_10000A2A4(v17, v4);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v18, qword_100179508);
  sub_100039F58(2, v4, v16, *(&v16 + 1));

  sub_10000C9D0(v4);
  return 0;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ActiveClockSelector.refreshSamplingRate()()
{
  if (sub_100033518())
  {
    v1 = v0;
    ObjectType = swift_getObjectType();
    (*(v1 + 32))(ObjectType, v1);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_10000CA2C();
    swift_allocError();
    *v3 = 87;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0xE000000000000000;
    swift_willThrow();
  }
}

Swift::Void __swiftcall ActiveClockSelector.invalidateSamplingRate()()
{
  if (sub_100033518())
  {
    v1 = v0;
    ObjectType = swift_getObjectType();
    (*(*(v1 + 16) + 72))(ObjectType);

    swift_unknownObjectRelease();
  }
}

uint64_t ActiveClockSelector.rateRanges.getter()
{
  result = sub_100033518();
  if (result)
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    v4 = (*(*(v2 + 16) + 40))(ObjectType);
    swift_unknownObjectRelease();
    return v4;
  }

  return result;
}

uint64_t ActiveClockSelector.isValid.getter()
{
  result = sub_100033518();
  if (result)
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    LOBYTE(v2) = (*(*(v2 + 16) + 8))(ObjectType);
    swift_unknownObjectRelease();
    return v2 & 1;
  }

  return result;
}

uint64_t ActiveClockSelector.isInternal.getter()
{
  result = sub_100033518();
  if (result)
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    LOBYTE(v2) = (*(*(v2 + 16) + 56))(ObjectType);
    swift_unknownObjectRelease();
    return v2 & 1;
  }

  return result;
}

uint64_t ActiveClockSelector.curSamplingRate.getter()
{
  if (!sub_100033518())
  {
    return 0;
  }

  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = (*(*(v1 + 16) + 16))(ObjectType);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t ActiveClockSelector.curSamplingRate.setter(uint64_t a1, char a2)
{
  result = sub_100033518();
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(*(v6 + 16) + 24))(a1, a2 & 1, ObjectType);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*ActiveClockSelector.curSamplingRate.modify(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 16) = v1;
  if (sub_100033518())
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    v6 = (*(*(v4 + 16) + 16))(ObjectType);
    v8 = v7;
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
    v8 = 1;
  }

  *a1 = v6;
  *(a1 + 8) = v8 & 1;
  return sub_100033DF4;
}

uint64_t sub_100033DF4(uint64_t *a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = *(a1 + 8);
  result = sub_100033518();
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(*(v6 + 16) + 24))(v2, v3, ObjectType);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t ActiveClockSelector.isSettable.getter()
{
  result = sub_100033518();
  if (result)
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    LOBYTE(v2) = (*(*(v2 + 16) + 48))(ObjectType);
    swift_unknownObjectRelease();
    return v2 & 1;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ActiveClockSelector.prepareClockForIO(_:)(Swift::UInt64 a1)
{
  if (sub_100033518())
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(*(v3 + 16) + 64))(a1, ObjectType);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_10000CA2C();
    swift_allocError();
    *v5 = 87;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0xE000000000000000;
    swift_willThrow();
  }
}

uint64_t ActiveClockSelector.deinit()
{
  sub_100024174(v0 + 16);
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 80);

  v4 = *(v0 + 96);

  sub_10000C9D0(v0 + OBJC_IVAR____TtC9AUASDCore19ActiveClockSelector_logID);
  return v0;
}

uint64_t ActiveClockSelector.__deallocating_deinit()
{
  sub_100024174(v0 + 16);
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 80);

  v4 = *(v0 + 96);

  sub_10000C9D0(v0 + OBJC_IVAR____TtC9AUASDCore19ActiveClockSelector_logID);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10003409C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  a1[3] = &type metadata for ClockSelector;
  a1[4] = sub_10003771C();
  v6 = swift_allocObject();
  *a1 = v6;
  v7 = *(v1 + 48);
  *(v6 + 16) = *(v1 + 32);
  *(v6 + 32) = v7;
  *(v6 + 48) = v3;
  *(v6 + 56) = v4;
  *(v6 + 64) = v5;
}

uint64_t sub_100034134@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 64);
  v5 = *(v3 + 72);
  v6 = *(v3 + 80);
  a1[3] = &type metadata for ClockSelector;
  a1[4] = sub_1000377B8();
  v7 = swift_allocObject();
  *a1 = v7;
  v8 = *(v3 + 48);
  *(v7 + 16) = *(v3 + 32);
  *(v7 + 32) = v8;
  *(v7 + 48) = v4;
  *(v7 + 56) = v5;
  *(v7 + 64) = v6;
}

uint64_t (*sub_1000341D0(uint64_t *a1))()
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
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_100026374;
}

uint64_t sub_100034268()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);

  return v2;
}

Swift::Void __swiftcall AUAClockSelectorControl.selectionDidChange(_:)(Swift::OpaquePointer_optional a1)
{
  v3 = v1;
  rawValue = a1.value._rawValue;
  v5 = type metadata accessor for LogID(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v1 owner];
  if (!v9)
  {
    return;
  }

  v84 = v9;
  v10 = type metadata accessor for AUAAudioDevice();
  v11 = swift_dynamicCastClass();
  if (!v11 || (v83 = v11, v12 = OBJC_IVAR____TtC9AUASDCore23AUAClockSelectorControl_clockSelector, (Strong = swift_weakLoadStrong()) == 0))
  {
    v19 = v84;

    return;
  }

  v14 = Strong;
  if (!rawValue)
  {

    return;
  }

  v82 = v12;
  if (!(rawValue >> 62))
  {
    v15 = *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15 <= 2)
    {
      aBlock = _swiftEmptyArrayStorage;
      goto LABEL_8;
    }

LABEL_60:
    sub_10000CA2C();
    v39 = swift_allocError();
    *v59 = 1;
    *(v59 + 8) = 0;
    *(v59 + 16) = 0xE000000000000000;
    swift_willThrow();
    goto LABEL_61;
  }

LABEL_52:
  if (_CocoaArrayWrapper.endIndex.getter() > 2)
  {
    goto LABEL_60;
  }

  aBlock = _swiftEmptyArrayStorage;
  v15 = _CocoaArrayWrapper.endIndex.getter();
LABEL_8:
  v78 = v10;
  v79 = v8;
  v80 = v14;
  v81 = v5;
  if (v15)
  {
    v8 = 0;
    v10 = rawValue & 0xC000000000000001;
    v16 = _swiftEmptyArrayStorage;
    v14 = &selRef_modelUID;
    do
    {
      v5 = v8;
      while (1)
      {
        if (v10)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_51;
          }

          v17 = *(rawValue + 8 * v5 + 32);
        }

        v2 = v17;
        v8 = (v5 + 1);
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        if ([v17 selected])
        {
          break;
        }

        ++v5;
        if (v8 == v15)
        {
          v5 = v81;
          goto LABEL_30;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v18 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v16 = aBlock;
      v5 = v81;
    }

    while (v8 != v15);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

LABEL_30:
  if (!(v16 >> 62))
  {
    v8 = v79;
    v14 = v80;
    v20 = v78;
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_32;
    }

    goto LABEL_59;
  }

  if (v16 < 0)
  {
    rawValue = v16;
  }

  else
  {
    rawValue = v16 & 0xFFFFFFFFFFFFFF8;
  }

  v58 = _CocoaArrayWrapper.endIndex.getter();
  v8 = v79;
  v14 = v80;
  v20 = v78;
  if (v58 != 1 || !_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_59:

    goto LABEL_60;
  }

LABEL_32:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_75:
      swift_once();
      goto LABEL_40;
    }

    v21 = *(v16 + 32);
  }

  v2 = v21;

  if (v14[5] != ([v2 value] >> 16))
  {
LABEL_46:
    sub_10000CA2C();
    v39 = swift_allocError();
    *v40 = 1;
    *(v40 + 8) = 0;
    *(v40 + 16) = 0xE000000000000000;
    swift_willThrow();

LABEL_61:
    aBlock = 0;
    v87 = 0xE000000000000000;
    _StringGuts.grow(_:)(67);
    v94 = aBlock;
    v95 = v87;
    v60._countAndFlagsBits = 0x6553206B636F6C43;
    v60._object = 0xEF20726F7463656CLL;
    String.append(_:)(v60);
    v61 = swift_weakLoadStrong();
    if (v61)
    {
      v62 = *(v61 + 40);
    }

    else
    {
      v62 = 0;
    }

    aBlock = v62;
    v63._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v63);

    v64._countAndFlagsBits = 0x69766564206E6F20;
    v64._object = 0xEB00000000206563;
    String.append(_:)(v64);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v65 = v14[3];
      ObjectType = swift_getObjectType();
      active = ActiveFunction.deviceName.getter(ObjectType, v65);
      v69 = v68;
      swift_unknownObjectRelease();
    }

    else
    {
      v69 = 0xE700000000000000;
      active = 0x6E776F6E6B6E55;
    }

    v70._countAndFlagsBits = active;
    v70._object = v69;
    String.append(_:)(v70);

    v71._countAndFlagsBits = 0x726F727245202D20;
    v71._object = 0xE900000000000020;
    String.append(_:)(v71);
    v93 = v39;
    sub_100001AB4(&qword_100177270, &qword_100120A40);
    _print_unlocked<A, B>(_:_:)();
    v72._object = 0x800000010012C2B0;
    v72._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v72);
    v73 = v94;
    v74 = v95;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v75 = sub_10000A1BC(v5, qword_1001794F0);
    sub_10000A2A4(v75, v8);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v76 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v76, qword_100179508);
    sub_100039F58(2, v8, v73, v74);

    sub_10000C9D0(v8);
    return;
  }

  v15 = [v2 value] >> 24;
  aBlock = 0;
  v87 = 0xE000000000000000;
  _StringGuts.grow(_:)(58);
  v22._countAndFlagsBits = 0x6553206B636F6C43;
  v22._object = 0xEF20726F7463656CLL;
  String.append(_:)(v22);
  v92 = v14[5];
  v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v23);

  v24._countAndFlagsBits = 0x69766564206E6F20;
  v24._object = 0xEB00000000206563;
  String.append(_:)(v24);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v25 = v14[3];
    v26 = swift_getObjectType();
    v27 = ActiveFunction.deviceName.getter(v26, v25);
    v29 = v28;
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0xE700000000000000;
    v27 = 0x6E776F6E6B6E55;
  }

  v30._countAndFlagsBits = v27;
  v30._object = v29;
  String.append(_:)(v30);

  v31._object = 0x800000010012C7B0;
  v31._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v31);
  LOBYTE(v94) = v15;
  v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v32);

  v16 = aBlock;
  rawValue = v87;
  if (qword_100173CB8 != -1)
  {
    goto LABEL_75;
  }

LABEL_40:
  v5 = v81;
  v33 = sub_10000A1BC(v81, qword_1001794F0);
  sub_10000A2A4(v33, v8);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v34, qword_100179508);
  sub_100039AA0(2, v8, v16, rawValue);

  sub_10000C9D0(v8);
  v35 = v14[9];
  v36 = *(v35 + 2);
  if (!v36)
  {
    goto LABEL_46;
  }

  v37 = 0;
  v38 = v35 + 32;
  while (*&v38[8 * v37] != v15)
  {
    if (v36 == ++v37)
    {
      goto LABEL_46;
    }
  }

  v41 = swift_allocObject();
  v41[2] = v14;
  v41[3] = v37;
  v42 = v83;
  v41[4] = v83;
  v41[5] = v3;
  aBlock = 0xD000000000000016;
  v87 = 0x800000010012C2F0;

  v43 = v84;
  v44 = v3;
  v45._countAndFlagsBits = 8236;
  v45._object = 0xE200000000000000;
  String.append(_:)(v45);
  v46._countAndFlagsBits = 0xD00000000000001BLL;
  v46._object = 0x800000010012C7D0;
  String.append(_:)(v46);
  v47._countAndFlagsBits = 2108704;
  v47._object = 0xE300000000000000;
  String.append(_:)(v47);
  v94 = 716;
  v48._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v48);

  sub_100038CD8("AUAAudioDevice_requestConfigurationChange", 41, 2, aBlock, v87, &v42[OBJC_IVAR___AUAAudioDevice_logID]);

  v49 = *&v42[OBJC_IVAR___AUAAudioDevice_configChangedHandlers];
  v50 = swift_allocObject();
  v50[2] = sub_100037FAC;
  v50[3] = v41;
  aBlock = sub_10000CF5C;
  v87 = v50;
  v51 = *(v49 + 16);
  v52 = __chkstk_darwin(v50);
  *(&v77 - 2) = v49;
  *(&v77 - 1) = &aBlock;
  __chkstk_darwin(v52);
  *(&v77 - 2) = sub_10000CF64;
  *(&v77 - 1) = v53;

  os_unfair_lock_lock(v51 + 4);
  sub_10000CF80(&v94);
  os_unfair_lock_unlock(v51 + 4);
  LODWORD(v49) = v94;

  if (v49 == 1)
  {
    v54 = swift_allocObject();
    v55 = v83;
    *(v54 + 16) = v83;
    v90 = sub_10000CFD4;
    v91 = v54;
    aBlock = _NSConcreteStackBlock;
    v87 = 1107296256;
    v88 = sub_1000172D4;
    v89 = &unk_1001618E8;
    v56 = _Block_copy(&aBlock);
    v57 = v43;

    v85.receiver = v55;
    v85.super_class = v20;
    objc_msgSendSuper2(&v85, "requestConfigurationChange:", v56);
    _Block_release(v56);
  }
}

void sub_10003533C(void *a1, uint64_t a2)
{
  v6 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    swift_once();
    v7 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v7, qword_100179508);
    sub_100039F58(2, v2 + v4, v3, a1);

    return;
  }

  sub_1000330B4(v6);
  AUAAudioDevice.clockChanged()();
}

id AUAClockSelectorControl.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AUAClockSelectorControl();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100035698()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = *(Strong + 40);

  return v1;
}

uint64_t sub_1000356DC()
{
  if (swift_weakLoadStrong())
  {
    sub_100032520();
  }

  else
  {
    sub_10000CA2C();
    swift_allocError();
    *v1 = 72;
    *(v1 + 8) = 0;
    *(v1 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }
}

uint64_t sub_100035760(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10003582C(v11, 0, 0, 1, a1, a2);
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
    sub_10001E0C4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000CE78(v11);
  return v7;
}

unint64_t sub_10003582C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100035938(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

void *sub_100035938(uint64_t a1, unint64_t a2)
{
  v4 = sub_100035984(a1, a2);
  sub_100035AB4(&off_100159DC8);
  result = v4;
  v3 = v4[2] - 1;
  return result;
}

void *sub_100035984(uint64_t a1, unint64_t a2)
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

  v6 = sub_100035BA0(v5, 0);
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

  result = _StringObject.sharedUTF8.getter();
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
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100035BA0(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

uint64_t sub_100035AB4(uint64_t result)
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

  result = sub_100035C14(result, v12, 1, v3);
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

void *sub_100035BA0(uint64_t a1, uint64_t a2)
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

  sub_100001AB4(&qword_100175C88, qword_100121348);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100035C14(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175C88, qword_100121348);
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

uint64_t sub_100035D28(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR___AUAAudioDevice_clock);
  type metadata accessor for ActiveClockSource(0);
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    return *(v4 + 40) == *(a1 + 40);
  }

  else
  {
    type metadata accessor for ActiveClockSelector(0);
    result = swift_dynamicCastClass();
    if (!result)
    {
      return result;
    }

    v7 = *(a1 + 40);
    if (*(result + 40) == v7)
    {
      return 1;
    }

    swift_unknownObjectRetain();
    if (!sub_100033518())
    {
      swift_unknownObjectRelease();
      return 0;
    }

    v9 = v8;
    ObjectType = swift_getObjectType();
    v11 = (*(*(v9 + 8) + 48))(ObjectType);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v11 == v7;
  }
}

uint64_t sub_100035E24(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for LogID(0);
  v8 = *(*(v7 - 1) + 64);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  ActiveControlInterface.entity(at:)(a1, &v35);
  if (v37)
  {
    sub_100001AB4(&qword_100174F60, &qword_100121090);
    type metadata accessor for ActiveClockSource(0);
    if (swift_dynamicCast())
    {
      v11 = v33;
      v12 = (*(a3 + 40) << 16) | (*(v33 + 40) << 24);
      if (HIDWORD(v12))
      {
        __break(1u);
      }

      else
      {
        swift_beginAccess();
        if (*(v11 + 136))
        {
          v13 = *(v11 + 128);
          v14 = *(v11 + 136);

          v15 = String._bridgeToObjectiveC()();
        }

        else
        {
          v15 = 0;
        }

        v31 = [objc_opt_self() withValue:v12 andName:v15];

        if (!v31)
        {
        }

        v7 = v31;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_18:
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }
      }

      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      goto LABEL_18;
    }
  }

  else
  {
    sub_10000D040(&v35, &qword_100174FB0, &unk_100120FC0);
  }

  v35 = 0;
  v36 = 0xE000000000000000;
  _StringGuts.grow(_:)(57);
  v33 = v35;
  v34 = v36;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    active = ActiveFunction.deviceName.getter(ObjectType, v16);
    v20 = v19;
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0xE700000000000000;
    active = 0x6E776F6E6B6E55;
  }

  v21._countAndFlagsBits = active;
  v21._object = v20;
  String.append(_:)(v21);

  v22._object = 0x800000010012C790;
  v22._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v22);
  v32 = *(a3 + 40);
  v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v23);

  v24._countAndFlagsBits = 0xD000000000000022;
  v24._object = 0x800000010012CA90;
  String.append(_:)(v24);
  v32 = a1;
  v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v25);

  v26 = v33;
  v27 = v34;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v28 = sub_10000A1BC(v7, qword_1001794F0);
  sub_10000A2A4(v28, v10);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v29, qword_100179508);
  sub_100039F58(2, v10, v26, v27);

  return sub_10000C9D0(v10);
}

id sub_100036214(int a1)
{
  v4 = type metadata accessor for Mirror();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 != 1735159650)
  {
    return 0;
  }

  v10 = *(v1 + 80);
  if (!v10)
  {
    return 0;
  }

  v81 = v7;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v12 = result;
  v13 = *(v1 + 24);
  swift_beginAccess();
  if (*(v1 + 113) == 1 || (v78 = v1, v14 = *(v1 + 112), ObjectType = swift_getObjectType(), (v16 = (*(v13 + 16))(ObjectType, v13)) == 0))
  {
LABEL_32:
    swift_unknownObjectRelease();
    return 0;
  }

  v71 = v16;
  v17 = v12;
  v18 = (*(v13 + 24))(ObjectType, v13);
  v19 = *(v18 + 168);
  v20 = *(v19 + 16);
  if (!v20)
  {

    goto LABEL_32;
  }

  v76 = v10;
  v68 = v14;
  v77 = v18;
  v70 = v17;
  v69 = v2;
  v21 = 0;
  v22 = v19 + 32;
  v23 = v78;
  do
  {
    sub_10001EAFC(v22, &v84);
    sub_10001EFE4(&v84, v86);
    v24 = sub_100001AB4(&qword_100174F60, &qword_100121090);
    type metadata accessor for ActiveClockSelector(0);
    v25 = swift_dynamicCast();
    v26 = 0;
    if (v25)
    {

      v26 = 1;
    }

    v27 = __OFADD__(v21, v26);
    v21 += v26;
    if (v27)
    {
      __break(1u);
      goto LABEL_61;
    }

    v22 += 40;
    --v20;
  }

  while (v20);
  if (v21 != 1)
  {

    swift_unknownObjectRelease();

    return 0;
  }

  v86[0] = _swiftEmptyArrayStorage;
  v28 = *(v23 + 72);
  v24 = *(v28 + 16);
  v29 = v77;
  v30 = v76;
  if (v24)
  {
    v31 = 0;
    while (v31 < *(v28 + 16))
    {
      v32 = v31 + 1;
      sub_100035E24(*(v28 + 32 + 8 * v31), v29, v23, v86);
      v31 = v32;
      if (v24 == v32)
      {
        goto LABEL_17;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

LABEL_17:
  v75 = *(v30 + 16);
  if (!v75)
  {
LABEL_31:
    sub_10000CA2C();
    swift_allocError();
    *v47 = 72;
    *(v47 + 8) = 0;
    *(v47 + 16) = 0xE000000000000000;
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  v33 = 0;
  v34 = (v30 + 32);
  v74 = (v5 + 1);
  while (1)
  {
    v35 = *(v30 + 16);
    v80 = v33;
    if (v33 >= v35)
    {
      goto LABEL_62;
    }

    v36 = v34[2];
    v79 = v34;
    v37 = *v34;
    v85[1] = &type metadata for USBDescriptorControl;
    v73 = v36;
    BYTE2(v84) = v36;
    v72 = v37;
    LOWORD(v84) = v37;
    Mirror.init(reflecting:)();
    v5 = Mirror.children.getter();
    v38 = v5[2];
    v39 = v5[3];
    v41 = v5[4];
    v40 = v5[5];
    v24 = swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v42 = dispatch thunk of _AnyIndexBox._typeID.getter();
    swift_getObjectType();
    if (v42 != dispatch thunk of _AnyIndexBox._typeID.getter())
    {
      goto LABEL_63;
    }

    v43 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if ((v43 & 1) == 0)
    {
      break;
    }

    v5 = v78;
    v30 = v76;
    (*v74)(v9, v81);
LABEL_28:

    v24 = 0x6E776F6E6B6E75;
LABEL_29:
    v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v46)
    {
      goto LABEL_38;
    }

    v33 = v80 + 1;
    v34 = v79 + 3;
    if (v75 == v80 + 1)
    {
      goto LABEL_31;
    }
  }

  dispatch thunk of _AnyCollectionBox.subscript.getter();

  v44 = *(&v84 + 1);
  v24 = v84;
  sub_10000CE78(v85);
  v45 = *v74;
  v30 = v76;
  if (!v44)
  {
    v5 = v78;
    v45(v9, v81);
    goto LABEL_28;
  }

  v45(v9, v81);
  v5 = v78;
  if (v24 != 0x726F7463656C6573 || v44 != 0xE800000000000000)
  {
    goto LABEL_29;
  }

LABEL_38:
  v48 = LockDelay.units.getter(v72);
  v81 = v86[0];
  result = [v71 plugin];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v49 = result;
  v50 = type metadata accessor for AUAClockSelectorControl();
  v51 = objc_allocWithZone(v50);
  swift_weakInit();
  swift_weakAssign();
  v82.receiver = v51;
  v82.super_class = v50;
  v52 = v49;
  v53 = objc_msgSendSuper2(&v82, "initWithIsSettable:forElement:inScope:withPlugin:andObjectClassID:", v48 & 1, 0, 1735159650, v52, 1668047723);
  v24 = v53;

  if (v24)
  {

    v80 = v53;
    v79 = v52;
    if (v81 >> 62)
    {
      goto LABEL_66;
    }

    for (i = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v52 = v24;
      if (!i)
      {
        break;
      }

      v55 = 0;
      v56 = v81 & 0xC000000000000001;
      v57 = v81 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v56)
        {
          v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v55 >= *(v57 + 16))
          {
            goto LABEL_65;
          }

          v58 = *(v81 + 8 * v55 + 32);
        }

        v24 = v58;
        v59 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          break;
        }

        [v52 addValue:v58];

        ++v55;
        if (v59 == i)
        {
          goto LABEL_51;
        }
      }

LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      ;
    }

LABEL_51:

    v60 = v80;
  }

  else
  {
    v60 = 0;
  }

  swift_beginAccess();
  v61 = v5[13];
  v5[13] = v60;
  v62 = v60;

  if (!v60)
  {

    swift_unknownObjectRelease();

    return 0;
  }

  if ((v81 & 0xC000000000000001) == 0)
  {
    if (v68)
    {
      if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v68)
      {
        v63 = *(v81 + 8 * (v68 - 1) + 32);
        goto LABEL_58;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_58:
  v64 = v63;
  v65 = [v63 value];

  LODWORD(v83) = v65;
  [v62 setSelectedValues:&v83 withCount:1];
  sub_100001AB4(&qword_100174FA0, &unk_100120BB0);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_100120A20;
  *(v66 + 32) = v62;

  swift_unknownObjectRelease();

  return v66;
}

unint64_t sub_10003771C()
{
  result = qword_1001757C0;
  if (!qword_1001757C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001757C0);
  }

  return result;
}

uint64_t sub_100037770()
{
  v1 = v0[6];

  v2 = v0[7];

  v3 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_1000377B8()
{
  result = qword_1001757C8;
  if (!qword_1001757C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001757C8);
  }

  return result;
}

void sub_10003780C(unsigned __int8 a1)
{
  v2 = v1;
  v4 = a1;
  v5 = type metadata accessor for LogID(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4)
  {
    v53 = 0;
    v54 = 0xE000000000000000;
    _StringGuts.grow(_:)(67);
    v57 = v53;
    v58 = v54;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v2 + 24);
      ObjectType = swift_getObjectType();
      active = ActiveFunction.deviceName.getter(ObjectType, v9);
      v13 = v12;
      swift_unknownObjectRelease();
    }

    else
    {
      active = 0x6E776F6E6B6E55;
      v13 = 0xE700000000000000;
    }

    v20._countAndFlagsBits = active;
    v20._object = v13;
    String.append(_:)(v20);

    v21._object = 0x800000010012CA50;
    v21._countAndFlagsBits = 0xD00000000000001ELL;
    String.append(_:)(v21);
    v56 = *(v2 + 40);
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    v23._countAndFlagsBits = 0xD00000000000001FLL;
    v23._object = 0x800000010012CA70;
    String.append(_:)(v23);
    LOBYTE(v56) = a1;
    _print_unlocked<A, B>(_:_:)();
    v25 = v57;
    v24 = v58;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v26 = sub_10000A1BC(v5, qword_1001794F0);
    sub_10000A2A4(v26, v8);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v27, qword_100179508);
    sub_100039F58(2, v8, v25, v24);

    sub_10000C9D0(v8);
    sub_10000CA2C();
    swift_allocError();
    *v28 = 2;
    goto LABEL_17;
  }

  swift_beginAccess();
  v14 = *(v2 + 104);
  if (!v14)
  {
    sub_10000CA2C();
    swift_allocError();
    v29 = 72;
LABEL_16:
    *v28 = v29;
LABEL_17:
    *(v28 + 8) = 0;
    *(v28 + 16) = 0xE000000000000000;
    swift_willThrow();
    return;
  }

  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    sub_10000CA2C();
    swift_allocError();
    v29 = 69;
    goto LABEL_16;
  }

  v51 = v5;
  v15 = *(v2 + 24);
  v16 = swift_getObjectType();
  v17 = *(v15 + 24);
  v18 = v14;
  v17(v16, v15);
  swift_unknownObjectRelease();
  sub_100032520();
  swift_beginAccess();
  if (*(v2 + 113))
  {
    sub_10000CA2C();
    swift_allocError();
    *v19 = 1;
    *(v19 + 8) = 0;
    *(v19 + 16) = 0xE000000000000000;
    swift_willThrow();

LABEL_35:

    return;
  }

  v30 = v18;
  v31 = *(v2 + 112);
  v53 = 0;
  v54 = 0xE000000000000000;
  _StringGuts.grow(_:)(50);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v32 = *(v2 + 24);
    v33 = swift_getObjectType();
    v34 = ActiveFunction.deviceName.getter(v33, v32);
    v36 = v35;
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0x6E776F6E6B6E55;
    v36 = 0xE700000000000000;
  }

  v37._countAndFlagsBits = v34;
  v37._object = v36;
  String.append(_:)(v37);

  v38._object = 0x800000010012CA50;
  v38._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v38);
  v39 = *(v2 + 40);
  v52 = v39;
  v40._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v40);

  v41._countAndFlagsBits = 0x6920525543202D20;
  v41._object = 0xEE0020776F6E2073;
  String.append(_:)(v41);
  LOBYTE(v52) = v31;
  v42._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v42);

  v43 = v53;
  v44 = v54;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v45 = sub_10000A1BC(v51, qword_1001794F0);
  sub_10000A2A4(v45, v8);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v46, qword_100179508);
  sub_100039AA0(2, v8, v43, v44);

  sub_10000C9D0(v8);
  if (!v31 || (v47 = *(v2 + 72), *(v47 + 16) < v31))
  {
    sub_10000CA2C();
    swift_allocError();
    v49 = 1;
LABEL_34:
    *v48 = v49;
    *(v48 + 8) = 0;
    *(v48 + 16) = 0xE000000000000000;
    swift_willThrow();

    goto LABEL_35;
  }

  ActiveControlInterface.entity(at:)(*(v47 + 8 * (v31 - 1) + 32), &v53);
  if (!v55)
  {
    sub_10000D040(&v53, &qword_100174FB0, &unk_100120FC0);
    goto LABEL_33;
  }

  sub_100001AB4(&qword_100174F60, &qword_100121090);
  type metadata accessor for ActiveClockSource(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_33:
    sub_10000CA2C();
    swift_allocError();
    v49 = 87;
    goto LABEL_34;
  }

  if (((*(v52 + 40) << 24) | (v39 << 16)) >> 32)
  {
    __break(1u);
  }

  LODWORD(v53) = (*(v52 + 40) << 24) | (v39 << 16);
  [v30 setSelectedValues:&v53 withCount:1];
}

uint64_t sub_100037F64()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 48, 7);
}

void sub_100037FAC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_10003533C(*(v0 + 16), *(v0 + 24));
}

uint64_t sub_100037FB8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100037FF0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100038028(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100038068()
{
  result = qword_1001757E0;
  if (!qword_1001757E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001757E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LockDelay.LockDelayUnits(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LockDelay.LockDelayUnits(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100038228()
{
  result = type metadata accessor for LogID(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100038338()
{
  result = type metadata accessor for LogID(319);
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

uint64_t sub_100038450()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

Swift::Int sub_100038498()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  *(v2 + OBJC_IVAR____TtC9AUASDCore17ActiveClockSource_lastSamplingRateChangedTimestamp) = mach_absolute_time();
  AUAAudioDevice.clockChanged()();
  return OS_dispatch_semaphore.signal()();
}

unint64_t sub_1000384E4()
{
  result = qword_100175C80;
  if (!qword_100175C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175C80);
  }

  return result;
}

AUASDCore::AUAExceptionLevel_optional __swiftcall AUAExceptionLevel.init(rawValue:)(Swift::UInt rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

uint64_t *sub_100038580@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

Swift::Int tADCControlRequestParameterBlockLayout.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t AUAError.hash(into:)(uint64_t a1, unsigned __int8 a2)
{
  Hasher._combine(_:)(a2);

  return String.hash(into:)();
}

Swift::Int AUAError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10003873C()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000387A0()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  Hasher._combine(_:)(*v0);

  return String.hash(into:)();
}

Swift::Int sub_1000387F4()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_100038858()
{
  result = qword_100175C90;
  if (!qword_100175C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175C90);
  }

  return result;
}

unint64_t sub_1000388B0()
{
  result = qword_100175C98;
  if (!qword_100175C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175C98);
  }

  return result;
}

unint64_t sub_100038908()
{
  result = qword_100175CA0;
  if (!qword_100175CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100175CA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AUAFeedbackTransferBlock.FeedbackPacketSize(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AUAFeedbackTransferBlock.FeedbackPacketSize(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AUAErrorCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x82)
  {
    goto LABEL_17;
  }

  if (a2 + 126 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 126) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 126;
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

      return (*a1 | (v4 << 8)) - 126;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 126;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x7F;
  v8 = v6 - 127;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AUAErrorCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 126 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 126) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x82)
  {
    v4 = 0;
  }

  if (a2 > 0x81)
  {
    v5 = ((a2 - 130) >> 8) + 1;
    *result = a2 + 126;
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
    *result = a2 + 126;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for ClockRateRange(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100038C18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}