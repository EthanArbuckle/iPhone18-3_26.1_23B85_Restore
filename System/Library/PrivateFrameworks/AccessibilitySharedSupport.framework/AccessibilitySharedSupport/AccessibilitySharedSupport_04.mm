char *sub_1C0F22330(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77908, &unk_1C0F574F0);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C0F2243C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77918, &qword_1C0F57500);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 176);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[176 * v8])
    {
      memmove(v12, v13, 176 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1C0F22560(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE782B0, &qword_1C0F5AF28);
  v10 = *(sub_1C0F50070() - 8);
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
  v15 = *(sub_1C0F50070() - 8);
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

char *sub_1C0F22738(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE782A8, &qword_1C0F5AF18);
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

char *sub_1C0F2283C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE778C8, &qword_1C0F574A0);
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

char *sub_1C0F22930(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE778C0, &qword_1C0F5AF20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1C0F22A2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77938, &qword_1C0F57518);
    v3 = sub_1C0F50650();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C0F22F60(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1C0EFA930(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1C0EFEECC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_1C0F22B3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77AB8, &qword_1C0F57E30);
    v3 = sub_1C0F50650();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1C0EFA930(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1C0F22C88(uint64_t a1, char a2)
{
  if (qword_1EBE77190 != -1)
  {
    swift_once();
  }

  v3 = sub_1C0F4FD30();
  __swift_project_value_buffer(v3, qword_1EBE78290);
  v4 = sub_1C0F4FD00();
  v5 = sub_1C0F50470();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315394;
    type metadata accessor for AXSSRemoteDesktopFeature();
    v8 = sub_1C0F501D0();
    v10 = sub_1C0EE9754(v8, v9, &v12);

    *(v6 + 4) = v10;
    *(v6 + 12) = 1024;
    *(v6 + 14) = a2 & 1;
    _os_log_impl(&dword_1C0E8A000, v4, v5, "Unhandled call set feature %s enabled=%{BOOL}d", v6, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1C68EB070](v7, -1, -1);
    MEMORY[0x1C68EB070](v6, -1, -1);
  }

  return 4294967291;
}

unint64_t sub_1C0F22DF8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1C0F22EA0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_1C0F22738(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_1C0F22DF8(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1C0F22F60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE778E0, &unk_1C0F574D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
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

unint64_t sub_1C0F23034(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    sub_1C0F505A0();

    v5 = 0xD00000000000002DLL;
  }

  else
  {
    sub_1C0F505A0();

    v5 = 0xD000000000000027;
  }

  v7 = v5;
  MEMORY[0x1C68E9A50](a1, a2);
  return v7;
}

uint64_t sub_1C0F23134()
{
  v1 = OBJC_IVAR____TtC26AccessibilitySharedSupport22AXSSRemoteDesktopCoder__keyPair;
  v2 = sub_1C0F50040();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1C0EEFAA8(v0 + OBJC_IVAR____TtC26AccessibilitySharedSupport22AXSSRemoteDesktopCoder__symmetricKey, &qword_1EBE782E8, &qword_1C0F5AFF0);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AXSSRemoteDesktopCoder()
{
  result = qword_1EBE782C8;
  if (!qword_1EBE782C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C0F23244()
{
  v0 = sub_1C0F50040();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1C0F23310();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C0F23310()
{
  if (!qword_1EBE782D8)
  {
    sub_1C0F50050();
    v0 = sub_1C0F50500();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBE782D8);
    }
  }
}

unint64_t sub_1C0F2336C()
{
  result = qword_1EBE782E0;
  if (!qword_1EBE782E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE782E0);
  }

  return result;
}

uint64_t sub_1C0F233C0()
{
  sub_1C0EED60C(0, &qword_1EBE782F0, 0x1E696ACD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE782F8, &qword_1C0F5AFF8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C0F5AF40;
  *(v1 + 32) = sub_1C0EED60C(0, &qword_1EBE78300, 0x1E695DF20);
  *(v1 + 40) = sub_1C0EED60C(0, &qword_1EBE78308, 0x1E696AEC0);
  *(v1 + 48) = sub_1C0EED60C(0, &qword_1EBE78310, 0x1E696AD98);
  *(v1 + 56) = sub_1C0EED60C(0, &qword_1EBE78318, 0x1E695DEC8);
  *(v1 + 64) = sub_1C0EED60C(0, &qword_1EBE78320, 0x1E695DEF0);
  *(v1 + 72) = sub_1C0EED60C(0, &qword_1EBE78328, 0x1E696B098);
  sub_1C0F50490();

  if (!v0)
  {
    if (v4[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78338, &qword_1C0F5B008);
      if (swift_dynamicCast())
      {
        return v4[5];
      }
    }

    else
    {
      sub_1C0EEFAA8(v4, &qword_1EBE78330, &qword_1C0F5B000);
    }

    sub_1C0F2336C();
    swift_allocError();
    *v3 = 0xD00000000000002DLL;
    *(v3 + 8) = 0x80000001C0F67300;
    *(v3 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C0F235F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C0F23638(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C0F23694()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

double AccessibilityDeviceActionHandler.deviceState.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1C0F23728(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1C0EEF864;

  return AccessibilityDeviceActionHandler.handleAction(_:isDown:)(a1, a2, a3, a4, a5);
}

uint64_t AccessibilityDeviceActionHandler.handleAction(_:isDown:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = *a2;
  v10 = *(a5 + 32);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1C0EEF864;

  return v14(a1, v5 + 24, a3, a4, a5);
}

uint64_t sub_1C0F2393C(uint64_t a1, _BYTE *a2, char a3, uint64_t a4, void *a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1C0EEFCF4;

  return AccessibilityDeviceActionHandler.performAction(_:isDown:)(a1, a2, a3, a4, a5);
}

uint64_t AccessibilityDeviceActionHandler.performAction(_:isDown:)(uint64_t a1, _BYTE *a2, char a3, uint64_t a4, void *a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a1;
  v6[5] = a4;
  switch(*a2)
  {
    case 1:
      v48 = a5[6];
      v78 = v48 + *v48;
      v49 = v48[1];
      v50 = swift_task_alloc();
      v6[9] = v50;
      *v50 = v6;
      v50[1] = sub_1C0F1816C;
      v12 = v6 + 2;
      v13 = a4;
      v14 = a5;
      v15 = v78;

      goto LABEL_43;
    case 2:
      v38 = a5[7];
      v75 = v38 + *v38;
      v39 = v38[1];
      v40 = swift_task_alloc();
      v6[10] = v40;
      *v40 = v6;
      v40[1] = sub_1C0F182C0;
      v12 = v6 + 2;
      v13 = a4;
      v14 = a5;
      v15 = v75;

      goto LABEL_43;
    case 3:
      v41 = a5[8];
      v76 = v41 + *v41;
      v42 = v41[1];
      v43 = swift_task_alloc();
      v6[11] = v43;
      *v43 = v6;
      v43[1] = sub_1C0F18414;
      v12 = v6 + 2;
      v13 = a4;
      v14 = a5;
      v15 = v76;

      goto LABEL_43;
    case 4:
      v28 = a5[9];
      v72 = v28 + *v28;
      v29 = v28[1];
      v31 = swift_task_alloc();
      v6[12] = v31;
      *v31 = v6;
      v31[1] = sub_1C0F18568;
      v20 = v6 + 2;
      v21 = a3 & 1;
      v22 = a4;
      v23 = a5;
      v24 = v72;

      goto LABEL_46;
    case 5:
      v51 = a5[10];
      v79 = v51 + *v51;
      v52 = v51[1];
      v53 = swift_task_alloc();
      v6[13] = v53;
      *v53 = v6;
      v53[1] = sub_1C0F186BC;
      v12 = v6 + 2;
      v13 = a4;
      v14 = a5;
      v15 = v79;

      goto LABEL_43;
    case 6:
      v58 = a5[11];
      v81 = v58 + *v58;
      v59 = v58[1];
      v60 = swift_task_alloc();
      v6[14] = v60;
      *v60 = v6;
      v60[1] = sub_1C0F18840;
      v12 = v6 + 2;
      v13 = a4;
      v14 = a5;
      v15 = v81;

      goto LABEL_43;
    case 7:
      v44 = a5[12];
      v77 = v44 + *v44;
      v45 = v44[1];
      v47 = swift_task_alloc();
      v6[15] = v47;
      *v47 = v6;
      v47[1] = sub_1C0F18994;
      v20 = v6 + 2;
      v21 = a3 & 1;
      v22 = a4;
      v23 = a5;
      v24 = v77;

      goto LABEL_46;
    case 8:
      v65 = a5[13];
      v83 = v65 + *v65;
      v66 = v65[1];
      v68 = swift_task_alloc();
      v6[16] = v68;
      *v68 = v6;
      v68[1] = sub_1C0F18AE8;
      v20 = v6 + 2;
      v21 = a3 & 1;
      v22 = a4;
      v23 = a5;
      v24 = v83;

      goto LABEL_46;
    case 9:
      v35 = a5[14];
      v74 = v35 + *v35;
      v36 = v35[1];
      v37 = swift_task_alloc();
      v6[17] = v37;
      *v37 = v6;
      v37[1] = sub_1C0F18C3C;
      v12 = v6 + 2;
      v13 = a4;
      v14 = a5;
      v15 = v74;

      goto LABEL_43;
    case 0xA:
      v61 = a5[15];
      v82 = v61 + *v61;
      v62 = v61[1];
      v63 = swift_task_alloc();
      v6[18] = v63;
      *v63 = v6;
      v63[1] = sub_1C0F18D90;
      v12 = v6 + 2;
      v13 = a4;
      v14 = a5;
      v15 = v82;

      goto LABEL_43;
    case 0xB:
      v25 = a5[16];
      v71 = v25 + *v25;
      v26 = v25[1];
      v27 = swift_task_alloc();
      v6[19] = v27;
      *v27 = v6;
      v27[1] = sub_1C0F18EE4;
      v12 = v6 + 2;
      v13 = a4;
      v14 = a5;
      v15 = v71;

      goto LABEL_43;
    case 0xC:
      v32 = a5[17];
      v73 = v32 + *v32;
      v33 = v32[1];
      v34 = swift_task_alloc();
      v6[20] = v34;
      *v34 = v6;
      v34[1] = sub_1C0F19038;
      v12 = v6 + 2;
      v13 = a4;
      v14 = a5;
      v15 = v73;

      goto LABEL_43;
    case 0xD:
      v54 = a5[18];
      v80 = v54 + *v54;
      v55 = v54[1];
      v57 = swift_task_alloc();
      v6[21] = v57;
      *v57 = v6;
      v57[1] = sub_1C0F1918C;
      v20 = v6 + 2;
      v21 = a3 & 1;
      v22 = a4;
      v23 = a5;
      v24 = v80;

      goto LABEL_46;
    case 0xE:
      v16 = a5[19];
      v70 = v16 + *v16;
      v17 = v16[1];
      v19 = swift_task_alloc();
      v6[22] = v19;
      *v19 = v6;
      v19[1] = sub_1C0F192E0;
      v20 = v6 + 2;
      v21 = a3 & 1;
      v22 = a4;
      v23 = a5;
      v24 = v70;

LABEL_46:
      result = v24(v20, v21, v22, v23);
      break;
    default:
      v9 = a5[5];
      v69 = v9 + *v9;
      v10 = v9[1];
      v11 = swift_task_alloc();
      v6[8] = v11;
      *v11 = v6;
      v11[1] = sub_1C0F18018;
      v12 = v6 + 2;
      v13 = a4;
      v14 = a5;
      v15 = v69;

LABEL_43:
      result = v15(v12, v13, v14);
      break;
  }

  return result;
}

uint64_t dispatch thunk of AccessibilityDeviceActionHandler.handleAction(_:isDown:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1C0EEF864;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of AccessibilityDeviceActionHandler.performAction(_:isDown:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 32);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1C0EEFCF4;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of AccessibilityDeviceActionHandler.handleActionButton()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityDeviceActionHandler.handleCameraButtonDoubleLightPress()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityDeviceActionHandler.handleCameraButtonLightPress()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityDeviceActionHandler.handleCameraButtonPress()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 64);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityDeviceActionHandler.handleCrownPress(isDown:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 72);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1C0EEFCF4;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AccessibilityDeviceActionHandler.handleCrownTurnClockwise()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 80);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityDeviceActionHandler.handleCrownTurnCounterClockwise()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 88);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityDeviceActionHandler.handleHomeButton(isDown:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 96);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1C0EEFCF4;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AccessibilityDeviceActionHandler.handleLockButton(isDown:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 104);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1C0EEFCF4;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AccessibilityDeviceActionHandler.handleScreenshot()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 112);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityDeviceActionHandler.handleShake()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 120);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityDeviceActionHandler.handleTorch()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 128);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityDeviceActionHandler.handleTripleClick()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 136);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C0EEFCF4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AccessibilityDeviceActionHandler.handleVolumeDown(isDown:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 144);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1C0EEFCF4;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AccessibilityDeviceActionHandler.handleVolumeUp(isDown:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 152);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1C0EEFCF4;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_1C0F25CF8()
{
  v0 = sub_1C0F4FD30();
  __swift_allocate_value_buffer(v0, qword_1EBE78348);
  __swift_project_value_buffer(v0, qword_1EBE78348);
  return sub_1C0F4FD10();
}

uint64_t sub_1C0F25D7C(uint64_t a1, unint64_t a2)
{
  v4 = qword_1EBE78340;
  if (qword_1EBE78340 || (v5 = sub_1C0F501A0(), v6 = [objc_opt_self() bundleWithIdentifier_], v5, v7 = qword_1EBE78340, qword_1EBE78340 = v6, v7, (v4 = qword_1EBE78340) != 0))
  {
    v8 = v4;
    v9 = sub_1C0F501A0();
    v10 = sub_1C0F501A0();
    v11 = [v8 localizedStringForKey:v9 value:0 table:v10];

    a1 = sub_1C0F501B0();
  }

  else
  {
    if (qword_1EBE77198 != -1)
    {
      swift_once();
    }

    v13 = sub_1C0F4FD30();
    __swift_project_value_buffer(v13, qword_1EBE78348);

    v14 = sub_1C0F4FD00();
    v15 = sub_1C0F50470();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1C0EE9754(a1, a2, &v18);
      _os_log_impl(&dword_1C0E8A000, v14, v15, "No localized string for %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1C68EB070](v17, -1, -1);
      MEMORY[0x1C68EB070](v16, -1, -1);
    }
  }

  return a1;
}

id sub_1C0F25FFC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  a4(a3);
  if (v4)
  {
    v5 = sub_1C0F501A0();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

AXSSRemoteDesktop __swiftcall AXSSRemoteDesktop.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for AXSSRemoteDesktop()
{
  result = qword_1EBE78360;
  if (!qword_1EBE78360)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBE78360);
  }

  return result;
}

uint64_t sub_1C0F26178(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        return 0xD000000000000012;
      }

      if (a1 == 7)
      {
        return 0xD000000000000013;
      }

      goto LABEL_18;
    }

    if (a1 == 4)
    {
      return 0x6F4D656375646552;
    }

    else
    {
      return 0xD000000000000019;
    }
  }

  else
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        return 1701736270;
      }

      if (a1 == 1)
      {
        return 0x65764F6563696F56;
      }

LABEL_18:
      type metadata accessor for AXSSRemoteDesktopFeature();
      return sub_1C0F501D0();
    }

    if (a1 == 2)
    {
      return 1836019546;
    }

    else
    {
      return 0xD000000000000010;
    }
  }
}

uint64_t sub_1C0F262E0(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        v3 = "Toolbar button shapes";
        v1 = 0xD000000000000013;
      }

      else
      {
        if (a1 != 7)
        {
          goto LABEL_23;
        }

        v3 = "p";
        v1 = 0xD000000000000015;
      }
    }

    else
    {
      if (a1 == 4)
      {
        v1 = 0x6D20656375646552;
        v2 = 0xED00006E6F69746FLL;
        return sub_1C0F25D7C(v1, v2);
      }

      v3 = "Reduce transparency";
      v1 = 0xD00000000000001BLL;
    }

    v2 = v3 | 0x8000000000000000;
    return sub_1C0F25D7C(v1, v2);
  }

  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v1 = 1836019546;
      v2 = 0xE400000000000000;
    }

    else
    {
      v2 = 0x80000001C0F67450;
      v1 = 0xD000000000000011;
    }

    return sub_1C0F25D7C(v1, v2);
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v1 = 0x65764F6563696F56;
      v2 = 0xE900000000000072;
      return sub_1C0F25D7C(v1, v2);
    }

LABEL_23:
    if (qword_1EBE77198 != -1)
    {
      swift_once();
    }

    v8 = sub_1C0F4FD30();
    __swift_project_value_buffer(v8, qword_1EBE78348);
    v5 = sub_1C0F4FD00();
    v6 = sub_1C0F50470();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (qword_1EBE77198 != -1)
  {
    swift_once();
  }

  v4 = sub_1C0F4FD30();
  __swift_project_value_buffer(v4, qword_1EBE78348);
  v5 = sub_1C0F4FD00();
  v6 = sub_1C0F50470();
  if (!os_log_type_enabled(v5, v6))
  {
    goto LABEL_27;
  }

LABEL_26:
  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  v14 = v10;
  *v9 = 136315138;
  type metadata accessor for AXSSRemoteDesktopFeature();
  v11 = sub_1C0F501D0();
  v13 = sub_1C0EE9754(v11, v12, &v14);

  *(v9 + 4) = v13;
  _os_log_impl(&dword_1C0E8A000, v5, v6, "Calling getLocalizedName on %s", v9, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v10);
  MEMORY[0x1C68EB070](v10, -1, -1);
  MEMORY[0x1C68EB070](v9, -1, -1);
LABEL_27:

  return 0;
}

uint64_t sub_1C0F265E8(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 >= 8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if ((a1 - 1) < 2)
    {
      return 1;
    }

    if (!a1)
    {
      if (qword_1EBE77198 != -1)
      {
        swift_once();
      }

      v5 = sub_1C0F4FD30();
      __swift_project_value_buffer(v5, qword_1EBE78348);
      v2 = sub_1C0F4FD00();
      v3 = sub_1C0F50470();
      if (!os_log_type_enabled(v2, v3))
      {
        goto LABEL_16;
      }

LABEL_15:
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136315138;
      type metadata accessor for AXSSRemoteDesktopFeature();
      v8 = sub_1C0F501D0();
      v10 = sub_1C0EE9754(v8, v9, &v11);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_1C0E8A000, v2, v3, "Calling isFeaturePrivate on %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x1C68EB070](v7, -1, -1);
      MEMORY[0x1C68EB070](v6, -1, -1);
LABEL_16:

      return 0;
    }

    if (a1 != 3)
    {
LABEL_7:
      if (qword_1EBE77198 != -1)
      {
        swift_once();
      }

      v1 = sub_1C0F4FD30();
      __swift_project_value_buffer(v1, qword_1EBE78348);
      v2 = sub_1C0F4FD00();
      v3 = sub_1C0F50470();
      if (!os_log_type_enabled(v2, v3))
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t get_enum_tag_for_layout_string_26AccessibilitySharedSupport0A12ActionClientOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C0F26878(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1C0F268D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

double sub_1C0F2694C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C0F4F780();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __bridge_HIDEvent(a1);
  Type = IOHIDEventGetType();
  if (IOHIDEventGetIntegerValue() == 1 && Type == 1 && (v11 = IOHIDEventGetIntegerValue(), v12 = IOHIDEventGetIntegerValue(), v11 == 65280) && v12 == 34)
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    DataValue = IOHIDEventGetDataValue();
    (*(v5 + 104))(v8, *MEMORY[0x1E6969010], v4);
    v15 = sub_1C0F29544(DataValue, IntegerValue, v8);
    v17 = v16;
    v18 = sub_1C0F4F670();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    sub_1C0F4F660();
    sub_1C0F2977C();
    sub_1C0F4F650();

    sub_1C0EFED6C(v15, v17);

    *&v29[32] = v34;
    v30 = v35;
    *v29 = v32;
    *&v29[16] = v33;
    v21 = v36;
    v31 = v36;
    LOBYTE(v17) = v32;
    v37 = BYTE1(v32);
    v22 = *(&v34 + 1);
    v23 = v35;
    v27 = *&v29[8];
    v28 = *&v29[24];
    sub_1C0F113A4(*(&v34 + 1), v35, *(&v35 + 1), v36);

    sub_1C0F07308(v29);
    v24 = v37;
    *a2 = v17;
    *(a2 + 1) = v24;
    *(a2 + 24) = v28;
    result = *&v27;
    *(a2 + 8) = v27;
    *(a2 + 40) = v22;
    *(a2 + 48) = v23;
    *(a2 + 64) = v21;
  }

  else
  {

    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 1;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
  }

  return result;
}

uint64_t sub_1C0F26DD8()
{
  v36 = *MEMORY[0x1E69E9840];
  v1 = sub_1C0F4F6A0();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1C0F4F690();
  v33 = v0[2];
  v34 = v0[3];
  v35 = *(v0 + 64);
  v31 = *v0;
  v32 = v0[1];
  sub_1C0F297D0();
  v4 = sub_1C0F4F680();
  v6 = v5;
  v7 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v7 != 2)
    {
      v29 = *MEMORY[0x1E695E480];
      v14 = v4;
      mach_absolute_time();
      VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
      IOHIDEventSetSenderID();
      IOHIDEventSetIntegerValue();
      v21 = __bridge_IOHIDEvent(VendorDefinedEvent);
      goto LABEL_17;
    }

    v13 = *(v4 + 16);
    if (!__OFSUB__(*(v4 + 24), v13))
    {
      v14 = v4;
      v15 = sub_1C0F4F560();
      if (v15)
      {
        v16 = v15;
        v17 = sub_1C0F4F580();
        if (__OFSUB__(v13, v17))
        {
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
        }

        v18 = v13 - v17 + v16;
        sub_1C0F4F570();
        if (v18)
        {
          v19 = *MEMORY[0x1E695E480];
          mach_absolute_time();
          VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
          IOHIDEventSetSenderID();
          IOHIDEventSetIntegerValue();
          v21 = __bridge_IOHIDEvent(VendorDefinedEvent);
LABEL_17:
          v11 = v21;

          v12 = v14;
          goto LABEL_18;
        }
      }

      else
      {
        sub_1C0F4F570();
      }

      __break(1u);
      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_20;
  }

  if (!v7)
  {
    v8 = *MEMORY[0x1E695E480];
    v9 = v4;
    mach_absolute_time();
    v10 = IOHIDEventCreateVendorDefinedEvent();
    IOHIDEventSetSenderID();
    IOHIDEventSetIntegerValue();
    v11 = __bridge_IOHIDEvent(v10);

    v12 = v9;
LABEL_18:
    sub_1C0EFED6C(v12, v6);

    result = v11;
    v30 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (__OFSUB__(HIDWORD(v4), v4))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v22 = v4;
  if (v4 > v4 >> 32)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v14 = v4;
  v23 = sub_1C0F4F560();
  if (!v23)
  {
LABEL_26:
    result = sub_1C0F4F570();
    goto LABEL_27;
  }

  v24 = v23;
  v25 = sub_1C0F4F580();
  if (__OFSUB__(v22, v25))
  {
    goto LABEL_23;
  }

  v26 = v22 - v25 + v24;
  result = sub_1C0F4F570();
  if (v26)
  {
    v28 = *MEMORY[0x1E695E480];
    mach_absolute_time();
    VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
    IOHIDEventSetSenderID();
    IOHIDEventSetIntegerValue();
    v21 = __bridge_IOHIDEvent(VendorDefinedEvent);
    goto LABEL_17;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1C0F272AC()
{
  v0 = sub_1C0F4FD30();
  __swift_allocate_value_buffer(v0, qword_1EBE78368);
  __swift_project_value_buffer(v0, qword_1EBE78368);
  return sub_1C0F4FD10();
}

uint64_t sub_1C0F27330(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78450, &qword_1C0F5B600);
  v56 = *(v3 - 8);
  v57 = v3;
  v4 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78458, &qword_1C0F5B608);
  v53 = *(v6 - 8);
  v54 = v6;
  v7 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78460, &qword_1C0F5B610);
  v50 = *(v9 - 8);
  v51 = v9;
  v10 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v48 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78468, &qword_1C0F5B618);
  v13 = *(v12 - 8);
  v59 = v12;
  v60 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v48 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78470, &qword_1C0F5B620);
  v58 = *(v17 - 8);
  v18 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v48 - v19;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78478, &qword_1C0F5B628);
  v66 = *(v62 - 8);
  v21 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v23 = &v48 - v22;
  v24 = v1[1];
  v63 = *v1;
  v64 = v24;
  v25 = v1[2];
  v26 = *(v1 + 24);
  v27 = a1;
  v29 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_0(v27, v29);
  sub_1C0F29D4C();
  v61 = v23;
  sub_1C0F508B0();
  v30 = v26 >> 5;
  if (v26 >> 5 > 1)
  {
    if (v30 == 2)
    {
      LOBYTE(v67) = 2;
      sub_1C0F29E48();
      v40 = v49;
      v41 = v61;
      v42 = v62;
      sub_1C0F50700();
      v67 = v63;
      v68 = v64;
      sub_1C0F29300();
      v43 = v51;
      sub_1C0F50760();
      (*(v50 + 8))(v40, v43);
      return (*(v66 + 8))(v41, v42);
    }

    v32 = v61;
    v31 = v62;
    if (v30 == 3)
    {
      LOBYTE(v67) = 3;
      sub_1C0F29DF4();
      v33 = v52;
      sub_1C0F50700();
      v67 = v63;
      v68 = v64;
      sub_1C0F29300();
      v34 = v54;
      sub_1C0F50760();
      v35 = v53;
    }

    else
    {
      LOBYTE(v67) = 4;
      sub_1C0F29DA0();
      v33 = v55;
      sub_1C0F50700();
      v67 = v63;
      v68 = v64;
      sub_1C0F29300();
      v34 = v57;
      sub_1C0F50760();
      v35 = v56;
    }

    (*(v35 + 8))(v33, v34);
    return (*(v66 + 8))(v32, v31);
  }

  v57 = v25;
  v37 = v58;
  v36 = v59;
  v38 = v17;
  v39 = v60;
  if (!v30)
  {
    LOBYTE(v67) = 0;
    sub_1C0F29EF0();
    v32 = v61;
    v31 = v62;
    sub_1C0F50700();
    v67 = v63;
    v68 = v64;
    sub_1C0F29300();
    sub_1C0F50730();
    (*(v37 + 8))(v20, v38);
    return (*(v66 + 8))(v32, v31);
  }

  LOBYTE(v67) = 1;
  sub_1C0F29E9C();
  v45 = v61;
  v46 = v62;
  sub_1C0F50700();
  v67 = v63;
  v68 = v64;
  v69 = 0;
  sub_1C0F29300();
  v47 = v65;
  sub_1C0F50760();
  if (!v47)
  {
    LOBYTE(v67) = 1;
    sub_1C0F50720();
  }

  (*(v39 + 8))(v16, v36);
  return (*(v66 + 8))(v45, v46);
}

uint64_t sub_1C0F279F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE783F0, &qword_1C0F5B5C8);
  v63 = *(v57 - 8);
  v3 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v67 = &v55 - v4;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE783F8, &qword_1C0F5B5D0);
  v62 = *(v59 - 8);
  v5 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v64 = &v55 - v6;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78400, &qword_1C0F5B5D8);
  v58 = *(v56 - 8);
  v7 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v66 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78408, &qword_1C0F5B5E0);
  v60 = *(v9 - 8);
  v61 = v9;
  v10 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v55 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78410, &qword_1C0F5B5E8);
  v55 = *(v13 - 8);
  v14 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v55 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78418, &unk_1C0F5B5F0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v55 - v20;
  v23 = a1[3];
  v22 = a1[4];
  v68 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v23);
  sub_1C0F29D4C();
  v24 = v69;
  sub_1C0F508A0();
  if (!v24)
  {
    v25 = v16;
    *&v69 = v13;
    v27 = v66;
    v26 = v67;
    v28 = sub_1C0F506F0();
    v29 = (2 * *(v28 + 16)) | 1;
    v71 = v28;
    v72 = v28 + 32;
    v73 = 0;
    v74 = v29;
    v30 = sub_1C0F13B48();
    if (v30 != 5 && v73 == v74 >> 1)
    {
      if (v30 <= 1u)
      {
        if (!v30)
        {
          LOBYTE(v70) = 0;
          sub_1C0F29EF0();
          v39 = v25;
          sub_1C0F50670();
          sub_1C0F29204();
          v40 = v69;
          sub_1C0F506B0();
          (*(v55 + 8))(v39, v40);
          (*(v18 + 8))(v21, v17);
          swift_unknownObjectRelease();
          v48 = 0;
          v50 = 0;
          v49 = v70;
LABEL_16:
          v47 = v68;
          v41 = v65;
          goto LABEL_17;
        }

        LOBYTE(v70) = 1;
        sub_1C0F29E9C();
        sub_1C0F50670();
        v75 = 0;
        sub_1C0F29204();
        v45 = v61;
        sub_1C0F506E0();
        v51 = v21;
        v52 = v17;
        v69 = v70;
        v75 = 1;
        v48 = sub_1C0F506A0();
        v54 = v53;
        (*(v60 + 8))(v12, v45);
        (*(v18 + 8))(v51, v52);
        swift_unknownObjectRelease();
        v50 = v54 & 1 | 0x20;
        v47 = v68;
        v41 = v65;
        v49 = v69;
      }

      else
      {
        if (v30 != 2)
        {
          if (v30 == 3)
          {
            LOBYTE(v70) = 3;
            sub_1C0F29DF4();
            v31 = v64;
            sub_1C0F50670();
            sub_1C0F29204();
            v32 = v59;
            sub_1C0F506E0();
            (*(v62 + 8))(v31, v32);
            (*(v18 + 8))(v21, v17);
            swift_unknownObjectRelease();
            v48 = 0;
            v49 = v70;
            v50 = 96;
          }

          else
          {
            LOBYTE(v70) = 4;
            sub_1C0F29DA0();
            v43 = v26;
            sub_1C0F50670();
            sub_1C0F29204();
            v44 = v57;
            sub_1C0F506E0();
            (*(v63 + 8))(v43, v44);
            (*(v18 + 8))(v21, v17);
            swift_unknownObjectRelease();
            v48 = 0;
            v49 = v70;
            v50 = 0x80;
          }

          goto LABEL_16;
        }

        LOBYTE(v70) = 2;
        sub_1C0F29E48();
        sub_1C0F50670();
        v41 = v65;
        sub_1C0F29204();
        v42 = v56;
        sub_1C0F506E0();
        (*(v58 + 8))(v27, v42);
        (*(v18 + 8))(v21, v17);
        swift_unknownObjectRelease();
        v48 = 0;
        v49 = v70;
        v50 = 64;
        v47 = v68;
      }

LABEL_17:
      *v41 = v49;
      *(v41 + 16) = v48;
      *(v41 + 24) = v50;
      return __swift_destroy_boxed_opaque_existential_0(v47);
    }

    v33 = v17;
    v34 = sub_1C0F505C0();
    swift_allocError();
    v35 = v21;
    v37 = v36;
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C70, &qword_1C0F583A0) + 48);
    *v37 = &type metadata for AccessibilityActionRequestState;
    sub_1C0F50680();
    sub_1C0F505B0();
    (*(*(v34 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v34);
    swift_willThrow();
    (*(v18 + 8))(v35, v33);
    swift_unknownObjectRelease();
  }

  v47 = v68;
  return __swift_destroy_boxed_opaque_existential_0(v47);
}

uint64_t sub_1C0F283C0()
{
  v1 = *v0;
  v2 = 1953391987;
  v3 = 0x6574656C706D6F63;
  v4 = 0x64656C696166;
  if (v1 != 3)
  {
    v4 = 0x646574736F706572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x64656C646E6168;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C0F28454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C0F29A34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C0F2847C(uint64_t a1)
{
  v2 = sub_1C0F29D4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F284B8(uint64_t a1)
{
  v2 = sub_1C0F29D4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F28500(uint64_t a1)
{
  v2 = sub_1C0F29E48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F2853C(uint64_t a1)
{
  v2 = sub_1C0F29E48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F28578(uint64_t a1)
{
  v2 = sub_1C0F29DF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F285B4(uint64_t a1)
{
  v2 = sub_1C0F29DF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F285F0()
{
  if (*v0)
  {
    result = 1701669236;
  }

  else
  {
    result = 31074;
  }

  *v0;
  return result;
}

uint64_t sub_1C0F28618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 31074 && a2 == 0xE200000000000000;
  if (v5 || (sub_1C0F50790() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701669236 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C0F50790();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1C0F286F8(uint64_t a1)
{
  v2 = sub_1C0F29E9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F28734(uint64_t a1)
{
  v2 = sub_1C0F29E9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F28770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 31074 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C0F50790();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C0F287F0(uint64_t a1)
{
  v2 = sub_1C0F29DA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F2882C(uint64_t a1)
{
  v2 = sub_1C0F29DA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F28868()
{
  sub_1C0F50850();
  MEMORY[0x1C68EA070](0);
  return sub_1C0F50890();
}

uint64_t sub_1C0F288AC()
{
  sub_1C0F50850();
  MEMORY[0x1C68EA070](0);
  return sub_1C0F50890();
}

uint64_t sub_1C0F288F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 28532 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C0F50790();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C0F28978(uint64_t a1)
{
  v2 = sub_1C0F29EF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F289B4(uint64_t a1)
{
  v2 = sub_1C0F29EF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F28A20(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE783A8, &qword_1C0F5B358);
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - v5;
  v7 = *v1;
  v8 = v1[1];
  v10 = *(v1 + 1);
  v9 = *(v1 + 2);
  v11 = *(v1 + 4);
  v27 = *(v1 + 3);
  v28 = v9;
  v12 = *(v1 + 6);
  v25 = *(v1 + 5);
  v26 = v11;
  v23 = *(v1 + 7);
  v24 = v12;
  v35 = v1[64];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0F2915C();
  sub_1C0F508B0();
  LOBYTE(v31) = v7;
  v14 = v6;
  BYTE1(v31) = v8;
  v32 = v10;
  v36 = 0;
  sub_1C0F292AC();
  v15 = v30;
  sub_1C0F50760();
  if (v15)
  {
    return (*(v29 + 8))(v6, v3);
  }

  v18 = v26;
  v17 = v27;
  v20 = v23;
  v19 = v24;
  v21 = v25;
  v22 = v29;
  LOBYTE(v31) = 1;
  sub_1C0F50750();
  v31 = v17;
  v32 = v18;
  v36 = 2;
  sub_1C0F29300();

  sub_1C0F50760();

  v31 = v21;
  v32 = v19;
  v33 = v20;
  v34 = v35;
  v36 = 3;
  sub_1C0F113A4(v21, v19, v20, v35);
  sub_1C0F29354();
  sub_1C0F50760();
  sub_1C0F08B10(v31, v32, v33, v34);
  return (*(v22 + 8))(v14, v3);
}

uint64_t sub_1C0F28CA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78380, &qword_1C0F5B350);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0F2915C();
  sub_1C0F508A0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v29) = 0;
  sub_1C0F291B0();
  sub_1C0F506E0();
  v11 = v34;
  v12 = v35;
  v48 = BYTE1(v34);
  LOBYTE(v34) = 1;
  v28 = sub_1C0F506D0();
  LOBYTE(v29) = 2;
  sub_1C0F29204();
  sub_1C0F506E0();
  v26 = v34;
  v27 = v35;
  v47 = 3;
  sub_1C0F29258();
  sub_1C0F506E0();
  (*(v6 + 8))(v9, v5);
  v25 = v43;
  v23 = *(&v44 + 1);
  v24 = v44;
  LOBYTE(v29) = v11;
  v46 = v48;
  BYTE1(v29) = v48;
  v13 = v28;
  *(&v29 + 1) = v12;
  *&v30 = v28;
  v14 = v26;
  v15 = v27;
  *(&v30 + 1) = v26;
  *&v31 = v27;
  *(&v31 + 1) = v43;
  v32 = v44;
  v16 = v45;
  v33 = v45;
  v17 = v29;
  v18 = v30;
  v19 = v31;
  v20 = v44;
  *(a2 + 64) = v45;
  *(a2 + 32) = v19;
  *(a2 + 48) = v20;
  *a2 = v17;
  *(a2 + 16) = v18;
  sub_1C0F0D80C(&v29, &v34);
  __swift_destroy_boxed_opaque_existential_0(a1);
  LOBYTE(v34) = v11;
  BYTE1(v34) = v46;
  v35 = v12;
  v36 = v13;
  v37 = v14;
  v38 = v15;
  v39 = v25;
  v40 = v24;
  v41 = v23;
  v42 = v16;
  return sub_1C0F07308(&v34);
}

uint64_t sub_1C0F29014()
{
  v1 = 1802723700;
  v2 = 0x746E65696C63;
  if (*v0 != 2)
  {
    v2 = 0x6574617473;
  }

  if (*v0)
  {
    v1 = 0x7265696669646F6DLL;
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

uint64_t sub_1C0F2908C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C0F29BE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C0F290B4(uint64_t a1)
{
  v2 = sub_1C0F2915C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F290F0(uint64_t a1)
{
  v2 = sub_1C0F2915C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1C0F2915C()
{
  result = qword_1EBE78388;
  if (!qword_1EBE78388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78388);
  }

  return result;
}

unint64_t sub_1C0F291B0()
{
  result = qword_1EBE78390;
  if (!qword_1EBE78390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78390);
  }

  return result;
}

unint64_t sub_1C0F29204()
{
  result = qword_1EBE78398;
  if (!qword_1EBE78398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78398);
  }

  return result;
}

unint64_t sub_1C0F29258()
{
  result = qword_1EBE783A0;
  if (!qword_1EBE783A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE783A0);
  }

  return result;
}

unint64_t sub_1C0F292AC()
{
  result = qword_1EBE783B0;
  if (!qword_1EBE783B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE783B0);
  }

  return result;
}

unint64_t sub_1C0F29300()
{
  result = qword_1EBE783B8;
  if (!qword_1EBE783B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE783B8);
  }

  return result;
}

unint64_t sub_1C0F29354()
{
  result = qword_1EBE783C0;
  if (!qword_1EBE783C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE783C0);
  }

  return result;
}

uint64_t sub_1C0F293A8(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C0F29460(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    sub_1C0F4F790();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = sub_1C0F4F560();
  if (v3)
  {
    result = sub_1C0F4F580();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = sub_1C0F4F570();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1C0F293A8(v3, v7);

  return v8;
}

uint64_t sub_1C0F29544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C0F4F780();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C0F4F770();
  if (a2)
  {
    v11 = sub_1C0F4F5A0();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();

    v14 = sub_1C0F4F550();
    (*(v7 + 16))(v10, a3, v6);
    if ((*(v7 + 88))(v10, v6) == *MEMORY[0x1E6969010])
    {
      v15 = sub_1C0F4F590();
      *v16 |= 0x8000000000000000;
      v15(v20, 0);
    }

    else
    {
      (*(v7 + 8))(v10, v6);
    }

    v18 = sub_1C0F29460(v14, a2);
  }

  else
  {
    v17 = sub_1C0F4F770();
    v17(a1, 0);

    v18 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v18;
}

unint64_t sub_1C0F2977C()
{
  result = qword_1EBE783C8;
  if (!qword_1EBE783C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE783C8);
  }

  return result;
}

unint64_t sub_1C0F297D0()
{
  result = qword_1EBE783D0;
  if (!qword_1EBE783D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE783D0);
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

uint64_t sub_1C0F29848(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 25))
  {
    return (*a1 + 124);
  }

  v3 = ((*(a1 + 24) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 24) >> 1) & 0xF))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C0F2989C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

unint64_t sub_1C0F29930()
{
  result = qword_1EBE783D8;
  if (!qword_1EBE783D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE783D8);
  }

  return result;
}

unint64_t sub_1C0F29988()
{
  result = qword_1EBE783E0;
  if (!qword_1EBE783E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE783E0);
  }

  return result;
}

unint64_t sub_1C0F299E0()
{
  result = qword_1EBE783E8;
  if (!qword_1EBE783E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE783E8);
  }

  return result;
}

uint64_t sub_1C0F29A34(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1953391987 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C0F50790() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656C646E6168 && a2 == 0xE700000000000000 || (sub_1C0F50790() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064 || (sub_1C0F50790() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000 || (sub_1C0F50790() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646574736F706572 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1C0F50790();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1C0F29BE8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1802723700 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C0F50790() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265696669646F6DLL && a2 == 0xED00007367616C46 || (sub_1C0F50790() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E65696C63 && a2 == 0xE600000000000000 || (sub_1C0F50790() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1C0F50790();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1C0F29D4C()
{
  result = qword_1EBE78420;
  if (!qword_1EBE78420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78420);
  }

  return result;
}

unint64_t sub_1C0F29DA0()
{
  result = qword_1EBE78428;
  if (!qword_1EBE78428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78428);
  }

  return result;
}

unint64_t sub_1C0F29DF4()
{
  result = qword_1EBE78430;
  if (!qword_1EBE78430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78430);
  }

  return result;
}

unint64_t sub_1C0F29E48()
{
  result = qword_1EBE78438;
  if (!qword_1EBE78438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78438);
  }

  return result;
}

unint64_t sub_1C0F29E9C()
{
  result = qword_1EBE78440;
  if (!qword_1EBE78440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78440);
  }

  return result;
}

unint64_t sub_1C0F29EF0()
{
  result = qword_1EBE78448;
  if (!qword_1EBE78448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78448);
  }

  return result;
}

unint64_t sub_1C0F29FA8()
{
  result = qword_1EBE78480;
  if (!qword_1EBE78480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78480);
  }

  return result;
}

unint64_t sub_1C0F2A000()
{
  result = qword_1EBE78488;
  if (!qword_1EBE78488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78488);
  }

  return result;
}

unint64_t sub_1C0F2A058()
{
  result = qword_1EBE78490;
  if (!qword_1EBE78490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78490);
  }

  return result;
}

unint64_t sub_1C0F2A0B0()
{
  result = qword_1EBE78498;
  if (!qword_1EBE78498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78498);
  }

  return result;
}

unint64_t sub_1C0F2A108()
{
  result = qword_1EBE784A0;
  if (!qword_1EBE784A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE784A0);
  }

  return result;
}

unint64_t sub_1C0F2A160()
{
  result = qword_1EBE784A8;
  if (!qword_1EBE784A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE784A8);
  }

  return result;
}

unint64_t sub_1C0F2A1B8()
{
  result = qword_1EBE784B0;
  if (!qword_1EBE784B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE784B0);
  }

  return result;
}

unint64_t sub_1C0F2A210()
{
  result = qword_1EBE784B8;
  if (!qword_1EBE784B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE784B8);
  }

  return result;
}

unint64_t sub_1C0F2A268()
{
  result = qword_1EBE784C0;
  if (!qword_1EBE784C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE784C0);
  }

  return result;
}

unint64_t sub_1C0F2A2C0()
{
  result = qword_1EBE784C8;
  if (!qword_1EBE784C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE784C8);
  }

  return result;
}

unint64_t sub_1C0F2A318()
{
  result = qword_1EBE784D0;
  if (!qword_1EBE784D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE784D0);
  }

  return result;
}

unint64_t sub_1C0F2A370()
{
  result = qword_1EBE784D8;
  if (!qword_1EBE784D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE784D8);
  }

  return result;
}

unint64_t sub_1C0F2A3C8()
{
  result = qword_1EBE784E0;
  if (!qword_1EBE784E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE784E0);
  }

  return result;
}

unint64_t sub_1C0F2A420()
{
  result = qword_1EBE784E8;
  if (!qword_1EBE784E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE784E8);
  }

  return result;
}

unint64_t sub_1C0F2A478()
{
  result = qword_1EBE784F0;
  if (!qword_1EBE784F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE784F0);
  }

  return result;
}

unint64_t sub_1C0F2A4D0()
{
  result = qword_1EBE784F8;
  if (!qword_1EBE784F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE784F8);
  }

  return result;
}

unint64_t sub_1C0F2A528()
{
  result = qword_1EBE78500;
  if (!qword_1EBE78500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78500);
  }

  return result;
}

unint64_t sub_1C0F2A580()
{
  result = qword_1EBE78508;
  if (!qword_1EBE78508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78508);
  }

  return result;
}

unint64_t AccessibilitySystemAction.resolve(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  switch(*v2)
  {
    case 1:
      *(a2 + 24) = &type metadata for AccessibilitySystemAction.ArmApplePay;
      result = sub_1C0F2AF54();
      goto LABEL_21;
    case 2:
      *(a2 + 24) = &type metadata for AccessibilitySystemAction.Camera;
      result = sub_1C0F2AF00();
      goto LABEL_21;
    case 3:
      *(a2 + 24) = &type metadata for AccessibilitySystemAction.ControlCenter;
      result = sub_1C0F2AEAC();
      goto LABEL_21;
    case 4:
      *(a2 + 24) = &type metadata for AccessibilitySystemAction.FrontCamera;
      result = sub_1C0F2AE58();
      goto LABEL_21;
    case 5:
      *(a2 + 24) = &type metadata for AccessibilitySystemAction.Home;
      result = sub_1C0F2AE04();
      goto LABEL_21;
    case 6:
      sub_1C0EED570(a1, v14, &qword_1EBE78558, &qword_1C0F5BCF0);
      if (v15)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78570, &qword_1C0F5BD00);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78598, &qword_1C0F5BD18);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v19 = 0;
          v17 = 0u;
          v18 = 0u;
        }
      }

      else
      {
        sub_1C0EEFAA8(v14, &qword_1EBE78558, &qword_1C0F5BCF0);
        v17 = 0u;
        v18 = 0u;
        v19 = 0;
      }

      *(a2 + 24) = &type metadata for AccessibilitySystemAction.Mute;
      *(a2 + 32) = sub_1C0F2ADB0();
      sub_1C0EED570(&v17, v14, &qword_1EBE78590, &qword_1C0F5BD10);
      v5 = v15;
      if (v15)
      {
        v6 = v16;
        __swift_project_boxed_opaque_existential_0(v14, v15);
        v7 = (*(v6 + 16))(v5, v6);
        v8 = &qword_1EBE78590;
        v9 = &qword_1C0F5BD10;
        goto LABEL_33;
      }

      v10 = &qword_1EBE78590;
      v11 = &qword_1C0F5BD10;
      goto LABEL_35;
    case 7:
      *(a2 + 24) = &type metadata for AccessibilitySystemAction.NotificationCenter;
      result = sub_1C0F2AD5C();
      goto LABEL_21;
    case 8:
      sub_1C0EED570(a1, v14, &qword_1EBE78558, &qword_1C0F5BCF0);
      if (v15)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78570, &qword_1C0F5BD00);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78578, &qword_1C0F5BD08);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v19 = 0;
          v17 = 0u;
          v18 = 0u;
        }
      }

      else
      {
        sub_1C0EEFAA8(v14, &qword_1EBE78558, &qword_1C0F5BCF0);
        v17 = 0u;
        v18 = 0u;
        v19 = 0;
      }

      *(a2 + 24) = &type metadata for AccessibilitySystemAction.OrientationLock;
      *(a2 + 32) = sub_1C0F2AD08();
      sub_1C0EED570(&v17, v14, &qword_1EBE78568, &qword_1C0F5BCF8);
      v12 = v15;
      if (v15)
      {
        v13 = v16;
        __swift_project_boxed_opaque_existential_0(v14, v15);
        v7 = (*(v13 + 16))(v12, v13);
        v8 = &qword_1EBE78568;
        v9 = &qword_1C0F5BCF8;
LABEL_33:
        sub_1C0EEFAA8(&v17, v8, v9);
        result = __swift_destroy_boxed_opaque_existential_0(v14);
      }

      else
      {
        v10 = &qword_1EBE78568;
        v11 = &qword_1C0F5BCF8;
LABEL_35:
        sub_1C0EEFAA8(&v17, v10, v11);
        result = sub_1C0EEFAA8(v14, v10, v11);
        v7 = 0;
      }

      *a2 = v7 & 1;
      return result;
    case 9:
      *(a2 + 24) = &type metadata for AccessibilitySystemAction.Reachability;
      result = sub_1C0F2ACB4();
      goto LABEL_21;
    case 0xA:
      *(a2 + 24) = &type metadata for AccessibilitySystemAction.RebootDevice;
      result = sub_1C0F2AC60();
      goto LABEL_21;
    case 0xB:
      *(a2 + 24) = &type metadata for AccessibilitySystemAction.Siri;
      result = sub_1C0F2AC0C();
      goto LABEL_21;
    case 0xC:
      *(a2 + 24) = &type metadata for AccessibilitySystemAction.SOS;
      result = sub_1C0F2ABB8();
      goto LABEL_21;
    case 0xD:
      *(a2 + 24) = &type metadata for AccessibilitySystemAction.Spotlight;
      result = sub_1C0F2AB64();
      goto LABEL_21;
    case 0xE:
      *(a2 + 24) = &type metadata for AccessibilitySystemAction.Sysdiagnose;
      result = sub_1C0F2AB10();
      goto LABEL_21;
    case 0xF:
      *(a2 + 24) = &type metadata for AccessibilitySystemAction.ToggleDock;
      result = sub_1C0F2AABC();
      goto LABEL_21;
    case 0x10:
      *(a2 + 24) = &type metadata for AccessibilitySystemAction.TypeToSiri;
      result = sub_1C0F2AA68();
      goto LABEL_21;
    case 0x11:
      *(a2 + 24) = &type metadata for AccessibilitySystemAction.VisualIntelligence;
      result = sub_1C0F2AA14();
      goto LABEL_21;
    default:
      *(a2 + 24) = &type metadata for AccessibilitySystemAction.AppSwitcher;
      result = sub_1C0F2AFA8();
LABEL_21:
      *(a2 + 32) = result;
      return result;
  }
}

unint64_t sub_1C0F2AA14()
{
  result = qword_1EBE78510;
  if (!qword_1EBE78510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78510);
  }

  return result;
}

unint64_t sub_1C0F2AA68()
{
  result = qword_1EBE78518;
  if (!qword_1EBE78518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78518);
  }

  return result;
}

unint64_t sub_1C0F2AABC()
{
  result = qword_1EBE78520;
  if (!qword_1EBE78520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78520);
  }

  return result;
}

unint64_t sub_1C0F2AB10()
{
  result = qword_1EBE78528;
  if (!qword_1EBE78528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78528);
  }

  return result;
}

unint64_t sub_1C0F2AB64()
{
  result = qword_1EBE78530;
  if (!qword_1EBE78530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78530);
  }

  return result;
}

unint64_t sub_1C0F2ABB8()
{
  result = qword_1EBE78538;
  if (!qword_1EBE78538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78538);
  }

  return result;
}

unint64_t sub_1C0F2AC0C()
{
  result = qword_1EBE78540;
  if (!qword_1EBE78540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78540);
  }

  return result;
}

unint64_t sub_1C0F2AC60()
{
  result = qword_1EBE78548;
  if (!qword_1EBE78548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78548);
  }

  return result;
}

unint64_t sub_1C0F2ACB4()
{
  result = qword_1EBE78550;
  if (!qword_1EBE78550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78550);
  }

  return result;
}

unint64_t sub_1C0F2AD08()
{
  result = qword_1EBE78560;
  if (!qword_1EBE78560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78560);
  }

  return result;
}

unint64_t sub_1C0F2AD5C()
{
  result = qword_1EBE78580;
  if (!qword_1EBE78580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78580);
  }

  return result;
}

unint64_t sub_1C0F2ADB0()
{
  result = qword_1EBE78588;
  if (!qword_1EBE78588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78588);
  }

  return result;
}

unint64_t sub_1C0F2AE04()
{
  result = qword_1EBE785A0;
  if (!qword_1EBE785A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE785A0);
  }

  return result;
}

unint64_t sub_1C0F2AE58()
{
  result = qword_1EBE785A8;
  if (!qword_1EBE785A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE785A8);
  }

  return result;
}

unint64_t sub_1C0F2AEAC()
{
  result = qword_1EBE785B0;
  if (!qword_1EBE785B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE785B0);
  }

  return result;
}

unint64_t sub_1C0F2AF00()
{
  result = qword_1EBE785B8;
  if (!qword_1EBE785B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE785B8);
  }

  return result;
}

unint64_t sub_1C0F2AF54()
{
  result = qword_1EBE785C0;
  if (!qword_1EBE785C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE785C0);
  }

  return result;
}

unint64_t sub_1C0F2AFA8()
{
  result = qword_1EBE785C8;
  if (!qword_1EBE785C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE785C8);
  }

  return result;
}

unint64_t sub_1C0F2B010(char a1)
{
  result = 0x6374697753707061;
  switch(a1)
  {
    case 1:
      result = 0x656C7070416D7261;
      break;
    case 2:
      result = 0x6172656D6163;
      break;
    case 3:
      result = 0x436C6F72746E6F63;
      break;
    case 4:
      result = 0x6D6143746E6F7266;
      break;
    case 5:
      result = 1701670760;
      break;
    case 6:
      result = 1702131053;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x7461746E6569726FLL;
      break;
    case 9:
      result = 0x6962616863616572;
      break;
    case 10:
      result = 0x6544746F6F626572;
      break;
    case 11:
      result = 1769105779;
      break;
    case 12:
      result = 7565171;
      break;
    case 13:
      result = 0x6867696C746F7073;
      break;
    case 14:
      result = 0x6E67616964737973;
      break;
    case 15:
      result = 0x6F44656C67676F74;
      break;
    case 16:
      result = 0x69536F5465707974;
      break;
    case 17:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C0F2B218(uint64_t a1)
{
  v2 = sub_1C0F2D174();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F2B254(uint64_t a1)
{
  v2 = sub_1C0F2D174();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F2B290(uint64_t a1)
{
  v2 = sub_1C0F2D120();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F2B2CC(uint64_t a1)
{
  v2 = sub_1C0F2D120();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F2B308(uint64_t a1)
{
  v2 = sub_1C0F2D0CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F2B344(uint64_t a1)
{
  v2 = sub_1C0F2D0CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F2B388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C0F31120(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C0F2B3BC(uint64_t a1)
{
  v2 = sub_1C0F2CB8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F2B3F8(uint64_t a1)
{
  v2 = sub_1C0F2CB8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F2B434(uint64_t a1)
{
  v2 = sub_1C0F2D078();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F2B470(uint64_t a1)
{
  v2 = sub_1C0F2D078();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F2B4AC(uint64_t a1)
{
  v2 = sub_1C0F2D024();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F2B4E8(uint64_t a1)
{
  v2 = sub_1C0F2D024();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F2B524(uint64_t a1)
{
  v2 = sub_1C0F2CFD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F2B560(uint64_t a1)
{
  v2 = sub_1C0F2CFD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F2B59C(uint64_t a1)
{
  v2 = sub_1C0F2CF7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F2B5D8(uint64_t a1)
{
  v2 = sub_1C0F2CF7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F2B614(uint64_t a1)
{
  v2 = sub_1C0F2CF28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F2B650(uint64_t a1)
{
  v2 = sub_1C0F2CF28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F2B68C(uint64_t a1)
{
  v2 = sub_1C0F2CED4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F2B6C8(uint64_t a1)
{
  v2 = sub_1C0F2CED4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F2B704(uint64_t a1)
{
  v2 = sub_1C0F2CE80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F2B740(uint64_t a1)
{
  v2 = sub_1C0F2CE80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F2B77C(uint64_t a1)
{
  v2 = sub_1C0F2CE2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F2B7B8(uint64_t a1)
{
  v2 = sub_1C0F2CE2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F2B7F4(uint64_t a1)
{
  v2 = sub_1C0F2CDD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F2B830(uint64_t a1)
{
  v2 = sub_1C0F2CDD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F2B86C(uint64_t a1)
{
  v2 = sub_1C0F2CD84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F2B8A8(uint64_t a1)
{
  v2 = sub_1C0F2CD84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F2B8E4(uint64_t a1)
{
  v2 = sub_1C0F2CD30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F2B920(uint64_t a1)
{
  v2 = sub_1C0F2CD30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F2B95C(uint64_t a1)
{
  v2 = sub_1C0F2CCDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F2B998(uint64_t a1)
{
  v2 = sub_1C0F2CCDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F2B9D4(uint64_t a1)
{
  v2 = sub_1C0F2CC88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F2BA10(uint64_t a1)
{
  v2 = sub_1C0F2CC88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F2BA4C(uint64_t a1)
{
  v2 = sub_1C0F2CC34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F2BA88(uint64_t a1)
{
  v2 = sub_1C0F2CC34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F2BAC4(uint64_t a1)
{
  v2 = sub_1C0F2CBE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F2BB00(uint64_t a1)
{
  v2 = sub_1C0F2CBE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccessibilitySystemAction.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE785D0, &qword_1C0F5BD20);
  v127 = *(v4 - 8);
  v128 = v4;
  v5 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v126 = &v77 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE785D8, &qword_1C0F5BD28);
  v124 = *(v7 - 8);
  v125 = v7;
  v8 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v123 = &v77 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE785E0, &qword_1C0F5BD30);
  v121 = *(v10 - 8);
  v122 = v10;
  v11 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v120 = &v77 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE785E8, &qword_1C0F5BD38);
  v118 = *(v13 - 8);
  v119 = v13;
  v14 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v117 = &v77 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE785F0, &qword_1C0F5BD40);
  v115 = *(v16 - 8);
  v116 = v16;
  v17 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v114 = &v77 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE785F8, &qword_1C0F5BD48);
  v112 = *(v19 - 8);
  v113 = v19;
  v20 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v111 = &v77 - v21;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78600, &qword_1C0F5BD50);
  v109 = *(v110 - 8);
  v22 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v108 = &v77 - v23;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78608, &qword_1C0F5BD58);
  v106 = *(v107 - 8);
  v24 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v105 = &v77 - v25;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78610, &qword_1C0F5BD60);
  v103 = *(v104 - 8);
  v26 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v102 = &v77 - v27;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78618, &qword_1C0F5BD68);
  v100 = *(v101 - 8);
  v28 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v99 = &v77 - v29;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78620, &qword_1C0F5BD70);
  v97 = *(v98 - 8);
  v30 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v96 = &v77 - v31;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78628, &qword_1C0F5BD78);
  v94 = *(v95 - 8);
  v32 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v93 = &v77 - v33;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78630, &qword_1C0F5BD80);
  v91 = *(v92 - 8);
  v34 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v90 = &v77 - v35;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78638, &qword_1C0F5BD88);
  v88 = *(v89 - 8);
  v36 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v87 = &v77 - v37;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78640, &qword_1C0F5BD90);
  v85 = *(v86 - 8);
  v38 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v84 = &v77 - v39;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78648, &qword_1C0F5BD98);
  v82 = *(v83 - 8);
  v40 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v81 = &v77 - v41;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78650, &qword_1C0F5BDA0);
  v79 = *(v80 - 8);
  v42 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v44 = &v77 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78658, &qword_1C0F5BDA8);
  v78 = *(v45 - 8);
  v46 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v77 - v47;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78660, &qword_1C0F5BDB0);
  v49 = *(v130 - 8);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v130);
  v52 = &v77 - v51;
  v53 = *v2;
  v54 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0F2CB8C();
  v129 = v52;
  sub_1C0F508B0();
  v55 = (v49 + 8);
  switch(v53)
  {
    case 1:
      v132 = 1;
      sub_1C0F2D120();
      v70 = v129;
      v71 = v130;
      sub_1C0F50700();
      (*(v79 + 8))(v44, v80);
      return (*v55)(v70, v71);
    case 2:
      v132 = 2;
      sub_1C0F2D0CC();
      v67 = v81;
      v57 = v129;
      v56 = v130;
      sub_1C0F50700();
      v62 = *(v82 + 8);
      v63 = v67;
      v64 = &v115;
      goto LABEL_21;
    case 3:
      v132 = 3;
      sub_1C0F2D078();
      v68 = v84;
      v57 = v129;
      v56 = v130;
      sub_1C0F50700();
      v62 = *(v85 + 8);
      v63 = v68;
      v64 = &v118;
      goto LABEL_21;
    case 4:
      v132 = 4;
      sub_1C0F2D024();
      v65 = v87;
      v57 = v129;
      v56 = v130;
      sub_1C0F50700();
      v62 = *(v88 + 8);
      v63 = v65;
      v64 = &v121;
      goto LABEL_21;
    case 5:
      v132 = 5;
      sub_1C0F2CFD0();
      v73 = v90;
      v57 = v129;
      v56 = v130;
      sub_1C0F50700();
      v62 = *(v91 + 8);
      v63 = v73;
      v64 = &v124;
      goto LABEL_21;
    case 6:
      v132 = 6;
      sub_1C0F2CF7C();
      v74 = v93;
      v57 = v129;
      v56 = v130;
      sub_1C0F50700();
      v62 = *(v94 + 8);
      v63 = v74;
      v64 = &v127;
      goto LABEL_21;
    case 7:
      v132 = 7;
      sub_1C0F2CF28();
      v69 = v96;
      v57 = v129;
      v56 = v130;
      sub_1C0F50700();
      v62 = *(v97 + 8);
      v63 = v69;
      v64 = &v130;
      goto LABEL_21;
    case 8:
      v132 = 8;
      sub_1C0F2CED4();
      v76 = v99;
      v57 = v129;
      v56 = v130;
      sub_1C0F50700();
      v62 = *(v100 + 8);
      v63 = v76;
      v64 = &v131;
      goto LABEL_21;
    case 9:
      v132 = 9;
      sub_1C0F2CE80();
      v66 = v102;
      v57 = v129;
      v56 = v130;
      sub_1C0F50700();
      v62 = *(v103 + 8);
      v63 = v66;
      v64 = &v133;
      goto LABEL_21;
    case 10:
      v132 = 10;
      sub_1C0F2CE2C();
      v75 = v105;
      v57 = v129;
      v56 = v130;
      sub_1C0F50700();
      v62 = *(v106 + 8);
      v63 = v75;
      v64 = &v134;
      goto LABEL_21;
    case 11:
      v132 = 11;
      sub_1C0F2CDD8();
      v61 = v108;
      v57 = v129;
      v56 = v130;
      sub_1C0F50700();
      v62 = *(v109 + 8);
      v63 = v61;
      v64 = &v135;
LABEL_21:
      v62(v63, *(v64 - 32));
      return (*v55)(v57, v56);
    case 12:
      v132 = 12;
      sub_1C0F2CD84();
      v58 = v111;
      v57 = v129;
      v56 = v130;
      sub_1C0F50700();
      v60 = v112;
      v59 = v113;
      goto LABEL_17;
    case 13:
      v132 = 13;
      sub_1C0F2CD30();
      v58 = v114;
      v57 = v129;
      v56 = v130;
      sub_1C0F50700();
      v60 = v115;
      v59 = v116;
      goto LABEL_17;
    case 14:
      v132 = 14;
      sub_1C0F2CCDC();
      v58 = v117;
      v57 = v129;
      v56 = v130;
      sub_1C0F50700();
      v60 = v118;
      v59 = v119;
      goto LABEL_17;
    case 15:
      v132 = 15;
      sub_1C0F2CC88();
      v58 = v120;
      v57 = v129;
      v56 = v130;
      sub_1C0F50700();
      v60 = v121;
      v59 = v122;
      goto LABEL_17;
    case 16:
      v132 = 16;
      sub_1C0F2CC34();
      v58 = v123;
      v57 = v129;
      v56 = v130;
      sub_1C0F50700();
      v60 = v124;
      v59 = v125;
      goto LABEL_17;
    case 17:
      v132 = 17;
      sub_1C0F2CBE0();
      v58 = v126;
      v57 = v129;
      v56 = v130;
      sub_1C0F50700();
      v60 = v127;
      v59 = v128;
LABEL_17:
      (*(v60 + 8))(v58, v59);
      break;
    default:
      v132 = 0;
      sub_1C0F2D174();
      v57 = v129;
      v56 = v130;
      sub_1C0F50700();
      (*(v78 + 8))(v48, v45);
      break;
  }

  return (*v55)(v57, v56);
}

unint64_t sub_1C0F2CB8C()
{
  result = qword_1EBE78668;
  if (!qword_1EBE78668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78668);
  }

  return result;
}

unint64_t sub_1C0F2CBE0()
{
  result = qword_1EBE78670;
  if (!qword_1EBE78670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78670);
  }

  return result;
}

unint64_t sub_1C0F2CC34()
{
  result = qword_1EBE78678;
  if (!qword_1EBE78678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78678);
  }

  return result;
}

unint64_t sub_1C0F2CC88()
{
  result = qword_1EBE78680;
  if (!qword_1EBE78680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78680);
  }

  return result;
}

unint64_t sub_1C0F2CCDC()
{
  result = qword_1EBE78688;
  if (!qword_1EBE78688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78688);
  }

  return result;
}

unint64_t sub_1C0F2CD30()
{
  result = qword_1EBE78690;
  if (!qword_1EBE78690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78690);
  }

  return result;
}

unint64_t sub_1C0F2CD84()
{
  result = qword_1EBE78698;
  if (!qword_1EBE78698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78698);
  }

  return result;
}

unint64_t sub_1C0F2CDD8()
{
  result = qword_1EBE786A0;
  if (!qword_1EBE786A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE786A0);
  }

  return result;
}

unint64_t sub_1C0F2CE2C()
{
  result = qword_1EBE786A8;
  if (!qword_1EBE786A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE786A8);
  }

  return result;
}

unint64_t sub_1C0F2CE80()
{
  result = qword_1EBE786B0;
  if (!qword_1EBE786B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE786B0);
  }

  return result;
}

unint64_t sub_1C0F2CED4()
{
  result = qword_1EBE786B8;
  if (!qword_1EBE786B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE786B8);
  }

  return result;
}

unint64_t sub_1C0F2CF28()
{
  result = qword_1EBE786C0;
  if (!qword_1EBE786C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE786C0);
  }

  return result;
}

unint64_t sub_1C0F2CF7C()
{
  result = qword_1EBE786C8;
  if (!qword_1EBE786C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE786C8);
  }

  return result;
}

unint64_t sub_1C0F2CFD0()
{
  result = qword_1EBE786D0;
  if (!qword_1EBE786D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE786D0);
  }

  return result;
}

unint64_t sub_1C0F2D024()
{
  result = qword_1EBE786D8;
  if (!qword_1EBE786D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE786D8);
  }

  return result;
}

unint64_t sub_1C0F2D078()
{
  result = qword_1EBE786E0;
  if (!qword_1EBE786E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE786E0);
  }

  return result;
}

unint64_t sub_1C0F2D0CC()
{
  result = qword_1EBE786E8;
  if (!qword_1EBE786E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE786E8);
  }

  return result;
}

unint64_t sub_1C0F2D120()
{
  result = qword_1EBE786F0;
  if (!qword_1EBE786F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE786F0);
  }

  return result;
}

unint64_t sub_1C0F2D174()
{
  result = qword_1EBE786F8;
  if (!qword_1EBE786F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE786F8);
  }

  return result;
}

uint64_t AccessibilitySystemAction.hashValue.getter()
{
  v1 = *v0;
  sub_1C0F50850();
  MEMORY[0x1C68EA070](v1);
  return sub_1C0F50890();
}

uint64_t AccessibilitySystemAction.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v156 = a2;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78700, &qword_1C0F5BDB8);
  v138 = *(v155 - 8);
  v3 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v155);
  v151 = v101 - v4;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78708, &qword_1C0F5BDC0);
  v136 = *(v137 - 8);
  v5 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v150 = v101 - v6;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78710, &qword_1C0F5BDC8);
  v134 = *(v135 - 8);
  v7 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v135);
  v149 = v101 - v8;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78718, &qword_1C0F5BDD0);
  v132 = *(v133 - 8);
  v9 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v148 = v101 - v10;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78720, &qword_1C0F5BDD8);
  v130 = *(v131 - 8);
  v11 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v147 = v101 - v12;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78728, &qword_1C0F5BDE0);
  v128 = *(v129 - 8);
  v13 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v129);
  v146 = v101 - v14;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78730, &qword_1C0F5BDE8);
  v126 = *(v127 - 8);
  v15 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v127);
  v145 = v101 - v16;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78738, &qword_1C0F5BDF0);
  v124 = *(v125 - 8);
  v17 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v144 = v101 - v18;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78740, &qword_1C0F5BDF8);
  v122 = *(v123 - 8);
  v19 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v143 = v101 - v20;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78748, &qword_1C0F5BE00);
  v120 = *(v121 - 8);
  v21 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v121);
  v142 = v101 - v22;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78750, &qword_1C0F5BE08);
  v118 = *(v119 - 8);
  v23 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v119);
  v139 = v101 - v24;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78758, &qword_1C0F5BE10);
  v117 = *(v116 - 8);
  v25 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v154 = v101 - v26;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78760, &qword_1C0F5BE18);
  v114 = *(v115 - 8);
  v27 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v115);
  v153 = v101 - v28;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78768, &qword_1C0F5BE20);
  v112 = *(v113 - 8);
  v29 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v141 = v101 - v30;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78770, &qword_1C0F5BE28);
  v110 = *(v111 - 8);
  v31 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v140 = v101 - v32;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78778, &qword_1C0F5BE30);
  v108 = *(v109 - 8);
  v33 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v152 = v101 - v34;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78780, &qword_1C0F5BE38);
  v106 = *(v107 - 8);
  v35 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v37 = v101 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78788, &qword_1C0F5BE40);
  v105 = *(v38 - 8);
  v39 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v41 = v101 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78790, &unk_1C0F5BE48);
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v46 = v101 - v45;
  v47 = a1[3];
  v48 = a1[4];
  v158 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v47);
  sub_1C0F2CB8C();
  v49 = v157;
  sub_1C0F508A0();
  if (v49)
  {
LABEL_8:
    v68 = v158;
    return __swift_destroy_boxed_opaque_existential_0(v68);
  }

  v102 = v41;
  v101[1] = v38;
  v103 = v37;
  v50 = v152;
  v51 = v153;
  v52 = v154;
  v104 = 0;
  v54 = v155;
  v53 = v156;
  v157 = v43;
  v55 = sub_1C0F506F0();
  v56 = (2 * *(v55 + 16)) | 1;
  v159[0] = v55;
  v159[1] = v55 + 32;
  v160 = 0;
  v161 = v56;
  v57 = sub_1C0F13B7C();
  if (v160 != v161 >> 1)
  {
LABEL_6:
    v64 = sub_1C0F505C0();
    swift_allocError();
    v66 = v65;
    v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C70, &qword_1C0F583A0) + 48);
    *v66 = &type metadata for AccessibilitySystemAction;
    sub_1C0F50680();
    sub_1C0F505B0();
    (*(*(v64 - 8) + 104))(v66, *MEMORY[0x1E69E6AF8], v64);
    swift_willThrow();
LABEL_7:
    (*(v157 + 8))(v46, v42);
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v58 = v57;
  switch(v57)
  {
    case 0:
      v164 = 0;
      sub_1C0F2D174();
      v59 = v102;
      v60 = v104;
      sub_1C0F50670();
      if (v60)
      {
        goto LABEL_7;
      }

      v61 = *(v105 + 8);
      v62 = v59;
      v63 = &v133;
      goto LABEL_44;
    case 1:
      v164 = 1;
      sub_1C0F2D120();
      v89 = v103;
      v90 = v104;
      sub_1C0F50670();
      if (v90)
      {
        goto LABEL_7;
      }

      v61 = *(v106 + 8);
      v62 = v89;
      v63 = &v139;
      goto LABEL_44;
    case 2:
      v164 = 2;
      sub_1C0F2D0CC();
      v82 = v104;
      sub_1C0F50670();
      if (v82)
      {
        goto LABEL_7;
      }

      v61 = *(v108 + 8);
      v62 = v50;
      v63 = &v141;
      goto LABEL_44;
    case 3:
      v164 = 3;
      sub_1C0F2D078();
      v85 = v140;
      v86 = v104;
      sub_1C0F50670();
      if (v86)
      {
        goto LABEL_7;
      }

      v61 = *(v110 + 8);
      v62 = v85;
      v63 = &v143;
      goto LABEL_44;
    case 4:
      v164 = 4;
      sub_1C0F2D024();
      v76 = v141;
      v77 = v104;
      sub_1C0F50670();
      if (v77)
      {
        goto LABEL_7;
      }

      v61 = *(v112 + 8);
      v62 = v76;
      v63 = &v145;
      goto LABEL_44;
    case 5:
      v164 = 5;
      sub_1C0F2CFD0();
      v93 = v104;
      sub_1C0F50670();
      if (v93)
      {
        goto LABEL_7;
      }

      v61 = *(v114 + 8);
      v62 = v51;
      v63 = &v147;
      goto LABEL_44;
    case 6:
      v164 = 6;
      sub_1C0F2CF7C();
      v96 = v104;
      sub_1C0F50670();
      if (v96)
      {
        goto LABEL_7;
      }

      v61 = *(v117 + 8);
      v62 = v52;
      v63 = &v148;
      goto LABEL_44;
    case 7:
      v164 = 7;
      sub_1C0F2CF28();
      v87 = v139;
      v88 = v104;
      sub_1C0F50670();
      if (v88)
      {
        goto LABEL_7;
      }

      v61 = *(v118 + 8);
      v62 = v87;
      v63 = &v151;
      goto LABEL_44;
    case 8:
      v164 = 8;
      sub_1C0F2CED4();
      v99 = v142;
      v100 = v104;
      sub_1C0F50670();
      if (v100)
      {
        goto LABEL_7;
      }

      v61 = *(v120 + 8);
      v62 = v99;
      v63 = &v153;
      goto LABEL_44;
    case 9:
      v164 = 9;
      sub_1C0F2CE80();
      v80 = v143;
      v81 = v104;
      sub_1C0F50670();
      if (v81)
      {
        goto LABEL_7;
      }

      v61 = *(v122 + 8);
      v62 = v80;
      v63 = &v155;
      goto LABEL_44;
    case 10:
      v164 = 10;
      sub_1C0F2CE2C();
      v97 = v144;
      v98 = v104;
      sub_1C0F50670();
      if (v98)
      {
        goto LABEL_7;
      }

      v61 = *(v124 + 8);
      v62 = v97;
      v63 = &v157;
      goto LABEL_44;
    case 11:
      v164 = 11;
      sub_1C0F2CDD8();
      v74 = v145;
      v75 = v104;
      sub_1C0F50670();
      if (v75)
      {
        goto LABEL_7;
      }

      v61 = *(v126 + 8);
      v62 = v74;
      v63 = v159;
      goto LABEL_44;
    case 12:
      v164 = 12;
      sub_1C0F2CD84();
      v78 = v146;
      v79 = v104;
      sub_1C0F50670();
      if (v79)
      {
        goto LABEL_7;
      }

      v61 = *(v128 + 8);
      v62 = v78;
      v63 = &v160;
      goto LABEL_44;
    case 13:
      v164 = 13;
      sub_1C0F2CD30();
      v94 = v147;
      v95 = v104;
      sub_1C0F50670();
      if (v95)
      {
        goto LABEL_7;
      }

      v61 = *(v130 + 8);
      v62 = v94;
      v63 = &v162;
      goto LABEL_44;
    case 14:
      v164 = 14;
      sub_1C0F2CCDC();
      v72 = v148;
      v73 = v104;
      sub_1C0F50670();
      if (v73)
      {
        goto LABEL_7;
      }

      v61 = *(v132 + 8);
      v62 = v72;
      v63 = &v163;
      goto LABEL_44;
    case 15:
      v164 = 15;
      sub_1C0F2CC88();
      v83 = v149;
      v84 = v104;
      sub_1C0F50670();
      if (v84)
      {
        goto LABEL_7;
      }

      v61 = *(v134 + 8);
      v62 = v83;
      v63 = &v165;
      goto LABEL_44;
    case 16:
      v164 = 16;
      sub_1C0F2CC34();
      v70 = v150;
      v71 = v104;
      sub_1C0F50670();
      if (v71)
      {
        goto LABEL_7;
      }

      v61 = *(v136 + 8);
      v62 = v70;
      v63 = &v166;
LABEL_44:
      v61(v62, *(v63 - 32));
      break;
    case 17:
      v164 = 17;
      sub_1C0F2CBE0();
      v91 = v151;
      v92 = v104;
      sub_1C0F50670();
      if (v92)
      {
        goto LABEL_7;
      }

      (*(v138 + 8))(v91, v54);
      break;
    default:
      goto LABEL_6;
  }

  (*(v157 + 8))(v46, v42);
  swift_unknownObjectRelease();
  v68 = v158;
  *v53 = v58;
  return __swift_destroy_boxed_opaque_existential_0(v68);
}

uint64_t AccessibilitySystemAction.Mute.imageKey.getter()
{
  if (*v0)
  {
    result = 0x756D6E556E6F6349;
  }

  else
  {
    result = 0x6574754D6E6F6349;
  }

  *v0;
  return result;
}

uint64_t sub_1C0F2E88C()
{
  if (*v0)
  {
    result = 0x756D6E556E6F6349;
  }

  else
  {
    result = 0x6574754D6E6F6349;
  }

  *v0;
  return result;
}

unint64_t AccessibilitySystemAction.OrientationLock.nameKey.getter()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

unint64_t AccessibilitySystemAction.OrientationLock.imageKey.getter()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_1C0F2EA40()
{
  v1 = *v0;
  sub_1C0F50850();
  sub_1C0F50870();
  return sub_1C0F50890();
}

unint64_t sub_1C0F2EA88()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

unint64_t sub_1C0F2EAC4()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_1C0F2EB00()
{
  v1 = *v0;
  sub_1C0F50850();
  sub_1C0F50870();
  return sub_1C0F50890();
}

unint64_t sub_1C0F2EFAC()
{
  result = qword_1EBE78798;
  if (!qword_1EBE78798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78798);
  }

  return result;
}

unint64_t sub_1C0F2F004()
{
  result = qword_1EBE787A0;
  if (!qword_1EBE787A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE787A8, &qword_1C0F5BF10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE787A0);
  }

  return result;
}

unint64_t sub_1C0F2F068(uint64_t a1)
{
  result = sub_1C0F2F090();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F2F090()
{
  result = qword_1EBE787B0;
  if (!qword_1EBE787B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE787B0);
  }

  return result;
}

unint64_t sub_1C0F2F0E8()
{
  result = qword_1EBE787B8;
  if (!qword_1EBE787B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE787B8);
  }

  return result;
}

unint64_t sub_1C0F2F13C(uint64_t a1)
{
  result = sub_1C0F2F164();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F2F164()
{
  result = qword_1EBE787C0;
  if (!qword_1EBE787C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE787C0);
  }

  return result;
}

unint64_t sub_1C0F2F1BC()
{
  result = qword_1EBE787C8;
  if (!qword_1EBE787C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE787C8);
  }

  return result;
}

unint64_t sub_1C0F2F210(uint64_t a1)
{
  result = sub_1C0F2F238();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F2F238()
{
  result = qword_1EBE787D0;
  if (!qword_1EBE787D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE787D0);
  }

  return result;
}

unint64_t sub_1C0F2F290()
{
  result = qword_1EBE787D8;
  if (!qword_1EBE787D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE787D8);
  }

  return result;
}

unint64_t sub_1C0F2F2E4(uint64_t a1)
{
  result = sub_1C0F2F30C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F2F30C()
{
  result = qword_1EBE787E0;
  if (!qword_1EBE787E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE787E0);
  }

  return result;
}

unint64_t sub_1C0F2F364()
{
  result = qword_1EBE787E8;
  if (!qword_1EBE787E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE787E8);
  }

  return result;
}

unint64_t sub_1C0F2F3B8(uint64_t a1)
{
  result = sub_1C0F2F3E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F2F3E0()
{
  result = qword_1EBE787F0;
  if (!qword_1EBE787F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE787F0);
  }

  return result;
}

unint64_t sub_1C0F2F438()
{
  result = qword_1EBE787F8;
  if (!qword_1EBE787F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE787F8);
  }

  return result;
}

unint64_t sub_1C0F2F48C(uint64_t a1)
{
  result = sub_1C0F2F4B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F2F4B4()
{
  result = qword_1EBE78800;
  if (!qword_1EBE78800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78800);
  }

  return result;
}

unint64_t sub_1C0F2F50C()
{
  result = qword_1EBE78808;
  if (!qword_1EBE78808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78808);
  }

  return result;
}

unint64_t sub_1C0F2F560(uint64_t a1)
{
  result = sub_1C0F2F588();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F2F588()
{
  result = qword_1EBE78810;
  if (!qword_1EBE78810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78810);
  }

  return result;
}

unint64_t sub_1C0F2F5E0()
{
  result = qword_1EBE78818;
  if (!qword_1EBE78818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78818);
  }

  return result;
}

unint64_t sub_1C0F2F634(uint64_t a1)
{
  result = sub_1C0F2F65C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F2F65C()
{
  result = qword_1EBE78820;
  if (!qword_1EBE78820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78820);
  }

  return result;
}

unint64_t sub_1C0F2F6B4()
{
  result = qword_1EBE78828;
  if (!qword_1EBE78828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78828);
  }

  return result;
}

unint64_t sub_1C0F2F708(uint64_t a1)
{
  result = sub_1C0F2F730();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F2F730()
{
  result = qword_1EBE78830;
  if (!qword_1EBE78830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78830);
  }

  return result;
}

unint64_t sub_1C0F2F788()
{
  result = qword_1EBE78838;
  if (!qword_1EBE78838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78838);
  }

  return result;
}

unint64_t sub_1C0F2F7DC(uint64_t a1)
{
  result = sub_1C0F2F804();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F2F804()
{
  result = qword_1EBE78840;
  if (!qword_1EBE78840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78840);
  }

  return result;
}

unint64_t sub_1C0F2F85C()
{
  result = qword_1EBE78848;
  if (!qword_1EBE78848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78848);
  }

  return result;
}

unint64_t sub_1C0F2F8B0(uint64_t a1)
{
  result = sub_1C0F2F8D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F2F8D8()
{
  result = qword_1EBE78850;
  if (!qword_1EBE78850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78850);
  }

  return result;
}

unint64_t sub_1C0F2F930()
{
  result = qword_1EBE78858;
  if (!qword_1EBE78858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78858);
  }

  return result;
}

unint64_t sub_1C0F2F984(uint64_t a1)
{
  result = sub_1C0F2F9AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F2F9AC()
{
  result = qword_1EBE78860;
  if (!qword_1EBE78860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78860);
  }

  return result;
}

unint64_t sub_1C0F2FA04()
{
  result = qword_1EBE78868;
  if (!qword_1EBE78868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78868);
  }

  return result;
}

unint64_t sub_1C0F2FA58(uint64_t a1)
{
  result = sub_1C0F2FA80();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F2FA80()
{
  result = qword_1EBE78870;
  if (!qword_1EBE78870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78870);
  }

  return result;
}

unint64_t sub_1C0F2FAD8()
{
  result = qword_1EBE78878;
  if (!qword_1EBE78878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78878);
  }

  return result;
}

unint64_t sub_1C0F2FB2C(uint64_t a1)
{
  result = sub_1C0F2FB54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F2FB54()
{
  result = qword_1EBE78880;
  if (!qword_1EBE78880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78880);
  }

  return result;
}

unint64_t sub_1C0F2FBAC()
{
  result = qword_1EBE78888;
  if (!qword_1EBE78888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78888);
  }

  return result;
}

unint64_t sub_1C0F2FC00(uint64_t a1)
{
  result = sub_1C0F2FC28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F2FC28()
{
  result = qword_1EBE78890;
  if (!qword_1EBE78890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78890);
  }

  return result;
}

unint64_t sub_1C0F2FC80()
{
  result = qword_1EBE78898;
  if (!qword_1EBE78898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78898);
  }

  return result;
}

unint64_t sub_1C0F2FCD4(uint64_t a1)
{
  result = sub_1C0F2FCFC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F2FCFC()
{
  result = qword_1EBE788A0;
  if (!qword_1EBE788A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE788A0);
  }

  return result;
}

unint64_t sub_1C0F2FD54()
{
  result = qword_1EBE788A8;
  if (!qword_1EBE788A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE788A8);
  }

  return result;
}

unint64_t sub_1C0F2FDA8(uint64_t a1)
{
  result = sub_1C0F2FDD0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F2FDD0()
{
  result = qword_1EBE788B0;
  if (!qword_1EBE788B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE788B0);
  }

  return result;
}

unint64_t sub_1C0F2FE28()
{
  result = qword_1EBE788B8;
  if (!qword_1EBE788B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE788B8);
  }

  return result;
}

unint64_t sub_1C0F2FE7C(uint64_t a1)
{
  result = sub_1C0F2FEA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F2FEA4()
{
  result = qword_1EBE788C0;
  if (!qword_1EBE788C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE788C0);
  }

  return result;
}

unint64_t sub_1C0F2FEFC()
{
  result = qword_1EBE788C8;
  if (!qword_1EBE788C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE788C8);
  }

  return result;
}

uint64_t sub_1C0F2FFF4(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1C0F30148(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1C0F301D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C0F303BC()
{
  result = qword_1EBE788D0;
  if (!qword_1EBE788D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE788D0);
  }

  return result;
}

unint64_t sub_1C0F30414()
{
  result = qword_1EBE788D8;
  if (!qword_1EBE788D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE788D8);
  }

  return result;
}

unint64_t sub_1C0F3046C()
{
  result = qword_1EBE788E0;
  if (!qword_1EBE788E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE788E0);
  }

  return result;
}

unint64_t sub_1C0F304C4()
{
  result = qword_1EBE788E8;
  if (!qword_1EBE788E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE788E8);
  }

  return result;
}

unint64_t sub_1C0F3051C()
{
  result = qword_1EBE788F0;
  if (!qword_1EBE788F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE788F0);
  }

  return result;
}

unint64_t sub_1C0F30574()
{
  result = qword_1EBE788F8;
  if (!qword_1EBE788F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE788F8);
  }

  return result;
}

unint64_t sub_1C0F305CC()
{
  result = qword_1EBE78900;
  if (!qword_1EBE78900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78900);
  }

  return result;
}

unint64_t sub_1C0F30624()
{
  result = qword_1EBE78908;
  if (!qword_1EBE78908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78908);
  }

  return result;
}

unint64_t sub_1C0F3067C()
{
  result = qword_1EBE78910;
  if (!qword_1EBE78910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78910);
  }

  return result;
}

unint64_t sub_1C0F306D4()
{
  result = qword_1EBE78918;
  if (!qword_1EBE78918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78918);
  }

  return result;
}

unint64_t sub_1C0F3072C()
{
  result = qword_1EBE78920;
  if (!qword_1EBE78920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78920);
  }

  return result;
}

unint64_t sub_1C0F30784()
{
  result = qword_1EBE78928;
  if (!qword_1EBE78928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78928);
  }

  return result;
}

unint64_t sub_1C0F307DC()
{
  result = qword_1EBE78930;
  if (!qword_1EBE78930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78930);
  }

  return result;
}

unint64_t sub_1C0F30834()
{
  result = qword_1EBE78938;
  if (!qword_1EBE78938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78938);
  }

  return result;
}

unint64_t sub_1C0F3088C()
{
  result = qword_1EBE78940;
  if (!qword_1EBE78940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78940);
  }

  return result;
}

unint64_t sub_1C0F308E4()
{
  result = qword_1EBE78948;
  if (!qword_1EBE78948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78948);
  }

  return result;
}

unint64_t sub_1C0F3093C()
{
  result = qword_1EBE78950;
  if (!qword_1EBE78950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78950);
  }

  return result;
}

unint64_t sub_1C0F30994()
{
  result = qword_1EBE78958;
  if (!qword_1EBE78958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78958);
  }

  return result;
}

unint64_t sub_1C0F309EC()
{
  result = qword_1EBE78960;
  if (!qword_1EBE78960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78960);
  }

  return result;
}

unint64_t sub_1C0F30A44()
{
  result = qword_1EBE78968;
  if (!qword_1EBE78968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78968);
  }

  return result;
}

unint64_t sub_1C0F30A9C()
{
  result = qword_1EBE78970;
  if (!qword_1EBE78970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78970);
  }

  return result;
}

unint64_t sub_1C0F30AF4()
{
  result = qword_1EBE78978;
  if (!qword_1EBE78978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78978);
  }

  return result;
}

unint64_t sub_1C0F30B4C()
{
  result = qword_1EBE78980;
  if (!qword_1EBE78980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78980);
  }

  return result;
}

unint64_t sub_1C0F30BA4()
{
  result = qword_1EBE78988;
  if (!qword_1EBE78988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78988);
  }

  return result;
}

unint64_t sub_1C0F30BFC()
{
  result = qword_1EBE78990;
  if (!qword_1EBE78990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78990);
  }

  return result;
}

unint64_t sub_1C0F30C54()
{
  result = qword_1EBE78998;
  if (!qword_1EBE78998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78998);
  }

  return result;
}

unint64_t sub_1C0F30CAC()
{
  result = qword_1EBE789A0;
  if (!qword_1EBE789A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE789A0);
  }

  return result;
}

unint64_t sub_1C0F30D04()
{
  result = qword_1EBE789A8;
  if (!qword_1EBE789A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE789A8);
  }

  return result;
}

unint64_t sub_1C0F30D5C()
{
  result = qword_1EBE789B0;
  if (!qword_1EBE789B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE789B0);
  }

  return result;
}

unint64_t sub_1C0F30DB4()
{
  result = qword_1EBE789B8;
  if (!qword_1EBE789B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE789B8);
  }

  return result;
}

unint64_t sub_1C0F30E0C()
{
  result = qword_1EBE789C0;
  if (!qword_1EBE789C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE789C0);
  }

  return result;
}

unint64_t sub_1C0F30E64()
{
  result = qword_1EBE789C8;
  if (!qword_1EBE789C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE789C8);
  }

  return result;
}

unint64_t sub_1C0F30EBC()
{
  result = qword_1EBE789D0;
  if (!qword_1EBE789D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE789D0);
  }

  return result;
}

unint64_t sub_1C0F30F14()
{
  result = qword_1EBE789D8;
  if (!qword_1EBE789D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE789D8);
  }

  return result;
}

unint64_t sub_1C0F30F6C()
{
  result = qword_1EBE789E0;
  if (!qword_1EBE789E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE789E0);
  }

  return result;
}

unint64_t sub_1C0F30FC4()
{
  result = qword_1EBE789E8;
  if (!qword_1EBE789E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE789E8);
  }

  return result;
}

unint64_t sub_1C0F3101C()
{
  result = qword_1EBE789F0;
  if (!qword_1EBE789F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE789F0);
  }

  return result;
}

unint64_t sub_1C0F31074()
{
  result = qword_1EBE789F8;
  if (!qword_1EBE789F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE789F8);
  }

  return result;
}

unint64_t sub_1C0F310CC()
{
  result = qword_1EBE78A00;
  if (!qword_1EBE78A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78A00);
  }

  return result;
}

uint64_t sub_1C0F31120(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6374697753707061 && a2 == 0xEB00000000726568;
  if (v4 || (sub_1C0F50790() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C7070416D7261 && a2 == 0xEB00000000796150 || (sub_1C0F50790() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6172656D6163 && a2 == 0xE600000000000000 || (sub_1C0F50790() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x436C6F72746E6F63 && a2 == 0xED00007265746E65 || (sub_1C0F50790() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D6143746E6F7266 && a2 == 0xEB00000000617265 || (sub_1C0F50790() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1701670760 && a2 == 0xE400000000000000 || (sub_1C0F50790() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1702131053 && a2 == 0xE400000000000000 || (sub_1C0F50790() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C0F676B0 == a2 || (sub_1C0F50790() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEF6B636F4C6E6F69 || (sub_1C0F50790() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6962616863616572 && a2 == 0xEC0000007974696CLL || (sub_1C0F50790() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6544746F6F626572 && a2 == 0xEC00000065636976 || (sub_1C0F50790() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 1769105779 && a2 == 0xE400000000000000 || (sub_1C0F50790() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 7565171 && a2 == 0xE300000000000000 || (sub_1C0F50790() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6867696C746F7073 && a2 == 0xE900000000000074 || (sub_1C0F50790() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6E67616964737973 && a2 == 0xEB0000000065736FLL || (sub_1C0F50790() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6F44656C67676F74 && a2 == 0xEA00000000006B63 || (sub_1C0F50790() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x69536F5465707974 && a2 == 0xEA00000000006972 || (sub_1C0F50790() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C0F676D0 == a2)
  {

    return 17;
  }

  else
  {
    v6 = sub_1C0F50790();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

unint64_t static AccessibilityAssistiveTouchAction.resolveScrollAction(direction:with:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *(a2 + 24) = &type metadata for AccessibilityAssistiveTouchAction.Scroll;
  result = sub_1C0F31790();
  *(a2 + 32) = result;
  *a2 = v3;
  return result;
}

unint64_t sub_1C0F31790()
{
  result = qword_1EBE78A08;
  if (!qword_1EBE78A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78A08);
  }

  return result;
}

uint64_t sub_1C0F317F8(uint64_t a1)
{
  v2 = sub_1C0F32244();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F31834(uint64_t a1)
{
  v2 = sub_1C0F32244();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F31870()
{
  v1 = *v0;
  v2 = 28789;
  v3 = 0x7468676972;
  v4 = 7368564;
  if (v1 != 4)
  {
    v4 = 0x6D6F74746F62;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1853321060;
  if (v1 != 1)
  {
    v5 = 1952867692;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_1C0F31900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C0F33794(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C0F31934(uint64_t a1)
{
  v2 = sub_1C0F321F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F31970(uint64_t a1)
{
  v2 = sub_1C0F321F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F319AC(uint64_t a1)
{
  v2 = sub_1C0F32394();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F319E8(uint64_t a1)
{
  v2 = sub_1C0F32394();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F31A24(uint64_t a1)
{
  v2 = sub_1C0F32340();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F31A60(uint64_t a1)
{
  v2 = sub_1C0F32340();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F31A9C(uint64_t a1)
{
  v2 = sub_1C0F322EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F31AD8(uint64_t a1)
{
  v2 = sub_1C0F322EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F31B14(uint64_t a1)
{
  v2 = sub_1C0F32298();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F31B50(uint64_t a1)
{
  v2 = sub_1C0F32298();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F31B8C(uint64_t a1)
{
  v2 = sub_1C0F323E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F31BC8(uint64_t a1)
{
  v2 = sub_1C0F323E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccessibilityAssistiveTouchAction.ScrollDirection.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78A10, &qword_1C0F5D880);
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78A18, &qword_1C0F5D888);
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78A20, &qword_1C0F5D890);
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v41 = &v34 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78A28, &qword_1C0F5D898);
  v39 = *(v12 - 8);
  v40 = v12;
  v13 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v38 = &v34 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78A30, &qword_1C0F5D8A0);
  v36 = *(v15 - 8);
  v37 = v15;
  v16 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v35 = &v34 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78A38, &qword_1C0F5D8A8);
  v34 = *(v18 - 8);
  v19 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v34 - v20;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78A40, &qword_1C0F5D8B0);
  v22 = *(v50 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v25 = &v34 - v24;
  v26 = *v1;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0F321F0();
  sub_1C0F508B0();
  v28 = (v22 + 8);
  if (v26 > 2)
  {
    if (v26 == 3)
    {
      v54 = 3;
      sub_1C0F322EC();
      v29 = v41;
      v30 = v50;
      sub_1C0F50700();
      v32 = v42;
      v31 = v43;
    }

    else if (v26 == 4)
    {
      v55 = 4;
      sub_1C0F32298();
      v29 = v44;
      v30 = v50;
      sub_1C0F50700();
      v32 = v45;
      v31 = v46;
    }

    else
    {
      v56 = 5;
      sub_1C0F32244();
      v29 = v47;
      v30 = v50;
      sub_1C0F50700();
      v32 = v48;
      v31 = v49;
    }

    goto LABEL_12;
  }

  if (v26)
  {
    if (v26 == 1)
    {
      v52 = 1;
      sub_1C0F32394();
      v29 = v35;
      v30 = v50;
      sub_1C0F50700();
      v32 = v36;
      v31 = v37;
    }

    else
    {
      v53 = 2;
      sub_1C0F32340();
      v29 = v38;
      v30 = v50;
      sub_1C0F50700();
      v32 = v39;
      v31 = v40;
    }

LABEL_12:
    (*(v32 + 8))(v29, v31);
    return (*v28)(v25, v30);
  }

  v51 = 0;
  sub_1C0F323E8();
  v30 = v50;
  sub_1C0F50700();
  (*(v34 + 8))(v21, v18);
  return (*v28)(v25, v30);
}

unint64_t sub_1C0F321F0()
{
  result = qword_1EBE78A48;
  if (!qword_1EBE78A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78A48);
  }

  return result;
}

unint64_t sub_1C0F32244()
{
  result = qword_1EBE78A50;
  if (!qword_1EBE78A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78A50);
  }

  return result;
}

unint64_t sub_1C0F32298()
{
  result = qword_1EBE78A58;
  if (!qword_1EBE78A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78A58);
  }

  return result;
}

unint64_t sub_1C0F322EC()
{
  result = qword_1EBE78A60;
  if (!qword_1EBE78A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78A60);
  }

  return result;
}

unint64_t sub_1C0F32340()
{
  result = qword_1EBE78A68;
  if (!qword_1EBE78A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78A68);
  }

  return result;
}

unint64_t sub_1C0F32394()
{
  result = qword_1EBE78A70;
  if (!qword_1EBE78A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78A70);
  }

  return result;
}

unint64_t sub_1C0F323E8()
{
  result = qword_1EBE78A78;
  if (!qword_1EBE78A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78A78);
  }

  return result;
}

uint64_t AccessibilityAssistiveTouchAction.ScrollDirection.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v61 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78A80, &qword_1C0F5D8B8);
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v64 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78A88, &qword_1C0F5D8C0);
  v7 = *(v6 - 8);
  v56 = v6;
  v57 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v48 - v9;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78A90, &qword_1C0F5D8C8);
  v55 = *(v50 - 8);
  v10 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v62 = &v48 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78A98, &qword_1C0F5D8D0);
  v53 = *(v12 - 8);
  v54 = v12;
  v13 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v60 = &v48 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78AA0, &qword_1C0F5D8D8);
  v51 = *(v15 - 8);
  v52 = v15;
  v16 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v48 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78AA8, &qword_1C0F5D8E0);
  v49 = *(v19 - 8);
  v20 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v48 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78AB0, &unk_1C0F5D8E8);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v48 - v26;
  v29 = a1[3];
  v28 = a1[4];
  v66 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v29);
  sub_1C0F321F0();
  v30 = v65;
  sub_1C0F508A0();
  if (!v30)
  {
    v31 = v22;
    v48 = v19;
    v65 = v18;
    v33 = v62;
    v32 = v63;
    v34 = v64;
    v35 = sub_1C0F506F0();
    v36 = (2 * *(v35 + 16)) | 1;
    v67 = v35;
    v68 = v35 + 32;
    v69 = 0;
    v70 = v36;
    v37 = sub_1C0F13BB0();
    v38 = v27;
    if (v37 == 6 || v69 != v70 >> 1)
    {
      v42 = sub_1C0F505C0();
      swift_allocError();
      v44 = v43;
      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C70, &qword_1C0F583A0) + 48);
      *v44 = &type metadata for AccessibilityAssistiveTouchAction.ScrollDirection;
      sub_1C0F50680();
      sub_1C0F505B0();
      (*(*(v42 - 8) + 104))(v44, *MEMORY[0x1E69E6AF8], v42);
      swift_willThrow();
      (*(v24 + 8))(v27, v23);
      swift_unknownObjectRelease();
    }

    else
    {
      v71 = v37;
      if (v37 > 2u)
      {
        v47 = v61;
        if (v37 == 3)
        {
          v72 = 3;
          sub_1C0F322EC();
          sub_1C0F50670();
          (*(v55 + 8))(v33, v50);
        }

        else if (v37 == 4)
        {
          v72 = 4;
          sub_1C0F32298();
          sub_1C0F50670();
          (*(v57 + 8))(v32, v56);
        }

        else
        {
          v72 = 5;
          sub_1C0F32244();
          sub_1C0F50670();
          (*(v58 + 8))(v34, v59);
        }

        (*(v24 + 8))(v38, v23);
        swift_unknownObjectRelease();
      }

      else
      {
        if (v37)
        {
          if (v37 == 1)
          {
            v72 = 1;
            sub_1C0F32394();
            v39 = v65;
            sub_1C0F50670();
            v41 = v51;
            v40 = v52;
          }

          else
          {
            v72 = 2;
            sub_1C0F32340();
            v39 = v60;
            sub_1C0F50670();
            v41 = v53;
            v40 = v54;
          }

          (*(v41 + 8))(v39, v40);
        }

        else
        {
          v72 = 0;
          sub_1C0F323E8();
          sub_1C0F50670();
          (*(v49 + 8))(v31, v48);
        }

        (*(v24 + 8))(v27, v23);
        swift_unknownObjectRelease();
        v47 = v61;
      }

      *v47 = v71;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v66);
}

uint64_t AccessibilityAssistiveTouchAction.Scroll.nameKey.getter()
{
  v1 = *v0;
  v2 = 0x552D6C6C6F726353;
  v3 = 0x522D6C6C6F726353;
  v4 = 0x545F4C4C4F524353;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x442D6C6C6F726353;
  if (v1 != 1)
  {
    v5 = 0x4C2D6C6C6F726353;
  }

  if (*v0)
  {
    v2 = v5;
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

unint64_t AccessibilityAssistiveTouchAction.Scroll.imageKey.getter()
{
  v1 = 0xD00000000000001ALL;
  v2 = *v0;
  v3 = 0xD00000000000001ELL;
  if (v2 == 4)
  {
    v3 = 0xD00000000000001BLL;
  }

  if (v2 == 3)
  {
    v4 = 0xD00000000000001BLL;
  }

  else
  {
    v4 = v3;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0 <= 2u)
  {
    result = v1;
  }

  else
  {
    result = v4;
  }

  *v0;
  return result;
}

uint64_t sub_1C0F32E1C()
{
  v1 = *v0;
  v2 = 0x552D6C6C6F726353;
  v3 = 0x522D6C6C6F726353;
  v4 = 0x545F4C4C4F524353;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x442D6C6C6F726353;
  if (v1 != 1)
  {
    v5 = 0x4C2D6C6C6F726353;
  }

  if (*v0)
  {
    v2 = v5;
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

unint64_t sub_1C0F32F0C()
{
  result = qword_1EBE78AB8;
  if (!qword_1EBE78AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78AB8);
  }

  return result;
}

unint64_t sub_1C0F32F64()
{
  result = qword_1EBE78AC0;
  if (!qword_1EBE78AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE78AC8, &qword_1C0F5D960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78AC0);
  }

  return result;
}

unint64_t sub_1C0F32FC8(uint64_t a1)
{
  result = sub_1C0F32FF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F32FF0()
{
  result = qword_1EBE78AD0;
  if (!qword_1EBE78AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78AD0);
  }

  return result;
}

unint64_t sub_1C0F33048()
{
  result = qword_1EBE78AD8;
  if (!qword_1EBE78AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78AD8);
  }

  return result;
}

uint64_t sub_1C0F330BC(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1C0F3314C(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C0F33270()
{
  result = qword_1EBE78AE0;
  if (!qword_1EBE78AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78AE0);
  }

  return result;
}

unint64_t sub_1C0F332C8()
{
  result = qword_1EBE78AE8;
  if (!qword_1EBE78AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78AE8);
  }

  return result;
}

unint64_t sub_1C0F33320()
{
  result = qword_1EBE78AF0;
  if (!qword_1EBE78AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78AF0);
  }

  return result;
}

unint64_t sub_1C0F33378()
{
  result = qword_1EBE78AF8;
  if (!qword_1EBE78AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78AF8);
  }

  return result;
}

unint64_t sub_1C0F333D0()
{
  result = qword_1EBE78B00;
  if (!qword_1EBE78B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78B00);
  }

  return result;
}

unint64_t sub_1C0F33428()
{
  result = qword_1EBE78B08;
  if (!qword_1EBE78B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78B08);
  }

  return result;
}

unint64_t sub_1C0F33480()
{
  result = qword_1EBE78B10;
  if (!qword_1EBE78B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78B10);
  }

  return result;
}

unint64_t sub_1C0F334D8()
{
  result = qword_1EBE78B18;
  if (!qword_1EBE78B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78B18);
  }

  return result;
}

unint64_t sub_1C0F33530()
{
  result = qword_1EBE78B20;
  if (!qword_1EBE78B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78B20);
  }

  return result;
}

unint64_t sub_1C0F33588()
{
  result = qword_1EBE78B28;
  if (!qword_1EBE78B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78B28);
  }

  return result;
}

unint64_t sub_1C0F335E0()
{
  result = qword_1EBE78B30;
  if (!qword_1EBE78B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78B30);
  }

  return result;
}

unint64_t sub_1C0F33638()
{
  result = qword_1EBE78B38;
  if (!qword_1EBE78B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78B38);
  }

  return result;
}

unint64_t sub_1C0F33690()
{
  result = qword_1EBE78B40;
  if (!qword_1EBE78B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78B40);
  }

  return result;
}

unint64_t sub_1C0F336E8()
{
  result = qword_1EBE78B48;
  if (!qword_1EBE78B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78B48);
  }

  return result;
}

unint64_t sub_1C0F33740()
{
  result = qword_1EBE78B50;
  if (!qword_1EBE78B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78B50);
  }

  return result;
}

uint64_t sub_1C0F33794(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 28789 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C0F50790() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1853321060 && a2 == 0xE400000000000000 || (sub_1C0F50790() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1952867692 && a2 == 0xE400000000000000 || (sub_1C0F50790() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7468676972 && a2 == 0xE500000000000000 || (sub_1C0F50790() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 7368564 && a2 == 0xE300000000000000 || (sub_1C0F50790() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D6F74746F62 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1C0F50790();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1C0F339A8()
{
  v1 = 0x7469617274726F70;
  *v0;
  if (*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x70616373646E616CLL;
  }
}

uint64_t sub_1C0F33A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C0F3513C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C0F33A6C(uint64_t a1)
{
  v2 = sub_1C0F34108();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F33AA8(uint64_t a1)
{
  v2 = sub_1C0F34108();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F33AE4(uint64_t a1)
{
  v2 = sub_1C0F341B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F33B20(uint64_t a1)
{
  v2 = sub_1C0F341B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F33B5C(uint64_t a1)
{
  v2 = sub_1C0F3415C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F33B98(uint64_t a1)
{
  v2 = sub_1C0F3415C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F33BD4(uint64_t a1)
{
  v2 = sub_1C0F34258();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F33C10(uint64_t a1)
{
  v2 = sub_1C0F34258();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F33C4C(uint64_t a1)
{
  v2 = sub_1C0F34204();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F33C88(uint64_t a1)
{
  v2 = sub_1C0F34204();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccessibilityAssistiveTouchAction.Orientation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78B58, &qword_1C0F5E000);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78B60, &qword_1C0F5E008);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78B68, &qword_1C0F5E010);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78B70, &qword_1C0F5E018);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78B78, &qword_1C0F5E020);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0F34108();
  sub_1C0F508B0();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      sub_1C0F341B0();
      v24 = v33;
      sub_1C0F50700();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      sub_1C0F3415C();
      v24 = v36;
      sub_1C0F50700();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    sub_1C0F34204();
    v24 = v30;
    sub_1C0F50700();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  sub_1C0F34258();
  sub_1C0F50700();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

unint64_t sub_1C0F34108()
{
  result = qword_1EBE78B80;
  if (!qword_1EBE78B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78B80);
  }

  return result;
}

unint64_t sub_1C0F3415C()
{
  result = qword_1EBE78B88;
  if (!qword_1EBE78B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78B88);
  }

  return result;
}

unint64_t sub_1C0F341B0()
{
  result = qword_1EBE78B90;
  if (!qword_1EBE78B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78B90);
  }

  return result;
}

unint64_t sub_1C0F34204()
{
  result = qword_1EBE78B98;
  if (!qword_1EBE78B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78B98);
  }

  return result;
}

unint64_t sub_1C0F34258()
{
  result = qword_1EBE78BA0;
  if (!qword_1EBE78BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78BA0);
  }

  return result;
}

uint64_t AccessibilityAssistiveTouchAction.Orientation.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78BA8, &qword_1C0F5E028);
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v41 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78BB0, &qword_1C0F5E030);
  v45 = *(v49 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v41 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78BB8, &qword_1C0F5E038);
  v43 = *(v47 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78BC0, &qword_1C0F5E040);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78BC8, &unk_1C0F5E048);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v20);
  sub_1C0F34108();
  v21 = v53;
  sub_1C0F508A0();
  if (!v21)
  {
    v22 = v13;
    v41 = v10;
    v42 = 0;
    v23 = v9;
    v24 = v50;
    v25 = v51;
    v53 = v15;
    v26 = v52;
    v27 = v18;
    v28 = sub_1C0F506F0();
    v29 = (2 * *(v28 + 16)) | 1;
    v55 = v28;
    v56 = v28 + 32;
    v57 = 0;
    v58 = v29;
    v30 = sub_1C0F16508();
    if (v30 == 4 || v57 != v58 >> 1)
    {
      v32 = sub_1C0F505C0();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C70, &qword_1C0F583A0) + 48);
      *v34 = &type metadata for AccessibilityAssistiveTouchAction.Orientation;
      sub_1C0F50680();
      sub_1C0F505B0();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
      swift_willThrow();
LABEL_9:
      (*(v53 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0(v54);
    }

    v59 = v30;
    if (v30 <= 1u)
    {
      if (v30)
      {
        v60 = 1;
        sub_1C0F34204();
        v39 = v42;
        sub_1C0F50670();
        if (!v39)
        {
          (*(v43 + 8))(v23, v47);
          goto LABEL_17;
        }
      }

      else
      {
        v60 = 0;
        sub_1C0F34258();
        v31 = v42;
        sub_1C0F50670();
        if (!v31)
        {
          (*(v44 + 8))(v22, v41);
LABEL_17:
          (*(v53 + 8))(v18, v14);
LABEL_22:
          swift_unknownObjectRelease();
          *v26 = v59;
          return __swift_destroy_boxed_opaque_existential_0(v54);
        }
      }

      goto LABEL_9;
    }

    v37 = v53;
    if (v30 == 2)
    {
      v60 = 2;
      sub_1C0F341B0();
      v38 = v42;
      sub_1C0F50670();
      if (!v38)
      {
        (*(v45 + 8))(v24, v49);
LABEL_21:
        (*(v37 + 8))(v27, v14);
        goto LABEL_22;
      }
    }

    else
    {
      v60 = 3;
      sub_1C0F3415C();
      v40 = v42;
      sub_1C0F50670();
      if (!v40)
      {
        (*(v46 + 8))(v25, v48);
        goto LABEL_21;
      }
    }

    (*(v37 + 8))(v27, v14);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_0(v54);
}

unint64_t static AccessibilityAssistiveTouchAction.resolveRotateScreenAction(orientation:with:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *(a2 + 24) = &type metadata for AccessibilityAssistiveTouchAction.RotateScreen;
  result = sub_1C0F349B4();
  *(a2 + 32) = result;
  *a2 = v3;
  return result;
}

unint64_t sub_1C0F349B4()
{
  result = qword_1EBE78BD0;
  if (!qword_1EBE78BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78BD0);
  }

  return result;
}

unint64_t AccessibilityAssistiveTouchAction.RotateScreen.nameKey.getter()
{
  v1 = 0xD000000000000014;
  v2 = 0xD00000000000001ALL;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

uint64_t AccessibilityAssistiveTouchAction.RotateScreen.imageKey.getter()
{
  v1 = *v0;
  result = *&aIcondeviiconup[8 * v1];
  v3 = *&aIcondeviiconup[8 * v1 + 32];
  return result;
}

unint64_t sub_1C0F34ADC()
{
  v1 = 0xD000000000000014;
  v2 = 0xD00000000000001ALL;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

uint64_t sub_1C0F34B50()
{
  v1 = *v0;
  result = *&aIcondeviiconup[8 * v1];
  v3 = *&aIcondeviiconup[8 * v1 + 32];
  return result;
}

unint64_t sub_1C0F34B74()
{
  result = qword_1EBE78BD8;
  if (!qword_1EBE78BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78BD8);
  }

  return result;
}

unint64_t sub_1C0F34BCC()
{
  result = qword_1EBE78BE0;
  if (!qword_1EBE78BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE78BE8, &qword_1C0F5E0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78BE0);
  }

  return result;
}

unint64_t sub_1C0F34C30(uint64_t a1)
{
  result = sub_1C0F34C58();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F34C58()
{
  result = qword_1EBE78BF0;
  if (!qword_1EBE78BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78BF0);
  }

  return result;
}

unint64_t sub_1C0F34CB0()
{
  result = qword_1EBE78BF8;
  if (!qword_1EBE78BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78BF8);
  }

  return result;
}

unint64_t sub_1C0F34D78()
{
  result = qword_1EBE78C00;
  if (!qword_1EBE78C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78C00);
  }

  return result;
}

unint64_t sub_1C0F34DD0()
{
  result = qword_1EBE78C08;
  if (!qword_1EBE78C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78C08);
  }

  return result;
}

unint64_t sub_1C0F34E28()
{
  result = qword_1EBE78C10;
  if (!qword_1EBE78C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78C10);
  }

  return result;
}

unint64_t sub_1C0F34E80()
{
  result = qword_1EBE78C18;
  if (!qword_1EBE78C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78C18);
  }

  return result;
}

unint64_t sub_1C0F34ED8()
{
  result = qword_1EBE78C20;
  if (!qword_1EBE78C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78C20);
  }

  return result;
}

unint64_t sub_1C0F34F30()
{
  result = qword_1EBE78C28;
  if (!qword_1EBE78C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78C28);
  }

  return result;
}

unint64_t sub_1C0F34F88()
{
  result = qword_1EBE78C30;
  if (!qword_1EBE78C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78C30);
  }

  return result;
}

unint64_t sub_1C0F34FE0()
{
  result = qword_1EBE78C38;
  if (!qword_1EBE78C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78C38);
  }

  return result;
}

unint64_t sub_1C0F35038()
{
  result = qword_1EBE78C40;
  if (!qword_1EBE78C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78C40);
  }

  return result;
}

unint64_t sub_1C0F35090()
{
  result = qword_1EBE78C48;
  if (!qword_1EBE78C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78C48);
  }

  return result;
}

unint64_t sub_1C0F350E8()
{
  result = qword_1EBE78C50;
  if (!qword_1EBE78C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78C50);
  }

  return result;
}

uint64_t sub_1C0F3513C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469617274726F70 && a2 == 0xEA00000000007055;
  if (v4 || (sub_1C0F50790() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C0F67850 == a2 || (sub_1C0F50790() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x70616373646E616CLL && a2 == 0xED00007466654C65 || (sub_1C0F50790() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x70616373646E616CLL && a2 == 0xEE00746867695265)
  {

    return 3;
  }

  else
  {
    v6 = sub_1C0F50790();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1C0F352D8(uint64_t a1)
{
  v2 = sub_1C0F36184();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F35314(uint64_t a1)
{
  v2 = sub_1C0F36184();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F35350()
{
  if (*v0)
  {
    result = 0x7473655474696E75;
  }

  else
  {
    result = 0x7669747369737361;
  }

  *v0;
  return result;
}

uint64_t sub_1C0F35398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7669747369737361 && a2 == 0xEE006863756F5465;
  if (v6 || (sub_1C0F50790() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7473655474696E75 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C0F50790();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1C0F3547C(uint64_t a1)
{
  v2 = sub_1C0F360DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F354B8(uint64_t a1)
{
  v2 = sub_1C0F360DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F35500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C0F50790();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C0F35580(uint64_t a1)
{
  v2 = sub_1C0F36130();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F355BC(uint64_t a1)
{
  v2 = sub_1C0F36130();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccessibilityActionClient.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78C58, &qword_1C0F5E680);
  v25 = *(v3 - 8);
  v26 = v3;
  v4 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78C60, &qword_1C0F5E688);
  v22 = *(v7 - 8);
  v23 = v7;
  v8 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v21 = &v20 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78C68, &qword_1C0F5E690);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = v1[1];
  v24 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0F360DC();
  sub_1C0F508B0();
  if (v15)
  {
    v28 = 1;
    sub_1C0F36130();
    sub_1C0F50700();
    v17 = v26;
    sub_1C0F50740();
    (*(v25 + 8))(v6, v17);
  }

  else
  {
    v27 = 0;
    sub_1C0F36184();
    v19 = v21;
    sub_1C0F50700();
    (*(v22 + 8))(v19, v23);
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t AccessibilityActionClient.hash(into:)()
{
  if (!v0[1])
  {
    return MEMORY[0x1C68EA070](0);
  }

  v1 = *v0;
  MEMORY[0x1C68EA070](1);

  return sub_1C0F50200();
}

uint64_t AccessibilityActionClient.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C0F50850();
  if (v2)
  {
    MEMORY[0x1C68EA070](1);
    sub_1C0F50200();
  }

  else
  {
    MEMORY[0x1C68EA070](0);
  }

  return sub_1C0F50890();
}

uint64_t AccessibilityActionClient.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v38 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78C88, &qword_1C0F5E698);
  v37 = *(v39 - 8);
  v3 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v5 = &v34 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78C90, &qword_1C0F5E6A0);
  v36 = *(v6 - 8);
  v7 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78C98, &unk_1C0F5E6A8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v34 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v41 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v16);
  sub_1C0F360DC();
  v17 = v40;
  sub_1C0F508A0();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_0(v41);
  }

  v35 = v6;
  v18 = v39;
  v40 = v11;
  v19 = sub_1C0F506F0();
  v20 = (2 * *(v19 + 16)) | 1;
  v42 = v19;
  v43 = v19 + 32;
  v44 = 0;
  v45 = v20;
  v21 = sub_1C0F13BE4();
  if (v21 == 2 || v44 != v45 >> 1)
  {
    v26 = sub_1C0F505C0();
    swift_allocError();
    v28 = v27;
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C70, &qword_1C0F583A0) + 48);
    *v28 = &type metadata for AccessibilityActionClient;
    sub_1C0F50680();
    sub_1C0F505B0();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
    swift_willThrow();
    (*(v40 + 8))(v14, v10);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v41);
  }

  if (v21)
  {
    v46 = 1;
    sub_1C0F36130();
    sub_1C0F50670();
    v22 = v40;
    v23 = v38;
    v24 = sub_1C0F506C0();
    v25 = v5;
    v33 = v32;
    (*(v37 + 8))(v25, v18);
    (*(v22 + 8))(v14, v10);
    swift_unknownObjectRelease();
  }

  else
  {
    v46 = 0;
    sub_1C0F36184();
    sub_1C0F50670();
    v24 = 0;
    v31 = v40;
    v23 = v38;
    (*(v36 + 8))(v9, v35);
    (*(v31 + 8))(v14, v10);
    swift_unknownObjectRelease();
    v33 = 0;
  }

  *v23 = v24;
  v23[1] = v33;
  return __swift_destroy_boxed_opaque_existential_0(v41);
}

uint64_t sub_1C0F35F10()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C0F50850();
  if (v2)
  {
    MEMORY[0x1C68EA070](1);
    sub_1C0F50200();
  }

  else
  {
    MEMORY[0x1C68EA070](0);
  }

  return sub_1C0F50890();
}

uint64_t sub_1C0F35F80()
{
  if (!v0[1])
  {
    return MEMORY[0x1C68EA070](0);
  }

  v1 = *v0;
  MEMORY[0x1C68EA070](1);

  return sub_1C0F50200();
}

uint64_t sub_1C0F35FF8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C0F50850();
  if (v2)
  {
    MEMORY[0x1C68EA070](1);
    sub_1C0F50200();
  }

  else
  {
    MEMORY[0x1C68EA070](0);
  }

  return sub_1C0F50890();
}

uint64_t _s26AccessibilitySharedSupport0A12ActionClientO2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_1C0F50790();
}

unint64_t sub_1C0F360DC()
{
  result = qword_1EBE78C70;
  if (!qword_1EBE78C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78C70);
  }

  return result;
}

unint64_t sub_1C0F36130()
{
  result = qword_1EBE78C78;
  if (!qword_1EBE78C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78C78);
  }

  return result;
}

unint64_t sub_1C0F36184()
{
  result = qword_1EBE78C80;
  if (!qword_1EBE78C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78C80);
  }

  return result;
}

unint64_t sub_1C0F361DC()
{
  result = qword_1EBE78CA0;
  if (!qword_1EBE78CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78CA0);
  }

  return result;
}

uint64_t sub_1C0F36230(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C0F36280(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1C0F362D4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1C0F36330()
{
  result = qword_1EBE78CA8;
  if (!qword_1EBE78CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78CA8);
  }

  return result;
}

unint64_t sub_1C0F36388()
{
  result = qword_1EBE78CB0;
  if (!qword_1EBE78CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78CB0);
  }

  return result;
}

unint64_t sub_1C0F363E0()
{
  result = qword_1EBE78CB8;
  if (!qword_1EBE78CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78CB8);
  }

  return result;
}

unint64_t sub_1C0F36438()
{
  result = qword_1EBE78CC0;
  if (!qword_1EBE78CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78CC0);
  }

  return result;
}

unint64_t sub_1C0F36490()
{
  result = qword_1EBE78CC8;
  if (!qword_1EBE78CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78CC8);
  }

  return result;
}

unint64_t sub_1C0F364E8()
{
  result = qword_1EBE78CD0;
  if (!qword_1EBE78CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78CD0);
  }

  return result;
}

unint64_t sub_1C0F36540()
{
  result = qword_1EBE78CD8;
  if (!qword_1EBE78CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78CD8);
  }

  return result;
}

unint64_t sub_1C0F36598()
{
  result = qword_1EBE78CE0;
  if (!qword_1EBE78CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78CE0);
  }

  return result;
}

uint64_t sub_1C0F365EC()
{
  v0 = MEMORY[0x1E69E7CC0];
  v28 = MEMORY[0x1E69E7CC0];
  sub_1C0EF8EEC(0, 12, 0);
  v1 = 0;
  v2 = v28;
  v3 = v28[2];
  do
  {
    v4 = byte_1F4053BD8[v1 + 32];
    v5 = v28[3];
    if (v3 >= v5 >> 1)
    {
      sub_1C0EF8EEC((v5 > 1), v3 + 1, 1);
    }

    ++v1;
    v28[2] = v3 + 1;
    *(v28 + v3++ + 32) = v4;
  }

  while (v1 != 12);
  sub_1C0EF8EEC(0, 6, 0);
  v6 = v0;
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  v9 = v7 >> 1;
  v10 = v8 + 1;
  if (v7 >> 1 <= v8)
  {
    sub_1C0EF8EEC((v7 > 1), v8 + 1, 1);
    v6 = v0;
    v7 = *(v0 + 24);
    v9 = v7 >> 1;
  }

  *(v6 + 16) = v10;
  *(v6 + v8 + 32) = 0x80;
  v11 = v8 + 2;
  if (v9 < (v8 + 2))
  {
    sub_1C0EF8EEC((v7 > 1), v8 + 2, 1);
    v6 = v0;
    v7 = *(v0 + 24);
    v9 = v7 >> 1;
  }

  *(v6 + 16) = v11;
  *(v6 + v10 + 32) = -127;
  v12 = v8 + 3;
  if (v9 < (v8 + 3))
  {
    sub_1C0EF8EEC((v7 > 1), v8 + 3, 1);
  }

  v13 = v0;
  *(v0 + 16) = v12;
  *(v0 + v11 + 32) = -126;
  v14 = *(v0 + 24);
  v15 = v14 >> 1;
  v16 = v8 + 4;
  if ((v14 >> 1) < (v8 + 4))
  {
    sub_1C0EF8EEC((v14 > 1), v8 + 4, 1);
    v13 = v0;
    v14 = *(v0 + 24);
    v15 = v14 >> 1;
  }

  *(v13 + 16) = v16;
  *(v13 + v12 + 32) = -125;
  v17 = v8 + 5;
  if (v15 < (v8 + 5))
  {
    sub_1C0EF8EEC((v14 > 1), v8 + 5, 1);
    v13 = v0;
    v14 = *(v0 + 24);
    v15 = v14 >> 1;
  }

  *(v13 + 16) = v17;
  *(v13 + v16 + 32) = -124;
  if (v15 < (v8 + 6))
  {
    sub_1C0EF8EEC((v14 > 1), v8 + 6, 1);
  }

  *(v0 + 16) = v8 + 6;
  *(v0 + v17 + 32) = -123;
  sub_1C0F4454C(v0);
  v29 = v0;
  sub_1C0EF8EEC(0, 4, 0);
  v18 = v0;
  v20 = *(v0 + 16);
  v19 = *(v18 + 24);
  v21 = v19 >> 1;
  v22 = v20 + 1;
  if (v19 >> 1 <= v20)
  {
    sub_1C0EF8EEC((v19 > 1), v20 + 1, 1);
    v18 = v29;
    v19 = *(v29 + 24);
    v21 = v19 >> 1;
  }

  *(v18 + 16) = v22;
  *(v18 + v20 + 32) = 64;
  v23 = v20 + 2;
  if (v21 < (v20 + 2))
  {
    sub_1C0EF8EEC((v19 > 1), v20 + 2, 1);
    v18 = v29;
    v19 = *(v29 + 24);
    v21 = v19 >> 1;
  }

  *(v18 + 16) = v23;
  *(v18 + v22 + 32) = 65;
  v24 = v20 + 3;
  if (v21 < (v20 + 3))
  {
    sub_1C0EF8EEC((v19 > 1), v20 + 3, 1);
  }

  v25 = v29;
  *(v29 + 16) = v24;
  *(v29 + v23 + 32) = 66;
  v26 = *(v29 + 24);
  if ((v20 + 4) > (v26 >> 1))
  {
    sub_1C0EF8EEC((v26 > 1), v20 + 4, 1);
    v25 = v29;
  }

  *(v25 + 16) = v20 + 4;
  *(v25 + v24 + 32) = 67;
  result = sub_1C0F4454C(v25);
  off_1EBE78CE8 = v2;
  return result;
}

uint64_t static AccessibilityAssistiveTouchAction.allCases.getter()
{
  if (qword_1EBE771A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static AccessibilityAssistiveTouchAction.allCases.setter(void *a1)
{
  if (qword_1EBE771A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  off_1EBE78CE8 = a1;
}

uint64_t (*static AccessibilityAssistiveTouchAction.allCases.modify())()
{
  if (qword_1EBE771A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1C0F36B3C@<X0>(void *a1@<X8>)
{
  if (qword_1EBE771A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = off_1EBE78CE8;
}

uint64_t sub_1C0F36BBC(void **a1)
{
  v1 = *a1;
  v2 = qword_1EBE771A8;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  off_1EBE78CE8 = v1;
}

unint64_t AccessibilityAssistiveTouchAction.resolve(with:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 >> 6)
  {
    v3 = v2 & 0x3F;
    if (v2 >> 6 == 1)
    {
      a1[3] = &type metadata for AccessibilityAssistiveTouchAction.RotateScreen;
      v4 = a1;
      result = sub_1C0F349B4();
    }

    else
    {
      a1[3] = &type metadata for AccessibilityAssistiveTouchAction.Scroll;
      v4 = a1;
      result = sub_1C0F31790();
    }

    v4[4] = result;
    *v4 = v3;
  }

  else
  {
    v6 = *v1;
    return static AccessibilityAssistiveTouchAction.resolveMenuAction(_:with:)(&v6, a1);
  }

  return result;
}

uint64_t sub_1C0F36CCC()
{
  v1 = 0x6353657461746F72;
  if (*v0 != 1)
  {
    v1 = 0x6C6C6F726373;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1970169197;
  }
}

uint64_t sub_1C0F36D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C0F386D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C0F36D4C(uint64_t a1)
{
  v2 = sub_1C0F37CCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F36D88(uint64_t a1)
{
  v2 = sub_1C0F37CCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F36DD0(uint64_t a1)
{
  v2 = sub_1C0F37E70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F36E0C(uint64_t a1)
{
  v2 = sub_1C0F37E70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F36E48(uint64_t a1)
{
  v2 = sub_1C0F37DC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F36E84(uint64_t a1)
{
  v2 = sub_1C0F37DC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F36EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C0F50790();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C0F36F40(uint64_t a1)
{
  v2 = sub_1C0F37D20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F36F7C(uint64_t a1)
{
  v2 = sub_1C0F37D20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccessibilityAssistiveTouchAction.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78CF0, &qword_1C0F5EAC0);
  v32 = *(v4 - 8);
  v33 = v4;
  v5 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78CF8, &qword_1C0F5EAC8);
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78D00, &qword_1C0F5EAD0);
  v28 = *(v11 - 8);
  v12 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78D08, &qword_1C0F5EAD8);
  v15 = *(v34 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v18 = &v28 - v17;
  v19 = *v2;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0F37CCC();
  sub_1C0F508B0();
  if (v19 >> 6)
  {
    v21 = v19 & 0x3F;
    if (v19 >> 6 == 1)
    {
      v38 = 1;
      sub_1C0F37DC8();
      v22 = v34;
      sub_1C0F50700();
      v37 = v21;
      sub_1C0F37E1C();
      v23 = v30;
      sub_1C0F50760();
      (*(v29 + 8))(v10, v23);
    }

    else
    {
      v40 = 2;
      sub_1C0F37D20();
      v26 = v31;
      v22 = v34;
      sub_1C0F50700();
      v39 = v21;
      sub_1C0F37D74();
      v27 = v33;
      sub_1C0F50760();
      (*(v32 + 8))(v26, v27);
    }

    return (*(v15 + 8))(v18, v22);
  }

  else
  {
    v36 = 0;
    sub_1C0F37E70();
    v24 = v34;
    sub_1C0F50700();
    v35 = v19;
    sub_1C0F37EC4();
    sub_1C0F50760();
    (*(v28 + 8))(v14, v11);
    return (*(v15 + 8))(v18, v24);
  }
}

uint64_t AccessibilityAssistiveTouchAction.hash(into:)()
{
  v1 = *v0;
  v2 = v1 >> 6;
  v3 = 1;
  if ((v1 >> 6) != 1)
  {
    v3 = 2;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = v1 >> 6;
  }

  if (v2)
  {
    v5 = v1 & 0x3F;
  }

  else
  {
    v5 = *v0;
  }

  MEMORY[0x1C68EA070](v4);
  return MEMORY[0x1C68EA070](v5);
}

uint64_t AccessibilityAssistiveTouchAction.hashValue.getter()
{
  v1 = *v0;
  sub_1C0F50850();
  v2 = v1 >> 6;
  v3 = 1;
  if ((v1 >> 6) != 1)
  {
    v3 = 2;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = v1 >> 6;
  }

  if (v2)
  {
    v1 &= 0x3Fu;
  }

  else
  {
    v1 = v1;
  }

  MEMORY[0x1C68EA070](v4);
  MEMORY[0x1C68EA070](v1);
  return sub_1C0F50890();
}

uint64_t AccessibilityAssistiveTouchAction.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v42 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78D48, &qword_1C0F5EAE0);
  v39 = *(v36 - 8);
  v3 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v41 = &v35 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78D50, &qword_1C0F5EAE8);
  v40 = *(v38 - 8);
  v5 = *(v40 + 8);
  MEMORY[0x1EEE9AC00](v38);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78D58, &qword_1C0F5EAF0);
  v37 = *(v8 - 8);
  v9 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78D60, &unk_1C0F5EAF8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v35 - v15;
  v17 = a1[3];
  v18 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v17);
  sub_1C0F37CCC();
  v19 = v43;
  sub_1C0F508A0();
  if (!v19)
  {
    v43 = v13;
    v21 = v41;
    v20 = v42;
    v22 = sub_1C0F506F0();
    v23 = (2 * *(v22 + 16)) | 1;
    v45 = v22;
    v46 = v22 + 32;
    v47 = 0;
    v48 = v23;
    v24 = sub_1C0F13C18();
    if (v24 == 3 || v47 != v48 >> 1)
    {
      v26 = sub_1C0F505C0();
      swift_allocError();
      v27 = v16;
      v29 = v28;
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C70, &qword_1C0F583A0) + 48);
      *v29 = &type metadata for AccessibilityAssistiveTouchAction;
      sub_1C0F50680();
      sub_1C0F505B0();
      (*(*(v26 - 8) + 104))(v29, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
      (*(v43 + 8))(v27, v12);
      swift_unknownObjectRelease();
    }

    else if (v24)
    {
      if (v24 == 1)
      {
        v49 = 1;
        sub_1C0F37DC8();
        sub_1C0F50670();
        sub_1C0F37F6C();
        v25 = v38;
        sub_1C0F506E0();
        (*(v40 + 1))(v7, v25);
        (*(v43 + 8))(v16, v12);
        swift_unknownObjectRelease();
        v34 = v49 | 0x40;
      }

      else
      {
        v49 = 2;
        sub_1C0F37D20();
        sub_1C0F50670();
        v40 = v16;
        sub_1C0F37F18();
        v32 = v36;
        sub_1C0F506E0();
        v33 = v43;
        (*(v39 + 8))(v21, v32);
        (*(v33 + 8))(v40, v12);
        swift_unknownObjectRelease();
        v34 = v49 | 0x80;
      }

      *v20 = v34;
    }

    else
    {
      v49 = 0;
      sub_1C0F37E70();
      sub_1C0F50670();
      sub_1C0F37FC0();
      sub_1C0F506E0();
      (*(v37 + 8))(v11, v8);
      (*(v43 + 8))(v16, v12);
      swift_unknownObjectRelease();
      *v20 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v44);
}

uint64_t sub_1C0F37BA4()
{
  v1 = *v0;
  v2 = v1 >> 6;
  v3 = 1;
  if ((v1 >> 6) != 1)
  {
    v3 = 2;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = v1 >> 6;
  }

  if (v2)
  {
    v5 = v1 & 0x3F;
  }

  else
  {
    v5 = *v0;
  }

  MEMORY[0x1C68EA070](v4);
  return MEMORY[0x1C68EA070](v5);
}

uint64_t sub_1C0F37C00()
{
  v1 = *v0;
  sub_1C0F50850();
  v2 = v1 >> 6;
  v3 = 1;
  if ((v1 >> 6) != 1)
  {
    v3 = 2;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = v1 >> 6;
  }

  if (v2)
  {
    v1 &= 0x3Fu;
  }

  else
  {
    v1 = v1;
  }

  MEMORY[0x1C68EA070](v4);
  MEMORY[0x1C68EA070](v1);
  return sub_1C0F50890();
}

BOOL _s26AccessibilitySharedSupport0A20AssistiveTouchActionO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 6;
  v6 = v3 < 0x40 && v2 == v3;
  v7 = v3 & 0xC0;
  v8 = v3 ^ v2;
  v9 = (v8 & 0x3F) == 0;
  if (v7 != 64)
  {
    v9 = 0;
  }

  v10 = (v8 & 0x3F) == 0;
  if (v7 != 128)
  {
    v10 = 0;
  }

  if (v4 == 1)
  {
    v10 = v9;
  }

  if (v4)
  {
    return v10;
  }

  else
  {
    return v6;
  }
}

unint64_t sub_1C0F37CCC()
{
  result = qword_1EBE78D10;
  if (!qword_1EBE78D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78D10);
  }

  return result;
}

unint64_t sub_1C0F37D20()
{
  result = qword_1EBE78D18;
  if (!qword_1EBE78D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78D18);
  }

  return result;
}

unint64_t sub_1C0F37D74()
{
  result = qword_1EBE78D20;
  if (!qword_1EBE78D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78D20);
  }

  return result;
}