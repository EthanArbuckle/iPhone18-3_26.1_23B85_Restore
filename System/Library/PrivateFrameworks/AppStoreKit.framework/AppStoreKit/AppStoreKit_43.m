char *sub_1E172E2C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2680);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1E172E494(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB86D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
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

char *sub_1E172E5F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB87D8);
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

void *sub_1E172E6FC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2660);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2668);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E172E854(char *result, int64_t a2, char a3, char *a4)
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

char *sub_1E172E9F0(char *result, int64_t a2, char a3, char *a4)
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

char *sub_1E172EB8C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8838);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1E172ECE4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
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
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
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

void *sub_1E172EDEC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5)
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

char *sub_1E172F00C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB9480);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1E172F158(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8720);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8728);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E172F28C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8630);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4678);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E172F3DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8700);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

size_t sub_1E172F540(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
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
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
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

char *sub_1E172F728(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2568);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1E172F84C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8688);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8690);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E172F9A8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
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

void *sub_1E172FACC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8618);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[12 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 96 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8620);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E172FC14(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8608);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[13 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 104 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8610);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E172FD88(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

size_t sub_1E172FEE4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

void *sub_1E17300C0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB86B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB86B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E1730208(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB86A0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB86A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E1730360(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

void *sub_1E17304B8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

uint64_t sub_1E1730600(uint64_t a1)
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

  sub_1E1AF71CC();
LABEL_9:
  result = sub_1E1AF706C();
  *v1 = result;
  return result;
}

uint64_t sub_1E17306A0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1E1AF71CC();
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
      result = sub_1E1AF71CC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1E1488E20(&qword_1ECEB87E8, &qword_1ECEB87E0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB87E0);
            v9 = sub_1E1545DA4(v13, i, a3);
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
        type metadata accessor for Shelf();
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

uint64_t sub_1E1730830(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1E1AF71CC();
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
      result = sub_1E1AF71CC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1E1488E20(&qword_1ECEB85E8, &qword_1ECEB85E0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB85E0);
            v9 = sub_1E1545DA4(v13, i, a3);
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
        type metadata accessor for UpdatesLockup();
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

uint64_t sub_1E17309C0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1E1AF71CC();
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
      result = sub_1E1AF71CC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1E1488E20(&qword_1ECEB8848, &qword_1ECEB8840);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8840);
            v9 = sub_1E1545EAC(v13, i, a3);
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
        sub_1E13006E4(0, &qword_1ECEB39B8);
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

uint64_t sub_1E1730B60(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1E1AF71CC();
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
      result = sub_1E1AF71CC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1E1488E20(&qword_1ECEB8818, &qword_1ECEB8810);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8810);
            v9 = sub_1E1545F34(v13, i, a3);
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
        sub_1E13006E4(0, &qword_1EE1E3398);
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

uint64_t sub_1E1730D00(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1E1AF71CC();
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
      result = sub_1E1AF71CC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1E1488E20(&qword_1ECEB8748, &qword_1ECEB8740);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8740);
            v9 = sub_1E1545DA4(v13, i, a3);
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
        type metadata accessor for SearchResult();
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

uint64_t sub_1E1730E90(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1E1AF71CC();
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
      result = sub_1E1AF71CC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1E1488E20(&qword_1ECEB4658, &qword_1ECEB4650);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4650);
            v9 = sub_1E1545F34(v13, i, a3);
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
        sub_1E13006E4(0, &qword_1EE1E32D0);
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

uint64_t sub_1E1731030(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1E1AF71CC();
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
      result = sub_1E1AF71CC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1E1488E20(&qword_1ECEB87A8, &qword_1ECEB87A0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB87A0);
            v9 = sub_1E1545DA4(v13, i, a3);
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB55C0);
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

uint64_t sub_1E17311CC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1E1AF71CC();
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
      result = sub_1E1AF71CC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1E1488E20(&qword_1ECEB87C8, &qword_1ECEB4D28);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4D28);
            v9 = sub_1E1545DA4(v13, i, a3);
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
        type metadata accessor for GuidedSearchToken();
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

uint64_t sub_1E173135C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1E1AF71CC();
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
      result = sub_1E1AF71CC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1E1488E20(&qword_1ECEB8790, &qword_1ECEB35B0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB35B0);
            v9 = sub_1E1545DA4(v13, i, a3);
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
        type metadata accessor for TodayCardArtworkSizedLayoutMetrics();
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

uint64_t sub_1E17314EC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1E1AF71CC();
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
      result = sub_1E1AF71CC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1E1488E20(&qword_1ECEB8670, &qword_1ECEB8668);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8668);
            v9 = sub_1E1545DA4(v13, i, a3);
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
        type metadata accessor for GameCenterGameplayHistory();
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

uint64_t sub_1E173167C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1E1AF71CC();
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
      result = sub_1E1AF71CC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1E1488E20(&qword_1ECEB8658, &qword_1ECEB8650);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8650);
            v9 = sub_1E1545DA4(v13, i, a3);
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
        type metadata accessor for GameCenterGameplayHistoryRecord();
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

uint64_t sub_1E173180C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1E1AF71CC();
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
      result = sub_1E1AF71CC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1E1488E20(&qword_1ECEB86F8, &qword_1ECEB86F0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB86F0);
            v9 = sub_1E1545F34(v13, i, a3);
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
        sub_1E13006E4(0, &qword_1EE1E33D8);
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

uint64_t keypath_getTm_5@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1 + *a2;
  result = swift_beginAccess();
  v6 = *(v4 + 8);
  *a3 = *v4;
  *(a3 + 8) = v6;
  return result;
}

void sub_1E1731A54()
{
  sub_1E1AF436C();
  if (v0 <= 0x3F)
  {
    sub_1E1731C00();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1E1731C00()
{
  if (!qword_1EE1F0D40)
  {
    type metadata accessor for PendingPageRender.DisappearTimeAndReason(255);
    v0 = sub_1E1AF6D9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1F0D40);
    }
  }
}

uint64_t sub_1E1731C80()
{
  result = sub_1E1AF4FBC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E1731CFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PendingPageRender.DisappearTimeAndReason(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E1731D60()
{
  result = qword_1ECEB8888;
  if (!qword_1ECEB8888)
  {
    sub_1E1AF4FBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8888);
  }

  return result;
}

uint64_t ImpressionIdScrollObserver.__allocating_init(_:impressionID:collectionView:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v6 + 16) = a1;
  v7 = OBJC_IVAR____TtC11AppStoreKit26ImpressionIdScrollObserver_impressionID;
  v8 = sub_1E1AF468C();
  (*(*(v8 - 8) + 32))(v6 + v7, a2, v8);
  swift_unknownObjectWeakAssign();

  return v6;
}

uint64_t ImpressionIdScrollObserver.init(_:impressionID:collectionView:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_unknownObjectWeakInit();
  *(v3 + 16) = a1;
  v7 = OBJC_IVAR____TtC11AppStoreKit26ImpressionIdScrollObserver_impressionID;
  v8 = sub_1E1AF468C();
  (*(*(v8 - 8) + 32))(v3 + v7, a2, v8);
  swift_unknownObjectWeakAssign();

  return v3;
}

void ImpressionIdScrollObserver.didScroll(orthogonalScrollView:in:)(void *a1, uint64_t a2)
{
  v5 = sub_1E1AF00EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v10 = Strong, v11 = [Strong collectionViewLayout], v10, !v11))
  {
    [a1 contentOffset];
    v16 = v18;
    v17 = [a1 contentSize];
    if (!*(v2 + 16))
    {
      return;
    }

    goto LABEL_7;
  }

  v12 = v2;
  v13 = *(a2 + *(type metadata accessor for ShelfLayoutContext() + 20));
  v14 = [v11 _orthogonalScrollingSections];
  sub_1E1AF008C();

  LOBYTE(v14) = sub_1E1AF00CC();
  (*(v6 + 8))(v8, v5);
  if ((v14 & 1) == 0)
  {

    return;
  }

  [v11 _layoutFrameForSection_];
  [v11 _offsetForOrthogonalScrollingSection_];
  v16 = v15;

  if (*(v12 + 16))
  {
LABEL_7:
    v19 = MEMORY[0x1EEE9AC00](v17);
    *&v24[-48] = v16;
    *&v24[-40] = 0;
    *&v24[-32] = v19;
    *&v24[-24] = v20;
    *&v24[-16] = v22;
    *&v24[-8] = v21;
    sub_1E1810798(sub_1E17322F4, &v24[-64], v23);
  }
}

uint64_t ImpressionIdScrollObserver.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit26ImpressionIdScrollObserver_impressionID;
  v2 = sub_1E1AF468C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  MEMORY[0x1E6901750](v0 + OBJC_IVAR____TtC11AppStoreKit26ImpressionIdScrollObserver_collectionView);
  return v0;
}

uint64_t ImpressionIdScrollObserver.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit26ImpressionIdScrollObserver_impressionID;
  v2 = sub_1E1AF468C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  MEMORY[0x1E6901750](v0 + OBJC_IVAR____TtC11AppStoreKit26ImpressionIdScrollObserver_collectionView);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ImpressionIdScrollObserver()
{
  result = qword_1EE1D8720;
  if (!qword_1EE1D8720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E173236C()
{
  result = sub_1E1AF468C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

AppStoreKit::TitledParagraphStyle_optional __swiftcall TitledParagraphStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t TitledParagraphStyle.rawValue.getter()
{
  if (*v0)
  {
    return 0x6C6961746564;
  }

  else
  {
    return 0x776569767265766FLL;
  }
}

uint64_t sub_1E17324D8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C6961746564;
  }

  else
  {
    v3 = 0x776569767265766FLL;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C6961746564;
  }

  else
  {
    v5 = 0x776569767265766FLL;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E1AF74AC();
  }

  return v8 & 1;
}

uint64_t sub_1E173257C()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E17325FC()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E1732668()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E17326E4@<X0>(char *a1@<X8>)
{
  v2 = sub_1E1AF72FC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1E1732744(uint64_t *a1@<X8>)
{
  v2 = 0x776569767265766FLL;
  if (*v1)
  {
    v2 = 0x6C6961746564;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

id sub_1E1732788()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = v0;
    v4 = sub_1E198D200();
    v5 = *(v0 + 24);
    *(v3 + 24) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

void sub_1E17327E4(uint64_t a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
}

void (*sub_1E17327F0(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1E1732788();
  return sub_1E1659FD0;
}

id sub_1E1732840()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = v0;
    v4 = sub_1E198D200();
    v5 = *(v0 + 40);
    *(v3 + 40) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

void sub_1E173289C(uint64_t a1)
{
  v2 = *(v1 + 40);
  *(v1 + 40) = a1;
}

void (*sub_1E17328A8(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1E1732840();
  return sub_1E165A098;
}

uint64_t TitledParagraph.primarySubtitle.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t TitledParagraph.secondarySubtitle.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t TitledParagraph.__allocating_init(id:text:wantsCollapsedNewlines:primarySubtitle:secondarySubtitle:style:)(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8)
{
  LODWORD(v45) = a3;
  v44 = a2;
  v14 = sub_1E1AEFEAC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v46 = *a8;
  *(v18 + 24) = 0;
  *(v18 + 40) = 0;
  *(v18 + 128) = 0u;
  *(v18 + 144) = 0u;
  *(v18 + 160) = 0;
  v47 = a1;
  sub_1E134FD1C(a1, &v50, &unk_1ECEB5670);
  if (*(&v51 + 1))
  {
    v19 = v51;
    *(v18 + 88) = v50;
    *(v18 + 104) = v19;
    *(v18 + 120) = v52;
  }

  else
  {
    sub_1E1AEFE9C();
    v20 = sub_1E1AEFE7C();
    v21 = a4;
    v22 = a5;
    v23 = a6;
    v24 = a7;
    v26 = v25;
    (*(v15 + 8))(v17, v14);
    v48 = v20;
    v49 = v26;
    a7 = v24;
    a6 = v23;
    a5 = v22;
    a4 = v21;
    sub_1E1AF6F6C();
    sub_1E1308058(&v50, &unk_1ECEB5670);
  }

  swift_beginAccess();
  v27 = byte_1ECEBBB89;
  v28 = type metadata accessor for LanguageAwareString();
  v29 = objc_allocWithZone(v28);
  v30 = v44;
  v31 = sub_1E1990A0C(v30, 0, v27);

  *(v18 + 16) = v31;
  if (v45)
  {
    v32 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
    v45 = a4;
    v33 = v32;
    v44 = [v32 length];
    v34 = [v33 mutableString];
    v35 = a5;
    v36 = a6;
    v37 = a7;
    v38 = sub_1E1AF5DBC();
    v39 = sub_1E1AF5DBC();
    [v34 replaceOccurrencesOfString:v38 withString:v39 options:1024 range:{0, v44}];

    a7 = v37;
    a6 = v36;
    a5 = v35;

    LOBYTE(v35) = byte_1ECEBBB89;
    v40 = objc_allocWithZone(v28);
    v41 = sub_1E1990A0C(v33, 0, v35);

    a4 = v45;
    sub_1E1308058(v47, &unk_1ECEB5670);
  }

  else
  {
    sub_1E1308058(v47, &unk_1ECEB5670);

    v41 = v31;
  }

  *(v18 + 32) = v41;
  *(v18 + 48) = a4;
  *(v18 + 56) = a5;
  *(v18 + 64) = a6;
  *(v18 + 72) = a7;
  *(v18 + 80) = v46;
  return v18;
}

uint64_t TitledParagraph.init(id:text:wantsCollapsedNewlines:primarySubtitle:secondarySubtitle:style:)(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8)
{
  v9 = v8;
  LODWORD(v45) = a3;
  v44 = a2;
  v16 = sub_1E1AEFEAC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *a8;
  *(v9 + 24) = 0;
  *(v9 + 40) = 0;
  *(v9 + 128) = 0u;
  *(v9 + 144) = 0u;
  *(v9 + 160) = 0;
  v46 = a1;
  sub_1E134FD1C(a1, &v50, &unk_1ECEB5670);
  if (*(&v51 + 1))
  {
    v53 = v50;
    v54 = v51;
    v55 = v52;
  }

  else
  {
    sub_1E1AEFE9C();
    v20 = sub_1E1AEFE7C();
    v21 = a4;
    v22 = a5;
    v23 = a6;
    v24 = a7;
    v26 = v25;
    (*(v17 + 8))(v19, v16);
    v48 = v20;
    v49 = v26;
    a7 = v24;
    a6 = v23;
    a5 = v22;
    a4 = v21;
    sub_1E1AF6F6C();
    sub_1E1308058(&v50, &unk_1ECEB5670);
  }

  v27 = v54;
  *(v9 + 88) = v53;
  *(v9 + 104) = v27;
  *(v9 + 120) = v55;
  swift_beginAccess();
  v28 = byte_1ECEBBB89;
  v29 = type metadata accessor for LanguageAwareString();
  objc_allocWithZone(v29);
  v30 = v44;
  v31 = sub_1E1990A0C(v30, 0, v28);

  *(v9 + 16) = v31;
  if (v45)
  {
    v32 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
    v45 = a4;
    v33 = v32;
    v44 = [v32 length];
    v34 = [v33 mutableString];
    v35 = a5;
    v36 = a6;
    v37 = a7;
    v38 = sub_1E1AF5DBC();
    v39 = sub_1E1AF5DBC();
    [v34 replaceOccurrencesOfString:v38 withString:v39 options:1024 range:{0, v44}];

    a7 = v37;
    a6 = v36;
    a5 = v35;

    LOBYTE(v35) = byte_1ECEBBB89;
    v40 = objc_allocWithZone(v29);
    v41 = sub_1E1990A0C(v33, 0, v35);

    a4 = v45;
    sub_1E1308058(v46, &unk_1ECEB5670);
  }

  else
  {
    sub_1E1308058(v46, &unk_1ECEB5670);

    v41 = *(v9 + 16);
  }

  *(v9 + 32) = v41;
  *(v9 + 48) = a4;
  *(v9 + 56) = a5;
  *(v9 + 64) = a6;
  *(v9 + 72) = a7;
  *(v9 + 80) = v47;
  return v9;
}

uint64_t sub_1E1733094(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 128) = v2;
}

uint64_t sub_1E173312C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 128) = a1;
}

uint64_t sub_1E17331C4(uint64_t a1, uint64_t *a2)
{
  sub_1E134FD1C(a1, v5, &qword_1ECEB2DF0);
  v3 = *a2;
  swift_beginAccess();
  sub_1E137F818(v5, v3 + 136);
  return swift_endAccess();
}

uint64_t sub_1E1733288(uint64_t a1)
{
  swift_beginAccess();
  sub_1E137F818(a1, v1 + 136);
  return swift_endAccess();
}

id *TitledParagraph.deinit()
{

  sub_1E134B88C((v0 + 11));

  sub_1E1308058((v0 + 17), &qword_1ECEB2DF0);
  return v0;
}

uint64_t TitledParagraph.__deallocating_deinit()
{
  TitledParagraph.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E17333DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1E17334B8(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1E173344C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_1E134FD1C(v3 + 136, a1, &qword_1ECEB2DF0);
}

uint64_t sub_1E17334B8(uint64_t a1, uint64_t a2)
{
  v76 = a2;
  v68 = sub_1E1AEFEAC();
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v4 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AF380C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v75 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v74 = &v66 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v66 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v66 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v66 - v17;
  sub_1E1AF381C();
  v72 = sub_1E1AF37CC();
  v73 = v19;
  v22 = *(v6 + 8);
  v20 = (v6 + 8);
  v21 = v22;
  v22(v18, v5);
  sub_1E1AF381C();
  sub_1E1423CD4();
  sub_1E1AF369C();
  v22(v18, v5);
  LODWORD(v71) = v82[0];
  v77 = a1;
  sub_1E1AF381C();
  v23 = sub_1E1AF37CC();
  v66 = v4;
  if (v24)
  {
    *&v79 = v23;
    *(&v79 + 1) = v24;
  }

  else
  {
    sub_1E1AEFE9C();
    v25 = sub_1E1AEFE7C();
    v27 = v26;
    (*(v67 + 8))(v4, v68);
    *&v79 = v25;
    *(&v79 + 1) = v27;
  }

  sub_1E1AF6F6C();
  v21(v15, v5);
  v28 = v21;
  LOBYTE(v79) = v71;
  LOBYTE(v78[0]) = 0;
  v70 = _s11AppStoreKit9ParagraphC7prepare4text2of4withSo18NSAttributedStringCSSSg_AA10StyledTextC9MediaTypeOAC5StyleOtFZ_0(v72, v73, &v79, v78);

  v29 = v77;
  sub_1E1AF381C();
  v30 = sub_1E1AF370C();
  v28(v12, v5);
  v31 = v5;
  v32 = v28;
  v69 = (v30 == 2) | v30;
  v33 = v74;
  sub_1E1AF381C();
  v34 = sub_1E1AF37CC();
  v72 = v35;
  v28(v33, v31);
  v36 = v75;
  sub_1E1AF381C();
  v37 = sub_1E1AF37CC();
  v71 = v38;
  v32(v36, v31);
  sub_1E1AF381C();
  sub_1E1733FE8();
  sub_1E1AF369C();
  v74 = v20;
  v75 = v31;
  v73 = v32;
  v32(v18, v31);
  v83 = v84;
  type metadata accessor for TitledParagraph();
  v39 = swift_allocObject();
  *(v39 + 24) = 0;
  *(v39 + 40) = 0;
  *(v39 + 128) = 0u;
  *(v39 + 144) = 0u;
  *(v39 + 160) = 0;
  sub_1E134FD1C(v82, &v79, &unk_1ECEB5670);
  if (*(&v80 + 1))
  {
    v40 = v80;
    *(v39 + 88) = v79;
    *(v39 + 104) = v40;
    *(v39 + 120) = v81;
  }

  else
  {
    v41 = v37;
    v42 = v66;
    sub_1E1AEFE9C();
    v43 = sub_1E1AEFE7C();
    v45 = v44;
    v46 = v42;
    v37 = v41;
    (*(v67 + 8))(v46, v68);
    v78[0] = v43;
    v78[1] = v45;
    sub_1E1AF6F6C();
    sub_1E1308058(&v79, &unk_1ECEB5670);
  }

  swift_beginAccess();
  v47 = byte_1ECEBBB89;
  v48 = type metadata accessor for LanguageAwareString();
  objc_allocWithZone(v48);
  v49 = v70;
  v50 = sub_1E1990A0C(v49, 0, v47);

  *(v39 + 16) = v50;
  if (v69)
  {
    v51 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
    v70 = v34;
    v52 = v51;
    v53 = [v51 length];
    v54 = [v52 mutableString];
    v55 = sub_1E1AF5DBC();
    v56 = v37;
    v57 = sub_1E1AF5DBC();
    [v54 replaceOccurrencesOfString:v55 withString:v57 options:1024 range:{0, v53}];

    LOBYTE(v57) = byte_1ECEBBB89;
    v58 = objc_allocWithZone(v48);
    v59 = v57;
    v37 = v56;
    v60 = sub_1E1990A0C(v52, 0, v59);

    v34 = v70;
    v61 = sub_1E1AF39DC();
    (*(*(v61 - 8) + 8))(v76, v61);
    v73(v77, v75);
    sub_1E1308058(v82, &unk_1ECEB5670);
  }

  else
  {

    v62 = sub_1E1AF39DC();
    (*(*(v62 - 8) + 8))(v76, v62);
    v73(v29, v75);
    sub_1E1308058(v82, &unk_1ECEB5670);
    v60 = v50;
  }

  *(v39 + 32) = v60;
  v63 = v71;
  v64 = v72;
  *(v39 + 48) = v34;
  *(v39 + 56) = v64;
  *(v39 + 64) = v37;
  *(v39 + 72) = v63;
  *(v39 + 80) = v83;
  return v39;
}

unint64_t sub_1E1733CC8()
{
  result = qword_1ECEB88A0;
  if (!qword_1ECEB88A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB88A0);
  }

  return result;
}

unint64_t sub_1E1733D20()
{
  result = qword_1EE1F2DF8;
  if (!qword_1EE1F2DF8)
  {
    type metadata accessor for TitledParagraph();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1F2DF8);
  }

  return result;
}

unint64_t sub_1E1733FE8()
{
  result = qword_1EE1ED520[0];
  if (!qword_1EE1ED520[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1ED520);
  }

  return result;
}

uint64_t DebugMetricsEvent.KeyValuePair.init(key:valueTransformer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t DebugMetricsEvent.init(lintedEvent:topic:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1E1AEFE9C();
  v8 = sub_1E1AF47FC();
  v9 = type metadata accessor for DebugMetricsEvent();
  *(a4 + v9[5]) = v8;
  v10 = sub_1E1AF480C();
  v11 = sub_1E1AF481C();
  result = (*(*(v11 - 8) + 8))(a1, v11);
  *(a4 + v9[6]) = v10;
  v13 = (a4 + v9[7]);
  *v13 = a2;
  v13[1] = a3;
  return result;
}

uint64_t type metadata accessor for DebugMetricsEvent()
{
  result = qword_1ECEB88C0;
  if (!qword_1ECEB88C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DebugMetricsEvent.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1AEFEAC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DebugMetricsEvent.fields.getter()
{
  type metadata accessor for DebugMetricsEvent();
}

uint64_t DebugMetricsEvent.issues.getter()
{
  type metadata accessor for DebugMetricsEvent();
}

uint64_t DebugMetricsEvent.topic.getter()
{
  v1 = *(v0 + *(type metadata accessor for DebugMetricsEvent() + 28));

  return v1;
}

uint64_t sub_1E1734254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(_OWORD *)@<X2>, uint64_t a4@<X8>)
{
  v9 = *(v4 + *(type metadata accessor for DebugMetricsEvent() + 20));
  if (*(v9 + 16) && (v10 = sub_1E13018F8(a1, a2), (v11 & 1) != 0))
  {
    sub_1E137A5C4(*(v9 + 56) + 32 * v10, v15);
    sub_1E1301CF0(v15, v16);
    a3(v16);
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v13 = sub_1E1AF459C();
    v14 = *(*(v13 - 8) + 56);

    return v14(a4, 1, 1, v13);
  }
}

uint64_t DebugMetricsEvent.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = *(v3 + *(type metadata accessor for DebugMetricsEvent() + 20));
  if (*(v9 + 16) && (v10 = sub_1E13018F8(v6, v7), (v11 & 1) != 0))
  {
    sub_1E137A5C4(*(v9 + 56) + 32 * v10, v14);
    sub_1E1301CF0(v14, v15);
    v8(v15);
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    v13 = *(*(a2 - 8) + 56);

    return v13(a3, 1, 1, a2);
  }
}

uint64_t DebugMetricsEvent.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_1E1AF6D9C();
  v23 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  v15 = *(v4 + *(type metadata accessor for DebugMetricsEvent() + 20));
  if (*(v15 + 16) && (v16 = sub_1E13018F8(v12, v13), (v17 & 1) != 0))
  {
    sub_1E137A5C4(*(v15 + 56) + 32 * v16, v24);
    sub_1E1301CF0(v24, v25);
    v14(v25);
    __swift_destroy_boxed_opaque_existential_1(v25);
    v18 = *(a3 - 8);
    v19 = *(v18 + 48);
    if (v19(v11, 1, a3) == 1)
    {
      (*(v18 + 16))(a4, a2, a3);
      result = v19(v11, 1, a3);
      if (result != 1)
      {
        return (*(v23 + 8))(v11, v9);
      }
    }

    else
    {
      return (*(v18 + 32))(a4, v11, a3);
    }
  }

  else
  {
    v21 = *(*(a3 - 8) + 16);

    return v21(a4, a2, a3);
  }

  return result;
}

uint64_t DebugMetricsEvent.date.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECEB1070 != -1)
  {
    swift_once();
  }

  v4 = qword_1ECEF48D0;
  v3 = *algn_1ECEF48D8;
  v5 = qword_1ECEF48E0;
  v6 = *(v1 + *(type metadata accessor for DebugMetricsEvent() + 20));
  v7 = *(v6 + 16);

  if (v7 && (v8 = sub_1E13018F8(v4, v3), (v9 & 1) != 0))
  {
    sub_1E137A5C4(*(v6 + 56) + 32 * v8, v12);
    sub_1E1301CF0(v12, v13);
    v5(v13);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v11 = sub_1E1AEFE6C();
    (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }
}

uint64_t DebugMetricsEvent.eventType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECEB1000 != -1)
  {
    swift_once();
  }

  v4 = qword_1ECEF4710;
  v3 = *algn_1ECEF4718;
  v5 = qword_1ECEF4720;
  v6 = *(v1 + *(type metadata accessor for DebugMetricsEvent() + 20));
  v7 = *(v6 + 16);

  if (v7 && (v8 = sub_1E13018F8(v4, v3), (v9 & 1) != 0))
  {
    sub_1E137A5C4(*(v6 + 56) + 32 * v8, v12);
    sub_1E1301CF0(v12, v13);
    v5(v13);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v11 = sub_1E1AF459C();
    (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }
}

uint64_t DebugMetricsEvent.description.getter()
{
  v15[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1E1AF5E5C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = objc_opt_self();
  type metadata accessor for DebugMetricsEvent();
  v2 = sub_1E1AF5C6C();
  v15[0] = 0;
  v3 = [v1 dataWithJSONObject:v2 options:1 error:v15];

  v4 = v15[0];
  if (v3)
  {
    v5 = sub_1E1AEFD3C();
    v7 = v6;

    sub_1E1AF5E4C();
    v8 = sub_1E1AF5E1C();
    v10 = v9;
    v11 = sub_1E14283DC(v5, v7);
    if (v10)
    {
      return v8;
    }
  }

  else
  {
    v13 = v4;
    v14 = sub_1E1AEFB2C();

    swift_willThrow();
  }

  return DebugMetricsEvent.description.getter(v11);
}

uint64_t DebugMetricsEvent.title.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB88A8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  if (qword_1ECEB1000 != -1)
  {
    swift_once();
  }

  v3 = qword_1ECEF4710;
  v4 = *algn_1ECEF4718;
  v5 = qword_1ECEF4720;

  sub_1E1734254(v3, v4, v5, v2);

  v6 = sub_1E1AF459C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v2, 1, v6) == 1)
  {
    sub_1E1308058(v2, &qword_1ECEB88A8);
    return 0x6E776F6E6B6E55;
  }

  else
  {
    v9 = sub_1E1AF458C();
    (*(v7 + 8))(v2, v6);
    return v9;
  }
}

unint64_t DebugMetricsEvent.iconSymbol.getter()
{
  v0 = sub_1E1AF459C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB88A8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  if (qword_1ECEB1000 != -1)
  {
    swift_once();
  }

  v10 = qword_1ECEF4710;
  v11 = *algn_1ECEF4718;
  v12 = qword_1ECEF4720;

  sub_1E1734254(v10, v11, v12, v9);

  if ((*(v1 + 48))(v9, 1, v0) != 1)
  {
    sub_1E17372C8(v9, v6);
    if (qword_1ECEB1078 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v0, qword_1ECEF48F0);
    sub_1E1737408(&qword_1ECEB5FA8, MEMORY[0x1E69AB188]);
    if (sub_1E1AF5DAC())
    {
      (*(v1 + 8))(v6, v0);
      v14 = 1702326128;
    }

    else
    {
      sub_1E1AF453C();
      v15 = sub_1E1AF5DAC();
      v16 = *(v1 + 8);
      v16(v3, v0);
      if (v15)
      {
        v16(v6, v0);
        v13 = 0x7061742E646E6168;
        goto LABEL_28;
      }

      sub_1E1AF454C();
      v17 = sub_1E1AF5DAC();
      v16(v3, v0);
      if (v17)
      {
        v16(v6, v0);
        v13 = 0x657369726E7573;
        goto LABEL_28;
      }

      sub_1E1AF451C();
      v18 = sub_1E1AF5DAC();
      v16(v3, v0);
      if (v18)
      {
        v16(v6, v0);
        v13 = 0x7A7A7A2E6E6F6F6DLL;
        goto LABEL_28;
      }

      sub_1E1AF450C();
      v19 = sub_1E1AF5DAC();
      v16(v3, v0);
      if (v19)
      {
        v16(v6, v0);
        v13 = 6650213;
        goto LABEL_28;
      }

      sub_1E1AF455C();
      v20 = sub_1E1AF5DAC();
      v16(v3, v0);
      if (v20)
      {
        v16(v6, v0);
        v13 = 0x6F65646976;
        goto LABEL_28;
      }

      sub_1E1AF452C();
      v21 = sub_1E1AF5DAC();
      v16(v3, v0);
      if (v21)
      {
        v16(v6, v0);
        v13 = 6516580;
        goto LABEL_28;
      }

      if (qword_1ECEB1080 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v0, qword_1ECEF4908);
      if (sub_1E1AF5DAC())
      {
        v16(v6, v0);
        v13 = 0x6F642E776F727261;
        goto LABEL_28;
      }

      sub_1E1AF456C();
      v22 = sub_1E1AF5DAC();
      v16(v3, v0);
      if (v22)
      {
        v16(v6, v0);
        v13 = 0x697966696E67616DLL;
        goto LABEL_28;
      }

      if (qword_1ECEB1088 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v0, qword_1ECEF4920);
      v24 = sub_1E1AF5DAC();
      v16(v6, v0);
      if ((v24 & 1) == 0)
      {
        goto LABEL_4;
      }

      v14 = 1701669236;
    }

    v13 = v14 & 0xFFFF0000FFFFFFFFLL | 0x7200000000;
    goto LABEL_28;
  }

LABEL_4:
  v13 = 1868983913;
LABEL_28:
  sub_1E1308058(v9, &qword_1ECEB88A8);
  return v13;
}

uint64_t DebugMetricsEvent.summaryInfo.getter()
{
  v1 = v0;
  v2 = sub_1E1AF459C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v102 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB88A8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v101 - v9;
  if (qword_1ECEB1000 != -1)
  {
    swift_once();
  }

  v11 = qword_1ECEF4710;
  v12 = *algn_1ECEF4718;
  v13 = qword_1ECEF4720;

  sub_1E1734254(v11, v12, v13, v10);

  v14 = (*(v3 + 48))(v10, 1, v2);
  v15 = v3;
  v16 = v1;
  v17 = v10;
  if (v14 == 1)
  {
    goto LABEL_4;
  }

  v101 = v10;
  v23 = v7;
  sub_1E17372C8(v10, v7);
  if (qword_1ECEB1078 != -1)
  {
    swift_once();
  }

  v24 = v2;
  __swift_project_value_buffer(v2, qword_1ECEF48F0);
  sub_1E1737408(&qword_1ECEB5FA8, MEMORY[0x1E69AB188]);
  v25 = sub_1E1AF5DAC();
  v26 = v102;
  if (v25)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB88B0);
    v27 = swift_allocObject();
    v28 = v27;
    *(v27 + 16) = xmmword_1E1B03760;
    if (qword_1ECEB1038 != -1)
    {
      v27 = swift_once();
    }

    v29 = qword_1ECEF4808;
    *(v28 + 32) = qword_1ECEF47F0;
    *(v28 + 40) = *algn_1ECEF47F8;
    *(v28 + 56) = v29;
    *(v28 + 64) = 0xD000000000000014;
    *(v28 + 72) = 0x80000001E1B60B50;
    *(v28 + 80) = sub_1E1737338;
    *(v28 + 88) = 0;
    *(v28 + 96) = 0xD000000000000011;
    *(v28 + 104) = 0x80000001E1B733B0;
    *(v28 + 112) = sub_1E1737338;
    *(v28 + 120) = 0;
    MEMORY[0x1EEE9AC00](v27);
    *(&v101 - 2) = v16;

    v21 = sub_1E14A0D08(sub_1E173763C, (&v101 - 4), v28);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB88B8);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v15 + 8))(v23, v2);
    goto LABEL_14;
  }

  sub_1E1AF454C();
  v31 = sub_1E1AF5DAC();
  v34 = *(v15 + 8);
  v33 = (v15 + 8);
  v32 = v34;
  v34(v26, v2);
  if (v31 & 1) != 0 || (sub_1E1AF451C(), v35 = sub_1E1AF5DAC(), v32(v26, v2), (v35))
  {
    v32(v23, v2);
    sub_1E1308058(v101, &qword_1ECEB88A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB88B0);
    inited = swift_initStackObject();
    v37 = inited;
    *(inited + 16) = xmmword_1E1B02CD0;
    if (qword_1ECEB1038 != -1)
    {
      inited = swift_once();
    }

    v38 = qword_1ECEF4808;
    *(v37 + 32) = qword_1ECEF47F0;
    *(v37 + 40) = *algn_1ECEF47F8;
    *(v37 + 56) = v38;
    *(v37 + 64) = 1701869940;
    *(v37 + 72) = 0xE400000000000000;
    *(v37 + 80) = sub_1E1737338;
    *(v37 + 88) = 0;
    MEMORY[0x1EEE9AC00](inited);
    *(&v101 - 2) = v16;

    v21 = sub_1E14A0D08(sub_1E17373A0, (&v101 - 4), v37);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB88B8);
LABEL_22:
    swift_arrayDestroy();
    return v21;
  }

  sub_1E1AF453C();
  v39 = sub_1E1AF5DAC();
  v32(v26, v2);
  if (v39)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB88B0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1E1B04930;
    if (qword_1ECEB1038 != -1)
    {
      swift_once();
    }

    v41 = qword_1ECEF4808;
    *(v40 + 32) = qword_1ECEF47F0;
    *(v40 + 40) = *algn_1ECEF47F8;
    *(v40 + 56) = v41;
    v42 = qword_1ECEB1028;

    if (v42 != -1)
    {
      swift_once();
    }

    v43 = qword_1ECEF47C8;
    *(v40 + 64) = qword_1ECEF47B0;
    *(v40 + 72) = *algn_1ECEF47B8;
    *(v40 + 88) = v43;
    v44 = qword_1ECEB1020;

    if (v44 != -1)
    {
      swift_once();
    }

    v45 = qword_1ECEF47A8;
    *(v40 + 96) = qword_1ECEF4790;
    *(v40 + 104) = *algn_1ECEF4798;
    *(v40 + 120) = v45;
    v46 = qword_1ECEB1010;

    if (v46 != -1)
    {
      swift_once();
    }

    v102 = v33;
    v47 = qword_1ECEF4768;
    *(v40 + 128) = qword_1ECEF4750;
    *(v40 + 136) = *algn_1ECEF4758;
    *(v40 + 152) = v47;
    v48 = qword_1ECEB1008;

    if (v48 != -1)
    {
      v49 = swift_once();
    }

    v50 = qword_1ECEF4748;
    *(v40 + 160) = qword_1ECEF4730;
    *(v40 + 168) = *algn_1ECEF4738;
    *(v40 + 184) = v50;
    MEMORY[0x1EEE9AC00](v49);
    *(&v101 - 2) = v16;

    v21 = sub_1E14A0D08(sub_1E173763C, (&v101 - 4), v40);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB88B8);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    goto LABEL_52;
  }

  sub_1E1AF450C();
  v51 = sub_1E1AF5DAC();
  v32(v26, v2);
  if (v51)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB88B0);
    v52 = swift_initStackObject();
    *(v52 + 16) = xmmword_1E1B03760;
    if (qword_1ECEB1038 != -1)
    {
      swift_once();
    }

    v102 = v33;
    v53 = qword_1ECEF4808;
    *(v52 + 32) = qword_1ECEF47F0;
    *(v52 + 40) = *algn_1ECEF47F8;
    *(v52 + 56) = v53;
    v54 = qword_1ECEB1030;

    if (v54 != -1)
    {
      v55 = swift_once();
    }

    v56 = qword_1ECEF47E8;
    *(v52 + 64) = qword_1ECEF47D0;
    *(v52 + 72) = *algn_1ECEF47D8;
    *(v52 + 88) = v56;
    *(v52 + 96) = 0x6973736572706D69;
    *(v52 + 104) = 0xEB00000000736E6FLL;
    *(v52 + 112) = sub_1E1736AD8;
    *(v52 + 120) = 0;
    MEMORY[0x1EEE9AC00](v55);
    *(&v101 - 2) = v16;

    v21 = sub_1E14A0D08(sub_1E173763C, (&v101 - 4), v52);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB88B8);
LABEL_51:
    swift_arrayDestroy();
LABEL_52:
    v32(v23, v24);
LABEL_14:
    v22 = v101;
    goto LABEL_15;
  }

  sub_1E1AF455C();
  v57 = sub_1E1AF5DAC();
  v32(v26, v2);
  if (v57)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB88B0);
    v58 = swift_initStackObject();
    *(v58 + 16) = xmmword_1E1B05090;
    if (qword_1ECEB1038 != -1)
    {
      swift_once();
    }

    v59 = qword_1ECEF4808;
    *(v58 + 32) = qword_1ECEF47F0;
    *(v58 + 40) = *algn_1ECEF47F8;
    *(v58 + 56) = v59;
    v60 = qword_1ECEB1010;

    if (v60 != -1)
    {
      swift_once();
    }

    v61 = qword_1ECEF4768;
    *(v58 + 64) = qword_1ECEF4750;
    *(v58 + 72) = *algn_1ECEF4758;
    *(v58 + 88) = v61;
    v62 = qword_1ECEB1008;

    if (v62 != -1)
    {
      swift_once();
    }

    v102 = v33;
    v63 = qword_1ECEF4748;
    *(v58 + 96) = qword_1ECEF4730;
    *(v58 + 104) = *algn_1ECEF4738;
    *(v58 + 120) = v63;
    v64 = qword_1ECEB1068;

    if (v64 != -1)
    {
      v65 = swift_once();
    }

    v66 = qword_1ECEF48C8;
    *(v58 + 128) = qword_1ECEF48B0;
    *(v58 + 136) = *algn_1ECEF48B8;
    *(v58 + 152) = v66;
    MEMORY[0x1EEE9AC00](v65);
    *(&v101 - 2) = v16;

    v21 = sub_1E14A0D08(sub_1E173763C, (&v101 - 4), v58);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB88B8);
    goto LABEL_51;
  }

  sub_1E1AF452C();
  v67 = sub_1E1AF5DAC();
  v32(v26, v2);
  if (v67)
  {
    goto LABEL_57;
  }

  if (qword_1ECEB1080 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_1ECEF4908);
  if (sub_1E1AF5DAC())
  {
LABEL_57:
    v32(v23, v2);
    sub_1E1308058(v101, &qword_1ECEB88A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB88B0);
    v68 = swift_initStackObject();
    *(v68 + 16) = xmmword_1E1B070F0;
    if (qword_1ECEB1038 != -1)
    {
      swift_once();
    }

    v69 = qword_1ECEF4808;
    *(v68 + 32) = qword_1ECEF47F0;
    *(v68 + 40) = *algn_1ECEF47F8;
    *(v68 + 56) = v69;
    v70 = qword_1ECEB1030;

    if (v70 != -1)
    {
      swift_once();
    }

    v71 = qword_1ECEF47E8;
    *(v68 + 64) = qword_1ECEF47D0;
    *(v68 + 72) = *algn_1ECEF47D8;
    *(v68 + 88) = v71;
    v72 = qword_1ECEB1050;

    if (v72 != -1)
    {
      swift_once();
    }

    v73 = qword_1ECEF4868;
    *(v68 + 96) = qword_1ECEF4850;
    *(v68 + 104) = *algn_1ECEF4858;
    *(v68 + 120) = v73;
    v74 = qword_1ECEB1048;

    if (v74 != -1)
    {
      swift_once();
    }

    v75 = qword_1ECEF4848;
    *(v68 + 128) = qword_1ECEF4830;
    *(v68 + 136) = *algn_1ECEF4838;
    *(v68 + 152) = v75;
    v76 = qword_1ECEB1058;

    if (v76 != -1)
    {
      swift_once();
    }

    v77 = qword_1ECEF4888;
    *(v68 + 160) = qword_1ECEF4870;
    *(v68 + 168) = *algn_1ECEF4878;
    *(v68 + 184) = v77;
    v78 = qword_1ECEB1040;

    if (v78 != -1)
    {
      v79 = swift_once();
    }

    v80 = qword_1ECEF4828;
    *(v68 + 192) = qword_1ECEF4810;
    *(v68 + 200) = *algn_1ECEF4818;
    *(v68 + 216) = v80;
    MEMORY[0x1EEE9AC00](v79);
    *(&v101 - 2) = v16;

    v21 = sub_1E14A0D08(sub_1E173763C, (&v101 - 4), v68);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB88B8);
    goto LABEL_22;
  }

  sub_1E1AF456C();
  v81 = sub_1E1AF5DAC();
  v32(v26, v2);
  if (v81)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB88B0);
    v82 = swift_initStackObject();
    *(v82 + 16) = xmmword_1E1B04930;
    if (qword_1ECEB1060 != -1)
    {
      swift_once();
    }

    v83 = qword_1ECEF48A8;
    *(v82 + 32) = qword_1ECEF4890;
    *(v82 + 40) = *algn_1ECEF4898;
    *(v82 + 56) = v83;
    v84 = qword_1ECEB1010;

    if (v84 != -1)
    {
      swift_once();
    }

    v85 = qword_1ECEF4768;
    *(v82 + 64) = qword_1ECEF4750;
    *(v82 + 72) = *algn_1ECEF4758;
    *(v82 + 88) = v85;
    v86 = qword_1ECEB1018;

    if (v86 != -1)
    {
      swift_once();
    }

    v87 = qword_1ECEF4788;
    *(v82 + 96) = qword_1ECEF4770;
    *(v82 + 104) = *algn_1ECEF4778;
    *(v82 + 120) = v87;
    v88 = qword_1ECEB1028;

    if (v88 != -1)
    {
      swift_once();
    }

    v102 = v33;
    v89 = qword_1ECEF47C8;
    *(v82 + 128) = qword_1ECEF47B0;
    *(v82 + 136) = *algn_1ECEF47B8;
    *(v82 + 152) = v89;
    v90 = qword_1ECEB1020;

    if (v90 != -1)
    {
      v91 = swift_once();
    }

    v92 = qword_1ECEF47A8;
    *(v82 + 160) = qword_1ECEF4790;
    *(v82 + 168) = *algn_1ECEF4798;
    *(v82 + 184) = v92;
    MEMORY[0x1EEE9AC00](v91);
    *(&v101 - 2) = v16;

    v21 = sub_1E14A0D08(sub_1E173763C, (&v101 - 4), v82);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB88B8);
    goto LABEL_51;
  }

  if (qword_1ECEB1088 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_1ECEF4920);
  v93 = sub_1E1AF5DAC();
  v32(v23, v2);
  v17 = v101;
  if (v93)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB88B0);
    v94 = swift_initStackObject();
    *(v94 + 16) = xmmword_1E1B03760;
    if (qword_1ECEB1038 != -1)
    {
      swift_once();
    }

    v95 = qword_1ECEF4808;
    *(v94 + 32) = qword_1ECEF47F0;
    *(v94 + 40) = *algn_1ECEF47F8;
    *(v94 + 56) = v95;
    v96 = qword_1ECEB1048;

    if (v96 != -1)
    {
      swift_once();
    }

    v97 = qword_1ECEF4848;
    *(v94 + 64) = qword_1ECEF4830;
    *(v94 + 72) = *algn_1ECEF4838;
    *(v94 + 88) = v97;
    v98 = qword_1ECEB1050;

    if (v98 != -1)
    {
      v99 = swift_once();
    }

    v100 = qword_1ECEF4868;
    *(v94 + 96) = qword_1ECEF4850;
    *(v94 + 104) = *algn_1ECEF4858;
    *(v94 + 120) = v100;
    MEMORY[0x1EEE9AC00](v99);
    *(&v101 - 2) = v16;

    v21 = sub_1E14A0D08(sub_1E173763C, (&v101 - 4), v94);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB88B8);
    swift_arrayDestroy();
    goto LABEL_7;
  }

LABEL_4:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB88B0);
  v18 = swift_initStackObject();
  v19 = v18;
  *(v18 + 16) = xmmword_1E1B02CC0;
  if (qword_1ECEB1038 != -1)
  {
    v18 = swift_once();
  }

  v20 = qword_1ECEF4808;
  *(v19 + 32) = qword_1ECEF47F0;
  *(v19 + 40) = *algn_1ECEF47F8;
  *(v19 + 56) = v20;
  MEMORY[0x1EEE9AC00](v18);
  *(&v101 - 2) = v16;

  v21 = sub_1E14A0D08(sub_1E173763C, (&v101 - 4), v19);
  swift_setDeallocating();
  sub_1E1308058(v19 + 32, &qword_1ECEB88B8);
LABEL_7:
  v22 = v17;
LABEL_15:
  sub_1E1308058(v22, &qword_1ECEB88A8);
  return v21;
}

uint64_t sub_1E1736AD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1E137A5C4(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4170);
  result = swift_dynamicCast();
  if (result)
  {

    v7 = sub_1E1AF742C();
    v8 = v4;
    MEMORY[0x1E68FECA0](0x736D65746920, 0xE600000000000000);
    result = swift_bridgeObjectRelease_n();
    v5 = v7;
    v6 = v8;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  *a2 = v5;
  a2[1] = v6;
  return result;
}

unint64_t sub_1E1736BB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  *a3 = *a1;
  *(a3 + 8) = v4;
  v7 = *(a2 + *(type metadata accessor for DebugMetricsEvent() + 20));
  v8 = *(v7 + 16);

  if (v8 && (result = sub_1E13018F8(v5, v4), (v10 & 1) != 0))
  {
    sub_1E137A5C4(*(v7 + 56) + 32 * result, v12);
    sub_1E1301CF0(v12, v13);
    v6(v12, v13);
    result = __swift_destroy_boxed_opaque_existential_1(v13);
    v11 = v12[0];
  }

  else
  {
    v11 = 0uLL;
  }

  *(a3 + 16) = v11;
  return result;
}

uint64_t _s11AppStoreKit20ButtonAnnotationItemV2id10Foundation4UUIDVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E1AEFEAC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void sub_1E1736CEC()
{
  qword_1ECEF4710 = 0x707954746E657665;
  *algn_1ECEF4718 = 0xE900000000000065;
  qword_1ECEF4720 = sub_1E1736D28;
  unk_1ECEF4728 = 0;
}

uint64_t sub_1E1736D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E137A5C4(a1, v6);
  if (swift_dynamicCast())
  {
    sub_1E1AF457C();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = sub_1E1AF459C();
  return (*(*(v4 - 8) + 56))(a2, v3, 1, v4);
}

void sub_1E1736DD8()
{
  strcpy(&qword_1ECEF4730, "actionDetails");
  *&algn_1ECEF4738[6] = -4864;
  qword_1ECEF4740 = sub_1E1736E1C;
  qword_1ECEF4748 = 0;
}

uint64_t sub_1E1736E1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1E137A5C4(a1, &v5);
  result = sub_1E1AF5E8C();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1E1736E64()
{
  qword_1ECEF4750 = 0x79546E6F69746361;
  *algn_1ECEF4758 = 0xEA00000000006570;
  qword_1ECEF4760 = sub_1E1737338;
  qword_1ECEF4768 = 0;
}

void sub_1E1736EA0()
{
  qword_1ECEF4770 = 0x72556E6F69746361;
  *algn_1ECEF4778 = 0xE90000000000006CLL;
  qword_1ECEF4780 = sub_1E1737338;
  qword_1ECEF4788 = 0;
}

void sub_1E1736EDC()
{
  qword_1ECEF4790 = 0x6449746567726174;
  *algn_1ECEF4798 = 0xE800000000000000;
  qword_1ECEF47A0 = sub_1E1737338;
  qword_1ECEF47A8 = 0;
}

void sub_1E1736F14()
{
  qword_1ECEF47B0 = 0x7954746567726174;
  *algn_1ECEF47B8 = 0xEA00000000006570;
  qword_1ECEF47C0 = sub_1E1737338;
  qword_1ECEF47C8 = 0;
}

void sub_1E1736F50()
{
  qword_1ECEF47D0 = 1701273968;
  *algn_1ECEF47D8 = 0xE400000000000000;
  qword_1ECEF47E0 = sub_1E1737338;
  qword_1ECEF47E8 = 0;
}

void sub_1E1736F80()
{
  qword_1ECEF47F0 = 0x746E6F4365676170;
  *algn_1ECEF47F8 = 0xEB00000000747865;
  qword_1ECEF4800 = sub_1E1737338;
  qword_1ECEF4808 = 0;
}

void sub_1E1736FC0()
{
  qword_1ECEF4810 = 0x6174654465676170;
  *algn_1ECEF4818 = 0xEB00000000736C69;
  qword_1ECEF4820 = sub_1E1737338;
  qword_1ECEF4828 = 0;
}

void sub_1E1737000()
{
  qword_1ECEF4830 = 0x644965676170;
  *algn_1ECEF4838 = 0xE600000000000000;
  qword_1ECEF4840 = sub_1E1737338;
  qword_1ECEF4848 = 0;
}

void sub_1E1737034()
{
  qword_1ECEF4850 = 0x6570795465676170;
  *algn_1ECEF4858 = 0xE800000000000000;
  qword_1ECEF4860 = sub_1E1737338;
  qword_1ECEF4868 = 0;
}

void sub_1E173706C()
{
  qword_1ECEF4870 = 0x6C725565676170;
  *algn_1ECEF4878 = 0xE700000000000000;
  qword_1ECEF4880 = sub_1E1737338;
  qword_1ECEF4888 = 0;
}

void sub_1E17370A4()
{
  qword_1ECEF4890 = 1836213620;
  *algn_1ECEF4898 = 0xE400000000000000;
  qword_1ECEF48A0 = sub_1E1737338;
  qword_1ECEF48A8 = 0;
}

void sub_1E17370D4()
{
  qword_1ECEF48B0 = 1701869940;
  *algn_1ECEF48B8 = 0xE400000000000000;
  qword_1ECEF48C0 = sub_1E1737338;
  qword_1ECEF48C8 = 0;
}

void sub_1E1737104()
{
  qword_1ECEF48D0 = 0x6D6954746E657665;
  *algn_1ECEF48D8 = 0xE900000000000065;
  qword_1ECEF48E0 = sub_1E1737140;
  unk_1ECEF48E8 = 0;
}

uint64_t sub_1E1737140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E137A5C4(a1, v6);
  if (swift_dynamicCast())
  {
    sub_1E1AEFE0C();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = sub_1E1AEFE6C();
  return (*(*(v4 - 8) + 56))(a2, v3, 1, v4);
}

uint64_t sub_1E1737268(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1E1AF459C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1E1AF457C();
}

uint64_t sub_1E17372C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB88A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E1737338@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1E137A5C4(a1, v6);
  result = swift_dynamicCast();
  v4 = v6[4];
  v5 = v6[5];
  if (!result)
  {
    v5 = 0;
    v4 = 0;
  }

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1E1737408(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E1737478()
{
  sub_1E1AEFEAC();
  if (v0 <= 0x3F)
  {
    sub_1E173752C();
    if (v1 <= 0x3F)
    {
      sub_1E1737590();
      if (v2 <= 0x3F)
      {
        sub_1E14282AC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E173752C()
{
  if (!qword_1ECEB88D0)
  {
    v0 = sub_1E1AF5CCC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECEB88D0);
    }
  }
}

void sub_1E1737590()
{
  if (!qword_1ECEB88D8[0])
  {
    sub_1E1AF47DC();
    v0 = sub_1E1AF635C();
    if (!v1)
    {
      atomic_store(v0, qword_1ECEB88D8);
    }
  }
}

uint64_t sub_1E17375E8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t ImpressionsCollectionElementsObserver.init(componentTypeMappingProvider:impressionsCalculator:)(__int128 *a1, uint64_t a2)
{
  *(v2 + 56) = 0;
  sub_1E1308EC0(a1, v2 + 16);
  *(v2 + 56) = a2;
  return v2;
}

uint64_t sub_1E1737688()
{
  type metadata accessor for ItemLayoutContext();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80);
  return sub_1E1AF3DBC();
}

uint64_t ImpressionsCollectionElementsObserver.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t ImpressionsCollectionElementsObserver.__allocating_init(componentTypeMappingProvider:impressionsCalculator:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 56) = 0;
  sub_1E1308EC0(a1, v4 + 16);
  *(v4 + 56) = a2;
  return v4;
}

uint64_t ImpressionsCollectionElementsObserver.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_1E17377AC(void *a1)
{
  v72 = a1;
  v2 = sub_1E1AF468C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v59 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v49 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8960);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v49 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v74 = &v49 - v19;
  v20 = sub_1E1AF46DC();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v69 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = *(v1 + 56);
  if (v25)
  {
    v73 = &v49 - v24;
    sub_1E1300B24(v72, v77);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8968);
    if (swift_dynamicCast())
    {
      v68 = v25;
      v66 = v17;
      v71 = v14;
      v67 = v11;
      sub_1E1308EC0(v75, &v78);
      v26 = v79;
      v27 = v80;
      __swift_project_boxed_opaque_existential_1Tm(&v78, v79);
      v28 = (*(v27 + 16))(v26, v27);
      if (v28)
      {
        v50 = v28;
        v29 = *(v28 + 16);
        if (v29)
        {
          v30 = v50 + 32;
          v31 = (v21 + 48);
          v64 = (v21 + 32);
          v70 = (v21 + 8);
          v63 = (v3 + 56);
          v62 = (v3 + 48);
          v61 = (v3 + 8);
          v60 = (v21 + 16);
          v51 = (v3 + 16);
          v65 = (v21 + 48);
          do
          {
            sub_1E1300B24(v30, v77);
            __swift_project_boxed_opaque_existential_1Tm(v77, v77[3]);
            v32 = v74;
            sub_1E1AF5C0C();
            v33 = v32;
            __swift_destroy_boxed_opaque_existential_1(v77);
            v34 = *v31;
            if ((*v31)(v33, 1, v20) == 1)
            {
              sub_1E1308058(v33, &unk_1ECEB1770);
            }

            else
            {
              (*v64)(v73, v33, v20);
              __swift_project_boxed_opaque_existential_1Tm(v72, v72[3]);
              v35 = v66;
              sub_1E1AF5C0C();
              if (v34(v35, 1, v20) == 1)
              {
                sub_1E1308058(v35, &unk_1ECEB1770);
                v36 = 1;
                v37 = v67;
                v38 = v71;
              }

              else
              {
                v38 = v71;
                sub_1E1AF46AC();
                (*v70)(v35, v20);
                v36 = 0;
                v37 = v67;
              }

              (*v63)(v38, v36, 1, v2);
              sub_1E173AFC0(v38, v37);
              if ((*v62)(v37, 1, v2) == 1)
              {
                sub_1E1308058(v37, &qword_1ECEB8960);
                v39 = v69;
                v40 = v73;
                (*v60)(v69, v73, v20);
              }

              else
              {
                v56 = sub_1E1AF467C();
                v54 = v41;
                v42 = *v61;
                (*v61)(v37, v2);
                v43 = v57;
                v40 = v73;
                sub_1E1AF46AC();
                v53 = sub_1E1AF467C();
                v52 = v44;
                v42(v43, v2);
                v55 = v42;
                v45 = v59;
                sub_1E1AF46AC();
                sub_1E1AF465C();
                v46 = v45;
                v47 = v58;
                v42(v46, v2);

                sub_1E1AF466C();
                v39 = v69;
                (*v60)(v69, v40, v20);
                (*v51)(v43, v47, v2);
                sub_1E1AF46BC();
                v38 = v71;

                v55(v47, v2);
              }

              ImpressionsCalculator.removeElement(_:)(v39);
              v48 = *v70;
              (*v70)(v39, v20);
              sub_1E1308058(v38, &qword_1ECEB8960);
              v48(v40, v20);
              v31 = v65;
            }

            v30 += 40;
            --v29;
          }

          while (v29);
        }
      }

      __swift_destroy_boxed_opaque_existential_1(&v78);
    }

    else
    {

      v76 = 0;
      memset(v75, 0, sizeof(v75));
      sub_1E1308058(v75, &qword_1ECEB8970);
    }
  }
}

void sub_1E1737FC4(void *a1, uint64_t a2, uint64_t a3)
{
  v78 = a3;
  v81 = a2;
  v5 = sub_1E1AF468C();
  v74 = *(v5 - 8);
  v75 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8960);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v73 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v66 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v72 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v66 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v66 - v19;
  v21 = sub_1E1AF46DC();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v76 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v77 = &v66 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v66 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
  v82 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v80 = &v66 - v30;
  if (v3[7])
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      if (a1)
      {
        v67 = v17;
        v66 = v7;
        v70 = v22;
        v68 = v12;
        v31 = type metadata accessor for ItemLayoutContext();
        v32 = v81;
        v33 = v80;
        (*(v82 + 16))(v80, v81 + *(v31 + 32), v29);
        v34 = v21;
        v35 = v3[5];
        v36 = v3[6];
        v69 = v3;
        __swift_project_boxed_opaque_existential_1Tm(v3 + 2, v35);
        v71 = a1;

        v37 = v36;
        v38 = v34;
        if (ShelfComponentTypeMappingProvider.configurableComponentContainerViewType(for:asPartOf:)(v32, v78, v35, v37))
        {
          swift_getKeyPath();
          sub_1E1AF3DAC();

          v39 = v70;
          if ((*(v70 + 48))(v20, 1, v38) != 1)
          {
            (*(v39 + 32))(v28, v20, v38);
            ImpressionsCalculator.removeElement(_:)(v28);

            (*(v39 + 8))(v28, v38);
            (*(v82 + 8))(v33, v29);
            return;
          }

          sub_1E1308058(v20, &unk_1ECEB1770);
        }

        swift_getKeyPath();
        sub_1E1AF3DAC();

        if (v87[0])
        {
          (*(v82 + 8))(v33, v29);
        }

        else
        {
          (*(*v69 + 144))(&v83, v81);
          if (v85)
          {
            sub_1E1308EC0(&v83, v87);
            __swift_project_boxed_opaque_existential_1Tm(v87, v87[3]);
            v40 = v67;
            sub_1E1AF5C0C();
            v41 = v70;
            v42 = *(v70 + 48);
            if (v42(v40, 1, v38) == 1)
            {
              (*(v82 + 8))(v33, v29);

              sub_1E1308058(v40, &unk_1ECEB1770);
            }

            else
            {
              (*(v41 + 32))(v77, v40, v38);
              swift_getKeyPath();
              v43 = v72;
              sub_1E1AF3DAC();

              if (v42(v43, 1, v38) == 1)
              {
                sub_1E1308058(v43, &unk_1ECEB1770);
                v44 = 1;
                v45 = v68;
              }

              else
              {
                v45 = v68;
                sub_1E1AF46AC();
                (*(v41 + 8))(v43, v38);
                v44 = 0;
              }

              v47 = v74;
              v46 = v75;
              v48 = v76;
              v49 = v73;
              (*(v74 + 56))(v45, v44, 1, v75);
              sub_1E173AFC0(v45, v49);
              if ((*(v47 + 48))(v49, 1, v46) == 1)
              {
                sub_1E1308058(v49, &qword_1ECEB8960);
                v50 = 0;
                v51 = 0;
              }

              else
              {
                v52 = sub_1E1AF467C();
                v51 = v53;
                (*(v47 + 8))(v49, v46);
                v50 = v52;
              }

              ImpressionMetrics.withParentId(_:)(v50, v51, v48);

              v54 = v71;
              swift_getObjectType();
              v55 = swift_conformsToProtocol2();
              if (v55)
              {
                v56 = v55;
                v57 = v54;
                v58 = v66;
                sub_1E1AF46AC();
                [v57 bounds];
                *&v83 = v59;
                *(&v83 + 1) = v60;
                v84 = v61;
                v85 = v62;
                v86 = 0;
                v63 = ImpressionsCalculator.childCalculator(for:viewBounds:)(v58, &v83);
                (*(v47 + 8))(v58, v46);
                if (v63)
                {
                  ObjectType = swift_getObjectType();
                  (*(v56 + 72))(v63, ObjectType, v56);
                }

                else
                {
                }

                v41 = v70;
                v48 = v76;
                v54 = v71;
              }

              ImpressionsCalculator.removeElement(_:)(v48);

              sub_1E17377AC(v87);

              v65 = *(v41 + 8);
              v65(v48, v38);
              sub_1E1308058(v68, &qword_1ECEB8960);
              v65(v77, v38);
              (*(v82 + 8))(v80, v29);
            }

            __swift_destroy_boxed_opaque_existential_1(v87);
          }

          else
          {
            (*(v82 + 8))(v33, v29);

            sub_1E1308058(&v83, &qword_1ECEB4CE0);
          }
        }
      }
    }
  }
}

void sub_1E1738958(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v80 = a1;
  v11 = sub_1E1AF468C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v67 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v65 = &v59 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v66 = &v59 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8960);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v59 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v59 - v28;
  v30 = sub_1E1AF46DC();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v77 = &v59 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v81 = a2;
  if (a2)
  {
    v82 = &v59 - v34;
    v76 = v26;
    sub_1E1300B24(v80, v85);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8968);
    if (swift_dynamicCast())
    {
      v79 = v23;
      v75 = v20;
      sub_1E1308EC0(v83, &v86);
      v35 = v87;
      v36 = v88;
      __swift_project_boxed_opaque_existential_1Tm(&v86, v87);
      v37 = (*(v36 + 16))(v35, v36);
      if (v37)
      {
        v59 = v37;
        v38 = *(v37 + 16);
        if (v38)
        {
          v39 = v59 + 32;
          v40 = v31;
          v41 = (v31 + 48);
          v72 = (v40 + 32);
          v78 = (v40 + 8);
          v71 = (v12 + 56);
          v70 = (v12 + 48);
          v61 = (v12 + 8);
          v68 = (v40 + 16);
          v60 = (v12 + 16);
          v74 = v29;
          v73 = v41;
          v69 = v30;
          do
          {
            sub_1E1300B24(v39, v85);
            __swift_project_boxed_opaque_existential_1Tm(v85, v85[3]);
            sub_1E1AF5C0C();
            __swift_destroy_boxed_opaque_existential_1(v85);
            v42 = *v41;
            if ((*v41)(v29, 1, v30) == 1)
            {
              sub_1E1308058(v29, &unk_1ECEB1770);
            }

            else
            {
              (*v72)(v82, v29, v30);
              __swift_project_boxed_opaque_existential_1Tm(v80, v80[3]);
              v43 = v76;
              sub_1E1AF5C0C();
              if (v42(v43, 1, v30) == 1)
              {
                sub_1E1308058(v43, &unk_1ECEB1770);
                v44 = 1;
                v45 = v75;
                v46 = v79;
              }

              else
              {
                v46 = v79;
                sub_1E1AF46AC();
                (*v78)(v43, v30);
                v44 = 0;
                v45 = v75;
              }

              (*v71)(v46, v44, 1, v11);
              sub_1E173AFC0(v46, v45);
              if ((*v70)(v45, 1, v11) == 1)
              {
                sub_1E1308058(v45, &qword_1ECEB8960);
                v47 = v77;
                v48 = v82;
                (*v68)(v77, v82, v30);
              }

              else
              {
                v64 = sub_1E1AF467C();
                v49 = *v61;
                (*v61)(v45, v11);
                v50 = v65;
                v48 = v82;
                sub_1E1AF46AC();
                v63 = sub_1E1AF467C();
                v62 = v51;
                v49(v50, v11);
                v52 = v67;
                sub_1E1AF46AC();
                sub_1E1AF465C();
                v53 = v52;
                v54 = v50;
                v49(v53, v11);

                v55 = v66;
                sub_1E1AF466C();
                v56 = v77;
                (*v68)(v77, v48, v69);
                (*v60)(v54, v55, v11);
                sub_1E1AF46BC();
                v46 = v79;

                v57 = v55;
                v47 = v56;
                v49(v57, v11);
                v30 = v69;
              }

              v29 = v74;
              ImpressionsCalculator.addElement(_:at:)(v47, a3, a4, a5, a6);
              v58 = *v78;
              (*v78)(v47, v30);
              sub_1E1308058(v46, &qword_1ECEB8960);
              v58(v48, v30);
              v41 = v73;
            }

            v39 += 40;
            --v38;
          }

          while (v38);
        }
      }

      __swift_destroy_boxed_opaque_existential_1(&v86);
    }

    else
    {

      v84 = 0;
      memset(v83, 0, sizeof(v83));
      sub_1E1308058(v83, &qword_1ECEB8970);
    }
  }
}

uint64_t sub_1E17391C0(void (**a1)(void *, void, uint64_t), void (*a2)(uint64_t, uint64_t, uint64_t, id), uint64_t a3)
{
  v106 = a3;
  v108 = a1;
  v5 = sub_1E1AF468C();
  v110 = *(v5 - 8);
  v111 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v97 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8960);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v101 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v105 = &v97 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v113 = &v97 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v97 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v103 = &v97 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v112 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v104 = &v97 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v97 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v97 - v30;
  v32 = sub_1E1AF46DC();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v100 = &v97 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v97 - v36;
  v39 = MEMORY[0x1EEE9AC00](v38);
  v107 = &v97 - v40;
  v41 = *(*v3 + 144);
  v109 = a2;
  v41(&v114, a2, v39);
  if (!v116)
  {
    return sub_1E1308058(&v114, &qword_1ECEB4CE0);
  }

  v97 = v7;
  v98 = v10;
  sub_1E1308EC0(&v114, v118);
  __swift_project_boxed_opaque_existential_1Tm(v118, v119);
  sub_1E1AF5C0C();
  v42 = *(v33 + 48);
  v43 = v42(v31, 1, v32);
  v102 = v33;
  v99 = v42;
  if (v43 == 1)
  {
    sub_1E1308058(v31, &unk_1ECEB1770);
    v45 = v111;
    v44 = v112;
    v46 = v108;
  }

  else
  {
    (*(v33 + 32))(v107, v31, v32);
    v48 = v33;
    type metadata accessor for ItemLayoutContext();
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
    sub_1E1AF3DAC();

    v49 = v42(v28, 1, v32);
    v46 = v108;
    if (v49 == 1)
    {
      sub_1E1308058(v28, &unk_1ECEB1770);
      v50 = 1;
      v45 = v111;
      v51 = v103;
    }

    else
    {
      v51 = v103;
      sub_1E1AF46AC();
      (*(v48 + 8))(v28, v32);
      v50 = 0;
      v45 = v111;
    }

    v52 = v110;
    (*(v110 + 56))(v51, v50, 1, v45);
    sub_1E173AFC0(v51, v19);
    if ((*(v52 + 48))(v19, 1, v45) == 1)
    {
      sub_1E1308058(v19, &qword_1ECEB8960);
      v53 = 0;
      v54 = 0;
    }

    else
    {
      v55 = sub_1E1AF467C();
      v54 = v56;
      (*(v52 + 8))(v19, v45);
      v53 = v55;
    }

    v44 = v112;
    v57 = v107;
    ImpressionMetrics.withParentId(_:)(v53, v54, v37);

    [v46 frame];
    v58 = v106;
    ImpressionsCalculator.addElement(_:at:)(v37, v59, v60, v61, v62);
    [v46 frame];
    sub_1E1738958(v118, v58, v63, v64, v65, v66);
    v67 = *(v102 + 8);
    v67(v37, v32);
    sub_1E1308058(v51, &qword_1ECEB8960);
    v67(v57, v32);
  }

  swift_getObjectType();
  v68 = swift_conformsToProtocol2();
  v69 = v113;
  if (v68 && v46)
  {
    v108 = v68;
    type metadata accessor for ItemLayoutContext();
    swift_getKeyPath();
    v111 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
    v70 = v104;
    sub_1E1AF3DAC();

    v71 = v99;
    if (v99(v70, 1, v32) == 1)
    {
      sub_1E1308058(v70, &unk_1ECEB1770);
      v72 = 1;
    }

    else
    {
      sub_1E1AF46AC();
      (*(v102 + 8))(v70, v32);
      v72 = 0;
    }

    v73 = v110;
    v109 = *(v110 + 56);
    v109(v69, v72, 1, v45);
    __swift_project_boxed_opaque_existential_1Tm(v118, v119);
    sub_1E1AF5C0C();
    if (v71(v44, 1, v32) == 1)
    {
      sub_1E1308058(v44, &unk_1ECEB1770);
      v74 = v105;
      sub_1E173AFC0(v69, v105);
      v75 = v111;
      v76 = (*(v73 + 48))(v74, 1, v45);
    }

    else
    {
      v77 = v101;
      sub_1E173AFC0(v69, v101);
      v107 = *(v73 + 48);
      if ((v107)(v77, 1, v45) == 1)
      {
        sub_1E1308058(v77, &qword_1ECEB8960);
        v78 = 0;
        v79 = 0;
      }

      else
      {
        v80 = v77;
        v81 = sub_1E1AF467C();
        v79 = v82;
        v83 = v80;
        v44 = v112;
        (*(v73 + 8))(v83, v45);
        v78 = v81;
      }

      v84 = v45;
      v85 = v100;
      ImpressionMetrics.withParentId(_:)(v78, v79, v100);

      v86 = *(v102 + 8);
      v86(v44, v32);
      v87 = v97;
      sub_1E1AF46AC();
      v86(v85, v32);
      v74 = v105;
      (*(v73 + 32))(v105, v87, v84);
      v109(v74, 0, 1, v84);
      v45 = v84;
      v75 = v111;
      v76 = (v107)(v74, 1, v84);
    }

    if (v76 == 1)
    {
      sub_1E1308058(v113, &qword_1ECEB8960);
    }

    else
    {
      v88 = v98;
      (*(v73 + 32))(v98, v74, v45);
      [v75 bounds];
      *&v114 = v89;
      *(&v114 + 1) = v90;
      v115 = v91;
      v116 = v92;
      v117 = 0;
      v93 = ImpressionsCalculator.childCalculator(for:viewBounds:)(v88, &v114);
      v94 = v113;
      if (v93)
      {
        v95 = v93;
        ObjectType = swift_getObjectType();
        v108[8](v118, v95, ObjectType);
      }

      else
      {
      }

      (*(v73 + 8))(v88, v45);
      v74 = v94;
    }

    sub_1E1308058(v74, &qword_1ECEB8960);
  }

  return __swift_destroy_boxed_opaque_existential_1(v118);
}

uint64_t sub_1E1739C58(void (**a1)(void *, void, uint64_t), uint64_t *a2, void *a3)
{
  v4 = v3;
  v111 = a3;
  v110 = a1;
  v102 = sub_1E1AF468C();
  v106 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v103 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1E1AF00EC();
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v107 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF01FC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
  v113 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v112 = &v93 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v93 - v18;
  v20 = sub_1E1AF46DC();
  v114 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v4[7];
  if (v24)
  {
    v97 = v23;
    v104 = &v93 - v22;
    v105 = v11;
    v101 = v12;
    v99 = v9;
    v25 = *(*v4 + 144);

    v100 = a2;
    v25(&v115, a2);
    if (v117 == 0.0)
    {

      return sub_1E1308058(&v115, &qword_1ECEB4CE0);
    }

    v98 = v24;
    v96 = v8;
    sub_1E1308EC0(&v115, v119);
    __swift_project_boxed_opaque_existential_1Tm(v119, v120);
    sub_1E1AF5C0C();
    v26 = v114;
    v27 = *(v114 + 48);
    if (v27(v19, 1, v20) == 1)
    {

      sub_1E1308058(v19, &unk_1ECEB1770);
      return __swift_destroy_boxed_opaque_existential_1(v119);
    }

    v94 = *(v26 + 32);
    v94(v104, v19, v20);
    v30 = type metadata accessor for ItemLayoutContext();
    v31 = v100;
    v32 = v100 + *(v30 + 32);
    v33 = *(v113 + 16);
    v95 = v20;
    v34 = v112;
    v33(v112, v32, v101);
    v35 = *v31;
    v36 = type metadata accessor for ShelfLayoutContext();
    MEMORY[0x1E68F8EA0](v35, *&v32[*(v36 + 20)]);
    v37 = [v111 collectionViewLayout];
    objc_opt_self();
    v111 = swift_dynamicCastObjCClass();
    if (v111)
    {
      swift_getKeyPath();
      sub_1E1AF3DAC();

      v38 = v95;
      if (v27(v16, 1, v95) != 1)
      {
        v93 = v37;
        v44 = v97;
        v94(v97, v16, v38);
        v45 = v111;
        v46 = [v111 _orthogonalScrollingSections];
        v47 = v107;
        sub_1E1AF008C();

        v42 = v105;
        sub_1E1AF019C();
        LOBYTE(v46) = sub_1E1AF00CC();
        (*(v108 + 8))(v47, v109);
        v40 = v96;
        v41 = v113;
        if (v46)
        {
          [v45 _layoutFrameForSection_];
          v49 = v48;
          v51 = v50;
          v53 = v52;
          v55 = v54;
          [v45 _offsetForOrthogonalScrollingSection_];
          v57 = v56;
          ImpressionsCalculator.addElement(_:at:)(v44, v49, v51, v53, v55);
          v58 = v103;
          sub_1E1AF46AC();
          v115 = v57;
          v116 = v53;
          v117 = v55;
          v118 = 0;
          v59 = ImpressionsCalculator.childCalculator(for:viewBounds:)(v58, &v115);
          v61 = v106 + 8;
          v60 = *(v106 + 8);
          v62 = v102;
          v60(v58, v102);
          if (v59)
          {
            v63 = v110;
            [v110 frame];
            v65 = v64;
            v67 = v66;
            v69 = v68;
            v71 = v70;
            v125.origin.x = v49;
            v125.origin.y = v51;
            v125.size.width = v53;
            v125.size.height = v55;
            v72 = -CGRectGetMinY(v125);
            v126.origin.x = v65;
            v126.origin.y = v67;
            v126.size.width = v69;
            v126.size.height = v71;
            v127 = CGRectOffset(v126, 0.0, v72);
            x = v127.origin.x;
            y = v127.origin.y;
            width = v127.size.width;
            height = v127.size.height;
            ImpressionsCalculator.addElement(_:at:)(v104, v127.origin.x, v127.origin.y, v127.size.width, v127.size.height);

            sub_1E1738958(v119, v59, x, y, width, height);

            swift_getObjectType();
            v77 = swift_conformsToProtocol2();
            if (v77 && v63)
            {
              v78 = v77;
              v106 = v61;
              v79 = v63;
              v80 = v103;
              sub_1E1AF46AC();
              [v79 bounds];
              *&v121 = v81;
              *(&v121 + 1) = v82;
              v122 = v83;
              v123 = v84;
              v124 = 0;
              v85 = ImpressionsCalculator.childCalculator(for:viewBounds:)(v80, &v121);
              v60(v80, v62);
              if (v85)
              {
                ObjectType = swift_getObjectType();
                (*(v78 + 64))(v119, v85, ObjectType, v78);
              }

              else
              {
              }

              v90 = v105;
              v91 = v112;
              v38 = v95;
            }

            else
            {

              v90 = v105;
              v91 = v112;
            }

            v92 = *(v114 + 8);
            v92(v97, v38);
            (*(v99 + 8))(v90, v40);
            (*(v41 + 8))(v91, v101);
            v92(v104, v38);
          }

          else
          {
            if (qword_1EE1D2768 != -1)
            {
              swift_once();
            }

            v88 = sub_1E1AF591C();
            __swift_project_value_buffer(v88, qword_1EE216140);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
            sub_1E1AF38EC();
            *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
            v123 = MEMORY[0x1E69E6158];
            *&v121 = 0xD000000000000066;
            *(&v121 + 1) = 0x80000001E1B73470;
            sub_1E1AF38BC();
            sub_1E1308058(&v121, &qword_1ECEB2DF0);
            sub_1E1AF54BC();

            v89 = *(v114 + 8);
            v89(v97, v38);
            (*(v99 + 8))(v105, v40);
            (*(v41 + 8))(v112, v101);
            v89(v104, v38);
          }

          return __swift_destroy_boxed_opaque_existential_1(v119);
        }

        v39 = v38;
        v87 = v100;
        (*(v114 + 8))(v44, v38);

        v43 = v87;
        v34 = v112;
        goto LABEL_14;
      }

      v39 = v38;

      sub_1E1308058(v16, &unk_1ECEB1770);
      v40 = v96;
      v41 = v113;
      v42 = v105;
      v34 = v112;
    }

    else
    {
      v39 = v95;

      v40 = v96;
      v41 = v113;
      v42 = v105;
    }

    v43 = v100;
LABEL_14:
    sub_1E17391C0(v110, v43, v98);

    (*(v99 + 8))(v42, v40);
    (*(v41 + 8))(v34, v101);
    (*(v114 + 8))(v104, v39);
    return __swift_destroy_boxed_opaque_existential_1(v119);
  }

  if (qword_1EE1D2768 != -1)
  {
    swift_once();
  }

  v28 = sub_1E1AF591C();
  __swift_project_value_buffer(v28, qword_1EE216140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  v120 = MEMORY[0x1E69E6158];
  v119[0] = 0xD00000000000005CLL;
  v119[1] = 0x80000001E1B73410;
  sub_1E1AF38BC();
  sub_1E1308058(v119, &qword_1ECEB2DF0);
  sub_1E1AF54BC();
}

void sub_1E173AAD8(void *a1, uint64_t *a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - v8;
  v10 = sub_1E1AF46DC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a1)
  {
    v25 = v11;
    v26 = v3;
    type metadata accessor for ItemLayoutContext();
    swift_getKeyPath();
    v14 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0);
    sub_1E1AF3DAC();

    if (LOBYTE(v27[0]) == 1)
    {
      sub_1E1739C58(v14, a2, a3);
    }

    else
    {
      v15 = *(v26 + 56);
      if (v15)
      {
        swift_getKeyPath();

        sub_1E1AF3DAC();

        v16 = v25;
        if ((*(v25 + 48))(v9, 1, v10) == 1)
        {
          sub_1E1308058(v9, &unk_1ECEB1770);
        }

        else
        {
          (*(v16 + 32))(v13, v9, v10);
          v18 = [v14 frame];
          v19 = MEMORY[0x1EEE9AC00](v18);
          *(&v24 - 8) = v13;
          *(&v24 - 7) = v15;
          *(&v24 - 6) = v19;
          *(&v24 - 5) = v20;
          *(&v24 - 4) = v21;
          *(&v24 - 3) = v22;
          *(&v24 - 16) = 1;
          sub_1E1810798(sub_1E1534CB4, (&v24 - 10), v23);
          (*(v16 + 8))(v13, v10);
        }

        sub_1E17391C0(v14, a2, v15);
      }

      else
      {
        if (qword_1EE1D2768 != -1)
        {
          swift_once();
        }

        v17 = sub_1E1AF591C();
        __swift_project_value_buffer(v17, qword_1EE216140);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
        sub_1E1AF38EC();
        *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
        v27[3] = MEMORY[0x1E69E6158];
        v27[0] = 0xD00000000000005ELL;
        v27[1] = 0x80000001E1B64D10;
        sub_1E1AF38BC();
        sub_1E1308058(v27, &qword_1ECEB2DF0);
        sub_1E1AF54BC();
      }
    }
  }
}

uint64_t sub_1E173AFC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v22 = a6;
  v23 = a2;
  v10 = type metadata accessor for ItemLayoutContext();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = (*(a5 + 8))(a1, a4, a5, v13);
  v16 = v15;
  sub_1E148BABC(a1, &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = v22;
  sub_1E16D33C0(&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  *(v18 + ((v12 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80);
  ReusableCellRegistration.init(reuseIdentifier:configurationHandler:)(v14, v16, sub_1E173B33C, v18, &v24);
  v22 = v25;

  v20 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:in:)(&v24, a1, a4, v19);

  return v20;
}

uint64_t sub_1E173B21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4408);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v17 - v13;
  sub_1E148BABC(a4, &v17 - v13);
  v15 = type metadata accessor for ItemLayoutContext();
  (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  (*(a8 + 16))(v14, a6, a8);
  return (*(a8 + 40))(a4, a5, a6, a8);
}

uint64_t sub_1E173B33C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v10 = *(type metadata accessor for ItemLayoutContext() - 8);
  v11 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v12 = *(v3 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E173B21C(a1, a2, a3, v3 + v11, v12, v7, v8, v9);
}

uint64_t SearchRequestDescriptor.term.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t JSRequest.addingOptions(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v87 = sub_1E1AF5ACC();
  v3 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v5 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v83 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v111 = &v83 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v90 = &v83 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v112 = &v83 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v93 = &v83 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v95 = &v83 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v97 = &v83 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v98 = &v83 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v100 = &v83 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v102 = &v83 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v109 = &v83 - v28;
  v30 = *(a1 + 16);
  v29 = *(a1 + 24);
  v88 = *(a1 + 32);
  v31 = *(a1 + 48);
  v84 = *(a1 + 40);
  v89 = v31;
  v32 = *(a1 + 56);
  v33 = *(a1 + 64);
  v91 = *(a1 + 65);
  v92 = *(a1 + 66);
  v34 = *(a1 + 80);
  v94 = *(a1 + 72);
  v85 = v34;
  v35 = *(a1 + 96);
  v96 = *(a1 + 88);
  v99 = v35;
  v36 = *(a1 + 112);
  v107 = *(a1 + 104);
  v108 = v36;
  v37 = *(a1 + 120);
  v105 = *(a1 + 128);
  v106 = v37;
  v104 = *(a1 + 136);
  v103 = *(a1 + 144);
  v38 = *(a1 + 160);
  v86 = *(a1 + 152);
  v101 = v38;
  v39 = *(a1 + 168);
  *(&v115 + 1) = MEMORY[0x1E69E6158];
  *&v114 = v30;
  *(&v114 + 1) = v29;

  sub_1E1AF5ABC();
  sub_1E1308058(&v114, &qword_1ECEB2DF0);
  *(&v115 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7450);
  *&v114 = v32;
  v40 = v8;
  sub_1E1AF5ABC();
  v41 = v5;
  v42 = v87;
  v43 = *(v3 + 8);
  v43(v41);
  sub_1E1308058(&v114, &qword_1ECEB2DF0);
  if (v33 <= 1)
  {
    if (v33)
    {
      v48 = 0xE500000000000000;
      v49 = 0x79726F7473;
    }

    else
    {
      v48 = 0xE900000000000072;
      v49 = 0x65706F6C65766564;
    }

    goto LABEL_10;
  }

  if (v33 == 2)
  {
    v48 = 0xE600000000000000;
    v49 = 0x656461637261;
LABEL_10:
    v44 = v42;
    v51 = v111;
    v50 = v112;
    v45 = v91;
    v46 = v90;
    v47 = v40;
    goto LABEL_11;
  }

  v44 = v42;
  v45 = v91;
  v46 = v90;
  v47 = v40;
  if (v33 != 3)
  {
    v114 = 0u;
    v115 = 0u;
    v51 = v111;
    v50 = v112;
    v52 = v43;
    goto LABEL_12;
  }

  v48 = 0xE500000000000000;
  v49 = 0x6863746177;
  v51 = v111;
  v50 = v112;
LABEL_11:
  v52 = v43;
  *(&v115 + 1) = MEMORY[0x1E69E6158];
  *&v114 = v49;
  *(&v114 + 1) = v48;
LABEL_12:
  sub_1E1AF5ABC();
  v52(v47, v44);
  sub_1E1308058(&v114, &qword_1ECEB2DF0);
  if (v39)
  {
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2548);
  }

  else
  {
    v53 = 0;
    *(&v114 + 1) = 0;
    *&v115 = 0;
  }

  *&v114 = v39;
  *(&v115 + 1) = v53;

  sub_1E1AF5ABC();
  v52(v51, v44);
  sub_1E1308058(&v114, &qword_1ECEB2DF0);
  v113 = v88;
  v54 = SearchOrigin.rawValue.getter();
  *(&v115 + 1) = MEMORY[0x1E69E6158];
  *&v114 = v54;
  *(&v114 + 1) = v55;
  sub_1E1AF5ABC();
  v52(v46, v44);
  sub_1E1308058(&v114, &qword_1ECEB2DF0);
  if (v89)
  {
    v56 = MEMORY[0x1E69E6158];
    v57 = v97;
    v58 = v84;
  }

  else
  {
    v58 = 0;
    v56 = 0;
    *&v115 = 0;
    v57 = v97;
  }

  *&v114 = v58;
  *(&v114 + 1) = v89;
  *(&v115 + 1) = v56;

  v59 = v93;
  sub_1E1AF5ABC();
  v52(v50, v44);
  sub_1E1308058(&v114, &qword_1ECEB2DF0);
  v60 = MEMORY[0x1E69E6370];
  *(&v115 + 1) = MEMORY[0x1E69E6370];
  LOBYTE(v114) = v45;
  v61 = v95;
  sub_1E1AF5ABC();
  v52(v59, v44);
  sub_1E1308058(&v114, &qword_1ECEB2DF0);
  *(&v115 + 1) = v60;
  LOBYTE(v114) = v92;
  sub_1E1AF5ABC();
  v52(v61, v44);
  sub_1E1308058(&v114, &qword_1ECEB2DF0);
  v62 = v94;
  if (v94)
  {
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10);
  }

  else
  {
    v63 = 0;
    *(&v114 + 1) = 0;
    *&v115 = 0;
  }

  v64 = v102;
  v65 = v100;
  v66 = v98;
  *&v114 = v62;
  *(&v115 + 1) = v63;

  sub_1E1AF5ABC();
  v52(v57, v44);
  sub_1E1308058(&v114, &qword_1ECEB2DF0);
  if (v96)
  {
    v67 = MEMORY[0x1E69E6158];
    v68 = v85;
  }

  else
  {
    v68 = 0;
    v67 = 0;
    *&v115 = 0;
  }

  *&v114 = v68;
  *(&v114 + 1) = v96;
  *(&v115 + 1) = v67;

  sub_1E1AF5ABC();
  v52(v66, v44);
  sub_1E1308058(&v114, &qword_1ECEB2DF0);
  v69 = v99;
  if (v99)
  {
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10);
  }

  else
  {
    v70 = 0;
    *(&v114 + 1) = 0;
    *&v115 = 0;
  }

  *&v114 = v69;
  *(&v115 + 1) = v70;

  sub_1E1AF5ABC();
  v52(v65, v44);
  sub_1E1308058(&v114, &qword_1ECEB2DF0);
  if (v101)
  {
    v71 = MEMORY[0x1E69E6158];
    v72 = v86;
  }

  else
  {
    v72 = 0;
    v71 = 0;
    *&v115 = 0;
  }

  *&v114 = v72;
  *(&v114 + 1) = v101;
  *(&v115 + 1) = v71;

  v73 = v109;
  sub_1E1AF5ABC();
  v52(v64, v44);
  sub_1E1308058(&v114, &qword_1ECEB2DF0);
  v74 = v108;
  if (v108 == 1)
  {
    v75 = 0;
    v76 = 0;
    *(&v114 + 1) = 0;
    *&v115 = 0;
    v77 = v106;
    v78 = v107;
    v80 = v104;
    v79 = v105;
    v81 = v103;
  }

  else
  {
    v75 = swift_allocObject();
    v77 = v106;
    v78 = v107;
    *(v75 + 16) = v107;
    *(v75 + 24) = v74;
    v80 = v104;
    v79 = v105;
    *(v75 + 32) = v77;
    *(v75 + 40) = v79;
    *(v75 + 48) = v80;
    v81 = v103;
    *(v75 + 56) = v103;
    v76 = &type metadata for ReferrerData;
  }

  *&v114 = v75;
  *(&v115 + 1) = v76;
  sub_1E13E2380(v78, v74, v77, v79, v80, v81);
  sub_1E1AF5ABC();
  v52(v73, v44);
  return sub_1E1308058(&v114, &qword_1ECEB2DF0);
}

unint64_t SearchRequestDescriptor.jsRepresentation(in:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 48);
  v7 = *(v2 + 56);
  v8 = *(v2 + 64);
  v35 = *(v2 + 65);
  v36 = *(v2 + 66);
  v33 = *(v2 + 72);
  v34 = *(v2 + 40);
  v32 = *(v2 + 88);
  v38 = *(v2 + 80);
  v39 = *(v2 + 96);
  v37 = *(v2 + 104);
  v9 = *(v2 + 160);
  v40 = *(v2 + 152);
  v10 = *(v2 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8978);
  inited = swift_initStackObject();
  *(inited + 32) = 1836213620;
  *(inited + 16) = xmmword_1E1B2DB80;
  v12 = MEMORY[0x1E69AB6F8];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 80) = v12;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  *(inited + 88) = 0xD000000000000014;
  *(inited + 96) = 0x80000001E1B5BE20;
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7450);
  v13 = sub_1E173CB08();
  *(inited + 104) = v7;
  v14 = v6;
  *(inited + 136) = v13;
  strcpy((inited + 144), "searchEntity");
  *(inited + 157) = 0;
  *(inited + 158) = -5120;
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB89A8);
  v15 = sub_1E173CCC0();
  *(inited + 160) = v8;
  *(inited + 192) = v15;
  strcpy((inited + 200), "targetingData");
  *(inited + 214) = -4864;
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB89C0);
  v16 = sub_1E173CD98();
  *(inited + 216) = v10;
  *(inited + 248) = v16;
  *(inited + 256) = 0x6E696769726FLL;
  *(inited + 264) = 0xE600000000000000;
  *(inited + 296) = &type metadata for SearchOrigin;
  v17 = sub_1E173CE48();
  *(inited + 272) = v5;
  *(inited + 304) = v17;
  *(inited + 312) = 0x656372756F73;
  *(inited + 320) = 0xE600000000000000;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5D40);
  *(inited + 352) = v18;
  v19 = sub_1E173CF4C(&qword_1ECEB89A0, &unk_1ECEB5D40);
  *(inited + 328) = v34;
  *(inited + 336) = v14;
  *(inited + 360) = v19;
  *(inited + 368) = 0xD000000000000014;
  v20 = MEMORY[0x1E69E6370];
  v21 = MEMORY[0x1E69AB710];
  *(inited + 376) = 0x80000001E1B5C2C0;
  *(inited + 408) = v20;
  *(inited + 416) = v21;
  *(inited + 384) = v35;
  *(inited + 424) = 0xD000000000000011;
  *(inited + 432) = 0x80000001E1B5C2E0;
  *(inited + 464) = v20;
  *(inited + 472) = v21;
  *(inited + 440) = v36;
  strcpy((inited + 480), "excludedTerms");
  *(inited + 494) = -4864;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB89D8);
  *(inited + 520) = v22;
  v23 = sub_1E173CE9C();
  *(inited + 528) = v23;
  *(inited + 496) = v33;
  *(inited + 536) = 0x74616E696769726FLL;
  *(inited + 544) = 0xEF6D726554676E69;
  *(inited + 576) = v18;
  *(inited + 584) = v19;
  *(inited + 552) = v38;
  *(inited + 560) = v32;
  *(inited + 592) = 0xD000000000000012;
  *(inited + 600) = 0x80000001E1B5C310;
  *(inited + 632) = v22;
  *(inited + 640) = v23;
  *(inited + 608) = v39;
  *(inited + 648) = 0xD00000000000001CLL;
  *(inited + 656) = 0x80000001E1B5C330;
  *(inited + 688) = v18;
  *(inited + 696) = v19;
  *(inited + 664) = v40;
  *(inited + 672) = v9;
  strcpy((inited + 704), "referrerData");
  *(inited + 717) = 0;
  *(inited + 718) = -5120;

  if (*(&v37 + 1) == 1)
  {
    v24 = a1;
    v25 = a1;

    v26 = 0;
  }

  else
  {

    v43 = sub_1E194C2F4();
    v24 = a1;
    v27 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7260);
    v26 = sub_1E1AF748C();
    sub_1E1308058(&v43, &qword_1ECEB7260);
  }

  v28 = [objc_opt_self() valueWithObject:v26 inContext:v24];
  swift_unknownObjectRelease();

  *(inited + 744) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4D78);
  *(inited + 752) = sub_1E14EC9A0();
  *(inited + 720) = v28;
  v29 = sub_1E15A21AC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5EA0);
  swift_arrayDestroy();
  v30 = sub_1E14ECF1C(v29);

  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB89F0);
  result = sub_1E173CFAC();
  a2[4] = result;
  *a2 = v30;
  return result;
}

uint64_t _s11AppStoreKit23SearchRequestDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v67 = *(a1 + 40);
  v69 = *(a1 + 56);
  v63 = *(a1 + 64);
  v61 = *(a1 + 65);
  v59 = *(a1 + 66);
  v57 = *(a1 + 72);
  v47 = *(a1 + 80);
  v49 = *(a1 + 96);
  v43 = *(a1 + 104);
  v45 = *(a1 + 112);
  v55 = *(a1 + 120);
  v51 = *(a1 + 88);
  v52 = *(a1 + 128);
  v53 = *(a1 + 136);
  v54 = *(a1 + 144);
  v37 = *(a1 + 152);
  v41 = *(a1 + 160);
  v39 = *(a1 + 168);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  v10 = *(a2 + 40);
  v9 = *(a2 + 48);
  v68 = *(a2 + 56);
  v62 = *(a2 + 64);
  v60 = *(a2 + 65);
  v58 = *(a2 + 66);
  v56 = *(a2 + 72);
  v46 = *(a2 + 80);
  v50 = *(a2 + 88);
  v48 = *(a2 + 96);
  v42 = *(a2 + 104);
  v44 = *(a2 + 112);
  v11 = *(a2 + 120);
  v64 = *(a2 + 128);
  v65 = *(a2 + 136);
  v66 = *(a2 + 144);
  v36 = *(a2 + 152);
  v40 = *(a2 + 160);
  v38 = *(a2 + 168);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1E1AF74AC() & 1) == 0 || (v2 != v7 || v3 != v6) && (sub_1E1AF74AC() & 1) == 0)
  {
    return 0;
  }

  LOBYTE(v73[0]) = v4;
  LOBYTE(v70[0]) = v8;
  v12 = SearchOrigin.rawValue.getter();
  v14 = v13;
  if (v12 == SearchOrigin.rawValue.getter() && v14 == v15)
  {
  }

  else
  {
    v16 = sub_1E1AF74AC();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (!v9)
    {
      return 0;
    }

    v17 = v11;
    if ((v67 != v10 || v5 != v9) && (sub_1E1AF74AC() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v17 = v11;
    if (v9)
    {
      return 0;
    }
  }

  if ((sub_1E14F8FF4(v69, v68) & 1) == 0)
  {
    return 0;
  }

  if (v63 == 4)
  {
    v18 = v66;
    v20 = v64;
    v19 = v65;
    if (v62 != 4)
    {
      return 0;
    }

    result = 0;
    if (v61 != v60)
    {
      return result;
    }
  }

  else
  {
    v18 = v66;
    v20 = v64;
    v19 = v65;
    if (v62 == 4)
    {
      return 0;
    }

    v22 = sub_1E1458F8C(v63, v62);
    result = 0;
    if (v22 & 1) == 0 || ((v61 ^ v60))
    {
      return result;
    }
  }

  if (((v59 ^ v58) & 1) == 0)
  {
    if (v57)
    {
      if (!v56 || (sub_1E156ED5C(v57, v56) & 1) == 0)
      {
        return 0;
      }
    }

    else if (v56)
    {
      return 0;
    }

    if (v51)
    {
      v23 = v54;
      v25 = v52;
      v24 = v53;
      v26 = v55;
      if (!v50)
      {
        return 0;
      }

      if (v47 != v46 || v51 != v50)
      {
        v26 = v55;
        v25 = v52;
        v24 = v53;
        v23 = v54;
        if ((sub_1E1AF74AC() & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      v23 = v54;
      v25 = v52;
      v24 = v53;
      v26 = v55;
      if (v50)
      {
        return 0;
      }
    }

    if (v49)
    {
      if (!v48)
      {
        return 0;
      }

      v26 = v55;
      v25 = v52;
      v24 = v53;
      v23 = v54;
      if ((sub_1E156ED5C(v49, v48) & 1) == 0)
      {
        return 0;
      }
    }

    else if (v48)
    {
      return 0;
    }

    if (v45 == 1)
    {
      v27 = v43;
      sub_1E13E2380(v43, 1, v26, v25, v24, v23);
      if (v44 == 1)
      {
        sub_1E13E2380(v42, 1, v17, v20, v19, v18);
        sub_1E13DED78(v43, 1, v26, v25, v24, v23);
LABEL_54:
        if (v41)
        {
          if (!v40 || (v37 != v36 || v41 != v40) && (sub_1E1AF74AC() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v40)
        {
          return 0;
        }

        if (v39)
        {
          if (v38)
          {

            v35 = sub_1E14F93C4(v39, v38);

            if (v35)
            {
              return 1;
            }
          }
        }

        else if (!v38)
        {
          return 1;
        }

        return 0;
      }

      v28 = v42;
      sub_1E13E2380(v42, v44, v17, v20, v19, v18);
    }

    else
    {
      v27 = v43;
      v73[0] = v43;
      v73[1] = v45;
      v73[2] = v26;
      v73[3] = v25;
      v74 = v24;
      v75 = v23;
      if (v44 != 1)
      {
        v70[0] = v42;
        v70[1] = v44;
        v70[2] = v17;
        v70[3] = v20;
        v71 = v19;
        v72 = v18;
        v29 = v26;
        v30 = v19;
        v31 = v25;
        sub_1E13E2380(v43, v45, v29, v25, v24, v23);
        sub_1E13E2380(v42, v44, v17, v20, v30, v18);
        sub_1E13E2380(v43, v45, v55, v25, v24, v23);
        v32 = _s11AppStoreKit12ReferrerDataV2eeoiySbAC_ACtFZ_0(v73, v70);
        v33 = v71;
        LOBYTE(v30) = v72;

        sub_1E137B778(v33, v30);
        v34 = v74;
        LOBYTE(v30) = v75;

        sub_1E137B778(v34, v30);
        sub_1E13DED78(v43, v45, v55, v31, v24, v23);
        if ((v32 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_54;
      }

      sub_1E13E2380(v43, v45, v26, v25, v24, v23);
      v28 = v42;
      sub_1E13E2380(v42, 1, v17, v20, v19, v18);
      sub_1E13E2380(v43, v45, v26, v25, v24, v23);

      sub_1E137B778(v24, v23);
    }

    sub_1E13DED78(v27, v45, v26, v25, v24, v23);
    sub_1E13DED78(v28, v44, v17, v20, v19, v18);
    return 0;
  }

  return result;
}

unint64_t sub_1E173CB08()
{
  result = qword_1ECEB8980;
  if (!qword_1ECEB8980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB7450);
    sub_1E173CB8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8980);
  }

  return result;
}

unint64_t sub_1E173CB8C()
{
  result = qword_1ECEB8988;
  if (!qword_1ECEB8988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB8990);
    sub_1E173CC10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8988);
  }

  return result;
}

unint64_t sub_1E173CC10()
{
  result = qword_1ECEB8998;
  if (!qword_1ECEB8998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB27A0);
    sub_1E173CF4C(&qword_1ECEB89A0, &unk_1ECEB5D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8998);
  }

  return result;
}

unint64_t sub_1E173CCC0()
{
  result = qword_1ECEB89B0;
  if (!qword_1ECEB89B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB89A8);
    sub_1E173CD44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB89B0);
  }

  return result;
}

unint64_t sub_1E173CD44()
{
  result = qword_1ECEB89B8;
  if (!qword_1ECEB89B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB89B8);
  }

  return result;
}

unint64_t sub_1E173CD98()
{
  result = qword_1ECEB89C8;
  if (!qword_1ECEB89C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB89C0);
    sub_1E173CF4C(&qword_1ECEB77C0, &qword_1ECEB2548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB89C8);
  }

  return result;
}

unint64_t sub_1E173CE48()
{
  result = qword_1ECEB89D0;
  if (!qword_1ECEB89D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB89D0);
  }

  return result;
}

unint64_t sub_1E173CE9C()
{
  result = qword_1ECEB89E0;
  if (!qword_1ECEB89E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB89D8);
    sub_1E173CF4C(&qword_1ECEB89E8, &unk_1ECEB2D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB89E0);
  }

  return result;
}

uint64_t sub_1E173CF4C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E173CFAC()
{
  result = qword_1ECEB89F8;
  if (!qword_1ECEB89F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB89F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB89F8);
  }

  return result;
}

uint64_t TodayWidgetCardCollectionTemplate.displayDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit33TodayWidgetCardCollectionTemplate_displayDate;
  v4 = sub_1E1AEFE6C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TodayWidgetCardCollectionTemplate.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayWidgetCardCollectionTemplate.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t TodayWidgetCardCollectionTemplate.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v59 = a2;
  v57 = v3;
  v56 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v55 = &v47 - v6;
  v7 = sub_1E1AEFE6C();
  v53 = *(v7 - 8);
  v54 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v47 - v10;
  v12 = sub_1E1AF380C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v47 - v17;
  v19 = sub_1E1AF5A6C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a1;
  sub_1E1AF381C();
  sub_1E1AF374C();
  v23 = v18;
  v24 = *(v13 + 8);
  v24(v23, v12);
  if ((*(v20 + 48))(v11, 1, v19) == 1)
  {
    sub_1E1308058(v11, &qword_1ECEB1F90);
    v25 = sub_1E1AF5A7C();
    sub_1E173E164(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v26 = 0x7364726163;
    v27 = v56;
    v26[1] = 0xE500000000000000;
    v26[2] = v27;
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x1E69AB690], v25);
    swift_willThrow();
    v24(v58, v12);
    v28 = v57;
    v29 = v59;
    goto LABEL_6;
  }

  v49 = v24;
  v50 = v12;
  v30 = (*(v20 + 32))(v22, v11, v19);
  MEMORY[0x1EEE9AC00](v30);
  *(&v47 - 2) = v59;
  type metadata accessor for WidgetTodayCardTemplate();
  v31 = v52;
  v32 = sub_1E1AF59FC();
  v48 = v22;
  v52 = v19;
  if (!v31)
  {
    v28 = v57;
    *(v57 + 2) = v32;
    sub_1E1AF381C();
    v33 = v55;
    sub_1E1AF371C();
    v34 = v33;
    v35 = v50;
    v36 = v49;
    (v49)(v15);
    v37 = v53;
    v38 = v54;
    if ((*(v53 + 48))(v34, 1, v54) != 1)
    {
      v36(v58, v35);
      (*(v20 + 8))(v48, v52);
      v43 = *(v37 + 32);
      v44 = v51;
      v43(v51, v34, v38);
      v43(&v28[OBJC_IVAR____TtC11AppStoreKit33TodayWidgetCardCollectionTemplate_displayDate], v44, v38);
      v45 = sub_1E1AF39DC();
      (*(*(v45 - 8) + 8))(v59, v45);
      return v28;
    }

    sub_1E1308058(v34, &unk_1ECEBB780);
    v39 = sub_1E1AF5A7C();
    sub_1E173E164(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v40 = 0x4479616C70736964;
    v41 = v56;
    v40[1] = 0xEB00000000657461;
    v40[2] = v41;
    (*(*(v39 - 8) + 104))(v40, *MEMORY[0x1E69AB690], v39);
    swift_willThrow();
    v36(v58, v35);
    (*(v20 + 8))(v48, v52);

    v29 = v59;
LABEL_6:
    swift_deallocPartialClassInstance();
    v42 = sub_1E1AF39DC();
    (*(*(v42 - 8) + 8))(v29, v42);
    return v28;
  }

  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_1E173D89C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14[1] = a3;
  v5 = sub_1E1AF39DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF380C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WidgetTodayCardTemplate();
  (*(v10 + 16))(v12, a1, v9);
  (*(v6 + 16))(v8, a2, v5);
  sub_1E173E164(&qword_1ECEB8A18, type metadata accessor for WidgetTodayCardTemplate);
  return sub_1E1AF464C();
}

uint64_t TodayWidgetCardCollectionTemplate.hash(into:)(uint64_t a1)
{
  sub_1E166D05C(a1, *(v1 + 16));
  sub_1E1AEFE6C();
  sub_1E173E164(&qword_1ECEB6B70, MEMORY[0x1E6969530]);
  return sub_1E1AF5D1C();
}

uint64_t static TodayWidgetCardCollectionTemplate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1E156E4F4(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  return sub_1E1AEFE2C();
}

uint64_t TodayWidgetCardCollectionTemplate.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit33TodayWidgetCardCollectionTemplate_displayDate;
  v2 = sub_1E1AEFE6C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TodayWidgetCardCollectionTemplate.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit33TodayWidgetCardCollectionTemplate_displayDate;
  v2 = sub_1E1AEFE6C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t TodayWidgetCardCollectionTemplate.hashValue.getter()
{
  sub_1E1AF762C();
  sub_1E166D05C(v2, *(v0 + 16));
  sub_1E1AEFE6C();
  sub_1E173E164(&qword_1ECEB6B70, MEMORY[0x1E6969530]);
  sub_1E1AF5D1C();
  return sub_1E1AF767C();
}

uint64_t sub_1E173DD38@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = TodayWidgetCardCollectionTemplate.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1E173DDA0()
{
  v1 = *v0;
  sub_1E1AF762C();
  sub_1E166D05C(v3, *(v1 + 16));
  sub_1E1AEFE6C();
  sub_1E173E164(&qword_1ECEB6B70, MEMORY[0x1E6969530]);
  sub_1E1AF5D1C();
  return sub_1E1AF767C();
}

uint64_t sub_1E173DE4C(uint64_t a1)
{
  sub_1E166D05C(a1, *(*v1 + 16));
  sub_1E1AEFE6C();
  sub_1E173E164(&qword_1ECEB6B70, MEMORY[0x1E6969530]);
  return sub_1E1AF5D1C();
}

uint64_t sub_1E173DEDC()
{
  v1 = *v0;
  sub_1E1AF762C();
  sub_1E166D05C(v3, *(v1 + 16));
  sub_1E1AEFE6C();
  sub_1E173E164(&qword_1ECEB6B70, MEMORY[0x1E6969530]);
  sub_1E1AF5D1C();
  return sub_1E1AF767C();
}

uint64_t sub_1E173DF84(uint64_t a1, uint64_t a2)
{
  if ((sub_1E156E4F4(*(*a1 + 16), *(*a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  return sub_1E1AEFE2C();
}

uint64_t type metadata accessor for TodayWidgetCardCollectionTemplate()
{
  result = qword_1ECEB8A08;
  if (!qword_1ECEB8A08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E173E084()
{
  result = sub_1E1AEFE6C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E173E164(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E173E1AC()
{
  v1 = v0;
  v2 = sub_1E1AEFCCC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E1AF4DCC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E173E3B0();
  v11 = [v1 session];
  sub_1E1AF4DBC();
  v12 = *(v10 + 2);
  if (v12)
  {
    v19 = v7;
    v20 = v6;
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = &v10[(*(v13 + 64) + 32) & ~*(v13 + 64)];
    v17 = *(v13 + 56);
    do
    {
      v14(v5, v16, v2);
      sub_1E1AF4DAC();
      (*(v13 - 8))(v5, v2);
      v16 += v17;
      --v12;
    }

    while (v12);

    v7 = v19;
    v6 = v20;
  }

  else
  {
  }

  return (*(v7 + 8))(v9, v6);
}

char *sub_1E173E3B0()
{
  v0 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v31 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - v3;
  v5 = sub_1E1AEFCCC();
  v32 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v30 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v29 = &v25 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4910);
  v13 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - v14;
  if (qword_1EE1E3068 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    sub_1E1AF534C();
    sub_1E1AF531C();
    (*(v13 + 8))(v15, v12);
    if (!v38[0])
    {
      return MEMORY[0x1E69E7CC0];
    }

    v16 = sub_1E1679410(v38[0]);

    if (!v16)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v37 = *(v16 + 16);
    if (!v37)
    {
      break;
    }

    v13 = 0;
    v34 = (v32 + 32);
    v35 = (v32 + 48);
    v26 = "late";
    v17 = MEMORY[0x1E69E7CC0];
    v18 = (v16 + 40);
    v25 = xmmword_1E1B02CC0;
    v33 = v4;
    v27 = v11;
    v28 = v5;
    v36 = v16;
    while (v13 < *(v16 + 16))
    {
      v15 = *(v18 - 1);
      v12 = *v18;

      sub_1E1AEFCAC();
      if ((*v35)(v4, 1, v5) == 1)
      {
        sub_1E1308058(v4, &unk_1ECEB4B60);
        if (qword_1EE1D27B0 != -1)
        {
          swift_once();
        }

        v20 = sub_1E1AF591C();
        __swift_project_value_buffer(v20, qword_1EE215450);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
        sub_1E1AF38EC();
        *(swift_allocObject() + 16) = v25;
        sub_1E1AF388C();
        sub_1E1AF387C();
        v38[3] = MEMORY[0x1E69E6158];
        v38[0] = v15;
        v38[1] = v12;

        sub_1E1AF385C();
        sub_1E1308058(v38, &qword_1ECEB2DF0);
        sub_1E1AF387C();
        sub_1E1AF38AC();
        sub_1E1AF54AC();

        v4 = v33;
        v11 = v27;
        v5 = v28;
        v16 = v36;
      }

      else
      {

        v12 = *v34;
        v21 = v30;
        (*v34)(v30, v4, v5);
        v22 = v29;
        v12(v29, v21, v5);
        v12(v11, v22, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_1E172EF74(0, *(v17 + 2) + 1, 1, v17);
        }

        v15 = *(v17 + 2);
        v23 = *(v17 + 3);
        v16 = v36;
        if (v15 >= v23 >> 1)
        {
          v17 = sub_1E172EF74(v23 > 1, v15 + 1, 1, v17);
        }

        v19 = v32;
        v4 = v33;
        *(v17 + 2) = v15 + 1;
        v12(&v17[((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v15], v11, v5);
      }

      ++v13;
      v18 += 2;
      if (v37 == v13)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_22:
    swift_once();
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_19:

  return v17;
}

uint64_t SearchResults.facets.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_facets;
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_facets);
  v4 = *(v1 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_facets + 8);
  v5 = *(v1 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_facets + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = *(v2 + 24);
  return sub_1E13C0418(v3);
}

uint64_t SearchResults.__allocating_init(results:message:facets:selectedFacetOptions:nextPage:isAutoPlayEnabled:isCondensedSearchLockupsEnabled:transparencyLink:guidedSearchTokens:guidedSearchQueries:pageMetrics:pageRenderEvent:resultsParentImpressionMetrics:guidedSearchTokensParentImpressionMetrics:pageRefreshPolicy:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  LODWORD(v73) = a7;
  LODWORD(v72) = a6;
  v69 = a1;
  v70 = a4;
  v77 = a14;
  v78 = a13;
  v74 = a12;
  v75 = a15;
  v79 = a11;
  v71 = a10;
  v67 = a9;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v66 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v76 = &v62 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v62 - v25;
  v27 = sub_1E1AF3C3C();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = swift_allocObject();
  v32 = *(a3 + 16);
  *(v31 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_results) = v69;
  v33 = *(a3 + 24);
  v68 = a5;
  v69 = a2;
  *(v31 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_message) = a2;
  v34 = v31 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_facets;
  *v34 = *a3;
  *(v34 + 16) = v32;
  *(v34 + 24) = v33;
  *(v31 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_selectedFacetOptions) = v70;
  sub_1E134FD1C(a5, v31 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_nextPage, &qword_1ECEB2DF0);
  *(v31 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_isAutoPlayEnabled) = v72;
  *(v31 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_isCondensedSearchLockupsEnabled) = v73;
  v70 = a8;
  *(v31 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_transparencyLink) = a8;
  *(v31 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_guidedSearchTokens) = v67;
  *(v31 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_guidedSearchQueries) = v71;
  sub_1E134FD1C(v78, v31 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_resultsParentImpressionMetrics, &unk_1ECEB1770);
  v35 = v75;
  sub_1E134FD1C(v77, v31 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_guidedSearchTokensParentImpressionMetrics, &unk_1ECEB1770);
  v36 = *(v28 + 16);
  v36(v30, v79, v27);
  v72 = a16;
  sub_1E134FD1C(a16, v26, &qword_1ECEB3B28);
  *(v31 + 16) = v35;
  v73 = v30;
  v36((v31 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics), v30, v27);
  *(v31 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v74;
  v71 = v26;
  v37 = v76;
  sub_1E134FD1C(v26, v76, &qword_1ECEB3B28);
  v38 = sub_1E1AF39DC();
  v67 = *(v38 - 8);
  v39 = *(v67 + 48);
  if (v39(v37, 1, v38) == 1)
  {
    sub_1E1308058(v72, &qword_1ECEB3B28);
    sub_1E1308058(v77, &unk_1ECEB1770);
    sub_1E1308058(v78, &unk_1ECEB1770);
    v40 = *(v28 + 8);
    v40(v79, v27);
    sub_1E1308058(v68, &qword_1ECEB2DF0);
    sub_1E1308058(v71, &qword_1ECEB3B28);
    v40(v73, v27);
    v41 = v37;
  }

  else
  {
    v63 = v39;
    v65 = v28;
    v42 = v68;
    v43 = qword_1EE1E3BC8;

    if (v43 != -1)
    {
      swift_once();
    }

    v64 = v27;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
    __swift_project_value_buffer(v44, qword_1EE1E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
    sub_1E1AF39EC();
    v45 = v80;
    v46 = v42;
    v47 = v67;
    if (v80)
    {
    }

    v48 = *(v47 + 8);
    v48(v76, v38);
    v49 = v79;
    if (!v45)
    {

      sub_1E1308058(v72, &qword_1ECEB3B28);
      sub_1E1308058(v77, &unk_1ECEB1770);
      sub_1E1308058(v78, &unk_1ECEB1770);
      v55 = *(v65 + 8);
      v56 = v49;
      v57 = v64;
      v55(v56, v64);
      sub_1E1308058(v46, &qword_1ECEB2DF0);
      sub_1E1308058(v71, &qword_1ECEB3B28);
      v55(v73, v57);
      return v31;
    }

    v50 = v71;
    v51 = v66;
    sub_1E134FD1C(v71, v66, &qword_1ECEB3B28);
    if (v63(v51, 1, v38) != 1)
    {
      sub_1E15F0974();

      sub_1E1308058(v72, &qword_1ECEB3B28);
      sub_1E1308058(v77, &unk_1ECEB1770);
      sub_1E1308058(v78, &unk_1ECEB1770);
      v58 = *(v65 + 8);
      v59 = v49;
      v60 = v64;
      v58(v59, v64);
      sub_1E1308058(v46, &qword_1ECEB2DF0);
      sub_1E1308058(v50, &qword_1ECEB3B28);
      v58(v73, v60);
      v48(v51, v38);
      return v31;
    }

    sub_1E1308058(v72, &qword_1ECEB3B28);
    sub_1E1308058(v77, &unk_1ECEB1770);
    sub_1E1308058(v78, &unk_1ECEB1770);
    v52 = *(v65 + 8);
    v53 = v49;
    v54 = v64;
    v52(v53, v64);
    sub_1E1308058(v46, &qword_1ECEB2DF0);
    sub_1E1308058(v50, &qword_1ECEB3B28);
    v52(v73, v54);
    v41 = v51;
  }

  sub_1E1308058(v41, &qword_1ECEB3B28);
  return v31;
}

uint64_t SearchResults.init(results:message:facets:selectedFacetOptions:nextPage:isAutoPlayEnabled:isCondensedSearchLockupsEnabled:transparencyLink:guidedSearchTokens:guidedSearchQueries:pageMetrics:pageRenderEvent:resultsParentImpressionMetrics:guidedSearchTokensParentImpressionMetrics:pageRefreshPolicy:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = v16;
  LODWORD(v74) = a7;
  LODWORD(v73) = a6;
  v72 = a4;
  v77 = a5;
  v78 = a14;
  v75 = a15;
  v76 = a12;
  v79 = a11;
  v69 = a9;
  v70 = a10;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B28);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v67 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v71 = &v62 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v62 - v27;
  v29 = sub_1E1AF3C3C();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v62 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(a3 + 16);
  *(v16 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_results) = a1;
  v34 = *(a3 + 24);
  v68 = a2;
  *(v16 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_message) = a2;
  v35 = v16 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_facets;
  *v35 = *a3;
  *(v35 + 16) = v33;
  *(v35 + 24) = v34;
  *(v16 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_selectedFacetOptions) = v72;
  v37 = v36;
  sub_1E134FD1C(v77, v16 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_nextPage, &qword_1ECEB2DF0);
  *(v16 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_isAutoPlayEnabled) = v73;
  *(v16 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_isCondensedSearchLockupsEnabled) = v74;
  v72 = a8;
  v73 = a13;
  *(v16 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_transparencyLink) = a8;
  v38 = v70;
  *(v16 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_guidedSearchTokens) = v69;
  *(v16 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_guidedSearchQueries) = v38;
  sub_1E134FD1C(a13, v16 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_resultsParentImpressionMetrics, &unk_1ECEB1770);
  sub_1E134FD1C(v78, v16 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_guidedSearchTokensParentImpressionMetrics, &unk_1ECEB1770);
  v39 = *(v30 + 16);
  v39(v32, v79, v37);
  sub_1E134FD1C(a16, v28, &qword_1ECEB3B28);
  *(v16 + 16) = v75;
  v74 = v37;
  v39((v16 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics), v32, v37);
  *(v16 + OBJC_IVAR____TtC11AppStoreKit8BasePage_pageRenderEvent) = v76;
  v40 = v28;
  v41 = v28;
  v42 = v71;
  sub_1E134FD1C(v41, v71, &qword_1ECEB3B28);
  v43 = sub_1E1AF39DC();
  v70 = *(v43 - 8);
  v44 = *(v70 + 48);
  if (v44(v42, 1, v43) == 1)
  {
    sub_1E1308058(a16, &qword_1ECEB3B28);
    sub_1E1308058(v78, &unk_1ECEB1770);
    sub_1E1308058(v73, &unk_1ECEB1770);
    v45 = *(v30 + 8);
    v46 = v74;
    v45(v79, v74);
    sub_1E1308058(v77, &qword_1ECEB2DF0);
    sub_1E1308058(v40, &qword_1ECEB3B28);
    v45(v32, v46);
    v47 = v42;
  }

  else
  {
    v63 = v44;
    v64 = a16;
    v65 = v32;
    v66 = v30;
    v69 = v40;
    v48 = qword_1EE1E3BC8;

    if (v48 != -1)
    {
      swift_once();
    }

    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
    __swift_project_value_buffer(v49, qword_1EE1E3BD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
    sub_1E1AF39EC();
    v50 = v80;
    v51 = v70;
    if (v80)
    {
    }

    v52 = *(v51 + 8);
    v52(v42, v43);
    if (!v50)
    {

      sub_1E1308058(v64, &qword_1ECEB3B28);
      sub_1E1308058(v78, &unk_1ECEB1770);
      sub_1E1308058(v73, &unk_1ECEB1770);
      v57 = *(v66 + 8);
      v58 = v74;
      v57(v79, v74);
      sub_1E1308058(v77, &qword_1ECEB2DF0);
      sub_1E1308058(v69, &qword_1ECEB3B28);
      v57(v65, v58);
      return v17;
    }

    v53 = v67;
    sub_1E134FD1C(v69, v67, &qword_1ECEB3B28);
    if (v63(v53, 1, v43) != 1)
    {
      sub_1E15F0974();

      sub_1E1308058(v64, &qword_1ECEB3B28);
      sub_1E1308058(v78, &unk_1ECEB1770);
      sub_1E1308058(v73, &unk_1ECEB1770);
      v59 = *(v66 + 8);
      v60 = v74;
      v59(v79, v74);
      sub_1E1308058(v77, &qword_1ECEB2DF0);
      sub_1E1308058(v69, &qword_1ECEB3B28);
      v59(v65, v60);
      v52(v53, v43);
      return v17;
    }

    v54 = v53;
    sub_1E1308058(v64, &qword_1ECEB3B28);
    sub_1E1308058(v78, &unk_1ECEB1770);
    sub_1E1308058(v73, &unk_1ECEB1770);
    v55 = *(v66 + 8);
    v56 = v74;
    v55(v79, v74);
    sub_1E1308058(v77, &qword_1ECEB2DF0);
    sub_1E1308058(v69, &qword_1ECEB3B28);
    v55(v65, v56);
    v47 = v54;
  }

  sub_1E1308058(v47, &qword_1ECEB3B28);
  return v17;
}

void (*SearchResults.init(deserializing:using:)(void (*a1)(void, void), uint64_t a2))(void, void)
{
  v3 = v2;
  v114 = v2;
  v115 = a2;
  v109 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v105 = &v95 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4D20);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v99 = &v95 - v8;
  v116 = sub_1E1AF39DC();
  v113 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v104 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v112 = &v95 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v119 = &v95 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB1F90);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v96 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v95 - v17;
  v19 = sub_1E1AF380C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v101 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v98 = &v95 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v97 = &v95 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v95 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v95 - v30;
  v32 = sub_1E1AF5A6C();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v111 = &v95 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  sub_1E1AF381C();
  sub_1E1AF374C();
  v36 = v33;
  v110 = v20;
  v37 = v20 + 8;
  v38 = *(v20 + 8);
  v38(v31, v19);
  if ((*(v36 + 48))(v18, 1, v32) == 1)
  {
    sub_1E1308058(v18, &qword_1ECEB1F90);
    v39 = sub_1E1AF5A7C();
    sub_1E1740DC4(&qword_1EE1E3580, MEMORY[0x1E69AB6A8]);
    swift_allocError();
    *v40 = 0x73746C75736572;
    v41 = v109;
    v40[1] = 0xE700000000000000;
    v40[2] = v41;
    (*(*(v39 - 8) + 104))(v40, *MEMORY[0x1E69AB690], v39);
    swift_willThrow();
    (*(v113 + 8))(v115, v116);
    v38(v35, v19);
    type metadata accessor for SearchResults();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v102 = v38;
    v103 = v37;
    v42 = v114;
    v106 = v19;
    v108 = v35;
    (*(v36 + 32))(v111, v18, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B38);
    v100 = v36;
    v43 = swift_allocObject();
    v44 = MEMORY[0x1E69E7CC0];
    *(v43 + 16) = MEMORY[0x1E69E7CC0];
    *&v117 = v43;
    if (qword_1EE1E3BC8 != -1)
    {
      swift_once();
    }

    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B30);
    __swift_project_value_buffer(v45, qword_1EE1E3BD0);
    v46 = v119;
    sub_1E1AF395C();

    v47 = v100;
    v48 = v96;
    (*(v100 + 16))(v96, v111, v32);
    (*(v47 + 56))(v48, 0, 1, v32);
    Instances15byDeserializing5usingSayACGSg9JetEngine9JSONArrayVSg_AI11JSONContextVtFZ_0 = _s11AppStoreKit12SearchResultC18tryToMakeInstances15byDeserializing5usingSayACGSg9JetEngine9JSONArrayVSg_AI11JSONContextVtFZ_0(v48, v46);
    sub_1E1308058(v48, &qword_1ECEB1F90);
    if (Instances15byDeserializing5usingSayACGSg9JetEngine9JSONArrayVSg_AI11JSONContextVtFZ_0)
    {
      v50 = Instances15byDeserializing5usingSayACGSg9JetEngine9JSONArrayVSg_AI11JSONContextVtFZ_0;
    }

    else
    {
      v50 = v44;
    }

    *(v42 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_results) = v50;
    type metadata accessor for SearchResultsMessage();
    v51 = v28;
    sub_1E1AF381C();
    v52 = v113 + 16;
    v53 = *(v113 + 16);
    v95 = v32;
    v54 = v112;
    v55 = v116;
    (v53)(v112, v46, v116);
    v96 = v53;
    v109 = v52;
    sub_1E1740DC4(qword_1EE1DB638, type metadata accessor for SearchResultsMessage);
    sub_1E1AF464C();
    v56 = v114;
    *(v114 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_message) = v117;
    sub_1E1AF381C();
    (v53)(v54, v46, v55);
    sub_1E14E6264();
    sub_1E1AF464C();
    v57 = v118;
    v58 = BYTE8(v118);
    v59 = v56;
    v60 = v56 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_facets;
    *v60 = v117;
    *(v60 + 16) = v57;
    *(v60 + 24) = v58;
    v61 = v99;
    sub_1E1AF381C();
    v62 = v106;
    (*(v110 + 56))(v61, 0, 1, v106);
    v63 = *(v60 + 8);
    v64 = *(v60 + 16);
    v65 = *(v60 + 24);
    *&v117 = *v60;
    *(&v117 + 1) = v63;
    *&v118 = v64;
    BYTE8(v118) = v65;
    sub_1E13C0418(v117);
    v66 = _s11AppStoreKit10PageFacetsV26deserializeSelectedOptions4from3for5usingSDyAC5FacetVShyAI6OptionVGG9JetEngine10JSONObjectVSg_ACSgAN11JSONContextVtFZ_0(v61, &v117, v115);
    sub_1E13C045C(v117);
    sub_1E1308058(v61, &qword_1ECEB4D20);
    *(v59 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_selectedFacetOptions) = v66;
    sub_1E1AF381C();
    sub_1E1AF37EC();
    v67 = v102;
    v102(v51, v62);
    v68 = (v59 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_nextPage);
    v69 = v118;
    *v68 = v117;
    v68[1] = v69;
    v70 = v97;
    sub_1E1AF381C();
    LOBYTE(v66) = sub_1E1AF370C();
    v67(v70, v62);
    *(v59 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_isAutoPlayEnabled) = v66 & 1;
    v71 = v98;
    sub_1E1AF381C();
    LOBYTE(v66) = sub_1E1AF370C();
    v67(v71, v62);
    *(v59 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_isCondensedSearchLockupsEnabled) = v66 & 1;
    type metadata accessor for LinkableText();
    sub_1E1AF381C();
    v72 = v119;
    v73 = v116;
    v74 = v96;
    (v96)(v112, v119, v116);
    sub_1E1740DC4(&qword_1EE1F5FA0, type metadata accessor for LinkableText);
    sub_1E1AF464C();
    *(v59 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_transparencyLink) = v117;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4D28);
    sub_1E1AF381C();
    v75 = v112;
    (v74)(v112, v72, v73);
    v76 = v74;
    sub_1E14E6AD0();
    sub_1E1AF464C();
    v77 = v59;
    *(v59 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_guidedSearchTokens) = v117;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4D30);
    v78 = v108;
    sub_1E1AF381C();
    (v76)(v75, v119, v73);
    sub_1E14E6BCC();
    v79 = v75;
    sub_1E1AF464C();
    *(v77 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_guidedSearchQueries) = v117;
    sub_1E1AF46DC();
    v80 = v78;
    sub_1E1AF381C();
    v81 = v79;
    v82 = v79;
    v83 = v115;
    v84 = v96;
    (v96)(v82, v115, v73);
    v85 = v105;
    sub_1E1AF464C();
    v86 = v114;
    sub_1E134B7C8(v85, v114 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_resultsParentImpressionMetrics);
    sub_1E1AF381C();
    v87 = v116;
    (v84)(v81, v83, v116);
    v88 = v106;
    sub_1E1AF464C();
    sub_1E134B7C8(v85, v86 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_guidedSearchTokensParentImpressionMetrics);
    v89 = v101;
    (*(v110 + 16))(v101, v80, v88);
    v90 = v104;
    (v84)(v104, v83, v87);
    v91 = v107;
    v92 = BasePage.init(deserializing:using:)(v89, v90);
    if (v91)
    {
      v35 = *(v113 + 8);
      v35(v83, v87);
      v102(v80, v88);
      v35(v119, v87);
    }

    else
    {
      v35 = v92;
      v93 = *(v113 + 8);
      v93(v83, v87);
      v102(v80, v88);
      v93(v119, v87);
    }

    (*(v100 + 8))(v111, v95);
  }

  return v35;
}

uint64_t type metadata accessor for SearchResults()
{
  result = qword_1EE1E0168;
  if (!qword_1EE1E0168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E1740B08()
{

  sub_1E13C045C(*(v0 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_facets));

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_nextPage, &qword_1ECEB2DF0);

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_resultsParentImpressionMetrics, &unk_1ECEB1770);
  return sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_guidedSearchTokensParentImpressionMetrics, &unk_1ECEB1770);
}

uint64_t SearchResults.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit8BasePage_pageMetrics;
  v2 = sub_1E1AF3C3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1E13C045C(*(v0 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_facets));

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_nextPage, &qword_1ECEB2DF0);

  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_resultsParentImpressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit13SearchResults_guidedSearchTokensParentImpressionMetrics, &unk_1ECEB1770);
  return v0;
}

uint64_t SearchResults.__deallocating_deinit()
{
  SearchResults.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E1740DC4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E1740E14()
{
  sub_1E134EAF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E1740F6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5340);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1E134FD1C(a1, &v5 - v3, &qword_1ECEB5340);
  return sub_1E1AF23EC();
}

uint64_t static ComponentFactory.makeView(for:surroundedBy:pageGrid:pageGridProvider:item:itemOffset:objectGraph:dynamicTypeSize:componentWidth:componentHeight:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void *a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>, double a7@<D0>)
{
  v92 = a4;
  v93 = a5;
  v97 = a6;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8A20);
  v75 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v77 = &v67 - v11;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8A28);
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v67 - v12;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8A30);
  MEMORY[0x1EEE9AC00](v91);
  v80 = &v67 - v13;
  v72 = type metadata accessor for AccessibilityFeaturesCardView(0);
  MEMORY[0x1EEE9AC00](v72);
  v68 = (&v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8A38);
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v67 - v15;
  v70 = type metadata accessor for AccessibilityFeaturesDetailsView(0);
  MEMORY[0x1EEE9AC00](v70);
  v17 = (&v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8A40);
  MEMORY[0x1EEE9AC00](v86);
  v73 = &v67 - v18;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8A48);
  MEMORY[0x1EEE9AC00](v95);
  v96 = &v67 - v19;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8A50);
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v67 - v20;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8A58);
  MEMORY[0x1EEE9AC00](v81);
  v82 = &v67 - v21;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8A60);
  MEMORY[0x1EEE9AC00](v88);
  v85 = &v67 - v22;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8A68);
  MEMORY[0x1EEE9AC00](v94);
  v90 = &v67 - v23;
  v79 = type metadata accessor for ProductCapabilityView(0);
  MEMORY[0x1EEE9AC00](v79);
  v25 = (&v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8A70);
  v74 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v27 = &v67 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E70);
  v29 = v28 - 8;
  MEMORY[0x1EEE9AC00](v28);
  v30 = a2;
  v32 = &v67 - v31;
  sub_1E134FD1C(v30, &v67 - v31, &qword_1ECEB75A0);
  sub_1E134FD1C(a3, &v32[*(v29 + 56)], &qword_1ECEB75A0);
  memcpy(v102, v92, 0x188uLL);
  v100[0] = *(a1 + 16);
  sub_1E1300B24(v93, v101);
  if (v100[0] > 0x61u)
  {
    if (v100[0] == 98)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
      type metadata accessor for AccessibilityFeatures();
      if (swift_dynamicCast())
      {
        v93 = v32;
        v53 = v98[0];
        if ((*(a1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_presentationHints + 1) & 0x10) != 0)
        {
          *v17 = v98[0];
          memcpy(v17 + 1, v102, 0x188uLL);
          v63 = (v17 + *(v70 + 24));
          *v63 = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BA8);
          swift_storeEnumTagMultiPayload();
          *(v63 + *(type metadata accessor for ScaledSpaceMetric() + 20)) = 0x4038000000000000;
          sub_1E1742768(v17, v71, type metadata accessor for AccessibilityFeaturesDetailsView);
          swift_storeEnumTagMultiPayload();

          sub_1E141D08C(v102, v99);
          sub_1E1742564(&qword_1ECEB8A98, type metadata accessor for AccessibilityFeaturesDetailsView);
          sub_1E1742564(&qword_1ECEB8AA0, type metadata accessor for AccessibilityFeaturesCardView);
          v59 = v73;
          sub_1E1AF259C();
          v60 = type metadata accessor for AccessibilityFeaturesDetailsView;
          v61 = v17;
        }

        else
        {
          KeyPath = swift_getKeyPath();
          v55 = v68;
          *v68 = KeyPath;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5368);
          swift_storeEnumTagMultiPayload();
          v56 = v72;
          v57 = *(v72 + 20);
          *(v55 + v57) = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BA8);
          swift_storeEnumTagMultiPayload();
          v58 = v56[6];
          *(v55 + v58) = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5388);
          swift_storeEnumTagMultiPayload();
          *(v55 + v56[7]) = v53;
          *(v55 + v56[8]) = a7;
          sub_1E1742768(v55, v71, type metadata accessor for AccessibilityFeaturesCardView);
          swift_storeEnumTagMultiPayload();
          sub_1E1742564(&qword_1ECEB8A98, type metadata accessor for AccessibilityFeaturesDetailsView);
          sub_1E1742564(&qword_1ECEB8AA0, type metadata accessor for AccessibilityFeaturesCardView);

          v59 = v73;
          sub_1E1AF259C();
          v60 = type metadata accessor for AccessibilityFeaturesCardView;
          v61 = v55;
        }

        sub_1E17427D0(v61, v60);
        sub_1E134FD1C(v59, v82, &qword_1ECEB8A40);
        swift_storeEnumTagMultiPayload();
        v64 = sub_1E1742564(&qword_1ECEB8A88, type metadata accessor for ProductCapabilityView);
        v99[0] = v79;
        v99[1] = v64;
        swift_getOpaqueTypeConformance2();
        sub_1E1742478();
        v65 = v85;
        sub_1E1AF259C();
        sub_1E134FD1C(v65, v89, &qword_1ECEB8A60);
        swift_storeEnumTagMultiPayload();
        sub_1E174238C();
        sub_1E17425AC();
        v66 = v90;
        sub_1E1AF259C();
        sub_1E1308058(v65, &qword_1ECEB8A60);
        sub_1E134FD1C(v66, v96, &qword_1ECEB8A68);
        swift_storeEnumTagMultiPayload();
        sub_1E1742300();
        sub_1E1AF259C();

        sub_1E1308058(v66, &qword_1ECEB8A68);
        sub_1E1308058(v59, &qword_1ECEB8A40);
        goto LABEL_19;
      }
    }

    else if (v100[0] == 99)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
      type metadata accessor for AccessibilityParagraph();
      if (swift_dynamicCast())
      {
        v40 = (*(a1 + OBJC_IVAR____TtC11AppStoreKit5Shelf_presentationHints) >> 12) & 1;
        memcpy(v98 + 7, v102, 0x188uLL);
        v99[0] = v99[51];
        LOBYTE(v99[1]) = v40;
        memcpy(&v99[1] + 1, v98, 0x18FuLL);
        memcpy(v78, v99, 0x198uLL);
        swift_storeEnumTagMultiPayload();
        sub_1E141D08C(v102, v98);

        sub_1E17426B8(v99, v98);
        sub_1E1742664();
        v41 = sub_1E160EBF0();
        v98[0] = &type metadata for MediaPageHeaderView;
        v98[1] = v41;
        swift_getOpaqueTypeConformance2();
        v42 = v80;
        sub_1E1AF259C();
        sub_1E134FD1C(v42, v89, &qword_1ECEB8A30);
        swift_storeEnumTagMultiPayload();
        sub_1E174238C();
        sub_1E17425AC();
        v43 = v90;
        sub_1E1AF259C();
        sub_1E1308058(v42, &qword_1ECEB8A30);
        sub_1E134FD1C(v43, v96, &qword_1ECEB8A68);
        swift_storeEnumTagMultiPayload();
        sub_1E1742300();
        sub_1E1AF259C();
        sub_1E1742714(v99);

        sub_1E1308058(v43, &qword_1ECEB8A68);
        v39 = v32;
        goto LABEL_10;
      }
    }

LABEL_16:
    swift_storeEnumTagMultiPayload();
    sub_1E1742300();
    sub_1E1AF259C();
    sub_1E1308058(v32, &unk_1ECEB7E70);
    return sub_1E1308058(v100, &qword_1ECEB8AB8);
  }

  if (v100[0] == 23)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
    type metadata accessor for ProductCapability();
    if (swift_dynamicCast())
    {
      v92 = v98[0];
      type metadata accessor for ProductCapabilityViewModel();
      swift_allocObject();

      v45 = sub_1E142E280(v44);
      v93 = v32;
      v46 = v45;
      v84 = v45;
      *v25 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3BA8);
      swift_storeEnumTagMultiPayload();
      v99[0] = v46;
      v47 = sub_1E1742564(&qword_1ECEB8A88, type metadata accessor for ProductCapabilityView);
      v48 = v79;
      sub_1E1AF0DCC();
      sub_1E17427D0(v25, type metadata accessor for ProductCapabilityView);
      v49 = v74;
      v50 = v83;
      (*(v74 + 16))(v82, v27, v83);
      swift_storeEnumTagMultiPayload();
      v99[0] = v48;
      v99[1] = v47;
      swift_getOpaqueTypeConformance2();
      sub_1E1742478();
      v51 = v85;
      sub_1E1AF259C();
      sub_1E134FD1C(v51, v89, &qword_1ECEB8A60);
      swift_storeEnumTagMultiPayload();
      sub_1E174238C();
      sub_1E17425AC();
      v52 = v90;
      sub_1E1AF259C();
      sub_1E1308058(v51, &qword_1ECEB8A60);
      sub_1E134FD1C(v52, v96, &qword_1ECEB8A68);
      swift_storeEnumTagMultiPayload();
      sub_1E1742300();
      sub_1E1AF259C();

      sub_1E1308058(v52, &qword_1ECEB8A68);
      (*(v49 + 8))(v27, v50);
LABEL_19:
      sub_1E1308058(v93, &unk_1ECEB7E70);
      return __swift_destroy_boxed_opaque_existential_1(v101);
    }

    goto LABEL_16;
  }

  if (v100[0] != 93)
  {
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB24B0);
  type metadata accessor for MediaPageHeader();
  if (!swift_dynamicCast())
  {
    goto LABEL_16;
  }

  v92 = v98[0];
  v99[0] = v98[0];
  v33 = sub_1E160EBF0();
  v93 = v32;
  v34 = v77;
  sub_1E1AF0DCC();
  v35 = v75;
  v36 = v84;
  (*(v75 + 16))(v78, v34, v84);
  swift_storeEnumTagMultiPayload();
  sub_1E1742664();
  v99[0] = &type metadata for MediaPageHeaderView;
  v99[1] = v33;
  swift_getOpaqueTypeConformance2();
  v37 = v80;
  sub_1E1AF259C();
  sub_1E134FD1C(v37, v89, &qword_1ECEB8A30);
  swift_storeEnumTagMultiPayload();
  sub_1E174238C();
  sub_1E17425AC();
  v38 = v90;
  sub_1E1AF259C();
  sub_1E1308058(v37, &qword_1ECEB8A30);
  sub_1E134FD1C(v38, v96, &qword_1ECEB8A68);
  swift_storeEnumTagMultiPayload();
  sub_1E1742300();
  sub_1E1AF259C();

  sub_1E1308058(v38, &qword_1ECEB8A68);
  (*(v35 + 8))(v77, v36);
  v39 = v93;
LABEL_10:
  sub_1E1308058(v39, &unk_1ECEB7E70);
  return __swift_destroy_boxed_opaque_existential_1(v101);
}

unint64_t sub_1E1742300()
{
  result = qword_1ECEB8A78;
  if (!qword_1ECEB8A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB8A68);
    sub_1E174238C();
    sub_1E17425AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8A78);
  }

  return result;
}

unint64_t sub_1E174238C()
{
  result = qword_1ECEB8A80;
  if (!qword_1ECEB8A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB8A60);
    type metadata accessor for ProductCapabilityView(255);
    sub_1E1742564(&qword_1ECEB8A88, type metadata accessor for ProductCapabilityView);
    swift_getOpaqueTypeConformance2();
    sub_1E1742478();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8A80);
  }

  return result;
}

unint64_t sub_1E1742478()
{
  result = qword_1ECEB8A90;
  if (!qword_1ECEB8A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB8A40);
    sub_1E1742564(&qword_1ECEB8A98, type metadata accessor for AccessibilityFeaturesDetailsView);
    sub_1E1742564(&qword_1ECEB8AA0, type metadata accessor for AccessibilityFeaturesCardView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8A90);
  }

  return result;
}

uint64_t sub_1E1742564(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E17425AC()
{
  result = qword_1ECEB8AA8;
  if (!qword_1ECEB8AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB8A30);
    sub_1E1742664();
    sub_1E160EBF0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8AA8);
  }

  return result;
}

unint64_t sub_1E1742664()
{
  result = qword_1ECEB8AB0;
  if (!qword_1ECEB8AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8AB0);
  }

  return result;
}

uint64_t sub_1E1742768(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E17427D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E1742840()
{
  result = qword_1ECEB8AC0;
  if (!qword_1ECEB8AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB8AC8);
    sub_1E1742300();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8AC0);
  }

  return result;
}

Swift::Void __swiftcall SearchTextPresenter.suggestGhostHint(toExpand:to:)(Swift::String toExpand, Swift::String to)
{
  v3 = (v2 + OBJC_IVAR____TtC11AppStoreKit19SearchTextPresenter_lastSnapshot);
  v4 = *(v2 + OBJC_IVAR____TtC11AppStoreKit19SearchTextPresenter_lastSnapshot + 8);
  if (v4)
  {
    object = to._object;
    countAndFlagsBits = to._countAndFlagsBits;
    v7 = *v3;
    v8 = v3[2];
    v9 = v3[3];
    v10 = v3[4];
    v11 = *(v2 + OBJC_IVAR____TtC11AppStoreKit19SearchTextPresenter_ghostHintMetricsTracker);
    if (v11)
    {
      v13 = *(v11 + 24);
      v14 = *(v11 + 16);
      *(v11 + 16) = toExpand;
      *(v11 + 32) = to;
      *(v11 + 48) = 0;
      sub_1E1743850(v7, v4);

      sub_1E14E85BC(v14, v13);
    }

    else
    {
    }

    v12 = v2 + OBJC_IVAR____TtC11AppStoreKit19SearchTextPresenter_textExpansionState;
    *v12 = countAndFlagsBits;
    *(v12 + 8) = object;
    *(v12 + 16) = 0;

    v15[0] = v7;
    v15[1] = v4;
    v16 = v8 & 1;
    v17 = v9;
    v18 = v10;
    sub_1E1743610(v15);
    sub_1E174380C(v7, v4);
  }
}

uint64_t SearchTextPresenter.__allocating_init(ghostHintMetricsTracker:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  v3 = OBJC_IVAR____TtC11AppStoreKit19SearchTextPresenter_snapshotUpdateSubscription;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8AD0);
  (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC11AppStoreKit19SearchTextPresenter_onApplyTermExpansion;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6940);
  swift_allocObject();
  *(v2 + v5) = sub_1E1AF35CC();
  v6 = OBJC_IVAR____TtC11AppStoreKit19SearchTextPresenter_onHintsTermChange;
  swift_allocObject();
  *(v2 + v6) = sub_1E1AF35CC();
  v7 = v2 + OBJC_IVAR____TtC11AppStoreKit19SearchTextPresenter_lastSnapshot;
  *(v7 + 32) = 0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  v8 = v2 + OBJC_IVAR____TtC11AppStoreKit19SearchTextPresenter_textExpansionState;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit19SearchTextPresenter_ghostHintMetricsTracker) = a1;
  return v2;
}

uint64_t SearchTextPresenter.init(ghostHintMetricsTracker:)(uint64_t a1)
{
  v2 = v1;
  *(v1 + 48) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  v4 = OBJC_IVAR____TtC11AppStoreKit19SearchTextPresenter_snapshotUpdateSubscription;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8AD0);
  (*(*(v5 - 8) + 56))(v2 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC11AppStoreKit19SearchTextPresenter_onApplyTermExpansion;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6940);
  swift_allocObject();
  *(v2 + v6) = sub_1E1AF35CC();
  v7 = OBJC_IVAR____TtC11AppStoreKit19SearchTextPresenter_onHintsTermChange;
  swift_allocObject();
  *(v2 + v7) = sub_1E1AF35CC();
  v8 = v2 + OBJC_IVAR____TtC11AppStoreKit19SearchTextPresenter_lastSnapshot;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0;
  v9 = v2 + OBJC_IVAR____TtC11AppStoreKit19SearchTextPresenter_textExpansionState;
  *(v9 + 16) = 0;
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v2 + OBJC_IVAR____TtC11AppStoreKit19SearchTextPresenter_ghostHintMetricsTracker) = a1;
  return v2;
}

uint64_t sub_1E1742CD0(uint64_t a1, uint64_t *a2)
{
  sub_1E134FD1C(a1, v6, &qword_1ECEB8AD8);
  v3 = *a2;
  swift_beginAccess();
  sub_1E134FD1C(v3 + 16, v5, &qword_1ECEB8AD8);
  swift_beginAccess();
  sub_1E1743894(v6, v3 + 16);
  swift_endAccess();
  sub_1E1742E54(v5);
  sub_1E1308058(v5, &qword_1ECEB8AD8);
  return sub_1E1308058(v6, &qword_1ECEB8AD8);
}

uint64_t SearchTextPresenter.inputSource.setter(uint64_t a1)
{
  swift_beginAccess();
  sub_1E134FD1C(v1 + 16, v4, &qword_1ECEB8AD8);
  swift_beginAccess();
  sub_1E1743894(a1, v1 + 16);
  swift_endAccess();
  sub_1E1742E54(v4);
  sub_1E1308058(a1, &qword_1ECEB8AD8);
  return sub_1E1308058(v4, &qword_1ECEB8AD8);
}

uint64_t sub_1E1742E54(uint64_t a1)
{
  v2 = v1;
  v30 = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8AE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v31[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31[-1] - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8AD0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31[-1] - v12;
  v14 = OBJC_IVAR____TtC11AppStoreKit19SearchTextPresenter_snapshotUpdateSubscription;
  swift_beginAccess();
  sub_1E134FD1C(v2 + v14, v9, &qword_1ECEB8AE0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v15 = &qword_1ECEB8AE0;
    v16 = v9;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_1E134FD1C(a1, v31, &qword_1ECEB8AD8);
    v17 = v32;
    if (v32)
    {
      v18 = v33;
      __swift_project_boxed_opaque_existential_1Tm(v31, v32);
      (*(v18 + 16))(v17, v18);
      sub_1E1AF5BBC();

      (*(v11 + 8))(v13, v10);
      __swift_destroy_boxed_opaque_existential_1(v31);
      goto LABEL_7;
    }

    (*(v11 + 8))(v13, v10);
    v15 = &qword_1ECEB8AD8;
    v16 = v31;
  }

  sub_1E1308058(v16, v15);
LABEL_7:
  swift_beginAccess();
  v19 = v2[5];
  if (v19)
  {
    v20 = v2[6];
    v21 = __swift_project_boxed_opaque_existential_1Tm(v2 + 2, v2[5]);
    v22 = *(v19 - 8);
    v23 = MEMORY[0x1EEE9AC00](v21);
    v25 = &v31[-1] - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v25, v23);
    (*(v20 + 16))(v19, v20);
    (*(v22 + 8))(v25, v19);
    v26 = sub_1E1361A80();
    v27 = sub_1E1AF68EC();
    v32 = v26;
    v33 = MEMORY[0x1E69AB720];
    v31[0] = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8AE8);
    sub_1E17447B8();
    sub_1E1AF3CEC();

    __swift_destroy_boxed_opaque_existential_1(v31);
    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  (*(v11 + 56))(v6, v28, 1, v10);
  swift_beginAccess();
  sub_1E1744748(v6, v2 + v14);
  return swift_endAccess();
}

uint64_t sub_1E17432E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v16[0] = *a1;
  v15 = v16[0];
  v3 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = (a2 + OBJC_IVAR____TtC11AppStoreKit19SearchTextPresenter_lastSnapshot);
  v7 = *(a2 + OBJC_IVAR____TtC11AppStoreKit19SearchTextPresenter_lastSnapshot);
  v8 = *(a2 + OBJC_IVAR____TtC11AppStoreKit19SearchTextPresenter_lastSnapshot + 8);
  v9 = v6[2];
  v10 = v6[3];
  v11 = v6[4];
  v20 = v7;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v16[1] = v2;
  v17 = v3;
  v18 = v5;
  v19 = v4;
  sub_1E1743850(v7, v8);
  sub_1E1743904(&v20, v16);
  sub_1E174380C(v20, v21);
  v12 = *v6;
  v13 = v6[1];
  *v6 = v15;
  v6[1] = v2;
  v6[2] = v3;
  v6[3] = v5;
  v6[4] = v4;

  return sub_1E174380C(v12, v13);
}

void (*SearchTextPresenter.inputSource.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 168) = v1;
  swift_beginAccess();
  sub_1E134FD1C(v1 + 16, v4, &qword_1ECEB8AD8);
  return sub_1E17434B8;
}

void sub_1E17434B8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 168);
  if (a2)
  {
    sub_1E134FD1C(*a1, v2 + 40, &qword_1ECEB8AD8);
    sub_1E134FD1C(v3 + 16, v2 + 80, &qword_1ECEB8AD8);
    swift_beginAccess();
    sub_1E1743894(v2 + 40, v3 + 16);
    swift_endAccess();
    sub_1E1742E54(v2 + 80);
    sub_1E1308058(v2 + 80, &qword_1ECEB8AD8);
  }

  else
  {
    sub_1E134FD1C(v3 + 16, v2 + 40, &qword_1ECEB8AD8);
    swift_beginAccess();
    sub_1E1743894(v2, v3 + 16);
    swift_endAccess();
    sub_1E1742E54(v2 + 40);
  }

  sub_1E1308058(v2 + 40, &qword_1ECEB8AD8);
  sub_1E1308058(v2, &qword_1ECEB8AD8);

  free(v2);
}

uint64_t *sub_1E1743610(uint64_t *result)
{
  v2 = v1 + OBJC_IVAR____TtC11AppStoreKit19SearchTextPresenter_textExpansionState;
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit19SearchTextPresenter_textExpansionState + 8);
  if (v3 && (*(v2 + 16) & 1) == 0)
  {
    v4 = *result;
    v5 = result[1];
    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = *result & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v7 = *v2;
      sub_1E1AF5E9C();
      sub_1E1AF5E9C();

      v8 = sub_1E1AF602C();

      if (v8 & 1) == 0 || (v4 == v7 ? (v9 = v3 == v5) : (v9 = 0), v9 || (sub_1E1AF74AC()))
      {
      }

      else
      {
        swift_beginAccess();
        if (*(v1 + 40))
        {
          v10 = v1;
          sub_1E1300B24(v1 + 16, v16);
          v11 = v17;
          v12 = v18;
          __swift_project_boxed_opaque_existential_1Tm(v16, v17);
          v13 = (*(v12 + 8))(v7, v3, v11, v12);
          __swift_destroy_boxed_opaque_existential_1(v16);
          if (v13)
          {
            v16[0] = v7;
            v16[1] = v3;
            sub_1E1AF35BC();
            if (*(v2 + 8))
            {
              *(v2 + 16) = 1;
            }

            if (*(v10 + OBJC_IVAR____TtC11AppStoreKit19SearchTextPresenter_ghostHintMetricsTracker))
            {
              v14._countAndFlagsBits = v7;
              v14._object = v3;
              v15._countAndFlagsBits = v4;
              v15._object = v5;
              SearchGhostHintMetricsTracker.trackDisplayedExpansion(of:from:)(v14, v15);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1E174380C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1E1743850(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1E1743894(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8AD8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t *sub_1E1743904(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v27 = a1[4];
  v28 = a1[2];
  v24 = *a2;
  v25 = a1[3];
  v26 = *(a2 + 8);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = v3;
  v22 = v5;
  v23 = *(a2 + 16);
  if (v3)
  {
    if (v26)
    {
      v8 = v4 == v24 && v3 == v26;
      if (!v8 && (sub_1E1AF74AC() & 1) == 0 || v23 != (v28 & 1))
      {
        goto LABEL_9;
      }

      if (v27)
      {
        if (!v6)
        {
          v9 = 0;
          goto LABEL_10;
        }

        if (v25 != v5 || v27 != v6)
        {
          v20 = sub_1E1AF74AC();

          sub_1E1743850(v4, v7);
          sub_1E1743850(v4, v7);
          v9 = v6;
          sub_1E174380C(v24, v26);
          if ((v20 & 1) == 0)
          {
            goto LABEL_11;
          }

          goto LABEL_30;
        }

        sub_1E1743850(v4, v7);
        sub_1E1743850(v4, v7);
        v16 = v24;
        v17 = v26;
      }

      else
      {
        if (v6)
        {
LABEL_9:

          v9 = v6;
LABEL_10:

          sub_1E1743850(v4, v7);
          sub_1E1743850(v4, v7);
          sub_1E174380C(v24, v26);
LABEL_11:

          sub_1E174380C(v4, v7);
          v10 = v9;
LABEL_16:
          v34 = v4;
          v35 = v7;
          v36 = v28;
          v37 = v25;
          v38 = v27;
          v29 = v24;
          v30 = v26;
          v31 = v23;
          v32 = v5;
          v33 = v10;
          v11 = v5;
          v12 = v10;
          v21 = v10;
          sub_1E1743E20(&v34, &v29);
          v34 = v4;
          v35 = v7;
          v36 = v28;
          v37 = v25;
          v38 = v27;
          v29 = v24;
          v30 = v26;
          v31 = v23;
          v32 = v11;
          v33 = v12;
          v13 = *(v2 + OBJC_IVAR____TtC11AppStoreKit19SearchTextPresenter_textExpansionState);
          v14 = *(v2 + OBJC_IVAR____TtC11AppStoreKit19SearchTextPresenter_textExpansionState + 8);

          sub_1E1743F5C(&v34, &v29, v13, v14);

          v34 = v4;
          v35 = v7;
          v36 = v28;
          v37 = v25;
          v38 = v27;
          v29 = v24;
          v30 = v26;
          v31 = v23;
          v32 = v22;
          v33 = v21;
          sub_1E1744244(&v34, &v29);
          v34 = v24;
          v35 = v26;
          LOBYTE(v36) = v23;
          v37 = v22;
          v38 = v21;
          return sub_1E1743610(&v34);
        }

        sub_1E1743850(v4, v7);
        sub_1E1743850(v4, v7);
        v16 = v24;
        v17 = v26;
      }

      sub_1E174380C(v16, v17);
LABEL_30:

      v18 = v4;
      v19 = v7;
      goto LABEL_31;
    }

    sub_1E1743850(v4, v7);
    sub_1E1743850(v4, v7);

LABEL_15:
    sub_1E174380C(v4, v7);
    sub_1E174380C(v24, v26);
    v10 = v6;
    goto LABEL_16;
  }

  if (v26)
  {

    sub_1E1743850(v4, 0);
    goto LABEL_15;
  }

  sub_1E1743850(v4, 0);
  v18 = v4;
  v19 = 0;
LABEL_31:

  return sub_1E174380C(v18, v19);
}

void sub_1E1743E20(uint64_t a1, uint64_t *a2)
{
  v3 = (v2 + OBJC_IVAR____TtC11AppStoreKit19SearchTextPresenter_textExpansionState);
  v4 = *(v2 + OBJC_IVAR____TtC11AppStoreKit19SearchTextPresenter_textExpansionState + 8);
  if (v4)
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = *a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      v8 = *v3;
      sub_1E1AF5E9C();
      sub_1E1AF5E9C();

      v9 = sub_1E1AF602C();

      if ((v9 & 1) == 0 || (v5 == v8 ? (v10 = v4 == v6) : (v10 = 0), v10))
      {
      }

      else
      {
        v11 = sub_1E1AF74AC();

        if ((v11 & 1) == 0)
        {
          return;
        }
      }
    }

    *(v3 + 16) = 0;
    *v3 = 0;
    v3[1] = 0;
  }
}

uint64_t sub_1E1743F5C(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v8 = *result;
    v7 = *(result + 8);
    v9 = *(result + 24);
    v10 = *(result + 32);
    v11 = *a2;
    v12 = a2[1];
    v30 = a2[4];
    v13 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v13 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      v31 = *(result + 24);
      sub_1E1AF5E9C();
      sub_1E1AF5E9C();
      v14 = sub_1E1AF602C();

      if (v14)
      {
        if (v11 == a3 && v12 == a4)
        {
          v15 = 0;
        }

        else
        {
          result = sub_1E1AF74AC();
          v15 = result ^ 1;
        }
      }

      else
      {
        v15 = 0;
      }

      v9 = v31;
      if (!v7)
      {
        return result;
      }
    }

    else
    {
      v15 = 0;
      if (!v7)
      {
        return result;
      }
    }

    if (v10)
    {
      v19 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v19 = v9 & 0xFFFFFFFFFFFFLL;
      }

      if (v19)
      {
        if (v30)
        {
          v20 = HIBYTE(v30) & 0xF;
          if ((v30 & 0x2000000000000000) == 0)
          {
            v20 = *v29 & 0xFFFFFFFFFFFFLL;
          }

          v21 = v20 == 0;
          if (v11 == v8 && v7 == v12)
          {
            if ((v15 & (v20 == 0)) == 0)
            {
              return result;
            }

LABEL_41:
            v22 = *(v28 + OBJC_IVAR____TtC11AppStoreKit19SearchTextPresenter_ghostHintMetricsTracker);
            if (v22)
            {
              v23 = *(v22 + 24);
              if (v23)
              {
                v24 = *(v22 + 32);
                v25 = *(v22 + 40);
                v26 = v11 == *(v22 + 16) && v23 == v12;
                if (v26 || (result = sub_1E1AF74AC(), (result & 1) != 0))
                {
                  v27 = v24 == a3 && v25 == a4;
                  if (v27 || (result = sub_1E1AF74AC(), (result & 1) != 0))
                  {
                    *(v22 + 48) = 2;
                  }
                }
              }
            }

            return result;
          }
        }

        else
        {
          v21 = 1;
          if (v11 == v8 && v7 == v12)
          {
            if ((v15 & 1) == 0)
            {
              return result;
            }

            goto LABEL_41;
          }
        }

        result = sub_1E1AF74AC();
        if ((v15 & v21 & 1) == 0 || (result & 1) == 0)
        {
          return result;
        }

        goto LABEL_41;
      }
    }

    if (v11 != v8 || v7 != v12)
    {

      return sub_1E1AF74AC();
    }
  }

  else
  {
    v16 = *(v4 + OBJC_IVAR____TtC11AppStoreKit19SearchTextPresenter_ghostHintMetricsTracker);
    if (v16)
    {
      v17 = *(v16 + 16);
      v18 = *(v16 + 24);
      *(v16 + 16) = 0u;
      *(v16 + 32) = 0u;
      *(v16 + 48) = 0;

      return sub_1E14E85BC(v17, v18);
    }
  }

  return result;
}

uint64_t sub_1E1744244(uint64_t result, uint64_t *a2)
{
  v3 = *(result + 8);
  v4 = *a2;
  v5 = a2[1];
  if (!v3)
  {
    v13 = 0;
    if ((v5 & 0x2000000000000000) != 0)
    {
LABEL_17:
      if ((v5 & 0xF00000000000000) == 0)
      {
        return result;
      }

LABEL_21:
      if ((v13 & 1) == 0)
      {
        return sub_1E1AF35BC();
      }

      return result;
    }

LABEL_20:
    if ((v4 & 0xFFFFFFFFFFFFLL) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

  v6 = result;
  result = *result;
  v7 = *(v6 + 32);
  if (v7)
  {
    v8 = *(v6 + 24);
    v9 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      v10 = a2[4];
      if (!v10)
      {
        goto LABEL_25;
      }

      v11 = a2[3] & 0xFFFFFFFFFFFFLL;
      if ((v10 & 0x2000000000000000) != 0)
      {
        v11 = HIBYTE(v10) & 0xF;
      }

      if (!v11)
      {
LABEL_25:
        if (v4 == v8 && v7 == v5)
        {
          v13 = 1;
          if (result == v8 && v3 == v7)
          {
            return result;
          }
        }

        else
        {
          v14 = v3;
          v15 = result;
          v13 = sub_1E1AF74AC();
          result = v15;
          if (v15 == v4 && v14 == v5)
          {
            return result;
          }
        }

LABEL_15:
        result = sub_1E1AF74AC();
        if (result)
        {
          return result;
        }

        if ((v5 & 0x2000000000000000) != 0)
        {
          goto LABEL_17;
        }

        goto LABEL_20;
      }
    }
  }

  if (result != v4 || v3 != v5)
  {
    v13 = 0;
    goto LABEL_15;
  }

  return result;
}

uint64_t SearchTextPresenter.deinit()
{
  sub_1E1308058(v0 + 16, &qword_1ECEB8AD8);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit19SearchTextPresenter_snapshotUpdateSubscription, &qword_1ECEB8AE0);

  sub_1E174380C(*(v0 + OBJC_IVAR____TtC11AppStoreKit19SearchTextPresenter_lastSnapshot), *(v0 + OBJC_IVAR____TtC11AppStoreKit19SearchTextPresenter_lastSnapshot + 8));

  return v0;
}

uint64_t SearchTextPresenter.__deallocating_deinit()
{
  sub_1E1308058(v0 + 16, &qword_1ECEB8AD8);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit19SearchTextPresenter_snapshotUpdateSubscription, &qword_1ECEB8AE0);

  sub_1E174380C(*(v0 + OBJC_IVAR____TtC11AppStoreKit19SearchTextPresenter_lastSnapshot), *(v0 + OBJC_IVAR____TtC11AppStoreKit19SearchTextPresenter_lastSnapshot + 8));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SearchTextPresenter()
{
  result = qword_1EE1DC7F0;
  if (!qword_1EE1DC7F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E1744588()
{
  sub_1E1744674();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E1744674()
{
  if (!qword_1EE1D29A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB8AD0);
    v0 = sub_1E1AF6D9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1D29A8);
    }
  }
}

uint64_t sub_1E17446E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_1E1AF74AC();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t sub_1E1744748(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB8AE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E17447B8()
{
  result = qword_1EE1D2758;
  if (!qword_1EE1D2758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB8AE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D2758);
  }

  return result;
}

unint64_t sub_1E1744838()
{
  result = qword_1ECEB8AF0;
  if (!qword_1ECEB8AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB8AF0);
  }

  return result;
}

double MetadataRibbonItemView.layoutContext.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(a2 + 160))(&v12);
  if (*(&v13 + 1))
  {
    v15[0] = v12;
    v15[1] = v13;
    v16 = v14;
    sub_1E134E724(v15, a3);
    v7 = MEMORY[0x1E69ABBC8];
    *(a3 + 64) = a1;
    *(a3 + 72) = v7;
    *(a3 + 40) = v3;
    v8 = *(a2 + 40);
    v9 = v3;
    *(a3 + 80) = v8(a1, a2) & 1;
    v10 = (*(a2 + 48))(a1, a2);
    sub_1E134B88C(v15);
    *(a3 + 81) = v10 & 1;
  }

  else
  {
    sub_1E13E2E98(&v12);
    *(a3 + 80) = 0;
    result = 0.0;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t MetadataRibbonItemView.searchLayoutContext.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(a2 + 160))(&v14);
  if (!*(&v15 + 1))
  {
    result = sub_1E13E2E98(&v14);
    goto LABEL_5;
  }

  v17[0] = v14;
  v17[1] = v15;
  v18 = v16;
  (*(a2 + 56))(&v14, a1, a2);
  v7 = v14;
  if (v14 == 10)
  {
    result = sub_1E134B88C(v17);
LABEL_5:
    *(a3 + 112) = 0;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    return result;
  }

  sub_1E134E724(v17, a3);
  v9 = MEMORY[0x1E69ABBC8];
  *(a3 + 64) = a1;
  *(a3 + 72) = v9;
  *(a3 + 40) = v3;
  v10 = *(a2 + 48);
  v3;
  *(a3 + 80) = v10(a1, a2) & 1;
  *(a3 + 81) = v7;
  *(a3 + 88) = (*(a2 + 80))(a1, a2);
  *(a3 + 96) = v11 & 1;
  *(a3 + 104) = (*(a2 + 104))(a1, a2);
  *(a3 + 112) = v12 & 1;
  v13 = (*(a2 + 136))(a1, a2);
  result = sub_1E134B88C(v17);
  *(a3 + 113) = v13;
  return result;
}

uint64_t PurchasesContentMode.displayTitle.getter()
{
  if (*v0)
  {
    if (*v0 == 1)
    {
      v1 = [objc_opt_self() deviceClass];
      sub_1E1AF5DFC();

      sub_1E1AF5EAC();

      v10._countAndFlagsBits = sub_1E1AF608C();
      v10._object = v2;
      sub_1E1AF5F5C();

      v3._countAndFlagsBits = 0;
      v3._object = 0xE000000000000000;
      countAndFlagsBits = localizedString(_:comment:)(v10, v3)._countAndFlagsBits;

      return countAndFlagsBits;
    }

    v7 = 0xD000000000000015;
    v6 = 0x80000001E1B736A0;
  }

  else
  {
    v6 = 0x80000001E1B736E0;
    v7 = 0xD000000000000012;
  }

  v8 = 0;
  v9 = 0xE000000000000000;

  return localizedString(_:comment:)(*&v7, *&v8)._countAndFlagsBits;
}

uint64_t PurchasesContentMode.toggleIsHiddenText.getter()
{
  if (*v0 > 1u)
  {
    v2 = 0x80000001E1B73700;
    v1 = 0xD000000000000010;
  }

  else
  {
    v1 = 0x4553414843525550;
    v2 = 0xEE00454449485F53;
  }

  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  return localizedString(_:comment:)(*&v1, v3)._countAndFlagsBits;
}

AppStoreKit::PurchasesContentMode_optional __swiftcall PurchasesContentMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}