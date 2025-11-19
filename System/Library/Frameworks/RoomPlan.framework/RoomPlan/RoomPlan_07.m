uint64_t TableType.shortIdentifier.getter()
{
  v1 = 0x6154676E696E6964;
  if (*v0 != 1)
  {
    v1 = 0x69746E6564696E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6154656566666F63;
  }
}

RoomPlan::TableType_optional __swiftcall TableType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23AA0DA64();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TableType.rawValue.getter()
{
  v1 = 0x676E696E6964;
  if (*v0 != 1)
  {
    v1 = 0x69746E6564696E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656566666F63;
  }
}

uint64_t sub_23A937BD0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x676E696E6964;
  if (v2 != 1)
  {
    v5 = 0x69746E6564696E75;
    v4 = 0xEC00000064656966;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x656566666F63;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0x676E696E6964;
  if (*a2 != 1)
  {
    v8 = 0x69746E6564696E75;
    v3 = 0xEC00000064656966;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656566666F63;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23AA0DBD4();
  }

  return v11 & 1;
}

uint64_t sub_23A937CD4()
{
  v1 = *v0;
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

uint64_t sub_23A937D78()
{
  *v0;
  *v0;
  sub_23AA0D1D4();
}

uint64_t sub_23A937E08()
{
  v1 = *v0;
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

void sub_23A937EB4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x676E696E6964;
  if (v2 != 1)
  {
    v5 = 0x69746E6564696E75;
    v4 = 0xEC00000064656966;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656566666F63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_23A937F14()
{
  v1 = 0x6154676E696E6964;
  if (*v0 != 1)
  {
    v1 = 0x69746E6564696E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6154656566666F63;
  }
}

unint64_t TableShapeType.shortIdentifier.getter()
{
  v1 = 0x75676E6174636572;
  v2 = 0x6465706168536CLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

RoomPlan::TableShapeType_optional __swiftcall TableShapeType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23AA0DA64();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t TableShapeType.rawValue.getter()
{
  v1 = 0x75676E6174636572;
  v2 = 0x6465706168536CLL;
  if (*v0 != 2)
  {
    v2 = 0x69746E6564696E75;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23A93812C()
{
  v1 = *v0;
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

uint64_t sub_23A938204()
{
  *v0;
  *v0;
  *v0;
  sub_23AA0D1D4();
}

uint64_t sub_23A9382C8()
{
  v1 = *v0;
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

void sub_23A9383A8(unint64_t *a1@<X8>)
{
  v2 = 0xEB0000000072616CLL;
  v3 = 0x75676E6174636572;
  v4 = 0xE700000000000000;
  v5 = 0x6465706168536CLL;
  if (*v1 != 2)
  {
    v5 = 0x69746E6564696E75;
    v4 = 0xEC00000064656966;
  }

  if (*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x800000023AA1CE10;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_23A938448()
{
  v1 = 0x75676E6174636572;
  v2 = 0x6465706168536CLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t StorageType.shortIdentifier.getter()
{
  if (*v0)
  {
    result = 0x666C656873;
  }

  else
  {
    result = 0x74656E69626163;
  }

  *v0;
  return result;
}

uint64_t sub_23A938538@<X0>(char *a1@<X8>)
{
  v2 = sub_23AA0DA64();

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

uint64_t sub_23A9385A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x666C656873;
  }

  else
  {
    v4 = 0x74656E69626163;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x666C656873;
  }

  else
  {
    v6 = 0x74656E69626163;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23AA0DBD4();
  }

  return v9 & 1;
}

uint64_t sub_23A938648()
{
  v1 = *v0;
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

uint64_t sub_23A9386C8()
{
  *v0;
  sub_23AA0D1D4();
}

uint64_t sub_23A938734()
{
  v1 = *v0;
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

uint64_t sub_23A9387BC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23AA0DA64();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_23A938818(uint64_t *a1@<X8>)
{
  v2 = 0x74656E69626163;
  if (*v1)
  {
    v2 = 0x666C656873;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_23A938860()
{
  if (*v0)
  {
    result = 0x666C656873;
  }

  else
  {
    result = 0x74656E69626163;
  }

  *v0;
  return result;
}

char *sub_23A9388F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF598, &qword_23AA18B40);
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

char *sub_23A938A28(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAED50, &unk_23AA122F0);
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

char *sub_23A938B2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF5B0, &unk_23AA14330);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_23A938C30(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF660, &qword_23AA143F8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF668, &qword_23AA14400);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23A938D78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF608, &qword_23AA143A0);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_23A938E7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF610, &qword_23AA143A8);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_23A938F80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF618, &qword_23AA143B0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_23A9390C0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
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

char *sub_23A939208(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF120, &qword_23AA12AA0);
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

char *sub_23A93930C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF118, &unk_23AA14320);
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

char *sub_23A939440(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF658, &qword_23AA143F0);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, v8 << 6);
  }

  return v10;
}

char *sub_23A939544(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF650, &qword_23AA143E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 5 * v8;
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

char *sub_23A93964C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF5E0, &unk_23AA14370);
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

char *sub_23A939750(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1760, &unk_23AA1A7C0);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_23A939884(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

char *sub_23A9399B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF5C8, &unk_23AA14348);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 160);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23A939AE8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
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

void *sub_23A939C08(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

char *sub_23A939D64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF628, &unk_23AA143C0);
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

char *sub_23A939E68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF620, &qword_23AA143B8);
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

char *sub_23A939F80(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
  v17 = 32 * v10;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[v17])
    {
      memmove(v15, v16, v17);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, v17);
  }

  return v12;
}

char *sub_23A93A08C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
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

size_t sub_23A93A1C8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

uint64_t _s8RoomPlan23CapturedElementCategoryO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((a1[1] & 1) == 0)
  {
    if (a2[1])
    {
      return 0;
    }

    if (*a1 > 3u)
    {
      if (v2 != 4)
      {
        if (v2 == 5)
        {
          return v3 == 5;
        }

        return (v3 - 2) >= 4u && ((v3 ^ v2) & 1) == 0;
      }

      if (v3 == 4)
      {
        return 1;
      }
    }

    else
    {
      if (v2 != 2)
      {
        if (v2 == 3)
        {
          return v3 == 3;
        }

        return (v3 - 2) >= 4u && ((v3 ^ v2) & 1) == 0;
      }

      if (v3 == 2)
      {
        return 1;
      }
    }

    return 0;
  }

  if (*a1 == v3)
  {
    return a2[1];
  }

  else
  {
    return 0;
  }
}

unint64_t sub_23A93A45C()
{
  result = qword_27DFAF368;
  if (!qword_27DFAF368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF368);
  }

  return result;
}

unint64_t sub_23A93A4B0()
{
  result = qword_27DFAF370;
  if (!qword_27DFAF370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF370);
  }

  return result;
}

unint64_t sub_23A93A504()
{
  result = qword_27DFAF378;
  if (!qword_27DFAF378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF378);
  }

  return result;
}

unint64_t sub_23A93A558()
{
  result = qword_27DFAF380;
  if (!qword_27DFAF380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF380);
  }

  return result;
}

unint64_t sub_23A93A5AC()
{
  result = qword_27DFAF388;
  if (!qword_27DFAF388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF388);
  }

  return result;
}

unint64_t sub_23A93A600()
{
  result = qword_27DFAF3B0;
  if (!qword_27DFAF3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF3B0);
  }

  return result;
}

unint64_t sub_23A93A654()
{
  result = qword_27DFAF3B8;
  if (!qword_27DFAF3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF3B8);
  }

  return result;
}

unint64_t sub_23A93A6A8()
{
  result = qword_27DFAF3C8;
  if (!qword_27DFAF3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF3C8);
  }

  return result;
}

unint64_t sub_23A93A700()
{
  result = qword_27DFAF3E0;
  if (!qword_27DFAF3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF3E0);
  }

  return result;
}

unint64_t sub_23A93A780()
{
  result = qword_27DFAF3E8;
  if (!qword_27DFAF3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF3E8);
  }

  return result;
}

unint64_t sub_23A93A7D4()
{
  result = qword_27DFAF3F0;
  if (!qword_27DFAF3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF3F0);
  }

  return result;
}

unint64_t sub_23A93A85C()
{
  result = qword_27DFAF408;
  if (!qword_27DFAF408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF408);
  }

  return result;
}

unint64_t sub_23A93A8DC()
{
  result = qword_27DFAF410;
  if (!qword_27DFAF410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF410);
  }

  return result;
}

unint64_t sub_23A93A930()
{
  result = qword_27DFAF418;
  if (!qword_27DFAF418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF418);
  }

  return result;
}

unint64_t sub_23A93A9B8()
{
  result = qword_27DFAF430;
  if (!qword_27DFAF430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF430);
  }

  return result;
}

unint64_t sub_23A93AA38()
{
  result = qword_27DFAF438;
  if (!qword_27DFAF438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF438);
  }

  return result;
}

unint64_t sub_23A93AA8C()
{
  result = qword_27DFAF440;
  if (!qword_27DFAF440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF440);
  }

  return result;
}

unint64_t sub_23A93AB14()
{
  result = qword_27DFAF458;
  if (!qword_27DFAF458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF458);
  }

  return result;
}

unint64_t sub_23A93AB94()
{
  result = qword_27DFAF460;
  if (!qword_27DFAF460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF460);
  }

  return result;
}

unint64_t sub_23A93ABE8()
{
  result = qword_27DFAF468;
  if (!qword_27DFAF468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF468);
  }

  return result;
}

unint64_t sub_23A93AC70()
{
  result = qword_27DFAF480;
  if (!qword_27DFAF480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF480);
  }

  return result;
}

unint64_t sub_23A93ACF0()
{
  result = qword_27DFAF488;
  if (!qword_27DFAF488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF488);
  }

  return result;
}

unint64_t sub_23A93AD44()
{
  result = qword_27DFAF490;
  if (!qword_27DFAF490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF490);
  }

  return result;
}

unint64_t sub_23A93ADCC()
{
  result = qword_27DFAF4A8;
  if (!qword_27DFAF4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF4A8);
  }

  return result;
}

unint64_t sub_23A93AE4C()
{
  result = qword_27DFAF4B0;
  if (!qword_27DFAF4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF4B0);
  }

  return result;
}

unint64_t sub_23A93AEA0()
{
  result = qword_27DFAF4B8;
  if (!qword_27DFAF4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF4B8);
  }

  return result;
}

unint64_t sub_23A93AF28()
{
  result = qword_27DFAF4D0;
  if (!qword_27DFAF4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF4D0);
  }

  return result;
}

unint64_t sub_23A93AFA8()
{
  result = qword_27DFAF4D8;
  if (!qword_27DFAF4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF4D8);
  }

  return result;
}

unint64_t sub_23A93AFFC()
{
  result = qword_27DFAF4E0;
  if (!qword_27DFAF4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF4E0);
  }

  return result;
}

unint64_t sub_23A93B084()
{
  result = qword_27DFAF4F8;
  if (!qword_27DFAF4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF4F8);
  }

  return result;
}

uint64_t sub_23A93B104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23A93B140()
{
  result = qword_27DFAF500;
  if (!qword_27DFAF500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF500);
  }

  return result;
}

unint64_t sub_23A93B194()
{
  result = qword_27DFAF508;
  if (!qword_27DFAF508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF508);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CapturedElementCategory(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 <= 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6 ^ 0xFF;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for CapturedElementCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = -a2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23A93B3C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_23A93B40C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnimationOrigin(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AnimationOrigin(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for GlyphSnapState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GlyphSnapState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23A93B784(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_23A93B7CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_23A93B838(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_23A93B880(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for CapturedRoom.Surface.Category.DoorCodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CapturedRoom.Surface.Category.DoorCodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_23A93B9E0()
{
  result = qword_27DFAF520;
  if (!qword_27DFAF520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF520);
  }

  return result;
}

unint64_t sub_23A93BA38()
{
  result = qword_27DFAF528;
  if (!qword_27DFAF528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF528);
  }

  return result;
}

unint64_t sub_23A93BA90()
{
  result = qword_27DFAF530;
  if (!qword_27DFAF530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF530);
  }

  return result;
}

unint64_t sub_23A93BAF4()
{
  result = qword_27DFAF538;
  if (!qword_27DFAF538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF538);
  }

  return result;
}

unint64_t sub_23A93BB58()
{
  result = qword_27DFAF540;
  if (!qword_27DFAF540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF540);
  }

  return result;
}

unint64_t sub_23A93BBBC()
{
  result = qword_27DFAF548;
  if (!qword_27DFAF548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF548);
  }

  return result;
}

unint64_t sub_23A93BC14()
{
  result = qword_27DFAF550;
  if (!qword_27DFAF550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF550);
  }

  return result;
}

unint64_t sub_23A93BC6C()
{
  result = qword_27DFAF558;
  if (!qword_27DFAF558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF558);
  }

  return result;
}

unint64_t sub_23A93BCC4()
{
  result = qword_27DFAF560;
  if (!qword_27DFAF560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF560);
  }

  return result;
}

unint64_t sub_23A93BD1C()
{
  result = qword_27DFAF568;
  if (!qword_27DFAF568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF568);
  }

  return result;
}

unint64_t sub_23A93BD74()
{
  result = qword_27DFAF570;
  if (!qword_27DFAF570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF570);
  }

  return result;
}

unint64_t sub_23A93BDCC()
{
  result = qword_27DFAF578;
  if (!qword_27DFAF578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF578);
  }

  return result;
}

unint64_t sub_23A93BE24()
{
  result = qword_27DFAF580;
  if (!qword_27DFAF580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF580);
  }

  return result;
}

unint64_t sub_23A93BE7C()
{
  result = qword_27DFAF588;
  if (!qword_27DFAF588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF588);
  }

  return result;
}

unint64_t sub_23A93BED4()
{
  result = qword_27DFAF590;
  if (!qword_27DFAF590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF590);
  }

  return result;
}

uint64_t sub_23A93BFA4()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
LABEL_5:
    swift_unknownObjectRetain();
    return v1;
  }

  v2 = MTLCreateSystemDefaultDevice();
  if (v2)
  {
    v1 = v2;
    v3 = *(v0 + 16);
    *(v0 + 16) = v2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  result = sub_23AA0D9E4();
  __break(1u);
  return result;
}

uint64_t sub_23A93C058()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = sub_23A93C0B8();
    v2 = *(v0 + 24);
    *(v0 + 24) = v1;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v1;
}

uint64_t sub_23A93C0B8()
{
  v10 = *MEMORY[0x277D85DE8];
  type metadata accessor for MetalConstants();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v8 = 0;
  v2 = [sub_23A93BFA4() newDefaultLibraryWithBundle:v1 error:&v8];
  swift_unknownObjectRelease();
  if (v2)
  {
    v3 = v8;

    v4 = *MEMORY[0x277D85DE8];
    return v2;
  }

  else
  {
    v6 = v8;
    sub_23AA0BE74();

    swift_willThrow();
    v8 = 0;
    v9 = 0xE000000000000000;
    sub_23AA0D8A4();

    v8 = 0xD00000000000001DLL;
    v9 = 0x800000023AA1EC50;
    swift_getErrorValue();
    v7 = sub_23AA0DC34();
    MEMORY[0x23EE8FCA0](v7);

    result = sub_23AA0D9E4();
    __break(1u);
  }

  return result;
}

uint64_t sub_23A93C24C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_23A93C2D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23A93C3A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AnimationGraph()
{
  result = qword_27DFAF690;
  if (!qword_27DFAF690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23A93C4A0()
{
  sub_23A93C5A8(319, &qword_27DFAF6A0, &qword_27DFAF6A8, qword_23AA14560);
  if (v0 <= 0x3F)
  {
    sub_23A93C5A8(319, &qword_27DFAF6B0, &qword_27DFAF648, &qword_23AA143E0);
    if (v1 <= 0x3F)
    {
      sub_23A8ECAC8();
      if (v2 <= 0x3F)
      {
        sub_23A93C60C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23A93C5A8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_23AA0D044();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_23A93C60C()
{
  if (!qword_27DFAF6B8)
  {
    v0 = sub_23AA0D344();
    if (!v1)
    {
      atomic_store(v0, &qword_27DFAF6B8);
    }
  }
}

unint64_t sub_23A93C660()
{
  result = qword_27DFAF6C0;
  if (!qword_27DFAF6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF6C0);
  }

  return result;
}

void sub_23A93C6B4(int a1, float32x4_t a2)
{
  v3 = (~a1 & 0x44) == 0;
  sub_23A93EF80(0, 1, v3, a2);
  sub_23A93EF80(1, 0, v3, a2);
  sub_23A93EF80(4, 5, (~a1 & 0x88) == 0, a2);
  sub_23A93EF80(5, 4, (~a1 & 0x88) == 0, a2);
  sub_23A93EF80(1, 5, (~a1 & 0xC0) == 0, a2);
  sub_23A93EF80(5, 1, (~a1 & 0xC0) == 0, a2);
  sub_23A93EF80(0, 4, (~a1 & 0xC) == 0, a2);
  sub_23A93EF80(4, 0, (~a1 & 0xC) == 0, a2);
  sub_23A93EF80(1, 2, (~a1 & 0x60) == 0, a2);
  sub_23A93EF80(2, 1, (~a1 & 0x60) == 0, a2);
  sub_23A93EF80(5, 6, (~a1 & 0x90) == 0, a2);
  sub_23A93EF80(6, 5, (~a1 & 0x90) == 0, a2);
  sub_23A93EF80(2, 3, (~a1 & 0x22) == 0, a2);
  sub_23A93EF80(3, 2, (~a1 & 0x22) == 0, a2);
  sub_23A93EF80(6, 7, (~a1 & 0x11) == 0, a2);
  sub_23A93EF80(7, 6, (~a1 & 0x11) == 0, a2);
  sub_23A93EF80(2, 6, (~a1 & 0x30) == 0, a2);
  sub_23A93EF80(6, 2, (~a1 & 0x30) == 0, a2);
  sub_23A93EF80(3, 7, (~a1 & 3) == 0, a2);
  sub_23A93EF80(7, 3, (~a1 & 3) == 0, a2);
  sub_23A93EF80(0, 3, (~a1 & 6) == 0, a2);
  sub_23A93EF80(3, 0, (~a1 & 6) == 0, a2);
  v4 = (~a1 & 9) == 0;
  sub_23A93EF80(4, 7, v4, a2);

  sub_23A93EF80(7, 4, v4, a2);
}

void sub_23A93C968(unsigned int a1, float32x4_t a2)
{
  sub_23A93EF80(0, 1, a1 & 1, a2);
  sub_23A93EF80(1, 0, a1 & 1, a2);
  sub_23A93EF80(4, 5, a1 & 1, a2);
  sub_23A93EF80(5, 4, a1 & 1, a2);
  sub_23A93EF80(1, 5, a1 & 1, a2);
  sub_23A93EF80(5, 1, a1 & 1, a2);
  sub_23A93EF80(0, 4, a1 & 1, a2);
  sub_23A93EF80(4, 0, a1 & 1, a2);
  sub_23A93EF80(1, 2, (a1 >> 3) & 1, a2);
  sub_23A93EF80(2, 1, (a1 >> 3) & 1, a2);
  sub_23A93EF80(5, 6, (a1 >> 3) & 1, a2);
  sub_23A93EF80(6, 5, (a1 >> 3) & 1, a2);
  sub_23A93EF80(2, 3, (a1 >> 1) & 1, a2);
  sub_23A93EF80(3, 2, (a1 >> 1) & 1, a2);
  sub_23A93EF80(6, 7, (a1 >> 1) & 1, a2);
  sub_23A93EF80(7, 6, (a1 >> 1) & 1, a2);
  sub_23A93EF80(2, 6, (a1 >> 1) & 1, a2);
  sub_23A93EF80(6, 2, (a1 >> 1) & 1, a2);
  sub_23A93EF80(3, 7, (a1 >> 1) & 1, a2);
  sub_23A93EF80(7, 3, (a1 >> 1) & 1, a2);
  v3 = (a1 >> 2) & 1;
  sub_23A93EF80(0, 3, v3, a2);
  sub_23A93EF80(3, 0, v3, a2);
  sub_23A93EF80(4, 7, v3, a2);

  sub_23A93EF80(7, 4, v3, a2);
}

uint64_t (*sub_23A93CB90(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_23A940BCC(v4, a2);
  return sub_23A941118;
}

uint64_t (*sub_23A93CC08(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_23A940C70(v4, a2);
  return sub_23A93CC80;
}

void sub_23A93CC84(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_23A93CCD0(uint64_t a1, simd_float4 a2, simd_float4 a3, simd_float4 a4, simd_float4 a5, float32x4_t a6)
{
  v7 = v6;
  v121 = a6;
  v144.columns[3] = a5;
  v144.columns[2] = a4;
  v144.columns[1] = a3;
  v144.columns[0] = a2;
  v9 = type metadata accessor for LineAnimation();
  v112 = *(v9 - 8);
  v10 = *(v112 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v111 - v14);
  v132 = sub_23AA0C064();
  v16 = *(v132 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v132);
  v131 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v124 = &v111 - v20;
  MEMORY[0x28223BE20](v21);
  isUniquelyReferenced_nonNull_native = &v111 - v22;
  if (qword_27DFAE518 != -1)
  {
    goto LABEL_76;
  }

  while (1)
  {
    v24 = off_27DFB17B0;
    swift_beginAccess();
    v25 = v24[17];
    sub_23A93EE14(isUniquelyReferenced_nonNull_native);
    if (v25 <= 0.0)
    {
      v130 = *(v16 + 8);
      v130(isUniquelyReferenced_nonNull_native, v132);
      v33 = 1.0;
    }

    else
    {
      v26 = v25;
      v27 = v124;
      sub_23AA0C044();
      sub_23AA0C014();
      v29 = v28;
      v30 = *(v16 + 8);
      v31 = v27;
      v32 = v132;
      v30(v31, v132);
      v130 = v30;
      v30(isUniquelyReferenced_nonNull_native, v32);
      v33 = 0.0;
      if (v29 / v26 > 0.0)
      {
        v34 = 1.0;
        if (v29 / v26 <= 1.0)
        {
          v34 = v29 / v26;
        }

        v33 = v34;
      }
    }

    v151 = v144;
    *(v7 + 4) = v33;
    v152 = __invert_f4(v151);
    v120 = v152.columns[0];
    v119 = v152.columns[1];
    v118 = v152.columns[2];
    v117 = v152.columns[3];
    result = type metadata accessor for AnimationGraph();
    v138 = *&v7[*(result + 44)];
    v113 = *(v138 + 16);
    if (!v113)
    {
      return result;
    }

    v36 = 0;
    v116 = (v24 + 20);
    v126 = v24 + 22;
    v122 = v24 + 21;
    v123 = v24 + 19;
    v137 = v138 + 32;
    v37 = vmul_f32(*v121.f32, 0x3F0000003F000000);
    v38 = vmuls_lane_f32(0.5, v121, 2);
    v39 = vneg_f32(v37);
    v40 = -(v121.f32[2] * 0.5);
    v127 = v16 + 8;
    v16 = 1120403456;
    v41 = 1.0;
    v125 = xmmword_23AA11C10;
    v129 = a1;
    v128 = v12;
    v111 = v7;
    while (1)
    {
      v44 = *(v7 + 5);
      if (!*(v44 + 16))
      {
        goto LABEL_71;
      }

      v45 = sub_23A9EDF54(v36);
      if ((v46 & 1) == 0)
      {
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      isUniquelyReferenced_nonNull_native = *(*(v44 + 56) + 8 * v45);
      v47 = *(isUniquelyReferenced_nonNull_native + 16);
      if (v47)
      {
        break;
      }

      v99 = MEMORY[0x277D84F90];
LABEL_59:
      v100 = *(v7 + 5);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v145 = *(v7 + 5);
      v101 = v145;
      result = sub_23A9EDF54(v36);
      v103 = *(v101 + 16);
      v104 = (v102 & 1) == 0;
      v105 = __OFADD__(v103, v104);
      v106 = v103 + v104;
      if (v105)
      {
        goto LABEL_73;
      }

      v16 = v102;
      if (*(v101 + 24) >= v106)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = result;
          sub_23A90DD80();
          result = isUniquelyReferenced_nonNull_native;
        }
      }

      else
      {
        sub_23A908130(v106, isUniquelyReferenced_nonNull_native);
        result = sub_23A9EDF54(v36);
        if ((v16 & 1) != (v107 & 1))
        {
          result = sub_23AA0DC24();
          __break(1u);
          return result;
        }
      }

      v108 = v145;
      if (v16)
      {
        v42 = *(v145 + 56);
        v43 = *(v42 + 8 * result);
        *(v42 + 8 * result) = v99;
      }

      else
      {
        *(v145 + 8 * (result >> 6) + 64) |= 1 << result;
        *(v108[6] + 8 * result) = v36;
        *(v108[7] + 8 * result) = v99;
        v109 = v108[2];
        v105 = __OFADD__(v109, 1);
        v110 = v109 + 1;
        if (v105)
        {
          goto LABEL_75;
        }

        v108[2] = v110;
      }

      ++v36;
      *(v7 + 5) = v108;
      v16 = 1120403456;
      if (v36 == v113)
      {
        return result;
      }
    }

    v150 = MEMORY[0x277D84F90];

    sub_23A975F84(0, v47, 0);
    if (v36 < *(v138 + 16))
    {
      v136 = *v7;
      v7 = v150;
      v48 = v112;
      v49 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      v114 = isUniquelyReferenced_nonNull_native;
      v135 = v49;
      v50 = isUniquelyReferenced_nonNull_native + v49;
      v115 = v36;
      v134 = (v137 + 5 * v36);
      swift_beginAccess();
      swift_beginAccess();
      swift_beginAccess();
      swift_beginAccess();
      v133 = *(v48 + 72);
      while (1)
      {
        sub_23A9400FC(v50, v12);
        sub_23A9400FC(v12, v15);
        if (*(a1 + 16) && (v52 = sub_23A9F573C(*(v12 + 104)), (v53 & 1) != 0))
        {
          v54 = *(a1 + 56) + 40 * v52;
          v55 = *v54;
          isUniquelyReferenced_nonNull_native = *(v54 + 8);
          v56 = *(v54 + 16);
          a1 = *(v54 + 24);
          v12 = *(v54 + 32);
        }

        else
        {
          v55 = 0;
          isUniquelyReferenced_nonNull_native = 0;
          v56 = 0;
          a1 = 0;
          v12 = 0;
        }

        v57 = v15[1].u64[0];
        if ((v57 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
          goto LABEL_72;
        }

        if (v57 >= *(v138 + 16))
        {
          goto LABEL_70;
        }

        v58 = (v137 + 5 * v57);
        if (v58[2])
        {
          *v51.i32 = v38;
        }

        else
        {
          *v51.i32 = v40;
        }

        v139 = v51;
        v144.columns[3].i64[0] = v7;
        v144.columns[1].i64[0] = v55;
        v144.columns[0].i64[0] = isUniquelyReferenced_nonNull_native;
        v143 = v56;
        v142 = a1;
        v141 = v12;
        if (v136 <= 2)
        {
          v59 = v123;
          if (v136 < 2)
          {
            v60 = &v148;
            goto LABEL_32;
          }
        }

        else
        {
          v59 = v126;
          if ((v136 - 4) >= 2)
          {
            v59 = v122;
            if (v136 != 3)
            {
              v60 = &v139.i8[8];
LABEL_32:
              v59 = *(v60 - 32);
            }
          }
        }

        v61 = *v134;
        v62 = v134[1];
        v63 = *v58;
        v64 = v58[1];
        v65 = *v59;
        if (v134[2])
        {
          *v51.i32 = v38;
        }

        else
        {
          *v51.i32 = v40;
        }

        v140 = v51;
        v66 = v15[4].f32[0];
        v67 = v131;
        sub_23A8ECC7C(v131);
        v144.columns[2].i64[0] = v47;
        if (v65 <= 0.0)
        {
          v130(v67, v132);
          v77 = 100.0;
        }

        else
        {
          v68 = v65;
          v69 = v65 * v66;
          v70 = v124;
          sub_23AA0C044();
          sub_23AA0C014();
          v72 = v71;
          v73 = v70;
          v74 = v132;
          v75 = v130;
          v130(v73, v132);
          v75(v67, v74);
          v16 = 1120403456;
          *v76.i64 = (v72 - v69) / v68;
          v41 = 1.0;
          v77 = 0.0;
          if (*v76.i64 > 0.0)
          {
            v78 = 1.0;
            if (*v76.i64 <= 1.0)
            {
              v78 = *v76.i64;
            }

            v79 = v78;
            v77 = v79 * 100.0;
          }
        }

        *v76.i8 = vbsl_s8(vcltz_s32(vshl_n_s32(__PAIR64__(v64, v63), 0x1FuLL)), v37, v39);
        v76.i32[2] = v139.i32[0];
        v80 = vbsl_s8(vcltz_s32(vshl_n_s32(__PAIR64__(v62, v61), 0x1FuLL)), v37, v39);
        *v82.i8 = v80;
        v81 = *v140.i32;
        v82.i64[1] = v140.u32[0];
        v83 = roundf(v77) / 100.0;
        v15[6].i32[0] = 0;
        v84 = v15->u8[0];
        v85 = v41 - v83;
        if (v15->i8[0])
        {
          v86 = -1;
        }

        else
        {
          v85 = 0.0;
          v86 = 0;
        }

        v87 = vbslq_s8(vdupq_n_s32(v86), v76, v82);
        *v88.f32 = vadd_f32(v80, vmul_n_f32(vsub_f32(*v87.i8, v80), v83));
        v88.f32[2] = v81 + (v83 * (*&v87.i32[2] - v81));
        v15[6].f32[1] = v85;
        v88.i32[3] = 0;
        v140 = v82;
        v15[2] = v82;
        v15[3] = v88;
        v139 = v88;
        v89 = v144.columns[1].i64[0];
        if (v84 == 1 && v144.columns[1].i64[0] && *(v144.columns[1].i64[0] + 16) >= 2uLL && v83 > 0.0)
        {
          v90 = v15[5];
          v145 = v144.columns[1].i64[0];
          v146 = v144.columns[0].i8[0];
          v147 = v143;
          v148 = v142;
          v149 = v141;
          v91 = sub_23A8ECDE8(&v145, v83, v120, v119, v118, v117, v121, v90);
          v12 = v128;
          v7 = v144.columns[3].i64[0];
          if (v91)
          {
            v92 = v91;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB58, &unk_23AA11BF0);
            v92 = swift_allocObject();
            v94 = v140;
            v92[1] = v125;
            v92[2] = v94;
            v92[3] = v139;
          }

          sub_23A9401BC(v89);
          v16 = 1120403456;
          a1 = v129;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB58, &unk_23AA11BF0);
          v92 = swift_allocObject();
          v93 = v140;
          v92[1] = v125;
          v92[2] = v93;
          v92[3] = v139;
          sub_23A9401BC(v89);
          a1 = v129;
          v12 = v128;
          v7 = v144.columns[3].i64[0];
        }

        sub_23A940160(v12);
        v95 = v15[7].i64[0];

        v15[7].i64[0] = v92;
        v150 = v7;
        v97 = *(v7 + 2);
        v96 = *(v7 + 3);
        if (v97 >= v96 >> 1)
        {
          sub_23A975F84(v96 > 1, v97 + 1, 1);
          v7 = v150;
        }

        *(v7 + 2) = v97 + 1;
        v98 = v133;
        sub_23A940208(v15, &v7[v135 + v97 * v133]);
        v50 += v98;
        v47 = v144.columns[2].i64[0] - 1;
        if (v144.columns[2].i64[0] == 1)
        {
          v99 = v7;

          v7 = v111;
          v36 = v115;
          goto LABEL_59;
        }
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    swift_once();
  }
}

unint64_t sub_23A93D8CC@<X0>(unsigned __int8 a1@<W0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v6 = a1;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = MEMORY[0x277D84F98];
  v7 = type metadata accessor for AnimationGraph();
  v8 = *(v7 + 40);
  v9 = sub_23AA0C064();
  (*(*(v9 - 8) + 56))(a3 + v8, 1, 1, v9);
  *(a3 + *(v7 + 44)) = &unk_284D80428;
  *a3 = a1;
  if (v6 == 3)
  {
    sub_23AA08410(a2);
  }

  else if (qword_27DFAE428 != -1)
  {
LABEL_20:
    swift_once();
  }

  v10 = 0;

  v11 = *(a3 + 40);
  v12 = MEMORY[0x277D84F90];
  while (1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(a3 + 40);
    result = sub_23A9EDF54(v10);
    v19 = v17[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v23 = v18;
    if (v17[3] < v22)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    v27 = result;
    sub_23A90DD80();
    result = v27;
    if (v23)
    {
LABEL_5:
      v13 = v17[7];
      v14 = *(v13 + 8 * result);
      *(v13 + 8 * result) = v12;

      goto LABEL_6;
    }

LABEL_13:
    v17[(result >> 6) + 8] |= 1 << result;
    *(v17[6] + 8 * result) = v10;
    *(v17[7] + 8 * result) = v12;
    v25 = v17[2];
    v21 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v21)
    {
      goto LABEL_19;
    }

    v17[2] = v26;
LABEL_6:
    ++v10;
    *(a3 + 40) = v17;
    if (v10 == 8)
    {
      return result;
    }
  }

  sub_23A908130(v22, isUniquelyReferenced_nonNull_native);
  result = sub_23A9EDF54(v10);
  if ((v23 & 1) == (v24 & 1))
  {
LABEL_12:
    if (v23)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  result = sub_23AA0DC24();
  __break(1u);
  return result;
}

uint64_t sub_23A93DB10()
{
  v1 = *(v0 + *(type metadata accessor for AnimationGraph() + 44));
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = (v1 + 34);
  v6 = 1;
  v7 = 3.4028e38;
  do
  {
    v8 = *(v5 - 2);
    v9 = *(v5 - 1);
    v10 = *v5;
    v5 += 5;
    v11 = v4 + 1;
    sub_23AA0DCB4();
    if (v12 < v7)
    {
      v3 = v4;
    }

    v6 &= v12 >= v7;
    if (v12 < v7)
    {
      v7 = v12;
    }

    ++v4;
  }

  while (v2 != v11);
  return v3;
}

uint64_t sub_23A93DC20(char **a1, uint64_t a2, __n128 a3)
{
  v5 = a1;
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_23A977EA8(v6);
  }

  v7 = *(v6 + 2);
  v23[0] = (v6 + 32);
  v23[1] = v7;
  result = sub_23AA0DBA4();
  if (result >= v7)
  {
    if (v7 >= 2)
    {
      v12 = -1;
      v13 = 1;
      v14 = (v6 + 32);
      v20 = v5;
      while (2)
      {
        v15 = *&v6[8 * v13 + 32];
        v16 = v12;
        v17 = v14;
        do
        {
          v22[0] = v15;
          v24 = *v17;
          result = sub_23A93FCF8(v22, &v24, a2, a3);
          if (v3)
          {
            v5 = v20;
            goto LABEL_18;
          }

          if ((result & 1) == 0)
          {
            break;
          }

          v18 = *v17;
          v15 = v17[1];
          *v17 = v15;
          v17[1] = v18;
          --v17;
        }

        while (!__CFADD__(v16++, 1));
        ++v13;
        ++v14;
        --v12;
        v5 = v20;
        if (v13 != v7)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v9 = result;
    v10 = v7 >> 1;
    if (v7 >= 2)
    {
      v11 = sub_23AA0D324();
      *(v11 + 16) = v10;
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

    v22[0] = v11 + 32;
    v22[1] = v10;
    sub_23A94026C(v22, a3, &v24, v23, v9, a2);
    *(v11 + 16) = 0;
  }

LABEL_18:
  *v5 = v6;
  return result;
}

uint64_t sub_23A93DDA4()
{
  v1 = *(v0 + 40);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = *(v0 + 40);
  result = swift_bridgeObjectRetain_n();
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (v4)
  {
LABEL_10:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(v1 + 56) + v11);
    v13 = *(v12 + 16);
    v14 = v9[2];
    v15 = v14 + v13;
    if (__OFADD__(v14, v13))
    {
      goto LABEL_24;
    }

    v16 = *(*(v1 + 56) + v11);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v15 > v9[3] >> 1)
    {
      if (v14 <= v15)
      {
        v18 = v14 + v13;
      }

      else
      {
        v18 = v14;
      }

      v9 = sub_23A939084(isUniquelyReferenced_nonNull_native, v18, 1, v9);
    }

    v4 &= v4 - 1;
    if (*(v12 + 16))
    {
      v19 = (v9[3] >> 1) - v9[2];
      result = type metadata accessor for LineAnimation();
      v20 = *(result - 8);
      if (v19 < v13)
      {
        goto LABEL_26;
      }

      v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
      v22 = *(v20 + 72);
      swift_arrayInitWithCopy();

      if (v13)
      {
        v23 = v9[2];
        v24 = __OFADD__(v23, v13);
        v25 = v23 + v13;
        if (v24)
        {
          goto LABEL_27;
        }

        v9[2] = v25;
      }
    }

    else
    {

      if (v13)
      {
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v9;
    }

    v4 = *(v1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_23A93DF80(float32x4_t *a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  v98 = a9;
  v95 = a5;
  v96 = a8;
  v93 = a6;
  v94 = a7;
  v92 = a4;
  v90 = a3;
  v89 = a2;
  v86 = type metadata accessor for LineAnimation();
  v10 = *(v86 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v86);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v73 - v15;
  MEMORY[0x28223BE20](v17);
  v74 = &v73 - v18;
  MEMORY[0x28223BE20](v19);
  v97 = &v73 - v20;
  MEMORY[0x28223BE20](v21);
  v91 = &v73 - v22;
  result = sub_23A93DDA4();
  v85 = *(result + 16);
  if (v85)
  {
    v24 = 0;
    v25 = v98;
    v84 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v93, v89.f32[0]), v94, *v89.f32, 1), v96, v89, 2), v98, v89, 3);
    v83 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v93, v90.f32[0]), v94, *v90.f32, 1), v96, v90, 2), v98, v90, 3);
    v82 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v93, v92.f32[0]), v94, *v92.f32, 1), v96, v92, 2), v98, v92, 3);
    v81 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v93, v95.f32[0]), v94, *v95.f32, 1), v96, v95, 2), v98, v95, 3);
    v80 = a1[1].i64[0];
    v93.i64[0] = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v79 = result + v93.i64[0];
    v26 = MEMORY[0x277D84F90];
    v76 = a1 + 2;
    v27 = xmmword_23AA11C10;
    v73 = xmmword_23AA11C10;
    v78 = v10;
    v77 = result;
    while (v24 < *(result + 16))
    {
      v28 = *(v10 + 72);
      v92.i64[0] = v24;
      v96.i64[0] = v28;
      v29 = v91;
      v98 = v25;
      v95 = v27;
      sub_23A9400FC(v79 + v28 * v24, v91);
      v30 = *(v29 + 48);
      v31 = vaddq_f32(v81, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v84, COERCE_FLOAT(*(v29 + 32))), v83, *(v29 + 32), 1), v82, *(v29 + 32), 2));
      v94 = v31;
      v31.i32[3] = v95.i32[3];
      v32 = vaddq_f32(v81, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v84, v30.f32[0]), v83, *v30.f32, 1), v82, v30, 2));
      v90 = v32;
      v32.i32[3] = v98.i32[3];
      v88 = v31;
      v31.i32[2] = 0;
      v98 = v31;
      v87 = v32;
      v32.i32[2] = 0;
      v95 = v32;
      v33 = *v29;
      v34 = *(v29 + 8);
      v35 = *(v29 + 16);
      v36 = *(v29 + 64);
      v89 = *(v29 + 80);
      v37 = *(v29 + 104);
      v38 = *(v86 + 60);
      v39 = *(v29 + 96);
      v40 = v97;
      sub_23A8ECC7C(v97 + v38);
      v41 = sub_23AA0C064();
      (*(*(v41 - 8) + 56))(v40 + v38, 0, 1, v41);
      *v40 = v33;
      *(v40 + 8) = v34;
      *(v40 + 16) = v35;
      v42 = v95;
      *(v40 + 32) = v98;
      *(v40 + 48) = v42;
      *(v40 + 64) = v36;
      *(v40 + 80) = v89;
      *(v40 + 96) = v39;
      *(v40 + 104) = v37;
      v43 = MEMORY[0x277D84F90];
      *(v40 + 112) = MEMORY[0x277D84F90];
      v44 = v80;
      if (v80)
      {
        v99 = v43;
        sub_23A975EA4(0, v80, 0);
        v43 = v99;
        v45 = *(v99 + 16);
        v46 = v76;
        do
        {
          v47 = *v46;
          v99 = v43;
          v48 = *(v43 + 24);
          if (v45 >= v48 >> 1)
          {
            v89 = v47;
            sub_23A975EA4((v48 > 1), v45 + 1, 1);
            v47.i64[0] = v89.i64[0];
            v43 = v99;
          }

          *(v43 + 16) = v45 + 1;
          *(v43 + 8 * v45 + 32) = v47.i64[0];
          ++v46;
          ++v45;
          --v44;
        }

        while (v44);
      }

      type metadata accessor for CDTPolygon();
      swift_initStackObject();
      v49 = sub_23A99A810(v43);
      type metadata accessor for CDTEdge();
      swift_allocObject();
      v50 = sub_23A947224(*v94.i64, *v90.i64);
      v51 = sub_23A99AA3C();
      v52 = v92.i64[0];
      if (v51 & 1) != 0 && (sub_23A8EDA7C(v49, 0.00000011921, v50[2]) & 1) != 0 && (sub_23A8EDA7C(v49, 0.00000011921, v50[3]))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB58, &unk_23AA11BF0);
        v53 = swift_allocObject();
        v54 = v98;
        *(v53 + 16) = v73;
        *(v53 + 32) = v54;
        *(v53 + 48) = v95;
        v55 = v97;
        *(v97 + 112) = v53;
        sub_23A9400FC(v55, v74);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_23A939084(0, v26[2] + 1, 1, v26);
        }

        v10 = v78;
        v57 = v26[2];
        v56 = v26[3];
        if (v57 >= v56 >> 1)
        {
          v26 = sub_23A939084(v56 > 1, v57 + 1, 1, v26);
        }

        sub_23A940160(v91);
        v26[2] = v57 + 1;
        sub_23A940208(v74, v26 + v93.i64[0] + v57 * v96.i64[0]);
      }

      else
      {
        result = sub_23A99AD2C(v50);
        v95.i64[0] = *(result + 16);
        if (v95.i64[0])
        {
          v89.i64[0] = v50;
          v90.i64[0] = v49;
          v58 = 0;
          v94.i64[0] = result + 32;
          v59 = MEMORY[0x277D84F90];
          v60 = result;
          while (v58 < *(v60 + 16))
          {
            v61 = *(v94.i64[0] + 8 * v58);
            sub_23A9400FC(v97, v16);
            v62 = *(v61 + 16);
            if (v62)
            {
              v98.i64[0] = v26;
              v63 = v16;
              v64 = v60;
              v99 = v59;

              sub_23A975DC0(0, v62, 0);
              v66 = v99;
              v67 = *(v99 + 16);
              v68 = 32;
              do
              {
                *&v65 = *(v61 + v68);
                v99 = v66;
                v69 = *(v66 + 24);
                if (v67 >= v69 >> 1)
                {
                  v75 = v65;
                  sub_23A975DC0((v69 > 1), v67 + 1, 1);
                  v65 = v75;
                  v66 = v99;
                }

                *(v66 + 16) = v67 + 1;
                *(v66 + 16 * v67 + 32) = v65;
                v68 += 8;
                ++v67;
                --v62;
              }

              while (v62);

              v59 = MEMORY[0x277D84F90];
              v60 = v64;
              v16 = v63;
              v26 = v98.i64[0];
            }

            else
            {
              v66 = v59;
            }

            v70 = *(v16 + 14);

            *(v16 + 14) = v66;
            sub_23A9400FC(v16, v13);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v26 = sub_23A939084(0, v26[2] + 1, 1, v26);
            }

            v72 = v26[2];
            v71 = v26[3];
            if (v72 >= v71 >> 1)
            {
              v26 = sub_23A939084(v71 > 1, v72 + 1, 1, v26);
            }

            ++v58;
            v26[2] = v72 + 1;
            sub_23A940208(v13, v26 + v93.i64[0] + v72 * v96.i64[0]);
            result = sub_23A940160(v16);
            if (v58 == v95.i64[0])
            {

              sub_23A940160(v91);
              v10 = v78;
              v52 = v92.i64[0];
              goto LABEL_3;
            }
          }

          __break(1u);
          break;
        }

        sub_23A940160(v91);

        v10 = v78;
      }

LABEL_3:
      v24 = v52 + 1;
      sub_23A940160(v97);
      result = v77;
      v27 = v88;
      v25 = v87;
      if (v24 == v85)
      {

        return v26;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

void *sub_23A93E81C(uint64_t a1, uint64_t a2, int a3)
{
  v80 = type metadata accessor for LineAnimation();
  v7 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v70 - v11);
  MEMORY[0x28223BE20](v13);
  v16 = (&v70 - v15);
  if (*(a2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_type) != 3)
  {
    return MEMORY[0x277D84F90];
  }

  v76.i64[0] = v3;
  *&v72 = v14;
  v17 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions;
  v83 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions);
  v74 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition;
  v18 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition);
  v73 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation;
  v19 = *(a1 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation);
  v84 = xmmword_23AA11AF0;
  *v20.i64 = MEMORY[0x23EE8FF80](v18, v19);
  v81 = v21;
  v82 = v20;
  v78 = v23;
  v79 = v22;
  v77 = *(a2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions);
  v24 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition;
  v25 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation;
  *v26.i64 = MEMORY[0x23EE8FF80](*(a2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition), *(a2 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation), v84);
  sub_23A902044(a3, v85, v83, v82, v81, v79, v78, v77, v26, v27, v28, v29);
  if (v86)
  {
    return MEMORY[0x277D84F90];
  }

  v30 = vdivq_f32(v85[1], *(a1 + v17));
  v30.i32[3] = 0;
  v82 = v85[0];
  v83 = v30;
  *v31.i64 = MEMORY[0x23EE8FF80](*(a2 + v24), *(a2 + v25), v84);
  v82 = vaddq_f32(v34, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v31, v82.f32[0]), v32, *v82.f32, 1), v33, v82, 2));
  v35 = v74;
  v36 = v73;
  *v87.columns[0].i64 = MEMORY[0x23EE8FF80](*(a1 + v74), *(a1 + v73), v84);
  v88 = __invert_f4(v87);
  *v37.i64 = MEMORY[0x23EE8FF80](vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v88.columns[0], v82.f32[0]), v88.columns[1], *v82.f32, 1), v88.columns[2], v82, 2), v88.columns[3], v82, 3), xmmword_23AA11AE0, v83);
  v79 = v37;
  v81 = v38;
  v82 = v39;
  v83 = v40;
  *v89.columns[0].i64 = MEMORY[0x23EE8FF80](*(a2 + v24), *(a2 + v25), v84);
  v90 = __invert_f4(v89);
  v70 = v90.columns[0];
  v71 = v90.columns[1];
  v77 = v90.columns[2];
  v78 = v90.columns[3];
  MEMORY[0x23EE8FF80](*(a1 + v35), *(a1 + v36), v84);
  v84 = v41;
  v42 = sub_23A93DDA4();
  v43 = *(v42 + 16);
  if (!v43)
  {

    return MEMORY[0x277D84F90];
  }

  v44 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v70, v84.n128_f32[0]), v71, v84.n128_u64[0], 1), v77, v84, 2), v78, v84, 3);
  v44.i32[3] = 1.0;
  v79 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_23AA12200, v79.f32[0]), xmmword_23AA12220, *v79.f32, 1), xmmword_23AA12250, v79, 2), v44, v79, 3);
  v78 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_23AA12200, v81.n128_f32[0]), xmmword_23AA12220, v81.n128_u64[0], 1), xmmword_23AA12250, v81, 2), v44, v81, 3);
  v77 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_23AA12200, v82.f32[0]), xmmword_23AA12220, *v82.f32, 1), xmmword_23AA12250, v82, 2), v44, v82, 3);
  v76 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_23AA12200, v83.f32[0]), xmmword_23AA12220, *v83.f32, 1), xmmword_23AA12250, v83, 2), v44, v83, 3);
  v45 = (*(v72 + 80) + 32) & ~*(v72 + 80);
  v71.i64[0] = v42;
  v74 = v45;
  v46 = v42 + v45;
  v73 = *(v72 + 72);
  v47 = MEMORY[0x277D84F90];
  v72 = xmmword_23AA11C10;
  v75 = v16;
  do
  {
    v82.i64[0] = v43;
    sub_23A9400FC(v46, v16);
    v48 = v16[3];
    v49 = vaddq_f32(v76, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v79, COERCE_FLOAT(*&v16[2])), v78, *v16[2].f32, 1), v77, v16[2], 2));
    v49.i32[3] = v84.n128_i32[3];
    v84 = v49;
    v50 = vaddq_f32(v76, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v79, v48.f32[0]), v78, *v48.f32, 1), v77, v48, 2));
    v50.i32[3] = v83.i32[3];
    v83 = v50;
    v51 = v16->i8[0];
    v52 = v16->i64[1];
    v53 = v16;
    v54 = v47;
    v55 = v9;
    v56 = v53[1].i64[0];
    v57 = v53[4].i32[0];
    v81 = v53[5];
    v58 = v53[6].i8[8];
    v59 = *(v80 + 60);
    v60 = v53[6].i64[0];
    sub_23A8ECC7C(v12 + v59);
    v61 = sub_23AA0C064();
    (*(*(v61 - 8) + 56))(v12 + v59, 0, 1, v61);
    v12->n128_u8[0] = v51;
    v12->n128_u64[1] = v52;
    v12[1].n128_u64[0] = v56;
    v9 = v55;
    v47 = v54;
    v62 = v83;
    v12[2] = v84;
    v12[3] = v62;
    v12[4].n128_u32[0] = v57;
    v12[5] = v81;
    v12[6].n128_u64[0] = v60;
    v12[6].n128_u8[8] = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB58, &unk_23AA11BF0);
    v63 = swift_allocObject();
    v64 = v83;
    v65 = v84;
    v63[1] = v72;
    v63[2] = v65;
    v63[3] = v64;
    v12[7].n128_u64[0] = v63;
    sub_23A9400FC(v12, v9);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v47 = sub_23A939084(0, v54[2] + 1, 1, v54);
    }

    v67 = v47[2];
    v66 = v47[3];
    v16 = v75;
    if (v67 >= v66 >> 1)
    {
      v47 = sub_23A939084(v66 > 1, v67 + 1, 1, v47);
    }

    sub_23A940160(v16);
    v47[2] = v67 + 1;
    v68 = v73;
    sub_23A940208(v9, v47 + v74 + v67 * v73);
    sub_23A940160(v12);
    v46 += v68;
    v43 = v82.i64[0] - 1;
  }

  while (v82.i64[0] != 1);

  return v47;
}

uint64_t sub_23A93EE14@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = *(type metadata accessor for AnimationGraph() + 40);
  sub_23A8ED91C(v1 + v7, v6);
  v8 = sub_23AA0C064();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_23A8ED8B4(v6);
  sub_23AA0C044();
  sub_23A8ED8B4(v1 + v7);
  (*(v9 + 16))(v1 + v7, a1, v8);
  return (*(v9 + 56))(v1 + v7, 0, 1, v8);
}

void sub_23A93EF80(uint64_t a1, int64_t a2, int a3, float32x4_t a4)
{
  v6 = v4;
  v32 = a4;
  LODWORD(v7) = a3;
  v10 = type metadata accessor for LineAnimation();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v4 + 5);
  if (!*(v15 + 16))
  {
    return;
  }

  v16 = sub_23A9EDF54(a1);
  if ((v17 & 1) == 0)
  {
    i = 0;
    v20 = 1;
    if (*(v15 + 16))
    {
      goto LABEL_17;
    }

    return;
  }

  v31 = v7;
  v5 = *(*(v15 + 56) + 8 * v16);
  v7 = *(v5 + 2);
  if (!v7)
  {
    i = 0;
    v20 = 1;
    goto LABEL_16;
  }

  v30 = v6;
  v6 = &v5[(*(v11 + 80) + 32) & ~*(v11 + 80)];

  for (i = 0; i != v7; ++i)
  {
    if (i >= *(v5 + 2))
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      swift_once();
LABEL_22:
      v25 = off_27DFB17B0;
      swift_beginAccess();
      if (*(v25 + 64) != 1)
      {
        goto LABEL_26;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_48;
      }

      while (i < *(a2 + 16))
      {
LABEL_30:
        v14[a2 + v11] = v7 & 1;
LABEL_31:
        v26 = *v6;
        if (v26 > 2)
        {
          if (v26 - 4 >= 2)
          {
            if (v26 == 3)
            {
              v25 += 21;
            }

            else
            {
              v25 += 20;
            }

            goto LABEL_37;
          }

LABEL_36:
          v25 += 22;
          goto LABEL_37;
        }

        if (v26 < 2)
        {
          goto LABEL_36;
        }

        v25 += 19;
LABEL_37:
        swift_beginAccess();
        v27 = *v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a2 = sub_23A975CC4(a2);
        }

        if (i < *(a2 + 16))
        {
          sub_23A8ED604(v32, v27);

          v28 = *(v6 + 5);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v33 = *(v6 + 5);
          sub_23A9DA53C(a2, a1, isUniquelyReferenced_nonNull_native);

          *(v6 + 5) = v33;
          return;
        }

        __break(1u);
LABEL_48:
        a2 = sub_23A975CC4(a2);
      }

      __break(1u);
LABEL_26:
      if (i >= *(a2 + 16))
      {
        __break(1u);
      }

      else
      {
        if (v5[v11])
        {
          goto LABEL_31;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_29;
        }
      }

      a2 = sub_23A975CC4(a2);
LABEL_29:
      if (i >= *(a2 + 16))
      {
        __break(1u);
        return;
      }

      goto LABEL_30;
    }

    sub_23A9400FC(&v6[*(v11 + 72) * i], v14);
    if (*(v14 + 1) == a1)
    {
      v19 = *(v14 + 2);
      sub_23A940160(v14);
      if (v19 == a2)
      {
        v20 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      sub_23A940160(v14);
    }
  }

  i = 0;
  v20 = 1;
LABEL_14:

  v6 = v30;
LABEL_16:
  LOBYTE(v7) = v31;
  if (!*(v15 + 16))
  {
    return;
  }

LABEL_17:
  v21 = sub_23A9EDF54(a1);
  if (v22 & 1) == 0 || (v20)
  {
    return;
  }

  a2 = *(*(v15 + 56) + 8 * v21);
  if (i >= *(a2 + 16))
  {
    goto LABEL_45;
  }

  v14 = ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v5 = &v14[a2];
  v11 = *(v11 + 72) * i;
  if (v14[a2 + v11] != (v7 & 1))
  {
    v23 = qword_27DFAE518;
    v24 = *(*(v15 + 56) + 8 * v21);

    if (v23 == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_46;
  }
}

uint64_t sub_23A93F33C(float32x4_t a1)
{
  v121 = a1;
  v112 = type metadata accessor for LineAnimation();
  v108 = *(v112 - 8);
  v3 = *(v108 + 64);
  MEMORY[0x28223BE20](v112);
  v5 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v104 = &v102 - v7;
  MEMORY[0x28223BE20](v8);
  v115 = &v102 - v9;
  v10 = *(v1 + 24);
  v11 = type metadata accessor for AnimationGraph();
  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v14 = *(v11 + 44);
  v15 = *(v1 + v14);
  if (v10 >= *(v15 + 16))
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v16 = (v15 + 5 * v10);
  v17 = v16[32];
  v18 = v16[33];
  v19 = v16[34];
  LODWORD(v12) = -1.0;
  if (v17)
  {
    *&v13 = 1.0;
  }

  else
  {
    *&v13 = -1.0;
  }

  v124 = v13;
  if (v18)
  {
    *&v13 = 1.0;
  }

  else
  {
    *&v13 = -1.0;
  }

  if (v19)
  {
    *&v12 = 1.0;
  }

  v122 = v12;
  v123 = v13;
  v114 = v1;
  v20 = *(v1 + 8);
  v21 = *(v20 + 16);
  v103 = v14;
  if (!v21)
  {

    v22 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v22 = sub_23A9EDAA0(v21, 0);
  v23 = sub_23A9F4494(v125, v22 + 4, v21, v20);
  v2 = v125[4];
  swift_bridgeObjectRetain_n();
  sub_23A8CA904();
  if (v23 == v21)
  {
    v14 = v103;
LABEL_15:
    v24.n128_u64[0] = __PAIR64__(v123, v124);
    v24.n128_u64[1] = v122;
    v125[0] = v22;
    v25 = v114;
    v2 = 0;
    sub_23A93DC20(v125, v114, v24);

    v26 = v125[0];
    v105 = v125[0][2];
    if (!v105)
    {
    }

    v27 = 0;
    v106 = v125[0] + 4;
    v28 = vmul_f32(*v121.f32, 0x3F0000003F000000);
    v111 = vmuls_lane_f32(0.5, v121, 2);
    v110 = vneg_f32(v28);
    v29 = -(v121.f32[2] * 0.5);
    __asm { FMOV            V15.2S, #1.0 }

    v102 = v125[0];
    while (v27 < v26[2])
    {
      v35 = v106[v27];
      if ((v35 & 0x8000000000000000) != 0)
      {
        goto LABEL_91;
      }

      v36 = *(v25 + v14);
      if (v35 >= *(v36 + 2))
      {
        goto LABEL_92;
      }

      v109 = v27;
      v118 = v35;
      v37 = 5 * v35;
      v38 = &v36[5 * v35];
      v39 = v38[32];
      v40 = v38[33];
      v2 = v38[34];
      v41 = v38[36];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_23A975CB0(v36);
      }

      v42 = v36 + 32;
      v43 = &v36[v37 + 32];
      *v43 = v39;
      v43[1] = v40;
      v43[2] = v2;
      v43[3] = 1;
      v43[4] = v41;
      v44 = v114;
      *(v114 + v14) = v36;
      v45 = *(v44 + 8);
      if (!*(v45 + 16))
      {
      }

      v46 = sub_23A9EDF54(v118);
      if ((v47 & 1) == 0)
      {
      }

      v48 = *(*(v45 + 56) + 8 * v46);
      v49 = *(v48 + 16);
      if (v49)
      {
        if (v39)
        {
          v50 = 1.0;
        }

        else
        {
          v50 = -1.0;
        }

        if (v40)
        {
          v51 = 1.0;
        }

        else
        {
          v51 = -1.0;
        }

        if (v2)
        {
          v52 = 1.0;
        }

        else
        {
          v52 = -1.0;
        }

        v53.i64[0] = __PAIR64__(LODWORD(v51), LODWORD(v50));
        v53.i64[1] = LODWORD(v52);
        v116 = v53;
        v54 = v48 + 32;
        v55 = (vabds_f32(v50, *&v124) + vabds_f32(v51, *&v123)) + vabds_f32(v52, *&v122);
        v107 = v48;
        v117 = v49;

        v56 = v117;
        v2 = 0;
        v57 = v114;
        v58 = 0x27DFAE000;
        v59 = v118;
        v113 = v36 + 32;
        while (1)
        {
          v60 = *(v54 + 8 * v2);
          if (v60 < 0)
          {
            break;
          }

          if (v60 >= *(v36 + 2))
          {
            goto LABEL_86;
          }

          v61 = &v42[5 * v60];
          if ((v61[3] & 1) == 0)
          {
            if (*v61)
            {
              v62 = 1.0;
            }

            else
            {
              v62 = -1.0;
            }

            if (v61[1])
            {
              v63 = 1.0;
            }

            else
            {
              v63 = -1.0;
            }

            if (v61[2])
            {
              v64 = 1.0;
            }

            else
            {
              v64 = -1.0;
            }

            v65.i64[0] = __PAIR64__(LODWORD(v63), LODWORD(v62));
            v65.i64[1] = LODWORD(v64);
            v66 = vabds_f32(v63, *&v123) + vabds_f32(v62, *&v124);
            v67 = v122;
            if (v55 >= (vabds_f32(v64, *&v122) + v66))
            {
              v68 = v59;
              v69 = v116;
            }

            else
            {
              v68 = *(v54 + 8 * v2);
              v60 = v59;
              v69 = v65;
              v65 = v116;
            }

            v70 = vsubq_f32(v65, v69);
            v71 = fabsf(v70.f32[2]);
            if (v71 <= 1.0)
            {
              *&v67 = v71;
            }

            else
            {
              *&v67 = 1.0;
            }

            if (*(v58 + 1104) != -1)
            {
              v121 = v65;
              v120 = v67;
              v119 = v70;
              swift_once();
              v70 = v119;
              v67 = v120;
              v65 = v121;
              v56 = v117;
              v59 = v118;
            }

            if (v60 > 0x7FFFFFFF)
            {
              goto LABEL_87;
            }

            if (v68 > 0x7FFFFFFF)
            {
              goto LABEL_88;
            }

            v72 = qword_27DFC06D0;
            if (*(qword_27DFC06D0 + 16))
            {
              v121 = v65;
              v120 = v67;
              v119 = v70;
              v73 = sub_23A9EE050(__PAIR64__(v68, v60));
              v56 = v117;
              v59 = v118;
              if (v74)
              {
                if (v60 >= *(v36 + 2))
                {
                  goto LABEL_89;
                }

                v75 = vabs_f32(*v119.f32);
                *&v76 = vbsl_s8(vcgt_f32(v75, _D15), _D15, v75);
                *(&v76 + 1) = v120;
                v120 = v76;
                v77 = (vabds_f32(*&v122, v121.f32[2]) + (vabds_f32(*&v124, v121.f32[0]) + vabds_f32(*&v123, v121.f32[1]))) * 0.5;
                v78 = *(*(v72 + 56) + v73);
                v79 = &v42[5 * v60];
                *v80.f32 = vbsl_s8(vcltz_s32(vshl_n_s32(__PAIR64__(v79[1], *v79), 0x1FuLL)), v28, v110);
                v81 = v111;
                if (!v79[2])
                {
                  v81 = v29;
                }

                v80.i64[1] = LODWORD(v81);
                v121 = v80;
                v82 = *(v112 + 60);
                v83 = sub_23AA0C064();
                v84 = v54;
                v85 = v115;
                (*(*(v83 - 8) + 56))(v115 + v82, 1, 1, v83);
                *v85 = 0;
                *(v85 + 8) = v60;
                *(v85 + 16) = v68;
                v86 = v121;
                *(v85 + 32) = v121;
                *(v85 + 48) = v86;
                *(v85 + 64) = v77;
                *(v85 + 80) = v120;
                *(v85 + 96) = 0x3F80000000000000;
                *(v85 + 104) = v78;
                *(v85 + 112) = MEMORY[0x277D84F90];
                v54 = v84;
                v87 = *(v57 + 40);
                if (*(v87 + 16))
                {
                  v88 = sub_23A9EDF54(v60);
                  if (v89)
                  {
                    v90 = *(*(v87 + 56) + 8 * v88);
                    v91 = *(v90 + 16);
                    v121.i64[0] = v90;

                    if (v91)
                    {
                      v92 = v121.i64[0] + ((*(v108 + 80) + 32) & ~*(v108 + 80));
                      v93 = *(v108 + 72);
                      do
                      {
                        sub_23A9400FC(v92, v5);
                        if (*(v5 + 1) == v60)
                        {
                          v94 = *(v5 + 2);
                          sub_23A940160(v5);
                          _ZF = v94 == v68;
                          v54 = v84;
                          if (_ZF)
                          {

                            goto LABEL_83;
                          }
                        }

                        else
                        {
                          sub_23A940160(v5);
                        }

                        v92 += v93;
                        --v91;
                      }

                      while (v91);
                    }

                    v57 = v114;
                    v121.i64[0] = sub_23A93CB90(v125, v60);
                    if (*v95)
                    {
                      v96 = v95;
                      sub_23A9400FC(v115, v104);
                      v97 = *v96;
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      *v96 = v97;
                      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                      {
                        v97 = sub_23A939084(0, v97[2] + 1, 1, v97);
                        *v96 = v97;
                      }

                      v100 = v97[2];
                      v99 = v97[3];
                      if (v100 >= v99 >> 1)
                      {
                        v97 = sub_23A939084(v99 > 1, v100 + 1, 1, v97);
                        *v96 = v97;
                      }

                      v97[2] = v100 + 1;
                      sub_23A940208(v104, v97 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v100);
                      (v121.i64[0])(v125, 0);
LABEL_83:
                      v57 = v114;
                    }

                    else
                    {
                      (v121.i64[0])(v125, 0);
                    }
                  }
                }

                sub_23A940160(v115);
                v58 = 0x27DFAE000uLL;
                v59 = v118;
                v56 = v117;
                v42 = v113;
              }
            }
          }

          v2 = (v2 + 1);
          if (v2 == v56)
          {

            v14 = v103;
            v26 = v102;
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
        break;
      }

LABEL_18:
      v27 = v109 + 1;
      v25 = v114;
      if (v109 + 1 == v105)
      {
      }
    }

    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

LABEL_95:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_23A93FCF8(unint64_t *a1, unint64_t *a2, uint64_t a3, __n128 a4)
{
  v5 = *a1;
  v6 = *a2;
  result = type metadata accessor for AnimationGraph();
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v8 = *(a3 + *(result + 44));
  v9 = *(v8 + 16);
  if (v5 >= v9)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 >= v9)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v10 = v8 + 32;
  v11 = (v10 + 5 * v5);
  v12 = (v10 + 5 * v6);
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  v16 = -1.0;
  if (*v11)
  {
    v17 = 1.0;
  }

  else
  {
    v17 = -1.0;
  }

  if (v11[1])
  {
    v18 = 1.0;
  }

  else
  {
    v18 = -1.0;
  }

  if (v11[2])
  {
    v19 = 1.0;
  }

  else
  {
    v19 = -1.0;
  }

  if (v13)
  {
    v20 = 1.0;
  }

  else
  {
    v20 = -1.0;
  }

  if (v14)
  {
    v21 = 1.0;
  }

  else
  {
    v21 = -1.0;
  }

  if (v15)
  {
    v16 = 1.0;
  }

  return (vabds_f32(v19, a4.n128_f32[2]) + (vabds_f32(v18, a4.n128_f32[1]) + vabds_f32(v17, a4.n128_f32[0]))) < ((vabds_f32(v20, a4.n128_f32[0]) + vabds_f32(v21, a4.n128_f32[1])) + vabds_f32(v16, a4.n128_f32[2]));
}

uint64_t sub_23A93FE9C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_23A9DC7F8(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF6D0, qword_23AA145D8);
  result = swift_arrayDestroy();
  *a5 = v6;
  return result;
}

uint64_t sub_23A93FF00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF6C8, &qword_23AA145D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23AA14460;
  *(inited + 32) = 0x100000000;
  *(inited + 40) = 3;
  *(inited + 48) = 1;
  *(inited + 56) = 3;
  *(inited + 64) = 0x500000004;
  *(inited + 72) = 3;
  *(inited + 80) = 0x400000005;
  *(inited + 88) = 3;
  *(inited + 96) = 0x200000001;
  *(inited + 104) = 0;
  *(inited + 112) = 0x100000002;
  *(inited + 120) = 0;
  *(inited + 128) = 0x600000005;
  *(inited + 136) = 0;
  *(inited + 144) = 0x500000006;
  *(inited + 152) = 0;
  *(inited + 160) = 0x500000001;
  *(inited + 168) = 0;
  *(inited + 176) = 0x100000005;
  *(inited + 184) = 0;
  *(inited + 192) = 0x600000002;
  *(inited + 200) = 0;
  *(inited + 208) = 0x200000006;
  *(inited + 216) = 0;
  *(inited + 224) = 0x300000002;
  *(inited + 232) = 1;
  *(inited + 240) = 0x200000003;
  *(inited + 248) = 1;
  *(inited + 256) = 0x700000006;
  *(inited + 264) = 1;
  *(inited + 272) = 0x600000007;
  *(inited + 280) = 1;
  *(inited + 288) = 0x300000000;
  *(inited + 296) = 2;
  *(inited + 304) = 3;
  *(inited + 312) = 2;
  *(inited + 320) = 0x400000000;
  *(inited + 328) = 2;
  *(inited + 336) = 4;
  *(inited + 344) = 2;
  *(inited + 352) = 0x700000003;
  *(inited + 360) = 2;
  *(inited + 368) = 0x300000007;
  *(inited + 376) = 2;
  *(inited + 384) = 0x700000004;
  *(inited + 392) = 2;
  *(inited + 400) = 0x400000007;
  *(inited + 408) = 2;
  v1 = sub_23A9DC900(inited);
  result = swift_setDeallocating();
  qword_27DFC06D0 = v1;
  return result;
}

uint64_t sub_23A9400FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LineAnimation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A940160(uint64_t a1)
{
  v2 = type metadata accessor for LineAnimation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23A9401BC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23A940208(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LineAnimation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A94026C(uint64_t result, __n128 a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v101 = result;
  v10 = a4[1];
  v103 = a2;
  if (v10 < 1)
  {
    v14 = MEMORY[0x277D84F90];
LABEL_110:
    v7 = *v101;
    if (*v101)
    {
      v8 = v6;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_142;
      }

      goto LABEL_112;
    }

    goto LABEL_151;
  }

  v11 = 0;
  v12 = a2.n128_f32[1];
  v13 = a2.n128_f32[2];
  v14 = MEMORY[0x277D84F90];
  while (1)
  {
    v15 = v11++;
    if (v11 < v10)
    {
      v16 = *a4;
      v17 = *(*a4 + 8 * v11);
      v104 = *(*a4 + 8 * v15);
      v105 = v17;
      result = sub_23A93FCF8(&v105, &v104, a6, a2);
      if (v6)
      {
      }

      v18 = result;
      v7 = (v15 + 2);
      v19 = (v16 + 8 * v15 + 16);
      while (v10 != v7)
      {
        v20 = *v19;
        v104 = *(v19 - 1);
        v105 = v20;
        result = sub_23A93FCF8(&v105, &v104, a6, v103);
        v7 = (v7 + 1);
        ++v19;
        if ((v18 ^ result))
        {
          v10 = v7 - 1;
          break;
        }
      }

      if (v18)
      {
        if (v10 < v15)
        {
          goto LABEL_145;
        }

        if (v15 < v10)
        {
          v21 = v10 - 1;
          v22 = v15;
          do
          {
            if (v22 != v21)
            {
              v24 = *a4;
              if (!*a4)
              {
                goto LABEL_149;
              }

              v25 = *(v24 + 8 * v22);
              *(v24 + 8 * v22) = *(v24 + 8 * v21);
              *(v24 + 8 * v21) = v25;
            }
          }

          while (++v22 < v21--);
        }
      }

      v11 = v10;
    }

    v26 = a4[1];
    if (v11 >= v26)
    {
      goto LABEL_59;
    }

    if (__OFSUB__(v11, v15))
    {
      goto LABEL_141;
    }

    if (v11 - v15 >= a5)
    {
      goto LABEL_59;
    }

    if (__OFADD__(v15, a5))
    {
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
      return result;
    }

    if (v15 + a5 >= v26)
    {
      v27 = a4[1];
    }

    else
    {
      v27 = v15 + a5;
    }

    if (v27 < v15)
    {
      goto LABEL_144;
    }

    if (v11 != v27)
    {
      break;
    }

LABEL_59:
    if (v11 < v15)
    {
      goto LABEL_140;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23A938B2C(0, *(v14 + 2) + 1, 1, v14);
      v14 = result;
    }

    v7 = *(v14 + 2);
    v51 = *(v14 + 3);
    v52 = v7 + 1;
    a2 = v103;
    if (v7 >= v51 >> 1)
    {
      result = sub_23A938B2C((v51 > 1), v7 + 1, 1, v14);
      a2 = v103;
      v14 = result;
    }

    *(v14 + 2) = v52;
    v53 = &v14[16 * v7];
    *(v53 + 4) = v15;
    *(v53 + 5) = v11;
    v54 = *v101;
    if (!*v101)
    {
      goto LABEL_150;
    }

    if (v7)
    {
      while (1)
      {
        v55 = v52 - 1;
        if (v52 >= 4)
        {
          break;
        }

        if (v52 == 3)
        {
          v56 = *(v14 + 4);
          v57 = *(v14 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_79:
          if (v59)
          {
            goto LABEL_129;
          }

          v72 = &v14[16 * v52];
          v74 = *v72;
          v73 = *(v72 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_132;
          }

          v78 = &v14[16 * v55 + 32];
          v80 = *v78;
          v79 = *(v78 + 1);
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_135;
          }

          if (__OFADD__(v76, v81))
          {
            goto LABEL_136;
          }

          if (v76 + v81 >= v58)
          {
            if (v58 < v81)
            {
              v55 = v52 - 2;
            }

            goto LABEL_100;
          }

          goto LABEL_93;
        }

        v82 = &v14[16 * v52];
        v84 = *v82;
        v83 = *(v82 + 1);
        v66 = __OFSUB__(v83, v84);
        v76 = v83 - v84;
        v77 = v66;
LABEL_93:
        if (v77)
        {
          goto LABEL_131;
        }

        v85 = &v14[16 * v55];
        v87 = *(v85 + 4);
        v86 = *(v85 + 5);
        v66 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v66)
        {
          goto LABEL_134;
        }

        if (v88 < v76)
        {
          goto LABEL_3;
        }

LABEL_100:
        v8 = v55 - 1;
        if (v55 - 1 >= v52)
        {
          goto LABEL_124;
        }

        if (!*a4)
        {
          goto LABEL_147;
        }

        v93 = *&v14[16 * v8 + 32];
        v7 = *&v14[16 * v55 + 40];
        sub_23A940904((*a4 + 8 * v93), (*a4 + 8 * *&v14[16 * v55 + 32]), (*a4 + 8 * v7), v54, a6, a2);
        if (v6)
        {
        }

        if (v7 < v93)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_23A977E20(v14);
        }

        if (v8 >= *(v14 + 2))
        {
          goto LABEL_126;
        }

        v94 = &v14[16 * v8];
        *(v94 + 4) = v93;
        *(v94 + 5) = v7;
        v106 = v14;
        result = sub_23A977D94(v55);
        v14 = v106;
        v52 = *(v106 + 2);
        a2 = v103;
        if (v52 <= 1)
        {
          goto LABEL_3;
        }
      }

      v60 = &v14[16 * v52 + 32];
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_127;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_128;
      }

      v67 = &v14[16 * v52];
      v69 = *v67;
      v68 = *(v67 + 1);
      v66 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v66)
      {
        goto LABEL_130;
      }

      v66 = __OFADD__(v58, v70);
      v71 = v58 + v70;
      if (v66)
      {
        goto LABEL_133;
      }

      if (v71 >= v63)
      {
        v89 = &v14[16 * v55 + 32];
        v91 = *v89;
        v90 = *(v89 + 1);
        v66 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v66)
        {
          goto LABEL_139;
        }

        if (v58 < v92)
        {
          v55 = v52 - 2;
        }

        goto LABEL_100;
      }

      goto LABEL_79;
    }

LABEL_3:
    v10 = a4[1];
    if (v11 >= v10)
    {
      goto LABEL_110;
    }
  }

  v28 = *a4;
  v29 = *(type metadata accessor for AnimationGraph() + 44);
  v30 = v28 + 8 * v11 - 8;
  v31 = v15 - v11;
LABEL_31:
  v32 = *(v28 + 8 * v11);
  v33 = v31;
  v34 = v30;
  while ((v32 & 0x8000000000000000) == 0)
  {
    v35 = *(a6 + v29);
    v36 = *(v35 + 16);
    if (v32 >= v36)
    {
      goto LABEL_122;
    }

    v37 = *v34;
    if (*v34 >= v36)
    {
      goto LABEL_123;
    }

    v38 = v35 + 32;
    v39 = (v38 + 5 * v32);
    result = v39[1];
    v40 = (v38 + 5 * v37);
    v41 = *v40;
    v42 = v40[1];
    v43 = v40[2];
    if (*v39)
    {
      v44 = 1.0;
    }

    else
    {
      v44 = -1.0;
    }

    if (v39[1])
    {
      v45 = 1.0;
    }

    else
    {
      v45 = -1.0;
    }

    if (v39[2])
    {
      v46 = 1.0;
    }

    else
    {
      v46 = -1.0;
    }

    if (v41)
    {
      v47 = 1.0;
    }

    else
    {
      v47 = -1.0;
    }

    if (v42)
    {
      v48 = 1.0;
    }

    else
    {
      v48 = -1.0;
    }

    if (v43)
    {
      v49 = 1.0;
    }

    else
    {
      v49 = -1.0;
    }

    if ((vabds_f32(v46, v13) + (vabds_f32(v45, v12) + vabds_f32(v44, v103.n128_f32[0]))) < ((vabds_f32(v47, v103.n128_f32[0]) + vabds_f32(v48, v12)) + vabds_f32(v49, v13)))
    {
      if (!v28)
      {
        goto LABEL_146;
      }

      *v34 = v32;
      v34[1] = v37;
      --v34;
      if (!__CFADD__(v33++, 1))
      {
        continue;
      }
    }

    ++v11;
    v30 += 8;
    --v31;
    if (v11 == v27)
    {
      v11 = v27;
      goto LABEL_59;
    }

    goto LABEL_31;
  }

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
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
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
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  result = sub_23A977E20(v14);
  v14 = result;
LABEL_112:
  v106 = v14;
  v95 = *(v14 + 2);
  v96 = v103;
  if (v95 >= 2)
  {
    while (*a4)
    {
      v97 = *&v14[16 * v95];
      v98 = *&v14[16 * v95 + 24];
      sub_23A940904((*a4 + 8 * v97), (*a4 + 8 * *&v14[16 * v95 + 16]), (*a4 + 8 * v98), v7, a6, v96);
      if (v8)
      {
      }

      if (v98 < v97)
      {
        goto LABEL_137;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_23A977E20(v14);
      }

      if (v95 - 2 >= *(v14 + 2))
      {
        goto LABEL_138;
      }

      v99 = &v14[16 * v95];
      *v99 = v97;
      *(v99 + 1) = v98;
      v106 = v14;
      result = sub_23A977D94(v95 - 1);
      v14 = v106;
      v95 = *(v106 + 2);
      v96 = v103;
      if (v95 <= 1)
      {
      }
    }

    goto LABEL_148;
  }
}

uint64_t sub_23A940904(unint64_t *__src, unint64_t *a2, unint64_t *a3, unint64_t *__dst, uint64_t a5, __n128 a6)
{
  v8 = __dst;
  v9 = a3;
  v10 = a2;
  v11 = __src;
  v12 = a2 - __src;
  v13 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v13 = a2 - __src;
  }

  v14 = v13 >> 3;
  v15 = a3 - a2;
  v16 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v16 = a3 - a2;
  }

  v17 = v16 >> 3;
  if (v14 < v16 >> 3)
  {
    if (__dst != __src || &__src[v14] <= __dst)
    {
      memmove(__dst, __src, 8 * v14);
    }

    v18 = &v8[v14];
    if (v12 < 8)
    {
LABEL_10:
      v10 = v11;
LABEL_47:
      v29 = v18 - v8 + 7;
      if (v18 - v8 >= 0)
      {
        v29 = v18 - v8;
      }

      goto LABEL_49;
    }

    while (1)
    {
      if (v10 >= v9)
      {
        goto LABEL_10;
      }

      v36 = *v10;
      v35 = *v8;
      v21 = sub_23A93FCF8(&v36, &v35, a5, a6);
      if (v6)
      {
        v30 = v18 - v8 + 7;
        if (v18 - v8 >= 0)
        {
          v30 = v18 - v8;
        }

        if (v11 < v8 || v11 >= (v8 + (v30 & 0xFFFFFFFFFFFFFFF8)) || v11 != v8)
        {
          v31 = 8 * (v30 >> 3);
          v32 = v11;
          goto LABEL_53;
        }

        return 1;
      }

      if (v21)
      {
        break;
      }

      v19 = v8;
      v20 = v11 == v8++;
      if (!v20)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v11;
      if (v8 >= v18)
      {
        goto LABEL_10;
      }
    }

    v19 = v10;
    v20 = v11 == v10++;
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v11 = *v19;
    goto LABEL_13;
  }

  if (__dst != a2 || &a2[v17] <= __dst)
  {
    memmove(__dst, a2, 8 * v17);
  }

  v18 = &v8[v17];
  if (v15 < 8 || v10 <= v11)
  {
    goto LABEL_47;
  }

  v22 = -v8;
LABEL_26:
  v23 = v10 - 1;
  v24 = v18 + v22;
  --v9;
  v25 = v18;
  while (1)
  {
    v26 = *--v25;
    v36 = v26;
    v35 = *v23;
    v27 = sub_23A93FCF8(&v36, &v35, a5, a6);
    if (v6)
    {
      break;
    }

    v28 = v9 + 1;
    if (v27)
    {
      if (v28 != v10)
      {
        *v9 = *v23;
      }

      if (v18 <= v8 || (--v10, v22 = -v8, v23 <= v11))
      {
        v10 = v23;
        goto LABEL_47;
      }

      goto LABEL_26;
    }

    if (v28 != v18)
    {
      *v9 = *v25;
    }

    v24 -= 8;
    --v9;
    v18 = v25;
    if (v25 <= v8)
    {
      v18 = v25;
      goto LABEL_47;
    }
  }

  if (v24 >= 0)
  {
    v29 = v24;
  }

  else
  {
    v29 = v24 + 7;
  }

LABEL_49:
  if (v10 < v8 || v10 >= (v8 + (v29 & 0xFFFFFFFFFFFFFFF8)) || v10 != v8)
  {
    v31 = 8 * (v29 >> 3);
    v32 = v10;
LABEL_53:
    memmove(v32, v8, v31);
  }

  return 1;
}

uint64_t (*sub_23A940BCC(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_23A9410B8(v6);
  v6[9] = sub_23A940D78(v6 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_23A94111C;
}

uint64_t (*sub_23A940C70(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_23A9410E0(v6);
  v6[9] = sub_23A940F54((v6 + 4), a2, isUniquelyReferenced_nonNull_native);
  return sub_23A940D14;
}

void sub_23A940D18(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_23A940D78(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_23A9EDF54(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_23A90DD80();
      v11 = v19;
      goto LABEL_11;
    }

    sub_23A908130(v16, a3 & 1);
    v20 = *v4;
    v11 = sub_23A9EDF54(a2);
    if ((v17 & 1) == (v21 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_23AA0DC24();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v22 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v22 = 0;
  }

  *v9 = v22;
  return sub_23A940EC0;
}

void sub_23A940EC0(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 32);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_23A9DBB30(v4, v1[1], v2, v5);
    }
  }

  else if ((*a1)[4])
  {
    sub_23A90BFA4(v1[3], *v1[2]);
  }

  v6 = *v1;

  free(v1);
}

unint64_t (*sub_23A940F54(uint64_t a1, uint64_t a2, char a3))(unint64_t result)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = sub_23A9F573C(a2);
  *(a1 + 25) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_23A90E07C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_23A908698(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_23A9F573C(a2);
    if ((v15 & 1) == (v19 & 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    result = sub_23AA0DC24();
    __break(1u);
    return result;
  }

LABEL_8:
  *(a1 + 16) = v9;
  if (v15)
  {
    v20 = *(*(*v4 + 56) + 8 * v9);
  }

  else
  {
    v20 = 0;
  }

  *a1 = v20;
  return sub_23A941070;
}

unint64_t sub_23A941070(unint64_t result)
{
  v1 = *result;
  v2 = *(result + 25);
  if (*result)
  {
    v3 = **(result + 8);
    if (*(result + 25))
    {
      *(v3[7] + 8 * *(result + 16)) = v1;
    }

    else
    {
      return sub_23A9DBBCC(*(result + 16), *(result + 24), v1, v3);
    }
  }

  else if (*(result + 25))
  {
    return sub_23A90C114(*(result + 16), **(result + 8));
  }

  return result;
}

uint64_t (*sub_23A9410B8(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_23A941114;
}

uint64_t (*sub_23A9410E0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_23A941108;
}

void sub_23A941120(void **a1)
{
  v2 = *(type metadata accessor for LineAnimation() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_23A977E5C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_23A941F0C(v5);
  *a1 = v3;
}

uint64_t type metadata accessor for EdgeEntity()
{
  result = qword_27DFAF700;
  if (!qword_27DFAF700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23A941308(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v58 = sub_23AA0C184();
  v55 = *(v58 - 8);
  v10 = *(v55 + 64);
  MEMORY[0x28223BE20](v58);
  v54 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LineAnimation();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23AA0C2E4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && (a4 & 1) == 0 && (a2 & 0x100000000) == 0)
  {
    v52 = a3;
    v53 = v22;
    v51 = v20;
    *&v56[0] = sub_23A94321C(a1);

    sub_23A941120(v56);
    if (v5)
    {

      __break(1u);
      return;
    }

    v23 = *&v56[0];
    v24 = *(*&v56[0] + 16);
    if (!v24)
    {
      goto LABEL_22;
    }

    v49 = v18;
    v50 = 0;
    v25 = v52;
    v26 = *&a2;
    *&v56[0] = MEMORY[0x277D84F90];
    v52 = v4;
    sub_23A975EE4(0, v24, 0);
    v27 = v52;
    v28 = *&v56[0];
    v29 = *(v13 + 80);
    v48 = v23;
    v30 = v23 + ((v29 + 32) & ~v29);
    v31 = *(v13 + 72);
    do
    {
      sub_23A9400FC(v30, v16);
      v32 = *(*(v16 + 14) + 16);
      sub_23A940160(v16);
      *&v56[0] = v28;
      v34 = *(v28 + 16);
      v33 = *(v28 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_23A975EE4((v33 > 1), v34 + 1, 1);
        v27 = v52;
        v28 = *&v56[0];
      }

      *(v28 + 16) = v34 + 1;
      *(v28 + 8 * v34 + 32) = v32;
      v30 += v31;
      --v24;
    }

    while (v24);
    v35 = qword_27DFAF6F8;
    v36 = sub_23A946C14(v28, *(v27 + qword_27DFAF6F8));
    *(v27 + v35) = v28;

    if (qword_27DFAE490 != -1)
    {
      swift_once();
    }

    v37 = v53;
    v38 = v48;
    sub_23A998434(v48);
    v39 = qword_27DFAF6E8;
    v40 = v52;
    v42 = v49;
    v41 = v50;
    if (*(v52 + qword_27DFAF6E8))
    {
      if ((v36 & 1) == 0)
      {
        v43 = sub_23A94340C();
        v44 = v40;
        v45 = v53;
        sub_23A99620C(v44, v43, v53);
        if (v41)
        {
          (*(v42 + 8))(v45, v51);
LABEL_22:

          return;
        }

        v40 = v52;
      }
    }

    else
    {
      v46 = sub_23A94340C();
      v57 = 0;
      memset(v56, 0, sizeof(v56));
      sub_23A998954(v40, v46, v37, v56);
      if (v41)
      {

        sub_23A8EBAC4(v56);
        (*(v42 + 8))(v37, v51);
        return;
      }

      sub_23A8EBAC4(v56);
    }

    v47 = v54;
    sub_23AA0C9A4();
    sub_23AA0C114();
    (*(v55 + 8))(v47, v58);
    REMeshComponentGetComponentType();
    *(v40 + v39) = REEntityGetComponentByClass();
    sub_23A9417C0(v38, v26, v25);
    (*(v42 + 8))(v53, v51);
    goto LABEL_22;
  }
}

uint64_t sub_23A9417C0(float32x4_t *a1, float a2, float32x2_t a3)
{
  v5 = v3;
  v55[1] = *MEMORY[0x277D85DE8];
  v9 = sub_23AA0CE84();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - v15;
  v54 = 0uLL;
  if (qword_27DFAE490 != -1)
  {
    swift_once();
  }

  v17 = sub_23A999088(a1, &v54);
  v18 = *(v17 + 2);
  if (v18 >> 59)
  {
    __break(1u);
    goto LABEL_35;
  }

  v19 = v17;
  v51 = v10;
  v52 = v9;
  v53 = v4;
  v20 = qword_27DFAF6F0;
  v21 = *(v5 + qword_27DFAF6F0);
  if (!v21 || (16 * v18) != [v21 length])
  {
    type metadata accessor for MetalConstants();
    swift_initStaticObject();
    v22 = [sub_23A93BFA4() newBufferWithLength:16 * v18 options:0];
    swift_unknownObjectRelease();
    v23 = *(v5 + v20);
    *(v5 + v20) = v22;
    swift_unknownObjectRelease();
  }

  v24 = *(v5 + v20);
  if (!v24)
  {

    sub_23A8D4E5C();
    if (qword_27DFAE3A0 == -1)
    {
LABEL_17:

      sub_23AA0D644();
      sub_23AA0CE94();

      v31 = sub_23AA0CE54();
      v32 = sub_23AA0D494();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v55[0] = v34;
        *v33 = 136315138;
        v35 = sub_23AA0CA64();
        v37 = sub_23A9A65A4(v35, v36, v55);

        *(v33 + 4) = v37;
        _os_log_impl(&dword_23A8B4000, v31, v32, " pointArrayBuffer for %s is nil", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v34);
        MEMORY[0x23EE91710](v34, -1, -1);
        MEMORY[0x23EE91710](v33, -1, -1);
      }

      result = (*(v51 + 8))(v13, v52);
      goto LABEL_33;
    }

LABEL_35:
    swift_once();
    goto LABEL_17;
  }

  v25 = [swift_unknownObjectRetain_n() contents];
  v26 = v24;
  if (v25 != v19 + 32 || v25 >= &v19[16 * v18 + 32])
  {
    memmove(v25, v19 + 32, 16 * v18);
  }

  v28 = *(v5 + qword_27DFAF6E0);
  v29 = *(v28 + 24);
  REMaterialParameterBlockSetBuffer();
  LODWORD(v55[0]) = 0;
  v30 = *(v28 + 24);
  sub_23AA0D1B4();
  REMaterialParameterBlockGetFloat();

  if (*v55 != a2)
  {
    sub_23AA0D1B4();
    REMaterialParameterBlockSetFloat();

    sub_23AA0A2BC(a3);
    goto LABEL_21;
  }

  if (sub_23AA0A2BC(a3))
  {
LABEL_21:
    v39 = v53;
    sub_23AA0A128();
    v40 = v39;
    if (v39)
    {
LABEL_26:
      result = swift_unknownObjectRelease();
      goto LABEL_33;
    }

    goto LABEL_24;
  }

  v40 = v53;
LABEL_24:
  if (*(v5 + qword_27DFAF6E8))
  {
    REMeshComponentSetBoundsMargin();
    goto LABEL_26;
  }

  sub_23A8D4E5C();
  if (qword_27DFAE3A0 != -1)
  {
    swift_once();
  }

  sub_23AA0D644();
  sub_23AA0CE94();

  v41 = sub_23AA0CE54();
  v42 = sub_23AA0D494();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v53 = v40;
    v44 = v43;
    v45 = swift_slowAlloc();
    v55[0] = v45;
    *v44 = 136315138;
    v46 = sub_23AA0CA64();
    v48 = sub_23A9A65A4(v46, v47, v55);

    *(v44 + 4) = v48;
    _os_log_impl(&dword_23A8B4000, v41, v42, "MeshComponent for %s is nil", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x23EE91710](v45, -1, -1);
    MEMORY[0x23EE91710](v44, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  result = (*(v51 + 8))(v16, v52);
LABEL_33:
  v49 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23A941E30()
{
  v1 = *(v0 + qword_27DFAF6E0);

  v2 = *(v0 + qword_27DFAF6F0);
  swift_unknownObjectRelease();
  v3 = *(v0 + qword_27DFAF6F8);
}

uint64_t sub_23A941E80()
{
  v0 = sub_23AA0CAC4();
  v1 = *(v0 + qword_27DFAF6E0);

  v2 = *(v0 + qword_27DFAF6F0);
  swift_unknownObjectRelease();
  v3 = *(v0 + qword_27DFAF6F8);

  return swift_deallocClassInstance();
}

void sub_23A941F0C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_23AA0DBA4();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for LineAnimation();
        v6 = sub_23AA0D324();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for LineAnimation() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_23A94226C(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_23A942038(0, v2, 1, a1);
  }
}

void sub_23A942038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v40 = type metadata accessor for LineAnimation();
  v8 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  MEMORY[0x28223BE20](v14);
  v17 = &v32 - v16;
  v34 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v39 = v18;
    v33 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v37 = v20;
    v38 = a3;
    v35 = v23;
    v36 = v22;
    while (1)
    {
      sub_23A9400FC(v23, v17);
      sub_23A9400FC(v20, v13);
      v24 = v17[104];
      v25 = v13[104];
      if (v24 == v25)
      {
        v26 = (*(v17 + 14) + 16);
        v27 = (*(v13 + 14) + 16);
      }

      else
      {
        v28 = v25;
        v26 = (&unk_23AA14678 + 8 * v24);
        v27 = (&unk_23AA14678 + 8 * v28);
      }

      v29 = *v26;
      v30 = *v27;
      sub_23A940160(v13);
      sub_23A940160(v17);
      if (v29 >= v30)
      {
LABEL_4:
        a3 = v38 + 1;
        v20 = v37 + v33;
        v22 = v36 - 1;
        v23 = v35 + v33;
        if (v38 + 1 == v34)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      sub_23A940208(v23, v10);
      swift_arrayInitWithTakeFrontToBack();
      sub_23A940208(v10, v20);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_23A94226C(int64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v135 = a1;
  v150 = type metadata accessor for LineAnimation();
  v145 = *(v150 - 8);
  v8 = *(v145 + 64);
  MEMORY[0x28223BE20](v150);
  v138 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v149 = &v130 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v130 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v130 - v16;
  MEMORY[0x28223BE20](v18);
  v141 = &v130 - v19;
  MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v21);
  v132 = &v130 - v22;
  MEMORY[0x28223BE20](v23);
  v131 = &v130 - v25;
  v26 = *(a3 + 8);
  if (v26 < 1)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_101:
    v29 = *v135;
    if (!*v135)
    {
      goto LABEL_139;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_133:
      v28 = sub_23A977E20(v28);
    }

    v151 = v28;
    v125 = *(v28 + 16);
    if (v125 >= 2)
    {
      while (*a3)
      {
        v126 = v28;
        v28 = *(v28 + 16 * v125);
        v127 = v126;
        v128 = *&v126[16 * v125 + 24];
        sub_23A942C0C(*a3 + *(v145 + 72) * v28, *a3 + *(v145 + 72) * *&v126[16 * v125 + 16], *a3 + *(v145 + 72) * v128, v29);
        if (v5)
        {
          goto LABEL_111;
        }

        if (v128 < v28)
        {
          goto LABEL_126;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v127 = sub_23A977E20(v127);
        }

        if (v125 - 2 >= *(v127 + 2))
        {
          goto LABEL_127;
        }

        v129 = &v127[16 * v125];
        *v129 = v28;
        v129[1] = v128;
        v151 = v127;
        sub_23A977D94(v125 - 1);
        v28 = v151;
        v125 = *(v151 + 16);
        if (v125 <= 1)
        {
          goto LABEL_111;
        }
      }

      goto LABEL_137;
    }

LABEL_111:

    return;
  }

  v140 = v24;
  v130 = a4;
  v27 = 0;
  v28 = MEMORY[0x277D84F90];
  v146 = a3;
  v139 = v14;
  while (1)
  {
    v29 = v27;
    v30 = v27 + 1;
    if (v27 + 1 >= v26)
    {
      goto LABEL_30;
    }

    v142 = v26;
    v31 = *a3;
    v32 = *(v145 + 72);
    a3 = v27 + 1;
    v33 = v131;
    sub_23A9400FC(v31 + v32 * v30, v131);
    v136 = v29;
    v147 = v32;
    v34 = v31 + v32 * v29;
    v35 = v132;
    sub_23A9400FC(v34, v132);
    v36 = *(v33 + 104);
    v37 = *(v35 + 104);
    v134 = v5;
    if (v36 == v37)
    {
      v38 = (*(v33 + 112) + 16);
      v39 = (*(v35 + 112) + 16);
    }

    else
    {
      v40 = v37;
      v38 = (&unk_23AA14678 + 8 * v36);
      v39 = (&unk_23AA14678 + 8 * v40);
    }

    v133 = v28;
    v41 = *v38;
    v143 = *v39;
    v144 = v41;
    sub_23A940160(v35);
    sub_23A940160(v33);
    v42 = v136 + 2;
    v43 = v147 * (v136 + 2);
    v44 = v31 + v43;
    v45 = a3;
    v46 = v147 * a3;
    v47 = v31 + v147 * a3;
    do
    {
      v52 = v42;
      v53 = v45;
      v5 = v46;
      v28 = v43;
      v148 = v42;
      if (v42 >= v142)
      {
        break;
      }

      v54 = v140;
      sub_23A9400FC(v44, v140);
      v55 = v141;
      sub_23A9400FC(v47, v141);
      v56 = v55;
      v57 = *(v54 + 104);
      v58 = *(v55 + 104);
      if (v57 == v58)
      {
        v49 = (*(v54 + 112) + 16);
        v50 = (*(v55 + 112) + 16);
      }

      else
      {
        v48 = v58;
        v49 = (&unk_23AA14678 + 8 * v57);
        v50 = (&unk_23AA14678 + 8 * v48);
      }

      a3 = v144 < v143;
      v51 = *v49 < *v50;
      sub_23A940160(v56);
      sub_23A940160(v54);
      v52 = v148;
      v42 = v148 + 1;
      v44 += v147;
      v47 += v147;
      v45 = v53 + 1;
      v46 = v5 + v147;
      v43 = v28 + v147;
      v14 = v139;
    }

    while (a3 == v51);
    if (v144 >= v143)
    {
      goto LABEL_28;
    }

    v29 = v136;
    if (v52 < v136)
    {
      goto LABEL_130;
    }

    if (v136 < v52)
    {
      v59 = v136 * v147;
      do
      {
        if (v29 != v53)
        {
          v61 = *v146;
          if (!*v146)
          {
            goto LABEL_136;
          }

          sub_23A940208(v61 + v59, v138);
          if (v59 < v5 || v61 + v59 >= (v61 + v28))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v59 != v5)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_23A940208(v138, v61 + v5);
          v52 = v148;
        }

        ++v29;
        v5 -= v147;
        v28 -= v147;
        v59 += v147;
      }

      while (v29 < v53--);
LABEL_28:
      v30 = v52;
      v28 = v133;
      v5 = v134;
      a3 = v146;
      v29 = v136;
      goto LABEL_30;
    }

    v30 = v52;
    v28 = v133;
    v5 = v134;
    a3 = v146;
LABEL_30:
    v62 = *(a3 + 8);
    if (v30 < v62)
    {
      if (__OFSUB__(v30, v29))
      {
        goto LABEL_129;
      }

      if (v30 - v29 < v130)
      {
        v63 = v29 + v130;
        if (__OFADD__(v29, v130))
        {
          goto LABEL_131;
        }

        if (v63 >= v62)
        {
          v63 = *(a3 + 8);
        }

        if (v63 < v29)
        {
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        if (v30 != v63)
        {
          break;
        }
      }
    }

LABEL_50:
    if (v30 < v29)
    {
      goto LABEL_128;
    }

    v148 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_23A938B2C(0, *(v28 + 16) + 1, 1, v28);
    }

    v79 = *(v28 + 16);
    v78 = *(v28 + 24);
    v80 = v79 + 1;
    v27 = v148;
    if (v79 >= v78 >> 1)
    {
      v124 = sub_23A938B2C((v78 > 1), v79 + 1, 1, v28);
      v27 = v148;
      v28 = v124;
    }

    *(v28 + 16) = v80;
    v81 = v28 + 16 * v79;
    *(v81 + 32) = v29;
    *(v81 + 40) = v27;
    v29 = *v135;
    if (!*v135)
    {
      goto LABEL_138;
    }

    if (v79)
    {
      while (1)
      {
        a3 = v80 - 1;
        if (v80 >= 4)
        {
          break;
        }

        if (v80 == 3)
        {
          v82 = *(v28 + 32);
          v83 = *(v28 + 40);
          v92 = __OFSUB__(v83, v82);
          v84 = v83 - v82;
          v85 = v92;
LABEL_70:
          if (v85)
          {
            goto LABEL_117;
          }

          v98 = (v28 + 16 * v80);
          v100 = *v98;
          v99 = v98[1];
          v101 = __OFSUB__(v99, v100);
          v102 = v99 - v100;
          v103 = v101;
          if (v101)
          {
            goto LABEL_120;
          }

          v104 = (v28 + 32 + 16 * a3);
          v106 = *v104;
          v105 = v104[1];
          v92 = __OFSUB__(v105, v106);
          v107 = v105 - v106;
          if (v92)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v102, v107))
          {
            goto LABEL_124;
          }

          if (v102 + v107 >= v84)
          {
            if (v84 < v107)
            {
              a3 = v80 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        v108 = (v28 + 16 * v80);
        v110 = *v108;
        v109 = v108[1];
        v92 = __OFSUB__(v109, v110);
        v102 = v109 - v110;
        v103 = v92;
LABEL_84:
        if (v103)
        {
          goto LABEL_119;
        }

        v111 = v28 + 16 * a3;
        v113 = *(v111 + 32);
        v112 = *(v111 + 40);
        v92 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v92)
        {
          goto LABEL_122;
        }

        if (v114 < v102)
        {
          goto LABEL_3;
        }

LABEL_91:
        v119 = a3 - 1;
        if (a3 - 1 >= v80)
        {
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
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (!*v146)
        {
          goto LABEL_135;
        }

        v120 = v28;
        v121 = v28 + 32;
        v28 = *(v28 + 32 + 16 * v119);
        v122 = *(v121 + 16 * a3 + 8);
        sub_23A942C0C(*v146 + *(v145 + 72) * v28, *v146 + *(v145 + 72) * *(v121 + 16 * a3), *v146 + *(v145 + 72) * v122, v29);
        if (v5)
        {
          goto LABEL_111;
        }

        if (v122 < v28)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v120 = sub_23A977E20(v120);
        }

        if (v119 >= *(v120 + 2))
        {
          goto LABEL_114;
        }

        v123 = &v120[16 * v119];
        *(v123 + 4) = v28;
        *(v123 + 5) = v122;
        v151 = v120;
        sub_23A977D94(a3);
        v28 = v151;
        v80 = *(v151 + 16);
        v27 = v148;
        if (v80 <= 1)
        {
          goto LABEL_3;
        }
      }

      v86 = v28 + 32 + 16 * v80;
      v87 = *(v86 - 64);
      v88 = *(v86 - 56);
      v92 = __OFSUB__(v88, v87);
      v89 = v88 - v87;
      if (v92)
      {
        goto LABEL_115;
      }

      v91 = *(v86 - 48);
      v90 = *(v86 - 40);
      v92 = __OFSUB__(v90, v91);
      v84 = v90 - v91;
      v85 = v92;
      if (v92)
      {
        goto LABEL_116;
      }

      v93 = (v28 + 16 * v80);
      v95 = *v93;
      v94 = v93[1];
      v92 = __OFSUB__(v94, v95);
      v96 = v94 - v95;
      if (v92)
      {
        goto LABEL_118;
      }

      v92 = __OFADD__(v84, v96);
      v97 = v84 + v96;
      if (v92)
      {
        goto LABEL_121;
      }

      if (v97 >= v89)
      {
        v115 = (v28 + 32 + 16 * a3);
        v117 = *v115;
        v116 = v115[1];
        v92 = __OFSUB__(v116, v117);
        v118 = v116 - v117;
        if (v92)
        {
          goto LABEL_125;
        }

        if (v84 < v118)
        {
          a3 = v80 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_70;
    }

LABEL_3:
    a3 = v146;
    v26 = v146[1];
    if (v27 >= v26)
    {
      goto LABEL_101;
    }
  }

  v133 = v28;
  v134 = v5;
  v64 = *a3;
  v65 = *(v145 + 72);
  v66 = *a3 + v65 * (v30 - 1);
  v67 = -v65;
  v136 = v29;
  v137 = v65;
  v68 = v29 - v30;
  v69 = v64 + v30 * v65;
  v142 = v63;
LABEL_40:
  v147 = v66;
  v148 = v30;
  v143 = v69;
  v144 = v68;
  while (1)
  {
    sub_23A9400FC(v69, v17);
    sub_23A9400FC(v66, v14);
    v70 = v17[104];
    v71 = v14[104];
    if (v70 == v71)
    {
      v72 = (*(v17 + 14) + 16);
      v73 = (*(v14 + 14) + 16);
    }

    else
    {
      v74 = v71;
      v72 = (&unk_23AA14678 + 8 * v70);
      v73 = (&unk_23AA14678 + 8 * v74);
    }

    a3 = *v72;
    v75 = *v73;
    sub_23A940160(v14);
    sub_23A940160(v17);
    if (a3 >= v75)
    {
LABEL_39:
      v30 = v148 + 1;
      v66 = v147 + v137;
      v68 = v144 - 1;
      v69 = v143 + v137;
      if (v148 + 1 != v142)
      {
        goto LABEL_40;
      }

      v30 = v142;
      v28 = v133;
      v5 = v134;
      v29 = v136;
      goto LABEL_50;
    }

    if (!v64)
    {
      break;
    }

    v76 = v149;
    sub_23A940208(v69, v149);
    swift_arrayInitWithTakeFrontToBack();
    sub_23A940208(v76, v66);
    v66 += v67;
    v69 += v67;
    if (__CFADD__(v68++, 1))
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
}

void sub_23A942C0C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v56 = type metadata accessor for LineAnimation();
  v8 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  MEMORY[0x28223BE20](v9);
  v11 = &v49 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v49 - v13;
  MEMORY[0x28223BE20](v15);
  v18 = &v49 - v17;
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_67;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_68;
  }

  v22 = (a2 - a1) / v20;
  v60 = a1;
  v59 = a4;
  if (v22 >= v21 / v20)
  {
    v24 = v21 / v20 * v20;
    v55 = v16;
    if (a4 < a2 || a2 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v33 = a4 + v24;
    if (v24 < 1)
    {
      v36 = a4 + v24;
    }

    else
    {
      v34 = a4 + v24;
      v52 = a4;
      v35 = -v20;
      v36 = v33;
      do
      {
        v50 = v36;
        v37 = a2;
        v38 = a2 + v35;
        v53 = v37;
        v54 = v38;
        while (1)
        {
          if (v37 <= a1)
          {
            v60 = v37;
            v58 = v50;
            goto LABEL_65;
          }

          v39 = a3;
          v51 = v36;
          v57 = v34 + v35;
          sub_23A9400FC(v34 + v35, v11);
          v40 = v55;
          sub_23A9400FC(v38, v55);
          v41 = v40;
          v42 = v11[104];
          v43 = *(v40 + 104);
          if (v42 == v43)
          {
            v44 = (*(v11 + 14) + 16);
            v45 = (*(v40 + 112) + 16);
          }

          else
          {
            v46 = v43;
            v44 = (&unk_23AA14678 + 8 * v42);
            v45 = (&unk_23AA14678 + 8 * v46);
          }

          v47 = *v44;
          v48 = *v45;
          a3 += v35;
          sub_23A940160(v41);
          sub_23A940160(v11);
          if (v47 < v48)
          {
            break;
          }

          v36 = v57;
          v38 = v54;
          if (v39 < v34 || a3 >= v34)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v39 != v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v34 = v36;
          v37 = v53;
          if (v57 <= v52)
          {
            a2 = v53;
            goto LABEL_64;
          }
        }

        a2 = v54;
        if (v39 < v53 || a3 >= v53)
        {
          swift_arrayInitWithTakeFrontToBack();
          v36 = v51;
        }

        else
        {
          v36 = v51;
          if (v39 != v53)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v34 > v52);
    }

LABEL_64:
    v60 = a2;
    v58 = v36;
  }

  else
  {
    v23 = v22 * v20;
    if (a4 < a1 || a1 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v57 = a4 + v23;
    v58 = a4 + v23;
    if (v23 >= 1 && a2 < a3)
    {
      do
      {
        sub_23A9400FC(a2, v18);
        sub_23A9400FC(a4, v14);
        v26 = v18[104];
        v27 = v14[104];
        if (v26 == v27)
        {
          v28 = (*(v18 + 14) + 16);
          v29 = (*(v14 + 14) + 16);
        }

        else
        {
          v30 = v27;
          v28 = (&unk_23AA14678 + 8 * v26);
          v29 = (&unk_23AA14678 + 8 * v30);
        }

        v31 = *v28;
        v32 = *v29;
        sub_23A940160(v14);
        sub_23A940160(v18);
        if (v31 >= v32)
        {
          if (a1 < a4 || a1 >= a4 + v20)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v59 = a4 + v20;
          a4 += v20;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v20)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v20;
        }

        a1 += v20;
        v60 = a1;
      }

      while (a4 < v57 && a2 < a3);
    }
  }

LABEL_65:
  sub_23A943138(&v60, &v59, &v58);
}

uint64_t sub_23A943138(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for LineAnimation();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_23A94321C(uint64_t a1)
{
  v2 = type metadata accessor for LineAnimation();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v10 = *(a1 + 16);
  if (!v10)
  {
    return MEMORY[0x277D84F90];
  }

  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = a1 + v11;
  v13 = *(v7 + 72);
  v14 = MEMORY[0x277D84F90];
  do
  {
    sub_23A9400FC(v12, v9);
    v15 = *(v9 + 14);
    v16 = v15[1].i64[0];
    if (v16 && (v17 = vsubq_f32(v15[2], v15[v16 + 1]), v18 = vmulq_f32(v17, v17), (v18.f32[2] + vaddv_f32(*v18.f32)) >= 0.00000001))
    {
      sub_23A9400FC(v9, v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_23A939084(0, v14[2] + 1, 1, v14);
      }

      v20 = v14[2];
      v19 = v14[3];
      if (v20 >= v19 >> 1)
      {
        v14 = sub_23A939084(v19 > 1, v20 + 1, 1, v14);
      }

      sub_23A940160(v9);
      v14[2] = v20 + 1;
      sub_23A940208(v5, v14 + v11 + v20 * v13);
    }

    else
    {
      sub_23A940160(v9);
    }

    v12 += v13;
    --v10;
  }

  while (v10);
  return v14;
}

unint64_t sub_23A94340C()
{
  result = qword_27DFAF778;
  if (!qword_27DFAF778)
  {
    type metadata accessor for EdgeEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF778);
  }

  return result;
}

uint64_t sub_23A943464(float a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC70, &qword_23AA11F18);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v32 - v5;
  v7 = type metadata accessor for EdgeEntity();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  *(v10 + qword_27DFAF6E8) = 0;
  v11 = qword_27DFAF6F0;
  *(v10 + qword_27DFAF6F0) = 0;
  v12 = qword_27DFAF6F8;
  *(v10 + qword_27DFAF6F8) = MEMORY[0x277D84F90];
  type metadata accessor for RERoomsMaterial();
  swift_allocObject();
  v13 = sub_23AA09CA0(0x6D65722E65676465, 0xEF6C616972657461);
  if (v1)
  {
    v14 = *(v10 + v11);
    swift_unknownObjectRelease();
    v15 = *(v10 + v12);

    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v10 + qword_27DFAF6E0) = v13;
    v10 = sub_23AA0C1A4();
    v16 = qword_27DFAF6E0;
    v17 = *(v10 + qword_27DFAF6E0);
    HIDWORD(v32) = 0;
    v18 = *(v17 + 24);
    sub_23AA0D1B4();

    REMaterialParameterBlockGetFloat();

    if (*(&v32 + 1) != a1)
    {
      sub_23AA0D1B4();
      REMaterialParameterBlockSetFloat();
    }

    v19 = *(v10 + v16);
    __asm { FMOV            V0.4S, #1.0 }

    sub_23AA0A3A0(_Q0);
    v25 = *(v10 + v16);
    HIDWORD(v32) = 0;
    v26 = *(v25 + 24);
    sub_23AA0D1B4();
    REMaterialParameterBlockGetFloat();

    if (*(&v32 + 1) != 1.0)
    {
      sub_23AA0D1B4();
      REMaterialParameterBlockSetFloat();
    }

    v27 = *(v10 + v16);
    HIDWORD(v32) = 0;
    v28 = *(v27 + 24);
    sub_23AA0D1B4();
    REMaterialParameterBlockGetFloat();

    if (*(&v32 + 1) != 0.000006)
    {
      sub_23AA0D1B4();
      REMaterialParameterBlockSetFloat();
    }

    v29 = sub_23AA0C664();
    (*(*(v29 - 8) + 56))(v6, 1, 1, v29);
    sub_23AA0C604();
  }

  v30 = *MEMORY[0x277D85DE8];
  return v10;
}

BOOL sub_23A943874(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_23A9438A4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_23A9438D0@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

_DWORD *sub_23A943968@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_23A943984@<X0>(_DWORD *a1@<X8>)
{
  v2 = sub_23A8CADC8();

  *a1 = v2;
  return result;
}

unint64_t sub_23A9439C8()
{
  result = qword_27DFAF788;
  if (!qword_27DFAF788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF788);
  }

  return result;
}

unint64_t sub_23A943A20()
{
  result = qword_27DFAF790;
  if (!qword_27DFAF790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF790);
  }

  return result;
}

unint64_t sub_23A943A78()
{
  result = qword_27DFAF798;
  if (!qword_27DFAF798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF798);
  }

  return result;
}

unint64_t sub_23A943AD0()
{
  result = qword_27DFAF7A0;
  if (!qword_27DFAF7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAF7A0);
  }

  return result;
}

uint64_t sub_23A943EE8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[4];
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_23A943F54(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v11 = a1[1];
  *&v22.a = *a1;
  *&v22.c = v11;
  *&v22.tx = a1[2];
  CGAffineTransformInvert(&v21, &v22);
  *(&v12 + 1) = *&v21.b;
  *&v12 = vcvt_f32_f64(*&v21.a);
  v20 = v12;
  *&v12 = vcvt_f32_f64(*&v21.c);
  v19 = v12;
  *&v13 = vcvt_f32_f64(*&v21.tx);
  *(&v13 + 1) = 1065353216;
  v18 = v13;
  type metadata accessor for FrameTextures();
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 48) = v20;
  *(v14 + 64) = v19;
  *(v14 + 80) = v18;
  *(v14 + 96) = a6;
  swift_beginAccess();
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v15 = swift_unknownObjectRetain();
  MEMORY[0x23EE8FD70](v15);
  if (*((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v17 = *((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_23AA0D314();
  }

  sub_23AA0D334();
  swift_endAccess();
}

uint64_t sub_23A9440B0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void *a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    swift_beginAccess();
    v13 = *(v12 + 16);
    if (v13 >> 62)
    {
      if (v13 < 0)
      {
        v22 = *(v12 + 16);
      }

      if (!sub_23AA0D7F4())
      {
      }
    }

    else if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
    }

    if ((v13 & 0xC000000000000001) != 0)
    {

      v14 = MEMORY[0x23EE90360](0, v13);
    }

    else
    {
      if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v14 = *(v13 + 32);
    }

    v15 = *a2;
    *a2 = *(v14 + 16);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v16 = *a3;
    *a3 = *(v14 + 24);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v17 = *a4;
    *a4 = *(v14 + 32);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *a5 = *(v14 + 96);
    v18 = *(v14 + 64);
    v19 = *(v14 + 80);
    *a6 = *(v14 + 48);
    *(a6 + 16) = v18;
    *(a6 + 32) = v19;
    result = swift_beginAccess();
    a6 = *(v12 + 16);
    a4 = (a6 >> 62);
    if (!(a6 >> 62))
    {
      if (*((a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_9;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (a6 < 0)
    {
      v23 = *(v12 + 16);
    }

    result = sub_23AA0D7F4();
    if (!result)
    {
      goto LABEL_33;
    }

    result = sub_23AA0D7F4();
    if (result)
    {
LABEL_9:
      if ((a6 & 0xC000000000000001) == 0)
      {
        if (!*((a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          return result;
        }

        v20 = *(a6 + 32);

        if (!a4)
        {
          goto LABEL_12;
        }

        goto LABEL_26;
      }

LABEL_25:
      MEMORY[0x23EE90360](0, a6);
      if (!a4)
      {
LABEL_12:
        result = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_27;
      }

LABEL_26:
      result = sub_23AA0D7F4();
LABEL_27:
      if (result)
      {
        sub_23A945E44(0, 1, sub_23A914060, v21, type metadata accessor for FrameTextures);
        swift_endAccess();
      }

      goto LABEL_32;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  return result;
}

uint64_t sub_23A94432C()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_23A944390()
{
  v11[0] = sub_23AA0D524();
  v1 = *(v11[0] - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v11[0]);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23AA0D504();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_23AA0CF24();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  sub_23A9164A0();
  sub_23AA0CEE4();
  v11[1] = v9;
  sub_23A9468FC(&qword_27DFB1150, 255, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF830, &qword_23AA14A40);
  sub_23A916544();
  sub_23AA0D764();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v11[0]);
  *(v0 + 24) = sub_23AA0D554();
  return v0;
}

uint64_t sub_23A944614()
{
  v1 = *v0;
  sub_23AA0DD14();
  v2 = *(v1 + 16);
  v3 = sub_23AA0D444();
  MEMORY[0x23EE907C0](v3);
  v4 = *(v1 + 24);
  v5 = sub_23AA0D444();
  MEMORY[0x23EE907C0](v5);
  v6 = *(v1 + 32);
  v7 = sub_23AA0DD64();
  MEMORY[0x23EE907C0](v7);
  return sub_23AA0DD54();
}

uint64_t sub_23A944680()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = sub_23AA0D444();
  MEMORY[0x23EE907C0](v3);
  v4 = *(v1 + 24);
  v5 = sub_23AA0D444();
  MEMORY[0x23EE907C0](v5);
  v6 = *(v1 + 32);
  v7 = sub_23AA0DD64();
  return MEMORY[0x23EE907C0](v7);
}

uint64_t sub_23A9446D4()
{
  sub_23AA0DD14();
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = sub_23AA0D444();
  MEMORY[0x23EE907C0](v3);
  v4 = *(v1 + 24);
  v5 = sub_23AA0D444();
  MEMORY[0x23EE907C0](v5);
  v6 = *(v1 + 32);
  v7 = sub_23AA0DD64();
  MEMORY[0x23EE907C0](v7);
  return sub_23AA0DD54();
}

uint64_t sub_23A94473C(void *a1, _OWORD *a2)
{
  v3 = v2;
  v6 = [a1 capturedImage];
  v7 = sub_23A944D38(v6);

  v8 = sub_23AA085E4();
  if (v8)
  {
    v9 = v8;
    v10 = sub_23A944BEC(v8, 0, MTLPixelFormatR32Float);

    swift_unknownObjectRetain();
  }

  else
  {
    v10 = 0;
  }

  v11 = [a1 smoothedSceneDepth];
  if (v11 && (v12 = v11, v13 = [v11 confidenceMap], v12, v13) || (v14 = objc_msgSend(a1, sel_sceneDepth), v13 = objc_msgSend(v14, sel_confidenceMap), v14, v13))
  {
    v15 = sub_23A944BEC(v13, 0, MTLPixelFormatR8Uint);

    swift_unknownObjectRetain();
  }

  else
  {
    v15 = 0;
  }

  v16 = *(v3 + 24);
  [a1 timestamp];
  v18 = v17;
  v19 = *(v16 + 24);
  v20 = swift_allocObject();
  v21 = a2[1];
  *(v20 + 16) = *a2;
  *(v20 + 32) = v21;
  *(v20 + 48) = a2[2];
  *(v20 + 64) = v7;
  *(v20 + 72) = v10;
  *(v20 + 80) = v15;
  *(v20 + 88) = v18;
  *(v20 + 96) = v16;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_23A9469FC;
  *(v22 + 24) = v20;
  v26[4] = sub_23A916670;
  v26[5] = v22;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 1107296256;
  v26[2] = sub_23AA08C40;
  v26[3] = &block_descriptor_1;
  v23 = _Block_copy(v26);
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  dispatch_sync(v19, v23);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease_n();
  swift_unknownObjectRelease_n();
  _Block_release(v23);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23A944A1C(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    return 0;
  }

  v7 = *(v3 + 72);
  swift_unknownObjectRetain();
  if ((v7 & 1) == 0)
  {
    sub_23A9451E0([a3 width], objc_msgSend(a3, sel_height));
    *(v3 + 72) = 1;
  }

  v8 = *(v3 + 88);
  if (!v8 || (v9 = *(v3 + 96)) == 0 || (v10 = *(v3 + 104)) == 0)
  {
    v11 = 0;
    goto LABEL_13;
  }

  v11 = *(v3 + 112);
  if (v11)
  {
    v12 = *(v3 + 64);
    v15 = *(v3 + 88);
    if (v12)
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      [v12 encodeToCommandBuffer:a1 sourceTexture:a2 destinationTexture:v8];
      [v12 encodeToCommandBuffer:a1 sourceTexture:a2 destinationTexture:v9];
      v13 = *(v3 + 56);
      if (!v13)
      {
LABEL_11:
        [v13 encodeReconstructionToCommandBuffer:a1 guidanceTexture:v15 coefficientsTexture:v10 destinationTexture:v11];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_13;
      }
    }

    else
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v13 = *(v3 + 56);
      if (!v13)
      {
        goto LABEL_11;
      }
    }

    [v13 encodeRegressionToCommandBuffer:a1 sourceTexture:a3 guidanceTexture:v9 weightsTexture:0 destinationCoefficientsTexture:v10];
    goto LABEL_11;
  }

LABEL_13:
  swift_unknownObjectRelease();
  return v11;
}

id sub_23A944BEC(__CVBuffer *a1, size_t a2, MTLPixelFormat a3)
{
  textureOut[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v7 = *(v3 + 128);
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v7;
  v9 = sub_23A944E74(a1);
  if (!v9)
  {

LABEL_9:
    result = 0;
    goto LABEL_10;
  }

  v10 = v9;
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(v9, a2);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(v10, a2);
  textureOut[0] = 0;
  TextureFromImage = CVMetalTextureCacheCreateTextureFromImage(0, v8, v10, 0, a3, WidthOfPlane, HeightOfPlane, a2, textureOut);
  v14 = textureOut[0];
  if (TextureFromImage)
  {
    textureOut[0] = 0;

    v14 = textureOut[0];
  }

  if (!v14)
  {

    goto LABEL_9;
  }

  v15 = v14;
  v16 = CVMetalTextureGetTexture(v15);

  result = v16;
LABEL_10:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_23A944D38(__CVBuffer *a1)
{
  textureOut[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v3 = *(v1 + 128);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  v5 = sub_23A944E74(a1);
  if (!v5)
  {

LABEL_9:
    result = 0;
    goto LABEL_10;
  }

  v6 = v5;
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(v5, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(v6, 0);
  textureOut[0] = 0;
  TextureFromImage = CVMetalTextureCacheCreateTextureFromImage(0, v4, v6, 0, 0x208uLL, WidthOfPlane, HeightOfPlane, 0, textureOut);
  v10 = textureOut[0];
  if (TextureFromImage)
  {
    textureOut[0] = 0;

    v10 = textureOut[0];
  }

  if (!v10)
  {

    goto LABEL_9;
  }

  v11 = v10;
  v12 = CVMetalTextureGetTexture(v11);

  result = v12;
LABEL_10:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

CVPixelBufferRef sub_23A944E74(__CVBuffer *a1)
{
  pixelBufferOut[6] = *MEMORY[0x277D85DE8];
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  type metadata accessor for PixelBufferFormat();
  v6 = swift_allocObject();
  *(v6 + 16) = Width;
  *(v6 + 24) = Height;
  *(v6 + 32) = PixelFormatType;
  swift_beginAccess();
  v7 = *(v1 + 32);

  v8 = sub_23A94EDF0(v6, v7);

  if (v8)
  {
  }

  else
  {

    v9 = sub_23A94652C(a1);
    swift_beginAccess();
    if (v9)
    {
      v10 = *(v1 + 32);
      if ((v10 & 0xC000000000000001) != 0)
      {
        if (v10 < 0)
        {
          v11 = *(v1 + 32);
        }

        else
        {
          v11 = v10 & 0xFFFFFFFFFFFFFF8;
        }

        v12 = sub_23AA0D7F4();
        if (__OFADD__(v12, 1))
        {
          goto LABEL_31;
        }

        *(v1 + 32) = sub_23A905E4C(v11, v12 + 1);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = *(v1 + 32);
      sub_23A9DAF10(v9, v6, isUniquelyReferenced_nonNull_native);
      *(v1 + 32) = v31;
    }

    else
    {
      v14 = sub_23A905890(v6);
    }

    swift_endAccess();
  }

  v15 = *(v1 + 32);

  v16 = sub_23A94EDF0(v6, v15);

  if (!v16)
  {

    goto LABEL_21;
  }

  pixelBufferOut[0] = 0;
  CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x277CBECE8], v16, pixelBufferOut);
  if (!pixelBufferOut[0])
  {
LABEL_19:

LABEL_21:
    result = 0;
    goto LABEL_22;
  }

  v17 = pixelBufferOut[0];
  v18 = pixelBufferOut[0];
  if (CVPixelBufferLockBaseAddress(a1, 1uLL))
  {
LABEL_18:

    goto LABEL_19;
  }

  if (CVPixelBufferLockBaseAddress(v18, 0))
  {
    CVPixelBufferUnlockBaseAddress(a1, 1uLL);
    goto LABEL_18;
  }

  PlaneCount = CVPixelBufferGetPlaneCount(a1);
  if (PlaneCount >= 2)
  {
    v22 = PlaneCount;
    v23 = 0;
    while (1)
    {
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, v23);
      v25 = CVPixelBufferGetBaseAddressOfPlane(v18, v23);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, v23);
      HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, v23);
      if ((BytesPerRowOfPlane * HeightOfPlane) >> 64 != (BytesPerRowOfPlane * HeightOfPlane) >> 63)
      {
        break;
      }

      ++v23;
      memcpy(v25, BaseAddressOfPlane, BytesPerRowOfPlane * HeightOfPlane);
      if (v22 == v23)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(v18, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  v29 = CVPixelBufferGetBaseAddress(v18);
  DataSize = CVPixelBufferGetDataSize(a1);
  memcpy(v29, BaseAddress, DataSize);
LABEL_29:
  CVPixelBufferUnlockBaseAddress(v18, 0);
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);

  result = v17;
LABEL_22:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23A9451E0(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = v3 * result;
  if (v4 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = fabs(v3 * result);
  v7 = v3 * a2;
  if (v6 > 0x7FEFFFFFFFFFFFFFLL || (*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = v4;
  v23 = v7;
  v10 = *(v2 + 120);
  v11 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
  [v11 setPixelFormat_];
  [v11 setWidth_];
  [v11 setHeight_];
  [v11 setUsage_];
  v24 = a2;
  v12 = [v10 newTextureWithDescriptor_];

  v13 = *(v2 + 104);
  *(v2 + 104) = v12;
  swift_unknownObjectRelease();
  v14 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
  [v14 setPixelFormat_];
  [v14 setWidth_];
  [v14 setHeight_];
  [v14 setUsage_];
  v15 = [v10 newTextureWithDescriptor_];

  v16 = *(v2 + 112);
  *(v2 + 112) = v15;
  swift_unknownObjectRelease();
  v17 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
  [v17 setPixelFormat_];
  [v17 &off_278B65878];
  [v17 &selRef:v23 step:?];
  [v17 setUsage_];
  v18 = [v10 newTextureWithDescriptor_];

  v19 = *(v2 + 88);
  *(v2 + 88) = v18;
  swift_unknownObjectRelease();
  v20 = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
  [v20 setPixelFormat_];
  [v20 &off_278B65878];
  [v20 &selRef:v24 step:?];
  [v20 setUsage_];
  v21 = [v10 newTextureWithDescriptor_];

  v22 = *(v2 + 96);
  *(v2 + 96) = v21;

  return swift_unknownObjectRelease();
}

uint64_t sub_23A945500()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 80);
  swift_unknownObjectRelease();
  v4 = *(v0 + 88);
  swift_unknownObjectRelease();
  v5 = *(v0 + 96);
  swift_unknownObjectRelease();
  v6 = *(v0 + 104);
  swift_unknownObjectRelease();
  v7 = *(v0 + 112);
  swift_unknownObjectRelease();
  v8 = *(v0 + 120);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_23A945570()
{
  sub_23A945500();

  return swift_deallocClassInstance();
}

void *sub_23A945610(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, MEMORY[0x277D84F90]);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, MEMORY[0x277D84F90]);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_23A964308(a1);

      objc_setAssociatedObject(v2, MEMORY[0x277D84F90], v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

void sub_23A9456CC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v8 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a5;
  v12 = *v7;
  v13 = (v12 + 32 + 24 * a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF668, &qword_23AA14400);
  a1 = swift_arrayDestroy();
  v14 = __OFSUB__(a3, v8);
  v15 = a3 - v8;
  if (v14)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = *(v12 + 16);
  v14 = __OFSUB__(v16, a2);
  v17 = v16 - a2;
  if (v14)
  {
    goto LABEL_18;
  }

  a1 = &v13[3 * a3];
  v18 = (v12 + 32 + 24 * a2);
  if (a1 != v18 || a1 >= v18 + 24 * v17)
  {
    a1 = memmove(a1, v18, 24 * v17);
  }

  v19 = *(v12 + 16);
  v14 = __OFADD__(v19, v15);
  v20 = v19 + v15;
  if (v14)
  {
    goto LABEL_19;
  }

  *(v12 + 16) = v20;
LABEL_10:
  if (a3 > 0)
  {
    a1 = a4;
    *v13 = a4;
    v13[1] = v6;
    v13[2] = a6;
    if (a3 == 1)
    {
      return;
    }

LABEL_20:
    v21 = a1;
    v22 = v6;
    __break(1u);
    return;
  }
}