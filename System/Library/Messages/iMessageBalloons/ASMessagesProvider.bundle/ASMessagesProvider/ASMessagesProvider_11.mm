char *sub_144DA0(char *result, int64_t a2, char a3, char *a4)
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
    sub_BD88(&qword_9419F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_144EAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_BD88(&qword_9464E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_144FC8(char *result, int64_t a2, char a3, char *a4)
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
    sub_BD88(&qword_946510);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1450E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_BD88(&qword_95B250);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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

double *sub_1451EC(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_BD88(&qword_946508);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_145334(double *result, int64_t a2, char a3, double *a4)
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
    sub_BD88(&unk_94EC60);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_BD88(&qword_941BA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_145468(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_BD88(&qword_946498);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_145588(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_BD88(&qword_9464D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

size_t sub_145688(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_BD88(a5);
  v14 = *(sub_BD88(a7) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size_0(v17);
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
  v19 = *(sub_BD88(a7) - 8);
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

double *sub_145870(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_BD88(&qword_9464D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_145990(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_BD88(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size_0(v17);
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

void *sub_145B6C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
    sub_BD88(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size_0(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_BD88(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

double sub_145CB4(uint64_t a1, uint64_t a2, void *a3)
{
  v45 = a2;
  v51 = a1;
  v48 = sub_766C30();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_766C50();
  v49 = *(v5 - 8);
  v50 = v5;
  __chkstk_darwin(v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_767170();
  v52 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_75D850();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v42 - v14;
  v16 = sub_75BDF0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75BDE0();
  sub_75BE10();
  sub_146608(&qword_946440, &type metadata accessor for OffsetGridLayout);
  sub_766ED0();
  v21 = v20;
  (*(v17 + 8))(v19, v16);
  v22 = [a3 traitCollection];
  if (sub_769A00())
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v23 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v23 = qword_946938;
  }

  v24 = sub_BE38(v9, v23);
  (*(v10 + 16))(v12, v24, v9);

  (*(v10 + 32))(v15, v12, v9);
  sub_75D830();
  v26 = v25;
  (*(v10 + 8))(v15, v9);
  sub_BD88(&qword_9419E8);
  v27 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  v28 = 7 * *(v52 + 72);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_77DCF0;
  v54 = &type metadata for CGFloat;
  v55 = &protocol witness table for CGFloat;
  v53[0] = 0x4044000000000000;
  sub_767180();
  v54 = &type metadata for CGFloat;
  v55 = &protocol witness table for CGFloat;
  v53[0] = v21;
  sub_767180();
  v54 = &type metadata for CGFloat;
  v55 = &protocol witness table for CGFloat;
  v53[0] = 0x4034000000000000;
  sub_767180();
  v54 = &type metadata for CGFloat;
  v55 = &protocol witness table for CGFloat;
  v53[0] = 0;
  sub_767180();
  v54 = &type metadata for CGFloat;
  v55 = &protocol witness table for CGFloat;
  v53[0] = 0x4033000000000000;
  sub_767180();
  v54 = &type metadata for CGFloat;
  v55 = &protocol witness table for CGFloat;
  v53[0] = 0x4032000000000000;
  sub_767180();
  v54 = &type metadata for CGFloat;
  v55 = &protocol witness table for CGFloat;
  v53[0] = v26;
  sub_767180();
  if ((sub_7692D0() & 1) == 0)
  {
    if (qword_93D4E8 != -1)
    {
      swift_once();
    }

    v30 = sub_7666D0();
    sub_BE38(v30, qword_99E6C8);
    v31 = sub_7653B0();
    v54 = v31;
    v55 = sub_146608(&qword_93F9B0, &type metadata accessor for Feature);
    v32 = sub_B1B4(v53);
    (*(*(v31 - 8) + 104))(v32, enum case for Feature.measurement_with_labelplaceholder(_:), v31);
    sub_765C30();
    sub_BEB8(v53);
    sub_762CB0();
    v34 = v33;
    if (qword_93C408 != -1)
    {
      swift_once();
    }

    v35 = sub_766CA0();
    sub_BE38(v35, qword_9463F0);
    sub_766720();
    v54 = &type metadata for CGFloat;
    v55 = &protocol witness table for CGFloat;
    *v53 = v34 + v36;
    v37 = v43;
    sub_767180();
    v29 = sub_7B0B0(1uLL, 8, 1, v29);
    *(v29 + 16) = 8;
    (*(v52 + 32))(v29 + v27 + v28, v37, v44);
  }

  (*(v46 + 104))(v47, enum case for StackMeasurable.Axis.vertical(_:), v48);
  sub_140564(v29);

  sub_766C40();
  v38 = v50;
  sub_7665A0();
  v40 = v39;
  (*(v49 + 8))(v7, v38);
  return v40;
}

uint64_t sub_146570(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_B1B4(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_10914(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_146608(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_146650()
{
  v1 = v0;
  v25 = sub_760AD0();
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v24 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_BD88(&qword_9464F8);
  __chkstk_darwin(v6);
  v7 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_itemLayoutContext;
  v8 = sub_75C840();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_iconGridView;
  v10 = type metadata accessor for IconGridView();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC18ASMessagesProvider12IconGridView_artworkViews] = _swiftEmptyArrayStorage;
  sub_759210();
  sub_7667C0();
  sub_16194(&qword_946500, &qword_9464F8);
  sub_767480();
  *&v11[OBJC_IVAR____TtC18ASMessagesProvider12IconGridView_impressionableArtworks] = 0;
  *&v11[OBJC_IVAR____TtC18ASMessagesProvider12IconGridView_artworkLoader] = 0;
  v12 = &v11[OBJC_IVAR____TtC18ASMessagesProvider12IconGridView_configuration];
  *v12 = vdupq_n_s64(0x4056000000000000uLL);
  *(v12 + 2) = 0x4024000000000000;
  *(v12 + 3) = 2;
  *(v12 + 2) = xmmword_786D80;
  v26.receiver = v11;
  v26.super_class = v10;
  *(v0 + v9) = objc_msgSendSuper2(&v26, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v13 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_wordmarkImageView;
  *(v0 + v13) = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v14 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_descriptionLabel;
  if (qword_93D4E8 != -1)
  {
    swift_once();
  }

  v15 = sub_7666D0();
  v16 = sub_BE38(v15, qword_99E6C8);
  v17 = *(v15 - 8);
  (*(v17 + 16))(v5, v16, v15);
  (*(v17 + 56))(v5, 0, 1, v15);
  (*(v23 + 104))(v24, enum case for DirectionalTextAlignment.none(_:), v25);
  v18 = objc_allocWithZone(sub_75BB20());
  *(v1 + v14) = sub_75BB10();
  v19 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_offerButton;
  v20 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v1 + v19) = sub_1DD00C(0);
  v21 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider32ArcadeShowcaseCollectionViewCell_offerLabelPresenter);
  *v21 = 0u;
  v21[1] = 0u;
  sub_76A840();
  __break(1u);
}

uint64_t sub_146AB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_941C20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_146B28(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_946518);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FlowAction.destination.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_BD88(&unk_9442D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9[-v4];

  sub_764BF0();
  sub_146CF0(v1, v9, v5);
  v6 = type metadata accessor for FlowDestination();
  v7 = *(*(v6 - 8) + 48);
  if (v7(v5, 1, v6) != 1)
  {
    return sub_14B504(v5, a1, type metadata accessor for FlowDestination);
  }

  swift_storeEnumTagMultiPayload();
  result = (v7)(v5, 1, v6);
  if (result != 1)
  {
    return sub_10A2C(v5, &unk_9442D0);
  }

  return result;
}

uint64_t sub_146CF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v301 = a3;
  v302 = a2;
  v4 = sub_BD88(&qword_946528);
  __chkstk_darwin(v4 - 8);
  v271 = &v256 - v5;
  v273 = type metadata accessor for ComponentOverflowData();
  v270 = *(v273 - 8);
  __chkstk_darwin(v273);
  v272 = (&v256 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_BD88(&qword_943F30);
  __chkstk_darwin(v7 - 8);
  v276 = &v256 - v8;
  v9 = sub_BD88(&unk_940200);
  __chkstk_darwin(v9 - 8);
  v283 = &v256 - v10;
  v280 = sub_764CF0();
  v279 = *(v280 - 8);
  __chkstk_darwin(v280);
  v278 = &v256 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v12 - 8);
  v269 = &v256 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v268 = &v256 - v15;
  __chkstk_darwin(v16);
  v267 = &v256 - v17;
  __chkstk_darwin(v18);
  v264 = &v256 - v19;
  __chkstk_darwin(v20);
  v266 = &v256 - v21;
  __chkstk_darwin(v22);
  v263 = &v256 - v23;
  __chkstk_darwin(v24);
  v277 = &v256 - v25;
  __chkstk_darwin(v26);
  v295 = &v256 - v27;
  __chkstk_darwin(v28);
  v284 = &v256 - v29;
  __chkstk_darwin(v30);
  v285 = &v256 - v31;
  __chkstk_darwin(v32);
  v288 = &v256 - v33;
  __chkstk_darwin(v34);
  v287 = &v256 - v35;
  __chkstk_darwin(v36);
  v290 = &v256 - v37;
  __chkstk_darwin(v38);
  v291 = &v256 - v39;
  __chkstk_darwin(v40);
  v293 = &v256 - v41;
  __chkstk_darwin(v42);
  v292 = &v256 - v43;
  __chkstk_darwin(v44);
  v46 = &v256 - v45;
  v47 = sub_7570A0();
  v298 = *(v47 - 8);
  v299 = v47;
  __chkstk_darwin(v47);
  v265 = &v256 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v262 = &v256 - v50;
  __chkstk_darwin(v51);
  v260 = &v256 - v52;
  __chkstk_darwin(v53);
  v257 = &v256 - v54;
  __chkstk_darwin(v55);
  v275 = &v256 - v56;
  __chkstk_darwin(v57);
  v294 = &v256 - v58;
  __chkstk_darwin(v59);
  v282 = &v256 - v60;
  __chkstk_darwin(v61);
  v281 = &v256 - v62;
  __chkstk_darwin(v63);
  v286 = &v256 - v64;
  __chkstk_darwin(v65);
  v289 = &v256 - v66;
  __chkstk_darwin(v67);
  v69 = &v256 - v68;
  __chkstk_darwin(v70);
  v72 = &v256 - v71;
  __chkstk_darwin(v73);
  v75 = &v256 - v74;
  v76 = sub_765490();
  v77 = *(v76 - 8);
  __chkstk_darwin(v76);
  v79 = &v256 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for FlowDestination();
  v300 = *(v80 - 8);
  __chkstk_darwin(v80);
  v261 = (&v256 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v82);
  v259 = (&v256 - v83);
  __chkstk_darwin(v84);
  v258 = (&v256 - v85);
  __chkstk_darwin(v86);
  v88 = (&v256 - v87);
  sub_758AE0();
  v256 = v77;
  v89 = *(v77 + 88);
  v297 = v76;
  v90 = v89(v79, v76);
  if (v90 != enum case for FlowPage.search(_:))
  {
    v95 = v88;
    v296 = a1;
    v274 = v80;
    if (v90 == enum case for FlowPage.product(_:))
    {
      sub_758B00();
      v97 = v298;
      v96 = v299;
      if ((*(v298 + 48))(v46, 1, v299) == 1)
      {
LABEL_5:
        v98 = v46;
        goto LABEL_14;
      }

      (*(v97 + 32))(v75, v46, v96);
      v102 = sub_75F650();
      __chkstk_darwin(v102);
      *(&v256 - 2) = v302;
      sub_758B10();
      v103 = v304;
      if (v304)
      {

        v104 = sub_75F620();
      }

      else
      {
        v104 = 0;
      }

      v116 = sub_BD88(&qword_955D70);
      v117 = v116[12];
      v118 = v116[16];
      v119 = v116[20];
      v120 = v116[24];
      v121 = v299;
      (*(v97 + 16))(v95, v75, v299);
      *(v95 + v117) = 0;
      *(v95 + v118) = v103;
      *(v95 + v119) = v104;
      v122 = sub_758AC0();

      (*(v97 + 8))(v75, v121);
      *(v95 + v120) = v122;
      v93 = v274;
      goto LABEL_25;
    }

    v99 = v299;
    if (v90 == enum case for FlowPage.dynamicUI(_:))
    {
      v100 = v295;
      sub_758B00();
      v101 = v298;
      if ((*(v298 + 48))(v100, 1, v99) == 1)
      {
        v98 = v100;
        goto LABEL_14;
      }

      v109 = *(v101 + 32);
      v110 = v294;
      v109(v294, v100, v99);
      sub_75EA80();
      sub_758B10();
      v111 = v304;
      v92 = v302;
      if (!v304)
      {
        if (qword_93DF00 != -1)
        {
          swift_once();
        }

        v128 = sub_768FF0();
        sub_BE38(v128, qword_9A0430);
        sub_BD88(&qword_93FD00);
        sub_7685F0();
        *(swift_allocObject() + 16) = xmmword_77E280;
        sub_768540();
        v306 = v297;
        sub_B1B4(&v304);
        sub_758AE0();
        sub_7685E0();
        sub_10A2C(&v304, &unk_93FBD0);
        sub_768E90();

        (*(v101 + 8))(v294, v299);
        goto LABEL_16;
      }

      v112 = sub_BD88(&qword_943FC8);
      v113 = v110;
      v114 = *(v112 + 48);
      v109(v95, v113, v99);
      *(v95 + v114) = v111;
      v93 = v274;
LABEL_19:
      swift_storeEnumTagMultiPayload();
      v94 = v95;
      goto LABEL_27;
    }

    if (v90 == enum case for FlowPage.webView(_:))
    {
      v105 = v293;
      sub_758B00();
      v106 = v298;
      if ((*(v298 + 48))(v105, 1, v99) == 1)
      {
        v98 = v105;
LABEL_14:
        sub_10A2C(v98, &unk_93FD30);
        v92 = v302;
        if (qword_93DF00 == -1)
        {
LABEL_15:
          v107 = sub_768FF0();
          sub_BE38(v107, qword_9A0430);
          sub_BD88(&qword_93FD00);
          sub_7685F0();
          *(swift_allocObject() + 16) = xmmword_77E280;
          sub_768540();
          v306 = v297;
          sub_B1B4(&v304);
          sub_758AE0();
          sub_7685E0();
          sub_10A2C(&v304, &unk_93FBD0);
          sub_768E90();

LABEL_16:
          sub_10A2C(v92, &unk_93FBD0);
          return (*(v300 + 56))(v301, 1, 1, v274);
        }

LABEL_91:
        swift_once();
        goto LABEL_15;
      }

      v124 = *(v106 + 32);
      v124(v69, v105, v99);
      v124(v95, v69, v99);
      v93 = v274;
LABEL_25:
      swift_storeEnumTagMultiPayload();
LABEL_26:
      v94 = v95;
      v92 = v302;
      goto LABEL_27;
    }

    if (v90 == enum case for FlowPage.unknown(_:))
    {
      v46 = v292;
      sub_758B00();
      v115 = v298;
      if ((*(v298 + 48))(v46, 1, v99) == 1)
      {
        goto LABEL_5;
      }

      (*(v115 + 32))(v72, v46, v99);
      sub_BD88(&qword_955D60);
      (*(v115 + 16))(v95, v72, v99);
      sub_758AF0();

      (*(v115 + 8))(v72, v99);
      v93 = v274;
      goto LABEL_25;
    }

    v125 = v298;
    if (v90 == enum case for FlowPage.viewController(_:))
    {
      v126 = sub_BE70(0, &qword_9434E0);
      __chkstk_darwin(v126);
      v92 = v302;
      *(&v256 - 2) = v302;
      sub_758B10();
      v127 = v304;
      if (!v304)
      {
        if (qword_93DF00 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_91;
      }

LABEL_31:

      *v95 = v127;
      v93 = v274;
      goto LABEL_19;
    }

    if (v90 == enum case for FlowPage.gallery(_:))
    {
      v129 = sub_BD88(&qword_945360);
      __chkstk_darwin(v129);
      v92 = v302;
      *(&v256 - 2) = v302;
      sub_758B10();
      v127 = v304;
      if (!v304)
      {
        if (qword_93DF00 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_91;
      }

      goto LABEL_31;
    }

    if (v90 == enum case for FlowPage.video(_:))
    {
      v46 = v291;
      sub_758B00();
      if ((*(v125 + 48))(v46, 1, v99) == 1)
      {
        goto LABEL_5;
      }

      v130 = *(v125 + 32);
      v131 = v289;
      v130(v289, v46, v99);
      v132 = sub_764BE0();
      __chkstk_darwin(v132);
      v92 = v302;
      *(&v256 - 2) = v302;
      sub_758B10();
      if (v304)
      {
        v133 = sub_764BC0();
      }

      else
      {

        v133 = 0;
      }

      v146 = *(sub_BD88(&unk_955D40) + 48);
      v130(v95, v131, v99);
      *(v95 + v146) = v133;
      v93 = v274;
      goto LABEL_19;
    }

    if (v90 == enum case for FlowPage.page(_:))
    {
LABEL_45:
      v134 = v290;
      sub_758B00();
      v135 = sub_7594D0();
      __chkstk_darwin(v135);
      v92 = v302;
      *(&v256 - 2) = v302;
      sub_758B10();

      v136 = v304;
      v137 = *(sub_BD88(&qword_940A50) + 48);
      *v95 = v136;
      sub_109C4(v134, v95 + v137, &unk_93FD30);
      v93 = v274;
      goto LABEL_19;
    }

    if (v90 == enum case for FlowPage.searchChartsAndCategories(_:))
    {
      v138 = v290;
      sub_758B00();
      v139 = sub_762E20();
      __chkstk_darwin(v139);
      v92 = v302;
      *(&v256 - 2) = v302;
      sub_758B10();

      v140 = v304;
      v141 = *(sub_BD88(&qword_943FC0) + 48);
      *v95 = v140;
      sub_109C4(v138, v95 + v141, &unk_93FD30);
      v93 = v274;
      goto LABEL_19;
    }

    if (v90 == enum case for FlowPage.topCharts(_:))
    {
      v142 = v290;
      sub_758B00();
      v143 = sub_75A610();
      __chkstk_darwin(v143);
      v92 = v302;
      *(&v256 - 2) = v302;
      sub_758B10();

      v144 = v304;
      v145 = *(sub_BD88(&qword_955CE0) + 48);
      *v95 = v144;
      sub_109C4(v142, v95 + v145, &unk_93FD30);
      v93 = v274;
      goto LABEL_19;
    }

    if (v90 == enum case for FlowPage.updates(_:))
    {
LABEL_229:

      v93 = v274;
      goto LABEL_25;
    }

    if (v90 == enum case for FlowPage.today(_:))
    {
      v147 = v287;
      sub_758B00();
      if ((*(v125 + 48))(v147, 1, v99) != 1)
      {

        v150 = *(v125 + 32);
        v151 = v286;
        v150(v286, v147, v99);
        v150(v95, v151, v99);
        v93 = v274;
        goto LABEL_25;
      }

      v148 = v147;
LABEL_59:
      sub_10A2C(v148, &unk_93FD30);
      if (qword_93DF00 == -1)
      {
LABEL_60:
        v149 = sub_768FF0();
        sub_BE38(v149, qword_9A0430);
        sub_BD88(&qword_93FD00);
        sub_7685F0();
        *(swift_allocObject() + 16) = xmmword_77E280;
        sub_768540();
        v306 = v297;
        sub_B1B4(&v304);
        sub_758AE0();
        sub_7685E0();
        sub_10A2C(&v304, &unk_93FBD0);
        sub_768E90();

        goto LABEL_61;
      }

LABEL_155:
      swift_once();
      goto LABEL_60;
    }

    if (v90 == enum case for FlowPage.article(_:))
    {
      sub_758B00();
      sub_758FF0();
      sub_758B10();
      sub_1ED18(v302, &v304, &unk_93FBD0);
      if (v306)
      {
        sub_765B70();
        swift_dynamicCast();
      }

      else
      {
        sub_10A2C(&v304, &unk_93FBD0);
      }

      v154 = sub_758FE0();

      v155 = *(sub_BD88(&qword_955C90) + 48);
      *v95 = v154;
      sub_109C4(v288, v95 + v155, &unk_93FD30);
      v93 = v274;
      goto LABEL_25;
    }

    if (v90 == enum case for FlowPage.purchases(_:))
    {
      sub_BE70(0, &qword_943EE8);
      sub_758B10();

      *v95 = v304;
      v93 = v274;
      goto LABEL_25;
    }

    v152 = v90;
    if (v90 == enum case for FlowPage.inAppPurchaseInstall(_:))
    {
      v153 = v285;
      sub_758B00();
      if ((*(v298 + 48))(v153, 1, v299) != 1)
      {
        v157 = v299;
        v158 = *(v298 + 32);
        v159 = v281;
        v158(v281, v285, v299);
        sub_757D00();
        sub_758B10();

        v160 = v304;
        v161 = *(sub_BD88(&qword_955C80) + 48);
        v158(v95, v159, v157);
        *(v95 + v161) = v160;
        v93 = v274;
        goto LABEL_25;
      }

      v148 = v285;
      goto LABEL_59;
    }

    if (v90 == enum case for FlowPage.writeReview(_:))
    {
      v156 = v284;
      sub_758B00();
      if ((*(v298 + 48))(v156, 1, v299) == 1)
      {
        v148 = v284;
        goto LABEL_59;
      }

      v164 = *(v298 + 32);
      v164(v282, v284, v299);
      v165 = v283;
      v166 = v280;
      sub_758B10();
      if ((*(v279 + 48))(v165, 1, v166) != 1)
      {

        v168 = *(v279 + 32);
        v169 = v278;
        v170 = v280;
        v168(v278, v283, v280);
        v171 = *(sub_BD88(&unk_955C70) + 48);
        v164(v95, v282, v299);
        v168(v95 + v171, v169, v170);
        v93 = v274;
        goto LABEL_25;
      }

      sub_10A2C(v283, &unk_940200);
      if (qword_93DF00 != -1)
      {
        swift_once();
      }

      v167 = sub_768FF0();
      sub_BE38(v167, qword_9A0430);
      sub_BD88(&qword_93FD00);
      sub_7685F0();
      *(swift_allocObject() + 16) = xmmword_77E280;
      sub_768540();
      v306 = v297;
      sub_B1B4(&v304);
      sub_758AE0();
      sub_7685E0();
      sub_10A2C(&v304, &unk_93FBD0);
      sub_768E90();

      (*(v298 + 8))(v282, v299);
LABEL_61:
      v92 = v302;
      goto LABEL_16;
    }

    if (v90 == enum case for FlowPage.reviews(_:))
    {
      v162 = sub_759680();
      __chkstk_darwin(v162);
      *(&v256 - 2) = v302;
      sub_758B10();
      v163 = v304;
      if (!v304)
      {
        if (qword_93DF00 == -1)
        {
          goto LABEL_60;
        }

        goto LABEL_155;
      }
    }

    else
    {
      if (v90 == enum case for FlowPage.account(_:) || v90 == enum case for FlowPage.finance(_:))
      {
        sub_758B00();

        v93 = v274;
        goto LABEL_25;
      }

      if (v90 == enum case for FlowPage.hiddenPurchases(_:))
      {
        goto LABEL_229;
      }

      if (v90 == enum case for FlowPage.mso(_:))
      {
        v172 = v277;
        sub_758B00();
        if ((*(v298 + 48))(v172, 1, v299) != 1)
        {
          v174 = v299;
          v175 = *(v298 + 32);
          v176 = v275;
          v175(v275, v277, v299);
          sub_758C50();
          v177 = v276;
          sub_758B10();

          v178 = *(sub_BD88(&qword_943FB8) + 48);
          v175(v95, v176, v174);
          sub_109C4(v177, v95 + v178, &qword_943F30);
          v93 = v274;
          goto LABEL_25;
        }

        v148 = v277;
        goto LABEL_59;
      }

      if (v90 == enum case for FlowPage.versionHistory(_:))
      {
        v173 = sub_7594D0();
        __chkstk_darwin(v173);
        *(&v256 - 2) = v302;
        sub_758B10();
        v163 = v304;
        if (!v304)
        {
          if (qword_93DF00 == -1)
          {
            goto LABEL_60;
          }

          goto LABEL_155;
        }
      }

      else
      {
        if (v90 == enum case for FlowPage.onboarding(_:))
        {
          __chkstk_darwin(v90);
          *(&v256 - 2) = v302;
          sub_758B10();
          v179 = v304;
          if (v304 != 4)
          {

            *v95 = v179;
            v93 = v274;
            goto LABEL_25;
          }

          if (qword_93DF00 == -1)
          {
            goto LABEL_60;
          }

          goto LABEL_155;
        }

        if (v90 == enum case for FlowPage.reviewDetail(_:))
        {
          v180 = sub_765030();
          __chkstk_darwin(v180);
          *(&v256 - 2) = v302;
          sub_758B10();
          v163 = v304;
          if (!v304)
          {
            if (qword_93DF00 == -1)
            {
              goto LABEL_60;
            }

            goto LABEL_155;
          }
        }

        else if (v90 == enum case for FlowPage.editorsChoiceDetail(_:))
        {
          v181 = sub_75A2B0();
          __chkstk_darwin(v181);
          *(&v256 - 2) = v302;
          sub_758B10();
          v163 = v304;
          if (!v304)
          {
            if (qword_93DF00 == -1)
            {
              goto LABEL_60;
            }

            goto LABEL_155;
          }
        }

        else
        {
          if (v90 == enum case for FlowPage.arcade(_:))
          {
            v182 = v290;
            sub_758B00();
            sub_758A10();
            sub_758B10();
            v183 = v304;
            sub_BD88(&qword_955D30);
            *v95 = v183;
            sub_1ED18(v182, v263, &unk_93FD30);
            sub_1ED18(v182, v266, &unk_93FD30);
            sub_75AA30();

            sub_10A2C(v182, &unk_93FD30);
            v93 = v274;
            goto LABEL_25;
          }

          if (v90 == enum case for FlowPage.arcadeSubscribe(_:))
          {
            sub_75DEB0();
            sub_758B10();
            v184 = v304;
            v185 = sub_BD88(&qword_955D10);
            v186 = *(v185 + 48);
            v187 = *(v185 + 64);
            sub_758B00();

            *(v95 + v186) = v184;
            *(v95 + v187) = 0;
            v93 = v274;
            goto LABEL_25;
          }

          if (v90 != enum case for FlowPage.upsellMarketingItem(_:))
          {
            if (v90 == enum case for FlowPage.arcadeSeeAllGames(_:))
            {
              v188 = v264;
              sub_758B00();
              if ((*(v298 + 48))(v188, 1, v299) != 1)
              {
                v190 = v299;
                v191 = *(v298 + 32);
                v192 = v257;
                v191(v257, v264, v299);
                sub_75EF60();
                sub_758B10();

                v193 = v304;
                v194 = *(sub_BD88(&qword_955D20) + 48);
                *v95 = v193;
                v191(v95 + v194, v192, v190);
                v93 = v274;
                goto LABEL_25;
              }

              v148 = v264;
              goto LABEL_59;
            }

            if (v90 == enum case for FlowPage.arcadeWelcome(_:))
            {
              v189 = v267;
              sub_758B00();
              if ((*(v298 + 48))(v189, 1, v299) != 1)
              {
                v197 = v299;
                v198 = *(v298 + 32);
                v199 = v260;
                v198(v260, v267, v299);
                v200 = sub_BD88(&qword_955D00);
                v201 = *(v200 + 48);
                v202 = *(v200 + 64);
                sub_75C400();
                sub_758B10();

                v203 = enum case for ArcadeWelcomePage.ContentType.none(_:);
                v204 = sub_75C3F0();
                (*(*(v204 - 8) + 104))(v95 + v201, v203, v204);
                v198(v95 + v202, v199, v197);
                v93 = v274;
                goto LABEL_25;
              }

              v148 = v267;
              goto LABEL_59;
            }

            if (v90 == enum case for FlowPage.arcadeDownloadPackCategories(_:))
            {
              sub_758B10();
              v195 = *(&v304 + 1);
              if (*(&v304 + 1))
              {
                v196 = v304;

                *v95 = v196;
                v95[1] = v195;
                v93 = v274;
                goto LABEL_25;
              }

              if (qword_93DF00 == -1)
              {
                goto LABEL_60;
              }

              goto LABEL_155;
            }

            if (v90 == enum case for FlowPage.componentOverflow(_:))
            {
              v205 = v271;
              v206 = v273;
              sub_758B10();
              if ((*(v270 + 48))(v205, 1, v206) != 1)
              {

                v207 = v272;
                sub_14B504(v271, v272, type metadata accessor for ComponentOverflowData);
                v208 = *(sub_BD88(&unk_955C40) + 48);
                *v95 = *v207;
                v209 = *(v273 + 20);
                v210 = sub_757640();
                (*(*(v210 - 8) + 32))(v95 + v208, v207 + v209, v210);
                v93 = v274;
                goto LABEL_25;
              }

              sub_10A2C(v271, &qword_946528);
              if (qword_93DF00 == -1)
              {
                goto LABEL_60;
              }

              goto LABEL_155;
            }

            if (v90 == enum case for FlowPage.notificationSettings(_:))
            {
              goto LABEL_229;
            }

            if (v90 == enum case for FlowPage.gameAchievements(_:))
            {
              __chkstk_darwin(v90);
              *(&v256 - 2) = v302;
              sub_758B10();
              v211 = v304;
              if (!v304)
              {
                if (qword_93DF00 == -1)
                {
                  goto LABEL_60;
                }

                goto LABEL_155;
              }
            }

            else
            {
              if (v90 == enum case for FlowPage.gameCenterDashboard(_:))
              {
                goto LABEL_229;
              }

              if (v90 != enum case for FlowPage.gameCenterLeaderboards(_:))
              {
                if (v90 == enum case for FlowPage.gameCenterPlayerProfile(_:))
                {
                  sub_758B10();

                  *v95 = v304;
                  v93 = v274;
                  goto LABEL_25;
                }

                if (v90 == enum case for FlowPage.reportAConcern(_:))
                {
                  v213 = sub_75E510();
                  __chkstk_darwin(v213);
                  *(&v256 - 2) = v302;
                  sub_758B10();
                  if (v304)
                  {
                    v214 = sub_75E500();
                    v215 = sub_75E4F0();
                    v217 = v216;
                    v218 = sub_75E4E0();

                    *v95 = v214;
                    v95[1] = v215;
                    v95[2] = v217;
                    v95[3] = v218;
                    v93 = v274;
                    goto LABEL_25;
                  }
                }

                else
                {
                  if (v90 != enum case for FlowPage.reviewSummaryReportConcern(_:))
                  {
                    if (v90 == enum case for FlowPage.shareSheet(_:))
                    {
                      v226 = sub_75C1F0();
                      __chkstk_darwin(v226);
                      *(&v256 - 2) = v302;
                      sub_758B10();
                      if (v304)
                      {
                        sub_BD88(&qword_955C60);
                        *v95 = sub_75C1B0();
                        v95[1] = sub_75C1A0();
                        sub_75C180();

                        v93 = v274;
                        goto LABEL_25;
                      }

                      if (qword_93DF00 == -1)
                      {
                        goto LABEL_60;
                      }

                      goto LABEL_155;
                    }

                    if (v90 == enum case for FlowPage.privacyDetail(_:))
                    {
                      v227 = v268;
                      sub_758B00();
                      if ((*(v298 + 48))(v227, 1, v299) != 1)
                      {
                        v230 = v298;
                        v229 = v299;
                        v231 = *(v298 + 32);
                        v232 = v262;
                        v231(v262, v268, v299);
                        sub_7594D0();
                        sub_758B10();

                        v233 = v304;
                        v234 = *(sub_BD88(&qword_940A50) + 48);
                        *v95 = v233;
                        v231(v95 + v234, v232, v229);
                        (*(v230 + 56))(v95 + v234, 0, 1, v229);
                        v93 = v274;
                        goto LABEL_25;
                      }

                      v148 = v268;
                      goto LABEL_59;
                    }

                    if (v90 == enum case for FlowPage.privacyDefinitions(_:))
                    {
                      v228 = v269;
                      sub_758B00();
                      if ((*(v298 + 48))(v228, 1, v299) != 1)
                      {
                        v236 = v298;
                        v235 = v299;
                        v237 = *(v298 + 32);
                        v238 = v265;
                        v237(v265, v269, v299);
                        sub_7594D0();
                        sub_758B10();

                        v239 = v304;
                        v240 = *(sub_BD88(&qword_940A50) + 48);
                        *v95 = v239;
                        v237(v95 + v240, v238, v235);
                        (*(v236 + 56))(v95 + v240, 0, 1, v235);
                        v93 = v274;
                        goto LABEL_25;
                      }

                      v148 = v269;
                      goto LABEL_59;
                    }

                    if (v90 == enum case for FlowPage.accessibilityDetails(_:))
                    {
                      goto LABEL_45;
                    }

                    if (v90 == enum case for FlowPage.appEventDetail(_:))
                    {
                      v241 = sub_7582F0();
                      __chkstk_darwin(v241);
                      *(&v256 - 2) = v302;
                      sub_758B10();
                      v242 = v304;
                      if (!v304)
                      {
                        if (qword_93DF00 == -1)
                        {
                          goto LABEL_60;
                        }

                        goto LABEL_155;
                      }

                      sub_1ED18(v302, &v304, &unk_93FBD0);
                      if (v306)
                      {
                        sub_BE70(0, &qword_93E550);
                        v243 = swift_dynamicCast();
                        v244 = v303;
                        if (!v243)
                        {
                          v244 = 0;
                        }
                      }

                      else
                      {
                        sub_10A2C(&v304, &unk_93FBD0);
                        v244 = 0;
                      }

                      v254 = v258;
                      *v258 = v242;
                      *(v254 + 8) = v244;
                      v93 = v274;
                    }

                    else if (v90 == enum case for FlowPage.contingentOfferDetail(_:))
                    {
                      v245 = sub_761320();
                      __chkstk_darwin(v245);
                      *(&v256 - 2) = v302;
                      sub_758B10();
                      v246 = v304;
                      if (!v304)
                      {
                        if (qword_93DF00 == -1)
                        {
                          goto LABEL_60;
                        }

                        goto LABEL_155;
                      }

                      sub_1ED18(v302, &v304, &unk_93FBD0);
                      if (v306)
                      {
                        sub_BE70(0, &qword_93E550);
                        v247 = swift_dynamicCast();
                        v248 = v303;
                        if (!v247)
                        {
                          v248 = 0;
                        }
                      }

                      else
                      {
                        sub_10A2C(&v304, &unk_93FBD0);
                        v248 = 0;
                      }

                      v254 = v259;
                      *v259 = v246;
                      *(v254 + 8) = v248;
                      v93 = v274;
                    }

                    else
                    {
                      if (v90 != enum case for FlowPage.offerItemDetail(_:))
                      {
                        if (v90 == enum case for FlowPage.debugSettings(_:))
                        {
                          sub_758B10();

                          v253 = v305;
                          *v95 = v304;
                          v95[2] = v253;
                          v93 = v274;
                          goto LABEL_25;
                        }

                        if (v90 == enum case for FlowPage.debugStorefrontPicker(_:) || v90 == enum case for FlowPage.debugTodayCardTriggers(_:))
                        {
                          goto LABEL_229;
                        }

                        v255 = enum case for FlowPage.personalizationTransparency(_:);

                        if (v152 == v255)
                        {
                          v93 = v274;
                          goto LABEL_25;
                        }

                        (*(v256 + 8))(v79, v297);
                        goto LABEL_61;
                      }

                      v249 = sub_75E230();
                      __chkstk_darwin(v249);
                      *(&v256 - 2) = v302;
                      sub_758B10();
                      v250 = v304;
                      if (!v304)
                      {
                        if (qword_93DF00 == -1)
                        {
                          goto LABEL_60;
                        }

                        goto LABEL_155;
                      }

                      sub_1ED18(v302, &v304, &unk_93FBD0);
                      if (v306)
                      {
                        sub_BE70(0, &qword_93E550);
                        v251 = swift_dynamicCast();
                        v252 = v303;
                        if (!v251)
                        {
                          v252 = 0;
                        }
                      }

                      else
                      {
                        sub_10A2C(&v304, &unk_93FBD0);
                        v252 = 0;
                      }

                      v254 = v261;
                      *v261 = v250;
                      *(v254 + 8) = v252;
                      v93 = v274;
                    }

                    swift_storeEnumTagMultiPayload();
                    sub_14B504(v254, v95, type metadata accessor for FlowDestination);
                    goto LABEL_26;
                  }

                  v220 = sub_7635D0();
                  __chkstk_darwin(v220);
                  *(&v256 - 2) = v302;
                  sub_758B10();
                  if (v304)
                  {
                    v221 = sub_7635C0();
                    v222 = sub_7635B0();
                    v224 = v223;
                    v225 = sub_7635A0();

                    *v95 = v221;
                    v95[1] = v222;
                    v95[2] = v224;
                    v95[3] = v225;
                    v93 = v274;
                    goto LABEL_25;
                  }
                }

                if (qword_93DF00 == -1)
                {
                  goto LABEL_60;
                }

                goto LABEL_155;
              }

              __chkstk_darwin(v90);
              *(&v256 - 2) = v302;
              sub_758B10();
              v211 = v304;
              if (!v304)
              {
                if (qword_93DF00 != -1)
                {
                  swift_once();
                }

                v219 = sub_768FF0();
                sub_BE38(v219, qword_9A0430);
                sub_BD88(&qword_93FD00);
                sub_7685F0();
                *(swift_allocObject() + 16) = xmmword_77E280;
                sub_768540();
                v306 = v297;
                sub_B1B4(&v304);
                sub_758AE0();
                sub_7685E0();
                sub_10A2C(&v304, &unk_93FBD0);
                sub_768E90();

                goto LABEL_61;
              }
            }

            v212 = *(&v304 + 1);

            *v95 = v211;
            v95[1] = v212;
            v93 = v274;
            goto LABEL_25;
          }

          sub_760D30();
          sub_758B10();
          v163 = v304;
          if (!v304)
          {
            if (qword_93DF00 == -1)
            {
              goto LABEL_60;
            }

            goto LABEL_155;
          }
        }
      }
    }

    *v95 = v163;
    v93 = v274;
    goto LABEL_25;
  }

  v91 = sub_759F10();
  __chkstk_darwin(v91);
  v92 = v302;
  *(&v256 - 2) = v302;
  sub_758B10();

  *v88 = v304;
  swift_storeEnumTagMultiPayload();
  v93 = v80;
  v94 = v88;
LABEL_27:
  v123 = v301;
  sub_14B504(v94, v301, type metadata accessor for FlowDestination);
  (*(v300 + 56))(v123, 0, 1, v93);
  return sub_10A2C(v92, &unk_93FBD0);
}

double sub_14B4E4@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_14B504(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_14B5A4()
{
  v0 = sub_768FD0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_768FF0();
  sub_161DC(v4, qword_946530);
  sub_BE38(v4, qword_946530);
  if (qword_93DEE8 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v0, qword_9A03E8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_768FE0();
}

void sub_14B6F8(void **a1, void **a2, void *a3, uint64_t a4)
{
  v35 = a4;
  v36 = a3;
  v6 = sub_768E70();
  __chkstk_darwin(v6 - 8);
  v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_75EC10();
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_768FF0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93C410 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v10, qword_946530);
  (*(v11 + 16))(v13, v14, v10);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_782440;
  sub_768540();
  v40 = sub_BE70(0, &unk_946608);
  aBlock = a1;
  v15 = a1;
  sub_7685C0();
  sub_BDD0(&aBlock);
  sub_768540();
  if (a2)
  {
    v16 = sub_BE70(0, &qword_946620);
    v17 = a2;
  }

  else
  {
    v17 = 0;
    v16 = 0;
    v38 = 0;
    v39 = 0;
  }

  aBlock = v17;
  v40 = v16;
  v18 = a2;
  sub_7685C0();
  sub_BDD0(&aBlock);
  sub_768E80();

  (*(v11 + 8))(v13, v10);
  if (a2)
  {
    v19 = v36;
    v20 = v18;
    sub_75A910();
    sub_768E40();
    sub_75EC00();
    v21 = sub_75EBF0();
    (*(v32 + 8))(v9, v34);
    [v20 setAnonymousMetrics:v21 & 1];
    v22 = v20;
    v23 = [objc_allocWithZone(AMSUIEngagementTaskViewController) initWithRequest:v22 bag:sub_75A910()];

    swift_unknownObjectRelease();
    v24 = [v23 canPresent];
    v25 = swift_allocObject();
    v25[2] = v22;
    v25[3] = v19;
    v26 = v35;
    v25[4] = v23;
    v25[5] = v26;
    v41 = sub_14E2E4;
    v42 = v25;
    aBlock = _NSConcreteStackBlock;
    v38 = 1107296256;
    v39 = sub_509F0;
    v40 = &unk_885510;
    v27 = _Block_copy(&aBlock);
    v28 = v22;
    v29 = v19;
    v30 = v23;

    [v24 addFinishBlock:v27];
    _Block_release(v27);
  }
}

id sub_14BC1C(char a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = sub_7685A0();
  __chkstk_darwin(v8 - 8);
  if (a1)
  {
    if (qword_93C410 != -1)
    {
      swift_once();
    }

    v9 = sub_768FF0();
    sub_BE38(v9, qword_946530);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768590();
    v20._countAndFlagsBits = 0xD000000000000040;
    v20._object = 0x80000000007D0F30;
    sub_768580(v20);
    v18 = sub_BE70(0, &qword_946620);
    v17[0] = a3;
    v10 = a3;
    sub_768560();
    sub_BDD0(v17);
    v21._countAndFlagsBits = 41;
    v21._object = 0xE100000000000000;
    sub_768580(v21);
    sub_7685B0();
    sub_768E80();

    v11 = *(a4 + OBJC_IVAR____TtC18ASMessagesProvider27JourneyDrivenOnboardingStep_engagementViewController);
    *(a4 + OBJC_IVAR____TtC18ASMessagesProvider27JourneyDrivenOnboardingStep_engagementViewController) = a5;

    return a5;
  }

  else
  {
    if (qword_93C410 != -1)
    {
      swift_once();
    }

    v13 = sub_768FF0();
    sub_BE38(v13, qword_946530);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768590();
    v22._object = 0x80000000007D0DE0;
    v22._countAndFlagsBits = 0xD000000000000016;
    sub_768580(v22);
    v18 = sub_BE70(0, &qword_946628);
    v17[0] = a5;
    v14 = a5;
    sub_768560();
    sub_BDD0(v17);
    v23._countAndFlagsBits = 0xD000000000000018;
    v23._object = 0x80000000007D0EE0;
    sub_768580(v23);
    v18 = sub_BE70(0, &qword_946620);
    v17[0] = a3;
    v15 = a3;
    sub_768560();
    sub_BDD0(v17);
    v24._countAndFlagsBits = 0xD000000000000023;
    v24._object = 0x80000000007D0F00;
    sub_768580(v24);
    sub_7685B0();
    sub_768E80();
  }
}

void sub_14C044(void **a1, void **a2, void **a3, uint64_t a4, void **a5, uint64_t a6, void *a7, uint64_t a8)
{
  v43 = a8;
  v44 = a7;
  v46 = a5;
  v47 = a6;
  v48 = a4;
  v45 = a2;
  v10 = sub_768E70();
  __chkstk_darwin(v10 - 8);
  v41 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_75EC10();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v39 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_768FF0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93C410 != -1)
  {
    swift_once();
  }

  v17 = sub_BE38(v13, qword_946530);
  (*(v14 + 16))(v16, v17, v13);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_783150;
  sub_768540();
  v52 = sub_BE70(0, &unk_946608);
  aBlock = a1;
  v18 = a1;
  sub_7685C0();
  sub_BDD0(&aBlock);
  sub_768540();
  v19 = v45;
  if (v45)
  {
    v20 = sub_BE70(0, &qword_946620);
    v21 = v19;
  }

  else
  {
    v21 = 0;
    v20 = 0;
    v50 = 0;
    v51 = 0;
  }

  aBlock = v21;
  v52 = v20;
  v37 = v19;
  sub_7685C0();
  sub_BDD0(&aBlock);
  sub_768540();
  v52 = &type metadata for String;
  aBlock = a3;
  v38 = a3;
  v22 = v48;
  v50 = v48;

  sub_7685C0();
  sub_BDD0(&aBlock);
  sub_768540();
  v52 = &type metadata for String;
  aBlock = v46;
  v50 = v47;

  sub_7685C0();
  sub_BDD0(&aBlock);
  sub_768E80();

  (*(v14 + 8))(v16, v13);
  if (v19)
  {
    v23 = v44;
    v24 = v37;
    sub_75A910();
    sub_768E40();
    v25 = v39;
    sub_75EC00();
    v26 = sub_75EBF0();
    (*(v40 + 8))(v25, v42);
    [v24 setAnonymousMetrics:v26 & 1];
    v27 = v24;
    v28 = [objc_allocWithZone(AMSUIEngagementTaskViewController) initWithRequest:v27 bag:sub_75A910()];

    swift_unknownObjectRelease();
    v29 = [v28 canPresent];
    v30 = swift_allocObject();
    v31 = v38;
    v30[2] = v27;
    v30[3] = v31;
    v30[4] = v22;
    v30[5] = v23;
    v32 = v43;
    v30[6] = v28;
    v30[7] = v32;
    v53 = sub_14E27C;
    v54 = v30;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v51 = sub_509F0;
    v52 = &unk_885470;
    v33 = _Block_copy(&aBlock);
    v34 = v27;

    v35 = v23;
    v36 = v28;

    [v29 addFinishBlock:v33];
    _Block_release(v33);
  }
}

id sub_14C648(char a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = sub_7685A0();
  __chkstk_darwin(v12 - 8);
  if (a1)
  {
    if (qword_93C410 != -1)
    {
      swift_once();
    }

    v13 = sub_768FF0();
    sub_BE38(v13, qword_946530);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768590();
    v25._countAndFlagsBits = 0xD000000000000040;
    v25._object = 0x80000000007D0E50;
    sub_768580(v25);
    v23 = sub_BE70(0, &qword_946620);
    v21 = a3;
    v14 = a3;
    sub_768560();
    sub_BDD0(&v21);
    v26._object = 0x80000000007D0EA0;
    v26._countAndFlagsBits = 0xD000000000000010;
    sub_768580(v26);
    v23 = &type metadata for String;
    v21 = a4;
    v22 = a5;

    sub_768560();
    sub_BDD0(&v21);
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    sub_768580(v27);
    sub_7685B0();
    sub_768E80();

    v15 = *(a6 + OBJC_IVAR____TtC18ASMessagesProvider27JourneyDrivenOnboardingStep_engagementViewController);
    *(a6 + OBJC_IVAR____TtC18ASMessagesProvider27JourneyDrivenOnboardingStep_engagementViewController) = a7;

    return a7;
  }

  else
  {
    if (qword_93C410 != -1)
    {
      swift_once();
    }

    v17 = sub_768FF0();
    sub_BE38(v17, qword_946530);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768590();
    v28._countAndFlagsBits = 0xD000000000000016;
    v28._object = 0x80000000007D0DE0;
    sub_768580(v28);
    v23 = sub_BE70(0, &qword_946628);
    v21 = a7;
    v18 = a7;
    sub_768560();
    sub_BDD0(&v21);
    v29._countAndFlagsBits = 0xD000000000000018;
    v29._object = 0x80000000007D0E00;
    sub_768580(v29);
    v23 = sub_BE70(0, &qword_946620);
    v21 = a3;
    v19 = a3;
    sub_768560();
    sub_BDD0(&v21);
    v30._countAndFlagsBits = 0x63616C70206E6920;
    v30._object = 0xEF203A746E656D65;
    sub_768580(v30);
    v23 = &type metadata for String;
    v21 = a4;
    v22 = a5;

    sub_768560();
    sub_BDD0(&v21);
    v31._countAndFlagsBits = 0xD000000000000025;
    v31._object = 0x80000000007D0E20;
    sub_768580(v31);
    sub_7685B0();
    sub_768E80();
  }
}

uint64_t sub_14CBDC(void *a1, void *a2)
{
  v4 = sub_768FF0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93C410 != -1)
  {
    swift_once();
  }

  v8 = sub_BE38(v4, qword_946530);
  (*(v5 + 16))(v7, v8, v4);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_782440;
  sub_768540();
  v15 = sub_BE70(0, &unk_946608);
  v14[0] = a1;
  v9 = a1;
  sub_7685C0();
  sub_BDD0(v14);
  sub_768540();
  if (a2)
  {
    v10 = sub_BE70(0, &qword_946618);
    v11 = a2;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v14[1] = 0;
    v14[2] = 0;
  }

  v14[0] = v11;
  v15 = v10;
  v12 = a2;
  sub_7685C0();
  sub_BDD0(v14);
  sub_768E80();

  return (*(v5 + 8))(v7, v4);
}

void sub_14CEB0(void *a1, int a2, void *a3, void *a4, void *aBlock, void (*a6)(id, void *))
{
  v10 = _Block_copy(aBlock);
  v11 = a3;
  v12 = a4;
  v13 = a1;
  a6(v11, a4);
  _Block_release(v10);
}

uint64_t sub_14CF54(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a3;
  ObjectType = swift_getObjectType();
  v11 = sub_768380();
  v29 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_7683C0();
  v14 = *(v28 - 8);
  __chkstk_darwin(v28);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BE70(0, &qword_940340);
  v27 = sub_769970();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v18 = ObjectType;
  v17[4] = v26;
  v17[5] = a4;
  v17[6] = a5;
  v17[7] = a6;
  v17[8] = v18;
  aBlock[4] = sub_14D820;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_885380;
  v19 = _Block_copy(aBlock);
  v20 = a2;

  v21 = a1;

  sub_7683A0();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_14D84C(&qword_9406E0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_BD88(&qword_940350);
  sub_4C874();
  sub_76A5A0();
  v22 = v27;
  sub_769980();
  _Block_release(v19);

  (*(v29 + 8))(v13, v11);
  return (*(v14 + 8))(v16, v28);
}

uint64_t sub_14D264(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v21 = a5;
  v22 = a6;
  v20 = a3;
  v9 = sub_768FF0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93C410 != -1)
  {
    swift_once();
  }

  v13 = sub_BE38(v9, qword_946530);
  (*(v10 + 16))(v12, v13, v9);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_783150;
  sub_768540();
  v26 = sub_BE70(0, &unk_946608);
  v23 = a1;
  v14 = a1;
  sub_7685C0();
  sub_BDD0(&v23);
  sub_768540();
  if (a2)
  {
    v15 = sub_BE70(0, &qword_946618);
    v16 = a2;
  }

  else
  {
    v16 = 0;
    v15 = 0;
    v24 = 0;
    v25 = 0;
  }

  v23 = v16;
  v26 = v15;
  v17 = a2;
  sub_7685C0();
  sub_BDD0(&v23);
  sub_768540();
  v26 = &type metadata for String;
  v23 = v20;
  v24 = a4;

  sub_7685C0();
  sub_BDD0(&v23);
  sub_768540();
  v26 = &type metadata for String;
  v23 = v21;
  v24 = v22;

  sub_7685C0();
  sub_BDD0(&v23);
  sub_768E80();

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_14D7D0()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_14D834(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_14D84C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_14D894(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_768380();
  v20 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_7683C0();
  v9 = *(v19 - 8);
  __chkstk_darwin(v19);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BE70(0, &qword_940340);
  v12 = sub_769970();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = v2;
  v13[5] = ObjectType;
  aBlock[4] = sub_14E290;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_8854C0;
  v14 = _Block_copy(aBlock);
  v15 = a2;
  v16 = v2;
  v17 = a1;

  sub_7683A0();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_14D84C(&qword_9406E0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_BD88(&qword_940350);
  sub_4C874();
  sub_76A5A0();
  sub_769980();
  _Block_release(v14);

  (*(v20 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v19);
}

uint64_t sub_14DB80(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a3;
  v29 = a5;
  ObjectType = swift_getObjectType();
  v11 = sub_768380();
  v33 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_7683C0();
  v31 = *(v14 - 8);
  v32 = v14;
  __chkstk_darwin(v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BE70(0, &qword_940340);
  v30 = sub_769970();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v18 = v29;
  v17[4] = v28;
  v17[5] = a4;
  v17[6] = v18;
  v17[7] = a6;
  v19 = ObjectType;
  v17[8] = v6;
  v17[9] = v19;
  aBlock[4] = sub_14E218;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_885420;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  v22 = v6;
  v23 = a1;

  sub_7683A0();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_14D84C(&qword_9406E0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_BD88(&qword_940350);
  sub_4C874();
  sub_76A5A0();
  v24 = v30;
  sub_769980();
  _Block_release(v20);

  (*(v33 + 8))(v13, v11);
  return (*(v31 + 8))(v16, v32);
}

uint64_t sub_14DE94(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_768380();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_7683C0();
  v9 = *(v19 - 8);
  __chkstk_darwin(v19);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BE70(0, &qword_940340);
  v12 = sub_769970();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = ObjectType;
  aBlock[4] = sub_14E1B4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_8853D0;
  v14 = _Block_copy(aBlock);
  v15 = a2;
  v16 = a1;

  sub_7683A0();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_14D84C(&qword_9406E0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_BD88(&qword_940350);
  sub_4C874();
  sub_76A5A0();
  sub_769980();
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v19);
}

uint64_t sub_14E174()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_14E1C0()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_14E22C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_14E29C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_14E31C()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_75ABC0();
  sub_161DC(v4, qword_99B278);
  v19 = sub_BE38(v4, qword_99B278);
  if (qword_93D600 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v17 = sub_BE38(v5, qword_99E9F8);
  v6 = *(v5 - 8);
  v16 = *(v6 + 16);
  v18 = v6 + 16;
  v16(v3, v17, v5);
  v7 = enum case for FontSource.useCase(_:);
  v15 = v1[13];
  v15(v3, enum case for FontSource.useCase(_:), v0);
  v8 = sub_766CA0();
  v26[3] = v8;
  v26[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v26);
  v24 = v0;
  v25 = &protocol witness table for FontSource;
  v9 = sub_B1B4(v23);
  v10 = v1[2];
  v10(v9, v3, v0);
  sub_766CB0();
  v11 = v1[1];
  v11(v3, v0);
  v16(v3, v17, v5);
  v15(v3, v7, v0);
  v24 = v8;
  v25 = &protocol witness table for StaticDimension;
  sub_B1B4(v23);
  v21 = v0;
  v22 = &protocol witness table for FontSource;
  v12 = sub_B1B4(v20);
  v10(v12, v3, v0);
  sub_766CB0();
  v11(v3, v0);
  v21 = &type metadata for Double;
  v22 = &protocol witness table for Double;
  v20[0] = 0x4018000000000000;
  return sub_75ABB0();
}

uint64_t sub_14E60C()
{
  sub_BE70(0, &qword_93E540);
  result = sub_769FF0();
  qword_946630 = result;
  return result;
}

uint64_t sub_14E650()
{
  sub_BE70(0, &qword_93E540);
  result = sub_769FE0();
  qword_946638 = result;
  return result;
}

uint64_t sub_14E694()
{
  v0 = sub_759950();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.chevronForward(_:), v0, v2);
  v5 = objc_opt_self();
  v6 = UIFontTextStyleFootnote;
  v7 = [v5 configurationWithTextStyle:v6 scale:1];

  v8 = sub_759930();
  result = (*(v1 + 8))(v4, v0);
  qword_99B290 = v8;
  return result;
}

char *sub_14E7E4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v43 = sub_7674E0();
  v10 = *(v43 - 8);
  __chkstk_darwin(v43);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_767510();
  v44 = *(v13 - 8);
  v45 = v13;
  __chkstk_darwin(v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_760AD0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v20 - 8);
  v22 = &v42 - v21;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_chevronView] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_hasChevron] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_textLightensOnHighlight] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_isHighlighted] = 0;
  if (qword_93D600 != -1)
  {
    swift_once();
  }

  v23 = sub_7666D0();
  v24 = sub_BE38(v23, qword_99E9F8);
  v25 = *(v23 - 8);
  (*(v25 + 16))(v22, v24, v23);
  (*(v25 + 56))(v22, 0, 1, v23);
  (*(v17 + 104))(v19, enum case for DirectionalTextAlignment.none(_:), v16);
  v26 = objc_allocWithZone(sub_75BB20());
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_textLabel] = sub_75BB10();
  (*(v10 + 104))(v12, enum case for Separator.Position.top(_:), v43);
  v48[3] = sub_766970();
  v48[4] = &protocol witness table for ZeroDimension;
  sub_B1B4(v48);
  sub_766960();
  sub_7674F0();
  v27 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v28 = OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_separator;
  swift_beginAccess();
  v29 = *(v44 + 40);
  v30 = v27;
  v29(&v27[v28], v15, v45);
  swift_endAccess();

  *&v5[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_separatorView] = v30;
  v47.receiver = v5;
  v47.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v35 = v31;
  [v35 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v36 = OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_textLabel;
  v37 = qword_93C420;
  v38 = *&v35[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_textLabel];
  if (v37 != -1)
  {
    swift_once();
  }

  [v38 setTextColor:qword_946630];

  v39 = *&v35[v36];
  sub_75BAD0();

  [v35 addSubview:*&v35[v36]];
  [v35 addSubview:*&v35[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_separatorView]];
  sub_BD88(&qword_9477F0);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_77B6D0;
  *(v40 + 32) = sub_7676F0();
  *(v40 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_769F40();

  swift_unknownObjectRelease();

  return v35;
}

double sub_14EE6C()
{
  v1 = sub_75ABC0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_75ABE0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93C418 != -1)
  {
    swift_once();
  }

  v9 = sub_BE38(v1, qword_99B278);
  (*(v2 + 16))(v4, v9, v1);
  v10 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_textLabel);
  v19[8] = sub_75BB20();
  v19[9] = &protocol witness table for UILabel;
  v19[5] = v10;
  v11 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_chevronView);
  if (v11)
  {
    v12 = sub_BE70(0, &qword_93E550);
    v13 = &protocol witness table for UIView;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v19[1] = 0;
    v19[2] = 0;
  }

  v19[0] = v11;
  v19[3] = v12;
  v19[4] = v13;
  v14 = v10;
  v15 = v11;
  sub_75ABD0();
  sub_14F7F4();
  sub_7665A0();
  v17 = v16;
  (*(v6 + 8))(v8, v5);
  return v17;
}

uint64_t sub_14F128()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v39 = sub_767510();
  v3 = *(v39 - 8);
  __chkstk_darwin(v39);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_7664F0();
  v6 = *(v35 - 8);
  __chkstk_darwin(v35);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_75ABC0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_75ABE0();
  v36 = *(v38 - 8);
  *&v13 = __chkstk_darwin(v38).n128_u64[0];
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48.receiver = v1;
  v48.super_class = ObjectType;
  v37 = ObjectType;
  objc_msgSendSuper2(&v48, "layoutSubviews", v13);
  if (qword_93C418 != -1)
  {
    swift_once();
  }

  v16 = sub_BE38(v9, qword_99B278);
  (*(v10 + 16))(v12, v16, v9);
  v17 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_textLabel];
  v46 = sub_75BB20();
  v47 = &protocol witness table for UILabel;
  v45 = v17;
  v18 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_chevronView];
  if (v18)
  {
    v19 = sub_BE70(0, &qword_93E550);
    v20 = &protocol witness table for UIView;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v41 = 0;
    v42 = 0;
  }

  v40 = v18;
  v43 = v19;
  v44 = v20;
  v21 = v17;
  v22 = v18;
  sub_75ABD0();
  sub_75D650();
  sub_75ABA0();
  (*(v6 + 8))(v8, v35);
  v23 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_separatorView];
  [v1 bounds];
  v24 = OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_separator;
  swift_beginAccess();
  v25 = v39;
  (*(v3 + 16))(v5, &v23[v24], v39);
  sub_7674C0();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  (*(v3 + 8))(v5, v25);
  [v23 setFrame:{v27, v29, v31, v33}];
  return (*(v36 + 8))(v15, v38);
}

void sub_14F5D4(char a1)
{
  if (v1[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_hasChevron] != (a1 & 1))
  {
    if (v1[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_hasChevron])
    {
      v2 = v1;
      if (qword_93C430 != -1)
      {
        swift_once();
      }

      v3 = [objc_allocWithZone(UIImageView) initWithImage:qword_99B290];
      sub_BE70(0, &qword_93E540);
      v4 = sub_76A020();
      [v3 setTintColor:v4];

      v5 = OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_chevronView;
      v6 = v2;
      v7 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_chevronView];
      if (v7)
      {
        [v7 removeFromSuperview];
        v8 = *&v2[v5];
      }

      else
      {
        v8 = 0;
      }

      *&v6[v5] = v3;
      v11 = v3;

      [v6 addSubview:v11];
      [v6 setNeedsLayout];
      v10 = v11;
    }

    else
    {
      v9 = OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_chevronView;
      v10 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_chevronView];
      if (v10)
      {
        [v10 removeFromSuperview];
        v10 = *&v1[v9];
      }

      *&v1[v9] = 0;
    }
  }
}

unint64_t sub_14F7F4()
{
  result = qword_951400;
  if (!qword_951400)
  {
    sub_75ABE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_951400);
  }

  return result;
}

uint64_t sub_14F84C()
{
  v1 = sub_7652D0();
  __chkstk_darwin(v1 - 8);
  if (sub_758630())
  {
    sub_764BC0();
  }

  else
  {
    result = sub_758650();
    if (!result)
    {
      return result;
    }
  }

  v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_artworkView);
  if (qword_93E068 != -1)
  {
    swift_once();
  }

  v4 = sub_7632B0();
  sub_BE38(v4, qword_9A06C8);
  sub_763210();
  [v3 contentMode];
  sub_765330();
  sub_7652E0();
  sub_7591B0();
  [v3 setContentMode:sub_765140()];
  sub_75DEF0();
  sub_7591F0();
  if (!sub_7651A0())
  {
    sub_396E8();
    sub_76A030();
  }

  sub_759070();
  sub_759210();
  sub_14FA38();
  sub_75A050();
}

unint64_t sub_14FA38()
{
  result = qword_945810;
  if (!qword_945810)
  {
    sub_759210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_945810);
  }

  return result;
}

double *sub_14FA90()
{
  v0 = sub_765240();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _swiftEmptyArrayStorage;
  if (sub_758630())
  {
    sub_764BC0();
  }

  else if (!sub_758650())
  {
    return _swiftEmptyArrayStorage;
  }

  sub_765250();
  sub_765210();
  (*(v1 + 8))(v3, v0);
  if (qword_93E068 != -1)
  {
    swift_once();
  }

  v4 = sub_7632B0();
  sub_BE38(v4, qword_9A06C8);
  sub_763210();
  sub_765330();

  sub_769440();
  if (*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v7 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  sub_769500();

  return v7;
}

id sub_14FF04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArticleContainerViewController.ContainerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_14FFC4()
{
  type metadata accessor for ArticleContainerViewController.ContainerView();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = &v4[OBJC_IVAR____TtCC18ASMessagesProvider30ArticleContainerViewControllerP33_F28B2BC817961B9098740FBAC1DC899A13ContainerView_frameUpdatedCallback];
  v3 = *&v4[OBJC_IVAR____TtCC18ASMessagesProvider30ArticleContainerViewControllerP33_F28B2BC817961B9098740FBAC1DC899A13ContainerView_frameUpdatedCallback];
  *v2 = sub_150804;
  v2[1] = v1;

  sub_F704(v3);

  [v0 setView:v4];
}

void sub_1500A0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1500F4();
  }
}

void sub_1500F4()
{
  v1 = v0;
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider30ArticleContainerViewController_allowTraitCollectionOverrides] != 1 || (v2 = [v0 traitCollection], v3 = sub_7699B0(), v2, (v3 & 1) == 0))
  {
    v15 = &v1[OBJC_IVAR____TtC18ASMessagesProvider30ArticleContainerViewController_previousShouldOverrideTraitCollections];
    if ((v1[OBJC_IVAR____TtC18ASMessagesProvider30ArticleContainerViewController_previousShouldOverrideTraitCollections] & 1) == 0)
    {
      return;
    }

    goto LABEL_8;
  }

  v4 = [v1 view];
  if (!v4)
  {
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v22.origin.x = v7;
  v22.origin.y = v9;
  v22.size.width = v11;
  v22.size.height = v13;
  Width = CGRectGetWidth(v22);
  v15 = &v1[OBJC_IVAR____TtC18ASMessagesProvider30ArticleContainerViewController_previousShouldOverrideTraitCollections];
  if (Width < 650.0 != v1[OBJC_IVAR____TtC18ASMessagesProvider30ArticleContainerViewController_previousShouldOverrideTraitCollections])
  {
    if (Width < 650.0)
    {
      v16 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30ArticleContainerViewController_wrapperViewController];
      v17 = objc_opt_self();
      v18 = [v17 traitCollectionWithHorizontalSizeClass:2];
      [v16 setOverrideTraitCollection:v18 forChildViewController:*&v1[OBJC_IVAR____TtC18ASMessagesProvider30ArticleContainerViewController_articleViewController]];

      v19 = 1;
      v20 = [v17 traitCollectionWithHorizontalSizeClass:1];
      [v1 setOverrideTraitCollection:v20 forChildViewController:v16];

LABEL_9:
      *v15 = v19;
      return;
    }

LABEL_8:
    v21 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30ArticleContainerViewController_wrapperViewController];
    [v21 setOverrideTraitCollection:0 forChildViewController:*&v1[OBJC_IVAR____TtC18ASMessagesProvider30ArticleContainerViewController_articleViewController]];
    [v1 setOverrideTraitCollection:0 forChildViewController:v21];
    v19 = 0;
    goto LABEL_9;
  }
}

void sub_150350()
{
  v20.receiver = v0;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30ArticleContainerViewController_wrapperViewController];
  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  v4 = [v0 view];
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v3 setFrame:{v7, v9, v11, v13}];
  v14 = [v1 view];
  if (!v14)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v15 = v14;
  [v14 setAutoresizingMask:18];

  v16 = [v0 view];
  if (!v16)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = v16;
  v18 = [v1 view];
  if (v18)
  {
    v19 = v18;
    [v17 addSubview:v18];

    return;
  }

LABEL_11:
  __break(1u);
}

id sub_150700(void *a1, void *a2)
{
  v4 = type metadata accessor for ArticleContainerViewController();
  v5 = objc_allocWithZone(v4);
  v5[OBJC_IVAR____TtC18ASMessagesProvider30ArticleContainerViewController_allowTraitCollectionOverrides] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider30ArticleContainerViewController_previousShouldOverrideTraitCollections] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider30ArticleContainerViewController_wrapperViewController] = a1;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider30ArticleContainerViewController_articleViewController] = a2;
  v10.receiver = v5;
  v10.super_class = v4;
  v6 = a1;
  v7 = a2;
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", 0, 0);
  [v8 addChildViewController:{v6, v10.receiver, v10.super_class}];

  return v8;
}

uint64_t sub_1507CC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_15080C(uint64_t a1)
{
  v29 = sub_10DD04(_swiftEmptyArrayStorage);
  v2 = *(a1 + 16);
  if (!v2)
  {
    return a1;
  }

  v3 = 0;
  while (v3 < *(a1 + 16))
  {
    v4 = *(a1 + 32 + 8 * v3);
    if (!*(v4 + 16))
    {
      goto LABEL_5;
    }

    v5 = sub_3DF2F8(0x6973736572706D69, 0xEC00000064496E6FLL);
    if ((v6 & 1) == 0)
    {
      goto LABEL_4;
    }

    sub_132B4(*(v4 + 56) + 32 * v5, v32);
    sub_13310(v32, v33);
    if (!*(v4 + 16) || (v7 = sub_3DF2F8(1701667182, 0xE400000000000000), (v8 & 1) == 0) || (sub_132B4(*(v4 + 56) + 32 * v7, v32), !swift_dynamicCast()))
    {
      sub_BEB8(v33);
LABEL_4:

      goto LABEL_5;
    }

    *&v32[0] = 0;
    *(&v32[0] + 1) = 0xE000000000000000;
    sub_76A7F0();
    v10 = *(&v32[0] + 1);
    v9 = *&v32[0];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v32[0] = v29;
    v28 = v9;
    v13 = sub_3DF2F8(v9, v10);
    v14 = *(v29 + 16);
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_25;
    }

    v17 = v12;
    if (*(v29 + 24) >= v16)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_45B7AC();
      }
    }

    else
    {
      sub_4553C4(v16, isUniquelyReferenced_nonNull_native);
      v18 = sub_3DF2F8(v28, v10);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_27;
      }

      v13 = v18;
    }

    v20 = *&v32[0];
    v29 = *&v32[0];
    if (v17)
    {
      v21 = (*(*&v32[0] + 56) + 16 * v13);
      *v21 = v30;
      v21[1] = v31;
    }

    else
    {
      *(*&v32[0] + 8 * (v13 >> 6) + 64) |= 1 << v13;
      v22 = (v20[6] + 16 * v13);
      *v22 = v28;
      v22[1] = v10;
      v23 = (v20[7] + 16 * v13);
      *v23 = v30;
      v23[1] = v31;
      v24 = v20[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_26;
      }

      v20[2] = v26;
    }

    sub_BEB8(v33);

LABEL_5:
    if (v2 == ++v3)
    {
      return a1;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_76A9B0();
  __break(1u);
  return result;
}

uint64_t sub_150B04(uint64_t a1, uint64_t a2)
{
  sub_38EE0(a1, &v8);
  if (v9)
  {
    sub_13310(&v8, v10);
    *&v8 = 0;
    *(&v8 + 1) = 0xE000000000000000;
    sub_76A7F0();
    if (*(a2 + 16))
    {
      v3 = sub_3DF2F8(v8, *(&v8 + 1));
      v5 = v4;

      if (v5)
      {
        v6 = *(*(a2 + 56) + 16 * v3);

        sub_BEB8(v10);
        return v6;
      }
    }

    else
    {
    }

    sub_BEB8(v10);
  }

  else
  {
    sub_BDD0(&v8);
  }

  return 0;
}

__n128 sub_150BF8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_150C34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_150C7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_150CF8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_150D0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_150D54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_150DB4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  sub_B170((v4 + 64), *(v4 + 88));
  sub_7673F0();
  v10 = v9;
  v12 = v11;
  v14 = v13 + 4.0;
  v31.origin.x = a1;
  v31.origin.y = a2;
  v31.size.width = a3;
  v31.size.height = a4;
  MinX = CGRectGetMinX(v31);
  sub_15134C(v4, v29);
  sub_B170(v29, v30);
  sub_766710();
  v16 = v15;
  sub_BEB8(v29);
  v32.origin.y = v16 - v12;
  v32.origin.x = MinX;
  v32.size.width = v14;
  v32.size.height = v10;
  v17 = CGRectGetMaxX(v32) + *(v4 + 40);
  sub_B170((v4 + 104), *(v4 + 128));
  v33.origin.x = a1;
  v33.origin.y = a2;
  v33.size.width = a3;
  v33.size.height = a4;
  CGRectGetWidth(v33);
  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  CGRectGetHeight(v34);
  sub_7673F0();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_15134C(v4, v29);
  sub_B170(v29, v30);
  sub_766710();
  v25 = v24;
  sub_BEB8(v29);
  v35.origin.x = v17;
  v35.origin.y = v25 - v23;
  v35.size.width = v19;
  v35.size.height = v21;
  CGRectGetMaxX(v35);
  v36.origin.x = a1;
  v36.origin.y = a2;
  v36.size.width = a3;
  v36.size.height = a4;
  CGRectGetWidth(v36);
  v37.origin.x = a1;
  v37.origin.y = a2;
  v37.size.width = a3;
  v37.size.height = a4;
  CGRectGetWidth(v37);
  sub_B170((v4 + 144), *(v4 + 168));
  v38.origin.x = a1;
  v38.origin.y = a2;
  v38.size.width = a3;
  v38.size.height = a4;
  CGRectGetHeight(v38);
  sub_7673F0();
  sub_15134C(v4, v29);
  sub_B170(v29, v30);
  sub_766710();
  sub_BEB8(v29);
  sub_B170((v4 + 64), *(v4 + 88));
  sub_769CA0();
  sub_7673E0();
  sub_B170((v4 + 104), *(v4 + 128));
  sub_769CA0();
  sub_7673E0();
  sub_B170((v4 + 144), *(v4 + 168));
  sub_769CA0();
  return sub_7673E0();
}

double sub_151164(double a1)
{
  sub_15134C(v1, v4);
  sub_B170(v4, v4[3]);
  sub_766710();
  sub_BEB8(v4);
  return a1;
}

uint64_t sub_1511F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_151384();

  return CustomLayout._eraseToAnyForTesting(with:)(a1, a2, v4);
}

unint64_t sub_15124C()
{
  result = qword_946710;
  if (!qword_946710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_946710);
  }

  return result;
}

unint64_t sub_1512A4()
{
  result = qword_946718;
  if (!qword_946718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_946718);
  }

  return result;
}

unint64_t sub_151384()
{
  result = qword_946720;
  if (!qword_946720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_946720);
  }

  return result;
}

unint64_t sub_1513F0()
{
  result = qword_946728;
  if (!qword_946728)
  {
    sub_763CF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_946728);
  }

  return result;
}

uint64_t sub_151448(void *a1, uint64_t a2, uint64_t a3)
{
  v26[1] = a3;
  v5 = sub_7687C0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_7685A0();
  __chkstk_darwin(v9 - 8);
  __chkstk_darwin(v10);
  v11 = sub_768FF0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v15 = qword_93DF00;
    v16 = a1;
    if (v15 != -1)
    {
      swift_once();
    }

    sub_BE38(v11, qword_9A0430);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768590();
    v29._object = 0x80000000007D1370;
    v29._countAndFlagsBits = 0xD000000000000038;
    sub_768580(v29);
    *(&v28 + 1) = sub_151F44();
    *&v27 = v16;
    v17 = v16;
    sub_768560();
    sub_BDD0(&v27);
    v30._countAndFlagsBits = 0x745368747561202CLL;
    v30._object = 0xEE00203A73757461;
    sub_768580(v30);
    v18 = [v17 authorizationStatus];
    type metadata accessor for UNAuthorizationStatus(0);
    *(&v28 + 1) = v19;
    *&v27 = v18;
    sub_768560();
    sub_BDD0(&v27);
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    sub_768580(v31);
    sub_7685B0();
    sub_768E80();

    (*(v6 + 104))(v8, enum case for ActionOutcome.performed(_:), v5);
    sub_768F60();

    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    if (qword_93DF00 != -1)
    {
      swift_once();
    }

    v21 = sub_BE38(v11, qword_9A0430);
    (*(v12 + 16))(v14, v21, v11);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768590();
    v32._countAndFlagsBits = 0xD00000000000003BLL;
    v32._object = 0x80000000007D1330;
    sub_768580(v32);
    v27 = 0u;
    v28 = 0u;
    sub_768560();
    sub_BDD0(&v27);
    v33._countAndFlagsBits = 0x3A726F727265202CLL;
    v33._object = 0xE900000000000020;
    sub_768580(v33);
    if (a2)
    {
      swift_getErrorValue();
      v22 = sub_76A9C0();
      v24 = &type metadata for String;
    }

    else
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      *&v28 = 0;
    }

    *&v27 = v22;
    *(&v27 + 1) = v23;
    *(&v28 + 1) = v24;
    sub_768560();
    sub_BDD0(&v27);
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    sub_768580(v34);
    sub_7685B0();
    sub_768E80();

    (*(v12 + 8))(v14, v11);
    sub_151ED0();
    swift_allocError();
    *v25 = 1;
    sub_768F50();
  }
}

void sub_151A34(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_151AC4()
{
  sub_BD88(&qword_94DDC0);
  v0 = sub_768F90();
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    if (qword_93DF00 != -1)
    {
      swift_once();
    }

    v3 = sub_768FF0();
    sub_BE38(v3, qword_9A0430);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768E80();

    v4 = [objc_allocWithZone(AMSUserNotificationAuthorizationOptions) init];
    [v4 setUserInitiated:1];
    v5 = [objc_allocWithZone(AMSUserNotificationAuthorizationTask) initWithBundleIdentifier:v2 options:v4];

    v6 = [v5 requestAuthorization];
    v11[4] = sub_151F24;
    v11[5] = v0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_151A34;
    v11[3] = &unk_8856A8;
    v7 = _Block_copy(v11);

    [v6 addFinishBlock:v7];
    _Block_release(v7);
  }

  else
  {
    if (qword_93DF00 != -1)
    {
      swift_once();
    }

    v8 = sub_768FF0();
    sub_BE38(v8, qword_9A0430);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768E80();

    sub_151ED0();
    swift_allocError();
    *v9 = 0;
    sub_768F50();
  }

  return v0;
}

unint64_t sub_151ED0()
{
  result = qword_946730;
  if (!qword_946730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_946730);
  }

  return result;
}

uint64_t sub_151F2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_151F44()
{
  result = qword_946738;
  if (!qword_946738)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_946738);
  }

  return result;
}

unint64_t sub_151FA4()
{
  result = qword_946740;
  if (!qword_946740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_946740);
  }

  return result;
}

__n128 sub_151FF8@<Q0>(uint64_t *a1@<X8>)
{
  v10 = *(v1 + 32);
  v11 = *(v1 + 48);
  v12 = *(v1 + 64);
  v13 = *(v1 + 80);
  v8 = *v1;
  v9 = *(v1 + 16);
  if (*(v1 + 240) == 1)
  {
    a1[3] = &type metadata for BannerCollectionViewCellLayout.VerticalBannerLayout;
    a1[4] = sub_13CB5C();
  }

  else
  {
    a1[3] = &type metadata for BannerCollectionViewCellLayout.HorizontalBannerLayout;
    a1[4] = sub_13CAB0();
  }

  v3 = swift_allocObject();
  sub_134D8(v1 + 96, v3 + 112);
  sub_867FC(v1 + 136, v3 + 152);
  v4 = *(v1 + 176);
  v5 = *(v1 + 184);
  v6 = *(v1 + 192);
  sub_867FC(v1 + 200, v3 + 216);
  *(v3 + 48) = v10;
  *(v3 + 64) = v11;
  *(v3 + 80) = v12;
  *(v3 + 96) = v13;
  result = v8;
  *(v3 + 16) = v8;
  *(v3 + 32) = v9;
  *(v3 + 192) = v4;
  *(v3 + 200) = v5;
  *(v3 + 208) = v6;
  *a1 = v3;
  return result;
}

uint64_t sub_15210C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_152124(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

__n128 sub_152178(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_1521C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 241))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_15220C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
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
    *(result + 240) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 241) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 241) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1522A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1522EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_152378(double a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = *(v1 + 5);
  v29 = *(v1 + 3);
  v30 = v5;
  v31 = v1[7];
  v7 = v1[8];
  v6 = v1[9];
  v8 = v1[10];
  v9 = v1[11];
  sub_134D8((v1 + 12), v26);
  sub_867FC((v1 + 17), v27);
  v10 = v1[22];
  v11 = v1[23];
  v12 = *(v1 + 192);
  v17[0] = v2;
  v17[1] = v3;
  v17[2] = v4;
  v18 = v29;
  v19 = v30;
  v20 = v31;
  v21 = v7;
  v22 = v6;
  v23 = v8;
  v24 = v9;
  v25 = 0;
  v27[5] = v10;
  v27[6] = v11;
  v28 = v12;
  if ((v12 & 1) == 0)
  {
    sub_867FC(v27, &v15);
    sub_8699C(&v15);
  }

  sub_B170(v26, v26[3]);
  sub_7673F0();
  sub_153320(v17);
  sub_867FC((v1 + 25), &v15);
  if (v16)
  {
    sub_10914(&v15, v17);
    sub_B170(v17, v18);
    sub_7673F0();
    sub_BEB8(v17);
  }

  else
  {
    sub_8699C(&v15);
  }

  return a1;
}

uint64_t sub_15257C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  sub_769BB0();
  v14 = sub_705B8(a2, a3, a4, a5, v12, v13);
  v16 = v15;
  v52 = v18;
  v53 = v17;
  v19 = *(v5 + 1);
  v78 = *v5;
  v79 = v19;
  v20 = *(v5 + 3);
  v80 = *(v5 + 2);
  v81 = v20;
  v21 = v5[8];
  v22 = *(v5 + 9);
  v77 = *(v5 + 5);
  sub_134D8((v5 + 12), v64);
  sub_867FC((v5 + 17), v66);
  v23 = v5[22];
  v24 = v6[23];
  v25 = *(v6 + 192);
  v59[0] = v78;
  v59[1] = v79;
  v59[2] = v80;
  v59[3] = v81;
  v60 = v21;
  v61 = v22;
  v62 = v77;
  v63 = 0;
  *&v66[5] = v23;
  *&v66[6] = v24;
  v26 = 0.0;
  v27 = 0.0;
  v67 = v25;
  if ((v25 & 1) == 0)
  {
    sub_867FC(v66, v68);
    if (v69 != 0.0)
    {
      v27 = v24;
      v26 = v23;
    }

    sub_8699C(v68);
  }

  if (v26 <= 0.0)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = v21 + v26;
  }

  sub_B170(v64, v65);
  sub_7673F0();
  v33 = v30;
  if (v27 > v30)
  {
    v30 = v27;
  }

  *v68 = v26;
  *&v68[1] = v27;
  v34 = v28 + v29;
  *&v68[2] = v28;
  v69 = v29;
  v70 = v33;
  v71 = v31;
  v72 = v32;
  v73 = v28 + v29;
  v74 = v30;
  v75 = v30;
  v35 = v30;
  v76 = 0;
  sub_867FC((v6 + 25), v57);
  v36 = v58;
  sub_8699C(v57);
  if (v25)
  {
    v37 = 1;
  }

  else
  {
    sub_867FC((v6 + 17), v57);
    v37 = v58 == 0;
    sub_8699C(v57);
  }

  sub_B170(v64, v65);
  sub_7673F0();
  v39 = v38 >= v33 || v37;
  if (v36 || (v39 & 1) == 0)
  {
    v44 = v34;
    v40 = v14;
    v83.origin.x = v14;
    v41 = v16;
    v83.origin.y = v16;
    v42 = v52;
    v43 = v53;
    v83.size.width = v53;
    v83.size.height = v52;
    MinX = CGRectGetMinX(v83);
    if (v36)
    {
      v84.origin.x = v14;
      v84.origin.y = v41;
      v84.size.width = v53;
      v84.size.height = v52;
      MinY = CGRectGetMinY(v84);
      goto LABEL_22;
    }
  }

  else
  {
    v40 = v14;
    v82.origin.x = v14;
    v41 = v16;
    v82.origin.y = v16;
    v42 = v52;
    v43 = v53;
    v82.size.width = v53;
    v82.size.height = v52;
    v44 = v34;
    MinX = CGRectGetMidX(v82) + v34 * -0.5;
  }

  v85.origin.x = v40;
  v85.origin.y = v41;
  v85.size.width = v43;
  v85.size.height = v42;
  MinY = CGRectGetMidY(v85) + v35 * -0.5;
LABEL_22:
  v54 = MinY;
  sub_769CA0();
  sub_1529B8(v47, v48, v49, v50, a1, v68);
  sub_867FC((v6 + 25), &v55);
  if (v56)
  {
    sub_10914(&v55, v57);
    sub_B170(v57, v58);
    sub_7673F0();
    v86.origin.x = v40;
    v86.origin.y = v41;
    v86.size.width = v43;
    v86.size.height = v42;
    CGRectGetMinX(v86);
    v87.origin.x = MinX;
    v87.origin.y = v54;
    v87.size.width = v44;
    v87.size.height = v35;
    CGRectGetMaxY(v87);
    v88.origin.x = v40;
    v88.origin.y = v41;
    v88.size.width = v43;
    v88.size.height = v42;
    CGRectGetWidth(v88);
    sub_B170(v57, v58);
    sub_769CA0();
    sub_7673E0();
    sub_153320(v59);
    return sub_BEB8(v57);
  }

  else
  {
    sub_153320(v59);
    return sub_8699C(&v55);
  }
}

uint64_t sub_1529B8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6)
{
  v11 = *(v6 + 96) | (*(a6 + 32) < *(a6 + 8) + *(a6 + 8));
  sub_867FC(v6 + 144, &v21);
  if (v22)
  {
    sub_10914(&v21, v23);
    v24.origin.x = a1;
    v24.origin.y = a2;
    v24.size.width = a3;
    v24.size.height = a4;
    CGRectGetMinX(v24);
    v12 = a1;
    v13 = a2;
    v14 = a3;
    v15 = a4;
    if (v11)
    {
      CGRectGetMidY(*&v12);
    }

    else
    {
      CGRectGetMinY(*&v12);
    }

    sub_B170(v23, v23[3]);
    sub_769CA0();
    sub_7673E0();
    sub_BEB8(v23);
  }

  else
  {
    sub_8699C(&v21);
  }

  v25.origin.x = a1;
  v25.origin.y = a2;
  v25.size.width = a3;
  v25.size.height = a4;
  CGRectGetMinX(v25);
  v16 = a1;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  if (v11)
  {
    CGRectGetMidY(*&v16);
  }

  else
  {
    CGRectGetMinY(*&v16);
  }

  sub_B170((v6 + 104), *(v6 + 128));
  sub_769CA0();
  return sub_7673E0();
}

double sub_152BB8(double a1)
{
  sub_867FC(v1 + 200, &v26);
  if (v27)
  {
    sub_10914(&v26, &v12);
    sub_B170(&v12, *(&v13 + 1));
    sub_7673F0();
    sub_BEB8(&v12);
  }

  else
  {
    sub_8699C(&v26);
  }

  v2 = v1[1];
  v24 = *v1;
  v25 = v2;
  v3 = *(v1 + 8);
  v23 = *(v1 + 72);
  v4 = *(v1 + 11);
  v10 = v1[3];
  v11 = v1[2];
  sub_134D8((v1 + 6), v20);
  sub_867FC(v1 + 136, v21);
  v5 = *(v1 + 22);
  v6 = *(v1 + 23);
  v7 = *(v1 + 192);
  v12 = v24;
  v13 = v25;
  v14 = v11;
  v15 = v10;
  v16 = v3;
  v17 = v23;
  v18 = v4;
  v19 = 1;
  v21[5] = v5;
  v21[6] = v6;
  v22 = v7;
  if ((v7 & 1) == 0)
  {
    sub_867FC(v21, &v26);
    sub_8699C(&v26);
  }

  sub_B170(v20, v20[3]);
  sub_7673F0();
  sub_153320(&v12);
  return a1;
}

uint64_t sub_152DDC(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_769BB0();
  v72.origin.x = sub_705B8(a2, a3, a4, a5, v11, v12);
  x = v72.origin.x;
  y = v72.origin.y;
  width = v72.size.width;
  height = v72.size.height;
  CGRectGetWidth(v72);
  sub_867FC(v5 + 200, &v62);
  v42 = y;
  if (v64 == 0.0)
  {
    sub_8699C(&v62);
    v17 = y;
  }

  else
  {
    sub_10914(&v62, &v43);
    sub_B170(&v43, *(&v44 + 1));
    sub_7673F0();
    v73.origin.x = x;
    v73.origin.y = y;
    v73.size.width = width;
    v73.size.height = height;
    CGRectGetMaxX(v73);
    v74.origin.x = x;
    v74.origin.y = y;
    v74.size.width = width;
    v74.size.height = height;
    CGRectGetMidY(v74);
    sub_B170(&v43, *(&v44 + 1));
    sub_769CA0();
    sub_7673E0();
    v17 = y;
    sub_BEB8(&v43);
  }

  sub_867FC(v5 + 200, v60);
  v18 = v61;
  sub_8699C(v60);
  v19 = v5[1];
  v56 = *v5;
  v57 = v19;
  v20 = v5[3];
  v58 = v5[2];
  v59 = v20;
  v21 = *(v5 + 8);
  v54 = *(v5 + 72);
  v55 = *(v5 + 11);
  sub_134D8((v5 + 6), v51);
  sub_867FC(v5 + 136, v52);
  v22 = *(v5 + 22);
  v23 = *(v5 + 23);
  v24 = *(v5 + 192);
  v43 = v56;
  v44 = v57;
  v45 = v58;
  v46 = v59;
  v47 = v21;
  v48 = v54;
  v49 = v55;
  v50 = 1;
  *&v52[5] = v22;
  *&v52[6] = v23;
  v53 = v24;
  v75.origin.x = x;
  v75.origin.y = v17;
  v75.size.width = width;
  v75.size.height = height;
  CGRectGetHeight(v75);
  v25 = 0.0;
  v26 = 0.0;
  if ((v24 & 1) == 0)
  {
    sub_867FC(v52, &v62);
    if (v64 != 0.0)
    {
      v26 = v23;
      v25 = v22;
    }

    sub_8699C(&v62);
  }

  if (v25 <= 0.0)
  {
    v27 = 0.0;
  }

  else
  {
    v27 = v21 + v25;
  }

  sub_B170(v51, v51[3]);
  sub_7673F0();
  if (v26 > v29)
  {
    v32 = v26;
  }

  else
  {
    v32 = v29;
  }

  *&v62 = v25;
  *(&v62 + 1) = v26;
  v63 = v27;
  v64 = v28;
  v65 = v29;
  v66 = v30;
  v67 = v31;
  v68 = v27 + v28;
  v69 = v32;
  v70 = v32;
  v71 = 0;
  v33 = x;
  v34 = v42;
  v35 = width;
  v36 = height;
  if (v18)
  {
    CGRectGetMinX(*&v33);
  }

  else
  {
    CGRectGetMidX(*&v33);
  }

  v76.origin.x = x;
  v76.origin.y = v42;
  v76.size.width = width;
  v76.size.height = height;
  CGRectGetMidY(v76);
  sub_769CA0();
  sub_1529B8(v37, v38, v39, v40, a1, &v62);
  return sub_153320(&v43);
}

double sub_1531CC()
{
  sub_151FF8(v3);
  sub_B170(v3, v3[3]);
  sub_7673F0();
  v1 = v0;
  sub_BEB8(v3);
  return v1;
}

uint64_t sub_153270()
{
  sub_151FF8(v1);
  sub_B170(v1, v1[3]);
  sub_7673E0();
  return sub_BEB8(v1);
}

__n128 sub_153304@<Q0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 48);
  a1[2] = *(v1 + 32);
  a1[3] = v2;
  v3 = *(v1 + 80);
  a1[4] = *(v1 + 64);
  a1[5] = v3;
  result = *v1;
  v5 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v5;
  return result;
}

__n128 sub_153350(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 185) = *(a2 + 185);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_153394(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 201))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 128);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1533DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 200) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 201) = 1;
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
      *(result + 128) = (a2 - 1);
      return result;
    }

    *(result + 201) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_153460(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_15347C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_15349C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 96) = v3;
  return result;
}

unint64_t sub_153504()
{
  result = qword_946748;
  if (!qword_946748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_946748);
  }

  return result;
}

id sub_1535CC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_764A60();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_75FA00();
  v39 = *(v7 - 8);
  __chkstk_darwin(v7);
  v37 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_9467B0);
  __chkstk_darwin(v9 - 8);
  v10 = sub_BD88(&unk_944D90);
  v38 = *(v10 - 8);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v43 = &v30 - v12;
  v46.receiver = v0;
  v46.super_class = ObjectType;
  objc_msgSendSuper2(&v46, "viewDidLoad", v11);
  v13 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_componentView];
  v35 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_componentView + 8];
  v36 = swift_getObjectType();
  v42 = v13;
  v14 = [v13 backgroundView];
  result = [v0 view];
  v16 = result;
  v40 = v10;
  v41 = v6;
  if (v14)
  {
    if (!result)
    {
LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    v17 = [v14 backgroundColor];
    [v16 setBackgroundColor:v17];

LABEL_6:
    v18 = v7;
    v33 = v4;
    v34 = v3;

    result = [v0 view];
    if (result)
    {
      v19 = result;
      v20 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_scrollView];
      v32 = v20;
      [result addSubview:v20];

      [v20 setDelegate:v0];
      [v20 setAlwaysBounceVertical:1];
      v44[0] = 0;
      sub_76A6E0();
      sub_769090();
      v45[0] = *&v0[OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_stateStore];

      sub_BD88(&qword_9467C0);
      sub_16194(&qword_9467C8, &qword_9467C0);
      sub_768AE0();
      v21 = OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_model;
      v31 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_objectGraph];
      sub_BD88(&unk_9467D0);
      v22 = v39;
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_77E280;
      sub_75F9B0();
      sub_75F980();
      v45[0] = v23;
      sub_154D60(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions);
      sub_BD88(&unk_9467E0);
      sub_16194(&qword_963050, &unk_9467E0);
      v24 = v37;
      sub_76A5A0();
      v45[0] = _swiftEmptyArrayStorage;
      sub_154D60(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints);
      sub_BD88(&qword_9467F8);
      sub_16194(&qword_946800, &qword_9467F8);
      v25 = v41;
      v26 = v34;
      sub_76A5A0();
      v27 = v36;
      v28 = v42;
      (*(v35 + 80))(&v1[v21], v43, v31, v24, v25, v1, v36);
      (*(v33 + 8))(v25, v26);
      (*(v22 + 8))(v24, v18);
      sub_134D8(&v1[v21], v45);
      v44[3] = v27;
      v44[0] = v28;
      v29 = v28;
      sub_758EF0();
      sub_154DA8(v45);
      sub_BEB8(v44);
      [v32 addSubview:v29];
      return (*(v38 + 8))(v43, v40);
    }

    __break(1u);
    goto LABEL_9;
  }

  if (result)
  {
    v17 = [v42 backgroundColor];
    [v16 setBackgroundColor:v17];
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
  return result;
}

id sub_153D0C()
{
  v41.receiver = v0;
  v41.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v41, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_scrollView];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  [result bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v1 setFrame:{v5, v7, v9, v11}];
  result = [v0 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = result;
  [result bounds];
  v14 = v13;
  v16 = v15;

  v17 = sub_153F58(v14, v16);
  v19 = v18;
  [v1 frame];
  Height = CGRectGetHeight(v42);
  v21 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_componentView];
  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v22 = result;
  [result bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v43.origin.x = v24;
  v43.origin.y = v26;
  v43.size.width = v28;
  v43.size.height = v30;
  MinX = CGRectGetMinX(v43);
  result = [v0 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v32 = result;
  if (v19 <= Height)
  {
    v19 = Height;
  }

  [result bounds];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v44.origin.x = v34;
  v44.origin.y = v36;
  v44.size.width = v38;
  v44.size.height = v40;
  [v21 setFrame:{MinX, CGRectGetMinY(v44), v17, v19}];
  [v1 setContentSize:{v17, v19}];
  return [v0 setPreferredContentSize:{v17, v19}];
}

double sub_153F58(double a1, double a2)
{
  v3 = v2;
  v24 = sub_75FA00();
  v6 = *(v24 - 8);
  __chkstk_darwin(v24);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_9467B0);
  __chkstk_darwin(v9 - 8);
  v10 = sub_BD88(&qword_946810);
  v22 = *(v10 - 8);
  v23 = v10;
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  v25 = 0;
  sub_76A6E0();
  sub_769090();
  v26 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_stateStore);

  sub_BD88(&qword_9467C0);
  sub_16194(&qword_9467C8, &qword_9467C0);
  sub_769020();
  v13 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_componentView + 8);
  ObjectType = swift_getObjectType();
  v20 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_objectGraph);
  v21 = OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_model;
  sub_BD88(&unk_9467D0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_77E280;
  sub_75F9B0();
  sub_75F980();
  v26 = v15;
  sub_154D60(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions);
  sub_BD88(&unk_9467E0);
  sub_16194(&qword_963050, &unk_9467E0);
  v16 = v24;
  sub_76A5A0();
  v17 = (*(v13 + 72))(v3 + v21, 1, v12, v20, v8, v3, ObjectType, v13, a1, a2);
  (*(v6 + 8))(v8, v16);
  (*(v22 + 8))(v12, v23);
  return v17;
}

void sub_154428(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "traitCollectionDidChange:", a1);
  if (a1 && [a1 horizontalSizeClass] == &dword_0 + 2)
  {
    v3 = [v1 traitCollection];
    v4 = [v3 horizontalSizeClass];

    if (v4 == &dword_0 + 1)
    {
      [v1 dismissViewControllerAnimated:0 completion:0];
    }
  }
}

uint64_t sub_15454C()
{
  v1 = sub_764A60();
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  __chkstk_darwin(v1);
  v24 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_75FA00();
  v19 = *(v21 - 8);
  __chkstk_darwin(v21);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_9467B0);
  __chkstk_darwin(v6 - 8);
  v7 = sub_BD88(&unk_944D90);
  v22 = *(v7 - 8);
  v23 = v7;
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  v27 = 0;
  sub_76A6E0();
  sub_769090();
  v28 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_stateStore);

  sub_BD88(&qword_9467C0);
  sub_16194(&qword_9467C8, &qword_9467C0);
  sub_768AE0();
  v18 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_componentView + 8);
  ObjectType = swift_getObjectType();
  v16 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_objectGraph);
  v17 = OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_model;
  sub_BD88(&unk_9467D0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_77B6D0;
  sub_75F9B0();
  v28 = v10;
  sub_154D60(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions);
  sub_BD88(&unk_9467E0);
  sub_16194(&qword_963050, &unk_9467E0);
  v11 = v21;
  sub_76A5A0();
  v28 = _swiftEmptyArrayStorage;
  sub_154D60(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints);
  sub_BD88(&qword_9467F8);
  sub_16194(&qword_946800, &qword_9467F8);
  v13 = v24;
  v12 = v25;
  sub_76A5A0();
  (*(v18 + 80))(v0 + v17, v9, v16, v5, v13, v0, ObjectType);
  (*(v26 + 8))(v13, v12);
  (*(v19 + 8))(v5, v11);
  return (*(v22 + 8))(v9, v23);
}

id sub_154A64(uint64_t a1)
{
  v3 = sub_BD88(&unk_94EE60);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = [objc_allocWithZone(type metadata accessor for ComponentViewOverflowTransitioning()) init];
  v7 = OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_overflowTransitioning;
  v8 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_overflowTransitioning];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_overflowTransitioning] = v6;

  v9 = *&v1[v7];
  if (v9)
  {
    v9[OBJC_IVAR____TtC18ASMessagesProvider34ComponentViewOverflowTransitioning_isTransitioningFromContainer] = 1;
    v10 = sub_757640();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v5, a1, v10);
    (*(v11 + 56))(v5, 0, 1, v10);
    v12 = OBJC_IVAR____TtC18ASMessagesProvider34ComponentViewOverflowTransitioning_selectedIndexPath;
    swift_beginAccess();
    v13 = v9;
    sub_127C68(v5, &v9[v12]);
    swift_endAccess();

    v14 = *&v1[v7];
  }

  else
  {
    v14 = 0;
  }

  [v1 setTransitioningDelegate:v14];
  return [v1 setModalPresentationStyle:4];
}

void sub_154D48()
{
  v1 = *(*v0 + OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_overflowTransitioning);
  *(*v0 + OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_overflowTransitioning) = 0;
}

uint64_t sub_154D60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_154DA8(uint64_t a1)
{
  v2 = sub_BD88(&unk_963040);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_154E10(void *a1)
{
  if (*v1 != *a1)
  {
    goto LABEL_16;
  }

  if ((sub_76A6C0() & 1) == 0)
  {
    goto LABEL_16;
  }

  type metadata accessor for BoolPreferencesDebugSetting();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    goto LABEL_16;
  }

  v3 = v2;
  v4 = *(v2 + 56) == *(v1 + 56) && *(v2 + 64) == *(v1 + 64);
  if (!v4 && (sub_76A950() & 1) == 0)
  {
    goto LABEL_16;
  }

  v5 = *(v3 + 80);
  v6 = *(v1 + 80);
  if (v5)
  {
    if (v6 && (*(v3 + 72) == *(v1 + 72) && v5 == v6 || (sub_76A950() & 1) != 0))
    {
      goto LABEL_14;
    }

LABEL_16:
    v7 = 0;
    return v7 & 1;
  }

  if (v6)
  {
    goto LABEL_16;
  }

LABEL_14:
  v7 = *(v3 + 88) ^ *(v1 + 88) ^ 1;
  return v7 & 1;
}

void sub_154F28()
{
  sub_76A6D0();
  sub_769330();
  if (*(v0 + 80))
  {
    sub_76AA50(1u);
    sub_769330();
  }

  else
  {
    sub_76AA50(0);
  }

  sub_76AA50(*(v0 + 88));
}

uint64_t sub_154FB4()
{

  v1 = OBJC_IVAR____TtC18ASMessagesProvider27BoolPreferencesDebugSetting_key;
  v2 = sub_BD88(&unk_945000);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_155048()
{
  sub_1EB60(v0 + 16);

  v1 = OBJC_IVAR____TtC18ASMessagesProvider27BoolPreferencesDebugSetting_key;
  v2 = sub_BD88(&unk_945000);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BoolPreferencesDebugSetting()
{
  result = qword_946840;
  if (!qword_946840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_155184()
{
  sub_155234();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_155234()
{
  if (!qword_946850)
  {
    v0 = sub_7687F0();
    if (!v1)
    {
      atomic_store(v0, &qword_946850);
    }
  }
}

uint64_t sub_155284()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93D8E8 != -1)
  {
    swift_once();
  }

  v4 = sub_7666D0();
  v5 = sub_BE38(v4, qword_99F2B0);
  (*(*(v4 - 8) + 16))(v3, v5, v4);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  return sub_75D7F0();
}

void sub_155404()
{
  v0 = [objc_opt_self() systemFontOfSize:10.0 weight:UIFontWeightBold];
  v1 = [objc_opt_self() configurationWithFont:v0];

  qword_946918 = v1;
}

uint64_t sub_155488()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v20[0] = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v21 = v20 - v5;
  __chkstk_darwin(v4);
  v7 = v20 - v6;
  v8 = sub_75D850();
  sub_161DC(v8, qword_946920);
  v20[2] = sub_BE38(v8, qword_946920);
  if (qword_93D8E0 != -1)
  {
    swift_once();
  }

  v9 = sub_7666D0();
  v10 = sub_BE38(v9, qword_99F298);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v20[1] = v7;
  if (qword_93D8F8 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v9, qword_99F2E0);
  v15 = v21;
  v11(v21, v14, v9);
  v13(v15, v12, v0);
  v16 = v20[0];
  v11(v20[0], v14, v9);
  v13(v16, v12, v0);
  v23[3] = sub_766CA0();
  v23[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v23);
  v22[3] = v0;
  v22[4] = &protocol witness table for FontSource;
  v17 = sub_B1B4(v22);
  (*(v1 + 16))(v17, v16, v0);
  sub_766CB0();
  (*(v1 + 8))(v16, v0);
  v18 = [objc_opt_self() systemFontOfSize:15.0 weight:UIFontWeightBold];
  [objc_opt_self() configurationWithFont:v18];

  return sub_75D7E0();
}

uint64_t sub_155898()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v20[0] = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v21 = v20 - v5;
  __chkstk_darwin(v4);
  v7 = v20 - v6;
  v8 = sub_75D850();
  sub_161DC(v8, qword_946938);
  v20[2] = sub_BE38(v8, qword_946938);
  if (qword_93D8E0 != -1)
  {
    swift_once();
  }

  v9 = sub_7666D0();
  v10 = sub_BE38(v9, qword_99F298);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v20[1] = v7;
  if (qword_93D8F8 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v9, qword_99F2E0);
  v15 = v21;
  v11(v21, v14, v9);
  v13(v15, v12, v0);
  v16 = v20[0];
  v11(v20[0], v14, v9);
  v13(v16, v12, v0);
  v23[3] = sub_766CA0();
  v23[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v23);
  v22[3] = v0;
  v22[4] = &protocol witness table for FontSource;
  v17 = sub_B1B4(v22);
  (*(v1 + 16))(v17, v16, v0);
  sub_766CB0();
  (*(v1 + 8))(v16, v0);
  sub_1582B4();
  v18 = UIFontTextStyleFootnote;
  sub_769C60();

  return sub_75D7E0();
}

uint64_t sub_155C7C()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v21[0] = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v22 = v21 - v4;
  __chkstk_darwin(v5);
  v7 = v21 - v6;
  v8 = sub_75D850();
  sub_161DC(v8, qword_946950);
  v21[2] = sub_BE38(v8, qword_946950);
  if (qword_93D920 != -1)
  {
    swift_once();
  }

  v9 = sub_7666D0();
  v10 = sub_BE38(v9, qword_99F358);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v21[1] = v7;
  if (qword_93D8F8 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v9, qword_99F2E0);
  v15 = v22;
  v11(v22, v14, v9);
  v13(v15, v12, v0);
  v16 = v21[0];
  v11(v21[0], v14, v9);
  v13(v16, v12, v0);
  v24[3] = sub_766CA0();
  v24[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v24);
  v23[3] = v0;
  v23[4] = &protocol witness table for FontSource;
  v17 = sub_B1B4(v23);
  (*(v1 + 16))(v17, v16, v0);
  sub_766CB0();
  (*(v1 + 8))(v16, v0);
  sub_1582B4();
  v18 = UIFontTextStyleFootnote;
  sub_769C60();

  v19 = v18;
  sub_769C60();

  return sub_75D7E0();
}

uint64_t sub_15608C()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v24[0] = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v25 = v24 - v4;
  __chkstk_darwin(v5);
  v7 = v24 - v6;
  v8 = sub_75D850();
  sub_161DC(v8, qword_946968);
  v24[2] = sub_BE38(v8, qword_946968);
  if (qword_93D8E0 != -1)
  {
    swift_once();
  }

  v9 = sub_7666D0();
  v10 = sub_BE38(v9, qword_99F298);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v24[1] = v7;
  if (qword_93D8F8 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v9, qword_99F2E0);
  v15 = v25;
  v11(v25, v14, v9);
  v13(v15, v12, v0);
  v16 = v24[0];
  v11(v24[0], v14, v9);
  v13(v16, v12, v0);
  v27[3] = sub_766CA0();
  v27[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v27);
  v26[3] = v0;
  v26[4] = &protocol witness table for FontSource;
  v17 = sub_B1B4(v26);
  (*(v1 + 16))(v17, v16, v0);
  sub_766CB0();
  (*(v1 + 8))(v16, v0);
  v18 = objc_opt_self();
  v19 = [v18 systemFontOfSize:36.0 weight:UIFontWeightSemibold];
  v20 = objc_opt_self();
  v21 = [v20 configurationWithFont:v19];

  v22 = [v18 systemFontOfSize:15.0 weight:UIFontWeightBold];
  [v20 configurationWithFont:v22];

  return sub_75D7E0();
}

uint64_t sub_156524(unsigned int *a1, double *a2, double a3)
{
  v6 = sub_759950();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, *a1, v6, v8);
  v11 = [objc_opt_self() systemFontOfSize:a3 weight:*a2];
  v12 = [objc_opt_self() configurationWithFont:v11];

  v13 = sub_759930();
  (*(v7 + 8))(v10, v6);
  return v13;
}

uint64_t sub_156688()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v20[0] = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v21 = v20 - v4;
  __chkstk_darwin(v5);
  v7 = v20 - v6;
  v8 = sub_75D850();
  sub_161DC(v8, qword_99B2A8);
  v20[2] = sub_BE38(v8, qword_99B2A8);
  if (qword_93D908 != -1)
  {
    swift_once();
  }

  v9 = sub_7666D0();
  v10 = sub_BE38(v9, qword_99F310);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v20[1] = v7;
  if (qword_93D8F8 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v9, qword_99F2E0);
  v15 = v21;
  v11(v21, v14, v9);
  v13(v15, v12, v0);
  v16 = v20[0];
  v11(v20[0], v14, v9);
  v13(v16, v12, v0);
  v23[3] = sub_766CA0();
  v23[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v23);
  v22[3] = v0;
  v22[4] = &protocol witness table for FontSource;
  v17 = sub_B1B4(v22);
  (*(v1 + 16))(v17, v16, v0);
  sub_766CB0();
  (*(v1 + 8))(v16, v0);
  sub_1582B4();
  v18 = UIFontTextStyleFootnote;
  sub_769C60();

  return sub_75D7E0();
}

uint64_t sub_156A6C()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v20[0] = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v21 = v20 - v4;
  __chkstk_darwin(v5);
  v7 = v20 - v6;
  v8 = sub_75D850();
  sub_161DC(v8, qword_99B2C0);
  v20[2] = sub_BE38(v8, qword_99B2C0);
  if (qword_93D918 != -1)
  {
    swift_once();
  }

  v9 = sub_7666D0();
  v10 = sub_BE38(v9, qword_99F340);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v20[1] = v7;
  if (qword_93D8F8 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v9, qword_99F2E0);
  v15 = v21;
  v11(v21, v14, v9);
  v13(v15, v12, v0);
  v16 = v20[0];
  v11(v20[0], v14, v9);
  v13(v16, v12, v0);
  v23[3] = sub_766CA0();
  v23[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v23);
  v22[3] = v0;
  v22[4] = &protocol witness table for FontSource;
  v17 = sub_B1B4(v22);
  (*(v1 + 16))(v17, v16, v0);
  sub_766CB0();
  (*(v1 + 8))(v16, v0);
  sub_1582B4();
  v18 = UIFontTextStyleFootnote;
  sub_769C60();

  return sub_75D7E0();
}

uint64_t sub_156E48()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v20[0] = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v21 = v20 - v4;
  __chkstk_darwin(v5);
  v7 = v20 - v6;
  v8 = sub_75D850();
  sub_161DC(v8, qword_99B2D8);
  v20[2] = sub_BE38(v8, qword_99B2D8);
  if (qword_93D910 != -1)
  {
    swift_once();
  }

  v9 = sub_7666D0();
  v10 = sub_BE38(v9, qword_99F328);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v20[1] = v7;
  if (qword_93D8F8 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v9, qword_99F2E0);
  v15 = v21;
  v11(v21, v14, v9);
  v13(v15, v12, v0);
  v16 = v20[0];
  v11(v20[0], v14, v9);
  v13(v16, v12, v0);
  v23[3] = sub_766CA0();
  v23[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v23);
  v22[3] = v0;
  v22[4] = &protocol witness table for FontSource;
  v17 = sub_B1B4(v22);
  (*(v1 + 16))(v17, v16, v0);
  sub_766CB0();
  (*(v1 + 8))(v16, v0);
  sub_1582B4();
  v18 = UIFontTextStyleFootnote;
  sub_769C60();

  return sub_75D7E0();
}

uint64_t sub_15722C()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v22[0] = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v23 = v22 - v4;
  __chkstk_darwin(v5);
  v7 = v22 - v6;
  v8 = sub_75D850();
  sub_161DC(v8, qword_946980);
  v22[2] = sub_BE38(v8, qword_946980);
  if (qword_93D8F0 != -1)
  {
    swift_once();
  }

  v9 = sub_7666D0();
  v10 = sub_BE38(v9, qword_99F2C8);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v22[1] = v7;
  if (qword_93D8F8 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v9, qword_99F2E0);
  v15 = v23;
  v11(v23, v14, v9);
  v13(v15, v12, v0);
  v16 = v22[0];
  v11(v22[0], v14, v9);
  v13(v16, v12, v0);
  v27[3] = sub_766CA0();
  v27[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v27);
  v25 = v0;
  v26 = &protocol witness table for FontSource;
  v17 = sub_B1B4(v24);
  (*(v1 + 16))(v17, v16, v0);
  sub_766CB0();
  (*(v1 + 8))(v16, v0);
  sub_1582B4();
  v18 = UIFontTextStyleFootnote;
  sub_769C60();

  v19 = sub_7653B0();
  v25 = v19;
  v26 = sub_9BA34();
  v20 = sub_B1B4(v24);
  (*(*(v19 - 8) + 104))(v20, enum case for Feature.glass_offer_button_2025A(_:), v19);
  sub_765C30();
  sub_BEB8(v24);
  return sub_75D7E0();
}

id sub_157684()
{
  v0 = sub_56E958(0xD000000000000013, 0x80000000007D1520, 0);
  v1 = [v0 imageWithRenderingMode:2];

  return v1;
}

uint64_t sub_1576E8()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v21[0] = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v22 = v21 - v4;
  __chkstk_darwin(v5);
  v7 = v21 - v6;
  v8 = sub_75D850();
  sub_161DC(v8, qword_946998);
  v21[2] = sub_BE38(v8, qword_946998);
  if (qword_93D920 != -1)
  {
    swift_once();
  }

  v9 = sub_7666D0();
  v10 = sub_BE38(v9, qword_99F358);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v21[1] = v7;
  if (qword_93D8F8 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v9, qword_99F2E0);
  v15 = v22;
  v11(v22, v14, v9);
  v13(v15, v12, v0);
  v16 = v21[0];
  v11(v21[0], v14, v9);
  v13(v16, v12, v0);
  v24[3] = sub_766CA0();
  v24[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v24);
  v23[3] = v0;
  v23[4] = &protocol witness table for FontSource;
  v17 = sub_B1B4(v23);
  (*(v1 + 16))(v17, v16, v0);
  sub_766CB0();
  (*(v1 + 8))(v16, v0);
  sub_1582B4();
  v18 = UIFontTextStyleFootnote;
  sub_769C60();

  v19 = v18;
  sub_769C60();

  return sub_75D7E0();
}

uint64_t sub_157AF0()
{
  v0 = sub_759950();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.icloudAndArrowDown(_:), v0, v2);
  sub_1582B4();
  v5 = sub_769C60();
  v6 = sub_759930();

  (*(v1 + 8))(v4, v0);
  return v6;
}

uint64_t sub_157C20()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v21[0] = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v22 = v21 - v4;
  __chkstk_darwin(v5);
  v7 = v21 - v6;
  v8 = sub_75D850();
  sub_161DC(v8, qword_99B2F0);
  v21[2] = sub_BE38(v8, qword_99B2F0);
  if (qword_93D910 != -1)
  {
    swift_once();
  }

  v9 = sub_7666D0();
  v10 = sub_BE38(v9, qword_99F328);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v21[1] = v7;
  if (qword_93D8F8 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v9, qword_99F2E0);
  v15 = v22;
  v11(v22, v14, v9);
  v13(v15, v12, v0);
  v16 = v21[0];
  v11(v21[0], v14, v9);
  v13(v16, v12, v0);
  v24[3] = sub_766CA0();
  v24[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v24);
  v23[3] = v0;
  v23[4] = &protocol witness table for FontSource;
  v17 = sub_B1B4(v23);
  (*(v1 + 16))(v17, v16, v0);
  sub_766CB0();
  (*(v1 + 8))(v16, v0);
  sub_1582B4();
  v18 = UIFontTextStyleHeadline;
  sub_769C60();

  v19 = UIFontTextStyleFootnote;
  sub_769C60();

  return sub_75D7E0();
}

id sub_158038()
{
  v0 = sub_759950();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.icloudAndArrowDown(_:), v0, v2);
  sub_1582B4();
  v5 = sub_769C60();
  v6 = sub_759930();

  (*(v1 + 8))(v4, v0);
  v7 = [v6 imageWithRenderingMode:2];

  return v7;
}

uint64_t sub_15818C()
{
  v0 = sub_759950();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.pauseFill(_:), v0, v2);
  if (qword_93C438 != -1)
  {
    swift_once();
  }

  v5 = sub_759930();
  (*(v1 + 8))(v4, v0);
  return v5;
}

unint64_t sub_1582B4()
{
  result = qword_95A810;
  if (!qword_95A810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_95A810);
  }

  return result;
}

uint64_t sub_158314(uint64_t a1)
{
  if (a1 != 2)
  {
    return 0;
  }

  sub_BD88(&unk_93F5C0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_77B6C0;
  v2 = objc_opt_self();
  *(v1 + 32) = [v2 clearColor];
  sub_BE70(0, &qword_93E540);
  v3 = [v2 blackColor];
  v4 = [v3 colorWithAlphaComponent:0.06];

  v5.super.isa = [objc_allocWithZone(UIColor) initWithWhite:0.06667 alpha:1.0];
  v6.super.isa = v4;
  isa = sub_76A0C0(v6, v5).super.isa;
  result = v1;
  *(v1 + 40) = isa;
  return result;
}

unint64_t sub_158444@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_15AC5C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_1584A4()
{
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider26SearchCollectionViewLayout_backgroundCornerRadius] = 0;
  v1 = &v0[OBJC_IVAR____TtC18ASMessagesProvider26SearchCollectionViewLayout_pendingPrepareObserver];
  v2 = type metadata accessor for SearchCollectionViewLayout();
  *v1 = 0;
  *(v1 + 1) = 0;
  v10.receiver = v0;
  v10.super_class = v2;
  v3 = objc_msgSendSuper2(&v10, "init");
  type metadata accessor for SearchResultBackgroundView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = v3;
  v6 = sub_769210();
  [v5 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v6];

  type metadata accessor for SearchTransparencyView();
  v7 = swift_getObjCClassFromMetadata();
  sub_769BC0();
  v8 = sub_769210();

  [v5 registerClass:v7 forDecorationViewOfKind:v8];

  return v5;
}

double sub_158690()
{
  v1 = v0;
  v14.receiver = v0;
  v14.super_class = type metadata accessor for SearchCollectionViewLayout();
  objc_msgSendSuper2(&v14, "collectionViewContentSize");
  v3 = v2;
  v4 = [v0 collectionView];
  if (v4)
  {
    v5 = v4;
    v6 = [v0 collectionView];
    if (v6 && (v7 = v6, v8 = [v6 delegate], v7, v8))
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        v9 = sub_75FFF0();
        if (v9)
        {
          v10 = v9;
          v11 = OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits;
          [*&v8[OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits] pageContainerSize];
          [*&v8[v11] pageMarginInsets];
          sub_769DA0();
          sub_E3618(v12, v10, v5);
        }

        swift_unknownObjectRelease();
        [v1 minimumLineSpacing];
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  return v3;
}

void *sub_15884C(double a1)
{
  v2 = v1;
  v74 = sub_BD88(&qword_946A50);
  __chkstk_darwin(v74);
  v5 = &v61 - v4;
  v6 = sub_757640();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v61 - v11;
  v13 = sub_BD88(&unk_94EE60);
  __chkstk_darwin(v13 - 8);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v61 - v17;
  __chkstk_darwin(v19);
  v75 = &v61 - v20;
  v21 = sub_159328(a1);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = type metadata accessor for SearchCollectionViewLayout();
  v80.receiver = v1;
  v80.super_class = v28;
  result = objc_msgSendSuper2(&v80, "layoutAttributesForElementsInRect:", v21, v23, v25, v27);
  if (!result)
  {
    return result;
  }

  v30 = result;
  sub_BE70(0, &qword_944B40);
  v66 = sub_769460();

  v31 = [v2 collectionView];
  if (!v31)
  {
    return v66;
  }

  v32 = v31;
  v33 = [v31 delegate];

  if (!v33)
  {
    return v66;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
    swift_unknownObjectRelease();
    return v66;
  }

  v65 = v15;
  v63 = v9;
  v73 = v7;
  v61 = v33;
  v34 = [*&v33[OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits] traitCollection];
  [v34 horizontalSizeClass];

  v35 = 1;
  sub_760000();
  if ((v36 & 1) == 0)
  {
    sub_7575B0();
    v35 = 0;
  }

  v72 = *(v73 + 56);
  v73 += 56;
  v72(v75, v35, 1, v6);
  v79 = _swiftEmptyArrayStorage;
  if (v66 >> 62)
  {
    v37 = sub_76A860();
  }

  else
  {
    v37 = *(&dword_10 + (v66 & 0xFFFFFFFFFFFFFF8));
  }

  result = v61;
  if (v37)
  {
    v78 = v2;
    if (v37 >= 1)
    {
      v38 = 0;
      v39 = v66;
      v69 = v66 & 0xC000000000000001;
      v70 = "pendingPrepareObserver";
      v67 = (v7 + 48);
      v68 = (v7 + 16);
      v62 = (v7 + 32);
      v76 = (v7 + 8);
      v71 = v37;
      v64 = v12;
      while (1)
      {
        if (v69)
        {
          v40 = sub_76A770();
        }

        else
        {
          v40 = *(v39 + 8 * v38 + 32);
        }

        v77 = v40;
        v41 = [v40 indexPath];
        sub_757590();

        v42 = sub_769210();
        isa = sub_757550().super.isa;
        v44 = [v78 layoutAttributesForDecorationViewOfKind:v42 atIndexPath:isa];

        if (v44)
        {
          v45 = v44;
          sub_769440();
          if (*(&dword_10 + (v79 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v79 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_7694C0();
          }

          sub_769500();
        }

        (*v68)(v18, v12, v6);
        v72(v18, 0, 1, v6);
        v46 = *(v74 + 48);
        sub_E5A10(v18, v5);
        sub_E5A10(v75, &v5[v46]);
        v47 = *v67;
        if ((*v67)(v5, 1, v6) == 1)
        {
          break;
        }

        v48 = v18;
        v49 = v65;
        sub_E5A10(v5, v65);
        if (v47(&v5[v46], 1, v6) == 1)
        {
          sub_10A2C(v48, &unk_94EE60);
          v50 = v49;
          v18 = v48;
          (*v76)(v50, v6);
          v12 = v64;
          v39 = v66;
LABEL_24:
          sub_10A2C(v5, &qword_946A50);
          goto LABEL_30;
        }

        v51 = v63;
        (*v62)(v63, &v5[v46], v6);
        sub_E5A80();
        v52 = sub_7691C0();
        v53 = *v76;
        (*v76)(v51, v6);
        sub_10A2C(v48, &unk_94EE60);
        v54 = v49;
        v18 = v48;
        v53(v54, v6);
        sub_10A2C(v5, &unk_94EE60);
        v12 = v64;
        v39 = v66;
        if (v52)
        {
          goto LABEL_26;
        }

LABEL_30:
        v59 = v77;
        sub_1594C0(v77);
        sub_769440();
        if (*(&dword_10 + (v79 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v79 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        ++v38;
        sub_769500();

        (*v76)(v12, v6);
        if (v71 == v38)
        {
          v60 = v79;
          goto LABEL_37;
        }
      }

      sub_10A2C(v18, &unk_94EE60);
      if (v47(&v5[v46], 1, v6) == 1)
      {
        sub_10A2C(v5, &unk_94EE60);
LABEL_26:
        type metadata accessor for SearchTransparencyView();
        sub_769BC0();
        v55 = sub_769210();

        v56 = sub_757550().super.isa;
        v57 = [v78 layoutAttributesForDecorationViewOfKind:v55 atIndexPath:v56];

        if (v57)
        {
          v58 = v57;
          sub_769440();
          if (*(&dword_10 + (v79 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v79 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_7694C0();
          }

          sub_769500();
        }

        goto LABEL_30;
      }

      goto LABEL_24;
    }

    __break(1u);
  }

  else
  {
    v60 = _swiftEmptyArrayStorage;
LABEL_37:
    swift_unknownObjectRelease();

    sub_10A2C(v75, &unk_94EE60);
    return v60;
  }

  return result;
}

double sub_159328(double a1)
{
  v3 = [v1 collectionView];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 collectionView];
    if (v5 && (v6 = v5, v7 = [v5 delegate], v6, v7))
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        v8 = sub_75FFF0();
        if (v8)
        {
          v9 = v8;
          v10 = OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits;
          [*&v7[OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits] pageContainerSize];
          [*&v7[v10] pageMarginInsets];
          sub_769DA0();
          sub_E3618(v11, v9, v4);
        }

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  return a1;
}

id sub_1594C0(void *a1)
{
  v2 = v1;
  v38 = a1;
  v3 = sub_757640();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v35 - v12;
  v14 = [v1 collectionView];
  if (v14)
  {
    v15 = v14;
    v16 = [v1 collectionView];
    if (!v16 || (v17 = v16, v18 = [v16 delegate], v17, !v18))
    {
LABEL_14:

      goto LABEL_15;
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v35 = &protocol descriptor for UICollectionViewDelegateSearchLayout;
      v36 = v4;
      v37 = v3;
      v19 = [*&v18[OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits] traitCollection];
      [v19 horizontalSizeClass];

      sub_760000();
      if (v20)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        sub_7575B0();
        swift_unknownObjectRelease();
        v22 = v36;
        v21 = v37;
        (*(v36 + 32))(v13, v9, v37);
        v23 = [v2 collectionView];
        if (v23 && (v24 = v23, v25 = [v23 delegate], v24, v25))
        {
          swift_getObjectType();
          if (!swift_conformsToProtocol2())
          {

            swift_unknownObjectRelease();
            (*(v22 + 8))(v13, v21);
            goto LABEL_15;
          }

          v26 = sub_75FFF0();
          if (v26)
          {
            v27 = v26;
            v28 = OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits;
            [*&v25[OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits] pageContainerSize];
            [*&v25[v28] pageMarginInsets];
            sub_769DA0();
            sub_E3618(v29, v27, v15);
          }

          swift_unknownObjectRelease();
          v32 = [v38 indexPath];
          sub_757590();

          LOBYTE(v32) = sub_757560();
          v33 = *(v22 + 8);
          v33(v6, v21);
          if (v32)
          {
            sub_BE70(0, &qword_944B40);
            v34 = sub_76A440();
            [v2 minimumLineSpacing];
            [v34 frame];
            [v34 setFrame:?];

            v33(v13, v21);
            return v34;
          }

          v33(v13, v21);
        }

        else
        {
          (*(v22 + 8))(v13, v21);
        }
      }

      goto LABEL_14;
    }

    swift_unknownObjectRelease();
  }

LABEL_15:
  v30 = v38;

  return v30;
}

uint64_t sub_159950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v129 = a2;
  v130 = a1;
  v6 = sub_757640();
  v127 = *(v6 - 8);
  __chkstk_darwin(v6);
  v124 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&qword_946A50);
  __chkstk_darwin(v8);
  v10 = &v117 - v9;
  v11 = sub_BD88(&unk_94EE60);
  __chkstk_darwin(v11 - 8);
  v125 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v126 = &v117 - v14;
  __chkstk_darwin(v15);
  v128 = &v117 - v16;
  v17 = sub_76A920();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = sub_757550().super.isa;
  v22 = type metadata accessor for SearchCollectionViewLayout();
  v132.receiver = v4;
  v132.super_class = v22;
  v23 = objc_msgSendSuper2(&v132, "layoutAttributesForItemAtIndexPath:", isa);

  if (!v23)
  {
    return 0;
  }

  v123 = v10;
  v24 = [v4 collectionView];
  if (!v24)
  {
    goto LABEL_11;
  }

  v25 = v24;
  v26 = [v4 collectionView];
  if (!v26 || (v122 = v6, v27 = v26, v28 = [v26 delegate], v27, !v28))
  {

LABEL_11:
    return 0;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v120 = v28;
  v121 = v23;
  type metadata accessor for SearchCollectionLayoutAttributes();
  v29 = sub_769210();
  v30 = sub_757550().super.isa;
  v118 = [swift_getObjCClassFromMetadata() layoutAttributesForDecorationViewOfKind:v29 withIndexPath:v30];

  v31 = v25;
  v32 = [v31 traitCollection];
  v117 = [v32 horizontalSizeClass];

  v33 = [v31 traitCollection];
  v34 = [v33 userInterfaceIdiom];

  v119 = v31;
  if (v34)
  {
    if (qword_93DCE0 != -1)
    {
      swift_once();
    }

    v35 = sub_766CA0();
    sub_BE38(v35, qword_99FDE8);
    v36 = [v31 traitCollection];

    sub_7671D0();
    sub_BD88(&unk_93F5C0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_77D9F0;
    *(v37 + 32) = v36;
    v38 = v36;
    v39 = sub_7671E0();
    sub_7666E0();
    v41 = v40;
  }

  else
  {
    if (qword_93C490 != -1)
    {
      swift_once();
    }

    v43 = sub_766CA0();
    sub_BE38(v43, qword_99B308);
    v44 = [v31 traitCollection];

    sub_766470();
    sub_766C70();
    v41 = v45;

    (*(v18 + 8))(v20, v17);
  }

  v47 = v120;
  v46 = v121;
  v48 = v122;
  if (v130 != 0xD000000000000022 || 0x80000000007D15E0 != v129)
  {
    v50 = sub_76A950();
    v49 = v119;
    if ((v50 & 1) != 0 && v117 == &dword_0 + 1)
    {
      goto LABEL_23;
    }

    if (sub_76A950())
    {
      goto LABEL_28;
    }

    type metadata accessor for SearchTransparencyView();
    if (sub_769BC0() == v130 && v73 == v129)
    {

      v74 = v128;
    }

    else
    {
      v80 = sub_76A950();

      v74 = v128;
      if ((v80 & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    v81 = v127;
    (*(v127 + 16))(v74, a3, v48);
    v82 = v48;
    v83 = *(v81 + 56);
    v84 = 1;
    v83(v74, 0, 1, v82);
    v129 = OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_presenter;
    v130 = OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits;
    v85 = [*&v47[OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits] traitCollection];
    [v85 horizontalSizeClass];

    sub_760000();
    v86 = v126;
    if ((v87 & 1) == 0)
    {
      sub_7575B0();
      v84 = 0;
    }

    v88 = v84;
    v89 = v122;
    v83(v86, v88, 1, v122);
    v90 = v89;
    v91 = *(v8 + 48);
    v92 = v128;
    v93 = v123;
    sub_E5A10(v128, v123);
    sub_E5A10(v86, v93 + v91);
    v94 = *(v127 + 48);
    if (v94(v93, 1, v89) == 1)
    {
      sub_10A2C(v86, &unk_94EE60);
      sub_10A2C(v92, &unk_94EE60);
      v95 = v94(v93 + v91, 1, v89);
      v97 = v120;
      v96 = v121;
      if (v95 == 1)
      {
        sub_10A2C(v93, &unk_94EE60);
LABEL_59:
        v104 = v130;
        [*&v97[v130] pageMarginInsets];
        v106 = v105;
        v107 = v118;
        [v96 frame];
        MaxY = CGRectGetMaxY(v137);
        [v4 minimumLineSpacing];
        v110 = v109;
        v111 = sub_75FFF0();
        if (v111)
        {
          v112 = v111;
          [*&v97[v104] pageContainerSize];
          [*&v97[v104] pageMarginInsets];
          sub_769DA0();
          v114 = sub_E3618(v113, v112, v49);
          v116 = v115;
        }

        else
        {
          v114 = 0.0;
          v116 = 0.0;
        }

        [v107 setFrame:{v106, MaxY + v110, v114, v116}];

        swift_unknownObjectRelease();
        return v107;
      }
    }

    else
    {
      v98 = v125;
      sub_E5A10(v93, v125);
      v99 = v94(v93 + v91, 1, v90);
      v97 = v120;
      if (v99 != 1)
      {
        v100 = v127;
        v101 = v93 + v91;
        v102 = v124;
        (*(v127 + 32))(v124, v101, v90);
        sub_E5A80();
        LODWORD(v117) = sub_7691C0();
        v103 = *(v100 + 8);
        v103(v102, v90);
        sub_10A2C(v86, &unk_94EE60);
        sub_10A2C(v128, &unk_94EE60);
        v103(v98, v90);
        v49 = v119;
        sub_10A2C(v93, &unk_94EE60);
        v96 = v121;
        if (v117)
        {
          goto LABEL_59;
        }

LABEL_57:
        swift_unknownObjectRelease();

        goto LABEL_53;
      }

      sub_10A2C(v86, &unk_94EE60);
      sub_10A2C(v128, &unk_94EE60);
      (*(v127 + 8))(v98, v90);
      v96 = v121;
    }

    sub_10A2C(v93, &qword_946A50);
    goto LABEL_57;
  }

  v49 = v119;
  if (v117 != &dword_0 + 1)
  {
LABEL_28:
    v65 = sub_1DA314();
    if (v65)
    {
      v52 = v65;
      [v46 frame];
      v66 = CGRectGetWidth(v135) + 24.0;
      [v46 frame];
      v67 = v41 + v41 + CGRectGetHeight(v136);
      [v46 frame];
      v69 = v68 + -12.0;
      v71 = v70 - v41;
      v63 = v118;
      [v63 setFrame:{v69, v71, v66, v67}];
      *&v63[OBJC_IVAR____TtC18ASMessagesProvider32SearchCollectionLayoutAttributes_cornerRadius] = *&v4[OBJC_IVAR____TtC18ASMessagesProvider26SearchCollectionViewLayout_backgroundCornerRadius];
      if (v52 != 1)
      {
        if (v52 == 2)
        {
          v64 = 0;
          goto LABEL_40;
        }

LABEL_32:
        if (v52 != 3)
        {
          v131 = v52;
          result = sub_76A980();
          __break(1u);
          return result;
        }

        if (qword_93C988 != -1)
        {
          swift_once();
        }

        v64 = qword_99C918;
        v72 = qword_99C918;
        goto LABEL_40;
      }

LABEL_39:
      v64 = [objc_opt_self() secondarySystemBackgroundColor];
      goto LABEL_40;
    }

    goto LABEL_52;
  }

LABEL_23:
  v51 = sub_1DA314();
  if (!v51)
  {
LABEL_52:
    swift_unknownObjectRelease();

LABEL_53:
    return 0;
  }

  v52 = v51;
  [v46 frame];
  Width = CGRectGetWidth(v133);
  [v46 frame];
  v55 = Width + v54 + v54;
  [v46 frame];
  v56 = v41 + v41 + CGRectGetHeight(v134);
  [v46 frame];
  v58 = v57;
  v60 = v59;
  [v46 frame];
  v62 = v58 - v61;
  v63 = v118;
  [v63 setFrame:{v62, v60 - v41, v55, v56}];
  *&v63[OBJC_IVAR____TtC18ASMessagesProvider32SearchCollectionLayoutAttributes_cornerRadius] = 0;
  if (v52 == 1)
  {
    goto LABEL_39;
  }

  v64 = 0;
  if (v52 != 2)
  {
    goto LABEL_32;
  }

LABEL_40:
  v75 = *&v63[OBJC_IVAR____TtC18ASMessagesProvider32SearchCollectionLayoutAttributes_backgroundColor];
  *&v63[OBJC_IVAR____TtC18ASMessagesProvider32SearchCollectionLayoutAttributes_backgroundColor] = v64;

  v76 = v63;
  *&v63[OBJC_IVAR____TtC18ASMessagesProvider32SearchCollectionLayoutAttributes_backgroundGradientColors] = sub_158314(v52);

  if (v52 >= 3)
  {
    if (qword_93C990 != -1)
    {
      swift_once();
    }

    v77 = qword_99C920;
    v78 = qword_99C920;
  }

  else
  {
    v77 = 0;
  }

  v79 = *&v76[OBJC_IVAR____TtC18ASMessagesProvider32SearchCollectionLayoutAttributes_borderColor];
  *&v76[OBJC_IVAR____TtC18ASMessagesProvider32SearchCollectionLayoutAttributes_borderColor] = v77;

  [v76 setZIndex:-1];
  swift_unknownObjectRelease();

  return v76;
}

uint64_t sub_15A85C()
{
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 delegate];

    if (v3)
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        type metadata accessor for SearchResultsCollectionViewDelegate();
        v4 = swift_dynamicCastClass();
        if (v4)
        {
          v5 = v4;
          v6 = sub_10E334(_swiftEmptyArrayStorage);
          v7 = OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_maxSizeForRowCache;
          swift_beginAccess();
          *(v5 + v7) = v6;

          *(v5 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_isFirstItemFullWidth) = 2;
        }
      }

      swift_unknownObjectRelease();
    }
  }

  v12.receiver = v0;
  v12.super_class = type metadata accessor for SearchCollectionViewLayout();
  objc_msgSendSuper2(&v12, "prepareLayout");
  v8 = &v0[OBJC_IVAR____TtC18ASMessagesProvider26SearchCollectionViewLayout_pendingPrepareObserver];
  v9 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider26SearchCollectionViewLayout_pendingPrepareObserver];
  if (v9)
  {

    v9(v0);
    sub_F704(v9);
    v10 = *v8;
  }

  else
  {
    v10 = 0;
  }

  *v8 = 0;
  v8[1] = 0;
  return sub_F704(v10);
}

id sub_15AA1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchCollectionViewLayout();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_15AA88()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_766CA0();
  sub_161DC(v4, qword_99B308);
  sub_BE38(v4, qword_99B308);
  *v3 = UIFontTextStyleBody;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_B1B4(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleBody;
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_15AC08()
{
  result = qword_946A58;
  if (!qword_946A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_946A58);
  }

  return result;
}

unint64_t sub_15AC5C(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

double sub_15AC6C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a3;
  v7 = sub_75DAB0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  if (sub_769240() == a1 && v10 == a2)
  {

    goto LABEL_10;
  }

  v12 = sub_76A950();

  if (v12)
  {
LABEL_10:
    *(a4 + 24) = sub_BD88(&qword_946B58);
    *(a4 + 32) = sub_15D000(&qword_946B60, &qword_946B58);
    v21[1] = sub_B1B4(a4);
    v21[0] = sub_769240();
    type metadata accessor for TitleHeaderView(0);
    sub_769BD0();
    v14 = swift_allocObject();
    swift_weakInit();
    (*(v8 + 16))(v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v7);
    v15 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    (*(v8 + 32))(v16 + v15, v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    sub_763760();
    return result;
  }

  sub_75E6D0();
  if (sub_75E6B0() == a1 && v13 == a2)
  {
    goto LABEL_8;
  }

  v18 = sub_76A950();

  if (v18)
  {
    goto LABEL_12;
  }

  if (sub_75E6C0() == a1 && v19 == a2)
  {
LABEL_8:
  }

  else
  {
    v20 = sub_76A950();

    if ((v20 & 1) == 0)
    {
      *(a4 + 32) = 0;
      result = 0.0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      return result;
    }
  }

LABEL_12:
  *(a4 + 24) = sub_BD88(&qword_946B48);
  *(a4 + 32) = sub_15D000(&qword_946B50, &qword_946B48);
  sub_B1B4(a4);
  sub_75E6A0();
  return result;
}

uint64_t sub_15AF94(uint64_t a1)
{
  v3 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7656C0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&unk_94F1F0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v62 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v61 = &v56 - v14;
  __chkstk_darwin(v15);
  v17 = &v56 - v16;
  v19 = __chkstk_darwin(v18);
  v21 = &v56 - v20;
  if (((*(v1 + 24))(v19) & 1) == 0)
  {
    return 0;
  }

  v59 = v5;
  v60 = a1;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v22 = *(v11 + 8);
  v22(v21, v10);
  v23 = v65;
  if (!v65)
  {
    return 0;
  }

  v24 = HIBYTE(v65) & 0xF;
  if ((v65 & 0x2000000000000000) == 0)
  {
    v24 = v64 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {

    return 0;
  }

  v58 = v64;
  sub_75DA60();
  sub_765BE0();
  sub_765630();
  v26 = v25;
  v28 = v27;
  (*(v7 + 8))(v9, v6);
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v22(v17, v10);
  v29 = v64;
  if (v64)
  {
    sub_764C60();
    v31 = v30;
    v32 = sub_75DA30();
    if (qword_93C5E0 != -1)
    {
      swift_once();
    }

    v33 = qword_9481A0;
    if (v31)
    {
      v34 = sub_769210();
    }

    else
    {
      v34 = 0;
    }

    [v33 setTitle:v34 forState:0];

    [v33 setImage:0 forState:0];
    v38 = [v33 titleLabel];
    v39 = v38;
    if (v38)
    {
      v56 = v29;
      v57 = v31;
      v40 = v38;
      v41 = [v40 font];
      if (v41)
      {
        v42 = v41;
        v43 = [v41 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v32];
      }

      else
      {
        v43 = 0;
      }

      [v40 setFont:v43];
    }

    [v33 sizeThatFits:{v26, v28}];
    v45 = v44;
    v37 = v46;

    v36 = v45 + 0.0;
    [v33 setTitle:0 forState:0];
    [v33 setImage:0 forState:0];
  }

  else
  {
    v36 = 0.0;
    v37 = 0.0;
  }

  v47 = v61;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v22(v47, v10);
  v60 = v64;
  v57 = type metadata accessor for TitleHeaderView(0);
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v22(v47, v10);
  v49 = v64;
  v48 = v65;
  v50 = v62;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v22(v50, v10);
  v51 = v63;
  v52 = sub_15CB9C();
  v53 = v59;
  sub_15B680(v59);
  v54 = sub_75DA40();
  swift_getObjectType();
  LOBYTE(v55) = 1;
  sub_1995E0(v49, v48, v51, v58, v23, v60, 0, 0, v26, v28, v36, v37, 0, 0, v52, v53, v55, v54);

  swift_unknownObjectRelease();

  sub_15CFA0(v53, type metadata accessor for TitleHeaderView.Style);
  return *&v26;
}

uint64_t sub_15B680@<X0>(uint64_t a1@<X8>)
{
  v88 = a1;
  v95 = sub_75CFE0();
  v89 = *(v95 - 8);
  __chkstk_darwin(v95);
  v93 = &v76 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_BD88(&qword_9439D8);
  __chkstk_darwin(v2 - 8);
  v94 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v92 = &v76 - v5;
  v6 = sub_BD88(&qword_9439E0);
  __chkstk_darwin(v6 - 8);
  v91 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v84 = &v76 - v9;
  v79 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v83 = *(v79 - 8);
  __chkstk_darwin(v79);
  v87 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v86 = &v76 - v12;
  __chkstk_darwin(v13);
  v85 = &v76 - v14;
  __chkstk_darwin(v15);
  v90 = (&v76 - v16);
  v17 = sub_BD88(&unk_948010);
  __chkstk_darwin(v17 - 8);
  v78 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v77 = &v76 - v20;
  __chkstk_darwin(v21);
  v23 = &v76 - v22;
  __chkstk_darwin(v24);
  v26 = &v76 - v25;
  __chkstk_darwin(v27);
  v96 = &v76 - v28;
  v29 = sub_BD88(&unk_94F1F0);
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v76 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v76 - v34;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v36 = *(v30 + 8);
  v36(v35, v29);
  v37 = v98;
  if (v98)
  {
  }

  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v36(v32, v29);
  v38 = v98;
  if (v98)
  {
    v39 = v97;

    v40 = HIBYTE(v38) & 0xF;
    if ((v38 & 0x2000000000000000) == 0)
    {
      v40 = v39 & 0xFFFFFFFFFFFFLL;
    }

    v41 = v40 != 0;
  }

  else
  {
    v41 = 0;
  }

  v42 = sub_759810();
  v43 = *(v42 - 8);
  (*(v43 + 56))(v96, 1, 1, v42);
  v44 = sub_75CFD0();
  v80 = *(v44 - 8);
  v81 = v44;
  (*(v80 + 56))(v92, 1, 1);
  v45 = (v43 + 48);
  v82 = v41;
  if (!v37)
  {
    if (v41)
    {
      v47 = v77;
      sub_1ED18(v96, v77, &unk_948010);
      if ((*v45)(v47, 1, v42) == 1)
      {
        sub_10A2C(v47, &unk_948010);
        v48 = 0;
      }

      else
      {
        v48 = sub_7597B0();
        (*(v43 + 8))(v47, v42);
      }

      v52 = v84;
      v53 = v79;
      sub_5E740C(v48, v90);

      v54 = v85;
      if (qword_93DE50 != -1)
      {
        swift_once();
      }

      v55 = qword_9A0208;
      goto LABEL_31;
    }

    v50 = v78;
    sub_1ED18(v96, v78, &unk_948010);
    if ((*v45)(v50, 1, v42) == 1)
    {
      sub_10A2C(v50, &unk_948010);
      v51 = 0;
    }

    else
    {
      v51 = sub_7597B0();
      (*(v43 + 8))(v50, v42);
    }

    v52 = v84;
    v53 = v79;
    sub_5E740C(v51, v90);

    v54 = v85;
    if (qword_93DE38 != -1)
    {
      swift_once();
    }

    v56 = 1;
    v57 = qword_9A01C0;
LABEL_38:
    v59 = v54;
    goto LABEL_39;
  }

  if (!v41)
  {
    sub_1ED18(v96, v23, &unk_948010);
    if ((*v45)(v23, 1, v42) == 1)
    {
      sub_10A2C(v23, &unk_948010);
      v49 = 0;
    }

    else
    {
      v49 = sub_7597B0();
      (*(v43 + 8))(v23, v42);
    }

    v52 = v84;
    v53 = v79;
    sub_5E740C(v49, v90);

    v54 = v85;
    if (qword_93DE40 != -1)
    {
      swift_once();
    }

    v56 = 1;
    v57 = qword_9A01D8;
    goto LABEL_38;
  }

  sub_1ED18(v96, v26, &unk_948010);
  if ((*v45)(v26, 1, v42) == 1)
  {
    sub_10A2C(v26, &unk_948010);
    v46 = 0;
  }

  else
  {
    v46 = sub_7597B0();
    (*(v43 + 8))(v26, v42);
  }

  v52 = v84;
  v53 = v79;
  sub_5E740C(v46, v90);

  v54 = v85;
  if (qword_93DE58 != -1)
  {
    swift_once();
  }

  v55 = qword_9A0220;
LABEL_31:
  v58 = sub_BE38(v53, v55);
  sub_C1D58(v58, v54);
  if (qword_93DE30 != -1)
  {
    swift_once();
  }

  v56 = 0;
  v57 = qword_9A01A8;
  v59 = v52;
LABEL_39:
  v60 = sub_BE38(v53, v57);
  sub_C1D58(v60, v59);
  (*(v83 + 56))(v52, v56, 1, v53);
  v61 = v90;
  v62 = v86;
  sub_C1D58(v90, v86);
  v63 = v87;
  sub_C1D58(v54, v87);
  sub_1ED18(v52, v91, &qword_9439E0);
  v64 = v92;
  sub_1ED18(v92, v94, &qword_9439D8);
  v65 = v89;
  (*(v89 + 104))(v93, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v95);
  sub_396E8();
  v66 = sub_769FB0();
  sub_10A2C(v64, &qword_9439D8);
  sub_10A2C(v52, &qword_9439E0);
  sub_15CFA0(v54, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_15CFA0(v61, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10A2C(v96, &unk_948010);
  v67 = type metadata accessor for TitleHeaderView.Style(0);
  v68 = v67[8];
  v69 = v88;
  sub_15CEA0(v62, v88);
  sub_15CEA0(v63, v69 + v67[5]);
  sub_15CF04(v91, v69 + v67[6]);
  *(v69 + v67[7]) = 0;
  *(v69 + v68) = 0;
  v70 = v82;
  *(v69 + v67[9]) = v82;
  *(v69 + v67[14]) = 0x4030000000000000;
  *(v69 + v67[12]) = 0;
  *(v69 + v67[13]) = v66;
  v71 = v94;
  (*(v65 + 32))(v69 + v67[11], v93, v95);
  v73 = v80;
  v72 = v81;
  if ((*(v80 + 48))(v71, 1, v81) != 1)
  {
    return (*(v73 + 32))(v69 + v67[10], v71, v72);
  }

  sub_10A2C(v71, &qword_9439D8);
  if (v70)
  {
    v74 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
  }

  else
  {
    v74 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
  }

  return (*(v73 + 104))(v69 + v67[10], *v74, v72);
}

uint64_t sub_15C274(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_15C2E8(a1, a6);
  }

  return result;
}

uint64_t sub_15C2E8(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v6 - 8);
  v56 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_75DAB0();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v51 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v8;
  __chkstk_darwin(v9);
  v50 = &v47 - v10;
  v11 = sub_765240();
  v47 = *(v11 - 8);
  v48 = v11;
  __chkstk_darwin(v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&unk_94F1F0);
  v58 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v47 - v15;
  v57 = a2;
  sub_75DAA0();
  sub_75A110();
  v54 = v3;
  sub_768900();
  sub_768ED0();
  v59 = v61;
  swift_getKeyPath();
  sub_768750();

  v17 = v61;
  v18 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtwork;
  v19 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtwork);

  sub_1935B4(v17);
  *(a1 + v18) = v17;

  sub_1935C8(v19);

  swift_getKeyPath();
  v60 = v14;
  sub_768750();

  v20 = v61;
  v21 = v62;
  v22 = (a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowText);
  v24 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowText);
  v23 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowText + 8);

  sub_192F94(v20, v21);
  *v22 = v20;
  v22[1] = v21;

  sub_193028(v24, v23);

  if (*(a1 + v18))
  {
    v25 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtworkView);
    if (v25)
    {

      v26 = v25;
      sub_765260();
      sub_765250();
      sub_765210();
      (*(v47 + 8))(v13, v48);
      sub_765330();
      sub_759210();
      sub_14FA38();
      sub_75A050();
    }
  }

  swift_getKeyPath();
  sub_768750();

  v27 = v61;
  v28 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtwork;
  v29 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtwork);

  sub_193754(v27);
  *(a1 + v28) = v27;

  sub_193868(v29);

  v30 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel);
  swift_getKeyPath();
  sub_768750();

  if (v62)
  {
    v31 = sub_769210();
  }

  else
  {
    v31 = 0;
  }

  v49 = v30;
  [v30 setText:v31];

  if (*(a1 + v28))
  {
    v32 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtworkView);
    if (v32)
    {

      v33 = v32;
      sub_765260();
      sub_765250();
      sub_765210();
      (*(v47 + 8))(v13, v48);
      sub_765330();
      sub_759210();
      sub_14FA38();
      sub_75A050();
    }
  }

  v34 = v53;
  v35 = *(v53 + 16);
  v36 = v50;
  v37 = v55;
  v35(v50, v57, v55);
  v38 = v51;
  v35(v51, v36, v37);
  v39 = (*(v34 + 80) + 24) & ~*(v34 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = v54;
  (*(v34 + 32))(v40 + v39, v36, v37);
  v41 = (a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabelNumberOfLines);
  *v41 = sub_15CE3C;
  v41[1] = v40;

  [v49 setNumberOfLines:sub_15CB9C()];

  (*(v34 + 8))(v38, v37);
  v42 = v56;
  sub_15B680(v56);
  (*&stru_1A8.segname[(swift_isaMask & *a1) + 16])(v42);
  v43 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_detailLabel);
  if (v43)
  {
    swift_getKeyPath();
    v44 = v43;
    sub_768750();

    if (v62)
    {
      v45 = sub_769210();
    }

    else
    {
      v45 = 0;
    }

    [v44 setText:v45];
  }

  [a1 setNeedsLayout];

  return (*(v58 + 8))(v16, v60);
}

uint64_t sub_15CB30()
{

  return swift_deallocClassInstance();
}

uint64_t sub_15CB9C()
{
  v0 = sub_BD88(&unk_94F1F0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - v2;
  v4 = sub_75DA30();
  v5 = sub_769A00();

  if (v5)
  {
    return 0;
  }

  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  (*(v1 + 8))(v3, v0);
  if (!v7[1])
  {
    return 2;
  }

  return 1;
}

void *sub_15CCDC(uint64_t a1)
{
  v1 = COERCE_DOUBLE(sub_15AF94(a1));
  if (v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = v1;
  v5 = v2;
  v6 = v2 >= v1 ? v1 : v2;
  if (v6 <= 0.0)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = objc_opt_self();
  v8 = [v7 absoluteDimension:v4];
  v9 = [v7 absoluteDimension:v5];
  v10 = [objc_opt_self() sizeWithWidthDimension:v8 heightDimension:v9];

  v11 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v10 elementKind:UICollectionElementKindSectionHeader alignment:1];
  sub_BD88(&unk_93F5C0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_77D9F0;
  *(v12 + 32) = v11;

  return v12;
}

uint64_t sub_15CE3C()
{
  sub_75DAB0();

  return sub_15CB9C();
}

uint64_t sub_15CEA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_15CF04(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_9439E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_15CF74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_764980();
  *a1 = result;
  return result;
}

uint64_t sub_15CFA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_15D000(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_133D8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_15D054()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_15D08C()
{
  v1 = sub_75DAB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_15D150(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_75DAB0() - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  return sub_15C274(a1, a2, a3, a4, v10, v11);
}

__n128 sub_15D1F0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_15D204(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_15D24C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_15D2A0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, int a6@<W7>, uint64_t a7@<X8>, double a8@<D4>, double a9@<D5>)
{
  v43 = a6;
  v44 = a5;
  v42 = a4;
  v51 = a7;
  v52 = a3;
  v49 = a1;
  v50 = a2;
  v46 = a8;
  v47 = a9;
  v41 = sub_767D60();
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_764930();
  v53 = *(v48 - 8);
  __chkstk_darwin(v48);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_7656A0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v39 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v18 = sub_BD88(&qword_9438F8);
  __chkstk_darwin(v18);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v37 - v22;
  sub_1ED18(v49, &v37 - v22, &qword_963790);
  sub_1ED18(v50, &v23[*(v18 + 48)], &qword_963790);
  swift_getKeyPath();
  sub_BD88(&unk_94F1F0);
  sub_768750();

  v49 = v13;
  v24 = *(v13 + 104);
  v25 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v55)
  {
    v25 = &enum case for PageGrid.Direction.vertical(_:);
  }

  v26 = *v25;
  v50 = v12;
  v24(v17, v26, v12);
  swift_getKeyPath();
  sub_768750();

  v27 = *(v53 + 88);
  v45 = v11;
  v28 = v48;
  if (v27(v11) == enum case for Shelf.ContentType.searchChartsAndCategories(_:))
  {
    v29 = v23;
    v30 = v49;
    v31 = v50;
    if (v43)
    {
      v32 = 2;
    }

    else
    {
      v32 = v44;
    }

    v33 = v38;
    sub_75B4A0();
    v34 = sub_767D40();
    (*(v40 + 8))(v33, v41);
    if (v34 & 1) != 0 && (sub_75B4C0())
    {
      v32 = 1;
    }

    (*(v30 + 16))(v39, v17, v31);
    sub_3CC450(v32);
    sub_765670();
    (*(v30 + 8))(v17, v31);
    return sub_10A2C(v29, &qword_9438F8);
  }

  else
  {
    v54 = v42;
    sub_1ED18(v23, v20, &qword_9438F8);
    v36 = *(v18 + 48);
    sub_B7A24();
    sub_75B530();
    (*(v49 + 8))(v17, v50);
    sub_10A2C(v23, &qword_9438F8);
    sub_10A2C(&v20[v36], &qword_963790);
    sub_10A2C(v20, &qword_963790);
    return (*(v53 + 8))(v45, v28);
  }
}

uint64_t sub_15D898()
{
  sub_15DCC8();

  return sub_75B530();
}

uint64_t sub_15D97C()
{
  sub_15DCC8();

  return sub_75B520();
}

uint64_t sub_15DA6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_15DD24();

  return PageGridCaching<>.invalidateCache()(a1, v4, a2);
}

uint64_t sub_15DAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D6>, double a9@<D7>)
{
  v23[6] = a5;
  v23[7] = a6;
  v23[5] = a4;
  *&v23[3] = a8;
  *&v23[4] = a9;
  v23[1] = a7;
  v23[2] = a1;
  v12 = sub_BD88(&qword_9438F8);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v23 - v17;
  v19 = *(v9 + 2);
  v20 = *(v9 + 24);
  sub_1ED18(a2, v23 - v17, &qword_963790);
  sub_1ED18(a3, &v18[*(v13 + 56)], &qword_963790);
  v24 = *v9;
  v25 = v19;
  v26 = v20;
  sub_1ED18(v18, v15, &qword_9438F8);
  v21 = *(v13 + 56);
  sub_75B530();
  sub_10A2C(v18, &qword_9438F8);
  sub_10A2C(&v15[v21], &qword_963790);
  return sub_10A2C(v15, &qword_963790);
}

unint64_t sub_15DCC8()
{
  result = qword_946B68;
  if (!qword_946B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_946B68);
  }

  return result;
}

unint64_t sub_15DD24()
{
  result = qword_946B70;
  if (!qword_946B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_946B70);
  }

  return result;
}

id DebugSettingsProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DebugSettingsProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugSettingsProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_15DE74()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

void sub_15DEE4(uint64_t a1, uint64_t a2)
{
  v3 = sub_BD88(&unk_944D90);
  __chkstk_darwin(v3 - 8);
  v35 = &v32 - v4;
  v34 = sub_BD88(&qword_946CA0);
  v5 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v32 - v6;
  v7 = sub_764930();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v48 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v47 = &v32 - v11;
  v46 = sub_BD88(&unk_94F1F0);
  v12 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v32 - v13;
  v14 = sub_75C840();
  v16 = __chkstk_darwin(v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + 16);
  if (v19)
  {
    v21 = *(v15 + 16);
    v20 = v15 + 16;
    v22 = a2 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v41 = *(v20 + 56);
    v42 = v21;
    v40 = (v12 + 8);
    v39 = enum case for Shelf.ContentType.uber(_:);
    v37 = (v8 + 8);
    v38 = (v8 + 104);
    v43 = v20;
    v36 = (v20 - 8);
    v32 = (v5 + 8);
    v44 = v14;
    v21(v18, v22, v14, v16);
    while (1)
    {
      swift_getKeyPath();
      v28 = v45;
      sub_75C7B0();

      swift_getKeyPath();
      v29 = v46;
      sub_768750();

      (*v40)(v28, v29);
      (*v38)(v48, v39, v7);
      sub_15E76C();
      sub_769430();
      sub_769430();
      if (v51 == v49 && v52 == v50)
      {
        break;
      }

      v30 = sub_76A950();
      v31 = *v37;
      (*v37)(v48, v7);
      v31(v47, v7);

      if (v30)
      {
        goto LABEL_4;
      }

LABEL_5:
      v26 = v44;
      (*v36)(v18, v44);
      v22 += v41;
      if (!--v19)
      {
        return;
      }

      v42(v18, v22, v26, v27);
    }

    v23 = *v37;
    (*v37)(v48, v7);
    v23(v47, v7);

LABEL_4:
    sub_75C790();
    v24 = v33;
    sub_768B30();
    sub_9954C();
    v25 = v34;
    sub_768AF0();
    (*v32)(v24, v25);
    goto LABEL_5;
  }
}

uint64_t sub_15E44C(void *a1, uint64_t a2, void *a3)
{
  v20 = a1;
  sub_127C1C();
  v5 = a1;
  sub_BD88(&qword_946C90);
  if (swift_dynamicCast())
  {
    sub_10914(&v16, v21);
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_15E72C;
    *(v8 + 24) = v7;
    v18 = sub_2EC28;
    v19 = v8;
    *&v16 = _NSConcreteStackBlock;
    *(&v16 + 1) = 1107296256;
    *&v17 = sub_1EB578;
    *(&v17 + 1) = &unk_885C98;
    v9 = _Block_copy(&v16);
    v10 = v5;

    [v6 performWithoutAnimation:v9];
    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      if (swift_weakLoadStrong())
      {
        v13 = v22;
        v14 = v23;
        sub_B170(v21, v22);
        v15 = (*(v14 + 8))(v13, v14);
        sub_65EB0(v15, a3);
      }

      sub_BEB8(v21);
    }
  }

  else
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    return sub_15E68C(&v16);
  }

  return result;
}

uint64_t sub_15E68C(uint64_t a1)
{
  v2 = sub_BD88(&qword_946C98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_15E6F4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_15E74C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_15E76C()
{
  result = qword_942D68;
  if (!qword_942D68)
  {
    sub_764930();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_942D68);
  }

  return result;
}

uint64_t sub_15E7D0()
{
  sub_BD88(&qword_9452E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_783150;
  *(inited + 32) = 0x6E6F697469736F70;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNull) init];
  *(inited + 56) = 0x6E6564646968;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = [objc_allocWithZone(NSNull) init];
  *(inited + 80) = 0x49726564724F6E6FLL;
  *(inited + 88) = 0xE90000000000006ELL;
  *(inited + 96) = [objc_allocWithZone(NSNull) init];
  *(inited + 104) = 0x4F726564724F6E6FLL;
  *(inited + 112) = 0xEA00000000007475;
  *(inited + 120) = [objc_allocWithZone(NSNull) init];
  *(inited + 128) = 0x726579616C627573;
  *(inited + 136) = 0xE900000000000073;
  *(inited + 144) = [objc_allocWithZone(NSNull) init];
  *(inited + 152) = 0x73746E65746E6F63;
  *(inited + 160) = 0xE800000000000000;
  *(inited + 168) = [objc_allocWithZone(NSNull) init];
  *(inited + 176) = 0x73646E756F62;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = [objc_allocWithZone(NSNull) init];
  strcpy((inited + 200), "contentsRect");
  *(inited + 213) = 0;
  *(inited + 214) = -5120;
  *(inited + 216) = [objc_allocWithZone(NSNull) init];
  v1 = sub_10D54C(inited);
  swift_setDeallocating();
  sub_BD88(&qword_9452E8);
  result = swift_arrayDestroy();
  qword_99B320 = v1;
  return result;
}

CGFloat sub_15E9D8()
{
  CGAffineTransformMakeScale(&v2, 1.0, -1.0);
  *&v1.a = *&v2.m11;
  *&v1.c = *&v2.m13;
  *&v1.tx = *&v2.m21;
  CATransform3DMakeAffineTransform(&v2, &v1);
  *byte_99B328 = v2;
  return v2.m21;
}

id sub_15EAFC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_769210();
    [v2 removeObserver:v0 forKeyPath:v3];
  }

  v5.receiver = v0;
  v5.super_class = type metadata accessor for MirrorView();
  return objc_msgSendSuper2(&v5, "dealloc");
}

id sub_15EDAC()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for MirrorView();
  objc_msgSendSuper2(&v11, "layoutSubviews");
  v1 = [v0 bounds];
  (*&stru_B8.segname[(swift_isaMask & *v0) + 8])(v1, v2, v3);
  sub_769D60();
  v5 = v4;
  v6 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_artworkLayer);
  [v6 setBounds:{0.0, 0.0, v7, v4}];
  [v0 bounds];
  MidY = CGRectGetMidY(v12);
  [v0 bounds];
  v9 = MidY + (v5 - CGRectGetHeight(v13)) * 0.5;
  [v0 bounds];
  return [v6 setPosition:{CGRectGetMidX(v14), v9 + *(v0 + OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_contentsVerticalOffset)}];
}

double sub_15EF40(double a1)
{
  v2 = sub_766690();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [Strong image];

    if (v8)
    {
      [v8 size];
      sub_7666A0();
      sub_766600();
      a1 = v9;

      (*(v3 + 8))(v5, v2);
    }
  }

  return a1;
}

void sub_15F084()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_artworkLayer);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = Strong, v4 = [Strong backgroundColor], v3, v4))
  {
    v5 = [v4 CGColor];
  }

  else
  {
    v5 = 0;
  }

  [v1 setBackgroundColor:v5];

  v6 = swift_unknownObjectWeakLoadStrong();
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v6 image];

  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = [v8 CGImage];

  if (v9)
  {
    type metadata accessor for CGImage(0);
    v8 = sub_76A930();
  }

  else
  {
LABEL_9:
    v8 = 0;
  }

LABEL_10:
  [v1 setContents:v8];
  swift_unknownObjectRelease();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    [v10 alpha];
    v13 = v12;

    *&v14 = v13;
  }

  else
  {
    v14 = 0.0;
  }

  [v1 setOpacity:v14];
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    v17 = sub_769210();
    v18 = OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_imageKVOContext;
    swift_beginAccess();
    [v16 addObserver:v0 forKeyPath:v17 options:1 context:v0 + v18];
    swift_endAccess();
  }
}

void sub_15F294(uint64_t a1, NSString a2, uint64_t a3, Class isa, char *a5)
{
  v10 = &v5[OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_imageKVOContext];
  swift_beginAccess();
  if (!a5 || v10 != a5)
  {
    if (a2)
    {
      a2 = sub_769210();
    }

    sub_38EE0(a3, v25);
    v15 = v26;
    if (v26)
    {
      v16 = sub_B170(v25, v26);
      v17 = *(v15 - 8);
      v18 = __chkstk_darwin(v16);
      v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v20, v18);
      v21 = sub_76A930();
      (*(v17 + 8))(v20, v15);
      sub_BEB8(v25);
      if (!isa)
      {
LABEL_11:
        v22 = type metadata accessor for MirrorView();
        v24.receiver = v5;
        v24.super_class = v22;
        objc_msgSendSuper2(&v24, "observeValueForKeyPath:ofObject:change:context:", a2, v21, isa, a5);

        swift_unknownObjectRelease();
        goto LABEL_12;
      }
    }

    else
    {
      v21 = 0;
      if (!isa)
      {
        goto LABEL_11;
      }
    }

    type metadata accessor for NSKeyValueChangeKey(0);
    sub_15F67C();
    isa = sub_7690E0().super.isa;
    goto LABEL_11;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    isa = [Strong image];

    if (isa)
    {
      v13 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_artworkLayer];
      v14 = [(objc_class *)isa CGImage];
      [v13 setContents:v14];

      [v5 setNeedsLayout];
LABEL_12:
    }
  }
}

unint64_t sub_15F67C()
{
  result = qword_93E918;
  if (!qword_93E918)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_93E918);
  }

  return result;
}

uint64_t type metadata accessor for MediaPageHeaderCollectionViewHostingCell()
{
  result = qword_946D28;
  if (!qword_946D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_15F844()
{
  v0 = sub_764930();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for Shelf.ContentType.mediaPageHeader(_:), v0, v2);
  v5 = COERCE_DOUBLE(sub_75F920());
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  result = v5;
  if (v7)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_15FB04()
{
  v1 = v0;
  v2 = sub_75B1E0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_595214();
  sub_765B20();
  sub_75DAE0();
  if (swift_dynamicCastClass())
  {
    v6 = sub_75DAD0();
    if (v6 >> 62)
    {
      goto LABEL_29;
    }

    v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));

    if (v7)
    {
      do
      {
        sub_75A110();
        sub_768880();
        v8 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32GridTodayBrickCollectionViewCell_grid];
        v20[2] = v26;
        v21 = v8;
        sub_75DAC0();
        v9 = (*(v3 + 88))(v5, v2);
        if (v9 != enum case for ArtworkGridType.small(_:))
        {
          if (v9 == enum case for ArtworkGridType.large(_:))
          {
            v10 = 1;
            goto LABEL_12;
          }

          if (v9 == enum case for ArtworkGridType.extraLarge(_:))
          {
            v10 = 2;
            goto LABEL_12;
          }

          if (v9 == enum case for ArtworkGridType.mixed(_:))
          {
            v10 = 3;
            goto LABEL_12;
          }

LABEL_27:
          v17 = *(v3 + 8);
          v3 += 8;
          v17(v5, v2);
        }

        v10 = 0;
LABEL_12:
        v20[1] = OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_gridType;
        v11 = v21;
        v21[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_gridType] = v10;
        sub_44CB80();
        [v11 setNeedsLayout];
        v12 = sub_75DAD0();
        if (v12 >> 62)
        {
          v1 = sub_76A860();
        }

        else
        {
          v1 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
        }

        *&v21[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_expectedNumberOfArtworkImages] = v1;
        sub_44CD50();
        v13 = sub_75DAD0();
        v14 = v13;
        if (v13 >> 62)
        {
          v2 = sub_76A860();
          if (!v2)
          {
LABEL_35:
          }
        }

        else
        {
          v2 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
          if (!v2)
          {
            goto LABEL_35;
          }
        }

        v5 = 0;
        v22 = v14 & 0xFFFFFFFFFFFFFF8;
        v23 = v14 & 0xC000000000000001;
        v20[0] = v2;
        while (v23)
        {
          sub_76A770();
          v15 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

LABEL_22:
          if (sub_764F20())
          {
            v1 = v21;
            sub_765330();
            v25 = 0;
            memset(v24, 0, sizeof(v24));
            v3 = swift_allocObject();
            *(v3 + 16) = v1;
            *(v3 + 24) = v5;
            v16 = v1;
            sub_75A040();

            v2 = v20[0];

            sub_160090(v24);
          }

          else
          {
          }

          ++v5;
          if (v15 == v2)
          {
            goto LABEL_35;
          }
        }

        if (v5 < *(v22 + 16))
        {

          v15 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_26;
          }

          goto LABEL_22;
        }

        __break(1u);
LABEL_29:
        v18 = sub_76A860();
      }

      while (v18);
    }
  }
}

uint64_t type metadata accessor for GridTodayBrickCollectionViewCell()
{
  result = qword_946D68;
  if (!qword_946D68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_160050()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_160090(uint64_t a1)
{
  v2 = sub_BD88(&unk_9443A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1600F8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void (*a7)(_BYTE *, unint64_t))
{
  v8 = v7;
  v112 = a7;
  v121 = a6;
  v93 = a5;
  v120 = a4;
  v114 = a3;
  v11 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v11 - 8);
  v106 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_766690();
  v98 = *(v101 - 8);
  __chkstk_darwin(v101);
  v97 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v93 - v15;
  v17 = sub_75C930();
  v113 = *(v17 - 8);
  __chkstk_darwin(v17);
  v116 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v104 = &v93 - v20;
  __chkstk_darwin(v21);
  v110 = &v93 - v22;
  __chkstk_darwin(v23);
  v117 = &v93 - v24;
  v25 = sub_BD88(&unk_948720);
  __chkstk_darwin(v25 - 8);
  v96 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v93 - v28;
  v100 = sub_75C9A0();
  v111 = *(v100 - 8);
  __chkstk_darwin(v100);
  v105 = &v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v109 = &v93 - v32;
  __chkstk_darwin(v33);
  v102 = &v93 - v34;
  v35 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_imageViews;
  swift_beginAccess();
  v119 = v35;
  v36 = *(v7 + v35);
  if (v36 >> 62)
  {
    goto LABEL_103;
  }

  for (i = *(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8)); ; i = sub_76A860())
  {
    v107 = v8;
    v115 = v17;
    v99 = a1;
    v108 = v29;
    v38 = &v124;
    v103 = v16;
    if (!i)
    {
      goto LABEL_11;
    }

    if (i >= 1)
    {
      v94 = a2;

      v39 = 0;
      do
      {
        if ((v36 & 0xC000000000000001) != 0)
        {
          v40 = sub_76A770();
        }

        else
        {
          v40 = *&v36[8 * v39 + 32];
        }

        v41 = v40;
        ++v39;
        v122[0] = v40;
        type metadata accessor for BorderedScreenshotView();
        sub_161CCC(&qword_946D80, type metadata accessor for BorderedScreenshotView);
        v42 = v41;
        sub_76A6E0();
        sub_75A0B0();
        sub_1EB60(v123);
        v43 = *&v42[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView];
        v125.value.super.isa = 0;
        v125.is_nil = 0;
        sub_7591D0(v125, v44);
      }

      while (i != v39);

      v8 = v107;
      a2 = v94;
      v17 = v115;
LABEL_11:
      v118 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_videoView;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v46 = Strong;
        [*(Strong + qword_940590) setImage:{0, v93}];
        v122[0] = v46;
        type metadata accessor for VideoView();
        sub_161CCC(&qword_952550, type metadata accessor for VideoView);
        v47 = v46;
        v8 = v107;
        v48 = v47;
        sub_76A6E0();
        sub_75A0B0();

        sub_1EB60(v123);
      }

      v49 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_metrics;
      swift_beginAccess();
      v50 = v8;
      v51 = v111;
      v52 = *(v111 + 16);
      v53 = v102;
      i = v100;
      v52(v102, v50 + v49, v100);
      sub_75C990();
      v54 = *(v51 + 8);
      v54(v53, i);
      v55 = v109;
      v52(v109, v50 + v49, i);
      v56 = v110;
      sub_75C950();
      v111 = v51 + 8;
      v95 = v54;
      v54(v55, i);
      if (v114)
      {
        v57 = sub_759690();
      }

      else
      {
        v57 = 0;
      }

      a1 = a2;
      v29 = v99;
      v36 = v113;
      v58 = v117;
      v7 = v56;
      sub_558B9C(v57, v112, v117);

      v59 = *(v36 + 1);
      v113 = v36 + 8;
      v112 = v59;
      v59(v56, v17);
      v123[3] = &type metadata for CGFloat;
      v123[4] = &protocol witness table for CGFloat;
      v123[0] = 0x4021000000000000;
      sub_134D8(v123, v122);
      v60 = *(v36 + 2);
      v110 = v36 + 16;
      v109 = v60;
      (v60)(v104, v58, v17);
      v8 = v107;
      if (a2 | v29)
      {
        sub_7666A0();
        goto LABEL_24;
      }

      v61 = sub_55BABC(v114, v120, 0, 1);
      v35 = v116;
      if (v61 >> 62)
      {
        v91 = v61;
        v92 = sub_76A860();
        v61 = v91;
        v35 = v116;
        if (v92)
        {
          goto LABEL_19;
        }
      }

      else if (*(&dword_10 + (v61 & 0xFFFFFFFFFFFFFF8)))
      {
LABEL_19:
        if ((v61 & 0xC000000000000001) != 0)
        {
          goto LABEL_113;
        }

        v62 = *(&dword_10 + (v61 & 0xFFFFFFFFFFFFFF8));
        if (v62)
        {

          goto LABEL_22;
        }

        __break(1u);
        goto LABEL_115;
      }

      sub_7666A0();
      goto LABEL_25;
    }

    __break(1u);
LABEL_105:
    v36 = sub_7B220((v38 > 1), v120, 1, v36);
LABEL_27:

    v17 = v115;
LABEL_31:
    v95(v105, i);
    v112(v117, v17);
    sub_10A2C(v108, &unk_948720);
    *(v36 + 2) = v120;
    v64 = &v36[16 * v35];
    *(v64 + 4) = v7;
    v64[40] = 0;
    if (a1 | v29)
    {
      break;
    }

LABEL_76:
    v17 = 0;
    v29 = (v36 + 40);
    v16 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView;
    while (v17 < *(v36 + 2))
    {
      a2 = *(v29 - 8);
      a1 = *v29;
      v123[0] = _swiftEmptyArrayStorage;
      v79 = swift_unknownObjectWeakLoadStrong();

      if (v79)
      {
        v80 = v79;
        sub_769440();
        if (*(&dword_10 + (v123[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v123[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        sub_769500();
      }

      v81 = *(v8 + v16);
      if (v81)
      {
        v82 = v81;
        sub_769440();
        if (*(&dword_10 + (v123[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v123[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        sub_769500();
      }

      v83 = *(v8 + v119);
      if (v83 >> 62)
      {
        sub_BE70(0, &qword_93E550);

        v84 = sub_76A850();
      }

      else
      {
        swift_bridgeObjectRetain_n();
        sub_76A960();
        sub_BE70(0, &qword_93E550);
        v84 = v83;
      }

      v7 = v123;
      sub_10A0A0(v84);
      if (v123[0] >> 62)
      {
        v7 = v123[0];
        v35 = sub_76A860();
      }

      else
      {
        v35 = *(&dword_10 + (v123[0] & 0xFFFFFFFFFFFFFF8));
      }

      if (v17 < v35)
      {
        v85 = sub_5599F0();
        v7 = v85;
        if ((v85 & 0xC000000000000001) != 0)
        {
          v86 = sub_76A770();
        }

        else
        {
          if (v17 >= *(&dword_10 + (v85 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_101;
          }

          v86 = *(v85 + 8 * v17 + 32);
        }

        v87 = v86;

        v122[0] = v87;
        sub_BE70(0, &qword_93E550);
        sub_161D70();
        sub_76A6E0();
        v35 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v88 = swift_allocObject();
        *(v88 + 16) = v35;
        *(v88 + 24) = a1;
        *(v88 + 32) = v17;

        v7 = v121;
        sub_75A040();

        sub_10A2C(v123, &unk_9443A0);
      }

      ++v17;
      v29 += 16;
      if (v120 == v17)
      {
      }
    }

    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    ;
  }

  while (1)
  {
    a1 = *(v36 + 4);

    v65 = sub_5599F0();
    if (v65 >> 62)
    {
      v89 = v65;
      v90 = sub_76A860();
      v65 = v89;
      if (!v90)
      {
LABEL_107:

        v67 = 0;
        goto LABEL_108;
      }
    }

    else if (!*(&dword_10 + (v65 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_107;
    }

    if ((v65 & 0xC000000000000001) != 0)
    {
      v66 = sub_76A770();
      goto LABEL_37;
    }

    if (*(&dword_10 + (v65 & 0xFFFFFFFFFFFFFF8)))
    {
      v66 = *(v65 + 32);
LABEL_37:
      v67 = v66;

LABEL_108:
      v122[0] = v67;
      sub_BD88(&qword_943F70);
      sub_161E58();
      sub_76A6E0();
      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_75A040();

      sub_10A2C(v123, &unk_9443A0);
    }

    __break(1u);
LABEL_113:
    sub_76A770();
LABEL_22:

    sub_765260();
    sub_7666A0();

LABEL_24:
    v35 = v116;
LABEL_25:
    a2 = v96;
    sub_1ED18(v108, v96, &unk_948720);
    sub_75C970();
    sub_BEB8(v123);
    v63 = v97;
    sub_75C980();
    sub_766660();
    (*(v98 + 8))(v63, v101);
    if (a1)
    {

      sub_764BC0();
      v7 = sub_765330();
      v36 = sub_7B220(0, 1, 1, _swiftEmptyArrayStorage);
      v35 = *(v36 + 2);
      v38 = *(v36 + 3);
      v120 = v35 + 1;
      if (v35 >= v38 >> 1)
      {
        goto LABEL_105;
      }

      goto LABEL_27;
    }

    if (v29)
    {

      v7 = sub_765330();
      v36 = sub_7B220(0, 1, 1, _swiftEmptyArrayStorage);
      v35 = *(v36 + 2);
      v62 = *(v36 + 3);
      v120 = v35 + 1;
      if (v35 < v62 >> 1)
      {
LABEL_30:

        goto LABEL_31;
      }

LABEL_115:
      v36 = sub_7B220((v62 > 1), v120, 1, v36);
      goto LABEL_30;
    }

    v68 = sub_75C920();
    v7 = sub_55BABC(v114, v120, v68, 0);
    result = sub_75C9C0();
    v70 = v7;
    if (v7 >> 62)
    {
      result = sub_76A860();
      v70 = v7;
      i = result;
    }

    else
    {
      i = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
    }

    v94 = 0;
    if (i)
    {
      break;
    }

    v36 = _swiftEmptyArrayStorage;
LABEL_74:

    v95(v105, v100);
    v112(v117, v17);
    sub_10A2C(v108, &unk_948720);
    v120 = *(v36 + 2);
    if (!v120)
    {
    }

    a1 = v94;
    v29 = v99;
    if (!(v94 | v99))
    {
      goto LABEL_76;
    }
  }

  if (i >= 1)
  {
    a2 = 0;
    v104 = (v70 & 0xC000000000000001);
    v103 = (v36 + 88);
    LODWORD(v102) = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
    LODWORD(v98) = enum case for LockupMediaLayout.DisplayType.landscape(_:);
    v36 = _swiftEmptyArrayStorage;
    v101 = v70;
    while (1)
    {
      if (v104)
      {
        v29 = sub_76A770();
      }

      else
      {
        v29 = *(v70 + 8 * a2 + 32);
      }

      (v109)(v35, v117, v17);
      v71 = (*v103)(v35, v17);
      if (v71 == v102)
      {
        break;
      }

      if (v71 == v98)
      {
        goto LABEL_49;
      }

      v16 = sub_765150();
      v112(v35, v17);
LABEL_51:
      if (!v120)
      {
        goto LABEL_62;
      }

      v7 = v120;
      v72 = sub_765750();
      if (v72 >> 62)
      {
        v35 = v72;
        v74 = sub_76A860();
        v72 = v35;
        if (!v74)
        {
LABEL_61:

          goto LABEL_62;
        }
      }

      else if (!*(&dword_10 + (v72 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_61;
      }

      if ((v72 & 0xC000000000000001) != 0)
      {
        sub_76A770();
      }

      else
      {
        if (!*(&dword_10 + (v72 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_102;
        }
      }

      sub_765390();
      a1 = sub_764BC0();
      v73 = sub_7651E0();

      if ((v73 & 1) == 0)
      {

LABEL_62:
        if (v114)
        {
          v75 = sub_759690();
        }

        else
        {
          v75 = 0;
        }

        sub_7596B0();
        a1 = v106;
        sub_6C14C(v75, v106);

        sub_769DA0();
        v7 = sub_765330();
        sub_161D14(a1);
        goto LABEL_66;
      }

      v7 = sub_765330();

LABEL_66:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_7B220(0, *(v36 + 2) + 1, 1, v36);
      }

      v77 = *(v36 + 2);
      v76 = *(v36 + 3);
      if (v77 >= v76 >> 1)
      {
        v36 = sub_7B220((v76 > 1), v77 + 1, 1, v36);
      }

      ++a2;

      *(v36 + 2) = v77 + 1;
      v78 = &v36[16 * v77];
      *(v78 + 4) = v7;
      v78[40] = v16 & 1;
      v17 = v115;
      v35 = v116;
      v70 = v101;
      if (i == a2)
      {
        goto LABEL_74;
      }
    }

    v112(v35, v17);
LABEL_49:
    v16 = 0;
    goto LABEL_51;
  }

  __break(1u);
  return result;
}