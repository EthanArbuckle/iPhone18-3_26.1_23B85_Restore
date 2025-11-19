char *sub_204A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_385C(&qword_3A9C0, &qword_2C788);
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

size_t sub_205A4(size_t result, int64_t a2, char a3, void *a4)
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

  sub_385C(&qword_3A9B8, &qword_2C780);
  v10 = *(sub_385C(&qword_399F0, &qword_2B790) - 8);
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
  v15 = *(sub_385C(&qword_399F0, &qword_2B790) - 8);
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

char *sub_20794(char *result, int64_t a2, char a3, char *a4)
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
    sub_385C(&qword_3A168, &qword_2BC48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_208B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_385C(&qword_3A170, &qword_2BC50);
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

void *sub_209BC(void *result, int64_t a2, char a3, void *a4)
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
    sub_385C(&qword_3A9A8, &qword_2C770);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_385C(&qword_3A9B0, &qword_2C778);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_20AF0(void *result, int64_t a2, char a3, void *a4)
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
    sub_385C(&qword_3A998, &qword_2C760);
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
    sub_385C(&qword_3A9A0, &qword_2C768);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20C34(char *result, int64_t a2, char a3, char *a4)
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
    sub_385C(&qword_3A1D8, &qword_2BCB0);
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
    v10 = &_swiftEmptyArrayStorage;
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

void *sub_20D60(void *result, int64_t a2, char a3, void *a4)
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
    sub_385C(&qword_3A968, &qword_2C728);
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
    sub_385C(&qword_3A970, &qword_2C730);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_20E94(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_385C(a5, a6);
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
    sub_385C(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t sub_20FC8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_385C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
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

Swift::Int sub_211A4(void **a1)
{
  v2 = *(type metadata accessor for PatternStoreValue(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1768C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_2168C(v6);
  *a1 = v3;
  return result;
}

void sub_2124C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      sub_385C(&qword_3A978, &qword_2C738);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 40);
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

void sub_21334(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_385C(&qword_3A9B8, &qword_2C780);
      v7 = *(sub_385C(&qword_399F0, &qword_2B790) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(sub_385C(&qword_399F0, &qword_2B790) - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_214EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_385C(&qword_3A9C8, &qword_2C790);
      v7 = *(type metadata accessor for PatternStoreValue(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(type metadata accessor for PatternStoreValue(0) - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

Swift::Int sub_2168C(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_2AD34(v2);
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
        type metadata accessor for PatternStoreValue(0);
        v6 = sub_2A934();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for PatternStoreValue(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_219BC(v8, v9, a1, v4);
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
    return sub_217B8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_217B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for PatternStoreValue(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v38 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v30 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v30 - v17;
  v32 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v37 = v19;
    v31 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v35 = v21;
    v36 = a3;
    v33 = v24;
    v34 = v23;
    while (1)
    {
      sub_B7E8(v24, v18);
      sub_B7E8(v21, v14);
      v25 = *(v8 + 20);
      v26 = *&v18[v25];
      v27 = *&v14[v25];
      sub_B904(v14);
      result = sub_B904(v18);
      if (v27 >= v26)
      {
LABEL_4:
        a3 = v36 + 1;
        v21 = v35 + v31;
        v23 = v34 - 1;
        v24 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      v28 = v38;
      sub_B720(v24, v38);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_B720(v28, v21);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_219BC(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v112 = a1;
  v7 = type metadata accessor for PatternStoreValue(0);
  v119 = *(v7 - 8);
  v8 = *(v119 + 64);
  v9 = __chkstk_darwin(v7);
  v115 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v124 = &v108 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v108 - v14;
  result = __chkstk_darwin(v13);
  v18 = &v108 - v17;
  v121 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = &_swiftEmptyArrayStorage;
LABEL_99:
    v4 = *v112;
    if (!*v112)
    {
      goto LABEL_137;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v15 = v123;
    if (result)
    {
LABEL_101:
      v126 = v21;
      v104 = *(v21 + 2);
      if (v104 >= 2)
      {
        while (*v121)
        {
          v105 = *&v21[16 * v104];
          v106 = *&v21[16 * v104 + 24];
          sub_2223C(*v121 + *(v119 + 72) * v105, *v121 + *(v119 + 72) * *&v21[16 * v104 + 16], *v121 + *(v119 + 72) * v106, v4);
          if (v15)
          {
          }

          if (v106 < v105)
          {
            goto LABEL_124;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_169D0(v21);
          }

          if (v104 - 2 >= *(v21 + 2))
          {
            goto LABEL_125;
          }

          v107 = &v21[16 * v104];
          *v107 = v105;
          *(v107 + 1) = v106;
          v126 = v21;
          result = sub_16944(v104 - 1);
          v21 = v126;
          v104 = *(v126 + 2);
          if (v104 <= 1)
          {
          }
        }

        goto LABEL_135;
      }
    }

LABEL_131:
    result = sub_169D0(v21);
    v21 = result;
    goto LABEL_101;
  }

  v125 = result;
  v110 = a4;
  v20 = 0;
  v21 = &_swiftEmptyArrayStorage;
  v116 = v15;
  while (1)
  {
    v22 = v20;
    if (v20 + 1 >= v19)
    {
      v19 = v20 + 1;
    }

    else
    {
      v23 = *v121;
      v24 = *(v119 + 72);
      v4 = *v121 + v24 * (v20 + 1);
      sub_B7E8(v4, v18);
      sub_B7E8(v23 + v24 * v20, v15);
      v25 = *(v125 + 20);
      v26 = *&v18[v25];
      v117 = *&v15[v25];
      v118 = v26;
      sub_B904(v15);
      result = sub_B904(v18);
      v111 = v20;
      v27 = v20 + 2;
      v120 = v24;
      v28 = v23 + v24 * (v20 + 2);
      while (v19 != v27)
      {
        LODWORD(v122) = v117 < v118;
        sub_B7E8(v28, v18);
        v29 = v18;
        v30 = v116;
        sub_B7E8(v4, v116);
        v31 = *(v125 + 20);
        v32 = *(v29 + v31);
        v33 = v19;
        v34 = v21;
        v35 = *(v30 + v31);
        v36 = v30;
        v18 = v29;
        sub_B904(v36);
        result = sub_B904(v29);
        v37 = v35 < v32;
        v21 = v34;
        v19 = v33;
        v38 = !v37;
        ++v27;
        v28 += v120;
        v4 += v120;
        if (((v122 ^ v38) & 1) == 0)
        {
          v19 = v27 - 1;
          break;
        }
      }

      v15 = v116;
      v22 = v111;
      if (v117 < v118)
      {
        if (v19 < v111)
        {
          goto LABEL_128;
        }

        if (v111 < v19)
        {
          v109 = v21;
          v39 = v120 * (v19 - 1);
          v40 = v19 * v120;
          v41 = v19;
          v42 = v111 * v120;
          do
          {
            if (v22 != --v41)
            {
              v122 = v41;
              v4 = *v121;
              if (!*v121)
              {
                goto LABEL_134;
              }

              sub_B720(v4 + v42, v115);
              if (v42 < v39 || v4 + v42 >= v4 + v40)
              {
                swift_arrayInitWithTakeFrontToBack();
                v41 = v122;
              }

              else
              {
                v41 = v122;
                if (v42 != v39)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = sub_B720(v115, v4 + v39);
            }

            ++v22;
            v39 -= v120;
            v40 -= v120;
            v42 += v120;
          }

          while (v22 < v41);
          v21 = v109;
          v22 = v111;
        }
      }
    }

    v43 = v121[1];
    if (v19 >= v43)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v19, v22))
    {
      goto LABEL_127;
    }

    if (v19 - v22 >= v110)
    {
LABEL_35:
      v20 = v19;
      if (v19 < v22)
      {
        goto LABEL_126;
      }

      goto LABEL_36;
    }

    if (__OFADD__(v22, v110))
    {
      goto LABEL_129;
    }

    if (v22 + v110 >= v43)
    {
      v44 = v121[1];
    }

    else
    {
      v44 = v22 + v110;
    }

    if (v44 < v22)
    {
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    if (v19 == v44)
    {
      goto LABEL_35;
    }

    v109 = v21;
    v91 = v19;
    v92 = *v121;
    v93 = *(v119 + 72);
    v94 = *v121 + v93 * (v91 - 1);
    v95 = -v93;
    v111 = v22;
    v96 = v22 - v91;
    v122 = v91;
    v113 = v93;
    v114 = v44;
    v4 = v92 + v91 * v93;
    v97 = v125;
LABEL_89:
    v117 = v4;
    v118 = v96;
    v98 = v96;
    v120 = v94;
LABEL_90:
    sub_B7E8(v4, v18);
    sub_B7E8(v94, v15);
    v99 = *(v97 + 20);
    v100 = *&v18[v99];
    v101 = *&v15[v99];
    sub_B904(v15);
    result = sub_B904(v18);
    if (v101 < v100)
    {
      break;
    }

    v97 = v125;
LABEL_88:
    v20 = v114;
    v94 = v120 + v113;
    v96 = v118 - 1;
    v4 = v117 + v113;
    if (++v122 != v114)
    {
      goto LABEL_89;
    }

    v21 = v109;
    v22 = v111;
    if (v114 < v111)
    {
      goto LABEL_126;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1F0C8(0, *(v21 + 2) + 1, 1, v21, &qword_3A1A8, &unk_2BC80);
      v21 = result;
    }

    v46 = *(v21 + 2);
    v45 = *(v21 + 3);
    v4 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = sub_1F0C8((v45 > 1), v46 + 1, 1, v21, &qword_3A1A8, &unk_2BC80);
      v21 = result;
    }

    *(v21 + 2) = v4;
    v47 = &v21[16 * v46];
    *(v47 + 4) = v22;
    *(v47 + 5) = v20;
    v48 = *v112;
    if (!*v112)
    {
      goto LABEL_136;
    }

    if (v46)
    {
      while (2)
      {
        v49 = v4 - 1;
        if (v4 >= 4)
        {
          v54 = &v21[16 * v4 + 32];
          v55 = *(v54 - 64);
          v56 = *(v54 - 56);
          v60 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          if (v60)
          {
            goto LABEL_113;
          }

          v59 = *(v54 - 48);
          v58 = *(v54 - 40);
          v60 = __OFSUB__(v58, v59);
          v52 = v58 - v59;
          v53 = v60;
          if (v60)
          {
            goto LABEL_114;
          }

          v61 = &v21[16 * v4];
          v63 = *v61;
          v62 = *(v61 + 1);
          v60 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v60)
          {
            goto LABEL_116;
          }

          v60 = __OFADD__(v52, v64);
          v65 = v52 + v64;
          if (v60)
          {
            goto LABEL_119;
          }

          if (v65 >= v57)
          {
            v83 = &v21[16 * v49 + 32];
            v85 = *v83;
            v84 = *(v83 + 1);
            v60 = __OFSUB__(v84, v85);
            v86 = v84 - v85;
            if (v60)
            {
              goto LABEL_123;
            }

            if (v52 < v86)
            {
              v49 = v4 - 2;
            }
          }

          else
          {
LABEL_55:
            if (v53)
            {
              goto LABEL_115;
            }

            v66 = &v21[16 * v4];
            v68 = *v66;
            v67 = *(v66 + 1);
            v69 = __OFSUB__(v67, v68);
            v70 = v67 - v68;
            v71 = v69;
            if (v69)
            {
              goto LABEL_118;
            }

            v72 = &v21[16 * v49 + 32];
            v74 = *v72;
            v73 = *(v72 + 1);
            v60 = __OFSUB__(v73, v74);
            v75 = v73 - v74;
            if (v60)
            {
              goto LABEL_121;
            }

            if (__OFADD__(v70, v75))
            {
              goto LABEL_122;
            }

            if (v70 + v75 < v52)
            {
              goto LABEL_69;
            }

            if (v52 < v75)
            {
              v49 = v4 - 2;
            }
          }
        }

        else
        {
          if (v4 == 3)
          {
            v50 = *(v21 + 4);
            v51 = *(v21 + 5);
            v60 = __OFSUB__(v51, v50);
            v52 = v51 - v50;
            v53 = v60;
            goto LABEL_55;
          }

          v76 = &v21[16 * v4];
          v78 = *v76;
          v77 = *(v76 + 1);
          v60 = __OFSUB__(v77, v78);
          v70 = v77 - v78;
          v71 = v60;
LABEL_69:
          if (v71)
          {
            goto LABEL_117;
          }

          v79 = &v21[16 * v49];
          v81 = *(v79 + 4);
          v80 = *(v79 + 5);
          v60 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v60)
          {
            goto LABEL_120;
          }

          if (v82 < v70)
          {
            break;
          }
        }

        v87 = v49 - 1;
        if (v49 - 1 >= v4)
        {
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
          goto LABEL_130;
        }

        if (!*v121)
        {
          goto LABEL_133;
        }

        v88 = *&v21[16 * v87 + 32];
        v4 = *&v21[16 * v49 + 40];
        v89 = v123;
        sub_2223C(*v121 + *(v119 + 72) * v88, *v121 + *(v119 + 72) * *&v21[16 * v49 + 32], *v121 + *(v119 + 72) * v4, v48);
        v123 = v89;
        if (v89)
        {
        }

        if (v4 < v88)
        {
          goto LABEL_111;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_169D0(v21);
        }

        if (v87 >= *(v21 + 2))
        {
          goto LABEL_112;
        }

        v90 = &v21[16 * v87];
        *(v90 + 4) = v88;
        *(v90 + 5) = v4;
        v126 = v21;
        result = sub_16944(v49);
        v21 = v126;
        v4 = *(v126 + 2);
        if (v4 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v19 = v121[1];
    if (v20 >= v19)
    {
      goto LABEL_99;
    }
  }

  if (v92)
  {
    v102 = v124;
    sub_B720(v4, v124);
    v97 = v125;
    swift_arrayInitWithTakeFrontToBack();
    sub_B720(v102, v94);
    v94 += v95;
    v4 += v95;
    if (__CFADD__(v98++, 1))
    {
      goto LABEL_88;
    }

    goto LABEL_90;
  }

  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
  return result;
}

uint64_t sub_2223C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for PatternStoreValue(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v57 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v56 = &v49 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v16 = a2;
  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v17 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v15 != -1)
  {
    v18 = (a2 - a1) / v15;
    v60 = a1;
    v19 = a4;
    v59 = a4;
    if (v18 < v17 / v15)
    {
      v20 = v18 * v15;
      if (a4 < a1 || a1 + v20 <= a4)
      {
        v21 = v16;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == a1)
        {
          goto LABEL_17;
        }

        v21 = v16;
        swift_arrayInitWithTakeBackToFront();
      }

      v16 = v21;
      v19 = a4;
LABEL_17:
      v53 = v19 + v20;
      v58 = v19 + v20;
      if (v20 >= 1 && v16 < a3)
      {
        v52 = a3;
        do
        {
          v26 = v15;
          v27 = v56;
          v28 = v16;
          sub_B7E8(v16, v56);
          v29 = v57;
          sub_B7E8(v19, v57);
          v30 = v8;
          v31 = *(v8 + 20);
          v32 = *(v27 + v31);
          v33 = *(v29 + v31);
          sub_B904(v29);
          sub_B904(v27);
          if (v33 >= v32)
          {
            v55 = v28;
            v15 = v26;
            if (a1 < v19 || a1 >= v19 + v26)
            {
              v8 = v30;
              swift_arrayInitWithTakeFrontToBack();
              v34 = v52;
            }

            else
            {
              v34 = v52;
              v8 = v30;
              if (a1 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v59 = v19 + v26;
            v19 += v26;
            v16 = v55;
          }

          else
          {
            v54 = v19;
            v15 = v26;
            if (a1 < v28 || a1 >= v28 + v26)
            {
              v8 = v30;
              swift_arrayInitWithTakeFrontToBack();
              v16 = v28 + v26;
              v34 = v52;
            }

            else
            {
              v34 = v52;
              v8 = v30;
              if (a1 != v28)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v16 = v28 + v26;
            }

            v19 = v54;
          }

          a1 += v15;
          v60 = a1;
        }

        while (v19 < v53 && v16 < v34);
      }

LABEL_60:
      sub_A3DC(&v60, &v59, &v58);
      return 1;
    }

    v22 = v8;
    v23 = v17 / v15 * v15;
    if (a4 < v16 || v16 + v23 <= a4)
    {
      v24 = v16;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == v16)
      {
LABEL_41:
        v35 = v19 + v23;
        if (v23 >= 1)
        {
          v36 = -v15;
          v37 = v19 + v23;
          v54 = v19;
          v50 = v36;
          v51 = a1;
          do
          {
            v49 = v35;
            v38 = v16 + v36;
            v55 = v16 + v36;
            v53 = v16;
            while (1)
            {
              if (v16 <= a1)
              {
                v60 = v16;
                v58 = v49;
                goto LABEL_60;
              }

              v39 = a3;
              v52 = v35;
              a3 += v36;
              v40 = v37 + v36;
              v41 = v56;
              sub_B7E8(v37 + v36, v56);
              v42 = v57;
              sub_B7E8(v38, v57);
              v43 = v22;
              v44 = *(v22 + 20);
              v45 = *(v41 + v44);
              v46 = *(v42 + v44);
              sub_B904(v42);
              sub_B904(v41);
              if (v46 < v45)
              {
                break;
              }

              v35 = v40;
              if (v39 < v37 || a3 >= v37)
              {
                v22 = v43;
                swift_arrayInitWithTakeFrontToBack();
                v36 = v50;
                a1 = v51;
              }

              else
              {
                v22 = v43;
                v36 = v50;
                a1 = v51;
                if (v39 != v37)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v37 = v40;
              v38 = v55;
              v16 = v53;
              if (v40 <= v54)
              {
                goto LABEL_58;
              }
            }

            if (v39 < v53 || a3 >= v53)
            {
              v48 = v55;
              v22 = v43;
              swift_arrayInitWithTakeFrontToBack();
              v16 = v48;
              a1 = v51;
              v35 = v52;
              v36 = v50;
            }

            else
            {
              v22 = v43;
              v16 = v55;
              a1 = v51;
              v35 = v52;
              v36 = v50;
              if (v39 != v53)
              {
                v47 = v55;
                swift_arrayInitWithTakeBackToFront();
                v16 = v47;
              }
            }
          }

          while (v37 > v54);
        }

LABEL_58:
        v60 = v16;
        v58 = v35;
        goto LABEL_60;
      }

      v24 = v16;
      swift_arrayInitWithTakeBackToFront();
    }

    v16 = v24;
    v19 = a4;
    goto LABEL_41;
  }

LABEL_63:
  __break(1u);
  return result;
}

unint64_t sub_22744(uint64_t a1)
{
  v2 = sub_385C(&qword_399F0, &qword_2B790);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_385C(&qword_399E0, &unk_2B780);
    v8 = sub_2AC74();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_BAC4(v10, v6, &qword_399F0, &qword_2B790);
      v12 = *v6;
      result = sub_7A88(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for PatternStoreValue(0);
      result = sub_B720(v6 + v9, v16 + *(*(v17 - 8) + 72) * v15);
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

uint64_t sub_22938(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_22994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  sub_2ADB4(v5);
  if (v5)
  {
    v6 = (a2 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;

      sub_2A8B4();

      v6 += 2;
      --v5;
    }

    while (v5);
  }

  v9 = *(a3 + 16);
  sub_2ADB4(v9);
  if (v9)
  {
    v10 = (a3 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;

      sub_2A8B4();

      v10 += 2;
      --v9;
    }

    while (v9);
  }
}

Swift::Int sub_22A54()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2ADA4();
  sub_22994(v4, v1, v2);
  return sub_2ADC4();
}

Swift::Int sub_22AA8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2ADA4();
  sub_22994(v4, v1, v2);
  return sub_2ADC4();
}

uint64_t sub_22AF0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_6E98(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_6E98(v2, v3);
}

uint64_t SiriPrivateLearningPatternExtractionPlugin.__allocating_init()()
{
  v0 = swift_allocObject();
  SiriPrivateLearningPatternExtractionPlugin.init()();
  return v0;
}

void *SiriPrivateLearningPatternExtractionPlugin.init()()
{
  v1 = v0;
  *&v34 = sub_2A3D4();
  *(&v34 + 1) = &protocol witness table for EnvironmentFeatureFlags;
  sub_22EA0(&v33);
  sub_2A3C4();
  sub_192AC(&v33, (v0 + 12));
  v2 = type metadata accessor for PatternLogger();
  v3 = swift_allocObject();
  v1[20] = v2;
  v1[21] = &off_35888;
  v1[17] = v3;
  v4 = sub_2A404();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v1[2] = sub_2A3F4();
  v1[5] = v4;
  v1[6] = &protocol witness table for RECTIFITrialStatusResolver;
  sub_19248((v1 + 2), v36);
  sub_2A2A4();
  sub_2A294();
  sub_2A264();

  v31 = v34;
  v7 = v34;
  v8 = sub_17088(&v33, v34);
  *&v35[3] = v31;
  v9 = sub_22EA0(v35);
  (*(*(v7 - 8) + 16))(v9, v8, v7);
  sub_BA2C(&v33);
  sub_2A294();
  sub_2A284();

  sub_2A294();
  sub_2A274();

  v10 = sub_2A334();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_2A324();
  v14 = sub_2A314();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_2A304();
  v18 = sub_2A374();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_2A364();
  v22 = type metadata accessor for ItemSequenceFetcher();
  v23 = swift_allocObject();
  *(v23 + 200) = xmmword_2C7A0;
  *(v23 + 216) = 0x404E000000000000;
  sub_192AC(v35, v23 + 16);
  sub_192AC(&v33, v23 + 56);
  *(v23 + 96) = v13;
  *(v23 + 104) = v17;
  *(v23 + 112) = v21;
  sub_192AC(&v32, v23 + 120);
  sub_192AC(v36, v23 + 160);
  v1[10] = v22;
  v1[11] = &off_355B0;
  v1[7] = v23;
  if (qword_39710 != -1)
  {
    swift_once();
  }

  v25 = qword_3AB08;
  v24 = unk_3AB10;
  sub_19248((v1 + 2), &v33);
  sub_17088(&v33, v34);
  v26 = sub_2A464();
  v28 = v27;
  sub_BA2C(&v33);
  *&v33 = v25;
  *(&v33 + 1) = v24;

  v37._countAndFlagsBits = v26;
  v37._object = v28;
  sub_2A8C4(v37);

  v29 = *(&v33 + 1);
  v1[22] = v33;
  v1[23] = v29;
  return v1;
}

uint64_t *sub_22EA0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t SiriPrivateLearningPatternExtractionPlugin.run(context:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_2A1A4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = sub_385C(&qword_3A9D8, &qword_2C7C0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v19 - v12;
  v14 = sub_2A994();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v8 + 16))(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v15 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = v3;
  (*(v8 + 32))(&v16[v15], &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v17 = &v16[(v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v17 = a2;
  *(v17 + 1) = a3;

  sub_23808(0, 0, v13, &unk_2C7D0, v16);
}

uint64_t sub_2310C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v8 = sub_2A184();
  v7[12] = v8;
  v9 = *(v8 - 8);
  v7[13] = v9;
  v10 = *(v9 + 64) + 15;
  v7[14] = swift_task_alloc();

  return _swift_task_switch(sub_231D0, 0, 0);
}

uint64_t sub_231D0()
{
  v1 = v0[8];
  v2 = v1[16];
  sub_17088(v1 + 12, v1[15]);
  v3 = sub_2A164();
  v0[5] = v3;
  v0[6] = sub_29E38(&qword_3AAF8, &type metadata accessor for SiriPrivateLearningFeatureFlag);
  v4 = sub_22EA0(v0 + 2);
  (*(*(v3 - 8) + 104))(v4, enum case for SiriPrivateLearningFeatureFlag.rectifiPatternExtraction(_:), v3);
  v5 = sub_2A394();
  sub_BA2C(v0 + 2);
  if (v5 & 1) != 0 || (v6 = v0[8], v7 = v6[6], sub_17088(v6 + 2, v6[5]), (sub_2A484()))
  {
    v8 = swift_task_alloc();
    v0[15] = v8;
    *v8 = v0;
    v8[1] = sub_233E4;
    v10 = v0[8];
    v9 = v0[9];

    return sub_2445C(v9);
  }

  else
  {
    v12 = v0[14];
    v13 = v0[11];
    v14 = v0[10];
    (*(v0[13] + 104))(v12, enum case for PrivateLearningPluginResult.success(_:), v0[12]);
    v14(v12);
    (*(v0[13] + 8))(v0[14], v0[12]);

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_233E4()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_235B4;
  }

  else
  {
    v3 = sub_234F8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_234F8()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[10];
  (*(v0[13] + 104))(v1, enum case for PrivateLearningPluginResult.success(_:), v0[12]);
  v3(v1);
  (*(v0[13] + 8))(v0[14], v0[12]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_235B4()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];
  v0[7] = v0[16];
  swift_errorRetain();
  sub_385C(&qword_3A120, &qword_2C8B0);
  sub_2A874();
  sub_2A174();
  (*(v2 + 104))(v1, enum case for PrivateLearningPluginResult.failure(_:), v4);
  v5(v1);

  (*(v0[13] + 8))(v0[14], v0[12]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_236CC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2A1A4() - 8);
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
  v13[1] = sub_197EC;

  return sub_2310C(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_23808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_385C(&qword_3A9D8, &qword_2C7C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_29BB8(a3, v27 - v11);
  v13 = sub_2A994();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_29C28(v12);
  }

  else
  {
    sub_2A984();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2A964();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2A894() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_29C28(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_29C28(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void *sub_23AC8(uint64_t a1)
{
  v3 = type metadata accessor for ItemSequenceData();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = 0;
  v77 = 0xE000000000000000;
  v78 = _swiftEmptyArrayStorage;
  v8 = v1[6];
  sub_17088(v1 + 2, v1[5]);
  sub_2A444();
  v10 = v9;
  v11 = v1[6];
  sub_17088(v1 + 2, v1[5]);
  sub_2A454();
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = v12;
    v15 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    swift_beginAccess();
    v16 = 0;
    v67 = *(v4 + 72);
    *&v17 = 136315138;
    v60 = v17;
    v66 = _swiftEmptyArrayStorage;
    v65 = _swiftEmptyArrayStorage;
    v61 = _swiftEmptyArrayStorage;
    v18 = _swiftEmptyArrayStorage;
    v64 = v7;
    v63 = v13;
    v62 = v15;
    while (1)
    {
      v68 = v16;
      sub_298D0(v15 + v67 * v16, v7, type metadata accessor for ItemSequenceData);
      v20 = *(v7 + 1);
      v21 = *(v20 + 16);
      if (v21)
      {
        break;
      }

LABEL_3:
      sub_29938(v7, type metadata accessor for ItemSequenceData);
      v19 = v68;
LABEL_4:
      v16 = v19 + 1;
      if (v16 == v13)
      {

        return v65;
      }
    }

    v22 = (v20 + 32);
    v71 = v20 + 32;
    while (v10 >= *v22 || *v22 >= 1.0)
    {
      ++v22;
      if (!--v21)
      {
        goto LABEL_3;
      }
    }

    v76 = 0x65636E6575716553;
    v77 = 0xEA00000000000A3ALL;

    v74 = _swiftEmptyArrayStorage;
    v75 = _swiftEmptyArrayStorage;
    v25 = *v7;
    if (v25 >> 62)
    {
      result = sub_2AC34();
      v26 = result;
      if (result)
      {
LABEL_15:
        v27 = 0;
        v69 = v25 & 0xFFFFFFFFFFFFFF8;
        v70 = v25 & 0xC000000000000001;
        v28 = _swiftEmptyArrayStorage;
        while (1)
        {
          if (v70)
          {
            result = sub_2AB64();
            v29 = result;
          }

          else
          {
            if (v27 >= *(v69 + 16))
            {
              __break(1u);
LABEL_59:
              __break(1u);
              return result;
            }

            v29 = *(v25 + 8 * v27 + 32);
          }

          v30 = *(v20 + 16);
          if (v27 == v30)
          {
            break;
          }

          if (v27 >= v30)
          {
            goto LABEL_59;
          }

          v31 = *(v71 + 8 * v27);
          if (v31 != -1.0 && v31 < v14)
          {
            break;
          }

          v33 = sub_1BF14();
          v35 = v34;

          v72 = v33;
          v73 = v35;

          v79._countAndFlagsBits = 10;
          v79._object = 0xE100000000000000;
          sub_2A8C4(v79);

          v36 = v72;
          v37 = v73;
          swift_beginAccess();
          v80._countAndFlagsBits = v36;
          v80._object = v37;
          sub_2A8C4(v80);
          swift_endAccess();

          v39 = v29[2];
          v38 = v29[3];
          v40 = v29[4];
          v41 = *(v29 + 20);
          type metadata accessor for PatternItem();
          v42 = swift_allocObject();
          *(v42 + 16) = v39;
          *(v42 + 24) = v38;
          *(v42 + 32) = v40;
          *(v42 + 40) = v41;

          sub_2A904();
          if (*(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v75 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            v43 = *(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8));
            sub_2A924();
          }

          sub_2A944();
          v28 = v75;

          sub_2A904();
          if (*(&dword_10 + (v74 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v74 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_2A924();
          }

          ++v27;
          sub_2A944();

          v18 = v74;
          if (v26 == v27)
          {
            goto LABEL_33;
          }
        }

LABEL_33:
        if (v28 >> 62)
        {
          goto LABEL_55;
        }

        goto LABEL_34;
      }
    }

    else
    {
      v26 = *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8));
      if (v26)
      {
        goto LABEL_15;
      }
    }

    v28 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage >> 62)
    {
LABEL_55:
      v44 = sub_2AC34();
      goto LABEL_35;
    }

LABEL_34:
    v44 = *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8));
LABEL_35:
    v7 = v64;
    v19 = v68;
    v45 = v66;
    if (v44)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_1F090(0, v45[2] + 1, 1, v45);
      }

      v47 = v45[2];
      v46 = v45[3];
      if (v47 >= v46 >> 1)
      {
        v45 = sub_1F090((v46 > 1), v47 + 1, 1, v45);
      }

      v45[2] = v47 + 1;
      v45[v47 + 4] = v28;
      v48 = v65;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_1F6F4(0, v48[2] + 1, 1, v48);
      }

      v50 = v48[2];
      v49 = v48[3];
      if (v50 >= v49 >> 1)
      {
        v48 = sub_1F6F4((v49 > 1), v50 + 1, 1, v48);
      }

      v48[2] = v50 + 1;
      v48[v50 + 4] = v18;
      v51 = *(v7 + 2);
      sub_2A904();
      if (v78[2] >= v78[3] >> 1)
      {
        sub_2A924();
      }

      sub_2A944();
      v61 = v78;
    }

    else
    {

      v48 = v65;
    }

    if (qword_39720 != -1)
    {
      swift_once();
    }

    v65 = v48;
    v66 = v45;
    v52 = sub_2A804();
    sub_B884(v52, qword_3AB28);
    v53 = sub_2A7E4();
    v54 = sub_2A9E4();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v72 = v56;
      *v55 = v60;
      v57 = v76;
      v58 = v77;

      v59 = sub_1FA70(v57, v58, &v72);

      *(v55 + 4) = v59;
      _os_log_impl(&dword_0, v53, v54, "%s", v55, 0xCu);
      sub_BA2C(v56);
    }

    sub_29938(v7, type metadata accessor for ItemSequenceData);
    v13 = v63;
    v15 = v62;
    v18 = _swiftEmptyArrayStorage;
    goto LABEL_4;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_24258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = *(v4 + 16);
    if (v6)
    {
      v7 = *(a2 + 16);
      v8 = (v4 + 32);
      do
      {
        v12 = *v8++;
        v11 = v12;
        if (v12 < v7)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_20018(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v10 = _swiftEmptyArrayStorage[2];
          v9 = _swiftEmptyArrayStorage[3];
          if (v10 >= v9 >> 1)
          {
            sub_20018((v9 > 1), v10 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v10 + 1;
          _swiftEmptyArrayStorage[v10 + 4] = v11;
        }

        --v6;
      }

      while (v6);
    }

    v13 = _swiftEmptyArrayStorage[2];
    if (v13)
    {
      v14 = sub_28EB0(v13);
      if ((v14 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v14 < _swiftEmptyArrayStorage[2])
      {
        v15 = _swiftEmptyArrayStorage[v14 + 4];

        if ((v15 & 0x8000000000000000) == 0)
        {
          if (v15 < *(a2 + 16))
          {
            *(a2 + 8 * v15 + 32);
            sub_2A904();
            if (*(*a3 + 16) < *(*a3 + 24) >> 1)
            {
              return sub_2A944();
            }

            goto LABEL_26;
          }

LABEL_25:
          __break(1u);
LABEL_26:
          sub_2A924();
          return sub_2A944();
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      __break(1u);
      goto LABEL_24;
    }
  }

  sub_2A904();
  if (*(*a3 + 16) >= *(*a3 + 24) >> 1)
  {
    v17 = *(*a3 + 16);
    sub_2A924();
  }

  return sub_2A944();
}

uint64_t sub_2445C(uint64_t a1)
{
  v2[35] = a1;
  v2[36] = v1;
  v3 = sub_2A0E4();
  v2[37] = v3;
  v4 = *(v3 - 8);
  v2[38] = v4;
  v5 = *(v4 + 64) + 15;
  v2[39] = swift_task_alloc();
  v6 = type metadata accessor for PatternStoreValue(0);
  v2[40] = v6;
  v7 = *(v6 - 8);
  v2[41] = v7;
  v8 = *(v7 + 64) + 15;
  v2[42] = swift_task_alloc();
  v9 = *(*(sub_385C(&qword_3AAD8, &qword_2C868) - 8) + 64) + 15;
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v10 = sub_2A754();
  v2[45] = v10;
  v11 = *(v10 - 8);
  v2[46] = v11;
  v12 = *(v11 + 64) + 15;
  v2[47] = swift_task_alloc();
  v13 = sub_2A1A4();
  v2[48] = v13;
  v14 = *(v13 - 8);
  v2[49] = v14;
  v15 = *(v14 + 64) + 15;
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();

  return _swift_task_switch(sub_24680, 0, 0);
}

uint64_t sub_24680()
{
  v53 = v0;
  v1 = *(v0 + 408);
  v2 = *(v0 + 384);
  v3 = *(v0 + 392);
  v4 = *(v0 + 280);
  (*(v3 + 104))(v1, enum case for PrivateLearningPluginRunContext.maintenance(_:), v2);
  LOBYTE(v4) = sub_2A194();
  v5 = *(v3 + 8);
  v5(v1, v2);
  if (v4)
  {
    if (qword_39730 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 368);
    v6 = *(v0 + 376);
    v8 = *(v0 + 360);
    v9 = sub_2A784();
    sub_B884(v9, qword_3AB58);
    sub_2A774();
    sub_2A734();
    *(v0 + 416) = sub_19AD4("runPatternExtractionPlugin", 26, 2, v6);
    (*(v7 + 8))(v6, v8);
    if (qword_39720 != -1)
    {
      swift_once();
    }

    v10 = sub_2A804();
    *(v0 + 424) = sub_B884(v10, qword_3AB28);
    v11 = sub_2A7E4();
    v12 = sub_2A9D4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "SiriPrivateLearningPatternExtractionPlugin.run() started", v13, 2u);
    }

    v14 = *(v0 + 288);

    v15 = *(v14 + 176);
    v16 = *(v14 + 184);
    v17 = type metadata accessor for RectifiCoreDataStore(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();

    v20 = sub_39D8(v15, v16);
    if (v20)
    {
      v21 = *(v0 + 288);
      *(v0 + 152) = v17;
      *(v0 + 160) = &off_353D0;
      *(v0 + 128) = v20;
      sub_192AC((v0 + 128), v0 + 88);
      v22 = *sub_17088((v21 + 56), *(v21 + 80));
      v23 = swift_task_alloc();
      *(v0 + 432) = v23;
      *v23 = v0;
      v23[1] = sub_24C14;

      return sub_135F0();
    }

    v40 = sub_2A7E4();
    v41 = sub_2A9E4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_0, v40, v41, "RECTIFI on-device store error", v42, 2u);
    }

    sub_26080();
    sub_25DF4();
  }

  else
  {
    if (qword_39720 != -1)
    {
      swift_once();
    }

    v26 = *(v0 + 392);
    v25 = *(v0 + 400);
    v27 = *(v0 + 384);
    v28 = *(v0 + 280);
    v29 = sub_2A804();
    sub_B884(v29, qword_3AB28);
    (*(v26 + 16))(v25, v28, v27);
    v30 = sub_2A7E4();
    v31 = sub_2A9D4();
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 400);
    v34 = *(v0 + 384);
    if (v32)
    {
      v35 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v52 = v51;
      *v35 = 136315138;
      sub_29E38(&qword_3AAE0, &type metadata accessor for PrivateLearningPluginRunContext);
      v36 = sub_2AD44();
      v38 = v37;
      v5(v33, v34);
      v39 = sub_1FA70(v36, v38, &v52);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_0, v30, v31, "SiriPrivateLearningPatternExtractionPlugin.run() is skipped because context is %s", v35, 0xCu);
      sub_BA2C(v51);
    }

    else
    {

      v5(v33, v34);
    }
  }

  v44 = *(v0 + 400);
  v43 = *(v0 + 408);
  v45 = *(v0 + 376);
  v47 = *(v0 + 344);
  v46 = *(v0 + 352);
  v48 = *(v0 + 336);
  v49 = *(v0 + 312);

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_24C14(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 432);
  v6 = *v2;
  *(*v2 + 440) = v1;

  if (v1)
  {
    v7 = sub_25D0C;
  }

  else
  {
    *(v4 + 448) = a1;
    v7 = sub_24D3C;
  }

  return _swift_task_switch(v7, 0, 0);
}

void sub_24D3C()
{
  v162 = v0;
  v1 = v0[36];
  v2 = sub_23AC8(v0[56]);
  v4 = v3;
  v6 = v5;

  v7 = v1[6];
  v149 = v1;
  sub_17088(v1 + 2, v1[5]);

  v8 = sub_2A474();
  v9 = v0[55];
  v151 = v2;
  if ((v8 & 1) == 0)
  {
    v150 = v4;
    goto LABEL_34;
  }

  v10 = *sub_17088(v0 + 11, v0[14]);
  v0[34] = sub_22744(_swiftEmptyArrayStorage);
  v11 = sub_2A214();
  v12 = swift_task_alloc();
  *(v12 + 16) = v10;
  *(v12 + 24) = v0 + 34;
  *(v12 + 32) = 1;
  sub_2AA24();
  if (v9)
  {

    v13 = v0[34];

LABEL_81:

    sub_BA2C(v0 + 11);
    v131 = v0[51];
    v132 = v0[52];
    v133 = v0[50];
    v134 = v0[47];
    v136 = v0[43];
    v135 = v0[44];
    v137 = v0[42];
    v138 = v0[39];
    sub_26080();
    sub_25DF4();

    v118 = v0[1];
    goto LABEL_82;
  }

  v147 = v6;
  v154 = v0[41];
  v158 = v0[40];

  v14 = 0;
  v15 = v0[34];
  v16 = *(v15 + 64);
  v152 = v15 + 64;
  v156 = v15;
  v17 = -1;
  v18 = -1 << *(v156 + 32);
  if (-v18 < 64)
  {
    v17 = ~(-1 << -v18);
  }

  v19 = v17 & v16;
  v20 = ((63 - v18) >> 6);
  v21 = &qword_399E8;
  v22 = &qword_2C870;
  v150 = v4;
  while (1)
  {
    if (!v19)
    {
      if (v20 <= v14 + 1)
      {
        v24 = (v14 + 1);
      }

      else
      {
        v24 = v20;
      }

      v25 = &v24[-1].isa + 7;
      while (1)
      {
        v23 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v23 >= v20)
        {
          v44 = v0[43];
          v45 = sub_385C(v21, v22);
          (*(*(v45 - 8) + 56))(v44, 1, 1, v45);
          v19 = 0;
          goto LABEL_18;
        }

        v19 = *(v152 + 8 * v23);
        ++v14;
        if (v19)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_91;
    }

    v23 = v14;
LABEL_17:
    v27 = v0[42];
    v26 = v0[43];
    v28 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v29 = v28 | (v23 << 6);
    v30 = *(*(v156 + 48) + 8 * v29);
    sub_298D0(*(v156 + 56) + *(v154 + 72) * v29, v27, type metadata accessor for PatternStoreValue);
    v31 = sub_385C(v21, v22);
    v32 = v22;
    v33 = v21;
    v34 = v31;
    v35 = *(v31 + 48);
    *v26 = v30;
    sub_B720(v27, v26 + v35);
    v36 = *(*(v34 - 8) + 56);
    v37 = v34;
    v21 = v33;
    v22 = v32;
    v36(v26, 0, 1, v37);

    v25 = v23;
LABEL_18:
    v38 = v0[44];
    sub_2980C(v0[43], v38);
    v39 = sub_385C(v21, v22);
    if ((*(*(v39 - 8) + 48))(v38, 1, v39) == 1)
    {
      break;
    }

    v40 = v0[44];
    v41 = *v40;
    v42 = v40 + *(v39 + 48);
    v43 = *(v42 + *(v158 + 20));
    sub_29938(v42, type metadata accessor for PatternStoreValue);
    if (v43 < 0)
    {
      goto LABEL_94;
    }

    if (v43)
    {
      v46 = v150;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = sub_1F090(0, v150[2] + 1, 1, v150);
      }

      v47 = v46[2];
      do
      {
        v48 = v46;
        v49 = v46[3];

        if (v47 >= v49 >> 1)
        {
          v46 = sub_1F090((v49 > 1), v47 + 1, 1, v48);
        }

        else
        {
          v46 = v48;
        }

        v46[2] = v47 + 1;
        v46[v47++ + 4] = v41;
        --v43;
      }

      while (v43);
      v150 = v46;

      v14 = v25;
      v21 = &qword_399E8;
      v22 = &qword_2C870;
    }

    else
    {

      v14 = v25;
    }
  }

  v50 = v0[53];

  v51 = sub_2A7E4();
  v52 = sub_2A9E4();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 134217984;
    *(v53 + 4) = v150[2];
    _os_log_impl(&dword_0, v51, v52, "Total sequences after fetching from infrequent on-device store: %ld", v53, 0xCu);
  }

  v9 = 0;
  v6 = v147;
LABEL_34:
  v54 = v0[53];
  v55 = sub_2A7E4();
  v56 = sub_2A9D4();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_0, v55, v56, "Calling RECTIFI Algorithm", v57, 2u);
  }

  v58 = v149[6];
  sub_17088(v149 + 2, v149[5]);

  sub_2A414();
  if ((*&v59 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_95;
  }

  if (v59 <= -9.22337204e18)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  if (v59 >= 9.22337204e18)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v60 = v59;
  type metadata accessor for ExtractPatternsRectifi();
  inited = swift_initStackObject();
  *(inited + 32) = xmmword_2C7B0;
  *(inited + 48) = 5;
  type metadata accessor for ClosedPatternUtil();
  v62 = swift_allocObject();
  *(inited + 16) = v150;
  *(inited + 24) = v60;
  *(inited + 56) = _swiftEmptyArrayStorage;
  *(inited + 64) = v62;
  v148 = inited;
  sub_1E14();
  v63 = v149[6];
  sub_17088(v149 + 2, v149[5]);
  sub_2A424();
  if ((*&v64 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  if (v64 <= -9.22337204e18)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  if (v64 >= 9.22337204e18)
  {
LABEL_100:
    __break(1u);
    return;
  }

  v65 = sub_1D24(v64, 0);
  v0[32] = v65;
  v66 = *(v65 + 16);
  if (v66)
  {
    v67 = v6;
    v68 = v0[38];
    v160 = _swiftEmptyArrayStorage;
    sub_2023C(0, v66, 0);
    v69 = _swiftEmptyArrayStorage;
    do
    {
      v70 = v0[39];
      sub_2A0D4();
      v160 = v69;
      v72 = v69[2];
      v71 = v69[3];
      if (v72 >= v71 >> 1)
      {
        sub_2023C(v71 > 1, v72 + 1, 1);
        v69 = v160;
      }

      v73 = v0[39];
      v74 = v0[37];
      v69[2] = v72 + 1;
      (*(v68 + 32))(v69 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v72, v73, v74);
      --v66;
    }

    while (v66);
    v159 = v69;
    v6 = v67;
  }

  else
  {
    v159 = _swiftEmptyArrayStorage;
  }

  v75 = v0[53];
  v76 = sub_2A7E4();
  v77 = sub_2A9D4();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    *v78 = 134217984;
    *(v78 + 4) = *(v65 + 16);
    _os_log_impl(&dword_0, v76, v77, "Fetched %ld patterns from RECTIFI", v78, 0xCu);
  }

  v160 = _swiftEmptyArrayStorage;

  sub_28FC4(v79, v6, &v160);
  v145 = v9;

  v146 = v160;
  swift_beginAccess();
  sub_291D0((v0 + 32), v151);
  swift_endAccess();

  v0[30] = 0;
  v0[31] = 0xE000000000000000;
  v80 = v0[32];
  v81 = v159;
  v157 = *(v80 + 16);
  if (v157)
  {
    v155 = v80 + 32;

    swift_beginAccess();
    v82 = 0;
    v153 = v80;
    while (1)
    {
      if (v82 >= *(v80 + 16))
      {
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      v83 = *(v155 + 40 * v82);
      v84 = *(v155 + 40 * v82 + 8);
      v160 = 0x636E657571657246;
      v161 = 0xEA00000000002079;
      v0[33] = v83;

      v164._countAndFlagsBits = sub_2AD44();
      sub_2A8C4(v164);

      v165._countAndFlagsBits = 10;
      v165._object = 0xE100000000000000;
      sub_2A8C4(v165);
      v85 = v161;
      v86 = v0[31];
      v0[30] = v160;
      v0[31] = v85;

      if (v84 >> 62)
      {
        v87 = sub_2AC34();
        if (!v87)
        {
          goto LABEL_64;
        }
      }

      else
      {
        v87 = *(&dword_10 + (v84 & 0xFFFFFFFFFFFFFF8));
        if (!v87)
        {
          goto LABEL_64;
        }
      }

      if (v87 < 1)
      {
        goto LABEL_93;
      }

      v88 = 0;
      do
      {
        if ((v84 & 0xC000000000000001) != 0)
        {
          v89 = sub_2AB64();
        }

        else
        {
          v89 = *(v84 + 8 * v88 + 32);
        }

        ++v88;
        v160 = (*(*v89 + 208))();
        v161 = v90;

        v166._countAndFlagsBits = 10;
        v166._object = 0xE100000000000000;
        sub_2A8C4(v166);

        v91 = v160;
        v92 = v161;
        swift_beginAccess();
        v167._countAndFlagsBits = v91;
        v167._object = v92;
        sub_2A8C4(v167);
        swift_endAccess();
      }

      while (v87 != v88);
LABEL_64:
      v93 = v0[53];

      v94 = sub_2A7E4();
      v95 = sub_2A9E4();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v160 = v97;
        *v96 = 136315138;
        v98 = v0[30];
        v99 = v0[31];

        v100 = sub_1FA70(v98, v99, &v160);

        *(v96 + 4) = v100;
        _os_log_impl(&dword_0, v94, v95, "%s", v96, 0xCu);
        sub_BA2C(v97);
      }

      v80 = v153;
      ++v82;
      v81 = v159;
      if (v82 == v157)
      {

        break;
      }
    }
  }

  sub_1DBD8(v101, v81, v146);

  v102 = v149[6];
  sub_17088(v149 + 2, v149[5]);
  if (sub_2A474())
  {
    v103 = *(v80 + 16);
    if (v103)
    {
      v160 = _swiftEmptyArrayStorage;

      sub_201FC(0, v103, 0);
      v104 = v160;
      v105 = *(v160 + 16);
      v106 = 40;
      do
      {
        v107 = *(v80 + v106);
        v160 = v104;
        v108 = v104[3];

        if (v105 >= v108 >> 1)
        {
          sub_201FC((v108 > 1), v105 + 1, 1);
          v104 = v160;
        }

        v104[2] = v105 + 1;
        v104[v105 + 4] = v107;
        v106 += 40;
        ++v105;
        --v103;
      }

      while (v103);

      v119 = *sub_17088(v0 + 11, v0[14]);
      sub_45B4(v104, v159);
      if (v145)
      {

        v120 = v0[31];

        swift_setDeallocating();
        v121 = v148[2];

        v122 = v148[7];

        v123 = v148[8];

        goto LABEL_81;
      }

      v139 = v0[53];

      v20 = sub_2A7E4();
      v140 = sub_2A9D4();
      if (os_log_type_enabled(v20, v140))
      {
        v141 = swift_slowAlloc();
        *v141 = 0;
        _os_log_impl(&dword_0, v20, v140, "Self patterns written to CoreData", v141, 2u);
      }

      goto LABEL_91;
    }

    v124 = v150[2];

    if (v124)
    {
      v125 = *sub_17088(v0 + 11, v0[14]);

      sub_3FA0(v126);
      if (v145)
      {

        v127 = v0[31];

        swift_setDeallocating();
        v128 = v148[2];

        v129 = v148[7];

        v130 = v148[8];

        goto LABEL_81;
      }

      v142 = v0[53];

      v20 = sub_2A7E4();
      v143 = sub_2A9D4();
      if (!os_log_type_enabled(v20, v143))
      {
LABEL_91:

        goto LABEL_75;
      }

      v144 = swift_slowAlloc();
      *v144 = 0;
      _os_log_impl(&dword_0, v20, v143, "Incomplete patterns written to CoreData", v144, 2u);
    }
  }

  else
  {
  }

LABEL_75:

  v109 = v0[52];
  v110 = v0[31];

  sub_BA2C(v0 + 11);
  sub_26080();
  sub_25DF4();

  v112 = v0[50];
  v111 = v0[51];
  v113 = v0[47];
  v115 = v0[43];
  v114 = v0[44];
  v116 = v0[42];
  v117 = v0[39];

  v118 = v0[1];
LABEL_82:

  v118();
}

uint64_t sub_25D0C()
{
  sub_BA2C(v0 + 11);
  v1 = v0[55];
  v3 = v0[51];
  v2 = v0[52];
  v4 = v0[50];
  v5 = v0[47];
  v7 = v0[43];
  v6 = v0[44];
  v8 = v0[42];
  v9 = v0[39];
  sub_26080();
  sub_25DF4();

  v10 = v0[1];

  return v10();
}

uint64_t sub_25DF4()
{
  v0 = sub_2A794();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2A754();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_39730 != -1)
  {
    swift_once();
  }

  v10 = sub_2A784();
  sub_B884(v10, qword_3AB58);
  v11 = sub_2A774();
  sub_2A7A4();
  v12 = sub_2AA04();
  if (sub_2AA44())
  {

    sub_2A7D4();

    if ((*(v1 + 88))(v4, v0) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_2A744();
    _os_signpost_emit_with_name_impl(&dword_0, v11, v12, v15, "runPatternExtractionPlugin", v13, v14, 2u);
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_26080()
{
  if (qword_39720 != -1)
  {
    swift_once();
  }

  v0 = sub_2A804();
  sub_B884(v0, qword_3AB28);
  oslog = sub_2A7E4();
  v1 = sub_2A9D4();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_0, oslog, v1, "SiriPrivateLearningPatternExtractionPlugin.run() ended", v2, 2u);
  }
}

uint64_t *SiriPrivateLearningPatternExtractionPlugin.deinit()
{
  sub_BA2C(v0 + 2);
  sub_BA2C(v0 + 7);
  sub_BA2C(v0 + 12);
  sub_BA2C(v0 + 17);
  v1 = v0[23];

  return v0;
}

uint64_t SiriPrivateLearningPatternExtractionPlugin.__deallocating_deinit()
{
  sub_BA2C(v0 + 2);
  sub_BA2C(v0 + 7);
  sub_BA2C(v0 + 12);
  sub_BA2C(v0 + 17);
  v1 = v0[23];

  return _swift_deallocClassInstance(v0, 192, 7);
}

uint64_t sub_26200()
{
  type metadata accessor for SiriPrivateLearningPatternExtractionPlugin();
  v0 = swift_allocObject();
  SiriPrivateLearningPatternExtractionPlugin.init()();
  return v0;
}

uint64_t sub_26238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_2A1A4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = sub_385C(&qword_3A9D8, &qword_2C7C0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v19 - v12;
  v14 = sub_2A994();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v8 + 16))(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v15 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = v3;
  (*(v8 + 32))(&v16[v15], &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v17 = &v16[(v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v17 = a2;
  *(v17 + 1) = a3;

  sub_23808(0, 0, v13, &unk_2C890, v16);
}

uint64_t sub_26464@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_264F8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265F0;

  return v7(a1);
}

uint64_t sub_265F0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_266E8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_26718(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_26738(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_2AAC4();

    if (v8)
    {

      type metadata accessor for PatternItem();
      swift_dynamicCast();
      result = 0;
      *a1 = v35;
      return result;
    }

    v31 = sub_2AAB4();
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      JUMPOUT(0x26D74);
    }

    v32 = sub_27184(v7, v31 + 1);
    v33 = v32[2];
    if (v32[3] <= v33)
    {
      sub_27298(v33 + 1);
    }

    sub_27954(v34, v32);

    *v3 = v32;
    goto LABEL_68;
  }

  v10 = *(v6 + 40);
  sub_2ADA4();
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);

  sub_2A8B4();

  sub_2ADB4(*(a2 + 40));
  sub_1A884(*(a2 + 41));
  sub_2A8B4();

  v13 = sub_2ADC4();
  v14 = -1 << *(v6 + 32);
  v15 = v13 & ~v14;
  if (((*(v6 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
LABEL_63:
    v28 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *v3;

    sub_27A44(v30, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v36;
LABEL_68:
    *a1 = a2;
    return 1;
  }

  v16 = ~v14;
  while (1)
  {
    v18 = *(*(v6 + 48) + 8 * v15);
    v19 = *(v18 + 24) == *(a2 + 24) && *(v18 + 32) == *(a2 + 32);
    if (v19 || (sub_2AD54()) && *(v18 + 40) == *(a2 + 40))
    {
      break;
    }

LABEL_10:
    v15 = (v15 + 1) & v16;
    if (((*(v6 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      goto LABEL_63;
    }
  }

  v20 = *(v18 + 41);
  v21 = 0xE300000000000000;
  v22 = 5395265;
  switch(v20)
  {
    case 1:
      v22 = 5786702;
      break;
    case 2:
      v22 = 4801877;
      break;
    case 3:
      v21 = 0xE800000000000000;
      v22 = 0x505041454E4F4850;
      break;
    case 4:
      v21 = 0xEA00000000005050;
      v22 = 0x414547415353454DLL;
      break;
    case 5:
      v22 = 0x5245444E494D4552;
      v23 = 1096041811;
      goto LABEL_28;
    case 6:
      v22 = 0xD000000000000017;
      v21 = 0x800000000002C990;
      break;
    case 7:
      v22 = 0x4552434D52414C41;
      goto LABEL_26;
    case 8:
      v21 = 0xEE00505041454C47;
      v22 = 0x474F544D52414C41;
      break;
    case 9:
      v22 = 0x4450554D52414C41;
LABEL_26:
      v23 = 1095062593;
LABEL_28:
      v21 = v23 | 0xEE00505000000000;
      break;
    case 10:
      v22 = 0x4145524345544F4ELL;
      goto LABEL_32;
    case 11:
      v22 = 0x454C454445544F4ELL;
LABEL_32:
      v21 = 0xED00005050414554;
      break;
    case 12:
      v21 = 0xE900000000000050;
      v22 = 0x5041594D444E4946;
      break;
    case 13:
      v21 = 0xE700000000000000;
      v22 = 0x4E574F4E4B4E55;
      break;
    default:
      break;
  }

  v24 = 0xE300000000000000;
  v25 = 5395265;
  switch(*(a2 + 41))
  {
    case 1:
      if (v22 == 5786702)
      {
        goto LABEL_59;
      }

      goto LABEL_9;
    case 2:
      if (v22 != 4801877)
      {
        goto LABEL_9;
      }

      goto LABEL_59;
    case 3:
      v24 = 0xE800000000000000;
      if (v22 != 0x505041454E4F4850)
      {
        goto LABEL_9;
      }

      goto LABEL_59;
    case 4:
      v24 = 0xEA00000000005050;
      if (v22 != 0x414547415353454DLL)
      {
        goto LABEL_9;
      }

      goto LABEL_59;
    case 5:
      v26 = 0x5245444E494D4552;
      v27 = 1096041811;
      goto LABEL_51;
    case 6:
      v24 = 0x800000000002C990;
      if (v22 != 0xD000000000000017)
      {
        goto LABEL_9;
      }

      goto LABEL_59;
    case 7:
      v26 = 0x4552434D52414C41;
      goto LABEL_49;
    case 8:
      v24 = 0xEE00505041454C47;
      if (v22 != 0x474F544D52414C41)
      {
        goto LABEL_9;
      }

      goto LABEL_59;
    case 9:
      v26 = 0x4450554D52414C41;
LABEL_49:
      v27 = 1095062593;
LABEL_51:
      v24 = v27 | 0xEE00505000000000;
      if (v22 != v26)
      {
        goto LABEL_9;
      }

      goto LABEL_59;
    case 0xA:
      v25 = 0x4145524345544F4ELL;
      v24 = 0xED00005050414554;
      goto LABEL_58;
    case 0xB:
      v24 = 0xED00005050414554;
      if (v22 != 0x454C454445544F4ELL)
      {
        goto LABEL_9;
      }

      goto LABEL_59;
    case 0xC:
      v24 = 0xE900000000000050;
      if (v22 != 0x5041594D444E4946)
      {
        goto LABEL_9;
      }

      goto LABEL_59;
    case 0xD:
      v24 = 0xE700000000000000;
      if (v22 != 0x4E574F4E4B4E55)
      {
        goto LABEL_9;
      }

      goto LABEL_59;
    default:
LABEL_58:
      if (v22 != v25)
      {
        goto LABEL_9;
      }

LABEL_59:
      if (v21 == v24)
      {

        goto LABEL_71;
      }

LABEL_9:
      v17 = sub_2AD54();

      if ((v17 & 1) == 0)
      {
        goto LABEL_10;
      }

LABEL_71:
      *a1 = *(*(v6 + 48) + 8 * v15);

      result = 0;
      break;
  }

  return result;
}

uint64_t sub_26DE4(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2ADA4();
  sub_2A8B4();
  v9 = sub_2ADC4();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_2AD54() & 1) != 0)
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

    sub_28034(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int sub_26F34(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *(*v3 + 40);
  sub_2ADA4();
  sub_22994(v32, a2, a3);
  result = sub_2ADC4();
  v9 = v6 + 56;
  v10 = -1 << *(v6 + 32);
  v11 = result & ~v10;
  if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_30:
    v26 = *v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32[0] = *v29;

    sub_281B4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v29 = v32[0];
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v31 = ~v10;
  v12 = *(a2 + 16);
  v13 = *(v6 + 48);
  v28 = v6;
  while (1)
  {
    v14 = (v13 + 16 * v11);
    v15 = *v14;
    if (*(*v14 + 16) == v12)
    {
      v16 = v14[1];
      if (v12 && v15 != a2)
      {
        v17 = (v15 + 40);
        v18 = (a2 + 40);
        v19 = v12;
        do
        {
          result = *(v17 - 1);
          if (result != *(v18 - 1) || *v17 != *v18)
          {
            result = sub_2AD54();
            if ((result & 1) == 0)
            {
              goto LABEL_3;
            }
          }

          v17 += 2;
          v18 += 2;
        }

        while (--v19);
      }

      v21 = *(v16 + 16);
      if (v21 == *(a3 + 16))
      {
        break;
      }
    }

LABEL_3:
    v11 = (v11 + 1) & v31;
    if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  if (v21)
  {
    v22 = v16 == a3;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
LABEL_29:

    *a1 = *(*(v28 + 48) + 16 * v11);

    return 0;
  }

  else
  {
    v23 = (v16 + 40);
    v24 = (a3 + 40);
    while (v21)
    {
      result = *(v23 - 1);
      if (result != *(v24 - 1) || *v23 != *v24)
      {
        result = sub_2AD54();
        if ((result & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      v23 += 2;
      v24 += 2;
      if (!--v21)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
    __break(1u);
  }

  return result;
}

void *sub_27184(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_385C(&qword_3A1E0, &qword_2BCB8);
    v2 = sub_2AB04();
    v6 = v2;
    sub_2AAA4();
    if (sub_2AAD4())
    {
      type metadata accessor for PatternItem();
      do
      {
        swift_dynamicCast();
        v3 = *(v2 + 16);
        if (*(v2 + 24) <= v3)
        {
          sub_27298(v3 + 1);
        }

        v2 = v6;
        sub_27954(v5, v6);
      }

      while (sub_2AAD4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

unint64_t sub_27298(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_385C(&qword_3A1E0, &qword_2BCB8);
  result = sub_2AAF4();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v3 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_27954(*(*(v3 + 48) + 8 * (v13 | (v7 << 6))), v6))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_13:
      ;
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return result;
      }

      if (v7 >= i)
      {
        break;
      }

      v15 = v8[v7];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_13;
      }
    }

    v16 = 1 << *(v3 + 32);
    if (v16 >= 64)
    {
      bzero((v3 + 56), ((v16 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v16;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_273FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_385C(&qword_3A190, &unk_2C880);
  result = sub_2AAF4();
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
      sub_2ADA4();
      sub_2A8B4();
      result = sub_2ADC4();
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

uint64_t sub_2765C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_385C(&qword_3AAF0, &qword_2C878);
  result = sub_2AAF4();
  v6 = result;
  if (*(v3 + 16))
  {
    v35 = v2;
    v36 = v3;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v37 = *(*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_2ADA4();
      sub_2ADB4(*(v37 + 16));
      v19 = *(v37 + 16);
      if (v19)
      {
        v20 = (v37 + 40);
        do
        {
          v21 = *(v20 - 1);
          v22 = *v20;

          sub_2A8B4();

          v20 += 2;
          --v19;
        }

        while (v19);
      }

      sub_2ADB4(*(*(&v37 + 1) + 16));
      v23 = *(*(&v37 + 1) + 16);
      if (v23)
      {
        v24 = (*(&v37 + 1) + 40);
        do
        {
          v25 = *(v24 - 1);
          v26 = *v24;

          sub_2A8B4();

          v24 += 2;
          --v23;
        }

        while (v23);
      }

      result = sub_2ADC4();
      v27 = -1 << *(v6 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v13 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v3 = v36;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v13 + 8 * v29);
          if (v33 != -1)
          {
            v14 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v28) & ~*(v13 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v3 = v36;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 16 * v14) = v37;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v3 + 32);
    if (v34 >= 64)
    {
      bzero(v8, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v34;
    }

    v2 = v35;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_27954(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_2ADA4();
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);

  sub_2A8B4();

  sub_2ADB4(*(a1 + 40));
  sub_1A884(*(a1 + 41));
  sub_2A8B4();

  sub_2ADC4();
  v7 = -1 << *(a2 + 32);
  result = sub_2AA94();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int sub_27A44(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_27298(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_283FC();
        goto LABEL_64;
      }

      sub_28818(v7 + 1);
    }

    v9 = *v3;
    v10 = *(*v3 + 40);
    sub_2ADA4();
    v11 = *(v6 + 24);
    v12 = *(v6 + 32);

    sub_2A8B4();

    sub_2ADB4(*(v6 + 40));
    sub_1A884(*(v6 + 41));
    sub_2A8B4();

    result = sub_2ADC4();
    v13 = -1 << *(v9 + 32);
    a2 = result & ~v13;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v14 = ~v13;
      type metadata accessor for PatternItem();
      do
      {
        v16 = *(*(v9 + 48) + 8 * a2);
        result = *(v16 + 24);
        v17 = result == *(v6 + 24) && *(v16 + 32) == *(v6 + 32);
        if (v17 || (result = sub_2AD54(), (result & 1) != 0))
        {
          if (*(v16 + 40) == *(v6 + 40))
          {
            v18 = *(v16 + 41);
            v19 = 0xE300000000000000;
            v20 = 5395265;
            switch(v18)
            {
              case 1:
                v20 = 5786702;
                break;
              case 2:
                v20 = 4801877;
                break;
              case 3:
                v19 = 0xE800000000000000;
                v20 = 0x505041454E4F4850;
                break;
              case 4:
                v20 = 0x414547415353454DLL;
                v19 = 0xEA00000000005050;
                break;
              case 5:
                v20 = 0x5245444E494D4552;
                v21 = 1096041811;
                goto LABEL_29;
              case 6:
                v20 = 0xD000000000000017;
                v19 = 0x800000000002C990;
                break;
              case 7:
                v20 = 0x4552434D52414C41;
                goto LABEL_27;
              case 8:
                v19 = 0xEE00505041454C47;
                v20 = 0x474F544D52414C41;
                break;
              case 9:
                v20 = 0x4450554D52414C41;
LABEL_27:
                v21 = 1095062593;
LABEL_29:
                v19 = v21 | 0xEE00505000000000;
                break;
              case 10:
                v20 = 0x4145524345544F4ELL;
                goto LABEL_33;
              case 11:
                v20 = 0x454C454445544F4ELL;
LABEL_33:
                v19 = 0xED00005050414554;
                break;
              case 12:
                v20 = 0x5041594D444E4946;
                v19 = 0xE900000000000050;
                break;
              case 13:
                v19 = 0xE700000000000000;
                v20 = 0x4E574F4E4B4E55;
                break;
              default:
                break;
            }

            v22 = 0xE300000000000000;
            v23 = 5395265;
            switch(*(v6 + 41))
            {
              case 1:
                if (v20 != 5786702)
                {
                  goto LABEL_10;
                }

                goto LABEL_60;
              case 2:
                if (v20 == 4801877)
                {
                  goto LABEL_60;
                }

                goto LABEL_10;
              case 3:
                v22 = 0xE800000000000000;
                if (v20 == 0x505041454E4F4850)
                {
                  goto LABEL_60;
                }

                goto LABEL_10;
              case 4:
                v22 = 0xEA00000000005050;
                if (v20 == 0x414547415353454DLL)
                {
                  goto LABEL_60;
                }

                goto LABEL_10;
              case 5:
                v24 = 0x5245444E494D4552;
                v25 = 1096041811;
                goto LABEL_52;
              case 6:
                v22 = 0x800000000002C990;
                if (v20 == 0xD000000000000017)
                {
                  goto LABEL_60;
                }

                goto LABEL_10;
              case 7:
                v24 = 0x4552434D52414C41;
                goto LABEL_50;
              case 8:
                v22 = 0xEE00505041454C47;
                if (v20 == 0x474F544D52414C41)
                {
                  goto LABEL_60;
                }

                goto LABEL_10;
              case 9:
                v24 = 0x4450554D52414C41;
LABEL_50:
                v25 = 1095062593;
LABEL_52:
                v22 = v25 | 0xEE00505000000000;
                if (v20 == v24)
                {
                  goto LABEL_60;
                }

                goto LABEL_10;
              case 0xA:
                v23 = 0x4145524345544F4ELL;
                v22 = 0xED00005050414554;
                goto LABEL_59;
              case 0xB:
                v22 = 0xED00005050414554;
                if (v20 == 0x454C454445544F4ELL)
                {
                  goto LABEL_60;
                }

                goto LABEL_10;
              case 0xC:
                v22 = 0xE900000000000050;
                if (v20 == 0x5041594D444E4946)
                {
                  goto LABEL_60;
                }

                goto LABEL_10;
              case 0xD:
                v22 = 0xE700000000000000;
                if (v20 == 0x4E574F4E4B4E55)
                {
                  goto LABEL_60;
                }

                goto LABEL_10;
              default:
LABEL_59:
                if (v20 != v23)
                {
                  goto LABEL_10;
                }

LABEL_60:
                if (v19 == v22)
                {
                  goto LABEL_67;
                }

LABEL_10:
                v15 = sub_2AD54();

                if ((v15 & 1) == 0)
                {
                  break;
                }

                goto LABEL_68;
            }
          }
        }

        a2 = (a2 + 1) & v14;
      }

      while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_64:
  v26 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v26 + 48) + 8 * a2) = v6;
  v27 = *(v26 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
LABEL_67:

LABEL_68:
    sub_2AD74();
    __break(1u);
    JUMPOUT(0x27FC4);
  }

  *(v26 + 16) = v29;
  return result;
}

Swift::Int sub_28034(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_273FC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2854C();
      goto LABEL_16;
    }

    sub_28944(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_2ADA4();
  sub_2A8B4();
  result = sub_2ADC4();
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

      result = sub_2AD54();
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
  result = sub_2AD74();
  __break(1u);
  return result;
}

Swift::Int sub_281B4(Swift::Int result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  v36 = result;
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_36;
  }

  if (a4)
  {
    sub_2765C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_286A8();
LABEL_36:
      v29 = *v35;
      *(*v35 + 8 * (a3 >> 6) + 56) |= 1 << a3;
      v30 = (*(v29 + 48) + 16 * a3);
      *v30 = v36;
      v30[1] = a2;
      v31 = *(v29 + 16);
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_39;
      }

      *(v29 + 16) = v33;
      return result;
    }

    sub_28B7C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_2ADA4();
  sub_22994(v37, v7, a2);
  result = sub_2ADC4();
  v12 = v10 + 56;
  v13 = -1 << *(v10 + 32);
  a3 = result & ~v13;
  if (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
  {
    goto LABEL_36;
  }

  v14 = ~v13;
  v15 = *(v7 + 16);
  v16 = *(v10 + 48);
  v34 = (v7 + 40);
  while (1)
  {
    v17 = (v16 + 16 * a3);
    v18 = *v17;
    if (*(*v17 + 16) == v15)
    {
      v19 = v17[1];
      if (v15 && v18 != v36)
      {
        v20 = (v18 + 40);
        v21 = v34;
        v22 = v15;
        do
        {
          result = *(v20 - 1);
          if (result != *(v21 - 1) || *v20 != *v21)
          {
            result = sub_2AD54();
            if ((result & 1) == 0)
            {
              goto LABEL_10;
            }
          }

          v20 += 2;
          v21 += 2;
        }

        while (--v22);
      }

      v24 = *(v19 + 16);
      if (v24 == *(a2 + 16))
      {
        break;
      }
    }

LABEL_10:
    a3 = (a3 + 1) & v14;
    if (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  if (v24)
  {
    v25 = v19 == a2;
  }

  else
  {
    v25 = 1;
  }

  if (!v25)
  {
    v26 = (v19 + 40);
    v27 = (a2 + 40);
    while (v24)
    {
      if (*(v26 - 1) != *(v27 - 1) || *v26 != *v27)
      {
        result = sub_2AD54();
        if ((result & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v26 += 2;
      v27 += 2;
      if (!--v24)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
    __break(1u);
LABEL_39:
    __break(1u);
  }

LABEL_40:
  result = sub_2AD74();
  __break(1u);
  return result;
}

void *sub_283FC()
{
  v1 = v0;
  sub_385C(&qword_3A1E0, &qword_2BCB8);
  v2 = *v0;
  v3 = sub_2AAE4();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

void *sub_2854C()
{
  v1 = v0;
  sub_385C(&qword_3A190, &unk_2C880);
  v2 = *v0;
  v3 = sub_2AAE4();
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

void *sub_286A8()
{
  v1 = v0;
  sub_385C(&qword_3AAF0, &qword_2C878);
  v2 = *v0;
  v3 = sub_2AAE4();
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
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

unint64_t sub_28818(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_385C(&qword_3A1E0, &qword_2BCB8);
  result = sub_2AAF4();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v3 + 56);
    for (i = (v8 + 63) >> 6; v10; result = sub_27954(v16, v6))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_13:
      v15 = *(*(v3 + 48) + 8 * (v12 | (v7 << 6)));
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= i)
      {
        goto LABEL_15;
      }

      v14 = *(v3 + 56 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_28944(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_385C(&qword_3A190, &unk_2C880);
  result = sub_2AAF4();
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
      sub_2ADA4();

      sub_2A8B4();
      result = sub_2ADC4();
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

uint64_t sub_28B7C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_385C(&qword_3AAF0, &qword_2C878);
  result = sub_2AAF4();
  v6 = result;
  if (*(v3 + 16))
  {
    v34 = v2;
    v35 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
      v15 = __clz(__rbit64(v11));
      v36 = (v11 - 1) & v11;
LABEL_17:
      v37 = *(*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_2ADA4();
      sub_2ADB4(*(v37 + 16));
      v19 = *(v37 + 16);
      if (v19)
      {

        v20 = (v37 + 40);
        do
        {
          v21 = *(v20 - 1);
          v22 = *v20;

          sub_2A8B4();

          v20 += 2;
          --v19;
        }

        while (v19);
      }

      else
      {
      }

      sub_2ADB4(*(*(&v37 + 1) + 16));
      v23 = *(*(&v37 + 1) + 16);
      if (v23)
      {
        v24 = (*(&v37 + 1) + 40);
        do
        {
          v25 = *(v24 - 1);
          v26 = *v24;

          sub_2A8B4();

          v24 += 2;
          --v23;
        }

        while (v23);
      }

      result = sub_2ADC4();
      v27 = -1 << *(v6 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v13 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v3 = v35;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v13 + 8 * v29);
          if (v33 != -1)
          {
            v14 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_38;
      }

      v14 = __clz(__rbit64((-1 << v28) & ~*(v13 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v3 = v35;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 16 * v14) = v37;
      ++*(v6 + 16);
      v11 = v36;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v34;
        goto LABEL_36;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  else
  {

LABEL_36:
    *v2 = v6;
  }

  return result;
}

unint64_t sub_28EB0(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*sub_28F3C(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = sub_2AB64();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_28FBC;
  }

  __break(1u);
  return result;
}

uint64_t sub_28FC4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(result + 16);
  if (v4)
  {
    for (i = (result + 64); ; i += 40)
    {
      v8 = *i;
      v9 = *(i - 3);
      v10[0] = *(i - 4);
      v10[1] = v9;
      v11 = *(i - 1);
      v12 = v8;

      sub_24258(v10, a2, a3);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_29090(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_2A9B4();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_26DE4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_29128(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_2987C();
  result = sub_2A9B4();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_26F34(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_291D0(uint64_t result, uint64_t a2)
{
  v45 = result;
  v2 = *result;
  v3 = *(*result + 16);
  if (v3)
  {
    v4 = *result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_84;
    }

LABEL_3:
    v5 = 0;
    v6 = v2 + 32;
    v47 = v3;
    v48 = v2;
    v46 = v2 + 32;
    do
    {
      if (v5 == v3)
      {
        goto LABEL_81;
      }

      if (v5 >= *(v2 + 16))
      {
        goto LABEL_82;
      }

      v7 = *(v6 + 40 * v5 + 16);
      if (v7)
      {
        v50 = v6 + 40 * v5;
        v51 = v5;
        v8 = *(a2 + 16);

        if (!v8)
        {
          goto LABEL_24;
        }

        v9 = 0;
        while (2)
        {
          v10 = v9;
LABEL_11:
          if (v10 >= v8)
          {
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            result = sub_28E74(v2);
            v2 = result;
            goto LABEL_3;
          }

          v9 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_78;
          }

          v11 = *(v7 + 16);
          v12 = (v7 + 32);
          do
          {
            if (!v11)
            {
              ++v10;
              if (v9 == v8)
              {
                goto LABEL_24;
              }

              goto LABEL_11;
            }

            v13 = *v12++;
            --v11;
          }

          while (v13 != v10);
          v3 = *(a2 + 32 + 8 * v10);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2019C(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v16 = _swiftEmptyArrayStorage[2];
          v15 = _swiftEmptyArrayStorage[3];
          v2 = v16 + 1;
          if (v16 >= v15 >> 1)
          {
            sub_2019C((v15 > 1), v16 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v2;
          v17 = &_swiftEmptyArrayStorage[2 * v16];
          v17[4] = v10;
          v17[5] = v3;
          if (v9 != v8)
          {
            continue;
          }

          break;
        }

LABEL_24:

        v3 = _swiftEmptyArrayStorage[2];
        if (v3)
        {
          sub_2015C(0, v3, 0);
          v18 = 5;
          do
          {
            v2 = _swiftEmptyArrayStorage[v18];
            v20 = _swiftEmptyArrayStorage[2];
            v19 = _swiftEmptyArrayStorage[3];

            if (v20 >= v19 >> 1)
            {
              sub_2015C((v19 > 1), v20 + 1, 1);
            }

            _swiftEmptyArrayStorage[2] = v20 + 1;
            _swiftEmptyArrayStorage[v20 + 4] = v2;
            v18 += 2;
            v3 = (v3 - 1);
          }

          while (v3);
        }

        v54 = _swiftEmptyArrayStorage[2];
        if (v54)
        {
          v21 = 0;
          v53 = &_swiftEmptyArrayStorage[4];
          v52 = _swiftEmptyArrayStorage;
          while (1)
          {
            if (v21 >= _swiftEmptyArrayStorage[2])
            {
              goto LABEL_79;
            }

            v22 = v53[v21];
            if (v22 >> 62)
            {
              if (v22 < 0)
              {
                v30 = v53[v21];
              }

              v23 = sub_2AC34();
              if (v23)
              {
LABEL_34:
                v3 = (v23 & ~(v23 >> 63));

                sub_201BC(0, v3, 0);
                if (v23 < 0)
                {
                  goto LABEL_80;
                }

                for (i = 0; i != v23; ++i)
                {
                  if ((v22 & 0xC000000000000001) != 0)
                  {
                    v25 = sub_2AB64();
                  }

                  else
                  {
                    v25 = *(v22 + 8 * i + 32);
                  }

                  v26 = *(v25 + 64);

                  v28 = _swiftEmptyArrayStorage[2];
                  v27 = _swiftEmptyArrayStorage[3];
                  v29 = v28 + 1;
                  if (v28 >= v27 >> 1)
                  {
                    result = sub_201BC((v27 > 1), v28 + 1, 1);
                  }

                  _swiftEmptyArrayStorage[2] = v29;
                  _swiftEmptyArrayStorage[v28 + 4] = v26;
                }

LABEL_47:
                v31 = 0;
                v32 = &_swiftEmptyArrayStorage[4];
                v2 = v29 - 1;
                do
                {
                  v33 = _swiftEmptyArrayStorage[2];
                  if (v31 > v33)
                  {
                    v33 = v31;
                  }

                  v34 = v31;
                  while (1)
                  {
                    if (v33 == v34)
                    {
                      __break(1u);
                      goto LABEL_75;
                    }

                    v3 = v32[v34];
                    if (v3[2])
                    {
                      v35 = v3[5];
                      v36 = v3[4] & 0xFFFFFFFFFFFFLL;
                      if ((v35 & 0x2000000000000000) != 0)
                      {
                        v36 = HIBYTE(v35) & 0xF;
                      }

                      if (v36)
                      {
                        break;
                      }
                    }

                    if (v29 == ++v34)
                    {
                      goto LABEL_62;
                    }
                  }

                  v37 = v32[v34];

                  result = swift_isUniquelyReferenced_nonNull_native();
                  if ((result & 1) == 0)
                  {
                    result = sub_201BC(0, _swiftEmptyArrayStorage[2] + 1, 1);
                  }

                  v39 = _swiftEmptyArrayStorage[2];
                  v38 = _swiftEmptyArrayStorage[3];
                  if (v39 >= v38 >> 1)
                  {
                    result = sub_201BC((v38 > 1), v39 + 1, 1);
                  }

                  v31 = v34 + 1;
                  _swiftEmptyArrayStorage[2] = v39 + 1;
                  _swiftEmptyArrayStorage[v39 + 4] = v3;
                }

                while (v2 != v34);
                goto LABEL_62;
              }
            }

            else
            {
              v23 = *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8));
              if (v23)
              {
                goto LABEL_34;
              }
            }

            v29 = _swiftEmptyArrayStorage[2];
            if (v29)
            {
              goto LABEL_47;
            }

LABEL_62:
            ++v21;

            v40 = _swiftEmptyArrayStorage[2];
            if (v40 >= 2)
            {
              v3 = _swiftEmptyArrayStorage[4];
              v41 = _swiftEmptyArrayStorage[v40 + 3];

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v52 = sub_1F84C(0, *(v52 + 2) + 1, 1, v52);
              }

              v2 = *(v52 + 2);
              v42 = *(v52 + 3);
              if (v2 >= v42 >> 1)
              {
                v52 = sub_1F84C((v42 > 1), v2 + 1, 1, v52);
              }

              *(v52 + 2) = v2 + 1;
              v43 = &v52[16 * v2];
              *(v43 + 4) = v3;
              *(v43 + 5) = v41;
              if (v21 == v54)
              {
                goto LABEL_72;
              }
            }

            else
            {

              if (v21 == v54)
              {
                goto LABEL_72;
              }
            }
          }
        }

        v52 = _swiftEmptyArrayStorage;
LABEL_72:

        v3 = sub_29128(v52);

        v44 = v3[2];

        v2 = v48;
        v5 = v51;
        if (v51 >= *(v48 + 16))
        {
          goto LABEL_83;
        }

        *(v50 + 24) = v44;
        *(v50 + 32) = 0;
        v6 = v46;
        v3 = v47;
      }

      ++v5;
    }

    while (v5 != v3);
LABEL_75:
    *v45 = v2;
  }

  return result;
}

uint64_t sub_2980C(uint64_t a1, uint64_t a2)
{
  v4 = sub_385C(&qword_3AAD8, &qword_2C868);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2987C()
{
  result = qword_3AAE8;
  if (!qword_3AAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3AAE8);
  }

  return result;
}

uint64_t sub_298D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29938(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29998()
{
  v1 = sub_2A1A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_29A7C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2A1A4() - 8);
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
  v13[1] = sub_15C74;

  return sub_2310C(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_29BB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_385C(&qword_3A9D8, &qword_2C7C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29C28(uint64_t a1)
{
  v2 = sub_385C(&qword_3A9D8, &qword_2C7C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29C90()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_29CC8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_197EC;

  return sub_264F8(a1, v5);
}

uint64_t sub_29D80(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_15C74;

  return sub_264F8(a1, v5);
}

uint64_t sub_29E38(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_29E80(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_29E8C(uint64_t *a1, int a2)
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

uint64_t sub_29ED4(uint64_t result, int a2, int a3)
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

unint64_t sub_29F24()
{
  result = qword_3AB00;
  if (!qword_3AB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3AB00);
  }

  return result;
}