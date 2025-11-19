char *sub_10004A0A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100176098, &qword_100121848);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 20);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[20 * v8])
    {
      memmove(v12, v13, 20 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 20 * v8);
  }

  return v10;
}

char *sub_10004A1BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_1001760A0, &qword_100121850);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 19);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[19 * v8])
    {
      memmove(v12, v13, 19 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 19 * v8);
  }

  return v10;
}

char *sub_10004A2D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_1001760E0, &qword_100121890);
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

char *sub_10004A3DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_1001760F0, &qword_1001218A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 12);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[12 * v8])
    {
      memmove(v12, v13, 12 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 12 * v8);
  }

  return v10;
}

char *sub_10004A4F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100176108, &qword_1001218B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 11);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[11 * v8])
    {
      memmove(v12, v13, 11 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 11 * v8);
  }

  return v10;
}

char *sub_10004A618(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100176110, &qword_1001218C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 9);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 9 * v8;
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

char *sub_10004A724(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175FD0, &qword_100121780);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 12);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[12 * v8])
    {
      memmove(v12, v13, 12 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 12 * v8);
  }

  return v10;
}

char *sub_10004A840(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175FD8, &qword_100121788);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 9);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 9 * v8;
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

char *sub_10004A94C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175FE0, &qword_100121790);
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

char *sub_10004AA50(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 5);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  v16 = 5 * v10;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v12;
}

char *sub_10004AB50(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100176008, &qword_1001217B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[6 * v8])
    {
      memmove(v12, v13, 6 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 6 * v8);
  }

  return v10;
}

char *sub_10004AC68(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 7);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[8 * v10 - v10])
    {
      memmove(v14, v15, 7 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 7 * v10);
  }

  return v12;
}

char *sub_10004AD84(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175FA8, &qword_100121758);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 22);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[22 * v8])
    {
      memmove(v12, v13, 22 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 22 * v8);
  }

  return v10;
}

char *sub_10004AEA4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175F30, &qword_1001216E0);
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

char *sub_10004AFC0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100176128, &qword_1001218D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 14);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[14 * v8])
    {
      memmove(v12, v13, 14 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 14 * v8);
  }

  return v10;
}

char *sub_10004B0E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100176118, &qword_1001218C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 22);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[22 * v8])
    {
      memmove(v12, v13, 22 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 22 * v8);
  }

  return v10;
}

char *sub_10004B204(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100176120, &qword_1001218D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 18);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[18 * v8])
    {
      memmove(v12, v13, 18 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 18 * v8);
  }

  return v10;
}

char *sub_10004B324(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175F80, &qword_100121730);
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

char *sub_10004B428(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175F78, &qword_100121728);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[6 * v8])
    {
      memmove(v12, v13, 6 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 6 * v8);
  }

  return v10;
}

char *sub_10004B540(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175F70, &qword_100121720);
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

char *sub_10004B644(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175F68, &qword_100121718);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 14);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[14 * v8])
    {
      memmove(v12, v13, 14 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 14 * v8);
  }

  return v10;
}

char *sub_10004B768(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[4 * v10])
    {
      memmove(v15, v16, 4 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 4 * v10);
  }

  return v12;
}

char *sub_10004B864(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001AB4(&qword_100175F90, &qword_100121740);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 12);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[12 * v8])
    {
      memmove(v12, v13, 12 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 12 * v8);
  }

  return v10;
}

uint64_t sub_10004B980(int a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_10001D194(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v16 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1000CCD94();
    v9 = v16;
  }

  v10 = v6;
  v11 = (*(v9 + 56) + 24 * v6);
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  sub_10004BA2C(v10, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_10004BA2C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(a2 + 48);
      v12 = (v11 + 4 * v6);
      v13 = *v12;
      result = static Hasher._hash(seed:bytes:count:)();
      v14 = result & v7;
      if (v3 >= v8)
      {
        if (v14 >= v8 && v3 >= v14)
        {
LABEL_15:
          v17 = (v11 + 4 * v3);
          if (v3 != v6 || v17 >= v12 + 1)
          {
            *v17 = *v12;
          }

          v18 = *(a2 + 56);
          v19 = v18 + 24 * v3;
          v20 = (v18 + 24 * v6);
          if (v3 != v6 || v19 >= v20 + 24)
          {
            v9 = *v20;
            *(v19 + 16) = *(v20 + 2);
            *v19 = v9;
            v3 = v6;
          }
        }
      }

      else if (v14 >= v8 || v3 >= v14)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_10004BBAC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10000CE28(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_10004BC18(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_10004BC5C(unint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  v6 = v4;
  v11 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v4;
  result = sub_10001D194(a4);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v15;
  if (v13[3] < v19)
  {
    sub_1000CC52C(v19, isUniquelyReferenced_nonNull_native);
    result = sub_10001D194(a4);
    if ((v5 & 1) == (v20 & 1))
    {
      goto LABEL_6;
    }

    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v25 = result;
    sub_1000CCD94();
    result = v25;
    v21 = v13;
    if (v5)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_6:
  v21 = v13;
  if (v5)
  {
LABEL_7:
    v22 = (v21[7] + 24 * result);
    result = *v22;
    v23 = v22[1];
    v24 = v22[2];
    *v22 = a1;
    v22[1] = a2;
    v22[2] = a3;
LABEL_12:
    *v6 = v21;
    return result;
  }

LABEL_10:
  v21[(result >> 6) + 8] |= 1 << result;
  *(v21[6] + 4 * result) = a4;
  v26 = (v21[7] + 24 * result);
  *v26 = a1;
  v26[1] = a2;
  v26[2] = a3;
  v27 = v21[2];
  v18 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (!v18)
  {
    result = 0;
    v21[2] = v28;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void *sub_10004BDCC@<X0>(void *(*a1)(void *__return_ptr)@<X1>, uint64_t a2@<X8>)
{
  result = a1(v7);
  if (!v2)
  {
    v5 = v7[1];
    v6 = v8;
    *a2 = v7[0];
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

void sub_10004BE18(char a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8, uint64_t a9)
{
  v119 = a7;
  v126 = a5;
  LODWORD(v125) = a4;
  v123 = a2;
  v124 = a3;
  v118 = type metadata accessor for LogID(0);
  v13 = *(*(v118 - 8) + 64);
  v14 = __chkstk_darwin(v118);
  v122 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v114 = &v111 - v17;
  __chkstk_darwin(v16);
  v19 = &v111 - v18;
  v20 = type metadata accessor for Logger();
  v127 = *(v20 - 8);
  v21 = *(v127 + 64);
  __chkstk_darwin(v20);
  v128 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = mach_absolute_time();
  v23 = *a8;
  v24 = *(*a8 + 16);
  v129 = sub_10004EFA4;
  v130 = v23;

  os_unfair_lock_lock(v24 + 4);
  sub_10004EF74(&v132);
  v120 = v9;
  if (v9)
  {
    goto LABEL_39;
  }

  os_unfair_lock_unlock(v24 + 4);
  v25 = v133;
  v117 = v132;
  v135 = v134;

  v26 = a8[1];
  if (!*(v26 + 16))
  {
    __break(1u);
    goto LABEL_30;
  }

  v27 = sub_10001D1DC(a1);
  if ((v28 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v29 = a9;
  v30 = *(v127 + 16);
  v31 = *(v26 + 56) + *(v127 + 72) * v27;
  v116 = v20;
  v30(v128, v31, v20);
  v132 = StaticString.description.getter();
  v133 = v32;
  v33._countAndFlagsBits = 32;
  v33._object = 0xE100000000000000;
  String.append(_:)(v33);
  v34._countAndFlagsBits = a6;
  v34._object = v119;
  String.append(_:)(v34);
  v35 = v133;
  v119 = v132;
  v36 = v19;
  sub_10004EDD0(v126, v19, type metadata accessor for LogID);

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  v39 = os_log_type_enabled(v37, v38);
  v115 = v23;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v112 = a9;
    v41 = v40;
    v42 = swift_slowAlloc();
    *v41 = 136446210;
    v131 = v42;
    v132 = 2113069;
    v133 = 0xE300000000000000;
    v43._countAndFlagsBits = v117;
    v43._object = v25;
    String.append(_:)(v43);
    v44 = (v36 + *(v118 + 24));
    v111 = v36;
    v45 = *v44;
    v46 = v44[1];

    v47._countAndFlagsBits = v45;
    v47._object = v46;
    String.append(_:)(v47);

    v48._countAndFlagsBits = v119;
    v48._object = v35;
    String.append(_:)(v48);

    v49 = v132;
    v50 = v133;
    sub_10004EE38(v111, type metadata accessor for LogID);
    v51 = sub_100035760(v49, v50, &v131);

    *(v41 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v37, v38, "%{public}s", v41, 0xCu);
    sub_10000CE78(v42);

    v29 = v112;
  }

  else
  {

    sub_10004EE38(v36, type metadata accessor for LogID);
  }

  v52 = v120;
  sub_100018384(&v136, v29);
  v24 = v52;
  v23 = v122;
  if (!v52)
  {
    v78 = mach_absolute_time();
    v19 = v78 - v121;
    if (v78 < v121)
    {
      __break(1u);
    }

    else if (qword_100173D00 == -1)
    {
      goto LABEL_18;
    }

    swift_once();
LABEL_18:
    v79 = v114;
    if (qword_100179650 != HIDWORD(qword_100179650))
    {
      if (!is_mul_ok(v19, qword_100179650))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (!HIDWORD(qword_100179650))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        os_unfair_lock_unlock(v24 + 4);
        __break(1u);
LABEL_40:
        os_unfair_lock_unlock((v19 + 16));
        __break(1u);
        return;
      }

      v19 = v19 * qword_100179650 / HIDWORD(qword_100179650);
    }

    v132 = StaticString.description.getter();
    v133 = v80;
    v81._countAndFlagsBits = 23328;
    v81._object = 0xE200000000000000;
    String.append(_:)(v81);
    v131 = v19 / 0x3E8;
    v82._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v82);

    v83._countAndFlagsBits = 1567847712;
    v83._object = 0xE400000000000000;
    String.append(_:)(v83);
    v85 = v132;
    v84 = v133;
    sub_10004EDD0(v126, v79, type metadata accessor for LogID);

    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v126 = 0;
      v89 = v88;
      v90 = swift_slowAlloc();
      v125 = v85;
      v91 = v90;
      *v89 = 136446210;
      v131 = v90;
      v132 = 2108732;
      v133 = 0xE300000000000000;
      v92._countAndFlagsBits = v117;
      v92._object = v25;
      String.append(_:)(v92);
      v93 = (v79 + *(v118 + 24));
      v94 = *v93;
      v95 = v93[1];

      v96._countAndFlagsBits = v94;
      v96._object = v95;
      String.append(_:)(v96);

      v97._countAndFlagsBits = v125;
      v97._object = v84;
      String.append(_:)(v97);

      v98 = v132;
      v99 = v133;
      sub_10004EE38(v114, type metadata accessor for LogID);
      v100 = sub_100035760(v98, v99, &v131);

      *(v89 + 4) = v100;
      _os_log_impl(&_mh_execute_header, v86, v87, "%{public}s", v89, 0xCu);
      sub_10000CE78(v91);

      v24 = v126;
    }

    else
    {

      v101 = sub_10004EE38(v79, type metadata accessor for LogID);
    }

    v107 = v116;
    v19 = *(v115 + 16);
    v108 = __chkstk_darwin(v101);
    *(&v111 - 2) = v109;
    *(&v111 - 2) = v135;
    __chkstk_darwin(v108);
    *(&v111 - 2) = sub_10001EF68;
    *(&v111 - 1) = v110;

    os_unfair_lock_lock((v19 + 16));
    sub_10004EFD4();
    if (!v24)
    {
      os_unfair_lock_unlock((v19 + 16));

      (*(v127 + 8))(v128, v107);

      return;
    }

    goto LABEL_40;
  }

  v53 = mach_absolute_time();
  v19 = v53 - v121;
  if (v53 >= v121)
  {
    if (qword_100173D00 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  swift_once();
LABEL_10:
  if (qword_100179650 != HIDWORD(qword_100179650))
  {
    if (is_mul_ok(v19, qword_100179650))
    {
      if (HIDWORD(qword_100179650))
      {
        v19 = v19 * qword_100179650 / HIDWORD(qword_100179650);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_14:
  v132 = 0;
  v133 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);
  v54._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v54);

  v55._countAndFlagsBits = 0x203A524F52524520;
  v55._object = 0xE800000000000000;
  String.append(_:)(v55);
  v131 = v24;
  sub_100001AB4(&qword_100177270, &qword_100120A40);
  _print_unlocked<A, B>(_:_:)();
  v56._countAndFlagsBits = 23328;
  v56._object = 0xE200000000000000;
  String.append(_:)(v56);
  v131 = v19 / 0x3E8;
  v57._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v57);

  v58._countAndFlagsBits = 1567847712;
  v58._object = 0xE400000000000000;
  String.append(_:)(v58);
  v60 = v132;
  v59 = v133;
  sub_10004EDD0(v126, v23, type metadata accessor for LogID);

  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();

  v63 = os_log_type_enabled(v61, v62);
  v113 = v25;
  if (v63)
  {
    v64 = swift_slowAlloc();
    v126 = v24;
    v65 = v64;
    v66 = swift_slowAlloc();
    v125 = v60;
    v67 = v66;
    *v65 = 136446210;
    v131 = v66;
    v132 = 11580;
    v133 = 0xE200000000000000;
    v68._countAndFlagsBits = v117;
    v68._object = v25;
    String.append(_:)(v68);
    v69 = (v23 + *(v118 + 24));
    v70 = *v69;
    v71 = v69[1];

    v72._countAndFlagsBits = v70;
    v72._object = v71;
    String.append(_:)(v72);

    v73._countAndFlagsBits = v125;
    v73._object = v59;
    String.append(_:)(v73);

    v74 = v132;
    v75 = v133;
    sub_10004EE38(v23, type metadata accessor for LogID);
    v76 = sub_100035760(v74, v75, &v131);

    *(v65 + 4) = v76;
    _os_log_impl(&_mh_execute_header, v61, v62, "%{public}s", v65, 0xCu);
    sub_10000CE78(v67);
  }

  else
  {

    v77 = sub_10004EE38(v23, type metadata accessor for LogID);
  }

  v102 = v116;
  v103 = *(v115 + 16);
  v104 = __chkstk_darwin(v77);
  *(&v111 - 2) = v105;
  *(&v111 - 2) = v135;
  __chkstk_darwin(v104);
  *(&v111 - 2) = sub_10001EF68;
  *(&v111 - 1) = v106;

  os_unfair_lock_lock(v103 + 4);
  sub_10004EFD4();
  os_unfair_lock_unlock(v103 + 4);

  swift_willThrow();
  (*(v127 + 8))(v128, v102);
}

void sub_10004CA98(char a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8, char *a9)
{
  v119 = a7;
  v126 = a5;
  LODWORD(v125) = a4;
  v123 = a2;
  v124 = a3;
  v118 = type metadata accessor for LogID(0);
  v13 = *(*(v118 - 8) + 64);
  v14 = __chkstk_darwin(v118);
  v122 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v114 = &v111 - v17;
  __chkstk_darwin(v16);
  v19 = &v111 - v18;
  v20 = type metadata accessor for Logger();
  v127 = *(v20 - 8);
  v21 = *(v127 + 64);
  __chkstk_darwin(v20);
  v128 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = mach_absolute_time();
  v23 = *a8;
  v24 = *(*a8 + 16);
  v129 = sub_10004EFA4;
  v130 = v23;

  os_unfair_lock_lock(v24 + 4);
  sub_10004EF74(&v132);
  v120 = v9;
  if (v9)
  {
    goto LABEL_39;
  }

  os_unfair_lock_unlock(v24 + 4);
  v25 = v133;
  v117 = v132;
  v135 = v134;

  v26 = a8[1];
  if (!*(v26 + 16))
  {
    __break(1u);
    goto LABEL_30;
  }

  v27 = sub_10001D1DC(a1);
  if ((v28 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v29 = a9;
  v30 = *(v127 + 16);
  v31 = *(v26 + 56) + *(v127 + 72) * v27;
  v116 = v20;
  v30(v128, v31, v20);
  v132 = StaticString.description.getter();
  v133 = v32;
  v33._countAndFlagsBits = 32;
  v33._object = 0xE100000000000000;
  String.append(_:)(v33);
  v34._countAndFlagsBits = a6;
  v34._object = v119;
  String.append(_:)(v34);
  v35 = v133;
  v119 = v132;
  v36 = v19;
  sub_10004EDD0(v126, v19, type metadata accessor for LogID);

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  v39 = os_log_type_enabled(v37, v38);
  v115 = v23;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v112 = a9;
    v41 = v40;
    v42 = swift_slowAlloc();
    *v41 = 136446210;
    v131 = v42;
    v132 = 2113069;
    v133 = 0xE300000000000000;
    v43._countAndFlagsBits = v117;
    v43._object = v25;
    String.append(_:)(v43);
    v44 = (v36 + *(v118 + 24));
    v111 = v36;
    v45 = *v44;
    v46 = v44[1];

    v47._countAndFlagsBits = v45;
    v47._object = v46;
    String.append(_:)(v47);

    v48._countAndFlagsBits = v119;
    v48._object = v35;
    String.append(_:)(v48);

    v49 = v132;
    v50 = v133;
    sub_10004EE38(v111, type metadata accessor for LogID);
    v51 = sub_100035760(v49, v50, &v131);

    *(v41 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v37, v38, "%{public}s", v41, 0xCu);
    sub_10000CE78(v42);

    v29 = v112;
  }

  else
  {

    sub_10004EE38(v36, type metadata accessor for LogID);
  }

  v52 = v120;
  sub_100017E78(v29, &v136);
  v24 = v52;
  v23 = v122;
  if (!v52)
  {
    v78 = mach_absolute_time();
    v19 = v78 - v121;
    if (v78 < v121)
    {
      __break(1u);
    }

    else if (qword_100173D00 == -1)
    {
      goto LABEL_18;
    }

    swift_once();
LABEL_18:
    v79 = v114;
    if (qword_100179650 != HIDWORD(qword_100179650))
    {
      if (!is_mul_ok(v19, qword_100179650))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (!HIDWORD(qword_100179650))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        os_unfair_lock_unlock(v24 + 4);
        __break(1u);
LABEL_40:
        os_unfair_lock_unlock((v19 + 16));
        __break(1u);
        return;
      }

      v19 = v19 * qword_100179650 / HIDWORD(qword_100179650);
    }

    v132 = StaticString.description.getter();
    v133 = v80;
    v81._countAndFlagsBits = 23328;
    v81._object = 0xE200000000000000;
    String.append(_:)(v81);
    v131 = v19 / 0x3E8;
    v82._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v82);

    v83._countAndFlagsBits = 1567847712;
    v83._object = 0xE400000000000000;
    String.append(_:)(v83);
    v85 = v132;
    v84 = v133;
    sub_10004EDD0(v126, v79, type metadata accessor for LogID);

    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v126 = 0;
      v89 = v88;
      v90 = swift_slowAlloc();
      v125 = v85;
      v91 = v90;
      *v89 = 136446210;
      v131 = v90;
      v132 = 2108732;
      v133 = 0xE300000000000000;
      v92._countAndFlagsBits = v117;
      v92._object = v25;
      String.append(_:)(v92);
      v93 = (v79 + *(v118 + 24));
      v94 = *v93;
      v95 = v93[1];

      v96._countAndFlagsBits = v94;
      v96._object = v95;
      String.append(_:)(v96);

      v97._countAndFlagsBits = v125;
      v97._object = v84;
      String.append(_:)(v97);

      v98 = v132;
      v99 = v133;
      sub_10004EE38(v114, type metadata accessor for LogID);
      v100 = sub_100035760(v98, v99, &v131);

      *(v89 + 4) = v100;
      _os_log_impl(&_mh_execute_header, v86, v87, "%{public}s", v89, 0xCu);
      sub_10000CE78(v91);

      v24 = v126;
    }

    else
    {

      v101 = sub_10004EE38(v79, type metadata accessor for LogID);
    }

    v107 = v116;
    v19 = *(v115 + 16);
    v108 = __chkstk_darwin(v101);
    *(&v111 - 2) = v109;
    *(&v111 - 2) = v135;
    __chkstk_darwin(v108);
    *(&v111 - 2) = sub_10001EF68;
    *(&v111 - 1) = v110;

    os_unfair_lock_lock((v19 + 16));
    sub_10004EFD4();
    if (!v24)
    {
      os_unfair_lock_unlock((v19 + 16));

      (*(v127 + 8))(v128, v107);

      return;
    }

    goto LABEL_40;
  }

  v53 = mach_absolute_time();
  v19 = v53 - v121;
  if (v53 >= v121)
  {
    if (qword_100173D00 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  swift_once();
LABEL_10:
  if (qword_100179650 != HIDWORD(qword_100179650))
  {
    if (is_mul_ok(v19, qword_100179650))
    {
      if (HIDWORD(qword_100179650))
      {
        v19 = v19 * qword_100179650 / HIDWORD(qword_100179650);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_14:
  v132 = 0;
  v133 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);
  v54._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v54);

  v55._countAndFlagsBits = 0x203A524F52524520;
  v55._object = 0xE800000000000000;
  String.append(_:)(v55);
  v131 = v24;
  sub_100001AB4(&qword_100177270, &qword_100120A40);
  _print_unlocked<A, B>(_:_:)();
  v56._countAndFlagsBits = 23328;
  v56._object = 0xE200000000000000;
  String.append(_:)(v56);
  v131 = v19 / 0x3E8;
  v57._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v57);

  v58._countAndFlagsBits = 1567847712;
  v58._object = 0xE400000000000000;
  String.append(_:)(v58);
  v60 = v132;
  v59 = v133;
  sub_10004EDD0(v126, v23, type metadata accessor for LogID);

  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();

  v63 = os_log_type_enabled(v61, v62);
  v113 = v25;
  if (v63)
  {
    v64 = swift_slowAlloc();
    v126 = v24;
    v65 = v64;
    v66 = swift_slowAlloc();
    v125 = v60;
    v67 = v66;
    *v65 = 136446210;
    v131 = v66;
    v132 = 11580;
    v133 = 0xE200000000000000;
    v68._countAndFlagsBits = v117;
    v68._object = v25;
    String.append(_:)(v68);
    v69 = (v23 + *(v118 + 24));
    v70 = *v69;
    v71 = v69[1];

    v72._countAndFlagsBits = v70;
    v72._object = v71;
    String.append(_:)(v72);

    v73._countAndFlagsBits = v125;
    v73._object = v59;
    String.append(_:)(v73);

    v74 = v132;
    v75 = v133;
    sub_10004EE38(v23, type metadata accessor for LogID);
    v76 = sub_100035760(v74, v75, &v131);

    *(v65 + 4) = v76;
    _os_log_impl(&_mh_execute_header, v61, v62, "%{public}s", v65, 0xCu);
    sub_10000CE78(v67);
  }

  else
  {

    v77 = sub_10004EE38(v23, type metadata accessor for LogID);
  }

  v102 = v116;
  v103 = *(v115 + 16);
  v104 = __chkstk_darwin(v77);
  *(&v111 - 2) = v105;
  *(&v111 - 2) = v135;
  __chkstk_darwin(v104);
  *(&v111 - 2) = sub_10001EF68;
  *(&v111 - 1) = v106;

  os_unfair_lock_lock(v103 + 4);
  sub_10004EFD4();
  os_unfair_lock_unlock(v103 + 4);

  swift_willThrow();
  (*(v127 + 8))(v128, v102);
}

void sub_10004D718(char a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7, void *a8, char *a9)
{
  v89 = a5;
  LODWORD(v88) = a4;
  v86 = a2;
  v87 = a3;
  v84 = type metadata accessor for LogID(0);
  v14 = *(*(v84 - 8) + 64);
  v15 = __chkstk_darwin(v84);
  v82 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v75 - v17;
  v19 = type metadata accessor for Logger();
  v90 = *(v19 - 8);
  v20 = *(v90 + 64);
  __chkstk_darwin(v19);
  v92 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = mach_absolute_time();
  v22 = *a8;
  v23 = *(*a8 + 16);
  v93 = sub_10004EFA4;
  v94 = v22;
  v81 = v22;

  os_unfair_lock_lock(v23 + 4);
  sub_10004EF74(&v96);
  if (v9)
  {
    goto LABEL_25;
  }

  os_unfair_lock_unlock(v23 + 4);
  v83 = v96;
  v91 = v97;
  v80 = v98;

  v24 = a8[1];
  if (!*(v24 + 16))
  {
    __break(1u);
    goto LABEL_20;
  }

  v25 = sub_10001D1DC(a1);
  if ((v26 & 1) == 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v78 = 0;
  (*(v90 + 16))(v92, *(v24 + 56) + *(v90 + 72) * v25, v19);
  v96 = StaticString.description.getter();
  v97 = v27;
  v28._countAndFlagsBits = 32;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  v29._countAndFlagsBits = a6;
  v29._object = a7;
  String.append(_:)(v29);
  v30 = v97;
  v77 = v96;
  sub_10004EDD0(v89, v18, type metadata accessor for LogID);

  v23 = v91;

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  v33 = os_log_type_enabled(v31, v32);
  v79 = v19;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v99 = v76;
    *v34 = 136446210;
    v96 = 2113069;
    v97 = 0xE300000000000000;
    v35._countAndFlagsBits = v83;
    v35._object = v23;
    String.append(_:)(v35);
    v36 = (v18 + *(v84 + 24));
    v37 = *v36;
    v38 = v36[1];

    v39._countAndFlagsBits = v37;
    v39._object = v38;
    v23 = v91;
    String.append(_:)(v39);

    v40._countAndFlagsBits = v77;
    v40._object = v30;
    String.append(_:)(v40);

    v41 = v96;
    v42 = v97;
    sub_10004EE38(v18, type metadata accessor for LogID);
    v43 = sub_100035760(v41, v42, &v99);

    *(v34 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v31, v32, "%{public}s", v34, 0xCu);
    sub_10000CE78(v76);
  }

  else
  {

    sub_10004EE38(v18, type metadata accessor for LogID);
  }

  v44 = v85;
  v45 = type metadata accessor for AUAAudioDevice();
  v95.receiver = a9;
  v95.super_class = v45;
  LODWORD(a7) = objc_msgSendSuper2(&v95, "performStopIO");
  v46 = *&a9[OBJC_IVAR___AUAAudioDevice_timeCorrelaterSession];
  *&a9[OBJC_IVAR___AUAAudioDevice_timeCorrelaterSession] = 0;

  *&a9[OBJC_IVAR___AUAAudioDevice_startingUSBDataFrame] = 0;
  *&a9[OBJC_IVAR___AUAAudioDevice_startingUSBLockDelayFrame] = 0;
  *&a9[OBJC_IVAR___AUAAudioDevice_startingUSBFeedbackFrame] = 0;
  v47 = mach_absolute_time();
  v48 = v47 >= v44;
  v18 = v47 - v44;
  if (v48)
  {
    if (qword_100173D00 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  swift_once();
LABEL_10:
  v49 = v82;
  if (qword_100179650 == HIDWORD(qword_100179650))
  {
    goto LABEL_14;
  }

  if (!is_mul_ok(v18, qword_100179650))
  {
    __break(1u);
    goto LABEL_24;
  }

  if (!HIDWORD(qword_100179650))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    os_unfair_lock_unlock(v23 + 4);
    __break(1u);
    goto LABEL_26;
  }

  v18 = v18 * qword_100179650 / HIDWORD(qword_100179650);
LABEL_14:
  v96 = StaticString.description.getter();
  v97 = v50;
  v51._countAndFlagsBits = 23328;
  v51._object = 0xE200000000000000;
  String.append(_:)(v51);
  v99 = v18 / 0x3E8;
  v52._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v52);

  v53._countAndFlagsBits = 1567847712;
  v53._object = 0xE400000000000000;
  String.append(_:)(v53);
  v55 = v96;
  v54 = v97;
  sub_10004EDD0(v89, v49, type metadata accessor for LogID);

  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    LODWORD(v89) = a7;
    v59 = v58;
    v88 = swift_slowAlloc();
    v99 = v88;
    *v59 = 136446210;
    v96 = 2108732;
    v97 = 0xE300000000000000;
    v60._countAndFlagsBits = v83;
    v60._object = v23;
    String.append(_:)(v60);
    v61 = (v49 + *(v84 + 24));
    v62 = *v61;
    v63 = v61[1];

    v64._countAndFlagsBits = v62;
    v64._object = v63;
    String.append(_:)(v64);

    v65._countAndFlagsBits = v55;
    v65._object = v54;
    String.append(_:)(v65);

    v66 = v96;
    v67 = v97;
    sub_10004EE38(v49, type metadata accessor for LogID);
    v68 = sub_100035760(v66, v67, &v99);

    *(v59 + 4) = v68;
    _os_log_impl(&_mh_execute_header, v56, v57, "%{public}s", v59, 0xCu);
    sub_10000CE78(v88);
  }

  else
  {

    v69 = sub_10004EE38(v49, type metadata accessor for LogID);
  }

  v70 = v79;
  v18 = *(v81 + 16);
  v71 = __chkstk_darwin(v69);
  *(&v75 - 2) = v72;
  *(&v75 - 2) = v80;
  __chkstk_darwin(v71);
  *(&v75 - 2) = sub_10001EF68;
  *(&v75 - 1) = v73;

  os_unfair_lock_lock((v18 + 16));
  v74 = v78;
  sub_10004EFD4();
  if (!v74)
  {
    os_unfair_lock_unlock((v18 + 16));

    (*(v90 + 8))(v92, v70);

    return;
  }

LABEL_26:
  os_unfair_lock_unlock((v18 + 16));
  __break(1u);
}

void sub_10004DF90(char a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8, char *a9)
{
  v119 = a7;
  v126 = a5;
  LODWORD(v125) = a4;
  v123 = a2;
  v124 = a3;
  v118 = type metadata accessor for LogID(0);
  v13 = *(*(v118 - 8) + 64);
  v14 = __chkstk_darwin(v118);
  v122 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v114 = &v111 - v17;
  __chkstk_darwin(v16);
  v19 = &v111 - v18;
  v20 = type metadata accessor for Logger();
  v127 = *(v20 - 8);
  v21 = *(v127 + 64);
  __chkstk_darwin(v20);
  v128 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = mach_absolute_time();
  v23 = *a8;
  v24 = *(*a8 + 16);
  v129 = sub_10004EFA4;
  v130 = v23;

  os_unfair_lock_lock(v24 + 4);
  sub_10004EF74(&v132);
  v120 = v9;
  if (v9)
  {
    goto LABEL_39;
  }

  os_unfair_lock_unlock(v24 + 4);
  v25 = v133;
  v117 = v132;
  v135 = v134;

  v26 = a8[1];
  if (!*(v26 + 16))
  {
    __break(1u);
    goto LABEL_30;
  }

  v27 = sub_10001D1DC(a1);
  if ((v28 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v29 = a9;
  v30 = *(v127 + 16);
  v31 = *(v26 + 56) + *(v127 + 72) * v27;
  v116 = v20;
  v30(v128, v31, v20);
  v132 = StaticString.description.getter();
  v133 = v32;
  v33._countAndFlagsBits = 32;
  v33._object = 0xE100000000000000;
  String.append(_:)(v33);
  v34._countAndFlagsBits = a6;
  v34._object = v119;
  String.append(_:)(v34);
  v35 = v133;
  v119 = v132;
  v36 = v19;
  sub_10004EDD0(v126, v19, type metadata accessor for LogID);

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  v39 = os_log_type_enabled(v37, v38);
  v115 = v23;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v112 = a9;
    v41 = v40;
    v42 = swift_slowAlloc();
    *v41 = 136446210;
    v131 = v42;
    v132 = 2113069;
    v133 = 0xE300000000000000;
    v43._countAndFlagsBits = v117;
    v43._object = v25;
    String.append(_:)(v43);
    v44 = (v36 + *(v118 + 24));
    v111 = v36;
    v45 = *v44;
    v46 = v44[1];

    v47._countAndFlagsBits = v45;
    v47._object = v46;
    String.append(_:)(v47);

    v48._countAndFlagsBits = v119;
    v48._object = v35;
    String.append(_:)(v48);

    v49 = v132;
    v50 = v133;
    sub_10004EE38(v111, type metadata accessor for LogID);
    v51 = sub_100035760(v49, v50, &v131);

    *(v41 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v37, v38, "%{public}s", v41, 0xCu);
    sub_10000CE78(v42);

    v29 = v112;
  }

  else
  {

    sub_10004EE38(v36, type metadata accessor for LogID);
  }

  v52 = v120;
  sub_1000195AC(v29, &v136);
  v24 = v52;
  v23 = v122;
  if (!v52)
  {
    v78 = mach_absolute_time();
    v19 = v78 - v121;
    if (v78 < v121)
    {
      __break(1u);
    }

    else if (qword_100173D00 == -1)
    {
      goto LABEL_18;
    }

    swift_once();
LABEL_18:
    v79 = v114;
    if (qword_100179650 != HIDWORD(qword_100179650))
    {
      if (!is_mul_ok(v19, qword_100179650))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (!HIDWORD(qword_100179650))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        os_unfair_lock_unlock(v24 + 4);
        __break(1u);
LABEL_40:
        os_unfair_lock_unlock((v19 + 16));
        __break(1u);
        return;
      }

      v19 = v19 * qword_100179650 / HIDWORD(qword_100179650);
    }

    v132 = StaticString.description.getter();
    v133 = v80;
    v81._countAndFlagsBits = 23328;
    v81._object = 0xE200000000000000;
    String.append(_:)(v81);
    v131 = v19 / 0x3E8;
    v82._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v82);

    v83._countAndFlagsBits = 1567847712;
    v83._object = 0xE400000000000000;
    String.append(_:)(v83);
    v85 = v132;
    v84 = v133;
    sub_10004EDD0(v126, v79, type metadata accessor for LogID);

    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v126 = 0;
      v89 = v88;
      v90 = swift_slowAlloc();
      v125 = v85;
      v91 = v90;
      *v89 = 136446210;
      v131 = v90;
      v132 = 2108732;
      v133 = 0xE300000000000000;
      v92._countAndFlagsBits = v117;
      v92._object = v25;
      String.append(_:)(v92);
      v93 = (v79 + *(v118 + 24));
      v94 = *v93;
      v95 = v93[1];

      v96._countAndFlagsBits = v94;
      v96._object = v95;
      String.append(_:)(v96);

      v97._countAndFlagsBits = v125;
      v97._object = v84;
      String.append(_:)(v97);

      v98 = v132;
      v99 = v133;
      sub_10004EE38(v114, type metadata accessor for LogID);
      v100 = sub_100035760(v98, v99, &v131);

      *(v89 + 4) = v100;
      _os_log_impl(&_mh_execute_header, v86, v87, "%{public}s", v89, 0xCu);
      sub_10000CE78(v91);

      v24 = v126;
    }

    else
    {

      v101 = sub_10004EE38(v79, type metadata accessor for LogID);
    }

    v107 = v116;
    v19 = *(v115 + 16);
    v108 = __chkstk_darwin(v101);
    *(&v111 - 2) = v109;
    *(&v111 - 2) = v135;
    __chkstk_darwin(v108);
    *(&v111 - 2) = sub_10001EF68;
    *(&v111 - 1) = v110;

    os_unfair_lock_lock((v19 + 16));
    sub_10004EFD4();
    if (!v24)
    {
      os_unfair_lock_unlock((v19 + 16));

      (*(v127 + 8))(v128, v107);

      return;
    }

    goto LABEL_40;
  }

  v53 = mach_absolute_time();
  v19 = v53 - v121;
  if (v53 >= v121)
  {
    if (qword_100173D00 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  swift_once();
LABEL_10:
  if (qword_100179650 != HIDWORD(qword_100179650))
  {
    if (is_mul_ok(v19, qword_100179650))
    {
      if (HIDWORD(qword_100179650))
      {
        v19 = v19 * qword_100179650 / HIDWORD(qword_100179650);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_14:
  v132 = 0;
  v133 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);
  v54._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v54);

  v55._countAndFlagsBits = 0x203A524F52524520;
  v55._object = 0xE800000000000000;
  String.append(_:)(v55);
  v131 = v24;
  sub_100001AB4(&qword_100177270, &qword_100120A40);
  _print_unlocked<A, B>(_:_:)();
  v56._countAndFlagsBits = 23328;
  v56._object = 0xE200000000000000;
  String.append(_:)(v56);
  v131 = v19 / 0x3E8;
  v57._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v57);

  v58._countAndFlagsBits = 1567847712;
  v58._object = 0xE400000000000000;
  String.append(_:)(v58);
  v60 = v132;
  v59 = v133;
  sub_10004EDD0(v126, v23, type metadata accessor for LogID);

  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();

  v63 = os_log_type_enabled(v61, v62);
  v113 = v25;
  if (v63)
  {
    v64 = swift_slowAlloc();
    v126 = v24;
    v65 = v64;
    v66 = swift_slowAlloc();
    v125 = v60;
    v67 = v66;
    *v65 = 136446210;
    v131 = v66;
    v132 = 11580;
    v133 = 0xE200000000000000;
    v68._countAndFlagsBits = v117;
    v68._object = v25;
    String.append(_:)(v68);
    v69 = (v23 + *(v118 + 24));
    v70 = *v69;
    v71 = v69[1];

    v72._countAndFlagsBits = v70;
    v72._object = v71;
    String.append(_:)(v72);

    v73._countAndFlagsBits = v125;
    v73._object = v59;
    String.append(_:)(v73);

    v74 = v132;
    v75 = v133;
    sub_10004EE38(v23, type metadata accessor for LogID);
    v76 = sub_100035760(v74, v75, &v131);

    *(v65 + 4) = v76;
    _os_log_impl(&_mh_execute_header, v61, v62, "%{public}s", v65, 0xCu);
    sub_10000CE78(v67);
  }

  else
  {

    v77 = sub_10004EE38(v23, type metadata accessor for LogID);
  }

  v102 = v116;
  v103 = *(v115 + 16);
  v104 = __chkstk_darwin(v77);
  *(&v111 - 2) = v105;
  *(&v111 - 2) = v135;
  __chkstk_darwin(v104);
  *(&v111 - 2) = sub_10001EF68;
  *(&v111 - 1) = v106;

  os_unfair_lock_lock(v103 + 4);
  sub_10004EFD4();
  os_unfair_lock_unlock(v103 + 4);

  swift_willThrow();
  (*(v127 + 8))(v128, v102);
}

unint64_t sub_10004EC10(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10015A0E0, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10004EC74()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10004EC9C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = a3;
  v5 = a2;
  v6 = a1;
  a1 = String.count.getter();
  if (__OFSUB__(a1, v6))
  {
LABEL_14:
    __break(1u);
    return String.subscript.getter(a1, a2, a3, a4);
  }

  v7 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v7 = v5;
  }

  v8 = v7 << 16;
  v9 = String.index(_:offsetBy:limitedBy:)();
  v11 = v8 | 0xB;
  if (((v4 >> 60) & ((v5 & 0x800000000000000) == 0)) == 0)
  {
    v11 = v8 | 7;
  }

  if (v10)
  {
    a2 = v11;
  }

  else
  {
    a2 = v9;
  }

  a1 = 15;
  a3 = v5;
  a4 = v4;

  return String.subscript.getter(a1, a2, a3, a4);
}

void *sub_10004ED68@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(v9);
  if (!v2)
  {
    v7 = v9[1];
    v8 = v10;
    *a1 = v9[0];
    *(a1 + 8) = v7;
    *(a1 + 16) = v8;
  }

  return result;
}

uint64_t sub_10004EDD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004EE38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_10004EECC@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(v8);
  if (!v2)
  {
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

uint64_t *sub_10004EF10(uint64_t a1, uint64_t *a2)
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

void *sub_10004EFEC(void (*a1)(uint64_t *__return_ptr, int *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = _swiftEmptyArrayStorage;
  if (v4)
  {
    v21 = _swiftEmptyArrayStorage;
    sub_100046FE0(0, v4, 0);
    v5 = _swiftEmptyArrayStorage;
    v8 = (a3 + 36);
    while (1)
    {
      v9 = *v8;
      v17 = *(v8 - 1);
      v18 = v9;
      a1(&v19, &v17, &v16);
      if (v3)
      {
        break;
      }

      v10 = v19;
      v11 = v20;
      v21 = v5;
      v13 = v5[2];
      v12 = v5[3];
      if (v13 >= v12 >> 1)
      {
        sub_100046FE0((v12 > 1), v13 + 1, 1);
        v5 = v21;
      }

      v8 += 3;
      v5[2] = v13 + 1;
      v14 = v5 + 12 * v13;
      *(v14 + 4) = v10;
      *(v14 + 10) = v11;
      if (!--v4)
      {
        return v5;
      }
    }
  }

  return v5;
}

uint64_t ActiveFunction.deviceName.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))();
  if (!v2)
  {
    return 0x6E776F6E6B6E55;
  }

  v4 = *(v2 + OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceName);
  v3 = *(v2 + OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceName + 8);
  v5 = v2;

  return v4;
}

void *sub_10004F1A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100046FB0(0, v1, 0);
    v3 = (a1 + 40);
    do
    {
      v8 = *(v3 - 1);
      v9 = *v3;
      sub_100001AB4(&qword_100176190, &qword_100121AD8);
      sub_100001AB4(&qword_100176198, &unk_100121AE0);
      swift_dynamicCast();
      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (v5 >= v4 >> 1)
      {
        sub_100046FB0((v4 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      v6 = _swiftEmptyArrayStorage + 12 * v5;
      *(v6 + 4) = v10;
      *(v6 + 10) = v11;
      v3 += 3;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

BOOL sub_10004F2E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000530DC(a1, a2, a3);
  if (!v4)
  {
    v6 = *(v5 + 2) + 1;
    v7 = 40;
    do
    {
      v3 = --v6 != 0;
      if (!v6)
      {
        break;
      }

      v8 = *&v5[v7];
      v7 += 24;
    }

    while (*(v8 + 136) != 257);
  }

  return v3;
}

char *sub_10004F348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 136) == 257)
  {
    return _swiftEmptyArrayStorage;
  }

  result = (*(a3 + 56))(a2, a3);
  v6 = *(result + 2);
  if (v6)
  {
    v7 = 0;
    v8 = result + 48;
    v3 = _swiftEmptyArrayStorage;
    do
    {
      v9 = *(result + 2);
      v10 = v9 >= v7;
      v11 = v9 - v7;
      if (!v10)
      {
        v11 = 0;
      }

      v12 = v6 - v7;
      v13 = &v8[3 * v7++];
      while (1)
      {
        if (!v11)
        {
          __break(1u);
          return result;
        }

        v14 = *(v13 - 1);
        if (*(v14 + 72) == *(a1 + 72))
        {
          v15 = *(v13 - 2);
          if (*(v15 + 136) != 257)
          {
            break;
          }
        }

        --v11;
        v13 += 3;
        ++v7;
        if (!--v12)
        {
          goto LABEL_19;
        }
      }

      v23 = result;
      v16 = *v13;

      v22 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1000241C0(0, *(v3 + 2) + 1, 1, v3);
      }

      v18 = *(v3 + 2);
      v17 = *(v3 + 3);
      v19 = v18 + 1;
      result = v23;
      if (v18 >= v17 >> 1)
      {
        v21 = sub_1000241C0((v17 > 1), v18 + 1, 1, v3);
        v19 = v18 + 1;
        v3 = v21;
        result = v23;
      }

      *(v3 + 2) = v19;
      v20 = &v3[24 * v18];
      *(v20 + 4) = v15;
      *(v20 + 5) = v14;
      v8 = v22;
      *(v20 + 6) = v16;
    }

    while (v12 != 1);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

LABEL_19:

  return v3;
}

uint64_t ActiveFunction.functionCategory.getter(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 24))() + 208);

  return v2;
}

void sub_10004F57C(int a1, unint64_t a2, char a3, void *a4, uint64_t a5, void (**a6)(void *__return_ptr, uint64_t, id))
{
  v8 = v6;
  v48 = 0;
  v15 = USBDescriptorControl.pbLayout()();
  sub_1000A0294(v15);
  if (!v7)
  {
    v17 = v16;
    a6[1](v52, a5, a6);
    sub_1000212F0(v52);
    if (v53)
    {
      if (v53 != 48 && v53 != 32)
      {
        sub_10000CA2C();
        swift_allocError();
        v34 = 26;
        goto LABEL_22;
      }

      v18 = 1;
    }

    else
    {
      v18 = 129;
    }

    v47 = v18;
    v46 = (a6[2])(a5, a6);
    if (v46)
    {
      v45 = sub_1000A2D88(a1 & 0xFFFFFF);
      if (a3)
      {
        v19 = 0;
      }

      else
      {
        v19 = a2;
      }

      v20 = a4[3];
      v21 = a4[4];
      sub_10001EAB8(a4, v20);
      (*(v21 + 8))(v49, v20, v21);
      v22 = v50;
      v23 = v51;
      sub_10001EAB8(v49, v50);
      v24 = (*(v23 + 16))(v22, v23);
      v25 = *(*((a6[3])(a5, a6) + 32) + 2);

      v26 = v24 | v19;
      v27 = v17;
      if ((v24 | v19) >> 16)
      {
        __break(1u);
      }

      else
      {
        a6 = v27;
        v26 = NSData.startIndex.getter();
        v8 = NSData.endIndex.getter();
        v28 = NSData.startIndex.getter();
        v29 = NSData.endIndex.getter();
        if (v26 >= v28 && v29 >= v26)
        {
          v30 = NSData.startIndex.getter();
          v31 = NSData.endIndex.getter();
          if (v8 >= v30 && v31 >= v8)
          {
            v32 = v8 - v26;
            if (!__OFSUB__(v8, v26))
            {
              if (v32 >= 0xFFFF)
              {
                v32 = 0xFFFFLL;
              }

              sub_1000FC690(((v25 | (v24 << 8)) << 32) | ((v32 & ~(v32 >> 63)) << 48) | ((v19 | (v45 << 8)) << 16) | (v47 << 8) | 0xA1, v17, &v48);

              sub_10000CE78(v49);
              v35 = v48;
              v36 = a6;
              v37 = NSData.startIndex.getter();
              v38 = NSData.endIndex.getter();
              v39 = NSData.startIndex.getter();
              v40 = NSData.endIndex.getter();
              if (v37 < v39 || v40 < v37)
              {
                __break(1u);
              }

              else
              {
                v41 = NSData.startIndex.getter();
                v42 = NSData.endIndex.getter();

                if (v38 >= v41 && v42 >= v38)
                {
                  if (!__OFSUB__(v38, v37))
                  {
                    if (v35 == v38 - v37)
                    {
                    }

                    else
                    {
                      sub_10000CA2C();
                      swift_allocError();
                      *v44 = 30;
                      *(v44 + 8) = 0;
                      *(v44 + 16) = 0xE000000000000000;
                      swift_willThrow();
                    }

                    return;
                  }

LABEL_38:
                  __break(1u);
                }
              }

              __break(1u);
              goto LABEL_38;
            }

LABEL_35:
            __break(1u);
            __break(1u);
            __break(1u);
            swift_once();
            v43 = type metadata accessor for AUALog(0);
            sub_10000A1BC(v43, qword_100179508);
            sub_100039F58(2, v25 + v8, v26, v17);

            swift_willThrow();

            sub_10000CE78(v49);
            return;
          }

LABEL_34:
          __break(1u);
          goto LABEL_35;
        }
      }

      __break(1u);
      goto LABEL_34;
    }

    sub_10000CA2C();
    swift_allocError();
    v34 = 7;
LABEL_22:
    *v33 = v34;
    *(v33 + 8) = 0;
    *(v33 + 16) = 0xE000000000000000;
    swift_willThrow();
  }
}

void sub_10004FD90(int a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  v72 = 0;
  (*(a6 + 8))(v77, a5, a6);
  sub_1000212F0(v77);
  if ((v78 | 0x10) != 0x30)
  {
    sub_10000CA2C();
    swift_allocError();
    *v26 = 26;
    *(v26 + 8) = 0;
    *(v26 + 16) = 0xE000000000000000;
    swift_willThrow();
    return;
  }

  v13 = USBDescriptorControl.pbLayout()();
  v14 = sub_1000A0D14(v13, 1);
  if (!v6)
  {
    v64 = v13;
    v71 = v15;
    v67 = v14;
    v68 = a5;
    v69 = (*(a6 + 16))();
    if (!v69)
    {
      sub_10000CA2C();
      swift_allocError();
      *v27 = 7;
      *(v27 + 8) = 0;
      *(v27 + 16) = 0xE000000000000000;
      swift_willThrow();

      return;
    }

    v65 = sub_1000A2D88(a1 & 0xFFFFFF);
    if (a3)
    {
      a2 = 0;
    }

    v16 = a4[3];
    v17 = a4[4];
    sub_10001EAB8(a4, v16);
    v61 = *(v17 + 8);
    v62 = v17;
    v63 = v16;
    v61(v74, v16, v17);
    v18 = v75;
    v19 = v76;
    sub_10001EAB8(v74, v75);
    v20 = (*(v19 + 16))(v18, v19);
    v70(v79, a5, a6);
    v85[4] = v79[4];
    v85[5] = v79[5];
    v85[6] = v79[6];
    v86 = v80;
    v85[0] = v79[0];
    v85[1] = v79[1];
    v85[2] = v79[2];
    v85[3] = v79[3];
    sub_100057294(v85, &v73);
    sub_1000212F0(v79);
    v21 = *(*&v85[0] + 2);
    sub_1000572F0(v85);
    if ((v20 | a2) >= 0x10000)
    {
      __break(1u);
    }

    else
    {
      v22 = a2;
      v18 = NSData.startIndex.getter();
      v19 = NSData.endIndex.getter();
      a2 = NSData.startIndex.getter();
      v23 = NSData.endIndex.getter();
      if (v18 >= a2 && v23 >= v18)
      {
        a2 = NSData.startIndex.getter();
        v24 = NSData.endIndex.getter();
        if (v19 >= a2 && v24 >= v19)
        {
          v25 = v19 - v18;
          if (!__OFSUB__(v19, v18))
          {
            if (v25 >= 0xFFFF)
            {
              v25 = 0xFFFFLL;
            }

            v66 = v22 | (v65 << 8);
            sub_1000FC690(((v21 | (v20 << 8)) << 32) | ((v25 & ~(v25 >> 63)) << 48) | (v66 << 16) | 0x2A1, v71, &v72);
            sub_10000CE78(v74);
            v28 = v72;
            v29 = NSData.startIndex.getter();
            v30 = NSData.endIndex.getter();
            v31 = NSData.startIndex.getter();
            v32 = NSData.endIndex.getter();
            if (v29 < v31 || v32 < v29)
            {
              __break(1u);
            }

            else
            {
              v33 = NSData.startIndex.getter();
              v34 = NSData.endIndex.getter();
              v35 = v69;
              if (v30 >= v33 && v34 >= v30)
              {
                if (!__OFSUB__(v30, v29))
                {
                  if (v28 != v30 - v29)
                  {
                    goto LABEL_41;
                  }

                  if ((v67 & 0x100) == 0)
                  {
                    sub_10000CA2C();
                    swift_allocError();
                    v37 = 32;
LABEL_42:
                    *v36 = v37;
                    *(v36 + 8) = 0;
                    *(v36 + 16) = 0xE000000000000000;
                    swift_willThrow();

                    return;
                  }

                  v39 = *[v71 bytes];
                  if (v39 == 1)
                  {
LABEL_26:

                    return;
                  }

                  sub_1000A0D14(v64, v39);
                  v41 = v40;

                  v42 = v41;
                  v61(v74, v63, v62);
                  v43 = v75;
                  v44 = v76;
                  sub_10001EAB8(v74, v75);
                  v45 = (*(v44 + 16))(v43, v44);
                  v70(v81, v68, a6);
                  v83[4] = v81[4];
                  v83[5] = v81[5];
                  v83[6] = v81[6];
                  v84 = v82;
                  v83[0] = v81[0];
                  v83[1] = v81[1];
                  v83[2] = v81[2];
                  v83[3] = v81[3];
                  sub_100057294(v83, &v73);
                  sub_1000212F0(v81);
                  v46 = *(*&v83[0] + 2);
                  sub_1000572F0(v83);
                  if (!(v45 >> 16))
                  {
                    v47 = NSData.startIndex.getter();
                    v48 = NSData.endIndex.getter();
                    v49 = NSData.startIndex.getter();
                    v71 = v42;
                    v50 = NSData.endIndex.getter();
                    if (v47 >= v49 && v50 >= v47)
                    {
                      v51 = NSData.startIndex.getter();
                      v52 = NSData.endIndex.getter();
                      if (v48 >= v51 && v52 >= v48)
                      {
                        v53 = v48 - v47;
                        if (!__OFSUB__(v48, v47))
                        {
                          if (v53 >= 0xFFFF)
                          {
                            v53 = 0xFFFFLL;
                          }

                          sub_1000FC690(((v46 | (v45 << 8)) << 32) | ((v53 & ~(v53 >> 63)) << 48) | (v66 << 16) | 0x2A1, v42, &v72);

                          sub_10000CE78(v74);
                          v54 = v72;
                          v55 = NSData.startIndex.getter();
                          v56 = NSData.endIndex.getter();
                          v57 = NSData.startIndex.getter();
                          v58 = NSData.endIndex.getter();
                          if (v55 < v57 || v58 < v55)
                          {
                            __break(1u);
                          }

                          else
                          {
                            v59 = NSData.startIndex.getter();
                            v60 = NSData.endIndex.getter();
                            v35 = v69;
                            if (v56 >= v59 && v60 >= v56)
                            {
                              if (!__OFSUB__(v56, v55))
                              {
                                if (v56 - v55 >= v54)
                                {
                                  goto LABEL_26;
                                }

LABEL_41:
                                sub_10000CA2C();
                                swift_allocError();
                                v37 = 30;
                                goto LABEL_42;
                              }

LABEL_58:
                              __break(1u);
                              return;
                            }
                          }

                          __break(1u);
                          goto LABEL_58;
                        }

LABEL_55:
                        __break(1u);
                      }

LABEL_54:
                      __break(1u);
                      goto LABEL_55;
                    }

LABEL_53:
                    __break(1u);
                    goto LABEL_54;
                  }

LABEL_52:
                  __break(1u);
                  goto LABEL_53;
                }

LABEL_51:
                __break(1u);
                goto LABEL_52;
              }
            }

            __break(1u);
            goto LABEL_51;
          }

LABEL_48:
          __break(1u);
          __break(1u);
          __break(1u);
          swift_once();
          v38 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v38, qword_100179508);
          sub_100039F58(2, v20 + v19, v18, a2);

          swift_willThrow();

          sub_10000CE78(v74);
          return;
        }

LABEL_47:
        __break(1u);
        goto LABEL_48;
      }
    }

    __break(1u);
    goto LABEL_47;
  }
}

uint64_t sub_100050B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_100055B98(a2, a3);
  v7 = result;
  v8 = *(result + 16);
  if (v8)
  {
    v9 = 0;
    v10 = result + 32;
    while (v9 < *(v7 + 16))
    {
      sub_10001EAFC(v10, &v13);
      v11 = v14;
      v12 = v15;
      sub_10001EAB8(&v13, v14);
      if ((*(v12 + 48))(v11, v12) == *(a1 + 32))
      {

        return sub_10000D0A0(&v13, a4);
      }

      ++v9;
      result = sub_10000CE78(&v13);
      v10 += 40;
      if (v8 == v9)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

void *sub_100050C6C(uint64_t a1, uint64_t a2)
{
  v63 = type metadata accessor for LogID(0);
  v5 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = a1;
  v74 = v2;
  v75 = a2;
  v8 = sub_100055B98(a1, a2);
  v9 = v8[2];
  v70 = v7;
  v69 = v9;
  if (v9)
  {
    v10 = 0;
    v68 = v8 + 4;
    v11 = _swiftEmptyArrayStorage;
    v67 = v8;
    do
    {
      if (v10 >= v8[2])
      {
        goto LABEL_59;
      }

      v71 = v10;
      sub_10001EAFC(&v68[5 * v10], &v85);
      v14 = v87;
      v15 = v88;
      sub_10001EAB8(&v85, v87);
      v16 = (*(v15 + 32))(v14, v15);
      v76 = v17;
      sub_10000CE78(&v85);
      if (v16)
      {
        v18 = v11 + 5;
        v72 = -v11[2];
        v19 = -1;
        while (v72 + v19 != -1)
        {
          if (++v19 >= v11[2])
          {
            goto LABEL_58;
          }

          v20 = v18 + 2;
          v21 = *(v18 - 1);
          v22 = *v18;
          ObjectType = swift_getObjectType();
          v84 = v21;
          v24 = v11;
          v25 = *(v22 + 8);
          v26 = *(v25 + 8);
          swift_unknownObjectRetain();
          v26(v81, ObjectType, v25);
          v27 = v82;
          v28 = v83;
          sub_10001EAB8(v81, v82);
          v29 = (*(v28 + 16))(v27, v28);
          v30 = swift_getObjectType();
          v80 = v16;
          (*(*(v76 + 8) + 8))(v77, v30);
          v31 = v78;
          v32 = v79;
          sub_10001EAB8(v77, v78);
          v33 = v31;
          v11 = v24;
          v34 = (*(v32 + 16))(v33, v32);
          swift_unknownObjectRelease();
          sub_10000CE78(v77);
          sub_10000CE78(v81);
          v18 = v20;
          if (v29 == v34)
          {
            swift_unknownObjectRelease();
            v7 = v70;
            goto LABEL_4;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_100024764(0, v11[2] + 1, 1, v11);
        }

        v7 = v70;
        v36 = v11[2];
        v35 = v11[3];
        if (v36 >= v35 >> 1)
        {
          v11 = sub_100024764((v35 > 1), v36 + 1, 1, v11);
        }

        v11[2] = v36 + 1;
        v12 = &v11[2 * v36];
        v13 = v76;
        v12[4] = v16;
        v12[5] = v13;
      }

LABEL_4:
      v10 = v71 + 1;
      v8 = v67;
    }

    while ((v71 + 1) != v69);
  }

  else
  {

    v11 = _swiftEmptyArrayStorage;
  }

  v68 = v11[2];
  if (!v68)
  {

    return _swiftEmptyArrayStorage;
  }

  v37 = 0;
  v66 = *(v75 + 32);
  v67 = (v75 + 32);
  v65 = v11 + 4;
  v62 = "[Error] Interval already ended";
  v38 = _swiftEmptyArrayStorage;
  v64 = v11;
  while (1)
  {
    if (v37 >= v11[2])
    {
      goto LABEL_60;
    }

    v71 = v37;
    v42 = &v65[2 * v37];
    v43 = *v42;
    v76 = v42[1];
    swift_unknownObjectRetain();
    v44 = v66(v73, v75);
    v45 = v44;
    v85 = _swiftEmptyArrayStorage;
    v46 = v44 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v72 = v43;
    if (v46)
    {
      break;
    }

    v51 = _swiftEmptyArrayStorage;
LABEL_39:

    if ((v51 & 0x8000000000000000) != 0 || (v51 & 0x4000000000000000) != 0)
    {
      v54 = _CocoaArrayWrapper.endIndex.getter();
      v11 = v64;
      if (!v54)
      {
LABEL_48:

        v85 = 0;
        v86 = 0xE000000000000000;
        _StringGuts.grow(_:)(69);
        v55._countAndFlagsBits = ActiveFunction.deviceName.getter(v73, v75);
        String.append(_:)(v55);

        v56._object = (v62 | 0x8000000000000000);
        v56._countAndFlagsBits = 0xD000000000000043;
        String.append(_:)(v56);
        v58 = v85;
        v57 = v86;
        if (qword_100173CB8 != -1)
        {
          swift_once();
        }

        v59 = sub_10000A1BC(v63, qword_1001794F0);
        sub_10000A2A4(v59, v7);
        if (qword_100173CC0 != -1)
        {
          swift_once();
        }

        v60 = type metadata accessor for AUALog(0);
        sub_10000A1BC(v60, qword_100179508);
        sub_100039F58(1, v7, v58, v57);
        swift_unknownObjectRelease();

        sub_10000C9D0(v7);
        goto LABEL_21;
      }
    }

    else
    {
      v11 = v64;
      if (!*(v51 + 16))
      {
        goto LABEL_48;
      }
    }

    swift_unknownObjectRetain();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_10002461C(0, v38[2] + 1, 1, v38);
    }

    v53 = v38[2];
    v52 = v38[3];
    if (v53 >= v52 >> 1)
    {
      v38 = sub_10002461C((v52 > 1), v53 + 1, 1, v38);
    }

    v39 = v72;
    swift_unknownObjectRelease();
    v40 = *(v76 + 16);
    v38[2] = v53 + 1;
    v41 = &v38[3 * v53];
    v41[4] = v39;
    v41[5] = v40;
    v41[6] = v51;
LABEL_21:
    v37 = v71 + 1;
    if ((v71 + 1) == v68)
    {

      return v38;
    }
  }

  v69 = v38;
  v47 = 0;
  while ((v45 & 0xC000000000000001) != 0)
  {
    v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v49 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      goto LABEL_56;
    }

LABEL_32:
    v81[0] = v48;
    if (sub_100055D90(v81, v74, v43, v76, v73, v75))
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v50 = v85[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v43 = v72;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v47;
    if (v49 == v46)
    {
      v51 = v85;
      v7 = v70;
      v38 = v69;
      goto LABEL_39;
    }
  }

  if (v47 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_57;
  }

  v48 = *(v45 + 8 * v47 + 32);

  v49 = v47 + 1;
  if (!__OFADD__(v47, 1))
  {
    goto LABEL_32;
  }

LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);

  __break(1u);
  return result;
}

void sub_100051434(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v95 = type metadata accessor for LogID(0);
  v8 = *(*(v95 - 8) + 64);
  __chkstk_darwin(v95);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (*(a2 + 16))(a1, a2);
  if (!v11)
  {
    sub_10000CA2C();
    swift_allocError();
    *v26 = 1;
    *(v26 + 8) = 0;
    *(v26 + 16) = 0xE000000000000000;
    swift_willThrow();
    return;
  }

  v94 = v10;
  v90 = v11;
  v12 = *(a2 + 24);
  v13 = (v12)(a1, a2);
  swift_beginAccess();
  v14 = *(v13 + 16);
  *(v13 + 16) = v5;
  *(v13 + 24) = a2;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
  v91 = a1;
  v96 = a2 + 24;
  v97 = a2;
  v93 = v12;
  v15 = *((v12)(a1, a2) + 168);

  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = 0;
    v18 = v15 + 32;
    while (v17 < *(v15 + 16))
    {
      sub_10001EAFC(v18, v100);
      v19 = v101;
      v20 = v102;
      sub_100057378(v100, v101);
      (*(v20 + 72))(v5, v97, v19, v20);
      if (v3)
      {

        sub_10000CE78(v100);
        return;
      }

      ++v17;
      sub_10000CE78(v100);
      v18 += 40;
      if (v16 == v17)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_18:
    v22 = _CocoaArrayWrapper.endIndex.getter();
    if (!v22)
    {
      goto LABEL_19;
    }

    goto LABEL_9;
  }

LABEL_7:

  v17 = v97;
  v21 = (*(v97 + 32))(v91, v97);
  v15 = v21;
  if (v21 >> 62)
  {
    goto LABEL_18;
  }

  v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v22)
  {
    goto LABEL_19;
  }

LABEL_9:
  if (v22 < 1)
  {
    __break(1u);
    goto LABEL_62;
  }

  v23 = 0;
  do
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v24 = *(v15 + 8 * v23 + 32);
    }

    ++v23;
    swift_beginAccess();
    v25 = *(v24 + 16);
    *(v24 + 16) = v5;
    *(v24 + 24) = v17;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
  }

  while (v22 != v23);
LABEL_19:

  v27 = v91;
  v28 = v93;
  v29 = *((v93)(v91, v17) + 160);

  if (v29)
  {
    v30 = *((v28)(v27, v17) + 200);
    v31 = v30;

    if (!v30)
    {
      v17 = v97;
LABEL_29:

      goto LABEL_30;
    }

    sub_100117448(v31, 1);
    if (v3)
    {

      return;
    }

    if (!*(v29 + 120))
    {
      v17 = v97;
      goto LABEL_28;
    }

    v32 = *(v29 + 112);
    v17 = v97;
    if ((v32 & 0x8000000000000000) == 0)
    {
      v33 = sub_100005814(v31, v32);
      (*(v17 + 72))(v33, v27, v17);
      sub_100053D60(v27, v17);
LABEL_28:

      goto LABEL_29;
    }

LABEL_62:
    __break(1u);
    return;
  }

LABEL_30:
  v34 = (*(v17 + 216))(v27, v17);
  v35 = *(v34 + 16);
  v89 = v34;
  if (v35)
  {
    v36 = v34;
    v88 = OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList;
    v87 = &v90[OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceName];
    v37 = type metadata accessor for AUAAudioDevice();
    v92 = "Memory Request on device ";
    v93 = v37;
    v85 = 0x800000010012CE50;
    v86 = " inStartFunction";
    v38 = (v36 + 48);
    while (1)
    {
      v40 = *(v38 - 2);
      v39 = *(v38 - 1);
      v41 = *v38;
      v42 = objc_allocWithZone(v93);
      swift_unknownObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v43 = swift_unknownObjectRetain();
      v96 = v40;
      sub_10000E2BC(v43, v97, v40, v39, v41);
      v45 = v4;
      if (v4)
      {
        goto LABEL_36;
      }

      v46 = v44;
      AUAAudioDevice.addGlobalControls()();
      v45 = v47;
      if (v47)
      {
        break;
      }

      AUAAudioDevice.addStreamControls()();
      v45 = v48;
      if (v48)
      {
        break;
      }

      sub_1000554F8(v46, v91, v97);
      v4 = 0;
      if (v57)
      {
        v58 = v57;
        [v90 addAudioDevice:v58];
      }

      else
      {
        v59 = v90;
        v60 = *&v90[v88];
        if (v60 && (v61 = sub_1000AA808(0x1Cu, v60), v59 = v90, v61))
        {
          v62 = v5;
          v98 = 0;
          v99 = 0xE000000000000000;
          _StringGuts.grow(_:)(31);

          v98 = 0xD00000000000001DLL;
          v99 = v85;
          v64 = *v87;
          v63 = v87[1];

          v65._countAndFlagsBits = v64;
          v65._object = v63;
          String.append(_:)(v65);

          v67 = v98;
          v66 = v99;
          if (qword_100173CB8 != -1)
          {
            swift_once();
          }

          v68 = sub_10000A1BC(v95, qword_1001794F0);
          v69 = v94;
          sub_10000A2A4(v68, v94);
          if (qword_100173CC0 != -1)
          {
            swift_once();
          }

          v70 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v70, qword_100179508);
          sub_100039AA0(1, v69, v67, v66);

          sub_10000C9D0(v69);
          v5 = v62;
        }

        else
        {
          [v59 addAudioDevice:v46];
        }

        AUAAudioDevice.startDevice()();
        v4 = v71;
        if (v71)
        {
          v84 = v5;
          v98 = 0;
          v99 = 0xE000000000000000;
          _StringGuts.grow(_:)(28);
          v73 = *v87;
          v72 = v87[1];

          v74._countAndFlagsBits = v73;
          v74._object = v72;
          String.append(_:)(v74);

          v75._countAndFlagsBits = 0x20726F72726520;
          v75._object = 0xE700000000000000;
          String.append(_:)(v75);
          v103 = v4;
          sub_100001AB4(&qword_100177270, &qword_100120A40);
          _print_unlocked<A, B>(_:_:)();
          v76._countAndFlagsBits = 0xD000000000000011;
          v76._object = (v86 | 0x8000000000000000);
          String.append(_:)(v76);
          v78 = v98;
          v77 = v99;
          if (qword_100173CB8 != -1)
          {
            swift_once();
          }

          v79 = sub_10000A1BC(v95, qword_1001794F0);
          v80 = v94;
          sub_10000A2A4(v79, v94);
          if (qword_100173CC0 != -1)
          {
            swift_once();
          }

          v81 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v81, qword_100179508);
          sub_100039F58(1, v80, v78, v77);

          sub_10000C9D0(v80);
          v82 = v46;
          [v90 removeAudioDevice:v82];

          swift_unknownObjectRelease();

          v4 = 0;
          v5 = v84;
          goto LABEL_41;
        }
      }

      swift_unknownObjectRelease();
LABEL_41:
      v38 += 3;
      if (!--v35)
      {
        goto LABEL_60;
      }
    }

LABEL_36:
    v4 = 0;
    v49 = v5;
    v98 = 0;
    v99 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);
    v50._countAndFlagsBits = 0x20726F727265;
    v50._object = 0xE600000000000000;
    String.append(_:)(v50);
    v103 = v45;
    sub_100001AB4(&qword_100177270, &qword_100120A40);
    _print_unlocked<A, B>(_:_:)();
    v51._object = (v92 | 0x8000000000000000);
    v51._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v51);
    v52 = v98;
    v53 = v99;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v54 = sub_10000A1BC(v95, qword_1001794F0);
    v55 = v94;
    sub_10000A2A4(v54, v94);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v56, qword_100179508);
    sub_100039F58(1, v55, v52, v53);

    swift_unknownObjectRelease();
    sub_10000C9D0(v55);
    v5 = v49;
    goto LABEL_41;
  }

LABEL_60:
}

unint64_t sub_100051EB0(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 16))();
  if (v4)
  {
    v5 = v4;
    [v4 removeAllAudioDevices];
  }

  v6 = *(a2 + 24);
  v7 = *(v6(a1, a2) + 160);

  if (v7)
  {
    if (*(v7 + 120))
    {
      v8 = *(v7 + 120);

      sub_100116498(0);

      v9 = *(v7 + 120);
      *(v7 + 120) = 0;
    }
  }

  result = (*(a2 + 32))(a1, a2);
  v11 = result;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v12 = result;
    v25 = v6;
    if (result)
    {
      goto LABEL_9;
    }

LABEL_17:

    v16 = v6(a1, a2);
    goto LABEL_18;
  }

  v12 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  v25 = v6;
  if (!v12)
  {
    goto LABEL_17;
  }

LABEL_9:
  if (v12 < 1)
  {
    __break(1u);
    return result;
  }

  v13 = 0;
  do
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v14 = *(v11 + 8 * v13 + 32);
    }

    ++v13;
    swift_beginAccess();
    v15 = *(v14 + 16);
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;

    swift_unknownObjectRelease();
  }

  while (v12 != v13);

  v6 = v25;
  v16 = v25(a1, a2);
LABEL_18:
  v17 = *(v16 + 168);

  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = v17 + 32;
    do
    {
      sub_10001EAFC(v19, v26);
      v20 = v27;
      v21 = v28;
      sub_100057378(v26, v27);
      (*(v21 + 24))(0, 0, v20, v21);
      sub_10000CE78(v26);
      v19 += 40;
      --v18;
    }

    while (v18);

    v22 = v25(a1, a2);
  }

  else
  {

    v22 = v6(a1, a2);
  }

  v23 = v22;
  swift_beginAccess();
  v24 = *(v23 + 16);
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;

  return swift_unknownObjectRelease();
}

uint64_t sub_100052184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *((*(a3 + 24))(a2, a3) + 168);

  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = v6 + 32;
    while (v9 < *(v6 + 16))
    {
      sub_10001EAFC(v10, &v19);
      v11 = v20;
      v12 = v21;
      sub_10001EAB8(&v19, v20);
      (*(v12 + 8))(v16, v11, v12);
      v13 = v17;
      v14 = v18;
      sub_10001EAB8(v16, v17);
      v15 = (*(v14 + 16))(v13, v14);
      sub_10000CE78(v16);
      if (v15 == a1)
      {

        return sub_10000D0A0(&v19, a4);
      }

      ++v9;
      result = sub_10000CE78(&v19);
      v10 += 40;
      if (v8 == v9)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

void sub_1000522EC(char *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t (**a4)(void, void)@<X4>, unint64_t a5@<X8>)
{
  v58 = 0;
  v11 = a4[2](a2, a4);
  if (!v11)
  {
    sub_10000CA2C();
    swift_allocError();
    *v32 = 58;
    *(v32 + 8) = 0;
    *(v32 + 16) = 0xE000000000000000;
    swift_willThrow();
    return;
  }

  v57 = v11;
  v54 = *(a3 - 8);
  v12 = [objc_allocWithZone(NSMutableData) initWithLength:*(v54 + 64)];
  if (!v12)
  {
    sub_10000CA2C();
    swift_allocError();
    *v33 = 1;
    *(v33 + 8) = 0;
    *(v33 + 16) = 0xE000000000000000;
    swift_willThrow();

    return;
  }

  v13 = v12;
  v53 = a5;
  v55 = a4[20](a2, a4);
  v56 = *(*(a4[3](a2, a4) + 32) + 2);

  v14 = v13;
  v15 = NSData.startIndex.getter();
  v16 = v14;
  v17 = NSData.endIndex.getter();
  v18 = NSData.startIndex.getter();
  v19 = NSData.endIndex.getter();
  if (v15 < v18 || v19 < v15)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v16 = v14;
  v21 = NSData.startIndex.getter();
  v22 = NSData.endIndex.getter();
  if (v17 < v21 || v22 < v17)
  {
    goto LABEL_39;
  }

  v24 = &v17[-v15];
  if (__OFSUB__(v17, v15))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if ((v24 & 0x8000000000000000) != 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v24 >> 16)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v17 = a1;
  v25 = (v56 << 32) | (v24 << 48) | (a1 << 16) | (v55 << 8) | 0xA1;
  a1 = v57;
  sub_1000FC690(v25, v13, &v58);
  if (v5)
  {
    v16 = _convertErrorToNSError(_:)();
    v26 = [v16 code];

    if (v26 >= 0xFFFFFFFF80000000)
    {
      if (v26 <= 0x7FFFFFFF)
      {
        v27 = [v57 boxName];
        if (v27)
        {
          v28 = v27;
          v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v31 = v30;
        }

        else
        {
          v31 = 0xEE00656369766544;
          v29 = 0x206E776F6E6B6E55;
        }

        if (v26 != -536850432)
        {
          _StringGuts.grow(_:)(41);

          sub_100001AB4(&qword_100173C98, &unk_100120120);
          v45 = swift_allocObject();
          *(v45 + 16) = xmmword_10011DE90;
          *(v45 + 56) = &type metadata for Int32;
          *(v45 + 64) = &protocol witness table for Int32;
          *(v45 + 32) = v26;
          v46._countAndFlagsBits = String.init(format:_:)();
          String.append(_:)(v46);

          v47._countAndFlagsBits = 0xD00000000000001CLL;
          v47._object = 0x800000010012CDD0;
          String.append(_:)(v47);
          v48._countAndFlagsBits = v29;
          v48._object = v31;
          String.append(_:)(v48);

          v49._countAndFlagsBits = 58;
          v49._object = 0xE100000000000000;
          String.append(_:)(v49);
          v50 = swift_allocObject();
          *(v50 + 16) = xmmword_100120CD0;
          *(v50 + 56) = &type metadata for UInt8;
          *(v50 + 64) = &protocol witness table for UInt8;
          *(v50 + 32) = -95;
          *(v50 + 96) = &type metadata for UInt8;
          *(v50 + 104) = &protocol witness table for UInt8;
          *(v50 + 72) = v55;
          *(v50 + 136) = &type metadata for UInt16;
          *(v50 + 144) = &protocol witness table for UInt16;
          *(v50 + 112) = v17;
          *(v50 + 176) = &type metadata for UInt16;
          *(v50 + 184) = &protocol witness table for UInt16;
          *(v50 + 152) = v56;
          *(v50 + 216) = &type metadata for UInt16;
          *(v50 + 224) = &protocol witness table for UInt16;
          *(v50 + 192) = v24;
          v51._countAndFlagsBits = String.init(format:_:)();
          String.append(_:)(v51);

          v16 = 0x20726F727245;
          v17 = 0xE600000000000000;
          v15 = OBJC_IVAR____TtC9AUASDCore9USBDevice_logID;
          if (qword_100173CC0 != -1)
          {
            swift_once();
          }

          v52 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v52, qword_100179508);
          a1 = v57;
          goto LABEL_35;
        }

        _StringGuts.grow(_:)(39);

        v40._countAndFlagsBits = v29;
        v40._object = v31;
        String.append(_:)(v40);

        v41._countAndFlagsBits = 0x64656C6C61745320;
        v41._object = 0xEA0000000000203ALL;
        String.append(_:)(v41);
        sub_100001AB4(&qword_100173C98, &unk_100120120);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_100120CD0;
        *(v42 + 56) = &type metadata for UInt8;
        *(v42 + 64) = &protocol witness table for UInt8;
        *(v42 + 32) = -95;
        *(v42 + 96) = &type metadata for UInt8;
        *(v42 + 104) = &protocol witness table for UInt8;
        *(v42 + 72) = v55;
        *(v42 + 136) = &type metadata for UInt16;
        *(v42 + 144) = &protocol witness table for UInt16;
        *(v42 + 112) = v17;
        *(v42 + 176) = &type metadata for UInt16;
        *(v42 + 184) = &protocol witness table for UInt16;
        *(v42 + 152) = v56;
        *(v42 + 216) = &type metadata for UInt16;
        *(v42 + 224) = &protocol witness table for UInt16;
        *(v42 + 192) = v24;
        v43._countAndFlagsBits = String.init(format:_:)();
        String.append(_:)(v43);

        v16 = 0xD000000000000019;
        v17 = 0x800000010012CDF0;
        v15 = OBJC_IVAR____TtC9AUASDCore9USBDevice_logID;
        if (qword_100173CC0 == -1)
        {
LABEL_31:
          v44 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v44, qword_100179508);
LABEL_35:
          sub_100039F58(2, &a1[v15], v16, v17);

          swift_willThrow();

          goto LABEL_36;
        }

LABEL_48:
        swift_once();
        goto LABEL_31;
      }

      goto LABEL_44;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v34 = v58;
  v16 = v14;
  v17 = NSData.startIndex.getter();
  v15 = NSData.endIndex.getter();
  v35 = NSData.startIndex.getter();
  v36 = NSData.endIndex.getter();
  if (v17 < v35 || v36 < v17)
  {
    goto LABEL_45;
  }

  v16 = v14;
  v37 = NSData.startIndex.getter();
  v38 = NSData.endIndex.getter();
  if (v15 < v37 || v38 < v15)
  {
    goto LABEL_46;
  }

  v16 = v53;
  if (__OFSUB__(v15, v17))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v15 - v17 < v34)
  {
    sub_10000CA2C();
    swift_allocError();
    *v39 = 30;
    *(v39 + 8) = 0;
    *(v39 + 16) = 0xE000000000000000;
    swift_willThrow();

LABEL_36:
    return;
  }

  (*(v54 + 16))(v53, [v14 bytes], a3);

  (*(v54 + 56))(v53, 0, 1, a3);
}

void sub_100052AFC(void *a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(void, void))
{
  v48 = 0;
  v10 = a4[2](a3, a4);
  if (!v10)
  {
    sub_10000CA2C();
    swift_allocError();
    *v25 = 58;
    *(v25 + 8) = 0;
    *(v25 + 16) = 0xE000000000000000;
    swift_willThrow();
    return;
  }

  v11 = v10;
  v44 = a4[21](a3, a4);
  v45 = *(*(a4[3](a3, a4) + 32) + 2);

  v12 = a2;
  v13 = NSData.startIndex.getter();
  v14 = NSData.endIndex.getter();
  v15 = NSData.startIndex.getter();
  v16 = NSData.endIndex.getter();
  if (v13 < v15 || v16 < v13)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v12 = a2;
  v17 = NSData.startIndex.getter();
  v18 = NSData.endIndex.getter();
  if (v14 < v17 || v18 < v14)
  {
    goto LABEL_31;
  }

  v5 = v14 - v13;
  if (__OFSUB__(v14, v13))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v5 >> 16)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  sub_1000FC690((v45 << 32) | (v5 << 48) | (a1 << 16) | (v44 << 8) | 0x21, a2, &v48);
  if (v4)
  {
    v12 = _convertErrorToNSError(_:)();
    v19 = [v12 code];

    if (v19 >= 0xFFFFFFFF80000000)
    {
      if (v19 <= 0x7FFFFFFF)
      {
        v20 = [v11 boxName];
        if (v20)
        {
          v21 = v20;
          v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v24 = v23;
        }

        else
        {
          v24 = 0xEE00656369766544;
          v22 = 0x206E776F6E6B6E55;
        }

        if (v19 == -536850432)
        {
          _StringGuts.grow(_:)(39);

          v46 = 0xD000000000000019;
          v47 = 0x800000010012CDF0;
          v34._countAndFlagsBits = v22;
          v34._object = v24;
          String.append(_:)(v34);

          v35._countAndFlagsBits = 0x64656C6C61745320;
          v35._object = 0xEA0000000000203ALL;
          String.append(_:)(v35);
          sub_100001AB4(&qword_100173C98, &unk_100120120);
        }

        else
        {
          _StringGuts.grow(_:)(41);

          v46 = 0x20726F727245;
          v47 = 0xE600000000000000;
          sub_100001AB4(&qword_100173C98, &unk_100120120);
          v36 = swift_allocObject();
          *(v36 + 16) = xmmword_10011DE90;
          *(v36 + 56) = &type metadata for Int32;
          *(v36 + 64) = &protocol witness table for Int32;
          *(v36 + 32) = v19;
          v37._countAndFlagsBits = String.init(format:_:)();
          String.append(_:)(v37);

          v38._countAndFlagsBits = 0xD00000000000001CLL;
          v38._object = 0x800000010012CDD0;
          String.append(_:)(v38);
          v39._countAndFlagsBits = v22;
          v39._object = v24;
          String.append(_:)(v39);

          v40._countAndFlagsBits = 58;
          v40._object = 0xE100000000000000;
          String.append(_:)(v40);
        }

        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_100120CD0;
        *(v41 + 56) = &type metadata for UInt8;
        *(v41 + 64) = &protocol witness table for UInt8;
        *(v41 + 32) = 33;
        *(v41 + 96) = &type metadata for UInt8;
        *(v41 + 104) = &protocol witness table for UInt8;
        *(v41 + 72) = v44;
        *(v41 + 136) = &type metadata for UInt16;
        *(v41 + 144) = &protocol witness table for UInt16;
        *(v41 + 112) = a1;
        *(v41 + 176) = &type metadata for UInt16;
        *(v41 + 184) = &protocol witness table for UInt16;
        *(v41 + 152) = v45;
        *(v41 + 216) = &type metadata for UInt16;
        *(v41 + 224) = &protocol witness table for UInt16;
        *(v41 + 192) = v5;
        v42._countAndFlagsBits = String.init(format:_:)();
        String.append(_:)(v42);

        v12 = v46;
        a1 = v47;
        v5 = OBJC_IVAR____TtC9AUASDCore9USBDevice_logID;
        if (qword_100173CC0 == -1)
        {
          goto LABEL_27;
        }

        goto LABEL_37;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      swift_once();
LABEL_27:
      v43 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v43, qword_100179508);
      sub_100039F58(2, v11 + v5, v12, a1);

      goto LABEL_28;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v26 = v48;
  v27 = NSData.startIndex.getter();
  v28 = NSData.endIndex.getter();
  v29 = NSData.startIndex.getter();
  v30 = NSData.endIndex.getter();
  if (v27 < v29 || v30 < v27)
  {
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  v31 = NSData.startIndex.getter();
  v32 = NSData.endIndex.getter();
  if (v28 < v31 || v32 < v28)
  {
    goto LABEL_39;
  }

  if (__OFSUB__(v28, v27))
  {
    goto LABEL_40;
  }

  if (v26 != v28 - v27)
  {
    sub_10000CA2C();
    swift_allocError();
    *v33 = 30;
    *(v33 + 8) = 0;
    *(v33 + 16) = 0xE000000000000000;
LABEL_28:
    swift_willThrow();
  }
}

char *sub_1000530DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 56))(a2, a3);
  v7[2] = a1;
  v5 = sub_1000263F4(sub_100057428, v7, v4);

  return v5;
}

void sub_100053170(int a1, unint64_t a2, char a3, void *a4, unint64_t a5, uint64_t a6, void *a7)
{
  v50 = 0;
  v15 = USBDescriptorControl.pbLayout()();
  v16 = sub_1000A0294(v15);
  if (!v7)
  {
    v18 = v17;
    sub_10009D2FC(a5, v16, v17);
    v48 = a7[1];
    v48(&v55, a6, a7);
    sub_1000212F0(&v55);
    if (v56 > 0x30u || ((1 << v56) & 0x1000100000001) == 0)
    {
      sub_10000CA2C();
      swift_allocError();
      v36 = 26;
    }

    else
    {
      v49 = (a7[2])(a6, a7);
      if (v49)
      {
        v47 = sub_1000A2D88(a1 & 0xFFFFFF);
        if (a3)
        {
          v20 = 0;
        }

        else
        {
          v20 = a2;
        }

        v21 = a4[3];
        v22 = a4[4];
        sub_10001EAB8(a4, v21);
        (*(v22 + 8))(v52, v21, v22);
        v23 = v53;
        v24 = v54;
        sub_10001EAB8(v52, v53);
        v25 = (*(v24 + 16))(v23, v24);
        v48(v57, a6, a7);
        v59[4] = v57[4];
        v59[5] = v57[5];
        v59[6] = v57[6];
        v60 = v58;
        v59[0] = v57[0];
        v59[1] = v57[1];
        v59[2] = v57[2];
        v59[3] = v57[3];
        sub_100057294(v59, &v51);
        sub_1000212F0(v57);
        v26 = *(*&v59[0] + 2);
        sub_1000572F0(v59);
        v27 = v25 | v20;
        v28 = v18;
        if ((v25 | v20) >> 16)
        {
          __break(1u);
        }

        else
        {
          a7 = v28;
          v27 = NSData.startIndex.getter();
          v29 = NSData.endIndex.getter();
          v30 = NSData.startIndex.getter();
          v31 = NSData.endIndex.getter();
          if (v27 >= v30 && v31 >= v27)
          {
            v32 = NSData.startIndex.getter();
            v33 = NSData.endIndex.getter();
            if (v29 >= v32 && v33 >= v29)
            {
              v34 = v29 - v27;
              if (!__OFSUB__(v29, v27))
              {
                if (v34 >= 0xFFFF)
                {
                  v34 = 0xFFFFLL;
                }

                sub_1000FC690(((v26 | (v25 << 8)) << 32) | ((v34 & ~(v34 >> 63)) << 48) | ((v20 | (v47 << 8)) << 16) | 0x121, v18, &v50);

                sub_10000CE78(v52);
                v37 = v50;
                v38 = a7;
                v39 = NSData.startIndex.getter();
                v40 = NSData.endIndex.getter();
                v41 = NSData.startIndex.getter();
                v42 = NSData.endIndex.getter();
                if (v39 < v41 || v42 < v39)
                {
                  __break(1u);
                }

                else
                {
                  v43 = NSData.startIndex.getter();
                  v44 = NSData.endIndex.getter();

                  if (v40 >= v43 && v44 >= v40)
                  {
                    if (!__OFSUB__(v40, v39))
                    {
                      if (v37 == v40 - v39)
                      {
                      }

                      else
                      {
                        sub_10000CA2C();
                        swift_allocError();
                        *v46 = 30;
                        *(v46 + 8) = 0;
                        *(v46 + 16) = 0xE000000000000000;
                        swift_willThrow();
                      }

                      return;
                    }

LABEL_37:
                    __break(1u);
                  }
                }

                __break(1u);
                goto LABEL_37;
              }

LABEL_34:
              __break(1u);
              __break(1u);
              __break(1u);
              swift_once();
              v45 = type metadata accessor for AUALog(0);
              sub_10000A1BC(v45, qword_100179508);
              sub_100039F58(2, v49 + v20, v27, v18);

              swift_willThrow();

              sub_10000CE78(v52);
              return;
            }

LABEL_33:
            __break(1u);
            goto LABEL_34;
          }
        }

        __break(1u);
        goto LABEL_33;
      }

      sub_10000CA2C();
      swift_allocError();
      v36 = 7;
    }

    *v35 = v36;
    *(v35 + 8) = 0;
    *(v35 + 16) = 0xE000000000000000;
    swift_willThrow();
  }
}

Swift::Int __swiftcall StringIndex.index()()
{
  if ((v0 & 0x10000) != 0)
  {
    v1 = 0xFFFF;
  }

  else
  {
    v1 = 255;
  }

  return v1 & v0;
}

BOOL static StringIndex.__derived_enum_equals(_:_:)(int a1, unsigned int a2)
{
  v2 = a1 == a2;
  if ((a2 & 0x10000) != 0)
  {
    v2 = 0;
  }

  if ((a1 & 0x10000) != 0)
  {
    return (a1 == a2) & HIWORD(a2);
  }

  else
  {
    return v2;
  }
}

void StringIndex.hash(into:)(uint64_t a1, int a2)
{
  v2 = a2;
  if ((a2 & 0x10000) != 0)
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(v2);
  }

  else
  {
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v2);
  }
}

Swift::Int StringIndex.hashValue.getter(unsigned int a1)
{
  Hasher.init(_seed:)();
  if ((a1 & 0x10000) != 0)
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(a1);
  }

  else
  {
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(a1);
  }

  return Hasher._finalize()();
}

Swift::Int sub_100053ACC()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(v1);
  }

  else
  {
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v1);
  }

  return Hasher._finalize()();
}

void sub_100053B44()
{
  v1 = *v0;
  if (v0[1])
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(v1);
  }

  else
  {
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v1);
  }
}

Swift::Int sub_100053B98()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(v1);
  }

  else
  {
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v1);
  }

  return Hasher._finalize()();
}

uint64_t sub_100053C0C(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 2);
  }

  else
  {
    v2 = 0;
  }

  v3 = *a1 == *a2;
  if (a2[1])
  {
    v3 = 0;
  }

  if (a1[1])
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

BOOL sub_100053C48(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 16))();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *(v4 + OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList);
  if (v6 && sub_1000AA808(0x10u, v6))
  {

    return 1;
  }

  v8 = (*(a2 + 48))(a1, a2);

  return v8 == 15;
}

uint64_t sub_100053CF0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = (*(a2 + 16))();
  if (v4)
  {
    v5 = v4;
    v6 = *&v4[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList];
    if (v6)
    {
      v7 = sub_1000AA808(a3, v6);

      if (v7)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

void sub_100053D60(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for LogID(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = *((*(a2 + 24))(a1, a2) + 160);

  if (!v7)
  {
    return;
  }

  v8 = (*(a2 + 64))(a1, a2);
  if (!v8)
  {
    goto LABEL_10;
  }

  v10 = v8;
  if (*(v7 + 120))
  {
    v9 = swift_allocObject();
    v9[2] = a1;
    v9[3] = a2;
    v9[4] = v2;

    swift_unknownObjectRetain();
    sub_100116790(v10, sub_100057400, v9);

LABEL_10:

    return;
  }
}

uint64_t sub_100054114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for LogID(0);
  v9 = *(*(v8 - 8) + 64);
  result = __chkstk_darwin(v8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 != -536870165)
  {
    if (a1 == -536870163)
    {
      return sub_100053D60(a3, a4);
    }

    v13 = result;
    v14 = (*(a4 + 176))(a1, a2, a3, a4);
    if (v17 <= 1u && (v15 & 0xFFFFFFFFFFFE0000) == 0x1FFFFFFFE0000)
    {
      return sub_100053D60(a3, a4);
    }

    if (v17 >> 6)
    {
      if (v17 >> 6 != 1)
      {
        v58 = WORD1(v14);
        v62 = 0;
        v63 = 0xE000000000000000;
        v42 = v14;
        _StringGuts.grow(_:)(54);
        v43._countAndFlagsBits = 0xD000000000000021;
        v43._object = 0x800000010012CEB0;
        String.append(_:)(v43);
        LOBYTE(v59) = v42;
        v44._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v44);

        v45._object = 0x800000010012CEE0;
        v45._countAndFlagsBits = 0xD000000000000011;
        String.append(_:)(v45);
        v46 = v58;
        if ((v42 & 0x1000000) != 0)
        {
          v46 = 0;
        }

        LOBYTE(v59) = v46;
        v47._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v47);

        v48 = v62;
        v49 = v63;
        if (qword_100173CB8 != -1)
        {
          swift_once();
        }

        v50 = sub_10000A1BC(v13, qword_1001794F0);
        sub_10000A2A4(v50, v12);
        if (qword_100173CC0 != -1)
        {
          swift_once();
        }

        v51 = type metadata accessor for AUALog(0);
        sub_10000A1BC(v51, qword_100179508);
        sub_100039F58(2, v12, v48, v49);

        sub_10000C9D0(v12);
        sub_10000CA2C();
        v53 = swift_allocError();
        *v52 = 2;
        goto LABEL_39;
      }

      if ((v14 & 0x100000000) == 0)
      {
        sub_1000547A0(v14 >> 8, v14 >> 16, v14, a3, a4);
        return sub_100053D60(a3, a4);
      }

      sub_10000CA2C();
      v53 = swift_allocError();
      v54 = 2;
    }

    else
    {
      v57 = v17;
      v56 = v15;
      v58 = v16;
      v32 = v14;
      v33 = (*(a4 + 24))(a3, a4);
      swift_beginAccess();
      v34 = *(v33 + 16);
      v35 = *(v33 + 24);
      swift_unknownObjectRetain();

      if (v34)
      {
        ObjectType = swift_getObjectType();
        sub_100052184(v32, ObjectType, v35, &v59);
        swift_unknownObjectRelease();
        if (*(&v60 + 1))
        {
          v37 = v56;
          v38 = v56 & 0x10000;
          sub_10000D0A0(&v59, &v62);
          v39 = v64;
          v40 = v65;
          sub_10001EAB8(&v62, v64);
          if (v38)
          {
            v41 = 0;
          }

          else
          {
            v41 = BYTE1(v37);
          }

          (*(v40 + 88))(v37, v41, v38 >> 16, v58, v57 & 1, v39, v40);
          sub_10000CE78(&v62);
          return sub_100053D60(a3, a4);
        }
      }

      else
      {
        v61 = 0;
        v59 = 0u;
        v60 = 0u;
      }

      sub_10000D040(&v59, &qword_100174FB0, &unk_100120FC0);
      sub_10000CA2C();
      v53 = swift_allocError();
      v54 = 122;
    }

    *v52 = v54;
LABEL_39:
    *(v52 + 8) = 0;
    *(v52 + 16) = 0xE000000000000000;
    swift_willThrow();
    v55 = v53;
    v18 = 0xEE00656369766564;
    v19 = 0x206E776F6E6B6E55;
    v62 = 0;
    v63 = 0xE000000000000000;
    _StringGuts.grow(_:)(32);
    v20 = (*(a4 + 16))(a3, a4);
    if (v20)
    {
      v21 = v20;
      v22 = [v20 boxName];

      if (v22)
      {
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v23;
      }
    }

    v24._countAndFlagsBits = v19;
    v24._object = v18;
    String.append(_:)(v24);

    v25._countAndFlagsBits = 0x20726F727245203ALL;
    v25._object = 0xE800000000000000;
    String.append(_:)(v25);
    *&v59 = v55;
    sub_100001AB4(&qword_100177270, &qword_100120A40);
    _print_unlocked<A, B>(_:_:)();
    v26._countAndFlagsBits = 0xD000000000000014;
    v26._object = 0x800000010012CE90;
    String.append(_:)(v26);
    v27 = v62;
    v28 = v63;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v29 = sub_10000A1BC(v13, qword_1001794F0);
    sub_10000A2A4(v29, v12);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v30, qword_100179508);
    sub_100039F58(2, v12, v27, v28);

    sub_10000C9D0(v12);
    return sub_100053D60(a3, a4);
  }

  return result;
}

uint64_t sub_1000547A0(int a1, unsigned int a2, char a3, uint64_t a4, uint64_t a5)
{
  LOBYTE(v8) = a3;
  v44 = a2;
  LODWORD(v39) = a1;
  v9 = type metadata accessor for LogID(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = 0;
  v43 = 0xE000000000000000;
  _StringGuts.grow(_:)(22);
  v40 = a4;
  v41 = v5;
  active = ActiveFunction.deviceName.getter(a4, a5);
  v15 = v14;

  v42 = active;
  v43 = v15;
  v16._object = 0x800000010012CF00;
  v16._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v16);
  v17 = v42;
  v18 = v43;
  if (qword_100173CB8 != -1)
  {
LABEL_21:
    swift_once();
  }

  v19 = v8;
  v20 = sub_10000A1BC(v9, qword_1001794F0);
  sub_10000A2A4(v20, v12);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for AUALog(0);
  v22 = sub_10000A1BC(v21, qword_100179508);
  sub_100039AA0(2, v12, v17, v18);

  v38 = v12;
  sub_10000C9D0(v12);
  v23 = *(a5 + 24);
  v24 = v40;
  v17 = v41;
  v12 = *(*(v23(v40, a5) + 32) + 2);

  if (v12 != v19)
  {
    v39 = v20;
    v25 = (*(a5 + 32))(v24, a5);
    v8 = v25;
    v37 = v22;
    if (v25 >> 62)
    {
      v26 = _CocoaArrayWrapper.endIndex.getter();
      if (v26)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v26)
      {
LABEL_8:
        v18 = 0;
        v9 = v8 & 0xC000000000000001;
        do
        {
          if (v9)
          {
            v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v12 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
LABEL_17:
              __break(1u);
LABEL_18:

              sub_1001153F4(v44);
            }
          }

          else
          {
            if (v18 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_21;
            }

            v17 = *(v8 + 8 * v18 + 32);

            v12 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              goto LABEL_17;
            }
          }

          if (*(*(v17 + 32) + 2) == v19)
          {
            goto LABEL_18;
          }

          ++v18;
        }

        while (v12 != v26);
      }
    }

    v42 = 0;
    v43 = 0xE000000000000000;
    _StringGuts.grow(_:)(37);
    v28 = ActiveFunction.deviceName.getter(v40, a5);
    v30 = v29;

    v42 = v28;
    v43 = v30;
    v31._countAndFlagsBits = 0xD000000000000021;
    v31._object = 0x800000010012CF20;
    String.append(_:)(v31);
    v45 = v19;
    v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v32);

    v33 = v42;
    v34 = v43;
    v35 = v38;
    sub_10000A2A4(v39, v38);
    sub_100039F58(2, v35, v33, v34);

    sub_10000C9D0(v35);
    sub_10000CA2C();
    swift_allocError();
    *v36 = 2;
    *(v36 + 8) = 0;
    *(v36 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  v23(v24, a5);
  ActiveControlInterface.processInterrupt(attribute:wValue:)(v39, v44);
}

void ActiveFunction.getRawCur(forControl:onEntity:onChannel:)(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = (*(a5 + 184))(a1 & 0xFFFFFF, a3, 0, a2, a4);
  if (!v6)
  {
    v10 = v9;
    ADCControlRequestParameterBlock.getCur()(v9, v8 & 0x1FF, a6);
  }
}

void sub_100054C40(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ActiveFunction.getRawCur(forControl:onEntity:onChannel:)(a1 & 0xFFFFFF, a2, a3, a4, a5, v7);
  if (!v5)
  {
    sub_100001AB4(&qword_1001755F0, &qword_100121AF0);
    if (!swift_dynamicCast())
    {
      sub_10000CA2C();
      swift_allocError();
      *v6 = 1;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0xE000000000000000;
      swift_willThrow();
    }
  }
}

uint64_t ActiveFunction.getRawRange(forControl:onEntity:onChannel:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = (*(a5 + 200))(a1 & 0xFFFFFF, a3, 0, a2, a4);
  if (!v6)
  {
    v9 = v8;
    v5 = sub_10009D018(v7 & 0x1FF, v8);
  }

  return v5;
}

unint64_t sub_100054D98()
{
  result = qword_100176178;
  if (!qword_100176178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176178);
  }

  return result;
}

unint64_t sub_100054DF0()
{
  result = qword_100176180;
  if (!qword_100176180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176180);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for StringIndex(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for StringIndex(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *(a1 + 2);
  if (v4 <= 1)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4 ^ 0xFF;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for StringIndex(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 2) = -a2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_100054F7C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100054FC4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for AUAInterruptAttribute(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AUAInterruptAttribute(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100055164(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v10 = ActiveFunction.getRawRange(forControl:onEntity:onChannel:)(a1 & 0xFFFFFF, a2, a3, a4, a5);
  if (!v5)
  {
    v12 = sub_10005524C(v10);

    if (v12)
    {
      v6 = sub_100055390(v12, a1 & 0xFFFFFF, a2, a4, v6);
    }

    else
    {
      sub_10000CA2C();
      v6 = swift_allocError();
      *v13 = 61;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0xE000000000000000;
      swift_willThrow();
    }
  }

  return v6;
}

void *sub_10005524C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  sub_100047010(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 40)
    {
      sub_10001EAFC(i, v11);
      sub_100001AB4(&qword_100176160, &qword_100121910);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_100047010((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = v3 + 6 * v6;
      *(v7 + 8) = v9;
      *(v7 + 18) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void *sub_100055390(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[2] = a4;
  v9[3] = a5;
  v10 = a2;
  v11 = BYTE2(a2);
  v12 = a3;
  v7 = sub_10004EFEC(sub_100057344, v9, a1);
  if (!v6)
  {
    v5 = sub_10004F1A0(v7);
  }

  return v5;
}

__int16 *sub_10005541C@<X0>(__int16 *result@<X0>, uint64_t *a2@<X6>, float *a3@<X8>)
{
  v4 = result[2];
  if (!result[2])
  {
    goto LABEL_11;
  }

  v5 = *result;
  if (v5 <= -32767)
  {
    v5 = -32767;
  }

  v6 = vcvts_n_f32_s32(v5, 8uLL);
  if (v6 == -INFINITY)
  {
    goto LABEL_11;
  }

  v7 = result[1];
  v8 = vcvts_n_f32_s32(v7, 8uLL);
  if (v7 == 0x8000)
  {
    v8 = -INFINITY;
  }

  if (v8 < v6)
  {
    goto LABEL_11;
  }

  v9 = vcvts_n_f32_s32(v4, 8uLL);
  if (v4 == 0x8000)
  {
    v9 = -INFINITY;
  }

  if (v9 >= 0.0)
  {
    *a3 = v6;
    a3[1] = v8;
    a3[2] = v9;
  }

  else
  {
LABEL_11:
    sub_10000CA2C();
    v10 = swift_allocError();
    *v11 = 125;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0xE000000000000000;
    result = swift_willThrow();
    *a2 = v10;
  }

  return result;
}

void sub_1000554F8(void *a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(a2, a3);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (!Strong)
  {
    sub_10000CA2C();
    swift_allocError();
    *v6 = 58;
    *(v6 + 8) = 0;
    *(v6 + 16) = 0xE000000000000000;
    swift_willThrow();
    return;
  }

  v5 = *&Strong[OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceDescriptor];
  if (*(v5 + 8) != -1 || *(v5 + 10) != -1)
  {

    return;
  }

  v38 = a1;
  v7 = [objc_opt_self() mainBundle];
  v8 = [v7 resourcePath];

  v37 = v8;
  if (v8)
  {
    sub_100001AB4(&qword_1001761A0, &qword_100121AF8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10011DE90;
    AnyHashable.init<A>(_:)();
    sub_100001AB4(&qword_1001761A8, &qword_100121B00);
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_100120A30;
    *(v9 + 32) = 0xD000000000000013;
    *(v9 + 40) = 0x800000010012CF50;
    *(v9 + 48) = _swiftEmptyArrayStorage;
    *(v9 + 56) = 0xD00000000000001ALL;
    *(v9 + 64) = 0x800000010012CF70;
    *(v9 + 72) = _swiftEmptyArrayStorage;
    *(v9 + 80) = 0x7475706E49;
    *(v9 + 88) = 0xE500000000000000;
    sub_100001AB4(&qword_1001761B0, &qword_100121B08);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_10011DE90;
    sub_100001AB4(&qword_1001761B8, &qword_100121B10);
    v10 = swift_initStackObject();
    *(v10 + 16) = xmmword_10011DE90;
    *(v10 + 32) = 0x6572617764726148;
    *(v10 + 40) = 0xE800000000000000;
    sub_100001AB4(&qword_1001761C0, &qword_100121B18);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100121960;
    v12 = sub_10000AF8C(&off_100159F60);
    sub_100001AB4(&qword_1001761C8, &qword_100121B20);
    swift_arrayDestroy();
    *(v11 + 32) = v12;
    v13 = sub_10000AF8C(&off_100159FC0);
    swift_arrayDestroy();
    *(v11 + 40) = v13;
    *(v10 + 48) = v11;
    v14 = sub_10000B0A0(v10);
    swift_setDeallocating();
    sub_10000D040(v10 + 32, &qword_1001761D0, &qword_100121B28);
    *(v34 + 32) = v14;
    *(v9 + 96) = v34;
    *(v9 + 104) = 0x74757074754FLL;
    *(v9 + 112) = 0xE600000000000000;
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_10011DE90;
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_10011DE90;
    *(v15 + 32) = 0x6572617764726148;
    *(v15 + 40) = 0xE800000000000000;
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100121960;
    v17 = sub_10000AF8C(&off_10015A020);
    swift_arrayDestroy();
    *(v16 + 32) = v17;
    v18 = sub_10000AF8C(&off_10015A080);
    swift_arrayDestroy();
    *(v16 + 40) = v18;
    *(v15 + 48) = v16;
    v19 = sub_10000B0A0(v15);
    swift_setDeallocating();
    sub_10000D040(v15 + 32, &qword_1001761D0, &qword_100121B28);
    *(v35 + 32) = v19;
    *(v9 + 120) = v35;
    v20 = sub_10000B0B4(v9);
    swift_setDeallocating();
    sub_100001AB4(&qword_1001761D8, &qword_100121B30);
    swift_arrayDestroy();
    *(inited + 96) = sub_100001AB4(&qword_1001761E0, &qword_100121B38);
    *(inited + 72) = v20;
    sub_10000B1C4(inited);
    swift_setDeallocating();
    sub_10000D040(inited + 32, &qword_1001749F8, &qword_100121B40);
    v21 = [v38 deviceUID];
    if (v21)
    {
      v22 = v21;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26._countAndFlagsBits = v23;
      v26._object = v25;
      String.append(_:)(v26);

      v27._countAndFlagsBits = 1347634208;
      v27._object = 0xE400000000000000;
      String.append(_:)(v27);
      v28 = objc_allocWithZone(ASDAudioDeviceDSPDatabase);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v30 = String._bridgeToObjectiveC()();
      v31 = [v28 initWithDictionary:isa resourcePath:v37 deviceUID:v30];

      v32 = [v38 plugin];
      objc_allocWithZone(type metadata accessor for AUADSPAudioDevice());
      v33 = v38;
      sub_10001E310(0, 0xE000000000000000, v33, v31, v32, 1667463012);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void *sub_100055B98(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 24))() + 168);

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    v5 = _swiftEmptyArrayStorage;
    do
    {
      sub_10001EAFC(v4, v13);
      sub_10001EAFC(v13, v11);
      sub_100001AB4(&qword_100174F60, &qword_100121090);
      sub_100001AB4(&qword_100175380, &qword_100120E70);
      if (swift_dynamicCast())
      {
        sub_10000D0A0(v9, v12);
        sub_10001EAFC(v12, v11);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_100024044(0, v5[2] + 1, 1, v5);
        }

        v7 = v5[2];
        v6 = v5[3];
        if (v7 >= v6 >> 1)
        {
          v5 = sub_100024044((v6 > 1), v7 + 1, 1, v5);
        }

        sub_10000CE78(v12);
        sub_10000CE78(v13);
        v5[2] = v7 + 1;
        sub_10000D0A0(v11, &v5[5 * v7 + 4]);
      }

      else
      {
        sub_10000CE78(v13);
        v10 = 0;
        memset(v9, 0, sizeof(v9));
        sub_10000D040(v9, &qword_100176188, &qword_100124520);
      }

      v4 += 40;
      --v3;
    }

    while (v3);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v5;
}

uint64_t sub_100055D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(*a1 + 72);
  if (!(v9 >> 62))
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (v9 < 0)
  {
    v21 = *(*a1 + 72);
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    return 0;
  }

LABEL_3:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v9 + 32);

LABEL_6:
    (*(a6 + 208))(v25, v11, a5, a6);
    sub_100057224(v25, v22);
    v12 = v23;
    if (v23)
    {
      v13 = v24;
      sub_10001EAB8(v22, v23);
      v14 = (*(v13 + 24))(v12, v13);
      sub_10000CE78(v22);
    }

    else
    {
      sub_10000D040(v22, &qword_100176188, &qword_100124520);
      v14 = 0;
    }

    ObjectType = swift_getObjectType();
    (*(a4 + 24))(v22, ObjectType, a4);
    v16 = v23;
    v17 = v24;
    sub_10001EAB8(v22, v23);
    v18 = (*(*(v17 + 8) + 16))(v16);

    sub_10000D040(v25, &qword_100176188, &qword_100124520);
    if (v12)
    {
      v19 = v14 == v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
    sub_10000CE78(v22);
    return v20;
  }

  __break(1u);
  return result;
}

void sub_100055F8C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = (*(a3 + 16))(a2, a3);
  if (!v5 || (v6 = v5, v7 = [v5 audioDevices], v6, !v7))
  {
    sub_10000CA2C();
    swift_allocError();
    *v36 = 58;
    *(v36 + 8) = 0;
    *(v36 + 16) = 0xE000000000000000;
    swift_willThrow();
    return;
  }

  sub_10001EBA8(0, &qword_100174F30, ASDAudioDevice_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
LABEL_38:
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_39:

    return;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_39;
  }

LABEL_5:
  v10 = 0;
  v11 = v8 & 0xC000000000000001;
  v12 = v8 & 0xFFFFFFFFFFFFFF8;
  v13 = v8 + 32;
  v44 = v4;
  v40 = v8 & 0xC000000000000001;
  v41 = v9;
  v38 = v8 + 32;
  v39 = v8 & 0xFFFFFFFFFFFFFF8;
  while (2)
  {
    if (v11)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v10 >= *(v12 + 16))
      {
        __break(1u);
        break;
      }

      v14 = *(v13 + 8 * v10);
    }

    v15 = v14;
    v16 = __OFADD__(v10, 1);
    v17 = v10 + 1;
    if (!v16)
    {
      type metadata accessor for AUAAudioDevice();
      if (!swift_dynamicCastClass())
      {

        sub_10000CA2C();
        swift_allocError();
        *v37 = 1;
        *(v37 + 8) = 0;
        *(v37 + 16) = 0xE000000000000000;
        swift_willThrow();

        return;
      }

      v18 = AUAAudioDevice.inputAUAStreams()();
      if (v18 >> 62)
      {
        type metadata accessor for AUAStream(0);
        v19 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for AUAStream(0);
        v19 = v18;
      }

      v20 = AUAAudioDevice.outputAUAStreams()();
      if (v20 >> 62)
      {
        type metadata accessor for AUAStream(0);
        v21 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for AUAStream(0);
        v21 = v20;
      }

      v50 = v19;
      v8 = &v50;
      sub_10007DC24(v21);
      v48 = v50;
      v42 = v15;
      v43 = v17;
      v45 = v50 & 0xFFFFFFFFFFFFFF8;
      if (v50 >> 62)
      {
        v46 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v46 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      for (i = 0; v46 != i; ++i)
      {
        if ((v48 & 0xC000000000000001) != 0)
        {
          v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (i >= *(v45 + 16))
          {
            goto LABEL_37;
          }

          v23 = *(v48 + 8 * i + 32);
        }

        v24 = v23;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v25 = *&v23[OBJC_IVAR___AUAStream_streamingTerminal + 24];
        v26 = *&v23[OBJC_IVAR___AUAStream_streamingTerminal + 32];
        sub_10001EAB8(&v23[OBJC_IVAR___AUAStream_streamingTerminal], v25);
        v27 = (*(v26 + 48))(v25, v26);
        v28 = a1[3];
        v4 = a1[4];
        v29 = sub_10001EAB8(a1, v28);
        v30 = *(v4 + 48);
        if (v27 == v30(v28, v4))
        {

          return;
        }

        v49 = v24;
        v31 = &v24[OBJC_IVAR___AUAStream_otherTerminal];
        v32 = *&v24[OBJC_IVAR___AUAStream_otherTerminal + 24];
        v33 = *&v24[OBJC_IVAR___AUAStream_otherTerminal + 32];
        sub_10001EAB8(v31, v32);
        v34 = (*(v33 + 48))(v32, v33);
        v8 = v29;
        v35 = v30(v28, v4);

        if (v34 == v35)
        {

          return;
        }
      }

      v11 = v40;
      v10 = v43;
      v4 = v44;
      v13 = v38;
      v12 = v39;
      if (v43 != v41)
      {
        continue;
      }

      goto LABEL_39;
    }

    break;
  }

  __break(1u);
}

void sub_100056448(int a1, unsigned __int8 a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = 0;
  v11 = USBDescriptorControl.pbLayout()();
  v12 = sub_1000A0294(v11);
  if (!v5)
  {
    v14 = v13;
    sub_10009D2FC(a3, v12, v13);
    (*(a5 + 8))(v41, a4, a5);
    sub_1000212F0(v41);
    if (v42 > 0x30u || ((1 << v42) & 0x1000100000001) == 0)
    {
      sub_10000CA2C();
      swift_allocError();
      v28 = 26;
    }

    else
    {
      v16 = (*(a5 + 16))(a4, a5);
      if (v16)
      {
        v39 = v16;
        v17 = sub_1000A2D88(a1 & 0xFFFFFF);
        v18 = v14;
        v19 = NSData.startIndex.getter();
        v20 = v18;
        v21 = NSData.endIndex.getter();
        v22 = NSData.startIndex.getter();
        v23 = NSData.endIndex.getter();
        if (v19 < v22 || v23 < v19)
        {
          __break(1u);
        }

        else
        {
          v20 = v18;
          v24 = NSData.startIndex.getter();
          v25 = NSData.endIndex.getter();
          if (v21 >= v24 && v25 >= v21)
          {
            v26 = v21 - v19;
            if (!__OFSUB__(v21, v19))
            {
              if (v26 >= 0xFFFF)
              {
                v26 = 0xFFFFLL;
              }

              sub_1000FC690((a2 << 32) | ((v26 & ~(v26 >> 63)) << 48) | (v17 << 24) | 0x122, v14, &v40);

              v29 = v40;
              v30 = v18;
              v31 = NSData.startIndex.getter();
              v32 = NSData.endIndex.getter();
              v33 = NSData.startIndex.getter();
              v34 = NSData.endIndex.getter();
              if (v31 < v33 || v34 < v31)
              {
                __break(1u);
              }

              else
              {
                v35 = NSData.startIndex.getter();
                v36 = NSData.endIndex.getter();

                if (v32 >= v35 && v36 >= v32)
                {
                  if (!__OFSUB__(v32, v31))
                  {
                    if (v29 == v32 - v31)
                    {
                    }

                    else
                    {
                      sub_10000CA2C();
                      swift_allocError();
                      *v38 = 30;
                      *(v38 + 8) = 0;
                      *(v38 + 16) = 0xE000000000000000;
                      swift_willThrow();
                    }

                    return;
                  }

LABEL_32:
                  __break(1u);
                }
              }

              __break(1u);
              goto LABEL_32;
            }

LABEL_29:
            __break(1u);
            __break(1u);
            __break(1u);
            swift_once();
            v37 = type metadata accessor for AUALog(0);
            sub_10000A1BC(v37, qword_100179508);
            sub_100039F58(2, v39 + v19, v20, v14);

            swift_willThrow();

            return;
          }
        }

        __break(1u);
        goto LABEL_29;
      }

      sub_10000CA2C();
      swift_allocError();
      v28 = 7;
    }

    *v27 = v28;
    *(v27 + 8) = 0;
    *(v27 + 16) = 0xE000000000000000;
    swift_willThrow();
  }
}

uint64_t sub_100056B68@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v18 = a1[1];
  v19 = *a1;
  v5 = a1[2];
  result = v5 + 32;
  v7 = -*(v5 + 16);
  v8 = -1;
  while (1)
  {
    if (v7 + v8 == -1)
    {
      v16 = 0;
      v17 = 0;
      v5 = 0;
      goto LABEL_7;
    }

    if (++v8 >= *(v5 + 16))
    {
      break;
    }

    v9 = result + 40;
    sub_10001EAFC(result, v20);
    v11 = v21;
    v10 = v22;
    sub_10001EAB8(v20, v21);
    v12 = (*(*(v10 + 8) + 48))(v11);
    v14 = a2[3];
    v13 = a2[4];
    sub_10001EAB8(a2, v14);
    v15 = (*(*(v13 + 8) + 48))(v14);
    sub_10000CE78(v20);
    result = v9;
    if (v12 == v15)
    {
      v16 = v19;

      v17 = v18;

LABEL_7:
      *a3 = v16;
      a3[1] = v17;
      a3[2] = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_100056CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000530DC(a1, a2, a3);
  if (!v4)
  {
    v6 = *(v5 + 2) + 1;
    v7 = 32;
    do
    {
      v3 = --v6 != 0;
      if (!v6)
      {
        break;
      }

      v8 = *&v5[v7];
      v7 += 24;
    }

    while (*(v8 + 136) != 257);
  }

  return v3;
}

void *sub_100056D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = (*(a6 + 16))(a5, a6);
  if (result)
  {
    v7 = result;
    v8 = [result audioDevices];

    if (!v8)
    {
      return 0;
    }

    sub_10001EBA8(0, &qword_100174F30, ASDAudioDevice_ptr);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v40 = _swiftEmptyArrayStorage;
    if (v9 >> 62)
    {
LABEL_44:
      v10 = _CocoaArrayWrapper.endIndex.getter();
      if (v10)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
LABEL_5:
        v11 = 0;
        v33 = v9 & 0xFFFFFFFFFFFFFF8;
        v34 = v9 & 0xC000000000000001;
        v31 = v10;
        v32 = v9 + 32;
        while (1)
        {
          if (v34)
          {
            v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v11 >= *(v33 + 16))
            {
              goto LABEL_43;
            }

            v13 = *(v32 + 8 * v11);
          }

          v9 = v13;
          if (__OFADD__(v11++, 1))
          {
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
            goto LABEL_44;
          }

          result = [v13 controls];
          if (!result)
          {
            __break(1u);
            return result;
          }

          v15 = result;
          sub_10001EBA8(0, &qword_100174F58, ASDControl_ptr);
          v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v16 >> 62)
          {
            v17 = _CocoaArrayWrapper.endIndex.getter();
            v36 = v9;
            if (v17)
            {
LABEL_15:
              v18 = 0;
              v12 = _swiftEmptyArrayStorage;
              do
              {
                v35 = v12;
                v19 = v18;
                while (1)
                {
                  if ((v16 & 0xC000000000000001) != 0)
                  {
                    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    if (v19 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_41;
                    }

                    v20 = *(v16 + 8 * v19 + 32);
                  }

                  v9 = v20;
                  v18 = v19 + 1;
                  if (__OFADD__(v19, 1))
                  {
                    __break(1u);
LABEL_41:
                    __break(1u);
                    goto LABEL_42;
                  }

                  swift_getObjectType();
                  v21 = swift_conformsToProtocol2();
                  if (v21)
                  {
                    if (v9)
                    {
                      v22 = v21;
                      ObjectType = swift_getObjectType();
                      if ((*(v22 + 8))(ObjectType, v22) == a1 && (*(v22 + 16))(ObjectType, v22) == a2 && swift_getObjectType() == a3)
                      {
                        break;
                      }
                    }
                  }

                  ++v19;
                  if (v18 == v17)
                  {
                    v10 = v31;
                    v12 = v35;
                    goto LABEL_7;
                  }
                }

                v24 = v35;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v24 = sub_100024788(0, v35[2] + 1, 1, v35);
                }

                v27 = v24[2];
                v26 = v24[3];
                v28 = v24;
                if (v27 >= v26 >> 1)
                {
                  v28 = sub_100024788((v26 > 1), v27 + 1, 1, v24);
                }

                v28[2] = v27 + 1;
                v29 = &v28[2 * v27];
                v12 = v28;
                v29[4] = v9;
                v29[5] = v22;
                v10 = v31;
              }

              while (v18 != v17);
              goto LABEL_7;
            }
          }

          else
          {
            v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v36 = v9;
            if (v17)
            {
              goto LABEL_15;
            }
          }

          v12 = _swiftEmptyArrayStorage;
LABEL_7:

          v9 = &v40;
          sub_10007DD90(v12);
          if (v11 == v10)
          {
            v30 = v40;
            goto LABEL_46;
          }
        }
      }
    }

    v30 = _swiftEmptyArrayStorage;
LABEL_46:

    return v30;
  }

  return result;
}

uint64_t sub_1000570D4(uint64_t a1, uint64_t a2)
{
  if (sub_100053CF0(a1, a2, 0x15u))
  {
    v5 = type metadata accessor for ClientDescriptionInterface();
    v6 = sub_1000BE1D8(v2, v5, a1, a2);
    (*(a2 + 144))(v6, a1, a2);
  }

  if (sub_100053CF0(a1, a2, 0x1Fu))
  {
    v7 = type metadata accessor for B2PInterface();
    v8 = sub_100083EF0(v2, v7, a1, a2);
    (*(a2 + 120))(v8, a1, a2);
  }

  result = sub_100053C48(a1, a2);
  if (result)
  {
    v10 = type metadata accessor for CS46L06Interface();
    v11 = sub_1000A29BC(v2, v10, a1, a2);
    return (*(a2 + 96))(v11, a1, a2);
  }

  return result;
}

uint64_t sub_100057224(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001AB4(&qword_100176188, &qword_100124520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__int16 *sub_100057344@<X0>(__int16 *a1@<X0>, uint64_t *a2@<X1>, float *a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  v8 = *(v3 + 40) | (*(v3 + 42) << 16);
  v9 = *(v3 + 48);
  return sub_10005541C(a1, a2, a3);
}

uint64_t sub_100057378(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1000573C8()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100057400(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_100054114(a1, a2, v3, v4);
}

uint64_t sub_100057480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2;
  v4 = *(*(v2 + 192) + 168);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;

    v8 = 0;
    v9 = &qword_100174F60;
    v10 = &qword_100175380;
    v11 = &qword_100120E70;
    v21 = v4;
    while (1)
    {
      if (v8 >= *(v4 + 16))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return result;
      }

      sub_10001EAFC(v6, v26);
      sub_10001EAFC(v26, v23);
      sub_100001AB4(v9, &qword_100121090);
      sub_100001AB4(v10, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      if (!*(&v29 + 1))
      {
        goto LABEL_4;
      }

      v12 = v5;
      v13 = v11;
      v14 = v10;
      v15 = v9;
      result = sub_100057224(&v28, v23);
      v16 = v24;
      if (!v24)
      {
        goto LABEL_22;
      }

      v17 = v25;
      sub_10001EAB8(v23, v24);
      v18 = (*(v17 + 40))(v16, v17);
      v19 = *(*(a1 + 16) + 2);
      sub_10000CE78(v23);
      sub_10000D040(&v28, &qword_100176188, &qword_100124520);
      if (v19 == v18)
      {

        sub_10001EFE4(v26, &v28);
        v3 = a2;
        goto LABEL_14;
      }

      result = sub_10000CE78(v26);
      v9 = v15;
      v10 = v14;
      v11 = v13;
      v5 = v12;
      v4 = v21;
LABEL_5:
      ++v8;
      v6 += 40;
      if (v5 == v8)
      {

        v3 = a2;
        goto LABEL_13;
      }
    }

    v30 = 0;
    v28 = 0u;
    v29 = 0u;
LABEL_4:
    sub_10000CE78(v26);
    result = sub_10000D040(&v28, &qword_100176188, &qword_100124520);
    goto LABEL_5;
  }

LABEL_13:
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
LABEL_14:
  v26[0] = v28;
  v26[1] = v29;
  v27 = v30;
  if (*(&v29 + 1))
  {
    sub_100001AB4(&qword_100174F60, &qword_100121090);
    sub_100001AB4(&qword_100175380, &qword_100120E70);
    result = swift_dynamicCast();
    if (result)
    {
      return result;
    }
  }

  else
  {
    result = sub_10000D040(v26, &qword_100174FB0, &unk_100120FC0);
  }

  *(v3 + 32) = 0;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  return result;
}

uint64_t sub_100057754()
{
  v0 = type metadata accessor for LogID(0);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100173CB8 != -1)
  {
    v9 = v2;
    swift_once();
    v2 = v9;
  }

  v5 = sub_10000A1BC(v2, qword_1001794F0);
  sub_10000A2A4(v5, v4);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v6, qword_100179508);
  sub_100039F58(2, v4, 0xD00000000000002DLL, 0x800000010012CFB0);
  sub_10000C9D0(v4);
  sub_10000CA2C();
  swift_allocError();
  *v7 = 2;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

uint64_t sub_1000578F0()
{
  sub_10000CA2C();
  swift_allocError();
  *v0 = 1;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

void sub_1000579AC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v9 = *(*a2 + 2);
  if (!a3)
  {
    v16 = 0;
    goto LABEL_11;
  }

  v5 = v4;
  v10 = NSData.startIndex.getter();
  v11 = NSData.endIndex.getter();
  v12 = NSData.startIndex.getter();
  v13 = NSData.endIndex.getter();
  if (v10 < v12 || v13 < v10)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = NSData.startIndex.getter();
  v15 = NSData.endIndex.getter();
  if (v11 < v14 || v15 < v11)
  {
    goto LABEL_25;
  }

  v16 = v11 - v10;
  if (__OFSUB__(v11, v10))
  {
    goto LABEL_27;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
    goto LABEL_29;
  }

  if (v16 >= 0x10000)
  {
    v16 = 0xFFFFLL;
  }

LABEL_11:
  while (1)
  {
    sub_1000FC690((v9 << 32) | (v16 << 48) | 0x2A1, v7, a4);
    if (!v4)
    {
      break;
    }

    v7 = _convertErrorToNSError(_:)();
    v17 = [v7 code];

    if (v17 < 0xFFFFFFFF80000000)
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
    }

    else if (v17 <= 0x7FFFFFFF)
    {
      v18 = [a1 boxName];
      if (v18)
      {
        v19 = v18;
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;
      }

      else
      {
        v22 = 0xEE00656369766544;
        v20 = 0x206E776F6E6B6E55;
      }

      if (v17 == -536850432)
      {
        _StringGuts.grow(_:)(32);

        v34 = 0xD000000000000012;
        v35 = 0x800000010012BEE0;
        v23._countAndFlagsBits = v20;
        v23._object = v22;
        String.append(_:)(v23);

        v24._countAndFlagsBits = 0x64656C6C61745320;
        v24._object = 0xEA0000000000203ALL;
        String.append(_:)(v24);
        sub_100001AB4(&qword_100173C98, &unk_100120120);
      }

      else
      {
        _StringGuts.grow(_:)(45);

        v34 = 0x20726F727245;
        v35 = 0xE600000000000000;
        sub_100001AB4(&qword_100173C98, &unk_100120120);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_10011DE90;
        *(v25 + 56) = &type metadata for Int32;
        *(v25 + 64) = &protocol witness table for Int32;
        *(v25 + 32) = v17;
        v26._countAndFlagsBits = String.init(format:_:)();
        String.append(_:)(v26);

        v27._countAndFlagsBits = 0xD000000000000020;
        v27._object = 0x800000010012BE90;
        String.append(_:)(v27);
        v28._countAndFlagsBits = v20;
        v28._object = v22;
        String.append(_:)(v28);

        v29._countAndFlagsBits = 58;
        v29._object = 0xE100000000000000;
        String.append(_:)(v29);
      }

      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_100120CD0;
      *(v30 + 56) = &type metadata for UInt8;
      *(v30 + 64) = &protocol witness table for UInt8;
      *(v30 + 32) = -95;
      *(v30 + 96) = &type metadata for UInt8;
      *(v30 + 104) = &protocol witness table for UInt8;
      *(v30 + 72) = 2;
      *(v30 + 136) = &type metadata for UInt16;
      *(v30 + 144) = &protocol witness table for UInt16;
      *(v30 + 112) = 0;
      *(v30 + 176) = &type metadata for UInt16;
      *(v30 + 184) = &protocol witness table for UInt16;
      *(v30 + 152) = v9;
      *(v30 + 216) = &type metadata for UInt16;
      *(v30 + 224) = &protocol witness table for UInt16;
      *(v30 + 192) = v16;
      v31._countAndFlagsBits = String.init(format:_:)();
      String.append(_:)(v31);

      v32 = OBJC_IVAR____TtC9AUASDCore9USBDevice_logID;
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v33, qword_100179508);
      sub_100039F58(2, a1 + v32, v34, v35);

      swift_willThrow();
      return;
    }

    __break(1u);
LABEL_29:
    v16 = 0;
    v4 = v5;
  }
}

void sub_100057DFC(uint64_t a1, void *a2)
{
  v51 = 0;
  v6 = USBDescriptorControl.pbLayout()();
  sub_1000A0294(v6);
  if (v3)
  {
    return;
  }

  v49 = v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_10000CA2C();
    swift_allocError();
    *v32 = 7;
    *(v32 + 8) = 0;
    *(v32 + 16) = 0xE000000000000000;
    swift_willThrow();

    return;
  }

  v48 = Strong;
  v9 = *(v2 + 192);
  v11 = *(v9 + 32);
  v10 = *(v9 + 48);
  v12 = *(v9 + 80);
  v55[2] = *(v9 + 64);
  v55[3] = v12;
  v14 = *(v9 + 96);
  v13 = *(v9 + 112);
  v56 = *(v9 + 144);
  v15 = *(v9 + 128);
  v55[5] = v13;
  v55[6] = v15;
  v55[4] = v14;
  v55[0] = v11;
  v55[1] = v10;
  v16 = a2[3];
  v17 = a2[4];
  sub_10001EAB8(a2, v16);
  v18 = *(v17 + 8);
  sub_100057294(v55, &v52);
  v18(&v52, v16, v17);
  v19 = v53;
  v20 = v54;
  v21 = sub_10001EAB8(&v52, v53);
  v22 = (*(v20 + 16))(v19, v20);
  if (v22 >> 16)
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v23 = v22;
  sub_10000CE78(&v52);
  v24 = sub_1000A2D88(a1 & 0xFFFFFF);
  v50 = 0;
  v25 = [objc_allocWithZone(NSMutableData) initWithLength:12];
  if (!v25)
  {
    __break(1u);
    return;
  }

  a1 = v25;
  v26 = [v25 mutableBytes];
  *v26 = v23;
  *(v26 + 1) = v24;
  *(v26 + 4) = 1;
  v47 = *(*&v55[0] + 2);
  v21 = a1;
  v19 = NSData.startIndex.getter();
  v20 = NSData.endIndex.getter();
  v27 = NSData.startIndex.getter();
  v28 = NSData.endIndex.getter();
  if (v19 < v27 || v28 < v19)
  {
    goto LABEL_23;
  }

  v21 = a1;
  v29 = NSData.startIndex.getter();
  v30 = NSData.endIndex.getter();
  if (v20 < v29 || v30 < v20)
  {
    goto LABEL_24;
  }

  v31 = v20 - v19;
  if (__OFSUB__(v20, v19))
  {
LABEL_25:
    __break(1u);
    __break(1u);
    __break(1u);
    swift_once();
    v37 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v37, qword_100179508);
    sub_100039F58(2, v48 + v20, v21, v19);

    swift_willThrow();
    sub_1000572F0(v55);

    return;
  }

  if (v31 >= 0xFFFF)
  {
    v31 = 0xFFFFLL;
  }

  sub_1000FC690((v47 << 32) | ((v31 & ~(v31 >> 63)) << 48) | 0x221, a1, &v50);
  sub_1000572F0(v55);

  v33 = *(v9 + 112);
  v57[4] = *(v9 + 96);
  v57[5] = v33;
  v57[6] = *(v9 + 128);
  v58 = *(v9 + 144);
  v34 = *(v9 + 48);
  v57[0] = *(v9 + 32);
  v57[1] = v34;
  v35 = *(v9 + 80);
  v57[2] = *(v9 + 64);
  v57[3] = v35;
  sub_100057294(v57, &v52);
  v36 = v49;
  sub_1000579AC(v48, v57, v49, &v51);

  sub_1000572F0(v57);
  v38 = v51;
  v39 = v36;
  v40 = NSData.startIndex.getter();
  v41 = NSData.endIndex.getter();
  v42 = NSData.startIndex.getter();
  v43 = NSData.endIndex.getter();
  if (v40 < v42 || v43 < v40)
  {
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  v44 = NSData.startIndex.getter();
  v45 = NSData.endIndex.getter();

  if (v41 < v44 || v45 < v41)
  {
    goto LABEL_27;
  }

  if (__OFSUB__(v41, v40))
  {
    goto LABEL_28;
  }

  if (v38 != v41 - v40)
  {
    sub_10000CA2C();
    swift_allocError();
    *v46 = 30;
    *(v46 + 8) = 0;
    *(v46 + 16) = 0xE000000000000000;
    swift_willThrow();
  }
}

void sub_1000585B0(void *a1, uint64_t a2, __int16 a3, __int16 a4)
{
  v42 = 0;
  v10 = [objc_allocWithZone(NSMutableData) initWithLength:12];
  if (!v10)
  {
    __break(1u);
  }

  v11 = v10;
  v12 = [v10 mutableBytes];
  *v12 = a3;
  *(v12 + 1) = 0;
  *(v12 + 2) = a4;
  *(v12 + 6) = 0;
  *(v12 + 5) = 0;
  v13 = *(*a2 + 2);
  v14 = v11;
  v15 = NSData.startIndex.getter();
  v16 = NSData.endIndex.getter();
  v17 = NSData.startIndex.getter();
  v18 = NSData.endIndex.getter();
  if (v15 < v17 || v18 < v15)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v14 = v11;
  v20 = NSData.startIndex.getter();
  v21 = NSData.endIndex.getter();
  if (v16 < v20 || v21 < v16)
  {
    goto LABEL_26;
  }

  v23 = v16 - v15;
  if (__OFSUB__(v16, v15))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v23 >= 0xFFFF)
  {
    v23 = 0xFFFFLL;
  }

  v5 = v23 & ~(v23 >> 63);
  sub_1000FC690((v13 << 32) | (v5 << 48) | 0x221, v11, &v42);
  if (v4)
  {
    v14 = _convertErrorToNSError(_:)();
    v24 = [v14 code];

    if (v24 >= 0xFFFFFFFF80000000)
    {
      if (v24 <= 0x7FFFFFFF)
      {
        v25 = [a1 boxName];
        if (v25)
        {
          v26 = v25;
          v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = v28;
        }

        else
        {
          v29 = 0xEE00656369766544;
          v27 = 0x206E776F6E6B6E55;
        }

        if (v24 == -536850432)
        {
          _StringGuts.grow(_:)(32);

          v30._countAndFlagsBits = v27;
          v30._object = v29;
          String.append(_:)(v30);

          v31._countAndFlagsBits = 0x64656C6C61745320;
          v31._object = 0xEA0000000000203ALL;
          String.append(_:)(v31);
          sub_100001AB4(&qword_100173C98, &unk_100120120);
          v32 = swift_allocObject();
          *(v32 + 16) = xmmword_100120CD0;
          *(v32 + 56) = &type metadata for UInt8;
          *(v32 + 64) = &protocol witness table for UInt8;
          *(v32 + 32) = 33;
          *(v32 + 96) = &type metadata for UInt8;
          *(v32 + 104) = &protocol witness table for UInt8;
          *(v32 + 72) = 2;
          *(v32 + 136) = &type metadata for UInt16;
          *(v32 + 144) = &protocol witness table for UInt16;
          *(v32 + 112) = 0;
          *(v32 + 176) = &type metadata for UInt16;
          *(v32 + 184) = &protocol witness table for UInt16;
          *(v32 + 152) = v13;
          *(v32 + 216) = &type metadata for UInt16;
          *(v32 + 224) = &protocol witness table for UInt16;
          *(v32 + 192) = v5;
          v33._countAndFlagsBits = String.init(format:_:)();
          String.append(_:)(v33);

          v14 = 0xD000000000000012;
          v15 = 0x800000010012BEE0;
          v5 = OBJC_IVAR____TtC9AUASDCore9USBDevice_logID;
          if (qword_100173CC0 == -1)
          {
            goto LABEL_23;
          }
        }

        else
        {
          _StringGuts.grow(_:)(45);

          sub_100001AB4(&qword_100173C98, &unk_100120120);
          v34 = swift_allocObject();
          *(v34 + 16) = xmmword_10011DE90;
          *(v34 + 56) = &type metadata for Int32;
          *(v34 + 64) = &protocol witness table for Int32;
          *(v34 + 32) = v24;
          v35._countAndFlagsBits = String.init(format:_:)();
          String.append(_:)(v35);

          v36._countAndFlagsBits = 0xD000000000000020;
          v36._object = 0x800000010012BE90;
          String.append(_:)(v36);
          v37._countAndFlagsBits = v27;
          v37._object = v29;
          String.append(_:)(v37);

          v38._countAndFlagsBits = 58;
          v38._object = 0xE100000000000000;
          String.append(_:)(v38);
          v39 = swift_allocObject();
          *(v39 + 16) = xmmword_100120CD0;
          *(v39 + 56) = &type metadata for UInt8;
          *(v39 + 64) = &protocol witness table for UInt8;
          *(v39 + 32) = 33;
          *(v39 + 96) = &type metadata for UInt8;
          *(v39 + 104) = &protocol witness table for UInt8;
          *(v39 + 72) = 2;
          *(v39 + 136) = &type metadata for UInt16;
          *(v39 + 144) = &protocol witness table for UInt16;
          *(v39 + 112) = 0;
          *(v39 + 176) = &type metadata for UInt16;
          *(v39 + 184) = &protocol witness table for UInt16;
          *(v39 + 152) = v13;
          *(v39 + 216) = &type metadata for UInt16;
          *(v39 + 224) = &protocol witness table for UInt16;
          *(v39 + 192) = v5;
          v40._countAndFlagsBits = String.init(format:_:)();
          String.append(_:)(v40);

          v14 = 0x20726F727245;
          v15 = 0xE600000000000000;
          v5 = OBJC_IVAR____TtC9AUASDCore9USBDevice_logID;
          if (qword_100173CC0 == -1)
          {
LABEL_23:
            v41 = type metadata accessor for AUALog(0);
            sub_10000A1BC(v41, qword_100179508);
            sub_100039F58(2, a1 + v5, v14, v15);

            swift_willThrow();
            goto LABEL_24;
          }
        }

LABEL_30:
        swift_once();
        goto LABEL_23;
      }

LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_24:
}

void sub_100058B70(unsigned __int16 a1, void *a2, uint64_t a3)
{
  v13 = 0;
  sub_1000585B0(a2, a3, a1, 6);
  if (!v3)
  {
    v7 = [objc_allocWithZone(NSMutableData) initWithLength:10];
    sub_1000579AC(a2, a3, v7, &v13);
    if (v13 != 10)
    {
      goto LABEL_6;
    }

    if (!v7)
    {
      __break(1u);
LABEL_14:
      __break(1u);
      return;
    }

    v8 = [v7 mutableBytes];
    if (v8[3] == a1)
    {
      v9 = v8;
      v10 = [objc_allocWithZone(NSMutableData) initWithLength:*v8];
      sub_1000585B0(a2, a3, a1, 6);
      sub_1000579AC(a2, a3, v10, &v13);
      if (v13 == *v9)
      {
        if (v10)
        {

          return;
        }

        goto LABEL_14;
      }

      sub_10000CA2C();
      swift_allocError();
      *v12 = 30;
      *(v12 + 8) = 0;
      *(v12 + 16) = 0xE000000000000000;
      swift_willThrow();
    }

    else
    {
LABEL_6:
      sub_10000CA2C();
      swift_allocError();
      *v11 = 30;
      *(v11 + 8) = 0;
      *(v11 + 16) = 0xE000000000000000;
      swift_willThrow();
      v10 = v7;
    }
  }
}

void sub_100058D98(int a1, void *a2)
{
  v90 = 0;
  v6 = USBDescriptorControl.pbLayout()();
  v7 = sub_1000A0D14(v6, 1);
  if (!v3)
  {
    v84 = v7;
    v86 = v8;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      sub_10000CA2C();
      swift_allocError();
      *v34 = 7;
      *(v34 + 8) = 0;
      *(v34 + 16) = 0xE000000000000000;
      swift_willThrow();
      v35 = v86;
      goto LABEL_14;
    }

    v9 = *(v2 + 192);
    v11 = *(v9 + 32);
    v10 = *(v9 + 48);
    v12 = *(v9 + 80);
    v102[2] = *(v9 + 64);
    v102[3] = v12;
    v14 = *(v9 + 96);
    v13 = *(v9 + 112);
    v103 = *(v9 + 144);
    v15 = *(v9 + 128);
    v102[5] = v13;
    v102[6] = v15;
    v102[4] = v14;
    v102[0] = v11;
    v102[1] = v10;
    v16 = a2[3];
    v17 = a2[4];
    sub_10001EAB8(a2, v16);
    v18 = *(v17 + 8);
    sub_100057294(v102, &v94);
    v81 = v18;
    v82 = v17;
    v83 = v16;
    v18(&v94, v16, v17);
    v19 = *(&v95 + 1);
    v20 = v96;
    v21 = sub_10001EAB8(&v94, *(&v95 + 1));
    v22 = v20[2](v19, v20);
    if (v22 >> 16)
    {
      __break(1u);
    }

    else
    {
      v23 = v22;
      sub_10000CE78(&v94);
      v24 = sub_1000A2D88(a1 & 0xFFFFFF);
      v91 = 0;
      v25 = [objc_allocWithZone(NSMutableData) initWithLength:12];
      if (!v25)
      {
        __break(1u);
        goto LABEL_56;
      }

      v26 = v25;
      v27 = [v25 mutableBytes];
      *v27 = v23;
      v80 = v24;
      *(v27 + 1) = v24;
      *(v27 + 4) = 3;
      v85 = *(*&v102[0] + 2);
      v21 = v26;
      v28 = NSData.startIndex.getter();
      v20 = NSData.endIndex.getter();
      v29 = NSData.startIndex.getter();
      v30 = NSData.endIndex.getter();
      if (v28 >= v29 && v30 >= v28)
      {
        v21 = v26;
        v31 = NSData.startIndex.getter();
        v32 = NSData.endIndex.getter();
        if (v20 >= v31 && v32 >= v20)
        {
          v33 = v20 - v28;
          if (!__OFSUB__(v20, v28))
          {
            if (v33 >= 0xFFFF)
            {
              v33 = 0xFFFFLL;
            }

            sub_1000FC690((v85 << 32) | ((v33 & ~(v33 >> 63)) << 48) | 0x221, v26, &v91);
            sub_1000572F0(v102);

            v36 = *(v9 + 112);
            v106[4] = *(v9 + 96);
            v106[5] = v36;
            v106[6] = *(v9 + 128);
            v107 = *(v9 + 144);
            v37 = *(v9 + 48);
            v106[0] = *(v9 + 32);
            v106[1] = v37;
            v38 = *(v9 + 80);
            v106[2] = *(v9 + 64);
            v106[3] = v38;
            sub_100057294(v106, &v94);
            v39 = v86;
            sub_1000579AC(Strong, v106, v86, &v90);

            sub_1000572F0(v106);
            v40 = v90;
            v41 = NSData.startIndex.getter();
            v42 = NSData.endIndex.getter();
            v43 = NSData.startIndex.getter();
            v44 = NSData.endIndex.getter();
            if (v41 < v43 || v44 < v41)
            {
              __break(1u);
            }

            else
            {
              v45 = NSData.startIndex.getter();
              v46 = NSData.endIndex.getter();
              if (v42 >= v45 && v46 >= v42)
              {
                if (!__OFSUB__(v42, v41))
                {
                  if (v40 == v42 - v41)
                  {
                    if ((v84 & 0x100) == 0)
                    {
                      sub_10000CA2C();
                      swift_allocError();
                      *v47 = 32;
                      *(v47 + 8) = 0;
                      *(v47 + 16) = 0xE000000000000000;
                      swift_willThrow();

                      return;
                    }

                    v49 = v39;
                    v50 = *[v49 bytes];

                    if (v50 == 1)
                    {

                      return;
                    }

                    sub_1000A0D14(v6, v50);
                    v87 = v51;

                    v52 = *(v9 + 112);
                    v98 = *(v9 + 96);
                    v99 = v52;
                    v100 = *(v9 + 128);
                    v101 = *(v9 + 144);
                    v53 = *(v9 + 48);
                    v94 = *(v9 + 32);
                    v95 = v53;
                    v54 = *(v9 + 80);
                    v96 = *(v9 + 64);
                    v97 = v54;
                    sub_100057294(&v94, &v91);
                    v81(&v91, v83, v82);
                    v55 = v92;
                    v56 = v93;
                    v57 = sub_10001EAB8(&v91, v92);
                    v58 = (v56[2])(v55, v56);
                    if (v58 >> 16)
                    {
                      __break(1u);
                    }

                    else
                    {
                      v59 = v58;
                      sub_10000CE78(&v91);
                      v89 = 0;
                      v60 = [objc_allocWithZone(NSMutableData) initWithLength:12];
                      if (!v60)
                      {
LABEL_59:
                        __break(1u);
                        return;
                      }

                      v56 = v60;
                      v61 = [v60 mutableBytes];
                      *v61 = v59;
                      *(v61 + 1) = v80;
                      *(v61 + 4) = 3;
                      v62 = *(v94 + 2);
                      v57 = v56;
                      v63 = NSData.startIndex.getter();
                      v64 = NSData.endIndex.getter();
                      v55 = NSData.startIndex.getter();
                      v65 = NSData.endIndex.getter();
                      if (v63 >= v55 && v65 >= v63)
                      {
                        v57 = v56;
                        v55 = NSData.startIndex.getter();
                        v66 = NSData.endIndex.getter();
                        if (v64 >= v55 && v66 >= v64)
                        {
                          v67 = v64 - v63;
                          if (!__OFSUB__(v64, v63))
                          {
                            if (v67 >= 0xFFFF)
                            {
                              v67 = 0xFFFFLL;
                            }

                            sub_1000FC690((v62 << 32) | ((v67 & ~(v67 >> 63)) << 48) | 0x221, v56, &v89);
                            sub_1000572F0(&v94);

                            v68 = *(v9 + 112);
                            v104[4] = *(v9 + 96);
                            v104[5] = v68;
                            v104[6] = *(v9 + 128);
                            v105 = *(v9 + 144);
                            v69 = *(v9 + 48);
                            v104[0] = *(v9 + 32);
                            v104[1] = v69;
                            v70 = *(v9 + 80);
                            v104[2] = *(v9 + 64);
                            v104[3] = v70;
                            sub_100057294(v104, &v91);
                            v20 = v87;
                            sub_1000579AC(Strong, v104, v87, &v90);

                            sub_1000572F0(v104);
                            v72 = v90;
                            v73 = NSData.startIndex.getter();
                            v74 = NSData.endIndex.getter();
                            v75 = NSData.startIndex.getter();
                            v76 = NSData.endIndex.getter();
                            if (v73 >= v75 && v76 >= v73)
                            {
                              v77 = NSData.startIndex.getter();
                              v78 = NSData.endIndex.getter();
                              if (v74 >= v77 && v78 >= v74)
                              {
                                if (!__OFSUB__(v74, v73))
                                {
                                  v21 = Strong;
                                  if (v72 == v74 - v73)
                                  {

                                    return;
                                  }

                                  goto LABEL_47;
                                }

                                goto LABEL_58;
                              }

LABEL_57:
                              __break(1u);
LABEL_58:
                              __break(1u);
                              goto LABEL_59;
                            }

LABEL_56:
                            __break(1u);
                            goto LABEL_57;
                          }

LABEL_54:
                          __break(1u);
                          __break(1u);
                          __break(1u);
                          swift_once();
                          v71 = type metadata accessor for AUALog(0);
                          sub_10000A1BC(v71, qword_100179508);
                          sub_100039F58(2, Strong + v55, v57, 0);

                          swift_willThrow();
                          sub_1000572F0(&v94);

                          return;
                        }

LABEL_53:
                        __break(1u);
                        goto LABEL_54;
                      }
                    }

                    __break(1u);
                    goto LABEL_53;
                  }

                  sub_10000CA2C();
                  swift_allocError();
                  *v48 = 30;
                  *(v48 + 8) = 0;
                  *(v48 + 16) = 0xE000000000000000;
                  swift_willThrow();

                  v35 = Strong;
LABEL_14:

                  return;
                }

LABEL_50:
                __break(1u);
              }
            }

            __break(1u);
            goto LABEL_50;
          }

LABEL_46:
          __break(1u);
LABEL_47:
          sub_10000CA2C();
          swift_allocError();
          *v79 = 30;
          *(v79 + 8) = 0;
          *(v79 + 16) = 0xE000000000000000;
          swift_willThrow();

          return;
        }

LABEL_45:
        __break(1u);
        goto LABEL_46;
      }
    }

    __break(1u);
    goto LABEL_45;
  }
}

id sub_100059C68(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR___AUAStreamFormat_altSetting] = a2;

  [a3 minimum];
  v7 = v6;
  [a3 maximum];
  if (v7 == v8)
  {
    v16.receiver = v3;
    v16.super_class = type metadata accessor for AUAStreamFormat();
    result = objc_msgSendSuper2(&v16, "initWithAudioStreamBasicDescription:", a1);
    if (result)
    {
LABEL_5:
      v15 = result;

      return v15;
    }

    __break(1u);
  }

  [a3 minimum];
  v11 = v10;
  [a3 maximum];
  *a1 = 0;
  v12 = *(a1 + 16);
  v18[0] = *a1;
  v18[1] = v12;
  v19 = *(a1 + 32);
  v20 = v11;
  v21 = v13;
  v14 = type metadata accessor for AUAStreamFormat();
  v17.receiver = v3;
  v17.super_class = v14;
  result = objc_msgSendSuper2(&v17, "initWithAudioStreamRangedDescription:", v18);
  if (result)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_100059DAC@<X0>(void *a1@<X8>)
{
  [v1 audioStreamBasicDescription];
  v16 = v13;
  v17 = v14;
  v15 = v12;
  v3 = *&v1[OBJC_IVAR___AUAStreamFormat_altSetting];

  [v1 minimumSampleRate];
  v5 = v4;
  [v1 maximumSampleRate];
  v7 = [objc_allocWithZone(ASDSampleRateRange) initWithMinimum:v5 maximum:v6];
  v8 = type metadata accessor for AUAStreamFormat();
  v9 = objc_allocWithZone(v8);
  v10 = sub_100059C68(&v15, v3, v7);
  result = [v10 setSampleRate:v12];
  a1[3] = v8;
  *a1 = v10;
  return result;
}

BOOL sub_100059F40(uint64_t a1)
{
  sub_100022990(a1, v20);
  v3 = v21;
  if (v21)
  {
    v4 = sub_10001EAB8(v20, v21);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64);
    __chkstk_darwin(v4);
    v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8);
    v9 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v5 + 8))(v8, v3);
    sub_10000CE78(v20);
  }

  else
  {
    v9 = 0;
  }

  v10 = type metadata accessor for AUAStreamFormat();
  v19.receiver = v1;
  v19.super_class = v10;
  v11 = objc_msgSendSuper2(&v19, "isEqual:", v9);
  swift_unknownObjectRelease();
  if (v11)
  {
    sub_100022990(a1, v20);
    if (v21)
    {
      if (swift_dynamicCast())
      {
        v12 = *&v18[OBJC_IVAR___AUAStreamFormat_altSetting];
        if (v12)
        {
          v13 = *&v1[OBJC_IVAR___AUAStreamFormat_altSetting];
          if (v13)
          {
            v14 = *(*(v12 + 16) + 3);
            v15 = *(*(v13 + 16) + 3);

            return v14 == v15;
          }
        }
      }
    }

    else
    {
      sub_100022ADC(v20);
    }
  }

  return 0;
}

BOOL sub_10005A198(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AUAStreamFormat();
  if (objc_msgSendSuper2(&v5, "isCompatible:", a1))
  {
    v3 = a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3 && swift_dynamicCastClass() != 0;
}

id sub_10005A324()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AUAStreamFormat();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t Endpoint.usageType.getter()
{
  v1 = *v0;
  result = IOUSBGetEndpointUsageType(*v0);
  if (!result)
  {
    wMaxPacketSize = v1->wMaxPacketSize;
    return wMaxPacketSize <= 8 && wMaxPacketSize > 2;
  }

  return result;
}

Swift::Int sub_10005A400()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10005A448()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t tIOUSBEndpointType.string.getter(int a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x7075727265746E49;
      }

      return 0x6E776F6E6B6E55;
    }

    return 1802270018;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x6E6F7268636F7349;
      }

      return 0x6E776F6E6B6E55;
    }

    return 0x6C6F72746E6F43;
  }
}

uint64_t tIOUSBEndpointUsageType.string.getter(int a1)
{
  v1 = 0x706D4920636F7349;
  v2 = 0x6E776F6E6B6E55;
  if (a1 == 1)
  {
    v2 = 0x65654620636F7349;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x74614420636F7349;
  }
}

uint64_t tIOUSBEndpointSynchronizationType.string.getter(int a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x6E6F7268636E7953;
      }

      return 0x6E776F6E6B6E55;
    }

    return 0x6576697470616441;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x6F7268636E797341;
      }

      return 0x6E776F6E6B6E55;
    }

    return 1701736270;
  }
}

Swift::Int LockDelay.hashValue.getter(char a1, Swift::UInt a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int sub_10005A768()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_10005A7C8()
{
  v1 = *(v0 + 1);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int sub_10005A808()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t Endpoint.bRefresh.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 25) = BYTE1(result) & 1;
  return result;
}

BOOL Endpoint.synchronizationType.getter()
{
  v1 = *v0;
  v2 = IOUSBGetEndpointSynchronizationType(*v0);
  if (IOUSBGetEndpointDirection(v1) == 1 && v2 == 0)
  {
    return !IOUSBGetEndpointUsageType(v1) && v1->wMaxPacketSize - 9 < 0xFFFFFFFA;
  }

  return v2;
}

uint64_t Endpoint.lockDelay.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t Endpoint.exceptionList.setter(uint64_t a1)
{
  v3 = *(v1 + 72);

  *(v1 + 72) = a1;
  return result;
}

void Endpoint.hash(into:)(uint64_t a1)
{
  v2 = v1;
  Hasher._combine(_:)(*v2);
  v4 = *(v2 + 8);
  if (v4)
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v4);
    v5 = *(v2 + 16);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_6:
    Hasher._combine(_:)(0);
    if (*(v2 + 25))
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  Hasher._combine(_:)(0);
  v5 = *(v2 + 16);
  if (!v5)
  {
    goto LABEL_6;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v5);
  if (*(v2 + 25))
  {
LABEL_4:
    v6 = 0;
    goto LABEL_8;
  }

LABEL_7:
  v6 = *(v2 + 24);
  Hasher._combine(_:)(1u);
LABEL_8:
  Hasher._combine(_:)(v6);
  v7 = *(v2 + 40);
  Hasher._combine(_:)(*(v2 + 32) & 1);
  Hasher._combine(_:)(v7);
  if (*(v2 + 49))
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v2 + 48);
    Hasher._combine(_:)(1u);
  }

  Hasher._combine(_:)(v8);
  v9 = *(v2 + 56);
  if (v9)
  {
    Hasher._combine(_:)(1u);
    v10 = *(v9 + 16);
    Hasher._combine(_:)(v10);
    if (v10)
    {
      v11 = (v9 + 32);
      do
      {
        v12 = *(v11 + 2);
        v13 = *v11;
        v11 = (v11 + 3);
        USBDescriptorControl.hash(into:)(a1, v13 | (v12 << 16));
        --v10;
      }

      while (v10);
    }

    v14 = *(v2 + 64);
    if (v14)
    {
LABEL_16:
      Hasher._combine(_:)(1u);
      v15 = *(v14 + 16);
      Hasher._combine(_:)(v15);
      if (v15)
      {
        v16 = (v14 + 48);
        do
        {
          v17 = *(v16 - 2);
          v18 = *(v16 - 1);
          v19 = *v16;
          v16 += 3;
          Hasher._combine(_:)(v17);
          Hasher._combine(_:)(v18);
          Hasher._combine(_:)(v19);
          --v15;
        }

        while (v15);
      }

      v20 = *(v2 + 72);
      if (v20)
      {
        goto LABEL_20;
      }

LABEL_26:
      Hasher._combine(_:)(0);
      return;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v14 = *(v2 + 64);
    if (v14)
    {
      goto LABEL_16;
    }
  }

  Hasher._combine(_:)(0);
  v20 = *(v2 + 72);
  if (!v20)
  {
    goto LABEL_26;
  }

LABEL_20:
  Hasher._combine(_:)(1u);
  v21 = *(v20 + 16);
  Hasher._combine(_:)(v21);
  if (v21)
  {
    v22 = (v20 + 32);
    do
    {
      v23 = *v22++;
      Hasher._combine(_:)(v23);
      --v21;
    }

    while (v21);
  }
}

Swift::Int Endpoint.hashValue.getter()
{
  Hasher.init(_seed:)();
  Endpoint.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10005AC40()
{
  Hasher.init(_seed:)();
  Endpoint.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10005AC7C(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return _s9AUASDCore8EndpointV23__derived_struct_equalsySbAC_ACtFZ_0(v8, v9) & 1;
}

uint64_t _s9AUASDCore8EndpointV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (v4 != v5)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  if (v6)
  {
    if (v6 != v7)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v2 = *(a2 + 25);
  if (*(a1 + 25))
  {
    if (!*(a2 + 25))
    {
      return v2;
    }
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      LOBYTE(v2) = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v2 = 0;
  if (((*(a1 + 32) ^ *(a2 + 32)) & 1) == 0 && *(a1 + 40) == *(a2 + 40))
  {
    v2 = *(a2 + 49);
    if (*(a1 + 49))
    {
      if (!*(a2 + 49))
      {
        return v2;
      }
    }

    else
    {
      if (*(a1 + 48) != *(a2 + 48))
      {
        LOBYTE(v2) = 1;
      }

      if (v2)
      {
        return 0;
      }
    }

    v2 = *(a2 + 56);
    if (*(a1 + 56))
    {
      if (!v2)
      {
        return v2;
      }

      v8 = a1;
      v9 = a2;
      v10 = sub_1000E4630(*(a1 + 56), *(a2 + 56));
      a2 = v9;
      v11 = v10;
      a1 = v8;
      if (!v11)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }

    v2 = *(a2 + 64);
    if (*(a1 + 64))
    {
      if (!v2)
      {
        return v2;
      }

      v12 = a1;
      v13 = a2;
      v14 = sub_1000E46CC(*(a1 + 64), *(a2 + 64));
      a2 = v13;
      v15 = v14;
      a1 = v12;
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }

    v16 = *(a2 + 72);
    if (*(a1 + 72))
    {
      if (v16 && (sub_1000EFF58() & 1) != 0)
      {
        return 1;
      }
    }

    else if (!v16)
    {
      return 1;
    }

    return 0;
  }

  return v2;
}

uint64_t sub_10005AF80(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10005AFCC()
{
  result = qword_1001763D8;
  if (!qword_1001763D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001763D8);
  }

  return result;
}

unint64_t sub_10005B024()
{
  result = qword_1001763E0;
  if (!qword_1001763E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001763E0);
  }

  return result;
}

unint64_t sub_10005B07C()
{
  result = qword_1001763E8;
  if (!qword_1001763E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001763E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LockDelay(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for LockDelay(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10005B174(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10005B1D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t sub_10005B254(void *a1, unint64_t a2)
{
  v5 = v2;
  v8 = type metadata accessor for OSSignpostID();
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = *(v58 + 64);
  v10 = __chkstk_darwin(v8);
  v56 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v57 = &v51 - v12;
  v55 = type metadata accessor for LogID(0);
  v13 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v15 = (&v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = OBJC_IVAR___AUAStream_logID;
    v19 = OBJC_IVAR____TtC9AUASDCore16AUASampleManager_logID;
    swift_beginAccess();
    sub_10005D8A8(a1 + v18, v5 + v19);
    swift_endAccess();
    v61 = 0;
    v62 = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v20._countAndFlagsBits = 0x676E696C706D6173;
    v20._object = 0xED00002065746152;
    String.append(_:)(v20);
    [v17 samplingRate];
    Double.write<A>(to:)();
    v21._countAndFlagsBits = 0xD000000000000011;
    v21._object = 0x800000010012D370;
    String.append(_:)(v21);
    v60 = *(a2 + 96);
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    v23._object = 0x800000010012D390;
    v23._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v23);
    v60 = *(a2 + 104);
    v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v24);

    v25 = v61;
    v26 = v62;
    sub_10000A2A4(v5 + v19, v15);
    v27 = qword_100173CB0;
    v28 = v17;

    v29 = a1;
    if (v27 != -1)
    {
      swift_once();
    }

    if (byte_1001794E8 == 1)
    {
      v30 = v25;
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for AUALog(0);
      v32 = sub_10000A1BC(v31, qword_100179508);
      v33 = v28;

      sub_10003DFF4(4, "AUASampleManager_prepareSampleManager", 37, 2, v15, v30, v26, v32, v33, a2, v5, v29);
    }

    else
    {
      v52 = v28;
      v53 = v29;
      v54 = v15;
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for AUALog(0);
      v35 = sub_10000A1BC(v34, qword_100179508);
      v36 = *(v34 + 24);
      v37 = v57;
      v38 = *(v58 + 16);
      v38(v57, v54 + *(v55 + 20), v59);

      v55 = v35;
      v39 = OSSignposter.logHandle.getter();
      v40 = static os_signpost_type_t.begin.getter();

      if (OS_os_log.signpostsEnabled.getter())
      {
        v41 = v25;
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v61 = v43;
        *v42 = 136446210;
        *(v42 + 4) = sub_100035760(v41, v26, &v61);
        v44 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, v40, v44, "AUASampleManager_prepareSampleManager", "%{public}s", v42, 0xCu);
        sub_10000CE78(v43);
        v37 = v57;
      }

      v45 = v59;
      v38(v56, v37, v59);
      v46 = type metadata accessor for OSSignpostIntervalState();
      v47 = *(v46 + 48);
      v48 = *(v46 + 52);
      swift_allocObject();
      OSSignpostIntervalState.init(id:isOpen:)();
      (*(v58 + 8))(v37, v45);
      v49 = v52;
      v29 = v53;
      sub_10005B8D4(v52, a2, v5, v53);

      sub_1000461FC(v55, "AUASampleManager_prepareSampleManager", 37, 2);

      v15 = v54;
    }

    return sub_10000C9D0(v15);
  }

  else
  {
    __break(1u);

    __break(1u);

    sub_1000461FC(v55, "AUASampleManager_prepareSampleManager", 37, 2);

    __break(1u);
  }

  return result;
}