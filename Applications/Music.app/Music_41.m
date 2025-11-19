char *sub_100498FCC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_101196A90);
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

char *sub_1004990D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_101191F78);
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

char *sub_1004991C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_101192088);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1004993A8(void *result, int64_t a2, char a3, void *a4)
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
    sub_10010FC20(&qword_101192060);
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
    sub_10010FC20(&qword_101192068);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1004994DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_101191EF8);
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

char *sub_1004995F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_101191F08);
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

void *sub_1004997E4(void *result, int64_t a2, char a3, void *a4)
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
    sub_10010FC20(&unk_1011845C0);
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
    sub_10010FC20(&unk_101181570);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100499918(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011920E0);
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

char *sub_100499A24(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_101192040);
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

void *sub_100499B88(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
    sub_10010FC20(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
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
    sub_10010FC20(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_100499CD0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_101191F28);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100499DF0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_10010FC20(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

char *sub_100499F38(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_10010FC20(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  v16 = 16 * v9;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v11;
}

void *sub_10049A0B8(void *result, int64_t a2, char a3, void *a4)
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
    sub_10010FC20(&qword_101191F38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10010FC20(&qword_10118E0B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10049A200(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_101191F40);
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

char *sub_10049A30C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_101192030);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

void *sub_10049A42C(void *result, int64_t a2, char a3, void *a4)
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
    sub_10010FC20(&qword_10118F1F8);
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
    sub_10010FC20(&qword_1011815E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10049A65C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_101191F70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10049A77C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&unk_10119F020);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10049A8A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_101191F00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10049AA60(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011920B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

void *sub_10049ABA4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
    sub_10010FC20(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10010FC20(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

size_t sub_10049ACFC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  sub_10010FC20(a5);
  v14 = *(sub_10010FC20(a7) - 8);
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
  v19 = *(sub_10010FC20(a7) - 8);
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

char *sub_10049AEE4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_10010FC20(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

char *sub_10049AFF8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_101184900);
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

size_t sub_10049B154(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

  sub_10010FC20(a5);
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

char *sub_10049B330(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_101191FD0);
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

uint64_t sub_10049B454(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v8 - 8);
  v10 = &v21[-v9];
  v11 = type metadata accessor for Artist();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22[3] = a3;
  v22[4] = a4;
  v15 = sub_10001C8B8(v22);
  (*(*(a3 - 8) + 16))(v15, a1, a3);
  static ApplicationCapabilities.shared.getter(v23);
  sub_100014984(v23);
  if (BYTE8(v23[0]))
  {
    sub_100008FE4(v22, v21);
    sub_10010FC20(&unk_101184960);
    if (swift_dynamicCast())
    {
      (*(v12 + 8))(v14, v11);
      v16 = type metadata accessor for TaskPriority();
      (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
      type metadata accessor for MainActor();
      v17 = a2;
      v18 = static MainActor.shared.getter();
      v19 = swift_allocObject();
      v19[2] = v18;
      v19[3] = &protocol witness table for MainActor;
      v19[4] = v17;
      sub_1001F4F78(0, 0, v10, &unk_100EC0600, v19);
    }
  }

  return sub_10000959C(v22);
}

uint64_t sub_10049B6CC(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  v2 = Hasher._finalize()() & ~(-1 << *(a1 + 32));
  return (*(a1 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v2) & 1;
}

uint64_t sub_10049B780(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, unint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v2 + 16);
  v6 = *(v2 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(v5, v2 + v4, v6);
}

uint64_t sub_10049B82C()
{
  v2 = *(type metadata accessor for Song() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100008F30;

  return sub_100497514(v0 + v3, v0 + v4);
}

uint64_t sub_10049B92C(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v4, v2);

  v6 = v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  swift_unknownObjectWeakDestroy();
  v7 = *(v6 + 48);
  if (v7 != 255)
  {
    sub_10012B804(*(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), v7);
  }

  if (*(v6 + 64))
  {
  }

  if (*(v6 + 80))
  {
  }

  return swift_deallocObject();
}

void sub_10049BA20()
{
  v1 = *(type metadata accessor for Playlist() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1006E1028(v0 + v2, v3);
}

uint64_t sub_10049BAF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_100494CB8(a1, v4, v5, v6);
}

uint64_t sub_10049BBE4()
{
  v2 = *(v0 + 16);
  v3 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v4 = *(v0 + ((*(*(v2 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100008F30;

  return sub_100495B5C(v0 + v3, v4, v2);
}

uint64_t sub_10049BCF4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Song() - 8);
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
  v13[1] = sub_10002F3F4;

  return sub_100496A20(a1, v8, v9, v10, v1 + v6, v11, v12);
}

uint64_t sub_10049BE38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_10049BEA0(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v43 = a6;
  v44 = a7;
  v42 = a5;
  v45 = type metadata accessor for Logger();
  v10 = *(v45 - 8);
  __chkstk_darwin(v45);
  v11 = sub_10010FC20(&qword_1011902F0);
  __chkstk_darwin(v11 - 8);
  v13 = v40 - v12;
  ApplicationCapabilities.Controller.capabilities.getter(v52);
  v14 = v53;

  sub_100014984(v52);
  v15 = sub_10048BBDC(6, v14);

  if ((v15 & 1) == 0)
  {
    return 0;
  }

  ApplicationCapabilities.Controller.capabilities.getter(v54);
  sub_100014984(v54);
  if ((BYTE8(v54[0]) & 1) == 0)
  {
    return 0;
  }

  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v16 = qword_101218AC8;
  v17 = (*(*qword_101218AC8 + 528))();
  if (v17)
  {

    return 0;
  }

  v40[2] = v10;
  v41 = a1;
  v19 = (*v16 + 432);
  v20 = *v19;
  v21 = (*v19)();
  if (v21)
  {
    v22 = v21;
    v23 = [v21 isSharedListeningSession];

    if (v23)
    {
      return 0;
    }
  }

  if (a3 - 1 > 1)
  {
    result = v20();
    if (!result)
    {
      return result;
    }

    v32 = 0;
  }

  else
  {
    v24 = v41;
    sub_100008FE4(v41, &v48);
    sub_10010FC20(&unk_1011814E0);
    sub_10010FC20(&qword_101182C50);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v47 = 0;
      memset(v46, 0, sizeof(v46));
      sub_1000095E8(v46, &qword_101182C38);
      return 0;
    }

    sub_100059A8C(v46, v49);
    sub_10000954C(v24, v24[3]);
    DynamicType = swift_getDynamicType();
    if (!static SharedListening.isMusicItemTypeSupported(_:)(DynamicType))
    {
      sub_10000959C(v49);
      return 0;
    }

    v26 = v50;
    v40[1] = v51;
    v27 = sub_10000954C(v49, v50);
    v28 = sub_100009F78(0, &qword_10118AB70);
    v29 = __chkstk_darwin(v28);
    (*(v31 + 16))(v40 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v26, v29);
    v32 = MPCPlaybackIntent.init<A>(_:)();
    v33 = a4;
    v34 = a4;
    v36 = v42;
    v35 = v43;
    v37 = v44;
    sub_100344C3C(v34, v42, v43, v44);
    MPCPlaybackIntent.playActivityInformation.setter(v33, v36, v35, v37);
    sub_10000959C(v49);
  }

  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  (*(*(v38 - 8) + 56))(v13, 1, 1, v38);
  v39 = GroupActivitiesManager.itemProvider(with:metadata:)(v32, v13);
  sub_1000095E8(v13, &qword_1011902F0);

  return v39;
}

uint64_t sub_10049C5B0()
{
  v1 = *(type metadata accessor for MusicPin() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Actions.PlaybackContext() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_10010FC20(&unk_1011838D0) - 8);
  v8 = v0 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_100493D0C(v0 + v2, v0 + v5, v8);
}

uint64_t sub_10049C6E4()
{
  v1 = *(type metadata accessor for MusicPin() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Actions.PlaybackContext() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_10010FC20(&unk_1011838D0) - 8);
  v8 = v0 + ((v6 + *(v7 + 80) + 96) & ~*(v7 + 80));

  return sub_100494310(v0 + v2, v0 + v5, v0 + v6, v8);
}

uint64_t sub_10049C828()
{
  v1 = *(type metadata accessor for MusicPin() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_10010FC20(&unk_1011838D0) - 8);
  v5 = *(v0 + v3);
  v6 = v0 + ((v3 + *(v4 + 80) + 8) & ~*(v4 + 80));

  return sub_100494468(v0 + v2, v5, v6);
}

uint64_t sub_10049C910()
{
  v1 = *(type metadata accessor for MusicPin() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_10010FC20(&unk_1011838D0) - 8);
  v6 = (v4 + *(v5 + 80) + 96) & ~*(v5 + 80);
  v7 = *(v0 + v3);
  v8 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100494988(v0 + v2, v7, v0 + v4, v0 + v6, v8);
}

uint64_t sub_10049CA68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10049CAD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10049CB30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10049CB7C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10049CBF4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Playlist();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v25 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - v8;
  v24 = &v23 - v8;
  v10 = sub_10010FC20(&unk_1011814D0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v23 - v12;
  v14 = *(v5 + 16);
  v14(&v23 - v12, a1, v4, v11);
  (*(v5 + 56))(v13, 0, 1, v4);
  v15 = OBJC_IVAR____TtCO5Music14ClarityUIMusic16TracklistManager_playlist;
  swift_beginAccess();
  sub_10049DCC0(v13, v2 + v15);
  swift_endAccess();
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  v17 = v25;
  (v14)(v25, a1, v4);
  type metadata accessor for MainActor();

  v18 = static MainActor.shared.getter();
  v19 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v20 = (v6 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  *(v21 + 24) = &protocol witness table for MainActor;
  (*(v5 + 32))(v21 + v19, v17, v4);
  *(v21 + v20) = v2;
  sub_1001F4CB8(0, 0, v24, &unk_100ECF3E8, v21);
}

uint64_t sub_10049CECC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10049CF48(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_10118C2B0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  (v10)(v5, v9, v2);

  static Published.subscript.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_10049D0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = type metadata accessor for Playlist();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = sub_10010FC20(&qword_10118C2B0);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v8 = sub_10010FC20(&unk_10119F040);
  v5[12] = v8;
  v5[13] = *(v8 - 8);
  v5[14] = swift_task_alloc();
  sub_10010FC20(&unk_1011814D0);
  v5[15] = swift_task_alloc();
  v9 = sub_10010FC20(&qword_1011921D8);
  v5[16] = v9;
  v5[17] = *(v9 - 8);
  v5[18] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[19] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[20] = v11;
  v5[21] = v10;

  return _swift_task_switch(sub_10049D334, v11, v10);
}

uint64_t sub_10049D334()
{
  v1 = v0[15];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  type metadata accessor for Playlist.Entry();
  MusicLibraryRequest.init()();
  swift_getKeyPath();
  v5 = *(v3 + 16);
  v0[22] = v5;
  v0[23] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  (*(v3 + 56))(v1, 0, 1, v2);
  sub_10049DE50(&qword_101186EC0);
  MusicLibraryRequest<>.filter<A>(matching:equalTo:)();

  sub_100453028(v1);
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = sub_10049D4BC;
  v7 = v0[16];
  v8 = v0[14];

  return MusicLibraryRequest.response()(v8, v7);
}

uint64_t sub_10049D4BC()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = sub_10049D784;
  }

  else
  {
    v5 = sub_10049D5F8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10049D5F8()
{
  v1 = v0[17];
  v11 = v0[16];
  v12 = v0[18];
  v2 = v0[13];
  v3 = v0[11];
  v9 = v0[14];
  v10 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v8 = v0[8];

  MusicLibraryResponse.items.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v5 + 16))(v4, v3, v8);

  static Published.subscript.setter();
  (*(v5 + 8))(v3, v8);
  (*(v2 + 8))(v9, v10);
  (*(v1 + 8))(v12, v11);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10049D784()
{
  v27 = v0;
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[17];

  (*(v3 + 8))(v1, v2);
  if (qword_10117F1F0 != -1)
  {
    swift_once();
  }

  v4 = v0[22];
  v5 = v0[7];
  v6 = v0[5];
  v7 = v0[3];
  v8 = type metadata accessor for Logger();
  sub_1000060E4(v8, qword_101218608);
  v4(v5, v7, v6);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[25];
  v14 = v0[6];
  v13 = v0[7];
  v15 = v0[5];
  if (v11)
  {
    v16 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v16 = 136315394;
    sub_10049DE50(&qword_101184200);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v14 + 8))(v13, v15);
    v20 = sub_1000105AC(v17, v19, &v26);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v0[2] = v12;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v21 = String.init<A>(describing:)();
    v23 = sub_1000105AC(v21, v22, &v26);

    *(v16 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v9, v10, "Failed to load entries for %s with error: %s.", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_10049DA84()
{
  v1 = OBJC_IVAR____TtCO5Music14ClarityUIMusic16TracklistManager__entries;
  v2 = sub_10010FC20(&qword_1011921D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100453028(v0 + OBJC_IVAR____TtCO5Music14ClarityUIMusic16TracklistManager_playlist);

  return swift_deallocClassInstance();
}

uint64_t _s14descr101092F61V16TracklistManagerCMa()
{
  result = qword_101192138;
  if (!qword_101192138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10049DB90()
{
  sub_10049DC5C();
  if (v0 <= 0x3F)
  {
    sub_100039144();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10049DC5C()
{
  if (!qword_101192148)
  {
    sub_1001109D0(&qword_10118C2B0);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_101192148);
    }
  }
}

uint64_t sub_10049DCC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_1011814D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10049DD30(uint64_t a1)
{
  v4 = *(type metadata accessor for Playlist() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_10049D0C4(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_10049DE50(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Playlist();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10049DE94()
{
  v1 = [v0 connectedScenes];
  sub_100009F78(0, &qword_1011839F0);
  sub_100061F5C();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100061FC4(v2);
  v4 = v3;

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    return 0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = sub_1007E90D4(0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v6 = *(v4 + 32);
  }

  v7 = v6;

  v8 = [v7 delegate];

  if (v8)
  {
    type metadata accessor for MainSceneDelegate();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t sub_10049DFE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Playlist.Folder();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a1, v4);
  type metadata accessor for MainActor();

  v12 = static MainActor.shared.getter();
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = (v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = &protocol witness table for MainActor;
  (*(v5 + 32))(v15 + v13, v7, v4);
  *(v15 + v14) = a2;
  sub_1001F4CB8(0, 0, v10, &unk_100ECF480, v15);
}

uint64_t sub_10049E1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[10] = _s9PlaylistsV5ScopeVMa(0);
  v5[11] = swift_task_alloc();
  v6 = type metadata accessor for AppInterfaceContext.Activity(0);
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  v5[14] = *(v7 + 64);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[18] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10049E338, v9, v8);
}

uint64_t sub_10049E338()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 64);

  v4 = *(v1 + 20);
  v5 = type metadata accessor for Playlist.Folder();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v2 + v4, v3, v5);
  (*(v6 + 56))(v2 + v4, 0, 1, v5);
  if (qword_10117F5D8 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 136);
  v8 = *(v0 + 88);
  v10 = *(v0 + 72);
  v9 = *(v0 + 80);
  *v8 = qword_101218AB8;
  *(v8 + *(v9 + 24)) = 0;
  v11 = objc_opt_self();

  v12 = [v11 currentTraitCollection];
  v13 = [v12 horizontalSizeClass];

  v14 = objc_allocWithZone(type metadata accessor for LibraryPlaylistsViewController());
  v15 = sub_10037E11C(v8, 0, v13 != 2);
  v16 = &v7[*(sub_10010FC20(&unk_1011841E0) + 48)];
  v17 = *(sub_10010FC20(&unk_10118CE00) + 48);
  *v7 = v15;
  v18 = type metadata accessor for UITraitOverrides();
  (*(*(v18 - 8) + 56))(&v7[v17], 1, 1, v18);
  type metadata accessor for AppInterfaceContext.Activity.Destination(0);
  swift_storeEnumTagMultiPayload();
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  *v16 = sub_100137E80;
  v16[1] = v19;
  swift_storeEnumTagMultiPayload();
  if (!v10)
  {
    v26 = objc_opt_self();
    v27 = v15;
    v28 = [v26 sharedApplication];
    v29 = [v28 connectedScenes];
    sub_100009F78(0, &qword_1011839F0);
    sub_100061F5C();
    v30 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100061FC4(v30);
    v32 = v31;

    if (v32 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
LABEL_8:
        if ((v32 & 0xC000000000000001) != 0)
        {
          v34 = sub_1007E90D4(0, v32);
        }

        else
        {
          if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v34 = *(v32 + 32);
        }

        v35 = v34;

        v36 = [v35 delegate];
        if (v36 && (*(v0 + 56) = v36, sub_10010FC20(&unk_101184050), sub_10010FC20(&unk_101184EB0), (swift_dynamicCast() & 1) != 0))
        {
          v37 = *(v0 + 40);
          if (v37)
          {
            v38 = *(*sub_10000954C((v0 + 16), v37) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

            sub_10000959C(v0 + 16);
            if (!v38)
            {
              goto LABEL_20;
            }

            goto LABEL_5;
          }
        }

        else
        {
          *(v0 + 48) = 0;
          *(v0 + 16) = 0u;
          *(v0 + 32) = 0u;
        }

        sub_1000095E8(v0 + 16, &unk_101184EA0);
        goto LABEL_20;
      }
    }

    else
    {
      result = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_20;
  }

  v20 = v15;
LABEL_5:
  v21 = *(v0 + 128);
  v22 = *(v0 + 120);
  v23 = *(v0 + 104);
  sub_100115B50(*(v0 + 136), v21);
  sub_100115B50(v21, v22);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  sub_100115BB4(v22, v25 + v24);

  sub_100706900(v21, sub_100137E88, v25);

  sub_100115C8C(v21);
LABEL_20:
  sub_100115C8C(*(v0 + 136));

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_10049E884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a4;
  v21 = a2;
  v6 = type metadata accessor for Playlist();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v7 + 16))(v9, a1, v6);
  type metadata accessor for MainActor();

  v14 = static MainActor.shared.getter();
  v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v16 = (v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = &protocol witness table for MainActor;
  (*(v7 + 32))(v17 + v15, v9, v6);
  v18 = (v17 + v16);
  *v18 = v21;
  v18[1] = a3;
  *(v17 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8)) = v20;
  sub_1001F4CB8(0, 0, v12, &unk_100ECF4A0, v17);
}

uint64_t sub_10049EAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  sub_10010FC20(&unk_1011841F0);
  v7[12] = swift_task_alloc();
  v8 = type metadata accessor for AppInterfaceContext.Activity(0);
  v7[13] = v8;
  v9 = *(v8 - 8);
  v7[14] = v9;
  v7[15] = *(v9 + 64);
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[19] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10049EC10, v11, v10);
}

uint64_t sub_10049EC10()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 64);

  sub_1007041B4(v6, v5, v4, v3);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v7 = *(v0 + 88);
    sub_100115BB4(*(v0 + 96), *(v0 + 144));
    if (v7)
    {
LABEL_4:
      v9 = *(v0 + 136);
      v8 = *(v0 + 144);
      v10 = *(v0 + 128);
      v11 = *(v0 + 112);
      sub_100115B50(v8, v9);
      sub_100115B50(v9, v10);
      v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v13 = swift_allocObject();
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      sub_100115BB4(v10, v13 + v12);

      sub_100706900(v9, sub_100139B24, v13);

      sub_100115C8C(v9);
      v14 = v8;
LABEL_20:
      sub_100115C8C(v14);
      goto LABEL_21;
    }

    v15 = [objc_opt_self() sharedApplication];
    v16 = [v15 connectedScenes];
    sub_100009F78(0, &qword_1011839F0);
    sub_100061F5C();
    v17 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100061FC4(v17);
    v19 = v18;

    if (v19 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
LABEL_7:
        if ((v19 & 0xC000000000000001) != 0)
        {
          v21 = sub_1007E90D4(0, v19);
        }

        else
        {
          if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v21 = *(v19 + 32);
        }

        v22 = v21;

        v23 = [v22 delegate];
        if (v23 && (*(v0 + 56) = v23, sub_10010FC20(&unk_101184050), sub_10010FC20(&unk_101184EB0), (swift_dynamicCast() & 1) != 0))
        {
          v24 = *(v0 + 40);
          if (v24)
          {
            v25 = *(*sub_10000954C((v0 + 16), v24) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

            sub_10000959C(v0 + 16);
            if (v25)
            {
              goto LABEL_4;
            }

LABEL_19:
            v14 = *(v0 + 144);
            goto LABEL_20;
          }
        }

        else
        {
          *(v0 + 48) = 0;
          *(v0 + 16) = 0u;
          *(v0 + 32) = 0u;
        }

        sub_1000095E8(v0 + 16, &unk_101184EA0);
        goto LABEL_19;
      }
    }

    else
    {
      result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_19;
  }

  sub_1000095E8(*(v0 + 96), &unk_1011841F0);
LABEL_21:

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_10049EFAC(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  type metadata accessor for MainActor();

  v10 = a1;
  v11 = a2;
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v10;
  v13[5] = a2;
  v13[6] = a3;
  sub_1001F4CB8(0, 0, v8, &unk_100ECF490, v13);
}

uint64_t sub_10049F0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  sub_10010FC20(&unk_1011814D0);
  v6[11] = swift_task_alloc();
  v7 = type metadata accessor for Playlist();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  sub_10010FC20(&unk_1011841F0);
  v6[15] = swift_task_alloc();
  v8 = type metadata accessor for AppInterfaceContext.Activity(0);
  v6[16] = v8;
  v9 = *(v8 - 8);
  v6[17] = v9;
  v6[18] = *(v9 + 64);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[22] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10049F2D8, v11, v10);
}

uint64_t sub_10049F2D8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 64);

  v5 = v4;
  dispatch thunk of LegacyModelObjectConvertible.init(_:)();
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v9 = *(v0 + 72);
    (*(*(v0 + 104) + 32))(*(v0 + 112), *(v0 + 88), *(v0 + 96));
    if (v9)
    {
      v10 = *(v0 + 72);
      sub_100009F78(0, &qword_101192200);
      v11 = sub_100009F78(0, &qword_101183A28);
      v12 = v10;
      v13 = MPIdentifierSet.Purpose.Options.all.unsafeMutableAddressor();
      static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(v11, *v13, 0, v12);
      if (v14)
      {
        v15 = MusicItemID.init(_:)();
        v9 = v16;
      }

      else
      {

        v15 = 0;
        v9 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    v17 = *(v0 + 128);
    v18 = *(v0 + 136);
    v20 = *(v0 + 112);
    v19 = *(v0 + 120);
    v21 = *(v0 + 96);
    v22 = *(v0 + 104);
    sub_1007041B4(v20, v15, v9, v19);

    (*(v22 + 8))(v20, v21);
    if ((*(v18 + 48))(v19, 1, v17) == 1)
    {
      goto LABEL_9;
    }

    v23 = *(v0 + 80);
    sub_100115BB4(*(v0 + 120), *(v0 + 168));
    if (v23)
    {
      goto LABEL_11;
    }

    v31 = [objc_opt_self() sharedApplication];
    v32 = [v31 connectedScenes];
    sub_100009F78(0, &qword_1011839F0);
    sub_100061F5C();
    v33 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100061FC4(v33);
    v35 = v34;

    if (v35 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
LABEL_14:
        if ((v35 & 0xC000000000000001) != 0)
        {
          v37 = sub_1007E90D4(0, v35);
        }

        else
        {
          if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v37 = *(v35 + 32);
        }

        v38 = v37;

        v39 = [v38 delegate];
        if (v39 && (*(v0 + 56) = v39, sub_10010FC20(&unk_101184050), sub_10010FC20(&unk_101184EB0), (swift_dynamicCast() & 1) != 0))
        {
          v40 = *(v0 + 40);
          if (v40)
          {
            v41 = *(*sub_10000954C((v0 + 16), v40) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

            sub_10000959C(v0 + 16);
            if (v41)
            {
LABEL_11:
              v25 = *(v0 + 160);
              v24 = *(v0 + 168);
              v26 = *(v0 + 152);
              v27 = *(v0 + 136);
              sub_100115B50(v24, v25);
              sub_100115B50(v25, v26);
              v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
              v29 = swift_allocObject();
              *(v29 + 16) = 0;
              *(v29 + 24) = 0;
              sub_100115BB4(v26, v29 + v28);

              sub_100706900(v25, sub_100139B24, v29);

              sub_100115C8C(v25);
              v30 = v24;
LABEL_27:
              sub_100115C8C(v30);
              goto LABEL_28;
            }

LABEL_26:
            v30 = *(v0 + 168);
            goto LABEL_27;
          }
        }

        else
        {
          *(v0 + 48) = 0;
          *(v0 + 16) = 0u;
          *(v0 + 32) = 0u;
        }

        sub_1000095E8(v0 + 16, &unk_101184EA0);
        goto LABEL_26;
      }
    }

    else
    {
      result = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_26;
  }

  v6 = *(v0 + 128);
  v7 = *(v0 + 136);
  v8 = *(v0 + 120);
  sub_1000095E8(*(v0 + 88), &unk_1011814D0);
  (*(v7 + 56))(v8, 1, 1, v6);
LABEL_9:
  sub_1000095E8(*(v0 + 120), &unk_1011841F0);
LABEL_28:

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_10049F7E8(uint64_t a1)
{
  v4 = *(type metadata accessor for Playlist.Folder() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_10049E1F4(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_10049F908(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_10049F0F4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10049F9D0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Playlist() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100008F30;

  return sub_10049EAC0(a1, v9, v10, v1 + v6, v12, v13, v14);
}

uint64_t sub_10049FB44@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000954C(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_10049FB9C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AlbumDetailDataSource.CellType(0);
  __chkstk_darwin(v4);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1004E40DC(v2, v6, type metadata accessor for AlbumDetailDataSource.CellType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v9 = type metadata accessor for Track();
      v10 = *(v9 - 8);
      (*(v10 + 32))(a1, v6, v9);
      return (*(v10 + 56))(a1, 0, 1, v9);
    }

    v8 = v6[1];
    if (*(v8 + 16))
    {
      v9 = type metadata accessor for Track();
      v10 = *(v9 - 8);
      (*(v10 + 16))(a1, v8 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v9);

      return (*(v10 + 56))(a1, 0, 1, v9);
    }
  }

  else
  {
    v11 = *(*v6 + OBJC_IVAR____TtC5Music21ClassicalAlbumSection_workTracks);
    if (*(v11 + 16))
    {
      v12 = type metadata accessor for Track();
      v13 = *(v12 - 8);
      (*(v13 + 16))(a1, v11 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v12);

      return (*(v13 + 56))(a1, 0, 1, v12);
    }
  }

  v15 = type metadata accessor for Track();
  return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
}

uint64_t sub_10049FE90()
{
  v1 = v0;
  v2 = type metadata accessor for MusicVideo();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Song();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AlbumDetailDataSource.LoadingSource(0);
  __chkstk_darwin(v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004E40DC(v1, v12, type metadata accessor for AlbumDetailDataSource.LoadingSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    sub_1004E414C(v12, type metadata accessor for AlbumDetailDataSource.LoadingSource);
    return 0;
  }

  else if (EnumCaseMultiPayload == 2)
  {
    (*(v7 + 32))(v9, v12, v6);
    v15 = Song.id.getter();
    (*(v7 + 8))(v9, v6);
    return v15;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    return *v12;
  }

  else
  {
    (*(v3 + 32))(v5, v12, v2);
    v16 = MusicVideo.id.getter();
    (*(v3 + 8))(v5, v2);
    return v16;
  }
}

char *sub_1004A0128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v211 = a5;
  v212 = a6;
  v192 = a4;
  v194 = a3;
  v193 = a2;
  v219 = a1;
  v8 = sub_10010FC20(&qword_101182140);
  __chkstk_darwin(v8 - 8);
  v153 = &v148 - v9;
  v154 = sub_10010FC20(&qword_1011926E0);
  v152 = *(v154 - 8);
  __chkstk_darwin(v154);
  v151 = &v148 - v10;
  v150 = type metadata accessor for PlacementID();
  v149 = *(v150 - 8);
  __chkstk_darwin(v150);
  v148 = &v148 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_10010FC20(&qword_1011926E8);
  v156 = *(v157 - 8);
  __chkstk_darwin(v157);
  v155 = &v148 - v12;
  v13 = sub_10010FC20(&unk_1011A4560);
  v217 = *(v13 - 8);
  v218 = v13;
  __chkstk_darwin(v13);
  v210 = &v148 - v14;
  v15 = sub_10010FC20(&qword_101184588);
  v216 = *(v15 - 8);
  __chkstk_darwin(v15);
  v208 = &v148 - v16;
  v17 = sub_10010FC20(&unk_1011A4B80);
  v215 = *(v17 - 8);
  __chkstk_darwin(v17);
  v206 = &v148 - v18;
  v19 = sub_10010FC20(&qword_1011A4520);
  v214 = *(v19 - 8);
  __chkstk_darwin(v19);
  v204 = &v148 - v20;
  v21 = sub_10010FC20(&qword_101192438);
  v213 = *(v21 - 8);
  __chkstk_darwin(v21);
  v202 = &v148 - v22;
  v23 = sub_10010FC20(&qword_101192428);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v199 = &v148 - v25;
  v26 = sub_10010FC20(&qword_101192418);
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v196 = &v148 - v28;
  v29 = sub_10010FC20(&unk_1011926F0);
  __chkstk_darwin(v29 - 8);
  v189 = &v148 - v30;
  v185 = type metadata accessor for ContainerDetail.Source(0);
  v31 = __chkstk_darwin(v185);
  v195 = &v148 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v191 = &v148 - v34;
  v35 = __chkstk_darwin(v33);
  v190 = &v148 - v36;
  v37 = __chkstk_darwin(v35);
  v188 = &v148 - v38;
  __chkstk_darwin(v37);
  v182 = &v148 - v39;
  v187 = type metadata accessor for MusicPropertySource();
  v184 = *(v187 - 8);
  __chkstk_darwin(v187);
  v186 = &v148 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_10010FC20(&unk_1011A4630);
  v179 = *(v180 - 8);
  __chkstk_darwin(v180);
  v178 = &v148 - v41;
  v176 = sub_10010FC20(&unk_101184D60);
  v175 = *(v176 - 8);
  __chkstk_darwin(v176);
  v171 = &v148 - v42;
  v169 = sub_10010FC20(&unk_1011A4640);
  v168 = *(v169 - 8);
  __chkstk_darwin(v169);
  v166 = &v148 - v43;
  v172 = sub_10010FC20(&unk_101192700);
  v44 = __chkstk_darwin(v172);
  v170 = &v148 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v44);
  v167 = &v148 - v47;
  __chkstk_darwin(v46);
  v49 = &v148 - v48;
  v161 = &v148 - v48;
  v50 = sub_10010FC20(&qword_101188C20);
  __chkstk_darwin(v50 - 8);
  v220 = &v148 - v51;
  v197 = v27;
  v52 = *(v27 + 56);
  v198 = v26;
  v52(&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___headerRegistration], 1, 1, v26);
  v200 = v24;
  v53 = *(v24 + 56);
  v201 = v23;
  v53(&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___bannerRegistration], 1, 1, v23);
  v54 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_waveformPlayer;
  type metadata accessor for WaveformPlayer();
  swift_allocObject();
  *&v7[v54] = sub_10026FF78();
  v55 = *(v213 + 56);
  v203 = v21;
  v55(&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___trackCellRegistration], 1, 1, v21);
  v56 = *(v214 + 56);
  v205 = v19;
  v56(&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___noContentCellRegistration], 1, 1, v19);
  v57 = *(v215 + 56);
  v207 = v17;
  v57(&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___detailCellRegistration], 1, 1, v17);
  v58 = *(v216 + 56);
  v58(&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___showCompleteAlbumCellRegistration], 1, 1, v15);
  v209 = v15;
  v58(&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___storeNavigationCellRegistration], 1, 1, v15);
  sub_100009F78(0, &unk_101184750);
  type metadata accessor for RelatedContentSpacing.Data(0);
  UICollectionView.CellRegistration.init(handler:)();
  (*(v217 + 56))(&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___symphonyRelatedContentCellRegistration], 1, 1, v218);
  v59 = &v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController];
  *v59 = 0;
  v59[8] = 1;
  v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_playActivityFeatureIdentifier] = 0;
  v60 = &v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogID];
  v173 = &v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogID];
  *v60 = 0;
  v60[1] = 0;
  *&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___dragDropController] = 1;
  v183 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeOnlyDownloadedContent;
  v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeOnlyDownloadedContent] = 0;
  v61 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_prominentItemIndexPath;
  v62 = type metadata accessor for IndexPath();
  (*(*(v62 - 8) + 56))(&v7[v61], 1, 1, v62);
  v63 = &v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState];
  *v63 = 0x3FFFFFEFELL;
  v63[1] = 0;
  v63[2] = 0;
  v64 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_artwork;
  v65 = type metadata accessor for Artwork();
  (*(*(v65 - 8) + 56))(&v7[v64], 1, 1, v65);
  *&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___relatedContentProvider] = 1;
  v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage____needsToResolveLayout] = 2;
  *&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_openInClassicalBarButtonItem] = 0;
  v66 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  v164 = type metadata accessor for Album();
  v67 = *(v164 - 8);
  v163 = *(v67 + 56);
  v165 = v67 + 56;
  v163(&v7[v66], 1, 1, v164);
  v68 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_scope;
  v69 = _s6AlbumsV5ScopeOMa(0);
  v70 = *(v69 - 8);
  v71 = *(v70 + 56);
  v177 = v68;
  v160 = v69;
  v159 = v71;
  v158 = v70 + 56;
  (v71)(&v7[v68], 1, 1);
  v72 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sourceURL;
  v73 = type metadata accessor for URL();
  v74 = *(*(v73 - 8) + 56);
  v181 = v72;
  v74(&v7[v72], 1, 1, v73);
  *&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_actionableStateController] = 0;
  *&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_asyncSetupTask] = 0;
  *&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_autoupdatingResponse] = 0xF000000000000007;
  *&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_autoupdatingResponseSubscription] = 0;
  *&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sections] = &off_1010992D8;
  v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeHeaderOnNextReload] = 0;
  *&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___headerConfiguration] = 0;
  v75 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_libraryStateCache;
  *&v7[v75] = sub_10010BD90(_swiftEmptyArrayStorage);
  v76 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_playerStateCache;
  *&v7[v76] = sub_10010BDA4(_swiftEmptyArrayStorage);
  v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_didSetTracksPopularity] = 0;
  *&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentingCells] = 0;
  v77 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_tracks;
  v78 = sub_10010FC20(&unk_1011841D0);
  (*(*(v78 - 8) + 56))(&v7[v77], 1, 1, v78);
  *&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_downloadedTrackCount] = 0;
  v79 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_prominentTrackSource;
  v80 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
  v81 = *(*(v80 - 8) + 56);
  v174 = v79;
  v81(&v7[v79], 1, 1, v80);
  v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingNoContentSection] = 0;
  v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingDetailSection] = 0;
  v162 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_tracklistFooterViewModel;
  v82 = type metadata accessor for Date();
  v83 = *(*(v82 - 8) + 56);
  v83(v220, 1, 1, v82);
  v84 = sub_10010FC20(&qword_101184C70);
  v85 = *(*(v84 - 8) + 56);
  v85(v49, 1, 1, v84);
  type metadata accessor for TracklistFooter.ViewModel(0);
  v86 = swift_allocObject();
  *(v86 + 16) = 2;
  v87 = OBJC_IVAR____TtCV5Music15TracklistFooter9ViewModel_releaseDate;
  v83(v86 + OBJC_IVAR____TtCV5Music15TracklistFooter9ViewModel_releaseDate, 1, 1, v82);
  v88 = OBJC_IVAR____TtCV5Music15TracklistFooter9ViewModel__trackCount;
  v222 = 0;
  v223 = 1;
  sub_10010FC20(&qword_101184A70);
  v89 = v166;
  Published.init(initialValue:)();
  (*(v168 + 32))(v86 + v88, v89, v169);
  v90 = OBJC_IVAR____TtCV5Music15TracklistFooter9ViewModel__duration;
  v222 = 0;
  v91 = v171;
  Published.init(initialValue:)();
  (*(v175 + 32))(v86 + v90, v91, v176);
  v92 = (v86 + OBJC_IVAR____TtCV5Music15TracklistFooter9ViewModel_copyright);
  *v92 = 0;
  v92[1] = 0;
  v93 = OBJC_IVAR____TtCV5Music15TracklistFooter9ViewModel__recordLabels;
  v94 = v167;
  v85(v167, 1, 1, v84);
  v95 = v170;
  sub_1000089F8(v94, v170, &unk_101192700);
  v96 = v178;
  Published.init(initialValue:)();
  sub_1000095E8(v94, &unk_101192700);
  (*(v179 + 32))(v86 + v93, v96, v180);
  *(v86 + 16) = 2;
  swift_beginAccess();
  v97 = v86 + v87;
  v98 = v182;
  sub_1002190E0(v220, v97, &qword_101188C20);
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v222 = 0;
  v223 = 1;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v222 = 0;

  static Published.subscript.setter();
  *v92 = 0;
  v92[1] = 0;

  v99 = v161;
  sub_1000089F8(v161, v94, &unk_101192700);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v94, v95, &unk_101192700);

  static Published.subscript.setter();
  v100 = v192;
  sub_1000095E8(v94, &unk_101192700);
  sub_1000095E8(v99, &unk_101192700);
  sub_1000095E8(v220, &qword_101188C20);
  *&v7[v162] = v86;
  v101 = v184;
  v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_needsDurationUpdate] = 0;
  v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingBannerSection] = 0;
  *&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_bannerProviderObserver] = 0;
  *&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_banner] = 0;
  v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingShowCompleteAlbumSection] = 0;
  *&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_hasNetworkConnectivityDidChangeNotificationObserver] = 0;
  v163(&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogAlbum], 1, 1, v164);
  v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingStoreNavigationSection] = 0;
  v102 = &v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_lyricsSnippetData];
  *v102 = 0;
  *(v102 + 1) = 0;
  *(v102 + 2) = 0;
  v102[24] = 0;
  sub_1004E40DC(v219, &v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_loadingSource], type metadata accessor for AlbumDetailDataSource.LoadingSource);
  v103 = v173;
  v104 = v194;
  *v173 = v193;
  v103[1] = v104;

  v105 = v100;
  sub_1004E40DC(v100, v98, type metadata accessor for ContainerDetail.Source);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v107 = *(v101 + 104);
  v108 = v186;
  v109 = v187;
  if (EnumCaseMultiPayload == 1)
  {
    v107(v186, enum case for MusicPropertySource.catalog(_:), v187);
  }

  else
  {
    v107(v186, enum case for MusicPropertySource.library(_:), v187);
    sub_1000095E8(v98, &unk_1011926F0);
  }

  (*(v101 + 32))(&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source], v108, v109);
  v110 = v188;
  sub_1004E40DC(v105, v188, type metadata accessor for ContainerDetail.Source);
  v111 = swift_getEnumCaseMultiPayload();
  v113 = v211;
  v112 = v212;
  v114 = v195;
  v115 = v190;
  v116 = v189;
  if (v111 == 1)
  {
    v159(v189, 1, 1, v160);
  }

  else
  {
    sub_10003D17C(v110, v189, &unk_1011926F0);
  }

  v117 = v177;
  swift_beginAccess();
  sub_10006B010(v116, &v7[v117], &unk_1011926F0);
  swift_endAccess();
  sub_1004E40DC(v105, v115, type metadata accessor for ContainerDetail.Source);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v118 = 0;
  }

  else
  {
    v118 = *(v115 + *(sub_10010FC20(&qword_10118A430) + 48));
    sub_1000095E8(v115, &unk_1011926F0);
  }

  v7[v183] = v118;
  v119 = v174;
  swift_beginAccess();
  sub_1002190E0(v113, &v7[v119], &qword_1011846D0);
  swift_endAccess();
  v120 = v181;
  swift_beginAccess();
  sub_1002190E0(v112, &v7[v120], &qword_101183A20);
  swift_endAccess();
  v121 = v191;
  sub_1004E40DC(v105, v191, type metadata accessor for ContainerDetail.Source);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v122 = *v121;
  }

  else
  {
    sub_1000095E8(v121, &unk_1011926F0);
    v122 = 1;
  }

  v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeEquivalents] = v122;
  sub_1004E40DC(v105, v114, type metadata accessor for ContainerDetail.Source);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v123 = 0;
  }

  else
  {
    v123 = *(v114 + *(sub_10010FC20(&qword_10118A430) + 64));
    sub_1000095E8(v114, &unk_1011926F0);
  }

  v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_allowsCatalogFallback] = v123;
  v124 = type metadata accessor for AlbumDetailDataSource(0);
  v221.receiver = v7;
  v221.super_class = v124;
  v125 = objc_msgSendSuper2(&v221, "init");
  v126 = v196;
  sub_1004A282C(v196);
  (*(v197 + 8))(v126, v198);
  v127 = v199;
  sub_1004A3348(v199);
  (*(v200 + 8))(v127, v201);
  v128 = v202;
  sub_1004A3760(v202);
  (*(v213 + 8))(v128, v203);
  v129 = v204;
  sub_1004A5D90(v204);
  (*(v214 + 8))(v129, v205);
  v130 = v206;
  sub_1004A6248(v206);
  (*(v215 + 8))(v130, v207);
  v131 = v208;
  sub_1004A66A4(v208);
  (*(v216 + 8))(v131, v209);
  v132 = v210;
  sub_1004A739C(v210);
  (*(v217 + 8))(v132, v218);
  v133 = *ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange.unsafeMutableAddressor();
  v134 = *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
  v135 = swift_allocObject();
  swift_unknownObjectWeakInit();

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *&v125[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_hasNetworkConnectivityDidChangeNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v133, v134, 1, 1, sub_1004E4144, v135);

  v136 = [objc_opt_self() sharedApplication];
  v137 = sub_100729BFC();

  if (*(v137 + 16))
  {

    v138 = v148;
    static PlacementID.Banner.albumPage.getter();
    sub_10010BC60(_swiftEmptyArrayStorage);
    MusicPageProvider.bannerProvider(for:context:)();

    (*(v149 + 8))(v138, v150);
    v139 = v151;
    dispatch thunk of BannerProvider.$placement.getter();

    sub_100009F78(0, &qword_101182960);
    v140 = static OS_dispatch_queue.main.getter();
    v222 = v140;
    v141 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v142 = v153;
    (*(*(v141 - 8) + 56))(v153, 1, 1, v141);
    sub_100020674(&unk_101192710, &qword_1011926E0);
    sub_10001C070(&qword_101184920, &qword_101182960);
    v143 = v155;
    v144 = v154;
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v142, &qword_101182140);

    (*(v152 + 8))(v139, v144);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100020674(&unk_101192720, &qword_1011926E8);
    v145 = v157;
    v146 = Publisher<>.sink(receiveValue:)();

    sub_1000095E8(v212, &qword_101183A20);
    sub_1000095E8(v113, &qword_1011846D0);
    sub_1004E414C(v105, type metadata accessor for ContainerDetail.Source);
    sub_1004E414C(v219, type metadata accessor for AlbumDetailDataSource.LoadingSource);
    (*(v156 + 8))(v143, v145);
  }

  else
  {

    sub_1000095E8(v112, &qword_101183A20);
    sub_1000095E8(v113, &qword_1011846D0);
    sub_1004E414C(v105, type metadata accessor for ContainerDetail.Source);
    sub_1004E414C(v219, type metadata accessor for AlbumDetailDataSource.LoadingSource);
    v146 = 0;
  }

  *&v125[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_bannerProviderObserver] = v146;

  return v125;
}

void sub_1004A1FFC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    static ApplicationCapabilities.shared.getter(v5);
    sub_100014984(v5);
    if (BYTE1(v5[0]))
    {
      sub_1004AF430();
    }

    else
    {
      v2 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
      swift_beginAccess();
      sub_1000089F8(v1 + v2, v4, &unk_1011926C0);
      if (v4[8] == 1)
      {
        sub_1000095E8(v4, &unk_1011926C0);
      }

      else
      {
        v3 = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(v4, &unk_1011926C0);
        if (v3)
        {
          sub_10069F67C();
        }
      }

      sub_1004D7980();
    }
  }
}

uint64_t sub_1004A2108(uint64_t a1)
{
  v2 = type metadata accessor for BannerProvider.Placement();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    (*(v3 + 16))(v5, a1, v2);
    if ((*(v3 + 88))(v5, v2) == enum case for BannerProvider.Placement.banner(_:))
    {
      (*(v3 + 96))(v5, v2);
      v8 = *v5;
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v8 = 0;
    }

    v9 = *&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_banner];
    *&v7[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_banner] = v8;

    sub_1004D4BB0(v9);
  }

  return result;
}

id sub_1004A22A0()
{
  if (*&v0[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_asyncSetupTask])
  {

    sub_10010FC20(&qword_1011824A0);
    Task.cancel()();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlbumDetailDataSource(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004A282C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_101192B58);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___headerRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &qword_101192B58);
  v10 = sub_10010FC20(&qword_101192418);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &qword_101192B58);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  _s10HeaderCellCMa();
  type metadata accessor for Album();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v6, v1 + v9, &qword_101192B58);
  return swift_endAccess();
}

void sub_1004A2A94(void *a1)
{
  v2 = sub_10010FC20(&qword_101192B60);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v30 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v10 + v11, &v32, &unk_1011926C0);
    if (v33 == 1)
    {

      sub_1000095E8(&v32, &unk_1011926C0);
    }

    else
    {
      v12 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v32, &unk_1011926C0);
      if (v12)
      {
        v31 = v3;
        v13 = sub_1004CAC5C();
        swift_getKeyPath();
        v32 = v13;
        sub_1004E41B4(&unk_1011A4750, _s13ConfigurationCMa);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v14 = *(v13 + OBJC_IVAR____TtCV5Music6Header13Configuration__metrics);

        v30 = v12;
        v15 = sub_1006A6078();
        [v15 adjustedContentInset];
        v17 = v16;

        if (*(v14 + 32) == v17)
        {
          *(v14 + 32) = v17;
        }

        else
        {
          KeyPath = swift_getKeyPath();
          __chkstk_darwin(KeyPath);
          *(&v30 - 2) = v14;
          *(&v30 - 1) = v17;
          v32 = v14;
          sub_1004E41B4(&qword_101192A00, _s7MetricsCMa);
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        }

        v19 = AccessibilityIdentifier.containerDetailHeader.unsafeMutableAddressor();
        v20 = *v19;
        v21 = v19[1];
        _s10HeaderCellCMa();

        UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v20, v21);
        __chkstk_darwin(v22);
        *(&v30 - 4) = v10;
        *(&v30 - 3) = a1;
        v23 = v30;
        *(&v30 - 2) = v30;
        sub_10010FC20(&qword_101192B68);
        v24 = type metadata accessor for Header(255);
        v25 = sub_1004E41B4(&qword_101192B70, type metadata accessor for Header);
        v32 = v24;
        v33 = v25;
        swift_getOpaqueTypeConformance2();
        UIHostingConfiguration<>.init(content:)();
        static Edge.Set.all.getter();
        UIHostingConfiguration.margins(_:_:)();
        v26 = *(v31 + 8);
        v26(v6, v2);
        v34 = v2;
        v35 = sub_100020674(&qword_101192B78, &qword_101192B60);
        sub_10001C8B8(&v32);
        UIHostingConfiguration.animatedSizeInvalidationDisabled()();
        v26(v8, v2);
        UICollectionViewCell.contentConfiguration.setter();
        v27 = sub_10069F9B8();
        v28 = *(v27 + 24);
        *(v27 + 24) = a1;
        v29 = a1;
        sub_1005599F8(v28);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1004A2FDC(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Header(0);
  __chkstk_darwin(v3);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004CAC5C();
  type metadata accessor for MainActor();
  v7 = a2;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;
  v10 = v7;
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v10;
  sub_10010FC20(&unk_101192B80);
  Binding.init(get:set:)();
  v13 = v19[1];
  v14 = v19[2];
  v15 = v21;
  *v5 = v6;
  *(v5 + 1) = v13;
  *(v5 + 2) = v14;
  *(v5 + 24) = v20;
  v5[40] = v15;
  v16 = *(v3 + 24);
  *&v5[v16] = swift_getKeyPath();
  sub_10010FC20(&unk_10118F250);
  swift_storeEnumTagMultiPayload();
  v17 = &v5[*(v3 + 28)];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  sub_1004E41B4(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference);
  sub_1004E41B4(&qword_101192B70, type metadata accessor for Header);

  View.artworkCaching(owner:)();

  return sub_1004E414C(v5, type metadata accessor for Header);
}

uint64_t sub_1004A327C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  v7 = a4 + OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_metadataLocation;
  v8 = *(a4 + OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_metadataLocation);
  v9 = *(a4 + OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_metadataLocation + 8);
  v10 = *(a4 + OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_metadataLocation + 16);
  *v7 = *result;
  *(v7 + 8) = v5;
  *(v7 + 16) = v6;
  if (v6)
  {
    if (v10)
    {
      return result;
    }
  }

  else if ((v10 & 1) == 0 && v8 == v4 && v9 == v5)
  {
    return result;
  }

  v12 = *(a4 + OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_didSetMetadataLocationBlock);
  if (v12)
  {

    v12(a4);

    return sub_100020438(v12);
  }

  return result;
}

uint64_t sub_1004A3348@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_101192B50);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___bannerRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &qword_101192B50);
  v10 = sub_10010FC20(&qword_101192428);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &qword_101192B50);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for BannerCell();
  type metadata accessor for BannerProvider.Banner();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v6, v1 + v9, &qword_101192B50);
  return swift_endAccess();
}

void sub_1004A35B0(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    dispatch thunk of BannerCell.configure(with:)();
    v4 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v3 + v4, v12, &unk_1011926C0);
    if (v12[8] == 1)
    {
      sub_1000095E8(v12, &unk_1011926C0);
      v5 = 10.0;
    }

    else
    {
      v6 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v12, &unk_1011926C0);
      v5 = 10.0;
      if (v6)
      {
        v7 = sub_10069F9B8();

        v9 = v7[5];
        v8 = v7[6];
        v10 = v7[7];
        sub_1004E5DB4(v9, v8, v10);

        if ((v8 - 1) > 1)
        {

          v5 = 12.0;
        }

        else
        {
          sub_1004E5DFC(v9, v8, v10);
        }
      }
    }

    v11 = [a1 contentView];
    [v11 setLayoutMargins:{v5, 0.0, 10.0, 0.0}];

    [a1 setNeedsLayout];
  }
}

uint64_t sub_1004A3760@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_101192AC0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___trackCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &qword_101192AC0);
  v10 = sub_10010FC20(&qword_101192438);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &qword_101192AC0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  _s13TracklistCellCMa();
  type metadata accessor for AlbumDetailDataSource.CellType(0);
  UICollectionView.CellRegistration.init(handler:)();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v6, v1 + v9, &qword_101192AC0);
  return swift_endAccess();
}

void sub_1004A39C8(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v190 = a3;
  v191 = a1;
  v187 = a2;
  v3 = sub_10010FC20(&qword_101192AC8);
  v181 = *(v3 - 8);
  v182 = v3;
  __chkstk_darwin(v3);
  v180 = v160 - v4;
  v5 = sub_10010FC20(&qword_101180C90);
  v6 = __chkstk_darwin(v5 - 8);
  v167 = v160 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v166 = v160 - v8;
  v9 = type metadata accessor for MusicPropertySource();
  v178 = *(v9 - 8);
  v179 = v9;
  v10 = __chkstk_darwin(v9);
  v177 = v160 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v176 = v160 - v12;
  v186 = type metadata accessor for IndexPath();
  v189 = *(v186 - 8);
  __chkstk_darwin(v186);
  v175 = v13;
  v183 = v160 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_10010FC20(&unk_10118B970);
  __chkstk_darwin(v172);
  v173 = v160 - v14;
  v15 = sub_10010FC20(&unk_10118BCE0);
  v16 = __chkstk_darwin(v15 - 8);
  v165 = v160 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v184 = (v160 - v18);
  v19 = type metadata accessor for Track();
  v192 = *(v19 - 8);
  v20 = *(v192 + 64);
  v21 = __chkstk_darwin(v19);
  v174 = v160 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v21);
  v188 = v160 - v23;
  __chkstk_darwin(v22);
  v193 = (v160 - v24);
  v25 = sub_10010FC20(&qword_101192AD0);
  v170 = *(v25 - 8);
  v171 = v25;
  __chkstk_darwin(v25);
  v169 = v160 - v26;
  v27 = sub_10010FC20(&qword_101192AD8);
  v168 = *(v27 - 8);
  __chkstk_darwin(v27);
  v29 = v160 - v28;
  v30 = type metadata accessor for AlbumDetailDataSource.CellType(0);
  __chkstk_darwin(v30);
  v32 = (v160 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v33 - 8);
  v35 = v160 - v34;
  v36 = type metadata accessor for Album();
  v194 = *(v36 - 8);
  v195 = v36;
  v37 = __chkstk_darwin(v36);
  v185 = v160 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v40 = v160 - v39;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v163 = v19;
    v42 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    v43 = Strong;
    swift_beginAccess();
    sub_1000089F8(&v43[v42], &v197, &unk_1011926C0);
    if (BYTE8(v197) == 1)
    {

      sub_1000095E8(&v197, &unk_1011926C0);
      return;
    }

    v164 = v43;
    v44 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(&v197, &unk_1011926C0);
    if (!v44)
    {

      return;
    }

    v161 = v40;
    v162 = v44;
    v45 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
    v46 = v164;
    swift_beginAccess();
    sub_1000089F8(v46 + v45, v35, &unk_101184730);
    v48 = v194;
    v47 = v195;
    if ((*(v194 + 48))(v35, 1, v195) == 1)
    {

      sub_1000095E8(v35, &unk_101184730);
      return;
    }

    v49 = *(v48 + 32);
    v50 = v161;
    v49(v161, v35, v47);
    sub_1004E40DC(v190, v32, type metadata accessor for AlbumDetailDataSource.CellType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v61 = *v32;
      v62 = &v191[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_data];
      v63 = *&v191[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_data];
      v64 = *&v191[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_data + 8];
      *v62 = *v32;
      v62[1] = 0x4000000000000000;

      v65 = sub_1004E5C14(v63, v64);
      __chkstk_darwin(v65);
      v66 = v162;
      v160[-2] = v61;
      v160[-1] = v66;
      type metadata accessor for ClassicalAlbumSectionCell(0);
      sub_1004E41B4(&qword_101192B10, type metadata accessor for ClassicalAlbumSectionCell);
      v67 = v195;
      UIHostingConfiguration<>.init(content:)();
      static Edge.Set.all.getter();
      *(&v198 + 1) = v27;
      *&v199[0] = sub_100020674(&qword_101192B18, &qword_101192AD8);
      sub_10001C8B8(&v197);
      UIHostingConfiguration.margins(_:_:)();
      (*(v168 + 8))(v29, v27);
      UICollectionViewCell.contentConfiguration.setter();

      v59 = v67;
      v60 = v194;
      goto LABEL_39;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v52 = *v32;

      v53 = *&v191[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_data];
      v54 = *&v191[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_data + 8];
      *&v191[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_data] = xmmword_100ECF4B0;
      v55 = sub_1004E5C14(v53, v54);
      __chkstk_darwin(v55);
      v56 = v162;
      v160[-2] = v52;
      v160[-1] = v56;
      type metadata accessor for DiscSectionCell(0);
      sub_1004E41B4(&qword_101192B00, type metadata accessor for DiscSectionCell);
      v57 = v169;
      UIHostingConfiguration<>.init(content:)();
      static Edge.Set.all.getter();
      v58 = v171;
      *(&v198 + 1) = v171;
      *&v199[0] = sub_100020674(&qword_101192B08, &qword_101192AD0);
      sub_10001C8B8(&v197);
      UIHostingConfiguration.margins(_:_:)();
      (*(v170 + 8))(v57, v58);
      UICollectionViewCell.contentConfiguration.setter();

      v60 = v194;
      v59 = v195;
LABEL_39:
      (*(v60 + 8))(v50, v59);
      return;
    }

    v68 = v32 + *(sub_10010FC20(&qword_1011927A8) + 48);
    v171 = *v68;
    LODWORD(v170) = v68[8];
    v168 = *(v192 + 32);
    v169 = (v192 + 32);
    (v168)(v193, v32, v163);
    v69 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_prominentItemIndexPath;
    v70 = v164;
    swift_beginAccess();
    v71 = v189;
    v72 = v184;
    v73 = v186;
    v160[0] = *(v189 + 16);
    v160[1] = v189 + 16;
    (v160[0])(v184, v187, v186);
    (*(v71 + 56))(v72, 0, 1, v73);
    v74 = *(v172 + 48);
    v75 = v70 + v69;
    v76 = v173;
    sub_1000089F8(v75, v173, &unk_10118BCE0);
    sub_1000089F8(v72, v76 + v74, &unk_10118BCE0);
    v77 = *(v71 + 48);
    if (v77(v76, 1, v73) == 1)
    {
      sub_1000095E8(v72, &unk_10118BCE0);
      v78 = v77(v76 + v74, 1, v73);
      v79 = v194;
      if (v78 == 1)
      {
        sub_1000095E8(v76, &unk_10118BCE0);
        LODWORD(v190) = 1;
        goto LABEL_19;
      }
    }

    else
    {
      v80 = v165;
      sub_1000089F8(v76, v165, &unk_10118BCE0);
      if (v77(v76 + v74, 1, v73) != 1)
      {
        v81 = v189;
        v82 = v183;
        (*(v189 + 32))(v183, v76 + v74, v73);
        sub_1004E41B4(&qword_101192840, &type metadata accessor for IndexPath);
        LODWORD(v190) = dispatch thunk of static Equatable.== infix(_:_:)();
        v83 = v80;
        v84 = *(v81 + 8);
        v84(v82, v73);
        sub_1000095E8(v184, &unk_10118BCE0);
        v84(v83, v73);
        sub_1000095E8(v76, &unk_10118BCE0);
        v79 = v194;
LABEL_19:
        v85 = v193;
        v86 = v192 + 16;
        v87 = *(v192 + 16);
        v88 = v163;
        (v87)(v188, v193, v163);
        (*(v79 + 16))(v185, v161, v195);
        v89 = swift_allocObject();
        v90 = v164;
        swift_unknownObjectWeakInit();
        v91 = v174;
        v184 = v87;
        (v87)(v174, v85, v88);
        v92 = v183;
        v93 = v186;
        (v160[0])(v183, v187, v186);
        v187 = v86;
        v94 = (*(v86 + 64) + 24) & ~*(v86 + 64);
        v95 = v189;
        v96 = (v20 + *(v189 + 80) + v94) & ~*(v189 + 80);
        v97 = swift_allocObject();
        *(v97 + 16) = v89;
        (v168)(v97 + v94, v91, v163);
        (*(v95 + 32))(v97 + v96, v92, v93);
        type metadata accessor for TrackData();
        swift_allocObject();
        v98 = v170;
        v99 = sub_100581784(v188, v185, v190 & 1, v170 ^ 1, sub_1004EA710, v97);
        v200 = v99;
        v100 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
        swift_beginAccess();
        v101 = v178;
        v102 = &v90[v100];
        v103 = v176;
        v104 = v179;
        (*(v178 + 16))(v176, v102, v179);
        v105 = v177;
        (*(v101 + 104))(v177, enum case for MusicPropertySource.library(_:), v104);

        LOBYTE(v100) = static MusicPropertySource.== infix(_:_:)();
        v106 = *(v101 + 8);
        v106(v105, v104);
        v106(v103, v104);
        if (v100)
        {
          v107 = sub_1004D21CC(v193);
          if (v107 != 2)
          {
            v108 = v107;
            swift_getKeyPath();
            swift_getKeyPath();
            LOBYTE(v197) = v108;

            static Published.subscript.setter();
          }
        }

        if ((sub_1004D27A0(v171, v98) & 1) == 0)
        {
          v109 = type metadata accessor for AttributedString();
          v110 = v166;
          (*(*(v109 - 8) + 56))(v166, 1, 1, v109);
          swift_getKeyPath();
          swift_getKeyPath();
          sub_1000089F8(v110, v167, &qword_101180C90);

          static Published.subscript.setter();
          sub_1000095E8(v110, &qword_101180C90);
        }

        v111 = Track.id.getter();
        v113 = v112;
        v114 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_libraryStateCache;
        v115 = v164;
        swift_beginAccess();
        v116 = *&v115[v114];
        if (*(v116 + 16) && (, v117 = sub_100019C10(v111, v113), v119 = v118, , (v119 & 1) != 0))
        {
          v120 = *(*(v116 + 56) + 8 * v117);
          swift_retain_n();

          v121 = v164;
        }

        else
        {

          v122 = v162;
          v123 = [v122 traitCollection];
          sub_100137E8C();
          UITraitCollection.subscript.getter();

          v120 = MusicLibrary.state<A>(for:)();

          swift_retain_n();
          v124 = Track.id.getter();
          v126 = v125;
          v121 = v164;
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v196[0] = *&v121[v114];
          *&v121[v114] = 0x8000000000000000;
          sub_1006C5504(v120, v124, v126, isUniquelyReferenced_nonNull_native);

          *&v121[v114] = v196[0];
          swift_endAccess();
        }

        v128 = Track.id.getter();
        v130 = v129;
        v131 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_playerStateCache;
        swift_beginAccess();
        v132 = *&v121[v131];
        if (*(v132 + 16) && (, v133 = sub_100019C10(v128, v130), v135 = v134, , v136 = v190, (v135 & 1) != 0))
        {
          v137 = *(*(v132 + 56) + 8 * v133);

          v138 = v188;
          (v184)(v188, v193, v163);
          (*(*v137 + 224))(v138);

          v139 = v191;
        }

        else
        {

          v139 = v191;
          if (qword_10117F5F8 != -1)
          {
            swift_once();
          }

          v137 = Player.state<A>(for:)(v193);
          swift_retain_n();
          v140 = Track.id.getter();
          v142 = v141;
          v143 = v164;
          swift_beginAccess();
          v144 = swift_isUniquelyReferenced_nonNull_native();
          v196[0] = *&v143[v131];
          *&v143[v131] = 0x8000000000000000;
          sub_1006C6814(v137, v140, v142, v144);

          *&v143[v131] = v196[0];
          swift_endAccess();
          v136 = v190;
        }

        v145 = sub_1004E41B4(&qword_101192AE0, type metadata accessor for TrackData);
        v146 = &v139[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_data];
        v148 = *&v139[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_data];
        v147 = *&v139[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_data + 8];
        *v146 = v99;
        v146[1] = v145;
        sub_1004E5C14(v148, v147);
        v149 = v139[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_isProminent];
        v139[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_isProminent] = v136 & 1;
        if ((v136 & 1) != v149)
        {
          [v139 setNeedsUpdateConfiguration];
        }

        v150 = v162;
        v151 = sub_1006A6078();
        v197 = *&v151[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics];
        v198 = *&v151[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 16];
        v199[0] = *&v151[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 32];
        *(v199 + 9) = *&v151[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 41];

        v152 = &v139[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_metrics];
        v153 = v198;
        *v152 = v197;
        v152[1] = v153;
        v152[2] = v199[0];
        *(v152 + 41) = *(v199 + 9);
        __chkstk_darwin(v154);
        v160[-8] = &v200;
        v155 = v193;
        v160[-7] = v164;
        v160[-6] = v155;
        v160[-5] = v120;
        v160[-4] = v137;
        v160[-3] = v161;
        v160[-2] = v150;
        sub_10010FC20(&qword_101192AE8);
        sub_100020674(&qword_101192AF0, &qword_101192AE8);
        v156 = v180;
        UIHostingConfiguration<>.init(content:)();

        static Edge.Set.all.getter();
        v157 = v182;
        v196[3] = v182;
        v196[4] = sub_100020674(&qword_101192AF8, &qword_101192AC8);
        sub_10001C8B8(v196);
        UIHostingConfiguration.margins(_:_:)();
        (*(v181 + 8))(v156, v157);
        UICollectionViewCell.contentConfiguration.setter();
        v158 = [v150 traitCollection];
        v159 = [v158 userInterfaceIdiom];

        if (v159 == 6)
        {
          UICollectionViewCell.configurationUpdateHandler.setter();
        }

        v60 = v194;

        (*(v192 + 8))(v193, v163);
        v59 = v195;
        v50 = v161;
        goto LABEL_39;
      }

      sub_1000095E8(v184, &unk_10118BCE0);
      (*(v189 + 8))(v80, v73);
      v79 = v194;
    }

    sub_1000095E8(v76, &unk_10118B970);
    LODWORD(v190) = 0;
    goto LABEL_19;
  }
}

uint64_t sub_1004A5154@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1006A6078();
  v6 = *&v2[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics];
  v7 = *&v2[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 16];
  *v8 = *&v2[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 32];
  *&v8[9] = *&v2[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 41];

  type metadata accessor for ClassicalAlbumSection(0);
  sub_1004E41B4(&qword_101192B20, type metadata accessor for ClassicalAlbumSection);

  *a1 = ObservedObject.init(wrappedValue:)();
  *(a1 + 8) = v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = *v8;
  *(a1 + 57) = *&v8[9];
  v4 = *(type metadata accessor for ClassicalAlbumSectionCell(0) + 24);
  *(a1 + v4) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1004A527C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1006A6078();
  v7 = *&v4[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics];
  v8 = *&v4[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 16];
  *v9 = *&v4[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 32];
  *&v9[9] = *&v4[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 41];

  *a2 = a1;
  *(a2 + 8) = v7;
  *(a2 + 24) = v8;
  *(a2 + 40) = *v9;
  *(a2 + 49) = *&v9[9];
  v5 = *(type metadata accessor for DiscSectionCell(0) + 24);
  *(a2 + v5) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1004A5350@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v64 = a6;
  v65 = a7;
  v66 = a4;
  v67 = a5;
  v68 = a3;
  v11 = type metadata accessor for Track();
  v58 = *(v11 - 8);
  __chkstk_darwin(v11);
  v56 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_10010FC20(&qword_101192B28);
  __chkstk_darwin(v60);
  v62 = &v56 - v13;
  v14 = sub_10010FC20(&unk_1011841D0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v56 - v16;
  v18 = sub_10010FC20(&unk_1011842D0);
  __chkstk_darwin(v18 - 8);
  v20 = &v56 - v19;
  v21 = sub_10010FC20(&qword_10118A530);
  v22 = __chkstk_darwin(v21 - 8);
  v57 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v59 = &v56 - v25;
  __chkstk_darwin(v24);
  v27 = &v56 - v26;
  v28 = *a1;
  v29 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_tracks;
  swift_beginAccess();
  v63 = a2;
  sub_1000089F8(a2 + v29, v20, &unk_1011842D0);
  v30 = (*(v15 + 48))(v20, 1, v14);
  v61 = v28;
  if (v30)
  {

    sub_1000095E8(v20, &unk_1011842D0);
    v31 = v58;
    v32 = *(v58 + 56);
    v32(v27, 1, 1, v11);
  }

  else
  {
    v33 = v27;
    v34 = v58;
    (*(v15 + 16))(v17, v20, v14);

    sub_1000095E8(v20, &unk_1011842D0);
    sub_100020674(&qword_1011913B0, &unk_1011841D0);
    if (dispatch thunk of Collection.isEmpty.getter())
    {
      (*(v15 + 8))(v17, v14);
      v31 = v34;
      v32 = *(v34 + 56);
      v27 = v33;
      v32(v33, 1, 1, v11);
    }

    else
    {
      dispatch thunk of Collection.endIndex.getter();
      sub_100020674(&qword_101192B48, &unk_1011841D0);
      dispatch thunk of BidirectionalCollection.index(before:)();
      v35 = dispatch thunk of Collection.subscript.read();
      v31 = v34;
      v36 = *(v34 + 16);
      v27 = v33;
      v36(v33);
      v35(&v69, 0);
      (*(v15 + 8))(v17, v14);
      v32 = *(v31 + 56);
      v32(v33, 0, 1, v11);
    }
  }

  v37 = v62;
  v38 = v59;
  (*(v31 + 16))(v59, v68, v11);
  v32(v38, 0, 1, v11);
  v39 = *(v60 + 48);
  sub_1000089F8(v27, v37, &qword_10118A530);
  sub_1000089F8(v38, v37 + v39, &qword_10118A530);
  v40 = v31;
  v41 = *(v31 + 48);
  if (v41(v37, 1, v11) != 1)
  {
    v62 = v27;
    v43 = v57;
    sub_1000089F8(v37, v57, &qword_10118A530);
    if (v41(v37 + v39, 1, v11) != 1)
    {
      v44 = v56;
      (*(v31 + 32))(v56, v37 + v39, v11);
      sub_1004E41B4(&unk_10118A620, &type metadata accessor for Track);
      v42 = dispatch thunk of static Equatable.== infix(_:_:)();
      v45 = *(v40 + 8);
      v45(v44, v11);
      sub_1000095E8(v38, &qword_10118A530);
      sub_1000095E8(v62, &qword_10118A530);
      v45(v43, v11);
      sub_1000095E8(v37, &qword_10118A530);
      goto LABEL_13;
    }

    sub_1000095E8(v38, &qword_10118A530);
    sub_1000095E8(v62, &qword_10118A530);
    (*(v31 + 8))(v43, v11);
    goto LABEL_11;
  }

  sub_1000095E8(v38, &qword_10118A530);
  sub_1000095E8(v27, &qword_10118A530);
  if (v41(v37 + v39, 1, v11) != 1)
  {
LABEL_11:
    sub_1000095E8(v37, &qword_101192B28);
    v42 = 0;
    goto LABEL_13;
  }

  sub_1000095E8(v37, &qword_10118A530);
  v42 = 1;
LABEL_13:
  v46 = sub_1007FF568(v68, v64);
  v47 = sub_1006A6078();
  v69 = *&v47[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics];
  v70 = *&v47[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 16];
  v71[0] = *&v47[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 32];
  *(v71 + 9) = *&v47[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 41];

  type metadata accessor for TrackData();
  sub_1004E41B4(&qword_101192B30, type metadata accessor for TrackData);
  *a8 = ObservedObject.init(wrappedValue:)();
  *(a8 + 8) = v48;
  *(a8 + 16) = v42 & 1;

  sub_10010FC20(&unk_10118A5F0);
  sub_100020674(&qword_101192B40, &unk_10118A5F0);
  *(a8 + 24) = ObservedObject.init(wrappedValue:)();
  *(a8 + 32) = v49;

  sub_10010FC20(&qword_10118A600);
  sub_100020674(&qword_10118A608, &qword_10118A600);
  *(a8 + 40) = ObservedObject.init(wrappedValue:)();
  *(a8 + 48) = v50;
  *(a8 + 56) = v46;
  v51 = v70;
  *(a8 + 64) = v69;
  *(a8 + 80) = v51;
  *(a8 + 96) = v71[0];
  *(a8 + 105) = *(v71 + 9);
  v52 = sub_10010FC20(&qword_101192AE8);
  v53 = *(v52 + 80);
  *(a8 + v53) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  swift_storeEnumTagMultiPayload();
  v54 = *(v52 + 84);
  *(a8 + v54) = swift_getKeyPath();
  sub_10010FC20(&unk_101184840);
  return swift_storeEnumTagMultiPayload();
}

void sub_1004A5D24(void *a1)
{
  v1 = [a1 contentView];
  [v1 setClipsToBounds:UICellConfigurationState.isSwiped.getter() & 1];
}

uint64_t sub_1004A5D90@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&unk_1011A4AB0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___noContentCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &unk_1011A4AB0);
  v10 = sub_10010FC20(&qword_1011A4520);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &unk_1011A4AB0);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakDestroy();
  sub_100009F78(0, &unk_101184790);
  UICollectionView.CellRegistration.init(handler:)();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v6, v1 + v9, &unk_1011A4AB0);
  return swift_endAccess();
}

uint64_t sub_1004A5FEC(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = sub_10010FC20(&unk_101192AA0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-v6];
  v8 = *(a3 + 2);
  v11 = *a3;
  v12 = v8;
  type metadata accessor for NoContentCell(0);
  sub_1004E41B4(&qword_1011A4AC0, type metadata accessor for NoContentCell);
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.all.getter();
  v13[3] = v4;
  v13[4] = sub_100020674(&unk_101192AB0, &unk_101192AA0);
  sub_10001C8B8(v13);
  UIHostingConfiguration.margins(_:_:)();
  (*(v5 + 8))(v7, v4);
  return UICollectionViewCell.contentConfiguration.setter();
}

unint64_t sub_1004A61A8@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  v6 = *(type metadata accessor for NoContentCell(0) + 20);
  *(a4 + v6) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  swift_storeEnumTagMultiPayload();

  return sub_1004EA174(a1);
}

uint64_t sub_1004A6248@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_101192A70);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___detailCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &qword_101192A70);
  v10 = sub_10010FC20(&unk_1011A4B80);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &qword_101192A70);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184790);
  type metadata accessor for TracklistFooter.ViewModel(0);
  UICollectionView.CellRegistration.init(handler:)();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v6, v1 + v9, &qword_101192A70);
  return swift_endAccess();
}

void sub_1004A64C0()
{
  v0 = sub_10010FC20(&qword_101192A78);
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v10 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1004EA114();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    UIHostingConfiguration.margins(_:_:)();
    v9 = *(v1 + 8);
    v9(v4, v0);
    v10[3] = v0;
    v10[4] = sub_100020674(&qword_101192A88, &qword_101192A78);
    sub_10001C8B8(v10);
    UIHostingConfiguration.animatedSizeInvalidationDisabled()();
    v9(v6, v0);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_1004A66A4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_101192A50);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___showCompleteAlbumCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &qword_101192A50);
  v10 = sub_10010FC20(&qword_101184588);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &qword_101192A50);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184790);
  type metadata accessor for Album();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v6, v1 + v9, &qword_101192A50);
  return swift_endAccess();
}

uint64_t sub_1004A691C@<X0>(uint64_t a1@<X8>)
{
  v2 = LocalizedStringKey.init(stringLiteral:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  result = swift_unknownObjectWeakInit();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = sub_1004EA07C;
  *(a1 + 40) = v9;
  return result;
}

uint64_t sub_1004A69CC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_101192A50);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___storeNavigationCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &qword_101192A50);
  v10 = sub_10010FC20(&qword_101184588);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &qword_101192A50);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184790);
  type metadata accessor for Album();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v9, &qword_101192A50);
  return swift_endAccess();
}

void sub_1004A6C44()
{
  v0 = sub_10010FC20(&qword_101192A58);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = __chkstk_darwin(Strong);
    v7[-2] = v5;
    v6 = v5;
    sub_1004E9FE8();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v7[3] = v0;
    v7[4] = sub_100020674(&qword_101192A68, &qword_101192A58);
    sub_10001C8B8(v7);
    UIHostingConfiguration.margins(_:_:)();
    (*(v1 + 8))(v3, v0);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_1004A6E00@<X0>(uint64_t a1@<X8>)
{
  v2 = LocalizedStringKey.init(stringLiteral:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  result = swift_unknownObjectWeakInit();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = sub_1004EA03C;
  *(a1 + 40) = v9;
  return result;
}

uint64_t sub_1004A6EB0()
{
  v0 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v0 - 8);
  v2 = &v18[-v1];
  v3 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v3 - 8);
  v5 = &v18[-v4];
  v6 = type metadata accessor for Album();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
    swift_beginAccess();
    sub_1000089F8(v11 + v12, v5, &unk_101184730);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {

      v13 = &unk_101184730;
      v14 = v5;
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      v15 = [objc_opt_self() defaultWorkspace];
      if (v15)
      {
        v16 = v15;
        LSApplicationWorkspace.openiTunesStore(with:)(v2);

        sub_1000095E8(v2, &qword_101183A20);
        return (*(v7 + 8))(v9, v6);
      }

      (*(v7 + 8))(v9, v6);
      v17 = type metadata accessor for URL();
      (*(*(v17 - 8) + 56))(v2, 1, 1, v17);
      v13 = &qword_101183A20;
      v14 = v2;
    }

    return sub_1000095E8(v14, v13);
  }

  return result;
}

uint64_t sub_1004A71A4()
{
  v0 = sub_10010FC20(&qword_101192738);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6[-1] - v2;
  sub_1004E425C();
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.all.getter();
  v6[3] = v0;
  v6[4] = sub_100020674(&qword_101192748, &qword_101192738);
  sub_10001C8B8(v6);
  UIHostingConfiguration.margins(_:_:)();
  (*(v1 + 8))(v3, v0);
  return UICollectionViewCell.contentConfiguration.setter();
}

uint64_t sub_1004A7320@<X0>(void (*a1)(void)@<X1>, unint64_t *a2@<X2>, void (*a3)(uint64_t)@<X3>, uint64_t *a4@<X8>)
{
  a1(0);
  sub_1004E41B4(a2, a3);

  result = ObservedObject.init(wrappedValue:)();
  *a4 = result;
  a4[1] = v8;
  return result;
}

uint64_t sub_1004A739C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_101192A20);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___symphonyRelatedContentCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &qword_101192A20);
  v10 = sub_10010FC20(&unk_1011A4560);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &qword_101192A20);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750);
  type metadata accessor for RelatedContentProvider.Item();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v6, v1 + v9, &qword_101192A20);
  return swift_endAccess();
}

void sub_1004A7614(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_10010FC20(&qword_101192A28);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v10 + v11, &v24, &unk_1011926C0);
    if (v25 == 1)
    {

      sub_1000095E8(&v24, &unk_1011926C0);
      return;
    }

    v12 = swift_unknownObjectWeakLoadStrong();

    sub_1000095E8(&v24, &unk_1011926C0);
    if (v12)
    {
      v13 = v12;
      v14 = sub_10003169C();

      if (v14)
      {
        v15 = *(v14[3] + 16);
        if (v15)
        {
          v16 = [v15 selectedTab];
          if (!v16 || (v17 = v16, v18 = sub_10003F0FC(), v23 = v14, v17, v18 == 7))
          {
            v18 = 1;
          }

          v19 = sub_1006BD694(v18);
          if (!v19)
          {

            return;
          }

          v20 = __chkstk_darwin(v19);
          *(&v23 - 4) = v8;
          *(&v23 - 3) = v20;
          *(&v23 - 2) = v13;
          v23 = v20;
          sub_10010FC20(&qword_101192A30);
          v21 = type metadata accessor for RelatedContentView();
          v22 = sub_1004E41B4(&qword_101192A38, &type metadata accessor for RelatedContentView);
          v24 = v21;
          v25 = v22;
          swift_getOpaqueTypeConformance2();
          UIHostingConfiguration<>.init(content:)();
          static Edge.Set.all.getter();
          v26 = v4;
          v27 = sub_100020674(&unk_101192A40, &qword_101192A28);
          sub_10001C8B8(&v24);
          UIHostingConfiguration.margins(_:_:)();
          (*(v5 + 8))(v7, v4);
          UICollectionViewCell.contentConfiguration.setter();
        }
      }
    }
  }
}

uint64_t sub_1004A79A8()
{
  v0 = type metadata accessor for RelatedContentView();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);

  v4 = sub_1006A6078();
  v5 = type metadata accessor for HIMetricsCollectionView();
  v15.receiver = v4;
  v15.super_class = v5;
  objc_msgSendSuper2(&v15, "frame");
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v16.origin.x = v7;
  v16.origin.y = v9;
  v16.size.width = v11;
  v16.size.height = v13;
  CGRectGetWidth(v16);
  RelatedContentView.init(item:stackAuthority:shelfWidth:)();
  sub_1004E41B4(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference);
  sub_1004E41B4(&qword_101192A38, &type metadata accessor for RelatedContentView);

  View.artworkCaching(owner:)();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1004A7C10(uint64_t a1, uint64_t a2)
{
  v103 = a1;
  v104 = a2;
  v83 = sub_10010FC20(&unk_1011A4560);
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v99 = &v78 - v3;
  v81 = sub_10010FC20(&unk_101192A10);
  v86 = *(v81 - 8);
  __chkstk_darwin(v81);
  v85 = &v78 - v4;
  v5 = sub_10010FC20(&qword_101184588);
  v101 = *(v5 - 8);
  v102 = v5;
  __chkstk_darwin(v5);
  v100 = &v78 - v6;
  v7 = sub_10010FC20(&unk_1011A4B80);
  v96 = *(v7 - 8);
  v97 = v7;
  __chkstk_darwin(v7);
  v95 = &v78 - v8;
  v9 = sub_10010FC20(&qword_1011A4520);
  v93 = *(v9 - 8);
  v94 = v9;
  __chkstk_darwin(v9);
  v92 = &v78 - v10;
  v11 = sub_10010FC20(&unk_10118D250);
  __chkstk_darwin(v11 - 8);
  v84 = &v78 - v12;
  v80 = type metadata accessor for Track();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v78 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_10010FC20(&qword_101192438);
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = &v78 - v14;
  v15 = sub_10010FC20(&unk_101192800);
  __chkstk_darwin(v15 - 8);
  v90 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v98 = &v78 - v18;
  v19 = sub_10010FC20(&qword_101192428);
  v91 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v78 - v20;
  v22 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v22 - 8);
  v24 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v78 - v26;
  v28 = sub_10010FC20(&qword_101192418);
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v78 - v30;
  v32 = *(v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sections);
  v33 = IndexPath.section.getter();
  if ((v33 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_54;
  }

  if (v33 >= *(v32 + 16))
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v34 = *(v32 + v33 + 32);
  if (v34 > 4)
  {
    if (*(v32 + v33 + 32) <= 7u)
    {
      if (v34 == 6)
      {
        v38 = v95;
        sub_1004A6248(v95);
        *&v107 = *(v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_tracklistFooterViewModel);
        sub_100009F78(0, &unk_101184790);
        type metadata accessor for TracklistFooter.ViewModel(0);

        v39 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

        (*(v96 + 8))(v38, v97);
        return v39;
      }

      if (v34 != 7)
      {
        goto LABEL_58;
      }

      v47 = v100;
      sub_1004A66A4(v100);
LABEL_21:
      v51 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
      swift_beginAccess();
      sub_1000089F8(v2 + v51, v27, &unk_101184730);
      sub_100009F78(0, &unk_101184790);
      type metadata accessor for Album();
      v39 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
      sub_1000095E8(v27, &unk_101184730);
      v53 = v101;
      v52 = v102;
LABEL_24:
      (*(v53 + 8))(v47, v52);
      return v39;
    }

    if (v34 == 8)
    {
      v47 = v100;
      sub_1004A69CC(v100);
      goto LABEL_21;
    }

    if (v34 != 10)
    {
      goto LABEL_58;
    }

    v57 = v104;
    v58 = IndexPath.item.getter();
    v59 = v99;
    if (v58)
    {
      sub_1004A739C(v99);
      v60 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
      swift_beginAccess();
      sub_1000089F8(v2 + v60, &v105, &unk_1011926C0);
      if (v106)
      {
        sub_1000095E8(&v105, &unk_1011926C0);
      }

      else
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(&v105, &unk_1011926C0);
        if (Strong)
        {
          v71 = sub_1006A3A7C();

          if (v71)
          {
            if (__OFSUB__(IndexPath.item.getter(), 1))
            {
LABEL_57:
              __break(1u);
              goto LABEL_58;
            }

            v72 = type metadata accessor for RelatedContentProvider.Item();
            Array.subscript.getter(v72, &v105);

            v71 = v105;
          }

LABEL_44:
          v39 = sub_1007FBE6C(v59, v57, v71);

          (*(v82 + 8))(v59, v83);
          return v39;
        }
      }

      v71 = 0;
      goto LABEL_44;
    }

    v19 = v81;
    (*(v86 + 16))(v85, v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_symphonyRelatedContentSpacingCellRegistration, v81);
    v69 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v2 + v69, &v105, &unk_1011926C0);
    if (v106)
    {
      sub_1000095E8(&v105, &unk_1011926C0);
    }

    else
    {
      v74 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v105, &unk_1011926C0);
      if (v74)
      {
        v75 = sub_1006A3864();

LABEL_50:
        v76 = v85;
        v39 = sub_1007FBACC(v85, v57, v75);

        v49 = *(v86 + 8);
        v50 = v76;
        goto LABEL_51;
      }
    }

    v75 = 0;
    goto LABEL_50;
  }

  if (*(v32 + v33 + 32) <= 1u)
  {
    if (!*(v32 + v33 + 32))
    {
      sub_1004A282C(v31);
      v35 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
      swift_beginAccess();
      sub_1000089F8(v2 + v35, v27, &unk_101184730);
      v104 = sub_1007FAE70(v31, v104, v27);
      sub_1000095E8(v27, &unk_101184730);
      (*(v29 + 8))(v31, v28);
      sub_1000089F8(v2 + v35, v24, &unk_101184730);
      v36 = type metadata accessor for Album();
      v37 = *(v36 - 8);
      if ((*(v37 + 48))(v24, 1, v36) == 1)
      {
        sub_1000095E8(v24, &unk_101184730);
        v107 = 0u;
        v108 = 0u;
        v109 = 0;
      }

      else
      {
        *(&v108 + 1) = v36;
        v109 = &protocol witness table for Album;
        v61 = sub_10001C8B8(&v107);
        (*(v37 + 32))(v61, v24, v36);
      }

      v62 = v104;
      v39 = sub_1004F24B0(&v107);

      goto LABEL_31;
    }

    sub_1004A3348(v21);
    v48 = *(v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_banner);

    v39 = sub_1007FAEAC(v21, v104, v48);

    v49 = *(v91 + 8);
    v50 = v21;
LABEL_51:
    v49(v50, v19);
    return v39;
  }

  if (v34 == 2)
  {
    v40 = *(v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentingCells);
    v41 = v104;
    if (!v40)
    {
      v45 = type metadata accessor for AlbumDetailDataSource.CellType(0);
      v43 = v98;
      (*(*(v45 - 8) + 56))(v98, 1, 1, v45);
LABEL_33:
      v63 = v90;
      v64 = v87;
      sub_1004A3760(v87);
      v39 = sub_1007FB20C(v64, v41, v43);
      (*(v88 + 8))(v64, v89);
      sub_1000089F8(v43, v63, &unk_101192800);
      type metadata accessor for AlbumDetailDataSource.CellType(0);
      if ((*(*(v45 - 8) + 48))(v63, 1, v45) == 1)
      {
        sub_1000095E8(v63, &unk_101192800);
      }

      else
      {
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v65 = v79;
          v66 = v78;
          v67 = v80;
          (*(v79 + 32))(v78, v63, v80);
          *(&v108 + 1) = v67;
          v109 = &protocol witness table for Track;
          v68 = sub_10001C8B8(&v107);
          (*(v65 + 16))(v68, v66, v67);

          (*(v65 + 8))(v66, v67);
          sub_1000095E8(v43, &unk_101192800);
LABEL_31:
          sub_1000095E8(&v107, &qword_1011A3DD0);
          return v39;
        }

        sub_1004E414C(v63, type metadata accessor for AlbumDetailDataSource.CellType);
      }

      v73 = type metadata accessor for EntityIdentifier();
      (*(*(v73 - 8) + 56))(v84, 1, 1, v73);
      UIView.appEntityIdentifier.setter();
      sub_1000095E8(v43, &unk_101192800);
      return v39;
    }

    v42 = IndexPath.item.getter();
    v43 = v98;
    if ((v42 & 0x8000000000000000) == 0)
    {
      v44 = v42;
      if (v42 < *(v40 + 16))
      {
        v45 = type metadata accessor for AlbumDetailDataSource.CellType(0);
        v46 = *(v45 - 8);
        sub_1004E40DC(v40 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v44, v43, type metadata accessor for AlbumDetailDataSource.CellType);

        (*(v46 + 56))(v43, 0, 1, v45);
        goto LABEL_33;
      }

      goto LABEL_56;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v34 == 4)
  {
    v47 = v92;
    sub_1004A5D90(v92);
    v54 = sub_1004D2E64();
    v39 = sub_1007FB728(v47, v104, v54, v55, v56);
    sub_1004E5B40(v54);
    v53 = v93;
    v52 = v94;
    goto LABEL_24;
  }

LABEL_58:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1004A8D4C(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a1;
  LOBYTE(a1) = sub_1004E65AC();

  (*(v6 + 8))(v8, v5);
  return a1 & 1;
}

uint64_t sub_1004A8E4C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v95 = *(v4 - 8);
  v96 = v4;
  __chkstk_darwin(v4);
  v93 = v5;
  v94 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v6 - 8);
  v92 = &v84 - v7;
  v8 = sub_10010FC20(&unk_1011838F0);
  __chkstk_darwin(v8 - 8);
  v88 = &v84 - v9;
  v10 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v10 - 8);
  v87 = &v84 - v11;
  v12 = type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin(v12 - 8);
  v89 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10010FC20(&qword_10118A530);
  __chkstk_darwin(v14 - 8);
  v90 = &v84 - v15;
  v16 = type metadata accessor for Track();
  v97 = *(v16 - 8);
  v98 = v16;
  __chkstk_darwin(v16);
  v91 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10010FC20(&qword_1011846D0);
  __chkstk_darwin(v18 - 8);
  v20 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v84 - v22;
  v24 = sub_10010FC20(&unk_101192800);
  __chkstk_darwin(v24 - 8);
  v26 = &v84 - v25;
  v27 = type metadata accessor for AlbumDetailDataSource.CellType(0);
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v99 = &v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v31 = a1;
  v32 = v100;
  [v31 deselectItemAtIndexPath:isa animated:1];

  IndexPath.section.getter();
  result = Array.subscript.getter(&type metadata for ContainerDetail.Section, &v103);
  if (((1 << v103) & 0xDC3) == 0)
  {
    if (v103 == 2)
    {
      sub_1004DEB38(v26);
      if ((*(v28 + 48))(v26, 1, v27) == 1)
      {
        return sub_1000095E8(v26, &unk_101192800);
      }

      else
      {
        sub_1004E59E0(v26, v99, type metadata accessor for AlbumDetailDataSource.CellType);
        v34 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
        (*(*(v34 - 8) + 56))(v23, 1, 1, v34);
        v35 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_prominentTrackSource;
        swift_beginAccess();
        sub_1000089F8(v32 + v35, v20, &qword_1011846D0);
        swift_beginAccess();
        sub_1002190E0(v23, v32 + v35, &qword_1011846D0);
        swift_endAccess();
        sub_1004CDAA4(v20);
        sub_1000095E8(v20, &qword_1011846D0);
        sub_1000095E8(v23, &qword_1011846D0);
        v36 = v90;
        sub_10049FB9C(v90);
        v37 = v97;
        v38 = v98;
        v39 = (*(v97 + 48))(v36, 1, v98);
        v86 = a2;
        if (v39 == 1)
        {
          sub_1000095E8(v36, &qword_10118A530);
        }

        else
        {
          (*(v37 + 32))(v91, v36, v38);
          sub_10010FC20(&unk_1011972C0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_100EBE260;
          *(inited + 32) = 25705;
          *(inited + 40) = 0xE200000000000000;
          *(inited + 48) = MusicItem.metricsTargetIdentifier.getter(v38);
          *(inited + 56) = v41;
          *(inited + 72) = &type metadata for String;
          *(inited + 80) = 1684957547;
          *(inited + 88) = 0xE400000000000000;
          *(inited + 96) = MusicItem.metricsContentType.getter(v38);
          *(inited + 104) = v42;
          *(inited + 120) = &type metadata for String;
          *(inited + 128) = 1701667182;
          *(inited + 136) = 0xE400000000000000;
          v43 = Track.title.getter();
          *(inited + 168) = &type metadata for String;
          *(inited + 144) = v43;
          *(inited + 152) = v44;
          v45 = sub_10010BC60(inited);
          swift_setDeallocating();
          sub_10010FC20(&unk_1011927D0);
          swift_arrayDestroy();
          v46 = Track.trackNumber.getter();
          if ((v47 & 1) == 0)
          {
            v104 = &type metadata for Int;
            *&v103 = v46;
            sub_100016270(&v103, v102);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v101 = v45;
            sub_1006C5E68(v102, 0xD000000000000010, 0x8000000100E4E2D0, isUniquelyReferenced_nonNull_native);
            v45 = v101;
          }

          v49 = *MetricsReportingController.shared.unsafeMutableAddressor();
          v50 = v98;
          v90 = MusicItem.metricsTargetIdentifier.getter(v98);
          v85 = v51;
          v52 = type metadata accessor for URL();
          v53 = v87;
          (*(*(v52 - 8) + 56))(v87, 1, 1, v52);
          sub_10010FC20(&unk_1011927C0);
          v54 = swift_allocObject();
          v84 = xmmword_100EBC6B0;
          *(v54 + 16) = xmmword_100EBC6B0;
          *(v54 + 32) = v45;
          sub_10010FC20(&qword_10118BE78);
          v55 = swift_initStackObject();
          *(v55 + 16) = v84;
          *(v55 + 32) = MusicItem.metricsContentType.getter(v50);
          *(v55 + 40) = v56;
          *(v55 + 48) = 0;
          v57 = MetricsEvent.Click.ActionDetails.init(_:)(v55);
          v59 = v58;
          v61 = v60;
          v63 = v62;
          v64 = v88;
          sub_1004DF8FC(v88);
          *(&v83 + 1) = v59;
          *&v83 = v57;
          v65 = v89;
          MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:page:snapshotImpressions:)(v90, v85, 1, 31, v53, v54, 0, 5, v89, v83, v61, v63, v64, 0);
          v66 = sub_10053771C();
          v68 = v67;
          v69 = v65;
          if (qword_10117F600 != -1)
          {
            swift_once();
          }

          v70 = qword_101218AD0;
          v71 = GroupActivitiesManager.hasJoined.getter();
          v72 = GroupActivitiesManager.participantsCount.getter();
          v73 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
          swift_beginAccess();
          (*((swift_isaMask & *v49) + 0xB8))(v69, v66, v68, v71 & 1, v72, *(v70 + v73));

          sub_1004E414C(v69, type metadata accessor for MetricsEvent.Click);
          (*(v97 + 8))(v91, v98);
          v32 = v100;
        }

        v74 = type metadata accessor for TaskPriority();
        v75 = v92;
        (*(*(v74 - 8) + 56))(v92, 1, 1, v74);
        v77 = v94;
        v76 = v95;
        v78 = v96;
        (*(v95 + 16))(v94, v86, v96);
        type metadata accessor for MainActor();
        v79 = v32;
        v80 = static MainActor.shared.getter();
        v81 = (*(v76 + 80) + 40) & ~*(v76 + 80);
        v82 = swift_allocObject();
        *(v82 + 2) = v80;
        *(v82 + 3) = &protocol witness table for MainActor;
        *(v82 + 4) = v79;
        (*(v76 + 32))(&v82[v81], v77, v78);
        sub_1001F4CB8(0, 0, v75, &unk_100ED00C0, v82);

        return sub_1004E414C(v99, type metadata accessor for AlbumDetailDataSource.CellType);
      }
    }

    else
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1004A99A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v6 = type metadata accessor for AppInterfaceContext.Activity(0);
  v5[21] = v6;
  v5[22] = *(v6 - 8);
  v5[23] = swift_task_alloc();
  sub_10010FC20(&unk_1011841F0);
  v5[24] = swift_task_alloc();
  v7 = type metadata accessor for Track();
  v5[25] = v7;
  v5[26] = *(v7 - 8);
  v5[27] = swift_task_alloc();
  sub_10010FC20(&unk_101192800);
  v5[28] = swift_task_alloc();
  sub_10010FC20(&qword_10118A530);
  v5[29] = swift_task_alloc();
  sub_10010FC20(&unk_101183960);
  v5[30] = swift_task_alloc();
  sub_10010FC20(&unk_10118BCE0);
  v5[31] = swift_task_alloc();
  sub_10010FC20(&qword_1011848A0);
  v5[32] = swift_task_alloc();
  v8 = type metadata accessor for PlaybackIntentDescriptor(0);
  v5[33] = v8;
  v5[34] = *(v8 - 8);
  v5[35] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[36] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[37] = v10;
  v5[38] = v9;

  return _swift_task_switch(sub_1004A9CA4, v10, v9);
}

uint64_t sub_1004A9CA4()
{
  v1 = v0[31];
  v2 = v0[20];
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  (*(v4 + 16))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  v5 = swift_task_alloc();
  v0[39] = v5;
  *v5 = v0;
  v5[1] = sub_1004A9DD8;
  v7 = v0[31];
  v6 = v0[32];

  return sub_1004D8654(v6, v7);
}

uint64_t sub_1004A9DD8()
{
  v1 = *v0;
  v2 = *(*v0 + 248);

  sub_1000095E8(v2, &unk_10118BCE0);
  v3 = *(v1 + 304);
  v4 = *(v1 + 296);

  return _swift_task_switch(sub_1004A9F2C, v4, v3);
}

uint64_t sub_1004A9F2C()
{
  v1 = v0[32];
  if ((*(v0[34] + 48))(v1, 1, v0[33]) == 1)
  {

    sub_1000095E8(v1, &qword_1011848A0);

    v2 = v0[1];

    return v2();
  }

  v4 = v0[19];
  sub_1004E59E0(v1, v0[35], type metadata accessor for PlaybackIntentDescriptor);
  v5 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_lyricsSnippetData;
  v0[40] = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_lyricsSnippetData;
  v6 = (v4 + v5);
  v7 = v6[1];
  if (!v7)
  {
    goto LABEL_18;
  }

  v8 = *v6;
  v9 = v0[28];
  v10 = *(v6 + 24);
  swift_bridgeObjectRetain_n();
  sub_1004DEB38(v9);
  v11 = type metadata accessor for AlbumDetailDataSource.CellType(0);
  if ((*(*(v11 - 8) + 48))(v9, 1, v11) == 1)
  {
    v12 = v0[28];
    v13 = &unk_101192800;
LABEL_15:
    sub_1000095E8(v12, v13);
    goto LABEL_16;
  }

  v14 = v0[28];
  v15 = v0[29];
  v17 = v0[25];
  v16 = v0[26];
  sub_10049FB9C(v15);
  sub_1004E414C(v14, type metadata accessor for AlbumDetailDataSource.CellType);
  if ((*(v16 + 48))(v15, 1, v17) == 1)
  {
    v13 = &qword_10118A530;
    v12 = v0[29];
    goto LABEL_15;
  }

  v50 = v8;
  v19 = v0[26];
  v18 = v0[27];
  v20 = v0[25];
  (*(v19 + 16))(v18, v0[29], v20);
  v21 = (*(v19 + 88))(v18, v20);
  v22 = v0[30];
  v24 = v0[26];
  v23 = v0[27];
  v25 = v0[25];
  if (v21 == enum case for Track.song(_:))
  {
    (*(v24 + 96))(v0[27], v0[25]);
    v26 = type metadata accessor for Song();
    v27 = *(v26 - 8);
    (*(v27 + 32))(v22, v23, v26);
    (*(v27 + 56))(v22, 0, 1, v26);
    v28 = *(v24 + 8);
  }

  else
  {
    v26 = type metadata accessor for Song();
    (*(*(v26 - 8) + 56))(v22, 1, 1, v26);
    v28 = *(v24 + 8);
    v28(v23, v25);
  }

  v29 = v0[30];
  v28(v0[29], v0[25]);
  type metadata accessor for Song();
  v30 = *(v26 - 8);
  v31 = (*(v30 + 48))(v29, 1, v26);
  v32 = v0[30];
  if (v31 == 1)
  {
    v13 = &unk_101183960;
    v12 = v0[30];
    goto LABEL_15;
  }

  v36 = Song.catalogID.getter();
  v38 = v37;
  (*(v30 + 8))(v32, v26);
  if (v38)
  {
    if (v50 == v36 && v7 == v38)
    {
    }

    else
    {
      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v39 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    if (v10)
    {
    }

    else
    {
      v40 = objc_allocWithZone(MPIdentifierSet);
      v41 = [objc_opt_self() kindWithVariants:1];
      v42 = swift_allocObject();
      *(v42 + 16) = v50;
      *(v42 + 24) = v7;
      v43 = swift_allocObject();
      *(v43 + 16) = sub_1004EA720;
      *(v43 + 24) = v42;
      v0[6] = sub_1001EC788;
      v0[7] = v43;
      v0[2] = _NSConcreteStackBlock;
      v0[3] = 1107296256;
      v0[4] = sub_10006BD7C;
      v0[5] = &unk_1010AFA58;
      v44 = _Block_copy(v0 + 2);

      v45 = [v40 initWithModelKind:v41 block:v44];

      _Block_release(v44);
      LOBYTE(v40) = swift_isEscapingClosureAtFileLocation();

      if (v40)
      {
        __break(1u);
        return result;
      }

      v46 = PlaybackIntentDescriptor.intent.getter(result);
      sub_10010FC20(&qword_1011929E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100EBC6B0;
      *(inited + 32) = v45;
      v48 = v45;
      *(inited + 40) = Double._bridgeToObjectiveC()();
      sub_10010D2FC(inited);
      swift_setDeallocating();
      sub_1000095E8(inited + 32, &qword_1011929E8);
      sub_100009F78(0, &qword_101192200);
      sub_100009F78(0, &qword_101189A20);
      sub_10001C070(&unk_1011929F0, &qword_101192200);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v46 setStartTimeModifications:isa];
    }

    if (qword_10117F608 != -1)
    {
      swift_once();
    }

    v33 = swift_task_alloc();
    v0[41] = v33;
    *v33 = v0;
    v34 = sub_1004AA7D0;
    goto LABEL_21;
  }

LABEL_16:

LABEL_17:

LABEL_18:
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v33 = swift_task_alloc();
  v0[44] = v33;
  *v33 = v0;
  v34 = sub_1004AABD8;
LABEL_21:
  v33[1] = v34;
  v35 = v0[35];

  return PlaybackController.add(_:route:)(v35, 0);
}

uint64_t sub_1004AA7D0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 296);
    v4 = *(v2 + 304);
    v5 = sub_1004AADE8;
  }

  else
  {
    v3 = *(v2 + 296);
    v4 = *(v2 + 304);
    v5 = sub_1004EA6CC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1004AA8F4()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 184);
  if (v0)
  {

    sub_1004E414C(v4, type metadata accessor for AppInterfaceContext.Activity);
    v5 = *(v3 + 296);
    v6 = *(v3 + 304);
    v7 = sub_1004AB0AC;
  }

  else
  {
    sub_1004E414C(v4, type metadata accessor for AppInterfaceContext.Activity);

    v5 = *(v3 + 296);
    v6 = *(v3 + 304);
    v7 = sub_1004AAA8C;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1004AAA8C()
{

  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[19] + v0[40];
  sub_1004E414C(v0[35], type metadata accessor for PlaybackIntentDescriptor);
  (*(v3 + 56))(v1, 0, 1, v2);
  sub_1000095E8(v1, &unk_1011841F0);
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *v4 = 0;

  v5 = v0[1];

  return v5();
}

uint64_t sub_1004AABD8()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 296);
    v4 = *(v2 + 304);
    v5 = sub_1004EA6D0;
  }

  else
  {
    v3 = *(v2 + 296);
    v4 = *(v2 + 304);
    v5 = sub_1004AACFC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1004AACFC()
{
  v1 = *(v0 + 280);

  sub_1004E414C(v1, type metadata accessor for PlaybackIntentDescriptor);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1004AADE8()
{
  v1 = *(v0 + 152);
  v2 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v1 + v2, v0 + 136, &unk_1011926C0);
  if (*(v0 + 144))
  {

    sub_1000095E8(v0 + 136, &unk_1011926C0);
LABEL_9:
    v11 = *(v0 + 192);
    v12 = *(v0 + 168);
    v13 = *(v0 + 176);
    v14 = *(v0 + 152) + *(v0 + 320);
    sub_1004E414C(*(v0 + 280), type metadata accessor for PlaybackIntentDescriptor);
    (*(v13 + 56))(v11, 1, 1, v12);
    sub_1000095E8(v11, &unk_1011841F0);
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *v14 = 0;

    v15 = *(v0 + 8);

    return v15();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v0 + 136, &unk_1011926C0);
  if (!Strong || (v4 = sub_10003169C(), *(v0 + 336) = v4, Strong, !v4))
  {

    goto LABEL_9;
  }

  v5 = *(v0 + 184);
  v6 = &v5[*(sub_10010FC20(&unk_1011841E0) + 48)];
  *v5 = 1;
  type metadata accessor for AppInterfaceContext.Activity.Destination(0);
  swift_storeEnumTagMultiPayload();
  *v6 = 0;
  v6[1] = 0;
  swift_storeEnumTagMultiPayload();
  v7 = swift_task_alloc();
  *(v0 + 344) = v7;
  *v7 = v0;
  v7[1] = sub_1004AA8F4;
  v9 = *(v0 + 184);
  v8 = *(v0 + 192);

  return sub_100706024(v8, v9);
}

uint64_t sub_1004AB0AC()
{

  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[19] + v0[40];
  sub_1004E414C(v0[35], type metadata accessor for PlaybackIntentDescriptor);
  (*(v3 + 56))(v1, 1, 1, v2);
  sub_1000095E8(v1, &unk_1011841F0);
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *v4 = 0;

  v5 = v0[1];

  return v5();
}

uint64_t sub_1004AB2F4(uint64_t a1)
{
  v2 = type metadata accessor for Track();
  v3 = __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_100735178(v5, 0);
}

uint64_t sub_1004AB664(void *a1)
{
  v3 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v1 + v3, v6, &unk_1011926C0);
  if (v6[8])
  {
    return sub_1000095E8(v6, &unk_1011926C0);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  result = sub_1000095E8(v6, &unk_1011926C0);
  if (Strong)
  {
    sub_1006A3684(a1);
    sub_10069F9B8();
    sub_100559BC8();
    sub_10055A988();
  }

  return result;
}

void sub_1004AB7A8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(a1, v12, &unk_1011926C0);
  sub_1000089F8(v1 + v3, &v14, &unk_1011926C0);
  if (v13)
  {
    if (v15)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1000089F8(v12, v11, &unk_1011926C0);
    if ((v15 & 1) == 0)
    {
      sub_10003D17C(&v14, &v10, &unk_101192780);
      type metadata accessor for ContainerDetail.ViewController(0);
      v9 = static WeakWrapper.== infix(_:_:)();
      sub_1000095E8(&v10, &unk_101192780);
      sub_1000095E8(v11, &unk_101192780);
      sub_1000095E8(v12, &unk_1011926C0);
      if (v9)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_1000095E8(v11, &unk_101192780);
  }

  sub_1000095E8(v12, &unk_101192770);
LABEL_7:
  sub_1000089F8(v1 + v3, v12, &unk_1011926C0);
  if (v13)
  {
LABEL_8:
    sub_1000095E8(v12, &unk_1011926C0);
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v12, &unk_1011926C0);
  if (Strong)
  {
    v5 = sub_1006A6D30();

    sub_100009F78(0, &unk_1011845F0);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v7.value = 0;
    isa = static UIMenu.lazy(title:image:options:cached:childrenProvider:)(0, 0, 0, v7, 0, sub_1004E5624, v6).super.super.isa;

    UIBarButtonItem.primaryActionKind.setter(isa, 1);
  }
}

void *sub_1004ABA38()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = Strong;
  v2 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v1 + v2, v12, &unk_1011926C0);
  if (v12[8] == 1)
  {

    sub_1000095E8(v12, &unk_1011926C0);
    return _swiftEmptyArrayStorage;
  }

  v3 = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v12, &unk_1011926C0);
  if (!v3)
  {

    return _swiftEmptyArrayStorage;
  }

  v4 = sub_1006A6D30();
  v21 = v4;
  v22 = 0u;
  v23 = 0u;
  v24 = 1;
  PresentationSource.Position.init(source:permittedArrowDirections:)(&v21, 15, v13);
  v17[0] = v13[0];
  v17[1] = v13[1];
  v18 = v14;
  v19 = v15;
  v20 = v16;
  v5 = v4;
  v6 = v3;
  PresentationSource.init(viewController:position:)(v6, v17, v12);
  v7 = sub_1004B4C54(v12);
  if (v7)
  {
    v8 = v7;
    v9 = [v7 children];

    sub_100009F78(0, &qword_10118CDE0);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = v1;
    v1 = v9;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  sub_10012BA6C(v12);
  return v10;
}

void sub_1004ABC24(uint64_t a1, uint64_t a2)
{
  if (!a2 && *(v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogID + 8))
  {

    v3 = v2;
    if (sub_1004AD51C())
    {

      v4 = v2;
    }

    else
    {
      v5 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
      v4 = v3;
      swift_beginAccess();
      sub_1000089F8(v3 + v5, v12, &unk_1011926C0);
      if (v12[8])
      {

        sub_1000095E8(v12, &unk_1011926C0);
        Strong = 0;
      }

      else
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(v12, &unk_1011926C0);
        if (Strong)
        {
          v7 = sub_10003169C();

          if (v7 && (v8 = v7[2], , , v8))
          {
            Strong = MusicPageProvider.albumRelatedContentProvider(for:)();
          }

          else
          {

            Strong = 0;
          }

          v4 = v3;
        }

        else
        {
        }
      }

      v9 = *(v4 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___relatedContentProvider);
      *(v4 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___relatedContentProvider) = Strong;
      sub_1000D9148(v9);
    }

    v10 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v4 + v10, v13, &unk_1011926C0);
    if (v13[8])
    {
      sub_1000095E8(v13, &unk_1011926C0);
    }

    else
    {
      v11 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v13, &unk_1011926C0);
      if (v11)
      {
        sub_1006A3EE4();
      }
    }
  }
}

uint64_t sub_1004ABE94(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(a1 + v2, v12, &unk_1011926C0);
  if (v12[8])
  {
    sub_1000095E8(v12, &unk_1011926C0);
    return 0;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v12, &unk_1011926C0);
    if (Strong)
    {
      v4 = sub_1006A6078();

      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for CollectionViewDragDropController(0);
      Strong = swift_allocObject();
      *(Strong + 24) = 0u;
      *(Strong + 40) = 0u;
      *(Strong + 56) = 0u;
      *(Strong + 72) = 0u;
      *(Strong + 88) = 1;
      *(Strong + 96) = 0;
      v6 = OBJC_IVAR____TtC5Music32CollectionViewDragDropController_activeDropContext;
      v7 = type metadata accessor for CollectionViewDragDropController.DropContext(0);
      (*(*(v7 - 8) + 56))(Strong + v6, 1, 1, v7);
      *(Strong + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dragDelegate) = 0;
      *(Strong + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dropDelegate) = 0;
      *(Strong + 16) = v4;
      *(Strong + 24) = sub_1004E9E9C;
      *(Strong + 32) = v5;
      *(Strong + 40) = 0;
      v8 = *(Strong + 56);
      *(Strong + 64) = 0;
      *(Strong + 48) = 0;
      *(Strong + 56) = 0;
      v9 = v4;
      swift_retain_n();
      sub_100020438(v8);
      v10 = *(Strong + 72);
      *(Strong + 72) = 0;
      *(Strong + 80) = 0;
      sub_100020438(v10);
      sub_100321DD8();
      sub_100322048();
    }
  }

  return Strong;
}

uint64_t sub_1004AC094(uint64_t a1)
{
  v2 = type metadata accessor for PlaybackIntentDescriptor(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Track();
  v26 = *(v5 - 8);
  v27 = v5;
  __chkstk_darwin(v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_101192800);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for AlbumDetailDataSource.CellType(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v25 - v16;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = result;
    IndexPath.section.getter();
    Array.subscript.getter(&type metadata for ContainerDetail.Section, &v28);
    if (v28 == 2)
    {
      sub_1004DEB38(v10);
      if ((*(v12 + 48))(v10, 1, v11) == 1)
      {

        sub_1000095E8(v10, &unk_101192800);
      }

      else
      {
        sub_1004E59E0(v10, v17, type metadata accessor for AlbumDetailDataSource.CellType);
        sub_1004E40DC(v17, v14, type metadata accessor for AlbumDetailDataSource.CellType);
        if (swift_getEnumCaseMultiPayload() >= 2)
        {
          v21 = v26;
          v20 = v27;
          (*(v26 + 32))(v7, v14, v27);
          v22 = sub_1004DDAB0(a1, v4);
          v23 = PlaybackIntentDescriptor.intent.getter(v22);
          sub_1004E414C(v4, type metadata accessor for PlaybackIntentDescriptor);
          v24 = sub_100797FA0(v23, _swiftEmptyArrayStorage);

          (*(v21 + 8))(v7, v20);
          sub_1004E414C(v17, type metadata accessor for AlbumDetailDataSource.CellType);
          return v24;
        }

        sub_1004E414C(v17, type metadata accessor for AlbumDetailDataSource.CellType);

        sub_1004E414C(v14, type metadata accessor for AlbumDetailDataSource.CellType);
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_1004AC488(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeOnlyDownloadedContent);
  *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeOnlyDownloadedContent) = result;
  if (v2 != (result & 1))
  {
    v3 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_autoupdatingResponse);
    if ((v3 & 0x8000000000000000) == 0)
    {
      swift_allocObject();
      swift_unknownObjectWeakInit();

      dispatch thunk of MusicAutoupdatingResponse.update(_:)();

      return sub_1004E6028(v3);
    }
  }

  return result;
}

uint64_t sub_1004AC550(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011927E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_10010FC20(&qword_101188E88);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_1004C50FC(0, v4);

    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      (*(v6 + 8))(a1, v5);
      v11 = *(v6 + 32);
      v11(v8, v4, v5);
      return (v11)(a1, v8, v5);
    }
  }

  else
  {
    (*(v6 + 56))(v4, 1, 1, v5);
  }

  v13 = *(v6 + 32);
  v13(v8, a1, v5);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    sub_1000095E8(v4, &qword_1011927E0);
  }

  return (v13)(a1, v8, v5);
}

void sub_1004AC798(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState);
  v5 = a1 & 0xFFFFFFFFFFFFFEFELL;
  if ((v4 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
  {
    if (v5 == 0x3FFFFFEFELL)
    {
      return;
    }

    goto LABEL_10;
  }

  if (v5 == 0x3FFFFFEFELL)
  {
    goto LABEL_10;
  }

  v6 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      if (a1 >> 62 == 2 && ((v4 ^ a1) & 1) == 0)
      {
        return;
      }
    }

    else
    {
      if (v4 == 0xC000000000000000 && *(v3 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState + 8) == 0)
      {
        if (a1 >> 62 != 3)
        {
          goto LABEL_10;
        }

        v11 = 0xC000000000000000;
      }

      else
      {
        if (a1 >> 62 != 3)
        {
          goto LABEL_10;
        }

        v11 = 0xC000000000000001;
      }

      if (a1 == v11 && !(a3 | a2))
      {
        return;
      }
    }

LABEL_10:
    v8 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v3 + v8, v13, &unk_1011926C0);
    if (v13[8])
    {
      sub_1000095E8(v13, &unk_1011926C0);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v13, &unk_1011926C0);
      if (Strong)
      {
        sub_10069F67C();
      }
    }

    return;
  }

  if (v6)
  {
    v7 = a1 >> 62 == 1;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    goto LABEL_10;
  }

  v12 = v4 ^ a1;
  if (v12 & 0x100) != 0 || (v12)
  {
    goto LABEL_10;
  }
}

uint64_t sub_1004AC920@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UIContentUnavailableConfiguration();
  __chkstk_darwin(v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v28 - v8;
  v10 = v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState;
  v11 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState);
  if ((v11 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
  {
    goto LABEL_10;
  }

  v13 = *(v10 + 8);
  v12 = *(v10 + 16);
  v31 = v7;
  if ((v11 >> 62) - 1 >= 2)
  {
    if (v11 >> 62)
    {
LABEL_7:
      static UIContentUnavailableConfiguration.empty()();
      sub_100446820(v9);
      (*(v31 + 8))(v5, v3);
      sub_10069D52C(v11);
      UIContentUnavailableConfiguration.text.setter();
      sub_10069B5AC(v11, v13, v12);
      UIContentUnavailableConfiguration.secondaryText.setter();
      v14 = sub_10069B85C(v11, v13, v12);
      if (v14)
      {
        v18 = v14;
        v29 = a1;
        v30 = v15;
        v19 = v17;
        v20 = v16;

        v21 = UIContentUnavailableConfiguration.button.modify();
        UIButton.Configuration.title.setter();
        v21(v32, 0);
        sub_100009F78(0, &qword_1011839A0);
        v22 = swift_allocObject();
        v22[2] = v18;
        v22[3] = v30;
        v22[4] = v20;
        v22[5] = v19;

        UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        v23 = UIContentUnavailableConfiguration.buttonProperties.modify();
        UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
        v23(v32, 0);
        sub_1004E5BA4(v11);
        a1 = v29;
      }

      else
      {
        sub_1004E5BA4(v11);
      }

      (*(v31 + 32))(a1, v9, v3);
      return (*(v31 + 56))(a1, 0, 1, v3);
    }

    sub_10011896C(v11);
  }

  if ((v11 & 1) == 0)
  {
    sub_1004E5BA4(v11);
    v7 = v31;
LABEL_10:
    v24 = *(v7 + 56);
    v25 = a1;
    v26 = 1;
    goto LABEL_11;
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    goto LABEL_7;
  }

  static UIContentUnavailableConfiguration.loading()();
  v24 = *(v31 + 56);
  v25 = a1;
  v26 = 0;
LABEL_11:

  return v24(v25, v26, 1, v3);
}

uint64_t sub_1004ACCE4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for Album();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  sub_1000089F8(v1 + v10, v5, &unk_101184730);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000095E8(v5, &unk_101184730);
    v11 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v6, &protocol witness table for Album, a1);
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_1004ACEFC@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = type metadata accessor for EditorialVideoArtworkFlavor();
  v27 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Album();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - v10;
  v12 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogAlbum;
  swift_beginAccess();
  sub_1000089F8(v1 + v12, v11, &unk_101184730);
  if ((*(v6 + 48))(v11, 1, v5))
  {
    sub_1000095E8(v11, &unk_101184730);
  }

  else
  {
    v13 = v27;
    (*(v6 + 16))(v8, v11, v5);
    sub_1000095E8(v11, &unk_101184730);
    v14 = EditorialVideoArtworkVending.editorialVideoArtworks.getter();
    (*(v6 + 8))(v8, v5);
    if (v14)
    {
      static EditorialVideoArtworkFlavor.motionDetailSquare.getter();
      if (*(v14 + 16))
      {
        v15 = sub_1006BE63C(v4);
        if (v16)
        {
          v17 = v15;
          v18 = *(v14 + 56);
          v19 = type metadata accessor for VideoArtwork();
          v20 = *(v19 - 8);
          v21 = v20;
          v22 = v18 + *(v20 + 72) * v17;
          v23 = v28;
          (*(v20 + 16))(v28, v22, v19);
          (*(v13 + 8))(v4, v2);

          return (*(v21 + 56))(v23, 0, 1, v19);
        }
      }

      (*(v13 + 8))(v4, v2);
    }
  }

  v25 = type metadata accessor for VideoArtwork();
  return (*(*(v25 - 8) + 56))(v28, 1, 1, v25);
}

uint64_t sub_1004AD2B4(uint64_t a1)
{
  v3 = sub_10010FC20(&unk_101188920);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  __chkstk_darwin(v4);
  v8 = v17 - v7 + 16;
  v9 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_artwork;
  swift_beginAccess();
  sub_1002190E0(a1, v1 + v9, &unk_101188920);
  swift_endAccess();
  v10 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v1 + v10, v17, &unk_1011926C0);
  if (v17[8])
  {
    sub_1000095E8(a1, &unk_101188920);
    v11 = &unk_1011926C0;
    v12 = v17;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v17, &unk_1011926C0);
    if (Strong)
    {
      sub_1000089F8(v1 + v9, v8, &unk_101188920);
      v14 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_artwork;
      swift_beginAccess();
      sub_1000089F8(Strong + v14, v6, &unk_101188920);
      swift_beginAccess();
      sub_1002190E0(v8, Strong + v14, &unk_101188920);
      swift_endAccess();
      sub_10069FC04(v6);

      sub_1000095E8(a1, &unk_101188920);
      sub_1000095E8(v6, &unk_101188920);
      v12 = v8;
      v11 = &unk_101188920;
    }

    else
    {
      v11 = &unk_101188920;
      v12 = a1;
    }
  }

  return sub_1000095E8(v12, v11);
}

uint64_t sub_1004AD564(uint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  v6 = *a1;
  v7 = *(v4 + *a1);
  v8 = v7;
  if (v7 == 1)
  {
    v8 = a2(v4);
    v10 = *(v4 + v6);
    *(v4 + v6) = v8;

    a3(v10);
  }

  a4(v7);
  return v8;
}

uint64_t sub_1004AD5EC(uint64_t a1)
{
  v2 = [objc_opt_self() sharedApplication];
  v3 = sub_100729BFC();

  if (*(v3 + 16) && *(a1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogID + 8))
  {

    v4 = MusicPageProvider.albumRelatedContentProvider(for:)();

    return v4;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1004AD6D0()
{
  v1 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage____needsToResolveLayout;
  v2 = *(v0 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage____needsToResolveLayout);
  if (v2 == 2)
  {
    LOBYTE(v2) = sub_1004AD714(v0);
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t sub_1004AD714(uint64_t a1)
{
  v2 = type metadata accessor for Album();
  v27 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  v8 = type metadata accessor for MusicPropertySource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v26 - v13;
  v15 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
  swift_beginAccess();
  (*(v9 + 16))(v14, a1 + v15, v8);
  (*(v9 + 104))(v11, enum case for MusicPropertySource.catalog(_:), v8);
  LOBYTE(v15) = static MusicPropertySource.== infix(_:_:)();
  v16 = *(v9 + 8);
  v16(v11, v8);
  v16(v14, v8);
  if ((v15 & 1) == 0)
  {
    goto LABEL_6;
  }

  v17 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(a1 + v17, v28, &unk_1011926C0);
  if (BYTE8(v28[0]))
  {
    sub_1000095E8(v28, &unk_1011926C0);
LABEL_6:
    v21 = 0;
    return v21 & 1;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v28, &unk_1011926C0);
  if (!Strong)
  {
    goto LABEL_6;
  }

  v19 = [Strong traitCollection];

  v20 = [v19 userInterfaceIdiom];
  if (v20)
  {
    goto LABEL_6;
  }

  static ApplicationCapabilities.shared.getter(v28);
  sub_100014984(v28);
  if (BYTE1(v28[0]))
  {
    v23 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
    swift_beginAccess();
    sub_1000089F8(a1 + v23, v7, &unk_101184730);
    v24 = v27;
    if (!(*(v27 + 48))(v7, 1, v2))
    {
      (*(v24 + 16))(v4, v7, v2);
      sub_1000095E8(v7, &unk_101184730);
      v25 = sub_100805138(2);
      (*(v24 + 8))(v4, v2);
      v21 = v25 ^ 1;
      return v21 & 1;
    }

    sub_1000095E8(v7, &unk_101184730);
  }

  v21 = 1;
  return v21 & 1;
}

uint64_t sub_1004ADB28(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  v5 = type metadata accessor for MusicPropertySource();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v9 - 8);
  v11 = &v36 - v10;
  result = sub_1004AD6D0();
  if ((result & 1) != v4)
  {
    *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage____needsToResolveLayout) = v4;
    if ((a1 & 1) == 0)
    {
      v13 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
      swift_beginAccess();
      sub_1000089F8(v1 + v13, &v38, &unk_1011926C0);
      if (BYTE8(v38))
      {
        return sub_1000095E8(&v38, &unk_1011926C0);
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      result = sub_1000095E8(&v38, &unk_1011926C0);
      if (Strong)
      {
        v37 = Strong;
        sub_1004ADB28(0);
        sub_1000089F8(v2 + v13, &v38, &unk_1011926C0);
        if (BYTE8(v38))
        {
          sub_1000095E8(&v38, &unk_1011926C0);
        }

        else
        {
          v15 = swift_unknownObjectWeakLoadStrong();
          sub_1000095E8(&v38, &unk_1011926C0);
          if (v15)
          {
            v16 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_loadingTimer;
            [*&v15[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_loadingTimer] invalidate];
            v17 = *&v15[v16];
            *&v15[v16] = 0;
          }
        }

        v18 = (v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState);
        v19 = *(v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState);
        if ((v19 & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFELL)
        {
          v20 = v18[1];
          v21 = v18[2];
          if (v19 >> 62 == 3 || (v19 & 1) != 0)
          {
            *v18 = 0x3FFFFFEFELL;
            v18[1] = 0;
            v18[2] = 0;
            sub_1004AC798(v19, v20, v21);
            sub_1004E5BA4(v19);
            sub_1000089F8(v2 + v13, &v38, &unk_1011926C0);
            if (BYTE8(v38))
            {
              sub_1000095E8(&v38, &unk_1011926C0);
            }

            else
            {
              v22 = swift_unknownObjectWeakLoadStrong();
              sub_1000095E8(&v38, &unk_1011926C0);
              if (v22)
              {
                [v22 setNeedsUpdateContentUnavailableConfiguration];
              }
            }

            *(v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeHeaderOnNextReload) = 1;
          }
        }

        v23 = sub_1004CAC5C();
        swift_getKeyPath();
        *&v38 = v23;
        sub_1004E41B4(&unk_1011A4750, _s13ConfigurationCMa);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v24 = *(v23 + 16);

        sub_10069F9B8();
        v25 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogAlbum;
        swift_beginAccess();
        sub_1000089F8(v2 + v25, v11, &unk_101184730);
        v26 = type metadata accessor for Album();
        v27 = *(v26 - 8);
        if ((*(v27 + 48))(v11, 1, v26) == 1)
        {
          sub_1000095E8(v11, &unk_101184730);
          v38 = 0u;
          v39 = 0u;
          v40 = 0;
        }

        else
        {
          *(&v39 + 1) = v26;
          v40 = &off_1010B22E8;
          v28 = sub_10001C8B8(&v38);
          (*(v27 + 32))(v28, v11, v26);
        }

        v29 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
        swift_beginAccess();
        (*(v6 + 16))(v8, v2 + v29, v5);
        sub_100558458(&v38, v8, 0);

        (*(v6 + 8))(v8, v5);
        sub_1000095E8(&v38, &unk_101192850);
        v30 = *(v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___headerConfiguration);
        swift_getKeyPath();
        *&v38 = v30;

        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v31 = *(v30 + 16);

        if (v24 == 2)
        {
          v32 = v37;
          if (v31 == 2)
          {
LABEL_28:
            sub_10069F67C();
            sub_100009F78(0, &qword_101181620);
            v33 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionLinear];
            v34 = swift_allocObject();
            *(v34 + 16) = v32;
            v35 = v32;
            static UIView.animate(withTimingFunction:duration:delay:options:animations:completion:)(v33, 0, sub_1004E9E3C, v34, 0, 0, 0.5, 0.0);
          }
        }

        else
        {
          v32 = v37;
          if (v31 != 2 && ((v31 ^ v24) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        if (*(*&v32[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___headerCoordinator] + 24))
        {
          sub_1004CCA54();
        }

        goto LABEL_28;
      }
    }
  }

  return result;
}

uint64_t sub_1004AE1DC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v3 - 8);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v17[-v7];
  v9 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogAlbum;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &unk_101184730);
  v10 = type metadata accessor for Album();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    *(&v19 + 1) = v10;
    v20 = &off_1010B22E8;
    v15 = sub_10001C8B8(&v18);
    (*(v11 + 32))(v15, v8, v10);
    return sub_100059A8C(&v18, a1);
  }

  sub_1000095E8(v8, &unk_101184730);
  v18 = 0u;
  v19 = 0u;
  v20 = 0;
  v13 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  sub_1000089F8(v1 + v13, v5, &unk_101184730);
  if (v12(v5, 1, v10) != 1)
  {
    *(a1 + 24) = v10;
    *(a1 + 32) = &off_1010B22E8;
    v16 = sub_10001C8B8(a1);
    result = (*(v11 + 32))(v16, v5, v10);
    if (!*(&v19 + 1))
    {
      return result;
    }

    return sub_1000095E8(&v18, &unk_101192850);
  }

  result = sub_1000095E8(v5, &unk_101184730);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  if (*(&v19 + 1))
  {
    return sub_1000095E8(&v18, &unk_101192850);
  }

  return result;
}

uint64_t sub_1004AE45C()
{
  v1 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState);
  if (v4 & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFELL && (v4 >> 62 == 3 || (v4))
  {
    return 2;
  }

  v5 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  sub_1000089F8(v0 + v5, v3, &unk_101184730);
  v6 = type metadata accessor for Album();
  v7 = (*(*(v6 - 8) + 48))(v3, 1, v6) == 1;
  sub_1000095E8(v3, &unk_101184730);
  return (2 * v7);
}

void sub_1004AE5B0()
{
  v1 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v1 - 8);
  v3 = &v24 - v2;
  v4 = type metadata accessor for PlaybackIntentDescriptor(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for Album();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v0 + v14, &v24, &unk_1011926C0);
  if (v25)
  {
    sub_1000095E8(&v24, &unk_1011926C0);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(&v24, &unk_1011926C0);
    if (Strong)
    {
      v16 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_needToRegisterGroupActivitySuggestion;
      if (*(Strong + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_needToRegisterGroupActivitySuggestion))
      {
        v17 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
        swift_beginAccess();
        sub_1000089F8(v0 + v17, v9, &unk_101184730);
        if ((*(v11 + 48))(v9, 1, v10) == 1)
        {

          sub_1000095E8(v9, &unk_101184730);
        }

        else
        {
          (*(v11 + 32))(v13, v9, v10);
          v18 = type metadata accessor for IndexPath();
          (*(*(v18 - 8) + 56))(v3, 1, 1, v18);
          sub_1004DB58C(v3, v6);
          v19 = sub_1000095E8(v3, &unk_10118BCE0);
          v20 = PlaybackIntentDescriptor.intent.getter(v19);
          sub_1004E414C(v6, type metadata accessor for PlaybackIntentDescriptor);
          if (qword_10117F718 != -1)
          {
            swift_once();
          }

          v26 = v10;
          v27 = &protocol witness table for Album;
          v21 = sub_10001C8B8(&v24);
          (*(v11 + 16))(v21, v13, v10);
          v28 = Strong;
          v29 = 1;
          v22 = Strong;
          v23 = v20;
          GroupActivitiesManager.SuggestionProvider.registerItem(_:intent:)(&v24, v20);

          sub_100442874(&v24);
          *(Strong + v16) = 0;

          (*(v11 + 8))(v13, v10);
        }
      }

      else
      {
      }
    }
  }
}

void sub_1004AEA08()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v2 - 8);
  v4 = v36 - v3 + 16;
  v5 = sub_10010FC20(&unk_101184730);
  v6 = __chkstk_darwin(v5 - 8);
  v35 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  __chkstk_darwin(v6);
  v9 = v36 - v8 + 16;
  v10 = type metadata accessor for MusicPropertySource();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  __chkstk_darwin(v12);
  v16 = v36 - v15 + 16;
  static ApplicationCapabilities.shared.getter(v37);
  sub_100014984(v37);
  if ((BYTE1(v37[0]) & 1) == 0)
  {
    v17 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
    swift_beginAccess();
    (*(v11 + 16))(v16, v0 + v17, v10);
    (*(v11 + 104))(v14, enum case for MusicPropertySource.catalog(_:), v10);
    LOBYTE(v17) = static MusicPropertySource.== infix(_:_:)();
    v18 = *(v11 + 8);
    v18(v14, v10);
    v18(v16, v10);
    if ((v17 & 1) != 0 && !*(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentingCells))
    {
      sub_1004C4C94(0xC000000000000000, 0, 0);
      return;
    }
  }

  v19 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v1 + v19, v36, &unk_1011926C0);
  if (v36[8])
  {
    v20 = &unk_1011926C0;
    v21 = v36;
LABEL_11:
    sub_1000095E8(v21, v20);
    goto LABEL_12;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v36, &unk_1011926C0);
  if (Strong)
  {
    v23 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
    swift_beginAccess();
    (*(v11 + 16))(v16, v1 + v23, v10);
    (*(v11 + 104))(v14, enum case for MusicPropertySource.library(_:), v10);
    v24 = static MusicPropertySource.== infix(_:_:)();
    v25 = *(v11 + 8);
    v25(v14, v10);
    v25(v16, v10);
    if (v24)
    {
      v26 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
      swift_beginAccess();
      sub_1000089F8(v1 + v26, v9, &unk_101184730);
    }

    else
    {
      v27 = type metadata accessor for Album();
      (*(*(v27 - 8) + 56))(v9, 1, 1, v27);
    }

    v28 = v35;
    sub_1000089F8(v9, v35, &unk_101184730);
    sub_10010FC20(&qword_101192A08);
    swift_allocObject();
    v29 = Strong;
    sub_100866FA8(v29, v28);

    sub_1004B6F0C(v30);

    v21 = v9;
    v20 = &unk_101184730;
    goto LABEL_11;
  }

LABEL_12:
  static TaskPriority.userInitiated.getter();
  v31 = type metadata accessor for TaskPriority();
  (*(*(v31 - 8) + 56))(v4, 0, 1, v31);
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[3] = 0;
  v33[4] = v32;
  v34 = sub_100805804(0, 0, v4, &unk_100ED0080, v33);
  sub_1000095E8(v4, &unk_101181520);
  *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_asyncSetupTask) = v34;
}

uint64_t sub_1004AEFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = type metadata accessor for MusicPropertySource();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_1004AF070, 0, 0);
}

uint64_t sub_1004AF070()
{
  if ((static Task<>.isCancelled.getter() & 1) != 0 || (swift_beginAccess(), Strong = swift_unknownObjectWeakLoadStrong(), (v0[12] = Strong) == 0))
  {

    v4 = v0[1];

    return v4();
  }

  else
  {
    v0[13] = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_loadingSource;
    type metadata accessor for MainActor();
    v0[14] = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1004AF17C, v3, v2);
  }
}

uint64_t sub_1004AF17C()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];

  v6 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
  swift_beginAccess();
  (*(v5 + 16))(v2, v3 + v6, v4);
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_1004AF26C;
  v8 = v0[11];

  return sub_1004B6FF4(v3 + v1, v8);
}

uint64_t sub_1004AF26C()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_1004AF3C4, 0, 0);
}

uint64_t sub_1004AF3C4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1004AF430()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_asyncSetupTask))
  {

    sub_10010FC20(&qword_1011824A0);
    Task.cancel()();
  }

  v2 = *(v0 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_autoupdatingResponse);
  *(v0 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_autoupdatingResponse) = 0xF000000000000007;
  sub_1004E6028(v2);
  *(v0 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_autoupdatingResponseSubscription) = 0;

  v3 = (v0 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState);
  v4 = *(v0 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState);
  v5 = *(v0 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState + 8);
  v6 = *(v0 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState + 16);
  *v3 = 0x3FFFFFEFELL;
  v3[1] = 0;
  v3[2] = 0;
  sub_1004AC798(v4, v5, v6);
  sub_1004E5BA4(v4);
  v7 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v0 + v7, v18, &unk_1011926C0);
  if (v19)
  {
    sub_1000095E8(v18, &unk_1011926C0);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v18, &unk_1011926C0);
    if (Strong)
    {
      [Strong setNeedsUpdateContentUnavailableConfiguration];
    }
  }

  *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeHeaderOnNextReload) = 1;
  sub_1004C97D0(0);
  sub_1000089F8(v1 + v7, v18, &unk_1011926C0);
  if (v19)
  {
    sub_1000095E8(v18, &unk_1011926C0);
  }

  else
  {
    v9 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v18, &unk_1011926C0);
    if (v9)
    {
      v10 = sub_1006A3A7C();

      if (v10)
      {
        v11 = v10 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v11)
        {
          goto LABEL_30;
        }
      }
    }
  }

  if (*(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogID + 8))
  {
    sub_1000089F8(v1 + v7, v18, &unk_1011926C0);
    if (v19)
    {
      sub_1000095E8(v18, &unk_1011926C0);
LABEL_23:
      v12 = 0;
      goto LABEL_24;
    }

    v12 = swift_unknownObjectWeakLoadStrong();

    sub_1000095E8(v18, &unk_1011926C0);
    if (v12)
    {
      v13 = sub_10003169C();

      if (!v13 || (v14 = v13[2], , , !v14))
      {

        goto LABEL_23;
      }

      v12 = MusicPageProvider.playlistRelatedContentProvider(for:)();
    }

LABEL_24:
    v15 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___relatedContentProvider);
    *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___relatedContentProvider) = v12;
    sub_1000D9148(v15);
    sub_1000089F8(v1 + v7, v18, &unk_1011926C0);
    if (v19)
    {
      sub_1000095E8(v18, &unk_1011926C0);
    }

    else
    {
      v16 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v18, &unk_1011926C0);
      if (v16)
      {
        sub_1006A3EE4();
      }
    }

    if (sub_1004AD51C())
    {
      dispatch thunk of RelatedContentProvider.onAppear()();
    }
  }

LABEL_30:
  sub_1000089F8(v1 + v7, v18, &unk_1011926C0);
  if (v19)
  {
    sub_1000095E8(v18, &unk_1011926C0);
  }

  else
  {
    v17 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v18, &unk_1011926C0);
    if (v17)
    {
      sub_10069F67C();
    }
  }

  sub_1004AEA08();
}

uint64_t sub_1004AF890(uint64_t a1)
{
  v3 = sub_1004CAC5C();
  swift_getKeyPath();
  v12 = v3;
  sub_1004E41B4(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__metrics);

  if (*(v4 + 16) == *a1)
  {
    *(v4 + 16) = *a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v11[1] = v11;
    __chkstk_darwin(KeyPath);
    v12 = v4;
    sub_1004E41B4(&qword_101192A00, _s7MetricsCMa);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v6 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___headerConfiguration);
  swift_getKeyPath();
  v12 = v6;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v6 + OBJC_IVAR____TtCV5Music6Header13Configuration__metrics);

  v8 = *(a1 + 16);
  if (*(v7 + 24) == v8)
  {
    *(v7 + 24) = v8;
  }

  else
  {
    v10 = swift_getKeyPath();
    __chkstk_darwin(v10);
    v12 = v7;
    sub_1004E41B4(&qword_101192A00, _s7MetricsCMa);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1004AFBB4(unsigned __int8 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sections);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  result = 0;
  v6 = v2 + 32;
  while (*(v6 + result) != a1)
  {
    if (v3 == ++result)
    {
      return 0;
    }
  }

  return result;
}

id sub_1004AFC08()
{
  v1 = type metadata accessor for IndexPath();
  v21[6] = *(v1 - 8);
  __chkstk_darwin(v1);
  v2 = type metadata accessor for PlaybackIntentDescriptor(0);
  __chkstk_darwin(v2 - 8);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&unk_101192800);
  __chkstk_darwin(v5 - 8);
  v7 = v21 - v6;
  v22 = type metadata accessor for Track();
  v8 = *(v22 - 8);
  __chkstk_darwin(v22);
  __chkstk_darwin(v9);
  v11 = (v21 - v10);
  sub_1004DEB38(v7);
  v12 = type metadata accessor for AlbumDetailDataSource.CellType(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_1000095E8(v7, &unk_101192800);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    v21[5] = v1;
    v13 = v11;
    v14 = v11;
    v15 = v22;
    (*(v8 + 32))(v13, v7, v22);
    v16 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v0 + v16, v23, &unk_1011926C0);
    if (v23[8])
    {
      (*(v8 + 8))(v14, v15);
      sub_1000095E8(v23, &unk_1011926C0);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v23, &unk_1011926C0);
      if (Strong)
      {
        sub_1004DDD64(v14, v4);
        memset(v24, 0, sizeof(v24));
        v25 = 0;
        v26 = xmmword_100EBCEF0;
        v19 = Strong;
        PresentationSource.init(viewController:position:)(v19, v24, v23);
        v20 = sub_1007F50D8(v14, v4, v23);

        sub_10012BA6C(v23);
        sub_1004E414C(v4, type metadata accessor for PlaybackIntentDescriptor);
        (*(v8 + 8))(v14, v22);
        return v20;
      }

      (*(v8 + 8))(v14, v22);
    }
  }

  else
  {
    sub_1004E414C(v7, type metadata accessor for AlbumDetailDataSource.CellType);
  }

  return 0;
}

id sub_1004B03EC()
{
  v1 = sub_10010FC20(&unk_101192800);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  v4 = type metadata accessor for Track();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004DEB38(v3);
  v8 = type metadata accessor for AlbumDetailDataSource.CellType(0);
  if ((*(*(v8 - 8) + 48))(v3, 1, v8) == 1)
  {
    sub_1000095E8(v3, &unk_101192800);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    (*(v5 + 32))(v7, v3, v4);
    v9 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v0 + v9, &v17, &unk_1011926C0);
    if (v18)
    {
      sub_1000095E8(&v17, &unk_1011926C0);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v17, &unk_1011926C0);
      if (Strong)
      {
        v11 = Strong;
        v12 = [v11 traitCollection];
        sub_100137E8C();
        UITraitCollection.subscript.getter();

        v13 = v17;
        memset(v19, 0, sizeof(v19));
        v20 = 0;
        v21 = xmmword_100EBCEF0;
        PresentationSource.init(viewController:position:)(v11, v19, &v17);
        v14 = sub_1005192F0(v7, v13, &v17);

        sub_10012BA6C(&v17);
        (*(v5 + 8))(v7, v4);
        return v14;
      }
    }

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    sub_1004E414C(v3, type metadata accessor for AlbumDetailDataSource.CellType);
  }

  return 0;
}

void sub_1004B0710()
{
  v1 = v0;
  v100 = type metadata accessor for Logger();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v97 = &v85 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v90 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v89 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v7 - 8);
  v93 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v94 = &v85 - v10;
  v95 = type metadata accessor for URL();
  v98 = *(v95 - 8);
  v11 = *(v98 + 64);
  __chkstk_darwin(v95);
  v88 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v91 = &v85 - v13;
  __chkstk_darwin(v14);
  v101 = &v85 - v15;
  v16 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v16 - 8);
  v92 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v85 - v19;
  v21 = type metadata accessor for Album();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v96 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v85 - v25;
  __chkstk_darwin(v27);
  v29 = &v85 - v28;
  v103 = _swiftEmptyArrayStorage;
  v30 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  v102 = v1;
  v31 = v22;
  sub_1000089F8(v1 + v30, v20, &unk_101184730);
  v32 = *(v22 + 48);
  if (v32(v20, 1, v21) == 1)
  {
    sub_1000095E8(v20, &unk_101184730);
LABEL_8:
    v40 = v102;
    sub_1004E3320(0);
    goto LABEL_9;
  }

  (*(v31 + 32))(v29, v20, v21);
  v33 = Album.catalogID.getter();
  v35 = v31;
  v36 = v21;
  if (!v34)
  {
    (*(v31 + 8))(v29, v21);
    goto LABEL_8;
  }

  v37 = v33;
  v38 = v34;
  v87 = v35;
  v39 = v29;
  if ((Album.isClassicalExperienceAvailable.getter() & 1) == 0)
  {
    (*(v87 + 8))(v29, v36);

    goto LABEL_8;
  }

  static ClassicalBridge.generatePrestoURL(type:storeAdamID:)(1, v37, v38, v101);

  v43 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogAlbum;
  v44 = v102;
  swift_beginAccess();
  v45 = v44 + v43;
  v46 = v92;
  sub_1000089F8(v45, v92, &unk_101184730);
  if (v32(v46, 1, v36))
  {
    sub_1000095E8(v46, &unk_101184730);
    v48 = v94;
    v49 = v95;
    (*(v98 + 56))(v94, 1, 1, v95);
  }

  else
  {
    v50 = v87;
    (*(v87 + 16))(v26, v46, v36);
    sub_1000095E8(v46, &unk_101184730);
    v48 = v94;
    Album.classicalURL.getter();
    (*(v50 + 8))(v26, v36);
    v49 = v95;
  }

  v51 = v93;
  v52 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_openInClassicalBarButtonItem;
  v40 = v102;
  v53 = *(v102 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_openInClassicalBarButtonItem);
  if (v53)
  {
    v54 = *(v102 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_openInClassicalBarButtonItem);
    v55 = v54;
  }

  else
  {
    v99 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_openInClassicalBarButtonItem;
    sub_1000089F8(v48, v93, &qword_101183A20);
    v56 = v98;
    v57 = *(v98 + 48);
    v58 = v57(v51, 1, v49);
    v85 = v36;
    v86 = v39;
    if (v58 == 1)
    {
      v59 = v91;
      (*(v56 + 16))(v91, v101, v49);
      if (v57(v51, 1, v49) != 1)
      {
        sub_1000095E8(v51, &qword_101183A20);
      }
    }

    else
    {
      v59 = v91;
      (*(v56 + 32))(v91, v51, v49);
    }

    v60 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v61 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v62 = v88;
    (*(v56 + 16))(v88, v59, v49);
    v63 = (*(v56 + 80) + 16) & ~*(v56 + 80);
    v64 = (v11 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
    v65 = swift_allocObject();
    v66 = v62;
    v67 = v61;
    v68 = v65;
    (*(v56 + 32))(v65 + v63, v66, v49);
    v69 = (v68 + v64);
    *v69 = sub_1004E9C90;
    v69[1] = v60;
    v70 = (v68 + ((v64 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v70 = sub_1004E9C98;
    v70[1] = v67;
    sub_100009F78(0, &qword_101183A00);
    v100 = v60;
    swift_retain_n();
    swift_retain_n();
    v71 = static UIFont.preferredFont(forTextStyle:weight:)();
    v72 = [objc_opt_self() configurationWithFont:v71];

    v73 = String._bridgeToObjectiveC()();
    v74 = [objc_opt_self() _systemImageNamed:v73 withConfiguration:v72];

    if (!v74)
    {
      __break(1u);
      return;
    }

    v96 = sub_100009F78(0, &qword_101181580);
    v97 = v74;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v75 = String.init(localized:table:bundle:locale:comment:)();
    v77 = v76;
    sub_100009F78(0, &qword_1011839A0);
    v78 = swift_allocObject();
    *(v78 + 16) = sub_1004E9CA0;
    *(v78 + 24) = v68;

    v79 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v80 = AccessibilityIdentifier.albumDetailOpenInClassicalButton.unsafeMutableAddressor();
    v82 = *v80;
    v81 = v80[1];

    v55 = UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)(v75, v77, v74, 0, v79, 0, v82, v81);

    v49 = v95;
    (*(v98 + 8))(v91, v95);

    v54 = 0;
    v52 = v99;
    v40 = v102;
    v53 = *(v102 + v99);
    v36 = v85;
    v39 = v86;
    v48 = v94;
  }

  *(v40 + v52) = v55;
  v83 = v55;
  v84 = v54;

  sub_1004B21F8();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v103 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  sub_1000095E8(v48, &qword_101183A20);
  (*(v98 + 8))(v101, v49);
  (*(v87 + 8))(v39, v36);
LABEL_9:
  if ((*(v40 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeOnlyDownloadedContent) & 1) == 0)
  {
    static ApplicationCapabilities.shared.getter(v104);
    sub_100014984(v104);
    if (BYTE1(v104[0]))
    {
      if (*(v40 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_actionableStateController))
      {

        v41 = sub_100801A48();

        if (v41)
        {
          v42 = v41;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v103 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }
      }
    }
  }
}

double sub_1004B173C@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v3 + v4, v7, &unk_1011926C0);
    if (BYTE8(v7[0]) == 1)
    {

      sub_1000095E8(v7, &unk_1011926C0);
    }

    else
    {
      v5 = swift_unknownObjectWeakLoadStrong();

      sub_1000095E8(v7, &unk_1011926C0);
      if (v5)
      {
        v8 = 0;
        memset(v7, 0, sizeof(v7));
        v9 = xmmword_100EBCEF0;
        *&result = PresentationSource.init(viewController:position:)(v5, v7, a1).n128_u64[0];
        return result;
      }
    }
  }

  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  return result;
}

uint64_t sub_1004B1868(void (*a1)(char *, uint64_t, uint64_t, uint64_t))
{
  v42 = a1;
  v1 = type metadata accessor for Actions.MetricsReportingContext();
  __chkstk_darwin(v1);
  v3 = (&v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v4 - 8);
  v6 = &v36 - v5;
  v7 = sub_10010FC20(&unk_1011838F0);
  __chkstk_darwin(v7 - 8);
  v43 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  __chkstk_darwin(v12);
  v14 = &v36 - v13;
  v15 = type metadata accessor for MetricsEvent.Page(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = result;
    sub_1004DF8FC(v14);
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {

      return sub_1000095E8(v14, &unk_1011838F0);
    }

    else
    {
      sub_1004E59E0(v14, v18, type metadata accessor for MetricsEvent.Page);
      v41 = "Open in Apple Music Classical";
      v21 = type metadata accessor for URL();
      v22 = *(v21 - 8);
      (*(v22 + 16))(v6, v42, v21);
      (*(v22 + 56))(v6, 0, 1, v21);
      sub_1004E40DC(v18, v11, type metadata accessor for MetricsEvent.Page);
      v42 = *(v16 + 56);
      v42(v11, 0, 1, v15);
      sub_10010FC20(&unk_1011927C0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_100EBC6B0;
      *(v23 + 32) = sub_1004DFF28();
      sub_1000089F8(v11, v43, &unk_1011838F0);
      MetricsReportingController.shared.unsafeMutableAddressor();
      v24 = sub_10053771C();
      v38 = v25;
      v39 = v24;
      v40 = v6;
      if (qword_10117F600 != -1)
      {
        swift_once();
      }

      v26 = qword_101218AD0;
      v37 = GroupActivitiesManager.hasJoined.getter();
      v36 = GroupActivitiesManager.participantsCount.getter();
      sub_1000095E8(v11, &unk_1011838F0);
      v27 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
      swift_beginAccess();
      v28 = *(v26 + v27);
      v29 = v1[5];
      v42(v3 + v29, 1, 1, v15);
      v30 = v1[7];
      v31 = (v3 + v1[6]);
      v32 = v1[8];
      *v3 = xmmword_100ECF4C0;
      sub_10006B010(v43, v3 + v29, &unk_1011838F0);
      v33 = v38;
      *v31 = v39;
      v31[1] = v33;
      *(v3 + v30) = v23;
      *(v3 + v32) = 0;
      v34 = v3 + v1[9];
      *v34 = v37 & 1;
      *(v34 + 1) = v36;
      *(v34 + 2) = v28;
      v35 = v40;
      static Actions.reportClickEvent(targetIdentifier:targetType:actionType:actionURL:actionDetails:reportingContext:)(0xD000000000000014, v41 | 0x8000000000000000, 5, 28, v40, 0, 0, 0, 0xFF00u, v3);

      sub_1000095E8(v35, &qword_101183A20);
      sub_1004E414C(v18, type metadata accessor for MetricsEvent.Page);
      return sub_1004E414C(v3, type metadata accessor for Actions.MetricsReportingContext);
    }
  }

  return result;
}

unint64_t sub_1004B1DBC()
{
  v24 = _s7ElementV4ItemOMa();
  __chkstk_darwin(v24);
  v23 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for AlbumDetailDataSource.CellType(0);
  v25 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  v8 = sub_10010FC20(&qword_10118A530);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for Track();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sections);
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (result >= *(v15 + 16))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (*(v15 + result + 32) != 2)
  {
    return 0;
  }

  v17 = *(v0 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentingCells);
  if (!v17)
  {
    (*(v12 + 56))(v10, 1, 1, v11);
LABEL_13:
    sub_1000095E8(v10, &qword_10118A530);
    return 0;
  }

  result = IndexPath.item.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_17;
  }

  if (result >= *(v17 + 16))
  {
LABEL_18:
    __break(1u);
    return result;
  }

  sub_1004E40DC(v17 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * result, v7, type metadata accessor for AlbumDetailDataSource.CellType);

  sub_1004E59E0(v7, v4, type metadata accessor for AlbumDetailDataSource.CellType);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    (*(v12 + 32))(v10, v4, v11);
    v18 = 0;
  }

  else
  {
    sub_1004E414C(v4, type metadata accessor for AlbumDetailDataSource.CellType);
    v18 = 1;
  }

  (*(v12 + 56))(v10, v18, 1, v11);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_13;
  }

  (*(v12 + 32))(v14, v10, v11);
  v19 = v23;
  (*(v12 + 16))(v23, v14, v11);
  swift_storeEnumTagMultiPayload();
  v20 = IndexPath.item.getter();
  v21 = sub_10043231C(v19, v20);
  (*(v12 + 8))(v14, v11);
  return v21;
}

void sub_1004B21F8()
{
  v1 = type metadata accessor for PopoverProvider.PopoverSource();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v5 = type metadata accessor for PlacementID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v10 = *(v0 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_openInClassicalBarButtonItem);
  if (v10)
  {
    v11 = v7;
    v12 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v0 + v12, v17, &unk_1011926C0);
    if (v17[8])
    {
      sub_1000095E8(v17, &unk_1011926C0);
      return;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v14 = v10;
    sub_1000095E8(v17, &unk_1011926C0);
    if (Strong)
    {
      if (sub_1006A4900())
      {
        static PlacementID.BubbleTip.showInClassicalAppButton.getter();
        *v4 = v14;
        (*(v2 + 104))(v4, enum case for PopoverProvider.PopoverSource.sourceItem(_:), v1);
        v15 = v14;
        dispatch thunk of PopoverProvider.registerPlacement(for:presentingViewController:popoverSource:)();

        (*(v2 + 8))(v4, v1);
        (*(v6 + 8))(v9, v11);
        return;
      }
    }
  }
}

uint64_t sub_1004B2480(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Album();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v53 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&qword_101192860);
  __chkstk_darwin(v7 - 8);
  v55 = &v50 - v8;
  v9 = sub_10010FC20(&unk_1011842D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v50 - v10;
  v51 = type metadata accessor for MusicPropertySource();
  v52 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v13 - 8);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v50 - v17;
  v20 = __chkstk_darwin(v19);
  v22 = &v50 - v21;
  v54 = v5;
  v23 = *(v5 + 48);
  v57 = v4;
  v56 = v23;
  v24 = (v23)(a1, 1, v4, v20);
  v25 = &unk_101218000;
  if (v24 == 1)
  {
    v26 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
    swift_beginAccess();
    sub_1000089F8(v2 + v26, v22, &unk_101184730);
    LODWORD(v26) = v56(v22, 1, v57);
    sub_1000095E8(v22, &unk_101184730);
    v27 = v26 == 1;
    v25 = &unk_101218000;
    if (!v27)
    {
      *(v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeHeaderOnNextReload) = 1;
      v28 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
      swift_beginAccess();
      sub_1000089F8(v2 + v28, v58, &unk_1011926C0);
      if (v59)
      {
        sub_1000095E8(v58, &unk_1011926C0);
      }

      else
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(v58, &unk_1011926C0);
        if (Strong)
        {
          sub_10069F67C();
        }
      }

      sub_1000089F8(v2 + v28, v58, &unk_1011926C0);
      if (v59)
      {
        sub_1000095E8(v58, &unk_1011926C0);
        v25 = &unk_101218000;
      }

      else
      {
        v30 = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(v58, &unk_1011926C0);
        v25 = &unk_101218000;
        if (v30)
        {
          if (v30[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_needsMetricsPageEvent])
          {
            v30[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_needsMetricsPageEvent] = 0;
            sub_1006A4A18();
          }
        }
      }
    }
  }

  sub_1004B2C94();
  v31 = v25[460];
  swift_beginAccess();
  sub_1000089F8(v2 + v31, v58, &unk_1011926C0);
  if (v59)
  {
    v32 = &unk_1011926C0;
  }

  else
  {
    v33 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v58, &unk_1011926C0);
    if (!v33)
    {
      goto LABEL_18;
    }

    sub_10069F9B8();

    sub_1004AE1DC(v58);
    v34 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
    swift_beginAccess();
    v35 = v52;
    v36 = v50;
    v37 = v51;
    (*(v52 + 16))(v50, v2 + v34, v51);
    v38 = sub_1004AD6D0();
    sub_100558458(v58, v36, v38 & 1);

    (*(v35 + 8))(v36, v37);
    v32 = &unk_101192850;
  }

  sub_1000095E8(v58, v32);
LABEL_18:
  sub_1004CAC5C();
  v39 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  sub_1000089F8(v2 + v39, v18, &unk_101184730);
  v40 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_tracks;
  swift_beginAccess();
  sub_1000089F8(v2 + v40, v11, &unk_1011842D0);
  v41 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogAlbum;
  swift_beginAccess();
  sub_1000089F8(v2 + v41, v15, &unk_101184730);
  if (v56(v15, 1, v57))
  {
    sub_1000095E8(v15, &unk_101184730);
    v42 = type metadata accessor for ContainerDetail.AttributionItem(0);
    v43 = 1;
    v44 = v55;
    (*(*(v42 - 8) + 56))(v55, 1, 1, v42);
  }

  else
  {
    v45 = v54;
    v46 = v53;
    v47 = v57;
    (*(v54 + 16))(v53, v15, v57);
    sub_1000095E8(v15, &unk_101184730);
    v44 = v55;
    sub_1004CA938(v55);
    (*(v45 + 8))(v46, v47);
    v48 = type metadata accessor for ContainerDetail.AttributionItem(0);
    v43 = (*(*(v48 - 8) + 48))(v44, 1, v48) == 1;
  }

  sub_1000095E8(v44, &qword_101192860);
  sub_1005F225C(v18, v11, v43);

  sub_1000095E8(v11, &unk_1011842D0);
  return sub_1000095E8(v18, &unk_101184730);
}

void sub_1004B2C94()
{
  v1 = v0;
  v2 = type metadata accessor for MusicPropertySource();
  v66 = *(v2 - 8);
  v67 = v2;
  v3 = __chkstk_darwin(v2);
  v65 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v64 = &v62 - v5;
  v6 = sub_10010FC20(&unk_1011842D0);
  __chkstk_darwin(v6 - 8);
  v70 = &v62 - v7;
  v8 = type metadata accessor for Album();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10010FC20(&unk_101184730);
  v13 = __chkstk_darwin(v12 - 8);
  v63 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v69 = &v62 - v16;
  v17 = __chkstk_darwin(v15);
  v68 = &v62 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v62 - v20;
  __chkstk_darwin(v19);
  v23 = &v62 - v22;
  v24 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v24 - 8);
  v26 = &v62 - v25;
  v27 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  v71 = v27;
  sub_1000089F8(v1 + v27, v23, &unk_101184730);
  v28 = *(v9 + 48);
  v29 = v28(v23, 1, v8);
  v72 = v9;
  if (v29)
  {
    sub_1000095E8(v23, &unk_101184730);
    v30 = type metadata accessor for Artwork();
    (*(*(v30 - 8) + 56))(v26, 1, 1, v30);
  }

  else
  {
    (*(v9 + 16))(v11, v23, v8);
    sub_1000095E8(v23, &unk_101184730);
    Album.artwork.getter();
    (*(v9 + 8))(v11, v8);
  }

  v31 = v11;
  sub_1004AD2B4(v26);
  v32 = v71;
  sub_1000089F8(v1 + v71, v21, &unk_101184730);
  if (v28(v21, 1, v8))
  {
    sub_1000095E8(v21, &unk_101184730);
    v33 = v72;
  }

  else
  {
    v33 = v72;
    (*(v72 + 16))(v11, v21, v8);
    sub_1000095E8(v21, &unk_101184730);
    v34 = Album.downloadedTrackCount.getter();
    v36 = v35;
    (*(v33 + 8))(v31, v8);
    if ((v36 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v34 = 0;
LABEL_8:
  *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_downloadedTrackCount) = v34;
  v37 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v1 + v37, v73, &unk_1011926C0);
  if (v73[8])
  {
    sub_1000095E8(v73, &unk_1011926C0);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v73, &unk_1011926C0);
    if (Strong)
    {
      v39 = [Strong navigationItem];
      v40 = v68;
      sub_1000089F8(v1 + v32, v68, &unk_101184730);
      if (v28(v40, 1, v8))
      {
        sub_1000095E8(v40, &unk_101184730);
        v41 = 0;
      }

      else
      {
        v62 = v28;
        v42 = v31;
        v43 = v72;
        (*(v72 + 16))(v42, v40, v8);
        sub_1000095E8(v40, &unk_101184730);
        Album.title.getter();
        v44 = v43;
        v31 = v42;
        v28 = v62;
        (*(v44 + 8))(v31, v8);
        v41 = String._bridgeToObjectiveC()();
      }

      [v39 setBackButtonTitle:v41];

      sub_1006A26DC();
      v33 = v72;
    }
  }

  v45 = v69;
  sub_1000089F8(v1 + v32, v69, &unk_101184730);
  if (v28(v45, 1, v8))
  {
    sub_1000095E8(v45, &unk_101184730);
    v46 = sub_10010FC20(&unk_1011841D0);
    v47 = v70;
    (*(*(v46 - 8) + 56))(v70, 1, 1, v46);
LABEL_18:
    v49 = &unk_1011842D0;
    v50 = v47;
LABEL_19:
    sub_1000095E8(v50, v49);
    goto LABEL_20;
  }

  (*(v33 + 16))(v31, v45, v8);
  sub_1000095E8(v45, &unk_101184730);
  v47 = v70;
  Album.tracks.getter();
  (*(v33 + 8))(v31, v8);
  v48 = sub_10010FC20(&unk_1011841D0);
  if ((*(*(v48 - 8) + 48))(v47, 1, v48) == 1)
  {
    goto LABEL_18;
  }

  sub_1000095E8(v47, &unk_1011842D0);
  v51 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
  swift_beginAccess();
  v53 = v66;
  v52 = v67;
  v54 = v64;
  (*(v66 + 16))(v64, v1 + v51, v67);
  v55 = v65;
  (*(v53 + 104))(v65, enum case for MusicPropertySource.library(_:), v52);
  LOBYTE(v51) = static MusicPropertySource.== infix(_:_:)();
  v56 = *(v53 + 8);
  v56(v55, v52);
  v56(v54, v52);
  if (v51 & 1) != 0 || (v60 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_autoupdatingResponse), (~v60 & 0xF000000000000007) != 0) && (, v61 = dispatch thunk of MusicAutoupdatingResponse.isLoaded.getter(), sub_1004E6028(v60), (v61))
  {
    v57 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_actionableStateController);
    if (v57)
    {
      v58 = v63;
      sub_1000089F8(v1 + v71, v63, &unk_101184730);
      v59 = *(*v57 + 128);
      swift_beginAccess();

      sub_1002190E0(v58, v57 + v59, &unk_101184730);
      swift_endAccess();
      sub_100801CC4();

      v50 = v58;
      v49 = &unk_101184730;
      goto LABEL_19;
    }
  }

LABEL_20:
  sub_1004AE5B0();
}

void sub_1004B3664()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v2 - 8);
  v4 = &v39 - v3;
  v5 = &v0[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_lyricsSnippetData];
  v6 = *&v0[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_lyricsSnippetData + 8];
  if (v6)
  {
    v7 = *v5;
    v8 = v5[24];
    v9 = qword_10117F608;

    if (v9 != -1)
    {
      swift_once();
    }

    v44 = &type metadata for Player.PlaybackCommand;
    v45 = &protocol witness table for Player.PlaybackCommand;
    LOBYTE(aBlock) = 0;
    v10 = PlaybackController.canPerform(_:)(&aBlock);
    sub_10000959C(&aBlock);
    if (!v10)
    {

      if (qword_10117FC48 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_1000060E4(v19, qword_1012193F8);
      v11 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v11, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v11, v20, "Failed to handle lyrics snippet, play command is not available", v21, 2u);
      }

LABEL_23:

      return;
    }

    v11 = [objc_allocWithZone(MPCModelStorePlaybackItemsRequest) init];
    if (qword_10117F5F8 != -1)
    {
      swift_once();
    }

    v12 = (*(*qword_101218AC8 + 528))();
    v13 = v12;
    if (v12)
    {
    }

    [v11 setInGroupSession:v13 != 0];
    sub_10010FC20(&unk_101181640);
    v14 = swift_allocObject();
    v39 = xmmword_100EBC6B0;
    *(v14 + 16) = xmmword_100EBC6B0;
    *(v14 + 32) = v7;
    *(v14 + 40) = v6;

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v11 setStoreIDs:isa];

    v16 = [objc_allocWithZone(MPCModelPlaybackIntentTracklistToken) init];
    [v16 setRequest:v11];
    v17 = [objc_allocWithZone(MPCPlaybackIntent) init];
    v40 = v16;
    [v17 setTracklistToken:v16];
    [v17 setTracklistSource:3];
    v18 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v1 + v18, &aBlock, &unk_1011926C0);
    if (v42)
    {
      sub_1000095E8(&aBlock, &unk_1011926C0);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&aBlock, &unk_1011926C0);
      if (Strong)
      {
        v23 = [Strong combinedPlayActivityFeatureName];

LABEL_18:
        [v17 setPlayActivityFeatureName:v23];

        if (v8)
        {
        }

        else
        {
          v24 = objc_allocWithZone(MPIdentifierSet);
          v25 = [objc_opt_self() kindWithVariants:1];
          v26 = swift_allocObject();
          *(v26 + 16) = v7;
          *(v26 + 24) = v6;
          v27 = swift_allocObject();
          *(v27 + 16) = sub_1004E9C88;
          *(v27 + 24) = v26;
          v45 = sub_1001EBE40;
          v46 = v27;
          aBlock = _NSConcreteStackBlock;
          v42 = 1107296256;
          v43 = sub_10006BD7C;
          v44 = &unk_1010AF878;
          v28 = _Block_copy(&aBlock);

          v29 = [v24 initWithModelKind:v25 block:v28];

          _Block_release(v28);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if (isEscapingClosureAtFileLocation)
          {
            __break(1u);
            return;
          }

          sub_10010FC20(&qword_1011929E0);
          inited = swift_initStackObject();
          *(inited + 16) = v39;
          *(inited + 32) = v29;
          v32 = v29;
          *(inited + 40) = Double._bridgeToObjectiveC()();
          sub_10010D2FC(inited);
          swift_setDeallocating();
          sub_1000095E8(inited + 32, &qword_1011929E8);
          sub_100009F78(0, &qword_101192200);
          sub_100009F78(0, &qword_101189A20);
          sub_10001C070(&unk_1011929F0, &qword_101192200);
          v33 = Dictionary._bridgeToObjectiveC()().super.isa;

          [v17 setStartTimeModifications:v33];
        }

        v34 = type metadata accessor for TaskPriority();
        (*(*(v34 - 8) + 56))(v4, 1, 1, v34);
        type metadata accessor for MainActor();
        v35 = v17;
        v36 = v1;
        v37 = static MainActor.shared.getter();
        v38 = swift_allocObject();
        v38[2] = v37;
        v38[3] = &protocol witness table for MainActor;
        v38[4] = v35;
        v38[5] = v36;
        sub_10086E3AC(0, 0, v4, &unk_100ECFFD0, v38);

        goto LABEL_23;
      }
    }

    v23 = 0;
    goto LABEL_18;
  }
}

uint64_t sub_1004B3DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[14] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v5[15] = swift_task_alloc();
  type metadata accessor for PlaybackIntentDescriptor(0);
  v5[16] = swift_task_alloc();
  v6 = type metadata accessor for AppInterfaceContext.Activity(0);
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();
  sub_10010FC20(&unk_1011841F0);
  v5[20] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[21] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[22] = v8;
  v5[23] = v7;

  return _swift_task_switch(sub_1004B3F60, v8, v7);
}

uint64_t sub_1004B3F60()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[13];
  v0[24] = qword_101218AD8;
  sub_10010FC20(&unk_10118ABA0);
  v3 = swift_allocObject();
  v0[25] = v3;
  *(v3 + 16) = xmmword_100EBDC20;
  v4 = Player.InsertCommand.init(location:playbackIntent:)(0, v1);
  *(v3 + 56) = &type metadata for Player.InsertCommand;
  *(v3 + 64) = &protocol witness table for Player.InsertCommand;
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  *(v3 + 96) = &type metadata for Player.ChangeCommand;
  *(v3 + 104) = &protocol witness table for Player.ChangeCommand;
  *(v3 + 72) = 1;
  v6 = type metadata accessor for AlbumDetailDataSource(0);
  v0[26] = v6;
  v0[5] = v6;
  v0[6] = &off_1010AEFD0;
  v0[2] = v2;
  v7 = v1;
  v8 = v2;
  v9 = swift_task_alloc();
  v0[27] = v9;
  *v9 = v0;
  v9[1] = sub_1004B40F0;

  return PlaybackController.perform(_:route:intent:issuer:)(v3, 0, 0, (v0 + 2));
}

uint64_t sub_1004B40F0()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);
    v4 = *(v2 + 184);
    v5 = sub_1004B4934;
  }

  else
  {

    sub_1000095E8(v2 + 16, &unk_101183910);
    v3 = *(v2 + 176);
    v4 = *(v2 + 184);
    v5 = sub_1004B424C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1004B424C()
{
  v1 = *(v0 + 104);
  v2 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v1 + v2, v0 + 80, &unk_1011926C0);
  if (*(v0 + 88))
  {

    sub_1000095E8(v0 + 80, &unk_1011926C0);
LABEL_9:
    v11 = *(v0 + 160);
    v12 = *(v0 + 104);
    (*(*(v0 + 144) + 56))(v11, 1, 1, *(v0 + 136));
    sub_1000095E8(v11, &unk_1011841F0);
    v13 = v12 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_lyricsSnippetData;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *v13 = 0;

    v14 = *(v0 + 8);

    return v14();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v0 + 80, &unk_1011926C0);
  if (!Strong || (v4 = sub_10003169C(), *(v0 + 232) = v4, Strong, !v4))
  {

    goto LABEL_9;
  }

  v5 = *(v0 + 152);
  v6 = &v5[*(sub_10010FC20(&unk_1011841E0) + 48)];
  *v5 = 1;
  type metadata accessor for AppInterfaceContext.Activity.Destination(0);
  swift_storeEnumTagMultiPayload();
  *v6 = 0;
  v6[1] = 0;
  swift_storeEnumTagMultiPayload();
  v7 = swift_task_alloc();
  *(v0 + 240) = v7;
  *v7 = v0;
  v7[1] = sub_1004B44AC;
  v9 = *(v0 + 152);
  v8 = *(v0 + 160);

  return sub_100706024(v8, v9);
}

uint64_t sub_1004B44AC()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  *(*v1 + 248) = v0;

  sub_1004E414C(v3, type metadata accessor for AppInterfaceContext.Activity);

  v4 = *(v2 + 184);
  v5 = *(v2 + 176);
  if (v0)
  {
    v6 = sub_1004B4A7C;
  }

  else
  {
    v6 = sub_1004B463C;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1004B463C()
{

  v1 = v0[20];
  v2 = v0[13];
  (*(v0[18] + 56))(v1, 0, 1, v0[17]);
  sub_1000095E8(v1, &unk_1011841F0);
  v3 = v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_lyricsSnippetData;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = 0;

  v4 = v0[1];

  return v4();
}

uint64_t sub_1004B472C()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  *(*v1 + 272) = v0;

  sub_1004E414C(v3, type metadata accessor for PlaybackIntentDescriptor);
  v4 = *(v2 + 184);
  v5 = *(v2 + 176);
  if (v0)
  {
    v6 = sub_1004B4BAC;
  }

  else
  {
    v6 = sub_1004B4898;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1004B4898()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004B4934()
{
  v14 = v0;
  sub_1000095E8((v0 + 2), &unk_101183910);
  v0[32] = v0[28];
  v1 = v0[26];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[13];
  v5 = v0[12];
  *v2 = v5;
  swift_storeEnumTagMultiPayload();
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v13[3] = v1;
  v13[4] = &off_1010AEFD0;
  v13[0] = v4;
  v6 = v5;
  v7 = v4;
  PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v2, v11, 3, 0, 0, 1, 0, 1, v3, 0, v13);
  v8 = swift_task_alloc();
  v0[33] = v8;
  *v8 = v0;
  v8[1] = sub_1004B472C;
  v9 = v0[16];

  return PlaybackController.add(_:route:)(v9, 0);
}

uint64_t sub_1004B4A7C()
{
  v14 = v0;
  v0[32] = v0[31];
  v1 = v0[26];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[13];
  v5 = v0[12];
  *v2 = v5;
  swift_storeEnumTagMultiPayload();
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v13[3] = v1;
  v13[4] = &off_1010AEFD0;
  v13[0] = v4;
  v6 = v5;
  v7 = v4;
  PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v2, v11, 3, 0, 0, 1, 0, 1, v3, 0, v13);
  v8 = swift_task_alloc();
  v0[33] = v8;
  *v8 = v0;
  v8[1] = sub_1004B472C;
  v9 = v0[16];

  return PlaybackController.add(_:route:)(v9, 0);
}

uint64_t sub_1004B4BAC()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1004B4C54(void *a1)
{
  v2 = v1;
  v148._rawValue = a1;
  v3 = type metadata accessor for UUID();
  v156 = *(v3 - 8);
  v157 = v3;
  __chkstk_darwin(v3);
  v155 = v133 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&unk_1011838D0);
  v153 = *(v5 - 8);
  v6 = *(v153 + 64);
  __chkstk_darwin(v5 - 8);
  v154 = v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v163 = (v133 - v8);
  v9 = sub_10010FC20(&unk_1011845D0);
  v151 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v11 = v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = v10;
  __chkstk_darwin(v12);
  v162 = v133 - v13;
  v14 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v14 - 8);
  v16 = v133 - v15;
  v17 = sub_10010FC20(&qword_1011848A0);
  __chkstk_darwin(v17 - 8);
  v19 = v133 - v18;
  v20 = sub_10010FC20(&unk_1011838E0);
  __chkstk_darwin(v20 - 8);
  v149 = v133 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v150 = v133 - v23;
  __chkstk_darwin(v24);
  v158 = v133 - v25;
  __chkstk_darwin(v26);
  v28 = v133 - v27;
  v29 = sub_10010FC20(&unk_10118AB20);
  __chkstk_darwin(v29 - 8);
  v159 = v133 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v161 = v133 - v32;
  v33 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v33 - 8);
  v35 = v133 - v34;
  v36 = type metadata accessor for Album();
  v164 = *(v36 - 8);
  v165 = v36;
  v37 = *(v164 + 64);
  __chkstk_darwin(v36);
  v147 = v133 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v160 = v133 - v39;
  v40 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v2 + v40, &v180, &unk_1011926C0);
  if (v181)
  {
    v41 = &unk_1011926C0;
    v42 = &v180;
LABEL_6:
    sub_1000095E8(v42, v41);
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(&v180, &unk_1011926C0);
  v146 = Strong;
  if (!Strong)
  {
    return 0;
  }

  v145 = v11;
  v44 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  sub_1000089F8(v2 + v44, v35, &unk_101184730);
  v46 = v164;
  v45 = v165;
  if ((*(v164 + 48))(v35, 1, v165) == 1)
  {

    v41 = &unk_101184730;
    v42 = v35;
    goto LABEL_6;
  }

  v140 = v6;
  v48 = v160;
  v138 = *(v46 + 32);
  v139 = v46 + 32;
  v138(v160, v35, v45);
  sub_10010FC20(&unk_101183900);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_100EBC6B0;
  *(v49 + 56) = v45;
  *(v49 + 64) = &protocol witness table for Album;
  v137 = v49;
  v50 = sub_10001C8B8((v49 + 32));
  v51 = *(v46 + 16);
  v52 = v48;
  v136 = v46 + 16;
  v53 = v51;
  v51(v50, v52, v45);
  v54 = v146;
  v55 = [v146 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v144 = v180;
  v56 = type metadata accessor for IndexPath();
  (*(*(v56 - 8) + 56))(v16, 1, 1, v56);
  sub_1004DB58C(v16, v19);
  sub_1000095E8(v16, &unk_10118BCE0);
  v57 = type metadata accessor for PlaybackIntentDescriptor(0);
  (*(*(v57 - 8) + 56))(v19, 0, 1, v57);
  sub_1004E40DC(v19, v28, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  sub_1004E414C(v19, type metadata accessor for PlaybackIntentDescriptor);
  v58 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v59 = *(v58 - 8);
  v134 = *(v59 + 56);
  v135 = v58;
  v133[1] = v59 + 56;
  (v134)(v28, 0, 1);
  v60 = type metadata accessor for AlbumDetailDataSource(0);
  v183 = &off_1010AEFD0;
  v182 = v60;
  v180 = v2;
  v61 = qword_10117F608;
  v62 = v2;
  v63 = v158;
  if (v61 != -1)
  {
    swift_once();
  }

  v64 = qword_101218AD8;
  sub_1000089F8(v28, v63, &unk_1011838E0);
  v143 = v64;
  v65 = UIViewController.playActivityInformation.getter();
  v141 = v66;
  v142 = v65;
  v68 = v67;
  v70 = v69;
  sub_1000089F8(&v180, &v172, &unk_101183910);
  if (*(&v173 + 1))
  {
    sub_100059A8C(&v172, &v176);
  }

  else
  {
    *&v184 = v54;
    sub_100009F78(0, &qword_101183D40);
    v71 = v54;
    sub_10010FC20(&unk_101183920);
    if (swift_dynamicCast())
    {
      sub_100059A8C(&v187, &v176);
    }

    else
    {
      v189 = 0;
      v187 = 0u;
      v188 = 0u;
      *&v176 = v71;
      v72 = v71;
      v73 = String.init<A>(reflecting:)();
      v177 = &type metadata for Player.CommandIssuerIdentity;
      v178 = &protocol witness table for Player.CommandIssuerIdentity;
      *&v176 = v73;
      *(&v176 + 1) = v74;
      if (*(&v188 + 1))
      {
        sub_1000095E8(&v187, &unk_101183910);
      }
    }

    v63 = v158;
    if (*(&v173 + 1))
    {
      sub_1000095E8(&v172, &unk_101183910);
    }
  }

  v75 = v161;
  Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v143, v63, v142, v141, v68, v70, &v176, v161);
  sub_1000095E8(v28, &unk_1011838E0);
  sub_1000095E8(&v180, &unk_101183910);
  v76 = type metadata accessor for Actions.PlaybackContext();
  v77 = *(v76 - 8);
  (*(v77 + 56))(v75, 0, 1, v76);
  v78 = type metadata accessor for PlaylistContext();
  (*(*(v78 - 8) + 56))(v162, 1, 1, v78);
  sub_10012B7A8(v148._rawValue, &v180);
  if (v62[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeOnlyDownloadedContent])
  {
    v79 = &off_10109A570;
  }

  else
  {
    v79 = &off_10109A598;
  }

  v148._rawValue = v79;
  sub_1004E0268(v163);
  v80 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v81 = v147;
  v82 = v165;
  v53(v147, v160, v165);
  v83 = (*(v164 + 80) + 24) & ~*(v164 + 80);
  v84 = swift_allocObject();
  *(v84 + 16) = v80;
  v142 = v84;
  v138((v84 + v83), v81, v82);
  sub_100008FE4(v137 + 32, v179);
  v158 = v80;

  sub_1000089F8(&v180, &v172, &unk_1011845E0);
  if (v175 == 1)
  {
    v189 = 0;
    v187 = 0u;
    v188 = 0u;
    v190 = xmmword_100EBCEF0;
    PresentationSource.init(viewController:position:)(v54, &v187, &v176);
    v85 = v159;
    if (v175 != 1)
    {
      sub_1000095E8(&v172, &unk_1011845E0);
    }
  }

  else
  {
    sub_10012B828(&v172, &v176);
    v85 = v159;
  }

  swift_getObjectType();
  v86 = swift_conformsToProtocol2();
  if (v86)
  {
    v139 = v86;
    v87 = v54;
    v141 = v54;
  }

  else
  {
    v141 = 0;
    v139 = 0;
  }

  v147 = swift_allocBox();
  v89 = v88;
  sub_1000089F8(v161, v85, &unk_10118AB20);
  v90 = *(v77 + 48);
  if (v90(v85, 1, v76) == 1)
  {
    v91 = v150;
    v134(v150, 1, 1, v135);
    v174 = 0;
    v172 = 0u;
    v173 = 0u;
    sub_1000089F8(v91, v149, &unk_1011838E0);
    v143 = v143;
    v92 = UIViewController.playActivityInformation.getter();
    v138 = v93;
    v94 = v54;
    v96 = v95;
    v98 = v97;
    sub_1000089F8(&v172, &v170, &unk_101183910);
    if (v171)
    {
      sub_100059A8C(&v170, &v184);
      v99 = v140;
    }

    else
    {
      v169 = v94;
      sub_100009F78(0, &qword_101183D40);
      v100 = v94;
      sub_10010FC20(&unk_101183920);
      if (swift_dynamicCast())
      {
        sub_100059A8C(&v166, &v184);
        v99 = v140;
      }

      else
      {
        v168 = 0;
        v166 = 0u;
        v167 = 0u;
        *&v184 = v100;
        v101 = v100;
        v102 = String.init<A>(reflecting:)();
        *(&v185 + 1) = &type metadata for Player.CommandIssuerIdentity;
        v186 = &protocol witness table for Player.CommandIssuerIdentity;
        *&v184 = v102;
        *(&v184 + 1) = v103;
        v99 = v140;
        if (*(&v167 + 1))
        {
          sub_1000095E8(&v166, &unk_101183910);
        }
      }

      if (v171)
      {
        sub_1000095E8(&v170, &unk_101183910);
      }
    }

    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v143, v149, v92, v138, v96, v98, &v184, v89);
    sub_1000095E8(&v172, &unk_101183910);
    sub_1000095E8(v150, &unk_1011838E0);
    v104 = v159;
    v105 = v90(v159, 1, v76);
    v54 = v146;
    if (v105 != 1)
    {
      sub_1000095E8(v104, &unk_10118AB20);
    }
  }

  else
  {
    sub_1004E59E0(v85, v89, type metadata accessor for Actions.PlaybackContext);
    v99 = v140;
  }

  v106 = &v89[*(v76 + 28)];
  sub_1000089F8(v106, &v184, &unk_101183910);
  if (*(&v185 + 1))
  {
    sub_100059A8C(&v184, &v172);
  }

  else
  {
    *&v172 = v54;
    v107 = v54;
    v108 = String.init<A>(reflecting:)();
    *(&v173 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v174 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v172 = v108;
    *(&v172 + 1) = v109;
    if (*(&v185 + 1))
    {
      sub_1000095E8(&v184, &unk_101183910);
    }
  }

  sub_10010FC20(&unk_101183930);
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_100EBDC20;
  *(v110 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v110 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v110 + 32) = 0x4D747865746E6F43;
  *(v110 + 40) = 0xEB00000000756E65;
  sub_100008FE4(&v172, v110 + 72);
  v111 = static Player.CommandIssuer<>.combining(_:)();
  v113 = v112;

  sub_10000959C(&v172);
  *(&v173 + 1) = &type metadata for Player.CommandIssuerIdentity;
  v174 = &protocol witness table for Player.CommandIssuerIdentity;
  *&v172 = v111;
  *(&v172 + 1) = v113;
  sub_10006B010(&v172, v106, &unk_101183910);
  sub_100008FE4(v179, &v172);
  sub_10010FC20(&unk_10118AB50);
  v159 = String.init<A>(describing:)();
  v150 = v114;
  v149 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100008FE4(v179, &v170);
  sub_10012B7A8(&v176, &v172);
  v115 = v154;
  sub_1000089F8(v163, v154, &unk_1011838D0);
  v116 = v145;
  sub_1000089F8(v162, v145, &unk_1011845D0);
  v117 = (*(v153 + 80) + 160) & ~*(v153 + 80);
  v118 = (v99 + v117 + 7) & 0xFFFFFFFFFFFFFFF8;
  v119 = (v118 + 15) & 0xFFFFFFFFFFFFFFF8;
  v120 = (*(v151 + 80) + v119 + 8) & ~*(v151 + 80);
  v121 = (v120 + v152 + 7) & 0xFFFFFFFFFFFFFFF8;
  v122 = (v120 + v152 + 31) & 0xFFFFFFFFFFFFFFF8;
  v123 = swift_allocObject();
  sub_100059A8C(&v170, v123 + 16);
  *(v123 + 56) = v144;
  sub_10012B828(&v172, v123 + 64);
  sub_10003D17C(v115, v123 + v117, &unk_1011838D0);
  *(v123 + v118) = v149;
  *(v123 + v119) = v147;
  sub_10003D17C(v116, v123 + v120, &unk_1011845D0);
  v124 = v123 + v121;
  v125 = v142;
  v126 = v139;
  *v124 = v141;
  *(v124 + 8) = v126;
  *(v124 + 16) = 2;
  v127 = (v123 + v122);
  *v127 = sub_1004E9A00;
  v127[1] = v125;
  swift_unknownObjectRetain();

  v128 = v155;
  UUID.init()();
  v129 = UUID.uuidString.getter();
  v131 = v130;
  (*(v156 + 8))(v128, v157);
  v191._countAndFlagsBits = v159;
  v191._object = v150;
  ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(v191, v129, v131, sub_10021953C, v123, &v184);
  swift_unknownObjectRelease();
  sub_10012BA6C(&v176);
  sub_10000959C(v179);

  v132 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(v148, 0);

  v176 = v184;
  sub_100015BB0(&v176);
  v172 = v185;
  sub_100015BB0(&v172);

  sub_1000095E8(v163, &unk_1011838D0);
  sub_1000095E8(&v180, &unk_1011845E0);
  sub_1000095E8(v162, &unk_1011845D0);
  sub_1000095E8(v161, &unk_10118AB20);
  (*(v164 + 8))(v160, v165);

  return v132;
}