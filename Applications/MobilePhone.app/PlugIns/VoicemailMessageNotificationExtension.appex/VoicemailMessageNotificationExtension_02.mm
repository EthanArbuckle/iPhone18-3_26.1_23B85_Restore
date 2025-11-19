uint64_t sub_1000456FC(uint64_t a1, uint64_t a2)
{
  v5 = sub_100017538(&unk_1000995C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = *v2;
  v9 = sub_10006099C();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v11 = sub_1000492F8(&qword_1000995D0, type metadata accessor for VoicemailActor);
  v12 = swift_allocObject();
  v12[2] = inited;
  v12[3] = v11;
  v12[4] = v8;
  v12[5] = a1;
  v12[6] = a2;
  v13 = v8;

  sub_100037848(0, 0, v7, &unk_10007A1B0, v12);
  sub_10006075C();
  swift_allocObject();
  return sub_10006076C();
}

uint64_t sub_1000458AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_10001BE64;

  return sub_1000404D8(a5);
}

uint64_t sub_10004597C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1000183D4;

  return sub_100041584(a5);
}

uint64_t sub_100045A4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100017538(&unk_1000995C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  sub_100017538(&qword_10009A700);
  v10 = sub_1000608CC();
  v11 = sub_10006099C();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v13 = sub_1000492F8(&qword_1000995D0, type metadata accessor for VoicemailActor);
  v14 = swift_allocObject();
  v14[2] = inited;
  v14[3] = v13;
  v14[4] = a1;
  v14[5] = v10;
  v15 = a1;
  sub_100037558(0, 0, v9, a5, v14);
}

uint64_t sub_100045BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_10001BE64;

  return sub_100042A28(a5);
}

uint64_t sub_100045CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_10001BE64;

  return sub_100043E2C(a5);
}

uint64_t sub_100045D84(uint64_t a1, uint64_t a2)
{
  v4 = sub_10006074C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100045E04(uint64_t a1, uint64_t a2)
{
  v4 = sub_10006074C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100045E94()
{
  result = sub_10006074C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100045F00()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100045F48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001BE64;

  return sub_10003890C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100046010(uint64_t a1, uint64_t a2)
{
  v4 = sub_100017538(&unk_1000995C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100046080(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100046178;

  return v6(a1);
}

uint64_t sub_100046178()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_100046270(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10004633C(v11, 0, 0, 1, a1, a2);
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
    sub_10004761C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100018230(v11);
  return v7;
}

unint64_t sub_10004633C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100046448(a5, a6);
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
    result = sub_100060C2C();
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

char *sub_100046448(uint64_t a1, unint64_t a2)
{
  v3 = sub_100046494(a1, a2);
  sub_1000465C4(&off_100089BF0);
  return v3;
}

char *sub_100046494(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000466B0(v5, 0);
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

  result = sub_100060C2C();
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
        v10 = sub_10006087C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000466B0(v10, 0);
        result = sub_100060BEC();
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

uint64_t sub_1000465C4(uint64_t result)
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

  result = sub_100046724(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

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

void *sub_1000466B0(uint64_t a1, uint64_t a2)
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

  sub_100017538(&qword_10009A2E8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100046724(char *result, int64_t a2, char a3, char *a4)
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
    sub_100017538(&qword_10009A2E8);
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

char *sub_100046818(char *a1, int64_t a2, char a3)
{
  result = sub_1000468B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100046838(void *a1, int64_t a2, char a3)
{
  result = sub_1000469EC(a1, a2, a3, *v3, &qword_10009A388, &unk_10007A4C0, &qword_10009A390);
  *v3 = result;
  return result;
}

void *sub_100046878(void *a1, int64_t a2, char a3)
{
  result = sub_100046B20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100046898(size_t a1, int64_t a2, char a3)
{
  result = sub_100046C54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000468B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100017538(&qword_10009A398);
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

void *sub_1000469EC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    sub_100017538(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100017538(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_100046B20(void *result, int64_t a2, char a3, void *a4)
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
    sub_100017538(&qword_10009A380);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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
    sub_100017538(&qword_10009A020);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100046C54(size_t result, int64_t a2, char a3, void *a4)
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

  sub_100017538(&qword_10009A2F0);
  v10 = *(sub_10006036C() - 8);
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
  v15 = *(sub_10006036C() - 8);
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

Swift::Int sub_100046E2C(uint64_t a1, uint64_t a2, uint64_t a3, Swift::Int *a4)
{
  result = sub_100060ACC(*a4);
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1000603FC();
    v7 = sub_10006042C();
    if ((v8 & 1) == 0)
    {
      type metadata accessor for MessageID(0);
      do
      {
        v9 = *(a2 + 8 * v7);
        v10 = sub_100060ADC();

        if (v10)
        {
          break;
        }

        sub_10006044C();
        v7 = sub_10006042C();
      }

      while ((v11 & 1) == 0);
    }

    return v7;
  }

  return result;
}

unint64_t sub_100046F54(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100060ACC(*(v2 + 40));

  return sub_100047010(a1, v4);
}

unint64_t sub_100046F98(uint64_t a1, uint64_t a2)
{
  sub_100060EBC();
  sub_10006085C();
  v4 = sub_100060EDC();

  return sub_1000470D4(a1, a2, v4);
}

unint64_t sub_100047010(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for MessageID(0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_100060ADC();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000470D4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100060E1C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_10004718C(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_10004979C;

  return v5(v2 + 16);
}

uint64_t sub_100047280(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001BE64;

  return sub_10004718C(a1, v4);
}

uint64_t sub_10004736C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001BE64;

  return sub_100046080(a1, v4);
}

uint64_t sub_100047424()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004745C()
{
  v2 = *(sub_10006074C() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001BE64;

  return sub_100040218(v4, v0 + v3);
}

uint64_t sub_100047534()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100047574()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001BE64;

  return sub_100038CE0(v2, v3, v4);
}

uint64_t sub_10004761C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10004767C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001BE64;

  return sub_100045CA0(a1, v4, v5, v7, v6);
}

uint64_t sub_10004773C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001BE64;

  return sub_100045BD0(a1, v4, v5, v7, v6);
}

uint64_t sub_1000477FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000183D4;

  return sub_10004597C(a1, v4, v5, v7, v6);
}

uint64_t sub_1000478BC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100047904(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001BE64;

  return sub_1000458AC(a1, v4, v5, v7, v6);
}

uint64_t sub_1000479C4(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_100047AB8;

  return v5(v2 + 16);
}

uint64_t sub_100047AB8()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

unint64_t sub_100047BE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100017538(&qword_10009A028);
    v3 = sub_100060D2C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_100046F54(v6);
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

unint64_t sub_100047CE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100017538(&qword_10009A328);
    v3 = sub_100060D2C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100046F98(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_100047DE4(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = type metadata accessor for VoicemailActor();
  v2[4] = swift_initStaticObject();
  v3 = swift_task_alloc();
  v2[5] = v3;
  *v3 = v2;
  v3[1] = sub_100047E94;

  return sub_100028E68();
}

uint64_t sub_100047E94(uint64_t a1)
{
  *(*v1 + 48) = a1;

  sub_1000492F8(&qword_1000995D0, type metadata accessor for VoicemailActor);
  v3 = sub_10006091C();

  return _swift_task_switch(sub_100048008, v3, v2);
}

uint64_t sub_100048008()
{
  v1 = v0[6];
  if (v1 >> 62)
  {
LABEL_16:
    v2 = sub_100060CFC();
    v3 = v0[6];
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = v0[6];
    if (v2)
    {
LABEL_3:
      v4 = 0;
      v5 = v1 & 0xC000000000000001;
      v1 &= 0xFFFFFFFFFFFFFF8uLL;
      v6 = v3 + 32;
      v7 = (v0[2] + 16);
      v12 = v7;
      do
      {
        if (v5)
        {
          v8 = sub_100060C0C();
          v9 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_13:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v4 >= *(v1 + 16))
          {
            __break(1u);
            goto LABEL_16;
          }

          v8 = *(v6 + 8 * v4);
          swift_unknownObjectRetain();
          v9 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_13;
          }
        }

        if ((*v7)(v0[2], v8))
        {
          sub_100060C3C();
          sub_100060C6C();
          sub_100060C7C();
          sub_100060C4C();
          v7 = v12;
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v4;
      }

      while (v9 != v2);
    }
  }

  v10 = v0[1];

  return v10(_swiftEmptyArrayStorage);
}

void sub_1000481C0()
{
  oslog = sub_10006072C();
  v0 = sub_100060A2C();
  if (os_log_type_enabled(oslog, v0))
  {
    v1 = swift_slowAlloc();
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v0, "VoiceMail rating: We failed to rate becuase we do not support it for FTMessages yet.", v1, 2u);
  }
}

uint64_t sub_10004826C()
{
  _Block_release(*(v0 + 16));
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000482B4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001BE64;

  return sub_1000452E4(v2, v3, v4);
}

uint64_t sub_10004836C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001BE64;

  return sub_100044FAC(v2, v3, v4);
}

uint64_t sub_100048424()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001BE64;

  return sub_100043C84(v2, v3, v4);
}

uint64_t sub_1000484D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001BE64;

  return sub_100042724(v2, v3, v4);
}

uint64_t sub_10004858C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001BE64;

  return sub_1000413DC(v2, v3, v4);
}

uint64_t sub_100048644(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001BE64;

  return sub_10003D5AC(a1, v4, v5, v6);
}

uint64_t sub_1000486FC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004873C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001BE64;

  return sub_10003D250(a1, v4, v5, v6);
}

uint64_t sub_1000487F0()
{
  v1 = sub_10006074C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000488B4()
{
  v2 = *(sub_10006074C() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001BE64;

  return sub_10003FFBC(v4, v0 + v3);
}

uint64_t sub_100048990(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001BE64;

  return sub_10003CEB4(a1, v4, v5, v7, v6);
}

uint64_t sub_100048A54()
{
  v2 = *(sub_10006074C() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10001BE64;

  return sub_10003F7A0(v4, v0 + v3, v5);
}

unint64_t sub_100048B5C(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_100048B6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001BE64;

  return sub_10003CB18(a1, v4, v5, v7, v6);
}

uint64_t sub_100048C2C()
{
  v2 = *(sub_10006074C() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10001BE64;

  return sub_10003F0D4(v4, v0 + v3, v5);
}

uint64_t sub_100048D34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001BE64;

  return sub_10003C5F8(a1, v4, v5, v7, v6);
}

uint64_t sub_100048DF4()
{
  v2 = *(sub_10006074C() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10001BE64;

  return sub_10003E70C(v4, v0 + v3, v5);
}

uint64_t sub_100048EFC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100048F44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001BE64;

  return sub_10003C25C(a1, v4, v5, v7, v6);
}

uint64_t sub_100049004()
{
  v1 = sub_10006074C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000490DC()
{
  v2 = *(sub_10006074C() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10001BE64;

  return sub_10003DBD4(v4, v0 + v3, v5);
}

uint64_t sub_1000491E4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100049224(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100049244(uint64_t a1)
{
  v2 = type metadata accessor for VoiceMailAnalyticsLogger(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000492A0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000492B0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000175E4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000492F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100049340()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100049378(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001BE64;

  return sub_100039664(a1, v4);
}

uint64_t sub_100049418()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100049458(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000183D4;

  return sub_10003980C(a1, v4, v5, v6);
}

uint64_t sub_10004950C()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100049554()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001BE64;

  return sub_10003BB28(v2, v3, v4);
}

uint64_t sub_100049608()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100049640(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001BE64;

  return sub_1000479C4(a1, v4);
}

uint64_t sub_1000497A0()
{
  v0 = sub_10006074C();
  sub_10002FE90(v0, qword_10009BED0);
  sub_10001762C(v0, qword_10009BED0);
  return sub_10006073C();
}

id sub_100049818()
{
  swift_unknownObjectRetain();
  swift_getAtKeyPath();
  swift_unknownObjectRelease();
  if (v8)
  {
    v0 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v0 = *v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v0)
    {
      swift_unknownObjectRetain();
      swift_getAtKeyPath();
      swift_unknownObjectRelease();
      v1 = objc_opt_self();
      v2 = sub_1000607EC();

      v3 = sub_1000607EC();

      v4 = [v1 normalizedPhoneNumberHandleForValue:v2 isoCountryCode:v3];

      if (v4)
      {
        v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithHandle:v4];

        return v5;
      }
    }

    else
    {
    }
  }

  return 0;
}

void sub_100049A1C(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_10006081C();
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

void *sub_100049A80(unint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_60:
    v3 = sub_100060CFC();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v1 & 0xC000000000000001;
  v37 = v2;
  v38 = v1;
  v39 = v1 & 0xC000000000000001;
  if (!v3)
  {
    goto LABEL_55;
  }

  v5 = 0;
  do
  {
    v6 = v5;
    while (1)
    {
      if (v4)
      {
        sub_100060C0C();
        v5 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_57;
        }

        swift_unknownObjectRetain();
        v5 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }
      }

      v7 = [swift_unknownObjectRetain() senderDestinationID];
      if (!v7)
      {
        goto LABEL_7;
      }

      v8 = v7;
      v9 = sub_10006081C();
      v11 = v10;
      swift_unknownObjectRelease();

      v12 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v12 = v9 & 0xFFFFFFFFFFFFLL;
      }

      if (!v12)
      {

        goto LABEL_8;
      }

      v13 = [swift_unknownObjectRetain() senderISOCountryCode];
      if (v13)
      {
        break;
      }

LABEL_7:
      swift_unknownObjectRelease();
LABEL_8:
      swift_unknownObjectRelease();
LABEL_9:
      ++v6;
      if (v5 == v3)
      {
        goto LABEL_31;
      }
    }

    v14 = v13;
    sub_10006081C();
    swift_unknownObjectRelease();

    v15 = objc_opt_self();
    v16 = sub_1000607EC();

    v2 = v37;
    v17 = sub_1000607EC();
    v1 = v38;

    v18 = [v15 normalizedPhoneNumberHandleForValue:v16 isoCountryCode:v17];

    v4 = v39;
    if (!v18)
    {
      goto LABEL_8;
    }

    v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithHandle:v18];

    swift_unknownObjectRelease();
    if (!v19)
    {
      goto LABEL_9;
    }

    sub_1000608AC();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1000608EC();
      v4 = v39;
    }

    sub_10006090C();
  }

  while (v5 != v3);
LABEL_31:
  v20 = 0;
  v36 = v3;
  do
  {
    v21 = v20;
    while (1)
    {
      if (v4)
      {
        sub_100060C0C();
        v20 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (v21 >= *(v2 + 16))
        {
          goto LABEL_59;
        }

        swift_unknownObjectRetain();
        v20 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_58;
        }
      }

      v22 = [swift_unknownObjectRetain() receiverDestinationID];
      if (!v22)
      {
        swift_unknownObjectRelease();
        goto LABEL_34;
      }

      v23 = v22;
      v24 = sub_10006081C();
      v26 = v25;
      swift_unknownObjectRelease();

      v27 = HIBYTE(v26) & 0xF;
      if ((v26 & 0x2000000000000000) == 0)
      {
        v27 = v24 & 0xFFFFFFFFFFFFLL;
      }

      if (!v27)
      {

        v4 = v39;
        goto LABEL_34;
      }

      v28 = [swift_unknownObjectRetain() receiverISOCountryCode];
      if (!v28)
      {

        swift_unknownObjectRelease();
        v4 = v39;
        goto LABEL_34;
      }

      v29 = v28;
      sub_10006081C();
      swift_unknownObjectRelease();

      v30 = objc_opt_self();
      v31 = sub_1000607EC();

      v32 = sub_1000607EC();
      v3 = v36;

      v33 = [v30 normalizedPhoneNumberHandleForValue:v31 isoCountryCode:v32];

      v2 = v37;
      v1 = v38;
      v4 = v39;
      if (v33)
      {
        break;
      }

LABEL_34:
      swift_unknownObjectRelease();
LABEL_35:
      ++v21;
      if (v20 == v3)
      {
        goto LABEL_55;
      }
    }

    v34 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithHandle:v33];

    swift_unknownObjectRelease();
    if (!v34)
    {
      goto LABEL_35;
    }

    sub_1000608AC();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1000608EC();
      v4 = v39;
    }

    sub_10006090C();
  }

  while (v20 != v36);
LABEL_55:
  sub_10004A160(_swiftEmptyArrayStorage);
  return _swiftEmptyArrayStorage;
}

unint64_t sub_10004A074()
{
  result = qword_10009A3A0;
  if (!qword_10009A3A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10009A3A0);
  }

  return result;
}

uint64_t sub_10004A0C0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_100060CFC();
LABEL_9:
  result = sub_100060C1C();
  *v1 = result;
  return result;
}

uint64_t sub_10004A160(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_100060CFC();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_100060CFC();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_10004A0C0(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_10004A70C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t (*sub_10004A250(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100060C0C();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_10004A2D0;
  }

  __break(1u);
  return result;
}

void (*sub_10004A2D8(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100060C0C();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10004A358;
  }

  __break(1u);
  return result;
}

void (*sub_10004A360(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100060C0C();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10004A908;
  }

  __break(1u);
  return result;
}

uint64_t sub_10004A3E0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100060CFC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100060CFC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10004A8B4(qword_10009A3C8, &qword_10009A020);
          for (i = 0; i != v6; ++i)
          {
            sub_100017538(&qword_10009A020);
            v9 = sub_10004A250(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100017538(&qword_10009A700);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10004A57C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100060CFC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100060CFC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10004A8B4(&qword_10009A3C0, &qword_10009A3B8);
          for (i = 0; i != v6; ++i)
          {
            sub_100017538(&qword_10009A3B8);
            v9 = sub_10004A2D8(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for MessageID(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10004A70C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100060CFC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100060CFC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10004A8B4(&qword_10009A3B0, &qword_10009A3A8);
          for (i = 0; i != v6; ++i)
          {
            sub_100017538(&qword_10009A3A8);
            v9 = sub_10004A360(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10004A074();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10004A8B4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000175E4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10004A90C()
{
  result = sub_1000603DC();
  if (v1 <= 0x3F)
  {
    result = sub_10006074C();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

void sub_10004AA10(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_10006021C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void sub_10004AA80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_10006021C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_10004AAF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100017538(&qword_1000998B8);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  sub_100027E8C(a2, &v12 - v7, &qword_1000998B8);
  v9 = sub_10006036C();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    isa = sub_10006032C().super.isa;
    (*(v10 + 8))(v8, v9);
  }

  (*(a3 + 16))(a3, a1, isa);
}

void sub_10004AC30(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_10004ACBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100017538(&unk_1000995C0);
  __chkstk_darwin();
  v9 = v21 - v8;
  sub_100027E8C(a3, v21 - v8, &unk_1000995C0);
  v10 = sub_10006099C();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v9, 1, v10);

  if (v12 == 1)
  {
    sub_100020850(v9, &unk_1000995C0);
  }

  else
  {
    sub_10006098C();
    (*(v11 + 8))(v9, v10);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_10006091C();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_10006084C() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_100020850(a3, &unk_1000995C0);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100020850(a3, &unk_1000995C0);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_10004AF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100017538(&unk_1000995C0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100027E8C(a3, v22 - v9, &unk_1000995C0);
  v11 = sub_10006099C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100020850(v10, &unk_1000995C0);
  }

  else
  {
    sub_10006098C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_10006091C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_10006084C() + 32;

      sub_100017538(&qword_10009A368);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_100020850(a3, &unk_1000995C0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100020850(a3, &unk_1000995C0);
  sub_100017538(&qword_10009A368);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10004B224(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10006074C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, v4 + *((swift_isaMask & *v4) + 0xB0), v8);
  v12 = v4 + *((swift_isaMask & *v4) + 0x80);
  os_unfair_lock_lock(v12);
  sub_10004B3A4(v12 + 1, v4, v11, a1, a2, a3);
  os_unfair_lock_unlock(v12);
  return (*(v9 + 8))(v11, v8);
}

void sub_10004B3A4(void **a1, uint64_t *a2, uint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v8 = a4;
  v10 = *a1;
  if (v10)
  {
    v11 = v10;
LABEL_5:
    swift_unknownObjectRetain_n();
    v8(v11);
    swift_unknownObjectRelease_n();
    return;
  }

  v11 = (*(a2 + *((swift_isaMask & *a2) + 0x78)))();
  *a1 = v11;
  v15 = a2 + *((swift_isaMask & *a2) + 0x90);
  swift_unknownObjectRetain_n();
  os_unfair_lock_lock(v15);
  sub_10004B4F4(v15 + 1, v11, a2, a3, a6);
  if (!v7)
  {
    os_unfair_lock_unlock(v15);
    v8 = a4;
    goto LABEL_5;
  }

  os_unfair_lock_unlock(v15);
  __break(1u);
}

_OWORD *sub_10004B4F4(char **a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v25 = a5;
  v26 = a2;
  v24 = a1;
  v7 = *a3;
  v8 = swift_isaMask;
  v9 = sub_10006074C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  (*(v10 + 16))(&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v9);
  v12 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = *((v8 & v7) + 0x50);
  *(v13 + 3) = *((v8 & v7) + 0x58);
  *(v13 + 4) = v25;
  v14 = v8 & v7;
  v15 = v24;
  *(v13 + 5) = *(v14 + 96);
  *(v13 + 6) = a3;
  (*(v10 + 32))(&v13[v12], &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v30 = sub_100051A4C;
  v31 = v13;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v28 = sub_10004CBB0;
  ObjectType = &unk_10008B4C8;
  v16 = _Block_copy(&aBlock);
  v17 = a3;

  v18 = [v26 listenForChangesWithHandler:v16];
  ObjectType = swift_getObjectType();
  *&aBlock = v18;
  v19 = *v15;
  swift_unknownObjectRetain();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_100051318(0, *(v19 + 2) + 1, 1, v19);
  }

  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  if (v21 >= v20 >> 1)
  {
    v19 = sub_100051318((v20 > 1), v21 + 1, 1, v19);
  }

  swift_unknownObjectRelease();
  *(v19 + 2) = v21 + 1;
  result = sub_10001BD04(&aBlock, &v19[32 * v21 + 32]);
  *v15 = v19;
  return result;
}

uint64_t sub_10004B7B4(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v35 = a5;
  v36 = a1;
  v32 = a2;
  v34 = *a3;
  v33 = swift_isaMask;
  v6 = sub_100017538(&qword_1000998B8);
  v31 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - v7;
  v30 = &v29 - v7;
  v9 = sub_10006074C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100017538(&unk_1000995C0);
  __chkstk_darwin(v13 - 8);
  v15 = &v29 - v14;
  v16 = sub_10006099C();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = a4;
  v19 = v9;
  (*(v10 + 16))(v12, v18, v9);
  sub_100027E8C(v32, v8, &qword_1000998B8);
  v20 = (*(v10 + 80) + 72) & ~*(v10 + 80);
  v21 = (v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (*(v31 + 80) + v21 + 8) & ~*(v31 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  v25 = v33;
  v24 = v34;
  *(v23 + 4) = *((v33 & v34) + 0x50);
  *(v23 + 5) = *((v25 & v24) + 0x58);
  *(v23 + 6) = v35;
  *(v23 + 7) = *((v25 & v24) + 0x60);
  *(v23 + 8) = v17;
  (*(v10 + 32))(&v23[v20], v12, v19);
  v26 = v36;
  *&v23[v21] = v36;
  sub_100051CF0(v30, &v23[v22]);
  v27 = v26;
  sub_100037558(0, 0, v15, &unk_10007A6B0, v23);
}

uint64_t sub_10004BB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[9] = sub_100017538(&qword_1000998B8);
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();

  return _swift_task_switch(sub_10004BBBC, 0, 0);
}

uint64_t sub_10004BBBC()
{
  v24 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v2 = v0[7];
    sub_100027E8C(v0[8], v0[11], &qword_1000998B8);
    v3 = v2;
    v4 = sub_10006072C();
    v5 = sub_100060A4C();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[11];
    if (v6)
    {
      v8 = v0[10];
      v9 = v0[7];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23 = v12;
      *v10 = 138412546;
      *(v10 + 4) = v9;
      *v11 = v9;
      *(v10 + 12) = 2080;
      sub_100027E8C(v7, v8, &qword_1000998B8);
      v13 = v9;
      v14 = sub_10006082C();
      v16 = v15;
      sub_100020850(v7, &qword_1000998B8);
      v17 = sub_100046270(v14, v16, &v23);

      *(v10 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v4, v5, "VoicemailAccountManager: processing %@ for UUID %s", v10, 0x16u);
      sub_100020850(v11, &unk_10009A710);

      sub_100018230(v12);
    }

    else
    {

      sub_100020850(v7, &qword_1000998B8);
    }

    v20 = swift_task_alloc();
    v0[13] = v20;
    *v20 = v0;
    v20[1] = sub_10004BEA4;
    v22 = v0[7];
    v21 = v0[8];

    return sub_10004C010(v22, v21);
  }

  else
  {

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_10004BEA4()
{

  return _swift_task_switch(sub_10004BFA0, 0, 0);
}

uint64_t sub_10004BFA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004C010(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = swift_isaMask & *v2;
  v4 = sub_10006092C();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = *(sub_100017538(&qword_1000998B8) - 8);
  v3[10] = v5;
  v3[11] = *(v5 + 64);
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_10004C178, 0, 0);
}

uint64_t sub_10004C178()
{
  v39 = v0;
  v1 = *(v0 + 24);
  *(v0 + 104) = *((swift_isaMask & **(v0 + 40)) + 0xB0);
  v2 = v1;
  v3 = sub_10006072C();
  v4 = sub_100060A4C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 24);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "Updating voicemail account Cache with updates: %@", v6, 0xCu);
    sub_100020850(v7, &unk_10009A710);
  }

  v36 = *(v0 + 96);
  v37 = *(v0 + 80);
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  v12 = *(v0 + 24);
  v11 = *(v0 + 32);
  v35 = v12;

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_task_alloc();
  v15 = v10[10];
  v14[2] = v15;
  v16 = v10[11];
  v14[3] = v16;
  v17 = v10[12];
  v14[4] = v17;
  v14[5] = v13;
  v14[6] = v12;
  sub_10004B224(sub_100051F10, v14, &type metadata for () + 8);

  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100027E8C(v11, v36, &qword_1000998B8);
  v19 = (*(v37 + 80) + 56) & ~*(v37 + 80);
  v20 = swift_allocObject();
  v20[2] = v15;
  v20[3] = v16;
  v20[4] = v17;
  v20[5] = v18;
  v20[6] = v35;
  sub_100051CF0(v36, v20 + v19);
  v21 = v35;

  sub_10006037C();

  v22 = v9 + *((swift_isaMask & *v9) + 0x98);
  os_unfair_lock_lock(v22);
  sub_100050970(v22 + 1, v9, &v38);
  os_unfair_lock_unlock(v22);
  v23 = v38;
  *(v0 + 112) = v38;
  if (v23)
  {

    v24 = swift_task_alloc();
    *(v0 + 120) = v24;
    v25 = sub_100017538(&qword_10009A370);
    *(v0 + 128) = v25;
    *v24 = v0;
    v24[1] = sub_10004C6B0;

    return Task.value.getter(v25, v23, &type metadata for () + 8, v25, &protocol self-conformance witness table for Error);
  }

  else
  {
    v26 = *(v0 + 24);
    v27 = sub_10006072C();
    v28 = sub_100060A4C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = *(v0 + 24);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      *(v30 + 4) = v29;
      *v31 = v29;
      v32 = v29;
      _os_log_impl(&_mh_execute_header, v27, v28, "Finished Updating voicemail account Cache with updates: %@", v30, 0xCu);
      sub_100020850(v31, &unk_10009A710);
    }

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_10004C6B0()
{
  *(*v1 + 136) = v0;

  if (v0)
  {

    v2 = sub_10004C934;
  }

  else
  {
    v2 = sub_10004C7CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10004C7CC()
{

  v1 = *(v0 + 24);
  v2 = sub_10006072C();
  v3 = sub_100060A4C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 24);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v4;
    *v6 = v4;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Finished Updating voicemail account Cache with updates: %@", v5, 0xCu);
    sub_100020850(v6, &unk_10009A710);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10004C934()
{
  v0[2] = v0[17];
  swift_errorRetain();
  if (swift_dynamicCast())
  {

    v1 = sub_10006072C();
    v2 = sub_100060A4C();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Canceling disk update because newer updates were received", v3, 2u);
    }

    v5 = v0[8];
    v4 = v0[9];
    v6 = v0[7];

    (*(v5 + 8))(v4, v6);
  }

  else
  {

    swift_errorRetain();
    v7 = sub_10006072C();
    v8 = sub_100060A2C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to update cache on Disk with: %@", v9, 0xCu);
      sub_100020850(v10, &unk_10009A710);

      goto LABEL_9;
    }
  }

LABEL_9:

  v12 = v0[1];

  return v12();
}

uint64_t sub_10004CBB0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_100017538(&qword_1000998B8);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a3)
  {
    sub_10006035C();
    v10 = sub_10006036C();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_10006036C();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a2;
  v9();

  return sub_100020850(v8, &qword_1000998B8);
}

uint64_t sub_10004CD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_100060C8C();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_10004CE04, 0, 0);
}

uint64_t sub_10004CE04()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_100060CAC();
  v5 = sub_10005236C(&qword_10009A468, &type metadata accessor for ContinuousClock);
  sub_100060E5C();
  sub_10005236C(&qword_10009A470, &type metadata accessor for ContinuousClock.Instant);
  sub_100060CBC();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_10004CF94;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_10004CF94()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_10004D150, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_10004D150()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004D1BC@<X0>(void *a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  if (*a1)
  {
    v7 = swift_unknownObjectRetain();
    a2(v7);
    swift_unknownObjectRelease();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = *(*(a3 - 8) + 56);

  return v9(a4, v8, 1, a3);
}

uint64_t sub_10004D268@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *v4;
  v9 = swift_isaMask;
  v10 = *((swift_isaMask & *v4) + 0x50);
  v11 = *((swift_isaMask & *v4) + 0x58);
  v12 = *((swift_isaMask & *v4) + 0x60);
  v13 = swift_allocObject();
  v13[2] = v10;
  v13[3] = v11;
  v13[4] = a3;
  v13[5] = v12;
  v13[6] = a1;
  v13[7] = a2;
  v14 = (v4 + *((v9 & v8) + 0x70));

  os_unfair_lock_lock(v14);
  sub_10004D1BC(&v14[2]._os_unfair_lock_opaque, a1, a3, a4);
  sub_100060AFC();
  sub_100060AFC();
  os_unfair_lock_unlock(v14);
}

uint64_t sub_10004D3AC(void *a1)
{
  v1 = a1;
  v2 = sub_10004D3E0();

  return v2 & 1;
}

uint64_t sub_10004D3E0()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x58);
  v3 = *((swift_isaMask & *v0) + 0x60);
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = KeyPath;
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v2;
  v6[4] = v3;
  v6[5] = sub_100052870;
  v6[6] = v5;
  sub_10004D268(sub_100052868, v6, &type metadata for Bool, &v8);

  if (v8 != 2 && (v8 & 1) != 0)
  {
    return 1;
  }

  sub_10004B224(sub_10005289C, 0, &type metadata for Bool);
  return v8;
}

id sub_10004D564@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [a1 isAnyAccountSubscribed];
  *a2 = result;
  return result;
}

uint64_t sub_10004D594(void *a1)
{
  v1 = a1;
  v2 = sub_10004D5C8();

  return v2 & 1;
}

uint64_t sub_10004D5C8()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x58);
  v3 = *((swift_isaMask & *v0) + 0x60);
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = KeyPath;
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v2;
  v6[4] = v3;
  v6[5] = sub_100052870;
  v6[6] = v5;
  sub_10004D268(sub_100052868, v6, &type metadata for Bool, &v8);

  if (v8 != 2 && (v8 & 1) != 0)
  {
    return 1;
  }

  sub_10004B224(sub_10004D730, 0, &type metadata for Bool);
  return v8;
}

id sub_10004D730@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [a1 isOnline];
  *a2 = result;
  return result;
}

uint64_t sub_10004D760(void *a1)
{
  v1 = a1;
  v2 = sub_10004D794();

  return v2 & 1;
}

uint64_t sub_10004D794()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x58);
  v3 = *((swift_isaMask & *v0) + 0x60);
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = KeyPath;
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v2;
  v6[4] = v3;
  v6[5] = sub_100052710;
  v6[6] = v5;
  sub_10004D268(sub_100052868, v6, &type metadata for Bool, &v9);

  v7 = v9;
  if (v9 == 2)
  {
    v7 = [*(v0 + *((swift_isaMask & *v0) + 0x68)) isMessageWaiting];
  }

  return v7 & 1;
}

id sub_10004D8FC(void *a1)
{
  v1 = a1;
  v2 = sub_10004D930();

  return v2;
}

id sub_10004D930()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x58);
  v3 = *((swift_isaMask & *v0) + 0x60);
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = KeyPath;
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v2;
  v6[4] = v3;
  v6[5] = sub_1000523E4;
  v6[6] = v5;
  sub_10004D268(sub_10005265C, v6, &type metadata for UInt, &v8);

  if (v9 == 1)
  {
    return [*(v0 + *((swift_isaMask & *v0) + 0x68)) storageUsage];
  }

  else
  {
    return v8;
  }
}

uint64_t sub_10004DA9C()
{
  swift_unknownObjectRetain();
  swift_getAtKeyPath();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_10004DAEC(void *a1)
{
  v1 = a1;
  v2 = sub_10004DB20();

  return v2;
}

uint64_t sub_10004DB20()
{
  v0 = sub_10004DB7C();
  if (v0 >> 62)
  {
    v1 = sub_100060CFC();
  }

  else
  {
    v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1;
}

unint64_t sub_10004DB7C()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x58);
  v3 = *((swift_isaMask & *v0) + 0x60);
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = KeyPath;
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v2;
  v6[4] = v3;
  v6[5] = sub_1000523E4;
  v6[6] = v5;
  v7 = sub_100017538(&qword_10009A478);
  sub_10004D268(sub_1000523F0, v6, v7, &v11);

  result = v11;
  if (!v11)
  {
    goto LABEL_5;
  }

  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return result;
    }

    goto LABEL_4;
  }

  v9 = v11;
  v10 = sub_100060CFC();
  result = v9;
  if (!v10)
  {
LABEL_4:

LABEL_5:
    sub_10004B224(sub_100052880, 0, v7);
    return v11;
  }

  return result;
}

Class sub_10004DD3C(void *a1)
{
  v1 = a1;
  sub_10004DB7C();

  type metadata accessor for VoicemailAccount();
  v2.super.isa = sub_1000608BC().super.isa;

  return v2.super.isa;
}

void sub_10004DDA0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 accounts];
  type metadata accessor for VoicemailAccount();
  v4 = sub_1000608CC();

  *a2 = v4;
}

void sub_10004DE08(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 accounts];
  type metadata accessor for VoicemailAccount();
  v4 = sub_1000608CC();

  *a2 = v4;
}

uint64_t sub_10004DE68(void *a1)
{
  v1 = a1;
  v2 = sub_10004DE9C();

  return v2 & 1;
}

uint64_t sub_10004DE9C()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x58);
  v3 = *((swift_isaMask & *v0) + 0x60);
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = KeyPath;
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v2;
  v6[4] = v3;
  v6[5] = sub_100052870;
  v6[6] = v5;
  sub_10004D268(sub_1000525DC, v6, &type metadata for Bool, &v9);

  v7 = v9;
  if (v9 == 2)
  {
    v7 = [*(v0 + *((swift_isaMask & *v0) + 0x68)) isMessageWaiting];
  }

  return v7 & 1;
}

uint64_t sub_10004E004()
{
  swift_unknownObjectRetain();
  swift_getAtKeyPath();
  swift_unknownObjectRelease();
  return v1;
}

id sub_10004E054(void *a1)
{
  v1 = a1;
  v2 = sub_10004E098();

  return v2;
}

id sub_10004E098()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x58);
  v3 = *((swift_isaMask & *v0) + 0x60);
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = KeyPath;
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v2;
  v6[4] = v3;
  v6[5] = sub_1000523E4;
  v6[6] = v5;
  v7 = sub_100017538(&qword_10009A480);
  sub_10004D268(sub_100052560, v6, v7, &v9);

  result = v9;
  if (v9 == 1)
  {
    return [*(v0 + *((swift_isaMask & *v0) + 0x68)) transcriptionProgress];
  }

  return result;
}

void *sub_10004E214(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100060CFC())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_100060C0C();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_10004E35C(uint64_t a1, uint64_t (*a2)(id *), void *a3, void (*a4)(void *))
{
  v8 = sub_10006036C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004DB7C();
  v28 = a1;
  v13 = sub_10004E214(a2, v27, v12);

  if (v13)
  {
    v14 = v13[*a3];
  }

  else
  {
    if (qword_100099408 != -1)
    {
      swift_once();
    }

    v15 = sub_10006074C();
    sub_10001762C(v15, qword_10009BED0);
    (*(v9 + 16))(v11, a1, v8);
    v16 = sub_10006072C();
    v17 = sub_100060A2C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v29 = v25;
      *v18 = 136315138;
      sub_10005236C(&qword_1000999A8, &type metadata accessor for UUID);
      v19 = sub_100060DFC();
      v26 = a4;
      v21 = v20;
      (*(v9 + 8))(v11, v8);
      v22 = sub_100046270(v19, v21, &v29);
      a4 = v26;

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "No Account found for %s in cache.", v18, 0xCu);
      sub_100018230(v25);
    }

    else
    {

      v23 = (*(v9 + 8))(v11, v8);
    }

    __chkstk_darwin(v23);
    *(&v25 - 2) = a1;
    sub_10004B224(a4, (&v25 - 4), &type metadata for Bool);
    return v29;
  }

  return v14;
}

uint64_t sub_10004E6D8(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), void *a5, void (*a6)(void *))
{
  v10 = sub_10006036C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006035C();
  v14 = a1;
  LOBYTE(a6) = sub_10004E35C(v13, a4, a5, a6);

  (*(v11 + 8))(v13, v10);
  return a6 & 1;
}

uint64_t sub_10004E7E8(uint64_t a1)
{
  v2[2] = a1;
  sub_10004B224(sub_100052354, v2, &type metadata for Bool);
  return v3;
}

uint64_t sub_10004E834(void *a1)
{
  v2 = sub_10006036C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006035C();
  v6 = a1;
  v7 = sub_10004E7E8(v5);

  (*(v3 + 8))(v5, v2);
  return v7 & 1;
}

uint64_t sub_10004E924(uint64_t a1)
{
  v2[2] = a1;
  sub_10004B224(sub_1000522F0, v2, &type metadata for Int);
  return v2[3];
}

uint64_t sub_10004E988(uint64_t a1)
{
  v2[2] = a1;
  sub_10004B224(sub_1000522E4, v2, &type metadata for Int);
  return v2[3];
}

uint64_t sub_10004E9EC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v6 = sub_10006036C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006035C();
  v10 = a1;
  v11 = a4(v9);

  (*(v7 + 8))(v9, v6);
  return v11;
}

uint64_t sub_10004EAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  return sub_10004B224(sub_1000522D4, v6, &type metadata for () + 8);
}

void sub_10004EB34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1000607EC();
  isa = sub_10006032C().super.isa;
  v12[4] = a5;
  v12[5] = a6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10001B3E0;
  v12[3] = &unk_10008B658;
  v11 = _Block_copy(v12);

  [a1 setPasscode:v9 forAccountUUID:isa completion:v11];
  _Block_release(v11);
}

uint64_t sub_10004EC24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v7 = sub_10006036C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a5);
  v12 = sub_10006081C();
  v14 = v13;
  sub_10006035C();
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  v16 = a1;
  sub_10004EAE4(v12, v14, v10, sub_10001BE68, v15);

  return (*(v8 + 8))(v10, v7);
}

double sub_10004ED84(uint64_t a1)
{
  v2[2] = a1;
  sub_10004B224(sub_100052274, v2, &type metadata for Double);
  return *&v2[3];
}

double sub_10004EDD0(void *a1)
{
  v2 = sub_10006036C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006035C();
  v6 = a1;
  v7 = sub_10004ED84(v5);

  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t sub_10004EEC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  return sub_10004B224(sub_100052268, v4, &type metadata for () + 8);
}

void sub_10004EF14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  isa = sub_10006032C().super.isa;
  v9[4] = a3;
  v9[5] = a4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10004AC30;
  v9[3] = &unk_10008B608;
  v8 = _Block_copy(v9);

  [a1 greetingForAccountUUID:isa completion:v8];
  _Block_release(v8);
}

uint64_t sub_10004EFEC(void *a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = sub_10006036C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(a4);
  sub_10006035C();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = a1;
  sub_10004EEC8(v9, sub_10001B908, v11);

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10004F120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  return sub_10004B224(sub_10005197C, v5, &type metadata for () + 8);
}

void sub_10004F16C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  isa = sub_10006032C().super.isa;
  v11[4] = a4;
  v11[5] = a5;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10001B3E0;
  v11[3] = &unk_10008B5B8;
  v10 = _Block_copy(v11);

  [a1 setGreeting:a2 forAccountUUID:isa completion:v10];
  _Block_release(v10);
}

uint64_t sub_10004F24C(void *a1, uint64_t a2, void *a3, uint64_t a4, const void *a5)
{
  v8 = sub_10006036C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a5);
  sub_10006035C();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = a3;
  v15 = a1;
  sub_10004F120(v14, v11, sub_10001B900, v13);

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10004F39C(uint64_t a1, uint64_t a2)
{
  v5 = sub_100017538(&unk_1000995C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = sub_10006099C();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v11 = sub_10005236C(&qword_1000995D0, type metadata accessor for VoicemailActor);
  v12 = swift_allocObject();
  v12[2] = inited;
  v12[3] = v11;
  v12[4] = v2;
  v12[5] = v8;
  v13 = v2;

  sub_100037848(0, 0, v7, &unk_10007A680, v12);
  sub_10006075C();
  swift_allocObject();
  v14 = sub_10006076C();

  return v14;
}

uint64_t sub_10004F56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10005236C(&qword_1000995D0, type metadata accessor for VoicemailActor);
  v7 = sub_10006091C();

  return _swift_task_switch(sub_10004F638, v7, v6);
}

uint64_t sub_10004F638()
{
  v1 = v0[3];
  v0[2] = *(v0[4] + *((swift_isaMask & *v0[4]) + 0x88));

  sub_100017538(&qword_1000998A0);
  sub_10001B89C();
  v2 = sub_10006079C();

  *v1 = v2;
  v3 = v0[1];

  return v3();
}

id sub_10004F740(void *a1, int a2, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = a1;
  v8 = sub_10004F39C(sub_10001B6B0, v6);

  _Block_release(aBlock);

  return v8;
}

uint64_t sub_10004F830(char *a1)
{
  swift_unknownObjectRelease();
  sub_100060AFC();
  sub_1000603EC();
  sub_100060AEC();

  sub_100020850(&a1[*((swift_isaMask & *a1) + 0x80) + 8], &qword_10009A460);

  sub_100020850(&a1[*((swift_isaMask & *a1) + 0x90) + 8], &qword_10009A110);
  sub_100020850(&a1[*((swift_isaMask & *a1) + 0x98) + 8], &qword_10009A488);

  sub_1000603DC();
  sub_1000603EC();
  sub_100060AEC();
  v2 = *((swift_isaMask & *a1) + 0xB0);
  v3 = sub_10006074C();
  v4 = *(*(v3 - 8) + 8);

  return v4(&a1[v2], v3);
}

char *sub_10004FAD4()
{
  if (!&swift_runtimeSupportsNoncopyableTypes)
  {
    return &type metadata for () + 8;
  }

  sub_100060AFC();
  return sub_1000603DC();
}

char *sub_10004FB20()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100017538(&qword_10009A450);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_10004FB50()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100017538(&qword_10009A100);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_10004FB80()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100017538(&qword_10009A458);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_10004FBB0()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_1000603DC();
  }

  else
  {
    return &type metadata for () + 8;
  }
}

void sub_10004FBF0(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = Strong + *((swift_isaMask & *Strong) + 0x70);
    os_unfair_lock_lock(v7);
    v8 = *(v7 + 1);
    v9 = v8;
    os_unfair_lock_unlock(v7);
    v48 = v9;
    if (v8)
    {
      v10 = qword_1000993C0;
      v11 = v9;
      if (v10 != -1)
      {
        swift_once();
      }

      v12 = qword_10009BE60;
      v13 = *(a3 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
      if ((*(qword_10009BE60 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v13) != 0)
      {
        v14 = [a1 isAnyAccountSubscribed];
      }

      else
      {
        v14 = [v11 anyAccountSubscribed];
      }

      v47 = v14;
      if (qword_1000993B0 != -1)
      {
        swift_once();
      }

      v22 = qword_10009BE50;
      v23 = OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue;
      if ((*(qword_10009BE50 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v13) != 0)
      {
        v24 = [a1 isOnline];
      }

      else
      {
        v24 = [v11 online];
      }

      v45 = v24;
      if ((*(v22 + v23) & v13) != 0)
      {
        v25 = a1;
      }

      else
      {
        v25 = v11;
      }

      v44 = [v25 isMessageWaiting];
      if (qword_1000993D0 != -1)
      {
        swift_once();
      }

      if ((*(qword_10009BE70 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v13) != 0)
      {
        v26 = a1;
      }

      else
      {
        v26 = v11;
      }

      v43 = [v26 storageUsage];
      if (qword_1000993D8 != -1)
      {
        swift_once();
      }

      v27 = qword_10009BE78;
      v28 = OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue;
      if ((*(qword_10009BE78 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v13) != 0)
      {
        v29 = [a1 isTranscriptionEnabled];
      }

      else
      {
        v29 = [v11 transcriptionEnabled];
      }

      v30 = v29;
      if ((*(v27 + v28) & v13) != 0)
      {
        v31 = a1;
      }

      else
      {
        v31 = v11;
      }

      v32 = [v31 transcriptionProgress];
      sub_100017538(&qword_100099B38);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10007A580;
      if (qword_1000993E0 != -1)
      {
        swift_once();
      }

      v34 = qword_10009BE80;
      *(inited + 32) = qword_10009BE80;
      *(inited + 40) = v12;
      v35 = v34;
      v36 = v12;
      v37 = sub_10002260C(inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      v38 = sub_100021C38(v37);

      if (v38)
      {
        v39 = v11;
      }

      else
      {
        v39 = a1;
      }

      v40 = [v39 accounts];
      type metadata accessor for VoicemailAccount();
      sub_1000608CC();

      v41 = objc_allocWithZone(type metadata accessor for VoicemailAccountManagerData());
      isa = sub_1000608BC().super.isa;

      v21 = [v41 initWithAnyAccountSubscribed:v47 online:v45 isMessageWaiting:v44 storageUsage:v43 transcriptionEnabled:v30 transcriptionProgress:v32 accounts:isa];
    }

    else
    {
      v46 = objc_allocWithZone(type metadata accessor for VoicemailAccountManagerData());
      v15 = [a1 isAnyAccountSubscribed];
      v16 = [a1 isOnline];
      v17 = [a1 isMessageWaiting];
      v18 = [a1 storageUsage];
      v19 = [a1 isTranscriptionEnabled];
      isa = [a1 transcriptionProgress];
      v11 = [a1 accounts];
      v21 = [v46 initWithAnyAccountSubscribed:v15 online:v16 isMessageWaiting:v17 storageUsage:v18 transcriptionEnabled:v19 transcriptionProgress:isa accounts:v11];
    }

    v42 = v21;
    os_unfair_lock_lock(v7);

    *(v7 + 1) = v42;
    os_unfair_lock_unlock(v7);
  }
}

void *sub_10005012C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = (result + *((swift_isaMask & *result) + 0x70));
    os_unfair_lock_lock(v7);
    v8 = *&v7[2]._os_unfair_lock_opaque;
    sub_100060AFC();
    swift_unknownObjectRetain();
    os_unfair_lock_unlock(v7);
    if (v8)
    {
      v9 = qword_1000993C0;
      swift_unknownObjectRetain();
      if (v9 != -1)
      {
        swift_once();
      }

      v10 = qword_10009BE60;
      v11 = *(a3 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue);
      if ((*(qword_10009BE60 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v11) != 0)
      {
        v12 = [a1 isAnyAccountSubscribed];
      }

      else
      {
        v12 = [v8 anyAccountSubscribed];
      }

      v45 = v12;
      if (qword_1000993B0 != -1)
      {
        swift_once();
      }

      v21 = qword_10009BE50;
      v22 = OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue;
      if ((*(qword_10009BE50 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v11) != 0)
      {
        v23 = [a1 isOnline];
      }

      else
      {
        v23 = [v8 online];
      }

      v44 = v23;
      if ((*(v21 + v22) & v11) != 0)
      {
        v24 = a1;
      }

      else
      {
        v24 = v8;
      }

      v43 = [v24 isMessageWaiting];
      if (qword_1000993D0 != -1)
      {
        swift_once();
      }

      if ((*(qword_10009BE70 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v11) != 0)
      {
        v25 = a1;
      }

      else
      {
        v25 = v8;
      }

      v42 = [v25 storageUsage];
      if (qword_1000993D8 != -1)
      {
        swift_once();
      }

      v26 = qword_10009BE78;
      v27 = OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue;
      if ((*(qword_10009BE78 + OBJC_IVAR___MPVoicemailAccountManagerUpdate_rawValue) & v11) != 0)
      {
        v28 = [a1 isTranscriptionEnabled];
      }

      else
      {
        v28 = [v8 transcriptionEnabled];
      }

      v29 = v28;
      if ((*(v26 + v27) & v11) != 0)
      {
        v30 = a1;
      }

      else
      {
        v30 = v8;
      }

      v31 = [v30 transcriptionProgress];
      sub_100017538(&qword_100099B38);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10007A580;
      if (qword_1000993E0 != -1)
      {
        swift_once();
      }

      v33 = qword_10009BE80;
      *(inited + 32) = qword_10009BE80;
      *(inited + 40) = v10;
      v34 = v33;
      v35 = v10;
      v36 = sub_10002260C(inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      v37 = sub_100021C38(v36);

      if (v37)
      {
        v38 = v8;
      }

      else
      {
        v38 = a1;
      }

      v39 = [v38 accounts];
      type metadata accessor for VoicemailAccount();
      sub_1000608CC();

      v40 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      isa = sub_1000608BC().super.isa;

      v20 = [v40 initWithAnyAccountSubscribed:v45 online:v44 isMessageWaiting:v43 storageUsage:v42 transcriptionEnabled:v29 transcriptionProgress:v31 accounts:isa];

      swift_unknownObjectRelease();
    }

    else
    {
      v46 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v13 = [a1 isAnyAccountSubscribed];
      v14 = [a1 isOnline];
      v15 = [a1 isMessageWaiting];
      v16 = [a1 storageUsage];
      v17 = [a1 isTranscriptionEnabled];
      v18 = [a1 transcriptionProgress];
      v19 = [a1 accounts];
      v20 = [v46 initWithAnyAccountSubscribed:v13 online:v14 isMessageWaiting:v15 storageUsage:v16 transcriptionEnabled:v17 transcriptionProgress:v18 accounts:v19];
    }

    swift_unknownObjectRetain();
    os_unfair_lock_lock(v7);
    swift_unknownObjectRelease();
    *&v7[2]._os_unfair_lock_opaque = v20;
    swift_unknownObjectRetain();
    os_unfair_lock_unlock(v7);

    swift_unknownObjectRelease();
    return swift_unknownObjectRelease_n();
  }

  return result;
}

uint64_t sub_100050698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v3[8] = sub_100017538(&qword_1000998B0);
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_10005073C, 0, 0);
}

uint64_t sub_10005073C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v0[11] = *((swift_isaMask & *Strong) + 0x88);
    type metadata accessor for VoicemailActor();
    swift_initStaticObject();
    sub_10005236C(&qword_1000995D0, type metadata accessor for VoicemailActor);
    v3 = sub_10006091C();

    return _swift_task_switch(sub_100050888, v3, v2);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1000508B0()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[6];
  v5 = *(v0[8] + 48);
  *v1 = v4;
  sub_100027E8C(v3, v1 + v5, &qword_1000998B8);
  v6 = v4;
  sub_10006077C();
  sub_100020850(v1, &qword_1000998B0);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100050970@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = swift_isaMask & *a2;
  v6 = sub_100017538(&unk_1000995C0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  if (*a1)
  {
    sub_100017538(&qword_10009A370);
    sub_1000609BC();
  }

  sub_10006096C();
  v9 = sub_10006099C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = *(v5 + 80);
  *(v11 + 48) = *(v5 + 96);
  *(v11 + 56) = v10;
  v12 = sub_10004ACBC(0, 0, v8, &unk_10007A6E8, v11);

  *a1 = v12;
  *a3 = v12;
  return result;
}

uint64_t sub_100050B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_100060CAC();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_100050C10, 0, 0);
}

uint64_t sub_100050C10()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    sub_100060C9C();
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_100050D40;

    return sub_10004CD04(1000000000000000000, 0, 0, 0, 1);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100050D40()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);
  if (v0)
  {
    v3 = sub_100050F8C;
  }

  else
  {
    v3 = sub_100050EA8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100050EA8()
{
  v1 = v0[11];
  sub_1000609DC();
  v2 = v0[9];
  if (!v1)
  {
    sub_100050FF8();
    v4 = (v2 + *((swift_isaMask & *v2) + 0x98));
    os_unfair_lock_lock(v4);

    *&v4[2]._os_unfair_lock_opaque = 0;
    os_unfair_lock_unlock(v4);
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_100050F8C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100050FF8()
{
  v1 = (v0 + *((swift_isaMask & *v0) + 0xA8));
  os_unfair_lock_lock(v1);
  v2 = sub_1000603DC();
  sub_100051098(v1 + *(v2 + 28), v0);

  os_unfair_lock_unlock(v1);
}

void sub_100051098(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = swift_isaMask;
  v5 = (a2 + *((swift_isaMask & *a2) + 0x70));
  os_unfair_lock_lock(v5);
  v6 = *((v4 & v3) + 0x58);
  v7 = *((v4 & v3) + 0x60);
  v8 = *&v5[2]._os_unfair_lock_opaque;
  swift_unknownObjectRetain();
  if (v2)
  {
    sub_100060AFC();
    os_unfair_lock_unlock(v5);
    __break(1u);
  }

  else
  {
    sub_100060AFC();
    os_unfair_lock_unlock(v5);
    if (v8)
    {
      v17 = v8;
      v9 = (*(v7 + 16))(&v17, v6, v7);
      v10 = sub_10006072C();
      if (v9)
      {
        v11 = sub_100060A2C();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          v13 = "Failed to update cache on Disk";
LABEL_11:
          _os_log_impl(&_mh_execute_header, v10, v11, v13, v12, 2u);
        }
      }

      else
      {
        v11 = sub_100060A4C();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          v13 = "Updated cache on Disk";
          goto LABEL_11;
        }
      }

      swift_unknownObjectRelease();
      return;
    }

    v14 = sub_10006072C();
    v15 = sub_100060A2C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to update cache on Disk because the cache was nil", v16, 2u);
    }
  }
}

char *sub_100051318(char *result, int64_t a2, char a3, char *a4)
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
    sub_100017538(&qword_10009A398);
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

void *sub_100051428(void *result, int64_t a2, char a3, void *a4)
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
    sub_100017538(&qword_10009A388);
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
    sub_100017538(&qword_10009A390);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10005155C(void *result, int64_t a2, char a3, void *a4)
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
    sub_100017538(&qword_10009A4A0);
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
    sub_100017538(&qword_10009A4A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100051690(void *result, int64_t a2, char a3, void *a4)
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
    sub_100017538(&qword_10009A490);
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
    sub_100017538(&qword_10009A498);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100051804()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005183C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100051874()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000518BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001BE64;

  return sub_10004F56C(a1, v4, v5, v7, v6);
}

uint64_t sub_100051988()
{
  v1 = sub_10006074C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100051A4C(void *a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  v6 = *(sub_10006074C() - 8);
  v7 = *(v2 + 48);
  v8 = v2 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  return sub_10004B7B4(a1, a2, v7, v8, v5);
}

uint64_t sub_100051AD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100051AF0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100051B28()
{
  v1 = sub_10006074C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_100017538(&qword_1000998B8) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7 + 8) & ~v7;
  v9 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  v10 = sub_10006036C();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return _swift_deallocObject(v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_100051CF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100017538(&qword_1000998B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100051D60(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10006074C() - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_100017538(&qword_1000998B8) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[8];
  v13 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1000183D4;

  return sub_10004BB08(a1, v10, v11, v12, v1 + v6, v13, v1 + v9);
}

uint64_t sub_100051F20()
{
  v1 = *(sub_100017538(&qword_1000998B8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_10006036C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100052048()
{
  v2 = *(sub_100017538(&qword_1000998B8) - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10001BE64;

  return sub_100050698(v4, v5, v0 + v3);
}

uint64_t sub_100052154()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100052194(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[7];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000183D4;

  return sub_100050B50(a1, v4, v5, v6);
}

void sub_100052274(void *a1@<X0>, void *a2@<X8>)
{
  isa = sub_10006032C().super.isa;
  [a1 maximumGreetingDurationForAccountUUID:isa];
  v6 = v5;

  *a2 = v6;
}

void sub_1000522FC(void *a1@<X0>, SEL *a2@<X1>, void *a3@<X8>)
{
  isa = sub_10006032C().super.isa;
  v7 = [a1 *a2];

  *a3 = v7;
}

uint64_t sub_10005236C(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_1000523D0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1000523F0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 40))();
  *a1 = result;
  return result;
}

uint64_t sub_100052420()
{

  return _swift_deallocObject(v0, 64, 7);
}

void sub_1000524B4(void *a1@<X0>, SEL *a2@<X1>, _BYTE *a3@<X8>)
{
  isa = sub_10006032C().super.isa;
  LOBYTE(a2) = [a1 *a2];

  *a3 = a2;
}

id sub_100052518@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 transcriptionProgress];
  *a2 = result;
  return result;
}

uint64_t sub_100052560@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 40))();
  *a1 = result;
  return result;
}

id sub_10005259C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 transcriptionEnabled];
  *a2 = result;
  return result;
}

uint64_t sub_1000525DC@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 40))();
  *a1 = result & 1;
  return result;
}

id sub_10005261C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 storageUsage];
  *a2 = result;
  return result;
}

uint64_t sub_10005265C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 40))();
  *a1 = result;
  return result;
}

id sub_100052698@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isMessageWaiting];
  *a2 = result;
  return result;
}

uint64_t sub_1000526D8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100052734()
{

  return _swift_deallocObject(v0, 56, 7);
}

id sub_100052778@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 online];
  *a2 = result;
  return result;
}

id sub_1000527C4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 anyAccountSubscribed];
  *a2 = result;
  return result;
}

uint64_t sub_100052994()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100052D44()
{
  sub_100060BFC(126);
  v8._countAndFlagsBits = 0xD000000000000035;
  v8._object = 0x8000000100076A00;
  sub_10006086C(v8);
  if (*(v0 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension27VoicemailAccountManagerData_anyAccountSubscribed))
  {
    v1._countAndFlagsBits = 1702195828;
  }

  else
  {
    v1._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension27VoicemailAccountManagerData_anyAccountSubscribed))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  v1._object = v2;
  sub_10006086C(v1);

  v9._countAndFlagsBits = 0x656E696C6E6F2029;
  v9._object = 0xEB0000000028203ALL;
  sub_10006086C(v9);
  if (*(v0 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension27VoicemailAccountManagerData_online))
  {
    v3._countAndFlagsBits = 1702195828;
  }

  else
  {
    v3._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension27VoicemailAccountManagerData_online))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  v3._object = v4;
  sub_10006086C(v3);

  v10._countAndFlagsBits = 0xD000000000000015;
  v10._object = 0x8000000100076A40;
  sub_10006086C(v10);
  if (*(v0 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension27VoicemailAccountManagerData_isMessageWaiting))
  {
    v5._countAndFlagsBits = 1702195828;
  }

  else
  {
    v5._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension27VoicemailAccountManagerData_isMessageWaiting))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v5._object = v6;
  sub_10006086C(v5);

  v11._object = 0x8000000100076A60;
  v11._countAndFlagsBits = 0xD000000000000011;
  sub_10006086C(v11);
  v12._countAndFlagsBits = sub_100060DFC();
  sub_10006086C(v12);

  v13._countAndFlagsBits = 0x6E756F6363612029;
  v13._object = 0xED000028203A7374;
  sub_10006086C(v13);
  type metadata accessor for VoicemailAccount();
  v14._countAndFlagsBits = sub_1000608DC();
  sub_10006086C(v14);

  v15._countAndFlagsBits = 41;
  v15._object = 0xE100000000000000;
  sub_10006086C(v15);
  return 0;
}

unint64_t sub_100052F74()
{
  v1 = *v0;
  v2 = 0x656E696C6E6FLL;
  v3 = 0x55656761726F7473;
  v4 = 0xD000000000000014;
  if (v1 != 4)
  {
    v4 = 0x73746E756F636361;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000014;
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

uint64_t sub_10005303C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100053510(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100053070(uint64_t a1)
{
  v2 = sub_100053A44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000530AC(uint64_t a1)
{
  v2 = sub_100053A44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000530E8(void *a1)
{
  v3 = v1;
  v5 = sub_100017538(&qword_10009A558);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_1000184C8(a1, a1[3]);
  sub_100053A44();
  sub_100060EFC();
  v16 = 0;
  sub_100060DAC();
  if (!v2)
  {
    v15 = 1;
    sub_100060DAC();
    v14 = 2;
    sub_100060DAC();
    v13 = 3;
    sub_100060DBC();
    v12 = 4;
    sub_100060DAC();
    v11 = *(v3 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension27VoicemailAccountManagerData_accounts);
    v10[15] = 5;
    sub_100017538(&qword_10009A478);
    sub_100053A98(&qword_10009A560, &qword_10009A568);
    sub_100060DCC();
  }

  return (*(v6 + 8))(v8, v5);
}

void *sub_1000533A4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_10005371C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1000533F4(uint64_t a1)
{
  sub_10001E2C4(a1, v4);
  if (!v5)
  {
    sub_10001E334(v4);
    goto LABEL_5;
  }

  type metadata accessor for VoicemailAccount();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v1 = 0;
    return v1 & 1;
  }

  sub_100053B64();
  v1 = sub_100060ADC();

  return v1 & 1;
}

uint64_t sub_100053510(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001000752E0 == a2 || (sub_100060E1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E696C6E6FLL && a2 == 0xE600000000000000 || (sub_100060E1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100074920 == a2 || (sub_100060E1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x55656761726F7473 && a2 == 0xEC00000065676173 || (sub_100060E1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100075310 == a2 || (sub_100060E1C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73746E756F636361 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v5 = sub_100060E1C();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void *sub_10005371C(void *a1)
{
  v3 = sub_100017538(&qword_10009A538);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - v5;
  v7 = sub_1000184C8(a1, a1[3]);
  sub_100053A44();
  sub_100060EEC();
  if (!v1)
  {
    LOBYTE(v19) = 0;
    v8 = sub_100060D6C();
    LOBYTE(v19) = 1;
    v9 = sub_100060D6C();
    LOBYTE(v19) = 2;
    v10 = sub_100060D6C();
    LOBYTE(v19) = 3;
    v16 = sub_100060D7C();
    LOBYTE(v19) = 4;
    v15 = sub_100060D6C();
    sub_100017538(&qword_10009A478);
    v18 = 5;
    sub_100053A98(&qword_10009A548, &qword_10009A550);
    sub_100060D8C();
    v14 = v19;
    v12 = type metadata accessor for VoicemailAccountManagerData();
    v13 = objc_allocWithZone(v12);
    v13[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension27VoicemailAccountManagerData_anyAccountSubscribed] = v8 & 1;
    v13[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension27VoicemailAccountManagerData_online] = v9 & 1;
    v13[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension27VoicemailAccountManagerData_isMessageWaiting] = v10 & 1;
    *&v13[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension27VoicemailAccountManagerData_storageUsage] = v16;
    v13[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension27VoicemailAccountManagerData_transcriptionEnabled] = v15 & 1;
    *&v13[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension27VoicemailAccountManagerData_transcriptionProgress] = 0;
    *&v13[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension27VoicemailAccountManagerData_accounts] = v14;
    v17.receiver = v13;
    v17.super_class = v12;
    v7 = objc_msgSendSuper2(&v17, "init");
    (*(v4 + 8))(v6, v3);
  }

  sub_100018230(a1);
  return v7;
}

unint64_t sub_100053A44()
{
  result = qword_10009A540;
  if (!qword_10009A540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009A540);
  }

  return result;
}

uint64_t sub_100053A98(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000175E4(&qword_10009A478);
    sub_100053B20(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100053B20(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VoicemailAccount();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100053B64()
{
  result = qword_10009A318;
  if (!qword_10009A318)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10009A318);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VoicemailAccountManagerData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VoicemailAccountManagerData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100053D04()
{
  result = qword_10009A570;
  if (!qword_10009A570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009A570);
  }

  return result;
}

unint64_t sub_100053D5C()
{
  result = qword_10009A578;
  if (!qword_10009A578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009A578);
  }

  return result;
}

unint64_t sub_100053DB4()
{
  result = qword_10009A580;
  if (!qword_10009A580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009A580);
  }

  return result;
}

void *sub_100053E08()
{
  v1 = v0;
  v2 = sub_10006074C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100017538(&qword_10009A588);
  __chkstk_darwin(v6);
  v8 = (&v28 - v7);
  v9 = type metadata accessor for VoicemailAccountManagerComposer();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  if (qword_100099420 != -1)
  {
    swift_once();
  }

  v12 = qword_10009BF20;
  if (qword_10009BF20)
  {
    v31 = v10;
    v32 = v6;
    v33 = v5;
    v30 = qword_10009BF18;
    v13 = qword_100099408;

    if (v13 != -1)
    {
      swift_once();
    }

    v14 = sub_10001762C(v2, qword_10009BED0);
    v15 = sub_10006072C();
    v16 = sub_100060A4C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v29 = v1;
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Creating VoicemailAccountManager as the VoicemailAccountManager since caching is enabled.", v17, 2u);
      v1 = v29;
    }

    sub_100057F2C(v1, &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v18 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v19 = swift_allocObject();
    sub_10005805C(&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
    v20 = *(v3 + 16);
    v20(v8 + *(v32 + 44), v14, v2);
    *v8 = v30;
    v8[1] = v12;
    v21 = v33;
    v20(v33, v14, v2);
    v22 = objc_allocWithZone(sub_100017538(&qword_10009A590));
    return sub_100054C90(sub_1000580C0, v19, v8, v21);
  }

  else
  {
    if (qword_100099408 != -1)
    {
      swift_once();
    }

    sub_10001762C(v2, qword_10009BED0);
    v24 = sub_10006072C();
    v25 = sub_100060A3C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Failed to get path for VMD cache. Reverting to VMD without caching.", v26, 2u);
    }

    v27 = objc_allocWithZone(type metadata accessor for VoicemailAccountManagerWithDelegateDecorator());
    return sub_100035380(sub_100057ED8, 0);
  }
}

uint64_t type metadata accessor for VoicemailAccountManagerComposer()
{
  result = qword_10009A610;
  if (!qword_10009A610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100054290(void *a1)
{
  v2 = v1;
  v43 = sub_100017538(&qword_10009A588);
  __chkstk_darwin(v43);
  v5 = (&v39 - v4);
  v6 = sub_10006029C();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v39 - v11;
  sub_10006020C();
  swift_allocObject();
  sub_1000601FC();
  v44 = a1;
  type metadata accessor for VoicemailAccountManagerData();
  sub_1000589F8(&qword_10009A5A8, type metadata accessor for VoicemailAccountManagerData);
  v39 = sub_1000601EC();
  v40 = v13;
  v41 = v7;
  v42 = v6;
  sub_10006023C();
  v14 = [objc_opt_self() defaultManager];
  sub_10006026C();
  sub_10006028C();
  v15 = sub_1000607EC();

  v16 = [v14 directoryExistsAtPath:v15];

  if (v16)
  {
    goto LABEL_4;
  }

  sub_10006024C(v17);
  v19 = v18;
  v44 = 0;
  v20 = [v14 createDirectoryAtURL:v18 withIntermediateDirectories:1 attributes:0 error:&v44];

  if (v20)
  {
    v21 = v44;
LABEL_4:
    v23 = v39;
    v22 = v40;
    sub_1000602CC();

    sub_100022E10(v23, v22);
    v24 = v42;
    v25 = *(v41 + 8);
    v25(v10, v42);
    v25(v12, v24);
    return 0;
  }

  v27 = v44;
  sub_10006022C();

  swift_willThrow();

  sub_100022E10(v39, v40);
  v28 = v42;
  v29 = *(v41 + 8);
  v29(v10, v42);
  v29(v12, v28);
  sub_100027E8C(v2, v5, &qword_10009A588);
  swift_errorRetain();
  v30 = sub_10006072C();
  v31 = sub_100060A2C();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v44 = v34;
    *v32 = 136315394;
    v35 = *v5;
    v36 = v5[1];

    sub_100020850(v5, &qword_10009A588);
    v37 = sub_100046270(v35, v36, &v44);

    *(v32 + 4) = v37;
    *(v32 + 12) = 2112;
    swift_errorRetain();
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 14) = v38;
    *v33 = v38;
    _os_log_impl(&_mh_execute_header, v30, v31, "Failed to write to %s: %@", v32, 0x16u);
    sub_100020850(v33, &unk_10009A710);

    sub_100018230(v34);
  }

  else
  {

    sub_100020850(v5, &qword_10009A588);
  }

  return 1;
}

uint64_t sub_1000547E0()
{
  v1 = v0;
  sub_100017538(&qword_10009A588);
  v2 = (__chkstk_darwin)();
  __chkstk_darwin(v2);
  v4 = (&v19 - v3);
  sub_1000601DC();
  swift_allocObject();
  sub_1000601CC();
  v5 = [objc_opt_self() defaultManager];
  v6 = sub_1000607EC();
  v7 = [v5 contentsAtPath:v6];

  if (v7)
  {
    v8 = sub_1000602BC();
    v10 = v9;

    type metadata accessor for VoicemailAccountManagerData();
    sub_1000589F8(&qword_10009A5B0, type metadata accessor for VoicemailAccountManagerData);
    sub_1000601BC();
    sub_100022E10(v8, v10);

    return v20;
  }

  else
  {
    sub_100027E8C(v1, v4, &qword_10009A588);
    v11 = sub_10006072C();
    v12 = sub_100060A2C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v13 = 136315138;
      v15 = *v4;
      v16 = v4[1];

      sub_100020850(v4, &qword_10009A588);
      v17 = sub_100046270(v15, v16, &v20);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to read from %s", v13, 0xCu);
      sub_100018230(v14);
    }

    else
    {

      sub_100020850(v4, &qword_10009A588);
    }

    return 0;
  }
}

void *sub_100054C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v43 = a1;
  v44 = a2;
  ObjectType = swift_getObjectType();
  v8 = sub_100017538(&unk_1000995C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v41 - v9;
  v11 = sub_100017538(&qword_10009A598);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = (&v41 - v14);
  v16 = *((swift_isaMask & *v4) + 0x68);
  v17 = [type metadata accessor for VoicemailAccountManagerData() empty];
  *&v5[v16] = v17;
  v18 = &v5[*((swift_isaMask & *v5) + 0x70)];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = &v5[*((swift_isaMask & *v5) + 0x80)];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = *((swift_isaMask & *v5) + 0x88);
  v21 = v17;
  sub_100017538(&qword_1000998A0);
  swift_allocObject();
  *&v5[v20] = sub_10006078C();
  v22 = &v5[*((swift_isaMask & *v5) + 0x90)];
  *v22 = 0;
  *(v22 + 1) = &_swiftEmptyArrayStorage;
  v23 = &v5[*((swift_isaMask & *v5) + 0x98)];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = *((swift_isaMask & *v5) + 0xA0);
  sub_1000603AC();
  *&v5[v24] = sub_10006039C();
  *v15 = 0;
  v25 = *(v12 + 36);
  v26 = sub_100017538(&qword_10009A5A0);
  bzero(v15 + v25, *(*(v26 - 8) + 64));
  sub_100027EF4(a3, v15 + v25, &qword_10009A588);
  memcpy(&v5[*((swift_isaMask & *v5) + 0xA8)], v15, v13);
  v27 = *((swift_isaMask & *v5) + 0xB0);
  v28 = sub_10006074C();
  v29 = *(v28 - 8);
  (*(v29 + 16))(&v5[v27], a4, v28);
  v30 = &v5[*((swift_isaMask & *v5) + 0x78)];
  v31 = v44;
  *v30 = v43;
  *(v30 + 1) = v31;
  v45.receiver = v5;
  v45.super_class = ObjectType;
  v32 = objc_msgSendSuper2(&v45, "init");
  v33 = (v32 + *((swift_isaMask & *v32) + 0xA8));
  v34 = v32;
  os_unfair_lock_lock(v33);
  sub_100057600(v33 + *(v12 + 36), v34);
  os_unfair_lock_unlock(v33);
  sub_10006096C();
  v35 = sub_10006099C();
  (*(*(v35 - 8) + 56))(v10, 0, 1, v35);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v37 = sub_1000589F8(&qword_1000995D0, type metadata accessor for VoicemailActor);
  v38 = swift_allocObject();
  v38[2] = inited;
  v38[3] = v37;
  v38[4] = v34;
  v39 = v34;
  sub_10004ACBC(0, 0, v10, &unk_10007AB18, v38);

  (*(v29 + 8))(a4, v28);
  return v39;
}

uint64_t sub_100055184(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v25 = a2;
  v26 = a1;
  v4 = sub_100017538(&qword_1000998B8);
  v24 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_10006074C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100017538(&unk_1000995C0);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - v12;
  v14 = sub_10006099C();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v8 + 16))(v10, v23, v7);
  sub_100027E8C(v25, v6, &qword_1000998B8);
  v16 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (*(v24 + 80) + v17 + 8) & ~*(v24 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = v15;
  (*(v8 + 32))(&v19[v16], v10, v7);
  v20 = v26;
  *&v19[v17] = v26;
  sub_100027EF4(v6, &v19[v18], &qword_1000998B8);
  v21 = v20;
  sub_100037558(0, 0, v13, &unk_10007AB68, v19);
}

uint64_t sub_100055474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[9] = sub_100017538(&qword_1000998B8);
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();

  return _swift_task_switch(sub_100055524, 0, 0);
}

uint64_t sub_100055524()
{
  v24 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v2 = v0[7];
    sub_100027E8C(v0[8], v0[11], &qword_1000998B8);
    v3 = v2;
    v4 = sub_10006072C();
    v5 = sub_100060A4C();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[11];
    if (v6)
    {
      v8 = v0[10];
      v9 = v0[7];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23 = v12;
      *v10 = 138412546;
      *(v10 + 4) = v9;
      *v11 = v9;
      *(v10 + 12) = 2080;
      sub_100027E8C(v7, v8, &qword_1000998B8);
      v13 = v9;
      v14 = sub_10006082C();
      v16 = v15;
      sub_100020850(v7, &qword_1000998B8);
      v17 = sub_100046270(v14, v16, &v23);

      *(v10 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v4, v5, "VoicemailAccountManager: processing %@ for UUID %s", v10, 0x16u);
      sub_100020850(v11, &unk_10009A710);

      sub_100018230(v12);
    }

    else
    {

      sub_100020850(v7, &qword_1000998B8);
    }

    v20 = swift_task_alloc();
    v0[13] = v20;
    *v20 = v0;
    v20[1] = sub_10004BEA4;
    v22 = v0[7];
    v21 = v0[8];

    return sub_100055820(v22, v21);
  }

  else
  {

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_100055820(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = sub_10006092C();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v5 = *(sub_100017538(&qword_1000998B8) - 8);
  v3[20] = v5;
  v3[21] = *(v5 + 64);
  v3[22] = swift_task_alloc();
  v6 = sub_10006074C();
  v3[23] = v6;
  v7 = *(v6 - 8);
  v3[24] = v7;
  v3[25] = *(v7 + 64);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return _swift_task_switch(sub_1000559C0, 0, 0);
}

uint64_t sub_1000559C0()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = *((swift_isaMask & *v1) + 0xB0);
  v0[28] = v3;
  v4 = v2;
  v5 = sub_10006072C();
  v6 = sub_100060A4C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[14];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v5, v6, "Updating voicemail account Cache with updates: %@", v8, 0xCu);
    sub_100020850(v9, &unk_10009A710);
  }

  v11 = v0[27];
  v12 = v0[23];
  v13 = v0[24];
  v14 = v0[16];
  v15 = v0[14];

  swift_unknownObjectWeakInit();
  v16 = *(v13 + 16);
  v16(v11, &v1[v3], v12);
  v17 = (v14 + *((swift_isaMask & *v14) + 0x80));
  v18 = v15;
  os_unfair_lock_lock(v17);
  lock = v17;
  if (*&v17[2]._os_unfair_lock_opaque)
  {
    v19 = *&v17[2]._os_unfair_lock_opaque;
  }

  else
  {
    v62 = v0[26];
    v63 = v0[27];
    v20 = v0[24];
    v21 = v0[23];
    v22 = v0[16];
    v23 = v16;
    v24 = (*(v22 + *((swift_isaMask & *v22) + 0x78)))();
    *&v17[2]._os_unfair_lock_opaque = v24;
    v19 = v24;
    v25 = (v22 + *((swift_isaMask & *v22) + 0x90));
    swift_unknownObjectRetain_n();
    os_unfair_lock_lock(v25);
    v23(v62, v63, v21);
    v26 = (*(v20 + 80) + 24) & ~*(v20 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v22;
    v28 = v21;
    v29 = v25;
    (*(v20 + 32))(v27 + v26, v62, v28);
    v0[6] = sub_1000582D8;
    v0[7] = v27;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_10004CBB0;
    v0[5] = &unk_10008BA08;
    v30 = _Block_copy(v0 + 2);
    v31 = v22;

    v32 = [v19 listenForChangesWithHandler:v30];
    v0[11] = swift_getObjectType();
    v0[8] = v32;
    v33 = *&v29[2]._os_unfair_lock_opaque;
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v29[2]._os_unfair_lock_opaque = v33;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v33 = sub_100051318(0, *(v33 + 2) + 1, 1, v33);
      *&v29[2]._os_unfair_lock_opaque = v33;
    }

    v36 = *(v33 + 2);
    v35 = *(v33 + 3);
    if (v36 >= v35 >> 1)
    {
      *&v29[2]._os_unfair_lock_opaque = sub_100051318((v35 > 1), v36 + 1, 1, v33);
    }

    swift_unknownObjectRelease();
    v37 = *&v29[2]._os_unfair_lock_opaque;
    *(v37 + 16) = v36 + 1;
    sub_10001BD04(v0 + 4, (v37 + 32 * v36 + 32));
    os_unfair_lock_unlock(v29);
  }

  v38 = v0[27];
  v40 = v0[23];
  v39 = v0[24];
  v41 = v0[22];
  v64 = v0[20];
  v43 = v0[15];
  v42 = v0[16];
  v44 = v0[14];
  swift_unknownObjectRetain_n();
  sub_10004FBF0(v19, (v0 + 12), v44);
  swift_unknownObjectRelease_n();

  os_unfair_lock_unlock(lock);
  (*(v39 + 8))(v38, v40);
  swift_unknownObjectWeakDestroy();
  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100027E8C(v43, v41, &qword_1000998B8);
  v46 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = v45;
  *(v47 + 24) = v44;
  sub_100027EF4(v41, v47 + v46, &qword_1000998B8);
  v48 = v44;

  sub_10006037C();

  v49 = v42 + *((swift_isaMask & *v42) + 0x98);
  os_unfair_lock_lock(v49);
  v50 = sub_100056F48(v49 + 1);
  v0[29] = v50;
  os_unfair_lock_unlock(v49);
  if (v50)
  {

    v51 = swift_task_alloc();
    v0[30] = v51;
    v52 = sub_100017538(&qword_10009A370);
    v0[31] = v52;
    *v51 = v0;
    v51[1] = sub_100056184;

    return Task.value.getter(v52, v50, &type metadata for () + 8, v52, &protocol self-conformance witness table for Error);
  }

  else
  {
    v53 = v0[14];
    v54 = sub_10006072C();
    v55 = sub_100060A4C();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = v0[14];
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v57 = 138412290;
      *(v57 + 4) = v56;
      *v58 = v56;
      v59 = v56;
      _os_log_impl(&_mh_execute_header, v54, v55, "Finished Updating voicemail account Cache with updates: %@", v57, 0xCu);
      sub_100020850(v58, &unk_10009A710);
    }

    v60 = v0[1];

    return v60();
  }
}

uint64_t sub_100056184()
{
  *(*v1 + 256) = v0;

  if (v0)
  {

    v2 = sub_10005641C;
  }

  else
  {
    v2 = sub_1000562A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000562A0()
{

  v1 = *(v0 + 112);
  v2 = sub_10006072C();
  v3 = sub_100060A4C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 112);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v4;
    *v6 = v4;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Finished Updating voicemail account Cache with updates: %@", v5, 0xCu);
    sub_100020850(v6, &unk_10009A710);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10005641C()
{
  v0[13] = v0[32];
  swift_errorRetain();
  if (swift_dynamicCast())
  {

    v1 = sub_10006072C();
    v2 = sub_100060A4C();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Canceling disk update because newer updates were received", v3, 2u);
    }

    v5 = v0[18];
    v4 = v0[19];
    v6 = v0[17];

    (*(v5 + 8))(v4, v6);
  }

  else
  {

    swift_errorRetain();
    v7 = sub_10006072C();
    v8 = sub_100060A2C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to update cache on Disk with: %@", v9, 0xCu);
      sub_100020850(v10, &unk_10009A710);

      goto LABEL_9;
    }
  }

LABEL_9:

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000566AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_100017538(&qword_1000998B8);
  v4[3] = swift_task_alloc();
  v5 = sub_100060CAC();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_1000589F8(&qword_1000995D0, type metadata accessor for VoicemailActor);
  v7 = sub_10006091C();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_100056808, v7, v6);
}

uint64_t sub_100056808()
{
  sub_100060C9C();
  v1 = sub_100060F0C();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1000568E0;

  return sub_10004CD04(v1, v3, 0, 0, 1);
}

uint64_t sub_1000568E0()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 80) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 64);
  v7 = *(v2 + 56);
  if (v0)
  {
    v8 = sub_100056CE8;
  }

  else
  {
    v8 = sub_100056A78;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100056A78()
{
  if (qword_1000993F8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = qword_10009BE98;
  v3 = sub_10006036C();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_100056BA0;
  v5 = *(v0 + 24);

  return (sub_100055820)(v2, v5);
}

uint64_t sub_100056BA0()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  sub_100020850(v1, &qword_1000998B8);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100056CE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100056D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v3[8] = sub_100017538(&qword_1000998B0);
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_100056DFC, 0, 0);
}

uint64_t sub_100056DFC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v0[11] = *((swift_isaMask & *Strong) + 0x88);
    type metadata accessor for VoicemailActor();
    swift_initStaticObject();
    sub_1000589F8(&qword_1000995D0, type metadata accessor for VoicemailActor);
    v3 = sub_10006091C();

    return _swift_task_switch(sub_100050888, v3, v2);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100056F48(uint64_t *a1)
{
  v2 = sub_100017538(&unk_1000995C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  if (*a1)
  {
    sub_100017538(&qword_10009A370);
    sub_1000609BC();
  }

  sub_10006096C();
  v5 = sub_10006099C();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  v8 = sub_10004ACBC(0, 0, v4, &unk_10007AB50, v7);

  *a1 = v8;
  return v8;
}

uint64_t sub_1000570D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_100060CAC();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_100057198, 0, 0);
}

uint64_t sub_100057198()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    sub_100060C9C();
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_1000572C8;

    return sub_10004CD04(1000000000000000000, 0, 0, 0, 1);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1000572C8()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  (*(v2[8] + 8))(v2[9], v2[7]);
  if (v0)
  {
    v3 = sub_100057594;
  }

  else
  {
    v3 = sub_100057430;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_100057430()
{
  v1 = *(v0 + 96);
  sub_1000609DC();
  if (v1)
  {
  }

  else
  {
    v3 = *(v0 + 80);
    v4 = (v3 + *((swift_isaMask & *v3) + 0xA8));
    os_unfair_lock_lock(v4);
    v5 = sub_100017538(&qword_10009A598);
    sub_100057710(v4 + *(v5 + 28), v3);
    os_unfair_lock_unlock(v4);
    v6 = *(v0 + 80);
    v7 = (v6 + *((swift_isaMask & *v6) + 0x98));
    os_unfair_lock_lock(v7);

    *&v7[2]._os_unfair_lock_opaque = 0;
    os_unfair_lock_unlock(v7);
  }

  v2 = *(v0 + 8);

  v2();
}

uint64_t sub_100057594()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100057600(uint64_t a1, void *a2)
{
  v3 = sub_1000547E0();
  if (v3)
  {
    v4 = v3;
    v5 = a2 + *((swift_isaMask & *a2) + 0x70);
    os_unfair_lock_lock(v5);

    *(v5 + 1) = v4;
    os_unfair_lock_unlock(v5);
  }

  else
  {
    v6 = sub_10006072C();
    v7 = sub_100060A2C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "No cache was found for AccountSource", v8, 2u);
    }
  }
}

void sub_100057710(uint64_t a1, void *a2)
{
  v2 = (a2 + *((swift_isaMask & *a2) + 0x70));
  os_unfair_lock_lock(v2);
  v3 = *&v2[2]._os_unfair_lock_opaque;
  v4 = v3;
  os_unfair_lock_unlock(v2);
  if (v3)
  {
    v5 = sub_100054290(v4);
    v6 = sub_10006072C();
    if (v5)
    {
      v7 = sub_100060A2C();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = "Failed to update cache on Disk";
LABEL_9:
        _os_log_impl(&_mh_execute_header, v6, v7, v9, v8, 2u);
      }
    }

    else
    {
      v7 = sub_100060A4C();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = "Updated cache on Disk";
        goto LABEL_9;
      }
    }

    goto LABEL_11;
  }

  v4 = sub_10006072C();
  v10 = sub_100060A2C();
  if (os_log_type_enabled(v4, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v4, v10, "Failed to update cache on Disk because the cache was nil", v11, 2u);
  }

LABEL_11:
}

uint64_t sub_100057908()
{
  v0 = sub_100017538(&qword_100099E18);
  sub_10002FE90(v0, qword_10009BEE8);
  v1 = sub_10001762C(v0, qword_10009BEE8);
  v2 = [objc_opt_self() defaultManager];
  v3 = [v2 URLsForDirectory:5 inDomains:1];

  v4 = sub_10006029C();
  v5 = sub_1000608CC();

  if (*(v5 + 16))
  {
    v10 = *(v4 - 8);
    (*(v10 + 16))(v1, v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v4);

    v6 = v10;
    v7 = 0;
  }

  else
  {

    v6 = *(v4 - 8);
    v7 = 1;
  }

  v8 = *(v6 + 56);

  return v8(v1, v7, 1, v4);
}

uint64_t sub_100057ABC()
{
  v0 = sub_100017538(&qword_100099E18);
  v1 = __chkstk_darwin(v0);
  v3 = &v10 - v2;
  sub_10002FE90(v1, qword_10009BF00);
  v4 = sub_10001762C(v0, qword_10009BF00);
  if (qword_100099410 != -1)
  {
    swift_once();
  }

  v5 = sub_10001762C(v0, qword_10009BEE8);
  sub_100027E8C(v5, v3, &qword_100099E18);
  v6 = sub_10006029C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v3, 1, v6) == 1)
  {
    sub_100020850(v3, &qword_100099E18);
    v8 = 1;
  }

  else
  {
    sub_10006025C();
    (*(v7 + 8))(v3, v6);
    v8 = 0;
  }

  return (*(v7 + 56))(v4, v8, 1, v6);
}

uint64_t sub_100057C88()
{
  v0 = sub_100017538(&qword_100099E18);
  __chkstk_darwin(v0);
  v2 = &v13 - v1;
  v3 = sub_10006029C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100099418 != -1)
  {
    swift_once();
  }

  v7 = sub_10001762C(v0, qword_10009BF00);
  sub_100027E8C(v7, v2, &qword_100099E18);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    result = sub_100020850(v2, &qword_100099E18);
    v9 = 0;
    v10 = 0;
  }

  else
  {
    sub_10006025C();
    v11 = *(v4 + 8);
    v11(v2, v3);
    v9 = sub_10006028C();
    v10 = v12;
    result = (v11)(v6, v3);
  }

  qword_10009BF18 = v9;
  qword_10009BF20 = v10;
  return result;
}

id sub_100057ED8(uint64_t a1)
{
  v2 = objc_allocWithZone(VMVoicemailManager);

  return [v2 initWithStateSync:1 mailSync:0 delegate:a1 delegateQueue:0];
}

uint64_t sub_100057F2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VoicemailAccountManagerComposer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100057F90()
{
  v1 = *(type metadata accessor for VoicemailAccountManagerComposer() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_10006074C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10005805C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VoicemailAccountManagerComposer();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1000580C0()
{
  type metadata accessor for VoicemailAccountManagerComposer();

  return sub_100057E90();
}

uint64_t sub_100058120()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100058160(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001BE64;

  return sub_1000566AC(a1, v4, v5, v6);
}

uint64_t sub_100058214()
{
  v1 = sub_10006074C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000582D8(void *a1, uint64_t a2)
{
  v5 = *(sub_10006074C() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_100055184(a1, a2, v6, v7);
}

uint64_t sub_10005835C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100058374()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000583AC()
{
  v1 = *(sub_100017538(&qword_1000998B8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_10006036C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000584D4()
{
  v2 = *(sub_100017538(&qword_1000998B8) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10001BE64;

  return sub_100056D58(v4, v5, v0 + v3);
}

uint64_t sub_1000585BC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000585FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000183D4;

  return sub_1000570D8(a1, v4, v5, v6);
}

uint64_t sub_1000586B0()
{
  v1 = sub_10006074C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_100017538(&qword_1000998B8) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7 + 8) & ~v7;
  v9 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  v10 = sub_10006036C();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return _swift_deallocObject(v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_100058878(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10006074C() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_100017538(&qword_1000998B8) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1000183D4;

  return sub_100055474(a1, v10, v11, v12, v1 + v6, v13, v1 + v9);
}

uint64_t sub_1000589F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100058A54(uint64_t a1, uint64_t a2)
{
  v4 = sub_10006074C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100058AD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10006074C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void *sub_100058B60(unint64_t a1, void (*a2)(void))
{
  if (a1 >> 62)
  {
LABEL_15:
    sub_100060CFC();
    sub_100060C5C();
    v4 = sub_100060CFC();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_100060C5C();
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          sub_100060C0C();
          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_12;
          }
        }

        a2(0);
        if (!swift_dynamicCastClass())
        {
          goto LABEL_13;
        }

        sub_100060C3C();
        sub_100060C6C();
        sub_100060C7C();
        sub_100060C4C();
        ++v5;
      }

      while (v6 != v4);
    }
  }

  return _swiftEmptyArrayStorage;
}

char *sub_100058CF0(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC37VoicemailMessageNotificationExtension22VisualVoicemailManager_messagesChangedPublisher;
  sub_100017538(&unk_10009A6F0);
  swift_allocObject();
  *&v3[v8] = sub_10006078C();
  *&v3[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension22VisualVoicemailManager_visualVoicemailManager] = a1;
  v9 = &v3[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension22VisualVoicemailManager_onVoicemailsChanged];
  *v9 = a2;
  *(v9 + 1) = a3;
  v15.receiver = v3;
  v15.super_class = ObjectType;
  v10 = a1;

  v11 = objc_msgSendSuper2(&v15, "init");
  v12 = *&v11[OBJC_IVAR____TtC37VoicemailMessageNotificationExtension22VisualVoicemailManager_visualVoicemailManager];
  v13 = v11;
  [v12 setDelegate:{v13, v15.receiver, v15.super_class}];

  return v13;
}

uint64_t sub_100058E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a1;
  v6[4] = a4;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10001B6F0();
  v8 = sub_10006091C();

  return _swift_task_switch(sub_100058F08, v8, v7);
}

uint64_t sub_100058F08()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v0[2] = *(v0[4] + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension22VisualVoicemailManager_messagesChangedPublisher);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;

  sub_100017538(&unk_10009A6F0);
  sub_10005DFB4();
  v5 = sub_10006079C();

  *v3 = v5;
  v6 = v0[1];

  return v6();
}

uint64_t sub_100059010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 25) = a6;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10001B6F0();
  v8 = sub_10006091C();

  return _swift_task_switch(sub_1000590AC, v8, v7);
}

uint64_t sub_1000590AC()
{
  v1 = *(v0 + 25);
  v2 = *(v0 + 40);
  (*(*(v0 + 32) + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension22VisualVoicemailManager_onVoicemailsChanged))();
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  sub_10006077C();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100059148()
{
  *(v1 + 32) = v0;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10001B6F0();
  v3 = sub_10006091C();

  return _swift_task_switch(sub_1000591E0, v3, v2);
}

uint64_t sub_1000591E0()
{
  v22 = v0;
  v1 = [*(v0[2].receiver + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension22VisualVoicemailManager_visualVoicemailManager) allVoicemails];
  sub_10005E5B4();
  v2 = sub_1000608CC();

  if (v2 >> 62)
  {
    v3 = sub_100060CFC();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_11:

    v10 = _swiftEmptyArrayStorage;
    goto LABEL_12;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_3:
  v21 = _swiftEmptyArrayStorage;
  result = sub_100060C5C();
  if (v3 < 0)
  {
    __break(1u);
    return result;
  }

  v5 = 0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = sub_100060C0C();
    }

    else
    {
      v6 = *(v2 + 8 * v5 + 32);
    }

    v7 = v6;
    ++v5;
    v8 = type metadata accessor for VisualMessage();
    v9 = objc_allocWithZone(v8);
    *&v9[OBJC_IVAR___MPVisualMessage_vmMessage] = v7;
    v0[1].receiver = v9;
    v0[1].super_class = v8;
    objc_msgSendSuper2(v0 + 1, "init");
    sub_100060C3C();
    sub_100060C6C();
    sub_100060C7C();
    sub_100060C4C();
  }

  while (v3 != v5);

  v10 = v21;
LABEL_12:
  if (qword_100099408 != -1)
  {
    swift_once();
  }

  v11 = sub_10006074C();
  sub_10001762C(v11, qword_10009BED0);

  v12 = sub_10006072C();
  v13 = sub_100060A4C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136315138;
    type metadata accessor for VisualMessage();
    v16 = sub_1000608DC();
    v18 = sub_100046270(v16, v17, &v21);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "Fetched %s from VMD", v14, 0xCu);
    sub_100018230(v15);
  }

  if (v10 >> 62)
  {
    sub_100017538(&qword_10009A700);
    v19 = sub_100060CEC();
  }

  else
  {
    sub_100060E2C();
    v19 = v10;
  }

  super_class = v0->super_class;

  return super_class(v19);
}

uint64_t sub_1000596B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10001B6F0();
  v4 = sub_10006091C();

  return _swift_task_switch(sub_100059750, v4, v3);
}

uint64_t sub_100059750()
{
  v1 = *(v0 + 24);
  *(v0 + 32) = _Block_copy(*(v0 + 16));
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_10002A630;

  return sub_100059148();
}

uint64_t sub_1000597F4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10001B6F0();
  v4 = sub_10006091C();

  return _swift_task_switch(sub_10005988C, v4, v3);
}

uint64_t sub_10005988C()
{
  v20 = v0;
  v1 = sub_100058B60(v0[2], type metadata accessor for VisualMessage);
  if (!v1)
  {
    if (qword_100099408 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

  v2 = v1;
  v3 = *(v0[3] + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension22VisualVoicemailManager_visualVoicemailManager);
  if (v1 >> 62)
  {
    v4 = sub_100060CFC();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_16:

    sub_10005E5B4();
    isa = sub_1000608BC().super.isa;

    v9 = [v3 deleteVoicemails:isa];

    goto LABEL_17;
  }

  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_4:
  v19 = _swiftEmptyArrayStorage;
  sub_100060C5C();
  if ((v4 & 0x8000000000000000) == 0)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = v5 + 1;
        v7 = *(sub_100060C0C() + OBJC_IVAR___MPVisualMessage_vmMessage);
        swift_unknownObjectRelease();
        sub_100060C3C();
        sub_100060C6C();
        sub_100060C7C();
        sub_100060C4C();
        v5 = v6;
      }

      while (v4 != v6);
    }

    else
    {
      v13 = (v2 + 32);
      do
      {
        v14 = *v13++;
        v15 = *(v14 + OBJC_IVAR___MPVisualMessage_vmMessage);
        sub_100060C3C();
        sub_100060C6C();
        sub_100060C7C();
        sub_100060C4C();
        --v4;
      }

      while (v4);
    }

    goto LABEL_16;
  }

  __break(1u);
LABEL_21:
  swift_once();
LABEL_10:
  v8 = sub_10006074C();
  sub_10001762C(v8, qword_10009BED0);

  v9 = sub_10006072C();
  v10 = sub_100060A2C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_100046270(0x654D3C7961727241, 0xEE003E6567617373, &v19);
    _os_log_impl(&_mh_execute_header, v9, v10, "Incorrect type passed into VisualVoicemailManager %{public}s but expected VisualMessage!", v11, 0xCu);
    sub_100018230(v12);
  }

LABEL_17:

  v17 = v0[1];

  return v17();
}

uint64_t sub_100059D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10001B6F0();
  v5 = sub_10006091C();

  return _swift_task_switch(sub_100059E10, v5, v4);
}

uint64_t sub_100059E10()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  sub_100017538(&qword_10009A700);
  v2 = sub_1000608CC();
  *(v0 + 48) = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_100049798;

  return sub_1000597F4(v2);
}

uint64_t sub_100059EEC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10001B6F0();
  v4 = sub_10006091C();

  return _swift_task_switch(sub_100059F84, v4, v3);
}

uint64_t sub_100059F84()
{
  v20 = v0;
  v1 = sub_100058B60(v0[2], type metadata accessor for VisualMessage);
  if (!v1)
  {
    if (qword_100099408 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

  v2 = v1;
  v3 = *(v0[3] + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension22VisualVoicemailManager_visualVoicemailManager);
  if (v1 >> 62)
  {
    v4 = sub_100060CFC();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_16:

    sub_10005E5B4();
    isa = sub_1000608BC().super.isa;

    v9 = [v3 markVoicemailsAsRead:isa];

    goto LABEL_17;
  }

  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_4:
  v19 = _swiftEmptyArrayStorage;
  sub_100060C5C();
  if ((v4 & 0x8000000000000000) == 0)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = v5 + 1;
        v7 = *(sub_100060C0C() + OBJC_IVAR___MPVisualMessage_vmMessage);
        swift_unknownObjectRelease();
        sub_100060C3C();
        sub_100060C6C();
        sub_100060C7C();
        sub_100060C4C();
        v5 = v6;
      }

      while (v4 != v6);
    }

    else
    {
      v13 = (v2 + 32);
      do
      {
        v14 = *v13++;
        v15 = *(v14 + OBJC_IVAR___MPVisualMessage_vmMessage);
        sub_100060C3C();
        sub_100060C6C();
        sub_100060C7C();
        sub_100060C4C();
        --v4;
      }

      while (v4);
    }

    goto LABEL_16;
  }

  __break(1u);
LABEL_21:
  swift_once();
LABEL_10:
  v8 = sub_10006074C();
  sub_10001762C(v8, qword_10009BED0);

  v9 = sub_10006072C();
  v10 = sub_100060A2C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_100046270(0x654D3C7961727241, 0xEE003E6567617373, &v19);
    _os_log_impl(&_mh_execute_header, v9, v10, "Incorrect type passed into VisualVoicemailManager %{public}s but expected VisualMessage!", v11, 0xCu);
    sub_100018230(v12);
  }

LABEL_17:

  v17 = v0[1];

  return v17();
}

uint64_t sub_10005A46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10001B6F0();
  v5 = sub_10006091C();

  return _swift_task_switch(sub_10005A508, v5, v4);
}

uint64_t sub_10005A508()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  sub_100017538(&qword_10009A700);
  v2 = sub_1000608CC();
  *(v0 + 48) = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1000428CC;

  return sub_100059EEC(v2);
}

uint64_t sub_10005A5E4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10001B6F0();
  v4 = sub_10006091C();

  return _swift_task_switch(sub_10005A67C, v4, v3);
}

uint64_t sub_10005A67C()
{
  v20 = v0;
  v1 = sub_100058B60(v0[2], type metadata accessor for VisualMessage);
  if (!v1)
  {
    if (qword_100099408 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

  v2 = v1;
  v3 = *(v0[3] + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension22VisualVoicemailManager_visualVoicemailManager);
  if (v1 >> 62)
  {
    v4 = sub_100060CFC();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_16:

    sub_10005E5B4();
    isa = sub_1000608BC().super.isa;

    v9 = [v3 trashVoicemails:isa];

    goto LABEL_17;
  }

  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_4:
  v19 = _swiftEmptyArrayStorage;
  sub_100060C5C();
  if ((v4 & 0x8000000000000000) == 0)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = v5 + 1;
        v7 = *(sub_100060C0C() + OBJC_IVAR___MPVisualMessage_vmMessage);
        swift_unknownObjectRelease();
        sub_100060C3C();
        sub_100060C6C();
        sub_100060C7C();
        sub_100060C4C();
        v5 = v6;
      }

      while (v4 != v6);
    }

    else
    {
      v13 = (v2 + 32);
      do
      {
        v14 = *v13++;
        v15 = *(v14 + OBJC_IVAR___MPVisualMessage_vmMessage);
        sub_100060C3C();
        sub_100060C6C();
        sub_100060C7C();
        sub_100060C4C();
        --v4;
      }

      while (v4);
    }

    goto LABEL_16;
  }

  __break(1u);
LABEL_21:
  swift_once();
LABEL_10:
  v8 = sub_10006074C();
  sub_10001762C(v8, qword_10009BED0);

  v9 = sub_10006072C();
  v10 = sub_100060A2C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_100046270(0x654D3C7961727241, 0xEE003E6567617373, &v19);
    _os_log_impl(&_mh_execute_header, v9, v10, "Incorrect type passed into VisualVoicemailManager %{public}s but expected VisualMessage!", v11, 0xCu);
    sub_100018230(v12);
  }

LABEL_17:

  v17 = v0[1];

  return v17();
}

uint64_t sub_10005AB64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10001B6F0();
  v5 = sub_10006091C();

  return _swift_task_switch(sub_10005AC00, v5, v4);
}

uint64_t sub_10005AC00()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  sub_100017538(&qword_10009A700);
  v2 = sub_1000608CC();
  *(v0 + 48) = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_100049798;

  return sub_10005A5E4(v2);
}

uint64_t sub_10005ACDC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10001B6F0();
  v4 = sub_10006091C();

  return _swift_task_switch(sub_10005AD74, v4, v3);
}

uint64_t sub_10005AD74()
{
  v20 = v0;
  v1 = sub_100058B60(v0[2], type metadata accessor for VisualMessage);
  if (!v1)
  {
    if (qword_100099408 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

  v2 = v1;
  v3 = *(v0[3] + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension22VisualVoicemailManager_visualVoicemailManager);
  if (v1 >> 62)
  {
    v4 = sub_100060CFC();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_16:

    sub_10005E5B4();
    isa = sub_1000608BC().super.isa;

    v9 = [v3 removeVoicemailsFromTrash:isa];

    goto LABEL_17;
  }

  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_4:
  v19 = _swiftEmptyArrayStorage;
  sub_100060C5C();
  if ((v4 & 0x8000000000000000) == 0)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = v5 + 1;
        v7 = *(sub_100060C0C() + OBJC_IVAR___MPVisualMessage_vmMessage);
        swift_unknownObjectRelease();
        sub_100060C3C();
        sub_100060C6C();
        sub_100060C7C();
        sub_100060C4C();
        v5 = v6;
      }

      while (v4 != v6);
    }

    else
    {
      v13 = (v2 + 32);
      do
      {
        v14 = *v13++;
        v15 = *(v14 + OBJC_IVAR___MPVisualMessage_vmMessage);
        sub_100060C3C();
        sub_100060C6C();
        sub_100060C7C();
        sub_100060C4C();
        --v4;
      }

      while (v4);
    }

    goto LABEL_16;
  }

  __break(1u);
LABEL_21:
  swift_once();
LABEL_10:
  v8 = sub_10006074C();
  sub_10001762C(v8, qword_10009BED0);

  v9 = sub_10006072C();
  v10 = sub_100060A2C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_100046270(0x654D3C7961727241, 0xEE003E6567617373, &v19);
    _os_log_impl(&_mh_execute_header, v9, v10, "Incorrect type passed into VisualVoicemailManager %{public}s but expected VisualMessage!", v11, 0xCu);
    sub_100018230(v12);
  }

LABEL_17:

  v17 = v0[1];

  return v17();
}

uint64_t sub_10005B25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10001B6F0();
  v5 = sub_10006091C();

  return _swift_task_switch(sub_10005B2F8, v5, v4);
}

uint64_t sub_10005B2F8()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  sub_100017538(&qword_10009A700);
  v2 = sub_1000608CC();
  *(v0 + 48) = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_100049798;

  return sub_10005ACDC(v2);
}

uint64_t sub_10005B3D4(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v2[6] = type metadata accessor for MessageID.Value(0);
  v2[7] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10001B6F0();
  v4 = sub_10006091C();

  return _swift_task_switch(sub_10005B49C, v4, v3);
}

uint64_t sub_10005B49C()
{
  sub_100020780(*(v0 + 32) + OBJC_IVAR___MPMessageID_value, *(v0 + 56));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = *(v0 + 56);
  if (EnumCaseMultiPayload == 1)
  {
    sub_1000207E4(v2);
    if (qword_100099408 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 32);
    v4 = sub_10006074C();
    sub_10001762C(v4, qword_10009BED0);
    v5 = v3;
    v6 = sub_10006072C();
    v7 = sub_100060A2C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 32);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v8;
      *v10 = v8;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v6, v7, "Incorrect id passed into VisualVoicemailManager %@, privacy: .public) but expected a VisualMessage ID!", v9, 0xCu);
      sub_100020850(v10, &unk_10009A710);
    }

    v12 = 0;
  }

  else
  {
    v12 = [*(*(v0 + 40) + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension22VisualVoicemailManager_visualVoicemailManager) voicemailWithIdentifier:*v2];
    if (v12)
    {
      v13 = type metadata accessor for VisualMessage();
      v14 = objc_allocWithZone(v13);
      *&v14[OBJC_IVAR___MPVisualMessage_vmMessage] = v12;
      *(v0 + 16) = v14;
      *(v0 + 24) = v13;
      v12 = objc_msgSendSuper2((v0 + 16), "init");
    }
  }

  v15 = *(v0 + 8);

  return v15(v12);
}

uint64_t sub_10005B85C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10001B6F0();
  v5 = sub_10006091C();

  return _swift_task_switch(sub_10005B8F8, v5, v4);
}

uint64_t sub_10005B8F8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  v3 = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_10002AF30;
  v6 = *(v0 + 16);

  return sub_10005B3D4(v6);
}

uint64_t sub_10005B9B4(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10001B6F0();
  v5 = sub_10006091C();

  return _swift_task_switch(sub_10005BA50, v5, v4);
}

uint64_t sub_10005BA50()
{
  super_class = v0[5].super_class;
  receiver = v0[5].receiver;
  v3 = *(v0[6].receiver + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension22VisualVoicemailManager_visualVoicemailManager);
  v4 = swift_allocObject();
  *(v4 + 16) = receiver;
  *(v4 + 24) = super_class;
  v0[3].receiver = sub_10005ECF0;
  v0[3].super_class = v4;
  v0[1].receiver = _NSConcreteStackBlock;
  v0[1].super_class = 1107296256;
  v0[2].receiver = sub_10005BD74;
  v0[2].super_class = &unk_10008BDD8;
  v5 = _Block_copy(&v0[1]);

  v6 = [v3 voicemailsPassingTest:v5];
  _Block_release(v5);
  sub_10005E5B4();
  v7 = sub_1000608CC();

  if (v7 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100060CFC())
  {
    result = sub_100060C5C();
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v10 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = sub_100060C0C();
        goto LABEL_6;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v11 = *(v7 + 8 * v10 + 32);
LABEL_6:
      v12 = v11;
      ++v10;
      v13 = type metadata accessor for VisualMessage();
      v14 = objc_allocWithZone(v13);
      *&v14[OBJC_IVAR___MPVisualMessage_vmMessage] = v12;
      v0[4].receiver = v14;
      v0[4].super_class = v13;
      objc_msgSendSuper2(v0 + 4, "init");
      sub_100060C3C();
      sub_100060C6C();
      sub_100060C7C();
      sub_100060C4C();
      if (i == v10)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:

  v15 = v0->super_class;

  return v15(_swiftEmptyArrayStorage);
}

uint64_t sub_10005BCE8(void *a1, uint64_t (*a2)(id, uint64_t))
{
  v4 = type metadata accessor for VisualMessage();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___MPVisualMessage_vmMessage] = a1;
  v10.receiver = v5;
  v10.super_class = v4;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v10, "init");
  LOBYTE(a2) = a2(v7, v8);

  return a2 & 1;
}

uint64_t sub_10005BD74(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t sub_10005BF5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10001B6F0();
  v5 = sub_10006091C();

  return _swift_task_switch(sub_10005BFF8, v5, v4);
}

uint64_t sub_10005BFF8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = _Block_copy(*(v0 + 16));
  *(v0 + 40) = _Block_copy(v1);
  v4 = swift_allocObject();
  *(v0 + 48) = v4;
  *(v4 + 16) = v3;
  v5 = v2;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_10005C0EC;

  return sub_10005B9B4(sub_10005ECC8, v4);
}

uint64_t sub_10005C0EC()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v6 = *v0;

  sub_100017538(&qword_10009A700);
  isa = sub_1000608BC().super.isa;

  (v1)[2](v1, isa);

  _Block_release(v1);
  v4 = *(v6 + 8);

  return v4();
}

void sub_10005C28C(char a1, void *a2)
{
  v5 = type metadata accessor for MessageID.Value(0);
  __chkstk_darwin(v5);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100020780(a2 + OBJC_IVAR___MPMessageID_value, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000207E4(v7);
  }

  else
  {
    v8 = *(v2 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension22VisualVoicemailManager_visualVoicemailManager);
    v9 = [v8 voicemailWithIdentifier:*v7];
    if (v9)
    {
      v10 = v9;
      [v8 reportTranscriptionRatedAccurate:a1 & 1 forVoicemail:v9];
      goto LABEL_9;
    }
  }

  if (qword_100099408 != -1)
  {
    swift_once();
  }

  v11 = sub_10006074C();
  sub_10001762C(v11, qword_10009BED0);
  v12 = a2;
  v10 = sub_10006072C();
  v13 = sub_100060A2C();

  if (os_log_type_enabled(v10, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v12;
    *v15 = v12;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v10, v13, "Failed to report problem for message with ID(%@ becuase it could not be found.", v14, 0xCu);
    sub_100020850(v15, &unk_10009A710);
  }

LABEL_9:
}

void sub_10005C510(void *a1)
{
  v3 = type metadata accessor for MessageID.Value(0);
  __chkstk_darwin(v3);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100020780(a1 + OBJC_IVAR___MPMessageID_value, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000207E4(v5);
  }

  else
  {
    v6 = *(v1 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension22VisualVoicemailManager_visualVoicemailManager);
    v7 = [v6 voicemailWithIdentifier:*v5];
    if (v7)
    {
      v8 = v7;
      [v6 reportTranscriptionProblemForVoicemail:v7];
      goto LABEL_9;
    }
  }

  if (qword_100099408 != -1)
  {
    swift_once();
  }

  v9 = sub_10006074C();
  sub_10001762C(v9, qword_10009BED0);
  v10 = a1;
  v8 = sub_10006072C();
  v11 = sub_100060A2C();

  if (os_log_type_enabled(v8, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v10;
    *v13 = v10;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v8, v11, "Failed to report problem for message with ID(%@ becuase it could not be found.", v12, 0xCu);
    sub_100020850(v13, &unk_10009A710);
  }

LABEL_9:
}

uint64_t sub_10005C784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a4;
  sub_10006094C();
  *(v5 + 24) = sub_10006093C();
  v7 = sub_10006091C();

  return _swift_task_switch(sub_10005C820, v7, v6);
}

uint64_t sub_10005C820()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  [*(v2 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension22VisualVoicemailManager_visualVoicemailManager) requestInitialStateIfNecessaryAndSendNotifications:v1];
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10005CA94(uint64_t a1, uint64_t a2)
{
  v5 = sub_100017538(&unk_1000995C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = *v2;
  v9 = sub_10006099C();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v11 = sub_10001B6F0();
  v12 = swift_allocObject();
  v12[2] = inited;
  v12[3] = v11;
  v12[4] = v8;
  v12[5] = a1;
  v12[6] = a2;
  v13 = v8;

  sub_100037848(0, 0, v7, &unk_10007AC38, v12);
  sub_10006075C();
  swift_allocObject();
  return sub_10006076C();
}

uint64_t sub_10005CC14(uint64_t a1)
{
  v3 = sub_100017538(&unk_1000995C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - v4;
  v6 = sub_1000601AC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100099408 != -1)
  {
    swift_once();
  }

  v10 = sub_10006074C();
  sub_10001762C(v10, qword_10009BED0);
  (*(v7 + 16))(v9, a1, v6);
  v11 = v1;
  v12 = sub_10006072C();
  v13 = sub_100060A1C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v30 = v5;
    v15 = v14;
    v32 = swift_slowAlloc();
    *v15 = 136315394;
    swift_getObjectType();
    v16 = sub_100060F3C();
    v18 = sub_100046270(v16, v17, &v32);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    v31 = sub_10006019C();
    type metadata accessor for Name(0);
    v19 = sub_10006082C();
    v21 = v20;
    (*(v7 + 8))(v9, v6);
    v22 = sub_100046270(v19, v21, &v32);

    *(v15 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s is handling %s", v15, 0x16u);
    swift_arrayDestroy();

    v5 = v30;
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v23 = sub_10006099C();
  (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v25 = sub_10001B6F0();
  v26 = swift_allocObject();
  *(v26 + 16) = inited;
  *(v26 + 24) = v25;
  *(v26 + 32) = v11;
  *(v26 + 40) = 0;
  *(v26 + 48) = 3;
  v27 = v11;
  sub_100037558(0, 0, v5, &unk_10007ACB8, v26);
}

uint64_t sub_10005D0A4(char a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v9 = sub_100017538(&unk_1000995C0);
  __chkstk_darwin(v9 - 8);
  v11 = &v30 - v10;
  if (qword_100099408 != -1)
  {
    swift_once();
  }

  v12 = sub_10006074C();
  sub_10001762C(v12, qword_10009BED0);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v13 = v4;
  v14 = sub_10006072C();
  v15 = sub_100060A1C();

  if (os_log_type_enabled(v14, v15))
  {
    v31 = v11;
    v16 = a1;
    v17 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = v32;
    *v17 = 136316162;
    swift_getObjectType();
    v18 = sub_100060F3C();
    v20 = sub_100046270(v18, v19, &v33);

    *(v17 + 4) = v20;
    *(v17 + 12) = 1024;
    *(v17 + 14) = v16 & 1;
    *(v17 + 18) = 2048;
    if (a3)
    {
      if (a3 >> 62)
      {
        v21 = sub_100060CFC();
      }

      else
      {
        v21 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v31;
    }

    else
    {
      v21 = 0;
      v11 = v31;
    }

    *(v17 + 20) = v21;

    *(v17 + 28) = 2048;
    if (a4)
    {
      if (a4 >> 62)
      {
        v22 = sub_100060CFC();
      }

      else
      {
        v22 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v22 = 0;
    }

    *(v17 + 30) = v22;

    *(v17 + 38) = 2048;
    if (a2)
    {
      if (a2 >> 62)
      {
        v23 = sub_100060CFC();
      }

      else
      {
        v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v23 = 0;
    }

    *(v17 + 40) = v23;

    _os_log_impl(&_mh_execute_header, v14, v15, "%s voicemailsDidChangeInitial: %{BOOL}d added: %ld, deleted: %ld, updated: %ld", v17, 0x30u);
    sub_100018230(v32);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v24 = sub_10006099C();
  (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v26 = sub_10001B6F0();
  v27 = swift_allocObject();
  *(v27 + 16) = inited;
  *(v27 + 24) = v26;
  *(v27 + 32) = v13;
  *(v27 + 40) = 0;
  *(v27 + 48) = 3;
  v28 = v13;
  sub_100037558(0, 0, v11, &unk_10007ACB0, v27);
}

void sub_10005D744(const char *a1)
{
  if (qword_100099408 != -1)
  {
    swift_once();
  }

  v3 = sub_10006074C();
  sub_10001762C(v3, qword_10009BED0);
  v4 = v1;
  oslog = sub_10006072C();
  v5 = sub_100060A1C();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    swift_getObjectType();
    v8 = sub_100060F3C();
    v10 = sub_100046270(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, oslog, v5, a1, v6, 0xCu);
    sub_100018230(v7);
  }
}

uint64_t sub_10005D900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_10001BE64;

  return sub_1000597F4(a5);
}

uint64_t sub_10005D9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1000183D4;

  return sub_100059EEC(a5);
}

uint64_t sub_10005DAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_10001BE64;

  return sub_10005A5E4(a5);
}

uint64_t sub_10005DB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_10001BE64;

  return sub_10005ACDC(a5);
}

uint64_t sub_10005DC40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100017538(&unk_1000995C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  sub_100017538(&qword_10009A700);
  v10 = sub_1000608CC();
  v11 = sub_10006099C();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v13 = sub_10001B6F0();
  v14 = swift_allocObject();
  v14[2] = inited;
  v14[3] = v13;
  v14[4] = a1;
  v14[5] = v10;
  v15 = a1;
  sub_100037558(0, 0, v9, a5, v14);
}

uint64_t sub_10005DE6C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10005DEB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001BE64;

  return sub_100058E6C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10005DF7C()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10005DFB4()
{
  result = qword_10009A2E0;
  if (!qword_10009A2E0)
  {
    sub_1000175E4(&unk_10009A6F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009A2E0);
  }

  return result;
}

uint64_t sub_10005E020(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005E038(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001BE64;

  return sub_10005DB70(a1, v4, v5, v7, v6);
}

uint64_t sub_10005E0F8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10001BE64;

  return v6();
}

uint64_t sub_10005E1E0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10001BE64;

  return v7();
}

uint64_t sub_10005E2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100017538(&unk_1000995C0);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_100046010(a3, v23 - v10);
  v12 = sub_10006099C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100020850(v11, &unk_1000995C0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_10006098C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_10006091C();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_10006084C() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_100020850(a3, &unk_1000995C0);

    return v21;
  }

LABEL_8:
  sub_100020850(a3, &unk_1000995C0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

unint64_t sub_10005E5B4()
{
  result = qword_10009A708;
  if (!qword_10009A708)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10009A708);
  }

  return result;
}

uint64_t sub_10005E604(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001BE64;

  return sub_10005DAA0(a1, v4, v5, v7, v6);
}

uint64_t sub_10005E6C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000183D4;

  return sub_10005D9D0(a1, v4, v5, v7, v6);
}

uint64_t sub_10005E784(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001BE64;

  return sub_10005D900(a1, v4, v5, v7, v6);
}

uint64_t sub_10005E848(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001BE64;

  return sub_100059010(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10005E910()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_10005E958()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10005E998(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001BE64;

  return sub_10005C784(a1, v4, v5, v6, v7);
}

uint64_t sub_10005EA5C()
{
  _Block_release(*(v0 + 16));
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005EAA4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001BE64;

  return sub_10005BF5C(v2, v3, v4);
}

uint64_t sub_10005EB58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001BE64;

  return sub_100046080(a1, v4);
}

uint64_t sub_10005EC10(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000183D4;

  return sub_100046080(a1, v4);
}

uint64_t sub_10005ECF8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001BE64;

  return sub_10005B85C(v2, v3, v4);
}

uint64_t sub_10005EDAC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001BE64;

  return sub_10005B25C(v2, v3, v4);
}

uint64_t sub_10005EE64()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001BE64;

  return sub_10005AB64(v2, v3, v4);
}

uint64_t sub_10005EF1C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001BE64;

  return sub_10005A46C(v2, v3, v4);
}

uint64_t sub_10005EFD0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001BE64;

  return sub_100059D74(v2, v3, v4);
}

uint64_t sub_10005F084()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005F0C4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001BE64;

  return sub_1000596B8(v2, v3);
}

uint64_t sub_10005F170()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005F38C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

char *sub_10005F3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a3;
  v30 = a2;
  v34 = a1;
  v7 = sub_100017538(&unk_1000995C0);
  __chkstk_darwin(v7 - 8);
  v33 = &v30 - v8;
  v9 = sub_10006074C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10006099C();
  v13 = *(v31 - 8);
  __chkstk_darwin(v31);
  v36 = sub_10006068C();
  v37 = &off_10008AA40;
  v35[0] = a4;
  v14 = OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_analyticsReporter;
  if (qword_100099408 != -1)
  {
    swift_once();
  }

  v15 = sub_10001762C(v9, qword_10009BED0);
  v16 = *(v10 + 16);
  v16(a5 + v14, v15, v9);
  *(a5 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_providers) = &off_100089C70;
  *(a5 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_messageTypes) = &off_100089CA0;
  v17 = OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_messagesChangedPublisher;
  sub_100017538(&unk_10009A6F0);
  swift_allocObject();
  *(a5 + v17) = sub_10006078C();
  v18 = OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_operationQueue;
  sub_1000603AC();
  sub_10006097C();
  *(a5 + v18) = sub_10006038C();
  v19 = v34;
  v16(a5 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_logger, v34, v9);
  v20 = (a5 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_onVoicemailsChanged);
  v21 = v32;
  *v20 = v30;
  v20[1] = v21;
  sub_10001827C(v35, a5 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_messageStoreController);
  v16(v12, v19, v9);
  type metadata accessor for MessageStoreDelegate(0);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v22 + 24) = 0;
  (*(v10 + 32))(v22 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtensionP33_8025293584B3B4CB1E2F1298DE5F5F7E20MessageStoreDelegate_logger, v12, v9);
  *(a5 + OBJC_IVAR____TtC37VoicemailMessageNotificationExtension24FaceTimeVoicemailManager_messageStoreDelegate) = v22;

  v23 = sub_100028D14(1397576774, 0xE400000000000000);
  v24 = v33;
  (*(v13 + 56))(v33, 1, 1, v31);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v26 = sub_10001B6F0();
  v27 = swift_allocObject();
  v27[2] = inited;
  v27[3] = v26;
  v27[4] = v23;
  v28 = v23;
  sub_100037558(0, 0, v24, &unk_10007ADF8, v27);

  sub_1000184C8(v35, v36);

  sub_10006062C();

  (*(v10 + 8))(v19, v9);
  sub_100018230(v35);
  return v28;
}

char *sub_10005F83C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10006074C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100099408 != -1)
  {
    swift_once();
  }

  v8 = sub_10001762C(v4, qword_10009BED0);
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_10006068C();
  v10 = sub_10006067C();
  v21 = v9;
  v22 = &off_10008AA40;
  v20[0] = v10;
  v11 = objc_allocWithZone(type metadata accessor for FaceTimeVoicemailManager(0));
  v12 = sub_100017664(v20, v21);
  __chkstk_darwin(v12);
  v14 = (&v20[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;

  v17 = sub_10005F3C4(v7, a1, a2, v16, v11);

  sub_100018230(v20);
  return v17;
}

uint64_t sub_10005FA60()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005FAA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000183D4;

  return sub_1000383F0(a1, v4, v5, v6);
}

void sub_10005FD2C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to set audio category to %@: %@", &v3, 0x16u);
}

void sub_10005FDB4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to activate voicemail audio session: %@", &v2, 0xCu);
}

void sub_10005FE2C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to deactivate voicemail audio session: %@", &v2, 0xCu);
}

void sub_10005FEA4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not create a CNPhoneNumber for the specified telephone number (%@).", &v2, 0xCu);
}