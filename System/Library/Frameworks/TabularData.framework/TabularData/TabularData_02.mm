char *sub_21B2498F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E3D0, &qword_21B351CD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void *sub_21B249A10(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4D8, &qword_21B351D90);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4E0, &qword_21B351D98);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21B249B44(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E370, &qword_21B351C80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 48 * v8;
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

char *sub_21B249C94(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 40);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[40 * v10])
    {
      memmove(v14, v15, 40 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_21B249DB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E458, &qword_21B351D58);
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
    v10 = MEMORY[0x277D84F90];
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

size_t sub_21B249EC0(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E448, &qword_21B351D48);
  v10 = *(sub_21B34A834() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(sub_21B34A834() - 8);
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

char *sub_21B24A098(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E438, &qword_21B351D38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_21B24A18C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E198, &qword_21B351AC8);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_21B24A290(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E400, &qword_21B351D00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_21B24A394(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E418, &qword_21B351D18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

void *sub_21B24A490(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E328, &qword_21B351C40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E330, &qword_21B351C48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21B24A5FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E340, &qword_21B351C58);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_21B24A6FC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E350, &qword_21B352030);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21B24A830(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E460, &qword_21B352890);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E468, &qword_21B351D60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21B24A9C0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[32 * v10])
    {
      memmove(v15, v16, 32 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_21B24AAF0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_21B24AC38(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E388, &qword_21B351C98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_21B24AD58(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E390, &qword_21B351CA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void *sub_21B24AE9C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
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
    v16 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t sub_21B24AFF4(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E2C8, &qword_21B351BE0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E2D0, &qword_21B351BE8) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E2D0, &qword_21B351BE8) - 8);
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

void *sub_21B24B274(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 1;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 5);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[4 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 32 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_21B24B3F0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

unint64_t sub_21B24B560(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_21B34B594();

  return sub_21B24FE9C(a1, v5);
}

uint64_t sub_21B24B5D0(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(v4 + 40);
  sub_21B34BBC4();
  a3(v12, a1, a2);
  v9 = sub_21B34BC24();

  return a4(a1, a2, v9);
}

unint64_t sub_21B24B664(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_21B34A834();
  sub_21B260D68(&qword_27CD7E1E0);
  v5 = sub_21B34AAA4();

  return sub_21B2507C8(a1, v5);
}

unint64_t sub_21B24B6E8(int a1)
{
  v3 = *(v1 + 40);
  sub_21B34BBC4();
  sub_21B34BBE4();
  v4 = sub_21B34BC24();

  return sub_21B250974(a1, v4);
}

unint64_t sub_21B24B754(double a1)
{
  v3 = *(v1 + 40);
  v4 = sub_21B34BBB4();

  return sub_21B2509E4(v4, a1);
}

unint64_t sub_21B24B7A0(float a1)
{
  v3 = a1 == 0.0;
  v4 = 0.0;
  if (!v3)
  {
    v4 = a1;
  }

  v5 = MEMORY[0x21CEEE380](*(v1 + 40), LODWORD(v4), 4);

  return sub_21B250A4C(v5, a1);
}

unint64_t sub_21B24B7F0(float a1)
{
  __asm { FCMP            H0, #0 }

  v8 = 0;
  if (!_ZF)
  {
    *&v8 = *&a1;
  }

  v9 = MEMORY[0x21CEEE380](*(v1 + 40), v8, 2);
  v10.n128_f32[0] = a1;

  return sub_21B250AB4(v9, v10);
}

unint64_t sub_21B24B840(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_21B34BBB4();

  return sub_21B250B1C(a1, v4);
}

unint64_t sub_21B24B884(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_21B34BBC4();
  sub_21B2F1184(v6, a1);
  v4 = sub_21B34BC24();

  return sub_21B250B88(a1, v4);
}

unint64_t sub_21B24B8F0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21B34A834();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v16 - v11;
  v13 = *(v2 + 40);
  sub_21B34BBC4();
  sub_21B2615FC(a1, v12, &qword_27CD7E100, &unk_21B352A30);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_21B34BBE4();
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_21B34BBE4();
    sub_21B260D68(&qword_27CD7E1E0);
    sub_21B34AAB4();
    (*(v5 + 8))(v8, v4);
  }

  v14 = sub_21B34BC24();
  return sub_21B250DB0(a1, v14);
}

uint64_t sub_21B24BAEC(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 40);
  sub_21B34BBC4();
  sub_21B34BBE4();
  if (a2 >> 60 != 15)
  {
    sub_21B34A744();
  }

  v6 = sub_21B34BC24();

  return sub_21B251218(a1, a2, v6);
}

unint64_t sub_21B24BB88(int a1)
{
  v2 = v1;
  v4 = a1;
  v5 = *(v2 + 40);
  sub_21B34BBC4();
  if (v4 != 2)
  {
    sub_21B34BBE4();
  }

  sub_21B34BBE4();
  v6 = sub_21B34BC24();

  return sub_21B251D2C(a1, v6);
}

unint64_t sub_21B24BC14(uint64_t a1, char a2)
{
  v5 = *(v2 + 40);
  sub_21B34BBC4();
  if (a2)
  {
    sub_21B34BBE4();
  }

  else
  {
    sub_21B34BBE4();
    if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = a1;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x21CEEE3F0](v6);
  }

  v7 = sub_21B34BC24();

  return sub_21B251DBC(a1, a2 & 1, v7);
}

unint64_t sub_21B24BCA8(unint64_t a1)
{
  v3 = *(v1 + 40);
  sub_21B34BBC4();
  sub_21B34BBE4();
  if ((a1 & 0x100000000) == 0)
  {
    sub_21B34BC04();
  }

  v4 = sub_21B34BC24();

  return sub_21B251E44(a1 | ((HIDWORD(a1) & 1) << 32), v4);
}

unint64_t sub_21B24BD44(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_21B34BBC4();
  sub_21B34BBE4();
  if (a2)
  {
    sub_21B34AD94();
  }

  v6 = sub_21B34BC24();

  return sub_21B251ECC(a1, a2, v6);
}

unint64_t sub_21B24BDD8(uint64_t a1, char a2)
{
  v5 = *(v2 + 40);
  sub_21B34BBC4();
  sub_21B34BBE4();
  if ((a2 & 1) == 0)
  {
    MEMORY[0x21CEEE3B0](a1);
  }

  v6 = sub_21B34BC24();

  return sub_21B251F98(a1, a2 & 1, v6);
}

uint64_t sub_21B24BE68(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0E8, &qword_21B351978);
  v38 = a2;
  result = sub_21B34B884();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_21B34BBC4();
      sub_21B34AD94();
      result = sub_21B34BC24();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_21B24C108(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E470, &qword_21B351D68);
  result = sub_21B34B884();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
      }

      else
      {
        sub_21B260E68(v24, &v38);
      }

      v27 = *(*(v5 + 56) + 8 * v23);
      v28 = *(v8 + 40);
      result = sub_21B34B594();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      *(*(v8 + 56) + 8 * v16) = v27;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v36 = 1 << *(v5 + 32);
      if (v36 >= 64)
      {
        bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v36;
      }

      *(v5 + 16) = 0;
    }

    v3 = v37;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_21B24C3A4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E450, &qword_21B351D50);
  result = sub_21B34B884();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 56) + 8 * v21);
      v33 = *(*(v5 + 48) + 16 * v21);
      if ((a2 & 1) == 0)
      {
        sub_21B260DC0(v33, *(*(v5 + 48) + 16 * v21 + 8));
      }

      v23 = *(v8 + 40);
      sub_21B34BBC4();
      sub_21B34A744();
      result = sub_21B34BC24();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        v17 = v33;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
      v17 = v33;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v17;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_21B24C644(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_21B34A834();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E440, &qword_21B351D40);
  v44 = a2;
  result = sub_21B34B884();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v21 = result + 64;
    v43 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_17:
      v27 = v23 | (v15 << 6);
      v46 = v24;
      v28 = *(v7 + 72);
      v29 = *(v11 + 48) + v28 * v27;
      if (v44)
      {
        (*v45)(v47, v29, v6);
      }

      else
      {
        (*v41)(v47, v29, v6);
      }

      v30 = *(*(v11 + 56) + 8 * v27);
      v31 = *(v14 + 40);
      sub_21B260D68(&qword_27CD7E1E0);
      result = sub_21B34AAA4();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v45)(*(v14 + 48) + v28 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v30;
      ++*(v14 + 16);
      v7 = v42;
      v11 = v43;
      v19 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_21B24C9F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E430, &qword_21B351D30);
  result = sub_21B34B884();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      sub_21B34BBC4();
      sub_21B34BBE4();
      result = sub_21B34BC24();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v33;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_21B24CC70(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E428, &qword_21B351D28);
  result = sub_21B34B884();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 48);
      v22 = *(v21 + 8 * v20);
      v23 = *(*(v5 + 56) + 8 * v20);
      v24 = *(v8 + 40);
      if (v22 != 0.0)
      {
        v25 = *(v21 + 8 * v20);
      }

      result = sub_21B34BBB4();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_21B24CEE0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E420, &qword_21B351D20);
  result = sub_21B34B884();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 48);
      v22 = *(v21 + 4 * v20);
      v23 = *(*(v5 + 56) + 8 * v20);
      if (v22 == 0.0)
      {
        v24 = 0.0;
      }

      else
      {
        v24 = *(v21 + 4 * v20);
      }

      result = MEMORY[0x21CEEE380](*(v8 + 40), LODWORD(v24), 4);
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_21B24D154(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E410, &qword_21B351D10);
  result = sub_21B34B884();
  v9 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v10 = 0;
    v11 = (v5 + 64);
    v12 = 1 << *(v5 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v5 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v5 + 48) + 2 * v21);
      v23 = *(*(v5 + 56) + 8 * v21);
      __asm { FCMP            H9, #0 }

      if (_ZF)
      {
        *&v8 = COERCE_SHORT_FLOAT(0);
      }

      else
      {
        *&v8 = _H9;
      }

      result = MEMORY[0x21CEEE380](*(v9 + 40), v8, 2);
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 2 * v17) = _H9;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v36 = 1 << *(v5 + 32);
      if (v36 >= 64)
      {
        bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v11 = -1 << v36;
      }

      *(v5 + 16) = 0;
    }

    v3 = v37;
  }

  else
  {
  }

  *v3 = v9;
  return result;
}

uint64_t sub_21B24D3C8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E408, &qword_21B351D08);
  result = sub_21B34B884();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      result = sub_21B34BBB4();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_21B24D62C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E348, &qword_21B351C60);
  result = sub_21B34B884();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v22 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v25 = v22 | (v9 << 6);
      v26 = *(v5 + 48) + 40 * v25;
      if (a2)
      {
        v27 = *v26;
        v28 = *(v26 + 16);
        v45 = *(v26 + 32);
        v43 = v27;
        v44 = v28;
        v29 = (*(v5 + 56) + 32 * v25);
        v30 = v29[1];
        v41 = *v29;
        v42 = v30;
      }

      else
      {
        sub_21B260E68(v26, &v43);
        sub_21B2615FC(*(v5 + 56) + 32 * v25, &v41, &qword_27CD7E0F8, &unk_21B3557C0);
      }

      v31 = *(v8 + 40);
      result = sub_21B34B594();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v43;
      v19 = v44;
      *(v17 + 32) = v45;
      *v17 = v18;
      *(v17 + 16) = v19;
      v20 = (*(v8 + 56) + 32 * v16);
      v21 = v42;
      *v20 = v41;
      v20[1] = v21;
      ++*(v8 + 16);
    }

    v23 = v9;
    while (1)
    {
      v9 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v24 = v10[v9];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v13 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v39 = 1 << *(v5 + 32);
      if (v39 >= 64)
      {
        bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v39;
      }

      *(v5 + 16) = 0;
    }

    v3 = v40;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_21B24D8F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E220, &qword_21B351B38);
  result = sub_21B34B884();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        v27 = *(*(v5 + 56) + 8 * v23);
      }

      else
      {
        sub_21B260E68(v24, &v38);
        v27 = *(*(v5 + 56) + 8 * v23);
      }

      v28 = *(v8 + 40);
      result = sub_21B34B594();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      *(*(v8 + 56) + 8 * v16) = v27;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_36;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_21B24DBA4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E368, &qword_21B351C78);
  v40 = a2;
  result = sub_21B34B884();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v41 = (v13 - 1) & v13;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v42 = *v23;
      v25 = (*(v5 + 56) + 24 * v22);
      v26 = *v25;
      v27 = v25[1];
      v28 = v25[2];
      if ((v40 & 1) == 0)
      {

        sub_21B260DC0(v26, v27);
      }

      v29 = *(v8 + 40);
      sub_21B34BBC4();
      sub_21B34AD94();
      result = sub_21B34BC24();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v42;
      v17[1] = v24;
      v18 = (*(v8 + 56) + 24 * v16);
      *v18 = v26;
      v18[1] = v27;
      v18[2] = v28;
      ++*(v8 + 16);
      v5 = v39;
      v13 = v41;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_21B24DE88(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E398, &qword_21B351CA8);
  v40 = a2;
  result = sub_21B34B884();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_21B34BBC4();
      sub_21B34AD94();
      result = sub_21B34BC24();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_21B24E148(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E2F8, &qword_21B351C10);
  v39 = a2;
  result = sub_21B34B884();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + 32 * v23);
      if (v39)
      {
        v28 = v27[1];
        v40 = *v27;
        v41 = v28;
      }

      else
      {
        sub_21B2615FC(v27, &v40, &qword_27CD7E0F8, &unk_21B3557C0);
      }

      v29 = *(v8 + 40);
      sub_21B34BBC4();
      sub_21B34AD94();
      result = sub_21B34BC24();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v25;
      v17[1] = v26;
      v18 = (*(v8 + 56) + 32 * v16);
      v19 = v41;
      *v18 = v40;
      v18[1] = v19;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_21B24E410(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E2F0, &qword_21B351C08);
  v36 = a2;
  result = sub_21B34B884();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v34 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    v35 = result;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v38 = (v13 - 1) & v13;
LABEL_18:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + 8 * v23);
      v37 = *(*(v5 + 56) + 8 * v23);
      if ((v36 & 1) == 0)
      {
      }

      v25 = *(v8 + 40);
      sub_21B34BBC4();
      MEMORY[0x21CEEE3B0](*(v24 + 16));
      v26 = *(v24 + 16);
      if (v26)
      {
        v27 = v24 + 32;
        do
        {
          sub_21B2615FC(v27, &v41, &qword_27CD7E200, &unk_21B352050);
          if (*(&v42 + 1))
          {
            v39[0] = v41;
            v39[1] = v42;
            v40 = v43;
            sub_21B34BBE4();
            sub_21B34B5C4();
            sub_21B260E14(v39);
          }

          else
          {
            sub_21B34BBE4();
          }

          v27 += 40;
          --v26;
        }

        while (v26);
      }

      result = sub_21B34BC24();
      v8 = v35;
      v16 = -1 << *(v35 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v16) >> 6;
        while (++v18 != v29 || (v28 & 1) == 0)
        {
          v30 = v18 == v29;
          if (v18 == v29)
          {
            v18 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v18);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v18 << 6);
            goto LABEL_10;
          }
        }

LABEL_43:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v35 + 48) + 8 * v19) = v24;
      v13 = v38;
      *(*(v35 + 56) + 8 * v19) = v37;
      ++*(v35 + 16);
      v5 = v34;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_43;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v38 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_41;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v10, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_41:
  *v3 = v8;
  return result;
}

uint64_t sub_21B24E748(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_21B34A834();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v52 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v56 = *(v10 - 8);
  v11 = *(v56 + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v55 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v48 - v14;
  v16 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v17 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E2C0, &qword_21B351BD8);
  v57 = a2;
  result = sub_21B34B884();
  v19 = result;
  v61 = v16;
  if (*(v16 + 16))
  {
    v54 = v6;
    v49 = v3;
    v20 = 0;
    v21 = (v61 + 64);
    v22 = 1 << *(v61 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(v61 + 64);
    v25 = (v22 + 63) >> 6;
    v53 = (v7 + 48);
    v50 = (v7 + 8);
    v51 = (v7 + 32);
    v26 = result + 64;
    while (v24)
    {
      v28 = __clz(__rbit64(v24));
      v29 = (v24 - 1) & v24;
LABEL_17:
      v32 = v28 | (v20 << 6);
      v33 = *(v61 + 48);
      v59 = *(v56 + 72);
      v60 = v29;
      v34 = v33 + v59 * v32;
      if (v57)
      {
        sub_21B260BE8(v34, v15);
      }

      else
      {
        sub_21B2615FC(v34, v15, &qword_27CD7E100, &unk_21B352A30);
      }

      v58 = *(*(v61 + 56) + 8 * v32);
      v35 = *(v19 + 40);
      sub_21B34BBC4();
      v36 = v15;
      v37 = v55;
      sub_21B2615FC(v15, v55, &qword_27CD7E100, &unk_21B352A30);
      v38 = v54;
      if ((*v53)(v37, 1, v54) == 1)
      {
        sub_21B34BBE4();
      }

      else
      {
        v39 = v52;
        (*v51)(v52, v37, v38);
        sub_21B34BBE4();
        sub_21B260D68(&qword_27CD7E1E0);
        sub_21B34AAB4();
        (*v50)(v39, v38);
      }

      result = sub_21B34BC24();
      v40 = -1 << *(v19 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      v15 = v36;
      if (((-1 << v41) & ~*(v26 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v26 + 8 * v42);
          if (v46 != -1)
          {
            v27 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_9;
          }
        }

LABEL_42:
        __break(1u);
        return result;
      }

      v27 = __clz(__rbit64((-1 << v41) & ~*(v26 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v26 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      result = sub_21B260BE8(v36, *(v19 + 48) + v59 * v27);
      *(*(v19 + 56) + 8 * v27) = v58;
      ++*(v19 + 16);
      v24 = v60;
    }

    v30 = v20;
    while (1)
    {
      v20 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v20 >= v25)
      {
        break;
      }

      v31 = v21[v20];
      ++v30;
      if (v31)
      {
        v28 = __clz(__rbit64(v31));
        v29 = (v31 - 1) & v31;
        goto LABEL_17;
      }
    }

    if ((v57 & 1) == 0)
    {

      v3 = v49;
      goto LABEL_40;
    }

    v47 = 1 << *(v61 + 32);
    v3 = v49;
    if (v47 >= 64)
    {
      bzero(v21, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v21 = -1 << v47;
    }

    *(v61 + 16) = 0;
  }

LABEL_40:
  *v3 = v19;
  return result;
}

uint64_t sub_21B24EC58(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E2A8, &qword_21B351BC0);
  v33 = a2;
  result = sub_21B34B884();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 56) + 8 * v20);
      v34 = *(*(v5 + 48) + 16 * v20);
      v22 = *(*(v5 + 48) + 16 * v20 + 8);
      if ((v33 & 1) == 0)
      {
        sub_21B260DAC(v34, v22);
      }

      v23 = *(v8 + 40);
      sub_21B34BBC4();
      sub_21B34BBE4();
      if (v22 >> 60 != 15)
      {
        sub_21B34A744();
      }

      result = sub_21B34BC24();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v34;
      *(*(v8 + 56) + 8 * v16) = v21;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_37;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_37:
  *v3 = v8;
  return result;
}

uint64_t sub_21B24EF28(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E290, &qword_21B351BA8);
  result = sub_21B34B884();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      sub_21B34BBC4();
      if (v21 != 2)
      {
        sub_21B34BBE4();
      }

      sub_21B34BBE4();
      result = sub_21B34BC24();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_21B24F1C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E278, &qword_21B351B90);
  result = sub_21B34B884();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = a2;
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 48) + 16 * v21;
      v23 = *(v22 + 8);
      v24 = *v22;
      v37 = *(*(v5 + 56) + 8 * v21);
      v25 = *(v8 + 40);
      sub_21B34BBC4();
      if (v23 == 1)
      {
        sub_21B34BBE4();
      }

      else
      {
        sub_21B34BBE4();
        if ((v24 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v26 = v24;
        }

        else
        {
          v26 = 0;
        }

        MEMORY[0x21CEEE3F0](v26);
      }

      result = sub_21B34BC24();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 16 * v16;
      *v17 = v24;
      *(v17 + 8) = v23;
      *(*(v8 + 56) + 8 * v16) = v37;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if (v35)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_21B24F478(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E260, &qword_21B351B78);
  result = sub_21B34B884();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = a2;
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 8 * (v19 | (v9 << 6));
      v23 = *(v5 + 48) + v22;
      v24 = *(v23 + 4);
      v25 = *v23;
      v37 = *(*(v5 + 56) + v22);
      v26 = *(v8 + 40);
      sub_21B34BBC4();
      sub_21B34BBE4();
      if (v24 != 1)
      {
        sub_21B34BC04();
      }

      result = sub_21B34BC24();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 8 * v16;
      v18 = *(v8 + 48) + v17;
      *v18 = v25;
      *(v18 + 4) = v24;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (v35)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_21B24F738(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E248, &qword_21B351B60);
  v33 = a2;
  result = sub_21B34B884();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 56) + 8 * v20);
      v34 = *(*(v5 + 48) + 16 * v20);
      v22 = *(*(v5 + 48) + 16 * v20 + 8);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_21B34BBC4();
      sub_21B34BBE4();
      if (v22)
      {
        sub_21B34AD94();
      }

      result = sub_21B34BC24();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v34;
      *(*(v8 + 56) + 8 * v16) = v21;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_37;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_37:
  *v3 = v8;
  return result;
}

uint64_t sub_21B24F9F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E230, &qword_21B351B48);
  result = sub_21B34B884();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = a2;
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 48) + 16 * v21;
      v23 = *(v22 + 8);
      v24 = *v22;
      v36 = *(*(v5 + 56) + 8 * v21);
      v25 = *(v8 + 40);
      sub_21B34BBC4();
      sub_21B34BBE4();
      if (v23 != 1)
      {
        MEMORY[0x21CEEE3B0](v24);
      }

      result = sub_21B34BC24();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 16 * v16;
      *v17 = v24;
      *(v17 + 8) = v23;
      *(*(v8 + 56) + 8 * v16) = v36;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_21B24FCB0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_21B24FCF8(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_21B24FD50(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_21B24FDA0(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
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

unint64_t sub_21B24FDE4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_21B34B9F4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_21B24FE9C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_21B260E68(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x21CEEDD80](v9, a1);
      sub_21B260E14(v9);
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

uint64_t sub_21B24FF64(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __s1[2] = *MEMORY[0x277D85DE8];
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if (((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
LABEL_139:
    v63 = *MEMORY[0x277D85DE8];
    return v6;
  }

  v7 = v3;
  v10 = ~v5;
  v11 = a2 >> 62;
  if (a1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 == 0xC000000000000000;
  }

  v13 = !v12;
  v75 = v13;
  v14 = __OFSUB__(HIDWORD(a1), a1);
  v72 = v14;
  __n = BYTE6(a2);
  v70 = a1;
  v71 = HIDWORD(a1) - a1;
  v66 = (a1 >> 32) - a1;
  v67 = a1 >> 32;
  v73 = v10;
  v74 = v3 + 64;
  while (1)
  {
    v15 = (*(v7 + 48) + 16 * v6);
    v17 = *v15;
    v16 = v15[1];
    v18 = v16 >> 62;
    if (v16 >> 62 == 3)
    {
      if (v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = v16 == 0xC000000000000000;
      }

      v21 = !v19 || v11 < 3;
      if (((v21 | v75) & 1) == 0)
      {
        goto LABEL_139;
      }

LABEL_36:
      v22 = 0;
      if (v11 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v18 > 1)
    {
      if (v18 != 2)
      {
        goto LABEL_36;
      }

      v24 = *(v17 + 16);
      v23 = *(v17 + 24);
      v25 = __OFSUB__(v23, v24);
      v22 = v23 - v24;
      if (v25)
      {
        goto LABEL_142;
      }

      if (v11 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v18)
    {
      LODWORD(v22) = HIDWORD(v17) - v17;
      if (__OFSUB__(HIDWORD(v17), v17))
      {
        goto LABEL_141;
      }

      v22 = v22;
      if (v11 <= 1)
      {
LABEL_33:
        v26 = __n;
        if (v11)
        {
          v26 = v71;
          if (v72)
          {
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v22 = BYTE6(v16);
      if (v11 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v11 != 2)
    {
      if (!v22)
      {
        goto LABEL_139;
      }

      goto LABEL_13;
    }

    v28 = *(a1 + 16);
    v27 = *(a1 + 24);
    v25 = __OFSUB__(v27, v28);
    v26 = v27 - v28;
    if (v25)
    {
      goto LABEL_140;
    }

LABEL_39:
    if (v22 != v26)
    {
      goto LABEL_13;
    }

    if (v22 < 1)
    {
      goto LABEL_139;
    }

    if (v18 > 1)
    {
      break;
    }

    if (v18)
    {
      if (v17 > v17 >> 32)
      {
        goto LABEL_143;
      }

      sub_21B260DC0(v17, v16);
      v35 = sub_21B34A574();
      if (v35)
      {
        v40 = sub_21B34A594();
        if (__OFSUB__(v17, v40))
        {
          goto LABEL_145;
        }

        v35 += v17 - v40;
      }

      sub_21B34A584();
      if (v11 == 2)
      {
        v59 = *(a1 + 16);
        v65 = *(a1 + 24);
        v37 = sub_21B34A574();
        if (v37)
        {
          v60 = sub_21B34A594();
          if (__OFSUB__(v59, v60))
          {
            goto LABEL_160;
          }

          v37 += v59 - v60;
        }

        v25 = __OFSUB__(v65, v59);
        v61 = v65 - v59;
        if (v25)
        {
          goto LABEL_155;
        }

        result = sub_21B34A584();
        if (result >= v61)
        {
          v39 = v61;
        }

        else
        {
          v39 = result;
        }

        if (!v35)
        {
          goto LABEL_175;
        }

        if (!v37)
        {
          goto LABEL_174;
        }

        goto LABEL_130;
      }

      if (v11 == 1)
      {
        if (v67 < v70)
        {
          goto LABEL_154;
        }

        v37 = sub_21B34A574();
        if (v37)
        {
          v41 = sub_21B34A594();
          if (__OFSUB__(v70, v41))
          {
            goto LABEL_161;
          }

          v37 += v70 - v41;
        }

        result = sub_21B34A584();
        v39 = v66;
        if (result < v66)
        {
          v39 = result;
        }

        if (!v35)
        {
          goto LABEL_177;
        }

        if (!v37)
        {
          goto LABEL_176;
        }

        goto LABEL_130;
      }

      LOWORD(__s1[0]) = a1;
      BYTE2(__s1[0]) = BYTE2(a1);
      BYTE3(__s1[0]) = BYTE3(a1);
      BYTE4(__s1[0]) = v68;
      BYTE5(__s1[0]) = BYTE5(a1);
      BYTE6(__s1[0]) = BYTE6(a1);
      HIBYTE(__s1[0]) = HIBYTE(a1);
      LOWORD(__s1[1]) = a2;
      BYTE2(__s1[1]) = BYTE2(a2);
      BYTE3(__s1[1]) = BYTE3(a2);
      BYTE4(__s1[1]) = BYTE4(a2);
      BYTE5(__s1[1]) = BYTE5(a2);
      if (!v35)
      {
        goto LABEL_166;
      }

      goto LABEL_133;
    }

    __s1[0] = v17;
    LOWORD(__s1[1]) = v16;
    BYTE2(__s1[1]) = BYTE2(v16);
    BYTE3(__s1[1]) = BYTE3(v16);
    BYTE4(__s1[1]) = BYTE4(v16);
    BYTE5(__s1[1]) = BYTE5(v16);
    if (!v11)
    {
      goto LABEL_91;
    }

    if (v11 != 1)
    {
      v48 = *(a1 + 16);
      v47 = *(a1 + 24);
      sub_21B260DC0(v17, v16);
      v32 = sub_21B34A574();
      if (v32)
      {
        v49 = sub_21B34A594();
        if (__OFSUB__(v48, v49))
        {
          goto LABEL_157;
        }

        v32 += v48 - v49;
      }

      v25 = __OFSUB__(v47, v48);
      v45 = v47 - v48;
      if (v25)
      {
        goto LABEL_149;
      }

      v46 = sub_21B34A584();
      v7 = v69;
      if (!v32)
      {
        goto LABEL_164;
      }

      goto LABEL_98;
    }

    if (v67 < v70)
    {
      goto LABEL_146;
    }

    sub_21B260DC0(v17, v16);
    v29 = sub_21B34A574();
    if (!v29)
    {
      goto LABEL_167;
    }

    v30 = v29;
    v31 = sub_21B34A594();
    if (__OFSUB__(v70, v31))
    {
      goto LABEL_152;
    }

    v32 = v70 - v31 + v30;
    result = sub_21B34A584();
    if (!v32)
    {
      goto LABEL_168;
    }

LABEL_105:
    if (result >= v66)
    {
      v50 = v66;
    }

    else
    {
      v50 = result;
    }

LABEL_108:
    v54 = __s1;
    v55 = v32;
LABEL_134:
    v62 = memcmp(v54, v55, v50);
    sub_21B234324(v17, v16);
LABEL_135:
    v10 = v73;
    v4 = v74;
    if (!v62)
    {
      goto LABEL_139;
    }

LABEL_13:
    v6 = (v6 + 1) & v10;
    if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      goto LABEL_139;
    }
  }

  if (v18 == 2)
  {
    v34 = *(v17 + 16);
    sub_21B260DC0(v17, v16);
    v35 = sub_21B34A574();
    if (v35)
    {
      v36 = sub_21B34A594();
      if (__OFSUB__(v34, v36))
      {
        goto LABEL_144;
      }

      v35 += v34 - v36;
    }

    result = sub_21B34A584();
    if (v11 == 2)
    {
      v56 = *(a1 + 16);
      v64 = *(a1 + 24);
      v37 = sub_21B34A574();
      if (v37)
      {
        v57 = sub_21B34A594();
        if (__OFSUB__(v56, v57))
        {
          goto LABEL_158;
        }

        v37 += v56 - v57;
      }

      v25 = __OFSUB__(v64, v56);
      v58 = v64 - v56;
      if (v25)
      {
        goto LABEL_153;
      }

      result = sub_21B34A584();
      if (result >= v58)
      {
        v39 = v58;
      }

      else
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_173;
      }

      if (!v37)
      {
        goto LABEL_172;
      }

      goto LABEL_130;
    }

    if (v11 == 1)
    {
      if (v67 < v70)
      {
        goto LABEL_148;
      }

      v37 = sub_21B34A574();
      if (v37)
      {
        v38 = sub_21B34A594();
        if (__OFSUB__(v70, v38))
        {
          goto LABEL_159;
        }

        v37 += v70 - v38;
      }

      result = sub_21B34A584();
      v39 = v66;
      if (result < v66)
      {
        v39 = result;
      }

      if (!v35)
      {
        goto LABEL_171;
      }

      if (!v37)
      {
        goto LABEL_170;
      }

LABEL_130:
      if (v35 == v37)
      {
        sub_21B234324(v17, v16);
        goto LABEL_139;
      }

      v62 = memcmp(v35, v37, v39);
      sub_21B234324(v17, v16);
      v7 = v69;
      goto LABEL_135;
    }

    LOWORD(__s1[0]) = a1;
    BYTE2(__s1[0]) = BYTE2(a1);
    BYTE3(__s1[0]) = BYTE3(a1);
    BYTE4(__s1[0]) = v68;
    BYTE5(__s1[0]) = BYTE5(a1);
    BYTE6(__s1[0]) = BYTE6(a1);
    HIBYTE(__s1[0]) = HIBYTE(a1);
    LOWORD(__s1[1]) = a2;
    BYTE2(__s1[1]) = BYTE2(a2);
    BYTE3(__s1[1]) = BYTE3(a2);
    BYTE4(__s1[1]) = BYTE4(a2);
    BYTE5(__s1[1]) = BYTE5(a2);
    if (!v35)
    {
      goto LABEL_169;
    }

LABEL_133:
    v55 = __s1;
    v54 = v35;
    v50 = __n;
    goto LABEL_134;
  }

  memset(__s1, 0, 14);
  if (!v11)
  {
LABEL_91:
    __s2 = a1;
    v78 = BYTE2(a1);
    v79 = BYTE3(a1);
    v80 = v68;
    v81 = BYTE5(a1);
    v82 = BYTE6(a1);
    v83 = HIBYTE(a1);
    v84 = a2;
    v85 = BYTE2(a2);
    v86 = BYTE3(a2);
    v87 = BYTE4(a2);
    v88 = BYTE5(a2);
    if (!memcmp(__s1, &__s2, __n))
    {
      goto LABEL_139;
    }

    goto LABEL_13;
  }

  if (v11 == 2)
  {
    v43 = *(a1 + 16);
    v42 = *(a1 + 24);
    sub_21B260DC0(v17, v16);
    v32 = sub_21B34A574();
    if (v32)
    {
      v44 = sub_21B34A594();
      if (__OFSUB__(v43, v44))
      {
        goto LABEL_156;
      }

      v32 += v43 - v44;
    }

    v25 = __OFSUB__(v42, v43);
    v45 = v42 - v43;
    if (v25)
    {
      goto LABEL_150;
    }

    v46 = sub_21B34A584();
    v7 = v69;
    if (!v32)
    {
      goto LABEL_165;
    }

LABEL_98:
    if (v46 >= v45)
    {
      v50 = v45;
    }

    else
    {
      v50 = v46;
    }

    goto LABEL_108;
  }

  if (v67 < v70)
  {
    goto LABEL_147;
  }

  sub_21B260DC0(v17, v16);
  v51 = sub_21B34A574();
  if (v51)
  {
    v52 = v51;
    v53 = sub_21B34A594();
    if (__OFSUB__(v70, v53))
    {
      goto LABEL_151;
    }

    v32 = v70 - v53 + v52;
    result = sub_21B34A584();
    if (!v32)
    {
      goto LABEL_163;
    }

    goto LABEL_105;
  }

  sub_21B34A584();
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  result = sub_21B34A584();
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
  return result;
}

unint64_t sub_21B2507C8(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_21B34A834();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_21B260D68(&qword_27CD7E1E8);
      v16 = sub_21B34AC54();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_21B250974(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_21B2509E4(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_21B250A4C(uint64_t a1, float a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_21B250AB4(uint64_t a1, __n128 a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 2 * result) == *a2.n128_u16)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_21B250B1C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_21B250B88(uint64_t a1, uint64_t a2)
{
  v4 = v2 + 64;
  v5 = -1 << *(v2 + 32);
  result = a2 & ~v5;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    v15 = a1;
    v16 = a1 + 32;
    v8 = *(a1 + 16);
    v14 = ~v5;
    while (1)
    {
      v9 = *(*(v2 + 48) + 8 * result);
      if (*(v9 + 16) == v8)
      {
        break;
      }

LABEL_6:
      result = (result + 1) & v7;
      if (((*(v4 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        return result;
      }
    }

    if (v8 && v9 != a1)
    {
      v17 = result;
      v10 = v9 + 32;

      v11 = 0;
      v12 = v16;
      while (v11 < v8 && v11 < *(v9 + 16))
      {
        sub_21B2615FC(v10, v21, &qword_27CD7E200, &unk_21B352050);
        sub_21B2615FC(v12, &v23, &qword_27CD7E200, &unk_21B352050);
        if (v22)
        {
          sub_21B2615FC(v21, v20, &qword_27CD7E200, &unk_21B352050);
          if (!*(&v24 + 1))
          {
            sub_21B260E14(v20);
LABEL_4:
            sub_21B261664(v21, &qword_27CD7E208, &qword_21B351B20);
LABEL_5:

            result = v17;
            v4 = v2 + 64;
            a1 = v15;
            v7 = v14;
            goto LABEL_6;
          }

          v18[0] = v23;
          v18[1] = v24;
          v19 = v25;
          v13 = MEMORY[0x21CEEDD80](v20, v18);
          sub_21B260E14(v18);
          sub_21B260E14(v20);
          result = sub_21B261664(v21, &qword_27CD7E200, &unk_21B352050);
          if ((v13 & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        else
        {
          if (*(&v24 + 1))
          {
            goto LABEL_4;
          }

          result = sub_21B261664(v21, &qword_27CD7E200, &unk_21B352050);
        }

        ++v11;
        v10 += 40;
        v12 += 40;
        if (v8 == v11)
        {

          return v17;
        }
      }

      __break(1u);
    }
  }

  return result;
}

unint64_t sub_21B250DB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v41 = a1;
  v5 = sub_21B34A834();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v33 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E1D8, &qword_21B351B08);
  v9 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v42 = v3;
  v19 = -1 << *(v3 + 32);
  v20 = a2 & ~v19;
  v39 = v3 + 64;
  if ((*(v3 + 64 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
  {
    v21 = ~v19;
    v22 = (v6 + 48);
    v23 = *(v15 + 72);
    v37 = v16;
    v38 = v23;
    v31 = (v6 + 48);
    v32 = (v6 + 32);
    v35 = (v6 + 8);
    v36 = ~v19;
    while (1)
    {
      sub_21B2615FC(*(v42 + 48) + v38 * v20, v18, &qword_27CD7E100, &unk_21B352A30);
      v24 = *(v40 + 48);
      sub_21B2615FC(v18, v11, &qword_27CD7E100, &unk_21B352A30);
      sub_21B2615FC(v41, &v11[v24], &qword_27CD7E100, &unk_21B352A30);
      v25 = *v22;
      if ((*v22)(v11, 1, v5) == 1)
      {
        break;
      }

      v26 = v37;
      sub_21B2615FC(v11, v37, &qword_27CD7E100, &unk_21B352A30);
      if (v25(&v11[v24], 1, v5) == 1)
      {
        sub_21B261664(v18, &qword_27CD7E100, &unk_21B352A30);
        (*v35)(v26, v5);
        v21 = v36;
LABEL_4:
        sub_21B261664(v11, &qword_27CD7E1D8, &qword_21B351B08);
        goto LABEL_5;
      }

      v27 = &v11[v24];
      v28 = v33;
      (*v32)(v33, v27, v5);
      sub_21B260D68(&qword_27CD7E1E8);
      v34 = sub_21B34AC54();
      v29 = *v35;
      (*v35)(v28, v5);
      sub_21B261664(v18, &qword_27CD7E100, &unk_21B352A30);
      v29(v26, v5);
      v22 = v31;
      sub_21B261664(v11, &qword_27CD7E100, &unk_21B352A30);
      v21 = v36;
      if (v34)
      {
        return v20;
      }

LABEL_5:
      v20 = (v20 + 1) & v21;
      if (((*(v39 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        return v20;
      }
    }

    sub_21B261664(v18, &qword_27CD7E100, &unk_21B352A30);
    if (v25(&v11[v24], 1, v5) == 1)
    {
      sub_21B261664(v11, &qword_27CD7E100, &unk_21B352A30);
      return v20;
    }

    goto LABEL_4;
  }

  return v20;
}

uint64_t sub_21B251218(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __s1[2] = *MEMORY[0x277D85DE8];
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if (((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
LABEL_150:
    v73 = *MEMORY[0x277D85DE8];
    return v6;
  }

  v7 = v3;
  v10 = a2 >> 62;
  if (a1)
  {
    v11 = 0;
  }

  else
  {
    v11 = a2 == 0xC000000000000000;
  }

  v12 = !v11;
  v87 = v12;
  v82 = HIDWORD(a1);
  v85 = HIDWORD(a1) - a1;
  v86 = a2 >> 62;
  v89 = ~v5;
  v13 = __OFSUB__(HIDWORD(a1), a1);
  v84 = v13;
  __n = BYTE6(a2);
  v83 = a1;
  v80 = (a1 >> 32) - a1;
  v81 = a1 >> 32;
  v90 = a2 >> 60;
  while (1)
  {
    v14 = (*(v7 + 48) + 16 * v6);
    v16 = *v14;
    v15 = v14[1];
    if (v15 >> 60 == 15)
    {
      if (v90 > 0xE)
      {
        sub_21B260DAC(v16, v15);
        sub_21B260DAC(a1, a2);
LABEL_149:
        sub_21B260C58(v16, v15);
        goto LABEL_150;
      }

LABEL_16:
      sub_21B260DAC(v16, v15);
      sub_21B260DAC(a1, a2);
      sub_21B260C58(v16, v15);
      v17 = a1;
      v18 = a2;
      goto LABEL_17;
    }

    if (v90 > 0xE)
    {
      goto LABEL_16;
    }

    v19 = v15 >> 62;
    if (v15 >> 62 == 3)
    {
      if (v16)
      {
        v20 = 0;
      }

      else
      {
        v20 = v15 == 0xC000000000000000;
      }

      v22 = !v20 || v10 < 3;
      if (((v22 | v87) & 1) == 0)
      {
        sub_21B260DAC(0, 0xC000000000000000);
        sub_21B260DAC(0, 0xC000000000000000);
        sub_21B260C58(0, 0xC000000000000000);
        v16 = 0;
        goto LABEL_149;
      }

LABEL_42:
      v23 = 0;
      if (v10 <= 1)
      {
        goto LABEL_39;
      }

      goto LABEL_43;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_42;
      }

      v25 = *(v16 + 16);
      v24 = *(v16 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v26)
      {
        goto LABEL_153;
      }

      if (v10 <= 1)
      {
        goto LABEL_39;
      }
    }

    else if (v19)
    {
      LODWORD(v23) = HIDWORD(v16) - v16;
      if (__OFSUB__(HIDWORD(v16), v16))
      {
        goto LABEL_154;
      }

      v23 = v23;
      if (v10 <= 1)
      {
LABEL_39:
        v27 = __n;
        if (v10)
        {
          v27 = v85;
          if (v84)
          {
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
          }
        }

        goto LABEL_45;
      }
    }

    else
    {
      v23 = BYTE6(v15);
      if (v10 <= 1)
      {
        goto LABEL_39;
      }
    }

LABEL_43:
    if (v10 != 2)
    {
      if (!v23)
      {
LABEL_148:
        sub_21B260DAC(v16, v15);
        sub_21B260DAC(a1, a2);
        sub_21B260C58(a1, a2);
        goto LABEL_149;
      }

LABEL_57:
      sub_21B260DAC(v16, v15);
      sub_21B260DAC(a1, a2);
      sub_21B260C58(a1, a2);
      v17 = v16;
      v18 = v15;
LABEL_17:
      sub_21B260C58(v17, v18);
      goto LABEL_18;
    }

    v29 = *(a1 + 16);
    v28 = *(a1 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
    {
      goto LABEL_152;
    }

LABEL_45:
    if (v23 != v27)
    {
      goto LABEL_57;
    }

    if (v23 < 1)
    {
      goto LABEL_148;
    }

    if (v19 > 1)
    {
      break;
    }

    if (!v19)
    {
      __s1[0] = v16;
      LOWORD(__s1[1]) = v15;
      BYTE2(__s1[1]) = BYTE2(v15);
      BYTE3(__s1[1]) = BYTE3(v15);
      BYTE4(__s1[1]) = BYTE4(v15);
      BYTE5(__s1[1]) = BYTE5(v15);
      if (v10)
      {
        if (v10 == 1)
        {
          if (v81 < v83)
          {
            goto LABEL_159;
          }

          sub_21B260DAC(v16, v15);
          sub_21B260DAC(v16, v15);
          sub_21B260DAC(a1, a2);
          v30 = sub_21B34A574();
          if (!v30)
          {
            goto LABEL_185;
          }

          v31 = v30;
          v32 = sub_21B34A594();
          if (__OFSUB__(v83, v32))
          {
            goto LABEL_163;
          }

          v33 = (v83 - v32 + v31);
          result = sub_21B34A584();
          if (!v33)
          {
            goto LABEL_186;
          }

LABEL_114:
          if (result >= v80)
          {
            v58 = v80;
          }

          else
          {
            v58 = result;
          }

          goto LABEL_117;
        }

        v56 = *(a1 + 16);
        v79 = *(a1 + 24);
        sub_21B260DAC(v16, v15);
        sub_21B260DAC(v16, v15);
        sub_21B260DAC(a1, a2);
        v33 = sub_21B34A574();
        if (v33)
        {
          v57 = sub_21B34A594();
          if (__OFSUB__(v56, v57))
          {
            goto LABEL_169;
          }

          v33 += v56 - v57;
        }

        v26 = __OFSUB__(v79, v56);
        v44 = &v79[-v56];
        if (v26)
        {
          goto LABEL_162;
        }

        v45 = sub_21B34A584();
        if (!v33)
        {
          goto LABEL_182;
        }

        goto LABEL_107;
      }

      goto LABEL_77;
    }

    if (v16 > v16 >> 32)
    {
      goto LABEL_155;
    }

    sub_21B260DAC(v16, v15);
    sub_21B260DAC(v16, v15);
    sub_21B260DAC(a1, a2);
    v39 = sub_21B34A574();
    if (v39)
    {
      v40 = v39;
      v41 = sub_21B34A594();
      if (__OFSUB__(v16, v41))
      {
        goto LABEL_157;
      }

      v77 = (v16 - v41 + v40);
    }

    else
    {
      v77 = 0;
    }

    sub_21B34A584();
    v10 = v86;
    if (v86 == 2)
    {
      v68 = *(a1 + 16);
      v75 = *(a1 + 24);
      v49 = sub_21B34A574();
      if (v49)
      {
        v69 = sub_21B34A594();
        if (__OFSUB__(v68, v69))
        {
          goto LABEL_171;
        }

        v49 += v68 - v69;
      }

      v26 = __OFSUB__(v75, v68);
      v70 = v75 - v68;
      if (v26)
      {
        goto LABEL_167;
      }

      v71 = sub_21B34A584();
      if (v71 >= v70)
      {
        v52 = v70;
      }

      else
      {
        v52 = v71;
      }

      v53 = v77;
      if (!v77)
      {
        goto LABEL_178;
      }

      v10 = v86;
      if (!v49)
      {
        goto LABEL_177;
      }
    }

    else
    {
      if (v86 != 1)
      {
        v67 = v77;
        LOWORD(__s1[0]) = a1;
        BYTE2(__s1[0]) = BYTE2(a1);
        BYTE3(__s1[0]) = BYTE3(a1);
        BYTE4(__s1[0]) = v82;
        BYTE5(__s1[0]) = BYTE5(a1);
        BYTE6(__s1[0]) = BYTE6(a1);
        HIBYTE(__s1[0]) = HIBYTE(a1);
        LOWORD(__s1[1]) = a2;
        BYTE2(__s1[1]) = BYTE2(a2);
        BYTE3(__s1[1]) = BYTE3(a2);
        BYTE4(__s1[1]) = BYTE4(a2);
        BYTE5(__s1[1]) = BYTE5(a2);
        if (!v77)
        {
          goto LABEL_181;
        }

LABEL_144:
        v46 = memcmp(v67, __s1, __n);
        sub_21B260C58(a1, a2);
        v47 = v16;
        v48 = v15;
LABEL_145:
        sub_21B260C58(v47, v48);
        sub_21B260C58(v16, v15);
        if (!v46)
        {
          goto LABEL_150;
        }

        goto LABEL_18;
      }

      if (v81 < v83)
      {
        goto LABEL_166;
      }

      v49 = sub_21B34A574();
      if (v49)
      {
        v54 = sub_21B34A594();
        if (__OFSUB__(v83, v54))
        {
          goto LABEL_173;
        }

        v49 += v83 - v54;
      }

      v55 = sub_21B34A584();
      v52 = v80;
      if (v55 < v80)
      {
        v52 = v55;
      }

      v53 = v77;
      if (!v77)
      {
        goto LABEL_184;
      }

      if (!v49)
      {
        goto LABEL_183;
      }
    }

LABEL_140:
    if (v53 == v49)
    {
      sub_21B260C58(a1, a2);
      sub_21B260C58(v16, v15);
      goto LABEL_149;
    }

    v72 = memcmp(v53, v49, v52);
    sub_21B260C58(a1, a2);
    sub_21B260C58(v16, v15);
    sub_21B260C58(v16, v15);
    if (!v72)
    {
      goto LABEL_150;
    }

LABEL_18:
    v6 = (v6 + 1) & v89;
    if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      goto LABEL_150;
    }
  }

  if (v19 == 2)
  {
    v35 = *(v16 + 16);
    sub_21B260DAC(v16, v15);
    sub_21B260DAC(v16, v15);
    sub_21B260DAC(a1, a2);
    v36 = sub_21B34A574();
    if (v36)
    {
      v37 = v36;
      v38 = sub_21B34A594();
      if (__OFSUB__(v35, v38))
      {
        goto LABEL_156;
      }

      v76 = (v35 - v38 + v37);
    }

    else
    {
      v76 = 0;
    }

    sub_21B34A584();
    v10 = v86;
    if (v86 == 2)
    {
      v63 = *(a1 + 16);
      v74 = *(a1 + 24);
      v49 = sub_21B34A574();
      if (v49)
      {
        v64 = sub_21B34A594();
        if (__OFSUB__(v63, v64))
        {
          goto LABEL_170;
        }

        v49 += v63 - v64;
      }

      v26 = __OFSUB__(v74, v63);
      v65 = v74 - v63;
      if (v26)
      {
        goto LABEL_165;
      }

      v66 = sub_21B34A584();
      if (v66 >= v65)
      {
        v52 = v65;
      }

      else
      {
        v52 = v66;
      }

      v53 = v76;
      if (!v76)
      {
        goto LABEL_180;
      }

      v10 = v86;
      if (!v49)
      {
        goto LABEL_179;
      }
    }

    else
    {
      if (v86 != 1)
      {
        v67 = v76;
        LOWORD(__s1[0]) = a1;
        BYTE2(__s1[0]) = BYTE2(a1);
        BYTE3(__s1[0]) = BYTE3(a1);
        BYTE4(__s1[0]) = v82;
        BYTE5(__s1[0]) = BYTE5(a1);
        BYTE6(__s1[0]) = BYTE6(a1);
        HIBYTE(__s1[0]) = HIBYTE(a1);
        LOWORD(__s1[1]) = a2;
        BYTE2(__s1[1]) = BYTE2(a2);
        BYTE3(__s1[1]) = BYTE3(a2);
        BYTE4(__s1[1]) = BYTE4(a2);
        BYTE5(__s1[1]) = BYTE5(a2);
        if (!v76)
        {
          goto LABEL_174;
        }

        goto LABEL_144;
      }

      if (v81 < v83)
      {
        goto LABEL_161;
      }

      v49 = sub_21B34A574();
      if (v49)
      {
        v50 = sub_21B34A594();
        if (__OFSUB__(v83, v50))
        {
          goto LABEL_172;
        }

        v49 += v83 - v50;
      }

      v51 = sub_21B34A584();
      v52 = v80;
      if (v51 < v80)
      {
        v52 = v51;
      }

      v53 = v76;
      if (!v76)
      {
        goto LABEL_176;
      }

      if (!v49)
      {
        goto LABEL_175;
      }
    }

    goto LABEL_140;
  }

  memset(__s1, 0, 14);
  if (!v10)
  {
LABEL_77:
    __s2 = a1;
    v92 = BYTE2(a1);
    v93 = BYTE3(a1);
    v94 = v82;
    v95 = BYTE5(a1);
    v96 = BYTE6(a1);
    v97 = HIBYTE(a1);
    v98 = a2;
    v99 = BYTE2(a2);
    v100 = BYTE3(a2);
    v101 = BYTE4(a2);
    v102 = BYTE5(a2);
    sub_21B260DAC(v16, v15);
    sub_21B260DAC(a1, a2);
    v46 = memcmp(__s1, &__s2, __n);
    v47 = a1;
    v48 = a2;
    goto LABEL_145;
  }

  if (v10 != 2)
  {
    if (v81 < v83)
    {
      goto LABEL_158;
    }

    sub_21B260DAC(v16, v15);
    sub_21B260DAC(v16, v15);
    sub_21B260DAC(a1, a2);
    v59 = sub_21B34A574();
    if (!v59)
    {
      goto LABEL_187;
    }

    v60 = v59;
    v61 = sub_21B34A594();
    if (__OFSUB__(v83, v61))
    {
      goto LABEL_164;
    }

    v33 = (v83 - v61 + v60);
    result = sub_21B34A584();
    if (!v33)
    {
      goto LABEL_188;
    }

    goto LABEL_114;
  }

  v42 = *(a1 + 16);
  v78 = *(a1 + 24);
  sub_21B260DAC(v16, v15);
  sub_21B260DAC(v16, v15);
  sub_21B260DAC(a1, a2);
  v33 = sub_21B34A574();
  if (v33)
  {
    v43 = sub_21B34A594();
    if (__OFSUB__(v42, v43))
    {
      goto LABEL_168;
    }

    v33 += v42 - v43;
  }

  v26 = __OFSUB__(v78, v42);
  v44 = &v78[-v42];
  if (v26)
  {
    goto LABEL_160;
  }

  v45 = sub_21B34A584();
  if (v33)
  {
LABEL_107:
    if (v45 >= v44)
    {
      v58 = v44;
    }

    else
    {
      v58 = v45;
    }

LABEL_117:
    v62 = memcmp(__s1, v33, v58);
    sub_21B260C58(v16, v15);
    sub_21B260C58(a1, a2);
    sub_21B260C58(v16, v15);
    v10 = v86;
    if (!v62)
    {
      goto LABEL_150;
    }

    goto LABEL_18;
  }

  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  sub_21B34A584();
LABEL_186:
  __break(1u);
LABEL_187:
  result = sub_21B34A584();
LABEL_188:
  __break(1u);
  return result;
}

unint64_t sub_21B251D2C(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(*(v2 + 48) + result);
      if (v7 == 2)
      {
        if (a1 == 2)
        {
          return result;
        }
      }

      else if (a1 != 2 && ((v7 ^ a1) & 1) == 0)
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_21B251DBC(uint64_t a1, char a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    v8 = *&a1;
    do
    {
      v9 = *(v3 + 48) + 16 * result;
      if (*(v9 + 8))
      {
        if (a2)
        {
          return result;
        }
      }

      else if ((a2 & 1) == 0 && *v9 == v8)
      {
        return result;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_21B251E44(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(v2 + 48) + 8 * result;
      if (*(v7 + 4))
      {
        if ((a1 & 0x100000000) != 0)
        {
          return result;
        }
      }

      else if ((a1 & 0x100000000) == 0 && *v7 == *&a1)
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_21B251ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_21B34B9F4() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_21B251F98(uint64_t a1, char a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      if (*(v8 + 8))
      {
        if (a2)
        {
          return result;
        }
      }

      else if ((a2 & 1) == 0 && *v8 == a1)
      {
        return result;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_21B25201C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0E8, &qword_21B351978);
  v2 = *v0;
  v3 = sub_21B34B874();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_21B252184()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E470, &qword_21B351D68);
  v2 = *v0;
  v3 = sub_21B34B874();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        result = sub_21B260E68(*(v2 + 48) + 40 * v17, v22);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(v4 + 48) + 40 * v17;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_21B252314()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E450, &qword_21B351D50);
  v2 = *v0;
  v3 = sub_21B34B874();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + 8 * v17) = v18;
        result = sub_21B260DC0(v19, *(&v19 + 1));
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

      v16 = *(v2 + 64 + 8 * v8);
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

char *sub_21B25247C()
{
  v1 = v0;
  v32 = sub_21B34A834();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E440, &qword_21B351D40);
  v4 = *v0;
  v5 = sub_21B34B874();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        v14 = v35;
      }

      while (v35);
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

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
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

void *sub_21B2526EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E430, &qword_21B351D30);
  v2 = *v0;
  v3 = sub_21B34B874();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_21B252838()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E428, &qword_21B351D28);
  v2 = *v0;
  v3 = sub_21B34B874();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_21B252984()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E420, &qword_21B351D20);
  v2 = *v0;
  v3 = sub_21B34B874();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_21B252AD0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E410, &qword_21B351D10);
  v2 = *v0;
  v3 = sub_21B34B874();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 2 * v14) = *(*(v2 + 48) + 2 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_21B252C1C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E408, &qword_21B351D08);
  v2 = *v0;
  v3 = sub_21B34B874();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_21B252D68()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E348, &qword_21B351C60);
  v2 = *v0;
  v3 = sub_21B34B874();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_21B260E68(*(v2 + 48) + 40 * v17, v25);
        v17 *= 32;
        result = sub_21B2615FC(*(v2 + 56) + v17, v24, &qword_27CD7E0F8, &unk_21B3557C0);
        v19 = *(v4 + 48) + v18;
        v20 = v25[0];
        v21 = v25[1];
        *(v19 + 32) = v26;
        *v19 = v20;
        *(v19 + 16) = v21;
        v22 = (*(v4 + 56) + v17);
        v23 = v24[1];
        *v22 = v24[0];
        v22[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_21B252F24()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E220, &qword_21B351B38);
  v2 = *v0;
  v3 = sub_21B34B874();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        sub_21B260E68(*(v2 + 48) + 40 * v17, v22);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(v4 + 48) + 40 * v17;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_21B2530B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E368, &qword_21B351C78);
  v2 = *v0;
  v3 = sub_21B34B874();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v21 = v20[1];
        v17 *= 24;
        v22 = *(v19 + v17);
        v23 = *(v19 + v17 + 8);
        v24 = *(v19 + v17 + 16);
        v25 = (*(v4 + 48) + v18);
        *v25 = *v20;
        v25[1] = v21;
        v26 = (*(v4 + 56) + v17);
        *v26 = v22;
        v26[1] = v23;
        v26[2] = v24;

        sub_21B260DC0(v22, v23);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_21B253254()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E398, &qword_21B351CA8);
  v2 = *v0;
  v3 = sub_21B34B874();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_21B2533CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E2F8, &qword_21B351C10);
  v2 = *v0;
  v3 = sub_21B34B874();
  v4 = v3;
  if (*(v2 + 16))
  {
    v26 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = 32 * v17;
        sub_21B2615FC(*(v2 + 56) + 32 * v17, v27, &qword_27CD7E0F8, &unk_21B3557C0);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        v24 = (*(v4 + 56) + v22);
        v25 = v27[1];
        *v24 = v27[0];
        v24[1] = v25;
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

        v1 = v26;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_21B253580()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E2F0, &qword_21B351C08);
  v2 = *v0;
  v3 = sub_21B34B874();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_21B2536DC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E2C0, &qword_21B351BD8);
  v6 = *v0;
  v7 = sub_21B34B874();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    v15 = *(v6 + 64);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v16 = v14 & v15;
    v17 = (v13 + 63) >> 6;
    if ((v14 & v15) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v25 + 72) * v21;
        sub_21B2615FC(*(v6 + 48) + v22, v5, &qword_27CD7E100, &unk_21B352A30);
        v23 = *(*(v6 + 56) + 8 * v21);
        result = sub_21B260BE8(v5, *(v8 + 48) + v22);
        *(*(v8 + 56) + 8 * v21) = v23;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }

  return result;
}

void *sub_21B253904()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E2A8, &qword_21B351BC0);
  v2 = *v0;
  v3 = sub_21B34B874();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + 8 * v17) = v18;
        result = sub_21B260DAC(v19, *(&v19 + 1));
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_21B253A6C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E290, &qword_21B351BA8);
  v2 = *v0;
  v3 = sub_21B34B874();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_21B253BCC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E260, &qword_21B351B78);
  v2 = *v0;
  v3 = sub_21B34B874();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v17) = v20)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 8 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *v18;
      LOBYTE(v18) = *(v18 + 4);
      v20 = *(*(v2 + 56) + v17);
      v21 = *(v4 + 48) + v17;
      *v21 = v19;
      *(v21 + 4) = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_21B253D2C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E248, &qword_21B351B60);
  v2 = *v0;
  v3 = sub_21B34B874();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_21B253EA4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_21B34B874();
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
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 56) + 8 * v16) = v21)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      v19 = *(v4 + 48) + 16 * v16;
      v20 = *v19;
      LOBYTE(v19) = *(v19 + 8);
      v21 = *(*(v4 + 56) + 8 * v16);
      v22 = *(v6 + 48) + 16 * v16;
      *v22 = v20;
      *(v22 + 8) = v19;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
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

void *sub_21B253FF4(void *a1, int64_t a2, char a3)
{
  result = sub_21B33B7E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21B254014(char *a1, int64_t a2, char a3)
{
  result = sub_21B33B928(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21B254034(char *a1, int64_t a2, char a3)
{
  result = sub_21B33B944(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B254054(void *a1, int64_t a2, char a3)
{
  result = sub_21B33BA48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_21B254074(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

char *sub_21B254088(char *a1, int64_t a2, char a3)
{
  result = sub_21B33BB7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_21B2540A8(size_t a1, int64_t a2, char a3)
{
  result = sub_21B33BCB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B2540C8(void *a1, int64_t a2, char a3)
{
  result = sub_21B33BCDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21B2540E8(char *a1, int64_t a2, char a3)
{
  result = sub_21B33BD00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B254108(void *a1, int64_t a2, char a3)
{
  result = sub_21B33BDF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21B254128(char *a1, int64_t a2, char a3)
{
  result = sub_21B33BF4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21B254148(char *a1, int64_t a2, char a3)
{
  result = sub_21B33C04C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21B254168(char *a1, int64_t a2, char a3)
{
  result = sub_21B33C060(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B254188(void *a1, int64_t a2, char a3)
{
  result = sub_21B33C16C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21B2541A8(char *a1, int64_t a2, char a3)
{
  result = sub_21B33C190(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B2541C8(void *a1, int64_t a2, char a3)
{
  result = sub_21B33C2B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B2541E8(void *a1, int64_t a2, char a3)
{
  result = sub_21B33C2D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B254208(void *a1, int64_t a2, char a3)
{
  result = sub_21B33C2F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21B254228(char *a1, int64_t a2, char a3)
{
  result = sub_21B33C444(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21B254248(char *a1, int64_t a2, char a3)
{
  result = sub_21B33C554(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_21B254268(size_t a1, int64_t a2, char a3)
{
  result = sub_21B33C660(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21B254288(char *a1, int64_t a2, char a3)
{
  result = sub_21B33C838(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21B2542A8(char *a1, int64_t a2, char a3)
{
  result = sub_21B33C92C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21B2542C8(char *a1, int64_t a2, char a3)
{
  result = sub_21B33CA30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21B2542E8(char *a1, int64_t a2, char a3)
{
  result = sub_21B33CB34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B254308(void *a1, int64_t a2, char a3)
{
  result = sub_21B33CC30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21B254328(char *a1, int64_t a2, char a3)
{
  result = sub_21B33CC54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21B254348(char *a1, int64_t a2, char a3)
{
  result = sub_21B33CD74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B254368(void *a1, int64_t a2, char a3)
{
  result = sub_21B33CD90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21B254388(char *a1, int64_t a2, char a3)
{
  result = sub_21B33CDB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_21B2543A8(size_t a1, int64_t a2, char a3)
{
  result = sub_21B33CED4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_21B2543C8(size_t a1, int64_t a2, char a3)
{
  result = sub_21B33CEF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B2543E8(void *a1, int64_t a2, char a3)
{
  result = sub_21B33D104(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B254408(void *a1, int64_t a2, char a3)
{
  result = sub_21B33D128(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B254428(void *a1, int64_t a2, char a3)
{
  result = sub_21B33D14C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B254448(void *a1, int64_t a2, char a3)
{
  result = sub_21B33D170(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B254468(void *a1, int64_t a2, char a3)
{
  result = sub_21B33D194(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B254488(void *a1, int64_t a2, char a3)
{
  result = sub_21B33D1B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B2544A8(void *a1, int64_t a2, char a3)
{
  result = sub_21B33D1DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B2544C8(void *a1, int64_t a2, char a3)
{
  result = sub_21B33D34C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B2544E8(void *a1, int64_t a2, char a3)
{
  result = sub_21B33D4A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B254508(void *a1, int64_t a2, char a3)
{
  result = sub_21B33D4C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B254528(void *a1, int64_t a2, char a3)
{
  result = sub_21B33D4EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B254548(void *a1, int64_t a2, char a3)
{
  result = sub_21B33D644(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B254568(void *a1, int64_t a2, char a3)
{
  result = sub_21B33D7AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_21B254588(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_21B34BBB4();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_21B25A878(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_21B254668(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_21B34BBC4();
  sub_21B2615FC(a2, &v26, &qword_27CD7E200, &unk_21B352050);
  if (*(&v27 + 1))
  {
    v24[0] = v26;
    v24[1] = v27;
    v25 = v28;
    sub_21B34BBE4();
    sub_21B34B5C4();
    sub_21B260E14(v24);
  }

  else
  {
    sub_21B34BBE4();
  }

  v6 = sub_21B34BC24();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_14:
    v11 = *v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_21B2615FC(a2, v19, &qword_27CD7E200, &unk_21B352050);
    *&v26 = *v15;
    sub_21B25A998(v19, v8, isUniquelyReferenced_nonNull_native);
    *v15 = v26;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }

  v9 = ~v7;
  while (1)
  {
    sub_21B2615FC(*(v4 + 48) + 40 * v8, &v26, &qword_27CD7E200, &unk_21B352050);
    sub_21B2615FC(&v26, v19, &qword_27CD7E200, &unk_21B352050);
    sub_21B2615FC(a2, &v21, &qword_27CD7E200, &unk_21B352050);
    if (!v20)
    {
      break;
    }

    sub_21B2615FC(v19, v24, &qword_27CD7E200, &unk_21B352050);
    if (!*(&v22 + 1))
    {
      sub_21B261664(&v26, &qword_27CD7E200, &unk_21B352050);
      sub_21B260E14(v24);
      goto LABEL_7;
    }

    v17[0] = v21;
    v17[1] = v22;
    v18 = v23;
    v10 = MEMORY[0x21CEEDD80](v24, v17);
    sub_21B260E14(v17);
    sub_21B261664(&v26, &qword_27CD7E200, &unk_21B352050);
    sub_21B260E14(v24);
    sub_21B261664(v19, &qword_27CD7E200, &unk_21B352050);
    if (v10)
    {
      goto LABEL_16;
    }

LABEL_8:
    v8 = (v8 + 1) & v9;
    if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  sub_21B261664(&v26, &qword_27CD7E200, &unk_21B352050);
  if (*(&v22 + 1))
  {
LABEL_7:
    sub_21B261664(v19, &qword_27CD7E208, &qword_21B351B20);
    goto LABEL_8;
  }

  sub_21B261664(v19, &qword_27CD7E200, &unk_21B352050);
LABEL_16:
  sub_21B261664(a2, &qword_27CD7E200, &unk_21B352050);
  sub_21B2615FC(*(v4 + 48) + 40 * v8, a1, &qword_27CD7E200, &unk_21B352050);
  return 0;
}

uint64_t sub_21B254968(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v107 = *MEMORY[0x277D85DE8];
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_21B34BBC4();
  v9 = a3 >> 60;
  sub_21B34BBE4();
  if (a3 >> 60 != 15)
  {
    sub_21B34A744();
  }

  v10 = sub_21B34BC24();
  v11 = -1 << *(v7 + 32);
  v12 = v10 & ~v11;
  if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_153:
    v78 = *v96;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *__s1 = *v96;
    sub_21B260DAC(a2, a3);
    sub_21B25AC9C(a2, a3, v12, isUniquelyReferenced_nonNull_native);
    *v96 = *__s1;
    *a1 = a2;
    a1[1] = a3;
    result = 1;
LABEL_158:
    v83 = *MEMORY[0x277D85DE8];
    return result;
  }

  v99 = ~v11;
  if (a2)
  {
    v13 = 0;
  }

  else
  {
    v13 = a3 == 0xC000000000000000;
  }

  v14 = !v13;
  v97 = v14;
  v15 = __OFSUB__(HIDWORD(a2), a2);
  v94 = v15;
  v98 = a3 >> 62;
  v92 = (a2 >> 32) - a2;
  v93 = a2 >> 32;
  v95 = a1;
  while (1)
  {
    v16 = (*(v7 + 48) + 16 * v12);
    v18 = *v16;
    v17 = v16[1];
    if (v17 >> 60 == 15)
    {
      if (v9 > 0xE)
      {
        sub_21B260DAC(v18, v17);
        v80 = v18;
        v81 = v17;
LABEL_157:
        sub_21B260C58(v80, v81);
        v82 = *(*(v7 + 48) + 16 * v12);
        *a1 = v82;
        sub_21B260DAC(v82, *(&v82 + 1));
        result = 0;
        goto LABEL_158;
      }

LABEL_18:
      sub_21B260DAC(a2, a3);
      sub_21B260DAC(v18, v17);
      sub_21B260C58(v18, v17);
      v19 = a2;
      v20 = a3;
LABEL_19:
      sub_21B260C58(v19, v20);
      goto LABEL_20;
    }

    if (v9 > 0xE)
    {
      goto LABEL_18;
    }

    v21 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      if (v18)
      {
        v22 = 0;
      }

      else
      {
        v22 = v17 == 0xC000000000000000;
      }

      v24 = !v22 || a3 >> 62 != 3;
      if (((v24 | v97) & 1) == 0)
      {
        sub_21B260DAC(0, 0xC000000000000000);
        sub_21B260DAC(0, 0xC000000000000000);
        sub_21B260C58(0, 0xC000000000000000);
        v18 = 0;
        goto LABEL_155;
      }

LABEL_41:
      v25 = 0;
      goto LABEL_42;
    }

    if (v21 > 1)
    {
      if (v21 != 2)
      {
        goto LABEL_41;
      }

      v27 = *(v18 + 16);
      v26 = *(v18 + 24);
      v28 = __OFSUB__(v26, v27);
      v25 = v26 - v27;
      if (v28)
      {
        goto LABEL_161;
      }
    }

    else if (v21)
    {
      LODWORD(v25) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_162;
      }

      v25 = v25;
    }

    else
    {
      v25 = BYTE6(v17);
    }

LABEL_42:
    if (v98 > 1)
    {
      if (v98 != 2)
      {
        if (v25)
        {
LABEL_60:
          sub_21B260DAC(a2, a3);
          sub_21B260DAC(v18, v17);
          sub_21B260C58(a2, a3);
          v19 = v18;
          v20 = v17;
          goto LABEL_19;
        }

LABEL_154:
        sub_21B260DAC(a2, a3);
        sub_21B260DAC(v18, v17);
        sub_21B260C58(a2, a3);
        goto LABEL_155;
      }

      v31 = *(a2 + 16);
      v30 = *(a2 + 24);
      v28 = __OFSUB__(v30, v31);
      v29 = v30 - v31;
      if (v28)
      {
        goto LABEL_160;
      }
    }

    else
    {
      v29 = BYTE6(a3);
      if (v98)
      {
        v29 = HIDWORD(a2) - a2;
        if (v94)
        {
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
        }
      }
    }

    if (v25 != v29)
    {
      goto LABEL_60;
    }

    if (v25 < 1)
    {
      goto LABEL_154;
    }

    if (v21 > 1)
    {
      break;
    }

    if (v21)
    {
      if (v18 > v18 >> 32)
      {
        goto LABEL_163;
      }

      sub_21B260DAC(v18, v17);
      sub_21B260DAC(a2, a3);
      sub_21B260DAC(v18, v17);
      v41 = sub_21B34A574();
      if (v41)
      {
        v42 = v41;
        v43 = sub_21B34A594();
        if (__OFSUB__(v18, v43))
        {
          goto LABEL_165;
        }

        v89 = (v18 - v43 + v42);
      }

      else
      {
        v89 = 0;
      }

      a1 = v95;
      sub_21B34A584();
      v9 = a3 >> 60;
      if (v98 == 2)
      {
        v71 = *(a2 + 16);
        v87 = *(a2 + 24);
        v50 = sub_21B34A574();
        if (v50)
        {
          v72 = sub_21B34A594();
          if (__OFSUB__(v71, v72))
          {
            goto LABEL_179;
          }

          v50 += v71 - v72;
        }

        v28 = __OFSUB__(v87, v71);
        v73 = v87 - v71;
        if (v28)
        {
          goto LABEL_175;
        }

        v74 = sub_21B34A584();
        if (v74 >= v73)
        {
          v53 = v73;
        }

        else
        {
          v53 = v74;
        }

        v54 = v89;
        if (!v89)
        {
          goto LABEL_186;
        }

        a1 = v95;
        if (!v50)
        {
          goto LABEL_185;
        }
      }

      else
      {
        if (v98 != 1)
        {
          v70 = v89;
          *__s1 = a2;
          *&__s1[8] = a3;
          __s1[10] = BYTE2(a3);
          __s1[11] = BYTE3(a3);
          __s1[12] = BYTE4(a3);
          __s1[13] = BYTE5(a3);
          if (!v89)
          {
            goto LABEL_189;
          }

          goto LABEL_137;
        }

        if (v93 < a2)
        {
          goto LABEL_174;
        }

        v50 = sub_21B34A574();
        if (v50)
        {
          v55 = sub_21B34A594();
          if (__OFSUB__(a2, v55))
          {
            goto LABEL_181;
          }

          v50 += a2 - v55;
        }

        v56 = sub_21B34A584();
        v53 = (a2 >> 32) - a2;
        if (v56 < v92)
        {
          v53 = v56;
        }

        v54 = v89;
        if (!v89)
        {
          goto LABEL_192;
        }

        if (!v50)
        {
          goto LABEL_191;
        }
      }

      goto LABEL_133;
    }

    *__s1 = v18;
    *&__s1[8] = v17;
    __s1[10] = BYTE2(v17);
    __s1[11] = BYTE3(v17);
    __s1[12] = BYTE4(v17);
    __s1[13] = BYTE5(v17);
    if (!v98)
    {
      goto LABEL_76;
    }

    if (v98 == 1)
    {
      if (v93 < a2)
      {
        goto LABEL_167;
      }

      sub_21B260DAC(v18, v17);
      sub_21B260DAC(a2, a3);
      sub_21B260DAC(v18, v17);
      v32 = sub_21B34A574();
      if (!v32)
      {
        goto LABEL_194;
      }

      v33 = v32;
      v34 = sub_21B34A594();
      if (__OFSUB__(a2, v34))
      {
        goto LABEL_171;
      }

      v35 = (a2 - v34 + v33);
      result = sub_21B34A584();
      if (!v35)
      {
        goto LABEL_193;
      }

      goto LABEL_108;
    }

    v85 = *(a2 + 24);
    v91 = *(a2 + 16);
    sub_21B260DAC(v18, v17);
    sub_21B260DAC(a2, a3);
    sub_21B260DAC(v18, v17);
    v44 = sub_21B34A574();
    if (v44)
    {
      v57 = sub_21B34A594();
      v58 = v91;
      if (__OFSUB__(v91, v57))
      {
        goto LABEL_177;
      }

      v44 = &v91[v44 - v57];
    }

    else
    {
      v58 = v91;
    }

    v75 = v85 - v58;
    if (__OFSUB__(v85, v58))
    {
      goto LABEL_170;
    }

    v76 = sub_21B34A584();
    if (!v44)
    {
      goto LABEL_190;
    }

LABEL_147:
    if (v76 >= v75)
    {
      v77 = v75;
    }

    else
    {
      v77 = v76;
    }

    v63 = memcmp(__s1, v44, v77);
    sub_21B260C58(v18, v17);
    sub_21B260C58(a2, a3);
    sub_21B260C58(v18, v17);
    a1 = v95;
LABEL_151:
    v9 = a3 >> 60;
    if (!v63)
    {
      goto LABEL_156;
    }

LABEL_20:
    v12 = (v12 + 1) & v99;
    if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_153;
    }
  }

  if (v21 == 2)
  {
    v37 = *(v18 + 16);
    sub_21B260DAC(v18, v17);
    sub_21B260DAC(a2, a3);
    sub_21B260DAC(v18, v17);
    v38 = sub_21B34A574();
    if (v38)
    {
      v39 = v38;
      v40 = sub_21B34A594();
      if (__OFSUB__(v37, v40))
      {
        goto LABEL_164;
      }

      v88 = (v37 - v40 + v39);
    }

    else
    {
      v88 = 0;
    }

    a1 = v95;
    sub_21B34A584();
    v9 = a3 >> 60;
    if (v98 != 2)
    {
      if (v98 == 1)
      {
        if (v93 < a2)
        {
          goto LABEL_169;
        }

        v50 = sub_21B34A574();
        if (v50)
        {
          v51 = sub_21B34A594();
          if (__OFSUB__(a2, v51))
          {
            goto LABEL_180;
          }

          v50 += a2 - v51;
        }

        v52 = sub_21B34A584();
        v53 = (a2 >> 32) - a2;
        if (v52 < v92)
        {
          v53 = v52;
        }

        v54 = v88;
        if (!v88)
        {
          goto LABEL_184;
        }

        if (!v50)
        {
          goto LABEL_183;
        }

        goto LABEL_133;
      }

      v70 = v88;
      *__s1 = a2;
      *&__s1[8] = a3;
      __s1[10] = BYTE2(a3);
      __s1[11] = BYTE3(a3);
      __s1[12] = BYTE4(a3);
      __s1[13] = BYTE5(a3);
      if (!v88)
      {
        goto LABEL_182;
      }

LABEL_137:
      v47 = memcmp(v70, __s1, BYTE6(a3));
      sub_21B260C58(a2, a3);
      v48 = v18;
      v49 = v17;
LABEL_138:
      sub_21B260C58(v48, v49);
      sub_21B260C58(v18, v17);
      if (!v47)
      {
        goto LABEL_156;
      }

      goto LABEL_20;
    }

    v66 = *(a2 + 16);
    v86 = *(a2 + 24);
    v50 = sub_21B34A574();
    if (v50)
    {
      v67 = sub_21B34A594();
      if (__OFSUB__(v66, v67))
      {
        goto LABEL_178;
      }

      v50 += v66 - v67;
    }

    v28 = __OFSUB__(v86, v66);
    v68 = v86 - v66;
    if (v28)
    {
      goto LABEL_173;
    }

    v69 = sub_21B34A584();
    if (v69 >= v68)
    {
      v53 = v68;
    }

    else
    {
      v53 = v69;
    }

    v54 = v88;
    if (!v88)
    {
      goto LABEL_188;
    }

    a1 = v95;
    if (!v50)
    {
      goto LABEL_187;
    }

LABEL_133:
    if (v54 != v50)
    {
      v63 = memcmp(v54, v50, v53);
      sub_21B260C58(a2, a3);
      v64 = v18;
      v65 = v17;
      goto LABEL_135;
    }

    sub_21B260C58(a2, a3);
    sub_21B260C58(v18, v17);
LABEL_155:
    sub_21B260C58(v18, v17);
LABEL_156:
    v80 = a2;
    v81 = a3;
    goto LABEL_157;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v98)
  {
LABEL_76:
    __s2 = a2;
    v101 = a3;
    v102 = BYTE2(a3);
    v103 = BYTE3(a3);
    v104 = BYTE4(a3);
    v105 = BYTE5(a3);
    sub_21B260DAC(a2, a3);
    sub_21B260DAC(v18, v17);
    v47 = memcmp(__s1, &__s2, BYTE6(a3));
    v48 = a2;
    v49 = a3;
    goto LABEL_138;
  }

  if (v98 != 2)
  {
    if (v93 < a2)
    {
      goto LABEL_166;
    }

    sub_21B260DAC(v18, v17);
    sub_21B260DAC(a2, a3);
    sub_21B260DAC(v18, v17);
    v59 = sub_21B34A574();
    if (!v59)
    {
      goto LABEL_195;
    }

    v60 = v59;
    v61 = sub_21B34A594();
    if (__OFSUB__(a2, v61))
    {
      goto LABEL_172;
    }

    v35 = (a2 - v61 + v60);
    result = sub_21B34A584();
    if (!v35)
    {
      goto LABEL_196;
    }

LABEL_108:
    if (result >= v92)
    {
      v62 = (a2 >> 32) - a2;
    }

    else
    {
      v62 = result;
    }

    v63 = memcmp(__s1, v35, v62);
    sub_21B260C58(v18, v17);
    v64 = a2;
    v65 = a3;
LABEL_135:
    sub_21B260C58(v64, v65);
    sub_21B260C58(v18, v17);
    goto LABEL_151;
  }

  v84 = *(a2 + 24);
  v90 = *(a2 + 16);
  sub_21B260DAC(v18, v17);
  sub_21B260DAC(a2, a3);
  sub_21B260DAC(v18, v17);
  v44 = sub_21B34A574();
  if (v44)
  {
    v45 = sub_21B34A594();
    v46 = v90;
    if (__OFSUB__(v90, v45))
    {
      goto LABEL_176;
    }

    v44 = &v90[v44 - v45];
  }

  else
  {
    v46 = v90;
  }

  v75 = v84 - v46;
  if (__OFSUB__(v84, v46))
  {
    goto LABEL_168;
  }

  v76 = sub_21B34A584();
  if (v44)
  {
    goto LABEL_147;
  }

  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  sub_21B34A584();
  __break(1u);
LABEL_195:
  result = sub_21B34A584();
LABEL_196:
  __break(1u);
  return result;
}