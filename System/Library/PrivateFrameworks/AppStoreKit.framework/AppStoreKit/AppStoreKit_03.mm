char *sub_1E135E728(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2600);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 160);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[160 * v8])
    {
      memmove(v12, v13, 160 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 160 * v8);
  }

  return v10;
}

void *sub_1E135E844(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2728);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5D40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E135E978(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8F80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1E135EA88(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB26D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB26E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E135EBD0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2808);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2810);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E135ED04(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2550);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 216);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[216 * v8])
    {
      memmove(v12, v13, 216 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E135EE2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB26D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1E135EF20(void *result, int64_t a2, char a3, void *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = a4[3];
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

  v9 = a4[2];
  if (v8 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (v6)
  {
    if (v11 < a4 || v11 + 4 >= &a4[3 * v9 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_1E135F058(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB26A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB26B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E135F18C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
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
    v14 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

size_t sub_1E135F2C0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
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

void *sub_1E135F49C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2638);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[18 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 144 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2640);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E135F5EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2630);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1E135F6F8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 40);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[40 * v9])
    {
      memmove(v13, v14, 40 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_1E135F818(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
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
    v14 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_1E135F94C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
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
    v11 = MEMORY[0x1E69E7CC0];
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

char *sub_1E135FA64(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 72);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[72 * v9])
    {
      memmove(v13, v14, 72 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_1E135FBAC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

unint64_t sub_1E135FCF4(uint64_t a1)
{
  v2 = sub_1E1AF6F2C();

  return sub_1E135FD38(a1, v2);
}

unint64_t sub_1E135FD38(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1E134E724(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1E68FFC60](v9, a1);
      sub_1E134B88C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1E135FE00()
{
  v1 = qword_1EE2169B0;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E135FE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v69 = a7;
  v70 = a8;
  v67 = a4;
  v68 = a6;
  v64 = a5;
  v65 = a3;
  v63 = a2;
  v66 = a1;
  v10 = *v8;
  v11 = *v8;
  v56 = sub_1E1AF361C();
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v54 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E1AF68DC();
  v61 = *(v13 - 8);
  v62 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v60 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v15);
  v59 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v17 - 8);
  *&v8[qword_1EE2169B8] = 0;
  v18 = MEMORY[0x1E69E7CC0];
  *&v8[qword_1EE2169A0] = MEMORY[0x1E69E7CC0];
  v8[qword_1EE1ED400] = 0;
  v19 = *(*v8 + 640);
  v73 = *(v10 + 592);
  v20 = v73;
  v21 = *(v11 + 576);
  v57 = *(v11 + 552);
  v58 = v21;
  v71 = v57;
  v72 = v21;
  type metadata accessor for DiffablePageContentPresenter.PageFetchResult();
  v22 = sub_1E1AF462C();
  v23 = *(*(v22 - 8) + 56);
  v23(&v8[v19], 1, 1, v22);
  v24 = *(*v8 + 648);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2500);
  (*(*(v25 - 8) + 56))(&v8[v24], 1, 1, v25);
  v26 = *(*v8 + 656);
  v71 = v57;
  v72 = v58;
  v73 = v20;
  type metadata accessor for DiffablePageContentPresenter.IncompleteShelfFetchResult();
  v27 = sub_1E1AF462C();
  (*(*(v27 - 8) + 56))(&v8[v26], 1, 1, v27);
  v23(&v9[*(*v9 + 664)], 1, 1, v22);
  v28 = *(*v8 + 672);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2508);
  (*(*(v29 - 8) + 56))(&v8[v28], 1, 1, v29);
  v30 = *(*v8 + 680);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2510);
  (*(*(v31 - 8) + 56))(&v8[v30], 1, 1, v31);
  v32 = *(*v8 + 688);
  sub_1E1361A80();
  sub_1E1AF322C();
  *&v71 = v18;
  sub_1E1361ACC(&qword_1EE1E3438, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90);
  sub_1E1302CD4(&qword_1EE1E34D8, &unk_1ECEB7A90);
  sub_1E1AF6EEC();
  (*(v61 + 104))(v60, *MEMORY[0x1E69E8090], v62);
  v33 = v63;
  v34 = v64;
  v35 = v65;
  *&v8[v32] = sub_1E1AF692C();
  v36 = v66;
  sub_1E13C6184(&v9[*(*v9 + 696)]);
  v37 = &v9[*(*v9 + 704)];
  *v37 = 0u;
  *(v37 + 1) = 0u;
  *(v37 + 25) = 0u;
  v38 = *(*v8 + 712);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27C8);
  swift_allocObject();
  *&v8[v38] = sub_1E1AF5BEC();
  v39 = *(*v8 + 720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27D0);
  swift_allocObject();
  *&v8[v39] = sub_1E1AF5BEC();
  v40 = *(*v8 + 728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2598);
  swift_allocObject();
  *&v8[v40] = sub_1E1AF5BEC();
  *&v8[*(*v8 + 736)] = 0;
  v41 = &v9[*(*v9 + 752)];
  *v41 = 0;
  *(v41 + 1) = 0;
  sub_1E134FD1C(v33, &v8[qword_1EE2169A8], &unk_1ECEB4B60);
  sub_1E134FD1C(v34, &v9[*(*v9 + 744)], &qword_1ECEB24F8);
  v42 = objc_allocWithZone(type metadata accessor for InlineUnifiedMessagePresenter());

  v44 = InlineUnifiedMessagePresenter.init(objectGraph:)(v43);
  v45 = v67;
  *&v9[qword_1EE2169B0] = v44;
  if (v35 && v45)
  {
    sub_1E1AF50BC();
    *&v71 = v45;

    v46 = v54;
    sub_1E1AF35FC();
    v47 = sub_1E1AF41CC();
    (*(v55 + 8))(v46, v56);
    v48 = v70;
  }

  else
  {
    v48 = v70;

    v47 = v36;
  }

  v49 = v68;
  swift_unknownObjectRetain();
  v50 = TimedMetricsPagePresenter.init(objectGraph:impressionsTracker:impressionsCalculator:)(v47, v49, v69, v48);
  v51 = *(*v50 + 1112);

  *(v50 + qword_1EE2169B8) = v51(v35);

  sub_1E135723C(0);

  sub_1E1308058(v34, &qword_1ECEB24F8);
  sub_1E1308058(v33, &unk_1ECEB4B60);
  return v50;
}

uint64_t sub_1E1360798(uint64_t a1)
{
  v2 = *(v1 + qword_1EE2169B8);
  *(v1 + qword_1EE2169B8) = a1;

  sub_1E135723C(v2);
}

uint64_t sub_1E13607E4()
{
  v1 = *(*v0 + 712);
  swift_beginAccess();
  return *(v0 + v1);
}

void *sub_1E1360850(void *result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {

    return sub_1E1300EA8(a2);
  }

  else if (!a4)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1E1360914(uint64_t a1, char a2)
{
  if ((a2 & 0x80) == 0)
  {
  }

  return result;
}

uint64_t sub_1E1360934(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24D8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E13609A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27B8);
    v3 = sub_1E1AF72CC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E134FD1C(v4, v13, &qword_1ECEBCAA0);
      result = sub_1E135FCF4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1E1301CF0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1E1360BAC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E1360BE8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1E1360C40()
{
  sub_1E130072C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DiffablePageContentPresenter.PageFetchResult();
    sub_1E1AF462C();
    sub_1E1AF6D9C();
    if (v1 <= 0x3F)
    {
      sub_1E1300690(319, &qword_1EE1E3A30, &qword_1ECEB2500);
      if (v2 <= 0x3F)
      {
        type metadata accessor for DiffablePageContentPresenter.IncompleteShelfFetchResult();
        sub_1E1AF462C();
        sub_1E1AF6D9C();
        if (v3 <= 0x3F)
        {
          sub_1E1300690(319, &qword_1EE1E3A18, &qword_1ECEB2508);
          if (v4 <= 0x3F)
          {
            sub_1E1300690(319, &qword_1EE1E3A00, &qword_1ECEB2510);
            if (v5 <= 0x3F)
            {
              sub_1E1361428();
              if (v6 <= 0x3F)
              {
                swift_initClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1E1361428()
{
  if (!qword_1EE1E60D0[0])
  {
    type metadata accessor for Shelf();
    sub_1E1361ACC(&qword_1EE1E5478, type metadata accessor for Shelf);
    v0 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot();
    if (!v1)
    {
      atomic_store(v0, qword_1EE1E60D0);
    }
  }
}

uint64_t sub_1E13614D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresenterError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E1361548(uint64_t a1)
{
  v2 = type metadata accessor for PresenterError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1E13615A4(void *a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {

    return a1;
  }

  else
  {
    swift_unknownObjectRetain();
  }
}

uint64_t (*sub_1E1361798())(uint64_t a1)
{
  v1 = (*(v0 + 16))();
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_1E13617F8;
}

uint64_t sub_1E1361804(__int128 *a1)
{
  v2 = *(a1 + 16);
  v4 = *a1;
  v5 = v2;
  return (*(*v1 + 1208))(&v4);
}

uint64_t sub_1E1361860(__int128 *a1)
{
  v2 = *(a1 + 2);
  v4 = *a1;
  v5 = v2;
  v6 = *(a1 + 24);
  return (*(*v1 + 1200))(&v4);
}

uint64_t sub_1E13618C4(uint64_t *a1)
{
  v2 = *(a1 + 8);
  v4 = *a1;
  v5 = v2;
  return (*(*v1 + 1216))(&v4);
}

uint64_t sub_1E1361920(__int128 *a1)
{
  v2 = *(a1 + 16);
  v4 = *a1;
  v5 = v2;
  return (*(*v1 + 1176))(&v4);
}

uint64_t sub_1E13619D8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

id sub_1E1361A40(id result, unsigned __int8 a2)
{
  v2 = a2 >> 6;
  if (v2 == 2)
  {
    return result;
  }

  if (v2 == 1)
  {
  }

  return result;
}

void sub_1E1361A60(void *a1, unsigned __int8 a2)
{
  v2 = a2 >> 6;
  if (v2 == 2)
  {
  }

  else if (v2 == 1)
  {
  }
}

unint64_t sub_1E1361A80()
{
  result = qword_1EE1E3430;
  if (!qword_1EE1E3430)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE1E3430);
  }

  return result;
}

uint64_t sub_1E1361ACC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t GenericPagePresenter.__allocating_init(objectGraph:personalizationProvider:page:pageUrl:supportsFastImpressions:adLifecycleMetricReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v18[-v13 - 8];
  swift_allocObject();
  sub_1E134FD1C(a4, v14, &unk_1ECEB4B60);
  sub_1E134FD1C(a6, v18, &qword_1ECEB24F8);
  v15 = sub_1E1378FC8(a1, a2, a3, v14, a5, v18);

  sub_1E1308058(a6, &qword_1ECEB24F8);
  sub_1E1308058(a4, &unk_1ECEB4B60);
  return v15;
}

uint64_t GenericPagePresenter.init(objectGraph:personalizationProvider:page:pageUrl:supportsFastImpressions:adLifecycleMetricReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v18[-v13 - 8];
  sub_1E134FD1C(a4, &v18[-v13 - 8], &unk_1ECEB4B60);
  sub_1E134FD1C(a6, v18, &qword_1ECEB24F8);
  v15 = sub_1E1378FC8(a1, a2, a3, v14, a5, v18);

  sub_1E1308058(a6, &qword_1ECEB24F8);
  sub_1E1308058(a4, &unk_1ECEB4B60);
  return v15;
}

uint64_t BaseGenericPagePresenter.init(objectGraph:personalizationProvider:page:pageUrl:supportsFastImpressions:adLifecycleMetricReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v6 = sub_1E1379AE4(a1, a2, a3, a4, a5, a6);

  return v6;
}

uint64_t sub_1E1361E3C()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_1ECEB1108 != -1)
  {
    swift_once();
  }

  [v1 removeObserver:v0 name:qword_1EE1D2488 object:*(v0 + qword_1EE1D97A0)];

  v2 = BasePresenter.deinit();

  sub_1E1337DEC(v2 + qword_1EE215800);
  sub_1E1308058(v2 + qword_1ECEF4210, &qword_1ECEB24F8);
  sub_1E1308058(v2 + qword_1EE2157F8, &unk_1ECEB4B60);

  sub_1E1308058(v2 + qword_1EE215810, &qword_1ECEB2DF0);

  sub_1E1361B18(*(v2 + qword_1ECEF4218), *(v2 + qword_1ECEF4218 + 8));

  return v2;
}

uint64_t BaseGenericPagePresenter.deinit()
{
  sub_1E136483C();
  v0 = BasePresenter.deinit();

  sub_1E1337DEC(v0 + qword_1EE215800);
  sub_1E1308058(v0 + qword_1ECEF4210, &qword_1ECEB24F8);
  sub_1E1308058(v0 + qword_1EE2157F8, &unk_1ECEB4B60);

  sub_1E1308058(v0 + qword_1EE215810, &qword_1ECEB2DF0);

  sub_1E1361B18(*(v0 + qword_1ECEF4218), *(v0 + qword_1ECEF4218 + 8));

  return v0;
}

uint64_t sub_1E13621D4()
{
  v1 = sub_1E1AEFE6C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v23[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = sub_1E1771E40();
  if (*(v0 + qword_1EE1D97B0))
  {
    if (sub_1E1362EF0())
    {
      v7 = v6;
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 24);
      v10 = v2;
      v11 = *(v9 + 32);

      v11(v12, ObjectType, v9);
      v2 = v10;

      swift_unknownObjectRelease();
    }

    if (sub_1E1362EF0())
    {
      v14 = v13;
      v15 = swift_getObjectType();
      (*(v14 + 32))(*(v0 + qword_1EE1D97A8), v15, v14);
      swift_unknownObjectRelease();
    }

    v16 = *(*v0 + 704);

    v16(v17, 0);

    *(v0 + qword_1EE1D97B0) = 0;
  }

  if (*(v0 + qword_1EE1D9788) == 1)
  {
    result = swift_beginAccess();
    v18 = v0[2];
    if (v18)
    {

      sub_1E1AEFE5C();
      sub_1E1AEFE1C();
      v20 = v19;
      (*(v2 + 8))(v4, v1);
      v21 = v18 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_rootViewModelPresentTime;
      swift_beginAccess();
      *v21 = v20;
      *(v21 + 8) = 0;
      v22 = *(v18 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasViewModelPresentTime[0]);
      swift_beginAccess();
      *(v22 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1E149DEE8();
      }
    }
  }

  return result;
}

uint64_t sub_1E13624AC(char a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1E1AF504C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22[-1] - v10;
  v12 = sub_1E1AEFCCC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v22[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(v4 + 264))(v14);
  if ((result & 1) == 0)
  {
    v18 = qword_1EE215818;
    result = swift_beginAccess();
    if ((*(v2 + v18) & 1) == 0 && (*(v2 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_isFetchingShelves) & 1) == 0)
    {
      sub_1E134FD1C(v2 + qword_1EE2157F8, v11, &unk_1ECEB4B60);
      if ((*(v13 + 48))(v11, 1, v12) == 1)
      {
        return sub_1E1308058(v11, &unk_1ECEB4B60);
      }

      else
      {
        (*(v13 + 32))(v16, v11, v12);
        if (*(v2 + qword_1EE1D9788) != 1 || (a1 & 1) != 0)
        {
          (*(*v2 + 576))(1);
          swift_beginAccess();
          if (v2[3])
          {
            *v8 = 1;
            (*(v6 + 104))(v8, *MEMORY[0x1E69AB450], v5);

            sub_1E1AF509C();

            (*(v6 + 8))(v8, v5);
          }

          (*(*v2 + 1136))(v16);
          v19 = sub_1E1361A80();
          swift_retain_n();
          v20 = sub_1E1AF68EC();
          v22[3] = v19;
          v22[4] = MEMORY[0x1E69AB720];
          v22[0] = v20;
          sub_1E1AF57FC();

          __swift_destroy_boxed_opaque_existential_1(v22);
        }

        return (*(v13 + 8))(v16, v12);
      }
    }
  }

  return result;
}

uint64_t sub_1E13628D4(char a1)
{
  v2 = v1;
  v4 = sub_1E1AF3C1C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1E1AF3BEC();
    v8 = type metadata accessor for BaseGenericPagePresenter();
    WitnessTable = swift_getWitnessTable();
    MetricsPagePresenter.sendEventsFor(invocationPoint:)(v7, v8, WitnessTable);
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    swift_getObjectType();
    sub_1E1AF477C();
  }

  if (*(v2 + qword_1ECEB2820))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    [Strong invalidate];

    swift_unknownObjectWeakAssign();
  }

  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  swift_beginAccess();
  sub_1E137F8F8(&v18, v2 + 40, &qword_1ECEB2588);
  swift_endAccess();
  sub_1E138B568();
  sub_1E1308058(&v18, &qword_1ECEB2588);
  v11 = *(v2 + qword_1EE2157F0);
  *(v2 + qword_1EE2157F0) = MEMORY[0x1E69E7CC0];
  sub_1E13658DC(v11);

  v12 = *(v2 + qword_1EE1D9790);
  *(v2 + qword_1EE1D9790) = MEMORY[0x1E69E7CD0];
  sub_1E1366A10(v12);

  v18 = 0u;
  v19 = 0u;
  sub_1E1363438(&v18);
  *(v2 + qword_1EE1D9788) = 0;
  (*(*v2 + 576))(0);
  sub_1E137A474(0);
  result = sub_1E1362EF0();
  if (result)
  {
    v15 = v14;
    ObjectType = swift_getObjectType();
    (*(*(*(v15 + 24) + 16) + 8))(ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E1362BEC()
{
  sub_1E137A460();
}

uint64_t sub_1E1362C14(uint64_t a1)
{
  sub_1E137A474(a1);
}

uint64_t sub_1E1362C4C(unint64_t a1, uint64_t a2)
{
  v5 = *(v2 + qword_1EE2157F0);

  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = sub_1E14E7234(v5);
    v5 = result;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20) = a2;

  v7 = *(v2 + qword_1EE2157F0);
  *(v2 + qword_1EE2157F0) = v5;
  sub_1E13658DC(v7);
}

uint64_t sub_1E1362D0C()
{
  v1 = *(v0 + qword_1EE2157F0);
  if (v1 >> 62)
  {
    return sub_1E1AF71CC();
  }

  else
  {
    return *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

unint64_t sub_1E1362D3C(unint64_t result)
{
  v2 = *(v1 + qword_1EE2157F0);
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = result;

    v4 = MEMORY[0x1E68FFD80](v3, v2);

    return v4;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= result)
  {
LABEL_9:
    __break(1u);
    return result;
  }
}

BOOL sub_1E1362DD4(unint64_t a1)
{
  v2 = *(v1 + qword_1EE2157F0);
  if (v2 >> 62)
  {
    v5 = a1;
    v6 = sub_1E1AF71CC();
    if (v6 < 0)
    {
      __break(1u);
    }

    v3 = v6;
    a1 = v5;
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3 > a1;
}

BOOL sub_1E1362E3C()
{
  v1 = sub_1E1AF019C();
  if (!sub_1E1362DD4(v1))
  {
    return 0;
  }

  v2 = sub_1E1AF019C();
  v3 = *((*(*v0 + 752))(v2) + 24);

  v4 = *(v3 + 16);

  return sub_1E1AF018C() < v4;
}

uint64_t sub_1E1362F40(uint64_t a1, uint64_t a2)
{
  sub_1E137A4D8(a1, a2);

  return swift_unknownObjectRelease();
}

void (*sub_1E1362F78(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_1EE215800;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1E1363018;
}

void sub_1E1363018(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
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

uint64_t sub_1E13630A0(uint64_t a1)
{
  v13 = a1;
  v1 = sub_1E1AEFCCC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AnyGenericPageIntent();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  type metadata accessor for JSIntentDispatcher();
  sub_1E1AF421C();
  sub_1E1AF55EC();
  (*(v2 + 16))(v4, v13, v1);
  AnyGenericPageIntent.init(url:)(v4, v8);
  sub_1E1AF4C1C();

  sub_1E1AF422C();
  swift_beginAccess();

  sub_1E1AF4BEC();

  v9 = sub_1E1AF4BFC();

  WitnessTable = swift_getWitnessTable();
  v11 = sub_1E162D870(v8, v9, "AppStoreKit/GenericPagePresenter.swift", 38, 2, v5, WitnessTable);

  (*(v6 + 8))(v8, v5);
  return v11;
}

uint64_t sub_1E1363378(uint64_t a1)
{
  v3 = qword_1ECEB2818;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1E13633D0@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EE215810;
  swift_beginAccess();
  return sub_1E134FD1C(v1 + v3, a1, &qword_1ECEB2DF0);
}

uint64_t sub_1E1363438(uint64_t a1)
{
  v3 = qword_1EE215810;
  swift_beginAccess();
  sub_1E137F818(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1E13634D0()
{
  sub_1E137A53C();
}

uint64_t sub_1E13634F8(uint64_t a1)
{
  v3 = qword_1EE215808;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1E13635B0(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  v27 = sub_1E1AEFE6C();
  v26 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v9 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_isIncomplete) ^ 1;
  }

  else
  {
    v9 = 1;
  }

  *(v2 + qword_1EE1D9788) = v9 & 1;
  *(v2 + qword_1EE1D97A8) = *(a1 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_presentationOptions);
  v11 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title);
  v10 = *(a1 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_title + 8);
  v12 = (v3 + qword_1EE2157E8);

  swift_beginAccess();
  *v12 = v11;
  v12[1] = v10;

  v14 = (*(*a1 + 280))(v13);
  v15 = qword_1EE215808;
  swift_beginAccess();
  *(v3 + v15) = v14;

  v16 = *(v6 + 960);
  v29 = v16;
  v30 = &protocol witness table for BasePage;
  WitnessTable = swift_getWitnessTable();
  v31 = WitnessTable;
  v28[0] = a1;
  swift_beginAccess();

  sub_1E137F8F8(v28, (v3 + 5), &qword_1ECEB2588);
  swift_endAccess();
  sub_1E138B568();
  result = sub_1E1308058(v28, &qword_1ECEB2588);
  if (*(v3 + qword_1EE1D9788) == 1)
  {
    if ((a2 & 1) != 0 && (*(a1 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_isIncomplete) & 1) == 0)
    {
      swift_beginAccess();
      if (v3[2])
      {

        sub_1E1AEFE5C();
        sub_1E1AEFE1C();
        v20 = v19;
        (*(v26 + 8))(v8, v27);
        PendingPageRender.initialRequestEndTime.setter(v20, 0);
      }
    }

    swift_beginAccess();
    if (v3[2])
    {
      v30 = &protocol witness table for BasePage;
      v31 = WitnessTable;
      v29 = v16;
      v28[0] = a1;

      PendingPageRender.use(pageRenderEventFrom:)(v28);

      sub_1E1308058(v28, &qword_1ECEB2588);
    }

    v21 = v3 + qword_1ECEF4218;
    swift_beginAccess();
    v22 = *v21;
    if (*v21)
    {
      v23 = *(v21 + 1);
      v24 = sub_1E1300E34(v22);
      v22(v24);
      sub_1E1361B18(v22, v23);
    }

    return sub_1E13639D8(0, 0);
  }

  return result;
}

uint64_t sub_1E136399C()
{
  v0 = sub_1E137A580(&qword_1ECEF4218);
  sub_1E1300E34(v0);
  return v0;
}

uint64_t sub_1E13639D8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1ECEF4218);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1E1361B18(v6, v7);
}

uint64_t sub_1E1363A98(uint64_t (*a1)(void), uint64_t a2)
{
  if (*(v2 + qword_1EE1D9788) == 1)
  {
    return a1();
  }

  return sub_1E13639D8(a1, a2);
}

uint64_t sub_1E1363B14()
{
  v0 = sub_1E137A580(&qword_1EE2157E8);

  return v0;
}

uint64_t sub_1E1363B54(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_1EE2157E8);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1E1363BB4()
{
  v1 = qword_1EE215818;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E1363BF8(char a1)
{
  v3 = qword_1EE215818;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_1E13660D4();
}

uint64_t (*sub_1E1363C4C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1E1363CB0;
}

uint64_t sub_1E1363CB0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1E13660D4();
  }

  return result;
}

BOOL sub_1E1363CE4()
{
  v1 = qword_1EE215810;
  swift_beginAccess();
  sub_1E134FD1C(v0 + v1, v4, &qword_1ECEB2DF0);
  v2 = v5 != 0;
  sub_1E1308058(v4, &qword_1ECEB2DF0);
  return v2;
}

uint64_t sub_1E1363D70()
{
  v1 = v0;
  v2 = qword_1EE215810;
  swift_beginAccess();
  sub_1E134FD1C(v1 + v2, &v10, &qword_1ECEB2DF0);
  if (!v11)
  {
    return sub_1E1308058(&v10, &qword_1ECEB2DF0);
  }

  v3 = sub_1E1301CF0(&v10, v14);
  if ((*(*v1 + 1400))(v3))
  {
    v4 = qword_1EE215818;
    swift_beginAccess();
    *(v1 + v4) = 1;
    sub_1E13660D4();
    type metadata accessor for JSIntentDispatcher();
    v5 = *(v1 + OBJC_IVAR____TtC11AppStoreKit13BasePresenter_objectGraph);
    sub_1E1AF421C();
    sub_1E1AF55EC();
    sub_1E137A5C4(v14, v13);
    sub_1E1368D30(v13, v5, "AppStoreKit/GenericPagePresenter.swift", 38, 2);
    v6 = sub_1E1361A80();
    swift_retain_n();
    v7 = sub_1E1AF68EC();
    v11 = v6;
    v12 = MEMORY[0x1E69AB720];
    *&v10 = v7;
    sub_1E1AF57FC();

    sub_1E137A630(v13);
    __swift_destroy_boxed_opaque_existential_1(v14);
    v8 = &v10;
  }

  else
  {
    v8 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_1E1363F9C(uint64_t a1, void *a2, void (*a3)(uint64_t))
{
  v4 = *(v3 + *a2);
  *(v3 + *a2) = a1;
  a3(v4);
}

uint64_t sub_1E1364004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  result = sub_1E1AF667C();
  if ((result & 1) == 0 && (*(v3 + qword_1EE1D9798) & 1) == 0)
  {
    v12 = *(v3 + qword_1EE1D97A0);
    if (v12)
    {
      *(v4 + qword_1EE1D9798) = 1;
      v13 = *(v4 + qword_1EE1D9790);

      v19[2] = v12;
      v19[1] = sub_1E15E75E8(v13);

      (*(v9 + 16))(v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
      v14 = (*(v9 + 80) + 48) & ~*(v9 + 80);
      v15 = swift_allocObject();
      *(v15 + 2) = *(v8 + 960);
      *(v15 + 3) = a2;
      *(v15 + 4) = a3;
      *(v15 + 5) = v4;
      (*(v9 + 32))(&v15[v14], v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
      v16 = swift_allocObject();
      v16[2] = a2;
      v16[3] = a3;
      v16[4] = v4;
      v17 = sub_1E1361A80();
      swift_retain_n();
      v18 = sub_1E1AF68EC();
      v20[3] = v17;
      v20[4] = MEMORY[0x1E69AB720];
      v20[0] = v18;
      sub_1E1AF57FC();

      return __swift_destroy_boxed_opaque_existential_1(v20);
    }
  }

  return result;
}

uint64_t sub_1E1364278(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1E1300B24(a1, v27);
  sub_1E1300B24(a2, &v28);
  v5 = *(v3 + qword_1EE2157F0);
  v24 = v27;

  v6 = sub_1E1366D10(sub_1E137AEB8, v23, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    v22 = v6;
    v9 = (*(*v3 + 752))(v6);
    v10 = *(v9 + 24);
    MEMORY[0x1EEE9AC00](v9);

    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = 0;
      v13 = v10 + 32;
      while (1)
      {
        v14 = sub_1E137AED8(v13);
        if (v14)
        {
          break;
        }

        ++v12;
        v13 += 40;
        if (v11 == v12)
        {
          v12 = 0;
          break;
        }
      }

      v15 = v14 ^ 1;
    }

    else
    {
      v12 = 0;
      v15 = 1;
    }

    v16 = v15 & 1;

    if ((v16 & 1) == 0)
    {
      v26 = *(v9 + 24);

      sub_1E14878B0(v12, v25);
      __swift_destroy_boxed_opaque_existential_1(v25);
      v25[0] = 100;
      Shelf.withItems(_:ofType:removeMarkers:isHidden:)(v26, v25, 1, 2);

      if (sub_1E1362EF0())
      {
        v18 = v17;
        swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2658);
        sub_1E1AF01FC();
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_1E1B02CC0;
        v20 = MEMORY[0x1E68F8EA0](v12, v22);
        MEMORY[0x1EEE9AC00](v20);
        (*(v18 + 40))(v19, sub_1E137AEF8);

        swift_unknownObjectRelease();
        return sub_1E1308058(v27, &qword_1ECEB2858);
      }
    }
  }

  return sub_1E1308058(v27, &qword_1ECEB2858);
}

void sub_1E13645C4()
{
  v1 = *(v0 + qword_1ECEB2820);
  if (v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
    }

    else
    {
      v3 = *(v1 + 16);
      v4 = swift_allocObject();
      swift_weakInit();
      v9[4] = sub_1E137A684;
      v9[5] = v4;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 1107296256;
      v9[2] = sub_1E1367148;
      v9[3] = &block_descriptor_0;
      v5 = _Block_copy(v9);
      v6 = objc_opt_self();

      v7 = [v6 timerWithTimeInterval:0 repeats:v5 block:v3];
      _Block_release(v5);

      v8 = [objc_opt_self() mainRunLoop];
      [v8 addTimer:v7 forMode:*MEMORY[0x1E695DA28]];

      swift_unknownObjectWeakAssign();
    }
  }
}

void sub_1E1364778()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = v1;
  if (qword_1ECEB1108 != -1)
  {
    swift_once();
    v1 = v2;
  }

  [v1 addObserver:v0 selector:? name:? object:?];
}

void sub_1E136483C()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = v1;
  if (qword_1ECEB1108 != -1)
  {
    swift_once();
    v1 = v2;
  }

  [v1 removeObserver:v0 name:qword_1EE1D2488 object:*(v0 + qword_1EE1D97A0)];
}

uint64_t sub_1E13648E8()
{
  v1 = v0;
  result = Notification.updatedStyle.getter(&v10);
  if (v10 != 2)
  {
    v3 = *(v0 + qword_1EE1D9790);
    v4 = v10 & 1;

    v5 = sub_1E14AAB3C(v4, v3);

    if (v5)
    {
      result = (*(*v1 + 264))(result);
      if ((result & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2840);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_1E1B02CC0;
        *(v6 + 32) = v4;
        v9 = v6;
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2848);
        v8 = sub_1E1302CD4(&qword_1ECEB2850, &qword_1ECEB2848);
        sub_1E1364004(&v9, v7, v8);
      }
    }
  }

  return result;
}

uint64_t BaseGenericPagePresenter.__allocating_init(objectGraph:personalizationProvider:page:pageUrl:supportsFastImpressions:adLifecycleMetricReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  swift_allocObject();
  v12 = sub_1E1379AE4(a1, a2, a3, a4, a5, a6);

  return v12;
}

uint64_t sub_1E1364AD8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_1EE1D29E0 != -1)
    {
      swift_once();
    }

    v1 = sub_1E1AF3C1C();
    v2 = __swift_project_value_buffer(v1, qword_1EE1D29E8);
    v3 = type metadata accessor for BaseGenericPagePresenter();
    WitnessTable = swift_getWitnessTable();
    MetricsPagePresenter.sendEventsFor(invocationPoint:)(v2, v3, WitnessTable);
  }

  return result;
}

uint64_t sub_1E1364BBC()
{
  sub_1E1337DEC(v0 + qword_1EE215800);
  sub_1E1308058(v0 + qword_1ECEF4210, &qword_1ECEB24F8);
  sub_1E1308058(v0 + qword_1EE2157F8, &unk_1ECEB4B60);

  sub_1E1308058(v0 + qword_1EE215810, &qword_1ECEB2DF0);

  sub_1E1361B18(*(v0 + qword_1ECEF4218), *(v0 + qword_1ECEF4218 + 8));
}

uint64_t sub_1E1364CFC(uint64_t (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_1E1364D54()
{
  result = sub_1E1362EF0();
  if (result)
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 16);
    v5 = *(v4 + 8);

    v5(v6, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E1364E48(uint64_t *a1, void *a2)
{
  v4 = *a2;
  v5 = sub_1E1AF503C();
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AEFE6C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v39 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *(v4 + 960);
  v13 = ShelfBasedPage.shelves.getter(v12, &protocol witness table for GenericPage);
  v14 = *(a2 + qword_1EE2157F0);
  *(a2 + qword_1EE2157F0) = v13;
  sub_1E13658DC(v14);

  v15 = ShelfBasedPage.shelves.getter(v12, &protocol witness table for GenericPage);
  v16 = sub_1E16A189C(v15);

  v17 = *(a2 + qword_1EE1D9790);
  *(a2 + qword_1EE1D9790) = v16;
  sub_1E1366A10(v17);

  sub_1E134FD1C(v11 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, v42, &qword_1ECEB2DF0);
  sub_1E1363438(v42);
  (*(*a2 + 1312))(v11, 0);
  if (sub_1E1362EF0())
  {
    v19 = v18;
    ObjectType = swift_getObjectType();
    (*(v19 + 32))(*(v11 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_presentationOptions), ObjectType, v19);
    swift_unknownObjectRelease();
  }

  if (sub_1E1362EF0())
  {
    v22 = v21;
    v38[1] = swift_getObjectType();
    sub_1E175EB34(v12, &protocol witness table for GenericPage);
    (*(*(v22 + 24) + 32))();

    swift_unknownObjectRelease();
  }

  if (sub_1E1362EF0())
  {
    v24 = v23;
    v25 = swift_getObjectType();
    (*(*(*(v24 + 24) + 16) + 8))(v25);
    swift_unknownObjectRelease();
  }

  sub_1E137A474(v26);

  v27 = ShelfBasedPage.shelves.getter(v12, &protocol witness table for GenericPage);
  (*(*a2 + 704))(v27, 0);

  swift_beginAccess();
  v28 = a2[2];
  if (v28)
  {

    v29 = v39;
    sub_1E1AEFE5C();
    sub_1E1AEFE1C();
    v31 = v30;
    (*(v9 + 8))(v29, v8);
    v32 = v28 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_rootViewModelPresentTime;
    swift_beginAccess();
    *v32 = v31;
    *(v32 + 8) = 0;
    v33 = *(v28 + OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_hasViewModelPresentTime[0]);
    swift_beginAccess();
    *(v33 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1E149DEE8();
    }
  }

  v34 = swift_beginAccess();
  if (a2[3])
  {
    (*(*v11 + 128))(v34);
    v36 = v40;
    v35 = v41;
    (*(v40 + 104))(v7, *MEMORY[0x1E69AB440], v41);

    sub_1E1AF508C();

    (*(v36 + 8))(v7, v35);
  }

  return (*(*a2 + 576))(0);
}

void sub_1E13653EC(void *a1, void *a2)
{
  v4 = sub_1E1AF503C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for PresenterError();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(*a2 + 576))(0);
  sub_1E134FD1C(a2 + qword_1EE2157F8, v10 + *(v8 + 20), &unk_1ECEB4B60);
  *v10 = a1;
  swift_beginAccess();
  v11 = a2[2];
  if (v11)
  {
    v28 = v4;
    sub_1E137F960(&qword_1EE1DFCE0, type metadata accessor for PresenterError);
    v27 = swift_allocError();
    sub_1E137F888(v10, v12, type metadata accessor for PresenterError);
    v13 = OBJC_IVAR____TtC11AppStoreKit17PendingPageRender_errors;
    swift_beginAccess();
    v14 = *(v11 + v13);
    v15 = a1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v11 + v13) = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = sub_1E172D0E4(0, v14[2] + 1, 1, v14);
      *(v11 + v13) = v14;
    }

    v18 = v14[2];
    v17 = v14[3];
    if (v18 >= v17 >> 1)
    {
      v14 = sub_1E172D0E4((v17 > 1), v18 + 1, 1, v14);
    }

    v14[2] = v18 + 1;
    v14[v18 + 4] = v27;
    *(v11 + v13) = v14;
    swift_endAccess();

    v4 = v28;
  }

  else
  {
    v19 = a1;
  }

  swift_beginAccess();
  if (a2[3])
  {
    sub_1E137F960(&qword_1EE1DFCE0, type metadata accessor for PresenterError);
    v20 = swift_allocError();
    sub_1E137F888(v10, v21, type metadata accessor for PresenterError);
    *v7 = v20;
    (*(v5 + 104))(v7, *MEMORY[0x1E69AB430], v4);

    sub_1E1AF508C();

    (*(v5 + 8))(v7, v4);
  }

  if (sub_1E1362EF0())
  {
    v23 = v22;
    ObjectType = swift_getObjectType();
    sub_1E137F960(&qword_1EE1DFCE0, type metadata accessor for PresenterError);
    v25 = swift_allocError();
    sub_1E137F888(v10, v26, type metadata accessor for PresenterError);
    (*(*(*(v23 + 24) + 24) + 24))(v25, ObjectType);
    swift_unknownObjectRelease();
    sub_1E1361548(v10);
  }

  else
  {
    sub_1E1361548(v10);
  }
}

uint64_t sub_1E1365864@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1E1361A80();
  result = sub_1E1AF68EC();
  v4 = MEMORY[0x1E69AB720];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1E13658DC(unint64_t a1)
{
  v2 = v1;
  v41 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB28B8);
  v5 = *(v4 - 8);
  v43 = v4;
  v44 = v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v45 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v37 - v8;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB28C0);
  MEMORY[0x1EEE9AC00](v42);
  v40 = v37 - v10;
  v11 = qword_1ECEB2818;
  swift_beginAccess();
  v46 = v2;
  v12 = *(v2 + v11);
  if (a1 >> 62)
  {
    goto LABEL_34;
  }

  v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v13)
  {
    v14 = 0;
    v38 = a1 & 0xFFFFFFFFFFFFFF8;
    v39 = a1 & 0xC000000000000001;
    v37[2] = v44 + 16;
    v37[1] = v44 + 32;
    v37[0] = v44 + 8;
    v15 = v43;
    do
    {
      if (v39)
      {
        v16 = MEMORY[0x1E68FFD80](v14, a1);
      }

      else
      {
        if (v14 >= *(v38 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          v13 = sub_1E1AF71CC();
          goto LABEL_3;
        }

        v16 = *(a1 + 8 * v14 + 32);
      }

      v17 = *(v12 + 16);
      if (v14 == v17)
      {

        break;
      }

      if (v14 >= v17)
      {
        goto LABEL_33;
      }

      v18 = v44;
      v19 = v12;
      v20 = v12 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v14;
      v21 = *(v42 + 48);
      v22 = v40;
      (*(v44 + 16))(&v40[v21], v20, v15);
      (*(v18 + 32))(v9, &v22[v21], v15);
      if (*(v16 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onShouldRemoveModel))
      {

        sub_1E1AF35AC();

        (*v37[0])(v9, v15);
      }

      else
      {
        (*v37[0])(v9, v15);
      }

      ++v14;
      v12 = v19;
    }

    while (v13 != v14);
  }

  v23 = qword_1ECEB2818;
  v24 = v46;
  swift_beginAccess();
  *(v24 + v23) = MEMORY[0x1E69E7CC0];

  v26 = *(v24 + qword_1EE2157F0);
  if (v26 >> 62)
  {
    result = sub_1E1AF71CC();
    v27 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v27)
    {
      return result;
    }
  }

  if (v27 < 1)
  {
    __break(1u);
  }

  else
  {
    v28 = qword_1ECEB2818;
    v42 = v26 & 0xC000000000000001;
    v39 = v44 + 32;

    v29 = 0;
    v40 = v26;
    do
    {
      if (v42)
      {
        v30 = MEMORY[0x1E68FFD80](v29, v26);
      }

      else
      {
        v30 = *(v26 + 8 * v29 + 32);
      }

      if (*(v30 + OBJC_IVAR____TtC11AppStoreKit5Shelf_onShouldRemoveModel))
      {
        v31 = swift_allocObject();
        *(v31 + 16) = sub_1E137B6C8;
        *(v31 + 24) = 0;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB28C8);
        type metadata accessor for BaseGenericPagePresenter();
        sub_1E1302CD4(&qword_1EE1D2A58, &qword_1ECEB28C8);
        sub_1E17FC594();
        v32 = v46;
        sub_1E1AF3CEC();

        __swift_destroy_boxed_opaque_existential_1(v47);
        swift_beginAccess();
        v33 = *(v32 + v28);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v32 + v28) = v33;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v33 = sub_1E172D328(0, v33[2] + 1, 1, v33);
          *(v46 + v28) = v33;
        }

        v36 = v33[2];
        v35 = v33[3];
        if (v36 >= v35 >> 1)
        {
          v33 = sub_1E172D328(v35 > 1, v36 + 1, 1, v33);
        }

        v33[2] = v36 + 1;
        (*(v44 + 32))(v33 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v36, v45, v43);
        *(v46 + v28) = v33;
        swift_endAccess();

        v26 = v40;
      }

      ++v29;
    }

    while (v27 != v29);
  }

  return result;
}

uint64_t sub_1E1365F08(uint64_t a1, uint64_t a2)
{
  sub_1E1300B24(a1, v6);
  sub_1E1300B24(a2, &v7);
  sub_1E134FD1C(v6, v4, &qword_1ECEB2858);
  sub_1E1364278(v4, v5);
  sub_1E1308058(v6, &qword_1ECEB2858);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_1E1365FA8@<X0>(uint64_t (**a1)()@<X8>)
{
  v2 = sub_1E137A580(&qword_1ECEF4218);
  if (v2)
  {
    v4 = v2;
    v5 = v3;
    v6 = swift_allocObject();
    v2 = v4;
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1E137AFA8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a1 = v7;
  a1[1] = v6;

  return sub_1E1300E34(v2);
}

uint64_t sub_1E1366044(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1E137AFA0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1E1300E34(v1);
  return sub_1E13639D8(v4, v3);
}

uint64_t sub_1E13660D4()
{
  v1 = qword_1EE215818;
  swift_beginAccess();
  v2 = *(v0 + v1);
  result = sub_1E1362EF0();
  v5 = v4;
  if (v2 == 1)
  {
    if (!result)
    {
      return result;
    }

    ObjectType = swift_getObjectType();
    (*(*(v5 + 8) + 8))(ObjectType);
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v7 = swift_getObjectType();
    (*(*(v5 + 8) + 16))(v7);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1E1366188(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_1E162A1BC();
  v5 = &unk_1EE215000;
  v6 = *(a2 + qword_1EE2157F0);
  v53 = v4;
  if (v6 >> 62)
  {
LABEL_54:
    v52 = sub_1E1AF71CC();
  }

  else
  {
    v52 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfOrdering;
  swift_beginAccess();
  v54 = v7;
  v8 = *(v3 + v7);
  v9 = MEMORY[0x1E69E7CC0];
  v57 = MEMORY[0x1E69E7CC0];
  v10 = *(v8 + 16);
  v11 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping;

  swift_beginAccess();
  if (!v10)
  {
    goto LABEL_16;
  }

  v12 = 0;
  v13 = v8 + 32;
  do
  {
    v5 = v13 + 40 * v12;
    v14 = v12;
    while (1)
    {
      if (v14 >= *(v8 + 16))
      {
        __break(1u);
        goto LABEL_52;
      }

      sub_1E134E724(v5, v56);
      if (*(*(v3 + v11) + 16))
      {
        break;
      }

LABEL_6:
      ++v14;
      sub_1E134B88C(v56);
      v5 += 40;
      if (v10 == v14)
      {
        v5 = &unk_1EE215000;
        goto LABEL_16;
      }
    }

    sub_1E135FCF4(v56);
    if ((v15 & 1) == 0)
    {

      goto LABEL_6;
    }

    v16 = sub_1E134B88C(v56);
    MEMORY[0x1E68FEF20](v16);
    if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    v12 = v14 + 1;
    sub_1E1AF62AC();
    v9 = v57;
    v13 = v8 + 32;
    v5 = 0x1EE215000;
  }

  while (v10 - 1 != v14);
LABEL_16:

  v56[0] = *(a2 + *(v5 + 2032));

  sub_1E1728208(v9);
  v17 = *(v5 + 2032);
  v18 = *(a2 + v17);
  *(a2 + v17) = v56[0];
  sub_1E13658DC(v18);

  p_info = &OBJC_METACLASS____TtC11AppStoreKit25ArcadeOfferLabelPresenter.info;
  v20 = *(a2 + qword_1EE1D9790);
  v21 = *(v3 + v7);
  v22 = MEMORY[0x1E69E7CC0];
  v57 = MEMORY[0x1E69E7CC0];
  v23 = *(v21 + 16);
  v51 = v20;

  swift_beginAccess();
  if (v23)
  {
    v24 = 0;
    v25 = v21 + 32;
    v5 = MEMORY[0x1E69E7CC0];
LABEL_18:
    v26 = v25 + 40 * v24;
    v27 = v24;
    while (v27 < *(v21 + 16))
    {
      sub_1E134E724(v26, v56);
      if (*(*(v3 + v11) + 16))
      {

        sub_1E135FCF4(v56);
        if (v28)
        {

          v29 = sub_1E134B88C(v56);
          MEMORY[0x1E68FEF20](v29);
          if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1E1AF625C();
          }

          v24 = v27 + 1;
          sub_1E1AF62AC();
          v5 = v57;
          v25 = v21 + 32;
          v30 = v23 - 1 == v27;
          v22 = MEMORY[0x1E69E7CC0];
          p_info = (&OBJC_METACLASS____TtC11AppStoreKit25ArcadeOfferLabelPresenter + 32);
          if (v30)
          {
            goto LABEL_31;
          }

          goto LABEL_18;
        }
      }

      ++v27;
      sub_1E134B88C(v56);
      v26 += 40;
      if (v23 == v27)
      {
        v22 = MEMORY[0x1E69E7CC0];
        p_info = (&OBJC_METACLASS____TtC11AppStoreKit25ArcadeOfferLabelPresenter + 32);
        goto LABEL_31;
      }
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v5 = v22;
LABEL_31:

  v31 = sub_1E16A189C(v5);

  v32 = sub_1E15C5FF0(v31, v51);
  v33 = p_info[242];
  v34 = *(&v33->flags + a2);
  *(&v33->flags + a2) = v32;
  sub_1E1366A10(v34);

  sub_1E134FD1C(v3 + OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage, v56, &qword_1ECEB2DF0);
  sub_1E1363438(v56);
  if (sub_1E1362EF0())
  {
    v36 = v35;
    ObjectType = swift_getObjectType();
    (*(*(v36 + 24) + 32))(v53, ObjectType);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  if (sub_1E1362EF0())
  {
    v39 = v38;
    v40 = swift_getObjectType();
    (*(v39 + 32))(*(a2 + qword_1EE1D97A8), v40, v39);
    swift_unknownObjectRelease();
  }

  v41 = *(v3 + 16);
  if (*(a2 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_pageRefreshPolicy))
  {

    v41 = sub_1E16F6684(v41);
  }

  else
  {
  }

  sub_1E137A474(v41);

  v42 = qword_1EE215818;
  swift_beginAccess();
  *(a2 + v42) = 0;
  sub_1E13660D4();
  v43 = *(v3 + v54);
  v55 = v22;
  v44 = *(v43 + 16);

  swift_beginAccess();
  if (v44)
  {
    v5 = 0;
    v45 = v43 + 32;
    v53 = v44 - 1;
LABEL_41:
    v46 = v45 + 40 * v5;
    v47 = v5;
    while (v47 < *(v43 + 16))
    {
      sub_1E134E724(v46, v56);
      if (*(*(v3 + v11) + 16))
      {

        sub_1E135FCF4(v56);
        if (v48)
        {

          v49 = sub_1E134B88C(v56);
          MEMORY[0x1E68FEF20](v49);
          if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1E1AF625C();
          }

          v5 = v47 + 1;
          sub_1E1AF62AC();
          v22 = v55;
          v45 = v43 + 32;
          if (v53 != v47)
          {
            goto LABEL_41;
          }

          goto LABEL_50;
        }
      }

      ++v47;
      sub_1E134B88C(v56);
      v46 += 40;
      if (v44 == v47)
      {
        goto LABEL_50;
      }
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

LABEL_50:

  (*(*a2 + 704))(v22, v52);
}

void sub_1E136685C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = qword_1EE215818;
  swift_beginAccess();
  *(a2 + v7) = 0;
  sub_1E13660D4();
  if (sub_1E1362EF0())
  {
    v9 = v8;
    ObjectType = swift_getObjectType();
    sub_1E134FD1C(a2 + qword_1EE2157F8, v6, &unk_1ECEB4B60);
    v11 = type metadata accessor for PresenterError();
    sub_1E137F960(&qword_1EE1DFCE0, type metadata accessor for PresenterError);
    v12 = swift_allocError();
    *v13 = a1;
    sub_1E137F600(v6, v13 + *(v11 + 20), &unk_1ECEB4B60);
    v14 = *(v9 + 8);
    v15 = *(v14 + 24);
    v16 = a1;
    v15(v12, ObjectType, v14);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1E1366A10(uint64_t a1)
{
  v3 = qword_1EE1D9790;
  v4 = *(v1 + qword_1EE1D9790);

  LOBYTE(a1) = sub_1E16B0B84(a1, v4);

  if ((a1 & 1) == 0)
  {
    v8 = *(v1 + v3);

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2AA0);
    v7 = sub_1E1302CD4(&qword_1ECEB2AA8, &qword_1ECEB2AA0);
    sub_1E1364004(&v8, v6, v7);
  }

  return result;
}

uint64_t sub_1E1366AE8(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AF00EC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + qword_1EE2157F0);

  Array<A>.indicesOfShelves<A>(using:)(a3, v10);
  v11 = a1[1];
  v18[0] = *a1;
  v18[1] = v11;
  v12 = Array<A>.personalizedShelves(with:)(v18, v10);

  v13 = *(a2 + qword_1EE2157F0);
  *(a2 + qword_1EE2157F0) = v12;
  sub_1E13658DC(v13);

  if (sub_1E1362EF0())
  {
    v15 = v14;
    ObjectType = swift_getObjectType();
    (*(*(v15 + 24) + 48))(v9, ObjectType);
    swift_unknownObjectRelease();
  }

  result = (*(v7 + 8))(v9, v6);
  *(a2 + qword_1EE1D9798) = 0;
  return result;
}

uint64_t sub_1E1366C84(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC11AppStoreKit5Shelf_id;
  __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);
  sub_1E1AF3FEC();
  v4 = MEMORY[0x1E68FFC60](v2 + v3, v6);
  sub_1E134B88C(v6);
  return v4 & 1;
}

uint64_t sub_1E1366D10(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = sub_1E1AF71CC();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1E68FFD80](v7, a3);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v13 = v8;
    v9 = a1(&v13);

    if (v3)
    {
      return result;
    }

    if (v9)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t sub_1E1366E2C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  for (i = a3 + 32; ; i += 40)
  {
    v8 = a1(i);
    if (v3 || (v8 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_1E1366EB0(uint64_t a1, void *a2)
{
  sub_1E1300B24(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2860);
  if (swift_dynamicCast())
  {
    sub_1E1308EC0(v9, v12);
    v3 = v13;
    v4 = v14;
    __swift_project_boxed_opaque_existential_1Tm(v12, v13);
    (*(v4 + 16))(v11, v3, v4);
    v5 = a2[8];
    v6 = a2[9];
    __swift_project_boxed_opaque_existential_1Tm(a2 + 5, v5);
    (*(v6 + 16))(v9, v5, v6);
    v7 = MEMORY[0x1E68FFC60](v11, v9);
    sub_1E134B88C(v9);
    sub_1E134B88C(v11);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    sub_1E1308058(v9, &qword_1ECEB2868);
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1E136700C()
{
  v0 = sub_1E1AEF55C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AEF50C();

  sub_1E13648E8();

  return (*(v1 + 8))(v3, v0);
}

void sub_1E1367148(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1E13671B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v30 = a5;
  v28 = a3;
  v29 = a4;
  v8 = *v5;
  v26 = a2;
  v27 = v8;
  v9 = type metadata accessor for TopChartsPageIntent();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v25 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2948);
  v16 = sub_1E1AF588C();
  v17 = sub_1E1AF649C();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_1E137F888(a1, v12, type metadata accessor for TopChartsPageIntent);
  v18 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 39) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v6;
  sub_1E137EAD4(v12, v21 + v18, type metadata accessor for TopChartsPageIntent);
  *(v21 + v19) = v26;
  v22 = v21 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  v23 = v29;
  *v22 = v28;
  *(v22 + 1) = v23;
  v22[16] = v30;
  *(v21 + v20) = v16;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;

  sub_1E154AF74(0, 0, v15, &unk_1E1B03048, v21);

  return v16;
}

uint64_t sub_1E1367448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v30 = a5;
  v28 = a3;
  v29 = a4;
  v8 = *v5;
  v26 = a2;
  v27 = v8;
  v9 = type metadata accessor for ArcadePageIntent();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v25 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB28B0);
  v16 = sub_1E1AF588C();
  v17 = sub_1E1AF649C();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_1E137F888(a1, v12, type metadata accessor for ArcadePageIntent);
  v18 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 39) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v6;
  sub_1E137EAD4(v12, v21 + v18, type metadata accessor for ArcadePageIntent);
  *(v21 + v19) = v26;
  v22 = v21 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  v23 = v29;
  *v22 = v28;
  *(v22 + 1) = v23;
  v22[16] = v30;
  *(v21 + v20) = v16;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;

  sub_1E154AF74(0, 0, v15, &unk_1E1B02F48, v21);

  return v16;
}

uint64_t sub_1E13676E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v30 = a5;
  v28 = a3;
  v29 = a4;
  v8 = *v5;
  v26 = a2;
  v27 = v8;
  v9 = type metadata accessor for InAppPurchaseInstallPageIntent();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v25 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2940);
  v16 = sub_1E1AF588C();
  v17 = sub_1E1AF649C();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_1E137F888(a1, v12, type metadata accessor for InAppPurchaseInstallPageIntent);
  v18 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 39) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v6;
  sub_1E137EAD4(v12, v21 + v18, type metadata accessor for InAppPurchaseInstallPageIntent);
  *(v21 + v19) = v26;
  v22 = v21 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  v23 = v29;
  *v22 = v28;
  *(v22 + 1) = v23;
  v22[16] = v30;
  *(v21 + v20) = v16;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;

  sub_1E154AF74(0, 0, v15, &unk_1E1B03030, v21);

  return v16;
}

uint64_t sub_1E1367978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v21 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2830);
  v16 = sub_1E1AF588C();
  v17 = sub_1E1AF649C();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_1E137AD08(a1, v21);
  v18 = swift_allocObject();
  v19 = v21[1];
  *(v18 + 40) = v21[0];
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v6;
  *(v18 + 56) = v19;
  *(v18 + 72) = v21[2];
  *(v18 + 88) = a2;
  *(v18 + 96) = a3;
  *(v18 + 104) = a4;
  *(v18 + 112) = a5;
  *(v18 + 120) = v16;
  *(v18 + 128) = v12;

  sub_1E154AF74(0, 0, v15, &unk_1E1B02E80, v18);

  return v16;
}

uint64_t sub_1E1367B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v30 = a5;
  v28 = a3;
  v29 = a4;
  v8 = *v5;
  v26 = a2;
  v27 = v8;
  v9 = type metadata accessor for ProductPageIntent();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v25 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB28D0);
  v16 = sub_1E1AF588C();
  v17 = sub_1E1AF649C();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_1E137F888(a1, v12, type metadata accessor for ProductPageIntent);
  v18 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 39) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v6;
  sub_1E137EAD4(v12, v21 + v18, type metadata accessor for ProductPageIntent);
  *(v21 + v19) = v26;
  v22 = v21 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  v23 = v29;
  *v22 = v28;
  *(v22 + 1) = v23;
  v22[16] = v30;
  *(v21 + v20) = v16;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;

  sub_1E154AF74(0, 0, v15, &unk_1E1B02F78, v21);

  return v16;
}

uint64_t sub_1E1367E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v30 = a5;
  v28 = a3;
  v29 = a4;
  v8 = *v5;
  v26 = a2;
  v27 = v8;
  v9 = type metadata accessor for ArticlePageIntent();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v25 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2A40);
  v16 = sub_1E1AF588C();
  v17 = sub_1E1AF649C();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_1E137F888(a1, v12, type metadata accessor for ArticlePageIntent);
  v18 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 39) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v6;
  sub_1E137EAD4(v12, v21 + v18, type metadata accessor for ArticlePageIntent);
  *(v21 + v19) = v26;
  v22 = v21 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  v23 = v29;
  *v22 = v28;
  *(v22 + 1) = v23;
  v22[16] = v30;
  *(v21 + v20) = v16;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;

  sub_1E154AF74(0, 0, v15, &unk_1E1B03238, v21);

  return v16;
}

uint64_t sub_1E1368108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v30 = a5;
  v28 = a3;
  v29 = a4;
  v8 = *v5;
  v26 = a2;
  v27 = v8;
  v9 = type metadata accessor for ActionIntent();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v25 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2A58);
  v16 = sub_1E1AF588C();
  v17 = sub_1E1AF649C();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_1E137F888(a1, v12, type metadata accessor for ActionIntent);
  v18 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 39) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v6;
  sub_1E137EAD4(v12, v21 + v18, type metadata accessor for ActionIntent);
  *(v21 + v19) = v26;
  v22 = v21 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  v23 = v29;
  *v22 = v28;
  *(v22 + 1) = v23;
  v22[16] = v30;
  *(v21 + v20) = v16;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;

  sub_1E154AF74(0, 0, v15, &unk_1E1B03268, v21);

  return v16;
}

uint64_t sub_1E13683EC(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v27[-v14 - 8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2928);
  v16 = sub_1E1AF588C();
  v17 = sub_1E1AF649C();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v18 = swift_allocObject();
  v19 = a1[9];
  *(v18 + 168) = a1[8];
  *(v18 + 184) = v19;
  v20 = a1[11];
  *(v18 + 200) = a1[10];
  *(v18 + 216) = v20;
  v21 = a1[5];
  *(v18 + 104) = a1[4];
  *(v18 + 120) = v21;
  v22 = a1[7];
  *(v18 + 136) = a1[6];
  *(v18 + 152) = v22;
  v23 = a1[1];
  *(v18 + 40) = *a1;
  *(v18 + 56) = v23;
  v24 = a1[3];
  *(v18 + 72) = a1[2];
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v6;
  *(v18 + 88) = v24;
  *(v18 + 232) = a2;
  *(v18 + 240) = a3;
  *(v18 + 248) = a4;
  *(v18 + 256) = a5;
  *(v18 + 264) = v16;
  *(v18 + 272) = v12;

  sub_1E137C188(a1, v27);

  sub_1E154AF74(0, 0, v15, &unk_1E1B03010, v18);

  return v16;
}

uint64_t sub_1E13685E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v30 = a5;
  v28 = a3;
  v29 = a4;
  v8 = *v5;
  v26 = a2;
  v27 = v8;
  v9 = type metadata accessor for ArcadeSubscribePageIntent();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v25 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2968);
  v16 = sub_1E1AF588C();
  v17 = sub_1E1AF649C();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_1E137F888(a1, v12, type metadata accessor for ArcadeSubscribePageIntent);
  v18 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 39) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v6;
  sub_1E137EAD4(v12, v21 + v18, type metadata accessor for ArcadeSubscribePageIntent);
  *(v21 + v19) = v26;
  v22 = v21 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  v23 = v29;
  *v22 = v28;
  *(v22 + 1) = v23;
  v22[16] = v30;
  *(v21 + v20) = v16;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;

  sub_1E154AF74(0, 0, v15, &unk_1E1B03078, v21);

  return v16;
}

uint64_t sub_1E1368880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v30 = a5;
  v28 = a3;
  v29 = a4;
  v8 = *v5;
  v26 = a2;
  v27 = v8;
  v9 = type metadata accessor for ArcadeWelcomePageIntent();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v25 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2A48);
  v16 = sub_1E1AF588C();
  v17 = sub_1E1AF649C();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_1E137F888(a1, v12, type metadata accessor for ArcadeWelcomePageIntent);
  v18 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 39) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v6;
  sub_1E137EAD4(v12, v21 + v18, type metadata accessor for ArcadeWelcomePageIntent);
  *(v21 + v19) = v26;
  v22 = v21 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  v23 = v29;
  *v22 = v28;
  *(v22 + 1) = v23;
  v22[16] = v30;
  *(v21 + v20) = v16;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;

  sub_1E154AF74(0, 0, v15, &unk_1E1B03250, v21);

  return v16;
}

uint64_t sub_1E1368B18(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v21[-v14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2A78);
  v16 = sub_1E1AF588C();
  v17 = sub_1E1AF649C();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v18 = swift_allocObject();
  v19 = a1[1];
  *(v18 + 40) = *a1;
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v6;
  *(v18 + 56) = v19;
  *(v18 + 72) = a1[2];
  *(v18 + 88) = a2;
  *(v18 + 96) = a3;
  *(v18 + 104) = a4;
  *(v18 + 112) = a5;
  *(v18 + 120) = v16;
  *(v18 + 128) = v12;

  sub_1E137F39C(a1, v21);

  sub_1E154AF74(0, 0, v15, &unk_1E1B032E8, v18);

  return v16;
}

uint64_t sub_1E1368D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v21 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2878);
  v16 = sub_1E1AF588C();
  v17 = sub_1E1AF649C();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_1E137F668(a1, v21);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v6;
  v19 = v21[1];
  *(v18 + 40) = v21[0];
  *(v18 + 56) = v19;
  *(v18 + 72) = a2;
  *(v18 + 80) = a3;
  *(v18 + 88) = a4;
  *(v18 + 96) = a5;
  *(v18 + 104) = v16;
  *(v18 + 112) = v12;

  sub_1E154AF74(0, 0, v15, &unk_1E1B03320, v18);

  return v16;
}

uint64_t sub_1E1368F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = v9;
  v25 = a5;
  v24 = a4;
  v26 = a9;
  v15 = *v9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v23 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(a6);
  v19 = sub_1E1AF588C();
  v20 = sub_1E1AF649C();
  (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = v11;
  *(v21 + 40) = a1;
  *(v21 + 48) = a2;
  *(v21 + 56) = a3;
  *(v21 + 64) = v24;
  *(v21 + 72) = v25;
  *(v21 + 80) = v19;
  *(v21 + 88) = v15;

  sub_1E154AF74(0, 0, v18, v26, v21);

  return v19;
}

uint64_t sub_1E13690EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v30 = a5;
  v28 = a3;
  v29 = a4;
  v8 = *v5;
  v26 = a2;
  v27 = v8;
  v9 = type metadata accessor for MSOPageIntent();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v25 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2878);
  v16 = sub_1E1AF588C();
  v17 = sub_1E1AF649C();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_1E137F888(a1, v12, type metadata accessor for MSOPageIntent);
  v18 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 39) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v6;
  sub_1E137EAD4(v12, v21 + v18, type metadata accessor for MSOPageIntent);
  *(v21 + v19) = v26;
  v22 = v21 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  v23 = v29;
  *v22 = v28;
  *(v22 + 1) = v23;
  v22[16] = v30;
  *(v21 + v20) = v16;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;

  sub_1E154AF74(0, 0, v15, &unk_1E1B030E0, v21);

  return v16;
}

uint64_t sub_1E1369384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v21 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2A78);
  v16 = sub_1E1AF588C();
  v17 = sub_1E1AF649C();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_1E137F0E4(a1, v21);
  v18 = swift_allocObject();
  v19 = v21[1];
  *(v18 + 40) = v21[0];
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v6;
  *(v18 + 56) = v19;
  *(v18 + 72) = v21[2];
  *(v18 + 88) = a2;
  *(v18 + 96) = a3;
  *(v18 + 104) = a4;
  *(v18 + 112) = a5;
  *(v18 + 120) = v16;
  *(v18 + 128) = v12;

  sub_1E154AF74(0, 0, v15, &unk_1E1B032D8, v18);

  return v16;
}

uint64_t sub_1E136954C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v21 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2928);
  v16 = sub_1E1AF588C();
  v17 = sub_1E1AF649C();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_1E137BE70(a1, v21);
  v18 = swift_allocObject();
  v19 = v21[1];
  *(v18 + 40) = v21[0];
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v6;
  *(v18 + 56) = v19;
  *(v18 + 72) = v21[2];
  *(v18 + 88) = a2;
  *(v18 + 96) = a3;
  *(v18 + 104) = a4;
  *(v18 + 112) = a5;
  *(v18 + 120) = v16;
  *(v18 + 128) = v12;

  sub_1E154AF74(0, 0, v15, &unk_1E1B03000, v18);

  return v16;
}

uint64_t sub_1E1369714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v21 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2998);
  v16 = sub_1E1AF588C();
  v17 = sub_1E1AF649C();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_1E137CF88(a1, v21);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v6;
  v19 = v21[1];
  *(v18 + 40) = v21[0];
  *(v18 + 56) = v19;
  *(v18 + 72) = a2;
  *(v18 + 80) = a3;
  *(v18 + 88) = a4;
  *(v18 + 96) = a5;
  *(v18 + 104) = v16;
  *(v18 + 112) = v12;

  sub_1E154AF74(0, 0, v15, &unk_1E1B030F8, v18);

  return v16;
}

uint64_t sub_1E13698D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v31 = a5;
  v29 = a3;
  v30 = a4;
  v8 = *v5;
  v27 = a2;
  v28 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2A20);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v26 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2A08);
  v17 = sub_1E1AF588C();
  v18 = sub_1E1AF649C();
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  sub_1E134FD1C(a1, v13, &qword_1ECEB2A20);
  v19 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 39) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v6;
  sub_1E137F600(v13, v22 + v19, &qword_1ECEB2A20);
  *(v22 + v20) = v27;
  v23 = v22 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  v24 = v30;
  *v23 = v29;
  *(v23 + 1) = v24;
  v23[16] = v31;
  *(v22 + v21) = v17;
  *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = v28;

  sub_1E154AF74(0, 0, v16, &unk_1E1B03200, v22);

  return v17;
}

uint64_t sub_1E1369B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v21 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2A08);
  v16 = sub_1E1AF588C();
  v17 = sub_1E1AF649C();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_1E134FD1C(a1, v21, &qword_1ECEB2A10);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v6;
  v19 = v21[1];
  *(v18 + 40) = v21[0];
  *(v18 + 56) = v19;
  *(v18 + 72) = a2;
  *(v18 + 80) = a3;
  *(v18 + 88) = a4;
  *(v18 + 96) = a5;
  *(v18 + 104) = v16;
  *(v18 + 112) = v12;

  sub_1E154AF74(0, 0, v15, &unk_1E1B031E8, v18);

  return v16;
}

uint64_t sub_1E1369D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v22[-v14 - 8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB29F8);
  v16 = sub_1E1AF588C();
  v17 = sub_1E1AF649C();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v18 = swift_allocObject();
  v19 = *(a1 + 16);
  *(v18 + 40) = *a1;
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v6;
  *(v18 + 56) = v19;
  *(v18 + 72) = *(a1 + 32);
  *(v18 + 80) = a2;
  *(v18 + 88) = a3;
  *(v18 + 96) = a4;
  *(v18 + 104) = a5;
  *(v18 + 112) = v16;
  *(v18 + 120) = v12;

  sub_1E137DC1C(a1, v22);

  sub_1E154AF74(0, 0, v15, &unk_1E1B031C0, v18);

  return v16;
}

uint64_t sub_1E1369F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v23 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB29E0);
  v16 = sub_1E1AF588C();
  v17 = sub_1E1AF649C();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_1E137D7B0(a1, v23);
  v18 = swift_allocObject();
  v19 = v23[3];
  *(v18 + 72) = v23[2];
  *(v18 + 88) = v19;
  v20 = v23[5];
  *(v18 + 104) = v23[4];
  *(v18 + 120) = v20;
  v21 = v23[1];
  *(v18 + 40) = v23[0];
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v6;
  *(v18 + 56) = v21;
  *(v18 + 136) = a2;
  *(v18 + 144) = a3;
  *(v18 + 152) = a4;
  *(v18 + 160) = a5;
  *(v18 + 168) = v16;
  *(v18 + 176) = v12;

  sub_1E154AF74(0, 0, v15, &unk_1E1B03188, v18);

  return v16;
}

uint64_t sub_1E136A0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v25 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB29D8);
  v16 = sub_1E1AF588C();
  v17 = sub_1E1AF649C();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_1E137D5AC(a1, v25);
  v18 = swift_allocObject();
  v19 = v25[6];
  *(v18 + 152) = v25[7];
  v20 = v25[9];
  *(v18 + 168) = v25[8];
  *(v18 + 184) = v20;
  *(v18 + 200) = v25[10];
  v21 = v25[2];
  *(v18 + 88) = v25[3];
  v22 = v25[5];
  *(v18 + 104) = v25[4];
  *(v18 + 120) = v22;
  *(v18 + 136) = v19;
  v23 = v25[1];
  *(v18 + 40) = v25[0];
  *(v18 + 56) = v23;
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v6;
  *(v18 + 72) = v21;
  *(v18 + 216) = a2;
  *(v18 + 224) = a3;
  *(v18 + 232) = a4;
  *(v18 + 240) = a5;
  *(v18 + 248) = v16;
  *(v18 + 256) = v12;

  sub_1E154AF74(0, 0, v15, &unk_1E1B03170, v18);

  return v16;
}

uint64_t sub_1E136A378(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = v7;
  v23 = a7;
  v22 = a6;
  v14 = *v7;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v22 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB29A8);
  v18 = sub_1E1AF588C();
  v19 = sub_1E1AF649C();
  (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 32) = v8;
  *(v20 + 40) = a1;
  *(v20 + 48) = a2;
  *(v20 + 56) = a3;
  *(v20 + 64) = a4;
  *(v20 + 72) = a5;
  *(v20 + 80) = v22;
  *(v20 + 88) = v23;
  *(v20 + 96) = v18;
  *(v20 + 104) = v14;

  sub_1E154AF74(0, 0, v17, &unk_1E1B03110, v20);

  return v18;
}

uint64_t sub_1E136A540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v22[-v14 - 8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2978);
  v16 = sub_1E1AF588C();
  v17 = sub_1E1AF649C();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v18 = swift_allocObject();
  v19 = *(a1 + 16);
  *(v18 + 40) = *a1;
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v6;
  *(v18 + 56) = v19;
  *(v18 + 72) = *(a1 + 32);
  *(v18 + 80) = a2;
  *(v18 + 88) = a3;
  *(v18 + 96) = a4;
  *(v18 + 104) = a5;
  *(v18 + 112) = v16;
  *(v18 + 120) = v12;

  sub_1E137CC00(a1, v22);

  sub_1E154AF74(0, 0, v15, &unk_1E1B030A8, v18);

  return v16;
}

uint64_t sub_1E136A704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v22[-v14 - 8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2978);
  v16 = sub_1E1AF588C();
  v17 = sub_1E1AF649C();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v18 = swift_allocObject();
  v19 = *(a1 + 16);
  *(v18 + 40) = *a1;
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v6;
  *(v18 + 56) = v19;
  *(v18 + 72) = *(a1 + 32);
  *(v18 + 88) = *(a1 + 48);
  *(v18 + 96) = a2;
  *(v18 + 104) = a3;
  *(v18 + 112) = a4;
  *(v18 + 120) = a5;
  *(v18 + 128) = v16;
  *(v18 + 136) = v12;

  sub_1E137CA48(a1, v22);

  sub_1E154AF74(0, 0, v15, &unk_1E1B03090, v18);

  return v16;
}

uint64_t sub_1E136A8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v30 = a5;
  v28 = a3;
  v29 = a4;
  v8 = *v5;
  v26 = a2;
  v27 = v8;
  v9 = type metadata accessor for SearchChartsAndCategoriesPageIntent();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v25 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2958);
  v16 = sub_1E1AF588C();
  v17 = sub_1E1AF649C();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_1E137F888(a1, v12, type metadata accessor for SearchChartsAndCategoriesPageIntent);
  v18 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 39) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v6;
  sub_1E137EAD4(v12, v21 + v18, type metadata accessor for SearchChartsAndCategoriesPageIntent);
  *(v21 + v19) = v26;
  v22 = v21 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  v23 = v29;
  *v22 = v28;
  *(v22 + 1) = v23;
  v22[16] = v30;
  *(v21 + v20) = v16;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;

  sub_1E154AF74(0, 0, v15, &unk_1E1B03060, v21);

  return v16;
}

uint64_t sub_1E136AB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v31 = a5;
  v29 = a3;
  v30 = a4;
  v8 = *v5;
  v27 = a2;
  v28 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2920);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v26 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2908);
  v17 = sub_1E1AF588C();
  v18 = sub_1E1AF649C();
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  sub_1E134FD1C(a1, v13, &qword_1ECEB2920);
  v19 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 39) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v6;
  sub_1E137F600(v13, v22 + v19, &qword_1ECEB2920);
  *(v22 + v20) = v27;
  v23 = v22 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  v24 = v30;
  *v23 = v29;
  *(v23 + 1) = v24;
  v23[16] = v31;
  *(v22 + v21) = v17;
  *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = v28;

  sub_1E154AF74(0, 0, v16, &unk_1E1B02FE8, v22);

  return v17;
}

uint64_t sub_1E136AE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v21 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2908);
  v16 = sub_1E1AF588C();
  v17 = sub_1E1AF649C();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_1E134FD1C(a1, v21, &qword_1ECEB2910);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v6;
  v19 = v21[1];
  *(v18 + 40) = v21[0];
  *(v18 + 56) = v19;
  *(v18 + 72) = a2;
  *(v18 + 80) = a3;
  *(v18 + 88) = a4;
  *(v18 + 96) = a5;
  *(v18 + 104) = v16;
  *(v18 + 112) = v12;

  sub_1E154AF74(0, 0, v15, &unk_1E1B02FD0, v18);

  return v16;
}

uint64_t sub_1E136AFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v31 = a5;
  v29 = a3;
  v30 = a4;
  v8 = *v5;
  v27 = a2;
  v28 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB28F8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v26 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB28E0);
  v17 = sub_1E1AF588C();
  v18 = sub_1E1AF649C();
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  sub_1E134FD1C(a1, v13, &qword_1ECEB28F8);
  v19 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 39) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v6;
  sub_1E137F600(v13, v22 + v19, &qword_1ECEB28F8);
  *(v22 + v20) = v27;
  v23 = v22 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  v24 = v30;
  *v23 = v29;
  *(v23 + 1) = v24;
  v23[16] = v31;
  *(v22 + v21) = v17;
  *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = v28;

  sub_1E154AF74(0, 0, v16, &unk_1E1B02FB0, v22);

  return v17;
}

uint64_t sub_1E136B270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v21 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB28E0);
  v16 = sub_1E1AF588C();
  v17 = sub_1E1AF649C();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_1E134FD1C(a1, v21, &qword_1ECEB28E8);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v6;
  v19 = v21[1];
  *(v18 + 40) = v21[0];
  *(v18 + 56) = v19;
  *(v18 + 72) = a2;
  *(v18 + 80) = a3;
  *(v18 + 88) = a4;
  *(v18 + 96) = a5;
  *(v18 + 104) = v16;
  *(v18 + 112) = v12;

  sub_1E154AF74(0, 0, v15, &unk_1E1B02F98, v18);

  return v16;
}

uint64_t sub_1E136B440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v32 = a5;
  v30 = a3;
  v31 = a4;
  v7 = *v5;
  v28 = a2;
  v29 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2870);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v25 - v14;
  v27 = &v25 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2878);
  v26 = sub_1E1AF588C();
  v16 = sub_1E1AF649C();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v9 + 16))(v12, a1, v8);
  v17 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 39) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 4) = v5;
  (*(v9 + 32))(&v20[v17], v12, v8);
  *&v20[v18] = v28;
  v21 = &v20[(v18 + 15) & 0xFFFFFFFFFFFFFFF8];
  v22 = v31;
  *v21 = v30;
  *(v21 + 1) = v22;
  v21[16] = v32;
  v23 = v26;
  *&v20[v19] = v26;
  *&v20[(v19 + 15) & 0xFFFFFFFFFFFFFFF8] = v29;

  sub_1E154AF74(0, 0, v27, &unk_1E1B02ED0, v20);

  return v23;
}

uint64_t sub_1E136B6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v30 = a5;
  v28 = a3;
  v29 = a4;
  v8 = *v5;
  v26 = a2;
  v27 = v8;
  v9 = type metadata accessor for TodayPageIntent();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v25 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2A60);
  v16 = sub_1E1AF588C();
  v17 = sub_1E1AF649C();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_1E137F888(a1, v12, type metadata accessor for TodayPageIntent);
  v18 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 39) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v6;
  sub_1E137EAD4(v12, v21 + v18, type metadata accessor for TodayPageIntent);
  *(v21 + v19) = v26;
  v22 = v21 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  v23 = v29;
  *v22 = v28;
  *(v22 + 1) = v23;
  v22[16] = v30;
  *(v21 + v20) = v16;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;

  sub_1E154AF74(0, 0, v15, &unk_1E1B03290, v21);

  return v16;
}

uint64_t sub_1E136B98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v21 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2A60);
  v16 = sub_1E1AF588C();
  v17 = sub_1E1AF649C();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_1E137E924(a1, v21);
  v18 = swift_allocObject();
  v19 = v21[1];
  *(v18 + 40) = v21[0];
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v6;
  *(v18 + 56) = v19;
  *(v18 + 72) = v21[2];
  *(v18 + 88) = a2;
  *(v18 + 96) = a3;
  *(v18 + 104) = a4;
  *(v18 + 112) = a5;
  *(v18 + 120) = v16;
  *(v18 + 128) = v12;

  sub_1E154AF74(0, 0, v15, &unk_1E1B03280, v18);

  return v16;
}

uint64_t sub_1E136BB54(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v27[-v14 - 8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2A68);
  v16 = sub_1E1AF588C();
  v17 = sub_1E1AF649C();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  v18 = swift_allocObject();
  v19 = a1[9];
  *(v18 + 168) = a1[8];
  *(v18 + 184) = v19;
  v20 = a1[11];
  *(v18 + 200) = a1[10];
  *(v18 + 216) = v20;
  v21 = a1[5];
  *(v18 + 104) = a1[4];
  *(v18 + 120) = v21;
  v22 = a1[7];
  *(v18 + 136) = a1[6];
  *(v18 + 152) = v22;
  v23 = a1[1];
  *(v18 + 40) = *a1;
  *(v18 + 56) = v23;
  v24 = a1[3];
  *(v18 + 72) = a1[2];
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v6;
  *(v18 + 88) = v24;
  *(v18 + 232) = a2;
  *(v18 + 240) = a3;
  *(v18 + 248) = a4;
  *(v18 + 256) = a5;
  *(v18 + 264) = v16;
  *(v18 + 272) = v12;

  sub_1E137F034(a1, v27);

  sub_1E154AF74(0, 0, v15, &unk_1E1B032B8, v18);

  return v16;
}

uint64_t sub_1E136BD50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v21 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2A68);
  v16 = sub_1E1AF588C();
  v17 = sub_1E1AF649C();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_1E137ECB8(a1, v21);
  v18 = swift_allocObject();
  v19 = v21[1];
  *(v18 + 40) = v21[0];
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v6;
  *(v18 + 56) = v19;
  *(v18 + 72) = v21[2];
  *(v18 + 88) = a2;
  *(v18 + 96) = a3;
  *(v18 + 104) = a4;
  *(v18 + 112) = a5;
  *(v18 + 120) = v16;
  *(v18 + 128) = v12;

  sub_1E154AF74(0, 0, v15, &unk_1E1B032A8, v18);

  return v16;
}

uint64_t sub_1E136BF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = v10;
  v27 = a6;
  v25 = a4;
  v26 = a5;
  v28 = a10;
  v16 = *v10;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v25 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(a7);
  v20 = sub_1E1AF588C();
  v21 = sub_1E1AF649C();
  (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = v12;
  *(v22 + 40) = a1;
  *(v22 + 48) = a2;
  *(v22 + 56) = a3;
  v23 = v26;
  *(v22 + 64) = v25;
  *(v22 + 72) = v23;
  *(v22 + 80) = v27;
  *(v22 + 88) = v20;
  *(v22 + 96) = v16;

  sub_1E154AF74(0, 0, v19, v28, v22);

  return v20;
}

uint64_t sub_1E136C160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = v11;
  v30 = a7;
  v28 = a5;
  v29 = a6;
  v31 = a11;
  v18 = *v11;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v28 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(a8);
  v22 = sub_1E1AF588C();
  v23 = sub_1E1AF649C();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = v13;
  *(v24 + 40) = a1;
  *(v24 + 48) = a2;
  *(v24 + 56) = a3;
  v26 = v28;
  v25 = v29;
  *(v24 + 64) = a4;
  *(v24 + 72) = v26;
  *(v24 + 80) = v25;
  *(v24 + 88) = v30;
  *(v24 + 96) = v22;
  *(v24 + 104) = v18;

  sub_1E154AF74(0, 0, v21, v31, v24);

  return v22;
}

uint64_t sub_1E136C36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  v33 = a8;
  v31 = a6;
  v32 = a7;
  v30 = a3;
  v34 = a12;
  v18 = *v12;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v29 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(a9);
  v22 = sub_1E1AF588C();
  v23 = sub_1E1AF649C();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = v13;
  *(v24 + 40) = a1;
  v25 = v30;
  v26 = v31;
  *(v24 + 48) = a2;
  *(v24 + 56) = v25;
  *(v24 + 64) = a4;
  *(v24 + 72) = a5;
  v27 = v32;
  *(v24 + 80) = v26;
  *(v24 + 88) = v27;
  *(v24 + 96) = v33;
  *(v24 + 104) = v22;
  *(v24 + 112) = v18;

  sub_1E154AF74(0, 0, v21, v34, v24);

  return v22;
}

uint64_t sub_1E136C52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v21;
  sub_1E1AF389C();
  v8[16] = swift_task_alloc();
  v18 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[17] = v14;
  v15 = type metadata accessor for TopChartsPageIntent();
  v16 = sub_1E137F960(&qword_1ECEB2950, type metadata accessor for TopChartsPageIntent);
  *v14 = v8;
  v14[1] = sub_1E136C710;

  return v18(v8 + 13, a5, a6, a7, a8, v20, v15, v16);
}

uint64_t sub_1E136C710()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1E136C824;
  }

  else
  {
    v2 = sub_1E137FA08;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E136C824()
{
  if (qword_1EE1EFA28 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  __swift_project_boxed_opaque_existential_1Tm(qword_1EE216AD8, qword_1EE216AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v0[5] = MEMORY[0x1E69E6158];
  v0[2] = 0xD000000000000013;
  v0[3] = 0x80000001E1B5A7B0;
  sub_1E1AF385C();
  sub_1E1308058((v0 + 2), &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  swift_getErrorValue();
  v2 = v0[10];
  v3 = v0[11];
  v0[9] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 6);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_0, v2, v3);
  sub_1E1AF38DC();
  sub_1E1308058((v0 + 6), &qword_1ECEB2DF0);
  sub_1E1AF54AC();

  sub_1E1AF584C();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E136CAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v21;
  sub_1E1AF389C();
  v8[16] = swift_task_alloc();
  v18 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[17] = v14;
  v15 = type metadata accessor for ArcadePageIntent();
  v16 = sub_1E137F960(qword_1EE1DF370, type metadata accessor for ArcadePageIntent);
  *v14 = v8;
  v14[1] = sub_1E136CC9C;

  return v18(v8 + 13, a5, a6, a7, a8, v20, v15, v16);
}

uint64_t sub_1E136CC9C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1E136CE24;
  }

  else
  {
    v2 = sub_1E136CDB0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E136CDB0()
{
  sub_1E1AF586C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E136CE24()
{
  if (qword_1EE1EFA28 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  __swift_project_boxed_opaque_existential_1Tm(qword_1EE216AD8, qword_1EE216AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v0[5] = MEMORY[0x1E69E6158];
  v0[2] = 0xD000000000000010;
  v0[3] = 0x80000001E1B5A750;
  sub_1E1AF385C();
  sub_1E1308058((v0 + 2), &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  swift_getErrorValue();
  v2 = v0[10];
  v3 = v0[11];
  v0[9] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 6);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_0, v2, v3);
  sub_1E1AF38DC();
  sub_1E1308058((v0 + 6), &qword_1ECEB2DF0);
  sub_1E1AF54AC();

  sub_1E1AF584C();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E136D0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a5;
  v8[16] = v21;
  sub_1E1AF389C();
  v8[17] = swift_task_alloc();
  v18 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[18] = v14;
  v15 = type metadata accessor for InAppPurchaseInstallPageIntent();
  v16 = sub_1E137F960(&qword_1ECEB2408, type metadata accessor for InAppPurchaseInstallPageIntent);
  *v14 = v8;
  v14[1] = sub_1E136D2A0;

  return v18(v8 + 13, a5, a6, a7, a8, v20, v15, v16);
}

uint64_t sub_1E136D2A0()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1E137F9EC;
  }

  else
  {
    v2 = sub_1E137FA0C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E136D3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a5;
  v8[16] = v20;
  sub_1E1AF389C();
  v8[17] = swift_task_alloc();
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[18] = v14;
  v15 = sub_1E137AE64();
  *v14 = v8;
  v14[1] = sub_1E136D2A0;

  return v17(v8 + 13, a5, a6, a7, a8, v19, &type metadata for PersonalizedOfferContextIntent, v15);
}

uint64_t sub_1E136D558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = v20;
  sub_1E1AF389C();
  v8[17] = swift_task_alloc();
  v8[13] = a5;
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[18] = v14;
  v15 = sub_1E137ACB4();
  *v14 = v8;
  v14[1] = sub_1E136D704;

  return v17(v8 + 14, v8 + 13, a6, a7, a8, v19, &type metadata for ShelvesIntent, v15);
}

uint64_t sub_1E136D704()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1E136D818;
  }

  else
  {
    v2 = sub_1E137F9F0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E136D818()
{
  if (qword_1EE1EFA28 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  __swift_project_boxed_opaque_existential_1Tm(qword_1EE216AD8, qword_1EE216AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  *(v0 + 40) = MEMORY[0x1E69E6158];
  strcpy((v0 + 16), "ShelvesIntent");
  *(v0 + 30) = -4864;
  sub_1E1AF385C();
  sub_1E1308058(v0 + 16, &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  swift_getErrorValue();
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  *(v0 + 72) = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 48));
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_0, v2, v3);
  sub_1E1AF38DC();
  sub_1E1308058(v0 + 48, &qword_1ECEB2DF0);
  sub_1E1AF54AC();

  sub_1E1AF584C();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1E136DAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a5;
  v8[16] = v21;
  sub_1E1AF389C();
  v8[17] = swift_task_alloc();
  v18 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[18] = v14;
  v15 = type metadata accessor for ProductPageIntent();
  v16 = sub_1E137F960(&qword_1ECEB28D8, type metadata accessor for ProductPageIntent);
  *v14 = v8;
  v14[1] = sub_1E136DC9C;

  return v18(v8 + 13, a5, a6, a7, a8, v20, v15, v16);
}

uint64_t sub_1E136DC9C()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1E136DE24;
  }

  else
  {
    v2 = sub_1E136DDB0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E136DDB0()
{
  sub_1E1AF586C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E136DE24()
{
  if (qword_1EE1EFA28 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = v0[15];
  __swift_project_boxed_opaque_existential_1Tm(qword_1EE216AD8, qword_1EE216AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v4 = *v2;
  v3 = v2[1];
  v0[5] = MEMORY[0x1E69E6158];
  v0[2] = v4;
  v0[3] = v3;

  sub_1E1AF385C();
  sub_1E1308058((v0 + 2), &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  swift_getErrorValue();
  v5 = v0[10];
  v6 = v0[11];
  v0[9] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 6);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_0, v5, v6);
  sub_1E1AF38DC();
  sub_1E1308058((v0 + 6), &qword_1ECEB2DF0);
  sub_1E1AF54AC();

  sub_1E1AF584C();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E136E0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = v20;
  sub_1E1AF389C();
  v8[17] = swift_task_alloc();
  v8[13] = a5;
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[18] = v14;
  v15 = sub_1E137CDB8();
  v8[19] = v15;
  *v14 = v8;
  v14[1] = sub_1E136E260;

  return v17(v8 + 14, v8 + 13, a6, a7, a8, v19, &type metadata for ArcadeUpsellGridIntent, v15);
}

uint64_t sub_1E136E260()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1E136E3E8;
  }

  else
  {
    v2 = sub_1E136E374;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E136E374()
{
  sub_1E1AF586C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E136E3E8()
{
  if (qword_1EE1EFA28 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  __swift_project_boxed_opaque_existential_1Tm(qword_1EE216AD8, qword_1EE216AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v2 = sub_1E1AF390C();
  v0[5] = MEMORY[0x1E69E6158];
  v0[2] = v2;
  v0[3] = v3;
  sub_1E1AF385C();
  sub_1E1308058((v0 + 2), &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  swift_getErrorValue();
  v4 = v0[10];
  v5 = v0[11];
  v0[9] = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 6);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_0, v4, v5);
  sub_1E1AF38DC();
  sub_1E1308058((v0 + 6), &qword_1ECEB2DF0);
  sub_1E1AF54AC();

  sub_1E1AF584C();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E136E684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v21;
  sub_1E1AF389C();
  v8[16] = swift_task_alloc();
  v18 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[17] = v14;
  v15 = type metadata accessor for ArticlePageIntent();
  v16 = sub_1E137F960(qword_1EE1DEC70, type metadata accessor for ArticlePageIntent);
  *v14 = v8;
  v14[1] = sub_1E136E868;

  return v18(v8 + 13, a5, a6, a7, a8, v20, v15, v16);
}

uint64_t sub_1E136E868()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1E136E97C;
  }

  else
  {
    v2 = sub_1E137FA08;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E136E97C()
{
  if (qword_1EE1EFA28 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  __swift_project_boxed_opaque_existential_1Tm(qword_1EE216AD8, qword_1EE216AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v0[5] = MEMORY[0x1E69E6158];
  v0[2] = 0xD000000000000011;
  v0[3] = 0x80000001E1B5A810;
  sub_1E1AF385C();
  sub_1E1308058((v0 + 2), &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  swift_getErrorValue();
  v2 = v0[10];
  v3 = v0[11];
  v0[9] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 6);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_0, v2, v3);
  sub_1E1AF38DC();
  sub_1E1308058((v0 + 6), &qword_1ECEB2DF0);
  sub_1E1AF54AC();

  sub_1E1AF584C();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E136EC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a5;
  v8[16] = v21;
  sub_1E1AF389C();
  v8[17] = swift_task_alloc();
  v18 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[18] = v14;
  v15 = type metadata accessor for ActionIntent();
  v16 = sub_1E137F960(&qword_1EE1E06D8, type metadata accessor for ActionIntent);
  *v14 = v8;
  v14[1] = sub_1E136D2A0;

  return v18(v8 + 13, a5, a6, a7, a8, v20, v15, v16);
}

uint64_t sub_1E136EDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = v21;
  sub_1E1AF389C();
  v8[18] = swift_task_alloc();
  v8[13] = a5;
  v8[14] = a6;
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[19] = v14;
  v15 = sub_1E137DAC0();
  *v14 = v8;
  v14[1] = sub_1E136EFB0;

  return v17(v8 + 15, v8 + 13, a7, a8, v19, v20, &type metadata for SearchHintsIntent, v15);
}

uint64_t sub_1E136EFB0()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1E136F138;
  }

  else
  {
    v2 = sub_1E136F0C4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E136F0C4()
{
  sub_1E1AF586C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E136F138()
{
  if (qword_1EE1EFA28 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  __swift_project_boxed_opaque_existential_1Tm(qword_1EE216AD8, qword_1EE216AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v0[5] = MEMORY[0x1E69E6158];
  v0[2] = 0xD000000000000011;
  v0[3] = 0x80000001E1B5A7F0;
  sub_1E1AF385C();
  sub_1E1308058((v0 + 2), &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  swift_getErrorValue();
  v2 = v0[10];
  v3 = v0[11];
  v0[9] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 6);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_0, v2, v3);
  sub_1E1AF38DC();
  sub_1E1308058((v0 + 6), &qword_1ECEB2DF0);
  sub_1E1AF54AC();

  sub_1E1AF584C();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E136F3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 312) = a5;
  *(v8 + 320) = v26;
  sub_1E1AF389C();
  *(v8 + 328) = swift_task_alloc();
  v14 = a5[7];
  *(v8 + 112) = a5[6];
  *(v8 + 128) = v14;
  v15 = a5[5];
  *(v8 + 80) = a5[4];
  *(v8 + 96) = v15;
  v16 = a5[11];
  *(v8 + 176) = a5[10];
  *(v8 + 192) = v16;
  v17 = a5[9];
  *(v8 + 144) = a5[8];
  *(v8 + 160) = v17;
  v18 = a5[1];
  *(v8 + 16) = *a5;
  *(v8 + 32) = v18;
  v19 = a5[3];
  *(v8 + 48) = a5[2];
  *(v8 + 64) = v19;
  v23 = (*(*a4 + 112) + **(*a4 + 112));
  v20 = swift_task_alloc();
  *(v8 + 336) = v20;
  v21 = sub_1E137C1E4();
  *v20 = v8;
  v20[1] = sub_1E136F5A0;

  return v23(v8 + 296, v8 + 16, a6, a7, a8, v25, &type metadata for SearchResultsIntent, v21);
}

uint64_t sub_1E136F5A0()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = v2[39];
    v2[44] = *v3;
    v2[45] = v3[1];
    v4 = sub_1E136F73C;
  }

  else
  {
    v4 = sub_1E136F6C8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E136F6C8()
{
  sub_1E1AF586C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E136F73C()
{
  v1 = v0;
  if (qword_1EE1EFA28 != -1)
  {
    swift_once();
  }

  v2 = v0[44];
  v3 = v0[45];
  v4 = v0[43];
  __swift_project_boxed_opaque_existential_1Tm(qword_1EE216AD8, qword_1EE216AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v0[29] = MEMORY[0x1E69E6158];
  v0[26] = v2;
  v0[27] = v3;

  sub_1E1AF385C();
  sub_1E1308058((v0 + 26), &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  swift_getErrorValue();
  v5 = v0[34];
  v6 = v0[35];
  v1[33] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 30);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_0, v5, v6);
  sub_1E1AF38DC();
  sub_1E1308058((v1 + 30), &qword_1ECEB2DF0);
  sub_1E1AF54AC();

  sub_1E1AF584C();

  v8 = v1[1];

  return v8();
}

uint64_t sub_1E136F9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a5;
  v8[16] = v21;
  sub_1E1AF389C();
  v8[17] = swift_task_alloc();
  v18 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[18] = v14;
  v15 = type metadata accessor for ArcadeSubscribePageIntent();
  v16 = sub_1E137F960(&qword_1ECEB2970, type metadata accessor for ArcadeSubscribePageIntent);
  *v14 = v8;
  v14[1] = sub_1E136D2A0;

  return v18(v8 + 13, a5, a6, a7, a8, v20, v15, v16);
}

uint64_t sub_1E136FBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a5;
  v8[16] = v21;
  sub_1E1AF389C();
  v8[17] = swift_task_alloc();
  v18 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[18] = v14;
  v15 = type metadata accessor for ArcadeWelcomePageIntent();
  v16 = sub_1E137F960(&qword_1ECEB2A50, type metadata accessor for ArcadeWelcomePageIntent);
  *v14 = v8;
  v14[1] = sub_1E136D2A0;

  return v18(v8 + 13, a5, a6, a7, a8, v20, v15, v16);
}

uint64_t sub_1E136FD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 168) = a5;
  *(v8 + 176) = v21;
  sub_1E1AF389C();
  *(v8 + 184) = swift_task_alloc();
  v14 = a5[2];
  *(v8 + 32) = a5[1];
  *(v8 + 48) = v14;
  *(v8 + 16) = *a5;
  v18 = (*(*a4 + 112) + **(*a4 + 112));
  v15 = swift_task_alloc();
  *(v8 + 192) = v15;
  v16 = sub_1E137F3F8();
  *v15 = v8;
  v15[1] = sub_1E136FF4C;

  return v18(v8 + 152, v8 + 16, a6, a7, a8, v20, &type metadata for ArcadeSeeAllGamesPageIntent, v16);
}

uint64_t sub_1E136FF4C()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = v2[21];
    v2[26] = *v3;
    v2[27] = v3[1];
    v4 = sub_1E13700E8;
  }

  else
  {
    v4 = sub_1E1370074;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E1370074()
{
  sub_1E1AF586C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E13700E8()
{
  v1 = v0;
  if (qword_1EE1EFA28 != -1)
  {
    swift_once();
  }

  v2 = v0[26];
  v3 = v0[27];
  v4 = v0[25];
  __swift_project_boxed_opaque_existential_1Tm(qword_1EE216AD8, qword_1EE216AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v0[11] = MEMORY[0x1E69E6158];
  v0[8] = v2;
  v0[9] = v3;

  sub_1E1AF385C();
  sub_1E1308058((v0 + 8), &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  swift_getErrorValue();
  v5 = v0[16];
  v6 = v0[17];
  v1[15] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 12);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_0, v5, v6);
  sub_1E1AF38DC();
  sub_1E1308058((v1 + 12), &qword_1ECEB2DF0);
  sub_1E1AF54AC();

  sub_1E1AF584C();

  v8 = v1[1];

  return v8();
}

uint64_t sub_1E137037C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a6;
  v8[21] = v23;
  v8[19] = a5;
  sub_1E1AF389C();
  v8[22] = swift_task_alloc();
  v8[2] = a5;
  v8[3] = a6;
  v8[4] = a7;
  v8[5] = a8;
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[23] = v14;
  v15 = sub_1E137E1C8();
  *v14 = v8;
  v14[1] = sub_1E1370548;

  return v17(v8 + 17, v8 + 2, v19, v20, v21, v22, &type metadata for ArcadeDownloadPackCategoriesPageIntent, v15);
}

uint64_t sub_1E1370548()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1E137FA14;
  }

  else
  {
    v2 = sub_1E137F9FC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E137065C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v20;
  sub_1E1AF389C();
  v8[16] = swift_task_alloc();
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[17] = v14;
  v15 = sub_1E137F7C4();
  *v14 = v8;
  v14[1] = sub_1E1370800;

  return v17(v8 + 13, a5, a6, a7, a8, v19, &type metadata for GenericPageMoreIntent, v15);
}

uint64_t sub_1E1370800()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1E1370914;
  }

  else
  {
    v2 = sub_1E137FA08;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E1370914()
{
  if (qword_1EE1EFA28 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  __swift_project_boxed_opaque_existential_1Tm(qword_1EE216AD8, qword_1EE216AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v0[5] = MEMORY[0x1E69E6158];
  v0[2] = 0xD000000000000015;
  v0[3] = 0x80000001E1B5A770;
  sub_1E1AF385C();
  sub_1E1308058((v0 + 2), &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  swift_getErrorValue();
  v2 = v0[10];
  v3 = v0[11];
  v0[9] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 6);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_0, v2, v3);
  sub_1E1AF38DC();
  sub_1E1308058((v0 + 6), &qword_1ECEB2DF0);
  sub_1E1AF54AC();

  sub_1E1AF584C();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E1370BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v22;
  sub_1E1AF389C();
  v8[16] = swift_task_alloc();
  v14 = sub_1E1AF481C();
  v8[17] = v14;
  v8[18] = *(v14 - 8);
  v15 = swift_task_alloc();
  v8[19] = v15;
  v8[13] = a5;
  v19 = (*(*a4 + 112) + **(*a4 + 112));
  v16 = swift_task_alloc();
  v8[20] = v16;
  v17 = sub_1E137F5AC();
  v8[21] = v17;
  *v16 = v8;
  v16[1] = sub_1E1370DC0;

  return v19(v15, v8 + 13, a6, a7, a8, v21, &type metadata for MetricsFieldLintingIntent, v17);
}

uint64_t sub_1E1370DC0()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1E1370F74;
  }

  else
  {
    v2 = sub_1E1370ED4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E1370ED4()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  sub_1E1AF586C();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E1370F74()
{
  if (qword_1EE1EFA28 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  __swift_project_boxed_opaque_existential_1Tm(qword_1EE216AD8, qword_1EE216AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v2 = sub_1E1AF390C();
  v0[5] = MEMORY[0x1E69E6158];
  v0[2] = v2;
  v0[3] = v3;
  sub_1E1AF385C();
  sub_1E1308058((v0 + 2), &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  swift_getErrorValue();
  v4 = v0[10];
  v5 = v0[11];
  v0[9] = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 6);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_0, v4, v5);
  sub_1E1AF38DC();
  sub_1E1308058((v0 + 6), &qword_1ECEB2DF0);
  sub_1E1AF54AC();

  sub_1E1AF584C();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E137121C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a5;
  v8[16] = v21;
  sub_1E1AF389C();
  v8[17] = swift_task_alloc();
  v18 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[18] = v14;
  v15 = type metadata accessor for MSOPageIntent();
  v16 = sub_1E137F960(&qword_1ECEB2990, type metadata accessor for MSOPageIntent);
  *v14 = v8;
  v14[1] = sub_1E136D2A0;

  return v18(v8 + 13, a5, a6, a7, a8, v20, v15, v16);
}

uint64_t sub_1E1371400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a5;
  v8[16] = v20;
  sub_1E1AF389C();
  v8[17] = swift_task_alloc();
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[18] = v14;
  v15 = sub_1E137F240();
  *v14 = v8;
  v14[1] = sub_1E136D2A0;

  return v17(v8 + 13, a5, a6, a7, a8, v19, &type metadata for ArcadeSeeAllGamesPageMoreIntent, v15);
}

uint64_t sub_1E13715A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a5;
  v8[16] = v20;
  sub_1E1AF389C();
  v8[17] = swift_task_alloc();
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[18] = v14;
  v15 = sub_1E137C02C();
  *v14 = v8;
  v14[1] = sub_1E136D2A0;

  return v17(v8 + 13, a5, a6, a7, a8, v19, &type metadata for SearchResultsMoreIntent, v15);
}

uint64_t sub_1E1371748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v20;
  sub_1E1AF389C();
  v8[16] = swift_task_alloc();
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[17] = v14;
  v15 = sub_1E137D0E4();
  *v14 = v8;
  v14[1] = sub_1E13718EC;

  return v17(v8 + 13, a5, a6, a7, a8, v19, &type metadata for TopChartsPageMoreIntent, v15);
}

uint64_t sub_1E13718EC()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1E1371A00;
  }

  else
  {
    v2 = sub_1E137FA08;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E1371A00()
{
  if (qword_1EE1EFA28 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  __swift_project_boxed_opaque_existential_1Tm(qword_1EE216AD8, qword_1EE216AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v0[5] = MEMORY[0x1E69E6158];
  v0[2] = 0xD000000000000017;
  v0[3] = 0x80000001E1B5A7D0;
  sub_1E1AF385C();
  sub_1E1308058((v0 + 2), &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  swift_getErrorValue();
  v2 = v0[10];
  v3 = v0[11];
  v0[9] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 6);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_0, v2, v3);
  sub_1E1AF38DC();
  sub_1E1308058((v0 + 6), &qword_1ECEB2DF0);
  sub_1E1AF54AC();

  sub_1E1AF584C();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E1371C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v21;
  sub_1E1AF389C();
  v8[16] = swift_task_alloc();
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v13 = swift_task_alloc();
  v8[17] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2A20);
  v15 = sub_1E1302CD4(&qword_1ECEB2A28, &qword_1ECEB2A20);
  *v13 = v8;
  v13[1] = sub_1E1371E80;

  return v17(v8 + 13, a5, a6, a7, a8, v20, v14, v15);
}

uint64_t sub_1E1371E80()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1E1371F94;
  }

  else
  {
    v2 = sub_1E137FA08;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E1371F94()
{
  if (qword_1EE1EFA28 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  __swift_project_boxed_opaque_existential_1Tm(qword_1EE216AD8, qword_1EE216AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v0[5] = MEMORY[0x1E69E6158];
  v0[2] = 0xD000000000000011;
  v0[3] = 0x80000001E1B5A790;
  sub_1E1AF385C();
  sub_1E1308058((v0 + 2), &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  swift_getErrorValue();
  v2 = v0[10];
  v3 = v0[11];
  v0[9] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 6);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_0, v2, v3);
  sub_1E1AF38DC();
  sub_1E1308058((v0 + 6), &qword_1ECEB2DF0);
  sub_1E1AF54AC();

  sub_1E1AF584C();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E1372228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v21;
  sub_1E1AF389C();
  v8[16] = swift_task_alloc();
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v13 = swift_task_alloc();
  v8[17] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2A10);
  v15 = sub_1E1302CD4(&qword_1ECEB2A18, &qword_1ECEB2A10);
  *v13 = v8;
  v13[1] = sub_1E1372414;

  return v17(v8 + 13, a5, a6, a7, a8, v20, v14, v15);
}

uint64_t sub_1E1372414()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1E137F9E0;
  }

  else
  {
    v2 = sub_1E137FA08;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E1372528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = a5;
  *(v8 + 160) = v21;
  sub_1E1AF389C();
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 48) = *(a5 + 32);
  v14 = *(a5 + 16);
  *(v8 + 16) = *a5;
  *(v8 + 32) = v14;
  v18 = (*(*a4 + 112) + **(*a4 + 112));
  v15 = swift_task_alloc();
  *(v8 + 176) = v15;
  v16 = sub_1E137DC78();
  *v15 = v8;
  v15[1] = sub_1E13726DC;

  return v18(v8 + 49, v8 + 16, a6, a7, a8, v20, &type metadata for UpdateAppEventNotificationIntent, v16);
}

uint64_t sub_1E13726DC()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = v2[19];
    v2[24] = *v3;
    v2[25] = v3[1];
    v4 = sub_1E1372870;
  }

  else
  {
    v4 = sub_1E1372804;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E1372804()
{
  sub_1E1AF586C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E1372870()
{
  v1 = v0;
  if (qword_1EE1EFA28 != -1)
  {
    swift_once();
  }

  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[23];
  __swift_project_boxed_opaque_existential_1Tm(qword_1EE216AD8, qword_1EE216AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v0[10] = MEMORY[0x1E69E6158];
  v0[7] = v2;
  v0[8] = v3;

  sub_1E1AF385C();
  sub_1E1308058((v0 + 7), &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  swift_getErrorValue();
  v5 = v0[15];
  v6 = v0[16];
  v1[14] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 11);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_0, v5, v6);
  sub_1E1AF38DC();
  sub_1E1308058((v1 + 11), &qword_1ECEB2DF0);
  sub_1E1AF54AC();

  sub_1E1AF584C();

  v8 = v1[1];

  return v8();
}

uint64_t sub_1E1372B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a5;
  v8[16] = v20;
  sub_1E1AF389C();
  v8[17] = swift_task_alloc();
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[18] = v14;
  v15 = sub_1E137D90C();
  *v14 = v8;
  v14[1] = sub_1E136D2A0;

  return v17(v8 + 13, a5, a6, a7, a8, v19, &type metadata for ArcadeSubscriptionDecorationIntent, v15);
}

uint64_t sub_1E1372CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[69] = v20;
  v8[68] = a5;
  sub_1E1AF389C();
  v8[70] = swift_task_alloc();
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[71] = v14;
  v15 = sub_1E137D708();
  *v14 = v8;
  v14[1] = sub_1E1372E50;

  return v17(v8 + 2, a5, a6, a7, a8, v19, &type metadata for PurchaseDecorationIntent, v15);
}

uint64_t sub_1E1372E50()
{
  *(*v1 + 576) = v0;

  if (v0)
  {
    v2 = sub_1E1373020;
  }

  else
  {
    v2 = sub_1E1372F64;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E1372F64()
{
  sub_1E1AF586C();
  v1 = *(v0 + 192);
  *(v0 + 392) = *(v0 + 176);
  *(v0 + 408) = v1;
  *(v0 + 424) = *(v0 + 208);
  v2 = *(v0 + 128);
  *(v0 + 328) = *(v0 + 112);
  *(v0 + 344) = v2;
  v3 = *(v0 + 160);
  *(v0 + 360) = *(v0 + 144);
  *(v0 + 376) = v3;
  v4 = *(v0 + 64);
  *(v0 + 264) = *(v0 + 48);
  *(v0 + 280) = v4;
  v5 = *(v0 + 96);
  *(v0 + 296) = *(v0 + 80);
  *(v0 + 312) = v5;
  v6 = *(v0 + 32);
  *(v0 + 232) = *(v0 + 16);
  *(v0 + 440) = *(v0 + 224);
  *(v0 + 248) = v6;
  sub_1E137D75C(v0 + 232);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1E1373020()
{
  if (qword_1EE1EFA28 != -1)
  {
    swift_once();
  }

  v1 = v0[72];
  v2 = v0[68];
  __swift_project_boxed_opaque_existential_1Tm(qword_1EE216AD8, qword_1EE216AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v4 = *v2;
  v3 = v2[1];
  v0[59] = MEMORY[0x1E69E6158];
  v0[56] = v4;
  v0[57] = v3;

  sub_1E1AF385C();
  sub_1E1308058((v0 + 56), &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  swift_getErrorValue();
  v5 = v0[64];
  v6 = v0[65];
  v0[63] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 60);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_0, v5, v6);
  sub_1E1AF38DC();
  sub_1E1308058((v0 + 60), &qword_1ECEB2DF0);
  sub_1E1AF54AC();

  sub_1E1AF584C();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E13732AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = a6;
  v8[20] = v22;
  v8[18] = a5;
  sub_1E1AF389C();
  v8[21] = swift_task_alloc();
  v8[10] = a5;
  v8[11] = a6;
  v8[12] = a7;
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[22] = v14;
  v15 = sub_1E137D558();
  *v14 = v8;
  v14[1] = sub_1E137346C;

  return v17(v8 + 16, v8 + 10, a8, v19, v20, v21, &type metadata for PurchasesDecorationIntent, v15);
}

uint64_t sub_1E137346C()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1E137FA10;
  }

  else
  {
    v2 = sub_1E1373580;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E1373580()
{
  sub_1E1AF586C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E13735F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = a6;
  v8[20] = v22;
  v8[18] = a5;
  sub_1E1AF389C();
  v8[21] = swift_task_alloc();
  v8[10] = a5;
  v8[11] = a6;
  v8[12] = a7;
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[22] = v14;
  v15 = sub_1E137D39C();
  *v14 = v8;
  v14[1] = sub_1E13737B4;

  return v17(v8 + 16, v8 + 10, a8, v19, v20, v21, &type metadata for BatchPurchaseDecorationIntent, v15);
}

uint64_t sub_1E13737B4()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1E137FA10;
  }

  else
  {
    v2 = sub_1E137F9F8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E13738C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 136) = v22;
  sub_1E1AF389C();
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 104) = a5;
  *(v8 + 112) = a6;
  *(v8 + 120) = a7;
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  *(v8 + 152) = v14;
  v15 = sub_1E137D240();
  *(v8 + 160) = v15;
  *v14 = v8;
  v14[1] = sub_1E1373A8C;

  return v17(v8 + 121, v8 + 104, a8, v19, v20, v21, &type metadata for CancelPreorderIntent, v15);
}

uint64_t sub_1E1373A8C()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1E1373C0C;
  }

  else
  {
    v2 = sub_1E1373BA0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E1373BA0()
{
  sub_1E1AF586C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E1373C0C()
{
  if (qword_1EE1EFA28 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  __swift_project_boxed_opaque_existential_1Tm(qword_1EE216AD8, qword_1EE216AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v2 = sub_1E1AF390C();
  v0[5] = MEMORY[0x1E69E6158];
  v0[2] = v2;
  v0[3] = v3;
  sub_1E1AF385C();
  sub_1E1308058((v0 + 2), &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  swift_getErrorValue();
  v4 = v0[10];
  v5 = v0[11];
  v0[9] = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 6);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_0, v4, v5);
  sub_1E1AF38DC();
  sub_1E1308058((v0 + 6), &qword_1ECEB2DF0);
  sub_1E1AF54AC();

  sub_1E1AF584C();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E1373EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 160) = a5;
  *(v8 + 168) = v21;
  sub_1E1AF389C();
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 48) = *(a5 + 32);
  v14 = *(a5 + 16);
  *(v8 + 16) = *a5;
  *(v8 + 32) = v14;
  v18 = (*(*a4 + 112) + **(*a4 + 112));
  v15 = swift_task_alloc();
  *(v8 + 184) = v15;
  v16 = sub_1E137CC5C();
  *v15 = v8;
  v15[1] = sub_1E137405C;

  return v18(v8 + 144, v8 + 16, a6, a7, a8, v20, &type metadata for EngagementEventIntent, v16);
}

uint64_t sub_1E137405C()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = v2[20];
    v2[25] = *v3;
    v2[26] = v3[1];
    v4 = sub_1E13741F8;
  }

  else
  {
    v4 = sub_1E1374184;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E1374184()
{
  sub_1E1AF586C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E13741F8()
{
  v1 = v0;
  if (qword_1EE1EFA28 != -1)
  {
    swift_once();
  }

  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[24];
  __swift_project_boxed_opaque_existential_1Tm(qword_1EE216AD8, qword_1EE216AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v0[10] = MEMORY[0x1E69E6158];
  v0[7] = v2;
  v0[8] = v3;

  sub_1E1AF385C();
  sub_1E1308058((v0 + 7), &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  swift_getErrorValue();
  v5 = v0[15];
  v6 = v0[16];
  v1[14] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 11);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_0, v5, v6);
  sub_1E1AF38DC();
  sub_1E1308058((v1 + 11), &qword_1ECEB2DF0);
  sub_1E1AF54AC();

  sub_1E1AF584C();

  v8 = v1[1];

  return v8();
}

uint64_t sub_1E137448C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 176) = a5;
  *(v8 + 184) = v21;
  sub_1E1AF389C();
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 64) = *(a5 + 48);
  v14 = *(a5 + 32);
  *(v8 + 32) = *(a5 + 16);
  *(v8 + 48) = v14;
  *(v8 + 16) = *a5;
  v18 = (*(*a4 + 112) + **(*a4 + 112));
  v15 = swift_task_alloc();
  *(v8 + 200) = v15;
  v16 = sub_1E137CAA4();
  *v15 = v8;
  v15[1] = sub_1E1374648;

  return v18(v8 + 160, v8 + 16, a6, a7, a8, v20, &type metadata for BadgingEventIntent, v16);
}

uint64_t sub_1E1374648()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = v2[22];
    v2[27] = *v3;
    v2[28] = v3[1];
    v4 = sub_1E13747E4;
  }

  else
  {
    v4 = sub_1E1374770;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E1374770()
{
  sub_1E1AF586C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E13747E4()
{
  v1 = v0;
  if (qword_1EE1EFA28 != -1)
  {
    swift_once();
  }

  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[26];
  __swift_project_boxed_opaque_existential_1Tm(qword_1EE216AD8, qword_1EE216AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v0[12] = MEMORY[0x1E69E6158];
  v0[9] = v2;
  v0[10] = v3;

  sub_1E1AF385C();
  sub_1E1308058((v0 + 9), &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  swift_getErrorValue();
  v5 = v0[17];
  v6 = v0[18];
  v1[16] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 13);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_0, v5, v6);
  sub_1E1AF38DC();
  sub_1E1308058((v1 + 13), &qword_1ECEB2DF0);
  sub_1E1AF54AC();

  sub_1E1AF584C();

  v8 = v1[1];

  return v8();
}

uint64_t sub_1E1374A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a5;
  v8[16] = v21;
  sub_1E1AF389C();
  v8[17] = swift_task_alloc();
  v18 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[18] = v14;
  v15 = type metadata accessor for SearchChartsAndCategoriesPageIntent();
  v16 = sub_1E137F960(&qword_1ECEB2960, type metadata accessor for SearchChartsAndCategoriesPageIntent);
  *v14 = v8;
  v14[1] = sub_1E136D2A0;

  return v18(v8 + 13, a5, a6, a7, a8, v20, v15, v16);
}

uint64_t sub_1E1374C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v21;
  sub_1E1AF389C();
  v8[16] = swift_task_alloc();
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v13 = swift_task_alloc();
  v8[17] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2920);
  v15 = sub_1E1302CD4(qword_1EE1DC470, &qword_1ECEB2920);
  *v13 = v8;
  v13[1] = sub_1E1374E48;

  return v17(v8 + 13, a5, a6, a7, a8, v20, v14, v15);
}

uint64_t sub_1E1374E48()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1E137F9E4;
  }

  else
  {
    v2 = sub_1E137FA08;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E1374F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v21;
  sub_1E1AF389C();
  v8[16] = swift_task_alloc();
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v13 = swift_task_alloc();
  v8[17] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2910);
  v15 = sub_1E1302CD4(&qword_1ECEB2918, &qword_1ECEB2910);
  *v13 = v8;
  v13[1] = sub_1E1372414;

  return v17(v8 + 13, a5, a6, a7, a8, v20, v14, v15);
}

uint64_t sub_1E1375148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v21;
  sub_1E1AF389C();
  v8[16] = swift_task_alloc();
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v13 = swift_task_alloc();
  v8[17] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB28F8);
  v15 = sub_1E1302CD4(&qword_1ECEB2900, &qword_1ECEB28F8);
  *v13 = v8;
  v13[1] = sub_1E1374E48;

  return v17(v8 + 13, a5, a6, a7, a8, v20, v14, v15);
}

uint64_t sub_1E1375334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v21;
  sub_1E1AF389C();
  v8[16] = swift_task_alloc();
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v13 = swift_task_alloc();
  v8[17] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB28E8);
  v15 = sub_1E1302CD4(&qword_1ECEB28F0, &qword_1ECEB28E8);
  *v13 = v8;
  v13[1] = sub_1E1372414;

  return v17(v8 + 13, a5, a6, a7, a8, v20, v14, v15);
}

uint64_t sub_1E1375520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a5;
  v8[16] = v21;
  sub_1E1AF389C();
  v8[17] = swift_task_alloc();
  v18 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[18] = v14;
  v15 = type metadata accessor for ShelfBasedProductPageIntent();
  v16 = sub_1E137F960(&qword_1EE1D7470, type metadata accessor for ShelfBasedProductPageIntent);
  *v14 = v8;
  v14[1] = sub_1E136D2A0;

  return v18(v8 + 13, a5, a6, a7, a8, v20, v15, v16);
}

uint64_t sub_1E1375704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a5;
  v8[16] = v21;
  sub_1E1AF389C();
  v8[17] = swift_task_alloc();
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v13 = swift_task_alloc();
  v8[18] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2870);
  v8[19] = v14;
  v15 = sub_1E1302CD4(&qword_1EE1D29B8, &qword_1ECEB2870);
  v8[20] = v15;
  *v13 = v8;
  v13[1] = sub_1E13758F8;

  return v17(v8 + 13, a5, a6, a7, a8, v20, v14, v15);
}

uint64_t sub_1E13758F8()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1E1375A0C;
  }

  else
  {
    v2 = sub_1E137FA0C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E1375A0C()
{
  if (qword_1EE1EFA28 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  __swift_project_boxed_opaque_existential_1Tm(qword_1EE216AD8, qword_1EE216AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v2 = sub_1E1AF390C();
  v0[5] = MEMORY[0x1E69E6158];
  v0[2] = v2;
  v0[3] = v3;
  sub_1E1AF385C();
  sub_1E1308058((v0 + 2), &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  swift_getErrorValue();
  v4 = v0[10];
  v5 = v0[11];
  v0[9] = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 6);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_0, v4, v5);
  sub_1E1AF38DC();
  sub_1E1308058((v0 + 6), &qword_1ECEB2DF0);
  sub_1E1AF54AC();

  sub_1E1AF584C();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E1375CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = v21;
  sub_1E1AF389C();
  v8[16] = swift_task_alloc();
  v18 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[17] = v14;
  v15 = type metadata accessor for TodayPageIntent();
  v16 = sub_1E137F960(&qword_1EE1DF538, type metadata accessor for TodayPageIntent);
  *v14 = v8;
  v14[1] = sub_1E1375E90;

  return v18(v8 + 13, a5, a6, a7, a8, v20, v15, v16);
}

uint64_t sub_1E1375E90()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1E1375FA4;
  }

  else
  {
    v2 = sub_1E137FA08;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E1375FA4()
{
  if (qword_1EE1EFA28 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  __swift_project_boxed_opaque_existential_1Tm(qword_1EE216AD8, qword_1EE216AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v0[5] = MEMORY[0x1E69E6158];
  v0[2] = 0x6761507961646F54;
  v0[3] = 0xEF746E65746E4965;
  sub_1E1AF385C();
  sub_1E1308058((v0 + 2), &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  swift_getErrorValue();
  v2 = v0[10];
  v3 = v0[11];
  v0[9] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 6);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_0, v2, v3);
  sub_1E1AF38DC();
  sub_1E1308058((v0 + 6), &qword_1ECEB2DF0);
  sub_1E1AF54AC();

  sub_1E1AF584C();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E1376244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a5;
  v8[16] = v20;
  sub_1E1AF389C();
  v8[17] = swift_task_alloc();
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[18] = v14;
  v15 = sub_1E137EA80();
  *v14 = v8;
  v14[1] = sub_1E136D2A0;

  return v17(v8 + 13, a5, a6, a7, a8, v19, &type metadata for TodayPageMoreIntent, v15);
}

uint64_t sub_1E13763E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 312) = a5;
  *(v8 + 320) = v26;
  sub_1E1AF389C();
  *(v8 + 328) = swift_task_alloc();
  v14 = a5[7];
  *(v8 + 112) = a5[6];
  *(v8 + 128) = v14;
  v15 = a5[5];
  *(v8 + 80) = a5[4];
  *(v8 + 96) = v15;
  v16 = a5[11];
  *(v8 + 176) = a5[10];
  *(v8 + 192) = v16;
  v17 = a5[9];
  *(v8 + 144) = a5[8];
  *(v8 + 160) = v17;
  v18 = a5[1];
  *(v8 + 16) = *a5;
  *(v8 + 32) = v18;
  v19 = a5[3];
  *(v8 + 48) = a5[2];
  *(v8 + 64) = v19;
  v23 = (*(*a4 + 112) + **(*a4 + 112));
  v20 = swift_task_alloc();
  *(v8 + 336) = v20;
  v21 = sub_1E137F090();
  *v20 = v8;
  v20[1] = sub_1E13765BC;

  return v23(v8 + 296, v8 + 16, a6, a7, a8, v25, &type metadata for SearchResultsPageIntent, v21);
}

uint64_t sub_1E13765BC()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = v2[39];
    v2[44] = *v3;
    v2[45] = v3[1];
    v4 = sub_1E137FA04;
  }

  else
  {
    v4 = sub_1E137F9F4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E13766E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a5;
  v8[16] = v20;
  sub_1E1AF389C();
  v8[17] = swift_task_alloc();
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[18] = v14;
  v15 = sub_1E137EE14();
  *v14 = v8;
  v14[1] = sub_1E136D2A0;

  return v17(v8 + 13, a5, a6, a7, a8, v19, &type metadata for SearchResultsPageMoreIntent, v15);
}

uint64_t sub_1E1376888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = a6;
  v8[19] = v21;
  v8[17] = a5;
  sub_1E1AF389C();
  v8[20] = swift_task_alloc();
  v8[13] = a5;
  v8[14] = a6;
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[21] = v14;
  v15 = sub_1E137B4F8();
  *v14 = v8;
  v14[1] = sub_1E1376A48;

  return v17(v8 + 15, v8 + 13, a7, a8, v19, v20, &type metadata for AccountLinksIntent, v15);
}

uint64_t sub_1E1376A48()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1E1376BD0;
  }

  else
  {
    v2 = sub_1E1376B5C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E1376B5C()
{
  sub_1E1AF586C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E1376BD0()
{
  v1 = v0;
  if (qword_1EE1EFA28 != -1)
  {
    swift_once();
  }

  v2 = v0[22];
  v3 = v0[17];
  v4 = v0[18];
  __swift_project_boxed_opaque_existential_1Tm(qword_1EE216AD8, qword_1EE216AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v0[5] = MEMORY[0x1E69E6158];
  v0[2] = v3;
  v0[3] = v4;

  sub_1E1AF385C();
  sub_1E1308058((v0 + 2), &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  swift_getErrorValue();
  v5 = v0[10];
  v6 = v0[11];
  v1[9] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 6);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_0, v5, v6);
  sub_1E1AF38DC();
  sub_1E1308058((v1 + 6), &qword_1ECEB2DF0);
  sub_1E1AF54AC();

  sub_1E1AF584C();

  v8 = v1[1];

  return v8();
}

uint64_t sub_1E1376E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = a6;
  v8[20] = v22;
  v8[18] = a5;
  sub_1E1AF389C();
  v8[21] = swift_task_alloc();
  v8[10] = a5;
  v8[11] = a6;
  v8[12] = a7;
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[22] = v14;
  v15 = sub_1E137B39C();
  *v14 = v8;
  v14[1] = sub_1E1377024;

  return v17(v8 + 16, v8 + 10, a8, v19, v20, v21, &type metadata for IconArtworkIntent, v15);
}

uint64_t sub_1E1377024()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1E13771AC;
  }

  else
  {
    v2 = sub_1E1377138;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E1377138()
{
  sub_1E1AF586C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E13771AC()
{
  v1 = v0;
  if (qword_1EE1EFA28 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v3 = v0[18];
  v4 = v0[19];
  __swift_project_boxed_opaque_existential_1Tm(qword_1EE216AD8, qword_1EE216AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v0[5] = MEMORY[0x1E69E6158];
  v0[2] = v3;
  v0[3] = v4;

  sub_1E1AF385C();
  sub_1E1308058((v0 + 2), &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  swift_getErrorValue();
  v5 = v0[13];
  v6 = v0[14];
  v1[9] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 6);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_0, v5, v6);
  sub_1E1AF38DC();
  sub_1E1308058((v1 + 6), &qword_1ECEB2DF0);
  sub_1E1AF54AC();

  sub_1E1AF584C();

  v8 = v1[1];

  return v8();
}

uint64_t sub_1E1377440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a6;
  v8[21] = v23;
  v8[19] = a5;
  sub_1E1AF389C();
  v8[22] = swift_task_alloc();
  v8[2] = a5;
  v8[3] = a6;
  v8[4] = a7;
  v8[5] = a8;
  v17 = (*(*a4 + 112) + **(*a4 + 112));
  v14 = swift_task_alloc();
  v8[23] = v14;
  v15 = sub_1E137B240();
  *v14 = v8;
  v14[1] = sub_1E137760C;

  return v17(v8 + 17, v8 + 2, v19, v20, v21, v22, &type metadata for MSOProviderDataIntent, v15);
}

uint64_t sub_1E137760C()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1E1377794;
  }

  else
  {
    v2 = sub_1E1377720;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E1377720()
{
  sub_1E1AF586C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E1377794()
{
  v1 = v0;
  if (qword_1EE1EFA28 != -1)
  {
    swift_once();
  }

  v2 = v0[24];
  v3 = v0[19];
  v4 = v0[20];
  __swift_project_boxed_opaque_existential_1Tm(qword_1EE216AD8, qword_1EE216AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF388C();
  sub_1E1AF387C();
  v0[9] = MEMORY[0x1E69E6158];
  v0[6] = v3;
  v0[7] = v4;

  sub_1E1AF385C();
  sub_1E1308058((v0 + 6), &qword_1ECEB2DF0);
  sub_1E1AF387C();
  sub_1E1AF38AC();
  swift_getErrorValue();
  v5 = v0[14];
  v6 = v0[15];
  v1[13] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 10);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_0, v5, v6);
  sub_1E1AF38DC();
  sub_1E1308058((v1 + 10), &qword_1ECEB2DF0);
  sub_1E1AF54AC();

  sub_1E1AF584C();

  v8 = v1[1];

  return v8();
}

uint64_t sub_1E1377A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *a5;
  v15 = swift_task_alloc();
  *(v8 + 16) = v15;
  *v15 = v8;
  v15[1] = sub_1E130B5D8;

  return sub_1E136D558(a1, a2, a3, a4, v14, a6, a7, a8);
}

uint64_t sub_1E1377B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *a5;
  v15 = swift_task_alloc();
  *(v8 + 16) = v15;
  *v15 = v8;
  v15[1] = sub_1E130B5D8;

  return sub_1E136E0B0(a1, a2, a3, a4, v14, a6, a7, a8);
}

uint64_t sub_1E1377C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v11 = *a5;
  v12 = a5[1];
  v13 = swift_task_alloc();
  *(v7 + 16) = v13;
  *v13 = v7;
  v13[1] = sub_1E130B5D8;

  return sub_1E136EDF4(a1, a2, a3, a4, v11, v12, a6, a7);
}

uint64_t sub_1E1377D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = v8;
  v16 = a5[9];
  *(v14 + 144) = a5[8];
  *(v14 + 160) = v16;
  v17 = a5[11];
  *(v14 + 176) = a5[10];
  *(v14 + 192) = v17;
  v18 = a5[5];
  *(v14 + 80) = a5[4];
  *(v14 + 96) = v18;
  v19 = a5[7];
  *(v14 + 112) = a5[6];
  *(v14 + 128) = v19;
  v20 = a5[1];
  *(v14 + 16) = *a5;
  *(v14 + 32) = v20;
  v21 = a5[3];
  *(v14 + 48) = a5[2];
  *(v14 + 64) = v21;
  v22 = swift_task_alloc();
  *(v14 + 208) = v22;
  *v22 = v14;
  v22[1] = sub_1E1377E44;

  return sub_1E136F3CC(a1, a2, a3, a4, (v14 + 16), a6, a7, a8);
}

uint64_t sub_1E1377E44()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E1377F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = a5[1];
  *(v8 + 16) = *a5;
  *(v8 + 32) = v15;
  *(v8 + 48) = a5[2];
  v16 = swift_task_alloc();
  *(v8 + 64) = v16;
  *v16 = v8;
  v16[1] = sub_1E1378044;

  return sub_1E136FD98(a1, a2, a3, a4, (v8 + 16), a6, a7, a8);
}

uint64_t sub_1E1378044()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E1378138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = *a5;
  v9 = a5[1];
  v10 = a5[2];
  v11 = a5[3];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1E130B5D8;

  return sub_1E137037C(a1, a2, a3, a4, v8, v9, v10, v11);
}

uint64_t sub_1E137824C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *a5;
  v15 = swift_task_alloc();
  *(v8 + 16) = v15;
  *v15 = v8;
  v15[1] = sub_1E130B5D8;

  return sub_1E1370BA8(a1, a2, a3, a4, v14, a6, a7, a8);
}

uint64_t sub_1E1378344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a5 + 16);
  *(v8 + 16) = *a5;
  *(v8 + 32) = v15;
  *(v8 + 48) = *(a5 + 32);
  v16 = swift_task_alloc();
  *(v8 + 56) = v16;
  *v16 = v8;
  v16[1] = sub_1E1378450;

  return sub_1E1372528(a1, a2, a3, a4, v8 + 16, a6, a7, a8);
}

uint64_t sub_1E1378450()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E1378544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v10 = *a5;
  v11 = a5[1];
  v12 = a5[2];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1E130B5D8;

  return sub_1E13732AC(a1, a2, a3, a4, v10, v11, v12, a6);
}

uint64_t sub_1E1378650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v10 = *a5;
  v11 = a5[1];
  v12 = a5[2];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1E130B5D8;

  return sub_1E13735F4(a1, a2, a3, a4, v10, v11, v12, a6);
}

uint64_t sub_1E137875C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a5;
  v11 = *(a5 + 8);
  v12 = *(a5 + 16);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1E130B5D8;

  return sub_1E13738C8(a1, a2, a3, a4, v10, v11, v12, a6);
}

uint64_t sub_1E1378868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a5 + 16);
  *(v8 + 16) = *a5;
  *(v8 + 32) = v15;
  *(v8 + 48) = *(a5 + 32);
  v16 = swift_task_alloc();
  *(v8 + 56) = v16;
  *v16 = v8;
  v16[1] = sub_1E1378450;

  return sub_1E1373EA8(a1, a2, a3, a4, v8 + 16, a6, a7, a8);
}

uint64_t sub_1E1378974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a5 + 16);
  *(v8 + 16) = *a5;
  *(v8 + 32) = v15;
  *(v8 + 48) = *(a5 + 32);
  *(v8 + 64) = *(a5 + 48);
  v16 = swift_task_alloc();
  *(v8 + 72) = v16;
  *v16 = v8;
  v16[1] = sub_1E1378A88;

  return sub_1E137448C(a1, a2, a3, a4, v8 + 16, a6, a7, a8);
}

uint64_t sub_1E1378A88()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E1378B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = v8;
  v16 = a5[9];
  *(v14 + 144) = a5[8];
  *(v14 + 160) = v16;
  v17 = a5[11];
  *(v14 + 176) = a5[10];
  *(v14 + 192) = v17;
  v18 = a5[5];
  *(v14 + 80) = a5[4];
  *(v14 + 96) = v18;
  v19 = a5[7];
  *(v14 + 112) = a5[6];
  *(v14 + 128) = v19;
  v20 = a5[1];
  *(v14 + 16) = *a5;
  *(v14 + 32) = v20;
  v21 = a5[3];
  *(v14 + 48) = a5[2];
  *(v14 + 64) = v21;
  v22 = swift_task_alloc();
  *(v14 + 208) = v22;
  *v22 = v14;
  v22[1] = sub_1E137F9E8;

  return sub_1E13763E8(a1, a2, a3, a4, (v14 + 16), a6, a7, a8);
}

uint64_t sub_1E1378CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v11 = *a5;
  v12 = a5[1];
  v13 = swift_task_alloc();
  *(v7 + 16) = v13;
  *v13 = v7;
  v13[1] = sub_1E130B5D8;

  return sub_1E1376888(a1, a2, a3, a4, v11, v12, a6, a7);
}

uint64_t sub_1E1378DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v10 = *a5;
  v11 = a5[1];
  v12 = a5[2];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1E130B5DC;

  return sub_1E1376E64(a1, a2, a3, a4, v10, v11, v12, a6);
}

uint64_t sub_1E1378EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = *a5;
  v9 = a5[1];
  v10 = a5[2];
  v11 = a5[3];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1E130B5D8;

  return sub_1E1377440(a1, a2, a3, a4, v8, v9, v10, v11);
}

uint64_t sub_1E1378FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0);
  v70 = *(v13 - 8);
  v71 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v63 - v14;
  v74 = sub_1E1AF3D0C();
  v69 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v17 = v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + qword_1EE215800 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + qword_1EE1D9788) = 0;
  v18 = MEMORY[0x1E69E7CC0];
  *(v6 + qword_1EE2157F0) = MEMORY[0x1E69E7CC0];
  *(v6 + qword_1ECEB2818) = v18;
  v19 = (v6 + qword_1EE215810);
  *v19 = 0u;
  v19[1] = 0u;
  *(v6 + qword_1EE1D97B0) = 0;
  *(v6 + qword_1EE1D97A8) = 0;
  *(v6 + qword_1EE215808) = 0;
  v20 = (v6 + qword_1ECEF4218);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v6 + qword_1EE2157E8);
  *v21 = 0;
  v21[1] = 0;
  *(v6 + qword_1EE215818) = 0;
  v22 = MEMORY[0x1E69E7CD0];
  *(v6 + qword_1EE1D9790) = MEMORY[0x1E69E7CD0];
  *(v6 + qword_1EE1D9798) = 0;
  v73 = a4;
  sub_1E134FD1C(a4, v6 + qword_1EE2157F8, &unk_1ECEB4B60);
  *(v6 + qword_1EE1D97A0) = a2;
  v72 = a6;
  sub_1E134FD1C(a6, v6 + qword_1ECEF4210, &qword_1ECEB24F8);
  v23 = &qword_1ECEB2000;
  if (a5)
  {
    v24 = v15;
    v68 = v6;
    type metadata accessor for ASKBagContract();
    sub_1E1AF421C();

    v67 = a1;
    sub_1E1AF55EC();
    v25 = v75[0];
    v63[1] = "GenericPagePresenter";
    v26 = OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bag;
    if (qword_1EE1E2FE8 != -1)
    {
      swift_once();
    }

    v27 = *MEMORY[0x1E69AAFB8];
    v28 = v69;
    v29 = *(v69 + 104);
    v30 = v74;
    v66 = v69 + 104;
    v65 = v29;
    v29(v17, v27, v74);
    v63[0] = v26;
    sub_1E1AF52AC();
    v64 = *(v28 + 8);
    v64(v17, v30);
    v31 = v71;
    sub_1E1AF532C();
    v69 = v25;
    v70 = *(v70 + 8);
    (v70)(v24, v31);
    v32 = v75[0];
    type metadata accessor for FastImpressionsTracker();
    v33 = swift_allocObject();
    v33[3] = 0;
    swift_unknownObjectWeakInit();
    sub_1E1AF4EAC();
    swift_allocObject();
    v33[5] = sub_1E1AF4E8C();
    swift_allocObject();
    v33[6] = sub_1E1AF4E8C();
    v33[4] = v32;
    if (qword_1EE1D21E8 != -1)
    {
      swift_once();
    }

    v34 = v27;
    v35 = v74;
    v65(v17, v34, v74);
    sub_1E1AF52AC();
    v64(v17, v35);
    sub_1E1AF532C();
    (v70)(v24, v31);
    v36 = v75[0];
    type metadata accessor for FastImpressionFlushGate();
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37[4] = 0;
    v37[5] = 0;
    v37[2] = v36;
    v23 = &qword_1ECEB2000;
    v38 = v68;
    *(v68 + qword_1ECEB2820) = v37;
    v39 = sub_1E137F960(qword_1EE1DA5B0, type metadata accessor for FastImpressionsTracker);
    *(v38 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
    *(v38 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
    *(v38 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
    *(v38 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_activeRequests) = MEMORY[0x1E69E7CD0];

    v41 = sub_1E138C578(v40, v33, v39, 0);
  }

  else
  {
    *(v6 + qword_1ECEB2820) = 0;
    *(v6 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
    *(v6 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
    *(v6 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
    *(v6 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_activeRequests) = v22;

    v41 = sub_1E138C578(a1, 0, 0, 0);
  }

  v42 = MEMORY[0x1E69E7CC0];
  if (a3)
  {
    v43 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfOrdering;
    swift_beginAccess();
    v44 = *(a3 + v43);
    v76 = v42;
    v45 = v44[2];
    v46 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_shelfMapping;

    swift_beginAccess();
    if (v45)
    {
      v47 = 0;
      v48 = v44 + 4;
      v71 = v45 - 1;
      v74 = (v44 + 4);
      while (1)
      {
        v49 = &v48[5 * v47];
        v50 = v47;
        while (1)
        {
          if (v50 >= v44[2])
          {
            __break(1u);
            goto LABEL_32;
          }

          sub_1E134E724(v49, v75);
          if (*(*(a3 + v46) + 16))
          {
            break;
          }

LABEL_12:
          ++v50;
          sub_1E134B88C(v75);
          v49 += 40;
          if (v45 == v50)
          {
            v23 = &qword_1ECEB2000;
            goto LABEL_23;
          }
        }

        sub_1E135FCF4(v75);
        if ((v51 & 1) == 0)
        {
          break;
        }

        v52 = sub_1E134B88C(v75);
        MEMORY[0x1E68FEF20](v52);
        if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E1AF625C();
        }

        v47 = v50 + 1;
        sub_1E1AF62AC();
        v42 = v76;
        v53 = v71 == v50;
        v23 = &qword_1ECEB2000;
        v48 = v74;
        if (v53)
        {
          goto LABEL_23;
        }
      }

      goto LABEL_12;
    }

LABEL_23:

    *(v41 + qword_1EE2157F0) = v42;

    v54 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage;
    v55 = qword_1EE215810;
    swift_beginAccess();
    sub_1E137F8F8(a3 + v54, v41 + v55, &qword_1ECEB2DF0);
    swift_endAccess();
    *(v41 + qword_1EE1D97B0) = sub_1E162A1BC();

    (*(*v41 + 1312))(a3, 1);
  }

  else
  {
  }

  swift_unknownObjectRetain();

  type metadata accessor for FastImpressionsTracker();
  v56 = swift_dynamicCastClass();
  if (v56)
  {
    v57 = v56;
    swift_beginAccess();
    *(v57 + 24) = &protocol witness table for BaseGenericPagePresenter<A>;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v58 = *(v41 + v23[260]);
    if (v58)
    {
      v59 = swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      v60 = *(v58 + 32);
      v61 = *(v58 + 40);
      *(v58 + 32) = sub_1E137F9A8;
      *(v58 + 40) = v59;

      sub_1E1361B18(v60, v61);
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v44 = [objc_opt_self() defaultCenter];
  if (qword_1ECEB1108 != -1)
  {
LABEL_32:
    swift_once();
  }

  [v44 addObserver:v41 selector:? name:? object:?];

  sub_1E1308058(v72, &qword_1ECEB24F8);
  sub_1E1308058(v73, &unk_1ECEB4B60);
  return v41;
}

uint64_t sub_1E1379AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v12 = *v6;
  v63 = a3;
  v64 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB63A0);
  v14 = *(v13 - 8);
  v61 = v13;
  v62 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v51 - v15;
  v17 = sub_1E1AF3D0C();
  v60 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + qword_1EE215800 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + qword_1EE1D9788) = 0;
  v20 = MEMORY[0x1E69E7CC0];
  *(v6 + qword_1EE2157F0) = MEMORY[0x1E69E7CC0];
  *(v6 + qword_1ECEB2818) = v20;
  v21 = (v6 + qword_1EE215810);
  *v21 = 0u;
  v21[1] = 0u;
  *(v6 + qword_1EE1D97B0) = 0;
  *(v6 + qword_1EE1D97A8) = 0;
  *(v6 + qword_1EE215808) = 0;
  v22 = (v6 + qword_1ECEF4218);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v6 + qword_1EE2157E8);
  *v23 = 0;
  v23[1] = 0;
  *(v6 + qword_1EE215818) = 0;
  v24 = MEMORY[0x1E69E7CD0];
  *(v6 + qword_1EE1D9790) = MEMORY[0x1E69E7CD0];
  *(v6 + qword_1EE1D9798) = 0;
  sub_1E134FD1C(a4, v6 + qword_1EE2157F8, &unk_1ECEB4B60);
  *(v6 + qword_1EE1D97A0) = a2;
  v65 = a6;
  sub_1E134FD1C(a6, v6 + qword_1ECEF4210, &qword_1ECEB24F8);
  if (a5)
  {
    v58 = a4;
    v59 = v6;
    type metadata accessor for ASKBagContract();
    sub_1E1AF421C();

    v57 = a1;
    sub_1E1AF55EC();
    v25 = v66;
    v54 = "GenericPagePresenter";
    v26 = OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bag;
    if (qword_1EE1E2FE8 != -1)
    {
      swift_once();
    }

    v27 = v60;
    v28 = *(v60 + 104);
    v56 = *MEMORY[0x1E69AAFB8];
    v55 = v28;
    v28(v19);
    v53 = v26;
    sub_1E1AF52AC();
    v60 = *(v27 + 8);
    (v60)(v19, v17);
    v29 = v61;
    sub_1E1AF532C();
    v52 = *(v62 + 8);
    v52(v16, v29);
    v30 = v66;
    type metadata accessor for FastImpressionsTracker();
    v31 = swift_allocObject();
    v31[3] = 0;
    swift_unknownObjectWeakInit();
    sub_1E1AF4EAC();
    v62 = v25;
    swift_allocObject();
    v31[5] = sub_1E1AF4E8C();
    swift_allocObject();
    v31[6] = sub_1E1AF4E8C();
    v31[4] = v30;
    if (qword_1EE1D21E8 != -1)
    {
      swift_once();
    }

    v55(v19, v56, v17);
    sub_1E1AF52AC();
    (v60)(v19, v17);
    sub_1E1AF532C();
    v52(v16, v29);
    v32 = v66;
    type metadata accessor for FastImpressionFlushGate();
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33[4] = 0;
    v33[5] = 0;
    v33[2] = v32;
    v34 = v59;
    *(v59 + qword_1ECEB2820) = v33;
    v35 = sub_1E137F960(qword_1EE1DA5B0, type metadata accessor for FastImpressionsTracker);
    *(v34 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
    *(v34 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
    *(v34 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
    *(v34 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_activeRequests) = MEMORY[0x1E69E7CD0];

    v37 = sub_1E138C578(v36, v31, v35, 0);

    a4 = v58;
    v39 = v63;
    v38 = v64;
    if (v63)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *(v6 + qword_1ECEB2820) = 0;
    *(v6 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
    *(v6 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
    *(v6 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
    *(v6 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_activeRequests) = v24;

    v37 = sub_1E138C578(a1, 0, 0, 0);
    v39 = v63;
    v38 = v64;
    if (v63)
    {
LABEL_7:
      v40 = *(v38 + 960);

      *(v37 + qword_1EE2157F0) = ShelfBasedPage.shelves.getter(v40, &protocol witness table for GenericPage);

      v41 = OBJC_IVAR____TtC11AppStoreKit11GenericPage_nextPage;
      v42 = qword_1EE215810;
      swift_beginAccess();
      sub_1E137F8F8(v39 + v41, v37 + v42, &qword_1ECEB2DF0);
      swift_endAccess();
      *(v37 + qword_1EE1D97B0) = sub_1E175EB34(v40, &protocol witness table for GenericPage);

      (*(*v37 + 1312))(v39, 1);

      goto LABEL_10;
    }
  }

LABEL_10:
  swift_unknownObjectRetain();

  type metadata accessor for FastImpressionsTracker();
  v43 = swift_dynamicCastClass();
  if (v43)
  {
    v44 = v43;
    swift_beginAccess();
    *(v44 + 24) = &protocol witness table for BaseGenericPagePresenter<A>;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v45 = *(v37 + qword_1ECEB2820);
    if (v45)
    {
      v46 = swift_allocObject();
      swift_weakInit();
      v47 = swift_allocObject();
      *(v47 + 16) = *(v38 + 960);
      *(v47 + 24) = v46;
      swift_beginAccess();
      v48 = *(v45 + 32);
      v49 = *(v45 + 40);
      *(v45 + 32) = sub_1E137F8F0;
      *(v45 + 40) = v47;

      sub_1E1361B18(v48, v49);
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_1E1364778();
  sub_1E1308058(v65, &qword_1ECEB24F8);
  sub_1E1308058(a4, &unk_1ECEB4B60);
  return v37;
}

uint64_t sub_1E137A474(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC11AppStoreKit18BaseShelfPresenter_pageRefreshPolicy) = a1;

  return sub_1E1364D54();
}

uint64_t sub_1E137A4D8(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_1EE215800;
  swift_beginAccess();
  *(v4 + 8) = a2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1E137A53C()
{
  v1 = qword_1EE215808;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E137A580(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

uint64_t sub_1E137A5C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1E137A68C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for GenericPagePresenter()
{
  result = qword_1EE1DC328;
  if (!qword_1EE1DC328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E137A774()
{
  sub_1E130072C();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_1E137ABAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E130B5D8;

  JUMPOUT(0x1E1377A28);
}

unint64_t sub_1E137ACB4()
{
  result = qword_1EE1E0020;
  if (!qword_1EE1E0020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E0020);
  }

  return result;
}

uint64_t sub_1E137AD64(uint64_t a1)
{
  v12 = v1[2];
  v10 = v1[3];
  v4 = v1[4];
  v5 = v1[11];
  v6 = v1[12];
  v7 = v1[13];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E130B5D8;

  return sub_1E136D3B4(a1, v12, v10, v4, (v1 + 5), v5, v6, v7);
}

unint64_t sub_1E137AE64()
{
  result = qword_1ECEB2838;
  if (!qword_1ECEB2838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB2838);
  }

  return result;
}

uint64_t sub_1E137AFB0(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2870) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[3];
  v14 = v1[2];
  v7 = v1[4];
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v6 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E130B5D8;

  return sub_1E1375704(a1, v14, v13, v7, v1 + v4, v8, v9, v10);
}

void sub_1E137B138()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E130B5D8;

  JUMPOUT(0x1E1378EB4);
}

unint64_t sub_1E137B240()
{
  result = qword_1ECEB2888;
  if (!qword_1ECEB2888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB2888);
  }

  return result;
}

void sub_1E137B294()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E130B5D8;

  JUMPOUT(0x1E1378DA8);
}

unint64_t sub_1E137B39C()
{
  result = qword_1ECEB2898;
  if (!qword_1ECEB2898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB2898);
  }

  return result;
}

void sub_1E137B3F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E130B5D8;

  JUMPOUT(0x1E1378CACLL);
}

unint64_t sub_1E137B4F8()
{
  result = qword_1ECEB28A8;
  if (!qword_1ECEB28A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB28A8);
  }

  return result;
}

uint64_t sub_1E137B54C(uint64_t a1)
{
  v3 = *(type metadata accessor for ArcadePageIntent() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[3];
  v14 = v1[2];
  v7 = v1[4];
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v6 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E130B5DC;

  return sub_1E136CAB8(a1, v14, v13, v7, v1 + v4, v8, v9, v10);
}

uint64_t (*sub_1E137B708())(uint64_t a1)
{
  v1 = (*(v0 + 16))();
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_1E137B768;
}

uint64_t sub_1E137B778(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1E137B78C(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductPageIntent() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[3];
  v14 = v1[2];
  v7 = v1[4];
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v6 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E130B5D8;

  return sub_1E136DAB8(a1, v14, v13, v7, v1 + v4, v8, v9, v10);
}

uint64_t sub_1E137B908(uint64_t a1)
{
  v12 = v1[2];
  v10 = v1[3];
  v4 = v1[4];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E130B5D8;

  return sub_1E1375334(a1, v12, v10, v4, (v1 + 5), v5, v6, v7);
}

uint64_t sub_1E137BA08(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB28F8) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[3];
  v14 = v1[2];
  v7 = v1[4];
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v6 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E130B5D8;

  return sub_1E1375148(a1, v14, v13, v7, v1 + v4, v8, v9, v10);
}

uint64_t objectdestroy_112Tm()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1E137BBE8(uint64_t a1)
{
  v12 = v1[2];
  v10 = v1[3];
  v4 = v1[4];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E130B5D8;

  return sub_1E1374F5C(a1, v12, v10, v4, (v1 + 5), v5, v6, v7);
}

uint64_t sub_1E137BCE8(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2920) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[3];
  v14 = v1[2];
  v7 = v1[4];
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v6 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E130B5D8;

  return sub_1E1374C5C(a1, v14, v13, v7, v1 + v4, v8, v9, v10);
}

uint64_t objectdestroy_55Tm()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1E137BF2C(uint64_t a1)
{
  v12 = v1[2];
  v10 = v1[3];
  v4 = v1[4];
  v5 = v1[11];
  v6 = v1[12];
  v7 = v1[13];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E130B5D8;

  return sub_1E13715A4(a1, v12, v10, v4, (v1 + 5), v5, v6, v7);
}

unint64_t sub_1E137C02C()
{
  result = qword_1ECEB2930;
  if (!qword_1ECEB2930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB2930);
  }

  return result;
}

void sub_1E137C080()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E130B5D8;

  JUMPOUT(0x1E1377D14);
}

unint64_t sub_1E137C1E4()
{
  result = qword_1ECEB2938;
  if (!qword_1ECEB2938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB2938);
  }

  return result;
}

uint64_t sub_1E137C238(uint64_t a1)
{
  v3 = *(type metadata accessor for InAppPurchaseInstallPageIntent() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[3];
  v14 = v1[2];
  v7 = v1[4];
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v6 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E130B5D8;

  return sub_1E136D0BC(a1, v14, v13, v7, v1 + v4, v8, v9, v10);
}

uint64_t objectdestroy_96Tm(uint64_t (*a1)(void))
{
  v2 = *(a1(0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  v4 = sub_1E1AEFCCC();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1E137C4CC(uint64_t a1)
{
  v3 = *(type metadata accessor for TopChartsPageIntent() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[3];
  v14 = v1[2];
  v7 = v1[4];
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v6 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E130B5D8;

  return sub_1E136C52C(a1, v14, v13, v7, v1 + v4, v8, v9, v10);
}

uint64_t sub_1E137C648(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchChartsAndCategoriesPageIntent() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[3];
  v14 = v1[2];
  v7 = v1[4];
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v6 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E130B5D8;

  return sub_1E1374A78(a1, v14, v13, v7, v1 + v4, v8, v9, v10);
}

uint64_t sub_1E137C7C4(uint64_t a1)
{
  v3 = *(type metadata accessor for ArcadeSubscribePageIntent() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[3];
  v14 = v1[2];
  v7 = v1[4];
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v6 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E130B5D8;

  return sub_1E136F9D0(a1, v14, v13, v7, v1 + v4, v8, v9, v10);
}

void sub_1E137C940()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E130B5D8;

  JUMPOUT(0x1E1378974);
}

unint64_t sub_1E137CAA4()
{
  result = qword_1EE1F0358[0];
  if (!qword_1EE1F0358[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1F0358);
  }

  return result;
}

void sub_1E137CAF8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E130B5D8;

  JUMPOUT(0x1E1378868);
}

unint64_t sub_1E137CC5C()
{
  result = qword_1EE1ED2F8;
  if (!qword_1EE1ED2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1ED2F8);
  }

  return result;
}

void sub_1E137CCB0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E130B5D8;

  JUMPOUT(0x1E1377B20);
}

unint64_t sub_1E137CDB8()
{
  result = qword_1ECEB2988;
  if (!qword_1ECEB2988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB2988);
  }

  return result;
}

uint64_t sub_1E137CE0C(uint64_t a1)
{
  v3 = *(type metadata accessor for MSOPageIntent() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[3];
  v14 = v1[2];
  v7 = v1[4];
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v6 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E130B5D8;

  return sub_1E137121C(a1, v14, v13, v7, v1 + v4, v8, v9, v10);
}

uint64_t sub_1E137CFE4(uint64_t a1)
{
  v12 = v1[2];
  v10 = v1[3];
  v4 = v1[4];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E130B5D8;

  return sub_1E1371748(a1, v12, v10, v4, (v1 + 5), v5, v6, v7);
}

unint64_t sub_1E137D0E4()
{
  result = qword_1ECEB29A0;
  if (!qword_1ECEB29A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB29A0);
  }

  return result;
}

void sub_1E137D138()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E130B5D8;

  JUMPOUT(0x1E137875CLL);
}

unint64_t sub_1E137D240()
{
  result = qword_1ECEB29B0;
  if (!qword_1ECEB29B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB29B0);
  }

  return result;
}

void sub_1E137D294()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E130B5D8;

  JUMPOUT(0x1E1378650);
}

unint64_t sub_1E137D39C()
{
  result = qword_1ECEB29C0;
  if (!qword_1ECEB29C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB29C0);
  }

  return result;
}

uint64_t objectdestroy_84Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_1E137D450()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E130B5D8;

  JUMPOUT(0x1E1378544);
}

unint64_t sub_1E137D558()
{
  result = qword_1ECEB29D0;
  if (!qword_1ECEB29D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB29D0);
  }

  return result;
}

uint64_t sub_1E137D608(uint64_t a1)
{
  v12 = v1[2];
  v10 = v1[3];
  v4 = v1[4];
  v5 = v1[27];
  v6 = v1[28];
  v7 = v1[29];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E130B5D8;

  return sub_1E1372CA8(a1, v12, v10, v4, (v1 + 5), v5, v6, v7);
}

unint64_t sub_1E137D708()
{
  result = qword_1EE1D9208[0];
  if (!qword_1EE1D9208[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1D9208);
  }

  return result;
}

uint64_t sub_1E137D80C(uint64_t a1)
{
  v12 = v1[2];
  v10 = v1[3];
  v4 = v1[4];
  v5 = v1[17];
  v6 = v1[18];
  v7 = v1[19];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E130B5D8;

  return sub_1E1372B04(a1, v12, v10, v4, (v1 + 5), v5, v6, v7);
}

unint64_t sub_1E137D90C()
{
  result = qword_1ECEB29E8;
  if (!qword_1ECEB29E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB29E8);
  }

  return result;
}

uint64_t objectdestroy_90Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_1E137D9B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E130B5D8;

  JUMPOUT(0x1E1377C18);
}

unint64_t sub_1E137DAC0()
{
  result = qword_1EE1DE750;
  if (!qword_1EE1DE750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DE750);
  }

  return result;
}

void sub_1E137DB14()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E130B5D8;

  JUMPOUT(0x1E1378344);
}

unint64_t sub_1E137DC78()
{
  result = qword_1ECEB2A00;
  if (!qword_1ECEB2A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB2A00);
  }

  return result;
}

uint64_t sub_1E137DCCC(uint64_t a1)
{
  v12 = v1[2];
  v10 = v1[3];
  v4 = v1[4];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E130B5D8;

  return sub_1E1372228(a1, v12, v10, v4, (v1 + 5), v5, v6, v7);
}

uint64_t objectdestroy_117Tm(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  v4 = sub_1E1AEFCCC();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1E137DED8(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2A20) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[3];
  v14 = v1[2];
  v7 = v1[4];
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v6 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E130B5D8;

  return sub_1E1371C94(a1, v14, v13, v7, v1 + v4, v8, v9, v10);
}

uint64_t objectdestroy_78Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_1E137E0C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E130B5D8;

  JUMPOUT(0x1E1378138);
}

unint64_t sub_1E137E1C8()
{
  result = qword_1ECEB2A38;
  if (!qword_1ECEB2A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB2A38);
  }

  return result;
}

uint64_t sub_1E137E21C(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticlePageIntent() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[3];
  v14 = v1[2];
  v7 = v1[4];
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v6 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E130B5D8;

  return sub_1E136E684(a1, v14, v13, v7, v1 + v4, v8, v9, v10);
}

uint64_t objectdestroy_143Tm(uint64_t (*a1)(void))
{
  v2 = (a1(0) - 8);
  v3 = (*(*v2 + 80) + 40) & ~*(*v2 + 80);
  swift_unknownObjectRelease();

  v4 = v2[7];
  v5 = sub_1E1AEFCCC();
  (*(*(v5 - 8) + 8))(v1 + v3 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_1E137E4CC(uint64_t a1)
{
  v3 = *(type metadata accessor for ArcadeWelcomePageIntent() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[3];
  v14 = v1[2];
  v7 = v1[4];
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v6 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E130B5D8;

  return sub_1E136FBB4(a1, v14, v13, v7, v1 + v4, v8, v9, v10);
}

uint64_t objectdestroy_107Tm(uint64_t (*a1)(void))
{
  v2 = (a1(0) - 8);
  v3 = (*(*v2 + 80) + 40) & ~*(*v2 + 80);
  swift_unknownObjectRelease();

  v4 = v2[7];
  v5 = sub_1E1AEFCCC();
  (*(*(v5 - 8) + 8))(v1 + v3 + v4, v5);
  v6 = v1 + v3 + v2[9];
  if (*(v6 + 8) != 1)
  {

    sub_1E137B778(*(v6 + 32), *(v6 + 40));
  }

  return swift_deallocObject();
}

uint64_t sub_1E137E7A8(uint64_t a1)
{
  v3 = *(type metadata accessor for ActionIntent() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[3];
  v14 = v1[2];
  v7 = v1[4];
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v6 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E130B5D8;

  return sub_1E136EC10(a1, v14, v13, v7, v1 + v4, v8, v9, v10);
}

uint64_t sub_1E137E980(uint64_t a1)
{
  v12 = v1[2];
  v10 = v1[3];
  v4 = v1[4];
  v5 = v1[11];
  v6 = v1[12];
  v7 = v1[13];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E130B5D8;

  return sub_1E1376244(a1, v12, v10, v4, (v1 + 5), v5, v6, v7);
}

unint64_t sub_1E137EA80()
{
  result = qword_1EE1DC518[0];
  if (!qword_1EE1DC518[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1DC518);
  }

  return result;
}

uint64_t sub_1E137EAD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E137EB3C(uint64_t a1)
{
  v3 = *(type metadata accessor for TodayPageIntent() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[3];
  v14 = v1[2];
  v7 = v1[4];
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v6 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E130B5D8;

  return sub_1E1375CAC(a1, v14, v13, v7, v1 + v4, v8, v9, v10);
}

uint64_t sub_1E137ED14(uint64_t a1)
{
  v12 = v1[2];
  v10 = v1[3];
  v4 = v1[4];
  v5 = v1[11];
  v6 = v1[12];
  v7 = v1[13];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E130B5D8;

  return sub_1E13766E4(a1, v12, v10, v4, (v1 + 5), v5, v6, v7);
}

unint64_t sub_1E137EE14()
{
  result = qword_1ECEB2A70;
  if (!qword_1ECEB2A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB2A70);
  }

  return result;
}

uint64_t objectdestroy_137Tm()
{
  swift_unknownObjectRelease();

  if (*(v0 + 168) != 1)
  {

    sub_1E137B778(*(v0 + 192), *(v0 + 200));
  }

  return swift_deallocObject();
}

void sub_1E137EF2C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E130B5D8;

  JUMPOUT(0x1E1378B7CLL);
}

unint64_t sub_1E137F090()
{
  result = qword_1EE1D97D0;
  if (!qword_1EE1D97D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D97D0);
  }

  return result;
}

uint64_t sub_1E137F140(uint64_t a1)
{
  v12 = v1[2];
  v10 = v1[3];
  v4 = v1[4];
  v5 = v1[11];
  v6 = v1[12];
  v7 = v1[13];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E130B5D8;

  return sub_1E1371400(a1, v12, v10, v4, (v1 + 5), v5, v6, v7);
}

unint64_t sub_1E137F240()
{
  result = qword_1ECEB2A80;
  if (!qword_1ECEB2A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB2A80);
  }

  return result;
}

void sub_1E137F294()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E130B5D8;

  JUMPOUT(0x1E1377F38);
}

unint64_t sub_1E137F3F8()
{
  result = qword_1ECEB2A88;
  if (!qword_1ECEB2A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB2A88);
  }

  return result;
}

uint64_t objectdestroy_49Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_1E137F4A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E130B5D8;

  JUMPOUT(0x1E137824CLL);
}

unint64_t sub_1E137F5AC()
{
  result = qword_1EE1EADA0;
  if (!qword_1EE1EADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1EADA0);
  }

  return result;
}

uint64_t sub_1E137F600(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E137F6C4(uint64_t a1)
{
  v12 = v1[2];
  v10 = v1[3];
  v4 = v1[4];
  v5 = v1[9];
  v6 = v1[10];
  v7 = v1[11];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E130B5D8;

  return sub_1E137065C(a1, v12, v10, v4, (v1 + 5), v5, v6, v7);
}

unint64_t sub_1E137F7C4()
{
  result = qword_1ECEB2A98;
  if (!qword_1ECEB2A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB2A98);
  }

  return result;
}

uint64_t sub_1E137F818(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2DF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E137F888(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E137F8F8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E137F960(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL DiffablePagePresenter.UpdatePhase.isUpdating.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  v4[1] = 0;
  v4[2] = 0;
  v4[0] = 1;
  v5 = 2;
  return static DiffablePagePresenter.UpdatePhase.== infix(_:_:)(&v6, v4);
}

BOOL static DiffablePagePresenter.UpdatePhase.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v5 == 1)
    {
      v10 = v2;
      sub_1E1300E34(v3);
LABEL_14:
      sub_1E137FC50(v6, v7, v8, v9);
      sub_1E1360850(v2, v3, v4, v5);
      sub_1E1360850(v6, v7, v8, v9);
      return 0;
    }

    if (v4 | v3 | v2)
    {
      if (v9 != 2 || v6 != 1 || (v8 | v7) != 0)
      {
        goto LABEL_14;
      }
    }

    else if (v9 != 2 || (v8 | v7 | v6) != 0)
    {
      goto LABEL_14;
    }

    sub_1E137FC50(*a2, *(a2 + 8), v8, v9);
    sub_1E1360850(v2, v3, v4, 2);
    sub_1E1360850(v6, v7, v8, v9);
    return 1;
  }

  else
  {
    if (*(a2 + 24))
    {
      swift_unknownObjectRetain();
      goto LABEL_14;
    }

    sub_1E137FC50(*a2, *(a2 + 8), v8, 0);
    sub_1E137FC50(v2, v3, v4, 0);
    sub_1E137FC50(v6, v7, v8, 0);
    sub_1E137FC50(v2, v3, v4, 0);
    sub_1E1360850(v2, v3, v4, 0);
    sub_1E1360850(v6, v7, v8, 0);
    sub_1E1360850(v2, v3, v4, 0);
    sub_1E1360850(v6, v7, v8, 0);
    return v2 == v6;
  }
}

void *sub_1E137FC50(void *result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
    v6 = result;

    return sub_1E1300E34(a2);
  }

  else if (!a4)
  {

    return swift_unknownObjectRetain();
  }

  return result;
}

void sub_1E137FCB4(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 2;
}

uint64_t sub_1E137FCCC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E137FD0C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_11AppStoreKit21DiffablePagePresenterC11UpdatePhaseOyx_G(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}